<?php

namespace Database\Seeders;

use App\Models\Turma;
use App\Models\User;
use Illuminate\Database\Seeder;

class TurmaSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $names = [
            'Administração - Presencial',
            'Administração - Online',
            'Análise e desenvolvimento de sistemas',
            'Computação em nuvem',
            'Data Science',
            'Design Digital',
            'Web Design - Presencial',
            'Web Design - Online',
        ];

        foreach ($names as $name) {
            Turma::factory()->create([
                'nome' => $name,
            ]);
        }
    }
}
