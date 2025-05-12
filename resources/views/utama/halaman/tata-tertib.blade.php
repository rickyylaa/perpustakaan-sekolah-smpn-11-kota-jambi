@extends('utama.layouts.app')
@section('title', 'Perpustakaan SMPN 11 Kota Jambi')

@section('content')
<section class="inner-content ">
    <div class="container">
        <div class="infomain">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/">beranda</a></li>
                <li class="breadcrumb-item active" aria-current="page">tata tertib</li>
            </ol>
            <h2 class="category-name">tata tertib</h2>
        </div>
        <div class="product-main text-left">
            <div class="row">
                <div class="col-12">
                    <div class="faq-tab">
                        <div id="horizontalTab-arrival">
                            <ul class="resp-tabs-list">
                                <li>
                                    <i class="icon-credit-cards"></i>
                                    <span>Tata Tertib Peminjaman Buku</span>
                                </li>
                                <li>
                                    <i class="icon-clipboard"></i>
                                    <span>Tata Tertib Mengembalikan Buku</span>
                                </li>
                            </ul>
                            <div class="resp-tabs-container">
                                <div>
                                    <div class="discription">
                                        <h3>Tata Tertib Peminjaman Buku</h3>
                                        <p>Tata Terbit Dalam Melakukan Transaksi Peminjaman Buku di SMPN 11 Kota Jambi
                                            yang harus Di Patuhi Oleh Seluruh Siswa SMPN 11 Kota Jambi</p>
                                        <ul>
                                            <li>Siswa Di Wajibkan Mendaftarkan Diri Sebagai Anggota Perpustakaan</li>
                                            <li>Telah Mengembalikan Semua Buku Yang Di Pinjam Sebelumnya</li>
                                            <li>Memberikan Buku dan Kartu Anggota Kepada Petugas Perpustakaan Untuk Proses Peminjaman</li>
                                            <li>Siswa Hanya Dapat Meminjam Maksimal 3 Buku </li>
                                            <li>Dilarang Bagi Siswa Yang Meminjam Buku untuk Mencoret, Menyobek, atau Menghilangkan Buku Yang Di Pinjam</li>
                                        </ul>
                                    </div>
                                </div>
                                <div>
                                    <div class="discription">
                                        <h3>Tata Tertib Mengembalikan Buku</h3>
                                        <p>Tata Tertib bagi Siswa SMPN 11 Kota Jambi dalam proses Pengembalian Buku di Perpustakaan
                                            yang wajib di patuhi oleh seluruh siswa / anggota Perpustakaan SMPN 11 Kota Jambi</p>
                                        <ul>
                                            <li>Membawa Kartu Anggota Perpustakaan dan Membawa Buku yang akan di Kembalikan</li>
                                            <li>Buku Dalam Keadaan Baik dan Tidak di Coret - Coret</li>
                                            <li>Keterlambatan Pengembalian Akan Di Kenakan Denda Rp.{{ number_format($denda->denda_pinjam) }},-  Perhari</li>
                                            <li>Menghilangkan Buku Akan Di Denda Rp.{{ number_format($denda->denda_buku_hilang) }},- PerBuku yang hilang</li>
                                            <li>Merusak Buku Akan Di Denda Rp.{{ number_format($denda->denda_buku_rusak) }},- PerBuku yang rusak</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection
