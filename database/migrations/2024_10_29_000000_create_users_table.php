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
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('nip');
            $table->string('nama', 100);
            $table->string('password');
            $table->string('telepon', 15);
            $table->enum('jenis_kelamin', ['laki-laki', 'perempuan']);
            $table->text('alamat')->nullable();
            $table->string('foto')->default('avatar.png');
            $table->enum('status', ['aktif', 'nonaktif']);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('users');
    }
};
