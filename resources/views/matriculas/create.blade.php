@extends('layouts.master-layout')
@section('title')
    Adição de matrícula
@endsection

@section('content')
<div class="row m-4">
    <div class="d-flex justify-content-between">
        <div class="p-2 page-title">
            <h3>Cadastro de matrícula</h3>
        </div>
        <div class="p-2 page-button">
            <a href="{{ route('matriculas.index')}}" type="button" class="btn btn-outline-standard"><i class="fas fa-angles-left"></i> Voltar</a>
        </div>
    </div>
</div>
<div class="row m-3 d-flex justify-content-center">
    <div class="col-10">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body pb-0">
                        <form class="mb-10" action="{{ route('matriculas.store') }}" method="POST">
                            @csrf
                            <div class="row">
                                <div class="form-group col-12 mt-2">
                                    <label for="turma_id" class="list-label">Informe a turma:</label>
                                    <select class="select2 form-control @error('turma_id') is-invalid @enderror" name="turma_id" data-placeholder="Selecione"
                                    required>
                                        <option></option>
                                        @foreach ($turmas as $turma)
                                            <option value="{{ $turma->uuid }}" {{ old('turma_id') == $turma->uuid ? 'selected' : '' }}>{{ $turma->nome . ' - ' . $turma->turma_tipo->descricao }}</option>
                                        @endforeach
                                    </select>
                                    @error('turma_id')
                                        <div class="">
                                            <p class="text-danger">{{ $message }}</p>
                                        </div>
                                    @enderror
                                </div>
                                <div class="form-group col-12 mt-2">
                                    <label for="aluno_id" class="list-label">Informe o aluno:</label>
                                    <select class="select2 form-control @error('aluno_id') is-invalid @enderror" name="aluno_id" data-placeholder="Selecione"
                                    required>
                                        <option></option>
                                        @foreach ($alunos as $aluno)
                                            <option value="{{ $aluno->uuid }}" {{ old('aluno_id') == $aluno->uuid ? 'selected' : '' }}>{{ $aluno->nome }}</option>
                                        @endforeach
                                    </select>
                                    @error('aluno_id')
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