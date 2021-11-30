@extends('layout')
@section('pageTitle', 'Homepage')
@section('content')
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                @include('cms.homepage.parts.slider')
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="mx-5 my-5 text-center">New products</h1>
                    </div>
                </div>
                <div class="row">
                    @foreach($new as $product)
                        @include('catalog.product_list', ['product' => $product])
                    @endforeach
                </div>
            </div>
        </div>
    </div>
@endsection
