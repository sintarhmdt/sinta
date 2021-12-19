-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Des 2021 pada 10.37
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ngangkut`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(120) NOT NULL,
  `username` varchar(120) NOT NULL,
  `password` varchar(120) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin1', 'admin123', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(11) NOT NULL,
  `nama` varchar(120) NOT NULL,
  `username` varchar(120) NOT NULL,
  `alamat` varchar(120) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `no_ktp` varchar(50) NOT NULL,
  `password` varchar(120) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`id_customer`, `nama`, `username`, `alamat`, `gender`, `no_telepon`, `no_ktp`, `password`, `role_id`) VALUES
(3, 'rulia', 'admin', 'wanher', 'perempuan', '02938403576', '3271693274948365', '5aa0cf1e9d717e23064d0a8b5fb5297d', 1),
(4, 'sinta', 'sinta22', 'wanher', 'perempuan', '93877532557186', '324157138628457187309', 'e807f1fcf82d132f9bb018ca6738a19f', 2),
(7, 'admin', 'admin', 'jkt', 'perempuan', '0897725632542', '02949738652364', 'admin12', 1),
(8, 'admin', 'admin', 'jkt', 'perempuan', '0897725632542', '02949738652364', 'admin', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil`
--

CREATE TABLE `mobil` (
  `id_mobil` int(11) NOT NULL,
  `kode_tipe` varchar(120) NOT NULL,
  `merek` varchar(120) NOT NULL,
  `no_plat` varchar(20) NOT NULL,
  `warna` varchar(20) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  `status` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `denda` int(11) NOT NULL,
  `ac` int(11) NOT NULL,
  `sopir` int(11) NOT NULL,
  `kenek` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mobil`
--

INSERT INTO `mobil` (`id_mobil`, `kode_tipe`, `merek`, `no_plat`, `warna`, `tahun`, `status`, `harga`, `denda`, `ac`, `sopir`, `kenek`, `gambar`) VALUES
(30, '1', 'Fuso Colt Diesel FE 73 LDT', 'F 321 RDI', 'Kuning', '2010', '1', 300000, 100000, 0, 0, 0, 'truk32.png'),
(31, '1', 'Hino', 'B 1457 FHO', 'putih', '2019', '1', 500000, 100000, 1, 0, 0, 'truk11.jpg'),
(32, '2', 'mitsubishi', 'B 1345 FAH', 'Kuning', '2013', '1', 400000, 50000, 0, 0, 0, 'truk51.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rental`
--

CREATE TABLE `rental` (
  `id_rental` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `id_mobil` int(11) NOT NULL,
  `tgl_rental` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `harga` varchar(120) NOT NULL,
  `denda` varchar(120) NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `status_rental` varchar(50) NOT NULL,
  `status_pengembalian` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tipe`
--

CREATE TABLE `tipe` (
  `id_tipe` int(11) NOT NULL,
  `kode_tipe` varchar(120) NOT NULL,
  `nama_tipe` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tipe`
--

INSERT INTO `tipe` (`id_tipe`, `kode_tipe`, `nama_tipe`) VALUES
(6, '1', 'Terbuka'),
(7, '2', 'Tertutup/Box');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_rental` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `id_mobil` int(11) NOT NULL,
  `tgl_rental` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `harga` varchar(120) NOT NULL,
  `denda` varchar(120) NOT NULL,
  `total_denda` varchar(120) NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `status_pengembalian` varchar(50) NOT NULL,
  `status_rental` varchar(50) NOT NULL,
  `bukti_pembayaran` varchar(120) NOT NULL,
  `status_pembayaran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_rental`, `id_customer`, `id_mobil`, `tgl_rental`, `tgl_kembali`, `harga`, `denda`, `total_denda`, `tgl_pengembalian`, `status_pengembalian`, `status_rental`, `bukti_pembayaran`, `status_pembayaran`) VALUES
(1, 4, 4, '2020-04-01', '2020-04-02', '400000', '250000', '', '0000-00-00', 'belum kembali', 'dirental', '', 0),
(2, 5, 7, '2021-10-07', '2021-10-08', '200000', '50000', '', '0000-00-00', 'Belum Kembali', 'Belum Selesai', '', 0),
(4, 3, 10, '2020-12-04', '2020-12-05', '0', '0', '', '2020-12-06', 'Kembali', 'Selesai', '', 0),
(5, 5, 15, '2127-12-12', '2127-12-14', '0', '0', '', '2127-12-14', 'Kembali', 'Selesai', 'truk122.jpg', 1),
(6, 5, 16, '2128-11-12', '2129-11-15', '0', '0', '', '0000-00-00', 'Kembali', 'Selesai', '', 0),
(9, 3, 32, '2021-12-04', '2021-12-05', '400000', '50000', '0', '2021-12-05', 'Kembali', 'Selesai', 'logoo1.png', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indeks untuk tabel `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indeks untuk tabel `rental`
--
ALTER TABLE `rental`
  ADD PRIMARY KEY (`id_rental`);

--
-- Indeks untuk tabel `tipe`
--
ALTER TABLE `tipe`
  ADD PRIMARY KEY (`id_tipe`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_rental`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `mobil`
--
ALTER TABLE `mobil`
  MODIFY `id_mobil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `rental`
--
ALTER TABLE `rental`
  MODIFY `id_rental` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tipe`
--
ALTER TABLE `tipe`
  MODIFY `id_tipe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_rental` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
