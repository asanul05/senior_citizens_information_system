<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('senior_name_change_histories', function (Blueprint $table) {
            $table->id();
            $table->integer('senior_id')->unsigned(false);
            $table->string('old_first_name', 100);
            $table->string('old_middle_name', 100)->nullable();
            $table->string('old_last_name', 100);
            $table->string('old_extension', 20)->nullable();
            $table->string('new_first_name', 100);
            $table->string('new_middle_name', 100)->nullable();
            $table->string('new_last_name', 100);
            $table->string('new_extension', 20)->nullable();
            $table->string('reason_type', 50);
            $table->text('reason_details')->nullable();
            $table->string('supporting_document_path', 500)->nullable();
            $table->string('status', 20)->default('pending');
            $table->integer('changed_by')->nullable();
            $table->timestamp('changed_at');
            $table->integer('approved_by')->nullable();
            $table->timestamp('approved_at')->nullable();
            $table->text('decision_notes')->nullable();
            $table->timestamps();

            $table->foreign('senior_id')->references('id')->on('senior_citizens')->onDelete('cascade');
            $table->foreign('changed_by')->references('id')->on('admin_users')->onDelete('set null');
            $table->foreign('approved_by')->references('id')->on('admin_users')->onDelete('set null');

            $table->index(['senior_id', 'changed_at'], 'snch_senior_changed_at_idx');
            $table->index(['status', 'changed_at'], 'snch_status_changed_at_idx');
            $table->index('changed_by', 'snch_changed_by_idx');
            $table->index('approved_by', 'snch_approved_by_idx');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('senior_name_change_histories');
    }
};
