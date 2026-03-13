<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('senior_ids', function (Blueprint $table) {
            if (Schema::hasColumn('senior_ids', 'expiry_date')) {
                $table->dropColumn('expiry_date');
            }
        });
    }

    public function down(): void
    {
        Schema::table('senior_ids', function (Blueprint $table) {
            if (!Schema::hasColumn('senior_ids', 'expiry_date')) {
                $table->date('expiry_date')->nullable()->after('issue_date');
            }
        });
    }
};
