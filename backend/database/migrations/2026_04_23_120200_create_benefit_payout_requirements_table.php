<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        if (Schema::hasTable('benefit_payout_requirements')) {
            return;
        }

        Schema::create('benefit_payout_requirements', function (Blueprint $table) {
            $table->id();
            $table->foreignId('benefit_type_id')->constrained('benefit_types')->onDelete('cascade');
            $table->string('name');
            $table->text('description')->nullable();
            $table->string('category', 50)->default('identity');
            $table->boolean('is_required')->default(true);
            $table->unsignedInteger('sort_order')->default(0);
            $table->boolean('is_active')->default(true);
            $table->string('applies_when', 30)->default('both');
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('benefit_payout_requirements');
    }
};
