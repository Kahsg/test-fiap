@extends('layouts.master-layout')
@section('title')
    Lista de turmas
@endsection

@section('content')
<div class="row m-4">
    <div class="d-flex justify-content-between">
        <div class="p-2 page-title">
            <h3>Turmas</h3>
        </div>
        <div class="p-2 page-button">
            <a href="{{ route('turmas.create') }}" class="btn btn-outline-standard">Nova turma</a>
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
                                <div class="p-2">
                                    <label class="list-label" for="">Nome:</label>
                                    <h6>{{ $turma->nome }}</h6>
                                </div>
                                <div class="p-2">
                                    <label class="list-label">Tipo:</label>
                                    <h6>{{ $turma->turma_tipo->descricao }}</h6>
                                </div>
                                <div class="p-2">
                                    <label class="list-label">Descrição:</label>
                                    <h6>{{ $turma->descricao }}</h6>
                                </div>
                                <div class="p-2 align-self-center">
                                    <a href="{{ route('turmas.edit', ['uuid' => $turma->uuid ]) }}"><i class="fas fa-edit"></i></a>
                                    <a href="javascript:void(0);" data-url="{{ route('turmas.delete', ['uuid' => $turma->uuid ]) }}" class="btn-delete"><i class="fas fa-trash-alt"></i></a>
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
        $(document).on('click','.btn-delete', function () {
            let url = $(this).attr('data-url');
            $('#form-delete').attr('action', url);
            Swal.fire({
                title: 'Atenção!',
                text: 'Deseja realmente excluir esta turma?',
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