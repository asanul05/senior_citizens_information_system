<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\BenefitClaim;
use App\Models\BenefitPayoutRequirement;
use App\Models\BenefitType;
use App\Models\FamilyMember;
use App\Models\PayoutEvent;
use App\Models\PayoutEventClaim;
use App\Models\PayoutEventClaimDocument;
use App\Traits\LogsAudit;
use Illuminate\Http\Request;
use App\Services\ExcelExportService;
use Illuminate\Validation\ValidationException;
use Illuminate\Support\Facades\DB;

class PayoutEventController extends Controller
{
    use LogsAudit;

    public function options()
    {
        return response()->json([
            'success' => true,
            'data' => [
                'branches' => \App\Models\Branch::where('is_active', true)->orderBy('name')->get(['id', 'name', 'address']),
                'document_categories' => [
                    'representative_valid_id',
                    'authorization_letter',
                    'proof_of_relationship',
                    'medical_certificate',
                    'proof_of_life_photo',
                    'senior_acknowledgment',
                    'benefit_received_photo',
                ],
            ],
        ]);
    }

    public function index(Request $request)
    {
        $query = PayoutEvent::with([
            'benefitType',
            'branch',
            'creator',
            'payoutClaims.benefitClaim.senior',
        ])->orderByDesc('scheduled_from')->orderByDesc('scheduled_at');

        if ($request->filled('status')) {
            $query->where('status', $request->status);
        }

        if ($request->filled('benefit_type_id')) {
            $query->where('benefit_type_id', $request->benefit_type_id);
        }

        $events = $query->get()->map(fn ($event) => $this->transformEvent($event));

        return response()->json([
            'success' => true,
            'data' => $events,
        ]);
    }

    public function show($id)
    {
        $event = PayoutEvent::with([
            'benefitType.payoutRequirements',
            'branch',
            'payoutClaims.benefitClaim.senior.familyMembers',
            'payoutClaims.benefitClaim.benefitType',
            'payoutClaims.representative.familyMember',
            'payoutClaims.documents.uploader',
            'payoutClaims.requirementChecks.requirement',
            'payoutClaims.releaser',
        ])->findOrFail($id);

        return response()->json([
            'success' => true,
            'data' => $this->transformEvent($event, true),
        ]);
    }

    public function store(Request $request)
    {
        $user = $request->user();
        $validated = $this->validateEvent($request);
        $validated['scheduled_at'] = $validated['scheduled_from'];
        $validated['reference_code'] = 'PE-' . now()->format('YmdHis') . '-' . random_int(100, 999);
        $validated['created_by'] = $user->id;
        $validated['updated_by'] = $user->id;

        $event = PayoutEvent::create($validated);
        $event->load(['benefitType', 'branch', 'creator']);

        return response()->json([
            'success' => true,
            'message' => 'Payout event created successfully.',
            'data' => $this->transformEvent($event),
        ], 201);
    }

    public function update(Request $request, $id)
    {
        $event = PayoutEvent::findOrFail($id);
        $validated = $this->validateEvent($request, true);
        if (isset($validated['scheduled_from'])) {
            $validated['scheduled_at'] = $validated['scheduled_from'];
        }
        $validated['updated_by'] = $request->user()->id;
        $event->update($validated);
        $event->load(['benefitType', 'branch', 'creator']);

        return response()->json([
            'success' => true,
            'message' => 'Payout event updated successfully.',
            'data' => $this->transformEvent($event),
        ]);
    }

    public function updateStatus(Request $request, $id)
    {
        $event = PayoutEvent::findOrFail($id);
        $validated = $request->validate([
            'status' => 'required|in:draft,scheduled,in_progress,completed,cancelled',
        ]);

        $event->status = $validated['status'];
        $event->updated_by = $request->user()->id;
        $event->save();

        return response()->json([
            'success' => true,
            'message' => 'Payout event status updated successfully.',
            'data' => $this->transformEvent($event->load(['benefitType', 'branch'])),
        ]);
    }

    public function exportSummary(Request $request)
    {
        $events = PayoutEvent::with([
            'benefitType',
            'branch',
            'payoutClaims.benefitClaim',
        ])->orderByDesc('scheduled_from')->orderByDesc('scheduled_at');

        if ($request->filled('status')) {
            $events->where('status', $request->status);
        }

        if ($request->filled('benefit_type_id')) {
            $events->where('benefit_type_id', $request->benefit_type_id);
        }

        $rows = $events->get()->map(function ($event) {
            $claims = $event->payoutClaims ?? collect();

            return [
                $event->reference_code,
                $event->title,
                $event->benefitType?->name ?? '',
                $event->schedule_label ?? '',
                $event->release_location_label ?? '',
                ucfirst(str_replace('_', ' ', (string) $event->status)),
                $claims->count(),
                $claims->where('status', 'released')->count(),
                $claims->where('status', 'absent')->count(),
                $claims->where('status', 'deferred')->count(),
                number_format($claims->sum(fn ($claim) => (float) ($claim->benefitClaim?->amount ?? 0)), 2),
                number_format($claims->where('status', 'released')->sum(fn ($claim) => (float) ($claim->benefitClaim?->amount ?? 0)), 2),
            ];
        })->toArray();

        $headers = [
            'Reference',
            'Title',
            'Benefit Type',
            'Schedule',
            'Venue',
            'Status',
            'Total Rostered',
            'Released',
            'Absent',
            'Deferred',
            'Total Amount',
            'Released Amount',
        ];

        $excelService = new ExcelExportService();
        $excelService->create(
            'Payout Events Summary',
            $headers,
            $rows,
            $request->user()->full_name ?? $request->user()->username ?? 'Admin'
        );

        return $excelService->download('payout_events_summary_' . now()->format('Ymd_His') . '.xlsx');
    }

    public function availableClaims(Request $request, $id)
    {
        $event = PayoutEvent::with('benefitType')->findOrFail($id);
        $query = BenefitClaim::with(['senior', 'payoutEventClaim'])
            ->where('benefit_type_id', $event->benefit_type_id)
            ->where('status', BenefitClaim::STATUS_APPROVED)
            ->whereDoesntHave('payoutEventClaim')
            ->accessibleBy($request->user())
            ->orderByDesc('created_at');

        if ($request->filled('search')) {
            $search = $request->search;
            $query->whereHas('senior', function ($q) use ($search) {
                $q->where('first_name', 'like', "%{$search}%")
                    ->orWhere('last_name', 'like', "%{$search}%")
                    ->orWhere('osca_id', 'like', "%{$search}%");
            });
        }

        return response()->json([
            'success' => true,
            'data' => $query->get()->map(function ($claim) {
                return [
                    'id' => $claim->id,
                    'amount' => $claim->amount,
                    'claim_year' => $claim->claim_year,
                    'senior' => $claim->senior,
                ];
            }),
        ]);
    }

    public function attachClaims(Request $request, $id)
    {
        $event = PayoutEvent::findOrFail($id);
        $validated = $request->validate([
            'benefit_claim_ids' => 'required|array|min:1',
            'benefit_claim_ids.*' => 'integer|exists:benefit_claims,id',
        ]);

        $claims = BenefitClaim::whereIn('id', $validated['benefit_claim_ids'])
            ->with('payoutEventClaim')
            ->get();

        foreach ($claims as $claim) {
            if ((int) $claim->benefit_type_id !== (int) $event->benefit_type_id) {
                return response()->json([
                    'success' => false,
                    'message' => 'All selected claims must match the payout event benefit type.',
                ], 422);
            }
            if ($claim->status !== BenefitClaim::STATUS_APPROVED) {
                return response()->json([
                    'success' => false,
                    'message' => 'Only approved claims can be added to a payout event.',
                ], 422);
            }
            if ($claim->payoutEventClaim) {
                return response()->json([
                    'success' => false,
                    'message' => 'One or more claims are already assigned to another payout event.',
                ], 422);
            }
        }

        foreach ($claims as $claim) {
            PayoutEventClaim::create([
                'payout_event_id' => $event->id,
                'benefit_claim_id' => $claim->id,
                'status' => 'listed',
            ]);
        }

        return response()->json([
            'success' => true,
            'message' => 'Claims added to payout event successfully.',
        ]);
    }

    public function removeClaim($id, $eventClaimId)
    {
        $eventClaim = PayoutEventClaim::where('payout_event_id', $id)->findOrFail($eventClaimId);
        if ($eventClaim->status === 'released') {
            return response()->json([
                'success' => false,
                'message' => 'Released entries cannot be removed from the payout event.',
            ], 422);
        }

        $eventClaim->delete();

        return response()->json([
            'success' => true,
            'message' => 'Claim removed from payout event successfully.',
        ]);
    }

    public function exportRoster(Request $request, $id)
    {
        $event = PayoutEvent::with([
            'benefitType',
            'branch',
            'payoutClaims.benefitClaim.senior',
            'payoutClaims.documents.uploader',
            'payoutClaims.representative.familyMember',
            'payoutClaims.releaser',
            'payoutClaims.requirementChecks.requirement',
        ])->findOrFail($id);

        $rows = $event->payoutClaims->map(function ($claim) use ($event) {
            $documents = $claim->documents ?? collect();
            $receivedPhoto = $documents->contains(fn ($document) => $document->document_category === 'benefit_received_photo');
            $documentSummary = $documents->map(fn ($document) => str_replace('_', ' ', $document->document_category))->implode(', ');
            $requirementSummary = $claim->requirementChecks->map(function ($check) {
                $label = $check->requirement?->name ?? 'Requirement';
                return $label . ': ' . ucfirst($check->status);
            })->implode('; ');

            return [
                $event->reference_code,
                $event->title,
                $event->benefitType?->name ?? '',
                $event->schedule_label ?? '',
                $event->release_location_label ?? '',
                $claim->benefitClaim?->senior?->full_name ?? '',
                $claim->benefitClaim?->senior?->osca_id ?? '',
                number_format((float) ($claim->benefitClaim?->amount ?? 0), 2),
                ucfirst(str_replace('_', ' ', (string) $claim->status)),
                ucfirst(str_replace('_', ' ', (string) ($claim->release_mode ?? 'self'))),
                $claim->representative?->full_name ?? '',
                $claim->representative?->relationship ?? '',
                $claim->releaser?->full_name ?? '',
                $claim->released_at?->format('Y-m-d h:i A') ?? '',
                $claim->benefitClaim?->release_location_label ?? '',
                $requirementSummary,
                $documentSummary,
                $receivedPhoto ? 'Yes' : 'No',
            ];
        })->toArray();

        $headers = [
            'Event Reference',
            'Event Title',
            'Benefit Type',
            'Schedule',
            'Venue',
            'Senior Name',
            'OSCA ID',
            'Amount',
            'Roster Status',
            'Claimed By',
            'Representative Name',
            'Representative Relationship',
            'Released By',
            'Released At',
            'Release Location',
            'Requirement Compliance',
            'Uploaded Documents',
            'Received Photo Uploaded',
        ];

        $excelService = new ExcelExportService();
        $excelService->create(
            'Payout Event Roster',
            $headers,
            $rows,
            $request->user()->full_name ?? $request->user()->username ?? 'Admin'
        );

        return $excelService->download('payout_event_' . $event->reference_code . '_roster_' . now()->format('Ymd_His') . '.xlsx');
    }

    public function processClaim(Request $request, $id, $eventClaimId)
    {
        $user = $request->user();
        $eventClaim = PayoutEventClaim::with([
            'payoutEvent.benefitType.payoutRequirements',
            'payoutEvent.branch',
            'benefitClaim.senior.familyMembers',
            'representative.familyMember',
            'documents.uploader',
            'requirementChecks',
        ])->where('payout_event_id', $id)->findOrFail($eventClaimId);

        $validated = $request->validate([
            'status' => 'required|in:released,absent,deferred,cancelled',
            'release_mode' => 'nullable|in:self,representative',
            'remarks' => 'nullable|string|max:1000',
            'requirement_checks' => 'nullable|array',
            'requirement_checks.*.benefit_payout_requirement_id' => 'required|integer|exists:benefit_payout_requirements,id',
            'requirement_checks.*.status' => 'required|in:complied,missing,waived',
            'requirement_checks.*.remarks' => 'nullable|string|max:500',
            'representative' => 'nullable|array',
            'representative.representative_mode' => 'required_with:representative|in:family_member,authorized_person',
            'representative.family_member_id' => 'nullable|integer|exists:family_members,id',
            'representative.full_name' => 'required_with:representative|string|max:150',
            'representative.relationship' => 'nullable|string|max:100',
            'representative.mobile_number' => 'nullable|string|max:50',
            'representative.address' => 'nullable|string|max:255',
            'representative.valid_id_type' => 'nullable|string|max:100',
            'representative.valid_id_number' => 'nullable|string|max:100',
            'representative.authorization_basis' => 'nullable|in:authorization_letter,medical_incapacity,bedridden,senior_unavailable',
            'representative.remarks' => 'nullable|string|max:500',
        ]);

        $benefitType = $eventClaim->payoutEvent->benefitType;
        $eventClaim->remarks = $validated['remarks'] ?? null;
        $eventClaim->checked_in_at = now();

        DB::transaction(function () use ($validated, $eventClaim, $benefitType, $user) {
            if (!empty($validated['requirement_checks'])) {
                foreach ($validated['requirement_checks'] as $check) {
                    $eventClaim->requirementChecks()->updateOrCreate(
                        ['benefit_payout_requirement_id' => $check['benefit_payout_requirement_id']],
                        [
                            'status' => $check['status'],
                            'remarks' => $check['remarks'] ?? null,
                            'checked_by' => $user->id,
                            'checked_at' => now(),
                        ]
                    );
                }
            }

            if (($validated['release_mode'] ?? null) === 'representative') {
                if (empty($validated['representative'])) {
                    throw ValidationException::withMessages([
                        'representative' => 'Representative details are required for representative release mode.',
                    ]);
                }

                $eventClaim->representative()->updateOrCreate(
                    ['payout_event_claim_id' => $eventClaim->id],
                    $validated['representative']
                );
            } else {
                $eventClaim->representative()->delete();
            }

            $eventClaim->release_mode = $validated['release_mode'] ?? null;
            $eventClaim->status = $validated['status'];

            if ($validated['status'] === 'released') {
                $this->validateReleaseEligibility($eventClaim, $benefitType, $validated['release_mode'] ?? 'self');

                $eventClaim->released_at = now();
                $eventClaim->released_by = $user->id;

                $claim = $eventClaim->benefitClaim;
                $claim->status = BenefitClaim::STATUS_RELEASED;
                $claim->released_at = now();
                $claim->released_by = $user->id;
                $claim->processed_by = $user->id;
                $claim->release_location_type = $eventClaim->payoutEvent->location_type;
                $claim->release_branch_id = $eventClaim->payoutEvent->branch_id;
                $claim->release_location_name = $eventClaim->payoutEvent->location_name;
                $claim->release_location_address = $eventClaim->payoutEvent->location_address;
                $claim->release_location_latitude = $eventClaim->payoutEvent->location_latitude;
                $claim->release_location_longitude = $eventClaim->payoutEvent->location_longitude;
                $claim->save();

                $representative = $eventClaim->representative;
                $releaseSummary = $eventClaim->release_mode === 'representative'
                    ? 'claimed by representative ' . ($representative?->full_name ?? 'Unknown')
                    : 'claimed by senior';

                $this->logAudit(
                    'payout_event_claim_released',
                    'benefit_claims',
                    $claim->id,
                    "Benefit released via payout event {$eventClaim->payoutEvent->reference_code}: {$releaseSummary}",
                    ['status' => BenefitClaim::STATUS_APPROVED],
                    [
                        'status' => BenefitClaim::STATUS_RELEASED,
                        'release_mode' => $eventClaim->release_mode,
                        'representative' => $representative?->full_name,
                        'event' => $eventClaim->payoutEvent->reference_code,
                        'location' => $eventClaim->payoutEvent->release_location_label,
                    ],
                    $claim->senior?->full_name
                );
            }

            $eventClaim->save();
        });

        $eventClaim->load([
            'benefitClaim.senior',
            'representative.familyMember',
            'documents.uploader',
            'requirementChecks.requirement',
            'releaser',
        ]);

        return response()->json([
            'success' => true,
            'message' => 'Payout roster entry processed successfully.',
            'data' => $this->transformEventClaim($eventClaim),
        ]);
    }

    public function uploadDocument(Request $request, $id, $eventClaimId)
    {
        $eventClaim = PayoutEventClaim::where('payout_event_id', $id)->findOrFail($eventClaimId);
        $validated = $request->validate([
            'document_category' => 'required|in:representative_valid_id,authorization_letter,proof_of_relationship,medical_certificate,proof_of_life_photo,senior_acknowledgment,benefit_received_photo',
            'document' => 'required|file|mimes:jpg,jpeg,png,pdf|max:5120',
        ]);

        $file = $request->file('document');
        $disk = config('filesystems.upload_disk');
        $path = $file->store("uploads/payout-events/{$eventClaim->payout_event_id}/{$eventClaim->id}", $disk);

        $document = $eventClaim->documents()->create([
            'document_category' => $validated['document_category'],
            'file_path' => $path,
            'original_filename' => $file->getClientOriginalName(),
            'file_size' => $file->getSize(),
            'uploaded_by' => $request->user()->id,
            'uploaded_at' => now(),
        ]);
        $document->load('uploader');

        return response()->json([
            'success' => true,
            'message' => 'Payout document uploaded successfully.',
            'data' => $this->transformDocument($document),
        ], 201);
    }

    private function validateEvent(Request $request, bool $partial = false): array
    {
        $rules = [
            'benefit_type_id' => ($partial ? 'sometimes' : 'required') . '|exists:benefit_types,id',
            'title' => ($partial ? 'sometimes' : 'required') . '|string|max:150',
            'scheduled_from' => ($partial ? 'sometimes' : 'required') . '|date',
            'scheduled_until' => ($partial ? 'sometimes' : 'required') . '|date',
            'status' => 'nullable|in:draft,scheduled,in_progress,completed,cancelled',
            'location_type' => ($partial ? 'sometimes' : 'required') . '|in:branch,custom',
            'branch_id' => 'nullable|exists:branches,id',
            'location_name' => 'nullable|string|max:150',
            'location_address' => 'nullable|string|max:255',
            'location_latitude' => 'nullable|numeric|between:-90,90',
            'location_longitude' => 'nullable|numeric|between:-180,180',
            'notes' => 'nullable|string|max:1000',
        ];

        $validated = $request->validate($rules);
        $locationType = $validated['location_type'] ?? $request->get('location_type');
        $scheduledFrom = $validated['scheduled_from'] ?? $request->get('scheduled_from');
        $scheduledUntil = $validated['scheduled_until'] ?? $request->get('scheduled_until');

        if ($scheduledFrom && $scheduledUntil && strtotime((string) $scheduledUntil) < strtotime((string) $scheduledFrom)) {
            throw ValidationException::withMessages([
                'scheduled_until' => 'Scheduled until must be the same as or later than scheduled from.',
            ]);
        }

        if ($locationType === 'branch' && empty($validated['branch_id']) && !$partial) {
            throw ValidationException::withMessages([
                'branch_id' => 'Branch is required for branch-based payout events.',
            ]);
        }

        if ($locationType === 'custom' && empty($validated['location_name']) && !$partial) {
            throw ValidationException::withMessages([
                'location_name' => 'Location name is required for custom payout venues.',
            ]);
        }

        if ($locationType === 'custom') {
            $latitude = $validated['location_latitude'] ?? $request->get('location_latitude');
            $longitude = $validated['location_longitude'] ?? $request->get('location_longitude');
            if (($latitude === null || $latitude === '') || ($longitude === null || $longitude === '')) {
                throw ValidationException::withMessages([
                    'location_latitude' => 'Custom payout venues require a pin location with latitude and longitude.',
                ]);
            }
        }

        unset($validated['scheduled_at']);

        return $validated;
    }

    private function validateReleaseEligibility(PayoutEventClaim $eventClaim, BenefitType $benefitType, string $releaseMode): void
    {
        $requirements = $benefitType->payoutRequirements->where('is_active', true);
        $requiredIds = $requirements->filter(function ($requirement) use ($releaseMode) {
            if ($requirement->applies_when === 'both') {
                return $requirement->is_required;
            }

            if ($releaseMode === 'self' && $requirement->applies_when === 'self_only') {
                return $requirement->is_required;
            }

            if ($releaseMode === 'representative' && $requirement->applies_when === 'representative_only') {
                return $requirement->is_required;
            }

            return false;
        })->pluck('id');

        $checks = $eventClaim->requirementChecks()->get()->keyBy('benefit_payout_requirement_id');
        foreach ($requiredIds as $requirementId) {
            $check = $checks->get($requirementId);
            if (!$check || !in_array($check->status, ['complied', 'waived'], true)) {
                throw ValidationException::withMessages([
                    'requirement_checks' => 'All required payout requirement checks must be completed or waived before release.',
                ]);
            }
        }

        if ($releaseMode === 'representative') {
            $documents = $eventClaim->documents()->pluck('document_category')->all();
            foreach (['representative_valid_id', 'authorization_letter'] as $requiredDocument) {
                if (!in_array($requiredDocument, $documents, true)) {
                    throw ValidationException::withMessages([
                        'documents' => 'Representative valid ID and authorization letter are required before release.',
                    ]);
                }
            }
        }

        if ($benefitType->require_proof_of_life) {
            $hasProofOfLife = $eventClaim->documents()->where('document_category', 'proof_of_life_photo')->exists();
            if (!$hasProofOfLife) {
                throw ValidationException::withMessages([
                    'documents' => 'Proof-of-life evidence is required before release for this benefit.',
                ]);
            }
        }

        $hasReceivedPhoto = $eventClaim->documents()->where('document_category', 'benefit_received_photo')->exists();
        if (!$hasReceivedPhoto) {
            throw ValidationException::withMessages([
                'documents' => 'Photo of senior benefit received is required before release.',
            ]);
        }
    }

    private function transformEvent(PayoutEvent $event, bool $includeRoster = false): array
    {
        $payoutClaims = $event->payoutClaims ?? collect();
        $data = [
            'id' => $event->id,
            'reference_code' => $event->reference_code,
            'title' => $event->title,
            'scheduled_at' => $event->scheduled_at,
            'scheduled_from' => $event->scheduled_from ?? $event->scheduled_at,
            'scheduled_until' => $event->scheduled_until ?? $event->scheduled_at,
            'schedule_label' => $event->schedule_label,
            'status' => $event->status,
            'location_type' => $event->location_type,
            'branch_id' => $event->branch_id,
            'branch' => $event->branch,
            'location_name' => $event->location_name,
            'location_address' => $event->location_address,
            'location_latitude' => $event->location_latitude,
            'location_longitude' => $event->location_longitude,
            'release_location_label' => $event->release_location_label,
            'release_location_full_address' => $event->release_location_full_address,
            'benefit_type_id' => $event->benefit_type_id,
            'benefit_type' => $event->benefitType,
            'notes' => $event->notes,
            'totals' => [
                'listed' => $payoutClaims->where('status', 'listed')->count(),
                'released' => $payoutClaims->where('status', 'released')->count(),
                'absent' => $payoutClaims->where('status', 'absent')->count(),
                'deferred' => $payoutClaims->where('status', 'deferred')->count(),
                'cancelled' => $payoutClaims->where('status', 'cancelled')->count(),
                'total_amount' => $payoutClaims->sum(fn ($item) => (float) ($item->benefitClaim?->amount ?? 0)),
                'released_amount' => $payoutClaims->where('status', 'released')->sum(fn ($item) => (float) ($item->benefitClaim?->amount ?? 0)),
            ],
        ];

        if ($includeRoster) {
            $data['payout_claims'] = $payoutClaims->map(fn ($claim) => $this->transformEventClaim($claim))->values();
        }

        return $data;
    }

    private function transformEventClaim(PayoutEventClaim $eventClaim): array
    {
        $documents = $eventClaim->documents ?? collect();
        $uploadedDocumentCategories = $documents
            ->pluck('document_category')
            ->unique()
            ->values();

        return [
            'id' => $eventClaim->id,
            'status' => $eventClaim->status,
            'release_mode' => $eventClaim->release_mode,
            'checked_in_at' => $eventClaim->checked_in_at,
            'released_at' => $eventClaim->released_at,
            'remarks' => $eventClaim->remarks,
            'released_by' => $eventClaim->releaser?->full_name,
            'benefit_claim' => $eventClaim->benefitClaim,
            'senior' => $eventClaim->benefitClaim?->senior,
            'representative' => $eventClaim->representative,
            'documents' => $documents->map(fn ($document) => $this->transformDocument($document))->values(),
            'uploaded_document_categories' => $uploadedDocumentCategories,
            'document_counts' => $uploadedDocumentCategories->mapWithKeys(function ($category) use ($documents) {
                return [$category => $documents->where('document_category', $category)->count()];
            }),
            'requirement_checks' => $eventClaim->requirementChecks->map(function ($check) {
                return [
                    'id' => $check->id,
                    'status' => $check->status,
                    'remarks' => $check->remarks,
                    'checked_at' => $check->checked_at,
                    'requirement' => $check->requirement,
                ];
            })->values(),
        ];
    }

    private function transformDocument(PayoutEventClaimDocument $document): array
    {
        return [
            'id' => $document->id,
            'document_category' => $document->document_category,
            'original_filename' => $document->original_filename,
            'file_size' => $document->file_size,
            'url' => $document->url,
            'uploaded_at' => $document->uploaded_at,
            'uploaded_by' => $document->uploader?->full_name,
        ];
    }
}
