<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\SeniorCitizen;
use App\Models\Application;
use App\Models\Announcement;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DashboardController extends Controller
{
    /**
     * Get dashboard statistics.
     */
    public function stats(Request $request)
    {
        $user = $request->user();
        $barangayIds = $user->getAccessibleBarangayIds();

        // Base query for seniors based on user access
        $seniorsQuery = SeniorCitizen::query();
        if (!$user->isMainAdmin()) {
            $seniorsQuery->whereIn('barangay_id', $barangayIds);
        }

        // Registered Active Senior Citizens
        $activeSeniors = (clone $seniorsQuery)
            ->where('is_active', true)
            ->where('is_deceased', false)
            ->count();

        // Pending Applications - combine applications for_verification + pre-registrations pending
        // This gives a meaningful "work to be done" count
        $pendingMainApps = Application::query()
            ->whereIn('status', ['pending', 'submitted', 'for_verification'])
            ->when(!$user->isMainAdmin(), function ($q) use ($barangayIds) {
                $q->whereHas('senior', function ($sq) use ($barangayIds) {
                    $sq->whereIn('barangay_id', $barangayIds);
                });
            })
            ->count();

        // Pre-registrations that are pending (online applications awaiting processing)
        $pendingPreRegs = \App\Models\PreRegistration::query()
            ->whereNotIn('status', ['converted', 'rejected'])
            ->when(!$user->isMainAdmin(), function ($q) use ($barangayIds) {
                $q->whereIn('barangay_id', $barangayIds);
            })
            ->count();

        $pendingApplications = $pendingMainApps + $pendingPreRegs;


        // ID Claimable (printed but not released)
        $idClaimable = DB::table('id_printing_queue')
            ->where('status', 'printed')
            ->when(!$user->isMainAdmin(), function ($q) use ($barangayIds) {
                $q->whereIn('senior_id', function ($sq) use ($barangayIds) {
                    $sq->select('id')
                        ->from('senior_citizens')
                        ->whereIn('barangay_id', $barangayIds);
                });
            })
            ->count();

        // Released IDs (this month)
        $releasedIds = DB::table('id_printing_queue')
            ->where('status', 'claimed')
            ->whereMonth('claimed_date', now()->month)
            ->whereYear('claimed_date', now()->year)
            ->when(!$user->isMainAdmin(), function ($q) use ($barangayIds) {
                $q->whereIn('senior_id', function ($sq) use ($barangayIds) {
                    $sq->select('id')
                        ->from('senior_citizens')
                        ->whereIn('barangay_id', $barangayIds);
                });
            })
            ->count();

        return response()->json([
            'success' => true,
            'data' => [
                'stats' => [
                    'active_seniors' => $activeSeniors,
                    'pending_applications' => $pendingApplications,
                    'id_claimable' => $idClaimable,
                    'released_ids' => $releasedIds,
                ],
            ],
        ]);
    }

    /**
     * Get upcoming events.
     */
    public function upcomingEvents(Request $request)
    {
        $user = $request->user();

        $events = Announcement::with(['type'])
            ->where('is_published', true)
            ->where('event_date', '>=', now())
            ->when(!$user->isMainAdmin(), function ($q) use ($user) {
                // Show announcements for user's accessible barangays or general announcements
                $q->where(function ($sq) use ($user) {
                    $sq->whereNull('barangay_id')
                        ->orWhereIn('barangay_id', $user->getAccessibleBarangayIds());
                });
            })
            ->orderBy('event_date')
            ->limit(5)
            ->get()
            ->map(function ($event) {
                return [
                    'id' => $event->id,
                    'title' => $event->title,
                    'type' => $event->type->name ?? 'General',
                    'event_date' => $event->event_date?->format('Y-m-d'),
                    'location' => $event->location,
                    'target_audience' => $event->target_audience,
                ];
            });

        return response()->json([
            'success' => true,
            'data' => [
                'events' => $events,
            ],
        ]);
    }

    /**
     * Get age distribution for charts.
     */
    public function ageDistribution(Request $request)
    {
        $user = $request->user();
        $barangayIds = $user->getAccessibleBarangayIds();

        $distribution = DB::table('senior_citizens')
            ->select(DB::raw('
                CASE 
                    WHEN TIMESTAMPDIFF(YEAR, birthdate, CURDATE()) BETWEEN 60 AND 69 THEN "60-69"
                    WHEN TIMESTAMPDIFF(YEAR, birthdate, CURDATE()) BETWEEN 70 AND 79 THEN "70-79"
                    WHEN TIMESTAMPDIFF(YEAR, birthdate, CURDATE()) BETWEEN 80 AND 89 THEN "80-89"
                    WHEN TIMESTAMPDIFF(YEAR, birthdate, CURDATE()) BETWEEN 90 AND 99 THEN "90-99"
                    WHEN TIMESTAMPDIFF(YEAR, birthdate, CURDATE()) >= 100 THEN "100+"
                    ELSE "Unknown"
                END as age_group,
                COUNT(*) as count
            '))
            ->where('is_active', true)
            ->where('is_deceased', false)
            ->when(!$user->isMainAdmin(), function ($q) use ($barangayIds) {
                $q->whereIn('barangay_id', $barangayIds);
            })
            ->groupBy('age_group')
            ->orderBy('age_group')
            ->get();

        return response()->json([
            'success' => true,
            'data' => [
                'distribution' => $distribution,
            ],
        ]);
    }

    /**
     * Get gender distribution.
     */
    public function genderDistribution(Request $request)
    {
        $user = $request->user();
        $barangayIds = $user->getAccessibleBarangayIds();

        $distribution = DB::table('senior_citizens')
            ->join('genders', 'senior_citizens.gender_id', '=', 'genders.id')
            ->select('genders.name as gender', DB::raw('COUNT(*) as count'))
            ->where('senior_citizens.is_active', true)
            ->where('senior_citizens.is_deceased', false)
            ->when(!$user->isMainAdmin(), function ($q) use ($barangayIds) {
                $q->whereIn('senior_citizens.barangay_id', $barangayIds);
            })
            ->groupBy('genders.name')
            ->get();

        return response()->json([
            'success' => true,
            'data' => [
                'distribution' => $distribution,
            ],
        ]);
    }
}
