@extends('layouts.master-layout')
@section('title')
    Adição de aluno
@endsection

@section('content')
<div class="row m-4">
    <div class="d-flex justify-content-between">
        <div class="p-2 page-title">
            <h3>Cadastro de Aluno</h3>
        </div>
        <div class="p-2 page-button">
            <a href="{{ route('alunos.index')}}" type="button" class="btn btn-outline-standard"><i class="fas fa-angles-left"></i> Voltar</a>
        </div>
    </div>
</div>
<div class="row m-3 d-flex justify-content-center">
    <div class="col-10">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body pb-0">
                        <form class="mb-10" method="POST">
                            @csrf
                            <div class="row">
                                <div class="form-group col-12 mt-2">
                                    <label for="nome" class="list-label">Nome do aluno:</label>
                                    <input type="text" minlength="3" class="form-control" name="nome" placeholder="Ex.:João da Silva" required>
                                </div>
                                <div class="form-group col-6 mt-2">
                                    <label for="nascimento" class="list-label">Data de nascimento:</label>
                                    <input type="date" class="form-control" name="nascimento" required>
                                </div>
                                <div class="form-group col-6 mt-2">
                                    <label for="usuario" class="list-label">Usuário:</label>
                                    <input type="text" class="form-control" name="usuario" value="" placeholder="J.silva" required>
                                </div>
                            </div>
                            <div class="d-flex justify-content-end mt-5 mb-5">
                                <button type="button" class="btn btn-outline-standard">Gravar</button>
                            </div>
                          </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection