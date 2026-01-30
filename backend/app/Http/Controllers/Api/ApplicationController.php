<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Application;
use App\Models\SeniorCitizen;
use App\Models\Contact;
use App\Models\Barangay;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ApplicationController extends Controller
{
    /**
     * Get paginated list of applications.
     */
    public function index(Request $request)
    {
        $user = $request->user();
        $perPage = $request->get('per_page', 15);
        
        $query = Application::with(['senior', 'senior.barangay', 'applicationType', 'submitter'])
            ->when($user->role_id !== 1, function ($q) use ($user) {
                // Non-main admins can only see applications from their accessible barangays
                if ($user->branch_id) {
                    // Get the user's accessible barangay IDs
                    $accessibleBarangayIds = Barangay::whereHas('branches', function ($brq) use ($user) {
                        $brq->where('branches.id', $user->branch_id);
                    })->pluck('id')->toArray();

                    $q->where(function ($subQ) use ($user, $accessibleBarangayIds) {
                        // Applications with senior_id set (filter by senior's barangay)
                        $subQ->whereHas('senior', function ($sq) use ($user) {
                            $sq->whereHas('barangay', function ($bq) use ($user) {
                                $bq->whereHas('branches', function ($brq) use ($user) {
                                    $brq->where('branches.id', $user->branch_id);
                                });
                            });
                        })
                        // OR applications without senior (pending) - filter by applicant_data.personal_info.barangay_id
                        ->orWhere(function ($pendingQ) use ($accessibleBarangayIds) {
                            $pendingQ->whereNull('senior_id')
                                ->where(function ($barangayCheck) use ($accessibleBarangayIds) {
                                    foreach ($accessibleBarangayIds as $barangayId) {
                                        $barangayCheck->orWhereRaw(
                                            "JSON_EXTRACT(applicant_data, '$.personal_info.barangay_id') = ?",
                                            [$barangayId]
                                        );
                                    }
                                });
                        });
                    });
                }
            });

        // Status filter
        if ($status = $request->get('status')) {
            $query->where('status', $status);
        }

        // Type filter
        if ($typeId = $request->get('type_id')) {
            $query->where('application_type_id', $typeId);
        }

        // Search by name or application number
        if ($search = $request->get('search')) {
            $query->where(function ($q) use ($search) {
                $q->where('application_number', 'like', "%{$search}%")
                    ->orWhereHas('senior', function ($sq) use ($search) {
                        $sq->where('first_name', 'like', "%{$search}%")
                            ->orWhere('last_name', 'like', "%{$search}%")
                            ->orWhere('osca_id', 'like', "%{$search}%");
                    })
                    // Also search in applicant_data JSON for pending applications
                    ->orWhereRaw("JSON_UNQUOTE(JSON_EXTRACT(applicant_data, '$.personal_info.first_name')) LIKE ?", ["%{$search}%"])
                    ->orWhereRaw("JSON_UNQUOTE(JSON_EXTRACT(applicant_data, '$.personal_info.last_name')) LIKE ?", ["%{$search}%"]);
            });
        }

        $query->orderBy('created_at', 'desc');

        $applications = $query->paginate($perPage);

        // Transform to include applicant name from applicant_data when senior doesn't exist
        $items = $applications->getCollection()->map(function ($app) {
            $data = $app->toArray();
            if (!$app->senior && $app->applicant_data) {
                $personal = $app->applicant_data['personal_info'] ?? [];
                $data['applicant_name'] = trim(
                    ($personal['first_name'] ?? '') . ' ' . 
                    ($personal['middle_name'] ?? '') . ' ' . 
                    ($personal['last_name'] ?? '')
                );
            } else if ($app->senior) {
                $data['applicant_name'] = $app->senior->full_name ?? 
                    "{$app->senior->first_name} {$app->senior->last_name}";
            } else {
                $data['applicant_name'] = 'Unknown';
            }
            return $data;
        });

        return response()->json([
            'success' => true,
            'data' => $items,
            'meta' => [
                'total' => $applications->total(),
                'per_page' => $applications->perPage(),
                'current_page' => $applications->currentPage(),
                'last_page' => $applications->lastPage(),
            ],
        ]);
    }

    /**
     * Get application by ID.
     */
    public function show(Request $request, $id)
    {
        $application = Application::with([
            'senior',
            'senior.barangay',
            'senior.gender',
            'senior.contact',
            'applicationType',
            'submitter',
            'verifier',
            'approver',
        ])->findOrFail($id);

        return response()->json([
            'success' => true,
            'data' => $application,
        ]);
    }

    /**
     * Update application status.
     * When approving, create the senior_citizen record from applicant_data.
     */
    public function updateStatus(Request $request, $id)
    {
        $user = $request->user();
        
        // ==============================================
        // ROLE-BASED STATUS RESTRICTIONS
        // ==============================================
        // FO (role_id=2) can only: Draft, For Verification, Rejected
        // Only MAIN (role_id=1) can: Approve, Print, Claim
        $mainOnlyStatuses = ['Approved', 'Printed', 'Claimed'];
        if ($user->role_id !== 1 && in_array($request->status, $mainOnlyStatuses)) {
            return response()->json([
                'success' => false,
                'message' => 'Only OSCA Main can approve, print, or claim applications. Please transmit to Main Office for approval.',
                'required_action' => 'transmit_to_main',
            ], 403);
        }
        // ==============================================

        $request->validate([
            'status' => 'required|in:Pending,Draft,For Verification,Verified,Approved,Rejected,Printed,Claimed',
            'rejection_reason' => 'nullable|required_if:status,Rejected|string|max:500',
        ]);

        $application = Application::findOrFail($id);

        try {
            DB::beginTransaction();

            $updateData = ['status' => $request->status];

            // Set action-specific fields based on status
            switch ($request->status) {
                case 'For Verification':
                    $updateData['submission_date'] = now();
                    break;
                    
                case 'Approved':
                    // ==============================================
                    // STRICT DUPLICATE CHECK BEFORE APPROVAL
                    // ==============================================
                    if ($application->applicant_data) {
                        $personalInfo = $application->applicant_data['personal_info'] ?? [];
                        $firstName = strtolower(trim($personalInfo['first_name'] ?? ''));
                        $lastName = strtolower(trim($personalInfo['last_name'] ?? ''));
                        $birthdate = $personalInfo['birthdate'] ?? null;

                        if ($firstName && $lastName && $birthdate) {
                            $existingSenior = SeniorCitizen::whereRaw('LOWER(TRIM(first_name)) = ?', [$firstName])
                                ->whereRaw('LOWER(TRIM(last_name)) = ?', [$lastName])
                                ->whereDate('birthdate', $birthdate)
                                ->first();

                            if ($existingSenior) {
                                return response()->json([
                                    'success' => false,
                                    'message' => 'Cannot approve: This person is already registered with OSCA ID: ' . $existingSenior->osca_id . ' in Barangay ' . ($existingSenior->barangay?->name ?? 'Unknown') . '. This may be a duplicate registration attempt.',
                                    'duplicate' => [
                                        'osca_id' => $existingSenior->osca_id,
                                        'name' => "{$existingSenior->first_name} {$existingSenior->last_name}",
                                        'barangay' => $existingSenior->barangay?->name,
                                    ],
                                ], 409);
                            }
                        }
                    }
                    // ==============================================
                    
                    // Create senior_citizen from applicant_data
                    if (!$application->senior_id && $application->applicant_data) {
                        $seniorId = $this->createSeniorFromApplication($application, $user);
                        $updateData['senior_id'] = $seniorId;
                    } else if ($application->senior) {
                        // If senior already exists, just activate them
                        $application->senior->update([
                            'registration_status_id' => 2, // Approved
                            'is_active' => true,
                        ]);
                    }
                    $updateData['approved_by'] = $user->id;
                    $updateData['approval_date'] = now();
                    break;
                    
                case 'Rejected':
                    $updateData['notes'] = ($application->notes ?? '') . 
                        "\nRejection Reason: " . $request->rejection_reason;
                    break;
                    
                case 'Printed':
                    $updateData['printed_by'] = $user->id;
                    $updateData['print_date'] = now();
                    break;
                    
                case 'Claimed':
                    $updateData['claimed_by'] = $user->id;
                    $updateData['claim_date'] = now();
                    break;
            }

            $application->update($updateData);

            DB::commit();

            return response()->json([
                'success' => true,
                'message' => 'Application status updated successfully',
                'data' => $application->fresh(['senior', 'applicationType']),
            ]);

        } catch (\Exception $e) {
            DB::rollBack();
            return response()->json([
                'success' => false,
                'message' => 'Failed to update status: ' . $e->getMessage(),
            ], 500);
        }
    }

    /**
     * Create senior citizen record from application's applicant_data.
     */
    private function createSeniorFromApplication(Application $application, $user): int
    {
        $data = $application->applicant_data;
        $personal = $data['personal_info'] ?? [];
        $contact = $data['contact_info'] ?? [];
        $background = $data['background_info'] ?? [];
        $familyMembers = $data['family_members'] ?? [];

        // Create contact record
        $contactRecord = Contact::create([
            'mobile_number' => $contact['mobile_number'] ?? null,
            'telephone_number' => $contact['telephone_number'] ?? null,
            'house_number' => $contact['house_number'] ?? null,
            'street' => $contact['street'] ?? null,
            'barangay_id' => $personal['barangay_id'] ?? null,
            'city' => 'Zamboanga City',
            'postal_code' => '7000',
        ]);

        // Get branch from barangay
        $barangay = Barangay::with('branches')->find($personal['barangay_id']);
        $branchId = $barangay?->branches?->first()?->id;

        // Generate OSCA ID
        $oscaId = $this->generateOscaId();

        // Create senior citizen
        $senior = SeniorCitizen::create([
            'osca_id' => $oscaId,
            'first_name' => $personal['first_name'] ?? '',
            'middle_name' => $personal['middle_name'] ?? null,
            'last_name' => $personal['last_name'] ?? '',
            'extension' => $personal['extension'] ?? null,
            'birthdate' => $personal['birthdate'] ?? null,
            'gender_id' => $personal['gender_id'] ?? 1,
            'barangay_id' => $personal['barangay_id'] ?? null,
            'branch_id' => $branchId,
            'contact_id' => $contactRecord->id,
            'educational_attainment_id' => $background['educational_attainment_id'] ?? null,
            'monthly_salary' => $background['monthly_salary'] ?? 0,
            'occupation' => $background['occupation'] ?? null,
            'other_skills' => $background['other_skills'] ?? null,
            'registration_date' => now(),
            'registration_status_id' => 2, // Approved
            'registered_by' => $user->id,
            'is_active' => true,
            'is_deceased' => false,
        ]);

        // Create family members
        if (!empty($familyMembers)) {
            foreach ($familyMembers as $member) {
                if (!empty($member['first_name'])) {
                    DB::table('family_members')->insert([
                        'senior_id' => $senior->id,
                        'first_name' => $member['first_name'] ?? '',
                        'middle_name' => $member['middle_name'] ?? null,
                        'last_name' => $member['last_name'] ?? '',
                        'extension' => $member['extension'] ?? null,
                        'relationship' => $member['relationship'] ?? null,
                        'age' => $member['age'] ?? null,
                        'monthly_salary' => $member['monthly_salary'] ?? null,
                        'created_at' => now(),
                    ]);
                }
            }
        }

        return $senior->id;
    }

    /**
     * Generate OSCA ID for new senior citizen.
     */
    private function generateOscaId(): string
    {
        $year = date('Y');
        $prefix = 'ZC-' . $year . '-';
        
        $lastSenior = SeniorCitizen::where('osca_id', 'like', $prefix . '%')
            ->orderBy('osca_id', 'desc')
            ->first();
        
        if ($lastSenior) {
            $lastNumber = (int) str_replace($prefix, '', $lastSenior->osca_id);
            $newNumber = $lastNumber + 1;
        } else {
            $newNumber = 1001;
        }
        
        return $prefix . str_pad($newNumber, 6, '0', STR_PAD_LEFT);
    }

    /**
     * Get application statistics.
     */
    public function statistics(Request $request)
    {
        $user = $request->user();

        $baseQuery = Application::query()
            ->when($user->role_id !== 1, function ($q) use ($user) {
                if ($user->branch_id) {
                    $q->whereHas('senior', function ($sq) use ($user) {
                        $sq->whereHas('barangay', function ($bq) use ($user) {
                            $bq->whereHas('branches', function ($brq) use ($user) {
                                $brq->where('branches.id', $user->branch_id);
                            });
                        });
                    });
                }
            });

        $stats = [
            'total' => (clone $baseQuery)->count(),
            'pending' => (clone $baseQuery)->where('status', 'Pending')->count(),
            'draft' => (clone $baseQuery)->where('status', 'Draft')->count(),
            'for_verification' => (clone $baseQuery)->where('status', 'For Verification')->count(),
            'approved' => (clone $baseQuery)->where('status', 'Approved')->count(),
            'rejected' => (clone $baseQuery)->where('status', 'Rejected')->count(),
            'printed' => (clone $baseQuery)->where('status', 'Printed')->count(),
            'claimed' => (clone $baseQuery)->where('status', 'Claimed')->count(),
        ];

        return response()->json([
            'success' => true,
            'data' => $stats,
        ]);
    }
}
