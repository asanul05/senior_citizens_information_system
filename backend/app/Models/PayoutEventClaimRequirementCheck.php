<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PayoutEventClaimRequirementCheck extends Model
{
    use HasFactory;

    protected $fillable = [
        'payout_event_claim_id',
        'benefit_payout_requirement_id',
        'status',
        'remarks',
        'checked_by',
        'checked_at',
    ];

    protected $casts = [
        'checked_at' => 'datetime',
    ];

    public function payoutEventClaim()
    {
        return $this->belongsTo(PayoutEventClaim::class, 'payout_event_claim_id');
    }

    public function requirement()
    {
        return $this->belongsTo(BenefitPayoutRequirement::class, 'benefit_payout_requirement_id');
    }

    public function checker()
    {
        return $this->belongsTo(User::class, 'checked_by');
    }
}
