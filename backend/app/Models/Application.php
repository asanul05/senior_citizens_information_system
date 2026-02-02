<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Application extends Model
{
    protected $table = 'applications';

    protected $fillable = [
        'application_number',
        'senior_id',
        'application_type_id',
        'status',
        'submitted_by',
        'submission_date',
        'verified_by',
        'verification_date',
        'approved_by',
        'approval_date',
        'printed_by',
        'print_date',
        'claimed_by',
        'claim_date',
        'notes',
        'applicant_data',
    ];

    protected $casts = [
        'submission_date' => 'datetime',
        'verification_date' => 'datetime',
        'approval_date' => 'datetime',
        'print_date' => 'datetime',
        'claim_date' => 'datetime',
        'applicant_data' => 'array', // JSON cast
    ];

    public function senior()
    {
        return $this->belongsTo(SeniorCitizen::class, 'senior_id');
    }

    public function applicationType()
    {
        return $this->belongsTo(ApplicationType::class);
    }

    public function submitter()
    {
        return $this->belongsTo(User::class, 'submitted_by');
    }

    public function verifier()
    {
        return $this->belongsTo(User::class, 'verified_by');
    }

    public function approver()
    {
        return $this->belongsTo(User::class, 'approved_by');
    }

    public function printer()
    {
        return $this->belongsTo(User::class, 'printed_by');
    }

    public function claimer()
    {
        return $this->belongsTo(User::class, 'claimed_by');
    }

    public function documents()
    {
        return $this->hasMany(ApplicationDocument::class);
    }

    /**
     * Get the applicant's full name from applicant_data.
     */
    public function getApplicantNameAttribute()
    {
        if (!$this->applicant_data) {
            return $this->senior ? $this->senior->full_name : 'Unknown';
        }
        
        $data = $this->applicant_data;
        $firstName = $data['personal_info']['first_name'] ?? '';
        $middleName = $data['personal_info']['middle_name'] ?? '';
        $lastName = $data['personal_info']['last_name'] ?? '';
        
        return trim("$firstName $middleName $lastName");
    }

    /**
     * Check if application is editable (Draft status only).
     */
    public function isEditable()
    {
        return in_array($this->status, ['Draft', 'Pending']);
    }
}
