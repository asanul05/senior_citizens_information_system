<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BenefitClaim extends Model
{
    use HasFactory;

    protected $fillable = [
        'senior_id',
        'benefit_type_id',
        'claim_year',
        'amount',
        'status',
        'released_at',
        'processed_by',
        'claimed_by',
        'approved_by',
        'released_by',
        'rejected_by',
        'notes',
        'release_location_type',
        'release_branch_id',
        'release_location_name',
        'release_location_address',
        'release_location_latitude',
        'release_location_longitude',
    ];

    protected $casts = [
        'amount' => 'decimal:2',
        'claim_year' => 'integer',
        'released_at' => 'datetime',
        'release_location_latitude' => 'float',
        'release_location_longitude' => 'float',
    ];

    protected $appends = [
        'release_location_label',
        'release_location_full_address',
    ];

    // Status constants
    const STATUS_PENDING = 'pending';
    const STATUS_APPROVED = 'approved';
    const STATUS_RELEASED = 'released';
    const STATUS_REJECTED = 'rejected';

    // Get the senior citizen for this claim.
    public function senior()
    {
        return $this->belongsTo(SeniorCitizen::class, 'senior_id');
    }

    // Get the benefit type for this claim.
    public function benefitType()
    {
        return $this->belongsTo(BenefitType::class);
    }

    // Get the user who processed this claim.
    public function processor()
    {
        return $this->belongsTo(User::class, 'processed_by');
    }

    // Get the user who filed/created this claim.
    public function claimer()
    {
        return $this->belongsTo(User::class, 'claimed_by');
    }

    // Get the user who approved this claim.
    public function approver()
    {
        return $this->belongsTo(User::class, 'approved_by');
    }

    // Get the user who released this claim.
    public function releaser()
    {
        return $this->belongsTo(User::class, 'released_by');
    }

    public function releaseBranch()
    {
        return $this->belongsTo(Branch::class, 'release_branch_id');
    }

    // Get the user who rejected this claim.
    public function rejecter()
    {
        return $this->belongsTo(User::class, 'rejected_by');
    }

    public function payoutEventClaim()
    {
        return $this->hasOne(PayoutEventClaim::class, 'benefit_claim_id');
    }

    // Scope to filter by status.
    public function scopeStatus($query, string $status)
    {
        return $query->where('status', $status);
    }

    // Scope to filter by year.
    public function scopeForYear($query, int $year)
    {
        return $query->where('claim_year', $year);
    }

    // Scope to filter claims accessible by a user based on their role.
    public function scopeAccessibleBy($query, $user)
    {
        if ($user->isMainAdmin()) {
            // Main admin sees all
            return $query;
        }

        // FO/Barangay users see only seniors from their accessible barangays
        $barangayIds = $user->getAccessibleBarangayIds();
        return $query->whereHas('senior', function ($q) use ($barangayIds) {
            $q->whereIn('barangay_id', $barangayIds);
        });
    }

    public function getStatusColorAttribute(): string
    {
        return match ($this->status) {
            self::STATUS_PENDING => 'gold',
            self::STATUS_APPROVED => 'blue',
            self::STATUS_RELEASED => 'green',
            self::STATUS_REJECTED => 'red',
            default => 'default',
        };
    }

    public function getReleaseLocationLabelAttribute(): ?string
    {
        if ($this->release_location_type === 'branch') {
            return $this->releaseBranch?->name;
        }

        return $this->release_location_name;
    }

    public function getReleaseLocationFullAddressAttribute(): ?string
    {
        if ($this->release_location_type === 'branch') {
            return $this->releaseBranch?->address;
        }

        return $this->release_location_address;
    }
}
