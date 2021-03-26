-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2021 at 10:35 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nctblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `title` varchar(300) NOT NULL,
  `body` varchar(1000) NOT NULL,
  `authors_id` int(10) DEFAULT NULL,
  `updatetime` timestamp NOT NULL DEFAULT current_timestamp(),
  `publish_sts` varchar(1) NOT NULL,
  `id` int(10) NOT NULL,
  `create_ts` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`title`, `body`, `authors_id`, `updatetime`, `publish_sts`, `id`, `create_ts`) VALUES
('Taeyong', 'ชื่อในวงการ : แทยง (Taeyong)\r\nชื่อจริง : อีแทยง (Lee Tae Yong)\r\nวันเกิด : 1 กรกฎาคม 1995', 1, '2021-03-26 15:23:57', 'Y', 9, '2021-03-27'),
('Kun', 'ชื่อในวงการ : คุน (Kun)\r\nชื่อจริง : เฉียน คุน (Qian Kun)\r\nวันเกิด : 1 มกราคม 1996', 1, '2021-03-26 15:24:25', 'Y', 10, '2021-03-27'),
('Taeil', 'ชื่อในวงการ : แทอิล (Taeil)\r\nชื่อจริง : มุนแทอิล (Moon Tae Il)\r\nวันเกิด : 14 มิถุนายน 1994', 1, '2021-03-26 15:24:52', 'Y', 11, '2021-03-27'),
('Johnny', 'ชื่อในวงการ : จอห์นนี่ (Johnny)\r\nชื่อจริง : ซอยองโฮ (Seo Young Ho)\r\nวันเกิด : 9 กุมภาพันธ์ 1995', 1, '2021-03-26 15:25:13', 'Y', 12, '2021-03-27'),
('Yuta', 'ชื่อในวงการ : ยูตะ (Yuta)\r\nชื่อจริง : นากาโมโตะ ยูตะ (Nakamoto Yuta)\r\nวันเกิด : 26 ตุลาคม 1995', 1, '2021-03-26 15:25:34', 'Y', 13, '2021-03-27');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `username` varchar(300) NOT NULL,
  `passwd` varchar(100) NOT NULL,
  `name` varchar(500) NOT NULL,
  `penname` varchar(500) NOT NULL,
  `email` varchar(300) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`username`, `passwd`, `name`, `penname`, `email`, `id`) VALUES
('kjlee', 'f0f6ba4b5e0000340312d33c212c3ae8', 'KJ', 'kjleela', 'gammy1612@gmail.com', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
