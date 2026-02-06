<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Archive extends Model
{
    protected $table = 'archives';

    public $timestamps = false;

    protected $fillable = [
        'archive_type',
        'reference_id',
        'archive_data',
        'archive_reason',
        'archive_notes',
        'original_created_at',
        'original_updated_at',
        'deceased_date',
        'archived_by',
        'archived_at',
    ];

    protected $casts = [
        'archive_data' => 'array',
        'original_created_at' => 'datetime',
        'original_updated_at' => 'datetime',
        'deceased_date' => 'date',
        'archived_at' => 'datetime',
    ];

    public function archivedBy()
    {
        return $this->belongsTo(User::class, 'archived_by');
    }
}
