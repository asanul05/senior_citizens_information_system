<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    // Run the migrations.
    public function up(): void
    {
        Schema::create('benefit_complaints', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('senior_id');
            $table->unsignedBigInteger('benefit_claim_id')->nullable();
            $table->string('subject');
            $table->text('message');
            $table->enum('status', ['open', 'in_review', 'resolved', 'closed'])->default('open');
            $table->text('admin_response')->nullable();
            $table->unsignedBigInteger('responded_by')->nullable();
            $table->timestamp('responded_at')->nullable();
            $table->timestamps();

            $table->foreign('senior_id')->references('id')->on('seniors')->onDelete('cascade');
            $table->foreign('benefit_claim_id')->references('id')->on('benefit_claims')->onDelete('set null');
            $table->foreign('responded_by')->references('id')->on('users')->onDelete('set null');

            $table->index('status');
            $table->index('created_at');
        });
    }

    // Reverse the migrations.
    public function down(): void
    {
        Schema::dropIfExists('benefit_complaints');
    }
};
