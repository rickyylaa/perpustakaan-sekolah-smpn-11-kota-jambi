<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Examin - Education and LMS Template">

    <title>@yield('title')</title>

    <link rel="shortcut icon" href="{{ asset('assets/images/logo/logo.png') }}" type="image/x-icon">

    <link href="/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/dist/css/bootstrap.offcanvas.min.css" />
    <link rel="stylesheet" href="/dist/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/dist/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/dist/css/animate.css">
    <link rel="stylesheet" href="/dist/css/easy-responsive-tabs.css">
    <link rel="stylesheet" type="text/css" href="/dist/css/jquery-ui.css">
    <link href="/dist/css/style.css" rel="stylesheet">
    <link href="/dist/css/query.css" rel="stylesheet">
    <link rel="stylesheet" href="/dist/css/easyzoom.css" />
    <link href="/dist/css/fontello.css" rel="stylesheet">

    @yield('style')
</head>
<body>
    {{-- <div class="loader">
        <div class="loader-inner"></div>
    </div> --}}

    @include('utama.layouts.header')

    <div class="main-content carttop">
        @yield('content')
    </div>

    <a href="#" class="scrollup"><i class="icon-arrow"></i></a>

    <script src="/dist/js/jquery.min.js"></script>
    <script src="/dist/js/popper.min.js"></script>
    <script src="/dist/js/bootstrap.min.js"></script>
    <script src="/dist/js/bootstrap.offcanvas.js"></script>
    <script src="/dist/js/owl.carousel.min.js"></script>
    <script src="/dist/js/easyzoom.js"></script>
    <script src="/dist/js/easy-responsive-tabs.js"></script>
    <script src="/dist/js/jquery.nicescroll.min.js"></script>
    <script src="/dist/js/jquery-ui.js"></script>
    <script src="/dist/js/custom.js"></script>
</body>
</html>
