<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        // Drop existing FK if it exists (idempotent)
        try {
            Schema::table('deceased_reports', function ($table) {
                $table->dropForeign(['submitted_by']);
            });
        } catch (\Exception $e) {
            // FK may not exist
        }

        DB::statement('ALTER TABLE deceased_reports MODIFY submitted_by INT NULL');

        // Add FK pointing to admin_users (the actual auth table)
        try {
            Schema::table('deceased_reports', function ($table) {
                $table->foreign('submitted_by')->references('id')->on('admin_users')->onDelete('set null');
            });
        } catch (\Exception $e) {
            // FK may already exist
        }
    }

    public function down(): void
    {
        //
    }
};
