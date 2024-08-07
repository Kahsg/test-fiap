@extends('layouts.master-layout')
@section('title')
    Lista de Matriculados
@endsection

@section('content')
<div class="row m-4">
    <div class="d-flex justify-content-between">
        <div class="p-2 page-title">
            <h3>Matrículas</h3>
            <h6>{{$matriculados[0]->turma->nome . ' - ' . $matriculados[0]->turma->turma_tipo->descricao}}</h6>
        </div>
    </div>
</div>
<div class="row m-3 d-flex justify-content-center">
    <div class="col-10">
        @if ($matriculados->isEmpty())
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

        @foreach ($matriculados as $matricula)
            <div class="row mt-2">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex justify-content-between">
                                <div class="p-2">
                                    <label class="list-label" for="">Nome:</label>
                                    <h6>{{ $matricula->aluno->nome }}</h6>
                                </div>
                                <div class="p-2">
                                    <label class="list-label">Data de nascimento:</label>
                                    <h6>{{ $matricula->aluno->nascimento->format('d/m/Y')}}</h6>
                                </div>
                                <div class="p-2">
                                    <label class="list-label">Usuário:</label>
                                    <h6>{{ $matricula->aluno->usuario }}</h6>
                                </div>
                                <div class="p-2 align-self-center">
                                    <label class="list-label">Matriculado em:</label>
                                    <h6 class="text-center">
                                        {{ $matricula->created_at->timezone('America/Sao_Paulo')->format('d/m/Y') }}<br>
                                        <small>{{ $matricula->created_at->timezone('America/Sao_Paulo')->format('H:i:s') }}</small>
                                    </h6>
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
        {{ $matriculados->links('layouts.pagination') }}
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