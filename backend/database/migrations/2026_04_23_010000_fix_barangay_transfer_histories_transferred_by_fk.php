<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        if (!Schema::hasTable('barangay_transfer_histories')) {
            return;
        }

        $constraints = DB::table('information_schema.KEY_COLUMN_USAGE')
            ->select('CONSTRAINT_NAME')
            ->where('TABLE_SCHEMA', DB::getDatabaseName())
            ->where('TABLE_NAME', 'barangay_transfer_histories')
            ->where('COLUMN_NAME', 'transferred_by')
            ->whereNotNull('REFERENCED_TABLE_NAME')
            ->pluck('CONSTRAINT_NAME');

        foreach ($constraints as $constraint) {
            DB::statement("ALTER TABLE barangay_transfer_histories DROP FOREIGN KEY {$constraint}");
        }

        DB::statement('ALTER TABLE barangay_transfer_histories MODIFY transferred_by INT NULL');

        Schema::table('barangay_transfer_histories', function (Blueprint $table) {
            $table->foreign('transferred_by', 'bth_transferred_by_admin_user_fk')
                ->references('id')
                ->on('admin_users')
                ->onDelete('set null');
        });
    }

    public function down(): void
    {
        if (!Schema::hasTable('barangay_transfer_histories')) {
            return;
        }

        $constraints = DB::table('information_schema.KEY_COLUMN_USAGE')
            ->select('CONSTRAINT_NAME')
            ->where('TABLE_SCHEMA', DB::getDatabaseName())
            ->where('TABLE_NAME', 'barangay_transfer_histories')
            ->where('COLUMN_NAME', 'transferred_by')
            ->whereNotNull('REFERENCED_TABLE_NAME')
            ->pluck('CONSTRAINT_NAME');

        foreach ($constraints as $constraint) {
            DB::statement("ALTER TABLE barangay_transfer_histories DROP FOREIGN KEY {$constraint}");
        }

        DB::statement('ALTER TABLE barangay_transfer_histories MODIFY transferred_by BIGINT UNSIGNED NULL');

        Schema::table('barangay_transfer_histories', function (Blueprint $table) {
            $table->foreign('transferred_by', 'bth_transferred_by_users_fk')
                ->references('id')
                ->on('users')
                ->onDelete('set null');
        });
    }
};
