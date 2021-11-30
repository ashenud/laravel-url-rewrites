@extends('layout')
@section('pageTitle', $category->name)
@section('content')
    <div class="container">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb mt-4" style="border: 1px solid rgba(0,0,0,.125); background-color: #ffffff;">
                <li class="breadcrumb-item">
                    <a href="{{ route('home', [], false) }}">Home</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">
                    {{ $category->name }}
                </li>
            </ol>
        </nav>
        <div class="row">
            <div class="col-lg-12">
                <h1 class="my-4">{{ $category->name }}</h1>
                <div class="row">
                    @foreach($category->products as $product)
                        @include('catalog.product_list', ['product' => $product])
                    @endforeach
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="card mt-4 mb-4">
                    <div class="card-body">
                        <h1 class="card-title">Info</h1>
                        <table class="table table-striped">
                            <tbody>
                                <tr>
                                    <th scope="row">Category ID</th>
                                    <td>{{ $category->id }}</td>
                                </tr>
                                <tr>
                                    <th scope="row">Original URL</th>
                                    <td>
                                        <a href="{{ $category->originalUrl }}">{{ $category->originalUrl }}</a>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">Clean URL</th>
                                    <td>
                                        <a href="{{ $category->url }}">{{ $category->url }}</a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
