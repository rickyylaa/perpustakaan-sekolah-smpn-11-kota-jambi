<?php

namespace App\Http\Controllers;

use App\Models\Buku;
use App\Models\Denda;
use Illuminate\Http\Request;
use App\Models\Kategori;

class UtamaController extends Controller
{
    public function index()
    {
        return view('utama.halaman.index');
    }

    public function buku()
    {
        $buku = Buku::where('status', 'aktif')->paginate(12);
        $kategori = Kategori::withCount('buku')->orderBy('nama', 'ASC')->get();
        return view('utama.halaman.buku', compact('buku', 'kategori'));
    }

    public function showBukuByKategori($kategoriId)
    {
        $kategori = Kategori::with('buku')->findOrFail($kategoriId);
        $kategoriList = Kategori::withCount('buku')->orderBy('nama', 'ASC')->get();
        $buku = Buku::where('kategori_id', $kategoriId)->where('status', 'aktif')->paginate(9);
        return view('utama.halaman.kategori', compact('kategori', 'buku', 'kategoriList'));
    }

    public function cari(Request $request)
    {
        $query = $request->input('buku');
        $rekomendasi = Buku::where('status', 'aktif')->limit(9)->get();
        $kategori = Kategori::withCount('buku')->orderBy('nama', 'ASC')->get();

        if (empty($query)) {
            return view('utama.halaman.cari_buku', [
                'buku' => collect(),
                'query' => $query,
                'rekomendasi' => $rekomendasi,
                'message' => 'Silakan masukkan judul buku untuk pencarian.'
            ]);
        }

        $buku = Buku::where('judul', 'LIKE', '%' . $query . '%')->where('status', 'aktif')->paginate(9);
        return view('utama.halaman.cari_buku', compact('buku', 'query', 'rekomendasi', 'kategori'));
    }

    public function detail(Request $request, $slug)
    {
        $buku = Buku::where('slug', $slug)->where('status', 'aktif')->first();
        $rekomendasi = Buku::where('kategori_id', $buku->kategori_id)->where('id', '!=', $buku->id)->where('status', 'aktif')->limit(5)->get();
        return view('utama.halaman.detail_buku', compact('buku', 'rekomendasi'));
    }

    public function tataTertib()
    {
        $denda = Denda::first();
        return view('utama.halaman.tata-tertib', compact('denda'));
    }

    public function visiMisi()
    {
        return view('utama.halaman.visi-misi');
    }
}
