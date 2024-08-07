<?php

namespace App\Actions\Matriculas;

use App\Models\Aluno;
use App\Models\Matricula;
use App\Models\Turma;
use Exception;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;

class MatriculasActions
{

    public function store($input)
    {
        try {
            DB::beginTransaction();

            $input['uuid'] = Str::uuid();

            //obtém id da turma
            $turma = Turma::where('uuid', $input['turma_id'])
                ->firstOrFail();
            $input['turma_id'] = $turma->id;

            //obtém id do aluno
            $aluno = Aluno::where('uuid', $input['aluno_id'])
                ->firstOrFail();
            $input['aluno_id'] = $aluno->id;

            Matricula::create($input);

            DB::commit();
        } catch (\Throwable $th) {
            DB::rollBack();

            throw new Exception('Erro ao criar matrícula.' . $th, 422);
        }

        return true;
    }
}
