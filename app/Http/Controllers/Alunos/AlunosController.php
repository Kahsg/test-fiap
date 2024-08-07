<?php

namespace App\Http\Controllers\Alunos;

use App\Actions\Alunos\AlunosActions;
use App\Http\Controllers\Controller;
use App\Http\Requests\Alunos\AlunosStoreRequest;
use App\Models\Aluno;
use Illuminate\Http\Request;

class AlunosController extends Controller
{

  public function index(Request $request)
  {
    $alunos = Aluno::orderBy('nome')
      ->paginate(5);

    return view('alunos.index', [
      'alunos' => $alunos,
    ]);
  }

  public function create()
  {
    return view('alunos.create', []);
  }

  public function store(AlunosStoreRequest $request, AlunosActions $action)
  {
    $validated = $request->validated();

    $action->store($validated);

    return redirect()->route('alunos.index');;
  }
}
