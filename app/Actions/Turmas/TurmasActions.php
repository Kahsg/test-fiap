<?php

namespace App\Actions\Turmas;

use App\Models\Turma;
use App\Models\TurmaTipo;
use Exception;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;

class TurmasActions
{

    public function store($input)
    {
        try {
            DB::beginTransaction();

            $input['uuid'] = Str::uuid();

            //Obtém id do tipo
            $turmaTipo = TurmaTipo::where('uuid', $input['tipo'])
                ->first();

            $input['tipo'] = $turmaTipo->id;

            Turma::create($input);

            DB::commit();
        } catch (\Throwable $th) {
            DB::rollBack();

            throw new Exception('Erro ao criar turma.' . $th, 422);
        }

        return true;
    }
}
