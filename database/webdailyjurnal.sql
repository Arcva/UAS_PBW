-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Jan 2025 pada 14.25
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webdailyjurnal`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `judul` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `isi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gambar` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal` datetime NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `article`
--

INSERT INTO `article` (`id`, `judul`, `isi`, `gambar`, `tanggal`, `username`) VALUES
(1, 'Parkiran UDINUS', 'Berangkat menuju kampus untuk melaksanakan perkuliahan. Setelah memarkirkan motor, istirahat sejenak di Masjid dan melihat parkiran.', 'gambar4.jpg', '2024-12-06 06:33:31', 'admin'),
(2, 'Daily HSR', 'Menyelesaikan daily quest Honkai Star Rail di pagi hari.', 'gambar5.jpg', '2024-12-06 06:33:31', 'admin'),
(3, 'Depan Ruang Kelas', 'Menuju ke ruang kelas untuk perkuliahan. Setelah sampai di depan ruangan, ternyata kelas masih dipakai untuk perkuliahan MatKul lain dan terpaksa harus menunggu sejenak.', 'gambar6.jpg', '2024-12-06 06:33:31', 'admin'),
(4, 'Ruang Kelas', 'Bersantai di ruang kelas sambil menunggu dosen datang untuk kegiatan perkuliahan.', 'gambar7.jpg', '2024-12-06 06:33:31', 'admin'),
(22, 'Grinding MHW', 'Grinding Monster Hunter World selama 8 jam untuk mendapatkan 1 item yang sangat susah didapatkan.', 'gambar8.jpg', '2024-12-06 06:33:31', 'admin'),
(28, 'Lose Streak Palo', 'Main palo dua hari tidak kunjung mendapatkan kemenangan malah mendapatkan kekalahan berunutun.', 'gambar9.jpg', '2024-12-06 06:33:31', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `nama` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gambar` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal` datetime NOT NULL,
  `username` varchar(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `gallery`
--

INSERT INTO `gallery` (`id`, `nama`, `gambar`, `tanggal`, `username`) VALUES
(1, 'gambar 1', '20250106182139.jpg', '2025-01-06 18:21:39', 'admin'),
(2, 'gambar 2', 'gambar2.jpg', '2025-01-06 10:34:04', 'admin'),
(3, 'gambar 3', 'gambar3.jpg', '2025-01-06 10:34:04', 'admin'),
(4, 'gambar 4', 'gambar4.jpg', '2025-01-06 10:34:04', 'admin'),
(5, 'gambar 5', 'gambar5.jpg', '2025-01-06 10:34:04', 'admin'),
(6, 'gambar 6', 'gambar6.jpg', '2025-01-06 10:34:04', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `foto`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'saya.jpg'),
(2, 'sigit', '20d135f0f28185b84a4cf7aa51f29500', '20250106200012.png'),
(4, 'woilah', '9c3b1830513cc3b8fc4b76635d32e692', '20250106200606.png'),
(5, 'asep knalpot', 'd6ef5f7fa914c19931a55bb262ec879c', '20250106200458.png'),
(6, 'tampan dan berani', 'e19347e1c3ca0c0b97de5fb3b690855a', '20250106200548.jpeg'),
(7, 'xipe', 'dd77279f7d325eec933f05b1672f6a1f', '20250106200740.jpeg'),
(8, 'danny', '21232f297a57a5a743894a0e4a801fc3', '20250106200831.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
