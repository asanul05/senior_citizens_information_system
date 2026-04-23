<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        if (Schema::hasTable('payout_events')) {
            return;
        }

        Schema::create('payout_events', function (Blueprint $table) {
            $table->id();
            $table->foreignId('benefit_type_id')->constrained('benefit_types')->onDelete('cascade');
            $table->string('reference_code')->unique();
            $table->string('title');
            $table->dateTime('scheduled_at');
            $table->string('status', 20)->default('draft');
            $table->string('location_type', 20)->default('branch');
            $table->unsignedBigInteger('branch_id')->nullable();
            $table->string('location_name')->nullable();
            $table->string('location_address')->nullable();
            $table->text('notes')->nullable();
            $table->unsignedBigInteger('created_by')->nullable();
            $table->unsignedBigInteger('updated_by')->nullable();
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('payout_events');
    }
};
