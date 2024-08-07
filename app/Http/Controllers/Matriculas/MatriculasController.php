<?php

namespace App\Http\Controllers\Matriculas;

use App\Http\Controllers\Controller;
use App\Models\Matricula;

class MatriculasController extends Controller
{

  public function index()
  {
    $matriculas = Matricula::with(['aluno', 'turma.turma_tipo'])
      ->orderBy('turma.nome')
      ->paginate(5);

    return view('matriculas.index', [
      'matriculas' => $matriculas,
    ]);
  }

  public function create()
  {
    //
  }

  public function store()
  {
    //
  }

  public function view()
  {
    //
  }
}
