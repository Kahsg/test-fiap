@extends('layouts.master-layout')
@section('title')
    Edição de turma
@endsection

@section('content')
<div class="row m-4">
    <div class="d-flex justify-content-between">
        <div class="p-2 page-title">
            <h3>Edição de Turma</h3>
        </div>
        <div class="p-2 page-button">
            <a href="{{ route('turmas.index')}}" type="button" class="btn btn-outline-standard"><i class="fas fa-angles-left"></i> Voltar</a>
        </div>
    </div>
</div>
<div class="row m-3 d-flex justify-content-center">
    <div class="col-10">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body pb-0">
                        <form class="mb-10" action="{{ route('turmas.update', ['uuid' => $turma->uuid]) }}" method="POST">
                            @csrf
                            <div class="row">
                                <div class="form-group col-6 mt-2">
                                    <label for="nome" class="list-label">Nome da turma:</label>
                                    <input type="text" class="form-control @error('nome') is-invalid @enderror" name="nome" value="{{ old('nome',$turma->nome) }}" placeholder="Ex.: Administração - Presencial" required>
                                    @error('nome')
                                        <div class="">
                                            <p class="text-danger">{{ $message }}</p>
                                        </div>
                                    @enderror
                                </div>
                                <div class="form-group col-6 mt-2">
                                    <label for="tipo" class="list-label">Tipo:</label>
                                    <select class="select2 form-control @error('tipo') is-invalid @enderror" name="tipo" data-placeholder="Selecione"
                                    required>
                                        <option></option>
                                        @foreach ($tipos as $tipo)
                                            <option value="{{ $tipo->uuid }}" {{ old('tipo',$turma->tipo) == $tipo->id ? 'selected' : '' }}>{{ $tipo->descricao }}</option>
                                        @endforeach
                                    </select>
                                    @error('tipo')
                                        <div class="">
                                            <p class="text-danger">{{ $message }}</p>
                                        </div>
                                    @enderror
                                </div>
                                <div class="form-group col-12 mt-2">
                                    <label for="descricao" class="list-label">Descrição da turma:</label>
                                    <input type="text" class="form-control @error('descricao') is-invalid @enderror" name="descricao" value="{{ old('descricao',$turma->descricao) }}" placeholder="Ex.: Bacharelado 4 anos" required>
                                    @error('descricao')
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