<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    protected $table = 'contacts';

    protected $fillable = [
        'mobile_number',
        'telephone_number',
        'email',
        'house_number',
        'street',
        'barangay_id',
        'city',
        'postal_code',
    ];

    public function senior()
    {
        return $this->hasOne(SeniorCitizen::class, 'contact_id');
    }

    public function barangay()
    {
        return $this->belongsTo(Barangay::class);
    }
}
