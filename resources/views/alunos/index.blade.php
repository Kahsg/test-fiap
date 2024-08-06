@extends('layouts.master-layout')
@section('title')
    Lista de alunos
@endsection

@section('content')
<div class="row m-3">
    <h3>Alunos</h3>
</div>
<div class="row m-3">
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
</div>
@endsection