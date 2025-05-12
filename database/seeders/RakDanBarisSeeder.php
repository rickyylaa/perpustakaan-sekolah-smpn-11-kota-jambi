<?php

namespace Database\Seeders;

use App\Models\RakDanBaris;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class RakDanBarisSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        RakDanBaris::create([
            'kategori_id' => 1,
            'rak' => 1,
            'baris' => 1,
        ]);

        RakDanBaris::create([
            'kategori_id' => 1,
            'rak' => 2,
            'baris' => 2,
        ]);

        RakDanBaris::create([
            'kategori_id' => 1,
            'rak' => 3,
            'baris' => 3,
        ]);


        RakDanBaris::create([
            'kategori_id' => 2,
            'rak' => 1,
            'baris' => 1,
        ]);

        RakDanBaris::create([
            'kategori_id' => 2,
            'rak' => 2,
            'baris' => 2,
        ]);

        RakDanBaris::create([
            'kategori_id' => 2,
            'rak' => 3,
            'baris' => 3,
        ]);


        RakDanBaris::create([
            'kategori_id' => 3,
            'rak' => 1,
            'baris' => 1,
        ]);

        RakDanBaris::create([
            'kategori_id' => 3,
            'rak' => 2,
            'baris' => 2,
        ]);

        RakDanBaris::create([
            'kategori_id' => 3,
            'rak' => 3,
            'baris' => 3,
        ]);


        RakDanBaris::create([
            'kategori_id' => 4,
            'rak' => 1,
            'baris' => 1,
        ]);

        RakDanBaris::create([
            'kategori_id' => 4,
            'rak' => 2,
            'baris' => 2,
        ]);

        RakDanBaris::create([
            'kategori_id' => 4,
            'rak' => 3,
            'baris' => 3,
        ]);


        RakDanBaris::create([
            'kategori_id' => 5,
            'rak' => 1,
            'baris' => 1,
        ]);

        RakDanBaris::create([
            'kategori_id' => 5,
            'rak' => 2,
            'baris' => 2,
        ]);

        RakDanBaris::create([
            'kategori_id' => 5,
            'rak' => 3,
            'baris' => 3,
        ]);
    }
}
