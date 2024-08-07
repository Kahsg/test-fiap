<?php

namespace App\Http\Controllers\Turmas;

use App\Http\Controllers\Controller;
use App\Models\Turma;

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
    //
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
