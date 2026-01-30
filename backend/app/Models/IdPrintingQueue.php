<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class IdPrintingQueue extends Model
{
    protected $table = 'id_printing_queue';

    protected $fillable = [
        'senior_id',
        'application_id',
        'queue_number',
        'id_type',
        'status',
        'priority',
        'requested_by',
        'requested_date',
        'assigned_to',
        'assigned_date',
        'printed_by',
        'printed_date',
        'claimed_by',
        'claimed_date',
        'notes',
    ];

    protected $casts = [
        'requested_date' => 'datetime',
        'assigned_date' => 'datetime',
        'printed_date' => 'datetime',
        'claimed_date' => 'datetime',
    ];

    // Relationships
    public function senior()
    {
        return $this->belongsTo(SeniorCitizen::class, 'senior_id');
    }

    public function application()
    {
        return $this->belongsTo(Application::class, 'application_id');
    }

    public function requestedBy()
    {
        return $this->belongsTo(User::class, 'requested_by');
    }

    public function assignedTo()
    {
        return $this->belongsTo(User::class, 'assigned_to');
    }

    public function printedBy()
    {
        return $this->belongsTo(User::class, 'printed_by');
    }

    public function claimedBy()
    {
        return $this->belongsTo(User::class, 'claimed_by');
    }

    // Scopes
    public function scopePending($query)
    {
        return $query->where('status', 'pending');
    }

    public function scopeInProgress($query)
    {
        return $query->where('status', 'in_progress');
    }

    public function scopePrinted($query)
    {
        return $query->where('status', 'printed');
    }

    public function scopeClaimed($query)
    {
        return $query->where('status', 'claimed');
    }
}
