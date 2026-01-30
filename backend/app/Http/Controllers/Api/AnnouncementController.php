<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Announcement;
use Illuminate\Http\Request;

class AnnouncementController extends Controller
{
    /**
     * Get paginated list of announcements.
     */
    public function index(Request $request)
    {
        $user = $request->user();
        $perPage = $request->get('per_page', 15);
        
        $query = Announcement::with(['type', 'barangay', 'createdBy'])
            ->when(!$user->isMainAdmin(), function ($q) use ($user) {
                // Show announcements for user's accessible barangays or general (null barangay)
                $barangayIds = $user->getAccessibleBarangayIds();
                $q->where(function ($sq) use ($barangayIds) {
                    $sq->whereNull('barangay_id')
                        ->orWhereIn('barangay_id', $barangayIds);
                });
            });

        // Published filter
        if ($request->has('is_published')) {
            $query->where('is_published', $request->boolean('is_published'));
        }

        // Type filter
        if ($typeId = $request->get('type_id')) {
            $query->where('type_id', $typeId);
        }

        // Search
        if ($search = $request->get('search')) {
            $query->where('title', 'like', "%{$search}%");
        }

        $query->orderBy('created_at', 'desc');

        $announcements = $query->paginate($perPage);

        return response()->json([
            'success' => true,
            'data' => $announcements,
        ]);
    }

    /**
     * Get single announcement.
     */
    public function show($id)
    {
        $announcement = Announcement::with(['type', 'barangay', 'createdBy'])->findOrFail($id);

        return response()->json([
            'success' => true,
            'data' => $announcement,
        ]);
    }

    /**
     * Create announcement.
     */
    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required|string|max:255',
            'content' => 'required|string',
            'type_id' => 'nullable|exists:announcement_types,id',
            'barangay_id' => 'nullable|exists:barangays,id',
            'event_date' => 'nullable|date',
            'location' => 'nullable|string|max:255',
            'target_audience' => 'nullable|string|max:255',
            'is_published' => 'boolean',
        ]);

        $user = $request->user();

        $announcement = Announcement::create([
            ...$request->only([
                'title', 'content', 'type_id', 'barangay_id',
                'event_date', 'location', 'target_audience', 'is_published'
            ]),
            'created_by' => $user->id,
            'published_at' => $request->is_published ? now() : null,
        ]);

        return response()->json([
            'success' => true,
            'message' => 'Announcement created successfully',
            'data' => $announcement->load(['type', 'barangay']),
        ], 201);
    }

    /**
     * Update announcement.
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'title' => 'string|max:255',
            'content' => 'string',
            'type_id' => 'nullable|exists:announcement_types,id',
            'barangay_id' => 'nullable|exists:barangays,id',
            'event_date' => 'nullable|date',
            'location' => 'nullable|string|max:255',
            'target_audience' => 'nullable|string|max:255',
            'is_published' => 'boolean',
        ]);

        $announcement = Announcement::findOrFail($id);

        $updateData = $request->only([
            'title', 'content', 'type_id', 'barangay_id',
            'event_date', 'location', 'target_audience', 'is_published'
        ]);

        // Set published_at if publishing for first time
        if ($request->is_published && !$announcement->is_published) {
            $updateData['published_at'] = now();
        }

        $announcement->update($updateData);

        return response()->json([
            'success' => true,
            'message' => 'Announcement updated successfully',
            'data' => $announcement->fresh(['type', 'barangay']),
        ]);
    }

    /**
     * Delete announcement.
     */
    public function destroy($id)
    {
        $announcement = Announcement::findOrFail($id);
        $announcement->delete();

        return response()->json([
            'success' => true,
            'message' => 'Announcement deleted successfully',
        ]);
    }

    /**
     * Get announcement types for dropdown.
     */
    public function types()
    {
        $types = \App\Models\AnnouncementType::all();

        return response()->json([
            'success' => true,
            'data' => $types,
        ]);
    }
}
