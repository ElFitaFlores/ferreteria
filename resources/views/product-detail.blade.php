@extends('layouts.app')

@section('content')
    <product-detail-component request-item="{{json_encode($item)}}"></product-detail-component>
@endsection