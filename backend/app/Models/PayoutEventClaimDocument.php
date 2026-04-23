<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Storage;

class PayoutEventClaimDocument extends Model
{
    use HasFactory;

    protected $fillable = [
        'payout_event_claim_id',
        'document_category',
        'file_path',
        'original_filename',
        'file_size',
        'uploaded_by',
        'uploaded_at',
    ];

    protected $casts = [
        'uploaded_at' => 'datetime',
    ];

    protected $appends = ['url'];

    public function payoutEventClaim()
    {
        return $this->belongsTo(PayoutEventClaim::class, 'payout_event_claim_id');
    }

    public function uploader()
    {
        return $this->belongsTo(User::class, 'uploaded_by');
    }

    public function getUrlAttribute(): ?string
    {
        if (!$this->file_path) {
            return null;
        }

        return Storage::disk(config('filesystems.upload_disk'))->url($this->file_path);
    }
}
