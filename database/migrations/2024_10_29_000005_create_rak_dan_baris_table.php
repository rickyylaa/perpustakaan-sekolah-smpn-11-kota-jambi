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
        Schema::create('rak_dan_baris', function (Blueprint $table) {
            $table->id();
            $table->foreignId('kategori_id')->constrained()->onDelete('cascade');
            $table->integer('rak');
            $table->integer('baris');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('rak_dan_baris');
    }
};
