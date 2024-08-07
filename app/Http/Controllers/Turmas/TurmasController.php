<?php

namespace App\Http\Controllers\Turmas;

use App\Actions\Turmas\TurmasActions;
use App\Http\Controllers\Controller;
use App\Http\Requests\Turmas\TurmasStoreRequest;
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

  public function edit()
  {
    //
  }

  public function update()
  {
    //
  }

  public function delete()
  {
    //
  }
}
