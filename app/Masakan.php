<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Masakan extends Model
{
    public $timestamps = false;
    protected $table = 'tbl_masakan';
    protected $primaryKey = 'id_masakan';
    protected $fillable = [
        'gambar_masakan','nama_masakan','nama_kategori','harga','status'
    ];
}
