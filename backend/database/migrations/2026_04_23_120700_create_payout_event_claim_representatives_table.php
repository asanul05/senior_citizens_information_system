<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        if (Schema::hasTable('payout_event_claim_representatives')) {
            return;
        }

        Schema::create('payout_event_claim_representatives', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('payout_event_claim_id');
            $table->string('representative_mode', 30);
            $table->unsignedBigInteger('family_member_id')->nullable();
            $table->string('full_name');
            $table->string('relationship')->nullable();
            $table->string('mobile_number')->nullable();
            $table->string('address')->nullable();
            $table->string('valid_id_type')->nullable();
            $table->string('valid_id_number')->nullable();
            $table->string('authorization_basis', 50)->nullable();
            $table->text('remarks')->nullable();
            $table->timestamps();

            $table->foreign('payout_event_claim_id', 'pecr_event_claim_fk')
                ->references('id')
                ->on('payout_event_claims')
                ->onDelete('cascade');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('payout_event_claim_representatives');
    }
};
