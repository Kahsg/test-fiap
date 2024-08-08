@extends('layouts.master-layout')
@section('title')
    Lista de Matrículas
@endsection

@section('content')
<div class="row m-4">
    <div class="d-flex justify-content-between">
        <div class="p-2 page-title">
            <h3>Matrículas</h3>
        </div>
        <div class="p-2 page-button">
            <a href="{{ route('matriculas.create') }}" class="btn btn-outline-standard">Nova matrícula</a>
        </div>
    </div>
</div>
<div class="row m-3 d-flex justify-content-center">
    <div class="col-10">
        @if ($turmas->isEmpty())
            <div class="row" id="without-data">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="text-center">
                                <i class="fas fa-times-circle fa-2x text-danger"></i>
                                <div class="h5 mb-0 mt-2">Sem dados para apresentar.</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        @endif

        @foreach ($turmas as $turma)
            <div class="row mt-2">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex justify-content-between">
                                <div class="p-2 col">
                                    <label class="list-label" for="">Turma:</label>
                                    <h6>{{ $turma->nome }}</h6>
                                </div>
                                <div class="p-2 col">
                                    <label class="list-label">Tipo:</label>
                                    <h6>{{ $turma->turma_tipo->descricao}}</h6>
                                </div>
                                <div class="p-2 col text-center">
                                    <label class="list-label">Total de matriculas:</label>
                                    <h6>{{ $turma->alunos_count }}</h6>
                                </div>
                                <div class="p-2 align-self-center">
                                    <a href="{{ route('matriculas.view', ['turma' => $turma->id ]) }}" class="btn-view" data-toggle="tooltip" title="Ver matrículados"><i class="fas fa-eye"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
</div>
<div class="row" id="pagination">
    <div class="d-flex justify-content-center mt-2 text-center">
        {{ $turmas->links('layouts.pagination') }}
    </div>
</div>
@endsection
@section('script')
    <script>
        var session = '{{ session("message") }}';

        if (session != '') {
            Swal.fire({
                position: "top-end",
                icon: "success",
                title: session,
                showConfirmButton: false,
                timer: 1500
            });
        }
    </script>
@endsection