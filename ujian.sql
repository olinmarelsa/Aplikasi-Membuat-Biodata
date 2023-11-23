-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2023 at 09:18 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ujian`
--

-- --------------------------------------------------------

--
-- Table structure for table `biodata_agama`
--

CREATE TABLE `biodata_agama` (
  `id` int(10) NOT NULL,
  `nm_agama` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `biodata_agama`
--

INSERT INTO `biodata_agama` (`id`, `nm_agama`) VALUES
(1, 'islam'),
(2, 'kristen'),
(3, 'katolik');

-- --------------------------------------------------------

--
-- Table structure for table `biodata_kelas`
--

CREATE TABLE `biodata_kelas` (
  `id` int(10) NOT NULL,
  `nama_kelas` int(10) NOT NULL,
  `kompetensi` varchar(100) NOT NULL,
  `tahun_pelajaran` int(10) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `biodata_kelas`
--

INSERT INTO `biodata_kelas` (`id`, `nama_kelas`, `kompetensi`, `tahun_pelajaran`, `keterangan`) VALUES
(1, 11, 'Rekayasa Perangkat Lunak', 2023, 'kelas 11 rpl tahun 2023');

-- --------------------------------------------------------

--
-- Table structure for table `biodata_siswa`
--

CREATE TABLE `biodata_siswa` (
  `id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tplahir` varchar(50) NOT NULL,
  `tglahir` date NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `hobi` varchar(255) NOT NULL,
  `cita_cita` varchar(100) NOT NULL,
  `jm_saudara` int(10) NOT NULL,
  `idkelas` int(10) NOT NULL,
  `idagama` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `biodata_siswa`
--

INSERT INTO `biodata_siswa` (`id`, `username`, `password`, `nama`, `tplahir`, `tglahir`, `alamat`, `hobi`, `cita_cita`, `jm_saudara`, `idkelas`, `idagama`) VALUES
(1, 'admin', 'admin', 'violin', 'malang', '2007-03-21', 'perum niwen', 'berenang', 'pegawai perusahaan', 4, 1, 1),
(2, '', '', 'olin', 'malang', '2007-03-24', 'niwen', 'membaca', 'pegawai', 4, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biodata_agama`
--
ALTER TABLE `biodata_agama`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `biodata_kelas`
--
ALTER TABLE `biodata_kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `biodata_siswa`
--
ALTER TABLE `biodata_siswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `biodata_agama`
--
ALTER TABLE `biodata_agama`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `biodata_kelas`
--
ALTER TABLE `biodata_kelas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `biodata_siswa`
--
ALTER TABLE `biodata_siswa`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
