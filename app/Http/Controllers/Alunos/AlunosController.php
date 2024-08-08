<?php

namespace App\Http\Controllers\Alunos;

use App\Actions\Alunos\AlunosActions;
use App\Http\Controllers\Controller;
use App\Http\Requests\Alunos\AlunosStoreRequest;
use App\Http\Requests\Alunos\AlunosUpdateRequest;
use App\Models\Aluno;
use Illuminate\Http\Request;

class AlunosController extends Controller
{

  public function index(Request $request)
  {
    $search = $request->get('utm-search');

    $alunos = Aluno::when(!empty($search), function ($q) use ($search) {
      $searchArray = explode('/', $search);
      $is_date = implode('-', array_reverse($searchArray));

      $q->where(function ($a) use ($search, $is_date) {
        $a->orWhere('nome', 'like', '%' . $search . '%');
        $a->orWhere('usuario', 'like', '%' . $search . '%');
        $a->orWhere('nascimento', 'like', '%' . $is_date . '%');
        $a->orWhere('created_at', 'like', '%' . $is_date . '%');
      });
    })
      ->orderBy('nome')
      ->paginate(5);

    return view('alunos.index', [
      'alunos' => $alunos,
      'search' => $search
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

    return redirect()->route('alunos.index')->with('message', 'Aluno adicionado com sucesso!');
  }

  public function edit($uuid)
  {
    $aluno = Aluno::where('uuid', $uuid)
      ->firstOrFail();

    return view('alunos.edit', [
      'aluno' => $aluno,
    ]);
  }

  public function update(AlunosUpdateRequest $request, AlunosActions $action, $uuid)
  {
    $validated = $request->validated();

    $action->update($validated, $uuid);

    return redirect()->route('alunos.index')->with('message', 'Cadastro atualizado com sucesso!');
  }

  public function delete(AlunosActions $action, $uuid)
  {
    $action->delete($uuid);

    return redirect()->route('alunos.index')->with('message', 'Aluno excluído com sucesso!');
  }
}
