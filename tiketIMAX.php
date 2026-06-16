<?php
require_once 'Tiket.php';

class TiketIMAX extends Tiket {
    // Properti tambahan spesifik untuk kelas IMAX
    private $kacamata3dId;
    private $efekGerakFitur;

    public function __construct($dataRow) {
        parent::__construct($dataRow);
        
        // Memetakan properti spesifik dari kolom database
        $this->kacamata3dId   = $dataRow['kacamata_3d_id'];
        $this->efekGerakFitur = $dataRow['gerak_fitur'];
    }

    // Mengimplementasikan perhitungan harga dengan tambahan biaya teknologi IMAX
    public function hitungTotalHarga() {
        $biayaTambahanTeknologi = 15000; 
        return ($this->hargaDasarTiket + $biayaTambahanTeknologi) * $this->jumlah_kursi;
    }

    public function tampilkanInfoFasilitas() {
        $info3d = (!empty($this->kacamata3dId)) ? "ID Kacamata 3D: " . $this->kacamata3dId : "Format 2D (Tanpa Kacamata)";
        return "IMAX Tech - " . $info3d . " | Fitur Gerak Kursi: " . ($this->efekGerakFitur ?? "Standard");
    }
}
?>