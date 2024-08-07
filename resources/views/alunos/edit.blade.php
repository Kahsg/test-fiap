@extends('layouts.master-layout')
@section('title')
    Edição de aluno
@endsection

@section('content')
<div class="row m-4">
    <div class="d-flex justify-content-between">
        <div class="p-2 page-title">
            <h3>Edição de Aluno</h3>
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
                        <form class="mb-10" action="{{ route('alunos.update', ['uuid' => $aluno->uuid]) }}" method="POST">
                            @csrf
                            <div class="row">
                                <div class="form-group col-12 mt-2">
                                    <label for="nome" class="list-label">Nome do aluno:</label>
                                    <input type="text" class="form-control @error('nome') is-invalid @enderror" name="nome" value="{{ old('nome',$aluno->nome) }}" placeholder="Ex.:João da Silva" required>
                                    @error('nome')
                                        <div class="">
                                            <p class="text-danger">{{ $message }}</p>
                                        </div>
                                    @enderror
                                </div>
                                <div class="form-group col-6 mt-2">
                                    <label for="nascimento" class="list-label">Data de nascimento:</label>
                                    <input type="date" class="form-control @error('nascimento') is-invalid @enderror" max="{{ now()->format('Y-m-d') }}" name="nascimento" value="{{ old('nascimento',$aluno->nascimento->format('Y-m-d')) }}" required>
                                    @error('nascimento')
                                        <div class="">
                                            <p class="text-danger">{{ $message }}</p>
                                        </div>
                                    @enderror
                                </div>
                                <div class="form-group col-6 mt-2">
                                    <label for="usuario" class="list-label">Usuário:</label>
                                    <input type="text" class="form-control text-lowercase @error('usuario') is-invalid @enderror" name="usuario" value="{{ old('usuario',$aluno->usuario) }}" placeholder="Ex.: jsilva" required>
                                    @error('usuario')
                                        <div class="">
                                            <p class="text-danger">{{ $message }}</p>
                                        </div>
                                    @enderror
                                </div>
                            </div>
                            <div class="d-flex justify-content-end mt-5 mb-5">
                                <button type="submit" class="btn btn-outline-standard">Gravar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection