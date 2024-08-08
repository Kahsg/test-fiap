<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Ramsey\Uuid\Uuid;

class TurmaTiposSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $table = DB::table('turma_tipos');

        $data = [
            [
                'uuid' => Uuid::uuid4(),
                'descricao' => 'Graduação',
                'created_at' => '2024-08-07 00:00:00',
                'updated_at' => '2024-08-07 00:00:00',
            ],
            [
                'uuid' => Uuid::uuid4(),
                'descricao' => 'Pós Tech',
                'created_at' => '2024-08-07 00:00:00',
                'updated_at' => '2024-08-07 00:00:00',
            ],
            [
                'uuid' => Uuid::uuid4(),
                'descricao' => 'MBA',
                'created_at' => '2024-08-07 00:00:00',
                'updated_at' => '2024-08-07 00:00:00',
            ],
            [
                'uuid' => Uuid::uuid4(),
                'descricao' => 'Cursos de curta duração',
                'created_at' => '2024-08-07 00:00:00',
                'updated_at' => '2024-08-07 00:00:00',
            ],
        ];

        $table->insert($data);
    }
}
