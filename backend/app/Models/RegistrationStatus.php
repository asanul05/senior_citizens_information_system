<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class RegistrationStatus extends Model
{
    protected $table = 'registration_statuses';
    
    protected $fillable = ['name', 'description', 'code'];

    public function seniors()
    {
        return $this->hasMany(SeniorCitizen::class, 'registration_status_id');
    }
}
