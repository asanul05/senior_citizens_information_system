<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('deceased_reports', function (Blueprint $table) {
            // Death Location 
            $table->string('death_country', 100)->nullable()->default('Philippines')->after('place_of_death');
            $table->string('death_province', 100)->nullable()->after('death_country');
            $table->string('death_city', 100)->nullable()->after('death_province');
            $table->string('death_barangay', 100)->nullable()->after('death_city');
            $table->string('death_location_type', 50)->nullable()->after('death_barangay'); // hospital, residence, nursing_home, public_place, other
            $table->string('death_location_type_other', 255)->nullable()->after('death_location_type');

            // Death Certificate Info 
            $table->string('certificate_number', 100)->nullable()->after('death_certificate_path');
            $table->string('registry_number', 100)->nullable()->after('certificate_number');
            $table->date('date_registered')->nullable()->after('registry_number');
            $table->string('registered_at', 50)->nullable()->after('date_registered'); // lcro, psa
            $table->string('certificate_issued_by', 255)->nullable()->after('registered_at');
            $table->date('certificate_issue_date')->nullable()->after('certificate_issued_by');

            // Supporting Documents 
            $table->string('supporting_doc_path', 500)->nullable()->after('certificate_issue_date');
            $table->string('supporting_doc_type', 50)->nullable()->after('supporting_doc_path'); // burial_permit, hospital_cert, barangay_cert, funeral_doc, other

            // Reporter address 
            $table->text('reporter_address')->nullable()->after('reporter_email');
            $table->string('relationship_other', 100)->nullable()->after('relationship_to_deceased');

            // Burial / Funeral Info 
            $table->date('burial_date')->nullable()->after('supporting_doc_type');
            $table->string('burial_location', 255)->nullable()->after('burial_date');
            $table->string('cemetery_name', 255)->nullable()->after('burial_location');
            $table->string('funeral_service_provider', 255)->nullable()->after('cemetery_name');
        });
    }

    public function down(): void
    {
        Schema::table('deceased_reports', function (Blueprint $table) {
            $table->dropColumn([
                'death_country', 'death_province', 'death_city', 'death_barangay',
                'death_location_type', 'death_location_type_other',
                'certificate_number', 'registry_number', 'date_registered',
                'registered_at', 'certificate_issued_by', 'certificate_issue_date',
                'supporting_doc_path', 'supporting_doc_type',
                'reporter_address', 'relationship_other',
                'burial_date', 'burial_location', 'cemetery_name', 'funeral_service_provider',
            ]);
        });
    }
};
