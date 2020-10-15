-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 15, 2020 at 12:22 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `bonus`
--

CREATE TABLE `bonus` (
  `id` int(11) NOT NULL,
  `bonusamount` int(11) NOT NULL,
  `bonusdate` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `staff_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bonus`
--

INSERT INTO `bonus` (`id`, `bonusamount`, `bonusdate`, `staff_id`) VALUES
(1, 30000, '2020-10-15 09:13:57.000000', 2),
(2, 40000, '2020-10-15 09:14:37.000000', 3),
(4, 20000, '2016-02-11 09:16:12.000000', 4),
(5, 70000, '2016-02-11 09:16:12.000000', 5);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`) VALUES
(1, 'Manager'),
(2, 'Asst Manager'),
(3, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `id` int(11) NOT NULL,
  `idno` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `fathername` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `salary` int(11) NOT NULL,
  `joindate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deparment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`id`, `idno`, `name`, `fathername`, `salary`, `joindate`, `deparment_id`) VALUES
(1, '1231e211', 'Ko Ko', 'U Ba', 120000, '2020-10-15 07:08:35', 1),
(2, '23231ww2', 'Ma Ma', 'U Cho', 130000, '2020-10-15 07:48:47', 3),
(3, 'qweqe212313', 'JOJO', 'U JO', 12122211, '2020-10-15 07:48:47', 3),
(4, 'qweqe212313', 'zozo', 'U zo', 31313313, '2016-02-14 17:30:00', 3),
(5, 'asdfa1212', 'hoho', 'U ho', 34343434, '2020-10-15 07:48:48', 2),
(6, 'asdfa1212', 'LOLO', 'U Lo', 7677667, '2020-10-15 07:22:47', 2),
(7, 'we2323wq', 'Aye Aye', 'U Aung', 100000, '2016-10-15 08:08:07', 3),
(8, 'wer122', 'uouo', 'uU uouo', 120000, '2016-02-04 09:26:09', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bonus`
--
ALTER TABLE `bonus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bonus`
--
ALTER TABLE `bonus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `staffs`
--
ALTER TABLE `staffs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
