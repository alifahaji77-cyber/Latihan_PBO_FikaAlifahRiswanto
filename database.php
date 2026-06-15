<?php
/**
 * Class Database Connection
 * Menggunakan konsep Object-Oriented Programming (OOP) Dasar
 */
class Database {
    // Properti untuk menyimpan kredensial database
    private $host     = "localhost";
    private $username = "root";
    private $password = ""; // Kosongkan jika menggunakan XAMPP bawaan
    private $database = "db_latihan_pbo_TI1C";
    public $conn;

    // Constructor: Otomatis berjalan saat objek diinstansiasi (dibuat)
    public function __construct() {
        // Membuat koneksi menggunakan objek MySQLi (OOP)
        $this->conn = new mysqli($this->host, $this->username, $this->password, $this->database);

        // Memeriksa apakah koneksi mengalami error
        if ($this->conn->connect_error) {
            die("Koneksi gagal: " . $this->conn->connect_error);
        }

        // Menampilkan pesan sukses jika berhasil terhubung
        echo "Koneksi Berhasil! Terhubung dengan database: " . $this->database . "<br>";
    }
}
$db = new Database();
?>