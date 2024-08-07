<?php

namespace App\Http\Controllers\Turmas;

use App\Http\Controllers\Controller;
use App\Models\Turma;
use App\Models\TurmaTipo;

class TurmasController extends Controller
{

  public function index()
  {
    $turmas = Turma::orderBy('nome')
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

  public function store()
  {
    //
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
