<?php

namespace App\Http\Controllers;

use App\Models\Announcement;
use App\Models\Barangay;
use App\Models\PreRegistration;
use App\Models\SeniorCitizen;
use App\Models\IdPrintingQueue;
use App\Models\BenefitClaim;
use App\Models\EducationalAttainment;
use App\Models\CivilStatus;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use App\Services\SmsService;

class PublicController extends Controller
{
    /**
     * Get public statistics for home page
     */
    public function stats(): JsonResponse
    {
        $currentYear = date('Y');
        
        // Total registered senior citizens
        $totalSeniors = SeniorCitizen::count();
        
        // IDs issued this year (claimed from id_printing_queue)
        $idsIssuedThisYear = IdPrintingQueue::where('status', 'claimed')
            ->whereYear('claimed_date', $currentYear)
            ->count();
        
        // Total benefits released (only count Released status)
        $totalBenefitsReleased = BenefitClaim::where('status', 'Released')->count();
        
        // Count distinct barangays with registered seniors
        $barangaysCovered = SeniorCitizen::distinct('barangay_id')->count('barangay_id');
        
        return response()->json([
            'data' => [
                'registered_seniors' => $totalSeniors,
                'ids_issued_this_year' => $idsIssuedThisYear,
                'benefits_claimed' => $totalBenefitsReleased,
                'barangays_covered' => $barangaysCovered,
            ]
        ]);
    }

    /**
     * Get published announcements for public website.
     */
    public function announcements(Request $request): JsonResponse
    {
        $baseUrl = rtrim($request->getSchemeAndHttpHost(), '/');

        $query = Announcement::with(['type', 'media', 'createdBy.barangay'])
            ->published()
            ->orderByDesc('published_date')
            ->orderByDesc('created_at');

        // Optional barangay filter:
        // - direct match for barangay accounts assigned to the selected barangay
        // - include field office announcements when the selected barangay belongs to their branch
        if ($barangayId = $request->get('barangay_id')) {
            $barangayId = (int) $barangayId;
            $query->whereHas('createdBy', function ($q) use ($barangayId) {
                $q->where('barangay_id', $barangayId)
                    ->orWhere(function ($subQ) use ($barangayId) {
                        $subQ->where('role_id', 2)
                            ->whereHas('branch.barangays', function ($branchQ) use ($barangayId) {
                                $branchQ->where('barangays.id', $barangayId);
                            });
                    });
            });
        }

        // Optional type filter (by type code or name)
        if ($type = $request->get('type')) {
            $query->whereHas('type', function ($q) use ($type) {
                $q->where('code', $type)->orWhere('name', $type);
            });
        }

        // Optional text search
        if ($search = $request->get('search')) {
            $like = '%' . $search . '%';
            $query->where(function ($q) use ($like) {
                $q->where('title', 'like', $like)
                    ->orWhere('description', 'like', $like);
            });
        }

        $announcements = $query->get()->map(function (Announcement $announcement) use ($baseUrl) {
            $eventDate = $announcement->event_date?->format('Y-m-d');
            $publishedDate = $announcement->published_date?->format('Y-m-d');
            $media = $announcement->media->map(function ($item) use ($baseUrl) {
                return [
                    'id' => $item->id,
                    'announcement_id' => $item->announcement_id,
                    'file_path' => $item->file_path,
                    'media_type' => $item->media_type,
                    'uploaded_at' => $item->uploaded_at,
                    'url' => $baseUrl . '/storage/' . ltrim($item->file_path, '/'),
                ];
            })->values();

            return [
                'id' => $announcement->id,
                'title' => $announcement->title,
                'description' => $announcement->description ?? $announcement->content,
                'content' => $announcement->content ?? $announcement->description,
                'type' => $announcement->type?->code ?? 'news',
                'type_name' => $announcement->type?->name,
                'date' => $eventDate ?? $publishedDate ?? $announcement->created_at?->format('Y-m-d'),
                'event_date' => $eventDate,
                'published_at' => $announcement->published_date?->toIso8601String(),
                'media' => $media,
                'location' => $announcement->location,
                'target_audience' => $announcement->target_audience,
                'barangay_id' => $announcement->createdBy?->barangay_id,
                'barangay_name' => $announcement->createdBy?->barangay?->name,
            ];
        });

        return response()->json([
            'data' => $announcements,
        ]);
    }

    /**
     * Get barangays list for public form
     */
    public function barangays(): JsonResponse

    {
        $barangays = Barangay::orderBy('name')->get(['id', 'name']);
        return response()->json(['data' => $barangays]);
    }

    /**
     * Submit online application (pre-registration)
     */
    public function apply(Request $request): JsonResponse
    {
        $validator = Validator::make($request->all(), [
            'barangay_id' => 'required|exists:barangays,id',
            'first_name' => 'required|string|max:100',
            'middle_name' => 'nullable|string|max:100',
            'last_name' => 'required|string|max:100',
            'extension' => 'nullable|string|max:10',
            'birthdate' => 'required|date|before:-60 years',
            'gender_id' => 'required|integer|in:1,2',
            'civil_status_id' => 'required|integer',
            'house_number' => 'nullable|string|max:50',
            'street' => 'nullable|string|max:255',
            'mobile_number' => ['required', 'string', 'max:20', 'regex:/^09\d{9}$/'],
            'telephone_number' => 'nullable|string|max:20',
            'email' => 'nullable|email|max:100',
            'educational_attainment_id' => 'nullable|integer',
            'monthly_salary' => 'nullable|numeric',
            'occupation' => 'nullable|string|max:100',
            'other_skills' => 'nullable|string|max:255',
            'family_members' => 'nullable|array',
            'target_sectors' => 'nullable|array',
            'sub_categories' => 'nullable|array',
            'registration_type' => 'required|in:self,assisted',
            'assistant_first_name' => 'nullable|required_if:registration_type,assisted|string|max:100',
            'assistant_middle_name' => 'nullable|string|max:100',
            'assistant_last_name' => 'nullable|required_if:registration_type,assisted|string|max:100',
            'assistant_extension' => 'nullable|string|max:10',
            'assistant_relationship' => 'nullable|required_if:registration_type,assisted|string|max:100',
            'assistant_contact' => ['nullable', 'required_if:registration_type,assisted', 'string', 'max:20', 'regex:/^09\d{9}$/'],
            'turnstile_token' => 'nullable|string',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'message' => 'Validation failed',
                'errors' => $validator->errors()
            ], 422);
        }

        // Verify Turnstile CAPTCHA (only when secret is configured)
        if (config('services.turnstile.secret')) {
            $token = $request->input('turnstile_token');
            if (!$token) {
                return response()->json([
                    'message' => 'Please complete the verification check.',
                ], 422);
            }

            $verified = $this->verifyTurnstile($token, $request->ip());
            if (!$verified) {
                return response()->json([
                    'message' => 'Verification failed. Please try again.',
                ], 422);
            }
        }

        // Normalize names for comparison (lowercase, trim)
        $firstName = strtolower(trim($request->first_name));
        $lastName = strtolower(trim($request->last_name));
        $birthdate = $request->birthdate;

        // Check for duplicate in existing Senior Citizens (already registered)
        $existingSenior = \App\Models\SeniorCitizen::whereRaw('LOWER(TRIM(first_name)) = ?', [$firstName])
            ->whereRaw('LOWER(TRIM(last_name)) = ?', [$lastName])
            ->whereDate('birthdate', $birthdate)
            ->first();

        if ($existingSenior) {
            return response()->json([
                'message' => 'You are already registered as a Senior Citizen.',
                'osca_id' => $existingSenior->osca_id,
                'action' => 'already_registered',
            ], 409);
        }

        // Check for duplicate pre-registration (pending/in-review applications)
        $existingPreReg = PreRegistration::where('status', '!=', 'rejected')
            ->whereRaw('LOWER(TRIM(JSON_UNQUOTE(JSON_EXTRACT(applicant_data, \'$.first_name\')))) = ?', [$firstName])
            ->whereRaw('LOWER(TRIM(JSON_UNQUOTE(JSON_EXTRACT(applicant_data, \'$.last_name\')))) = ?', [$lastName])
            ->whereRaw('JSON_UNQUOTE(JSON_EXTRACT(applicant_data, \'$.birthdate\')) = ?', [$birthdate])
            ->first();

        if ($existingPreReg) {
            return response()->json([
                'message' => 'An application with this information already exists.',
                'reference_number' => $existingPreReg->reference_number,
                'status' => $existingPreReg->status,
                'action' => 'existing_application',
            ], 409);
        }

        // Resolve lookup names for display
        $genderName = $request->gender_id == 1 ? 'Male' : ($request->gender_id == 2 ? 'Female' : null);
        $civilStatusName = $request->civil_status_id ? CivilStatus::find($request->civil_status_id)?->name : null;
        $barangayName = $request->barangay_id ? Barangay::find($request->barangay_id)?->name : null;
        $educAttainName = $request->educational_attainment_id ? EducationalAttainment::find($request->educational_attainment_id)?->level : null;

        // Create pre-registration with expanded data structure
        $preRegistration = PreRegistration::create([
            'reference_number' => PreRegistration::generateReferenceNumber(),
            'barangay_id' => $request->barangay_id,
            'applicant_data' => [
                // Personal info
                'first_name' => $request->first_name,
                'middle_name' => $request->middle_name,
                'last_name' => $request->last_name,
                'extension' => $request->extension,
                'birthdate' => $request->birthdate,
                'gender_id' => $request->gender_id,
                'gender_name' => $genderName,
                'civil_status_id' => $request->civil_status_id,
                'civil_status_name' => $civilStatusName,
                'barangay_name' => $barangayName,
                // Address
                'house_number' => $request->house_number,
                'street' => $request->street,
                // Contact
                'mobile_number' => $request->mobile_number,
                'telephone_number' => $request->telephone_number,
                'email' => $request->email,
                // Background
                'educational_attainment_id' => $request->educational_attainment_id,
                'educational_attainment_name' => $educAttainName,
                'monthly_salary' => $request->monthly_salary,
                'occupation' => $request->occupation,
                'other_skills' => $request->other_skills,
                // Family & Associations
                'family_members' => $request->family_members ?? [],
                'target_sectors' => $request->target_sectors ?? [],
                'sub_categories' => $request->sub_categories ?? [],
                // Registration type & assistant
                'registration_type' => $request->registration_type,
                'assistant_info' => $request->registration_type === 'assisted' ? [
                    'first_name' => $request->assistant_first_name,
                    'middle_name' => $request->assistant_middle_name,
                    'last_name' => $request->assistant_last_name,
                    'extension' => $request->assistant_extension,
                    'relationship' => $request->assistant_relationship,
                    'contact' => $request->assistant_contact,
                ] : null,
            ],
            'status' => PreRegistration::STATUS_FOR_VERIFICATION,
        ]);

        // Send reference number via SMS
        $smsSent = false;
        if ($request->mobile_number) {
            $smsService = new SmsService();
            $smsResult = $smsService->sendReferenceNumber(
                $request->mobile_number,
                $preRegistration->reference_number
            );
            $smsSent = $smsResult['success'];
        }

        return response()->json([
            'message' => 'Application submitted successfully',
            'reference_number' => $preRegistration->reference_number,
            'status' => $preRegistration->status,
            'sms_sent' => $smsSent,
            'next_steps' => 'Your application will be reviewed by the Admin. Visit the OSCA office with your documents to complete registration.',
        ], 201);
    }

    /**
     * Check application status by reference number
     */
    public function checkStatus(string $referenceNumber): JsonResponse
    {
        $preRegistration = PreRegistration::with('barangay')
            ->where('reference_number', $referenceNumber)
            ->first();

        if (!$preRegistration) {
            return response()->json([
                'message' => 'Application not found. Please check your reference number.'
            ], 404);
        }

        return response()->json([
            'data' => [
                'reference_number' => $preRegistration->reference_number,
                'status' => $preRegistration->status,
                'status_label' => $preRegistration->status_label,
                'barangay' => $preRegistration->barangay?->name ?? null,
                'applicant_name' => sprintf(
                    '%s %s',
                    $preRegistration->applicant_data['first_name'] ?? '',
                    $preRegistration->applicant_data['last_name'] ?? ''
                ),
                'submitted_at' => $preRegistration->created_at->format('M d, Y h:i A'),
                'fo_reviewed_at' => $preRegistration->fo_reviewed_at?->format('M d, Y h:i A'),
                'main_reviewed_at' => $preRegistration->main_reviewed_at?->format('M d, Y h:i A'),
                'rejection_reason' => $preRegistration->rejection_reason,
                'notes' => $preRegistration->notes,
            ]
        ]);
    }

    /**
     * Public verification endpoint for senior QR scans.
     */
    public function verifySeniorByOscaId(string $oscaId): JsonResponse
    {
        $normalizedOscaId = strtoupper(trim($oscaId));

        $senior = SeniorCitizen::with(['barangay.district', 'gender'])
            ->whereRaw('UPPER(osca_id) = ?', [$normalizedOscaId])
            ->first();

        if (!$senior) {
            return response()->json([
                'data' => [
                    'osca_id' => $normalizedOscaId,
                    'verified' => false,
                    'status_label' => 'Not Verified',
                    'reasons' => ['Senior record not found.'],
                    'senior' => null,
                    'verified_at' => now()->toIso8601String(),
                ],
            ], 404);
        }

        $reasons = [];
        if (!$senior->is_active) {
            $reasons[] = 'Senior record is inactive.';
        }
        if ($senior->is_deceased) {
            $reasons[] = 'Senior is reported as deceased.';
        }

        $photoUrl = $senior->photo_path
            ? Storage::disk(config('filesystems.upload_disk'))->url($senior->photo_path)
            : null;

        return response()->json([
            'data' => [
                'osca_id' => $senior->osca_id,
                'verified' => empty($reasons),
                'status_label' => empty($reasons) ? 'Verified Senior Citizen' : 'Not Verified',
                'reasons' => $reasons,
                'senior' => [
                    'full_name' => $senior->full_name,
                    'first_name' => $senior->first_name,
                    'last_name' => $senior->last_name,
                    'birthdate' => $senior->birthdate?->format('F d, Y'),
                    'birthdate_raw' => $senior->birthdate?->format('Y-m-d'),
                    'age' => $senior->age,
                    'gender' => $senior->gender?->name,
                    'barangay' => $senior->barangay?->name,
                    'district' => $senior->barangay?->district?->name,
                    'photo_url' => $photoUrl,
                    'is_active' => (bool) $senior->is_active,
                    'is_deceased' => (bool) $senior->is_deceased,
                    'deceased_date' => $senior->deceased_date?->format('F d, Y'),
                ],
                'verified_at' => now()->toIso8601String(),
            ],
        ]);
    }

    /**
     * Verify Cloudflare Turnstile token.
    */
    private function verifyTurnstile(string $token, ?string $ip): bool
    {
        try {
            $response = Http::asForm()->post('https://challenges.cloudflare.com/turnstile/v0/siteverify', [
                'secret' => config('services.turnstile.secret'),
                'response' => $token,
                'remoteip' => $ip,
            ]);

            $data = $response->json();
            return $data['success'] ?? false;
        } catch (\Exception $e) {
            Log::error('Turnstile verification failed (public apply)', ['error' => $e->getMessage()]);
            return true;
        }
    }
}
