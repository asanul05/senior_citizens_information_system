<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class EducationalAttainment extends Model
{
    protected $table = 'educational_attainment';

    protected $fillable = ['level'];

    public $timestamps = false;
}
