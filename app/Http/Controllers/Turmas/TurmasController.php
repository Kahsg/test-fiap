<?php

namespace App\Http\Controllers\Turmas;

use App\Actions\Turmas\TurmasActions;
use App\Http\Controllers\Controller;
use App\Http\Requests\Turmas\TurmasStoreRequest;
use App\Http\Requests\Turmas\TurmasUpdateRequest;
use App\Models\Turma;
use App\Models\TurmaTipo;

class TurmasController extends Controller
{

  public function index()
  {
    $turmas = Turma::with('turma_tipo')
      ->orderBy('nome')
      ->paginate(5);

    return view('turmas.index', [
      'turmas' => $turmas,
    ]);
  }

  public function create()
  {
    $tipos = TurmaTipo::orderBy('descricao')
      ->get();

    return view('turmas.create', [
      'tipos' => $tipos,
    ]);
  }

  public function store(TurmasStoreRequest $request, TurmasActions $action)
  {
    $validated = $request->validated();

    $action->store($validated);

    return redirect()->route('turmas.index')->with('message', 'Turma adicionada com sucesso!');
  }

  public function edit($uuid)
  {
    $turma = Turma::where('uuid', $uuid)
      ->firstOrFail();

    $tipos = TurmaTipo::orderBy('descricao')
      ->get();

    return view('turmas.edit', [
      'turma' => $turma,
      'tipos' => $tipos,
    ]);
  }

  public function update(TurmasUpdateRequest $request, TurmasActions $action, $uuid)
  {
    $validated = $request->validated();

    $action->update($validated, $uuid);

    return redirect()->route('turmas.index')->with('message', 'Cadastro atualizado com sucesso!');
  }

  public function delete()
  {
    //
  }
}
