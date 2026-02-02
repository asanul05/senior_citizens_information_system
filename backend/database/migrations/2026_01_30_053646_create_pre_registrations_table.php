<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        // Skip if table already exists
        if (Schema::hasTable('pre_registrations')) {
            return;
        }

        Schema::create('pre_registrations', function (Blueprint $table) {
            $table->id();
            $table->string('reference_number', 20)->unique(); // PRE-20260130-1234
            
            // Applicant data (same structure as applications.applicant_data)
            $table->json('applicant_data');
            
            // Location assignment
            $table->unsignedBigInteger('barangay_id');
            
            // Workflow status (pending, fo_review, fo_verified, main_review, approved, rejected, converted)
            $table->string('status', 20)->default('pending');
            
            // Tracking fields (nullable integers - no strict FK for flexibility)
            $table->unsignedBigInteger('fo_reviewed_by')->nullable();
            $table->timestamp('fo_reviewed_at')->nullable();
            $table->unsignedBigInteger('main_reviewed_by')->nullable();
            $table->timestamp('main_reviewed_at')->nullable();
            
            // Notes and rejection reason
            $table->text('notes')->nullable();
            $table->text('rejection_reason')->nullable();
            
            // Link to converted application
            $table->unsignedBigInteger('application_id')->nullable();
            
            $table->timestamps();
            
            // Indexes
            $table->index(['status', 'barangay_id']);
            $table->index('created_at');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pre_registrations');
    }
};
