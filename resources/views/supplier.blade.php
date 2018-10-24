@extends('layouts.app')

@section('content')
    <supplier-list-component request-data="{{json_encode($data)}}"></supplier-list-component>
@endsection