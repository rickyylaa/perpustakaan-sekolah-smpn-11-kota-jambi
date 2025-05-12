@extends('utama.layouts.app')
@section('title', 'Perpustakaan SMPN 11 Kota Jambi')

@section('content')
<section class="inner-content ">
    <div class="container">
        <div class="infomain">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/">beranda</a></li>
                <li class="breadcrumb-item"><a href="/buku">buku</a></li>
                <li class="breadcrumb-item active" aria-current="page">{{ $buku->judul }}</li>
            </ol>
            <h2 class="category-name">{{ $buku->judul }}</h2>
        </div>
        <div class="product-main">
            <div class="row d-flex">
                <div class="col-md-6 col-12">
                    <div class="prod-gal">
                        <div id="sync1" class="owl-carousel owl-theme">
                            <div class="item">
                                <div class="easyzoom easyzoom--overlay">
                                    <a href="{{ asset('storage/sampul/'. $buku->sampul) }}">
                                        <img src="{{ asset('storage/sampul/'. $buku->sampul) }}" alt="white floral frock">
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-12">
                    <div class="product-disarea">
                        <h2 class="product-name">{{ $buku->judul }}</h2>
                        <div class="short-des">
                            <p>{{ $buku->deskripsi }}</p>
                        </div>
                        <div class="brand mb-3">Kategori: {{ $buku->kategori->nama }}</div>
                        <div class="brand mb-4">Rak: {{ $buku->rakBaris->rak }} - Baris: {{ $buku->rakBaris->baris }}</div>
                        <div class="brand mb-3">Penulis: {{ $buku->penulis }}</div>
                        <div class="brand mb-3">Penerbit: {{ $buku->penerbit }}</div>
                        <div class="brand mb-4">Tahun Terbit: {{ $buku->tahun_terbit }}</div>
                        <div class="brand mb-3">Stok: {{ $buku->stok_buku }} buku</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection
