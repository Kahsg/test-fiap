<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Ramsey\Uuid\Uuid;

class MatriculaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $table = DB::table('matriculas');

        $data = [
            [
                'uuid' => Uuid::uuid4(),
                'turma_id' => 1,
                'aluno_id' => 4,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'uuid' => Uuid::uuid4(),
                'turma_id' => 1,
                'aluno_id' => 28,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'uuid' => Uuid::uuid4(),
                'turma_id' => 2,
                'aluno_id' => 21,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'uuid' => Uuid::uuid4(),
                'turma_id' => 5,
                'aluno_id' => 12,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'uuid' => Uuid::uuid4(),
                'turma_id' => 4,
                'aluno_id' => 9,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'uuid' => Uuid::uuid4(),
                'turma_id' => 8,
                'aluno_id' => 7,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'uuid' => Uuid::uuid4(),
                'turma_id' => 3,
                'aluno_id' => 5,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'uuid' => Uuid::uuid4(),
                'turma_id' => 1,
                'aluno_id' => 11,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'uuid' => Uuid::uuid4(),
                'turma_id' => 1,
                'aluno_id' => 22,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'uuid' => Uuid::uuid4(),
                'turma_id' => 4,
                'aluno_id' => 27,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'uuid' => Uuid::uuid4(),
                'turma_id' => 3,
                'aluno_id' => 6,
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ];

        $table->insert($data);
    }
}
