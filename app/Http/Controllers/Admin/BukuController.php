<?php

namespace App\Http\Controllers\Admin;

use App\Models\Buku;
use App\Models\Kategori;
use App\Models\RakDanBaris;
use App\Http\Controllers\Controller;

class BukuController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $kategori = Kategori::get();
        $rakBaris = RakDanBaris::get();

        $buku = Buku::orderBy('id', 'DESC')->get();
        return view('aktor.admin.halaman.buku.index', compact('kategori', 'rakBaris', 'buku'));
    }
}
