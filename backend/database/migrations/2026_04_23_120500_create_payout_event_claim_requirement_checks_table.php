<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        if (Schema::hasTable('payout_event_claim_requirement_checks')) {
            return;
        }

        Schema::create('payout_event_claim_requirement_checks', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('payout_event_claim_id');
            $table->unsignedBigInteger('benefit_payout_requirement_id');
            $table->string('status', 20)->default('missing');
            $table->text('remarks')->nullable();
            $table->unsignedBigInteger('checked_by')->nullable();
            $table->timestamp('checked_at')->nullable();
            $table->timestamps();

            $table->foreign('payout_event_claim_id', 'pecrc_event_claim_fk')
                ->references('id')
                ->on('payout_event_claims')
                ->onDelete('cascade');
            $table->foreign('benefit_payout_requirement_id', 'pecrc_requirement_fk')
                ->references('id')
                ->on('benefit_payout_requirements')
                ->onDelete('cascade');
            $table->unique(['payout_event_claim_id', 'benefit_payout_requirement_id'], 'unique_event_claim_requirement');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('payout_event_claim_requirement_checks');
    }
};
