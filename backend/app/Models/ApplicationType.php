<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ApplicationType extends Model
{
    protected $table = 'application_types';

    protected $fillable = [
        'name',
        'code',
        'description',
        'requirements',
        'processing_days',
    ];

    protected $casts = [
        'requirements' => 'array',
    ];

    public function applications()
    {
        return $this->hasMany(Application::class, 'application_type_id');
    }
}
