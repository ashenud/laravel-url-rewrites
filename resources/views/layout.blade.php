<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>@yield('pageTitle') | {{ env('APP_NAME') }}</title>
        <meta name="description" content="This is a demo environment for Laravel URL rewrites.">

        <!-- Styles -->
        <link rel="stylesheet" href="{{ mix('/css/app.css') }}">
    </head>
    <body>
        @include('common.header')
        @yield('content')
        @include('common.footer')
        <!-- Include AlgoliaSearch JS Client and autocomplete.js library -->
        <script src="https://cdn.jsdelivr.net/algoliasearch/3/algoliasearch.min.js"></script>
        <script src="https://cdn.jsdelivr.net/autocomplete.js/0/autocomplete.min.js"></script>
        <script src="{{ mix('/js/app.js') }}" charset="utf-8" defer></script>
    </body>
</html>
