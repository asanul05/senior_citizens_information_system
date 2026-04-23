<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PayoutEventClaimRepresentative extends Model
{
    use HasFactory;

    protected $fillable = [
        'payout_event_claim_id',
        'representative_mode',
        'family_member_id',
        'full_name',
        'relationship',
        'mobile_number',
        'address',
        'valid_id_type',
        'valid_id_number',
        'authorization_basis',
        'remarks',
    ];

    public function payoutEventClaim()
    {
        return $this->belongsTo(PayoutEventClaim::class, 'payout_event_claim_id');
    }

    public function familyMember()
    {
        return $this->belongsTo(FamilyMember::class, 'family_member_id');
    }
}
