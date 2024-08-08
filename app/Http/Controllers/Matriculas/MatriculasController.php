<?php

namespace App\Http\Controllers\Matriculas;

use App\Actions\Matriculas\MatriculasActions;
use App\Http\Controllers\Controller;
use App\Http\Requests\Matriculas\MatriculasStoreRequest;
use App\Models\Aluno;
use App\Models\Matricula;
use App\Models\Turma;
use Illuminate\Support\Facades\DB;

class MatriculasController extends Controller
{

  public function index()
  {
    $matriculas = Matricula::with([
      'aluno',
      'turma.turma_tipo',
      'turma.alunos'
    ])
      ->whereHas('turma', function ($q) {
        $q->orderBy('nome');
      })
      ->get()
      ->keyBy('turma_id');

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

  public function store(MatriculasStoreRequest $request, MatriculasActions $action)
  {
    $validated = $request->validated();

    $action->store($validated);

    return redirect()->route('matriculas.index')->with('message', 'Matrícula adicionada com sucesso!');
  }

  public function view($turma)
  {
    $matriculados = Matricula::with(['aluno', 'turma.turma_tipo'])
      ->where('turma_id', $turma)
      ->paginate(5);

    return view('matriculas.view', [
      'matriculados' => $matriculados,
    ]);
  }
}
