<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ApplicationDocument extends Model
{
    protected $table = 'application_documents';
    
    public $timestamps = false;
    
    protected $fillable = [
        'application_id',
        'document_type_id',
        'file_path',
        'original_filename',
        'file_size',
        'uploaded_by',
        'uploaded_at',
    ];
    
    protected $casts = [
        'uploaded_at' => 'datetime',
    ];
    
    public function application()
    {
        return $this->belongsTo(Application::class);
    }
    
    public function uploader()
    {
        return $this->belongsTo(User::class, 'uploaded_by');
    }
    
    /**
     * Get the document type name based on document_type_id.
     */
    public function getDocumentTypeNameAttribute()
    {
        $types = [
            1 => 'Birth Certificate / PSA',
            2 => 'Barangay Certificate',
            3 => "Voter's ID / COMELEC Registration",
            4 => 'Valid ID',
        ];
        
        return $types[$this->document_type_id] ?? 'Unknown';
    }
}
