@extends('layouts.app')

@section('content')
    <model-list-component request-data="{{json_encode($data)}}" name="{{$name}}" url="{{$url}}"></model-list-component>
@endsection