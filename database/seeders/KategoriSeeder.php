<?php

namespace Database\Seeders;

use App\Models\Kategori;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class KategoriSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Kategori::create([
            'nama' => 'Bahasa'
        ]);

        Kategori::create([
            'nama' => 'Sejarah'
        ]);

        Kategori::create([
            'nama' => 'Komik'
        ]);

        Kategori::create([
            'nama' => 'Agama'
        ]);

        Kategori::create([
            'nama' => 'Romansa'
        ]);
    }
}
