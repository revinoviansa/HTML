-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2019 at 10:14 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tastes`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE IF NOT EXISTS `tbl_menu` (
  `id_menu` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `url` varchar(30) NOT NULL,
  `icon` varchar(30) NOT NULL,
  `is_main_menu` int(11) NOT NULL,
  `is_aktif` enum('y','n') NOT NULL COMMENT 'y=yes,n=no'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`id_menu`, `title`, `url`, `icon`, `is_main_menu`, `is_aktif`) VALUES
(1, 'KELOLA MENU', 'kelolamenu', 'fa fa-server', 0, 'y'),
(2, 'KELOLA PENGGUNA', 'user', 'fa fa-user-o', 0, 'y'),
(3, 'level PENGGUNA', 'userlevel', 'fa fa-users', 0, 'y'),
(4, 'Sample Menu', 'Sample Menu', 'fa fa-graduation-cap', 0, 'n'),
(5, 'Sample Menu', 'Sample Menu', 'fa fa-bed', 0, 'n'),
(6, 'Sample Menu', 'Sample Menu', 'fa-id-card', 0, 'n'),
(7, 'Sample Menu', 'Sample Menu', 'fa fa-area-chart', 0, 'n'),
(8, 'Sample Menu', 'Sample Menu', 'fa-id-card', 0, 'n'),
(9, 'Contoh Form', 'welcome/form', 'fa fa-id-card', 0, 'n'),
(13, 'Data Absensi', 'Tb_absensi', 'fa fa-id-card', 0, 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id_users` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `images` text NOT NULL,
  `id_user_level` int(11) NOT NULL,
  `is_aktif` enum('y','n') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_users`, `full_name`, `email`, `password`, `images`, `id_user_level`, `is_aktif`) VALUES
(1, 'Revi Noviansa@yahoo.co.id', 'revinoviansa@yahoo.co.id', '5f4dcc3b5aa765d61d8327deb882cf99', 'Cover_TIPSTRIK_codeigniter.jpg', 1, 'y'),
(3, 'Muhammad hafidz Muzaki', 'hafid@gmail.com', 'f2621da6b3d4f712bf5e29861f186c7c', '7.png', 2, 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_level`
--

CREATE TABLE IF NOT EXISTS `tbl_user_level` (
  `id_user_level` int(11) NOT NULL,
  `nama_level` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_level`
--

INSERT INTO `tbl_user_level` (`id_user_level`, `nama_level`) VALUES
(1, 'Super Admin'),
(2, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `tb_absensi`
--

CREATE TABLE IF NOT EXISTS `tb_absensi` (
  `id_absensi` int(11) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL,
  `jenis_keterangan` varchar(100) NOT NULL,
  `sub_jenis_keterangan` varchar(100) NOT NULL,
  `nomor_surat` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `tanggal_sekarang` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_absensi`
--

INSERT INTO `tb_absensi` (`id_absensi`, `nip`, `nama_lengkap`, `tanggal_mulai`, `tanggal_selesai`, `jenis_keterangan`, `sub_jenis_keterangan`, `nomor_surat`, `keterangan`, `tanggal_sekarang`) VALUES
(1, '1000', 'Revi Noviansa', '2019-03-03', '2019-03-03', '2019-03-03', 'fdsf', 'ddfddfsdf', 'saasdas', '2019-03-03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_users`);

--
-- Indexes for table `tbl_user_level`
--
ALTER TABLE `tbl_user_level`
  ADD PRIMARY KEY (`id_user_level`);

--
-- Indexes for table `tb_absensi`
--
ALTER TABLE `tb_absensi`
  ADD PRIMARY KEY (`id_absensi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_user_level`
--
ALTER TABLE `tbl_user_level`
  MODIFY `id_user_level` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_absensi`
--
ALTER TABLE `tb_absensi`
  MODIFY `id_absensi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
