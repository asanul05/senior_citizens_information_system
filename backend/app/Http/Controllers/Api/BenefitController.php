<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\BenefitClaim;
use App\Models\BenefitType;
use App\Models\SeniorCitizen;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class BenefitController extends Controller
{
    /**
     * Get all benefit types.
     */
    public function types()
    {
        $types = BenefitType::active()
            ->orderBy('min_age')
            ->get()
            ->map(function ($type) {
                return [
                    'id' => $type->id,
                    'name' => $type->name,
                    'description' => $type->description,
                    'min_age' => $type->min_age,
                    'max_age' => $type->max_age,
                    'age_range' => $type->age_range,
                    'amount' => $type->amount,
                    'formatted_amount' => $type->formatted_amount,
                    'is_one_time' => $type->is_one_time,
                ];
            });

        return response()->json([
            'success' => true,
            'data' => $types,
        ]);
    }

    /**
     * Get paginated list of benefit claims.
     */
    public function index(Request $request)
    {
        $user = $request->user();
        $perPage = $request->get('per_page', 15);
        $currentYear = now()->year;

        $query = BenefitClaim::with(['senior', 'senior.barangay', 'benefitType', 'processor'])
            ->accessibleBy($user);

        // Filter by status
        if ($status = $request->get('status')) {
            $query->status($status);
        }

        // Filter by year
        if ($year = $request->get('year')) {
            $query->forYear($year);
        } else {
            $query->forYear($currentYear);
        }

        // Filter by benefit type
        if ($typeId = $request->get('benefit_type_id')) {
            $query->where('benefit_type_id', $typeId);
        }

        // Search by senior name or OSCA ID
        if ($search = $request->get('search')) {
            $query->whereHas('senior', function ($q) use ($search) {
                $q->where('first_name', 'like', "%{$search}%")
                    ->orWhere('last_name', 'like', "%{$search}%")
                    ->orWhere('osca_id', 'like', "%{$search}%");
            });
        }

        $query->orderBy('created_at', 'desc');
        $claims = $query->paginate($perPage);

        return response()->json([
            'success' => true,
            'data' => $claims->items(),
            'meta' => [
                'total' => $claims->total(),
                'per_page' => $claims->perPage(),
                'current_page' => $claims->currentPage(),
                'last_page' => $claims->lastPage(),
            ],
        ]);
    }

    /**
     * Export benefit claims as CSV.
     */
    public function exportClaims(Request $request)
    {
        $user = $request->user();
        $currentYear = now()->year;

        $query = BenefitClaim::with(['senior', 'senior.barangay', 'benefitType', 'processor'])
            ->accessibleBy($user);

        // Apply same filters as index
        if ($status = $request->get('status')) {
            $query->status($status);
        }

        if ($year = $request->get('year')) {
            $query->forYear($year);
        } else {
            $query->forYear($currentYear);
        }

        if ($typeId = $request->get('benefit_type_id')) {
            $query->where('benefit_type_id', $typeId);
        }

        if ($search = $request->get('search')) {
            $query->whereHas('senior', function ($q) use ($search) {
                $q->where('first_name', 'like', "%{$search}%")
                    ->orWhere('last_name', 'like', "%{$search}%")
                    ->orWhere('osca_id', 'like', "%{$search}%");
            });
        }

        $claims = $query->orderBy('created_at', 'desc')->get();

        // Build CSV content
        $csv = "OSCA ID,Senior Name,Barangay,Benefit Type,Amount,Year,Status,Date Filed,Released At\n";
        
        foreach ($claims as $claim) {
            $senior = $claim->senior;
            $csv .= implode(',', [
                $senior?->osca_id ?? '',
                '"' . ($senior?->full_name ?? $senior?->first_name . ' ' . $senior?->last_name) . '"',
                '"' . ($senior?->barangay?->name ?? '') . '"',
                '"' . ($claim->benefitType?->name ?? '') . '"',
                $claim->amount,
                $claim->claim_year,
                $claim->status,
                $claim->created_at->format('Y-m-d'),
                $claim->released_at?->format('Y-m-d') ?? '',
            ]) . "\n";
        }

        $filename = 'benefits_claims_' . ($request->get('year') ?? $currentYear) . '_' . now()->format('Ymd_His') . '.csv';

        return response($csv)
            ->header('Content-Type', 'text/csv')
            ->header('Content-Disposition', "attachment; filename=\"{$filename}\"");
    }

    /**
     * Get seniors eligible for benefits they haven't claimed yet.
     */
    public function eligible(Request $request)
    {
        $user = $request->user();
        $perPage = $request->get('per_page', 15);
        $currentYear = now()->year;

        // Get benefit types (optionally filtered)
        $benefitTypesQuery = BenefitType::active()->where('amount', '>', 0)->orderBy('min_age');
        
        // Filter by specific benefit type if provided
        $filterTypeId = $request->get('benefit_type_id');
        if ($filterTypeId) {
            $benefitTypesQuery->where('id', $filterTypeId);
        }
        
        $benefitTypes = $benefitTypesQuery->get();

        // Search term
        $search = $request->get('search');

        // Build query for seniors who are eligible but haven't claimed
        $eligibleSeniors = [];

        foreach ($benefitTypes as $benefitType) {
            // Query seniors who have reached the minimum age for this benefit
            $query = SeniorCitizen::where('is_active', true)
                ->when($user->role_id !== 1 && $user->branch_id, function ($q) use ($user) {
                    $q->accessibleBy($user);
                });

            // Apply search filter
            if ($search) {
                $query->where(function ($q) use ($search) {
                    $q->where('first_name', 'like', "%{$search}%")
                        ->orWhere('last_name', 'like', "%{$search}%")
                        ->orWhere('osca_id', 'like', "%{$search}%");
                });
            }

            // Cumulative eligibility: age >= min_age (birthdate <= maxBirthdate for that min_age)
            $maxBirthdate = now()->subYears($benefitType->min_age)->endOfYear();
            $query->where('birthdate', '<=', $maxBirthdate);

            // Exclude seniors who already claimed this benefit (one-time benefits)
            if ($benefitType->is_one_time) {
                $query->whereDoesntHave('benefitClaims', function ($q) use ($benefitType) {
                    $q->where('benefit_type_id', $benefitType->id)
                        ->whereIn('status', ['approved', 'released', 'pending']);
                });
            } else {
                // For yearly benefits, check current year only
                $query->whereDoesntHave('benefitClaims', function ($q) use ($benefitType, $currentYear) {
                    $q->where('benefit_type_id', $benefitType->id)
                        ->where('claim_year', $currentYear)
                        ->whereIn('status', ['approved', 'released', 'pending']);
                });
            }

            $seniors = $query->with('barangay')
                ->select('senior_citizens.*')
                ->selectRaw('TIMESTAMPDIFF(YEAR, birthdate, CURDATE()) as age')
                ->get();

            foreach ($seniors as $senior) {
                $eligibleSeniors[] = [
                    'senior_id' => $senior->id,
                    'osca_id' => $senior->osca_id,
                    'full_name' => $senior->full_name ?? "{$senior->first_name} {$senior->last_name}",
                    'age' => $senior->age,
                    'barangay' => $senior->barangay?->name,
                    'benefit_type_id' => $benefitType->id,
                    'benefit_name' => $benefitType->name,
                    'benefit_amount' => $benefitType->amount,
                    'formatted_amount' => $benefitType->formatted_amount,
                ];
            }
        }

        // Paginate manually
        $total = count($eligibleSeniors);
        $page = $request->get('page', 1);
        $offset = ($page - 1) * $perPage;
        $pagedData = array_slice($eligibleSeniors, $offset, $perPage);

        return response()->json([
            'success' => true,
            'data' => $pagedData,
            'meta' => [
                'total' => $total,
                'per_page' => $perPage,
                'current_page' => (int) $page,
                'last_page' => ceil($total / $perPage) ?: 1,
            ],
        ]);
    }

    /**
     * Export eligible seniors as CSV.
     */
    public function exportEligible(Request $request)
    {
        $user = $request->user();
        $currentYear = now()->year;

        // Get benefit types (optionally filtered)
        $benefitTypesQuery = BenefitType::active()->where('amount', '>', 0)->orderBy('min_age');
        
        $filterTypeId = $request->get('benefit_type_id');
        if ($filterTypeId) {
            $benefitTypesQuery->where('id', $filterTypeId);
        }
        
        $benefitTypes = $benefitTypesQuery->get();
        $search = $request->get('search');

        // Build data for export
        $eligibleSeniors = [];

        foreach ($benefitTypes as $benefitType) {
            $query = SeniorCitizen::where('is_active', true)
                ->when($user->role_id !== 1 && $user->branch_id, function ($q) use ($user) {
                    $q->accessibleBy($user);
                });

            if ($search) {
                $query->where(function ($q) use ($search) {
                    $q->where('first_name', 'like', "%{$search}%")
                        ->orWhere('last_name', 'like', "%{$search}%")
                        ->orWhere('osca_id', 'like', "%{$search}%");
                });
            }

            $maxBirthdate = now()->subYears($benefitType->min_age)->endOfYear();
            $query->where('birthdate', '<=', $maxBirthdate);

            if ($benefitType->is_one_time) {
                $query->whereDoesntHave('benefitClaims', function ($q) use ($benefitType) {
                    $q->where('benefit_type_id', $benefitType->id)
                        ->whereIn('status', ['approved', 'released', 'pending']);
                });
            } else {
                $query->whereDoesntHave('benefitClaims', function ($q) use ($benefitType, $currentYear) {
                    $q->where('benefit_type_id', $benefitType->id)
                        ->where('claim_year', $currentYear)
                        ->whereIn('status', ['approved', 'released', 'pending']);
                });
            }

            $seniors = $query->with('barangay')
                ->select('senior_citizens.*')
                ->selectRaw('TIMESTAMPDIFF(YEAR, birthdate, CURDATE()) as age')
                ->get();

            foreach ($seniors as $senior) {
                $eligibleSeniors[] = [
                    'osca_id' => $senior->osca_id,
                    'full_name' => $senior->full_name ?? "{$senior->first_name} {$senior->last_name}",
                    'age' => $senior->age,
                    'barangay' => $senior->barangay?->name,
                    'benefit_name' => $benefitType->name,
                    'benefit_amount' => $benefitType->amount,
                ];
            }
        }

        // Build CSV
        $csv = "OSCA ID,Senior Name,Age,Barangay,Eligible Benefit,Amount\n";
        
        foreach ($eligibleSeniors as $row) {
            $csv .= implode(',', [
                $row['osca_id'] ?? '',
                '"' . $row['full_name'] . '"',
                $row['age'],
                '"' . ($row['barangay'] ?? '') . '"',
                '"' . $row['benefit_name'] . '"',
                $row['benefit_amount'],
            ]) . "\n";
        }

        $filename = 'eligible_seniors_' . now()->format('Ymd_His') . '.csv';

        return response($csv)
            ->header('Content-Type', 'text/csv')
            ->header('Content-Disposition', "attachment; filename=\"{$filename}\"");
    }

    /**
     * Get dashboard statistics for benefits.
     */
    public function statistics(Request $request)
    {
        $user = $request->user();
        $currentYear = now()->year;

        $baseQuery = BenefitClaim::accessibleBy($user)->forYear($currentYear);

        $stats = [
            'total_claims' => (clone $baseQuery)->count(),
            'pending' => (clone $baseQuery)->status('pending')->count(),
            'approved' => (clone $baseQuery)->status('approved')->count(),
            'released' => (clone $baseQuery)->status('released')->count(),
            'rejected' => (clone $baseQuery)->status('rejected')->count(),
            'total_released_amount' => (clone $baseQuery)->status('released')->sum('amount'),
        ];

        // Get eligible count (seniors who can claim but haven't)
        $benefitTypes = BenefitType::active()->where('amount', '>', 0)->get();
        $eligibleCount = 0;

        foreach ($benefitTypes as $benefitType) {
            $query = SeniorCitizen::where('is_active', true)
                ->when($user->role_id !== 1 && $user->branch_id, function ($q) use ($user) {
                    $q->accessibleBy($user);
                });

            $minBirthdate = now()->subYears($benefitType->max_age ?? 150)->startOfYear();
            $maxBirthdate = now()->subYears($benefitType->min_age)->endOfYear();

            $query->whereBetween('birthdate', [$minBirthdate, $maxBirthdate]);

            if ($benefitType->is_one_time) {
                $query->whereDoesntHave('benefitClaims', function ($q) use ($benefitType) {
                    $q->where('benefit_type_id', $benefitType->id)
                        ->whereIn('status', ['approved', 'released', 'pending']);
                });
            }

            $eligibleCount += $query->count();
        }

        $stats['eligible_unclaimed'] = $eligibleCount;

        return response()->json([
            'success' => true,
            'data' => $stats,
        ]);
    }

    /**
     * Create a new benefit claim.
     */
    public function store(Request $request)
    {
        $request->validate([
            'senior_id' => 'required|exists:senior_citizens,id',
            'benefit_type_id' => 'required|exists:benefit_types,id',
            'notes' => 'nullable|string|max:500',
        ]);

        $user = $request->user();
        $currentYear = now()->year;

        $senior = SeniorCitizen::findOrFail($request->senior_id);
        $benefitType = BenefitType::findOrFail($request->benefit_type_id);

        // Verify senior is eligible for this benefit
        $age = $senior->birthdate->age;
        if (!$benefitType->isEligibleForAge($age)) {
            return response()->json([
                'success' => false,
                'message' => "Senior is {$age} years old and not eligible for {$benefitType->name} benefit (ages {$benefitType->age_range}).",
            ], 422);
        }

        // Check if already claimed (for one-time benefits)
        if ($benefitType->is_one_time) {
            $existingClaim = BenefitClaim::where('senior_id', $senior->id)
                ->where('benefit_type_id', $benefitType->id)
                ->whereIn('status', ['pending', 'approved', 'released'])
                ->first();

            if ($existingClaim) {
                return response()->json([
                    'success' => false,
                    'message' => "Senior has already claimed {$benefitType->name} benefit (Status: {$existingClaim->status}).",
                ], 422);
            }
        } else {
            // Check current year for recurring benefits
            $existingClaim = BenefitClaim::where('senior_id', $senior->id)
                ->where('benefit_type_id', $benefitType->id)
                ->where('claim_year', $currentYear)
                ->whereIn('status', ['pending', 'approved', 'released'])
                ->first();

            if ($existingClaim) {
                return response()->json([
                    'success' => false,
                    'message' => "Senior has already claimed {$benefitType->name} benefit for {$currentYear}.",
                ], 422);
            }
        }

        $claim = BenefitClaim::create([
            'senior_id' => $senior->id,
            'benefit_type_id' => $benefitType->id,
            'claim_year' => $currentYear,
            'amount' => $benefitType->amount,
            'status' => 'pending',
            'notes' => $request->notes,
        ]);

        $claim->load(['senior', 'benefitType']);

        return response()->json([
            'success' => true,
            'message' => 'Benefit claim created successfully.',
            'data' => $claim,
        ], 201);
    }

    /**
     * Update claim status.
     */
    public function updateStatus(Request $request, $id)
    {
        $request->validate([
            'status' => 'required|in:approved,released,rejected',
            'notes' => 'nullable|string|max:500',
        ]);

        $user = $request->user();
        $claim = BenefitClaim::findOrFail($id);

        // Only Main Admin can approve/release
        if ($user->role_id !== 1 && in_array($request->status, ['approved', 'released'])) {
            return response()->json([
                'success' => false,
                'message' => 'Only OSCA Main can approve or release benefit claims.',
            ], 403);
        }

        $claim->status = $request->status;
        $claim->processed_by = $user->id;

        if ($request->status === 'released') {
            $claim->released_at = now();
        }

        if ($request->notes) {
            $claim->notes = $request->notes;
        }

        $claim->save();
        $claim->load(['senior', 'benefitType', 'processor']);

        return response()->json([
            'success' => true,
            'message' => 'Claim status updated to ' . ucfirst($request->status),
            'data' => $claim,
        ]);
    }

    /**
     * Get claims and eligibility for a specific senior.
     */
    public function seniorClaims($seniorId)
    {
        $senior = SeniorCitizen::with(['benefitClaims.benefitType', 'benefitClaims.processor', 'barangay'])
            ->find($seniorId);

        if (!$senior) {
            return response()->json([
                'success' => false,
                'message' => 'Senior not found',
            ], 404);
        }

        $age = $senior->age;

        // Get all active benefit types
        $benefitTypes = BenefitType::active()
            ->where('amount', '>', 0)
            ->orderBy('min_age')
            ->get();

        // Build eligibility summary for each benefit type
        $eligibility = [];
        foreach ($benefitTypes as $type) {
            $isEligible = $type->isEligibleForAge($age);
            
            // Check if already claimed
            $existingClaim = $senior->benefitClaims
                ->where('benefit_type_id', $type->id)
                ->whereIn('status', ['pending', 'approved', 'released'])
                ->first();

            $eligibility[] = [
                'benefit_type_id' => $type->id,
                'name' => $type->name,
                'min_age' => $type->min_age,
                'amount' => $type->amount,
                'formatted_amount' => $type->formatted_amount,
                'is_eligible' => $isEligible,
                'has_claimed' => $existingClaim !== null,
                'claim_status' => $existingClaim?->status,
                'claim_id' => $existingClaim?->id,
            ];
        }

        // Get detailed claim history
        $claims = $senior->benefitClaims->map(function ($claim) {
            return [
                'id' => $claim->id,
                'benefit_type_id' => $claim->benefit_type_id,
                'benefit_name' => $claim->benefitType->name,
                'amount' => $claim->amount,
                'claim_year' => $claim->claim_year,
                'status' => $claim->status,
                'released_at' => $claim->released_at?->format('Y-m-d'),
                'processed_by' => $claim->processor?->name,
                'notes' => $claim->notes,
                'created_at' => $claim->created_at->format('Y-m-d'),
            ];
        });

        return response()->json([
            'success' => true,
            'data' => [
                'senior' => [
                    'id' => $senior->id,
                    'osca_id' => $senior->osca_id,
                    'full_name' => $senior->full_name,
                    'age' => $age,
                    'barangay' => $senior->barangay?->name,
                ],
                'eligibility' => $eligibility,
                'claims' => $claims,
            ],
        ]);
    }
}
