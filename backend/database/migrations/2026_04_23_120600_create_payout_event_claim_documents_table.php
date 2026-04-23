<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        if (Schema::hasTable('payout_event_claim_documents')) {
            return;
        }

        Schema::create('payout_event_claim_documents', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('payout_event_claim_id');
            $table->string('document_category', 50);
            $table->string('file_path');
            $table->string('original_filename');
            $table->unsignedBigInteger('file_size')->nullable();
            $table->unsignedBigInteger('uploaded_by')->nullable();
            $table->timestamp('uploaded_at')->nullable();
            $table->timestamps();

            $table->foreign('payout_event_claim_id', 'pecd_event_claim_fk')
                ->references('id')
                ->on('payout_event_claims')
                ->onDelete('cascade');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('payout_event_claim_documents');
    }
};
