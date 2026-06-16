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

    // Mengimplementasikan perhitungan harga kelas VIP Velvet
    public function hitungTotalHarga() {
        $biayaKenyamananPremium = 50000;
        return ($this->hargaDasarTiket + $biayaKenyamananPremium) * $this->jumlah_kursi;
    }

    public function tampilkanInfoFasilitas() {
        return "Velvet VIP - Fasilitas: " . ($this->bantalSelimutPack ?? "Standard Pillow") . " | " . ($this->layananButler ?? "No Butler Available");
    }
}
?>