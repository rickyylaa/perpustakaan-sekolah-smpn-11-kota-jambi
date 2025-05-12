<?php

namespace App\Http\Controllers\Petugas;

use App\Models\Kategori;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use RealRashid\SweetAlert\Facades\Alert;

class KategoriController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $kategori = Kategori::orderBy('id', 'ASC')->get();
        return view('aktor.petugas.halaman.kategori.index', compact('kategori'));
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
    public function store(Request $request, Kategori $kategori)
    {
        $request->validate([
            'nama' => 'required|string'
        ]);

        try {
            DB::beginTransaction();

            $kategori->create([
                'nama' => $request->nama
            ]);

            DB::commit();

            Alert::toast('<span class="toast-information">Kategori berhasil dibuat</span>')->hideCloseButton()->padding('25px')->toHtml();
            return redirect()->back();
        } catch (\Exception $e) {
            DB::rollback();
            Alert::toast('<span class="toast-information">Terjadi kesalahan saat membuat kategori: ' . $e->getMessage() . '</span>')->hideCloseButton()->padding('25px')->toHtml();
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
        $kategori = Kategori::findOrFail($id);
        return view('aktor.petugas.halaman.kategori.edit', compact('kategori'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $request->validate([
            'nama' => 'required|string'
        ]);

        try {
            DB::beginTransaction();

            $kategori = Kategori::where('id', $id)->firstOrFail();

            $kategori->update([
                'nama' => $request->nama
            ]);

            DB::commit();

            Alert::toast('<span class="toast-information">Kategori berhasil diperbarui</span>')->hideCloseButton()->padding('25px')->toHtml();
            return redirect()->back();
        } catch (\Exception $e) {
            DB::rollback();
            Alert::toast('<span class="toast-information">Terjadi kesalahan saat memperbarui kategori: ' . $e->getMessage() . '</span>')->hideCloseButton()->padding('25px')->toHtml();
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

            $kategori = Kategori::where('id', $id)->firstOrFail();
            if ($kategori->buku()->exists()) {
                Alert::toast('<span class="toast-information">Tidak dapat menghapus kategori karena terdapat buku yang terdaftar di kategori ini.</span>')->hideCloseButton()->padding('25px')->toHtml();
                return redirect()->back();
            }

            $kategori->delete();

            DB::commit();

            Alert::toast('<span class="toast-information">Kategori berhasil dihapus</span>')->hideCloseButton()->padding('25px')->toHtml();
            return redirect()->back();
        } catch (\Exception $e) {
            DB::rollback();
            Alert::toast('<span class="toast-information">Terjadi kesalahan saat menghapus kategori: ' . $e->getMessage() . '</span>')->hideCloseButton()->padding('25px')->toHtml();
            return redirect()->back();
        }
    }
}
