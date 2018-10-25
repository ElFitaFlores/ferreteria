@extends('layouts.app')

@section('content')
    <supplier-detail-component request-item="{{json_encode($item)}}"></supplier-detail-component>
@endsection