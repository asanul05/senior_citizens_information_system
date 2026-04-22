<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SeniorNameChangeHistory extends Model
{
    protected $fillable = [
        'senior_id',
        'old_first_name',
        'old_middle_name',
        'old_last_name',
        'old_extension',
        'new_first_name',
        'new_middle_name',
        'new_last_name',
        'new_extension',
        'reason_type',
        'reason_details',
        'supporting_document_path',
        'status',
        'changed_by',
        'changed_at',
        'approved_by',
        'approved_at',
        'decision_notes',
    ];

    protected $casts = [
        'changed_at' => 'datetime',
        'approved_at' => 'datetime',
    ];

    public function senior()
    {
        return $this->belongsTo(SeniorCitizen::class, 'senior_id');
    }

    public function changedBy()
    {
        return $this->belongsTo(User::class, 'changed_by');
    }

    public function approvedBy()
    {
        return $this->belongsTo(User::class, 'approved_by');
    }
}
