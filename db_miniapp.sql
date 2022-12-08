-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 08, 2022 at 11:12 AM
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
-- Table structure for table `tbl_mini_brand`
--

CREATE TABLE `tbl_mini_brand` (
  `mini_brand_id` int(11) UNSIGNED NOT NULL,
  `mini_brand` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mini_brand`
--

INSERT INTO `tbl_mini_brand` (`mini_brand_id`, `mini_brand`) VALUES
(1, 'MINI COOPER');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mini_colour`
--

CREATE TABLE `tbl_mini_colour` (
  `mini_colour_id` int(11) UNSIGNED NOT NULL,
  `mini_colour` varchar(300) NOT NULL,
  `seat_colour_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mini_colour`
--

INSERT INTO `tbl_mini_colour` (`mini_colour_id`, `mini_colour`, `seat_colour_id`) VALUES
(1, 'White', 1),
(2, 'Red', 1),
(3, 'Blue', 2),
(4, 'Green', 3),
(5, 'Black', 4);

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

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mini_fuel`
--

CREATE TABLE `tbl_mini_fuel` (
  `mini_fuel_id` int(11) UNSIGNED NOT NULL,
  `mini_fuel_type` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mini_fuel`
--

INSERT INTO `tbl_mini_fuel` (`mini_fuel_id`, `mini_fuel_type`) VALUES
(1, 'Gasoline'),
(2, 'Diesel');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mini_monthly_price`
--

CREATE TABLE `tbl_mini_monthly_price` (
  `mini_monthly_price_id` int(11) UNSIGNED NOT NULL,
  `mini_monthly_price` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mini_monthly_price`
--

INSERT INTO `tbl_mini_monthly_price` (`mini_monthly_price_id`, `mini_monthly_price`) VALUES
(1, '$544'),
(2, '$644'),
(3, '$744'),
(4, '$590'),
(5, '$822');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mini_price`
--

CREATE TABLE `tbl_mini_price` (
  `mini_price_id` int(11) UNSIGNED NOT NULL,
  `mini_price` varchar(300) NOT NULL DEFAULT '$',
  `mini_price_currency` varchar(300) NOT NULL,
  `monthly_price_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mini_price`
--

INSERT INTO `tbl_mini_price` (`mini_price_id`, `mini_price`, `mini_price_currency`, `monthly_price_id`) VALUES
(1, '$35,156', '$(CAD)', 1),
(2, '$40,756', '$(CAD)', 2),
(3, '$55,138', '$(CAD)', 3),
(4, '$39,582', '$(CAD)', 4),
(5, '$77,129', '$(CAD)', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mini_released_date`
--

CREATE TABLE `tbl_mini_released_date` (
  `released_date_id` int(11) UNSIGNED NOT NULL,
  `mini_release_date` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mini_released_date`
--

INSERT INTO `tbl_mini_released_date` (`released_date_id`, `mini_release_date`) VALUES
(1, '2023 Jan'),
(2, '2023 Jan'),
(3, '2023 Mar'),
(4, '2023 Apr'),
(5, '2023 Jan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mini_seat_colour`
--

CREATE TABLE `tbl_mini_seat_colour` (
  `seat_colour_id` int(11) UNSIGNED NOT NULL,
  `mini_seat_colour` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mini_seat_colour`
--

INSERT INTO `tbl_mini_seat_colour` (`seat_colour_id`, `mini_seat_colour`) VALUES
(1, 'Amarone Brown/Black w/Full Merino Leather Upholstery'),
(2, 'Black w/Full Merino Leather Upholstery'),
(3, 'Black w/Perforated Nappa Leather Upholstery'),
(4, 'Cognac w/Nappa Leather w/Quilting Upholstery');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mini_seat_count`
--

CREATE TABLE `tbl_mini_seat_count` (
  `seat_count_id` int(10) UNSIGNED NOT NULL,
  `seat_count` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mini_seat_count`
--

INSERT INTO `tbl_mini_seat_count` (`seat_count_id`, `seat_count`) VALUES
(1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mini_thumbnail`
--

CREATE TABLE `tbl_mini_thumbnail` (
  `thumbnail_id` int(11) UNSIGNED NOT NULL,
  `mini_thumbnail` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mini_thumbnail`
--

INSERT INTO `tbl_mini_thumbnail` (`thumbnail_id`, `mini_thumbnail`) VALUES
(1, 'miniWhite.png'),
(2, 'miniRed.png'),
(3, 'miniBlue.png'),
(4, 'miniGreen.png'),
(5, 'miniBlack.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mini_types`
--

CREATE TABLE `tbl_mini_types` (
  `mini_type_id` int(11) UNSIGNED NOT NULL,
  `mini_type` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mini_types`
--

INSERT INTO `tbl_mini_types` (`mini_type_id`, `mini_type`) VALUES
(1, 'MINI Countryman'),
(2, 'MINI 5 Door'),
(3, 'MINI Cooper S');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mini_wheel`
--

CREATE TABLE `tbl_mini_wheel` (
  `mini_wheel_id` int(10) UNSIGNED NOT NULL,
  `mini_wheel_colour_id` int(10) UNSIGNED NOT NULL,
  `mini_wheel_size_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mini_wheel`
--

INSERT INTO `tbl_mini_wheel` (`mini_wheel_id`, `mini_wheel_colour_id`, `mini_wheel_size_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 2),
(5, 2, 3),
(6, 3, 1),
(7, 3, 2),
(8, 3, 3),
(9, 4, 1),
(10, 4, 2),
(11, 4, 3),
(12, 5, 1),
(13, 5, 2),
(14, 5, 3),
(15, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mini_wheel_colour`
--

CREATE TABLE `tbl_mini_wheel_colour` (
  `mini_wheel_colour_id` int(10) UNSIGNED NOT NULL,
  `mini_wheel_colour` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mini_wheel_colour`
--

INSERT INTO `tbl_mini_wheel_colour` (`mini_wheel_colour_id`, `mini_wheel_colour`) VALUES
(1, 'Acid Orange'),
(2, 'Arctic Silver'),
(3, 'Bright Silver'),
(4, 'Brilliant Line Grey'),
(5, 'Chrome Shadow Silver'),
(6, 'Decor Silver I'),
(7, 'Decor Silver II'),
(8, 'Ferric Grey I'),
(9, 'Ferric Grey II'),
(10, 'Kamacitgrau'),
(11, 'Night Fever Black'),
(12, 'Orbit Grey'),
(13, 'Pure Silver'),
(14, 'Reflex Silver'),
(15, 'Silver');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mini_wheel_size`
--

CREATE TABLE `tbl_mini_wheel_size` (
  `mini_wheel_size_id` int(11) UNSIGNED NOT NULL,
  `mini_wheel_size` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mini_wheel_size`
--

INSERT INTO `tbl_mini_wheel_size` (`mini_wheel_size_id`, `mini_wheel_size`) VALUES
(1, '17\"'),
(2, '18\"'),
(3, '19\"');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_mini_brand`
--
ALTER TABLE `tbl_mini_brand`
  ADD PRIMARY KEY (`mini_brand_id`);

--
-- Indexes for table `tbl_mini_colour`
--
ALTER TABLE `tbl_mini_colour`
  ADD PRIMARY KEY (`mini_colour_id`),
  ADD KEY `seat_colour_id` (`seat_colour_id`);

--
-- Indexes for table `tbl_mini_cooper`
--
ALTER TABLE `tbl_mini_cooper`
  ADD PRIMARY KEY (`mini_id`);

--
-- Indexes for table `tbl_mini_fuel`
--
ALTER TABLE `tbl_mini_fuel`
  ADD PRIMARY KEY (`mini_fuel_id`);

--
-- Indexes for table `tbl_mini_monthly_price`
--
ALTER TABLE `tbl_mini_monthly_price`
  ADD PRIMARY KEY (`mini_monthly_price_id`);

--
-- Indexes for table `tbl_mini_price`
--
ALTER TABLE `tbl_mini_price`
  ADD PRIMARY KEY (`mini_price_id`),
  ADD KEY `monthly_price_id` (`monthly_price_id`);

--
-- Indexes for table `tbl_mini_released_date`
--
ALTER TABLE `tbl_mini_released_date`
  ADD PRIMARY KEY (`released_date_id`);

--
-- Indexes for table `tbl_mini_seat_colour`
--
ALTER TABLE `tbl_mini_seat_colour`
  ADD PRIMARY KEY (`seat_colour_id`);

--
-- Indexes for table `tbl_mini_seat_count`
--
ALTER TABLE `tbl_mini_seat_count`
  ADD PRIMARY KEY (`seat_count_id`);

--
-- Indexes for table `tbl_mini_thumbnail`
--
ALTER TABLE `tbl_mini_thumbnail`
  ADD PRIMARY KEY (`thumbnail_id`);

--
-- Indexes for table `tbl_mini_types`
--
ALTER TABLE `tbl_mini_types`
  ADD PRIMARY KEY (`mini_type_id`);

--
-- Indexes for table `tbl_mini_wheel`
--
ALTER TABLE `tbl_mini_wheel`
  ADD PRIMARY KEY (`mini_wheel_id`),
  ADD KEY `mini_wheel_colour_id` (`mini_wheel_colour_id`),
  ADD KEY `mini_wheel_size_id` (`mini_wheel_size_id`);

--
-- Indexes for table `tbl_mini_wheel_colour`
--
ALTER TABLE `tbl_mini_wheel_colour`
  ADD PRIMARY KEY (`mini_wheel_colour_id`);

--
-- Indexes for table `tbl_mini_wheel_size`
--
ALTER TABLE `tbl_mini_wheel_size`
  ADD PRIMARY KEY (`mini_wheel_size_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_mini_brand`
--
ALTER TABLE `tbl_mini_brand`
  MODIFY `mini_brand_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_mini_colour`
--
ALTER TABLE `tbl_mini_colour`
  MODIFY `mini_colour_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_mini_cooper`
--
ALTER TABLE `tbl_mini_cooper`
  MODIFY `mini_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_mini_fuel`
--
ALTER TABLE `tbl_mini_fuel`
  MODIFY `mini_fuel_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_mini_monthly_price`
--
ALTER TABLE `tbl_mini_monthly_price`
  MODIFY `mini_monthly_price_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_mini_price`
--
ALTER TABLE `tbl_mini_price`
  MODIFY `mini_price_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_mini_released_date`
--
ALTER TABLE `tbl_mini_released_date`
  MODIFY `released_date_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_mini_seat_colour`
--
ALTER TABLE `tbl_mini_seat_colour`
  MODIFY `seat_colour_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_mini_seat_count`
--
ALTER TABLE `tbl_mini_seat_count`
  MODIFY `seat_count_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_mini_thumbnail`
--
ALTER TABLE `tbl_mini_thumbnail`
  MODIFY `thumbnail_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_mini_types`
--
ALTER TABLE `tbl_mini_types`
  MODIFY `mini_type_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_mini_wheel`
--
ALTER TABLE `tbl_mini_wheel`
  MODIFY `mini_wheel_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_mini_wheel_colour`
--
ALTER TABLE `tbl_mini_wheel_colour`
  MODIFY `mini_wheel_colour_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_mini_wheel_size`
--
ALTER TABLE `tbl_mini_wheel_size`
  MODIFY `mini_wheel_size_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_mini_wheel`
--
ALTER TABLE `tbl_mini_wheel`
  ADD CONSTRAINT `tbl_mini_wheel_ibfk_1` FOREIGN KEY (`mini_wheel_colour_id`) REFERENCES `tbl_mini_wheel_colour` (`mini_wheel_colour_id`),
  ADD CONSTRAINT `tbl_mini_wheel_ibfk_2` FOREIGN KEY (`mini_wheel_size_id`) REFERENCES `tbl_mini_wheel_size` (`mini_wheel_size_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
