<?php
// Menyertakan file koneksi database
require_once 'database.php';

/**
 * Abstract Class Tiket yang mewarisi Class Database
 */
abstract class Tiket extends Database {
    // Properti terenkapsulasi (protected) agar hanya bisa diakses oleh class ini dan subclass-nya
    protected $id_tiket;
    protected $nama_film;
    protected $jadwal_tayang;
    protected $jumlah_kursi;
    protected $hargaDasarTiket;

    /**
     * Constructor untuk memetakan data langsung dari kolom tabel database
     * @param array $dataRow Baris data hasil fetch_assoc dari tabel_tiket
     */
    public function __construct($dataRow) {
        // Menjalankan constructor milik Parent (Database) agar koneksi tetap terbentuk
        parent::__construct();

        // Pemetaan (mapping) properti dari kolom tabel database
        $this->id_tiket        = $dataRow['id_tiket'];
        $this->nama_film       = $dataRow['nama_film'];
        $this->jadwal_tayang   = $dataRow['jadwal_tayang'];
        $this->jumlah_kursi    = $dataRow['jumlah_kursi'];
        $this->hargaDasarTiket = $dataRow['harga_dasar_tiket'];
    }

    /**
     * Abstract Method: Wajib diimplementasikan dan diisi logikanya oleh class anak (subclass)
     */
    abstract public function hitungTotalHarga();

    /**
     * Abstract Method: Wajib diimplementasikan untuk menampilkan fasilitas unik tiap studio
     */
    abstract public function tampilkanInfoFasilitas();
}
?>