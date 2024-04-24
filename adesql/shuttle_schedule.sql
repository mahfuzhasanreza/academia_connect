-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2024 at 07:06 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `academia_connect`
--

-- --------------------------------------------------------

--
-- Table structure for table `shuttle_schedule`
--

CREATE TABLE `shuttle_schedule` (
  `shuttle_number_plate` varchar(20) NOT NULL,
  `shuttle_details` text DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `shuttle_name` varchar(100) DEFAULT NULL,
  `availability` int(11) DEFAULT 0,
  `driver_id` int(11) DEFAULT NULL,
  `arrival_time` datetime DEFAULT NULL,
  `destination_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shuttle_schedule`
--

INSERT INTO `shuttle_schedule` (`shuttle_number_plate`, `shuttle_details`, `price`, `shuttle_name`, `availability`, `driver_id`, `arrival_time`, `destination_time`) VALUES
('1122-55', 'motun bazar to uiu', 0.00, 'torongo', 0, NULL, NULL, NULL),
('jhmhjhgmjk', 'jdytjytjgf', 0.00, 'jgjgj', 0, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `shuttle_schedule`
--
ALTER TABLE `shuttle_schedule`
  ADD PRIMARY KEY (`shuttle_number_plate`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
