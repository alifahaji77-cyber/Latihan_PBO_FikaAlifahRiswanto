-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 15, 2026 at 05:25 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_latihan_pbo_ti1c`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_tiket`
--

CREATE TABLE `tabel_tiket` (
  `id_tiket` varchar(15) NOT NULL,
  `nama_film` varchar(100) NOT NULL,
  `jadwal_tayang` datetime NOT NULL,
  `jumlah_kursi` int NOT NULL,
  `harga_dasar_tiket` int NOT NULL,
  `jenis_studio` enum('Regular','IMAX','Velvet') NOT NULL,
  `tipe_studio` varchar(50) DEFAULT NULL,
  `lokasi_baris` varchar(30) DEFAULT NULL,
  `kacamata_3d_id` varchar(20) DEFAULT NULL,
  `gerak_fitur` varchar(50) DEFAULT NULL,
  `bantal_selimut_pack` varchar(50) DEFAULT NULL,
  `layanan_butler` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tabel_tiket`
--

INSERT INTO `tabel_tiket` (`id_tiket`, `nama_film`, `jadwal_tayang`, `jumlah_kursi`, `harga_dasar_tiket`, `jenis_studio`, `tipe_studio`, `lokasi_baris`, `kacamata_3d_id`, `gerak_fitur`, `bantal_selimut_pack`, `layanan_butler`) VALUES
('TKT-IMX-001', 'Avatar: The Way of Water', '2026-06-16 14:00:00', 2, 75000, 'IMAX', 'IMAX 3D', 'Row H', '3D-GLES-01', 'Active Motion', NULL, NULL),
('TKT-IMX-002', 'Dune: Part Two', '2026-06-16 17:45:00', 2, 75000, 'IMAX', 'IMAX 2D', 'Row J', NULL, 'Standard', NULL, NULL),
('TKT-IMX-003', 'Oppenheimer', '2026-06-16 20:30:00', 1, 85000, 'IMAX', 'IMAX 2D', 'Row K', NULL, 'Standard', NULL, NULL),
('TKT-IMX-004', 'Top Gun: Maverick', '2026-06-17 11:30:00', 2, 75000, 'IMAX', 'IMAX 2D', 'Row H', NULL, 'Active Motion', NULL, NULL),
('TKT-IMX-005', 'Doctor Strange 2', '2026-06-17 15:00:00', 3, 75000, 'IMAX', 'IMAX 3D', 'Row I', '3D-GLES-02', 'Active Motion', NULL, NULL),
('TKT-IMX-006', 'Jurassic World', '2026-06-17 18:30:00', 2, 75000, 'IMAX', 'IMAX 3D', 'Row J', '3D-GLES-03', 'Standard', NULL, NULL),
('TKT-IMX-007', 'Star Wars: The Force Awakens', '2026-06-17 21:45:00', 1, 85000, 'IMAX', 'IMAX 2D', 'Row K', NULL, 'Standard', NULL, NULL),
('TKT-REG-001', 'Avangers: Endgame', '2026-06-16 13:00:00', 2, 40000, 'Regular', 'Standard 2D', 'Row G', NULL, NULL, NULL, NULL),
('TKT-REG-002', 'Spider-Man: No Way Home', '2026-06-16 15:30:00', 1, 40000, 'Regular', 'Standard 2D', 'Row E', NULL, NULL, NULL, NULL),
('TKT-REG-003', 'Batman v Superman', '2026-06-16 19:00:00', 4, 45000, 'Regular', 'Standard 2D', 'Row C', NULL, NULL, NULL, NULL),
('TKT-REG-004', 'Inception', '2026-06-17 10:00:00', 2, 40000, 'Regular', 'Standard 2D', 'Row F', NULL, NULL, NULL, NULL),
('TKT-REG-005', 'Interstellar', '2026-06-17 14:00:00', 1, 40000, 'Regular', 'Standard 2D', 'Row D', NULL, NULL, NULL, NULL),
('TKT-REG-006', 'The Dark Knight', '2026-06-17 21:00:00', 3, 45000, 'Regular', 'Standard 2D', 'Row A', NULL, NULL, NULL, NULL),
('TKT-VLV-001', 'Titanic', '2026-06-16 13:15:00', 2, 120000, 'Velvet', 'Velvet Suite', 'Row Suite A', NULL, NULL, 'Premium Pack 1', 'Personal Butler Service'),
('TKT-VLV-002', 'The Matrix Resurrections', '2026-06-16 16:30:00', 2, 120000, 'Velvet', 'Velvet Suite', 'Row Suite B', NULL, NULL, 'Premium Pack 2', 'Standard Butler Service'),
('TKT-VLV-003', 'La La Land', '2026-06-16 20:00:00', 2, 150000, 'Velvet', 'Velvet Lounge', 'Row Suite C', NULL, NULL, 'Premium Pack 3', 'VIP Butler Service'),
('TKT-VLV-004', 'Gladiator II', '2026-06-17 12:45:00', 2, 120000, 'Velvet', 'Velvet Suite', 'Row Suite A', NULL, NULL, 'Premium Pack 1', 'Standard Butler Service'),
('TKT-VLV-005', 'The Godfather', '2026-06-17 16:00:00', 2, 120000, 'Velvet', 'Velvet Suite', 'Row Suite B', NULL, NULL, 'Premium Pack 2', 'Personal Butler Service'),
('TKT-VLV-006', 'Bohemian Rhapsody', '2026-06-17 19:15:00', 2, 150000, 'Velvet', 'Velvet Lounge', 'Row Suite C', NULL, NULL, 'Premium Pack 3', 'VIP Butler Service'),
('TKT-VLV-007', 'Whiplash', '2026-06-17 22:30:00', 2, 120000, 'Velvet', 'Velvet Suite', 'Row Suite D', NULL, NULL, 'Premium Pack 1', 'Standard Butler Service');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_tiket`
--
ALTER TABLE `tabel_tiket`
  ADD PRIMARY KEY (`id_tiket`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
