@extends('layouts.app')

@section('content')
    <order-detail-component request-item="{{json_encode($item)}}"></order-detail-component>
@endsection