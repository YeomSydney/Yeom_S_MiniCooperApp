-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 07, 2022 at 07:16 AM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_miniapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mini_cooper`
--

CREATE TABLE `tbl_mini_cooper` (
  `mini_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(300) NOT NULL DEFAULT '2023 MINI',
  `id` varchar(300) NOT NULL,
  `date` varchar(300) NOT NULL DEFAULT '2023',
  `colour` varchar(300) NOT NULL,
  `fuelType` varchar(300) NOT NULL,
  `price` varchar(300) NOT NULL DEFAULT '$',
  `monthly` varchar(300) NOT NULL DEFAULT '$',
  `seatCount` smallint(6) NOT NULL,
  `seatColour` varchar(300) NOT NULL,
  `thumbnail` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mini_cooper`
--

INSERT INTO `tbl_mini_cooper` (`mini_id`, `name`, `id`, `date`, `colour`, `fuelType`, `price`, `monthly`, `seatCount`, `seatColour`, `thumbnail`) VALUES
(1, '2023 MINI COOPER 5 DOOR', 'White Mini', '2023 Jan', 'White', 'Gasolin', '$35,156', '$544', 5, 'Amarone Brown/Black w/Full Merino Leather Upholstery', 'miniWhite.png'),
(2, '2023 MINI COOPER S 5 DOOR', 'Red Mini', '2023 Jan', 'Red', 'Gasolin', '$40,756', '$644', 5, 'Black w/Full Merino Leather Upholstery', 'miniRed.png'),
(3, '2023 MINI SPECIAL COOPER 5 DOOR', 'Blue Mini', '2023 Mar', 'Blue', 'Gasolin', '$55,138', '$744', 5, 'Black w/Perforated Nappa Leather Upholstery', 'miniBlue.png'),
(4, '2023 MINI COUNTRYMAN 5 DOOR', 'Green Mini', '2023 Apr', 'Green', 'Gasolin', '$39,582', '$590', 5, 'Cognac w/Nappa Leather w/Quilting Upholstery', 'miniGreen.png'),
(5, '2023 MINI SPECIAL COUNTRYMAN 5 DOOR', 'Black Mini', '2023 Jan', 'Black', 'Gasolin', '$77,129', '$822', 5, 'Cognac w/Nappa Leather w/Quilting Upholstery', 'miniBlack.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_mini_cooper`
--
ALTER TABLE `tbl_mini_cooper`
  ADD PRIMARY KEY (`mini_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_mini_cooper`
--
ALTER TABLE `tbl_mini_cooper`
  MODIFY `mini_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
