<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DeceasedReport extends Model
{
    protected $fillable = [
        'senior_id',
        // Death details
        'date_of_death',
        'time_of_death',
        'place_of_death',
        'facility_name',
        'cause_of_death',
        // Death location (structured)
        'death_country',
        'death_province',
        'death_city',
        'death_barangay',
        'death_location_type',
        'death_location_type_other',
        // Reporter / informant
        'reported_by',
        'relationship_to_deceased',
        'relationship_other',
        'reporter_full_name',
        'reporter_contact_number',
        'reporter_email',
        'reporter_address',
        // Death certificate info
        'death_certificate_path',
        'certificate_number',
        'registry_number',
        'date_registered',
        'registered_at',
        'certificate_issued_by',
        'certificate_issue_date',
        // Supporting docs
        'supporting_doc_path',
        'supporting_doc_type',
        // Burial / funeral
        'burial_date',
        'burial_location',
        'cemetery_name',
        'funeral_service_provider',
        // Account closure
        'id_card_status',
        'benefits_terminated',
        // System
        'submitted_by',
        'status',
    ];

    protected $casts = [
        'date_of_death' => 'date',
        'date_registered' => 'date',
        'certificate_issue_date' => 'date',
        'burial_date' => 'date',
        'benefits_terminated' => 'boolean',
    ];

    public function senior()
    {
        return $this->belongsTo(SeniorCitizen::class, 'senior_id');
    }

    public function submitter()
    {
        return $this->belongsTo(\App\Models\User::class, 'submitted_by');
    }
}
