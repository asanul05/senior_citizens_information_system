<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Barangay extends Model
{
    protected $table = 'barangays';

    protected $fillable = [
        'code',
        'name',
        'district',
        'population',
        'area',
        'coordinates',
    ];

    public function branches()
    {
        return $this->belongsToMany(Branch::class, 'branch_barangays', 'barangay_id', 'branch_id')
            ->withPivot('is_active')
            ->wherePivot('is_active', 1);
    }

    public function seniors()
    {
        return $this->hasMany(SeniorCitizen::class, 'barangay_id');
    }

    public function users()
    {
        return $this->hasMany(User::class, 'barangay_id');
    }

    public function announcements()
    {
        return $this->hasMany(Announcement::class, 'barangay_id');
    }
}
