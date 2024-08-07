<?php

namespace App\Http\Controllers\Matriculas;

use App\Http\Controllers\Controller;
use App\Models\Aluno;
use App\Models\Matricula;
use App\Models\Turma;

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
    $alunos = Aluno::orderBy('nome')
      ->get();

    $turmas = Turma::with('turma_tipo')
      ->orderBy('nome')
      ->get();

    return view('matriculas.create', [
      'alunos' => $alunos,
      'turmas' => $turmas,
    ]);
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
