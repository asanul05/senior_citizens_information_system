<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('senior_ids', function (Blueprint $table) {
            if (!Schema::hasColumn('senior_ids', 'is_active')) {
                $table->boolean('is_active')->default(true)->after('issue_date');
            }
        });
    }

    public function down(): void
    {
        Schema::table('senior_ids', function (Blueprint $table) {
            if (Schema::hasColumn('senior_ids', 'is_active')) {
                $table->dropColumn('is_active');
            }
        });
    }
};
