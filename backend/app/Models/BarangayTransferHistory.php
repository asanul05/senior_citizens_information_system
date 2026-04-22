<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class BarangayTransferHistory extends Model
{
    protected $fillable = [
        'senior_id',
        'from_barangay_id',
        'to_barangay_id',
        'transfer_reason',
        'supporting_document_path',
        'transferred_by',
        'transferred_at',
    ];

    protected $casts = [
        'transferred_at' => 'datetime',
    ];

    public function senior()
    {
        return $this->belongsTo(SeniorCitizen::class, 'senior_id');
    }

    public function fromBarangay()
    {
        return $this->belongsTo(Barangay::class, 'from_barangay_id');
    }

    public function toBarangay()
    {
        return $this->belongsTo(Barangay::class, 'to_barangay_id');
    }

    public function transferredBy()
    {
        return $this->belongsTo(User::class, 'transferred_by');
    }
}
