@extends('utama.layouts.app')
@section('title', 'Perpustakaan SMPN 11 Kota Jambi')

@section('content')
<section class="banner-wrapper">
    <div class="container-fix">
        <div id="owl-banner" class="owl-carousel owl-theme">
            <div class="item">
                <img src="{{ asset('dist/images/banner/1.jpg') }}" alt="banner" />
                <div class="item-caption">
                    <div class="container d-flex h-100">
                        <div class="align-self-center">
                            <h3 class="animated fadeInDown text-white shadow">Selamat datang</h3>
                            <h3 class="animated fadeInDown text-white shadow">diperpustakaan online</h3>
                            <h3 class="animated fadeInDown text-white shadow">SMPN 11 Kota Jambi</h3>
                            <div class="mt-2">
                                <form method="GET" action="{{ route('home.cariBuku') }}">
                                    <input type="text" name="buku" class="form-control" placeholder="Cari Buku...">
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection

@section('style')
    <style>
        .shadow {
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.5);
        }
    </style>
@endsection
