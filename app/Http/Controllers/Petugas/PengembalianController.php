<?php

namespace App\Http\Controllers\Petugas;

use App\Models\Buku;
use App\Models\Denda;
use App\Models\Siswa;
use App\Models\Pinjam;
use Illuminate\Http\Request;
use App\Models\RiwayatPinjam;
use App\Http\Controllers\Controller;
use RealRashid\SweetAlert\Facades\Alert;

class PengembalianController extends Controller
{
    public function index()
    {
        $riwayat = RiwayatPinjam::with(['siswa', 'buku'])->get();
        return view('aktor.petugas.halaman.pengembalian.index', compact('riwayat'));
    }

    public function cek(Request $request)
    {
        $request->validate([
            'barcode' => 'required|numeric'
        ]);

        $denda = Denda::first();
        $siswa = Siswa::where('barcode', $request->barcode)->first();
        $buku = Buku::where('stok_buku','>',0)->orderBy('judul', 'ASC')->get();
        $pinjam = Pinjam::where('siswa_id', $siswa->id)->get();

        // dd($denda, $siswa, $buku, $pinjam);

        if (!$siswa) {
            Alert::toast('<span class="toast-information">Siswa tidak ditemukan</span>')->hideCloseButton()->padding('25px')->toHtml();
            return redirect()->back();
        }

        return view('aktor.petugas.halaman.pengembalian.cek', [
            'denda_buku_rusak' => $denda->denda_buku_rusak,
            'denda_buku_hilang' => $denda->denda_buku_hilang,
            'denda_pinjam' => $denda->denda_pinjam,
            'siswa' => $siswa,
            'buku' => $buku,
            'pinjam' => $pinjam
        ]);
    }

    public function proses(Request $request)
    {
        $nominal = $request->nominal;
        $id = $request->id;

        $riwayat = RiwayatPinjam::find($id);
        $buku_id = $riwayat->buku_id;

        Buku::find($buku_id)->increment('stok_buku');
        RiwayatPinjam::find($id)->update([
            'denda' => $nominal,
            'status' => 'selesai',
        ]);

        Pinjam::find($id)->delete();

        Alert::toast('<span class="toast-information">Berhasil Melakukan Proses Pengembalian Buku</span>')->hideCloseButton()->padding('25px')->toHtml();
        return redirect()->back();
    }

    public function bukuRusak(Request $request)
    {
        $nominal = $request->nominal;
        $id = $request->id;

        $dendaBukuRusak = $request->denda_buku_rusak;

        $riwayat = RiwayatPinjam::find($id);
        $buku_id = $riwayat->buku_id;

        Buku::find($buku_id)->increment('stok_buku');

        RiwayatPinjam::find($id)->update([
            'denda' => $nominal,
            'denda_buku_rusak' => $dendaBukuRusak,
            'status' => 'selesai',
        ]);

        Pinjam::find($id)->delete();

        Alert::toast('<span class="toast-information">Berhasil Melakukan Proses Pengembalian Buku</span>')->hideCloseButton()->padding('25px')->toHtml();
        return redirect()->back();
    }

    public function bukuHilang(Request $request)
    {
        $nominal = $request->nominal;
        $id = $request->id;

        $dendaBukuHilang = $request->denda_buku_hilang;

        $riwayat = RiwayatPinjam::find($id);
        $buku_id = $riwayat->buku_id;

        Buku::find($buku_id)->increment('stok_buku');

        RiwayatPinjam::find($id)->update([
            'denda' => $nominal,
            'denda_buku_hilang' => $dendaBukuHilang,
            'status' => 'selesai',
        ]);

        Pinjam::find($id)->delete();

        Alert::toast('<span class="toast-information">Berhasil Melakukan Proses Pengembalian Buku</span>')->hideCloseButton()->padding('25px')->toHtml();
        return redirect()->back();
    }

    public function getDenda($id)
    {
        $denda = Denda::findOrFail($id);

        return response()->json([
            'denda_pinjam' => $denda->denda_pinjam,
            'denda_buku_rusak' => $denda->denda_buku_rusak,
            'denda_buku_rusak' => $denda->denda_buku_rusak,
        ]);
    }
}
