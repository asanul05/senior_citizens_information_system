<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        if (Schema::hasTable('payout_event_claims')) {
            return;
        }

        Schema::create('payout_event_claims', function (Blueprint $table) {
            $table->id();
            $table->foreignId('payout_event_id')->constrained('payout_events')->onDelete('cascade');
            $table->foreignId('benefit_claim_id')->constrained('benefit_claims')->onDelete('cascade');
            $table->string('status', 20)->default('listed');
            $table->string('release_mode', 20)->nullable();
            $table->timestamp('checked_in_at')->nullable();
            $table->timestamp('released_at')->nullable();
            $table->unsignedBigInteger('released_by')->nullable();
            $table->text('remarks')->nullable();
            $table->timestamps();

            $table->unique('benefit_claim_id');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('payout_event_claims');
    }
};
