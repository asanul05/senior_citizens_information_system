<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('deceased_reports', function (Blueprint $table) {
            $table->id();

            // FK to senior_citizens
            $table->integer('senior_id')->unsigned(false);
            $table->foreign('senior_id')->references('id')->on('senior_citizens')->onDelete('cascade');

            // Death Record Details
            $table->date('date_of_death');
            $table->time('time_of_death')->nullable();
            $table->string('place_of_death', 100); 
            $table->string('facility_name', 255)->nullable();
            $table->text('cause_of_death')->nullable();

            // Person Reporting
            $table->string('reported_by', 255)->nullable(); 
            $table->string('relationship_to_deceased', 100);
            $table->string('reporter_full_name', 255);
            $table->string('reporter_contact_number', 50);
            $table->string('reporter_email', 100)->nullable();

            // Death Certificate
            $table->string('death_certificate_path', 500)->nullable();

            // Account Closure
            $table->string('id_card_status', 100); 
            $table->boolean('benefits_terminated')->default(false);

            // Metadata
            $table->unsignedBigInteger('submitted_by')->nullable();
            $table->foreign('submitted_by')->references('id')->on('users')->onDelete('set null');
            $table->enum('status', ['draft', 'submitted'])->default('submitted');
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('deceased_reports');
    }
};
