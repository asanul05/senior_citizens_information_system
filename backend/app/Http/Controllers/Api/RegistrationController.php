<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Application;
use App\Models\ApplicationType;
use App\Models\Barangay;
use App\Models\Gender;
use App\Models\SeniorCitizen;
use App\Models\Contact;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Carbon\Carbon;

class RegistrationController extends Controller
{
    /**
     * Get all lookup options for the registration form.
     */
    public function lookupOptions()
    {
        // Get genders (exclude "Other" as per original form)
        $genders = Gender::whereNotIn('name', ['Other'])->get(['id', 'name']);
        
        // Get educational attainments - note: uses 'level' column
        $educationalAttainments = DB::table('educational_attainment')
            ->select('id', 'level as name')
            ->get();
        
        // Get mobility levels - note: uses 'level' column  
        $mobilityLevels = DB::table('mobility_levels')
            ->select('id', 'level as name')
            ->get();

        $options = [
            'genders' => $genders,
            'application_types' => ApplicationType::all(['id', 'name', 'description']),
            'educational_attainments' => $educationalAttainments,
            'mobility_levels' => $mobilityLevels,
        ];

        return response()->json([
            'success' => true,
            'data' => $options,
        ]);
    }

    /**
     * Get all barangays for selection.
     */
    public function barangays()
    {
        return response()->json([
            'success' => true,
            'data' => Barangay::orderBy('name')->get(['id', 'name', 'district']),
        ]);
    }

    /**
     * Check for duplicate senior citizen records.
     */
    public function checkDuplicate(Request $request)
    {
        $request->validate([
            'first_name' => 'required|string',
            'last_name' => 'required|string',
            'birthdate' => 'required|date',
        ]);

        $duplicates = SeniorCitizen::where('first_name', 'like', '%' . $request->first_name . '%')
            ->where('last_name', 'like', '%' . $request->last_name . '%')
            ->when($request->middle_name, function ($q) use ($request) {
                $q->where('middle_name', 'like', '%' . $request->middle_name . '%');
            })
            ->whereDate('birthdate', $request->birthdate)
            ->with('barangay')
            ->get(['id', 'osca_id', 'first_name', 'middle_name', 'last_name', 'birthdate', 'barangay_id', 'registration_status_id', 'is_active']);

        $hasDuplicate = $duplicates->count() > 0;

        return response()->json([
            'success' => true,
            'data' => [
                'has_duplicate' => $hasDuplicate,
                'duplicates' => $duplicates,
                'message' => $hasDuplicate 
                    ? 'Potential duplicate found. Please verify before proceeding.'
                    : 'No duplicate records found.',
            ],
        ]);
    }

    /**
     * Store a new registration application.
     * Data is stored as JSON in applications table - NO senior_citizen created until approval.
     */
    public function store(Request $request)
    {
        $isDraft = $request->boolean('save_as_draft', false);
        
        // Custom validation messages
        $messages = [
            'first_name.required' => 'First name is required.',
            'last_name.required' => 'Last name is required.',
            'birthdate.required' => 'Date of birth is required.',
            'birthdate.date' => 'Please enter a valid date of birth.',
            'gender_id.required' => 'Sex is required.',
            'gender_id.exists' => 'Please select a valid sex option.',
            'barangay_id.required' => 'Barangay is required.',
            'barangay_id.exists' => 'Please select a valid barangay.',
        ];
        
        // Core fields are always required (even for drafts - database compatibility)
        $rules = [
            'save_as_draft' => 'nullable|boolean',
            'first_name' => 'required|string|max:100',
            'middle_name' => 'nullable|string|max:100',
            'last_name' => 'required|string|max:100',
            'extension' => 'nullable|string|max:20',
            'birthdate' => 'required|date',
            'gender_id' => 'required|exists:genders,id',
            'barangay_id' => 'required|exists:barangays,id',
            'house_number' => 'nullable|string|max:100',
            'street' => 'nullable|string|max:255',
            'mobile_number' => 'nullable|string|max:20',
            'telephone_number' => 'nullable|string|max:20',
            'educational_attainment_id' => 'nullable|integer',
            'monthly_salary' => 'nullable|numeric',
            'occupation' => 'nullable|string|max:200',
            'other_skills' => 'nullable|string|max:500',
            'family_members' => 'nullable|array',
            'target_sectors' => 'nullable|array',
            'sub_categories' => 'nullable|array',
            'application_type_id' => 'nullable|integer',
        ];

        // If NOT draft, require documents to be uploaded (check via has_documents flag)
        if (!$isDraft) {
            // Note: Document validation will be done on frontend and via has_photo flag
            // We'll validate that photo was provided for full submission
        }

        $validated = $request->validate($rules, $messages);

        // ==============================================
        // STRICT DUPLICATE CHECK - BLOCK IF DUPLICATE EXISTS
        // ==============================================
        $firstName = strtolower(trim($request->first_name));
        $lastName = strtolower(trim($request->last_name));
        $birthdate = $request->birthdate;

        // 1. Check existing Senior Citizens (already registered)
        $existingSenior = SeniorCitizen::whereRaw('LOWER(TRIM(first_name)) = ?', [$firstName])
            ->whereRaw('LOWER(TRIM(last_name)) = ?', [$lastName])
            ->whereDate('birthdate', $birthdate)
            ->first();

        if ($existingSenior) {
            return response()->json([
                'success' => false,
                'message' => 'This person is already registered as a Senior Citizen.',
                'duplicate_type' => 'registered',
                'existing_record' => [
                    'osca_id' => $existingSenior->osca_id,
                    'name' => "{$existingSenior->first_name} {$existingSenior->last_name}",
                    'barangay' => $existingSenior->barangay?->name,
                ],
            ], 409);
        }

        // 2. Check pending/approved applications (not yet rejected)
        $existingApplication = Application::where('status', '!=', 'Rejected')
            ->whereRaw("LOWER(TRIM(JSON_UNQUOTE(JSON_EXTRACT(applicant_data, '$.personal_info.first_name')))) = ?", [$firstName])
            ->whereRaw("LOWER(TRIM(JSON_UNQUOTE(JSON_EXTRACT(applicant_data, '$.personal_info.last_name')))) = ?", [$lastName])
            ->whereRaw("JSON_UNQUOTE(JSON_EXTRACT(applicant_data, '$.personal_info.birthdate')) = ?", [$birthdate])
            ->first();

        if ($existingApplication) {
            return response()->json([
                'success' => false,
                'message' => 'An application for this person already exists.',
                'duplicate_type' => 'application',
                'existing_record' => [
                    'application_number' => $existingApplication->application_number,
                    'status' => $existingApplication->status,
                ],
            ], 409);
        }
        // ==============================================

        try {
            DB::beginTransaction();

            $user = $request->user();

            // Generate application number
            $year = date('Y');
            $count = Application::whereYear('created_at', $year)->count() + 1;
            $applicationNumber = sprintf('APP-%s-%05d', $year, $count);

            // Build applicant_data JSON (stores all form data)
            $applicantData = [
                'personal_info' => [
                    'first_name' => $request->first_name,
                    'middle_name' => $request->middle_name,
                    'last_name' => $request->last_name,
                    'extension' => $request->extension,
                    'birthdate' => $request->birthdate,
                    'gender_id' => $request->gender_id,
                    'barangay_id' => $request->barangay_id,
                ],
                'contact_info' => [
                    'house_number' => $request->house_number,
                    'street' => $request->street,
                    'mobile_number' => $request->mobile_number,
                    'telephone_number' => $request->telephone_number,
                ],
                'background_info' => [
                    'educational_attainment_id' => $request->educational_attainment_id,
                    'monthly_salary' => $request->monthly_salary,
                    'occupation' => $request->occupation,
                    'other_skills' => $request->other_skills,
                ],
                'family_members' => $request->family_members ?? [],
                'target_sectors' => $request->target_sectors ?? [],
                'sub_categories' => $request->sub_categories ?? [],
            ];

            // Determine status
            $status = $isDraft ? 'Draft' : 'For Verification';

            // Create application (NO senior_citizen created yet!)
            $application = Application::create([
                'application_number' => $applicationNumber,
                'senior_id' => null, // Will be set when approved
                'application_type_id' => $request->application_type_id ?? 1,
                'status' => $status,
                'submitted_by' => $user->id,
                'submission_date' => $isDraft ? null : now(),
                'applicant_data' => $applicantData,
                'notes' => null,
            ]);

            DB::commit();

            $successMessage = $isDraft 
                ? 'Application saved as draft successfully' 
                : 'Application submitted for verification';

            return response()->json([
                'success' => true,
                'message' => $successMessage,
                'data' => [
                    'application_id' => $application->id,
                    'application_number' => $applicationNumber,
                    'status' => $status,
                ],
            ], 201);

        } catch (\Exception $e) {
            DB::rollBack();
            
            return response()->json([
                'success' => false,
                'message' => 'Failed to submit application: ' . $e->getMessage(),
                'error' => config('app.debug') ? $e->getMessage() : 'An error occurred.',
            ], 500);
        }
    }

    /**
     * Get application for editing.
     */
    public function show($id)
    {
        $application = Application::with(['applicationType'])->findOrFail($id);
        
        return response()->json([
            'success' => true,
            'data' => [
                'id' => $application->id,
                'application_number' => $application->application_number,
                'status' => $application->status,
                'applicant_data' => $application->applicant_data,
                'application_type_id' => $application->application_type_id,
                'submission_date' => $application->submission_date,
                'is_editable' => $application->isEditable(),
            ],
        ]);
    }

    /**
     * Update an existing draft application.
     */
    public function update(Request $request, $id)
    {
        $application = Application::findOrFail($id);
        
        // Only allow editing Draft/Pending applications
        if (!$application->isEditable()) {
            return response()->json([
                'success' => false,
                'message' => 'This application cannot be edited.',
            ], 403);
        }

        $isDraft = $request->boolean('save_as_draft', false);
        
        $messages = [
            'first_name.required' => 'First name is required.',
            'last_name.required' => 'Last name is required.',
            'birthdate.required' => 'Date of birth is required.',
            'gender_id.required' => 'Sex is required.',
            'barangay_id.required' => 'Barangay is required.',
        ];
        
        $rules = [
            'save_as_draft' => 'nullable|boolean',
            'first_name' => 'required|string|max:100',
            'middle_name' => 'nullable|string|max:100',
            'last_name' => 'required|string|max:100',
            'extension' => 'nullable|string|max:20',
            'birthdate' => 'required|date',
            'gender_id' => 'required|exists:genders,id',
            'barangay_id' => 'required|exists:barangays,id',
            'house_number' => 'nullable|string|max:100',
            'street' => 'nullable|string|max:255',
            'mobile_number' => 'nullable|string|max:20',
            'telephone_number' => 'nullable|string|max:20',
            'educational_attainment_id' => 'nullable|integer',
            'monthly_salary' => 'nullable|numeric',
            'occupation' => 'nullable|string|max:200',
            'other_skills' => 'nullable|string|max:500',
            'family_members' => 'nullable|array',
            'target_sectors' => 'nullable|array',
            'sub_categories' => 'nullable|array',
        ];

        $request->validate($rules, $messages);

        try {
            // Build updated applicant_data
            $applicantData = [
                'personal_info' => [
                    'first_name' => $request->first_name,
                    'middle_name' => $request->middle_name,
                    'last_name' => $request->last_name,
                    'extension' => $request->extension,
                    'birthdate' => $request->birthdate,
                    'gender_id' => $request->gender_id,
                    'barangay_id' => $request->barangay_id,
                ],
                'contact_info' => [
                    'house_number' => $request->house_number,
                    'street' => $request->street,
                    'mobile_number' => $request->mobile_number,
                    'telephone_number' => $request->telephone_number,
                ],
                'background_info' => [
                    'educational_attainment_id' => $request->educational_attainment_id,
                    'monthly_salary' => $request->monthly_salary,
                    'occupation' => $request->occupation,
                    'other_skills' => $request->other_skills,
                ],
                'family_members' => $request->family_members ?? [],
                'target_sectors' => $request->target_sectors ?? [],
                'sub_categories' => $request->sub_categories ?? [],
            ];

            $status = $isDraft ? 'Draft' : 'For Verification';

            $application->update([
                'applicant_data' => $applicantData,
                'status' => $status,
                'submission_date' => $isDraft ? null : now(),
            ]);

            $successMessage = $isDraft 
                ? 'Draft updated successfully' 
                : 'Application submitted for verification';

            return response()->json([
                'success' => true,
                'message' => $successMessage,
                'data' => [
                    'application_id' => $application->id,
                    'application_number' => $application->application_number,
                    'status' => $status,
                ],
            ]);

        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to update application: ' . $e->getMessage(),
            ], 500);
        }
    }

    /**
     * Upload document for an application.
     */
    public function uploadDocument(Request $request)
    {
        // Document type IDs: 1=Birth Certificate, 2=Barangay Cert, 3=COMELEC, 4=Photo
        $request->validate([
            'application_id' => 'required|exists:applications,id',
            'document_type_id' => 'required|integer|in:1,2,3,4',
            'file' => 'required|file|max:5120|mimes:jpg,jpeg,png,pdf',
        ]);

        try {
            $file = $request->file('file');
            $application = Application::findOrFail($request->application_id);

            // Generate unique filename
            $extension = $file->getClientOriginalExtension();
            $filename = time() . '_' . uniqid() . '.' . $extension;
            
            // Store file in public/uploads/applications/{app_id}/
            $path = $file->storeAs(
                'uploads/applications/' . $application->id,
                $filename,
                'public'
            );

            // Remove existing document of same type (replace)
            DB::table('application_documents')
                ->where('application_id', $application->id)
                ->where('document_type_id', $request->document_type_id)
                ->delete();

            // Store in application_documents table
            $documentId = DB::table('application_documents')->insertGetId([
                'application_id' => $application->id,
                'document_type_id' => $request->document_type_id,
                'file_path' => $path,
                'original_filename' => $file->getClientOriginalName(),
                'file_size' => $file->getSize(),
                'uploaded_by' => $request->user()->id,
                'uploaded_at' => now(),
            ]);

            return response()->json([
                'success' => true,
                'message' => 'Document uploaded successfully',
                'data' => [
                    'id' => $documentId,
                    'document_type_id' => $request->document_type_id,
                    'file_path' => $path,
                    'original_filename' => $file->getClientOriginalName(),
                    'url' => asset('storage/' . $path),
                ],
            ]);

        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to upload document: ' . $e->getMessage(),
            ], 500);
        }
    }

    /**
     * Delete a document.
     */
    public function deleteDocument(Request $request, $documentId)
    {
        try {
            $document = DB::table('application_documents')->find($documentId);
            
            if (!$document) {
                return response()->json(['success' => false, 'message' => 'Document not found'], 404);
            }

            // Delete file from storage
            Storage::disk('public')->delete($document->file_path);
            
            // Delete record
            DB::table('application_documents')->where('id', $documentId)->delete();

            return response()->json([
                'success' => true,
                'message' => 'Document deleted successfully',
            ]);

        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to delete document',
            ], 500);
        }
    }

    /**
     * Get documents for an application.
     */
    public function getDocuments($applicationId)
    {
        $documents = DB::table('application_documents')
            ->where('application_id', $applicationId)
            ->get()
            ->map(function ($doc) {
                $doc->url = asset('storage/' . $doc->file_path);
                return $doc;
            });

        return response()->json([
            'success' => true,
            'data' => $documents,
        ]);
    }
}
