-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2025 at 06:01 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_uas`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` time DEFAULT NULL,
  `status` enum('Hadir','Sakit','Izin') NOT NULL,
  `tipe` enum('Masuk','Keluar') NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `absensi`
--

INSERT INTO `absensi` (`id`, `tanggal`, `waktu`, `status`, `tipe`, `user_id`, `created_at`, `updated_at`) VALUES
(24, '2025-01-07', '06:18:00', 'Hadir', 'Masuk', 0, '2025-01-07 05:20:34', '2025-01-07 05:20:34'),
(25, '2025-01-07', NULL, 'Izin', 'Keluar', 2, '2025-01-07 05:28:17', '2025-01-07 05:28:17'),
(26, '2025-01-10', '06:27:00', 'Hadir', 'Masuk', 1, '2025-01-07 05:28:56', '2025-01-07 05:28:56'),
(27, '2025-01-09', NULL, 'Izin', 'Masuk', 3, '2025-01-07 07:24:36', '2025-01-07 07:24:36'),
(28, '2025-01-07', '09:06:00', 'Hadir', 'Masuk', 4, '2025-01-07 20:08:24', '2025-01-07 20:08:24'),
(29, '2025-01-07', NULL, 'Izin', 'Keluar', 4, '2025-01-07 20:09:54', '2025-01-07 20:09:54'),
(30, '2025-01-07', NULL, 'Sakit', 'Keluar', 1, '2025-01-07 22:31:54', '2025-01-07 22:31:54'),
(31, '2025-01-07', NULL, 'Sakit', 'Masuk', 6, '2025-01-07 22:39:20', '2025-01-07 22:39:20'),
(32, '2025-01-07', '11:37:00', 'Hadir', 'Keluar', 6, '2025-01-07 22:39:42', '2025-01-07 22:39:42');

-- --------------------------------------------------------

--
-- Table structure for table `gaji`
--

CREATE TABLE `gaji` (
  `id` int(11) NOT NULL,
  `periode_bulan` int(11) NOT NULL,
  `periode_tahun` int(11) NOT NULL,
  `gaji_pokok` decimal(10,0) NOT NULL,
  `tunjangan` decimal(10,0) NOT NULL,
  `potongan` decimal(10,0) NOT NULL,
  `gaji_bersih` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gaji`
--

INSERT INTO `gaji` (`id`, `periode_bulan`, `periode_tahun`, `gaji_pokok`, `tunjangan`, `potongan`, `gaji_bersih`) VALUES
(1, 1, 2024, 5000000, 500000, 120000, 5380000),
(2, 2, 2024, 5000000, 450000, 120000, 5330000),
(3, 3, 2024, 5000000, 580000, 120000, 5460000),
(4, 4, 2024, 5000000, 480000, 120000, 5360000),
(5, 5, 2024, 5000000, 500000, 120000, 5380000),
(6, 6, 2024, 5000000, 350000, 120000, 5230000),
(7, 7, 2024, 5000000, 600000, 120000, 5480000),
(8, 8, 2024, 5000000, 640000, 120000, 5520000),
(9, 9, 2024, 5000000, 650000, 120000, 5530000),
(10, 10, 2024, 5000000, 665000, 120000, 5545000),
(11, 11, 2024, 5000000, 660000, 120000, 5540000),
(12, 12, 2024, 5000000, 650000, 120000, 5530000);

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nik` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id`, `nama`, `nik`, `alamat`) VALUES
(1, 'maitasa', '123456787654321', 'Padang'),
(2, 'karyawan', '0987654321234567', 'Solok'),
(3, 'tes123', '0987543212345678', 'bukittinggi'),
(4, 'tri tata', '19087654321234566', 'Limau Manis'),
(5, 'asd', '567890', 'Padang'),
(6, 'Indah', '123456787654321', 'Padang');

-- --------------------------------------------------------

--
-- Table structure for table `pengajuancuti`
--

CREATE TABLE `pengajuancuti` (
  `id` int(11) NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL,
  `jumlah` int(20) NOT NULL,
  `tipe_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengajuancuti`
--

INSERT INTO `pengajuancuti` (`id`, `tanggal_mulai`, `tanggal_selesai`, `jumlah`, `tipe_id`, `user_id`) VALUES
(16, '2025-01-07', '2025-01-08', 2, 2, 2),
(17, '2025-01-07', '2025-01-10', 4, 6, 1),
(18, '2025-01-11', '2025-01-13', 3, 6, 3),
(20, '2025-01-07', '2025-01-14', 8, 2, 4),
(22, '2025-01-07', '2025-01-14', 8, 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `isi` text NOT NULL,
  `tertanda` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`id`, `judul`, `isi`, `tertanda`) VALUES
(1, 'Pemberitahuan Cuti Bersama', 'Kepada seluruh karyawan,\r\nBerdasarkan keputusan manajemen, cuti bersama akan dilaksanakan pada tanggal 25-27 Desember 2024 bertepatan dengan Hari Raya Natal. Seluruh kegiatan operasional perusahaan akan dihentikan sementara pada tanggal tersebut dan akan kembali beroperasi seperti biasa pada 28 Desember 2024.\r\n\r\nTerima kasih atas perhatian dan kerjasamanya.', 'Manajemen Perusahaan'),
(2, 'Pelatihan Pengembangan Kompetensi', 'Kepada Yth. Seluruh Karyawan,\r\nKami mengundang seluruh karyawan untuk mengikuti pelatihan pengembangan kompetensi dengan tema \"Peningkatan Soft Skills dalam Dunia Kerja\", yang akan dilaksanakan pada:\r\n\r\nHari/Tanggal: Senin, 30 Desember 2024\r\nWaktu: 09.00 - 16.00\r\nTempat: Ruang Auditorium, Gedung Utama\r\n\r\nPelatihan ini bertujuan untuk meningkatkan keterampilan komunikasi, manajemen waktu, dan kerja sama tim. Mohon kehadirannya tepat waktu.', 'HRD Perusahaan'),
(3, 'Pemberlakuan Sistem Kerja Hybrid', 'Kepada seluruh karyawan,\r\nDengan ini kami informasikan bahwa mulai tanggal 1 Februari 2024, perusahaan akan menerapkan sistem kerja hybrid. Sistem ini mengharuskan karyawan untuk bekerja dari kantor selama 3 hari dalam seminggu, sedangkan 2 hari sisanya dapat dilakukan secara remote.\r\n\r\nApabila ada pertanyaan terkait sistem kerja hybrid, silakan menghubungi HRD.', 'Manajemen Perusahaan'),
(4, 'Undangan Rapat Evaluasi Akhir Tahun', 'Kepada seluruh kepala departemen,\r\nKami mengundang Anda untuk menghadiri Rapat Evaluasi Akhir Tahun, yang akan dilaksanakan pada:\r\n\r\nHari/Tanggal: Selasa, 31 Desember 2024\r\nWaktu: 09.00 - 12.00 WIB\r\nTempat: Ruang Rapat Utama, Lantai 3\r\nRapat ini bertujuan untuk membahas pencapaian tahun 2024 dan rencana strategis untuk tahun 2025. Mohon hadir tepat waktu dan membawa laporan departemen masing-masing.\r\n', 'HRD Perusahaan'),
(5, 'Pengumuman Libur Tahun Baru', 'Kepada seluruh karyawan,\r\n\r\nDengan ini kami informasikan bahwa dalam rangka menyambut Tahun Baru 2024, perusahaan akan menetapkan jadwal libur sebagai berikut:\r\n\r\nHari Libur: Rabu, 1 Januari 2025\r\nKembali Bekerja: Kamis, 2 Januari 2025\r\nKami mengimbau seluruh karyawan untuk menyelesaikan tugas yang mendesak sebelum jadwal libur dimulai. Bagi karyawan yang bertugas pada hari libur, jadwal kerja akan diatur oleh masing-masing kepala departemen.', 'Direktur Utama');

-- --------------------------------------------------------

--
-- Table structure for table `tipecuti`
--

CREATE TABLE `tipecuti` (
  `id` int(11) NOT NULL,
  `nama_tipe` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tipecuti`
--

INSERT INTO `tipecuti` (`id`, `nama_tipe`) VALUES
(1, 'Cuti Tahunan'),
(2, 'Cuti Sakit'),
(3, 'Cuti Hamil'),
(4, 'Cuti Melahirkan'),
(5, 'Cuti Pendidikan'),
(6, 'Cuti Duka');

-- --------------------------------------------------------

--
-- Table structure for table `todolist`
--

CREATE TABLE `todolist` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL DEFAULT '0',
  `tanggal` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `todolist`
--

INSERT INTO `todolist` (`id`, `judul`, `tanggal`, `user_id`, `created_at`, `updated_at`) VALUES
(26, 'Evaluasi', '2025-01-09', 2, '2025-01-07 08:40:13', '2025-01-07 08:40:13');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `password`) VALUES
(1, 'maitasa', 'maitasa@gmail.com', '12345678'),
(2, 'karyawan', 'karyawan@gmail.com', '12345678'),
(3, 'tes123', 'tes123@gmail.com', '12345678'),
(4, 'tri tata', 'tritata21@gmail.com', '12345678'),
(5, 'asd', 'asdg@gmail.com', '1234'),
(6, 'Indah', 'indah123@gmail.com', '12345678');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gaji`
--
ALTER TABLE `gaji`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengajuancuti`
--
ALTER TABLE `pengajuancuti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tipecuti`
--
ALTER TABLE `tipecuti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `todolist`
--
ALTER TABLE `todolist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `gaji`
--
ALTER TABLE `gaji`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pengajuancuti`
--
ALTER TABLE `pengajuancuti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tipecuti`
--
ALTER TABLE `tipecuti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `todolist`
--
ALTER TABLE `todolist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
