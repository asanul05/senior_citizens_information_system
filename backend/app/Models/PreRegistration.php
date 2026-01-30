<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class PreRegistration extends Model
{
    protected $fillable = [
        'reference_number',
        'applicant_data',
        'barangay_id',
        'status',
        'fo_reviewed_by',
        'fo_reviewed_at',
        'main_reviewed_by',
        'main_reviewed_at',
        'notes',
        'rejection_reason',
        'application_id',
    ];

    protected $casts = [
        'applicant_data' => 'array',
        'fo_reviewed_at' => 'datetime',
        'main_reviewed_at' => 'datetime',
    ];

    // Status constants
    const STATUS_PENDING = 'pending';
    const STATUS_FO_REVIEW = 'fo_review';
    const STATUS_FO_VERIFIED = 'fo_verified';
    const STATUS_MAIN_REVIEW = 'main_review';
    const STATUS_APPROVED = 'approved';
    const STATUS_REJECTED = 'rejected';
    const STATUS_CONVERTED = 'converted';

    /**
     * Generate a unique reference number
     */
    public static function generateReferenceNumber(): string
    {
        $date = now()->format('Ymd');
        $random = str_pad(mt_rand(1, 9999), 4, '0', STR_PAD_LEFT);
        return "PRE-{$date}-{$random}";
    }

    /**
     * Barangay relationship
     */
    public function barangay(): BelongsTo
    {
        return $this->belongsTo(Barangay::class);
    }

    /**
     * Branch/FO reviewer relationship
     */
    public function foReviewer(): BelongsTo
    {
        return $this->belongsTo(User::class, 'fo_reviewed_by');
    }

    /**
     * Main Admin reviewer relationship
     */
    public function mainReviewer(): BelongsTo
    {
        return $this->belongsTo(User::class, 'main_reviewed_by');
    }

    /**
     * Converted application relationship
     */
    public function application(): BelongsTo
    {
        return $this->belongsTo(Application::class);
    }

    /**
     * Get status label for display
     */
    public function getStatusLabelAttribute(): string
    {
        return match($this->status) {
            self::STATUS_PENDING => 'Pending Review',
            self::STATUS_FO_REVIEW => 'Under Branch Review',
            self::STATUS_FO_VERIFIED => 'Verified by Branch',
            self::STATUS_MAIN_REVIEW => 'Under Main Review',
            self::STATUS_APPROVED => 'Approved',
            self::STATUS_REJECTED => 'Rejected',
            self::STATUS_CONVERTED => 'Converted to Application',
            default => ucfirst($this->status),
        };
    }
}
