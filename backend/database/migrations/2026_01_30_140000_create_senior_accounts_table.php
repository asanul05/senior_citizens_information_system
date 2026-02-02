<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        // Skip if table already exists
        if (Schema::hasTable('senior_accounts')) {
            return;
        }

        Schema::create('senior_accounts', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('senior_id')->unique();
            $table->string('phone_number', 20);
            $table->string('pin_hash', 255)->nullable(); // PIN will be hashed
            $table->string('otp_code', 6)->nullable();
            $table->timestamp('otp_expires_at')->nullable();
            $table->boolean('is_verified')->default(false);
            $table->timestamp('last_login')->nullable();
            $table->integer('failed_attempts')->default(0);
            $table->timestamp('locked_until')->nullable();
            $table->timestamps();
            
            // Indexes
            $table->index('phone_number');
            $table->index('senior_id');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('senior_accounts');
    }
};
