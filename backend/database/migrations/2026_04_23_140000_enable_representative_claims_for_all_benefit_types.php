<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        if (!Schema::hasColumn('benefit_types', 'allow_representative_claim')) {
            return;
        }

        DB::table('benefit_types')->update([
            'allow_representative_claim' => true,
        ]);

        DB::statement('ALTER TABLE benefit_types MODIFY allow_representative_claim TINYINT(1) NOT NULL DEFAULT 1');
    }

    public function down(): void
    {
        if (!Schema::hasColumn('benefit_types', 'allow_representative_claim')) {
            return;
        }

        DB::statement('ALTER TABLE benefit_types MODIFY allow_representative_claim TINYINT(1) NOT NULL DEFAULT 0');
    }
};
