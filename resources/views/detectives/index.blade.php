@extends('layouts/layout')

@section('content')
<div class="page page-home">
    
    <img src="img/crime-logo.png" alt="" class="logo">
    <h1>World class<br><small>The detectives list</small></h1>

    <div class="desc">
            <h1>The detectives list</h1>
    </div>
    <ul>
            @foreach($detectives as $detective)
                <li>{{ $detective->name }}</li>
            @endforeach
   </ul>
    <a href="#" class="report">Hire a detective</a>

    <div class="detectives">
        <a href="#">
            <img src="img/holmes.jpg" alt="">
        </a>
        <a href="#">
            <img src="img/poirot.jpg" alt="">
        </a>
        <a href="#">
            <img src="img/marple.jpg" alt="">
        </a>
        <a href="#">
            <img src="img/marlowe.jpg" alt="">
        </a>
        <a href="#">
            <img src="img/columbo.jpg" alt="">
        </a>
    </div>

</div>
@endsection
