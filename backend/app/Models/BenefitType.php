<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BenefitType extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'description',
        'min_age',
        'max_age',
        'amount',
        'is_one_time',
        'is_active',
    ];

    protected $casts = [
        'amount' => 'decimal:2',
        'is_one_time' => 'boolean',
        'is_active' => 'boolean',
    ];

    /**
     * Get all claims for this benefit type.
     */
    public function claims()
    {
        return $this->hasMany(BenefitClaim::class);
    }

    /**
     * Check if a senior is eligible for this benefit based on age.
     * Eligibility is CUMULATIVE: age >= min_age (not restricted by max_age)
     * Example: A 100yr old is eligible for Octogenarian, Nonagenarian, AND Centenarian
     */
    public function isEligibleForAge(int $age): bool
    {
        // Cumulative eligibility: if senior has passed the minimum age, they're eligible
        return $age >= $this->min_age;
    }

    /**
     * Scope to get only active benefit types.
     */
    public function scopeActive($query)
    {
        return $query->where('is_active', true);
    }

    /**
     * Get the age range as a formatted string.
     */
    public function getAgeRangeAttribute(): string
    {
        if ($this->max_age === null) {
            return "{$this->min_age}+";
        }
        return "{$this->min_age}-{$this->max_age}";
    }

    /**
     * Get formatted amount with currency.
     */
    public function getFormattedAmountAttribute(): string
    {
        if ($this->amount == 0) {
            return '—';
        }
        return '₱' . number_format($this->amount, 2);
    }
}
