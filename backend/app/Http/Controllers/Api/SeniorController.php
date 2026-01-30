<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\SeniorCitizen;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SeniorController extends Controller
{
    /**
     * Get paginated list of seniors.
     */
    public function index(Request $request)
    {
        $user = $request->user();
        $perPage = $request->get('per_page', 15);
        
        $query = SeniorCitizen::with(['barangay', 'branch', 'gender', 'registrationStatus'])
            ->accessibleBy($user);

        // Search filter
        if ($search = $request->get('search')) {
            $query->where(function ($q) use ($search) {
                $q->where('osca_id', 'like', "%{$search}%")
                    ->orWhere('first_name', 'like', "%{$search}%")
                    ->orWhere('last_name', 'like', "%{$search}%")
                    ->orWhere('middle_name', 'like', "%{$search}%");
            });
        }

        // Barangay filter
        if ($barangayId = $request->get('barangay_id')) {
            $query->where('barangay_id', $barangayId);
        }

        // Status filter
        if ($status = $request->get('status')) {
            if ($status === 'active') {
                $query->where('is_active', true)->where('is_deceased', false);
            } elseif ($status === 'inactive') {
                $query->where('is_active', false);
            } elseif ($status === 'deceased') {
                $query->where('is_deceased', true);
            }
        }

        // Age categories filter (octogenarians, nonagenarians, centenarians)
        if ($ageCategories = $request->get('age_categories')) {
            $categories = is_array($ageCategories) ? $ageCategories : explode(',', $ageCategories);
            
            $query->where(function ($q) use ($categories) {
                foreach ($categories as $category) {
                    $category = trim($category);
                    switch ($category) {
                        case 'octogenarians':
                            $q->orWhereRaw('TIMESTAMPDIFF(YEAR, birthdate, CURDATE()) BETWEEN 80 AND 89');
                            break;
                        case 'nonagenarians':
                            $q->orWhereRaw('TIMESTAMPDIFF(YEAR, birthdate, CURDATE()) BETWEEN 90 AND 99');
                            break;
                        case 'centenarians':
                            $q->orWhereRaw('TIMESTAMPDIFF(YEAR, birthdate, CURDATE()) >= 100');
                            break;
                    }
                }
            });
        }

        // Age range filter
        if ($minAge = $request->get('min_age')) {
            $maxDate = now()->subYears($minAge)->format('Y-m-d');
            $query->where('birthdate', '<=', $maxDate);
        }
        if ($maxAge = $request->get('max_age')) {
            $minDate = now()->subYears($maxAge + 1)->format('Y-m-d');
            $query->where('birthdate', '>', $minDate);
        }

        // Sorting
        $sortBy = $request->get('sort_by', 'created_at');
        $sortOrder = $request->get('sort_order', 'desc');
        $query->orderBy($sortBy, $sortOrder);

        $seniors = $query->paginate($perPage);

        return response()->json([
            'success' => true,
            'data' => $seniors,
        ]);
    }

    /**
     * Get a single senior by ID.
     */
    public function show(Request $request, $id)
    {
        $user = $request->user();
        
        $senior = SeniorCitizen::with([
            'barangay',
            'branch',
            'gender',
            'contact',
            'educationalAttainment',
            'socioeconomicStatus',
            'mobilityLevel',
            'registrationStatus',
            'registeredBy',
            'applications.type',
            'seniorIds',
            'eligibleBenefits',
        ])
            ->accessibleBy($user)
            ->findOrFail($id);

        return response()->json([
            'success' => true,
            'data' => $senior,
        ]);
    }

    /**
     * Get statistics for seniors.
     */
    public function statistics(Request $request)
    {
        $user = $request->user();
        $barangayIds = $user->getAccessibleBarangayIds();

        $baseQuery = SeniorCitizen::query();
        if (!$user->isMainAdmin()) {
            $baseQuery->whereIn('barangay_id', $barangayIds);
        }

        $stats = [
            'total' => (clone $baseQuery)->count(),
            'active' => (clone $baseQuery)->where('is_active', true)->where('is_deceased', false)->count(),
            'inactive' => (clone $baseQuery)->where('is_active', false)->count(),
            'deceased' => (clone $baseQuery)->where('is_deceased', true)->count(),
            'male' => (clone $baseQuery)->where('gender_id', 1)->count(),
            'female' => (clone $baseQuery)->where('gender_id', 2)->count(),
        ];

        // Age brackets
        $stats['age_60_69'] = (clone $baseQuery)
            ->whereRaw('TIMESTAMPDIFF(YEAR, birthdate, CURDATE()) BETWEEN 60 AND 69')
            ->count();
        $stats['age_70_79'] = (clone $baseQuery)
            ->whereRaw('TIMESTAMPDIFF(YEAR, birthdate, CURDATE()) BETWEEN 70 AND 79')
            ->count();
        $stats['age_80_plus'] = (clone $baseQuery)
            ->whereRaw('TIMESTAMPDIFF(YEAR, birthdate, CURDATE()) >= 80')
            ->count();

        return response()->json([
            'success' => true,
            'data' => $stats,
        ]);
    }

    /**
     * Export seniors to CSV.
     */
    public function export(Request $request)
    {
        $user = $request->user();
        
        $seniors = SeniorCitizen::with(['barangay', 'gender'])
            ->accessibleBy($user)
            ->active()
            ->get();

        $headers = [
            'Content-Type' => 'text/csv',
            'Content-Disposition' => 'attachment; filename="seniors_export_' . date('Y-m-d') . '.csv"',
        ];

        $callback = function () use ($seniors) {
            $file = fopen('php://output', 'w');
            
            // Header row
            fputcsv($file, [
                'OSCA ID',
                'Last Name',
                'First Name',
                'Middle Name',
                'Birthdate',
                'Age',
                'Gender',
                'Barangay',
                'Contact Number',
            ]);

            foreach ($seniors as $senior) {
                fputcsv($file, [
                    $senior->osca_id,
                    $senior->last_name,
                    $senior->first_name,
                    $senior->middle_name,
                    $senior->birthdate?->format('Y-m-d'),
                    $senior->age,
                    $senior->gender->name ?? '',
                    $senior->barangay->name ?? '',
                    $senior->contact->mobile ?? '',
                ]);
            }

            fclose($file);
        };

        return response()->stream($callback, 200, $headers);
    }
}
