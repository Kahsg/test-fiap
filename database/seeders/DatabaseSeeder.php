<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $this->call([
            TurmaTiposSeeder::class,
            TurmaSeeder::class,
            AlunoSeeder::class,
            MatriculaSeeder::class,
        ]);
    }
}
