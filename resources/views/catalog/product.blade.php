@extends('layout')
@section('pageTitle', $product->name)
@section('content')
    <div class="container">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb mt-4 bg-white" style="border: 1px solid rgba(0,0,0,.125);">
                <li class="breadcrumb-item">
                    <a href="{{ route('home', [], false) }}">Home</a>
                </li>
                @if($product->categories)
                    <li class="breadcrumb-item" aria-current="page">
                        <a href="{{ $product->categories[0]->url }}">
                            {{$product->categories[0]->name}}
                        </a>
                    </li>
                @endif
                <li class="breadcrumb-item active" aria-current="page">
                    {{ $product->name }}
                </li>
            </ol>
        </nav>
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                <div class="card mt-4">
                    <div class="card-body">
                        <img class="img-fluid" src="{{ $product->image }}" alt="{{ $product->name }}">
                    </div>
                </div>
            </div>

            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                <div class="card mt-4">
                    <div class="card-body">
                        <h1 class="card-title">{{ $product->name }}</h1>
                        <button type="button" class="btn btn-success float-right">Add to my shopping cart</button>
                        <h4>$ {{ $product->price }}</h4>
                    </div>
                </div>
                <div class="card mt-4 mb-4">
                    <div class="card-body">
                        <h2 class="card-title">About this product</h2>
                        <p>{{ $product->description }}</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="card mt-4 mb-4">
                    <div class="card-body">
                        <h1 class="card-title">Specifications</h1>
                        <table class="table table-striped">
                            <tbody>
                            <tr>
                                <th scope="row">Product ID</th>
                                <td>{{ $product->id }}</td>
                            </tr>
                            <tr>
                                <th scope="row">Original URL</th>
                                <td>
                                    <a href="{{ $product->originalUrl }}">{{ $product->originalUrl }}</a>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">Clean URL</th>
                                <td>
                                    <a href="{{ $product->url }}">{{ $product->url }}</a>
                                </td>
                            </tr>
                            @foreach($product->categories as $category)
                                <tr>
                                    <th scope="row">Belongs to category</th>
                                    <td>{{ $category->name }}</td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
