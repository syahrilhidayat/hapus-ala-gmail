-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2019 at 10:17 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hapus_ala_google`
--
CREATE DATABASE IF NOT EXISTS `hapus_ala_google` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hapus_ala_google`;

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id` int(11) NOT NULL,
  `pengirim` varchar(100) NOT NULL,
  `judul` varchar(150) NOT NULL,
  `konten` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`id`, `pengirim`, `judul`, `konten`) VALUES
(1, 'Wegodev', 'Terima kasih telah bergabung', 'Hello Isabel, terima kasih telah bergabung bersama wegodev'),
(2, 'Wegodev', 'Terima kasih telah menjadi super user', 'Hello Isabel, terima kasih telah menjadi super user'),
(3, 'Intagram', 'Akun Instagram anda berhasil dibuat', 'Hai Isabela, Terima kasih telah bergabung bersama instagram'),
(4, 'Facebook', 'Akun Facebook anda berhasil dibuat', 'Hai Isabela, Terima kasih telah bergabung bersama Facebook'),
(5, 'Google', 'Akun Gmail anda berhasil dibuat', 'Dear Isabela, Terima kasih telah membuat akun gmail');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
