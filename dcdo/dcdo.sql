-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2021 at 02:22 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dcdo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `user`, `pass`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(1, 'Male'),
(2, 'Female'),
(3, 'Youth'),
(4, 'All');

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `district_id` int(11) NOT NULL,
  `district_name` varchar(255) NOT NULL,
  `region_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`district_id`, `district_name`, `region_id`) VALUES
(40, 'Chamkar Mon', 1),
(41, 'Daun Penh', 1),
(42, 'Prampir Makara', 1),
(43, 'Tuol Kork', 1),
(44, 'Dangkao', 1),
(45, 'Mean Chey', 1),
(46, 'Russey Keo', 1),
(47, 'Sen Sok', 1),
(48, 'Pou Senchey', 1),
(49, 'Chory Changvar', 1),
(50, 'Prek Pnov', 1),
(51, 'Chbar Ampov', 1),
(52, 'Kamboul', 1),
(53, 'Mongkol Borei', 2),
(54, 'Phnom Srok', 2),
(55, 'Preah Netr Preah', 2),
(56, 'Ou Chrov', 2),
(57, 'Seri Saophoan Municipality', 2),
(58, 'Seri Saophoan Municipality', 2),
(59, 'Thma Puok', 2),
(60, 'Svay Chek', 2),
(61, 'Malai', 2),
(62, 'Porpet Municipality', 2),
(63, 'Ou Chrov', 2),
(64, 'Bathey', 3),
(65, 'Chamkar Leu', 3),
(66, 'Cheung Prey', 3),
(67, 'Kampong Siem', 3),
(68, 'Kang Meas', 3),
(69, 'Koh Sotin', 3),
(70, 'Prey Chhor', 3),
(71, 'Srey Santhor', 3),
(72, 'Stueng Trang', 3),
(73, 'Baribour', 4),
(74, 'Chol Kiri', 4),
(75, 'Kanpong Chhnang Municipality', 4),
(76, 'Kampong Leang', 4),
(77, 'Kampong Tralach', 4),
(78, 'Rolea Bier', 4),
(79, 'Sameakki Mean Chey', 4),
(80, 'Tuek Phos', 4),
(81, 'Basedth', 5),
(82, 'Chbar Mon Municipality', 5),
(83, 'Kong Pisei', 5),
(84, 'Aoral', 5),
(85, 'Odongk', 5),
(86, 'Phnom Sruoch', 5),
(87, 'Thpong', 5),
(88, 'Baray', 5),
(89, 'Kampong Svay', 5),
(90, 'Stueng Saen Municiplity', 5),
(91, 'Prasat Balangk', 5),
(92, 'Prasat Sambour', 5),
(93, 'Sandaan', 5),
(94, 'Santuk', 5),
(95, 'Taing Kouk', 5),
(96, 'Angkor Chey', 6),
(97, 'Banteay Meas', 6),
(98, 'Chhuk', 6),
(99, 'Chum Kiri', 6),
(100, 'Dang Tong', 6),
(101, 'Tuek Chhou', 6),
(102, 'Kampot Municipality', 6),
(103, 'Kandal Stueng', 9),
(104, 'Kien Svay', 9),
(105, 'Khsach Kandal', 9),
(106, 'Kaoh Thum', 9),
(107, 'Leuk Daek', 9),
(108, 'Lvea Aem', 9),
(109, 'Mukh Kampul', 9),
(110, 'Angk Snoul', 9),
(111, 'Ponhea Lueu', 9),
(112, 'Sang', 9),
(113, 'Ta Kham Municipality', 9);

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `region_id` int(11) NOT NULL,
  `region_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`region_id`, `region_name`) VALUES
(1, 'Phnom Penh'),
(2, 'Banteay Meanchey'),
(3, 'Battambang'),
(4, 'Kampong Cham'),
(5, 'Kampong Chhnang'),
(6, 'Kampong Speu'),
(7, 'Kampong Thom'),
(8, 'Kampot'),
(9, 'Kandal'),
(10, 'kep'),
(11, 'Koh Kong'),
(12, 'Kratie'),
(13, 'Mondulkiri'),
(14, 'Oddar Meanchey'),
(15, 'Pailin'),
(16, 'Preah Vihear'),
(17, 'Prey Veng'),
(18, 'Pursat'),
(19, 'Ratanakiri'),
(20, 'Siem Reap'),
(21, 'Sihanoukville'),
(22, 'Stung Streng'),
(23, 'Svay Rieng'),
(24, 'Takeo'),
(25, 'Tboung Khmum'),
(26, 'Singida'),
(27, 'Tabora'),
(28, 'Tanga'),
(29, 'Zanzibar North'),
(30, 'Zanzibar South'),
(31, 'Zanzibar Urban West');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`district_id`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`region_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `district_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `region_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
