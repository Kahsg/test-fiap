<?php

namespace App\Actions\Alunos;

use App\Models\Aluno;
use Exception;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;

class AlunosActions
{

    public function store($input)
    {
        try {
            DB::beginTransaction();

            $input['uuid'] = Str::uuid();
            Aluno::create($input);

            DB::commit();
        } catch (\Throwable $th) {
            DB::rollBack();

            throw new Exception('Erro ao criar aluno.' . $th, 422);
        }

        return true;
    }

    public function update($input, $uuid)
    {
        try {
            DB::beginTransaction();

            $aluno = Aluno::where('uuid', $uuid)
                ->firstOrFail();

            $aluno->update($input);

            DB::commit();
        } catch (\Throwable $th) {
            DB::rollBack();

            throw new Exception('Erro ao criar aluno.' . $th, 422);
        }

        return true;
    }
}
