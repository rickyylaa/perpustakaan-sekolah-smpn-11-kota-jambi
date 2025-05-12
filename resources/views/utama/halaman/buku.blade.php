@extends('utama.layouts.app')
@section('title', 'Perpustakaan SMPN 11 Kota Jambi')

@section('content')
<section class="innerbanner-wrapper">
    <div class="container-fix">
        <img src="/dist/images/banner/3.jpg" alt="banner" class="w-100">
    </div>
</section>

<section class="inner-content">
    <div class="container">
        <div class="infomain">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/">beranda</a></li>
                <li class="breadcrumb-item active" aria-current="page">buku</li>
            </ol>
            <h2 class="category-name">Buku</h2>
        </div>
        <div class="product-main">
            <div class="row d-flex">
                <div class="col-lg-3 col-md-4 col-12">
                    <div class="primary-sidebar text-left">
                        <aside id="search-2" class="seblk">
                            <h3>cari buku</h3>
                            <form method="GET" action="{{ route('home.cariBuku') }}">
                                @csrf
                                <input type="text" name="buku" class="form-control" placeholder="Judul buku...">
                                <button type="submit">
                                    <i class="icon-search"></i>
                                </button>
                            </form>
                        </aside>
                        <h4 class="d-md-none">Filters</h4>
                        <aside id="recent-posts-2" class="seblk d-none d-lg-block">
                            <h3>kategori buku</h3>
                            <ul>
                                @foreach ($kategori as $item)
                                    <li><a href="{{ route('home.kategori', $item->id) }}">{{ $item->nama }}</a></li>
                                @endforeach
                            </ul>
                        </aside>
                    </div>
                </div>
                <div class="col-lg-9 col-md-8 col-12">
                    <div class="toolbar-products">
                        <div class="row d-flex">
                            <div class="col-12 col-sm-9 col-xl-5 col-lg-5 col-md-5">
                                <div class="toolbar-amount">
                                    @if (count($buku) > 0)
                                        <span>Menampilkan {{ $buku->firstItem() }}-{{ $buku->lastItem() }}</span> dari {{ $buku->total() }} hasil
                                    @else
                                        <span>Menampilkan 1–12</span> dari 30 hasil
                                    @endif
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="content-product grid">
                        <div class="d-md-flex row">
                            @forelse ($buku as $row)
                                <div class="col-12 col-sm-6 col-lg-4">
                                    <div class="product-layout product-grid">
                                        <div class="product-thumb">
                                            <div class="image">
                                                <a href="{{ route('home.detailBuku', $row->slug) }}">
                                                    <img class="img-fluid" src="{{ asset('storage/sampul/'. $row->sampul) }}" alt="buku">
                                                </a>
                                                <a href="{{ route('home.detailBuku', $row->slug) }}">
                                                    <div class="overlay">
                                                        <span class="sr-only">overlay bg</span>
                                                    </div>
                                                </a>
                                            </div>
                                            <div class="caption">
                                                <h4 class="product-name">
                                                    <a href="{{ route('home.detailBuku', $row->slug) }}">{{ $row->judul }}</a>
                                                </h4>
                                                <p class="price">
                                                    <span class="price-new">{{ $row->kategori->nama }};</span>
                                                    <span class="price-new">Rak : {{ $row->rakBaris->rak }} - Baris : {{ $row->rakBaris->baris }}</span>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @empty
                            @endif
                        </div>
                    </div>
                    @if (count($buku) > 0)
                        {!! $buku->links('pagination::default') !!}
                    @endif
                </div>
            </div>
        </div>
    </div>
</section>
@endsection
