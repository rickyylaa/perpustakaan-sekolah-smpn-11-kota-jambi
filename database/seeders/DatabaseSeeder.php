<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $this->call(RoleSeeder::class);
        $this->call(UserSeeder::class);

        $this->call(KelasSeeder::class);
        $this->call(SiswaSeeder::class);

        $this->call(KategoriSeeder::class);
        $this->call(RakDanBarisSeeder::class);
        $this->call(BukuSeeder::class);
        $this->call(DendaSeeder::class);
    }
}
