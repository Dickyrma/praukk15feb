-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Feb 2023 pada 08.41
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_praukk_dick`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_dvd`
--

CREATE TABLE `tb_dvd` (
  `id_dvd` int(10) NOT NULL,
  `genre_film` varchar(30) NOT NULL,
  `judul_film` varchar(50) NOT NULL,
  `tahun_film` int(4) NOT NULL,
  `tanggal_sewa` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_dvd`
--

INSERT INTO `tb_dvd` (`id_dvd`, `genre_film`, `judul_film`, `tahun_film`, `tanggal_sewa`, `tanggal_kembali`, `harga`) VALUES
(1, 'bbb', 'cccc', 445, '2023-02-15', '2023-02-17', 5555),
(8, '', '', 0, '0000-00-00', '0000-00-00', 0),
(9, 'non', 'pelangi', 2008, '2022-12-14', '2023-02-15', 80000),
(10, 'fiksi', 'laskar', 27, '2023-02-01', '2023-02-15', 47),
(11, 'fantasty', 'isekai', 5, '2023-02-01', '2023-02-28', 23232);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_penyewa`
--

CREATE TABLE `tb_penyewa` (
  `id_penyewa` int(10) NOT NULL,
  `nama_penyewa` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `id_dvd` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_penyewa`
--

INSERT INTO `tb_penyewa` (`id_penyewa`, `nama_penyewa`, `alamat`, `id_dvd`) VALUES
(11, 'dickyyy', 'rusunawakarangroto rt.3/rw12', 11);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_dvd`
--
ALTER TABLE `tb_dvd`
  ADD PRIMARY KEY (`id_dvd`);

--
-- Indeks untuk tabel `tb_penyewa`
--
ALTER TABLE `tb_penyewa`
  ADD PRIMARY KEY (`id_penyewa`),
  ADD KEY `id_dvd` (`id_dvd`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_dvd`
--
ALTER TABLE `tb_dvd`
  MODIFY `id_dvd` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tb_penyewa`
--
ALTER TABLE `tb_penyewa`
  MODIFY `id_penyewa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_penyewa`
--
ALTER TABLE `tb_penyewa`
  ADD CONSTRAINT `penyewa_dvd` FOREIGN KEY (`id_dvd`) REFERENCES `tb_dvd` (`id_dvd`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
