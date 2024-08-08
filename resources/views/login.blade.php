@extends('layouts.no-nav-layout')
@section('title')
    Login
@endsection

@section('content')
    <div class="row text-center">
        <div class="col-12 mt-5">
            <h3>AVALIAÇÃO DE PHP - FIAP</h3>
        </div>
        <div class="col">
            <div class="authentication-page-content p-4 d-flex align-items-center mt-5">
                <div class="w-100">
                    <div class="row justify-content-center">
                        <div class="col-lg-9">
                            <div>
                                <div class="text-center">
                                    <h4 class="font-size-18">Seja bem-vindo!</h4>
                                    <p class="text-muted">Faça login para acessar.</p>
                                </div>

                                <div class="p-2 col-4 offset-4">
                                    <form method="POST" action="{{ route('login') }}">
                                        @csrf
                                        <div class="form-group mb-4">
                                            <i class="fas fa-envelope list-label"></i>
                                            <label class="list-label" for="email">E-mail</label>
                                            <input id="email" type="email" class="form-control " name="email" value="{{ old('email')}}" required="" autocomplete="email" placeholder="ola@seuemail.com">
                                            @error('email')
                                                <div class="">
                                                    <p class="text-danger">{{ $message }}</p>
                                                </div>
                                            @enderror
                                        </div>

                                        <div class="form-group mb-4">
                                            <i class="fas fa-lock list-label"></i>
                                            <label class="list-label" for="password">Senha</label>
                                            <input type="password" class="form-control" name="password" required="" autocomplete="current-password" id="password" placeholder="Sua senha">
                                            @error('password')
                                                <div class="">
                                                    <p class="text-danger">{{ $message }}</p>
                                                </div>
                                            @enderror
                                        </div>

                                        <div class="mt-4 text-center">
                                            <button class="btn btn-outline-standard btn-rounded w-md waves-effect waves-light" type="submit">Entrar</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection