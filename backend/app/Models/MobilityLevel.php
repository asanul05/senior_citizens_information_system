<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MobilityLevel extends Model
{
    protected $table = 'mobility_levels';

    protected $fillable = ['level', 'description'];

    public $timestamps = false;
}
