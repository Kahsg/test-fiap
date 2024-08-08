<div class="topnav">
    <a class="{{request()->routeIs('home') ? 'active' : ''}}" href="{{route('home')}}">Home</a>
    <a class="{{request()->routeIs('alunos.index') ? 'active' : ''}}" href="{{route('alunos.index')}}">Alunos</a>
    <a class="{{request()->routeIs('turmas.index') ? 'active' : ''}}" href="{{route('turmas.index')}}">Turmas</a>
    <a class="{{request()->routeIs('matriculas.index') ? 'active' : ''}}" href="{{route('matriculas.index')}}">Matrículas</a>
</div>