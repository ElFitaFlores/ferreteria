@extends('layouts.app')

@section('content')
    <order-detail-component request-item="{{json_encode($item)}}" request-products="{{json_encode($products)}}"></order-detail-component>
@endsection