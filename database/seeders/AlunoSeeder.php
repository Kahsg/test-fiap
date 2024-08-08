<?php

namespace Database\Seeders;

use App\Models\Aluno;
use Illuminate\Database\Seeder;

class AlunoSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        Aluno::factory(30)->create();
    }
}
