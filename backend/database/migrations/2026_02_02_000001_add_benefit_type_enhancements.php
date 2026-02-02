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
        // Add new columns to benefit_types table
        Schema::table('benefit_types', function (Blueprint $table) {
            // Claim interval in days (e.g., 30 = monthly, 90 = quarterly)
            // NULL or 0 means no frequency limit (besides is_one_time)
            $table->unsignedInteger('claim_interval_days')->nullable()->after('is_one_time');
            
            // Target scope: 'all' (all barangays), 'branch' (specific branch), 'barangays' (specific barangays)
            $table->enum('target_scope', ['all', 'branch', 'barangays'])->default('all')->after('claim_interval_days');
            
            // The branch this benefit is limited to (when target_scope = 'branch')
            $table->unsignedBigInteger('branch_id')->nullable()->after('target_scope');
            
            // Who created this benefit type
            $table->unsignedBigInteger('created_by')->nullable()->after('branch_id');
            
            $table->foreign('branch_id')->references('id')->on('field_offices')->onDelete('set null');
            $table->foreign('created_by')->references('id')->on('users')->onDelete('set null');
        });

        // Create pivot table for benefit type to barangays relationship
        Schema::create('benefit_type_barangays', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('benefit_type_id');
            $table->unsignedBigInteger('barangay_id');
            $table->timestamps();

            $table->foreign('benefit_type_id')->references('id')->on('benefit_types')->onDelete('cascade');
            $table->foreign('barangay_id')->references('id')->on('barangays')->onDelete('cascade');
            
            $table->unique(['benefit_type_id', 'barangay_id']);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('benefit_type_barangays');

        Schema::table('benefit_types', function (Blueprint $table) {
            $table->dropForeign(['branch_id']);
            $table->dropForeign(['created_by']);
            $table->dropColumn(['claim_interval_days', 'target_scope', 'branch_id', 'created_by']);
        });
    }
};
