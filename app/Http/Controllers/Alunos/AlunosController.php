<?php

namespace App\Http\Controllers\Alunos;

use App\Http\Controllers\Controller;
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
}
