<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('senior_citizens', function (Blueprint $table) {
            $table->json('target_sectors')->nullable()->after('other_skills');
            $table->json('sub_categories')->nullable()->after('target_sectors');
        });
    }

    public function down(): void
    {
        Schema::table('senior_citizens', function (Blueprint $table) {
            $table->dropColumn(['target_sectors', 'sub_categories']);
        });
    }
};
