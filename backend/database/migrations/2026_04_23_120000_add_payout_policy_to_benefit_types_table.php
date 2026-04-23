<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('benefit_types', function (Blueprint $table) {
            if (!Schema::hasColumn('benefit_types', 'allow_representative_claim')) {
                $table->boolean('allow_representative_claim')->default(false)->after('association_mode');
            }
            if (!Schema::hasColumn('benefit_types', 'require_proof_of_life')) {
                $table->boolean('require_proof_of_life')->default(false)->after('allow_representative_claim');
            }
            if (!Schema::hasColumn('benefit_types', 'proof_of_life_type')) {
                $table->string('proof_of_life_type', 100)->nullable()->after('require_proof_of_life');
            }
            if (!Schema::hasColumn('benefit_types', 'proof_of_life_instructions')) {
                $table->text('proof_of_life_instructions')->nullable()->after('proof_of_life_type');
            }
        });
    }

    public function down(): void
    {
        Schema::table('benefit_types', function (Blueprint $table) {
            $columns = [
                'allow_representative_claim',
                'require_proof_of_life',
                'proof_of_life_type',
                'proof_of_life_instructions',
            ];

            foreach ($columns as $column) {
                if (Schema::hasColumn('benefit_types', $column)) {
                    $table->dropColumn($column);
                }
            }
        });
    }
};
