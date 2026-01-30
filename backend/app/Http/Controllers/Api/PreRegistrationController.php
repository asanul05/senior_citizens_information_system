<?php

namespace App\Http\Controllers\Api;

use App\Models\PreRegistration;
use App\Models\Application;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\DB;

class PreRegistrationController extends Controller
{
    /**
     * List pre-registrations with filters
     */
    public function index(Request $request): JsonResponse
    {
        $query = PreRegistration::with(['barangay', 'foReviewer', 'mainReviewer']);

        // Filter by status
        if ($request->filled('status')) {
            $query->where('status', $request->status);
        }

        // Filter by barangay
        if ($request->filled('barangay_id')) {
            $query->where('barangay_id', $request->barangay_id);
        }

        // Search by reference number or applicant name
        if ($request->filled('search')) {
            $search = $request->search;
            $query->where(function ($q) use ($search) {
                $q->where('reference_number', 'like', "%{$search}%")
                  ->orWhereRaw("JSON_EXTRACT(applicant_data, '$.first_name') LIKE ?", ["%{$search}%"])
                  ->orWhereRaw("JSON_EXTRACT(applicant_data, '$.last_name') LIKE ?", ["%{$search}%"]);
            });
        }

        // Role-based filtering
        $user = $request->user();
        if ($user->role_id == 3) { // Barangay Admin
            $query->where('barangay_id', $user->barangay_id);
        }

        $preRegistrations = $query->orderBy('created_at', 'desc')
            ->paginate($request->get('per_page', 15));

        return response()->json($preRegistrations);
    }

    /**
     * Get statistics
     */
    public function statistics(Request $request): JsonResponse
    {
        $user = $request->user();
        $query = PreRegistration::query();

        // Role-based filtering
        if ($user->role_id == 3) {
            $query->where('barangay_id', $user->barangay_id);
        }

        $stats = [
            'total' => (clone $query)->count(),
            'pending' => (clone $query)->where('status', 'pending')->count(),
            'fo_review' => (clone $query)->where('status', 'fo_review')->count(),
            'fo_verified' => (clone $query)->where('status', 'fo_verified')->count(),
            'main_review' => (clone $query)->where('status', 'main_review')->count(),
            'approved' => (clone $query)->where('status', 'approved')->count(),
            'rejected' => (clone $query)->where('status', 'rejected')->count(),
            'converted' => (clone $query)->where('status', 'converted')->count(),
            'today' => (clone $query)->whereDate('created_at', today())->count(),
            'this_week' => (clone $query)->whereBetween('created_at', [now()->startOfWeek(), now()->endOfWeek()])->count(),
        ];

        return response()->json(['data' => $stats]);
    }

    /**
     * Get single pre-registration
     */
    public function show(int $id): JsonResponse
    {
        $preRegistration = PreRegistration::with(['barangay', 'foReviewer', 'mainReviewer', 'application'])
            ->findOrFail($id);

        return response()->json(['data' => $preRegistration]);
    }

    /**
     * Update status (FO review)
     */
    public function foReview(Request $request, int $id): JsonResponse
    {
        $request->validate([
            'action' => 'required|in:verify,reject',
            'notes' => 'nullable|string|max:500',
            'rejection_reason' => 'required_if:action,reject|nullable|string|max:500',
        ]);

        $preReg = PreRegistration::findOrFail($id);

        if (!in_array($preReg->status, ['pending', 'fo_review'])) {
            return response()->json(['message' => 'Cannot review this application at current status'], 422);
        }

        $user = $request->user();

        if ($request->action === 'verify') {
            $preReg->update([
                'status' => PreRegistration::STATUS_FO_VERIFIED,
                'fo_reviewed_by' => $user->id,
                'fo_reviewed_at' => now(),
                'notes' => $request->notes,
            ]);
            $message = 'Application verified and forwarded to Main Admin';
        } else {
            $preReg->update([
                'status' => PreRegistration::STATUS_REJECTED,
                'fo_reviewed_by' => $user->id,
                'fo_reviewed_at' => now(),
                'rejection_reason' => $request->rejection_reason,
            ]);
            $message = 'Application rejected';
        }

        return response()->json([
            'message' => $message,
            'data' => $preReg->fresh(['barangay', 'foReviewer']),
        ]);
    }

    /**
     * Main Admin review
     */
    public function mainReview(Request $request, int $id): JsonResponse
    {
        $request->validate([
            'action' => 'required|in:approve,reject',
            'notes' => 'nullable|string|max:500',
            'rejection_reason' => 'required_if:action,reject|nullable|string|max:500',
        ]);

        $preReg = PreRegistration::findOrFail($id);

        if (!in_array($preReg->status, ['fo_verified', 'main_review'])) {
            return response()->json(['message' => 'Cannot review this application at current status'], 422);
        }

        $user = $request->user();

        if ($request->action === 'approve') {
            $preReg->update([
                'status' => PreRegistration::STATUS_APPROVED,
                'main_reviewed_by' => $user->id,
                'main_reviewed_at' => now(),
                'notes' => $request->notes,
            ]);
            $message = 'Application approved. Ready for conversion.';
        } else {
            $preReg->update([
                'status' => PreRegistration::STATUS_REJECTED,
                'main_reviewed_by' => $user->id,
                'main_reviewed_at' => now(),
                'rejection_reason' => $request->rejection_reason,
            ]);
            $message = 'Application rejected';
        }

        return response()->json([
            'message' => $message,
            'data' => $preReg->fresh(['barangay', 'foReviewer', 'mainReviewer']),
        ]);
    }

    /**
     * Convert approved pre-registration to full application
     */
    public function convert(Request $request, int $id): JsonResponse
    {
        $preReg = PreRegistration::findOrFail($id);

        if ($preReg->status !== PreRegistration::STATUS_APPROVED) {
            return response()->json(['message' => 'Only approved applications can be converted'], 422);
        }

        try {
            DB::beginTransaction();

            // Create application from pre-registration data
            $application = Application::create([
                'applicant_data' => $preReg->applicant_data,
                'barangay_id' => $preReg->barangay_id,
                'application_type_id' => 1, // New registration
                'status_id' => 2, // Approved
                'processed_by' => $request->user()->id,
                'processed_at' => now(),
                'notes' => "Converted from pre-registration: {$preReg->reference_number}",
            ]);

            // Update pre-registration
            $preReg->update([
                'status' => PreRegistration::STATUS_CONVERTED,
                'application_id' => $application->id,
            ]);

            DB::commit();

            return response()->json([
                'message' => 'Successfully converted to application',
                'data' => [
                    'pre_registration' => $preReg->fresh(),
                    'application' => $application,
                ],
            ]);
        } catch (\Exception $e) {
            DB::rollBack();
            return response()->json(['message' => 'Conversion failed: ' . $e->getMessage()], 500);
        }
    }

    /**
     * Mark as under review (optional status change)
     */
    public function markUnderReview(Request $request, int $id): JsonResponse
    {
        $preReg = PreRegistration::findOrFail($id);
        $user = $request->user();

        if ($preReg->status === 'pending' && in_array($user->role_id, [2, 3])) {
            $preReg->update(['status' => PreRegistration::STATUS_FO_REVIEW]);
        } elseif ($preReg->status === 'fo_verified' && $user->role_id === 1) {
            $preReg->update(['status' => PreRegistration::STATUS_MAIN_REVIEW]);
        }

        return response()->json([
            'message' => 'Status updated',
            'data' => $preReg->fresh(),
        ]);
    }
}
