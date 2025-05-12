<?php

namespace Database\Seeders;

use App\Models\Buku;
use Faker\Factory as Faker;
use Illuminate\Support\Str;
use App\Models\Kategori;
use App\Models\RakDanBaris;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class BukuSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create('id_ID');

        // Ambil data rakBaris dan kategori dari database
        $rakBaris = RakDanBaris::all();

        // Buat daftar kategori ID untuk digunakan
        $kategoriMap = [];
        foreach ($rakBaris as $rak) {
            $kategoriMap[$rak->id] = $rak->kategori_id;
        }

        for ($i = 0; $i < 100; $i++) {
            $rakBarisItem = $faker->randomElement($rakBaris);
            $kategoriId = $kategoriMap[$rakBarisItem->id];

            Buku::create([
                'isbn' => $faker->isbn13,
                'judul' => $faker->sentence(3), // Judul dalam Bahasa Indonesia
                'slug' => Str::slug($faker->sentence(3)),
                'penulis' => $faker->name,
                'kategori_id' => $kategoriId,
                'rak_dan_baris_id' => $rakBarisItem->id,
                'penerbit' => $faker->company,
                'tahun_terbit' => $faker->year,
                'stok_buku' => $faker->numberBetween(1, 50),
                'deskripsi' => $faker->paragraph(4),
                'sampul' => 'sampul.png',
                'status' => 'aktif',
            ]);
        }
    }
}
