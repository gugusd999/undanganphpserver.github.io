-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 24, 2020 at 05:39 AM
-- Server version: 5.7.28-0ubuntu0.18.04.4
-- PHP Version: 7.2.26-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `undangan`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` bigint(100) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `user` varchar(100) NOT NULL,
  `data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `user`, `data`) VALUES
(1, 'make', '5b42841f20f6c135f74af548e4680fc0', 'client', '{\"user\":\"client\",\"nama\":\"gugus darmayanto\",\"email\":\"ggsd09031997@gmail.com\",\"alamat\":\"dusun darungan\",\"foto\":\"make-flooop.png\"}'),
(2, 'gugus', '514e3f2c2b3f93d9fe57e514bcd51c87', 'client', '{\"user\":\"client\",\"nama\":\"Gugus Darmayanto\",\"email\":\"gugusdarmayanto@gmail.com\",\"alamat\":\"dusun darungan rt 28 rw 09\",\"foto\":\"gugus-flooop.png\"}'),
(3, 'moka', '8df56d630e88a66460da650242f19550', 'client', '{\"user\":\"client\",\"nama\":\"moka\",\"email\":\"moka@gmail.com\",\"alamat\":\"jl. moka raya\",\"foto\":\"moka-Screenshot from 2020-02-23 13-46-24.png\"}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
