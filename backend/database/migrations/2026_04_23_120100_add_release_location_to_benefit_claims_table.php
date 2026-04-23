<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('benefit_claims', function (Blueprint $table) {
            if (!Schema::hasColumn('benefit_claims', 'release_location_type')) {
                $table->string('release_location_type', 20)->nullable()->after('released_at');
            }
            if (!Schema::hasColumn('benefit_claims', 'release_branch_id')) {
                $table->unsignedBigInteger('release_branch_id')->nullable()->after('release_location_type');
            }
            if (!Schema::hasColumn('benefit_claims', 'release_location_name')) {
                $table->string('release_location_name')->nullable()->after('release_branch_id');
            }
            if (!Schema::hasColumn('benefit_claims', 'release_location_address')) {
                $table->string('release_location_address')->nullable()->after('release_location_name');
            }
        });
    }

    public function down(): void
    {
        Schema::table('benefit_claims', function (Blueprint $table) {
            $columns = [
                'release_location_type',
                'release_branch_id',
                'release_location_name',
                'release_location_address',
            ];

            foreach ($columns as $column) {
                if (Schema::hasColumn('benefit_claims', $column)) {
                    $table->dropColumn($column);
                }
            }
        });
    }
};
