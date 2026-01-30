<?php

namespace App\Http\Controllers;

use App\Models\Barangay;
use App\Models\PreRegistration;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\Validator;

class PublicController extends Controller
{
    /**
     * Get barangays list for public form
     */
    public function barangays(): JsonResponse
    {
        $barangays = Barangay::orderBy('name')->get(['id', 'name']);
        return response()->json(['data' => $barangays]);
    }

    /**
     * Submit online application (pre-registration)
     */
    public function apply(Request $request): JsonResponse
    {
        $validator = Validator::make($request->all(), [
            'barangay_id' => 'required|exists:barangays,id',
            'first_name' => 'required|string|max:100',
            'middle_name' => 'nullable|string|max:100',
            'last_name' => 'required|string|max:100',
            'suffix' => 'nullable|string|max:10',
            'birthdate' => 'required|date|before:-60 years',
            'sex' => 'required|in:male,female',
            'civil_status' => 'required|in:single,married,widowed,separated,divorced',
            'contact_number' => 'required|string|max:20',
            'email' => 'nullable|email|max:100',
            'address' => 'required|string|max:255',
            'emergency_contact_name' => 'nullable|string|max:100',
            'emergency_contact_number' => 'nullable|string|max:20',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'message' => 'Validation failed',
                'errors' => $validator->errors()
            ], 422);
        }

        // Normalize names for comparison (lowercase, trim)
        $firstName = strtolower(trim($request->first_name));
        $lastName = strtolower(trim($request->last_name));
        $birthdate = $request->birthdate;

        // Check for duplicate in existing Senior Citizens (already registered)
        $existingSenior = \App\Models\SeniorCitizen::whereRaw('LOWER(TRIM(first_name)) = ?', [$firstName])
            ->whereRaw('LOWER(TRIM(last_name)) = ?', [$lastName])
            ->whereDate('birthdate', $birthdate)
            ->first();

        if ($existingSenior) {
            return response()->json([
                'message' => 'You are already registered as a Senior Citizen.',
                'osca_id' => $existingSenior->osca_id,
                'action' => 'already_registered',
            ], 409);
        }

        // Check for duplicate pre-registration (pending/in-review applications)
        $existingPreReg = PreRegistration::where('status', '!=', 'rejected')
            ->where('status', '!=', 'converted')
            ->whereRaw("LOWER(TRIM(JSON_UNQUOTE(JSON_EXTRACT(applicant_data, '$.first_name')))) = ?", [$firstName])
            ->whereRaw("LOWER(TRIM(JSON_UNQUOTE(JSON_EXTRACT(applicant_data, '$.last_name')))) = ?", [$lastName])
            ->whereRaw("JSON_UNQUOTE(JSON_EXTRACT(applicant_data, '$.birthdate')) = ?", [$birthdate])
            ->first();

        if ($existingPreReg) {
            return response()->json([
                'message' => 'An application with this information already exists.',
                'reference_number' => $existingPreReg->reference_number,
                'status' => $existingPreReg->status,
                'action' => 'existing_application',
            ], 409);
        }

        // Create pre-registration
        $preRegistration = PreRegistration::create([
            'reference_number' => PreRegistration::generateReferenceNumber(),
            'barangay_id' => $request->barangay_id,
            'applicant_data' => [
                'first_name' => $request->first_name,
                'middle_name' => $request->middle_name,
                'last_name' => $request->last_name,
                'suffix' => $request->suffix,
                'birthdate' => $request->birthdate,
                'sex' => $request->sex,
                'civil_status' => $request->civil_status,
                'contact_number' => $request->contact_number,
                'email' => $request->email,
                'address' => $request->address,
                'emergency_contact_name' => $request->emergency_contact_name,
                'emergency_contact_number' => $request->emergency_contact_number,
            ],
            'status' => PreRegistration::STATUS_PENDING,
        ]);

        return response()->json([
            'message' => 'Application submitted successfully',
            'reference_number' => $preRegistration->reference_number,
            'status' => $preRegistration->status,
            'next_steps' => 'Your application will be reviewed by the Branch/FO Admin. You can track your application status using your reference number.',
        ], 201);
    }

    /**
     * Check application status by reference number
     */
    public function checkStatus(string $referenceNumber): JsonResponse
    {
        $preRegistration = PreRegistration::with('barangay')
            ->where('reference_number', $referenceNumber)
            ->first();

        if (!$preRegistration) {
            return response()->json([
                'message' => 'Application not found. Please check your reference number.'
            ], 404);
        }

        return response()->json([
            'data' => [
                'reference_number' => $preRegistration->reference_number,
                'status' => $preRegistration->status,
                'status_label' => $preRegistration->status_label,
                'barangay' => $preRegistration->barangay->name ?? null,
                'applicant_name' => sprintf(
                    '%s %s',
                    $preRegistration->applicant_data['first_name'] ?? '',
                    $preRegistration->applicant_data['last_name'] ?? ''
                ),
                'submitted_at' => $preRegistration->created_at->format('M d, Y h:i A'),
                'fo_reviewed_at' => $preRegistration->fo_reviewed_at?->format('M d, Y h:i A'),
                'main_reviewed_at' => $preRegistration->main_reviewed_at?->format('M d, Y h:i A'),
                'rejection_reason' => $preRegistration->rejection_reason,
                'notes' => $preRegistration->notes,
            ]
        ]);
    }
}
