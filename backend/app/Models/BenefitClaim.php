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
        'notes',
    ];

    protected $casts = [
        'amount' => 'decimal:2',
        'claim_year' => 'integer',
        'released_at' => 'datetime',
    ];

    // Status constants
    const STATUS_PENDING = 'pending';
    const STATUS_APPROVED = 'approved';
    const STATUS_RELEASED = 'released';
    const STATUS_REJECTED = 'rejected';

    /**
     * Get the senior citizen for this claim.
     */
    public function senior()
    {
        return $this->belongsTo(SeniorCitizen::class, 'senior_id');
    }

    /**
     * Get the benefit type for this claim.
     */
    public function benefitType()
    {
        return $this->belongsTo(BenefitType::class);
    }

    /**
     * Get the user who processed this claim.
     */
    public function processor()
    {
        return $this->belongsTo(User::class, 'processed_by');
    }

    /**
     * Scope to filter by status.
     */
    public function scopeStatus($query, string $status)
    {
        return $query->where('status', $status);
    }

    /**
     * Scope to filter by year.
     */
    public function scopeForYear($query, int $year)
    {
        return $query->where('claim_year', $year);
    }

    /**
     * Scope to filter claims accessible by a user based on their role.
     */
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

    /**
     * Get status color for UI.
     */
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
}
