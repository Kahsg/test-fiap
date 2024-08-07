@extends('layouts.master-layout')
@section('title')
    Lista de alunos
@endsection

@section('content')
<div class="row m-4">
    <div class="d-flex justify-content-between">
        <div class="p-2 page-title">
            <h3>Alunos</h3>
        </div>
        <div class="p-2 page-button">
            <a href="{{ route('alunos.create') }}" class="btn btn-outline-standard">Novo aluno</a>
        </div>
    </div>
</div>
<div class="row m-3 d-flex justify-content-center">
    <div class="col-10">
        @if ($alunos->isEmpty())
            <div class="row" id="without-data">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body pb-0">
                            <div class="text-center">
                                <i class="fas fa-times-circle fa-2x text-danger"></i>
                                <div class="h5 mb-0 mt-2">Sem dados para apresentar.</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        @endif

        @foreach ($alunos as $aluno)
            <div class="row mt-2">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <form id="form-delete" action="#" method="POST" style="display: none">
                                @csrf
                                @method('delete')
                            </form>
                            <div class="d-flex justify-content-between">
                                <div class="p-2">
                                    <label class="list-label" for="">Nome:</label>
                                    <h6>{{ $aluno->nome }}</h6>
                                </div>
                                <div class="p-2">
                                    <label class="list-label">Data de nascimento:</label>
                                    <h6>{{ $aluno->nascimento->format('d/m/Y')}}</h6>
                                </div>
                                <div class="p-2">
                                    <label class="list-label">Usuário:</label>
                                    <h6>{{ $aluno->usuario }}</h6>
                                </div>
                                <div class="p-2 align-self-center">
                                    <label class="list-label">Cadastro:</label>
                                    <h6 class="text-center">
                                        {{ $aluno->created_at->timezone('America/Sao_Paulo')->format('d/m/Y') }}<br>
                                        <small>{{ $aluno->created_at->timezone('America/Sao_Paulo')->format('H:i:s') }}</small>
                                    </h6>
                                </div>
                                <div class="p-2 align-self-center">
                                    <a href="{{ route('alunos.edit', ['uuid' => $aluno->uuid ]) }}"><i class="fas fa-edit"></i></a>
                                    <a href="javascript:void(0);" data-url="{{ route('alunos.delete', ['uuid' => $aluno->uuid ]) }}" class="btn-delete"><i class="fas fa-trash-alt"></i></a>
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
        {{ $alunos->links('layouts.pagination') }}
    </div>
</div>
@endsection
@section('script')
    <script>
        $(document).on('click','.btn-delete', function () {
            let url = $(this).attr('data-url');
            $('#form-delete').attr('action', url);
            Swal.fire({
                title: 'Atenção!',
                text: 'Deseja realmente excluir este aluno?',
                icon: 'warning',
                showCancelButton: true,
                confirmButtonText: 'Confirmar',
                cancelButtonText: 'Cancelar',
                customClass: {
                    confirmButton: 'btn btn-success mx-2',
                    cancelButton: 'btn btn-danger mx-2'
                },
                reverseButtons: true,
                buttonsStyling: !1
                }).then((result) => {
                if (result.isConfirmed) {
                    $('#form-delete').submit();
                }
            });
        });

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