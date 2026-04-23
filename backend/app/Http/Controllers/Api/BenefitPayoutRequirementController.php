<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\BenefitPayoutRequirement;
use App\Models\BenefitType;
use App\Traits\LogsAudit;
use Illuminate\Http\Request;

class BenefitPayoutRequirementController extends Controller
{
    use LogsAudit;

    public function index($benefitTypeId)
    {
        $benefitType = BenefitType::with('payoutRequirements')->findOrFail($benefitTypeId);

        return response()->json([
            'success' => true,
            'data' => $benefitType->payoutRequirements,
        ]);
    }

    public function store(Request $request, $benefitTypeId)
    {
        $benefitType = BenefitType::findOrFail($benefitTypeId);
        $validated = $request->validate([
            'name' => 'required|string|max:150',
            'description' => 'nullable|string|max:1000',
            'category' => 'required|in:identity,authorization,proof_of_life,claim_stub,signature,relationship,medical',
            'is_required' => 'sometimes|boolean',
            'sort_order' => 'nullable|integer|min:0',
            'is_active' => 'sometimes|boolean',
            'applies_when' => 'required|in:self_only,representative_only,both',
        ]);

        $requirement = $benefitType->payoutRequirements()->create($validated);

        $this->logAudit(
            'benefit_payout_requirement_create',
            'benefit_payout_requirements',
            $requirement->id,
            "Created payout requirement: {$requirement->name} for {$benefitType->name}",
            null,
            $requirement->only(['name', 'category', 'is_required', 'applies_when']),
            $benefitType->name
        );

        return response()->json([
            'success' => true,
            'message' => 'Payout requirement created successfully.',
            'data' => $requirement,
        ], 201);
    }

    public function update(Request $request, $benefitTypeId, $id)
    {
        $benefitType = BenefitType::findOrFail($benefitTypeId);
        $requirement = BenefitPayoutRequirement::where('benefit_type_id', $benefitType->id)->findOrFail($id);

        $validated = $request->validate([
            'name' => 'sometimes|string|max:150',
            'description' => 'nullable|string|max:1000',
            'category' => 'sometimes|in:identity,authorization,proof_of_life,claim_stub,signature,relationship,medical',
            'is_required' => 'sometimes|boolean',
            'sort_order' => 'nullable|integer|min:0',
            'is_active' => 'sometimes|boolean',
            'applies_when' => 'sometimes|in:self_only,representative_only,both',
        ]);

        $requirement->update($validated);

        return response()->json([
            'success' => true,
            'message' => 'Payout requirement updated successfully.',
            'data' => $requirement,
        ]);
    }

    public function toggle($benefitTypeId, $id)
    {
        $requirement = BenefitPayoutRequirement::where('benefit_type_id', $benefitTypeId)->findOrFail($id);
        $requirement->is_active = !$requirement->is_active;
        $requirement->save();

        return response()->json([
            'success' => true,
            'message' => $requirement->is_active ? 'Payout requirement activated.' : 'Payout requirement deactivated.',
            'data' => $requirement,
        ]);
    }

    public function reorder(Request $request, $benefitTypeId)
    {
        $validated = $request->validate([
            'items' => 'required|array|min:1',
            'items.*.id' => 'required|integer|exists:benefit_payout_requirements,id',
            'items.*.sort_order' => 'required|integer|min:0',
        ]);

        foreach ($validated['items'] as $item) {
            BenefitPayoutRequirement::where('benefit_type_id', $benefitTypeId)
                ->where('id', $item['id'])
                ->update(['sort_order' => $item['sort_order']]);
        }

        return response()->json([
            'success' => true,
            'message' => 'Payout requirements reordered successfully.',
        ]);
    }
}
