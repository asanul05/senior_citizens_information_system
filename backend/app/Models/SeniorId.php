<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SeniorId extends Model
{
    protected $table = 'senior_ids';

    protected $fillable = [
        'senior_id',
        'id_number',
        'issue_date',
        'expiry_date',
        'is_active',
    ];

    protected $casts = [
        'issue_date' => 'date',
        'expiry_date' => 'date',
        'is_active' => 'boolean',
    ];

    public function senior()
    {
        return $this->belongsTo(SeniorCitizen::class, 'senior_id');
    }
}
