<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class AnnouncementMedia extends Model
{
    protected $table = 'announcement_media';

    public $timestamps = false;

    protected $fillable = [
        'announcement_id',
        'file_path',
        'media_type',
        'uploaded_at',
    ];

    protected $casts = [
        'uploaded_at' => 'datetime',
    ];

    public function announcement()
    {
        return $this->belongsTo(Announcement::class, 'announcement_id');
    }
}
