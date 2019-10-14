-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2019 at 06:05 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_penjualan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `barang_id` varchar(15) NOT NULL,
  `barang_nama` varchar(150) DEFAULT NULL,
  `barang_satuan` varchar(30) DEFAULT NULL,
  `barang_harjul` double DEFAULT NULL,
  `barang_stok` int(11) DEFAULT '0',
  `barang_tgl_input` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `barang_tgl_last_update` datetime DEFAULT NULL,
  `barang_kategori_id` int(11) DEFAULT NULL,
  `barang_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`barang_id`, `barang_nama`, `barang_satuan`, `barang_harjul`, `barang_stok`, `barang_tgl_input`, `barang_tgl_last_update`, `barang_kategori_id`, `barang_user_id`) VALUES
('BR000001', 'Sayap ', 'PCS', 9500, 44, '2019-10-14 01:58:09', '2019-10-14 08:58:16', 40, 1),
('BR000002', 'Paha bawah', 'PCS', 11000, 49, '2019-10-14 01:58:34', '2019-10-14 08:59:13', 40, 1),
('BR000003', 'Paha atas', 'PCS', 13000, 50, '2019-10-14 01:58:53', '2019-10-14 08:59:17', 40, 1),
('BR000004', 'Dada ', 'PCS', 13000, 39, '2019-10-14 01:59:08', '2019-10-14 08:59:22', 40, 1),
('BR000005', 'Chicken Cheesy Level Sayap', 'PCS', 13000, 29, '2019-10-14 02:00:58', '2019-10-14 09:01:37', 41, 1),
('BR000006', 'Chicken Cheesy Level Paha Bawah', 'PCS', 14000, 29, '2019-10-14 02:01:16', '2019-10-14 09:01:46', 41, 1),
('BR000007', 'Chicken Cheesy Level Paha Atas', 'PCS', 15000, 30, '2019-10-14 02:01:31', '2019-10-14 09:01:52', 41, 1),
('BR000008', 'Nasi ', 'PCS', 4000, 20, '2019-10-14 02:03:12', '2019-10-14 09:05:13', 42, 1),
('BR000009', 'Perkedel ', 'PCS', 4000, 20, '2019-10-14 02:03:26', '2019-10-14 09:05:19', 42, 1),
('BR000010', 'French Fries', 'PCS', 9000, 20, '2019-10-14 02:03:58', '2019-10-14 09:05:34', 42, 1),
('BR000011', 'Chicken Steak', 'PCS', 12000, 20, '2019-10-14 02:04:15', '2019-10-14 09:05:41', 42, 1),
('BR000012', 'Chicken Burger', 'PCS', 11000, 20, '2019-10-14 02:04:44', '2019-10-14 09:05:48', 42, 1),
('BR000013', 'Chicken Cheese Burger', 'PCS', 13000, 20, '2019-10-14 02:05:05', '2019-10-14 09:05:53', 42, 1),
('BR000014', 'Milo ', 'Botol', 8000, 50, '2019-10-14 02:25:47', '2019-10-14 09:27:33', 43, 1),
('BR000015', 'Lemon Tea', 'Botol', 6000, 50, '2019-10-14 02:26:02', '2019-10-14 09:27:41', 43, 1),
('BR000016', 'Nestle Orange', 'Botol', 6000, 50, '2019-10-14 02:26:25', '2019-10-14 09:28:06', 43, 1),
('BR000017', 'Air Mineral', 'Botol', 4000, 50, '2019-10-14 02:26:40', '2019-10-14 09:28:01', 43, 1),
('BR000018', 'Teh Botol', 'Botol', 6000, 50, '2019-10-14 02:26:59', '2019-10-14 09:27:53', 43, 1),
('BR000019', 'Fruit Tea', 'Botol', 6000, 50, '2019-10-14 02:27:16', '2019-10-14 09:27:47', 43, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_jual`
--

CREATE TABLE `tbl_detail_jual` (
  `d_jual_id` int(11) NOT NULL,
  `d_jual_no_penjualan` varchar(15) DEFAULT NULL,
  `d_jual_barang_id` varchar(15) DEFAULT NULL,
  `d_jual_barang_nama` varchar(150) DEFAULT NULL,
  `d_jual_barang_satuan` varchar(30) NOT NULL,
  `d_jual_barang_harjul` double DEFAULT NULL,
  `d_jual_qty` int(11) DEFAULT NULL,
  `d_jual_diskon` double DEFAULT NULL,
  `d_jual_total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_detail_jual`
--

INSERT INTO `tbl_detail_jual` (`d_jual_id`, `d_jual_no_penjualan`, `d_jual_barang_id`, `d_jual_barang_nama`, `d_jual_barang_satuan`, `d_jual_barang_harjul`, `d_jual_qty`, `d_jual_diskon`, `d_jual_total`) VALUES
(26, '141019000001', 'BR000001', 'Sayap ', 'PCS', 9500, 6, 0, 57000),
(27, '141019000002', 'BR000004', 'Dada ', 'PCS', 13000, 1, 0, 13000),
(28, '141019000003', 'BR000006', 'Chicken Cheesy Level Paha Bawah', 'PCS', 14000, 1, 0, 14000),
(29, '141019000004', 'BR000005', 'Chicken Cheesy Level Sayap', 'PCS', 13000, 1, 0, 13000),
(30, '141019000005', 'BR000004', 'Dada ', 'PCS', 13000, 5, 0, 65000),
(31, '141019000006', 'BR000002', 'Paha bawah', 'PCS', 11000, 1, 0, 11000),
(32, '141019000007', 'BR000004', 'Dada ', 'PCS', 13000, 5, 0, 65000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jual`
--

CREATE TABLE `tbl_jual` (
  `jual_no_penjualan` varchar(15) NOT NULL,
  `jual_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `jual_total` double DEFAULT NULL,
  `jual_jml_uang` double DEFAULT NULL,
  `jual_kembalian` double DEFAULT NULL,
  `jual_user_id` int(11) DEFAULT NULL,
  `jual_keterangan` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jual`
--

INSERT INTO `tbl_jual` (`jual_no_penjualan`, `jual_tanggal`, `jual_total`, `jual_jml_uang`, `jual_kembalian`, `jual_user_id`, `jual_keterangan`) VALUES
('141019000001', '2019-10-14 03:33:59', 57000, 100000, 43000, 1, 'eceran'),
('141019000002', '2019-10-14 03:34:56', 13000, 1300000, 1287000, 1, 'eceran'),
('141019000003', '2019-10-14 03:35:10', 14000, 312324, 298324, 1, 'eceran'),
('141019000004', '2019-10-14 03:44:48', 13000, 50000, 37000, 1, 'eceran'),
('141019000005', '2019-10-14 03:46:13', 65000, 100000, 35000, 1, 'eceran'),
('141019000006', '2019-10-14 03:54:46', 11000, 50000, 39000, 1, 'eceran'),
('141019000007', '2019-10-14 03:55:20', 65000, 100000, 35000, 1, 'eceran');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`) VALUES
(40, 'CHICKEN '),
(41, 'CHEESY LEVEL'),
(42, 'MENU LAIN'),
(43, 'MINUMAN');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_nama` varchar(35) DEFAULT NULL,
  `user_username` varchar(30) DEFAULT NULL,
  `user_password` varchar(35) DEFAULT NULL,
  `user_level` varchar(2) DEFAULT NULL,
  `user_status` varchar(2) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_nama`, `user_username`, `user_password`, `user_level`, `user_status`) VALUES
(1, 'M Fikri Setiadi', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1', '1'),
(2, 'fikri', 'kasir', 'e10adc3949ba59abbe56e057f20f883e', '2', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`barang_id`),
  ADD KEY `barang_user_id` (`barang_user_id`),
  ADD KEY `barang_kategori_id` (`barang_kategori_id`);

--
-- Indexes for table `tbl_detail_jual`
--
ALTER TABLE `tbl_detail_jual`
  ADD PRIMARY KEY (`d_jual_id`),
  ADD KEY `d_jual_barang_id` (`d_jual_barang_id`),
  ADD KEY `d_jual_nofak` (`d_jual_no_penjualan`);

--
-- Indexes for table `tbl_jual`
--
ALTER TABLE `tbl_jual`
  ADD PRIMARY KEY (`jual_no_penjualan`),
  ADD KEY `jual_user_id` (`jual_user_id`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_detail_jual`
--
ALTER TABLE `tbl_detail_jual`
  MODIFY `d_jual_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD CONSTRAINT `tbl_barang_ibfk_1` FOREIGN KEY (`barang_user_id`) REFERENCES `tbl_user` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_barang_ibfk_2` FOREIGN KEY (`barang_kategori_id`) REFERENCES `tbl_kategori` (`kategori_id`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_detail_jual`
--
ALTER TABLE `tbl_detail_jual`
  ADD CONSTRAINT `tbl_detail_jual_ibfk_1` FOREIGN KEY (`d_jual_barang_id`) REFERENCES `tbl_barang` (`barang_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_detail_jual_ibfk_2` FOREIGN KEY (`d_jual_no_penjualan`) REFERENCES `tbl_jual` (`jual_no_penjualan`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_jual`
--
ALTER TABLE `tbl_jual`
  ADD CONSTRAINT `tbl_jual_ibfk_1` FOREIGN KEY (`jual_user_id`) REFERENCES `tbl_user` (`user_id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
