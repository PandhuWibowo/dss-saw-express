-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2020 at 05:00 PM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bts`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_alternatif`
--

CREATE TABLE `tbl_alternatif` (
  `kd_kelurahan` int(11) NOT NULL,
  `tech_ready` varchar(11) NOT NULL,
  `site_name` varchar(100) NOT NULL,
  `nama_kelurahan` varchar(100) NOT NULL,
  `c1` float NOT NULL,
  `c2` float NOT NULL,
  `c3` float NOT NULL,
  `c4` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_alternatif`
--

INSERT INTO `tbl_alternatif` (`kd_kelurahan`, `tech_ready`, `site_name`, `nama_kelurahan`, `c1`, `c2`, `c3`, `c4`) VALUES
(100, '3 G', 'BANJARWIJAYACIPONDOHDMT', 'PORIS PLAWAD INDAH', 11.26, 9, 10, 75),
(101, '3.5 G', 'BATUCEPERDAANMOGOTPTEL', 'PORIS PLAWAD', 12.28, 11, 15, 50),
(102, '3.5 G', 'CEMARAPORISINDAHPTEL', 'KETAPANG', 20.61, 17, 45, 50),
(103, '3.5 G', 'CIPONDOH', 'CIPONDOH', 22.6, 20, 60, 50),
(104, '3.5 G', 'CIPONDOH2', 'CIPONDOH INDAH', 31.86, 25, 75, 50),
(105, '3 G', 'CIPONDOHINDH', 'KENANGA', 13.6, 10, 15, 75),
(106, '3.5 G', 'CIPONDOHMKMR', 'CIPONDOH MAKMUR', 28.18, 26, 82, 50),
(107, '3 G', 'GONDRONGCIPONDOHDMT', 'GONDRONG', 19.49, 15, 20, 75),
(108, '3.5 G', 'HAJIASYARITGRDMT', 'PORIS PLAWAD UTARA', 19.94, 18, 40, 50),
(109, '3.5 G', 'HARAPANJAYACIPONDOHDMT', 'PETIR', 28.7, 19, 50, 50);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_config`
--

CREATE TABLE `tbl_config` (
  `id_config` int(11) NOT NULL,
  `kondisi` varchar(20) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_config`
--

INSERT INTO `tbl_config` (`id_config`, `kondisi`, `nilai`) VALUES
(1, 'New', 100),
(2, 'Existing 3 G', 75),
(3, 'Existing 3,5 G', 50);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kkp`
--

CREATE TABLE `tbl_kkp` (
  `id_kkp` int(11) NOT NULL,
  `nm_kelurahan` varchar(100) NOT NULL,
  `15-65` int(20) NOT NULL,
  `65+` int(20) NOT NULL,
  `total_1` int(20) NOT NULL,
  `total_2` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kkp`
--

INSERT INTO `tbl_kkp` (`id_kkp`, `nm_kelurahan`, `15-65`, `65+`, `total_1`, `total_2`) VALUES
(1, 'Poris Plawad I', 21536, 723, 22259, 22),
(2, 'Cipondoh', 21822, 774, 22596, 23),
(3, 'Kenanga', 13166, 436, 13602, 14),
(4, 'Gondrong', 18833, 657, 19490, 19),
(5, 'Petir', 27688, 1010, 29, 29),
(6, 'Ketapang', 19902, 707, 20609, 21),
(7, 'Cipondoh Indah', 30540, 1318, 31858, 32),
(8, 'Cipondoh Makmur', 27229, 876, 28175, 28);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_alternatif`
--
ALTER TABLE `tbl_alternatif`
  ADD PRIMARY KEY (`kd_kelurahan`);

--
-- Indexes for table `tbl_config`
--
ALTER TABLE `tbl_config`
  ADD PRIMARY KEY (`id_config`);

--
-- Indexes for table `tbl_kkp`
--
ALTER TABLE `tbl_kkp`
  ADD PRIMARY KEY (`id_kkp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_alternatif`
--
ALTER TABLE `tbl_alternatif`
  MODIFY `kd_kelurahan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `tbl_config`
--
ALTER TABLE `tbl_config`
  MODIFY `id_config` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_kkp`
--
ALTER TABLE `tbl_kkp`
  MODIFY `id_kkp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
