@extends('layouts.app')

@section('content')
<div class="projectList">
    @foreach($emaginprojects as $emaginproject)
    <div class="project">
        <div class="infosProject">
            @if($emaginproject->image)
            <a href="{{ $emaginproject->link }}" target="_blank"><img class="projectImg" src="{!! Storage::disk('local')->url($emaginproject->image) !!}" alt="{{ $emaginproject->name }}"></a>
            <p><a href="{{ $emaginproject->link }}" target="_blank" class="projectTitle">{{ $emaginproject->name }}</a></p>
            @else
            <div class="projectTitle" style="background: black; width: 300px; height: 180px;"></div>
            <p><a href="{{ $emaginproject->link }}" target="_blank" class="projectTitle">{{ $emaginproject->name }}</a></p>
            @endif
        </div>

        <div class="infosModules">
            @foreach($emaginproject->modules as $projectmodule)
            <p>{{ $projectmodule->name }} {{ $projectmodule->progression }}%</p>
            <div class="progressionBack">
                <div class="progression" style="width: {{ $projectmodule->progression }}%;"></div>
            </div>
            @endforeach
        </div>
    </div>
    @endforeach
</div>
@endsection