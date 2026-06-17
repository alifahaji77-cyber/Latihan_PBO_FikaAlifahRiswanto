<?php
require_once 'Tiket.php';

class TiketVelvet extends Tiket {
    // Properti tambahan spesifik untuk kelas Velvet
    private $bantalSelimutPack;
    private $layananButler;

    public function __construct($dataRow) {
        parent::__construct($dataRow);
        
        // Memetakan properti spesifik dari kolom database
        $this->bantalSelimutPack = $dataRow['bantal_selimut_pack'];
        $this->layananButler     = $dataRow['layanan_butler'];
    }

    // Mengimplementasikan metode abstrak hitungTotalHarga
    public function hitungTotalHarga() {
        $totalHargaDasar = $this->jumlah_kursi * $this->hargaDasarTiket;
        return $totalHargaDasar * 1.50;
    }

    public function tampilkanInfoFasilitas() {
        return "Velvet VIP - Fasilitas: " . ($this->bantalSelimutPack ?? "Standard Pillow") . " | " . ($this->layananButler ?? "No Butler Available");
    }
}
?>