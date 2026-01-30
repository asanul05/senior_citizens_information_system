<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Branch extends Model
{
    protected $table = 'branches';

    protected $fillable = [
        'code',
        'name',
        'address',
        'contact_number',
        'email',
        'head_name',
        'is_active',
    ];

    protected $casts = [
        'is_active' => 'boolean',
    ];

    public function users()
    {
        return $this->hasMany(User::class, 'branch_id');
    }

    public function barangays()
    {
        return $this->belongsToMany(Barangay::class, 'branch_barangays', 'branch_id', 'barangay_id')
            ->withPivot('is_active')
            ->wherePivot('is_active', 1);
    }

    public function seniors()
    {
        return $this->hasMany(SeniorCitizen::class, 'branch_id');
    }
}
