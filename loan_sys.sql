-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2021 at 07:55 AM
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
-- Database: `loan_sys`
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
(300, 'Male'),
(301, 'Female'),
(302, 'Youth'),
(303, 'All');

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
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `group_id` int(11) NOT NULL,
  `group_name` char(50) NOT NULL,
  `region` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `registration_number` varchar(50) NOT NULL,
  `group_activity` varchar(50) NOT NULL,
  `group_category` varchar(50) NOT NULL,
  `group_total_members` varchar(50) NOT NULL,
  `group_leader` varchar(50) NOT NULL,
  `loan_information` text NOT NULL,
  `group_capital` varchar(100) NOT NULL,
  `group_creation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`group_id`, `group_name`, `region`, `district`, `registration_number`, `group_activity`, `group_category`, `group_total_members`, `group_leader`, `loan_information`, `group_capital`, `group_creation_date`) VALUES
(5, 'Dalin', '1', '43', '002', 'Loan Money', 'Group of men only', '5', 'Kitty Princess ', 'I want to start a new business ', '1000', '2021-10-25'),
(6, 'CambodiaExpress', '1', '47', '003', 'Loan Money', 'Group of both men and women', '3', 'Lalisa', 'They want to open up a new market', '5000', '2021-10-25'),
(7, 'BlackPink', '4', '75', '004', 'Loan Money', 'Group of women only', '4', 'Kim Jisoo', 'They want to become a K-pop idol', '10000', '2021-10-25');

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `loan_id` int(11) NOT NULL,
  `group_id` varchar(50) NOT NULL,
  `loan_come_from` varchar(50) NOT NULL,
  `loan_amount` varchar(50) NOT NULL,
  `loan_interest` varchar(10) NOT NULL,
  `payment_term` varchar(50) NOT NULL,
  `total_payment_with_intereset` varchar(50) NOT NULL,
  `emi_per_month` varchar(50) NOT NULL,
  `payment_schedule` date NOT NULL,
  `due_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`loan_id`, `group_id`, `loan_come_from`, `loan_amount`, `loan_interest`, `payment_term`, `total_payment_with_intereset`, `emi_per_month`, `payment_schedule`, `due_date`) VALUES
(6, '5 ', 'Council', '1000', '3', '4', '1120', '23.333333333333332', '2021-10-19', '2021-10-30'),
(7, '6', 'District Council', '12', '3', '1', '12.36', '1.03', '2021-10-23', '2021-11-06');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_id` int(11) NOT NULL,
  `first_name` char(50) NOT NULL,
  `last_name` char(50) NOT NULL,
  `gender` enum('m','f') NOT NULL,
  `group_id` int(11) NOT NULL,
  `join_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `first_name`, `last_name`, `gender`, `group_id`, `join_date`) VALUES
(13, 'Lysa', 'Thorn', 'm', 5, '2021-10-25'),
(14, 'Jennie', 'Kim', 'f', 7, '2021-10-25'),
(15, 'Raiya', 'Sous', 'f', 6, '2021-10-25'),
(16, 'Virak', 'Ren', 'm', 6, '2021-10-25'),
(17, 'Borith', 'Mek', 'm', 6, '2021-10-25'),
(18, 'Lisa', 'Sous', 'f', 6, '2021-10-25'),
(19, 'Kai', 'Tae', 'm', 7, '2021-10-25'),
(20, 'Seho', 'Kim', 'm', 7, '2021-10-25'),
(21, 'RM', 'Park', 'm', 6, '2021-10-25'),
(22, 'Jin', 'Sea', 'm', 5, '2021-10-25'),
(23, 'Jimin', 'Kim', 'm', 6, '2021-10-25');

-- --------------------------------------------------------

--
-- Table structure for table `payment_history`
--

CREATE TABLE `payment_history` (
  `payment_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `amount_paid` int(11) NOT NULL,
  `payment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_history`
--

INSERT INTO `payment_history` (`payment_id`, `group_id`, `amount_paid`, `payment_date`) VALUES
(4, 5, 10, '2021-10-25');

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
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`loan_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `payment_history`
--
ALTER TABLE `payment_history`
  ADD PRIMARY KEY (`payment_id`);

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
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `district_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `loan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `payment_history`
--
ALTER TABLE `payment_history`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
