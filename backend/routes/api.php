<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\Api\DashboardController;
use App\Http\Controllers\Api\SeniorController;
use App\Http\Controllers\Api\ApplicationController;
use App\Http\Controllers\Api\IdPrintingController;
use App\Http\Controllers\Api\AnnouncementController;
use App\Http\Controllers\Api\RegistrationController;
use App\Http\Controllers\Api\PreRegistrationController;
use App\Http\Controllers\PublicController;
use App\Http\Controllers\SeniorAuthController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group.
|
*/

// ===========================
// PUBLIC ROUTES (No Auth Required)
// ===========================
// Note: CORS is handled by App\Http\Middleware\HandleCors

Route::post('/login', [AuthController::class, 'login']);

// Public Online Application
Route::prefix('public')->group(function () {
    Route::get('/barangays', [PublicController::class, 'barangays']);
    Route::post('/apply', [PublicController::class, 'apply']);
    Route::get('/status/{referenceNumber}', [PublicController::class, 'checkStatus']);
});

// Senior Portal Authentication (public - no auth required)
Route::prefix('senior')->group(function () {
    Route::post('/request-otp', [SeniorAuthController::class, 'requestOtp']);
    Route::post('/verify-otp', [SeniorAuthController::class, 'verifyOtp']);
    Route::post('/login', [SeniorAuthController::class, 'loginWithPin']);
    Route::get('/profile', [SeniorAuthController::class, 'profile']);
    Route::get('/benefits', [SeniorAuthController::class, 'benefits']);
});

// Protected routes
Route::middleware('auth:sanctum')->group(function () {
    // Auth
    Route::post('/logout', [AuthController::class, 'logout']);
    Route::get('/me', [AuthController::class, 'me']);

    // Dashboard
    Route::get('/dashboard/stats', [DashboardController::class, 'stats']);
    Route::get('/dashboard/upcoming-events', [DashboardController::class, 'upcomingEvents']);
    Route::get('/dashboard/age-distribution', [DashboardController::class, 'ageDistribution']);
    Route::get('/dashboard/gender-distribution', [DashboardController::class, 'genderDistribution']);

    // Seniors
    Route::get('/seniors', [SeniorController::class, 'index']);
    Route::get('/seniors/statistics', [SeniorController::class, 'statistics']);
    Route::get('/seniors/export', [SeniorController::class, 'export']);
    Route::get('/seniors/{id}', [SeniorController::class, 'show']);

    // Applications
    Route::get('/applications', [ApplicationController::class, 'index']);
    Route::get('/applications/statistics', [ApplicationController::class, 'statistics']);
    Route::get('/applications/{id}', [ApplicationController::class, 'show']);
    Route::patch('/applications/{id}/status', [ApplicationController::class, 'updateStatus']);

    // ID Printing
    Route::get('/id-printing', [IdPrintingController::class, 'index']);
    Route::get('/id-printing/statistics', [IdPrintingController::class, 'statistics']);
    Route::get('/id-printing/available-seniors', [IdPrintingController::class, 'getAvailableSeniors']);
    Route::post('/id-printing/add', [IdPrintingController::class, 'addToQueue']);
    Route::get('/id-printing/{id}/card-data', [IdPrintingController::class, 'getIdCardData']);
    Route::post('/id-printing/batch-card-data', [IdPrintingController::class, 'getBatchCardData']);
    Route::patch('/id-printing/{id}/status', [IdPrintingController::class, 'updateStatus']);
    Route::post('/id-printing/bulk-print', [IdPrintingController::class, 'bulkPrint']);
    Route::post('/id-printing/bulk-claim', [IdPrintingController::class, 'bulkClaim']);

    // Announcements
    Route::get('/announcements', [AnnouncementController::class, 'index']);
    Route::get('/announcements/types', [AnnouncementController::class, 'types']);
    Route::get('/announcements/{id}', [AnnouncementController::class, 'show']);
    Route::post('/announcements', [AnnouncementController::class, 'store']);
    Route::put('/announcements/{id}', [AnnouncementController::class, 'update']);
    Route::delete('/announcements/{id}', [AnnouncementController::class, 'destroy']);

    // Registration
    Route::prefix('registration')->group(function () {
        Route::get('/lookup-options', [RegistrationController::class, 'lookupOptions']);
        Route::get('/barangays', [RegistrationController::class, 'barangays']);
        Route::post('/check-duplicate', [RegistrationController::class, 'checkDuplicate']);
        Route::post('/new', [RegistrationController::class, 'store']);
        Route::get('/{id}', [RegistrationController::class, 'show']);
        Route::put('/{id}', [RegistrationController::class, 'update']);
        Route::post('/upload-document', [RegistrationController::class, 'uploadDocument']);
        Route::delete('/document/{id}', [RegistrationController::class, 'deleteDocument']);
        Route::get('/{id}/documents', [RegistrationController::class, 'getDocuments']);
    });

    // Benefits Module (PRD 4.3)
    Route::prefix('benefits')->group(function () {
        Route::get('/types', [\App\Http\Controllers\Api\BenefitController::class, 'types']);
        Route::get('/claims', [\App\Http\Controllers\Api\BenefitController::class, 'index']);
        Route::get('/claims/export', [\App\Http\Controllers\Api\BenefitController::class, 'exportClaims']);
        Route::get('/eligible', [\App\Http\Controllers\Api\BenefitController::class, 'eligible']);
        Route::get('/statistics', [\App\Http\Controllers\Api\BenefitController::class, 'statistics']);
        Route::post('/claims', [\App\Http\Controllers\Api\BenefitController::class, 'store']);
        Route::patch('/claims/{id}/status', [\App\Http\Controllers\Api\BenefitController::class, 'updateStatus']);
    });

    // Get benefit claims for a specific senior
    Route::get('/seniors/{id}/benefits', [\App\Http\Controllers\Api\BenefitController::class, 'seniorClaims']);

    // Pre-registrations (online applications)
    Route::prefix('pre-registrations')->group(function () {
        Route::get('/', [PreRegistrationController::class, 'index']);
        Route::get('/statistics', [PreRegistrationController::class, 'statistics']);
        Route::get('/{id}', [PreRegistrationController::class, 'show']);
        Route::post('/{id}/mark-review', [PreRegistrationController::class, 'markUnderReview']);
        Route::post('/{id}/fo-review', [PreRegistrationController::class, 'foReview']);
        // Convert to application (available to FO and Main Admin)
        Route::post('/{id}/convert', [PreRegistrationController::class, 'convert']);
        Route::post('/{id}/complete-conversion', [PreRegistrationController::class, 'completeConversion']);
    });

    // Main Admin only routes (role_id = 1)
    Route::middleware('role:1')->group(function () {
        // Pre-registration main review (for rejecting)
        Route::post('/pre-registrations/{id}/main-review', [PreRegistrationController::class, 'mainReview']);
    });

    // Main Admin and Branch Admin routes (role_id = 1 or 2)
    Route::middleware('role:1,2')->group(function () {
        // Senior registration approval will go here
    });
});
