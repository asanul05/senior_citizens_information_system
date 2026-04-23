<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PayoutEvent extends Model
{
    use HasFactory;

    protected $fillable = [
        'benefit_type_id',
        'reference_code',
        'title',
        'scheduled_at',
        'scheduled_from',
        'scheduled_until',
        'status',
        'location_type',
        'branch_id',
        'location_name',
        'location_address',
        'location_latitude',
        'location_longitude',
        'notes',
        'created_by',
        'updated_by',
    ];

    protected $casts = [
        'scheduled_at' => 'datetime',
        'scheduled_from' => 'datetime',
        'scheduled_until' => 'datetime',
        'location_latitude' => 'float',
        'location_longitude' => 'float',
    ];

    protected $appends = [
        'release_location_label',
        'release_location_full_address',
        'schedule_label',
    ];

    public function benefitType()
    {
        return $this->belongsTo(BenefitType::class, 'benefit_type_id');
    }

    public function branch()
    {
        return $this->belongsTo(Branch::class, 'branch_id');
    }

    public function creator()
    {
        return $this->belongsTo(User::class, 'created_by');
    }

    public function updater()
    {
        return $this->belongsTo(User::class, 'updated_by');
    }

    public function payoutClaims()
    {
        return $this->hasMany(PayoutEventClaim::class, 'payout_event_id');
    }

    public function getReleaseLocationLabelAttribute(): ?string
    {
        if ($this->location_type === 'branch') {
            return $this->branch?->name;
        }

        return $this->location_name;
    }

    public function getReleaseLocationFullAddressAttribute(): ?string
    {
        if ($this->location_type === 'branch') {
            return $this->branch?->address;
        }

        return $this->location_address;
    }

    public function getScheduleLabelAttribute(): ?string
    {
        $from = $this->scheduled_from ?? $this->scheduled_at;
        $until = $this->scheduled_until ?? $this->scheduled_at;

        if (!$from || !$until) {
            return null;
        }

        if ($from->isSameDay($until)) {
            return $from->format('M j, Y g:i A') . ' - ' . $until->format('g:i A');
        }

        return $from->format('M j, Y g:i A') . ' to ' . $until->format('M j, Y g:i A');
    }
}
