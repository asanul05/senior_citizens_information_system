<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SeniorId extends Model
{
    protected $table = 'senior_ids';

    const UPDATED_AT = null; // Table only has created_at, no updated_at

    protected $fillable = [
        'senior_id',
        'id_number',
        'issue_date',
        'is_active',
        'status_id',
        'printed_by',
        'print_date',
    ];

    protected $casts = [
        'issue_date' => 'date',
        'is_active' => 'boolean',
    ];

    public function senior()
    {
        return $this->belongsTo(SeniorCitizen::class, 'senior_id');
    }
}
