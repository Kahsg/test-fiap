@extends('layouts.no-nav-layout')
@section('title')
    404 - Erro
@endsection

@section('content')

    <div class="d-flex flex-column align-items-center justify-content-center" style="height: 100vh;">
        <h1>404</h1>
        <p>Ops... Houve um erro.</p>
        <a href="{{ url()->previous() }}" type="button" class="btn btn-outline-standard"><i class="fas fa-angles-left"></i> Voltar</a>
    </div>
@endsection