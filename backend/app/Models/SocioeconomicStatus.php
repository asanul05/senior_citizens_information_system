<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SocioeconomicStatus extends Model
{
    protected $table = 'socioeconomic_status';

    protected $fillable = ['name', 'description'];

    public $timestamps = false;
}
