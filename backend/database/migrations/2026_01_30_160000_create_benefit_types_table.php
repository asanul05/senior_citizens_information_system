<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('benefit_types', function (Blueprint $table) {
            $table->id();
            $table->string('name', 100);
            $table->text('description')->nullable();
            $table->integer('min_age');
            $table->integer('max_age')->nullable(); // null = no upper limit (e.g., 100+)
            $table->decimal('amount', 12, 2)->default(0);
            $table->boolean('is_one_time')->default(true); // Can only claim once per category
            $table->boolean('is_active')->default(true);
            $table->timestamps();
        });

        // Seed initial benefit types per PRD FR-BEN-001
        DB::table('benefit_types')->insert([
            [
                'name' => 'Sexagenarian',
                'description' => 'Senior citizens aged 60-69 years old',
                'min_age' => 60,
                'max_age' => 69,
                'amount' => 0,
                'is_one_time' => true,
                'is_active' => true,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Septuagenarian',
                'description' => 'Senior citizens aged 70-79 years old',
                'min_age' => 70,
                'max_age' => 79,
                'amount' => 0,
                'is_one_time' => true,
                'is_active' => true,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Octogenarian',
                'description' => 'Senior citizens aged 80-89 years old. Entitled to ₱10,000 cash benefit.',
                'min_age' => 80,
                'max_age' => 89,
                'amount' => 10000.00,
                'is_one_time' => true,
                'is_active' => true,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Nonagenarian',
                'description' => 'Senior citizens aged 90-99 years old. Entitled to ₱10,000 cash benefit.',
                'min_age' => 90,
                'max_age' => 99,
                'amount' => 10000.00,
                'is_one_time' => true,
                'is_active' => true,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Centenarian',
                'description' => 'Senior citizens aged 100 years and above. Entitled to ₱100,000 cash benefit under RA 11982 (Expanded Centenarian Act).',
                'min_age' => 100,
                'max_age' => null,
                'amount' => 100000.00,
                'is_one_time' => true,
                'is_active' => true,
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ]);
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('benefit_types');
    }
};
