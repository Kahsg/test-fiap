<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        User::factory()->create([
            'name' => 'Admin',
            'email' => 'admin@email.com.br',
            'password' => Hash::make('password')
        ]);

        $this->call([
            TurmaTiposSeeder::class,
            TurmaSeeder::class,
            AlunoSeeder::class,
            MatriculaSeeder::class,
        ]);
    }
}
