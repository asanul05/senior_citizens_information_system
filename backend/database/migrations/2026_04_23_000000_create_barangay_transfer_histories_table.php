<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('barangay_transfer_histories', function (Blueprint $table) {
            $table->id();
            $table->integer('senior_id')->unsigned(false);
            $table->integer('from_barangay_id')->unsigned(false);
            $table->integer('to_barangay_id')->unsigned(false);
            $table->text('transfer_reason');
            $table->string('supporting_document_path', 500)->nullable();
            $table->integer('transferred_by')->nullable();
            $table->timestamp('transferred_at');
            $table->timestamps();

            $table->foreign('senior_id')->references('id')->on('senior_citizens')->onDelete('cascade');
            $table->foreign('from_barangay_id')->references('id')->on('barangays')->onDelete('restrict');
            $table->foreign('to_barangay_id')->references('id')->on('barangays')->onDelete('restrict');
            $table->foreign('transferred_by')->references('id')->on('admin_users')->onDelete('set null');

            $table->index(['senior_id', 'transferred_at'], 'bth_senior_transferred_at_idx');
            $table->index('to_barangay_id', 'bth_to_barangay_idx');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('barangay_transfer_histories');
    }
};
