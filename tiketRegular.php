<?php
require_once 'Tiket.php';

class TiketRegular extends Tiket {
    // Properti tambahan spesifik untuk kelas Regular
    private $tipeAudio;
    private $lokasiBaris;

    public function __construct($dataRow) {
        // Memanggil constructor abstract class Tiket untuk memetakan properti utama
        parent::__construct($dataRow);
        
        // Memetakan properti spesifik dari kolom database
        $this->tipeAudio   = $dataRow['tipe_studio']; // Memetakan kolom tipe_studio sebagai tipe audio
        $this->lokasiBaris = $dataRow['lokasi_baris'];
    }

    // Mengimplementasikan metode abstrak hitungTotalHarga
    public function hitungTotalHarga() {
        return $this->jumlah_kursi * $this->hargaDasarTiket;
    }

    // Mengimplementasikan metode abstrak tampilkanInfoFasilitas
    public function tampilkanInfoFasilitas() {
        return "Audio: " . ($this->tipeAudio ?? "Standard Stereo") . " | Baris Kursi: " . $this->lokasiBaris;
    }
}
?>