<div class="topnav">
    <div class="d-flex justify-content-between">

        <div class="col">
            <a class="{{request()->routeIs('home') ? 'active' : ''}}" href="{{route('home')}}">Home</a>
            <a class="{{request()->routeIs('alunos.*') ? 'active' : ''}}" href="{{route('alunos.index')}}">Alunos</a>
            <a class="{{request()->routeIs('turmas.*') ? 'active' : ''}}" href="{{route('turmas.index')}}">Turmas</a>
            <a class="{{request()->routeIs('matriculas.*') ? 'active' : ''}}" href="{{route('matriculas.index')}}">Matrículas</a>
        </div>
        <div class="col-1">
            <form method="POST" action="{{ route('logout') }}">
                @csrf
                <a href="{{ route('logout') }}" onclick="event.preventDefault();
                this.closest('form').submit();" data-toggle="tooltip" data-placement="bottom" title="Sair"><i class="fas fa-power-off"></i></a>
            </form>
        </div>
    </div>
</div>