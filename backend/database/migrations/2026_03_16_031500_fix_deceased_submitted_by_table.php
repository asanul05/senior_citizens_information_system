<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        try {
            Schema::table('deceased_reports', function ($table) {
                $table->dropForeign(['submitted_by']);
            });
        } catch (\Exception $e) {
        }

        DB::statement('ALTER TABLE deceased_reports MODIFY submitted_by INT NULL');

        Schema::table('deceased_reports', function ($table) {
            $table->foreign('submitted_by')->references('id')->on('admin_users')->onDelete('set null');
        });
    }

    public function down(): void
    {
        //
    }
};
