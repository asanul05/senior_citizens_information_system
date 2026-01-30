<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Gender extends Model
{
    protected $table = 'genders';
    
    protected $fillable = ['name', 'code'];

    public function seniors()
    {
        return $this->hasMany(SeniorCitizen::class, 'gender_id');
    }
}
