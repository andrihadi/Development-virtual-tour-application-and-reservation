-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 05, 2019 at 09:55 PM
-- Server version: 5.7.27-log
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aviaresi_dbavia`
--

-- --------------------------------------------------------

--
-- Table structure for table `hotspots`
--

CREATE TABLE `hotspots` (
  `id` int(4) NOT NULL,
  `id_panorama` int(4) NOT NULL,
  `text` text NOT NULL,
  `sceneId` varchar(255) DEFAULT NULL,
  `pitch` float NOT NULL,
  `yaw` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotspots`
--

INSERT INTO `hotspots` (`id`, `id_panorama`, `text`, `sceneId`, `pitch`, `yaw`) VALUES
(1, 2, 'Tempat untuk menunggu di Lobby', NULL, -12, 170),
(2, 2, 'Receptionist', '', -10, 40),
(3, 2, 'Halaman Depan', '1', 0, 83),
(12, 1, 'Lobby', '2', 5.51465, -123.064),
(17, 2, 'lorong', '12', -6.41548, -41.2298),
(18, 12, 'lorong 1b', '13', -4.82465, 115.343),
(19, 1, 'Area Parkir', '', -12.106, -64.4818),
(20, 12, 'Lobby', '2', -5.54181, -63.4758),
(21, 13, 'Lorong 1a', '12', -1.64848, 138.774),
(22, 12, 'Superior Room', '14', -7.18159, -41.0873),
(23, 12, 'Superior Room', '14', -6.97453, -86.2158),
(24, 14, 'Lorong', '12', -3.27105, 154.653),
(25, 14, 'Kamar Mandi Superior', '15', -6.60388, 131.297),
(63, 16, 'Deluxe Room | 300k/night/room | 2 Guests | 1 Double Bed | Desk&Chair | Complimentary Drinks | Morning Call | TV Cable | Wi-Fi', '', -12.4233, -99.7476),
(28, 12, 'Deluxe Room', '16', -8.55921, 0.214706),
(29, 16, 'Kamar Mandi Deluxe', '17', -4.6824, 170.169),
(31, 16, 'Lorong', '12', -1.25188, 153.34),
(33, 12, 'Deluxe Room', '16', -11.111, -123.538),
(34, 17, 'Deluxe Room', '16', -6.21976, -98.7963),
(35, 13, 'Superior Room', '14', -5.6801, 176.391),
(36, 13, 'Superior Room', '1', 0.356608, -54.6626),
(37, 13, 'Superior Room', '14', -3.40021, 96.4888),
(38, 12, 'Lantai 2', '18', -0.971439, 133.668),
(39, 13, 'Lantai 2', '18', -1.80323, 124.415),
(40, 18, 'Deluxe Room', '16', 0.959762, 47.7554),
(41, 18, 'Lantai 1', '12', -20.3012, 82.6883),
(42, 18, 'Superior Room', '14', -1.07598, -163.612),
(43, 18, 'Superior Room', '22', -8.09271, -75.4026),
(44, 22, 'Lorong', '18', -5.36587, 155.967),
(45, 22, 'Kamar Mandi Superior', '25', -8.02778, 129.067),
(46, 25, 'Superior Room', '22', -7.75615, -80.6307),
(62, 2, 'Office Room', '', -1.47127, 15.3197),
(48, 21, 'Lorong', '19', -2.53845, -66.1514),
(61, 15, 'Shower Hot & Cold Water Wastafel Soap & Shampoo Toilet Paper', '', -0.530362, 2.04088),
(59, 14, 'Superior Room Rp 250.000 / Room / Night  2 Guests 1 Double Bed Tv Cable Shower Complimentary Drinks', '', -16.4337, 66.7385),
(64, 17, 'Shower Hot & Cold Water | Wastafel | Toothbrush & Tootpaste | Soap & Shampoo | Toilet Paper | Towel', '', -4.40871, -0.140648),
(65, 2, '-Fasilitas Hotel- AC | Non Smoking Room | Parking | Wi-Fi | Laundry | Morning Call', '', -11.5933, 30.0992),
(66, 1, 'Balkon Lt 2', '35', 42.164, -83.7836),
(68, 35, 'Lorong Lt 2b', '19', -3.84868, -68.7214),
(69, 19, 'Balkon', '35', -1.65998, -103.104),
(70, 19, 'Lorong Lt 2a', '18', -1.33176, 78.0166),
(71, 18, 'Lorong Lt 2b', '19', -1.74293, -118.746),
(72, 18, 'Lorong Lt 2b', '19', -1.74293, -118.746),
(73, 18, 'Superior Room', '22', -2.74369, -99.6612),
(74, 18, 'Superior Room', '22', -0.0532321, -138.472);

-- --------------------------------------------------------

--
-- Table structure for table `kamar`
--

CREATE TABLE `kamar` (
  `idkamar` varchar(10) NOT NULL,
  `tipe` varchar(50) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `gambar` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kamar`
--

INSERT INTO `kamar` (`idkamar`, `tipe`, `jumlah`, `harga`, `gambar`) VALUES
('001', 'Superior', 15, 250000, 'Standard.jpg'),
('002', 'Deluxe', 10, 300000, 'VIP.jpg'),
('003', 'VIP', 4, 390000, 'VIP_room.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3'),
('andri', '6bd3108684ccc9dfd40b126877f850b0');

-- --------------------------------------------------------

--
-- Table structure for table `panorama`
--

CREATE TABLE `panorama` (
  `id_panorama` int(4) NOT NULL,
  `nama_panorama` varchar(30) DEFAULT NULL,
  `foto_panorama` varchar(300) DEFAULT NULL,
  `pitch` float NOT NULL,
  `yaw` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `panorama`
--

INSERT INTO `panorama` (`id_panorama`, `nama_panorama`, `foto_panorama`, `pitch`, `yaw`) VALUES
(1, 'Halaman Depan', 'depan.jpg', 872, -53),
(2, 'Lobby', 'lobbytes.jpg', 1.11965, -74.7863),
(12, 'Lorong 1a', 'lorong lantai 1a.jpg', 0, 0),
(13, 'lorong 1b', 'R0013627_20190727113443.jpg', 0, 0),
(14, 'Superior', 'superior.jpg', 0, 0),
(15, 'Kamar Mandi Superior', 'superior1.jpg', 0, 0),
(16, 'Deluxe', 'deluxe.jpg', 0, 0),
(17, 'Kamar Mandi Deluxe', 'deluxe1.jpg', 0, 0),
(18, 'Lorong 2a', 'lorong 2a.jpg', 0, 0),
(19, 'Lorong 2b', 'lorong 2b.jpg', 0, 0),
(22, 'Superior Lt2', 'superior.jpg', 0, 0),
(23, 'Deluxe Lt2', 'deluxe.jpg', 0, 0),
(25, 'Kamar Mandi Superior 2', 'superior1.jpg', 0, 0),
(26, 'Kamar Mandi Deluxe 2', 'deluxe1.jpg', 0, 0),
(27, 'VIP Room', 'kamar3.jpeg', 0, 0),
(29, 'Rooftop', 'rooftop.jpg', 0, 0),
(31, 'Kamar Mandi VIP', 'kmandi3.jpg', 0, 0),
(35, 'Balkon', 'balkon2.jpg', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `idpesan` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `bank` varchar(10) NOT NULL,
  `norek` varchar(15) NOT NULL,
  `namarek` varchar(50) NOT NULL,
  `gambar` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`idpesan`, `nama`, `jumlah`, `bank`, `norek`, `namarek`, `gambar`) VALUES
(1, 'awe', 2030000, '-Pilih Ban', '231313', 'asdadas', 'ADesk_1.jpeg'),
(2, 'asdada', 350000, '-Pilih Ban', '123', 'das', 'Desk-34dea604cb1s13ey6dwa2o.jpg'),
(3, 'awe', 390000, 'Mandiri', '34123123131', 'andri', 'ADesk_1.jpeg'),
(4, 'awe', 390000, 'BCA', '3423432', 'huaiu', 'Picture3.png'),
(5, 'Ganteng', 12600000, 'BNI', '123', 'huaiu', 'bca.jpg'),
(9, 'asdad', 290000, '-Pilih Ban', '123', 'andri', 'Picture3.png'),
(12, 'andri', 900000, 'BCA', '34123123131', 'andri', 'download.jfif');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `idpesan` int(11) NOT NULL,
  `tglpesan` datetime NOT NULL,
  `batasbayar` datetime NOT NULL,
  `idkamar` varchar(15) NOT NULL,
  `tipe` varchar(20) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `idtamu` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(500) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `tglmasuk` date NOT NULL,
  `tglkeluar` date NOT NULL,
  `lamahari` int(11) NOT NULL DEFAULT '0',
  `totalbayar` int(11) NOT NULL DEFAULT '0',
  `status` varchar(50) NOT NULL DEFAULT 'Pending...'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`idpesan`, `tglpesan`, `batasbayar`, `idkamar`, `tipe`, `harga`, `jumlah`, `idtamu`, `nama`, `alamat`, `telepon`, `tglmasuk`, `tglkeluar`, `lamahari`, `totalbayar`, `status`) VALUES
(1, '2019-05-05 23:13:59', '2019-05-06 04:13:59', '001', 'Standard', 290000, 7, 16, 'awe', 'asd', '1123', '2019-05-05', '2019-05-06', 1, 2030000, 'Dibatalkan'),
(2, '2019-05-07 01:30:57', '2019-05-07 06:30:57', '002', 'VIP', 350000, 1, 17, 'asdada', 'afef', '1231', '2019-05-06', '2019-05-07', 1, 350000, 'Berhasil'),
(3, '2019-05-17 07:06:18', '2019-05-17 12:06:18', '003', 'Deluxe', 390000, 1, 16, 'awe', 'asd', '1123', '2019-05-17', '2019-05-18', 1, 390000, 'Dibatalkan'),
(4, '2019-05-23 13:09:55', '2019-05-23 18:09:55', '003', 'Deluxe', 390000, 1, 16, 'awe', 'asd', '1123', '2019-05-23', '2019-05-24', 1, 390000, 'Dibatalkan'),
(5, '2019-05-25 08:38:43', '2019-05-25 13:38:43', '002', 'VIP', 350000, 9, 19, 'Ganteng', 'Lembang', '081375633481', '2019-05-10', '2019-05-14', 4, 12600000, 'Berhasil'),
(6, '2019-05-25 10:08:03', '2019-05-25 15:08:03', '001', 'Standard', 290000, 2, 16, 'awe', 'asd', '1123', '2019-05-25', '2019-05-26', 1, 580000, 'Dibatalkan'),
(7, '2019-07-08 01:03:39', '2019-07-08 06:03:39', '003', 'Deluxe', 390000, 2, 16, 'awe', 'asd', '1123', '2019-07-08', '2019-07-09', 1, 780000, 'Dibatalkan'),
(8, '2019-07-22 02:30:09', '2019-07-22 07:30:09', '001', 'Standard', 290000, 2, 20, 'asdad', 'qqq', 'asdad', '2019-07-22', '2019-07-23', 1, 580000, 'Dibatalkan'),
(9, '2019-07-22 03:13:33', '2019-07-22 08:13:33', '002', 'Standard', 290000, 1, 20, 'asdad', 'qqq', 'asdad', '2019-07-22', '2019-07-23', 1, 290000, 'Dibatalkan'),
(10, '2019-08-06 22:21:14', '2019-08-07 03:21:14', '001', 'Standard', 290000, 2, 16, 'andri', 'asd', '1123', '2019-08-06', '2019-08-07', 1, 580000, 'Dibatalkan'),
(11, '2019-08-15 23:43:28', '2019-08-16 04:43:28', '001', 'Standard', 290000, 4, 21, 'afdhal ganteng', 'Bandung', '08953415283', '2019-08-13', '2019-08-16', 3, 3480000, 'Dibatalkan'),
(12, '2019-08-21 15:31:59', '2019-08-21 20:31:59', '002', 'Deluxe', 300000, 1, 16, 'andri', 'asd', '1123', '2019-08-21', '2019-08-24', 3, 900000, 'Berhasil');

-- --------------------------------------------------------

--
-- Table structure for table `stokkamar`
--

CREATE TABLE `stokkamar` (
  `idkamar` varchar(20) NOT NULL,
  `tipe` varchar(50) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stokkamar`
--

INSERT INTO `stokkamar` (`idkamar`, `tipe`, `stok`) VALUES
('001', 'Superior', 15),
('002', 'Deluxe', 9),
('003', 'VIP', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tamu`
--

CREATE TABLE `tamu` (
  `idtamu` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL,
  `foto` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tamu`
--

INSERT INTO `tamu` (`idtamu`, `username`, `email`, `nama`, `alamat`, `telepon`, `password`, `foto`) VALUES
(16, 'andri', 'andri@email.com', 'andri', 'asd', '1123', '6bd3108684ccc9dfd40b126877f850b0', 'Picture1.png'),
(17, 'admin12', '1212@asdad.com', 'asdada', 'afef', '1231', '1844156d4166d94387f1a4ad031ca5fa', ''),
(18, 'akuganteng', 'akuganteng@gmail.com', 'Afdhalul Ihsan', 'Dayeuh Kolot', '087722635397', '21232f297a57a5a743894a0e4a801fc3', ''),
(19, 'akuganteng1', 'akuganteng@gmail.com', 'Ganteng', 'Lembang', '081375633481', '5a803e2665e7ecfe1edf1ab5da1b58a6', ''),
(20, 'admin', 'anand@gmail.com', 'asdad', 'qqq', 'asdad', '21232f297a57a5a743894a0e4a801fc3', ''),
(21, 'allsigna', 'afdhalulihsan@email.unikom.ac.id', 'afdhal ganteng', 'Bandung', '08953415283', 'bf3303a286b928888c9a79649f142670', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hotspots`
--
ALTER TABLE `hotspots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`idkamar`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `panorama`
--
ALTER TABLE `panorama`
  ADD PRIMARY KEY (`id_panorama`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`idpesan`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`idpesan`),
  ADD KEY `idkamar` (`idkamar`),
  ADD KEY `idtamu` (`idtamu`);

--
-- Indexes for table `stokkamar`
--
ALTER TABLE `stokkamar`
  ADD PRIMARY KEY (`idkamar`);

--
-- Indexes for table `tamu`
--
ALTER TABLE `tamu`
  ADD PRIMARY KEY (`idtamu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hotspots`
--
ALTER TABLE `hotspots`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `panorama`
--
ALTER TABLE `panorama`
  MODIFY `id_panorama` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `idpesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tamu`
--
ALTER TABLE `tamu`
  MODIFY `idtamu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`idpesan`) REFERENCES `pemesanan` (`idpesan`);

--
-- Constraints for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD CONSTRAINT `pemesanan_ibfk_1` FOREIGN KEY (`idkamar`) REFERENCES `kamar` (`idkamar`),
  ADD CONSTRAINT `pemesanan_ibfk_2` FOREIGN KEY (`idtamu`) REFERENCES `tamu` (`idtamu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
