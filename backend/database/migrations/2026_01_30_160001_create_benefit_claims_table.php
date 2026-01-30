<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('benefit_claims', function (Blueprint $table) {
            $table->id();
            $table->foreignId('senior_id')->constrained('senior_citizens')->onDelete('cascade');
            $table->foreignId('benefit_type_id')->constrained('benefit_types')->onDelete('cascade');
            $table->year('claim_year');
            $table->decimal('amount', 12, 2);
            $table->enum('status', ['pending', 'approved', 'released', 'rejected'])->default('pending');
            $table->timestamp('released_at')->nullable();
            $table->foreignId('processed_by')->nullable()->constrained('users')->onDelete('set null');
            $table->text('notes')->nullable();
            $table->timestamps();

            // Unique constraint: One claim per senior per benefit type per year
            $table->unique(['senior_id', 'benefit_type_id', 'claim_year'], 'unique_benefit_claim');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('benefit_claims');
    }
};
