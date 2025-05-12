<?php

namespace App\Http\Controllers\Admin;

use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Models\RiwayatPinjam;
use App\Http\Controllers\Controller;
use Barryvdh\DomPDF\Facade\PDF as PDF;

class LaporanController extends Controller
{
    public function laporan()
    {
        $start = Carbon::now()->startOfMonth()->format('Y-m-d H:i:s');
        $end = Carbon::now()->endOfMonth()->format('Y-m-d H:i:s');

        if (request()->date != '') {
            $date = explode(' - ',request()->date);
            $start = Carbon::parse($date[0])->format('Y-m-d') . ' 00:00:01';
            $end = Carbon::parse($date[1])->format('Y-m-d') . ' 23:59:59';
        }

        $riwayat = RiwayatPinjam::with(['buku', 'siswa'])->whereBetween('created_at', [$start, $end])->where('status', 'selesai')->get();
        return view('aktor.admin.halaman.laporan.laporan_selesai', compact('riwayat'));
    }

    public function laporanPDF($dateRange)
    {
        try {
            $date = explode('+', $dateRange);
            $start = Carbon::parse($date[0])->startOfDay()->format('Y-m-d H:i:s');
            $end = Carbon::parse($date[1])->endOfDay()->format('Y-m-d H:i:s');

            $riwayat = RiwayatPinjam::with(['buku', 'siswa'])
                ->whereBetween('created_at', [$start, $end])
                ->where('status', 'selesai')
                ->get();

            return view('aktor.admin.halaman.laporan.pdf', compact('riwayat'));
        } catch (\Exception $e) {
            return redirect()->back()->withErrors('Format tanggal tidak valid.');
        }
    }
}
