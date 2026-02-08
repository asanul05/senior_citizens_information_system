<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Announcement extends Model
{
    protected $table = 'announcements';

    protected $fillable = [
        'title',
        'description',
        'type_id',
        'event_date',
        'event_time',
        'location',
        'target_audience',
        'is_published',
        'published_date',
        'created_by',
    ];

    protected $casts = [
        'event_date' => 'date',
        'published_date' => 'datetime',
        'is_published' => 'boolean',
    ];

    /**
     * Backwards-compatible accessor so $announcement->content works and is serialized.
     */
    public function getContentAttribute()
    {
        return $this->attributes['description'] ?? null;
    }

    // Relationships
    public function type()
    {
        return $this->belongsTo(AnnouncementType::class, 'type_id');
    }

    public function barangay()
    {
        return $this->belongsTo(Barangay::class, 'barangay_id');
    }

    public function branch()
    {
        return $this->belongsTo(Branch::class, 'branch_id');
    }

    public function createdBy()
    {
        return $this->belongsTo(User::class, 'created_by');
    }

    public function media()
    {
        return $this->hasMany(AnnouncementMedia::class, 'announcement_id');
    }

    // Scopes
    public function scopePublished($query)
    {
        return $query->where('is_published', true);
    }

    public function scopeUpcoming($query)
    {
        return $query->where('event_date', '>=', now());
    }
}
