<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Buku extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'isbn',
        'judul',
        'slug',
        'kategori_id',
        'rak_dan_baris_id',
        'penulis',
        'penerbit',
        'tahun_terbit',
        'stok_buku',
        'deskripsi',
        'sampul',
        'status'
    ];

    public function pinjam()
    {
        return $this->hasMany(Pinjam::class);
    }

    public function kategori()
    {
        return $this->belongsTo(Kategori::class);
    }

    public function rakBaris()
    {
        return $this->belongsTo(RakDanBaris::class, 'rak_dan_baris_id');
    }

    public function riwayat()
    {
        return $this->hasMany(RiwayatPinjam::class);
    }
}
