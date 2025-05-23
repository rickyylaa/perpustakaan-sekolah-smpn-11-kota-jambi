<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>@yield('title')</title>

    <link rel="shortcut icon" href="{{ asset('assets/images/favicon/favicon.png') }}" type="image/x-icon">

    <script src="{{ asset('assets/js/config.js') }}"></script>

    <link rel="stylesheet" href="{{ asset('assets/css/app.min.css') }}" type="text/css" id="app-style">
    <link rel="stylesheet" href="{{ asset('assets/css/icons.min.css') }}" type="text/css">
</head>

<body class="authentication-bg position-relative">
    @include('auth.layouts.header')
    @yield('content')

    @include('auth.layouts.footer')

    <script src="{{ asset('assets/js/vendor.min.js') }}"></script>
    <script src="{{ asset('assets/js/app.min.js') }}"></script>
</body>
</html>
