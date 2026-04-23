<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PayoutEventClaim extends Model
{
    use HasFactory;

    protected $fillable = [
        'payout_event_id',
        'benefit_claim_id',
        'status',
        'release_mode',
        'checked_in_at',
        'released_at',
        'released_by',
        'remarks',
    ];

    protected $casts = [
        'checked_in_at' => 'datetime',
        'released_at' => 'datetime',
    ];

    public function payoutEvent()
    {
        return $this->belongsTo(PayoutEvent::class, 'payout_event_id');
    }

    public function benefitClaim()
    {
        return $this->belongsTo(BenefitClaim::class, 'benefit_claim_id');
    }

    public function releaser()
    {
        return $this->belongsTo(User::class, 'released_by');
    }

    public function requirementChecks()
    {
        return $this->hasMany(PayoutEventClaimRequirementCheck::class, 'payout_event_claim_id');
    }

    public function documents()
    {
        return $this->hasMany(PayoutEventClaimDocument::class, 'payout_event_claim_id');
    }

    public function representative()
    {
        return $this->hasOne(PayoutEventClaimRepresentative::class, 'payout_event_claim_id');
    }
}
