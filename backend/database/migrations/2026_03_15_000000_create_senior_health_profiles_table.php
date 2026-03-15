<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('senior_health_profiles', function (Blueprint $table) {
            $table->id();
            $table->integer('senior_id');
            $table->unique('senior_id');
            $table->foreign('senior_id')->references('id')->on('senior_citizens')->onDelete('cascade');

            // 35.a Medical Concern
            $table->string('blood_type', 10)->nullable();
            $table->string('physical_disability', 255)->nullable();
            $table->json('health_problems')->nullable();        
            $table->string('health_problems_other', 255)->nullable();

            // 35.b Dental Concern
            $table->json('dental_concerns')->nullable();
            $table->string('dental_concerns_other', 255)->nullable();

            // 35.c Visual Concern
            $table->json('visual_concerns')->nullable();
            $table->string('visual_concerns_other', 255)->nullable();

            // 35.d Aural/Hearing Condition
            $table->json('hearing_concerns')->nullable();
            $table->string('hearing_concerns_other', 255)->nullable();

            // 35.e Social / Emotional
            $table->json('social_emotional')->nullable();
            $table->string('social_emotional_other', 255)->nullable();

            // 35.f Area of Difficulty
            $table->json('area_of_difficulty')->nullable();

            // 36. Maintenance Medicines
            $table->text('maintenance_medicines')->nullable();

            // 37. Scheduled Checkup
            $table->boolean('has_scheduled_checkup')->nullable();
            $table->string('checkup_frequency', 50)->nullable(); 

            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('senior_health_profiles');
    }
};
