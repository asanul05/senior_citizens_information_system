<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CivilStatus extends Model
{
    protected $table = 'civil_statuses';
    
    protected $fillable = ['name'];

    public $timestamps = false;

    public function seniors()
    {
        return $this->hasMany(SeniorCitizen::class, 'civil_status_id');
    }
}
