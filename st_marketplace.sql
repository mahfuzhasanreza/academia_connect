-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2024 at 02:48 AM
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
-- Database: `st_marketplace`
--

-- --------------------------------------------------------

--
-- Table structure for table `ad`
--

CREATE TABLE `ad` (
  `ad_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `post_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ad`
--

INSERT INTO `ad` (`ad_id`, `student_id`, `title`, `description`, `price`, `post_time`) VALUES
(5, 1, 'Interested to sell a laptop\r\n', 'Gently used laptop for sale.', 500.00, '2024-04-25 22:47:40'),
(6, 2, 'Textbooks for Sale', 'Various textbooks for sale.', 100.00, '2024-04-25 22:47:40'),
(7, 3, 'Gaming Console for Sale', 'Brand new gaming console for sale.', 300.00, '2024-04-25 22:47:40'),
(8, 4, 'Furniture for Sale', 'Modern furniture set for sale.', 800.00, '2024-04-25 22:47:40'),
(11, 1, 'sd', 'sdgsdfgsdf', 542.00, '2024-04-30 23:26:11'),
(12, 1, 'abc', 'asdfjasd sefbsajlk f', 12.00, '2024-04-30 23:54:56'),
(13, 1, 'sdf ', 'wef ', 12.00, '2024-04-30 23:55:22'),
(14, 2, 'champion trophy', 'champion torpy of electronics lab for sale', 10000.00, '2024-04-30 23:58:42'),
(15, 4, 'cc', 'dsf gssdfgdg ', 123.00, '2024-04-30 23:59:30'),
(16, 2, 'part time job', 'no job, just kidding', 0.00, '2024-05-01 00:01:52'),
(17, 2, 'ads', 'fgsd sdgsdfg wfgd', 23.00, '2024-05-01 00:10:39'),
(18, 2, 'no', 'asfs dfsgs gsgsadgfasd', 1.00, '2024-05-01 00:15:15'),
(19, 2, 'sdf', 'sdfs sdgs', 23.00, '2024-05-01 00:18:59'),
(20, 3, 'nothing', 'no description', 10.00, '2024-05-01 00:22:47'),
(21, 3, 'nothing', 'sdf sa', 10.00, '2024-05-01 00:26:42'),
(22, 4, 'Triphy', 'Champion trophy of electronics lab', 10245.00, '2024-05-01 00:32:31'),
(28, 4, 'sdf', 'sdgfsad gasgsad', 23.00, '2024-05-01 00:41:21');

-- --------------------------------------------------------

--
-- Table structure for table `buy_sell`
--

CREATE TABLE `buy_sell` (
  `ad_id` int(11) NOT NULL,
  `buy_or_sell` enum('buy','sell') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buy_sell`
--

INSERT INTO `buy_sell` (`ad_id`, `buy_or_sell`) VALUES
(5, 'buy'),
(6, 'sell'),
(7, 'buy'),
(8, 'sell'),
(11, 'sell'),
(21, 'sell'),
(22, 'sell'),
(28, 'buy');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `ad_id` int(11) DEFAULT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`ad_id`, `category_name`) VALUES
(5, 'Electronics'),
(6, 'Books'),
(7, 'Clothing'),
(8, 'Electronics'),
(11, 'electronics'),
(12, 'electronics'),
(13, 'electronics'),
(14, 'electronics'),
(15, 'electronics'),
(16, 'clothing'),
(17, 'electronics'),
(18, 'other'),
(19, 'electronics'),
(20, 'other'),
(21, 'electronics'),
(22, 'electronics'),
(28, 'electronics');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `image_id` int(11) NOT NULL,
  `ad_id` int(11) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`image_id`, `ad_id`, `image_url`) VALUES
(1, 12, 'uploads/Screenshot 2023-08-29 100606.png'),
(2, 13, 'uploads/Screenshot 2024-03-15 205908.png'),
(3, 14, 'uploads/Screenshot 2023-08-29 100606.png'),
(5, 16, 'uploads/Screenshot 2024-03-15 205908.png'),
(6, 17, 'uploads/Screenshot 2024-03-15 205908.png'),
(7, 19, 'uploads/Screenshot 2024-03-15 205908.png');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `username`, `name`, `email`, `phone_no`) VALUES
(1, 'john_doe', 'John Doe', 'john.doe@example.com', '123-456-7890'),
(2, 'jane_smith', 'Jane Smith', 'jane.smith@example.com', '987-654-3210'),
(3, 'alex_wong', 'Alex Wong', 'alex.wong@example.com', '555-123-4567'),
(4, 'emily_jones', 'Emily Jones', 'emily.jones@example.com', '111-222-3333');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ad`
--
ALTER TABLE `ad`
  ADD PRIMARY KEY (`ad_id`),
  ADD KEY `fk_student_id` (`student_id`);

--
-- Indexes for table `buy_sell`
--
ALTER TABLE `buy_sell`
  ADD PRIMARY KEY (`ad_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD KEY `ad_id` (`ad_id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `ad_id` (`ad_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ad`
--
ALTER TABLE `ad`
  MODIFY `ad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ad`
--
ALTER TABLE `ad`
  ADD CONSTRAINT `ad_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  ADD CONSTRAINT `fk_student_id` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`);

--
-- Constraints for table `buy_sell`
--
ALTER TABLE `buy_sell`
  ADD CONSTRAINT `buy_sell_ibfk_1` FOREIGN KEY (`ad_id`) REFERENCES `ad` (`ad_id`);

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`ad_id`) REFERENCES `ad` (`ad_id`);

--
-- Constraints for table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `image_ibfk_1` FOREIGN KEY (`ad_id`) REFERENCES `ad` (`ad_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
