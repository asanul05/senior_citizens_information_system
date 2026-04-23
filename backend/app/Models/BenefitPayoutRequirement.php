<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BenefitPayoutRequirement extends Model
{
    use HasFactory;

    protected $fillable = [
        'benefit_type_id',
        'name',
        'description',
        'category',
        'is_required',
        'sort_order',
        'is_active',
        'applies_when',
    ];

    protected $casts = [
        'is_required' => 'boolean',
        'is_active' => 'boolean',
        'sort_order' => 'integer',
    ];

    public function benefitType()
    {
        return $this->belongsTo(BenefitType::class, 'benefit_type_id');
    }
}
