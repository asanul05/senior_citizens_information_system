<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class SeniorHealthProfile extends Model
{
    protected $fillable = [
        'senior_id',
        'blood_type',
        'physical_disability',
        'health_problems',
        'health_problems_other',
        'dental_concerns',
        'dental_concerns_other',
        'visual_concerns',
        'visual_concerns_other',
        'hearing_concerns',
        'hearing_concerns_other',
        'social_emotional',
        'social_emotional_other',
        'area_of_difficulty',
        'maintenance_medicines',
        'has_scheduled_checkup',
        'checkup_frequency',
    ];

    protected $casts = [
        'health_problems' => 'array',
        'dental_concerns' => 'array',
        'visual_concerns' => 'array',
        'hearing_concerns' => 'array',
        'social_emotional' => 'array',
        'area_of_difficulty' => 'array',
        'has_scheduled_checkup' => 'boolean',
    ];

    public function senior(): BelongsTo
    {
        return $this->belongsTo(SeniorCitizen::class, 'senior_id');
    }
}
