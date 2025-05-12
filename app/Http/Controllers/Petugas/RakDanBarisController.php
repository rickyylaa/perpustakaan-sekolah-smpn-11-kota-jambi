<?php

namespace App\Http\Controllers\Petugas;

use App\Models\Kategori;
use App\Models\RakDanBaris;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use RealRashid\SweetAlert\Facades\Alert;

class RakDanBarisController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $kategori = Kategori::get();
        $rakBaris = RakDanBaris::orderBy('id', 'ASC')->get();
        return view('aktor.petugas.halaman.rakBaris.index', compact('kategori', 'rakBaris'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request, RakDanBaris $rakBaris)
    {
        $request->validate([
            'kategori_id' => 'required|exists:kategoris,id',
            'rak' => 'required|numeric',
            'baris' => 'required|numeric'
        ]);

        try {
            DB::beginTransaction();

            $rakBaris->create([
                'kategori_id' => $request->kategori_id,
                'rak' => $request->rak,
                'baris' => $request->baris
            ]);

            DB::commit();

            Alert::toast('<span class="toast-information">Rak dan Baris berhasil dibuat</span>')->hideCloseButton()->padding('25px')->toHtml();
            return redirect()->back();
        } catch (\Exception $e) {
            DB::rollback();
            Alert::toast('<span class="toast-information">Terjadi kesalahan saat membuat rak dan baris: ' . $e->getMessage() . '</span>')->hideCloseButton()->padding('25px')->toHtml();
            return redirect()->back();
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $kategori = Kategori::get();
        $rakBaris = RakDanBaris::findOrFail($id);
        return view('aktor.petugas.halaman.rakBaris.edit', compact('kategori', 'rakBaris'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $request->validate([
            'kategori_id' => 'required|exists:kategoris,id',
            'rak' => 'required|numeric',
            'baris' => 'required|numeric'
        ]);

        try {
            DB::beginTransaction();

            $rakBaris = RakDanBaris::where('id', $id)->firstOrFail();

            $rakBaris->update([
                'kategori_id' => $request->kategori_id,
                'rak' => $request->rak,
                'baris' => $request->baris
            ]);

            DB::commit();

            Alert::toast('<span class="toast-information">Rak dan Baris berhasil diperbarui</span>')->hideCloseButton()->padding('25px')->toHtml();
            return redirect()->back();
        } catch (\Exception $e) {
            DB::rollback();
            Alert::toast('<span class="toast-information">Terjadi kesalahan saat memperbarui rak dan baris: ' . $e->getMessage() . '</span>')->hideCloseButton()->padding('25px')->toHtml();
            return redirect()->back();
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        try {
            DB::beginTransaction();

            $rakBaris = RakDanBaris::where('id', $id)->firstOrFail();
            if ($rakBaris->buku()->exists()) {
                Alert::toast('<span class="toast-information">Tidak dapat menghapus rak dan baris karena terdapat buku yang terdaftar di rak dan baris ini.</span>')->hideCloseButton()->padding('25px')->toHtml();
                return redirect()->back();
            }

            $rakBaris->delete();

            DB::commit();

            Alert::toast('<span class="toast-information">Rak dan Baris berhasil dihapus</span>')->hideCloseButton()->padding('25px')->toHtml();
            return redirect()->back();
        } catch (\Exception $e) {
            DB::rollback();
            Alert::toast('<span class="toast-information">Terjadi kesalahan saat menghapus rak dan baris : ' . $e->getMessage() . '</span>')->hideCloseButton()->padding('25px')->toHtml();
            return redirect()->back();
        }
    }
}
