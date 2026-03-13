<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;

return new class extends Migration
{
    public function up(): void
    {
        // Get the actual index name
        $indexes = DB::select("SHOW INDEX FROM senior_ids WHERE Column_name = 'id_number' AND Non_unique = 0");
        
        Schema::table('senior_ids', function (Blueprint $table) use ($indexes) {
            foreach ($indexes as $idx) {
                $table->dropIndex($idx->Key_name);
            }
            
            // Add a regular index instead
            if (!collect(DB::select("SHOW INDEX FROM senior_ids WHERE Column_name = 'id_number'"))->count()) {
                $table->index('id_number');
            }
        });
    }

    public function down(): void
    {
        Schema::table('senior_ids', function (Blueprint $table) {
            $table->unique('id_number');
        });
    }
};
