-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 17, 2019 at 07:59 AM
-- Server version: 5.7.28
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wosf1665_cucian`
--

-- --------------------------------------------------------

--
-- Table structure for table `mst`
--

CREATE TABLE `mst` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mst`
--

INSERT INTO `mst` (`id`, `nama`, `alamat`, `no_telp`, `gambar`) VALUES
(1, 'Wosh Wosh Car', 'Jakarta', '', 'logo_.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_accesoris`
--

CREATE TABLE `tbl_accesoris` (
  `id_accesoris` int(11) NOT NULL,
  `nama_accesoris` varchar(100) NOT NULL,
  `stok` int(11) NOT NULL,
  `harga` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_accesoris`
--

INSERT INTO `tbl_accesoris` (`id_accesoris`, `nama_accesoris`, `stok`, `harga`) VALUES
(1, 'Gantungan', 10, '10000');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jenis_kendaraan`
--

CREATE TABLE `tbl_jenis_kendaraan` (
  `id_jenis_kendaraan` int(11) NOT NULL,
  `jenis` varchar(100) NOT NULL,
  `ukuran` varchar(100) NOT NULL,
  `harga` varchar(100) NOT NULL,
  `harga_pencuci` varchar(100) NOT NULL,
  `aktif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_jenis_kendaraan`
--

INSERT INTO `tbl_jenis_kendaraan` (`id_jenis_kendaraan`, `jenis`, `ukuran`, `harga`, `harga_pencuci`, `aktif`) VALUES
(1, 'Mobil', 'Besar', '45000', '15000', 1),
(2, 'Mobil', 'Kecil', '35000', '10000', 1),
(3, 'Motor', 'Besar', '20000', '8000', 1),
(4, 'Motor', 'Kecil', '15000', '5000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mst_kendaraan`
--

CREATE TABLE `tbl_mst_kendaraan` (
  `id_mst_kendaraan` int(11) NOT NULL,
  `id_mst_jenis_kendaraan` int(11) NOT NULL,
  `merk` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `aktif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mst_kendaraan`
--

INSERT INTO `tbl_mst_kendaraan` (`id_mst_kendaraan`, `id_mst_jenis_kendaraan`, `merk`, `nama`, `aktif`) VALUES
(1, 1, 'Toyota', 'Fortuner', 1),
(2, 2, 'Toyota', 'Avanza', 1),
(3, 3, 'Honda', 'Tiger', 1),
(4, 4, 'Honda', 'Beat', 1),
(5, 4, 'Honda', 'Scoopy', 1),
(6, 1, 'Toyota', 'ALPHARD', 0),
(7, 1, 'ISUZU', 'PHANTER', 0),
(8, 2, 'TOYOTA', 'YARIS', 0),
(9, 2, 'TOYOTA', 'VELOZ', 0),
(10, 2, 'DAIHATSU', 'XENIA', 0),
(11, 2, 'AUDI', 'AUDI', 0),
(12, 2, 'TIMOR', 'TIMOR', 0),
(13, 2, 'BMW', 'BMW', 0),
(14, 2, 'MARCEDES', 'MARCEDES', 0),
(15, 1, 'JEEP', 'JEEP', 0),
(16, 2, 'FORD', 'FORD', 0),
(17, 1, 'FERRARI', 'FERRARI', 0),
(18, 1, 'DODGE', 'DODGE', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pencuci`
--

CREATE TABLE `tbl_pencuci` (
  `id_pencuci` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `no_ktp` int(40) NOT NULL,
  `aktif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_pencuci`
--

INSERT INTO `tbl_pencuci` (`id_pencuci`, `nama`, `no_ktp`, `aktif`) VALUES
(1, 'Agus', 3218888, 0),
(2, 'Odah', 329999, 0),
(3, 'Suryo Atmaja', 2147483647, 0),
(4, 'ANDI', 1234567, 0),
(5, 'UDEL', 2345678, 0),
(6, 'ROY', 3456789, 0),
(7, 'ASEP', 4567890, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi`
--

CREATE TABLE `tbl_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_mst_kendaraan` int(11) NOT NULL,
  `id_pencuci` int(11) NOT NULL,
  `nopol` varchar(20) NOT NULL,
  `total_bayar` int(11) NOT NULL,
  `harga_pencuci` int(11) NOT NULL,
  `created_by` varchar(30) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_transaksi`
--

INSERT INTO `tbl_transaksi` (`id_transaksi`, `id_mst_kendaraan`, `id_pencuci`, `nopol`, `total_bayar`, `harga_pencuci`, `created_by`, `created_date`) VALUES
(2, 2, 1, 'B 12345 CDE', 35000, 10000, 'Admin', '2019-07-06 14:43:07'),
(3, 2, 2, 'B 12345 CDE', 35000, 20000, 'Admin', '2019-05-05 14:43:30'),
(4, 2, 2, 'B 12345 CDE', 35000, 15000, 'Admin', '2019-05-04 14:44:02'),
(5, 2, 2, 'B 12345 CDE', 35000, 20000, 'Admin', '2019-04-04 14:44:25'),
(6, 2, 1, 'B 12345 CDE', 35000, 10000, 'Admin', '2019-04-03 14:49:46'),
(7, 1, 1, 'B 12345 CDE', 45000, 10000, 'Admin', '2019-01-02 14:50:38'),
(8, 4, 2, 'B 1205 K', 15000, 5000, 'Admin', '2019-07-06 19:20:52'),
(9, 3, 1, 'B 1290 CK', 20000, 20000, 'Admin', '2019-07-06 19:21:34'),
(10, 3, 1, 'D 1083 L', 20000, 15000, 'Admin', '2019-07-06 19:22:07'),
(11, 2, 1, 'B 1 RI', 35000, 10000, 'Admin', '2019-07-06 19:23:48'),
(12, 1, 1, 'G 1902 K', 45000, 15000, 'Admin', '2019-07-06 19:25:29'),
(13, 1, 1, 'B 4666 FHN', 45000, 8000, 'Admin', '2019-07-06 19:25:45'),
(14, 2, 1, 'B 4777 M', 35000, 10000, 'Admin', '2019-07-06 23:13:08'),
(15, 1, 1, 'B 12345 CDE', 45000, 15000, 'Admin', '2019-07-07 01:11:38'),
(16, 2, 1, 'B 12345 CDE', 35000, 10000, 'Admin', '2019-07-07 02:08:37'),
(17, 1, 1, 'B 1234 YY', 45000, 15000, 'Admin', '2019-07-08 18:47:00'),
(18, 2, 2, 'B 3210 OY', 35000, 10000, 'Admin', '2019-07-08 18:49:05'),
(19, 10, 4, 'B 2211 YY', 35000, 10000, 'Admin', '2019-07-10 16:02:22'),
(20, 6, 5, 'B 6633 TT', 45000, 15000, 'Admin', '2019-07-10 16:03:04'),
(21, 10, 5, 'B 9900 JH', 35000, 10000, 'Admin', '2019-07-10 16:03:53'),
(22, 13, 4, 'B 0000 TEST', 35000, 10000, 'Admin', '2019-07-17 00:10:22'),
(23, 6, 6, 'B 1234 C', 45000, 15000, 'Admin', '2019-08-11 16:08:24'),
(24, 11, 7, 'B 1234 C', 35000, 10000, 'Admin', '2019-08-16 11:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi_detail`
--

CREATE TABLE `tbl_transaksi_detail` (
  `id_transaksi` int(11) NOT NULL,
  `id_accesoris` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(15) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `no_ktp` varchar(30) NOT NULL,
  `aktif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `level`, `nama`, `no_ktp`, `aktif`) VALUES
(1, 'kasir', 'kasir', 'Kasir', 'Kasir', '321999', 1),
(2, 'admin', 'admin', 'Admin', 'Admin', '122141', 1),
(3, 'ryan1', '1', 'Kasir', 'Ryan1', '1124917041', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_accesoris`
--
ALTER TABLE `tbl_accesoris`
  ADD PRIMARY KEY (`id_accesoris`);

--
-- Indexes for table `tbl_jenis_kendaraan`
--
ALTER TABLE `tbl_jenis_kendaraan`
  ADD PRIMARY KEY (`id_jenis_kendaraan`);

--
-- Indexes for table `tbl_mst_kendaraan`
--
ALTER TABLE `tbl_mst_kendaraan`
  ADD PRIMARY KEY (`id_mst_kendaraan`);

--
-- Indexes for table `tbl_pencuci`
--
ALTER TABLE `tbl_pencuci`
  ADD PRIMARY KEY (`id_pencuci`);

--
-- Indexes for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_accesoris`
--
ALTER TABLE `tbl_accesoris`
  MODIFY `id_accesoris` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_jenis_kendaraan`
--
ALTER TABLE `tbl_jenis_kendaraan`
  MODIFY `id_jenis_kendaraan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_mst_kendaraan`
--
ALTER TABLE `tbl_mst_kendaraan`
  MODIFY `id_mst_kendaraan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_pencuci`
--
ALTER TABLE `tbl_pencuci`
  MODIFY `id_pencuci` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
