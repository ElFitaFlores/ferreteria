@extends('layouts.app')

@section('content')
    <supplier-list-component request-data="'{{$data}}'"></supplier-list-component>
@endsection