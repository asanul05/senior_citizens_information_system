<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('payout_events', function (Blueprint $table) {
            if (!Schema::hasColumn('payout_events', 'scheduled_from')) {
                $table->dateTime('scheduled_from')->nullable()->after('title');
            }
            if (!Schema::hasColumn('payout_events', 'scheduled_until')) {
                $table->dateTime('scheduled_until')->nullable()->after('scheduled_from');
            }
            if (!Schema::hasColumn('payout_events', 'location_latitude')) {
                $table->decimal('location_latitude', 10, 7)->nullable()->after('location_address');
            }
            if (!Schema::hasColumn('payout_events', 'location_longitude')) {
                $table->decimal('location_longitude', 10, 7)->nullable()->after('location_latitude');
            }
        });

        if (Schema::hasColumn('payout_events', 'scheduled_at')) {
            DB::table('payout_events')
                ->whereNull('scheduled_from')
                ->update([
                    'scheduled_from' => DB::raw('scheduled_at'),
                    'scheduled_until' => DB::raw('scheduled_at'),
                ]);
        }

        Schema::table('benefit_claims', function (Blueprint $table) {
            if (!Schema::hasColumn('benefit_claims', 'release_location_latitude')) {
                $table->decimal('release_location_latitude', 10, 7)->nullable()->after('release_location_address');
            }
            if (!Schema::hasColumn('benefit_claims', 'release_location_longitude')) {
                $table->decimal('release_location_longitude', 10, 7)->nullable()->after('release_location_latitude');
            }
        });
    }

    public function down(): void
    {
        Schema::table('benefit_claims', function (Blueprint $table) {
            $columns = ['release_location_latitude', 'release_location_longitude'];
            foreach ($columns as $column) {
                if (Schema::hasColumn('benefit_claims', $column)) {
                    $table->dropColumn($column);
                }
            }
        });

        Schema::table('payout_events', function (Blueprint $table) {
            $columns = ['scheduled_from', 'scheduled_until', 'location_latitude', 'location_longitude'];
            foreach ($columns as $column) {
                if (Schema::hasColumn('payout_events', $column)) {
                    $table->dropColumn($column);
                }
            }
        });
    }
};
