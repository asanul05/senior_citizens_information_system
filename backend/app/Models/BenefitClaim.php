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
     * Scope to filter claims accessible by a user based on their branch.
     */
    public function scopeAccessibleBy($query, $user)
    {
        if ($user->role_id === 1) {
            // Main admin sees all
            return $query;
        }

        if ($user->branch_id) {
            // FO/Barangay users see only their branch's seniors
            return $query->whereHas('senior', function ($q) use ($user) {
                $q->whereHas('barangay', function ($bq) use ($user) {
                    $bq->whereHas('branches', function ($brq) use ($user) {
                        $brq->where('branches.id', $user->branch_id);
                    });
                });
            });
        }

        return $query;
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
