-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2024 at 02:30 AM
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
-- Table structure for table `ad`
--

CREATE TABLE `ad` (
  `ad_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `post_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `username` varchar(255) NOT NULL,
  `image_data` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ad`
--

INSERT INTO `ad` (`ad_id`, `student_id`, `title`, `description`, `price`, `post_time`, `username`, `image_data`) VALUES
(5, 1, 'Interested to sell a laptop\r\n', 'Gently used laptop for sale.', 500.00, '2024-04-25 22:47:40', '0', ''),
(6, 2, 'Textbooks for Sale', 'Various textbooks for sale.', 100.00, '2024-04-25 22:47:40', '0', ''),
(7, 3, 'Gaming Console for Sale', 'Brand new gaming console for sale.', 300.00, '2024-04-25 22:47:40', '0', ''),
(8, 4, 'Furniture for Sale', 'Modern furniture set for sale.', 800.00, '2024-04-25 22:47:40', '0', ''),
(11, 1, 'sd', 'sdgsdfgsdf', 542.00, '2024-04-30 23:26:11', '0', ''),
(12, 1, 'abc', 'asdfjasd sefbsajlk f', 12.00, '2024-04-30 23:54:56', '0', ''),
(13, 1, 'sdf ', 'wef ', 12.00, '2024-04-30 23:55:22', '0', ''),
(14, 2, 'champion trophy', 'champion torpy of electronics lab for sale', 10000.00, '2024-04-30 23:58:42', '0', ''),
(15, 4, 'cc', 'dsf gssdfgdg ', 123.00, '2024-04-30 23:59:30', '0', ''),
(16, 2, 'part time job', 'no job, just kidding', 0.00, '2024-05-01 00:01:52', '0', ''),
(17, 2, 'ads', 'fgsd sdgsdfg wfgd', 23.00, '2024-05-01 00:10:39', '0', ''),
(18, 2, 'no', 'asfs dfsgs gsgsadgfasd', 1.00, '2024-05-01 00:15:15', '0', ''),
(19, 2, 'sdf', 'sdfs sdgs', 23.00, '2024-05-01 00:18:59', '0', ''),
(20, 3, 'nothing', 'no description', 10.00, '2024-05-01 00:22:47', '0', ''),
(21, 3, 'nothing', 'sdf sa', 10.00, '2024-05-01 00:26:42', '0', ''),
(22, 4, 'Triphy', 'Champion trophy of electronics lab', 10245.00, '2024-05-01 00:32:31', '0', ''),
(28, 4, 'sdf', 'sdgfsad gasgsad', 23.00, '2024-05-01 00:41:21', '0', ''),
(29, 1, 'Mahfuz', 'Selling my friend', 100.00, '2024-05-01 04:42:28', '0', ''),
(30, 1, 'Mahfuz', 'want to sell my friend.', 100.00, '2024-05-01 04:44:35', '0', ''),
(31, 1, 'Mahfuzsssssssssssssssssss', 'dsdsxx', 100.00, '2024-05-01 05:00:43', '0', ''),
(32, 1, 'Mahfuzsssssssssssssssssddss', 'hhhj', 100.00, '2024-05-01 05:23:15', '0', ''),
(42, NULL, NULL, NULL, NULL, '2024-06-02 22:36:30', '', ''),
(44, NULL, NULL, NULL, NULL, '2024-06-02 22:36:54', '', ''),
(45, 1, 'ujhk', 'jjjj', 55.00, '2024-06-02 22:44:51', 'themahfuz', ''),
(46, NULL, NULL, NULL, NULL, '2024-06-02 22:44:51', '', ''),
(47, 1, 'hi', 'hh', 5.00, '2024-06-02 22:52:03', 'themahfuz', ''),
(48, NULL, NULL, NULL, NULL, '2024-06-02 22:52:03', '', ''),
(49, 1, 'hello', 'jgf', 55.00, '2024-06-02 22:56:03', 'themahfuz', ''),
(50, NULL, NULL, NULL, NULL, '2024-06-02 22:56:03', '', ''),
(51, 1, 'bye', 'bye', 55.00, '2024-06-03 00:02:54', 'themahfuz', ''),
(52, NULL, NULL, NULL, NULL, '2024-06-03 00:02:54', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `password`) VALUES
('admin', 'pass123');

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `BookId` int(10) NOT NULL,
  `Author` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`BookId`, `Author`) VALUES
(3, 'Jay Prakash'),
(4, 'Jay Prakash'),
(5, 'x'),
(6, 'a1'),
(7, 'Bogart'),
(7, 'Kenneth'),
(8, 'Auer'),
(8, 'Davil J.'),
(9, 'Rob'),
(9, 'Williams'),
(10, 'Deiteil'),
(11, 'Sharma'),
(12, 'Barney Stinson'),
(13, 'Puri'),
(14, 'Manna'),
(15, 'Jindal U.C'),
(16, 'Prasad'),
(17, 'Aravind Alex'),
(17, 'Haldar Sibsankar'),
(18, 'Sandhu'),
(18, 'Singh');

-- --------------------------------------------------------

--
-- Table structure for table `availability`
--

CREATE TABLE `availability` (
  `availability_id` int(11) NOT NULL,
  `ad_id` int(11) NOT NULL,
  `available` enum('yes','no') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `availability`
--

INSERT INTO `availability` (`availability_id`, `ad_id`, `available`) VALUES
(2, 6, 'no'),
(3, 5, 'yes'),
(5, 7, 'no'),
(6, 8, 'no'),
(7, 11, 'no'),
(8, 12, 'no'),
(9, 13, 'no'),
(10, 14, 'no'),
(11, 15, 'yes'),
(12, 16, 'yes'),
(13, 17, 'yes'),
(14, 18, 'no'),
(15, 19, 'no'),
(16, 20, 'yes'),
(17, 21, 'yes'),
(18, 22, 'yes'),
(19, 28, 'no'),
(20, 31, 'yes'),
(21, 32, 'yes'),
(29, 45, 'yes'),
(30, 47, 'yes'),
(31, 49, 'yes'),
(32, 51, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `BookId` int(10) NOT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `Publisher` varchar(50) DEFAULT NULL,
  `Year` varchar(50) DEFAULT NULL,
  `Availability` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`BookId`, `Title`, `Publisher`, `Year`, `Availability`) VALUES
(1, 'OS', 'PEARSON', '2006', 0),
(2, 'DBMS', 'TARGET67', '2010', 0),
(3, 'TOC', 'NITC', '2018', 4),
(4, 'TOC', 'NITC', '2018', 1),
(5, 'DAA', 'y', '2014', 0),
(6, 'DSA', 'X', '2010', 10),
(7, 'Discrete Structures', 'Pearson', '2010', 10),
(8, 'Database Processing', 'Prentice Hall', '2013', 12),
(9, 'Computer System Architecture', 'Prentice Hall', '2015', 4),
(10, 'C: How to program', 'Prentice Hall', '2009', 3),
(11, 'Atomic and Nuclear Systems', 'Pearson India ', '2017', 12),
(12, 'The PlayBook', 'Stinson', '2010', 12),
(13, 'General Theory of Relativity', 'Pearson India ', '2012', 5),
(14, 'Heat and Thermodynamics', 'Pearson', '2013', 9),
(15, 'Machine Design', 'Pearson India ', '2012', 5),
(16, 'Nuclear Physics', 'Pearson India ', '1998', 7),
(17, 'Operating System', 'Pearson India ', '1990', 7),
(18, 'Theory of Machines', 'Pearson', '1992', 12);

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
(28, 'buy'),
(29, 'sell'),
(30, 'sell'),
(31, 'sell'),
(32, 'sell'),
(45, 'buy'),
(47, 'buy'),
(49, 'sell'),
(51, 'buy');

-- --------------------------------------------------------

--
-- Table structure for table `canteen_menu`
--

CREATE TABLE `canteen_menu` (
  `id` int(11) NOT NULL,
  `food_name` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `food_photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `canteen_staff`
--

CREATE TABLE `canteen_staff` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `canteen_staff_user`
--

CREATE TABLE `canteen_staff_user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(28, 'electronics'),
(29, 'other'),
(30, 'electronics'),
(31, 'other'),
(32, 'other'),
(45, 'books'),
(47, 'books'),
(49, 'clothing'),
(51, 'electronics');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `day` varchar(20) NOT NULL,
  `exercise_name` varchar(50) NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `day`, `exercise_name`, `time`) VALUES
(1, 'Monday', 'Judo', '08:00:00'),
(2, 'Monday', 'Cardio Blast', '10:00:00'),
(3, 'Monday', 'Strength Training', '12:00:00'),
(4, 'Monday', 'Pilates', '02:00:00'),
(5, 'Monday', 'Spinning', '04:00:00'),
(6, 'Tuesday', 'HIIT', '08:00:00'),
(7, 'Tuesday', 'Yoga', '10:00:00'),
(8, 'Tuesday', 'Body Pump', '12:00:00'),
(9, 'Tuesday', 'Core Conditioning', '02:00:00'),
(10, 'Tuesday', 'Kickboxing', '04:00:00'),
(11, 'Wednesday', 'Yoga', '08:00:00'),
(12, 'Wednesday', 'Cardio Blast', '10:00:00'),
(13, 'Wednesday', 'Strength Training', '12:00:00'),
(14, 'Wednesday', 'Pilates', '02:00:00'),
(15, 'Wednesday', 'Spinning', '04:00:00'),
(16, 'Thursday', 'HIIT', '08:00:00'),
(17, 'Thursday', 'Dance', '10:00:00'),
(18, 'Thursday', 'Body Pump', '12:00:00'),
(19, 'Thursday', 'Core Conditioning', '02:00:00'),
(20, 'Thursday', 'Kickboxing', '04:00:00'),
(21, 'Friday', 'Yoga', '08:00:00'),
(22, 'Friday', 'Cardio Blast', '10:00:00'),
(23, 'Friday', 'Strength Training', '12:00:00'),
(24, 'Friday', 'Pilates', '02:00:00'),
(25, 'Friday', 'Spinning', '04:00:00'),
(26, 'Saturday', 'HIIT', '08:00:00'),
(27, 'Saturday', 'Zumba', '10:00:00'),
(28, 'Saturday', 'Body Pump', '12:00:00'),
(29, 'Saturday', 'Core Conditioning', '02:00:00'),
(30, 'Saturday', 'Kickboxing', '04:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `classrooms`
--

CREATE TABLE `classrooms` (
  `name` varchar(30) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `classrooms`
--

INSERT INTO `classrooms` (`name`, `status`) VALUES
('NL32', 2),
('ML10', 3),
('NL32', 2),
('ML10', 3),
('NL32', 2),
('ML10', 3),
('NL32', 2),
('ML10', 3),
('ML01', 3),
('ML05', 0),
('ML06', 0);

-- --------------------------------------------------------

--
-- Table structure for table `clubs`
--

CREATE TABLE `clubs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `manager_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clubs`
--

INSERT INTO `clubs` (`id`, `name`, `description`, `password`, `manager_id`) VALUES
(5, 'computer club', 'ccl', '1234', 3);

-- --------------------------------------------------------

--
-- Table structure for table `club_members`
--

CREATE TABLE `club_members` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `club_id` int(11) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `batch` int(11) NOT NULL,
  `department` varchar(255) NOT NULL,
  `expertise` varchar(255) NOT NULL,
  `accept` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `club_members`
--

INSERT INTO `club_members` (`id`, `user_id`, `club_id`, `designation`, `batch`, `department`, `expertise`, `accept`) VALUES
(10, 4, 5, 'adelsssssx', 223, 'engineering', 'JHJHYUVTYG', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us_info`
--

CREATE TABLE `contact_us_info` (
  `name` varchar(255) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `concern` varchar(255) NOT NULL,
  `is_register` varchar(255) NOT NULL,
  `timestamps` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_us_info`
--

INSERT INTO `contact_us_info` (`name`, `mail`, `concern`, `is_register`, `timestamps`) VALUES
('dd', 'mahfuzhasanreza1@gmail.com', 'rfrfrfrfrfrfrfrfrfrfrfrfrfrf', '', '2024-04-28 17:11:54'),
('mahfuzhteeeeeeeeeeeeeeeeeeeeeeee', 'mahfuzhasanreza1@gmail.com', 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhh', '', '2024-04-28 21:06:02');

-- --------------------------------------------------------

--
-- Table structure for table `counseling_availability`
--

CREATE TABLE `counseling_availability` (
  `id` int(11) NOT NULL,
  `teacher_name` varchar(255) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `available_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `counseling_availability`
--

INSERT INTO `counseling_availability` (`id`, `teacher_name`, `teacher_id`, `available_time`) VALUES
(11, 'Mr. XYZ', 1, '2024-04-17 09:33:18'),
(22, 'Mr. Mahfuz Hasan', 6, '2024-04-19 13:34:37');

-- --------------------------------------------------------

--
-- Table structure for table `counselling_requests`
--

CREATE TABLE `counselling_requests` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `request_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` int(11) NOT NULL,
  `counter_name` varchar(50) NOT NULL,
  `counter_value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `eventName` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `startTime` datetime NOT NULL,
  `endTime` datetime NOT NULL,
  `description` text DEFAULT NULL,
  `club_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `eventName`, `location`, `startTime`, `endTime`, `description`, `club_id`) VALUES
(5, 'hello', 'uiu', '2024-05-08 12:15:00', '2024-05-25 12:15:00', 'efwfwedfwfd', 5);

-- --------------------------------------------------------

--
-- Table structure for table `gymnasium_manager`
--

CREATE TABLE `gymnasium_manager` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gymnasium_membership`
--

CREATE TABLE `gymnasium_membership` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `membership_type` enum('monthly','annual') NOT NULL,
  `expiration_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gym_managers`
--

CREATE TABLE `gym_managers` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone_no` varchar(15) NOT NULL,
  `plan_type` varchar(50) NOT NULL,
  `join_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `first_name`, `last_name`, `phone_no`, `plan_type`, `join_date`) VALUES
(1, 'Md', 'Emon', '21720', 'VIP', '2024-05-31 21:22:02'),
(2, 'Md', 'Riaj', '12456', 'VIP', '2024-05-31 21:29:08'),
(9, 'Md', 'Riaj', '12475', 'VIP', '2024-05-31 21:42:07'),
(10, 'New', 'Member', '123', 'Regular', '2024-05-31 21:44:02'),
(12, 'Kim', 'Jong Uno', '24444', 'VIP', '2024-05-31 21:47:07'),
(13, 'Kim', 'Chae Yeon', '9857', 'VIP', '2024-05-31 21:50:13'),
(14, 'Md', 'Jong Uno', '8520', 'Regular', '2024-05-31 21:51:37'),
(16, 'ching', 'chong', '7777', 'premium', '2024-05-31 22:02:36');

-- --------------------------------------------------------

--
-- Table structure for table `membership_requests`
--

CREATE TABLE `membership_requests` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone_no` varchar(15) NOT NULL,
  `plan_id` int(11) DEFAULT NULL,
  `request_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `membership_types`
--

CREATE TABLE `membership_types` (
  `id` int(11) NOT NULL,
  `membership_type` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `membership_types`
--

INSERT INTO `membership_types` (`id`, `membership_type`, `price`) VALUES
(1, 'Regular', 25.00),
(2, 'Premium', 50.00),
(3, 'VIP', 70.00);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `M_Id` int(10) NOT NULL,
  `RollNo` varchar(50) DEFAULT NULL,
  `Msg` varchar(255) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`M_Id`, `RollNo`, `Msg`, `Date`, `Time`) VALUES
(1, 'b160111cs', 'Your request for BookId: 1  has been accepted', '2018-10-15', '23:47:40'),
(2, 'B160158CS', 'Your request for BookId: 1  has been accepted', '2018-10-15', '23:47:50'),
(3, 'B160158CS', 'Your request for BookId: 2  has been rejected', '2018-10-15', '23:47:58'),
(4, 'b160632cs', 'Your request for BookId: 3  has been accepted', '2018-10-16', '16:54:29'),
(5, 'b160511cs', 'Your request for BookId: 2  has been accepted', '2018-10-16', '16:54:58'),
(6, 'b160511cs', 'Your request for BookId: 6  has been accepted', '2018-10-16', '21:56:11'),
(7, 'b160854cs', 'Your request for BookId: 6 has been accepted', '2018-10-16', '22:11:12'),
(8, 'B160158CS', 'Your request for renewal of BookId: 1  has been accepted', '2018-10-16', '22:43:24'),
(9, 'b160511cs', 'Your request for return of BookId: 6  has been accepted', '2018-10-16', '22:44:24'),
(10, 'B160158CS', 'Your request for renewal of BookId: 1  has been accepted', '2018-10-16', '23:05:12'),
(11, 'B160158CS', 'Your request for renewal of BookId: 1  has been accepted', '2018-10-16', '23:09:51'),
(12, 'b160511cs', 'Your request for return of BookId: 6  has been accepted', '2018-10-16', '23:10:27'),
(13, 'b160511cs', 'Your request for return of BookId: 2  has been accepted', '2018-10-16', '23:36:10'),
(14, 'b160511cs', 'Your request for issue of BookId: 1  has been rejected', '2018-10-16', '23:36:20'),
(15, 'B160158CS', 'Your request for issue of BookId: 3  has been rejected', '2018-10-16', '23:43:37'),
(16, 'B160158CS', 'Your request for issue of BookId: 6  has been rejected', '2018-10-16', '23:43:42'),
(17, 'B160158CS', 'Your request for issue of BookId: 2  has been accepted', '2018-10-16', '23:47:31'),
(18, 'b160632cs', 'Your request for issue of BookId: 2  has been rejected', '2018-10-16', '23:47:34'),
(19, 'B160632CS', 'Your request for issue of BookId: 7  has been rejected', '2018-10-25', '23:25:25'),
(20, 'B160632CS', 'Your request for issue of BookId: 15  has been accepted', '2018-10-25', '23:25:27'),
(21, 'B160632CS', 'Your request for renewal of BookId: 3  has been accepted', '2018-10-25', '23:25:44'),
(22, 'b160632cs', 'Your request for return of BookId: 3  has been accepted', '2018-10-25', '23:25:48'),
(23, 'b160003ch', 'Your request for issue of BookId: 9  has been accepted', '2018-10-25', '23:27:46'),
(24, 'b160011ch', 'Your request for issue of BookId: 10  has been accepted', '2018-10-25', '23:27:49'),
(25, 'b160011ch', 'Your request for issue of BookId: 17  has been accepted', '2018-10-25', '23:27:53'),
(26, 'b160001cs', 'Your request for issue of BookId: 11  has been accepted', '2018-10-25', '23:27:57'),
(27, 'b160001cs', 'Your request for issue of BookId: 9  has been accepted', '2018-10-25', '23:30:41'),
(28, 'b160158cs', 'Your request for issue of BookId: 9  has been accepted', '2018-10-25', '23:30:43'),
(29, 'b160511cs', 'Your request for issue of BookId: 10  has been accepted', '2018-10-25', '23:30:46'),
(30, 'b160158cs', 'Your request for issue of BookId: 18  has been accepted', '2018-10-25', '23:30:49'),
(31, 'b160511cs', 'Your request for issue of BookId: 11  has been accepted', '2018-10-25', '23:30:58'),
(32, 'b160511cs', 'Your request for issue of BookId: 13  has been accepted', '2018-10-25', '23:31:01'),
(33, 'b160003ch', 'Your request for issue of BookId: 15  has been rejected', '2018-10-26', '03:04:51'),
(34, '989', 'Your request for issue of BookId: 11  has been accepted', '2024-05-08', '13:36:51');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int(11) NOT NULL,
  `plan_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recommendations`
--

CREATE TABLE `recommendations` (
  `R_ID` int(10) NOT NULL,
  `Book_Name` varchar(50) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `RollNo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `recommendations`
--

INSERT INTO `recommendations` (`R_ID`, `Book_Name`, `Description`, `RollNo`) VALUES
(2, 'Book1', 'Descp1', 'B160158CS'),
(3, 'Book2', 'Descp2', 'B160158CS'),
(5, 'Operating System', 'An operating system (OS) is system software that manages computer hardware and software resources and provides common services for computer programs.', 'b160001cs'),
(7, 'Networks ', 'A computer network, or data network, is a digital telecommunications network which allows nodes to share resources. In computer networks, computing devices exchange data with each other using connections (data links) between nodes.', 'b160999cs'),
(8, 'String Theory', 'In physics, string theory is a theoretical framework in which the point-like particles of particle physics are replaced by one-dimensional objects called strings. It describes how these strings propagate through space and interact with each other.', 'b160777cs'),
(9, 'The Theory of Everything', 'The Theory of Everything', 'b160777cs');

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE `record` (
  `RollNo` varchar(50) NOT NULL,
  `BookId` int(10) NOT NULL,
  `Date_of_Issue` date DEFAULT NULL,
  `Due_Date` date DEFAULT NULL,
  `Date_of_Return` date DEFAULT NULL,
  `Dues` int(10) DEFAULT NULL,
  `Renewals_left` int(10) DEFAULT NULL,
  `Time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `record`
--

INSERT INTO `record` (`RollNo`, `BookId`, `Date_of_Issue`, `Due_Date`, `Date_of_Return`, `Dues`, `Renewals_left`, `Time`) VALUES
('989', 11, '2024-05-08', '2024-07-07', NULL, NULL, 1, '13:36:29'),
('b160001cs', 3, NULL, NULL, NULL, NULL, NULL, '13:18:12'),
('b160001cs', 9, '2018-10-25', '2018-12-24', NULL, NULL, 1, '13:14:20'),
('b160001cs', 11, '2018-10-25', '2018-12-24', NULL, NULL, 1, '13:14:20'),
('b160001cs', 12, NULL, NULL, NULL, NULL, NULL, '13:14:20'),
('b160003ch', 9, '2018-10-25', '2018-12-24', NULL, NULL, 1, '13:14:20'),
('b160003ch', 14, NULL, NULL, NULL, NULL, NULL, '13:14:20'),
('b160011ch', 10, '2018-10-25', '2018-12-24', NULL, NULL, 1, '13:14:20'),
('b160011ch', 17, '2018-10-25', '2018-12-24', NULL, NULL, 1, '13:14:20'),
('b160111cs', 1, '2018-10-15', '2018-12-14', NULL, NULL, 1, '13:14:20'),
('B160158CS', 1, '2018-10-15', '2020-04-12', NULL, NULL, 0, '13:14:20'),
('B160158CS', 2, '2018-10-16', '2018-12-15', NULL, NULL, 1, '13:14:20'),
('b160158cs', 3, NULL, NULL, NULL, NULL, NULL, '13:14:20'),
('b160158cs', 4, NULL, NULL, NULL, NULL, NULL, '13:14:20'),
('b160158cs', 7, NULL, NULL, NULL, NULL, NULL, '13:14:20'),
('b160158cs', 9, '2018-10-25', '2018-12-24', NULL, NULL, 1, '13:14:20'),
('b160158cs', 17, NULL, NULL, NULL, NULL, NULL, '13:14:20'),
('b160158cs', 18, '2018-10-25', '2018-12-24', NULL, NULL, 1, '13:14:20'),
('b160511cs', 2, '2018-10-16', '2018-12-15', '2018-10-16', -60, 1, '13:14:20'),
('b160511cs', 6, '2018-10-16', '2018-12-15', '2018-10-16', -60, 1, '13:14:20'),
('b160511cs', 7, NULL, NULL, NULL, NULL, NULL, '13:14:20'),
('b160511cs', 10, '2018-10-25', '2018-12-24', NULL, NULL, 1, '13:14:20'),
('b160511cs', 11, '2018-10-25', '2018-12-24', NULL, NULL, 1, '13:14:20'),
('b160511cs', 13, '2018-10-25', '2018-12-24', NULL, NULL, 1, '13:14:20'),
('b160511cs', 17, NULL, NULL, NULL, NULL, NULL, '13:14:20'),
('b160511cs', 18, NULL, NULL, NULL, NULL, NULL, '13:14:20'),
('b160632cs', 3, '2018-07-16', '2018-11-14', '2018-10-25', -20, 0, '13:14:20'),
('B160632CS', 15, '2018-10-25', '2018-12-24', NULL, NULL, 1, '13:14:20'),
('B160632CS', 17, NULL, NULL, NULL, NULL, NULL, '13:17:31'),
('b160854cs', 6, '2018-10-16', '2019-04-14', NULL, NULL, 1, '13:14:20');

-- --------------------------------------------------------

--
-- Table structure for table `renew`
--

CREATE TABLE `renew` (
  `RollNo` varchar(50) NOT NULL,
  `BookId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `renew`
--

INSERT INTO `renew` (`RollNo`, `BookId`) VALUES
('989', 11),
('b160001cs', 11),
('b160158cs', 2),
('b160158cs', 9),
('b160158cs', 18),
('b160511cs', 11);

-- --------------------------------------------------------

--
-- Table structure for table `return`
--

CREATE TABLE `return` (
  `RollNo` varchar(50) NOT NULL,
  `BookId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `return`
--

INSERT INTO `return` (`RollNo`, `BookId`) VALUES
('b160003ch', 9),
('b160158cs', 1),
('b160158cs', 18),
('b160511cs', 10),
('b160511cs', 13);

-- --------------------------------------------------------

--
-- Table structure for table `semester3`
--

CREATE TABLE `semester3` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) NOT NULL,
  `period2` varchar(30) NOT NULL,
  `period3` varchar(30) NOT NULL,
  `period4` varchar(30) NOT NULL,
  `period5` varchar(30) NOT NULL,
  `period6` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `semester3`
--

INSERT INTO `semester3` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('monday', 'AM261<br>SH', 'CO206<br>NA', 'EL211<br>MS', '-<br>-', '-<br>-', '-<br>-, -, -'),
('tuesday', 'CO203<br>SI', 'CO207<br>AMA', 'EL211<br>MS', 'AM261<br>SH', '-<br>-', 'CO293<br>SI, TA, IZ'),
('wednesday', 'CO206<br>NA', 'AM261<br>SH', 'CO207<br>AMA', '-<br>-', '-<br>-', 'CO292<br>AMA, MHK, FA'),
('thursday', 'CO203<br>SI', 'EL211<br>MS', 'CO207<br>AMA', '-<br>-', '-<br>-', 'CO293<br>SI, TA, IZ'),
('friday', 'CO206<br>NA', 'AM261<br>SH', 'CO203<br>SI', '-<br>-', '-<br>-', '-<br>-, -, -'),
('saturday', 'EL211<br>MS', 'CO207<br>AMA', 'CO203<br>SI', 'CO206<br>NA', '-<br>-', 'CO292<br>AMA, MHK, FA'),
('monday', 'AM261<br>SH', 'CO206<br>NA', 'EL211<br>MS', '-<br>-', '-<br>-', '-<br>-, -, -'),
('tuesday', 'CO203<br>SI', 'CO207<br>AMA', 'EL211<br>MS', 'AM261<br>SH', '-<br>-', 'CO293<br>SI, TA, IZ'),
('wednesday', 'CO206<br>NA', 'AM261<br>SH', 'CO207<br>AMA', '-<br>-', '-<br>-', 'CO292<br>AMA, MHK, FA'),
('thursday', 'CO203<br>SI', 'EL211<br>MS', 'CO207<br>AMA', '-<br>-', '-<br>-', 'CO293<br>SI, TA, IZ'),
('friday', 'CO206<br>NA', 'AM261<br>SH', 'CO203<br>SI', '-<br>-', '-<br>-', '-<br>-, -, -'),
('saturday', 'EL211<br>MS', 'CO207<br>AMA', 'CO203<br>SI', 'CO206<br>NA', '-<br>-', 'CO292<br>AMA, MHK, FA'),
('monday', 'AM261<br>SH', 'CO206<br>NA', 'EL211<br>MS', '-<br>-', '-<br>-', '-<br>-, -, -'),
('tuesday', 'CO203<br>SI', 'CO207<br>AMA', 'EL211<br>MS', 'AM261<br>SH', '-<br>-', 'CO293<br>SI, TA, IZ'),
('wednesday', 'CO206<br>NA', 'AM261<br>SH', 'CO207<br>AMA', '-<br>-', '-<br>-', 'CO292<br>AMA, MHK, FA'),
('thursday', 'CO203<br>SI', 'EL211<br>MS', 'CO207<br>AMA', '-<br>-', '-<br>-', 'CO293<br>SI, TA, IZ'),
('friday', 'CO206<br>NA', 'AM261<br>SH', 'CO203<br>SI', '-<br>-', '-<br>-', '-<br>-, -, -'),
('saturday', 'EL211<br>MS', 'CO207<br>AMA', 'CO203<br>SI', 'CO206<br>NA', '-<br>-', 'CO292<br>AMA, MHK, FA'),
('monday', 'AM261<br>SH', 'CO206<br>NA', 'EL211<br>MS', '-<br>-', '-<br>-', '-<br>-, -, -'),
('tuesday', 'CO203<br>SI', 'CO207<br>AMA', 'EL211<br>MS', 'AM261<br>SH', '-<br>-', 'CO293<br>SI, TA, IZ'),
('wednesday', 'CO206<br>NA', 'AM261<br>SH', 'CO207<br>AMA', '-<br>-', '-<br>-', 'CO292<br>AMA, MHK, FA'),
('thursday', 'CO203<br>SI', 'EL211<br>MS', 'CO207<br>AMA', '-<br>-', '-<br>-', 'CO293<br>SI, TA, IZ'),
('friday', 'CO206<br>NA', 'AM261<br>SH', 'CO203<br>SI', '-<br>-', '-<br>-', '-<br>-, -, -'),
('saturday', 'EL211<br>MS', 'CO207<br>AMA', 'CO203<br>SI', 'CO206<br>NA', '-<br>-', 'CO292<br>AMA, MHK, FA');

-- --------------------------------------------------------

--
-- Table structure for table `semester5`
--

CREATE TABLE `semester5` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) NOT NULL,
  `period2` varchar(30) NOT NULL,
  `period3` varchar(30) NOT NULL,
  `period4` varchar(30) NOT NULL,
  `period5` varchar(30) NOT NULL,
  `period6` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `semester5`
--

INSERT INTO `semester5` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('monday', 'ME340<br>FT', 'CO309<br>AMK', 'CO308<br>IZ', 'CO310<br>FA', '-<br>-', 'CO394<br>RA, MRW, AMA'),
('tuesday', 'EL340<br>MS', 'CO310<br>FA', 'ME340<br>FT', '-<br>-', '-<br>-', 'CO393<br>AMA, FA, RA'),
('wednesday', 'CO309<br>AMK', 'CO308<br>IZ', 'ME340<br>FT', '-<br>-', '-<br>-', '-<br>-, -, -'),
('thursday', 'EL340<br>MS', 'CO310<br>FA', 'CO309<br>AMK', '-<br>-', '-<br>-', 'CO393<br>AMA, FA, RA'),
('friday', 'CO308<br>IZ', 'ME340<br>FT', 'CO309<br>AMK', 'EL340<br>MS', '-<br>-', 'CO394<br>RA, MRW, AMA'),
('saturday', 'CO310<br>FA', 'EL340<br>MS', 'CO308<br>IZ', '-<br>-', '-<br>-', '-<br>-, -, -'),
('monday', 'ME340<br>FT', 'CO309<br>AMK', 'CO308<br>IZ', 'CO310<br>FA', '-<br>-', 'CO394<br>RA, MRW, AMA'),
('tuesday', 'EL340<br>MS', 'CO310<br>FA', 'ME340<br>FT', '-<br>-', '-<br>-', 'CO393<br>AMA, FA, RA'),
('wednesday', 'CO309<br>AMK', 'CO308<br>IZ', 'ME340<br>FT', '-<br>-', '-<br>-', '-<br>-, -, -'),
('thursday', 'EL340<br>MS', 'CO310<br>FA', 'CO309<br>AMK', '-<br>-', '-<br>-', 'CO393<br>AMA, FA, RA'),
('friday', 'CO308<br>IZ', 'ME340<br>FT', 'CO309<br>AMK', 'EL340<br>MS', '-<br>-', 'CO394<br>RA, MRW, AMA'),
('saturday', 'CO310<br>FA', 'EL340<br>MS', 'CO308<br>IZ', '-<br>-', '-<br>-', '-<br>-, -, -'),
('monday', 'ME340<br>FT', 'CO309<br>AMK', 'CO308<br>IZ', 'CO310<br>FA', '-<br>-', 'CO394<br>RA, MRW, AMA'),
('tuesday', 'EL340<br>MS', 'CO310<br>FA', 'ME340<br>FT', '-<br>-', '-<br>-', 'CO393<br>AMA, FA, RA'),
('wednesday', 'CO309<br>AMK', 'CO308<br>IZ', 'ME340<br>FT', '-<br>-', '-<br>-', '-<br>-, -, -'),
('thursday', 'EL340<br>MS', 'CO310<br>FA', 'CO309<br>AMK', '-<br>-', '-<br>-', 'CO393<br>AMA, FA, RA'),
('friday', 'CO308<br>IZ', 'ME340<br>FT', 'CO309<br>AMK', 'EL340<br>MS', '-<br>-', 'CO394<br>RA, MRW, AMA'),
('saturday', 'CO310<br>FA', 'EL340<br>MS', 'CO308<br>IZ', '-<br>-', '-<br>-', '-<br>-, -, -'),
('monday', 'ME340<br>FT', 'CO309<br>AMK', 'CO308<br>IZ', 'CO310<br>FA', '-<br>-', 'CO394<br>RA, MRW, AMA'),
('tuesday', 'EL340<br>MS', 'CO310<br>FA', 'ME340<br>FT', '-<br>-', '-<br>-', 'CO393<br>AMA, FA, RA'),
('wednesday', 'CO309<br>AMK', 'CO308<br>IZ', 'ME340<br>FT', '-<br>-', '-<br>-', '-<br>-, -, -'),
('thursday', 'EL340<br>MS', 'CO310<br>FA', 'CO309<br>AMK', '-<br>-', '-<br>-', 'CO393<br>AMA, FA, RA'),
('friday', 'CO308<br>IZ', 'ME340<br>FT', 'CO309<br>AMK', 'EL340<br>MS', '-<br>-', 'CO394<br>RA, MRW, AMA'),
('saturday', 'CO310<br>FA', 'EL340<br>MS', 'CO308<br>IZ', '-<br>-', '-<br>-', '-<br>-, -, -');

-- --------------------------------------------------------

--
-- Table structure for table `semester7`
--

CREATE TABLE `semester7` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) NOT NULL,
  `period2` varchar(30) NOT NULL,
  `period3` varchar(30) NOT NULL,
  `period4` varchar(30) NOT NULL,
  `period5` varchar(30) NOT NULL,
  `period6` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `semester7`
--

INSERT INTO `semester7` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('monday', 'CO445<br>MHK', 'CO431<br>RA', 'CO460<br>TA', '-<br>-', '-<br>-', 'CO494<br>IZ, MSU, SB'),
('tuesday', 'CO451<br>AMA', 'CO448<br>NA', 'CO406<br>AMA', 'CO445<br>MHK', '-<br>-', 'CO493<br>NA, MRW, AMK'),
('wednesday', 'CO431<br>RA', 'CO460<br>TA', 'CO445<br>MHK', 'CO451<br>AMA', 'CO448<br>NA', 'CO494<br>IZ, MSU, SB'),
('thursday', 'CO406<br>AMA', 'CO451<br>AMA', 'CO448<br>NA', 'CO431<br>RA', 'CO460<br>TA', 'CO493<br>NA, MRW, AMK'),
('friday', 'CO445<br>MHK', 'CO431<br>RA', 'CO460<br>TA', 'CO406<br>AMA', '-<br>-', '-<br>-, -, -'),
('saturday', 'CO451<br>AMA', 'CO448<br>NA', 'CO406<br>AMA', '-<br>-', '-<br>-', '-<br>-, -, -'),
('monday', 'CO445<br>MHK', 'CO431<br>RA', 'CO460<br>TA', '-<br>-', '-<br>-', 'CO494<br>IZ, MSU, SB'),
('tuesday', 'CO451<br>AMA', 'CO448<br>NA', 'CO406<br>AMA', 'CO445<br>MHK', '-<br>-', 'CO493<br>NA, MRW, AMK'),
('wednesday', 'CO431<br>RA', 'CO460<br>TA', 'CO445<br>MHK', 'CO451<br>AMA', 'CO448<br>NA', 'CO494<br>IZ, MSU, SB'),
('thursday', 'CO406<br>AMA', 'CO451<br>AMA', 'CO448<br>NA', 'CO431<br>RA', 'CO460<br>TA', 'CO493<br>NA, MRW, AMK'),
('friday', 'CO445<br>MHK', 'CO431<br>RA', 'CO460<br>TA', 'CO406<br>AMA', '-<br>-', '-<br>-, -, -'),
('saturday', 'CO451<br>AMA', 'CO448<br>NA', 'CO406<br>AMA', '-<br>-', '-<br>-', '-<br>-, -, -'),
('monday', 'CO445<br>MHK', 'CO431<br>RA', 'CO460<br>TA', '-<br>-', '-<br>-', 'CO494<br>IZ, MSU, SB'),
('tuesday', 'CO451<br>AMA', 'CO448<br>NA', 'CO406<br>AMA', 'CO445<br>MHK', '-<br>-', 'CO493<br>NA, MRW, AMK'),
('wednesday', 'CO431<br>RA', 'CO460<br>TA', 'CO445<br>MHK', 'CO451<br>AMA', 'CO448<br>NA', 'CO494<br>IZ, MSU, SB'),
('thursday', 'CO406<br>AMA', 'CO451<br>AMA', 'CO448<br>NA', 'CO431<br>RA', 'CO460<br>TA', 'CO493<br>NA, MRW, AMK'),
('friday', 'CO445<br>MHK', 'CO431<br>RA', 'CO460<br>TA', 'CO406<br>AMA', '-<br>-', '-<br>-, -, -'),
('saturday', 'CO451<br>AMA', 'CO448<br>NA', 'CO406<br>AMA', '-<br>-', '-<br>-', '-<br>-, -, -'),
('monday', 'CO445<br>MHK', 'CO431<br>RA', 'CO460<br>TA', '-<br>-', '-<br>-', 'CO494<br>IZ, MSU, SB'),
('tuesday', 'CO451<br>AMA', 'CO448<br>NA', 'CO406<br>AMA', 'CO445<br>MHK', '-<br>-', 'CO493<br>NA, MRW, AMK'),
('wednesday', 'CO431<br>RA', 'CO460<br>TA', 'CO445<br>MHK', 'CO451<br>AMA', 'CO448<br>NA', 'CO494<br>IZ, MSU, SB'),
('thursday', 'CO406<br>AMA', 'CO451<br>AMA', 'CO448<br>NA', 'CO431<br>RA', 'CO460<br>TA', 'CO493<br>NA, MRW, AMK'),
('friday', 'CO445<br>MHK', 'CO431<br>RA', 'CO460<br>TA', 'CO406<br>AMA', '-<br>-', '-<br>-, -, -'),
('saturday', 'CO451<br>AMA', 'CO448<br>NA', 'CO406<br>AMA', '-<br>-', '-<br>-', '-<br>-, -, -');

-- --------------------------------------------------------

--
-- Table structure for table `shuttle_bus_schedule`
--

CREATE TABLE `shuttle_bus_schedule` (
  `id` int(11) NOT NULL,
  `departure_time` time NOT NULL,
  `destination` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shuttle_driver`
--

CREATE TABLE `shuttle_driver` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shuttle_driver_user`
--

CREATE TABLE `shuttle_driver_user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shuttle_driver_user`
--

INSERT INTO `shuttle_driver_user` (`id`, `username`, `name`, `email`, `phone_no`, `password`, `timestamp`) VALUES
(0, 'adelss', 'adelss', 'adelss@sfavdsxz.com', NULL, '$2y$10$hFkXlQcioTwVSRdTbeBuq.Au4NBWRO6FCF9aHeyOQMq65sgtc6uMC', '2024-05-08 11:42:52');

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
('100-255', 'uiu to notun bazar', 0.00, 'boshonto', 0, 0, '2024-05-01 11:25:11', '2024-05-01 11:25:48'),
('54-07-85', 'uiu to notun bazar', 43.00, 'uiu bus  3', 0, 0, '2024-05-01 11:12:16', '2024-05-01 11:12:29'),
('55665', 'rfdrgdg', 0.00, 'jol torongo', 0, NULL, NULL, NULL);

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

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `username`, `name`, `email`, `phone_no`, `password`, `timestamp`) VALUES
(1, 'mahfuzhasan', 'Mahfuz H Reza', 'abc@gmail.com', NULL, '$2y$10$tbTZrR79hZmRcskOYMDpFOwP.iZTAhfKPqk0cUjw4K7HRMvY6oOpa', '2024-05-01 08:15:14'),
(2, 'rezaaa', 'fvsv', 'frd@gmail.com', NULL, '$2y$10$LF0pqw951.6ahCAJhlm0rekl.BfieBDvTBrcH6CSTCnKWjLGINTyW', '2024-05-01 09:14:55'),
(3, 'mahfuzhasanreza', 'mahfuzhasanreza', 'mahfuzhasanreza@gmail.com', NULL, '$2y$10$STPQqq8b1erL.O5S04aUAeWdadhs2RtrqQRF9l3pHKEjdzxpuX9aK', '2024-05-08 00:27:55'),
(4, 'adelsssssx', 'adelsssssx', 'adelsssssx2@GASZNCS.COM', NULL, '$2y$10$VsXhnUqqEwSgxpjl/LmaneTQK5EjcXwefphQr4Nfnr.q/6oAPVYVW', '2024-05-08 12:17:08'),
(5, 'mahfuzhasanreza1', 'Mahfuz Hasan Reza', 'siyammoadddlla25800@gmail.com', NULL, '$2y$10$HrKT/5fJIsQmfCmQmPZuJOPOS..emqONEcG2pvU1LkQg4DJzGmSdu', '2024-05-29 13:27:20'),
(6, 'themahfuz', 'themahfuz', 'siyammolla25ssss800@gmail.com', NULL, '$2y$10$VqSo/ZXTxv26KKixOBMOVO6Rup0SvedEpkaxG44omsbJ61fahVYhW', '2024-06-02 10:17:08');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subject_code` varchar(10) NOT NULL,
  `subject_name` varchar(50) NOT NULL,
  `course_type` varchar(15) NOT NULL,
  `semester` int(1) NOT NULL,
  `department` varchar(50) NOT NULL,
  `isAlloted` int(1) NOT NULL,
  `allotedto` text NOT NULL,
  `allotedto2` text NOT NULL,
  `allotedto3` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subject_code`, `subject_name`, `course_type`, `semester`, `department`, `isAlloted`, `allotedto`, `allotedto2`, `allotedto3`) VALUES
('CO445', 'Network Security', 'THEORY', 7, 'Computer Engg. Dept.', 1, 'T013', '', ''),
('CO451', 'Computer Network Design', 'THEORY', 7, 'Computer Engg. Dept.', 1, 'T003', '', ''),
('CO494', 'Embedded  Systems Lab', 'LAB', 7, 'Computer Engg. Dept.', 0, '', '', ''),
('CO493', 'Networking Lab', 'LAB', 7, 'Computer Engg. Dept.', 0, '', '', ''),
('CO394', 'Minor Project', 'LAB', 5, 'Computer Engg. Dept.', 0, '', '', ''),
('CO393', 'Software Lab I', 'LAB', 5, 'Computer Engg. Dept.', 0, '', '', ''),
('CO292', ' Data Structures Lab', 'LAB', 3, 'Computer Engg. Dept.', 1, 'T003', 'T012', 'T013'),
('CO293', 'Programming Lab', 'LAB', 3, 'Computer Engg. Dept.', 0, '', '', ''),
('CO431', 'Internet Tools', 'THEORY', 7, 'Computer Engg. Dept.', 0, '', '', ''),
('CO406', 'Compiler Design', 'THEORY', 7, 'Computer Engg. Dept.', 1, 'T003', '', ''),
('CO206', 'Logic Theory & Computer Organisation', 'THEORY', 3, 'Computer Engg. Dept.', 1, 'T014', '', ''),
('EL211', 'Electronic Devices & Circuits', 'THEORY', 3, 'Electronics Engg. Dept.', 1, 'T014', '', ''),
('AM261', 'Higher Mathematics', 'THEORY', 3, 'Applied Mathematics Dept.', 1, 'T016', '', ''),
('CO207', 'Data Structures & Algorithm', 'THEORY', 3, 'Computer Engg. Dept.', 1, 'T003', '', ''),
('CO309', 'Microprocessor Theory & Applications', 'THEORY', 5, 'Computer Engg. Dept.', 1, 'T011', '', ''),
('EL340', 'Communication Engineering', 'THEORY', 5, 'Electronics Engg. Dept.', 1, 'T014', '', ''),
('CO308', 'Digital Electronics', 'THEORY', 5, 'Computer Engg. Dept.', 1, 'T008', '', ''),
('CO310', 'Operating Systems', 'THEORY', 5, 'Mechanical Engg. Dept.', 1, 'T013', '', ''),
('ME340', 'Economics & Management', 'THEORY', 5, 'Computer Engg. Dept.', 1, 'T015', '', ''),
('CO448', 'Embedded Systems', 'THEORY', 7, 'Computer Engg. Dept.', 1, 'T010', '', ''),
('CO460', 'Computer Architecture', 'THEORY', 7, 'Computer Engg. Dept.', 1, 'T009', '', ''),
('CO203', 'Object Oriented Programming', 'THEORY', 3, 'Computer Engg. Dept.', 1, 'T006', '', ''),
('CO445', 'Network Security', 'THEORY', 7, 'Computer Engg. Dept.', 1, 'T013', '', ''),
('CO451', 'Computer Network Design', 'THEORY', 7, 'Computer Engg. Dept.', 1, 'T003', '', ''),
('CO494', 'Embedded  Systems Lab', 'LAB', 7, 'Computer Engg. Dept.', 0, '', '', ''),
('CO493', 'Networking Lab', 'LAB', 7, 'Computer Engg. Dept.', 0, '', '', ''),
('CO394', 'Minor Project', 'LAB', 5, 'Computer Engg. Dept.', 0, '', '', ''),
('CO393', 'Software Lab I', 'LAB', 5, 'Computer Engg. Dept.', 0, '', '', ''),
('CO292', ' Data Structures Lab', 'LAB', 3, 'Computer Engg. Dept.', 1, 'T003', 'T012', 'T013'),
('CO293', 'Programming Lab', 'LAB', 3, 'Computer Engg. Dept.', 0, '', '', ''),
('CO431', 'Internet Tools', 'THEORY', 7, 'Computer Engg. Dept.', 0, '', '', ''),
('CO406', 'Compiler Design', 'THEORY', 7, 'Computer Engg. Dept.', 1, 'T003', '', ''),
('CO206', 'Logic Theory & Computer Organisation', 'THEORY', 3, 'Computer Engg. Dept.', 1, 'T014', '', ''),
('EL211', 'Electronic Devices & Circuits', 'THEORY', 3, 'Electronics Engg. Dept.', 1, 'T014', '', ''),
('AM261', 'Higher Mathematics', 'THEORY', 3, 'Applied Mathematics Dept.', 1, 'T016', '', ''),
('CO207', 'Data Structures & Algorithm', 'THEORY', 3, 'Computer Engg. Dept.', 1, 'T003', '', ''),
('CO309', 'Microprocessor Theory & Applications', 'THEORY', 5, 'Computer Engg. Dept.', 1, 'T011', '', ''),
('EL340', 'Communication Engineering', 'THEORY', 5, 'Electronics Engg. Dept.', 1, 'T014', '', ''),
('CO308', 'Digital Electronics', 'THEORY', 5, 'Computer Engg. Dept.', 1, 'T008', '', ''),
('CO310', 'Operating Systems', 'THEORY', 5, 'Mechanical Engg. Dept.', 1, 'T013', '', ''),
('ME340', 'Economics & Management', 'THEORY', 5, 'Computer Engg. Dept.', 1, 'T015', '', ''),
('CO448', 'Embedded Systems', 'THEORY', 7, 'Computer Engg. Dept.', 1, 'T010', '', ''),
('CO460', 'Computer Architecture', 'THEORY', 7, 'Computer Engg. Dept.', 1, 'T009', '', ''),
('CO203', 'Object Oriented Programming', 'THEORY', 3, 'Computer Engg. Dept.', 1, 'T006', '', ''),
('CO445', 'Network Security', 'THEORY', 7, 'Computer Engg. Dept.', 1, 'T013', '', ''),
('CO451', 'Computer Network Design', 'THEORY', 7, 'Computer Engg. Dept.', 1, 'T003', '', ''),
('CO494', 'Embedded  Systems Lab', 'LAB', 7, 'Computer Engg. Dept.', 0, '', '', ''),
('CO493', 'Networking Lab', 'LAB', 7, 'Computer Engg. Dept.', 0, '', '', ''),
('CO394', 'Minor Project', 'LAB', 5, 'Computer Engg. Dept.', 0, '', '', ''),
('CO393', 'Software Lab I', 'LAB', 5, 'Computer Engg. Dept.', 0, '', '', ''),
('CO292', ' Data Structures Lab', 'LAB', 3, 'Computer Engg. Dept.', 1, 'T003', 'T012', 'T013'),
('CO293', 'Programming Lab', 'LAB', 3, 'Computer Engg. Dept.', 0, '', '', ''),
('CO431', 'Internet Tools', 'THEORY', 7, 'Computer Engg. Dept.', 0, '', '', ''),
('CO406', 'Compiler Design', 'THEORY', 7, 'Computer Engg. Dept.', 1, 'T003', '', ''),
('CO206', 'Logic Theory & Computer Organisation', 'THEORY', 3, 'Computer Engg. Dept.', 1, 'T014', '', ''),
('EL211', 'Electronic Devices & Circuits', 'THEORY', 3, 'Electronics Engg. Dept.', 1, 'T014', '', ''),
('AM261', 'Higher Mathematics', 'THEORY', 3, 'Applied Mathematics Dept.', 1, 'T016', '', ''),
('CO207', 'Data Structures & Algorithm', 'THEORY', 3, 'Computer Engg. Dept.', 1, 'T003', '', ''),
('CO309', 'Microprocessor Theory & Applications', 'THEORY', 5, 'Computer Engg. Dept.', 1, 'T011', '', ''),
('EL340', 'Communication Engineering', 'THEORY', 5, 'Electronics Engg. Dept.', 1, 'T014', '', ''),
('CO308', 'Digital Electronics', 'THEORY', 5, 'Computer Engg. Dept.', 1, 'T008', '', ''),
('CO310', 'Operating Systems', 'THEORY', 5, 'Mechanical Engg. Dept.', 1, 'T013', '', ''),
('ME340', 'Economics & Management', 'THEORY', 5, 'Computer Engg. Dept.', 1, 'T015', '', ''),
('CO448', 'Embedded Systems', 'THEORY', 7, 'Computer Engg. Dept.', 1, 'T010', '', ''),
('CO460', 'Computer Architecture', 'THEORY', 7, 'Computer Engg. Dept.', 1, 'T009', '', ''),
('CO203', 'Object Oriented Programming', 'THEORY', 3, 'Computer Engg. Dept.', 1, 'T006', '', ''),
('CO445', 'Network Security', 'THEORY', 7, 'Computer Engg. Dept.', 1, 'T013', '', ''),
('CO451', 'Computer Network Design', 'THEORY', 7, 'Computer Engg. Dept.', 1, 'T003', '', ''),
('CO494', 'Embedded  Systems Lab', 'LAB', 7, 'Computer Engg. Dept.', 0, '', '', ''),
('CO493', 'Networking Lab', 'LAB', 7, 'Computer Engg. Dept.', 0, '', '', ''),
('CO394', 'Minor Project', 'LAB', 5, 'Computer Engg. Dept.', 0, '', '', ''),
('CO393', 'Software Lab I', 'LAB', 5, 'Computer Engg. Dept.', 0, '', '', ''),
('CO292', ' Data Structures Lab', 'LAB', 3, 'Computer Engg. Dept.', 1, 'T003', 'T012', 'T013'),
('CO293', 'Programming Lab', 'LAB', 3, 'Computer Engg. Dept.', 0, '', '', ''),
('CO431', 'Internet Tools', 'THEORY', 7, 'Computer Engg. Dept.', 0, '', '', ''),
('CO406', 'Compiler Design', 'THEORY', 7, 'Computer Engg. Dept.', 1, 'T003', '', ''),
('CO206', 'Logic Theory & Computer Organisation', 'THEORY', 3, 'Computer Engg. Dept.', 1, 'T014', '', ''),
('EL211', 'Electronic Devices & Circuits', 'THEORY', 3, 'Electronics Engg. Dept.', 1, 'T014', '', ''),
('AM261', 'Higher Mathematics', 'THEORY', 3, 'Applied Mathematics Dept.', 1, 'T016', '', ''),
('CO207', 'Data Structures & Algorithm', 'THEORY', 3, 'Computer Engg. Dept.', 1, 'T003', '', ''),
('CO309', 'Microprocessor Theory & Applications', 'THEORY', 5, 'Computer Engg. Dept.', 1, 'T011', '', ''),
('EL340', 'Communication Engineering', 'THEORY', 5, 'Electronics Engg. Dept.', 1, 'T014', '', ''),
('CO308', 'Digital Electronics', 'THEORY', 5, 'Computer Engg. Dept.', 1, 'T008', '', ''),
('CO310', 'Operating Systems', 'THEORY', 5, 'Mechanical Engg. Dept.', 1, 'T013', '', ''),
('ME340', 'Economics & Management', 'THEORY', 5, 'Computer Engg. Dept.', 1, 'T015', '', ''),
('CO448', 'Embedded Systems', 'THEORY', 7, 'Computer Engg. Dept.', 1, 'T010', '', ''),
('CO460', 'Computer Architecture', 'THEORY', 7, 'Computer Engg. Dept.', 1, 'T009', '', ''),
('CO203', 'Object Oriented Programming', 'THEORY', 3, 'Computer Engg. Dept.', 1, 'T006', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `t001`
--

CREATE TABLE `t001` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `t001`
--

INSERT INTO `t001` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO494'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO494'),
('thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('friday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO494'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO494'),
('thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('friday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO494'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO494'),
('thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('friday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO494'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO494'),
('thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('friday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `t002`
--

CREATE TABLE `t002` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `t002`
--

INSERT INTO `t002` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('monday', '-<br>-', 'CO206<br>NL32', '-<br>-', '-<br>-', '-<br>-', '-'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO493'),
('wednesday', 'CO206<br>NL32', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO493'),
('friday', 'CO206<br>NL32', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', '-<br>-', '-<br>-', 'CO206<br>NL32', '-<br>-', '-'),
('monday', '-<br>-', 'CO206<br>NL32', '-<br>-', '-<br>-', '-<br>-', '-'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO493'),
('wednesday', 'CO206<br>NL32', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO493'),
('friday', 'CO206<br>NL32', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', '-<br>-', '-<br>-', 'CO206<br>NL32', '-<br>-', '-'),
('monday', '-<br>-', 'CO206<br>NL32', '-<br>-', '-<br>-', '-<br>-', '-'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO493'),
('wednesday', 'CO206<br>NL32', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO493'),
('friday', 'CO206<br>NL32', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', '-<br>-', '-<br>-', 'CO206<br>NL32', '-<br>-', '-'),
('monday', '-<br>-', 'CO206<br>NL32', '-<br>-', '-<br>-', '-<br>-', '-'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO493'),
('wednesday', 'CO206<br>NL32', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO493'),
('friday', 'CO206<br>NL32', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', '-<br>-', '-<br>-', 'CO206<br>NL32', '-<br>-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `t003`
--

CREATE TABLE `t003` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `t003`
--

INSERT INTO `t003` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO394'),
('tuesday', 'CO451<br>ML04', 'CO207<br>NL32', 'CO406<br>ML04', '-<br>-', '-<br>-', 'CO393'),
('wednesday', '-<br>-', '-<br>-', 'CO207<br>NL32', 'CO451<br>ML04', '-<br>-', 'CO292'),
('thursday', 'CO406<br>ML04', 'CO451<br>ML04', 'CO207<br>NL32', '-<br>-', '-<br>-', 'CO393'),
('friday', '-<br>-', '-<br>-', '-<br>-', 'CO406<br>ML04', '-<br>-', 'CO394'),
('saturday', 'CO451<br>ML04', 'CO207<br>NL32', 'CO406<br>ML04', '-<br>-', '-<br>-', 'CO292'),
('monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO394'),
('tuesday', 'CO451<br>ML04', 'CO207<br>NL32', 'CO406<br>ML04', '-<br>-', '-<br>-', 'CO393'),
('wednesday', '-<br>-', '-<br>-', 'CO207<br>NL32', 'CO451<br>ML04', '-<br>-', 'CO292'),
('thursday', 'CO406<br>ML04', 'CO451<br>ML04', 'CO207<br>NL32', '-<br>-', '-<br>-', 'CO393'),
('friday', '-<br>-', '-<br>-', '-<br>-', 'CO406<br>ML04', '-<br>-', 'CO394'),
('saturday', 'CO451<br>ML04', 'CO207<br>NL32', 'CO406<br>ML04', '-<br>-', '-<br>-', 'CO292'),
('monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO394'),
('tuesday', 'CO451<br>ML04', 'CO207<br>NL32', 'CO406<br>ML04', '-<br>-', '-<br>-', 'CO393'),
('wednesday', '-<br>-', '-<br>-', 'CO207<br>NL32', 'CO451<br>ML04', '-<br>-', 'CO292'),
('thursday', 'CO406<br>ML04', 'CO451<br>ML04', 'CO207<br>NL32', '-<br>-', '-<br>-', 'CO393'),
('friday', '-<br>-', '-<br>-', '-<br>-', 'CO406<br>ML04', '-<br>-', 'CO394'),
('saturday', 'CO451<br>ML04', 'CO207<br>NL32', 'CO406<br>ML04', '-<br>-', '-<br>-', 'CO292'),
('monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO394'),
('tuesday', 'CO451<br>ML04', 'CO207<br>NL32', 'CO406<br>ML04', '-<br>-', '-<br>-', 'CO393'),
('wednesday', '-<br>-', '-<br>-', 'CO207<br>NL32', 'CO451<br>ML04', '-<br>-', 'CO292'),
('thursday', 'CO406<br>ML04', 'CO451<br>ML04', 'CO207<br>NL32', '-<br>-', '-<br>-', 'CO393'),
('friday', '-<br>-', '-<br>-', '-<br>-', 'CO406<br>ML04', '-<br>-', 'CO394'),
('saturday', 'CO451<br>ML04', 'CO207<br>NL32', 'CO406<br>ML04', '-<br>-', '-<br>-', 'CO292');

-- --------------------------------------------------------

--
-- Table structure for table `t004`
--

CREATE TABLE `t004` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `t004`
--

INSERT INTO `t004` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO494'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO494'),
('thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('friday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO494'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO494'),
('thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('friday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO494'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO494'),
('thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('friday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO494'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO494'),
('thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('friday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `t005`
--

CREATE TABLE `t005` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `t005`
--

INSERT INTO `t005` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('monday', '-<br>-', 'CO431<br>ML04', '-<br>-', '-<br>-', '-<br>-', 'CO394'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO393'),
('wednesday', 'CO431<br>ML04', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('thursday', '-<br>-', '-<br>-', '-<br>-', 'CO431<br>ML04', '-<br>-', 'CO393'),
('friday', '-<br>-', 'CO431<br>ML04', '-<br>-', '-<br>-', '-<br>-', 'CO394'),
('saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('monday', '-<br>-', 'CO431<br>ML04', '-<br>-', '-<br>-', '-<br>-', 'CO394'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO393'),
('wednesday', 'CO431<br>ML04', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('thursday', '-<br>-', '-<br>-', '-<br>-', 'CO431<br>ML04', '-<br>-', 'CO393'),
('friday', '-<br>-', 'CO431<br>ML04', '-<br>-', '-<br>-', '-<br>-', 'CO394'),
('saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('monday', '-<br>-', 'CO431<br>ML04', '-<br>-', '-<br>-', '-<br>-', 'CO394'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO393'),
('wednesday', 'CO431<br>ML04', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('thursday', '-<br>-', '-<br>-', '-<br>-', 'CO431<br>ML04', '-<br>-', 'CO393'),
('friday', '-<br>-', 'CO431<br>ML04', '-<br>-', '-<br>-', '-<br>-', 'CO394'),
('saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('monday', '-<br>-', 'CO431<br>ML04', '-<br>-', '-<br>-', '-<br>-', 'CO394'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO393'),
('wednesday', 'CO431<br>ML04', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('thursday', '-<br>-', '-<br>-', '-<br>-', 'CO431<br>ML04', '-<br>-', 'CO393'),
('friday', '-<br>-', 'CO431<br>ML04', '-<br>-', '-<br>-', '-<br>-', 'CO394'),
('saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `t006`
--

CREATE TABLE `t006` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `t006`
--

INSERT INTO `t006` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('tuesday', 'CO203<br>NL32', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO293'),
('wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('thursday', 'CO203<br>NL32', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO293'),
('friday', '-<br>-', '-<br>-', 'CO203<br>NL32', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', '-<br>-', 'CO203<br>NL32', '-<br>-', '-<br>-', '-'),
('monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('tuesday', 'CO203<br>NL32', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO293'),
('wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('thursday', 'CO203<br>NL32', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO293'),
('friday', '-<br>-', '-<br>-', 'CO203<br>NL32', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', '-<br>-', 'CO203<br>NL32', '-<br>-', '-<br>-', '-'),
('monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('tuesday', 'CO203<br>NL32', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO293'),
('wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('thursday', 'CO203<br>NL32', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO293'),
('friday', '-<br>-', '-<br>-', 'CO203<br>NL32', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', '-<br>-', 'CO203<br>NL32', '-<br>-', '-<br>-', '-'),
('monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('tuesday', 'CO203<br>NL32', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO293'),
('wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('thursday', 'CO203<br>NL32', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO293'),
('friday', '-<br>-', '-<br>-', 'CO203<br>NL32', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', '-<br>-', 'CO203<br>NL32', '-<br>-', '-<br>-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `t007`
--

CREATE TABLE `t007` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `t007`
--

INSERT INTO `t007` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO394'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO493'),
('wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO493'),
('friday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO394'),
('saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO394'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO493'),
('wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO493'),
('friday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO394'),
('saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO394'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO493'),
('wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO493'),
('friday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO394'),
('saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO394'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO493'),
('wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO493'),
('friday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO394'),
('saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `t008`
--

CREATE TABLE `t008` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `t008`
--

INSERT INTO `t008` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('monday', '-<br>-', '-<br>-', 'CO308<br>ML10', '-<br>-', '-<br>-', 'CO494'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO293'),
('wednesday', '-<br>-', 'CO308<br>ML10', '-<br>-', '-<br>-', '-<br>-', 'CO494'),
('thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO293'),
('friday', 'CO308<br>ML10', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', '-<br>-', 'CO308<br>ML10', '-<br>-', '-<br>-', '-'),
('monday', '-<br>-', '-<br>-', 'CO308<br>ML10', '-<br>-', '-<br>-', 'CO494'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO293'),
('wednesday', '-<br>-', 'CO308<br>ML10', '-<br>-', '-<br>-', '-<br>-', 'CO494'),
('thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO293'),
('friday', 'CO308<br>ML10', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', '-<br>-', 'CO308<br>ML10', '-<br>-', '-<br>-', '-'),
('monday', '-<br>-', '-<br>-', 'CO308<br>ML10', '-<br>-', '-<br>-', 'CO494'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO293'),
('wednesday', '-<br>-', 'CO308<br>ML10', '-<br>-', '-<br>-', '-<br>-', 'CO494'),
('thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO293'),
('friday', 'CO308<br>ML10', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', '-<br>-', 'CO308<br>ML10', '-<br>-', '-<br>-', '-'),
('monday', '-<br>-', '-<br>-', 'CO308<br>ML10', '-<br>-', '-<br>-', 'CO494'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO293'),
('wednesday', '-<br>-', 'CO308<br>ML10', '-<br>-', '-<br>-', '-<br>-', 'CO494'),
('thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO293'),
('friday', 'CO308<br>ML10', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', '-<br>-', 'CO308<br>ML10', '-<br>-', '-<br>-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `t009`
--

CREATE TABLE `t009` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `t009`
--

INSERT INTO `t009` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('monday', '-<br>-', '-<br>-', 'CO460<br>ML04', '-<br>-', '-<br>-', '-'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO293'),
('wednesday', '-<br>-', 'CO460<br>ML04', '-<br>-', '-<br>-', '-<br>-', '-'),
('thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO460<br>ML04', 'CO293'),
('friday', '-<br>-', '-<br>-', 'CO460<br>ML04', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('monday', '-<br>-', '-<br>-', 'CO460<br>ML04', '-<br>-', '-<br>-', '-'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO293'),
('wednesday', '-<br>-', 'CO460<br>ML04', '-<br>-', '-<br>-', '-<br>-', '-'),
('thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO460<br>ML04', 'CO293'),
('friday', '-<br>-', '-<br>-', 'CO460<br>ML04', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('monday', '-<br>-', '-<br>-', 'CO460<br>ML04', '-<br>-', '-<br>-', '-'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO293'),
('wednesday', '-<br>-', 'CO460<br>ML04', '-<br>-', '-<br>-', '-<br>-', '-'),
('thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO460<br>ML04', 'CO293'),
('friday', '-<br>-', '-<br>-', 'CO460<br>ML04', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('monday', '-<br>-', '-<br>-', 'CO460<br>ML04', '-<br>-', '-<br>-', '-'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO293'),
('wednesday', '-<br>-', 'CO460<br>ML04', '-<br>-', '-<br>-', '-<br>-', '-'),
('thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO460<br>ML04', 'CO293'),
('friday', '-<br>-', '-<br>-', 'CO460<br>ML04', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `t010`
--

CREATE TABLE `t010` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `t010`
--

INSERT INTO `t010` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('tuesday', '-<br>-', 'CO448<br>ML04', '-<br>-', '-<br>-', '-<br>-', '-'),
('wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO448<br>ML04', '-'),
('thursday', '-<br>-', '-<br>-', 'CO448<br>ML04', '-<br>-', '-<br>-', '-'),
('friday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', 'CO448<br>ML04', '-<br>-', '-<br>-', '-<br>-', '-'),
('monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('tuesday', '-<br>-', 'CO448<br>ML04', '-<br>-', '-<br>-', '-<br>-', '-'),
('wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO448<br>ML04', '-'),
('thursday', '-<br>-', '-<br>-', 'CO448<br>ML04', '-<br>-', '-<br>-', '-'),
('friday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', 'CO448<br>ML04', '-<br>-', '-<br>-', '-<br>-', '-'),
('monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('tuesday', '-<br>-', 'CO448<br>ML04', '-<br>-', '-<br>-', '-<br>-', '-'),
('wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO448<br>ML04', '-'),
('thursday', '-<br>-', '-<br>-', 'CO448<br>ML04', '-<br>-', '-<br>-', '-'),
('friday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', 'CO448<br>ML04', '-<br>-', '-<br>-', '-<br>-', '-'),
('monday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('tuesday', '-<br>-', 'CO448<br>ML04', '-<br>-', '-<br>-', '-<br>-', '-'),
('wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO448<br>ML04', '-'),
('thursday', '-<br>-', '-<br>-', 'CO448<br>ML04', '-<br>-', '-<br>-', '-'),
('friday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', 'CO448<br>ML04', '-<br>-', '-<br>-', '-<br>-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `t011`
--

CREATE TABLE `t011` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `t011`
--

INSERT INTO `t011` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('monday', '-<br>-', 'CO309<br>ML10', '-<br>-', '-<br>-', '-<br>-', '-'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO493'),
('wednesday', 'CO309<br>ML10', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('thursday', '-<br>-', '-<br>-', 'CO309<br>ML10', '-<br>-', '-<br>-', 'CO493'),
('friday', '-<br>-', '-<br>-', 'CO309<br>ML10', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('monday', '-<br>-', 'CO309<br>ML10', '-<br>-', '-<br>-', '-<br>-', '-'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO493'),
('wednesday', 'CO309<br>ML10', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('thursday', '-<br>-', '-<br>-', 'CO309<br>ML10', '-<br>-', '-<br>-', 'CO493'),
('friday', '-<br>-', '-<br>-', 'CO309<br>ML10', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('monday', '-<br>-', 'CO309<br>ML10', '-<br>-', '-<br>-', '-<br>-', '-'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO493'),
('wednesday', 'CO309<br>ML10', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('thursday', '-<br>-', '-<br>-', 'CO309<br>ML10', '-<br>-', '-<br>-', 'CO493'),
('friday', '-<br>-', '-<br>-', 'CO309<br>ML10', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('monday', '-<br>-', 'CO309<br>ML10', '-<br>-', '-<br>-', '-<br>-', '-'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO493'),
('wednesday', 'CO309<br>ML10', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('thursday', '-<br>-', '-<br>-', 'CO309<br>ML10', '-<br>-', '-<br>-', 'CO493'),
('friday', '-<br>-', '-<br>-', 'CO309<br>ML10', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `t012`
--

CREATE TABLE `t012` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `t012`
--

INSERT INTO `t012` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('monday', 'CO445<br>ML04', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', 'CO445<br>ML04', '-<br>-', '-'),
('wednesday', '-<br>-', '-<br>-', 'CO445<br>ML04', '-<br>-', '-<br>-', 'CO292'),
('thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('friday', 'CO445<br>ML04', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO292'),
('monday', 'CO445<br>ML04', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', 'CO445<br>ML04', '-<br>-', '-'),
('wednesday', '-<br>-', '-<br>-', 'CO445<br>ML04', '-<br>-', '-<br>-', 'CO292'),
('thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('friday', 'CO445<br>ML04', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO292'),
('monday', 'CO445<br>ML04', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', 'CO445<br>ML04', '-<br>-', '-'),
('wednesday', '-<br>-', '-<br>-', 'CO445<br>ML04', '-<br>-', '-<br>-', 'CO292'),
('thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('friday', 'CO445<br>ML04', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO292'),
('monday', 'CO445<br>ML04', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('tuesday', '-<br>-', '-<br>-', '-<br>-', 'CO445<br>ML04', '-<br>-', '-'),
('wednesday', '-<br>-', '-<br>-', 'CO445<br>ML04', '-<br>-', '-<br>-', 'CO292'),
('thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('friday', 'CO445<br>ML04', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO292');

-- --------------------------------------------------------

--
-- Table structure for table `t013`
--

CREATE TABLE `t013` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `t013`
--

INSERT INTO `t013` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('monday', '-<br>-', '-<br>-', '-<br>-', 'CO310<br>ML10', '-<br>-', '-'),
('tuesday', '-<br>-', 'CO310<br>ML10', '-<br>-', '-<br>-', '-<br>-', 'CO393'),
('wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO292'),
('thursday', '-<br>-', 'CO310<br>ML10', '-<br>-', '-<br>-', '-<br>-', 'CO393'),
('friday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('saturday', 'CO310<br>ML10', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO292'),
('monday', '-<br>-', '-<br>-', '-<br>-', 'CO310<br>ML10', '-<br>-', '-'),
('tuesday', '-<br>-', 'CO310<br>ML10', '-<br>-', '-<br>-', '-<br>-', 'CO393'),
('wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO292'),
('thursday', '-<br>-', 'CO310<br>ML10', '-<br>-', '-<br>-', '-<br>-', 'CO393'),
('friday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('saturday', 'CO310<br>ML10', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO292'),
('monday', '-<br>-', '-<br>-', '-<br>-', 'CO310<br>ML10', '-<br>-', '-'),
('tuesday', '-<br>-', 'CO310<br>ML10', '-<br>-', '-<br>-', '-<br>-', 'CO393'),
('wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO292'),
('thursday', '-<br>-', 'CO310<br>ML10', '-<br>-', '-<br>-', '-<br>-', 'CO393'),
('friday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('saturday', 'CO310<br>ML10', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO292'),
('monday', '-<br>-', '-<br>-', '-<br>-', 'CO310<br>ML10', '-<br>-', '-'),
('tuesday', '-<br>-', 'CO310<br>ML10', '-<br>-', '-<br>-', '-<br>-', 'CO393'),
('wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO292'),
('thursday', '-<br>-', 'CO310<br>ML10', '-<br>-', '-<br>-', '-<br>-', 'CO393'),
('friday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('saturday', 'CO310<br>ML10', '-<br>-', '-<br>-', '-<br>-', '-<br>-', 'CO292');

-- --------------------------------------------------------

--
-- Table structure for table `t014`
--

CREATE TABLE `t014` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `t014`
--

INSERT INTO `t014` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('monday', '-<br>-', '-<br>-', 'EL211<br>NL32', '-<br>-', '-<br>-', '-'),
('tuesday', 'EL340<br>ML10', '-<br>-', 'EL211<br>NL32', '-<br>-', '-<br>-', '-'),
('wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('thursday', 'EL340<br>ML10', 'EL211<br>NL32', '-<br>-', '-<br>-', '-<br>-', '-'),
('friday', '-<br>-', '-<br>-', '-<br>-', 'EL340<br>ML10', '-<br>-', '-'),
('saturday', 'EL211<br>NL32', 'EL340<br>ML10', '-<br>-', '-<br>-', '-<br>-', '-'),
('monday', '-<br>-', '-<br>-', 'EL211<br>NL32', '-<br>-', '-<br>-', '-'),
('tuesday', 'EL340<br>ML10', '-<br>-', 'EL211<br>NL32', '-<br>-', '-<br>-', '-'),
('wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('thursday', 'EL340<br>ML10', 'EL211<br>NL32', '-<br>-', '-<br>-', '-<br>-', '-'),
('friday', '-<br>-', '-<br>-', '-<br>-', 'EL340<br>ML10', '-<br>-', '-'),
('saturday', 'EL211<br>NL32', 'EL340<br>ML10', '-<br>-', '-<br>-', '-<br>-', '-'),
('monday', '-<br>-', '-<br>-', 'EL211<br>NL32', '-<br>-', '-<br>-', '-'),
('tuesday', 'EL340<br>ML10', '-<br>-', 'EL211<br>NL32', '-<br>-', '-<br>-', '-'),
('wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('thursday', 'EL340<br>ML10', 'EL211<br>NL32', '-<br>-', '-<br>-', '-<br>-', '-'),
('friday', '-<br>-', '-<br>-', '-<br>-', 'EL340<br>ML10', '-<br>-', '-'),
('saturday', 'EL211<br>NL32', 'EL340<br>ML10', '-<br>-', '-<br>-', '-<br>-', '-'),
('monday', '-<br>-', '-<br>-', 'EL211<br>NL32', '-<br>-', '-<br>-', '-'),
('tuesday', 'EL340<br>ML10', '-<br>-', 'EL211<br>NL32', '-<br>-', '-<br>-', '-'),
('wednesday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('thursday', 'EL340<br>ML10', 'EL211<br>NL32', '-<br>-', '-<br>-', '-<br>-', '-'),
('friday', '-<br>-', '-<br>-', '-<br>-', 'EL340<br>ML10', '-<br>-', '-'),
('saturday', 'EL211<br>NL32', 'EL340<br>ML10', '-<br>-', '-<br>-', '-<br>-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `t015`
--

CREATE TABLE `t015` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `t015`
--

INSERT INTO `t015` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('monday', 'ME340<br>ML10', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('tuesday', '-<br>-', '-<br>-', 'ME340<br>ML10', '-<br>-', '-<br>-', '-'),
('wednesday', '-<br>-', '-<br>-', 'ME340<br>ML10', '-<br>-', '-<br>-', '-'),
('thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('friday', '-<br>-', 'ME340<br>ML10', '-<br>-', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('monday', 'ME340<br>ML10', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('tuesday', '-<br>-', '-<br>-', 'ME340<br>ML10', '-<br>-', '-<br>-', '-'),
('wednesday', '-<br>-', '-<br>-', 'ME340<br>ML10', '-<br>-', '-<br>-', '-'),
('thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('friday', '-<br>-', 'ME340<br>ML10', '-<br>-', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('monday', 'ME340<br>ML10', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('tuesday', '-<br>-', '-<br>-', 'ME340<br>ML10', '-<br>-', '-<br>-', '-'),
('wednesday', '-<br>-', '-<br>-', 'ME340<br>ML10', '-<br>-', '-<br>-', '-'),
('thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('friday', '-<br>-', 'ME340<br>ML10', '-<br>-', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('monday', 'ME340<br>ML10', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('tuesday', '-<br>-', '-<br>-', 'ME340<br>ML10', '-<br>-', '-<br>-', '-'),
('wednesday', '-<br>-', '-<br>-', 'ME340<br>ML10', '-<br>-', '-<br>-', '-'),
('thursday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-'),
('friday', '-<br>-', 'ME340<br>ML10', '-<br>-', '-<br>-', '-<br>-', '-'),
('saturday', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-<br>-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `t016`
--

CREATE TABLE `t016` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `username`, `name`, `email`, `phone_no`, `password`, `timestamp`) VALUES
(0, 'teacherer', 'dbvsjhdcth', 'dazvxdvz@gmail.com', NULL, '$2y$10$G.ThtpJLKqUFvj8jVyYie.gVpDhtgwNzfJyGvMjYJ0Yfb.hjqK6tS', '2024-05-01 08:17:23');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `faculty_number` varchar(10) NOT NULL,
  `name` text NOT NULL,
  `alias` varchar(10) NOT NULL,
  `designation` varchar(30) NOT NULL,
  `contact_number` varchar(15) NOT NULL,
  `emailid` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`faculty_number`, `name`, `alias`, `designation`, `contact_number`, `emailid`) VALUES
('T016', 'Prof. Shamshad Husain', 'SH', 'Professor', '12345678', 'shamshadhusain@gmail.com'),
('T015', 'Dr. Faisal Talib', 'FT', 'Associate Professor', '12345678', 'faisaltalib@gmail.com'),
('T014', 'Dr. Mohd. Sharique', 'MS', 'Assistant Professor', '12345678', 'mohdsharique@gmail.com'),
('T013', 'Mr. Faisal Alam', 'FA', 'Assistant Professor', '12345678', 'faisalalam@gmail.com'),
('T011', 'Mr. Asad Mohammed Khan', 'AMK', 'Assistant Professor', '12345678', 'asadmohammedkhan@gmail.com'),
('T012', 'Mr. Muneeb Hasan Khan', 'MHK', 'Assistant Professor', '12345678', 'muneebhasankhan@gmail.com'),
('T007', 'Mr. Misbahur Rahman Warsi', 'MRW', 'Associate Professor', '12345678', 'mrwarsi@gmail.com'),
('T008', 'Mr. Izharauddin', 'IZ', 'Associate Professor', '12345678', 'izharuddin@gmail.com'),
('T009', 'Mr. Tameem Ahmad', 'TA', 'Assistant Professor', '12345678', 'tameemahmad@gmail.com'),
('T010', 'Mr. Nadeem Akhtar', 'NA', 'Assistant Professor', '12345678', 'nadeemakhtar@gmail.com'),
('T006', 'Dr. Saiful Islam', 'SI', 'Associate Professor', '12345678', 'saifulislam@gmail.com'),
('T005', 'Dr. Rashid Ali', 'RA', 'Associate Professor', '12345678', 'rashidali@gmail.com'),
('T004', 'Prof. M.M. Sufyan Beg', 'SB', 'Professor', '12345678', 'mmsufyanbeg@gmail.com'),
('T002', 'Prof. Nesar Ahmad', 'NA', 'Professor', '12345678', 'nesarahmad@gmail.com'),
('T003', 'Prof. Ash Mohammad Abbas', 'AMA', 'Professor', '12345678', 'ashmabbas@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_availability`
--

CREATE TABLE `teacher_availability` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `day_of_week` enum('Monday','Tuesday','Wednesday','Thursday','Friday') DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trainers`
--

CREATE TABLE `trainers` (
  `id` int(11) NOT NULL,
  `photo_url` longblob DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trainers`
--

INSERT INTO `trainers` (`id`, `photo_url`, `name`, `designation`, `description`) VALUES
(1, 0xffd8ffe000104a46494600010100000100010000ffdb00840009060713131213121312151615151715171717171817151717171715181818171517181d2820181a251d171721312125292b2e2e2e171f3338332d37282d2e2b010a0a0a0e0d0e1b10101b2d251f1f2b2f2d2d2d2d2d2d2d2b2d2d2d2d2d2d2b2d2d2d2d2d2b2d2d2b2d2d2d2d2b2b2d2d2d352f2d2d2d2d2d2d2d2d2d2d2d2d2dffc0001108011300b703012200021101031101ffc4001c0000010501010100000000000000000000060003040507010208ffc400491000020102030505050309050509000000010203001104122105063141511322617191073281a1b11452c1234253627282d1e1f024338392b215344363a21617254493a3b3c3d2ffc4001a010002030101000000000000000000000000010203040506ffc4002b110002020104010206030003000000000000010211030412213141132232516171819105a1f0143342ffda000c03010002110311003f003c0f5dcf51b35773522648cf5d0f51b357a06981ea66d453f03f76a14a7514fc5a0a404a0d55db44f7854b0d557b626cbaf414c10e617de15666a836362b3e56eb57d7a10354796a8d254a34cc8b4c4631ed2bfbc23f5a831640388a3cf69f8293b42ca8c469c01340870725ae6371fbadfc29030bbd9c5bb6908fba2b4a86b36f6690bf6b2028c341c411f5ad3e18a98d0e5a989788a94c2a2ca351400dc95125a9725459690c85354292a74b5064a43196ae574d2a40196c9de1c3e258ac320623536ab602b24f6443fb449fb23f1ad742d32279b57a15dcb480a006a4e229fe54d4c351e74edb4a00edeaa36f3d949b5ec0d5ad40da4b72281aecacddb9f32ab65cbe068981aa5c220040156e0d30972c745222bcad06efb6fa2c01a187bd2dac5bf35388d39335f9701637e94591a0a7188b63700f9d41312301dd5f4158a4bb726048ed1f95ecc7991a7af4a36dd4de66212394b35ecb9fa3682cdd7cfc452b2541aa615578281e429c0b5ed2ba45310c49431b7778d219638f29258ea7a0abeda989c88c7a026b24c61fb43199e4b1d6c01e02fa542791415b3668f439755271c75c7ccd50b5c03d75a8b35526e76d7696265737319cb7ea395586da8c4b0f66bdc6beae0f2d7403fae152bb334e0e12717e0898ec72a8720e62a2e40e36a6f0244f93b320971751ccd56e1306b862cbd9f6c65d0b9e2a3f855e6cedab1e1f294c326640429bea2fc6da53e08f23e776f13fa3f98a55e66dea73c0303fb66bb4701c837ec757fb44bfb22b6111d643ec723613c84ab0ee8e208fad6c4b4113cf674bb3a72d5db500459e3f77ce9c29a57932ab1001b907514fb0a008c52a06d05d455a11503680d45219070e3bc2ad2ab601de15696a600def96da6851218efdacd98023f340b0bfa91e86829f776496c0c9c00045891e3f1fe268f71fbbad89c48946a23545f532127e955fb352d211c6d583559a70aa3a3a3c109a7652e1372a00b91b331b6adf0e02941baab15ecc5af6d781d0dc569387c0a585f4bf85566d585508e759253cf05b9b35c61826f6a8957b1b695dcc0e08602eb7b6a2d7234e9a91e161caadcd479f77358f177b65296f10da1f91a936aeae19394536723346319b51e88789c386b83c0d5449b020fd12fa510b0a6992ad20a4d745145b3d23be450b7e95e258aae648ea3bc628159452c3506684d10c918a853a0a4050bc469558c817ad7290c8d0fb4a55f770f6f2b0ab4d8fed04cef94476d2fc6b30930aab6ef5ef57bbab00596faf0a15d89d1a72ef337ddf9d3abbc6ff00a334251b9fb5402fa16d7d0d696b02f41567044a2c06d40641f922b9b8b7f42a7e3f6e766d94465bc45580847415e648c58f0bd2a0298ef29fd0350c6f46f2cb9d722e416e068f23840001b13d6813da4c60491d87e69fc28a029701bc538954b3dc5f51e15a32ef26cf0066c4ebcf8ff0ac8a0f78547c49efb5464e8b71e352ecd937577855b138c42157b3008d7f305f2924f3f1f1f518c36d9c933678f46666b2b2b3817e2546b6d47ad41dca9b34b33daeed852092380592256f892c4f91145d1601100906507bc2f617b37bdf03ceb9d9a57519ae8e9e3c7b5b78f8ba2c70fb72278c3020816d78116ea39551ed4dbf1bb6548cdfab95507aeb7ae6cb903199c001345e16b943c6ad60d9e9259c6524dc5881a5f43636d01b6a2a952dfc49174b1ece63c169b4b181b0712ad949ca0f3ca52c4f0e3c281f69ede6865746d425ae46bc541f8daf6f85163a65c3c9721515b8f419096b7a0acb36bcc5c4ae7f3ae7cba0f4ad30cb36fe9c1563d2e370937cb565c1dffc2ffccf4a6b6aefa46853266b1d5afd2b31ab3da9c17f62b6d9c7611ed9dfe165ec35278deaba6defc4696235a0b9870ab5b77169498917877a310549cc2f7aa7dabbc588cdefdb4ae01dd3e75036dc7665f2a13e41f4796db539ff008869557d2a9912eb663fe5006a32d90e3b416b70a17d918092621911881ef358e5078d89ab1ddd908c5329e2b707e069792693616836c561cfeb8ad4d6b249a6b4f09fd71f5ad4c4fa0b74a9089b0e84546986a6981886f1a70b9e7401e42d03fb4bf7e2f23f851cab501fb466efc7e4698021844264551c4900799d051ee23d94e208ccaf16622e412dc7a5ed4038394ac88c38ab023cc1b8a3dc57b54c666b2c50a01c6e19c9f98b54583935d145b0a4386926006b9191d7c048bda2f9d958f9ad5b62679ca8b8cd1b8cbdd371af5d6e39ebc299d8783c5638486254be7259dae012da9e00df8fcea76d1c1c9871d8b3a974b160a49cb985c117d72dc1f4ac1abc6ed4fc23a5a0cfdc1f6c9bb1b64e2154dd9ecc6f628cda1b70602c78f3bf1e35ef1b1caac05981e3704022fa5cdf9785b97853fb07684bd9db901c9980f41eb5c596e5998e805cf9f4f126b364dbb5579372734dee2a37a310df648835b59c03ad816c8f72a399f745bc284314b7561e068d8ece9768491611098e286f2ccf606d9c6444008b312b9cebd2f43bb5b75f118597b39358dee15f4ca47ea91c0fea9b5b978e9c31f62656b3d3941fd4cf3656ce695caae8a0d8b1e02aef6d4291bc6875006a6a4ed38d97f210a9d356b7135036f42d963278dade35b64edd9c240fed70998e4f769c490f662d4ce2a0600dc57bc19ba52608760c4dc1bf515eb7ae3b3a7ecd3c9806297084dc8b585eab76ba4b9fbe1af6d343c284b91b2022926c05cf852ab3ddcc5ac388492442ca035c5b5d5481a79da954c89b26c3c7e1a2d9cb040e8642a59efc6e756bfc74acd3666297ed2ce74bdefd2ab7132309d801adeda7535c9f0ce8d67056fcea2951727db0ac376d34291b5c961c2b51c39642146a0000df99e7590ee5cb931d064ef77be5637ad566c65e4517005dcb7e1532b2d9b116e02a1cef20b485bba38af2b5469768a0bf787ad3336d44284671c0f3a07410b80006e02b3ff683885250860743c0de86768ed5c4b318e596503f3105c661c05adc696d1d9673c51a1398a02e18f03d293912846dd11a06ef2f9d19ec9ddc18991033148dc1d45ae48e42ff001f4a6374fd9ee26722494f6315f4245ddc7545e43f58fa1ad77666cb8f0e8b1c638733de6f124fe02c2972c324545b8fc8afddbd95f6085a38eee73335db4e3c2f6f21409bd586c4bc91e342e7695278c65524766642d09d3f542dff006b4ad3b6ac99209580d423d875622c3e37b6b4fe06111a246382aaa8f2550a3e4294e3b950b14b63b321d8cfb4344585b5e368e423e9f8d1236c6c477158289242722b10385b33b05be545045c9ea0716028ef6863c4299c82c490a8a3de773c116fccf53a00093a02699d9d842a4cb290d3496cc45f2aa8e0897e082e78ea4924ea6c32ad1c6fdcff001d1adeba75ed55f5ec5b1b65a61e31121b9be691ce8cec6c0b1f4000e4001ca9cc54692065750c8da588b8207f3a75d8aa9b7bcd6f816200fc3d29a23bc00e4081e26e07e35b297462b6dd99fed5f67ac92b4f849880c2c627ef65d41fc9b7161a703af89e15997b40cf1cc91926e141e16afa4c43e26833da17b3e4da00488fd9e2105958eb1b8e21640351fb4385f50696d11f3a62318ce2c69bc13e86ac76bec9970d2be1e78cc722f10798e4ca78329e445418e3ca2f4ab802d30189911734721565e1cc7a1af3b536bcd24ab9defa7403e950637ee93caa362c32b2b1e62ac7069276252ddc5743d89c43126f6f4a55141bd2aaecb141be8357de2c1c65c1c3b96637637e27fa15eb15bcd859877f0ccdf1a09c6cc4bb74bd3b8071a5c5ec7514e856697b9ab13bb49868155d47e73eb6f0aeef24e7b9c55ac6e2fcef55becf6276c4b491a954546bf4f01e355dbedb50acaaabc72fe3420646c5cadf78fa9a7b64e10caf97391a753438db4db2eba9a7307b6196e781f0a6236c9f7a3050a44ae4348140365b9047d284375c7dab6bc44dca3c8ed63f71159ec7c3bb6a10c0625493248a5b35ede75a57b14c386c462246162912a2df976ac6e7ced1dbe27ad24a8766c5c7e55db7f5fd7f5a57226b807aebebaff2aed32240daeda429fa49907f9034df3ecadf1ab0361c790bb1e1a79ff5c2a0e3d419f0c39219643fbb114ffeda8fb5ff002c570dc9ed24f7fd19242c47f6ed63faa927036a00e6c91f687fb5bdf200461d4e8021ff008b6fbd20b1d7509946859c1b75d753cedfc85522ef7602c00c64017916755047519ada1fc6ae309884911648dd5d185d5d486561d430d0f3a603816e75eaa7e7fc00ae46ba83e1f3634f01c7c452038fc3e96a047934ad485740a0609fb44dcf4da3862140189881681f9df898d8fdc6e1e06c7957cbd3caca4ab2904120822c411a1047220d7d9ebc6be78f6efb2121da1da2280278964207390332b1b7880a7cc9a4067493dd08f115eb69b7797c057552ca4802e7953822ccb771af2d686c77c11709a915daf2b130e5a8e74aa34591cae2a89fb3e082496f23154b126dd74b7e351dd159894b81cbf9d41e57a21dd1c0c53e212192411abdc676e00daf522b356dd3862fb1ac88dde1165603af88eb407b47621c662962560ac74ccdc0697f8d4bc136230cf8b870c04f1a9ca641eef98ebc7e544db0369ecf92481170921c52a932337bb982ea41bf33c38557352d8d45d3f049356afa338dbfbaef04af875b3bc633165e04117bf871e1543d80cbc7bd5a96f86d481a43f66c3cb1cc1186219c71040b5ba9f1a16dd5ddec26256732e37b0ecd4b2e6035205f5bf1f8518b728a5376eb9fbf909a5769163b0379962c1c700c3abc81af722fcf4ad1bd9b62da48b1988650aed222d80b5b225c0ffdc23e35906ebecac44c86589737666c7ad6e1b91b1a48367b76b712ccd24ac3eee80201fbb1a9fdea9882ed9b2878d08e16fe5f854a5354dbbf3fe4affad97c2e5bf8b55b93a1f4f536a688b2bf694cab3c39c80bd862598f4556c3b37c81f5aeecfc26747328ef4c0b48385bb4194269f75004d3a13cea8f7cf120ceb1aea4e1dd08e5925c461bb4bff84ac7ca8ab08d7321e8c547c00fc49f4a001c7f67fb3c8b760ca00b59269d05b85acb25a893038448a348a35ca91aaaaa8e4aa0003d0538b5ea980e0af1274ebf4af6a6a3bbf788e86df207f1f95023d83e82bdad36390af4c780a06745625edb4ffe250ab2e653855097e01bb69735be197e55b71aca3db9ec3799f072a100849949f231b2fd5a930310c4c650b03c41a8e8a49b66b55ae23661019a672a472eb5015e2fbc6a3f41f5d92b070ddb29bf0a552b67ed648f35ac59ada9e829548447c1e01257ee6a789e828820dda88b0667e86c3c287366cfd993e3528ed272404e2741544e53dd491d6d369b472c2a7966d4be4a8d4b17b4e11018e2166200e161f1a87b2b6f18230aa9196d4b1e1a93409889b1310064040e1c6961f1ccfa0b9355b9e45e0db8b43a0c8bfec7fd07db531f14ae24b8cc5406d39f31e35126c0e0e652b2460e9ef00010685ce0b12ea592366005c916e15523693af33556c937bab935de9631f494db4be89875babb2e6864fb36124b89e45b961aa2fe711d6ca09f856e5898c04b0e005879588af9eb7336ce2531092c085d97883ee953a3037e1a73adfd718af6170188be4245f86b6eb6bd6ac536d7b8e1ff0023a6c58a6bd195c5afd3fb7828f61fb8f1fdd9a3ff0050ff00f357b8f6b2daf6d1d89f2522feac2a930096c4c8073656f4573f5357798191ae745400df86a589bfc00ab4e7333c4c40c46d40e585a38e7caa3ef1c304d7ad85c73e75a26c6378837df2eff0772c3e445657b5778b0c98f91e253fddbc232588cda6666d7bbae96b696f1d359c2c7923541f9a028f202d4d033d8aea35ebc115d07f1a621faad6c45e775e8a87d735fe83d6a65cd506271691622479182a840493c00040f8f1b5a90d2b2fd2bd85d68366df80da431e9c9a4e7e483f13f0a65f6a4d2fbd21b1e42ca3e5c7e35967acc7174b935c343965cbe03b2b59dfb6673d9611158ab348f6b740a09fc29cc66d299459659079335056fb6d4950c0b8b676743398f3819823241a123ded6f6275e3ae952c3aa8e596d498b369258a3b9b407ed39125425866c848623c2a0ecfddd59d5da3bd905dae6de94d4b8c405b2ab59b883461bab8158b01899e55d1d6c97e3e1f3ad3e4c8008c0c79ac19ae3c3f952ad137eed1e0b06210819b57b017f77f8d728000255b026a2c2e7437ab730d458b00a5c2e7b0351ba271839494576c33c1189f04b2e2519ae4a83e5cfe551373a1559a7119b87501730b9009d6a7e222cd86870c54a8419810477afd6a3ecd88e1db32581d389bf0aa5e7c68eac3f88d64975fd867bc4c30985670dab6550b6b6a79d648cb7249d6e6e7e35a16f06066c6a24ae4204161a800df9da81e6c232b15bdec78d4ae391f0cadc33e923ee8ae5d5f7f82cf64e3096830b870c8d2c8a8cdcf292335bc02dcfc28eb7871f9a4964fcd06cbe0074a1adc2c0d8cf8961fdda88a33ff00325b8623c42061fe255eef1c60619c8e396b0eb27cc71a2cd145bdd9643dec7b68bcb8cc4ab48ec046194331602d205d01e1ef568db5272b062e41c410079008bcfc4b5651ec3e558e6c4c926619a340084760173b162eca0841751ab1034ad770c893e15acc0acb9ce65218779891623e15d0c6aa291ccccee6d98be1764e14e2b03142e1e59277edd54b9b2acc96cce49b902ec4754b1e35bf9e1598eeaee1761b54e21a5ed16347640458ab497400db43dd327a0ad398d4d2a2b67835d029015dbd311da12df4d979ecc3830cafe408607c35028b68537d769288cc77d4f1b721e1e3519b49724f1dee54675b3c307287f34907e079516e14682a9f66e0cb366b5aff00202af0c60680f0ae14e9c9b5d1e8537b527d917688e1f0fad67bed2bb49b694fa776211c4a49d0048d7301fbe5fd6b4575cf2c49d5d7d2f7340116c97c64b34eccd692491c002da331205fc8d6ed046dc99cff00e41f115f704e281236058863f77955c62768e271416158fb82d6502c3e345db1b7465ce2d878d501d59cdcb0a2ac2e030d149266eee5b5c2f0f81ae8d1cb32d937471240ce4b1e9a9b52a3bdaded230787256219cf80bfa9a5401963a6950443637e75605a9a22a259d724a8312f61def0d6dc28bf676ec872accc6c6c4dba73a8db1f73fb58d1da5552d62069cf85693b2f0215194a8ee8b1d75e1c6f51d91f916ffcaccbff006ff6cce76f620a858e3760bdee3d2f61ad0f3c7467bcbb154445c382635d351c2fcfc682c9a69244279253f89b614606458767c56e324f339fdc5441557b436d76a8635e24803cce82a4ef0c662d9f81eac257ff003c848ffa72d77d94ec15c56299a550d1c6b620f02ef703d1439f4ac5930a9e5b66fc79fd3c1c7d4d37d926c5106084b6ef620870781ec94658afe6b77ff10d1163760c12317ca6390d899226689cdb866642338f06b8f0af5b1707245daab3b34418084365251028b80540b8cd702f7200ab1ade729bb60e43b3f19876668e44c52b10584b6866d05b49235ecdb4e00a2f3d75af637a2156cb895930ac740275ca8493c1665262637e59afe14422bcc91860558020e8411707cc1e34c0651c30041041e046a0f9115ec550cdb9f1292f85925c239d7f20d6889fd681af19f414c9c4ed1c3ff7b0c78b41f9f07e4a5b7531392ac7c14d004fde1da8218c91ef1d1478ff000acda2769e5249b8ebd7c69cdb1bca3177645913bc5324886374b5b3020f337e5d2a76c0c273e83f1ae76af25cb623aba2c4a30f519650c361a571d00bdaa4bb01547b576a85eea0bb1e9ad62c8e3146c827262fb5859a3b710ea7e17d7e57a6f686f46170da02b71c9753f2acf37876a3348551cd868c41f79b9ebf74701e44f3aa52b7ae9e8f13c70e7b672f5b99659fb7a5c7dc3fda5bfb24887b1ee9f1fe14d6eb6f46a63c4bdc9370e7e868262d39d3805eb5d992893bd9040712e602329b136e19b9da954492014a815049b3372a79543b111ab702dc6dd6d5623d9d72fb50b9e8055aef8edd2add98e3f4a17836a01ef48ca78820557659b1d58633ee52bb2113b008a82c2c355e756516ee104133311cc5ed7f036a015db963fef2de9571bbbb4a49cd8cad943104f036b68698b684fb4775d258de3b84cc54f740e554dff76c0f09cfa0af58c002165c530b35af7bebd2d548db426561fdb7e5458a8efb54c09861c04458111c652fc2e542dcdbfae347becb7640c360d5ff003a40afa8cbdf9552ca7a5b417e8dc05096f7e0bed78bd9b031cc5e34663ff2f282d6fdacaff2ad7b0aa82d10b5d02b11d335c2fd0ff945420ae4d9664954144940585a9576955c67152a54a8039549bd7b5c4109b1efb0217f13f0a95b736ba61d3336ac7dd5e64d6718d9a4c4485e43e4390e80567cf9d635f53569b4cf2bbf08afc1e1cc8f73c2892270834a85159069f1a8589c5163956ff0d493d00e66b8b2c8eefcb3baa0aabc224e3b1998900e8389fc286b6a62c90425ae74bded61ccf9f21e77e9445b5760cf1e1bb671906655c87deb107bcdd0deda71d75b509ca9978eb5ab4fa57bb7e4fd19b3678b8b8637f9291f6737eafad37fece6e3997d6ada575fbb51a52bd2ba9bd9cdf45100604fde5f5a7170d978bafad765cbd2a24b968dec8fa487e58ff597d6955795f1a546f62f4d053be2ff00db670490035b8780aa850bf7fe55a36d8dcbede7965ed42876b816bfe355afecdeff00f98ffa7f9d45a764a3922901fd9adbdebfa5697b97b3847031602ec2ff000b5500f666430227b8041e16a35ff67b76650585d72dfe1528f04324d4ba05f1b8c830fa4203331ccc08ba8b8b7ad5363f6989058c4839dc0d689ffec737e93974a6ff00ec5484fbebe9516d9643d35e495b23620c4ed55674fc9e130f860d7b10cc103a2db9779c1ff08f5ad1b66eca870e18431ac6188242deda0b0b0e4001c058562f8bf6873e0b6862c46a8f099029565fd1a04d1d7bc0dc1ea3c28db607b58c14f659b361dcdbdfef47af4900d078b051538557067c9baf90fab84db53519f69441049da29520952a4306039adb8d02ef1ef1c9303120cb9ad64beb6bfbf21e9e1cce9e223933461d93c3a79e57c75f30d65db3875e332fc0e6ff004deab368ef6c2abf9339dce805881e64f4a0c8a2b0d4dcfadcd3b1616c41ea6b0bd6cdf48e8afe3f1aedb398d79257ed253727872007402bc8ee8a7563732016b8636039dfc28ab676eaa0b34ddf6fbbf9a3c0fdeacf1c593349d7ecd393363c1157fa409ecfd933624d90654bf79cf01fc4f80f9512ecad871458954419bb14cf239e26492ea8bd14050e6de2a6892474890936544524f20aaa2e7c85aab77610988cce2cf88632b03c406d235f820515d1c1a5862e7b7f3393a8d64f2f1d2f9113da0dfec1291c9a3ffe451f8d6352ccc6b6adfa17c0623f654fa48a6b1166356cfb1e9dfb462563d2a2bb54a901a61d2a05ac85235306a6b415e4e1e8234406a5528c14a9d91a0ab6a6d8c4099c44eed1dce52072f8d46ff6c633abfa0ab711d3a91daa3bcb56145447bc18c0aca558ded63cc795723db98dd0ddbd2af0475d11d2dec3d1895b36f063198b0baf801a54dd81b4b1b2ce8a58e50733dc7e62ea6fe7c3e229f0953e39bb388aa5bb498dbc5516de84937f80a8cf2ed4db251d3a934901bb63618924918716663ea49a28ec30f8a8767e1592ef18489fbbaad97292ade245f43ce9bc46188644bea45fd0eb63e9eb569b0611f6b8874373e6aa48fa0acba5c93df4cd7acc1058ed7802b0bb0258e5611621a068f312181642c391008bdedcefc2943b47b07123904ccd6e1c49e2dfaa380f0d051ded8d9e64c448c34b95208e6401af8d556dddcf3346ae88a1a3e21540cdc2ff002ad79b139ffbb3169f3c71fe7f48b3c1cc8f6d574007116a79e402fe9a70a0e5d958ec117748cb2baae55f7ac7ee69ee9fe5ceaf861719341da43866e5dd908899bae50dc7e57eb589e1c89eda377af89add7c053ba987cf2990fbb18d3a663a69e42ff2a2fa01d95bfb0c0120c56165c111a0cca5e327c1c0bb1e7a03e746780da11ccb9e1916453cd0861f1b70ae960c7e9c28e36a32fab3dde0abdec7ce21c229d712f66b7110a59a53e965fde357a8b60001a0e5f4143bb1dbb7c662311c521b61a33c89537948f1cda5fa014442ae282937d8ff00619fc428f5916b206c21e95afef9a9fb311a58ba5fcaf7fada80bb215464ecdda65ecfc8307067a5466c21a2dec4543c4e145f8557668db60d1c29e94dbe10f4a226c3f8579683c28b16c069b0c7a52a206c3785729d8b616852d5d094fe5a412ab2c19cbe9480a7d52bbd9d003594d415ba620127df00f965b29faafc055a84a87b4f00cea0a365753752786bc436874fe150c90dd1a2cc73db2b3c601964c64b101de8c6624f0fca58e9e4145fc6ae302c5255653621b8fc6c7e57aa6ecdc4a928192554292117cb225ae0836b12a780363ad5ae18f7879d18a34d30cf2b8b5e39fcff00ba25cfb61919a4311208bb766403a73c8fa1f5a7366efe6099b234bd9b9e522325cf835b29f81aa5daf88658c852353cf5f95026f1a1112caa3bd132b8f81ae8ed38cd9bc60f6e6164d1711031e824427d2f7ab18b131902ce87c9856218770d22b8f764895d7e0753e8ebe952c8a6909a369302ba95655653c410194f983a1a1bc5fb3dc367ed70af2e0e4d3bd0365536e450e96f05b566ea6dc34f2ab3c163e502c2471e4cc3e869ed2366a7b0b64ae1a04814e6cb7bb1162cc4dcb1a9f6acc21db7885d04f25bc4e6ff0055e9cc2ed99e46c8f3b90c1871cba85b8f76dd2df1a368065be36fb2383cd92de7981fc0d67650d126d04630266249cda924927427993e1e9553d8d64cbf11d0d371020043497422a7361fd6bcf602ab346e3c64e95e0c63a575c91a034c990d16071929536f21a5458a8996af596bdd874af2d480e05af4ab4945742d00202ba2930b5768038c34e15d886a2bdc74ea2d4a3d9193f6b29b6d30c97f4a17c7c79a275b710688f6dbf72de354a82e083cc115bd1cb6536e7e24b61ca93dec339ffd36bdfeadfe514524504eea4dd96d0688fbb3065f0cdef2fd08fdea3544b69d341e4387cad51431b614fe19a997a770e751e3561164e7361e74a0395d0f8eb5c75d29b57b58daf63e4796a0f23e34082b0f9f0b193c7bb7f461f8542d29dc34b7c3bafdd643c2da30041b72d0f0e5ad4502b166f88e869be01cb8eb5e6e3c29b239ff0056af26aab2fa14ca0d31d8f853f97c69d88dc521f457bc07a52ab1294a80b3c5af5c20574d708a0472b82bd115cb503384d76c6ba2bd5e803b19b57b56f1a650eb7af44d38f688cfa60fedd7b5873bff0056aab53a54cdb47ddbf4f4f3f5fa5428aba08e5b0176fc863c48917de52ac3cd4dc56b104ab2a44e9ee10181eb996ff8d661be10d9c1a30f67bb403e1021d5a3629f0e2a7d0dbf76a3e465ae352c4db85edfd7a5720fa5398a5ee163d401f3bd31833724785eac44593d9fd2bb0a168e465f794a9b781cd7fc298cd569bbab77913ef467e454ff001a1889f84ef23903de588f9d827f1ae08e96c98ca8994b12172800f4febe94e9ac79fe237699fb7f2326135cfb39d6a40a57aa4d1645ec0f5aeaae5b9e5520b570fad016477980a54ccab636fad2a431371ae96fa52a548672f5de94a9500747135da54a988f2bfd7cebbfcff1a54a9c7e2429fc2c0bc61fca3799fad39052a55d1472d82fbe0a2d4ffb2d3f97997f34c6091c890da7d4fad2a5507d925d073b47fba51fae7e95070bef0feb952a55344192df955a6eb7fbc27887ff0049a54a9be845ea8ee39fd91f335198f0a54ab166ecdba7f845d297f0aed2aa8bc689bd72fc6952a432263cf0f8d2a54a93271e8fffd9, 'John Doe', 'Mental Strength', 'John has over 10 years of experience in strength training and bodybuilding. He helps clients build muscle and improve their strength.'),
(3, 0xffd8ffe000104a46494600010100000100010000ffdb008400090607080706090807080a0a090b0d160f0d0c0c0d1b14151016201d2222201d1f1f2428342c242631271f1f2d3d2d3135373a3a3a232b3f443f384334393a37010a0a0a0d0c0d1a0f0f1a37251f253737373737373737373737373737373737373737373737373737373737373737373737373737373737373737373737373737ffc0001108007f006003012200021101031101ffc4001b00010002030101000000000000000000000004050203060107ffc4003410000103020502040306070000000000000100020304110512213151416106132271324291072352a1b1d11415337281e1f1ffc4001801010101010100000000000000000000000001040203ffc4001c1101010100030003000000000000000000000111022131031222ffda000c03010002110311003f00f8822220222202d82095cdccd8de5bc86956586d00b096a184f56b3f757b09737e56b474088e32c8bafa9a4a7a9169a26136f880b1faae7b11c39f46ebb4e7889d1dc7ba2a0a2220222202222029587c6d7c85efb16b7a72545565471e585a4fcdea41671cc0e814b649f4f6554c76570b0d15831d61751cb779878216a94b646b98f199aed085eb9d7d7758969b5d15cd55c269e7746750363c85a55ae3515fcb947b2aa55444440444419c6c2f7868eba2b53605ad683a050a8a3f57987416b5d4e754c30334d5c46877288dec889b13a0e54c8bcb68dcfe8a826c4a6909ca728518cd293fd47fd5431d60646edaff00558c91b9ba8370b956cf303712bc1fee52a1c52a23233bbcc1dd0c58d7466681ecb74b8ec42a05d0435f0d5b727c3211b10a9eba23154381eba85488e8888a2ce18fcc9036f61b93c05b29e99f3b865b01c95e4c58c25909247571ebfe90673548272c22cc6e8d5189ba220227444045614f836255545256414533e9a3177481a6d6edcaaf4d8b63d048370a4ba7353088e4d6466ac773d9455e8363bd911e22b08e923aaa70f86ed975b8274ba83231d1bcb5c2c41b10505b86796031af6e5b6dd4770aa246e57381e86ca7cf287b0878b3b76aaf7125c49dd4891e2938750cf8855329e95999ee3bf468e4f651c0b956f85bea30fbc8d95f1871199ac7589b6daa5dce9d4cdedd9d1785702c169a3aac7a66c96b1c8e758c87dbe56fe67b2eb7c3788609380ec1fc18c7c4d377547f096601ce62d2ba1f0e619e1b930ea4c52928a199d2c61e27a9fbd901ebabaf637e144f1578f6830469636b01900f4c4cd5c7d87eeb2dfb5f7d6cfcc9d4e9d250563713a40d34a238ad631dc116ed65f1ff00b5ef08e1985d44159853e3866a8712fa41d47e21c6ab11f68bfc8ebeaa7c24326a5aa6f9b140ed3cb7bbe269ec0dcae3aab1aaac62be4aec46732d4caebb9c7a7007002efe3e3ca5daf2f979f1cc8a0b728ac310a5b933c23d275701d0f2abfdd68675a60f218e297addc2c392b1c560700d9491989b3add17987c8c63757653b37df952e522785f18d7b9dc95115523cb81cd6b9eadd8ac594f2bc666b0e5e56e11b1b77b803c06ec56f8271202c24027541a58594c3f149cf1ecb5baae43a5f44ab84c726fa1d9474278baa0f13e2d41873e8296b1f1c05c5c001b5f7b2a9965926797caf73de4eae71b92b5a24923ad164c76575c2c57addc2b51654b5245afecb1a9a26c9f79090cbeed3b7f85b608a3118712365b9b95d675bd03f32a445544c9192167c2f1b93f2853e270cbe9d231bbdda66f60b5d4b4cb2670ccfa016e97eeb3113dce064115c773a208cc7973893aa8f20c929b69add78242d75c68b64b3b246eb1d9df8ae832328733d643bf50a39dc90bd6bb4b5ae16374304445544459b1e1ac78b5cb85af7d9004cf1617d0745bdb5529399ef27a00a2dd7ae75ca88974b516738952c386edbe9d2d75521c42dcca82dffa98342222aa2222022220222202222022220fffd9, 'Emily Johnson', 'Yoga Instructor', 'Emily is a certified yoga instructor with a passion for helping clients achieve mental and physical balance through yoga.');
INSERT INTO `trainers` (`id`, `photo_url`, `name`, `designation`, `description`) VALUES
(4, 0xffd8ffe000104a46494600010100000100010000ffe201d84943435f50524f46494c45000101000001c86c636d73021000006d6e74725247422058595a2007e2000300140009000e001d616373704d53465400000000736177736374726c0000000000000000000000000000f6d6000100000000d32d68616e649d91003d4080b03d40742c819ea5228e000000000000000000000000000000000000000000000000000000000000000964657363000000f00000005f637072740000010c0000000c7774707400000118000000147258595a0000012c000000146758595a00000140000000146258595a00000154000000147254524300000168000000606754524300000168000000606254524300000168000000606465736300000000000000057552474200000000000000000000000074657874000000004343300058595a20000000000000f35400010000000116c958595a200000000000006fa0000038f20000038f58595a2000000000000062960000b789000018da58595a2000000000000024a000000f850000b6c463757276000000000000002a0000007c00f8019c0275038304c9064e08120a180c620ef411cf14f6186a1c2e204324ac296a2e7e33eb39b33fd646574d3654765c17641d6c8675567e8d882c92369caba78cb2dbbe99cac7d765e477f1f9ffffffdb004300030202020202030202020303030304060404040404080606050609080a0a090809090a0c0f0c0a0b0e0b09090d110d0e0f101011100a0c12131210130f101010ffdb00430103030304030408040408100b090b1010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010ffc0001108031502d003012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00a9e005d9773a8c28ff004b6dc4f3b823ff005af957c43e23f13789b51ba5f106bb3de2417522a23c990003c0c7d2bea8f0648bf6f95590b2efba181d7946fe95f35ea7f0cfc636d6b75aedaf86ef26b4796598c8aa7006793f8574f066270d859fef4f4b89a9bab15ca73b7b36f88364646071e959264981cae411dfa55e24ca3721ca1000f50475a58ed814c95ea7d6bf54a98d8555cd4f63e3e8e1e4afcc075bbcb8805b4d2b30031c9ac9874e92f2f3767e5279adbfb2c7b73b79c7a5269ecb05d0c8e322bc5c55555356ced84393622bcd022487e5e0e0fe78ae6ae6d9e3dcabce0d7bcf877e176abe3885574d43ce0e7a547e2dfd9a7c65e1bb67d4248d5a20bb9866b81c96ccd6ef7389fd9d3c7f7bf09be31f87fc58c48b492616f360f00311d7dabf46fe3b78474ef17699f6b8cc2748f15c7148646230b2329008fc4f35f98579a4dd296b4f2d9648983138c6d23a57df3fb3ff008dc7c6ef815a8fc31bdbc116bba1423ec4d21c33614918f5c115c18a494ae8bbb68f3ef84b3f883e1378e2efe017c42b4665766fec7bd932239617e8158f07f3af18f8c9e05d57c21f172e2d9344ba7b0799952448199198e41390307ad7aaf8a3c73ad78bfe0d4da8f8e74c11eb5e12d57fb1a3d414859a2656c2b93d7a1afa0f43f1c784f40f0a585978974a9b56169a6c77f26a9222b2b008189c9ef5cccceaa5348f9cfe09fc2ebc5f877ac6b5764e9275b716a1a71b0a5ba37ccdcfa815c5eab6367e3df1b8f13dcc2f2697a7edd2349848e2793382cbf4009af47f8eff001bfc07e20f860efa35bea106a53c862b38e3f950213ce47b8a97c15f0d3c4d7da2687e3bd61ad21d0ac34e79ace081b245c10029603bf26b4a5eecd31c559591cb7ed3fe3c9b4df0e68fe0eb773bca25b4a887f8476e3eb5e6ff0013adae348f02e83a0e89a7ca659e3f3e610212d83c8271585f1225d43c43e2e964767985a39cb13d1f703fcabee5fd953e19e909e0f1e2bf17db47797ba8c4b1daa4c321547a66a31b374fdf477e0e2aa4ac7e7569be0af887e2070ba5f85f549949ff009f770a73f8575167fb337c65bc5121f09dd2c6c72559083fad7ebf69de1ef0ce8d0c71da68b6ebc0c948c75eff00ad25fc76916d99edd5232790aa3a57932c6c99ecc705167e463fc1bf8aff000f627d522d0afadfc8fde168c1f971f4ac9d6be285cf8aa48b44f1669a5ae1c88fed0cbb5b23a66bf59b52b0d16f6dae21bfb6478e5460a36e73d715f9e9fb5d7c1d8b44d42dfc51e1db02b1b49993674539ce6bb3038a94a5a9cf8bc246313c0ef2c5f4dd40e9f29ce46e439ebe949e58719c63039abdafb3c9358cec3f79e461b3d6a8c792393d2be8a1efd8f3569a17743d2a1d4b55b7b391be4918023d466be94b2fd933c33e29d26d974e9bc8bdb98c156ec09fc6be6bb1b896dee239adf895082303ad7d0ff0dbf687d5bc30f67fdb36465b680aab91c903d6bae346e7162ea35a19de2dfd89bc79f0df4c97c596fab457b6f69b1de24e5b6ee04fe42a7b9b855b85699f194888faee00d7d72df1bbe1c78afc0ba8b7fc2456a9f68b0910c121f9b795385fcf15f200315f6a533c9feab0857fefb18af94e215ca7af90bbcae4fad4b1bea374236ea41ffc70d7996a4dba0707aef3fd6bd3f508e06bfbc743ca91c7fc04d7976a20f94e0f7638af9da2efb9efd67ef9cacffbbb967693f0aef7e15eacd677464070e12403e6ed827f9d701a941890396fc2b6fc1d3c916a512a301bc30e7a7208aeea91e68e87227a9f6f7c26f13dbeb7a5db2c97b0c770d8223f306ee7f5afa07c3774028078e3ad7e787827c3be27d5be26689068da89b28ace159a76cfcac00f6afbc3c2134c21559a60ec1704f3cd7760e7271e567918e8a8cae7a22ce194ff008d359c9e7354ad5cb2f5a95df18e6ba7ab38cb025f7fd698653eb55fcc5a6f98beb40160ca73d691b79e4106ab33e7806a32ec0e031fa669d80b5b9bd4521639eb5079a40e4d1e68f6a2c04aeee3a3530cb267ef530b83de80ff004a2c0299589cfb75a72c8c07de3f9d44cd83f5a4dde945809fce3fde3419f6f279a8b2a3a9a84b7cdc1e28b01712e831c018a9d24e339ace423d6a7f331d0d1602e79a7d68f34fad53321c53d5c114580b88ff00afbd4cae14726a82393d39a9778c64f6a9698116a97491a119ed5e57f10bc516f676f24735c220231f3301fcebbcd72ed6256246720e0d7c61fb5169be291711eafa76ace2d0483cc45270003cfe95151f242e694573cec66eb1aac77b65e25bc5b806384b0072390012057896983cb87796277b16fcebadd56f23b1f0ededb1908967c1619fbd91ff00d7ae46d76346a1245e06315e03a6dcf98fa4834a1637ac250e46c883107bb62b66c1cab1768c27cfd01e2b0eca7dbb238b1c7538ad8b5624167236f9848fae054ca295cd60cd39e469b52b731a602c6093f89ac6f8a7ab490f8863b6881225b643f8902b5269c45a8dba8e434438fc6b97f8db2edf125934008296a8481df815a65cb96776795c410a93c23704741e18b6bbb1f0fb6a37113f96197e6033b73d6be9df07660f85d37866f8b4fe7badc2cc0e46c3fe1c57ceff000c7c4f63a9f856f748bc70a52dd8e48279c1c57bd7c0fd6b4ef15f87ecc4332c8d688f6d7609038e80fe75efa926cfcd720c65655a74aa2384f8a9a1acf73a6ca4c9258411085428c82e48e9f85717a8f8534cd2ad9d3ed51ca96f899e3b98c87058676af1fcabdc7c6fa9693636779a15fda1923b70658e40a0b43e87af3f866bcb27d757c516f6d6d6960acf1701c295de074cd7642a38a3ec3d9b974390d1c1b798ea1a6cd25bce4e028cecda3a66bd07c2de28bdf30094c8aee097210e4c87a15f5e6b918758b3921bcb28ae2c21258a3adc3ec6461d47bf35d5783744d3352821b5f17fc52d234e877068a1b75679197a81c0eb594da7ab09537157b1d049731e9d2a6a7aad9de5b5d072596e50a92dd41e7b57a768daad8689a647e38f11b369f1dba192d6c63ff5974e7d876c54baff0084b50bed3ad6fb40b192f6d2de2c47a95e6153a704a9e4fe55e757fe00f155c4726af75e2437d337c8c5158c6809e8a31fd2b16afb19d9dcf48f0ffc48d0fc61733e97233e956dac7ef6d5c9e239d73f2fe22b89f8a2f79a1787755864956ef7c2c37a919c8279f6ac9d3eca7f0fdb8b0d5ad1658a29d2e2da78f8f9c6415fcab1be38788a31e1bbfd55e27b359d1121858e779c7cc78f5358b8ddb3d1c0d4746a268c1f879e25d4ae7c38b06a12b88d57e58d8e72335b40c373f763c67a715e31e03f1947e6ec965011140da7d40f4aed2f7e245a5bc83c8553c6381583a691f590c4c651d0778a6c2f55a49219180504802a87c35d5f54bcf115be94d738596509b58e07eb58ba97c449ee6460c4053eb56fc1532dadd8d7d600f342e2555cf07152a0529dd9eb7f10f4cd6af7c469a0784344d41d9e245bdb9646f25c03f741e95a7e22f0a7833c3da4e95af5c6936da5cba342f2ddbe402ef8e9599a77c7cd47c4930d0ac7c351c770ff002094c9c838c67d4d7877ed29e20f18c88be179ee5fca61bde34cee727b575d1492bb33c5d4e4a773c3b5bd6ecbc5de2bd5f528b11c73dd4ae87b724e2bd47e17db8f09784aef5b6c0ba9df6c25b8f94f15cf7c28f84b241692f8abc50ad6f6d102d1db9e5dcf6e2b7b55bd9f579b62036f6518223871d00fd2b49d58416e7c5cd55c6d67182362c3e2234776906ace5c767072013debe82f837e29d3f579934cbb68cc92e3c87cf7c8ebf857ca3269f124265f28f1dc8e2b53c29e2ad57c3b7b0de69f2167b770ea9bba9ac5cb9d5d33c5ce726a95293d353f467c51a3be97a5c5229501d092474c57c99f193c5b6f6be65b5b5c2b481886287241fc2bd17c45fb42b7893c01a7e956cb20d6a58f6988293c01cf4af9b355d1b54bed4257d50b89666dceae48dbed8ed55876d3d4f3723ca2a50779963c27f157c53e1db82ed2bdcd90ff0096679c8ef5eb13f896cfc5fa0d96b766a624f3503c678c364645794d87852e27b295618492871c0aeb7c176b7167e198ecaee06431de7208edb862b0cee6a542c8fb5ca687b2c4dd1d8dec692e8562e5b38bae87af24d70be2c9fccd44ee5c6c8c28cd77b771c0345b20affbd37583edc9ae27c6162135362640d98b3903debe3a83d0fb6ab6b1e75a9c42405c8fbac715a3e05bc92cf5386443928f939f7aa9ab2b431b21e70739fad43e1b99527dc582e1c1e78ef5e8daf03ce7a48fb43e1878abecfaa9b6b8bb11099639019180519007535f5478475a575542c180e8c0e41fe95f9d7acff6aeb7e159a3d32e845777ad0c304a848f2c0c0cf1cd7d93f00f4bd57c3de10b2d1f59d58dfde408bbe524e4f03d6bab2d9b49c0f1f1f4aef98f967c1ac62d51822e775c4e847d770fe55f6c5b784bc2b67e1f4d164d3ad52c1f4f7f30b28c7ccb93dbd6be2af04c8efaa5db84c18a7ba914f5e42b11fcab96f17fed9fe2ebfd02f343b4422542f6e1d0f3b464578583c2d59d48ca0cf47368c65a1e0be3bd3ad744f1cebfa658b2b5a457d2f93b79001358d1b00401548df5c5edc4d7d7f2179e773231639e49ab51c8ac4794acec48015064d7ea783c44e9d15067cd4e9ad8b8a015c7f2a69840954e307239ae874cf0078d353b6fb569de15be9a3fef6dc0aabadf853c5ba0c626d63c357b029fe2f2c91fcab6752fab39e54cfa27e0178e7c33a0c491ea97b140c3009622bbbf8abf137c2f369d2c50eab04ab229da15b35f0bb5eca24648677dc84865048c1fa5741e0fd0bc53e36d621f0ff86a19af6f247018392c1549c135854a96d4c9ab6e686a28b7fa84d736bb5a2773cfafb575df057c787e14fc44b1f1548f23408e22b8850f0549e49fc2bec1f801fb06e976966bad7c4b63773c8032da212157bf5ffeb5701fb67fecdde17f851a5da78cfc1c82dacef26f22e2076c9c9c608cd7155c429bb151775634be25fc35b7f15681e386f0ac11dd687e27b58f5fb568c6489c28dcbf5c8ac2f80da6ea9f10ff00673b9d1f532f249a75cbe9db88f9fca071fcb8fc2b37f665f1f6b52e91a8fc32bdbe93667768f772290198804c59f4cd7b76937907c23f87eed0f85658564ba79b53b15ff5c7731cb20c72335cce7a8e51ee7c0df143c21ade85af8d2eeac19229a50b6287203ae7031eb9afa73c6bac1f84df0234ed22fa66fed1d4edd0ac1bb987fc2bd5bc41e0bf087c41b4f0cfc40f1269d058699e177378f34c40699472148f5af8d3f682f8913fc49f1c5ddf5acdb34c8bf776d0f60a3a7e82b78cd335a70be872da347f6a92574c3bc9fbc6763f789393f90afb37c07f183c39e02f83ba5de6a9673df5fdbab086184601c1e2be13b7d5ee6ca12d04642229c8cf393c1fd2bee5f0e7c273f11bf67df0a5cf86de3b6bcdae647c67249e9558a71952d59e8e0f0ee152ece87e15fed8f67f133559fc39a6784a5b6bfb6058c4fd4f7fc2bcc7e237ed8bf1134ff1acfe0bfec6b4d2e30e53ceb84246338cf15da7c0dfd9edfe1578c6e75fd42f4cda9dd290e48c81e9c5743e35f847e0af1eebb23788e286deea46da25da0330e99e6be71af78fa58d356333e087c63d43c6a6f345f11dd594f246710cf0a30073f5ae87e26f832cf59d38e97aa5bacb6d779119da0ed6e706adf84be06f85bc02a24d19f0a0821cb7271d4f15d36b8f69ace9a34a59552e221be299bb91ce2ba28d5f62ee71e269a95a27e647c6bf87fabf81fc4d22dcdbff00a19f96061c719e0579d34bb18e40cf715f64fed8da6472f8534b7316ed5039deaa32580ee3fc6be44b7f0678b754825bbb0f0ddec91c7f79b691ff00ebafa8cbb12ab23c4c4d3f66ec86e937cb1dd0fdd6e3c73d2bbe6d5b4f4d309b848812b8c67dabcd24d0fc4f6513dccfa15dc31c47e77c1247e02b1aef5cbdb9529bced39033907ffad5ef5270eacf1f1707336b54d719353862b0ba9115ae23caab7041619af7f569df51f2a24c208e1f61c915f2d5aac8d776d23e4933c7effc42bea6490b5d232b8f9a38411df391c57c87145b99729ec644b91ea5abb8de2bfbc2d8e4f033df63579b6b042c7eea4e457a25fc98bfbb01ba303ff8e9af36d75fc81219380cc4e4d7cd518ec7d057d65738ed4a569a52558003deac68d7cb6b3abc9314208c1fc6b32e584b75e502e779cfc83b5742be077bef0fdc6ada5ea64ddd82f98f6928c348bd78f5e2bd16ed1d0e54b5b1ef9f0935567d7ad04c42b98b699179dca3a66beb9f085d4b23040d9014735f067c12f1bdb43a959595d5b84c02af2139c13f5e98afb8fc0b7a1a249502b23202197d0d6d81937747998e8f31ead60c444093d40152c8e0671daa8dace4c0ac3d3a52bc8c7bd77ca36679976b4256972739a8cc84f39a616c7534c2e0134242e66598e4527970287752d90d9aa65d7ae693cc03bfeb432af645932afad2799fed0aaacc4f4351ef39e4f14d589e6772f1971c71d2986e00ea0d55f30772691a403bf5aab20b97cca248d595ba75a45980ced6aa104c7cc2b9241ed5236e81be607079a56139b7b168cc339269fbd58657ad6649725cf15225c305a2c099794941926944c738aa627663d7f3a74330797cbe7239345ae3e668bed27ca3b537ce1daabcf282c021c81d68561f9d16b05db2ec7273c1a91e72a98aaf1a9ea692771b0e39c516417661f88271e43679af99fe3d5fc69a58b38543c8ef9d8c383cf4afa2bc43711ac0cacc3201e335f24fc7cf12c104a1a26123c24820d7362b489d5847ef9e23e3fd4a111c3650b82ee41976f6ac4b794281b5b27150e89a46abf11351d5b5486ed2cec34a46796461c330e807ad426d6e6cc2e0c8e5b3b4e3a8f5af32313da8b6ce874e966320c1cf3cf15d258caeb2e4a9640d9c7e02b93d02ec380adf7c1e41eb5d7e9ac1542af2589247e558568a3a611b2b97a7b9cea76c7cbff965903f1adbbb6f85973e28b4d3fc6f793dac97304604c172a808ac3b872d736eaca01318fcb26bd2fc39f0034ff897a8c1e21bfbb0b636f12a3c78e4903f4aca8cb925a1a548aa907166545f0b7e15c3a9dd47a77c54b6b3d376162e719718fbbc1ef5c9f87fc57a4fc17f8a76c745f1326a5a16a9fba9da3276ae4f5c67ae7bd4bf1eff0067eff85748fafe8d3493e9139dac8493e592319eb5f3edbc51f98e12e0bae72371e86bdac2fef1ea7c54f050a188738a3ef8f13cb63a86a89aa07f3ade5b70d0f429321e71ef5e5fe34f1a1b0d2a5d134cb186d520fde9902e1d4926b91f829f169e2d23fe118f1b5ca496114816cee18fcf09208c139e41f7ae9be21e876d753c8d048af15fdbfeee6539562338e9ed5e8d48f246e7ad84b4e563e78f166a1737baac7a8db16b896e8852a87ef3e71dabea6fd9ff00e0458e8f6369e3af8a17d6b6a142cb0c570d96da791c1ae3be05fc2cd034563e29f1844d7f7e92b2e9fa6a0c97c1e1bf3f6af5e5d26fae75337de2f89f50bc9dff00d13488d884b78f3f287fa0ae0a952fb1eb430517acb63e96d0757f05fc4ff0d5d68a7509adec2d11843f67ca890282703d72057936a7f147c3de1382e74af00d80b99e4cc5fe980b0041e4631dc562f8875cb9f879169fe23d43c4f61a369b0b066d3ed137c8401caf5efef5e6de23f8e5ae78b92f93e0bfc24919e66dd25fcd0eff0031b3cb0c8c0a98d46b73cbc6518427681ed73f8cb46f887e0d6f0eea3e19fb36a0b868e6863d816419c9c9af9c7e37bacfe198344ba9a53716f3104280d9c703a1af29f88be29fda67488dee3c48ba8699048719b68c2a283d8e0715d1fc27f81ff11be25e93ff000916bde37b9b7b56191c891febcfb50ebc61b914a1cb63ce6db4bb9b390ca564463c6dda46456de99a64d7d3f992c728403aaf3cfa57a0f8eff678d5744b08f51f0b7c4392e6e233b648eea104311db8e95c97c39f18f8cb43f119f0beb1e086d4dd58b3b5b4649dbfdec63d2b2facc27b1e9d39b5b0d1f0f754d45c7d9e395439e0b0c0c57a47867c037b616eab3166da98233d7dabadb0d4a3d40b3e9d698663f35b32812447dfe95d5e93a634c81e67006390bd723b56729db53d2a1352dce73e1d781f4fb2f15c1aa4b6e44abd237e00e7ad6dfc68f87fe145bf83c49ae5d2dbc00876936e78ee0574da2ad8fdb96330bbb13d41e983d2bc6ff6e4f18ea7a5e9ba1e93a501f660acd29504856e3008ad69539d6d11cb9956842166cb76da87c09d475ab4fb66a5aa476289891a380ed6c707af4ab1e25f1f7ecf36d14da4683a54b7088a56399d06e6e3dabe62f037c5ff0011eb9796be0ebb5d3c437588b79840233c0e6bbaf17785340d0ad04f67aa247796f2f91776f2105493d76e39ef4ea6064f46cf9ec1e35d2a978223d65b4dd434d9ef74a565b50ff2875c1ebc0aafe046d0b44f12596ade20b0fb65a45979201d587ffaea5d2e18e4f006a8ff00685ff46941c633b466b1ed2fb4c8dd27b8d4907eeb66dc6467f3aeaa585715665e26bbabef33e96d17e38f86a08c0d1be15d93dcc45a4864619608076e299a07c39f1afc5bd64788dfc2e2d2cf579488d907098e08ae43e18f88fe1fdaeb16379ab6b05bccb47b668d5060b3118ea6be88f13fc76b4f853e1df0f68ba5b6c400cb118f0dbb71e334e54dc363814a499dbfc21fd95acb49d425b3f15d889a21f3060477fc2bc87f69cf04e83f0ffc6f0695a0c724704acac54e00c9fa5765e0efdadf56bdb3f12eb1722469ec225748db038db9cd78878cfe29de7c6cbb87c617113218ee123c139e840af273452f65a9e9e55272ac8ad71116b0b5241e6eff00a9ae67c5ea16e892393163f5aeb2f58ae89673940b9bb381df835c778aeeb338678ffe59e724d7cce1b5dcfaeab2b9e7baf9f94907358fa73afccb9c10720fad5dd4267d42664887c91e779cd5ef0bf842d757bcb7b7bbbf9ec0ccc552595711e7b75eb5e8b95a3638657e63d63e1f6a6d71636ece10c6d22abc7bb94618e6bedef87f7303dbdb4b18524c49bb69ef8e6bf3afc13ae6a1e03f16ea9e19d634e86e6e60903c6727e78b8c30fc2bef4f857aadaea3696b7b66d88a5891d97a6d6c722b7cbe495538b18af03e66f03dec635095ed143c92c97791d792ac05703e1cfd8ebe26f8c24bbd5414b4b79e69258d8a804af5aeefc0d244352b690048c9b9b95240c700357d2bacfc60d13e1d782ad6f2e560754b61b007e589c8c75aeae1d519cad24467751c7e13f367c79f09f58f01f887fe11fd554c933b1d853a9c1c1e95d7e93e1af097837404d42eee636bf900c99083b475c60f4e4d68fc42f1e5d7c45f155ff8d4d83ac5631398428c8c9ae43c19f03fe2bfc71f3a6d0ace78edc92ecf32fc87278f6afa9c4d4549fba7938584abad4d3bbfdaab5af0a5b8d3f46d444b0c5c304518c0fc29746fda93c63aedc79778f657b6ed9fdccf0a9383dba5755e1aff00826a7c49d46e8aeb9a9456b6ec46f200247ad77f77ff0004d4b1d3e18ce99e346172a0671c73ff00ebae4fad1d52c14ec781f8bfc2fa378bac2e3c53e11b6fb2de8cbdd5ac59c03dcfe75bff00b237c62f0cfc25f1ff00f6878c6d83432a18cb63eeb815e93aa7ecd1e31f81bad36a3aa6a9f69b1d4ed5e26503e53f29c7b75af9375ab64875bbbf2d400b2b0008e01cf271f4ae9a0fdaeacf37114153d3b9fa53e34ff828ef81b41b46b5f02d9bea57d27dd0c09507b0e2b83d4348fda3bf6bdbcd26efc61a22693e145945cc7b5766e5f43f5ae23f616fd9ab49f1c4f7ff00147c7d65e5683a690b6e8e9859587ccc79ebc56bfed1ff001dfc6f77f10748d17e166b771a5f85a091ed234b62db1bcbc06e9f5af2f11eed5e54452a12dcf4ad73f666f1659eb1a76a51f88ecb44d16c1d52da38f6a96941e1891df35ee70785edf4bd2a2f12f8befe6d6eeb4a84b79e80309140e1768186e38e86b9cf0f78a740d53e13693a86ab78da903199266642f875e0f6ea08af1cd77e23d85bc9206f14ebb169c4b7c91238db93c0aec5839c95d1cd5abf23b1d57c50f86fe30f8cba6e807c2331d2fc2d35e2dc5f58c8c524740d939e7a62bc57e307eca2f278e85af83351b2b0d38c6acf7133e1100c6792719af66f87bf183c01a7491db9bbd7aeae5976fefd1d93ff001e1deb1bf6aef8bfe01d67c15ff089c3a6ddc1addd955b78618482d9f70294b0d560ae187c4a94d2470fa37ec31e13f1d691243e0ff8ad0dceb36e85278d195903753dbd457b9681a7f8a7f67df851a7f8535744be96cd9d619a35c02ddbdabf3abe1ef8a3e2dfc17f884fa8f86defad6eade2fb44b692938923c8ea0d7eacfc3df1245f1dbe0b69dadf89f4e16f36a1165b239494704d7055e65a367d352972a4cf9f4fc58f1ef8634ebdf1ac70dbea17370c7fd165e4a01e82b03c2be3cbdf885a6dfeb3e37d521b29e50d242aa76187db8e953fc68fd9faf5f564bab1f1a5e69a7a3ac64ec7519edd3a7f2ae33c29f036d751b86d22ebc6d35edb1706541f293ea2b2546f1b9edd19a74ee769e12f1b6bb71032daeaf25e5b5b49b0484e43007f5e95eb5a435e6ab6a2e0471e4952411c000f3fa571f7df0f2cfc3f1db695e17b7f2ad06dde1475231926bd03c2768f6b637166492580894f4c93c57898ac62a12e567355f79dd1f307ed77e39b7d0eda3d4ededdaf6fe457b7593cbfdcdba9c0fa66be3c4f8bfe3cfb19d31bc413430a36418485c83d01e39afd4df1bf80bc37e25b8bbf857abe9304d653e9bf6832b20320941e707af4af30d23f639f81ef008ee3c1e6565c82ecc79c7e35e9659994547467975a9baeee8fcf9b3f8a9e2ed16f4dcaeb0d76490cf0cca1d1c7bf18e95e8167a57c3cf8e90429a4dc5b786bc4c70b244ff2c33b9f41d073e95f66defec75f04191a383c2e208cae06d3d0e3ad79e7883fe09e9e16d6acef2fbe1d6b3716badc0864b580b1c3b01918f4e78af721984afb9854c15d6a78745fb26789349bb59751f146891fd999652a65197008e9cf7ae86498c7aadc5b4d02868044aae9cab7cc2a9c1e1cf11eb7e1abcd0b508a64f19f862754b9b76ddb9e156c3139ebc534ef8b50c3b94431c5b97fba770e2b8332acf10aece8c152f60f42eeb16867d46e1d25c671b867b05cd790f8a6ec9bd4d3dde4037317dcdc81dabd4af7515fed3ba9a2e7cb5623f0535c1ea36da49d24df5d40bf6dbd2ce676e7233c0e7a62bcaa7bd8f525ef21ba4e95a6e976b14d6c8d712cc3793276cf35ab2259dc5ec17b0e62920186c1c061dc1ac9d02db51be9e133a8114430bc6338e0575379a55bcdfbc78d6321792bdb15dbab5632b59987e0cd367d2fc5572e96c254725a2c7dd24f35f6efc29bc963d16d6de63893cb0cc07f2af8ab47bd7d1beddae4931736ce96f66a0e774ce70b9afb2fe1b9befeccb37d5913ed4d1297d8385c8ce38adf03a367998c4946e7b7e9f760db2af53568c8c483922b274a6063407b77ad379a203e56cfd6bd293b9e56e3a491b1d69a1b70ebd455796639caff002a74175167e63ce0d0b444d9dc6f9a771c9e869eb2a9ea6abc973065b8e7d6ab9b9523e5a6d5c4d5cd1328fe1fe7511273927bd51699f3f2fe74092723e6e9f4a121a45d2e0f00d31dc01d6abacfea79a59df2060d16b0491207746de8d83d8d68199ef2dc4670641c0c56423301c8fc6a48af25b59448a540ce307ae28262ae2b4c207f29c1de3a8a70bd8c0e9deaceb16a97023d42cd7cc564cc8579c13f4ac70e8582b700d473abd8a7134c4f91902b416dfecf65f6891f12483201f4aa5a159cb24b24d70079517393d31516a97f25e5f89036221f2201d2b44f5336992099b38cd588e72060f154836d1cd28973cd0ca4ec698b871d3a63d6a39ae7e52075a823b8e9c74a65c36159bd452b157394f14b33e76be081c935f0e7c7596f0ea7ac2a3ef70095fe95f69f8ba49046e14e090403eb5f16fc55b1b9baf175e69f7321db346648f03ef05e48ae3c636a27760a3796a60f86f49874df0a5968af37d9e39879f727bc8c79c1a76aa6d6dd90c41cc41480d8e3a56a69f6acda6c2d7700951170573e9dab57c4da5db6a1e188edf4c58ade61f3045c64e2bc8e7773dc8d33cb6d9e0b3d49a6b694c885b0dbfb135dae9d260825f24120fd0f22b93b36b58e592defada232a90924657ef0ce2b7fc3f1b4705c296184b931a8ea40c02334e5aab949d8dcbe666d42d2543f32c40f5ed939afa17e1b78a344f0ff00860aea5af4765196f34973c93d6be75ba9a04d42d90c84621c93f89e2bd2743f85761f14fc37abd8b4ed6d32c0bf6690b10010054461a9b735d58f55f10f893c0df10fc1fae787b45d7a2d56e5aca6956238243852463f1afcd5d6e2d534bd4ae74fbadf1347230c679ea78afbd7e077c19b3f85d35ddede98669c5bba8937641183ef5f13fc5abd8aff00e20eb1240ca545c305d9d3835eee5f0bc95cf171b412f790ba54f21f0bdf8dc58e47393f29ed5d47c3bf1978eb529ed345b0175ac5b58e19902963129edc5721a7b797e17be645c92ca1bfa57dc9fb2df8134ef855f030fc4bd62de05bbd7ae552269107fab1f5aace3190c3411c5806d54b966dee06916165e2a8acf65da5aa5bdb46179f348e7f104d737f14fe2ae93f0f3448f40d335092fbc55aa956bfbaddb8c3b88ca8f4c7b57b1fc4dd1758b8d224f12787ac14dbc50a981513e52cca32d5e0f75f0a34eb1d2135ad4e65b8d4a7267b89a419647ea41cf415e750aaab2e647a388af2b68cf68f84be0ff873f17fc04de19f1040edac5ba89e392590ee908e48c9ff0038af4bd2e7f05f85bc13347a9f8a74ef0c43a58313c11ec0f281df3d4fe75f327c1ef8b3a6ea7e36823b5b6fddd948b6ae233cb82704f1d6b8ff008f1f057c67aefc53beb2d06d351d40ea4de6db5b1662aa0faf6ad648f2d4a4f562fed0bfb52786ee746bdf02fc3a53a8c7724adc5d4ea243c1eaa4f4fc2be7af07fc70f899e0688db68dafcb123ff04c0141cf4c62bdcffe1843e2c4da52dec834c8aedc122d4480c9903383835c87c22f821e1cbcf1eea3a0fc52b94b47d3a4f225b4670b86fef75e942845c5dcda150cd83f6b5f8a922359dd2e993a3af24d9a92c7d41c573de13fda27e22784fe22c3e3cb7b8b796e530ad6e61011e31d5707dabeb78bc05e05f02cc74ef0fd8683796f6ff705c2c4ee55ba72dc9eb5c6fc71f873f0d35af03dc6b5a95ce8ba3ea3640bac16ef1a48ff004dbcd72282d91d0a6d6a8d2d07e33fc37f8bdacdaeb3a54a9e18f134841bab777db0cc7b8e7debd3359696044b6493c89000fba320a9cff315f33fc0ef0b7c01f17e8bf60beba8e1d76261b0cd26c690e7f849efe9835ee1a8f85bc45f0eed6092d6f27d5b4724022662f240a7a153dc0eff005ab7149ea75d3ace0ae6fea1e2887c3be1d6d4e49552489b08c3ac8e0702bcff00c209a7fc55f1c59e93e2e87ed16bab332bc6e7ee0e991e95bda9e8c7c74eb797445ae8d61097ea374afd7a0ff0aea7f65af84d71e26f12dd78be4b19adf4bd21996d5981059bd47e55f5b84a546961b99ee7c5e698daf89aee0b6387f1d7fc13a7c351ea735c7823c693dbce1f7c31c87010f619c0aa7a27ecebaae9105c784fe26784d27791f726b6277c93d9b838fd2bed9f17f8f3c2fe14b3b0d3b59d323bafb731495ca61d39c673f4ab3a1687e02d5216161aa432a5c1dd12cf3799b49ed83d315e5ce9cd3e6e83c362e345f2c8fcd2d5bc349e0bd27c69e16918ca91fcd6f2939f3003906bc5ede62d182f09523d7bd7eadfc47f80df0cfc496d75a76bbe1f7f3ee5706e6d411b87e15f2df8bff600bdbb9e59fe1ff8bb6c5c98acae7eff001cf19aaa552fb9ea54af194743e558f509230a6390214fba578efd6b653c57abdef9736a3a95c5c35b6045e63e4281d3ad278ffe10fc47f85f7cf67e31f0ddcdbc4adb52e3692adcfaf4e715c70bd7497ca58df19eb8aec4a32473c66db3dcfe1bf8c66be7f131966cbcfa79041f65ad6f8453cb27823cd7239be1f4fbc2bcb3e1aea36d6da96a4d2b04492cd933d3e6c735e9bf06489be1d481b929a91c7be1abc4ce629d2d8f632a5fbdb9e977c866d2ac95c9d82ec90474ef5c3f8ec4367e74d24caa12d8b2063c9624003debb4bd12c9a2592a3e337470335c7f89ecf4c9f5777d72d16ea2b4b504231c8572c30c47b57c5d1f75bb9f553d8e27c19a5d908ee351d683b496f878e307e57249c03eb5de99d6fec45aeaf6a892901a0c0c045ea08c571d6f6da9ea1a849a5686a93413bab3b463818edf957ada786447a5d95bdc471131a8041c6f2df8f35ad5a9c91b9cee17383d6b497bad6749d66f67f365808b69254e1ca76cfaf15f5afc0bbeb836a6dad9008908552fc10074af9c759d0d66d7edacadc9b757282639fbb819e3f0af70fd9fb58bed4edeeefe5b529a6c578d1da9618694292bb89fc29e02b39554d1c38e8da0792f819a417114574c91c915c5da4a546429c3eeff00f5d79aea7753ea4d3b9d6a6bc113b2c71bbee8d70d8cf5f435de7c339de4b4df75335c5c4c6efe65195772adc8af9675b3f11fc0dab5f35ce93a9471c93bb00d1131ed2dd7f1af6f219284f51669879558dd1f507c2dd0ec757f0bdde9af02fda6f75382276c03988062715f7af84b41d13c2be1db0d234eb5b5b0852043c9119720724e7935f983f033f699d1748d72cecfc57a433451c8b233271c8e9dfdebd8fe28f86bf685f8b7ae0f11f81f5b6b7f0cdec61ad364dcc63d0e3a57b98ea9ccf43932ea7ecdea7df30de59ce18dbdfdbc9e57fac09206207bf35c878a3c71e06f0eca46abe34d3edae0b711b4a01c57cf7fb2cfc26f8b7f0f7c497b2f8fb5a6d42c6ee1e11a527692393f9d727f193f671f11f8cbc7d26b1a5ea452de4933e4bb1200ce7b579edbe87b8e0a4b43e9ff001cbe93f133e1bdb5fe87776fa925b39cb210fb41073d2bf36349f87d69ac7ed0b1783af76adadeea404a0ff741ce07d6befafd9c3e196b3f0c348bfd2752be33dadf46cb1c479dac7bf35f2cfc61f026b1f047e3969bf104b26a514977f6af21396404f5e9e95ebe0a57a6d23e4b3552a52b9fa2d6de06d06c3e199f04683689656cd6ed6cab1a85192a01735f12f833c11a5ea7f19b51f02dd81691786e3920816e084f35df25e419eb9e39afbb7e1f6bd63e31f0ce97e20b56cc3a85a79eca47dd6ee3f035f2e7ed91a2e9de12beb1f8dda05a15bad22610eaab08c34d011d71ec0578edc9d6d4d30b52f45e9a8df0cfc349747f031d226d51a28ad2e2e1a33f68c2b02ec40eb5c25cf88ac2cad5ad751bed3bf7539ca35c2124038af27f1ffed87f0bbc41a1b5868767ab070328bb4a8c91927afad78768775e22f883adc76be0bf0fea3721a40259594b05cf5ce4d7d5d0c4d3a74d731e06230d5aacdb8a3ed1f0ca784f59f112c89a85bbf9adc44932e323e86b3ff690f055ee85e27f08fc44874e2744b2b94378e8c1b09d33c135c76a1f053e2bfc1ad0ecbc6369a543e2679a442f636b20f3901c6783c7eb5cefc56fdadfc6ba8784ee3c13a97c1bbeb0601589b84f9540ef9acf118ca738d932f0b82ad09a934743f18f5df85fe36f8b9a31f055eb4971aec315998821c8c9f9abf407c19e1bb3f04f82b4cf0f40a3cbb3b65403d588cd7e52fecc7e22b5d7fe3369fe29d7b43fdce8f1e62484060849e49fa57eb268baad878a2ca0bab699591d4363a6de38e0d7cdcdb9367d1439eda9e39f14fc5da17877561a6eb3197b70a199f6eedb9e4d7976a7f1e3e07f86a169adaf227b91d1517e627fad759f136daea4f1b6b365aada2f96ec05bb38c8740315e4973f07bc13ac6a514d7da0a976932368c60573bace3ee9df0a8d4773bef869f15e1f8a3a9341a2e9f3796cc1509538c1e3f957d2ba5fc3e169696774f6d26f8e557c0049247ff5eb85f839f0b744f0e476f3f87c471671f281cff2afa534fb3716a9e6925877f7af171783fac3e639aae2651d0f973e3069a9a7f8cadaead9352fed2b843bbece8cdb54751c56ce8d142f66a27bb8ede62b9093b04908ef907915ea9e2cd32f22bf6d46145250e3cc2a0b004d7827c63f00f8bbc59abe99a8f85a45b6cca52ee72db7e41ed5e761a94e8d6e566d85a89ee741abb9487fd1e7b77504825641f8d6668f752d96a1f69b5dc241f74a30383f415c17c74b693c23f0ff00ec7a26a124fa92478df1b757ff00f5d7c85e17f881e3ad375487536d7b58d3f53b797708a71be2980ea383c67e95f614217499d9561cf1b9f5ef887c2ba5bfc5bbdf11416f109750d3a559cae012db79c81d79af8afc48cf65ac6a88ad9d8e08c9e387afb6ac7c4275cd4acef5a0549af34afb4499ebb8a649f6af85fc6c1a7bcd737ca6393ccc2b9e00c38a9c52b2b239a8ef633ee757bdf31d23856696f0150883711f2903a74eb49616114b6f6f16af6ade641180508e01c926aefc3bd4aeb5b86eadafcc56ad6c42195232778f635a1ac5ce9f6d335ac322c1b415692404b484f715c74d599d52764615cf89bec84d8c091a46384c004e07d292cf5cb8beb695a0b194ee0cac1a32063d738acf0f069da6dc3da209eeddc08f70e541efcd53d0ec353d5f53bad1b51f185ae9700c32bccc5548232474ae9a777a19dd9d4780f4db4d5bc450a6a2852c2ca5177320e773a1ca8fcebec3f01b33471c80ee1265bfdd1c63f4af917c2fa058697acc5a069be38b590dd9c34fcecc0f722beb8f00225adbc16b24eb249c2165e55801d6bab06ad23cbc5cba1ebda530f2bf002ae161c706b3f4a6ff0046697d0ed356da40bf366bd29ad4f32fd890b8c67154cffacc834af760606df5e9555e53f7c7ad2456dab2d3141d47e151b15ce5475aa8f74cbd89a635cb1c0e99ad231b99ca4917b73014d374cbf203d7d6a9fda4aff15491cd11cb330ad541456a4f3d873ca7a0fc299e6dc1230a719a7c177a44a183caece01e83a53e3b9d1d48324d2707a1147226b421d78bdc25bc9b3b76818a48e6590fef01760ca4463be781fceacaaf85ee27563753e4905f0a7a77addd1744f0e6a17f12d82dccff00312580c052a32a3278e4e2b0aed5385d9a52929aba3baf849e15b7bdd2b535d4502b5cc82231b0c98c0191f4ce4d72777f0e9edbc49776312398a26dcacdd304f35e99e19b8d2b469af6e6469617628664c820374078ae91af345f96ea478c9b8e431eadfd6bc2a55b9ea591bb8b68f0cf125a4ba6daad8d9c6c03105d8715cab07418c743d0d7b7f899bc237323aca70ea083b4735e7baa5bf82b2c7edd2a10781b4d7b30e87239d9d8e443ce5b731e2a65719e4f5ad8922f0a88ff00757ae49f515505b68614b24ccc7a8add46e877b8c42a31839a2761e51a526cc7fab2dc74c8aaf7328111033f8d2b14a491c478ba78c46e18e3038cfad7c8df18aed20f115acc01491372e7183835f5bf89edd2eb21ba0193f857c57f1ee692c7c55fbcbc8cacadb421049519c7615c98aa7789dd82a9ef15749d4a65b57db217df91265376d07f0aaf69ac4f1168678d9fca7e33c656b9bb57b8b585ef63d7621e912e72456e69772dbc5adec2d3acd179a0e30cad9af21c123de8cdb4ae4baa436d33fdbedad30c402ce07400f22b2ad6490ea0608a27d97770024993b41006493dab4dccf0c4e9e744803e4a1c92c0f6e2aee9f73a7d844f790a849235f356391328cdf966b29bd342d12df5abda6b117da9a2993ca1b24807a751f9d74b6ff177c4fe01f11dae9ba65ac66ce7814ca5880761033d7dab88d3fc4fa9f89b5592f2e8dbc6618fcb114431b7f0233de99f1026d3edfc4b60dabc2ccad6d11ceedb8181ef5ae1d5c7cdcba9def8cfe294965e19d5af34dd5995f508d953e7fbb9e081cd7c9cba7ea7217b996c6ed9e6667ded191bb27d48e6bec8f853f0dbc11f1a35b3a5ebb09834af20fd9268ba2caab9048faf5acef1f7ec91f17ed6f54f84f54b0d4b4a42cb092fb4ae3a6722bdcc3464973451e162b149cf95b3e63f0e41702f6cf4dbff0036082eae2359414ce4679fd2bf4d3c7b6fe1ab7f80de18d2ae2d6f63d26ce15f2cc311cc8c403903af5af9cfe0cfc00f883e1ef883a44fe32d274cbfb29650b2c61b7b21cf5e95f52fed35e27f13fc3db1d0b40f0f2dbdd452465d6078c6c4c630057c6f10e22552afb36561a9ebcc8aff00b3a6a965e22d16ff00c3d75fdaaf0088bdbfdba2653b7b6037d2be61fda03c737d16ada8783b4e47b7b669584f228219c0278e2bdbff0067cf8b5e20f1c78dad219595af2d032490ac5b4000e31c5735e3ef85b0eaff001866d57c6b181657b72e23820ee49e335df93cef4921d795b43e61f84fe203e19f15a359c5e4c73ca3610327839e6bf448ea9a37887c1963e2893518acafb4ed8d24c2450cd1ff0010f5e95f07fc7bd1349f04eb5069fa4db223c72177488e5940f5f4af7dfd95ef2c3c65a75ee8176d1c9f6bb47f2d66624ab81915edb8251bb39a364757e3efda87c1de02b5bd4f08ea7fda77d730954774e2ddfb9e4735f9efe3fd635ef137882ffc5335d5d4977a84a5de65257bd7d65a6feca9e37f19f8835306ff0049b248eecc6a2e65c12b9383b7191543e2dfecddaafc1ed2ad2efc5bf61bdb6b9936a4f68db954704f1d68a108f408bd6e7c85a72f8c35bba16ba7daea97f280159d0bb283e99ed5d85dfc09f8b9a8d8bdccbe16beb8263f314997765715f76fc28d5bf67ad13c1d1d8a6b5a05a3cf01174d719136f23e95e71ad78bbe15e931b3c9f102ded45b5cb2aec919da48f3c6001d2b8b134e6a7ee1ba9e963e19d4342f14f85ef546aba65c69f2c64796cc854e474c103d6bdafc01f16ff687d1ac2385f47d5357d2de32a827b766ca11d89153fed11f19fc05e29d1acfc3fe0eb737973677024fb64d1ed12007207ffaebb9f86bfb60782eefc2767e10f1a68f26997167b562bd85032823d7bd557a753d9dec6919df43a7f81fae2fc5a09e02d659fc2faf25e0702e01884b093f32f3d7dbeb5fa4be09f0be95e0af0e5b786f4f842431439326dff58c072def935f0abe9bf0e3e3159c674ff16e8f0ea10c425b2d4229c4132381c6ecd7a77ecc7f1abe203b6abf0ebc75736bac47a33186df51867572cb8c03d7d2aa862aa49284cf3abe1211bd446c7c76d3a7d72c5f50d294b4ba65c92cbd72b9c9acbf8510cb77e2ed19b4ddad149f3cd193d0f7fd6bb5d26e6defefefac5d0979e46dd1ca39619edebc56a7c3ff0009685a1f8e639b4f89d1da3276b0c04241afaa85483c39f1ee9ce589d4f6558ede1db2ed8cc63018151d6b37c41a6d85da2dcd9dbc692021b72800e3bf4ae7fc5fe298349b8b7d0e37008ccb70e0f213a9fe754740f135cea127da2388a5aafca7cceebd335e127667d446925031be2efc3bb2f8a9f0f357f0aa47035f3c05ada4750583af2003d79afc82f1a787b59f02788f51f0d7892c9adb51b09190ee180eb9e1857ed25d6a06c2e4b8809864198d947539af933f6f2f811a678d7c267e2a685642df57d3941ba3b789231dce056f1a8d239d4d2958fcea8bc43750cadf658d8ee521b03b9afa0be01dcddafc3a459d07cfa8f39ff7ab8bd2fe10bc7f085be275cf89b4f6692768d74dddb66280f5c115df7c1765ff0084022548c95fed0e38c75615e7e69513a5a9efe54ef347452eafaacb6af19ba8638ede5966443f7d80249c773597b6f358ba9f505b59160bd89110caa41601813d6a0d13c41ac687e344d32016d736b7d76d1969632ed0a96c1e833f5cd7ae78c62d0fc336113cd1b5d49291fe94ab8861cfd067f4af8c7249e87d533899354b3f0c08e2d0f4f4866741be5206173c13572c7c5ee2fb6bc53dcc81032388cb6e63d871d2a8caba6cbadd9dddd5ca5d5a7f1346adb09ec0e7deb0b55d7f5bb8bd9b5d8ee134946b9365122a12a883187e077acea4b997291b68755711cbabea6a8f2b4334846771c3090f1d3e95f4f7c30d12c747b0d3fc3d6d38962d31019587f1bb727ebcd7cc5a3f86fc33a4423c457df162d2f753077f970c723316e0e0f1dabe9ff8391cefa75b6a577a8c1a88ba024df0f0ca08e320d6b95abd7b1e7661f01f37fc35b7b42f6a2c4f97047a8dc94c107080b103dfa57d49e23f0af856fed618b54d36d2702dd372bc20920f6af973e1d5a83a85a5a1222f2af27242743c3715e95f1a7f6bdd37e15ea09e134f020d4350789079ad2636ae38af4f2dbdf43d0959c5a28fc61fd907e10f8e7c01a9f8a7c1503697e22d2addee047180164031c1150fec15f10edf4df01f893c31e37d477ae8856505db2579605467a74a4f067ed251fc417b8f0ecbe197d1af2fe028987caca8460fe471f9d78e7c39d035b8351f895e1bd1955e5442fb0360b36e240cfe35efdf996a790a3284f43ecbf167c7df03f83ed20d7357b6bbfb15c8c42d00c823b74e9599e19fda3fe1978b55b50d0219d0a649170369cf7eb5e1de03f0eeadae78720b6f899af5ae802dd5628ad2f2dcc81d4630c0e6b07e23785f4785edadbe16eb12eafa89c2c915ada98d3df91ed58cd5b447a94a77dcfb5745f1e68bae5ac72e9aea565c043919cfe75e67f1c7c176de20f16e9d1dd85657b460ec402416181fad794e8be24d53c0e9e16f0dac12c9aaea110cdb272c1b1939ff00f557b358dc78a3c43e23b2d47c45a0cf616b6d0e249651c315e839f535d783ace936bb9f3d9eda67a3fc3cb98bc01e13d3345b872b0db5b940e78e1b19fe42b27e359f09f8a7c13aa699301729aa5898a245ead27201354bc4765fdbfa726a0b713c67ed2b0c7103f2841c9fcc5795fc43f1caf867e28685a45f2aa58436ab3e036415dc739cf07a56938293e6479583adcb689e5ff0a7f605f09d8c51eb3f18f5f4b35725ad2d1063e43c8c9c7f4af6a8fe02db6976725afc26f125ad8dab62363f651b8e38fbf9e7f2addd73f683f838f6c753d66fe2bc0088c5bc8a331e38e3ff00d555f4afda3be13df594b75617d1d9408a5a3b70406661d0003deb82ace6ddae7bd4b9628bd77ac5af8405b786750b9f3f518943493b370e7d6ac5a4de11f14b4d6dade8567a846f19598b4008551d7e6ed5e1be29f12dd78e2ee7f115c4f0e9f32b936f15c49b599474fcc5761a6f8bf46b7f83de20d1acfc47616fe23d42031c1124a0b2b13ea79fcaa29a939d999e22af2c7dd479ff00883e07f85bc13e3a93c7bf09bc5f616cacdba7d1a561fbee4e55707fce6bdffe16fc45b6bf814fd91ed658f097119fe06fc2bf38b51f097c48f0b5f25f6b4daac922b9952ea2919901ce6bdc7f674f8c13d878aa4d2bc577de741a9ec5fb49e02483800d7b73c05a9f344f9e79935539647dcbf103c1e9e3bf0f19ed2351a8db0f3227e8cc98e86bc8acf44bc482149b0b3a4db260dd57b1af60f0e7893cb636976acaa00db20618643820fe5585f14bc217e4bf8b3c1c1649638c3dcd98ce2451c92bef5f355a338ced63de8568ca09a3b7f86b68b04b0a2905578ce38cd7b32308e15e46457cddf077c6b0ea3681d8b2cca37189b86423a835ee9a76a8ad602f276050f5208c015c35314a85f98e5a8f9d8be2254934f9ca39c919c019271e95f3dfc48f1ae97e09f0fcfa9ea10eb2213237986288374fc735ed3aa7887c2b70cd18d7a1527208f3075fceb8bf11d9783354d3a5b1935eb42ce4fc934aa51b3db06bcea78fa6eb5e48eac345a3e43d57e387c31f1c4b0787e19af3cc91b2b25c425393db1ed57ec7c09f0faf6486f2ead0c86262494618c8e8791deb37e2ff00852f7c3ba8ca13c076d2043be1bdb3030ca7918c0f4ae4fc3726bd7912c845cdb453c810293c9c1e7e95f6586946ac1389ec464b92ccf58f106afa6f82bc65a45cb5ac9731eaf66b66110605ba18f863e95f16f8cda36d5b574572d6c640dd32492fd2be9ef8afae43a3c73f8aae9c4709b65b0b58cbe4ee202971e95f2d33c2f7b78bcb0dea4eee7209acb15168e6564c96f3c603468eda0b6b3b77b190159e2b71f3c581c1ce39aa0daec1a84b1dfdc2c7e4a02222cb96dbef53369d1cd75751451c718756380bc7dd35cbdbdc43f668e392273084688639f98139ae58a2e6d58bba9ce43b5ed90f30be189c606dedf90aadfd9e6ed7cd9d2d25888e1776581acd5b8d452068adcb32bb9fdd301903d2ade850081a64b9808322e4649e3b9ad92488e6d0ea3c39a669f7de4d95ada4715f0757550c7e6c1e83bd7d7bf0e3ecdf6187c9662e800707a0618cd7c50353b9d3ee61d434a9425d585d433a9e0ee8830dcbf957d95e04d4e3b8856eec0a086e504a401c862064577e161a9e4e37b9ec7a749301b47dc232455892760700f4ac8d26e2574043718c11571e74dc439c115dee16773ce4c9269c8e73fa5406e95b8cf27da9b3caafc29fc6ab93b06e34946e372e8583213e9f9534b5546ba38fbf8f5a81f51d846e2769ce4f600679ad63a2b98c9b7a1a2b1f9b22ab1c649cfeb513fd8e1b79ef353bbfb1db40c17ce61956241e00cd32c6deef57786186658e3b96da25cf51dff4fe75e75f10bc4c64f14ddd8bcc9fd8be0cb3fb75ec20fcb747276e7f106bc4cc71fcb250833b70d809567a9dbc9aa6816f6936ac975359d895cc735daec333770abe9e99ac683c73a15f4a20d3f558a490ff000907fc2b3ff67778fe3cdaddf8b7c5d7119b5f3592caccafc90c6b8db81f4af656f87de00d1c1b88346b6691470563c1cd4e1b15562fde3de870c7b4691e7ebabcf26d8a38f731ea6307047d715d259788ef869163a258dd5c69f3b5f6e91961dde62952719ed5575fd7e1d2b2348d2add3670a4ae6b8cf0e78f7c43ad78e2df496851206b6b970028e5d636c7d2af1f897529d91e84b8456169fb56cf7bbdb9d56cf4bb79a512b8b9b98d6570e0064556209cfe9587e25f18ea1a37886d353491e6b2b9883dbc5d90a9c30f4eb8c5705e31f16eab3fc1d8e49ae6637769a8f96aaaf86385e074e7a9cfe15e2de2df8fde30b1d4348f0d25940ad6769e6b48c339dcd9fe55e0e5d36aaea79585c12c555f6313ea2f136ad7529875ab077686e14348a7aab7715cbde6a323967bb96358c9fbced835e61e0cfda52e55e2d375fd2e39d663b73d0024d6c6b5f1afe135fdd3693e2cf0b5f438fe28e6daa47e02be979da3d09f08568be63d260d299e06b88ef2d5e3442edb2e03903e82a9c7711ee8cdadc473073d41c123b9c57995e78ffe16f86f4a7f16fc3bd79bcdb704be9d72c49950751c9f4ab3a07c53f0bebf2695e24f0ebadacdafc6d04b1ca414b165e4900f738c0fad7255c6ca8b4d9e5e2f26961d6a7a7b5c4cae52397a1eb8a249a69233be556c0e955edaf2daeacfed31a39894ec2eca4313ebd7b9e945c1f29005eacbb87d0d7ab86af1c4c6eb73e7ead3f66ec73fae483ca71919e71cf1f4af94fe2869d62fe217bebeb78e525b626ee99f5cd7d27e2e9e54b491864f07bd7c99f12b5c5baf134963e6936d6519777ec1c8240f7e714b189c60756097bd6393bad3ac2694cba7c4ab26fdbcf407351a5f5d998804158c796cc073561859c966f3acae7780102f0431ef5485bdc69d6825908d801dcd9ea4f4e2bc1936f73e81592246be88365a71e6021b0793f4352c5e335d3e536d6361bee5a400c92a6e8d41038ae7219a01348d30265255bf0cf5adbd38c376f7461dac8655d84807f8466a5c74bb348bb9ab697f6f7bab35ec9616d05f345fbc681b28d83c1a93c5da0e95af7896d6e75b6693cbb58d4420e32702a1b08e2b6bb5f2a345ca00d81d79eb5e8d37837c27abda378b35cd4e74b8b6b71e5db47c162ab5d997d075a7ca8e6c7e223429dd9b7f02f5cb57f1f691a268f2adad869d6f279cc8b9dc421e2be87d4754b2874449f48bd134c92e5a3924d8704f35f2ff00ecd7378666d76fb51d1a590986de63279873b198605755af8d7f5c7f274032c979b8c5e5ab60364f5e2bee70f84a7428b723f3cc6626a54ab789f49e933448b6faff00d826f36101f36a0499e3f4ae37e3ef88fc2fe2a874dd67c4875cb396d54c685022ee1df209e2b5be157c36f1a49a459e93aededf5bdbcdcca6ddcab01e993cd6f78c3e137eceb757c344f16f8a75196f22505d25bc6ca7d79afc6388f1509635a81f6994c652a69c91e13f06752f871e07f140f14687ff0009009dd88696e157ca6cfb8af4bf8efe31d3afb4583c45a6da799aa3a131c7129db138e8ecddabb9f0dfc34fd9bf48d266d334bf115b4d6d30e04d7809461d0faf5ae33e2ee8fa3c5e063e14f086a16da83dc4bb24b88183158cf1827af4aefc96ba564cd31949a7747c2df106f75df10cd737d2c2649dc969ef0721c8ec33ef5eb7fb280bad3af23d4def1619e01bd03b6d0c476fcabd1b40f82bf0e6fbe15f8964d4aeaf62bfd26276fb434abb0b8e8a07d78af8eacfc5fae691aa2e876da84d144d3ec46076ee00faf6afac97ef23a1c1b1fa4be31f19f87fc3dadd9f8c65942dadcc04dd456a37b19473f4af967e3b7c70f107c4fd41edee4c563a3da315b589989671d0311ea6bdbbe1835b78ebe0d6ada7473e9f15ed944a791be53c1c9c9e95f354be037d535d4b098f99772dc08235e7032719a9a34553774253d6c78578874ebc9ee6491526da4e50a82c4fe02b9f9fc1de2fbc267ff84735794761f656c37e75fa85e03f821e02f02e92f1ddf87a0d635d8555a59aebe650c40202a01d8565f8bf47d463b9135c9874cb5d85d54c691a28c74e99e95957c57249248da0afb9f97773617366ff0067beb59eda56f944534454eee9c67debdf3e18fec57e31f1ee8d06b1a96ad0e950ce46c468cbbf3d091915a1fb4e78e3c03aa9b1d13408ed6e75bb4977cb7512285dc0e79c56a7c2dfdb2aff00c1965fd9fe22d31ee424413cd85bd318c023ad4cb17392b58d9248e5bc4dfb267c43f03ea33d9d9f89a19ee6dcfc891b3c4ce3b63b5647807c75f12fe0478b8cf7ba6ddab3ba9ba8677622540792bea715ec7f10ff006b8f869e3b4b6d4858eaf677f1c216491190e58743d2bcfbe21fed25e15f1a5a78663b7f0919eeb449c34f753100dc440f438ebc5631e694aed04fde563ed6f0cfc70f007c4dd02cb5cf076a9f66d7e28c196c2e50a4b91d40cf515d0f807e296b971f11ec74cd7e08616b98480532492335e61e1bf147c14f8dfa2e9fac783349d2f41d6b4e8903476ede5cdb9460e79e79f6adbd43c3fae5878f7c17e20b28da5b5552972e06369e739f5e6bd9c3d74e1c8cf9bc4d074eaf3247ac5dcb71aef8d352b873b540f2979ce3b5741a4dcdceb17f6fe13d2772d940435cdc28cf4ea335e603c58b06bba858adc1fb7ddce1218d482c493f4aea6f7c6f73e074b6f0af86e483ce90fda357bd61b96351cedfae7deb3ae92d8f468d4538d91ea5e248a0fb12cef7a96363a77cbe7c9c063ebcf5ac5d60e87e20f0a5ee8f7ba82de5adfdb98d1b67ca490403cd79cdcf88ef7e27c536b5e20bd7b3f0b690311c4a36fdb25ec7b66b5fc1daedbdf41748b6863b431010a9ed8e0633554a175a9e3e227ecaa5d9f9cffb40f996daff00fc21b6da443a4ae832347ba363b6e1492436de0720d743f0721962f05c313dcaf37e09078fe2e95ee9fb45fecd7e23f883e3ab3f10f87a282de2b9b55170ce0919008cd7037ff0a354f84b6363e17d5ae96e659674b8f3178183cfd6bc7cdeac210e4ea7d5649194fde452d2bc41ff0008d59df5ee8d05841a919a50ef7485da4e4f03ff00adeb5349e3e97c4fa6c9a7fd81ec6628a6e60b8e509cfde4ee055cd534ad3e7b4b1ba7b0538bb2a580fbc09ef5cf7899a083c4b7566b9def6b1baa28c90a1867f4af9251e6d51f58d686acb2c4fa70b5448bcb550184639c8e847e755f498eeee6de4b237164cf18dee2e872549e31ea6b1a16d42f350f3bc3974218edc73e7c780cc7a8f7ad38f43d66faf6df53d5e18c79472ef0646f00f4f4ace4acee677573b0f0c5b786b4abcf2757d1ad559d4486455e39fa8afa33e12da5ae9b295b581628a701a32adc32119047e15f395e47a5e63324a425d8f2c6ee91ae30057b4fece3e226b9f0abd95faf9d7da45d35a231e77c60e14fe55a65535f593831eaf03c2bc0d785b5f85550826f27218f4c00c2bb8f8eff0006b46f1ff8fe16bb8e2fb5dcd8c6612cc546e00e3a1f5ae0fc01113aec3237062b9b894213f7f68627f3c55ff18fc6bd53e22892fbfe11c9348974c3fe89a82646e68ce029f63d2bdbc9d5d5cf42cb534fe1f7ecff00e28f0178ab4cd4754bab3fb3a487a3973803fdae6921f0ca7837e2478bbc55a60176656491ecc4b8dca3a9eb59fa2fed197fe2a9adadb55b009770a08dcedc0c8eadf8ff004aebb42f0fd96abbbc4d6d6b70b712cade7b863875c74af6a574c54e8c66f53dda5f13681e24f86da6f885743d2ef0241b1e39e25792361c15e79ebd2b07c39e22d3960babd7d374ad2a2894ed31c2a8781d722be30f881a97c66f8737d7d73a349712e9773334b15ba92c141fa573fe14d63e33fc5cbb4d32779ed2c89daee091d7af4350eeefa19ca3c92d0fa87f6789a3f1efed03ab78f753995748d14b5bd9bb8caefce06dfc6beaaf1e49a92f86df51659353092ef302ae008fd781db8af14fd9fbe1ac1a26936b618ff40b150267230679c7f5cd7b76abfda7696970af766130c4248d1b8546ce029ec73f95551dcf9ccc939e8796681e215d4f5286eadf517fb14304dfe892ae1bcd3803f4e9f5af1ff8d3a08bed42efc54c1de4b2b3076e0f407ee8fd7f3af65bed5aced24bbb74b68e7d5ef19570aa32a4e72063fa7ad6f7883c2f3d87c2dd5b51f15e916f2082c6416ca806e2597396ee79aed6d247851a6e2f43e22f8f7f01b51d53c15a2fc59f03dc32c37ba74735c59abe0071c31c7d45707f03bc3d268be19d43e2f78cad8dcc560c45841212236907404743cd7d2dfb3378c74cf1d7c2ab8f086b2a25bad1aeee2d65858e48899c91f903fa571dfb417846e355d5fc33fb3b7c3180c66f889ee0a0e23cf249ec38ae292573e96846f4d5cf923e2c7c69f167c45d6649279d226b62422d98281573c743d857056b75e238ee16e56ef537933956577cff003afd10b0fd99fc0fe0fd26decf44f0ea6ab736c9b6eeea44dd9900f9854137c3a431620f075bdbc5d0b08803f5e94e2ada9d5430bed9ea7c8de12f8ede3cf095a9b5d46fa6beb3180f15eaefc2f438cf4e2bbfd23c4be10f1a186ff4122caea56f3248633802407823ea735ee763f043c2fa84d9d774a8a6b49fe56658c7c848f615f38fc5cf86c3f670f8b3a5eb9a5a1bcf0fddb2cbb3a82a5be65af4f0f8d74dda47879c64b1f8a07dbdf047e271f12e8b0e9d753adc6a7a5a88a75dd96641d0fbf15f43f8575d17e23881dd1af2a76f2a7fc2bc07e1efc10f066b09a37c63f8577971a6dd6a369e65d59093292ff7b8e95d6ff6d6a0b3ad969e65df3c9b4852576e3839f4fc6b87309c22bda9cf94b7f054e869fc4bf0cea5a7eb8be30f87f3450dd16db7d63bb11ce0f52a3b1ad9b3f1f6ad63e1896db508ad56e1222446f73ce48e475ae4f4cd3bc49ab6a56e2fbc2c928ba6210c97646e03393f7bd2a9f8d7c03a7e8620b83f0eace696ee710877b82e3273fed7ad7c063f11eda7647bf1a716f54785f8abe2feb6354b9b530e9b03876e7cf39c67af5ac6d3bc4d71e21bc8a1d635dd398b3f11c776ca428c7bd74ff117e17dfe9773717717c2ad1a710488b24acc0ed2fd3bd62cdf0a3c7fa6d94bae5afc2bf0b3c104227002296c1e9ef5cf0a09b4ceca6a0b43d67fe126d3dac2dace7d5a316f1c6150897cce8307935cb789afac74f57d52df73dbc10493aba7f1100e38aceb1d1be299f0e69da8db7c2fd064b1ba6d8c2203f77d8eee78fc6b3fe35dc6bbf0e7419b55d6fc389668d66c91c3192636ca9c81dbad7d6e538cbb54919635f242f13e2bf11fc53f13f8935995355d667b9b749f16f1337caa0b607e55dddb2b091831e5e24919bbe4b00057a97ecc1fb24f83be29686bf133c4da8f9b6f399251628784719209f4c115e79ad594361e21d4ecad1556de09844809e768718af7b1f0e582679782aeeb4da2acd332df3ed7c7041ffbe48af37d46ee7d02fa336f3936f33be50e480c4f5f6af42bc212e9dc7f915c2f8a6de29ed98f528c596bc9a4ae7a537664ba3f9b3ea16f29bf0ea49dc01e726baebbb58ad1177365dcfcbcfdec9af3cd3754b79ecd6c2c6cd60ba1cb4ac7ad743a66af69a743737baedf09ae6de33e5420e79ed5b72d8cd49a64053fb475c6b3b594466dd76b8cf041ea3debec0f85ea916976c88c59046a1715f22780b45d475ad661d4628c9967667c631f293922bebef868b24367122614a0da4115e960f73cfc6ea8f67d1a422db8241239157a5c7de6ea7ad66e9720108691c67d054f35c1273d87415e84cf2d133952b80707ad53334a37aef07d054725d16c0e98151066d8ce49e3a5424098b8592325e401f38c0352e8fa7b6a7a80b466fdcc23cf914ff1ede02febfa566cac483b93a724e715d3fc3cbb877eaa6558d8208d54b919c9c9c0cfa9158661370a5a1a61d27515cb1e17b09a2f121b8bf500c626fb340b8f2e152848e3d49c6335f3b7c41d3f58bcd3be28243006b8934d8250aa704a8797774f4f9735eeda36b2a9addf9b976def30900ce368518c7e20fe95c3f8bb4f87c3df1205cc9096b0d7ad9acee198fca2198641fc1857c4d4937539a47d9fb38c3965138ffd8935c16de1e6d3849f328c18fd18d7d61337991e31d7dabe28f81093fc37f8cf7fe07bf8cc652e64f2c371ba36f991bf22315f699624026bd8a53734ac7d8d0a909414a2729aee8f04f337cbf33678ed5cb689a159e99e228269632669e1bb488a9c15222620d7a55cc31cbf33280403838e6b89b8ba8ecb5db2b99464c539503d9e375fe669575ee5d9a636bfb4c3c9238ff13f87effc39f0cacb4fd4c5f493ea7aabbdbcd17cccbb80e0f18e838fc6bc37e22e893e97f10858ce6599d34e872f2afcc73bbd062bed5f89168e53c11a7413b5bacb7684a85c8720127f2feb5f2dfc6a796fbe2eead21973f6748e16518c6416c579997ff12e7c564b071c65ce17fb158441d49dcbcafa835b735ac5e20d192696356bbb61839032d8ed4f8d005393c01505abfd8ae7ed492600c92bd8d7d12bb3f55a538a86a79af8b2136e183a949002000a383f95697801259b49d1da40ea65d5d7ecf807e761cfe47bd33e27798f7d0bdb45e6fdb6458e355e7e76381fad7b3f87fe1f69da23e8169adb4d670e8d0833dc221212e1c10a4f181cd78d994ad24933e473c9d193e547ab5e6b5aa7990cc8eecf10532db81b54818c81fe7bd6a1bd57b359554832e5c0273b73dbf0ae2340b8bfbef1e5a6970ea5f6a5b39017b81c8607819aedb566b43ab6a505a24616023254f524727d3ad76e5ae54ecd1f0798e1a9c237470de31baf32dde13c123239af8bfe2b8369a96a3a88ba620b12615e338e99afb1fc5459c6e58cb82b838af90be2ae8733eb976acd88e7620a93eb5f438d8f352573c6c13b4cccd16e96fad6d7c819322065ec38e4d5ff00145f79da7247710793223e48518c815c6786356b08b4fb9f0f6a5746cef34edc6d24dd8dd8ce2a49f56989496f2e56e61276c819b2c45780a9dd9eea7a14ee9ee9af1638e553e7606ec738aeb74544b0b558628492cc4b13eb5c65928b9d49eeedd592143f206ed5d8e9b24f2a6ef3b80689a49171958d585d96f63561c32fa743dabb7d622d474ef065c78832a6d6280c6ccdd43118ae11664fb6a0671918aeabe24dfcf27c18934cb72449777181b7ef10315e9e46d7b6bb3ccce20e74d58bbfb2e4074af08eb5ac08033decfb064704135e89e17f17a7837575bfbab28ed89918995cee1c838ea71599fb3ee8737fc2bbd27461a734ef71282f10182fcf2335ed975e01b14ba87481f0e6c6f0c9832433cdb9801d4f5e00ae9ce73c861d3a68f1f099646b59b32bc19f137e25deeb6daf695ad5b9b0cb016f35ca853e9c605795fc5df1378c9fc4fa96a1147a3996f136cc5a60d8f60735ed7a27c23f0ff8884f3683f0d345fdc485240b70400c3b75ae5af3e15df6a7ab6a9a643f0a3462da605662cd9e0f4e49afca6acbeb38973923ec70dc9423c8cf97f476d7f52bff00b2dc5c69f026ec0097241f7e86beb0f80ba6f861b4bbcf0a6a93c705d5ea9c5c09cb72013deb99f0f7c28d6756f10cda0da7c26f0ddb4f0012092445c9c8cfad768fe05f8c9e19d6e3d1345f057862232c24c73c68bc920f1f5af430d254a6999623964b43c8be2ff8a21d13ed1e0bf076a7e746f3ecbc21bfd7907007e75f3ccde01d7b5ef1519e1416b0dae1e665e47d066be80f8fdf0ff56f0fe95a5ebdadf84d34bd59260d717103611ce79cf35b16175a0e9fe1e86e24b28d209edf73cc172371eb9afb8c3548d6a6940f12a2b743d43f6504f0d59edd29ec6d43dcc416569493bf1d4f3581fb45d8699078fe3b9f04dac568b6403493c006d6941cf1db22bc8bc31f1aecfc3dae4ba4f86ae91dae18c72dd28c98d33c85ff00eb57ad78d6ebc2f79e0bb3d4f4fd42233e0b4aef2618b1ea4e4fad6d4e94e2fde39f96cce6a6fda23c75a79f2c6ab6cd7c142ac82d90b703033c726bc47e29eb9f17fe21ddb5e6a5a86a72a9278c94420fb2e0575779f19be13781a17baba5b6bdbe539291e1ce6bcbbc7ffb64f88bc4564fa5f8774bb3d2ad08c07110f30fbe7a8aec785a7357668a6d238ad47c072e9c1ae7560b6ec412e59b04faf5e6b9eb96f0f5ac6425d2b6ce7039e6b9bd675fd7bc45334f7fa95c5c9739e5ce39f6aca1a7df3b1d90139ff64d2e4a74d0fdab3a27d47413b996690679231c546354d218600638e39ac81a4ea65706cdf1f4a8db4bbd886e36ce3db6d66dc1ec0aa5ceaf46f11c9a45f25de8bac4da6c91b6ef32272a491f435f57fc10fdb4bc4da15b0f0ff8f6da1d6f4d27f7776aa3cf8fb67df15f11343328cbc4e3d722a5b0d52ef4db959ed6e5d1938c29239a88c1735d0a569e8cfd1ff0f78acfc42f8a2fe27f095cbb595ac5bda468f1e57afe3e95e9be1bf0aeb1e34d56e2eae9a5b1f0fc4fe6decee4efbac74193efe95f0e7eceff00b4f9f875ad1d3bc476ab369b7c04775201ced2793f857dfd75f1cbe115af862c2f357f164169e1f745951558177239da6aa71bb31a74d424ec771a578623f145b9b986ccd97877468d85bc2c76a48c07df3ea7eb5e6ba67c4db11aeb6876c02c76b70564b841c633d2b80f891fb7f781ae2d1b44f04e8d737da7ac6614214aab7bf03bd78168ff00b4bfc4ebad6d6cfc21e16d321fb5bb7950ba2966e73cfad74e1927b9e4e330d3ad33f433c6be2ab5d3f4bd2af60c88ee0850ec78615f3bfc7cd661d77c45a74f09011628d4e33d463358371fb456bba87872c34af8af696f63776a498e38874c74fe55cb5ff8a2c3c511db6a1a7b97459d5509271b72315f1b9f45baada3edb208c614b95ee6dde395d16d05bb6f26e49da474c1ae0fe2559ddbea09abd84b25bdedb5a64b274751d41cd775a83b269b63205c6e9c93c71d6b9af18aa5d5faa31eb010dcf63c5787465747b951d8e36c357bbd52c62b8b9d463f31c0db1af1c8ea78af72f0d416f71e19b5f3268fcc11e5c92338af9dfc37a8e95e1ed5a7d3759d3239090c6d25238c9f5af40f0bc0f25c472ebbaedb59593925c4328c84eb8e3daaea41ca2631d59d2f8bb5cd36decd121896433ca238e30b8e9c123f1af6df807651dada48e8db56e255930473ea6be76bebfb6f1d78abec3e1ab57fec9d2408add997fd6b8ead9fad7d43f07745bdd2a24d3b538cfdac2abef1e8466b1caa17c4bb1c58e9a503e76f00cbe65f79bb89f2af2e036de58a90c1b1f874aadf16bc39e1fb0f0f19bc1de17f15daea771328867bc464b663d49ebcfe552fc3c629a898d326596e6e3ca2071bbe6c67f1af4cd63c25f112eac1751f897ab5b3da4055ad205900554ec7f2af7b27b23b64ee8f09f066833e9ad1ea5ac087eda462690302a70327f5356bc1bfb447d8fc5ba8785351d44456825db6fb4fcb91fa5739f1a7c5ba4691a26a13e9133a44d32dbdb9c1192776fc7e2057ccd37dad9fed103b79c4eedc0f3eb9afb4c26169e263767cfe2f309e1aa58fd03f16f88227d1ee6e044970268f2390cbd319ac8f825ae4bfda29a2dbda04b8b997cb08a98ea7ad7cb9e00f8c1e20d31edf4af14473dc69e484729c9d878afd17f803e14f81b2e9107c47f096a571a84f6d855128da164ee39e339acb1980f63ac4ba79cc24bde3d92d1ecfc276561a1410a87891669ddb18df80493f8d6078c751bf9aeac6dd7c410982f2f222d994776c943cf719c7d2b2fc41e3cd254788478a07d9efef63f2acc3105369e84303d85799d978275d834f9357d4bc436b269b64df6c0de692c020240e9cf35e7461667157ad1a8ee8f4f9ad2d2e7e39687a3e9be5cab042d2dd05c1c1fc3dabdb3c65a3c1e23f0b6aba304004b0baa2fd057ceffb2f7dabc4fe32d67e23488eda6a47f67b77901dccd9e6bdf7c7be28d2bc23e15bfd7af6f21b5f2ada465591c296254f4f5ad63d8f365f11f941e15f185ffc20f8fbaf5ac7318ec65bef26e8670067bd7db1e0ad1ecb4c9af3e2c5cda4735e4911104f20c9588838ebd38af9bfc0bf01ae3e37786bc4bf11ad6fa14b9b9d6a478da73c3286afaffc21e1c0be0fb1d035678d25b6892392356f91c0001ebf4ae69c7deb9f4197fef52499f267c40f8bff0012dbc4f145a478811edd2e062cada2382a4807b63a57acfc56f15cbe17f86763a99631ea17b167cae8d9239af42f12d9fc2cf071fb7eb36d6368e88594aa6f6271e95f3efc63f8b7f09fc4e96967a7f89d65b8b69032892160a307a7e54fc8f7a10e45a1e4de07f8b7f1422d5ca41aa426cbcdcbdbce3e6606babfda8b46bdf88df092cfc476760d0cda7391320ea33debd0f46b3f06dfe9116b512e9b70e8818189704f7e957af6fb46f13785350d3b4755904e8636800fbac01f5aa8ad8e7c5527569b48f48fd87ae5aebf676f0fdca190c903cb0fcc4f6639c57616bfd932f88fc5905bc88d2db944f2c91fbb66ebdf8eb5c6fecf3abe91f0b3e07ded9eb3771db5ce8df68bd5858f2413915e05f023e3c5a5f789f5cd7f5bb9b803c4975239768d8a44771da73e9d2bcdceab2a787b33e6f03839c2abd0fb83c336d6c7c5fa827964c1a46984c3ce40253934df06f8a3c3be245d3ac65896e41998ee65c8f3076e6bc67c35f1c7486baf105947ad5bc573259f970dd4a1c2c840e9d38cd709e18f8cfa97807c2d7da85e1b5bb6174d259c76caecf1bfa9f97a1af848558ca7647b4e8b4cef74ff001cc577f1bbc67e0cd62ca197478ede4ba777395564076e73d2b2f4cf8f361a67812e643140f28be7b744c677db06edec2be7dbcf8fb7f73aceb5e236d2648afb5983c99c081ba64e7b7a1ae5effe32b4ba5da69569e10949b5de0b344407cf735dfa25a150a6d1f4df843e335a58f8ceff00c16764ba36bb18bdb4618c44c506547fc0b3d2a8fc76f1be9be35f805ab5d5f5a2cd75a246c8485c9c8e00af9e342f1e3beafa7eae3409bccb61e5f0870a3a9edeb5e8b25d49e32f0b41f0f74ab664baf166a20dc011b011421b9dc71dc575e575d53c541b27174dba4cecff0062ad1354d07e0fc77376a638b5312dc247cfc83048af95f5d10b78a35695a46245c371dbef57e82f8474ab3f0d68cda2d86cfb0dadb3c5160f70a4138edcd7e78eb9322f8a75653ff3d9be9f7ebeef32b4e0a513e7728bac434ca57d3c6971202dd7207e55c6ea0fe6abab1ee7ad74daa8ff004866ec7a7e55c9dec815d81ee4d797461dcfa0ad6e639dbcb24327caf827d09abda569404a081bd8f4c9eff8d473b297e00ae93c369097df37f0f3c0ade71b2d0c2fae877ff0f85dc1a8db436f1857c1098e303bd7d31e0c82186dd0e7321e49f7ef5f2ff80f5fb15f17c76773379676b2c4718c922be9cf0bdb4ea126f33728c1c57a1838e879b8b7a1e9960ea22ebef560ccb8e3f5acf8e694448562032286966c72b5d6d5d9e7dafb124d32a9c9e3f1a885c310403c1aa934849f9b34d41c9065c28191c50b41f28b7b3380a91be09e48f6ab1a2ebb1e9dada497114445cc6d02c8dc0898f21bd38c565dcdc46edf29ce0633554c51cec55a4c10323d6b3c451f6f1b11cce0f991d1f8934fbcd2ef935e494cb048479a4700e3bd6aeafa45878a7c21f67bb9116f194cd6b21192a3fbbf9ff5ae7348f145c5ccb0787af5125b7b9616e8edd10104ff004ad6f04dcb4ed77a03c9e6cb6d7be4447a8f2f249c62be7f198054a1aee7d565b8cfac53e59743c7fe2be9975a078a3c17f120e0dd095349d5641d4bc670a4ff00bc9b6beafb39c5d59453c7f70a839fc335e67fb5b7c1a9350f85d3f8b744d405ac1a5badf4b11382eca074fca93e0278ea7f177822cae2ed887da1777af1c56183d23667d765f5a32838a3d1f536f2a12dbb191d6bcdf5fd44c3341b955d12e6372fc640079fd2bb5f11de3889a1c8fafa57996eb7f1178a2cbc1f797f1d959dec9fbd9ddb1bb073b54fbd6d5fde81e956e58e1df31eb1ad7c56f00cf3786af752be7861b0924c332fcad26c18e7dbfad7c87e2df10daf887c75aeebb6ae258eeef9cc722364322f03a57d09f1e3e0cdccd6fa445a4a7976b66765b43d9f8e5c91d73c7e55f2aeb1a64de0ad6eeb4aba82389c396211c30193c9f6e735c780825267ca64d38cb18fb1bf35dee4e322b367bd48e16909e959e35b461b4b0391dbad73be26d55e2b793c9272470057adcc91fa354fddd3e74cee7e07786478e3e243ea37ec1ad3c3a3ce2929fddb4a7ee0e78e0915ee7e31d467d02d66834fbf6696542b75191be2b85278718c8ce7a57cc9f0b35ad4746d075195ed2f649755b9865596352131bb3824d7bbc9a3cf06a36fa5de4c24b89761284e3119c11d7deb8254635eadd9f9ae658b752b365bf0f5c7fc23ba3b6ad22c91de5c82db63525a407a0f5c8ae8f448ef60d13cd96e5ddee58cee2452240189c29cfa54474e823b912dd644b6c57ca897911e33963eb9e3f2ad57be47b77392cce792571935ebe1f0edb4d1f278ec54aa4ac729e21b87fb3793047c9ebc76af9b3e2ed944979e6e57786dc149e49f4afa53c42ae90ee5049c1c0039af9abe356a1a7d9441af389d9ff763fdaed5e9e2637a491cd836f9cf15d5f47b09ee9aea6899247e840efe9598b631a3632c7b60d753ada8974c5ba8c70987638e86b0236de03377af1ac96e7bd27748d2b09238d162d9c1e38ae82cb68c2a70a0e4d7396cc011c7d2b76c660b193dfa9ae6a89b1c1ea69dd1861d42138e1941fc6badbdf10dfac567e1cb1d360766024b9bb980f2a34239209f6ae32e47da6ee19164da5621c1e73ed5cffc4bd7759d2f52b7b286ed96d1edd1a58d7a95e335ae164e84ee8aab4bdbab33ef1fd8e5bc3dab5ede5c477a2e934e0635703e4cf438edc57b85c5fe9d6965e28d7e308f7514052df8e5727693fad7c61fb28fc648f45865d2ff00e1159b4fd264b63b6e9d7e56931c138e7ad7b0dd7c5bd2acf28babdadd2b21691635739f986074e6be4f39c47b4aed365e1b07ecb63daad7fb3bc01f0aad7538a2dd2dd4cb3c8e7219891d327deb2f4ff1a5a5c780bc53acbac716af24794523e6283ee9f53d2bcb3e34fc55d52ffc09a7b787f52b2b9b5609bac8ab8789877e9fd6bc665f8f77d6eb04575a55d0b98e036f33471131c838c579b4ddd9a4a9bbdd1ee1a17c75b18fe1a5d6bb79118b5fb29fecbbf6e3cc51d0faf4a8350fda0a6d6f4b896ce3d979a7462ee2743cb30192a71cfe15f370f8d76d6da53e9bff0008bc93e26329cc4dc93daa958fc4dbc96f26bd8bc273431ca4e15232460f15dc92b5c874d9f577c4af15e95f11fe0dddea1a9da29b9bb804cbb864a38193fad7ccd63712dcf82e6d212ceeae4a0240453b140f5c57a73f893cdf86ca26b478a26b7dbe5ac6776e238edc735e01a8fc74b1f875a66a5a3da0fb6dfdd82aaa9c08b3dce6beb3239a944f2f14b95d8f3bd4f57d3bc137d3cd211f6a72488c71b4e7bd717e2df8b9e2df12c6b67fda12dbdb47c2a46d8e3f0ae6f5fd52f35fd5e4beba9ccd2cedb8e338193d2ae695e1a91a6579c7eecf27d6bdd9d54ba1e7c6ef732a3b7b8baf9b123b39c92dce4d6d5af8455e3592793190095c66ba01690c0a1510003a6054b1b82bb4f0315c52c4cd4b4342a5ae9b676a8a8b18247722ae88e11ff2cd79f6148eb0c632241ef55cdd286c06ac9ce52776162f10a570b5098d7f8941a62dd03dea4f355864524e4b715b42bdd430c911430a73df15caea9a4884b3ac63073cf4aea65900e6a95cde58490cb05c9dac0120d74516deaca8c59c72c5e538c1e473cf4aec745f1e6a371a3bf87350769a1ce6dc31cec23ad72923a483e52480719a4b342972ae3823a57728a68a7a1dc417978502a948c0c7005743a1de3ff6b584af74f6804c88678c9dca0f048c74ae323b997e553d38c9adfb3bb0f142c08fdc37987b13822b3a8b915d194975b1f71f8b3f6578e6f0ce81e27f0578b97501a846ad37db892c09ebd735c9ea3e016f869616ba55d5c09eea4b8591f0300648c819af4df833f102d751f87da35c5cea68c90954f25f242e3b1ac7fda22e229bc4f633c006d916361b471cf35f3d99c54e9dd9e8e53371a8737a95e33e8fa7c7e50e66c67f1ae67c51298f5505947fa9cfe15a9248cfa6594849da2e38fc2b07c5f386be5914ff00cb1c1af97a31b367d3d4d55ce3b5cb5b1bd956531ab1191d3914dd13c38b7f2ec56da090319ed4930f9b193cd6ff0083602978ac064b3a815bcdf2a7739d2d4f55f0369b6de1eb6b68e289b257046c23a1eb5f4e7c3ab79673f697932650bb5fafcb8e07e55f38ea3afd9e9166c9704462031ab123b363f2afa5be19cb0cd6d6af6f3a4b13a28528d915792457b7bb3caccdf2ab23e37f87b3c90dface8bb991eedc1f4211c83f9e2bcfecfc73f107c7a2fd7c53af4ffd9f6970c9122b105c03c0f6af47f87912b5df96a3396bc03f15615f37a78f87872eafece58de409752b04cf0c735ec64f45b5647a18aaf1a2bde34be37e85a86b3a4e9474cb88feca93f94d029cb891ba703ae4039fa57bd7c1afd8ebe1ddc78323d47e24f8a65fed0bfb712410db202d0e7a039f6ae8ff00670fd9ff004ff167c2cbff008b5ab4a9a9eab7b26dd36d73ba3b720124b0cf5f4fc6ba1f0e689f12504faec3a044f1d9bf9261672ad2153d8118c57b12af570afdd3c59c2862a576cf1ef8c1fb24d9f83bc38dae7c2ed767d5a4814c93433c58703a7007b57d17fb357823fe115f85761e1cd42686d65bbb0fed4bd69011e4b904e3b77a4d3be20f883fe1251a3f883c1c9a7111234bb9772ba1ede84d751f102eadacbc29771dd6e845c86551100af2c63811a63a7ff5eb7a1994ebfbb339b1996c29c79a078b7c49f1868f1ea1a9785e3bababb8ede133cd295c800ff146df5ed59336bde201e1d3e088647b89eec20827de77bc6fd011eb8acad62f7c29f67d54f8b3519a3be31b3456da7a822d20fe15763d5b18cd777fb327872dbc5fe33d3b52bf679ed2c91ee049291bcedc6cddf8d6ad2b9e7c3dd563eb7f843e18b6f875f0f743f0dc70ed95d524b838cfccc39cfd2bf3effe0a39f127c5cff18ee3c1571ab5d5be9165631ca90c2c5449bc1e78fa57e962cd04567f6c9006476f979e98e057e7d7fc1417c2b6adf109fc4f7b0c722ea9a12ac0c47dd68d8e4fd79ad28d35ceafb1cd39b6f43dabf6386b0d33f66df0f5b9b78ddafe495ee0bb60050c7e63ef8adff1278baf66bc16b696e96b24ee638017380a0e14f1ed5e6df0fbc596bf087f659f02ebfa969cd7514aecd346a704ab3102b90f14fc61d3fc6be24b8b9d083c2b118bca8d4f284e38af3b1b092aaf9763e8f25a91868ccff14f8abcef10eaa1b558ae2e98980c97392aa4f07cb4eff9d79d788be12787e2d3ee35b8f595b8d4641e6158f60f98f4f933915e81e1ef87fe10f881a66b907892fe6d3755b7633db5ca37ef2039cf23bd79eddfecf7e038a697527f8e57f25ea1ca2c60e4fd4671fa54524dee7ad56bd5e6f751c8f87fc53aa5bcf2696975e4cd026dda8d8e99cf15d27c33f1a5f43e308ec5ae6406e64fef70e73c8f6cd6178af4ad0fc31a70bad3b32de1ca35c4a7e794e301bdb35ccfc2ad3fc43e2bf885a768fa3207bd790cbb8138500fb574a86ba12f1d2a51f7cfacfe221bdf157803c43159a8b0be96dcc52a16e4a20c718f5154be027c66f8416fe02b0f0ecba1e996faa69d6e23ba4ba8c665da304fe35d47c30f0c8f156afacc3af38966b353632468c76b11df15f2178f3e16788f41f8bb7de15d1ad645b89efc476bc101919b91c76c571e71954f1141247994f318b9bb1f7745f1bbe19c11f9765f080ea3232831b5b5ae55f1fceb03c49f12347bc844f6ff000eb52d250e5b68d381c13f8d5bf0f5dea5e06d1ecf448ef2d92ef4b8921919a153f311839fc78ae2bc61f17fe331b9974dfec7b6784f11cfe48da47afe55f9ee372f9e5eef23ddc254a7596a725e21f8ae966ec61d0a7daa490d2698aa7f9d72ff00f0bab51ba90f956b6b085e824d3873fad72de32f89de3769668ae21b35311f9f2bdfd2b3fc21a949e2a9d209e447ba958208e3503e63d29a6da3a674e313d6745f8abacde44b15b3e9226724041a69dc7f235ea3f0ff00c41e33b50755bcb2b59d5072cb69e5b460fb9ae7fe1ffc22b6d2e58f53d426115cc0d97cfdd0739c7e15ea5712e2ce6b05d45255ba1f722006dc71d857bf9264957133559ec7819be694e843911b9e13926bcd3dae65b7f256486438ce79da6bf3bbc44c57c5bab608dbe7b01ff7dd7e8de87e4d8e989a6a33168ede4033c9c6c3cd7e6f7891b1e28d581ed70c7f1df5f69985254e0a1d8f0f28a9ed6a73a28ea52b34ec3b03fd2b90d4251e6b924f04815d5df1c48ed9ce4f7fa5715a8393330cf5624e2bcca717b9eece57655ddb8e4fad75be0fb67bb13ed27eee00c77c572417a9aef7e1c47e6bb28f427f2ef5a4ada21415aece8bc2fe0eba9bc45697d3d96f921752183631d2bea5f098636e22932b80338fc2bc9fc316f1adfbb367098507be6bd7fc364c4b9503a62bd3a106a27898aa97958eb15cf96104c4280073c1a47906de67048f7aa133b4ac016c01c9aa6d750c72947cf1df35d2e0d9829234de507764f6e2a9466468dcc939500e40f6a8daeedf633eee838acd9b5153d1893d96b58517225c9f42f8785493e61624f7a8ae66408eaadb5ca9c30eb54d6e83a348d1328520707deaa9d4239648f6a2b65f61c9e47f8d54654e8a6e6c8e49cf6458b3be3617d633a8de05ca2b6793c9c7f235ea7e0df07492f8cb5bbc86fa2b0d3e058995a4603123ae7bd794a3b5beab613456fe7c62e9015ec320807f024577de25d1fc51a73cba65d5cb15bf8d65592338593ae149ec40af96cdf33a53f7607af9752ab4f467a17c41f2be26fc291e19b9d7a0b4b0b3bc921d5ae738062563d3279245797789b4eb1f84daa68de1ff0087b04b3e997d6d1491ab632095073c7e758df15935bbcf00432786a092d63b0bc8ed6f6dc312b724e0b39c73ce79fa5757a341fdb11e93e34d72e992489163b788c6401b540c62bc6c3d4b1f5380bd09ddb3465f11d86afa66957735d0482f668d2693a6dcb0c8ae43e239f85fa9ea53f87351f11be8da909c45a3cb1212bbcae558b678c91fad55f1159cd7a67d3fc3d04812097cc31153b0e1b20a9fad79578e6c354bf68e3d4accc6203b8bc919deac7a1538ed5d52a97563e8ea469d7a4dca67b8ea1e39f89dae7c36f0e78618423c41697f3e9cd79249856802a112f3ed5cc587c1ff0084b7d67ad2da78e7fb73c5d69034d7ad237ee8487a804fa1ae6b5cf121d4fe17e99a85ecd7b0496d772d846d082ad2008a4b1efe95e3b623c41a3d85d43a234f02debb34d39389581e809c73f8d65866e123e7b09828d3aae7164325b5cb6a4f630c4b24de6b222c27716c123b543a66973ea9e231a6ea1a4dd4c2d8eebc58cfcd0c7dc907daace857337812ea2f134f3abdf5ac8248edb87dfdfe6cd74f378a25f0d78920f8a9a4a25d69baa606b16e06597770e98f6c9aec94db47d4d7cc22b0decd33d4fc2fa6db7803c396ba17886da0d47482cb79a5dc2e37ccb9cec6fa66bb6d3fc33aa7883c57178966bfb69cdd800dbc4bf34310e401f4af2bf0df88ac7c4de1bb1d2e58a44fb1cf34d6f14edf347092485f5e9d2babf02788354d3f54874fd0de79f5ab887685652638a00c0b37d71d2b1854b54491f0b8c7cc9b3a8d46e565d4ee6e090b1190c6833c902981c30037e76f4e6b35eea39e694b46adfbc620eee73dff005a95642003d2bebb0d1fdda3e4a4f9a6ee56d7649a5562bd876af9a7e2bf86eef5ebe699ad8b880ee5c9ee0f5afa56fcb3c5807af7f6af2ef1b4291f98ca386c826b5ad1e689a537cad58f9ce4d36f0f87353b5b918209db8ed8e95c7da31580066e471935ea3ab4263b5d462193952c0d795c27e523d58e7f3af9e96951c59edc1de08d1b67f9873f5adcb460401bb39ae7a0f9467f2ad6b2971b467be2a24ac5a3737e2e9147f740cfe3589e3fd3af351f10d99b7b77995614ce149040c6456989512ed378246d18af53f0bf869efac22d5a78379906c5c0e5547435959b7647541a4b53e82f871e3cf00697f0d749d324f0ed8433416ea2612c7cbb81fd4d5a5f8d9e1fd1a7f20fc1eb1915f912a5a92187e55e212785bc47afa259e8f7b15bc16ed967907248e9fad77f6ff14354d265b4f09ea37b672df08c451cde42ed53c75cd78f8fe1bc5558baf4d187f6be1e8d4f64dea771ac7c72d3afad0a5afc237b78c8cf98b6791fd2bccb56f8c9650ce633e199a204f39d314ff5ab5aafc57f8cba25c5c68cd6b62fb46633f6618653d31c7a5792f8d7e29fc4ab4bc26fecf4ccb9e4f9607f4af96a4a50a9ecd9f494a14ead3e7475b2fc63d29de40ba7f94ddb7e9a00fe75afa27c4a1ab3c56367ac58dac9211f236980b37b601af2cf087882e3c65aa4765a944af33c810240981cf7e95b7f14fc5fe05f837a9c69a3db9bfd76d54302c7e48dfd0fd0d7b387a152ac92479f5e50a51d4f5a9fe36786fc0eccde38f19e99750c48cafa6a59057ce38ea78afcfbf8a1af69de2ef1d6a5ade896a61b5ba998c498e31d41aa1e34f1a6a9e35f115e6bfab94fb45dc859827000cd4de13d19aee56b999bf7639031c0afaccbf0b3c2ee7ce62ea46a4f425d1f426b645bab88892c3806ba48f608d46d0001534ea102a83f2a8c0f4aaaee3a7e95db39ddb472f28f9b66daa334c8bc21e696e2e028da3f1aa6583364ff003ac545b0b58490c86445f9886ee3b56f7863c2f26ad3e1d888bbb638ac4cb965001dbdcd75365e22fb069c2d2d21da71f7eaec2323c43611e9976d05bb165538dd54a29188033daad5edcbddb1790e49ef55176a83ea3a53e5b8d2b91dd4c96c0b4cdc572ba8dd8b9998c62b4f5195e594a3f2055016ca64cedef8c56b08db537842fa0dd2b4ad4b50765b0b39ae4a7de589326aec3a6ce97b1c4d6f24723b08c248a41dc781dabd27e0a7c44b6f873ac0bc974db7ba5623709a30c31dfad7d53e1cf117ece9f135e3bad7fc376b657c18485e2c27cc3041aaa9525047651c2a99f3f786ff0065df1f6a9ac58d9eb3343a569b73089bedb272bb4f4afa2bc17fb14fc28b648eeb5ef1bde6a6dd192de20138eb5ef3a46b7f0b75886d3498a48af2d23db12abbf2b8e057a5db683e1ad2e148f4ad32de3b691723e5c9e7f1af26be327b1e84705492d4f03b4fd95fc0b6c22b6f07f8b757b08d5c491c4e54a337e078ae57e3d787358f0c6bda6691ab482791238c798bc82a3a7e95ef9e27b09b4e82ee6d24b27976ed246ca48dac335f2af8bf5fd775f16fa8ebb7d35dce922c60b1e4004579d5eb4aa537733a7858d29de23ae5445a1d8060005bac633ce335c8f8c6511eae91061b4c40f1daba3b82d26976ec437371d1beb5c4f8c2573ad0046008702bc8a1b1ea3d8cab89a20e4e33815d5fc3d856eb53b6f980cbe4fa641e2b8b604e727a8aecfe1c4324da9429caec6dd91c67902b6af14e998adcf64d73c1afadea4b6e6059adaf628fcd1e8c38fe55f487c23d1a0d2b45b1b68ed447140bc00727007ad799f87f48124b12a4bcef419ef8c026bdebc11a7986085593e503047ad7a595e15461ce8f9fcc2ab73b1f04fc3587fe26b1dbbcdb144b72acded83935f20f8f858d878cb54b7b29fed11a5cb608ef93cd7d6de05024bb69b246e7b93ff8e935f3cdff00c38ba935cbff001b5be85757fe1fb29d8ea46304ec0c701bf035e9e415a309fbc75e7307289f48ff00c13dbe33cbe18d567f84fe2c6686d356ccda7190e70c011dfdabdffe39d9fc43d33c57a6de7c33b082586fad9fcc5790806446c1e01c722bf3db5dd3f50f075de89f133c23aa497ba5db4ab35b956cc901c8cc6d8f6f5f4afbcdbc7b71f18be1b7873c5de1bbeb0b4bcb2b421e249d44ad2e395233cf4f4afa0c5c2139dcf9ba52f673bb670be39f891f17be19c3a6ff00c2c9f0bdbcb06a6ca63b9b74dd24609c633d6b83f8bff1075b9ef2796cb589d34e8ad926884877794cea09c67a75af48d57c43f1e17c1775abebbf0e23d42c6d119e392e503b055cf201fcebe68f8b1aadc6bde0983c67a426db6d4edf12c4bd04c06197db9ed5e6d0a6955b23dcc562155a2ac69784750d3f54b7fecb6f17d888247f3dadfcb0d2dc3f270ee79c67debea8f809671785748bc96e576ddde2021d3855881048f6e2bf3abe1d6a76ba5debdcbb00d2864d9b0124918c7f857db9f0e3c6b7969e11b7bf8d04c2d93c89a3739c292303f4aefab151d8f1631723e9bd1bc7367a8ddcda59d55120b6412ca1ce046a7a67f238af08fdb6ed3c2ff11bc23a34fe17d5e1bdd574abd4b19238db24c721ce38ebc8ae07c3be387bef8842fb54c1d1f5bb95d3eee3424041cecfc8935b3aefecff00e25f05fc62b2ff00847e496fad5ee575182d181649232320b1e9c76fad4c26958e6a9071674dfb4c6911782ff667b0f0ef98a8fa359dbba293fc4cbbbfad7cadfb2d69da978fbc5be21d12ea592192f74d6bdb5931c890292b8fcabe8cfdafbc1bf153c6ba8787ad6e343b83a46a318fb52dae5915812029c71d2b88f8196b65a1fc4dd46c6085ac5ec2c7fb3e185976bc842e091deb4a9cb28dceacb9ca3577385d3be255c781be245dcfafdabaddc6e22b98e4fbb220e0e47d2babbff8b5f062c7517d72c741517a509dac72993ce7078ad3fda63e0d45e39b73e31d0d041ac42099d233feb001edeb5f14eaf65add8dfb5b5d413ab83b7054f515e67dad0fa696225048eefe25fc5083c41ae4f3585b00b7070147dd5f4c0ff0af6cfd836d6d13c77adf89b599543e9fa7ee8c3762735f33e93e18bc99a3bcba85f6823248af43f861e3c97c11f10e2d2e29d56df524104dcf4cf4cfe06bd0c2d3e69ab9e2e695a72a375b9fa47f0f6cb41d2ede4d6a0b52b2eb523ccee39cf3807f2af06fda80dbf86fe20f823e2725e456f0db5e46245c005c06e735dffc3af88769a9dd4fa5e8d245709a42c76eaea77212c01238e38cd7cb3fb7d78ae6d5be2758f82ed0b186c6d90148c9c6f201e83debd3c6ca9d28ab9f3d838d4ab3e547bc7c50f1fe9965a8c97ebb64b3d54095658cf62323a7bd7a37c15f1cfc3bd4f4232f8c354b048c028915c30ddedd79af8f3e0e7c23f8afe2db0b793c4a654d102e21372c41c63e50335e9fa8fc1e5f0dbc37173e1b6d6194ed30b31555ce307ae2be0f886b617110f33ee329c1568ead995f1b354f877abf89f52b3f0fc56115bc44c8b26fe24193c75ae33e165f683a4eb2350934f8e3b78aee376bc0d954001247a56c7c40f85edabdbdbdcc1e09b3d3d0314fddc830724601e7d6b2741f87571369da9f82757d29ec221894cd1e705718c835f3386842764cf6eb4674d6a7b5f857c696be22b7be68af2496def7509c232b7182d95fd2bda7c39a1da68b04726a3b549455058739238fcebc17c27f02efe4f87fa2e95e15d6e436b04f24ef77013e62b0e88df8fad7b4f85edb52d5347b01e255963b882011ccaf9dccc80004fe55fa6e518ac351a51a5167e719b616bceb3958eb60b5315d4b371b63b7907d72a706bf363c4603f8ab525fef5cbffe855fa462f624b7b8c3e716f20e87b21afcd5f11dc21f136a251c1633be39f46a9cd671d3959d593274dd9a286af1942fcf7f5ed8ae2ef06d90939e49c575faa4c5a5209ff38ae62fe35d85875c9af2a949b3de9eb2b9925dc9c0e95e8bf0c1bf7aebdc0c0c7bf5af39dc01fa57a37c2c01af189e9b73fa9ab92bb40b667bef85add25d424dc380f9fad7a9e98238502af7af2df0bb917d2607f19cfe75e8fa6cec493c1c0e86be8f0d4af047cf62a5ef1ba6558e30fc127800d654d2f9d2be231c75fcaa2babccf0ea40041e3a75a8e3b0d6355bb906916ad712311e6383f246b81c93d052ab569d15efb33827376432e278c405998a28e39152699a4deeb8ac74fb3927f2f3b980c2ae3deacdbda693a45c0461ff00090dfdbfccf142dfe8d09f591871f99ae67c61f14124f3b4ed43c421c9f9534ed34f970a9c742cbd7f3af98c7711285e34cf6305807525ef9af7c74bd0516d754d5967b92db8db427240ebc9fa5733adf8ce3d343be8da6c50c81836e9be7271f53815c4a5ef897c5573f61f0d6952908fb4f909c267fbce3f5ae9e5f831ae5e5b2437de21b63a9395616cb282db72370ebe9fcabe5eae6988aef57a1ecbc251a4b430efbc63e22d56fade38350c497322ac6917f7f3c74e95f6e785341d361f85332eb91cf36a7696e9772cb24858862b9007a578a7c3bf08f82fc31abeb135b6916f29f0bd8079e5994102e188c0e7a1c6715f432f88bc333fc3d90c1a969e2ff57b442236997392080319a884252f79ea61276d62731f0cfc4b6f3c967a7789fc3510b3d66422d94441b730e371cfd2be89baf06f8460b6826bbd16d7c9b74c04f2c601c7a578d7c29b51e1944fed992de630e1a26621bca04e7233d2bd7e3f1ff866f90dbcfa84051c60fcd552728ec613751ad19e63f13b5987c31e15bcbcf0de87a65bb92cb0c8600dc0c91c1f6af8fafbe2efc42d5f59b6d2261a24cf3c9e4a06d3e3f977719e9ce2bec9f89165a17897419f41d2756b285c3361da41c035f336a1fb35eb4b782f21f13d9bc83e6492265cab7639cd75e1a5cff11cdcf8a5a26cade3ff0016dc7c3396c6cbc55631de02ab26db7b55f2412304e318ff00f556578bfc4715c68f6bace9ba3e9ad05e00c239200b8181f8d7a041e01f1adc69e9a5ebab16b022002cae031c7a573fe34f83de3dd66cd22d2f4928b12ed8d14700d772e55adcec75abc68a69ea78ac3e2ad3af0bcb73e05d2554486333b29e48e3d7155bfe161ffc23b24ba73f82f488a090b314119657ce70dd6bb74fd9ebe2bd9babdf694040c877ac8bc0cf7f6a84fecc7e3cba8a4bfbbf1069712b640596550547a0c9aaf6d0d8e6857c449fbc61e87e37d22e2f2d7fb4740b3866d55f10b46cc84738ec71d2be9cf0be85e1dd2fe184baf594a6cf5670d14331c33caa3923279e95f372fc2bf19cf158e897d0e8971169720f2668e450dd7839ce6bea6d07c0f791fc248af3569603369314936c498618918038358caa2849491d3527271b33c412e9c37da2588649c1ed927ad68fda8b0c6c233838ae62d2f2e04ad75781954316c609032702ba0b2b98e750c260011bbe63eb5f6b81c552a94924f53c0ab4da9961e6531e0af6ae0bc4c6d65f36298127278aedee2f2d2343f32b91d81ef5c5f88e5888793605dd91d39aed943ddb99a76958f0ef119305e5ca46a0c7b581fcabc7a37dcf2638dac78fc6bd8bc4ed8bab9230728c0e3bd78b2b959e7049c6e3815f3556295567bd497eed1a313e78f7ad2b41920fa563dbb12b926b52c2604952738349c34b9a47735b7ab5d4609e9d076af76f857737d6fa25cdddcca0c6bf2ac7d40e2bc1723786c741918aeffc17e2e1637c9a2dcde2ac13c60ed271b9b1d28c2462eaa522eb5550a6db3d9239ee426eb4984684176550083debccbc617525c5cb5d44a4488e0993b8c1aed34cbbbab8912de2b7752e36a28ea47414f7f83de30d659ee6754b0b3077991ff887a735f6d571786a186706d6a7e6789c263b178ae7a17dcf6af02dcfc2ff0016e8fa1788bc4fe30b7b69eced7ca9a195c2ef231d7d6bc4fe36ea9f0cb54f145ed8e8d1591821194984dc3e47d714db4f87507872e5ae8f8657c43e6e155181da187e95caf887e1dcbe3ad665d26c3c1165a6dd22991634600e00e7bf5afc5b1d430ff5972a4cfd7f2ba55e96157b5dccbf006af65e1dd4e2d562b38ed6ced99cbdc6e04311d0735e05f1a7c51fdb7e22bcbd570cf773bc84f53824e057d27e1cf84b2789ac53c2badda3e956e92953711b9c2b038f9aabfc4eff00827d78fedace7f13f866ea2d6228d3708a2c33ededd39af772c9d382f78f3b3284d9f1a5adbfdaeea2881c1760a0fd4d7a2a5b7f63247668d8f94138efc573ede1ed4fc2be2686c75eb192c25b7b8559239d0a9e1867ad771f10ed62b5bf82eecdd1a29635da54f1c8af75d68cf48b3c4707131e4b82c3d6a94d3b2f514d823bfbe93cab1b5927208c945cf35eb7e04f80baaf8834e3acea1b635519f298e09fd6972751ad4f34d1bc2fe20f13330d0f4b9eef629ddb1738acdbbb0bfd3ee5ed751b2960950e0abae0f1d7ad7d35e17f14ea1f0e6fe2b5f0f59c568d6a36c80c7feb477ce47355fc63a6e9be3e3378875ed434cb192e5ceddbb77ee3db039fd29f2d81ec7cdca7803152ab4ac368e82bbdf885f0bc784920bcd2af2e2fada600b33c454293ee462b8792396d9823c672791c50d5b7248d6362dc838f5a99a2b2d9f34801c126a39b5482de061300b8e99ae3754d74cb31585f8cf6344173bd069d8d0d4e5b75b8658dc37355d1c1278eb58ab70564f348c93ea6b52cc0b95dd1b12ddc76aea8d37637854b1ad6223dca64276f1d2bbdf04e9ba76aba9c56b27888e948481e67bfe3fe78af3b89fcac0907afe95a96ed2ba66d660aef80b9c77fad675a9dd1dd46a347d9de0df83329106b3a7fc469afad2cf134a91103701d4702bebaf0a78bb499342b1820905c45e50fbc72c08eb5f9b9a45c7c40f855a669f77ff091335aeaa99fb324b918e3208fa576fe1df8f3af598486de07403b2f4e2bc5af49ae87742a5fa9f7ceade29d2469f321b3237a94248f515f1e78d229ac7579ed5cb08bed619074f94b647f3adef03fc50f1478ce6582e3cd4841259df818a83e31471c5ad5822364388999877e6bc9c45d46c75c23cdaa309ee106916acc3a4e7f9d717e2e647d50b81ff2c73d3debb49e346d32db70c2f9e73f9d70be270e75b7461f208b0a4571d1565a973d0e78cae48638da08aeff00e1cb05d62124f0c00e3dcd79d4ee23241e9903f1aeefe1abefd72de273c7cb8e7deb4c526a08cd6e7d73e07579eea2723ac8d8cfb00057d0be170a208862bc43c156ea8f6fb063e77c71ec2bdd3c3a988a3fc2bdbcbb4a173e5f1da55b1f9c5f0fe42baa85e302e2e063db6b579ef873c59e21d0b52d67c3fa4ca66b2d626912eed88caedeb9aef7c0ce06acb22f0a24badc7df6363f5ae1fc0fe1ebdbebbbfd5535086da592f0c7b18fcce85f071f8519360ead67cd03d0cf714a8ab33d4be1bfec8bad78d3e1e378fbe1bea3135e25c491cfa35dae629080086c118e067f3acebff835e37f87fa741aae93a65bbeb76d741ee34db77d841049c85f4fa0afa8fe0478e745f0e5f5cf83f4eb944b6f261d986c3798776e3d7d7152fed1b73a67862f34ad534fb774d635846b54ba6ff54a4f476f4c57bd5bda53f88f9ec0a8e2ea28b39ff0c7c64f0d7d9aca3f8992cd63746d3c9974f0a4c7923041c715f277c47f034365e11f10f87743bc85ac24bd96fb4d656ce23672c171db8ae9fc59e03f0ce997cba978bbe2f9bf9d9f74b05a82c724e4a8f6ed55fc5fe2cf06cfe166d23c35e0ad62fd426d37223c1cfafd3bd72d3a8e33e63ebeae4719d2f719e21f00be1fe9be23f113d86b332c4524ca3371820f5afb113e154da1d94d2693309a09d06f07a311c8fc6be2bd2b53baf0e78806a1179b17cf9f4ef9fd2bebaf86df19e1d4ed2d348bb77b8b99136c318192c48efe98aeba951cb63e7fd942836a4f6287847e16f8935ff8ade1ed12d61116906e4dfdfb05f954a74191c57e81347a7aaa3f9303bc51880b951bb663007b702bc3341d4b48f85fe1b3ae6bb3235fde96fdd0e4edc70bed5bbe0cf8b3a2ea16d25dcc262d732866420fc8a4617f91a51a353768f26b6329ce5cb13b7bf8adb4b953ca6592da46c0836ee0a49ebcf4eb5f177ed97650fc3cf8cfe13f899a4b259db5c84b5ba54002be4e09f73cd7db5677969aa463cb527cd19e4763debe66fdb9fc1fa76b3f096e6fa25f32f743437f086ff64e7fa56ae2dc6c8ac2e2152a8a4ce47c5575697da7b0d1af14f9b12c9827ae467bd7cdfe3bd127875310b69b1cc48c9900ce335f5efece137857e2afc2dd17c4f73a5dbb5c246b6b30240e40c127e95ea73fc2df005a29b8bcd134fddd4b920802b8e342a2773dbfed7a29599f9bb67e0fd6350b4315a6933cc49f942c6dc70727a62bc893c3be239fc6ba85bdbe8925d4d6cc62655fe027a7d2bf596f13e1f5bdb5f5b59cb6be65ada4f29f2631850abc738f5af88bf673f0b693e3af88de2db0d5ae668a0d4279278254c6ee1c802b7af56584a3ed22ae73cb154ab3e53b0fd98b4ad4fe1a7836e9b5992dbed77b7be718e499438518c0e79aec7c53e08f855aff00c401f1335636d3ea270de5492864dc3a5755e19fd997c11e2ed2b53d5ad75ad4a2934a95a1b94909046dee31ed547c3bfb3278075ff12da78721f10ea06e2f613710939da506735f198bcf6ae29dac7a784c0538fbe915f5bf89296b87b411968fe58960236c600e303d856643f18ae35585e1d434cbb9a7439569080a4e78efd3357b5ff801f0db40b89e0bbf12df0f22ed2d19813f799b03f5adaf11fecbde03f0cb5bc773e2bbe6696d5ae8202770500127f2af02a395577933dca55952d11e55a9f893c43797fe6ddc166ba6c4a51e2de32739f9862b017e2c6a56770963696976d0c2ecbe73479ca765e7ad7b368bfb39fc3ef11f8497c59a7f896fd2ca49bca0d28237107047359ba3fc03f86be23f10dff85f4dd73516b8d3e212ccc570a011eb5706e0ac852aae72e6662780be305d69335bcba559cd6cb2926ed256da92727040cf5e95eb43e2d697a93b5cdd5c4314ad1e387007b7e35e61acfc18f87de1f9a0b15d5350b8b9b9992da158c13927a9abfacfecf3f0fb409258755f105f47e542d3b7cc4ed20127383ed570ad3a72e68b26ac61596a8f4683c4fa6df28b5b5d4ad4cf751bc4aa2504ee65c63835f2478cff0067bf1b7872e757f125d2db4f6c8ed2395704a82c315efbf0ff00e0d786ac5b4af17a6ab7d1a34c1d04b9dac3391d6b43e385fe9da1fc2dd63505bf579354956245239fbc0ff215e8d2cdaad7a8a9b38e380a74af247c257ced2cf329c7c8791deb0ef98b4248c77adcd4768b99580c190027eb591750660391c8e6bea2846d4d33967a339c2c54e326bd13e17cc56e5cee1f700ebdf7579f4ea379c7615d67c3dba8e10e5db0403f80cd6d65744bf7933e89f0cdd84be98b3804392013ef5e93a65fc4236925996101724b1e0fe3debc2bc2baec13ca6666322bb6cda396c9e807d4d7d0de18d12d341d3ed759f12593deea773ce9da420cb0cf4797b281dc9af4eae674f094b47a9f3f3a12a95752cc5a6c69a54bacf8a676b0b12c3c8500f9d74a7b228e4e7d8555f146bf69a4684875498e8da3cbcdbe930bff00a5dda81cb498e403efeb58de3df88369e19bc55bd94eb1e259f906242d6da6a9e022e3ab0af34d0fc3fe26f8a3e2b86d0fda6eeeaeae0ab4a0644718c67d96be1730cd6a62e6d5cf728e1214e299ed7e188ac2efc1ba6f893c496a2cf4ed7751fb2e8ba3a305f3141037b9e33dfad5ff008c567f0c60f08f88ac67d1ed6d754d0e510c3243101e64d90085c0c9c1f4ac9f1ee9d79e26f00d8e95e17b329aafc35d40886253ccd0ab64b28efce6b99b6f05e91f185975bb6f19a585ddd36ebab5bc62a1653cb37a75af35439b5676539f2e887fecd1ae7886e3c6169f0f2c2d229ec35193ccbd5f2c6f519fef638af58f8dde1ff0cf85b40f116bba4daff67dff00872e6358e5cf32331fbbd79e2b53e1d695e00f803a65c5fe9faa5aea7ac3c0d9b9520e18039eb5e33e3bf888ff00123567b2b80e74b7bf1a85ee3fe5b3ae428fa73cfd6b6a5874dab9139b9b34f5cbcbdd07e09c315cbedf107c43bb4beb819c1f2235c0cfa72ddeba1fd9e7e1649e26d4adaff540d2c16cc8a84b1daa573f85798f8b3c4bff00091eb11dd6a8af1dbc48905b46b9221847503d335f647eca70e927c1c7fb2d8cf12c9bc336339ee2bd150518d912958f57b7f0d69963098cda5b85540bb881ce2b16ff004ad122995a282d40f40545788fed4bf177c61a1ea527863c1b711c532a29762701735f11fc44f8e3f1474095acaebc65149bf3cc52e71587b3533d6c3508ca3cccfd1ad6b54f0759de37daac6d0b8277124618e2ab5978d7c211c1338d32d8430f25970475afcb1d1fe39f8c65bfb55d4fc4335c2492aa1cb1ce091c57deb1785fc4773f0e2cefb44b62f0dcdbadc4c5b393debcec47b5a52b44f569e1f0ed5a48f64b7f1ff84efe11fd9d04193c6108a48f59bdb8bc58ed74e93cb27ef2f3c7d457e6978c7e3878abc33e24bdb4d3266b616cfb0ab1e370273fcaac7853f6e1f8996928b6fb52b042072739c1aeac3d3af35cd232c4d1a105647eae5be956baadb08f5085f95c1058d795fc4ef845a15ec7e6dbc57280e49db211fd6bc33e13fed99a8eb92470788170d2109b863009afad7c33afe9be33d005e2cc9323003239c935d2b73ce95382d523e1ef1c7c235d39e41a5ea57b01249cac8dfe35c1f872f7c45e17f105c691aaf8ab566b09eda4223f39caf0071835f66fc51f0bc164d19440aae18818f5af9a7c6d656115c469731aa3c4c544a46320f5fd2b49b5ca79f5a29191a0f89750b249644b83a9e9e4e6551ccb129e3a75c575d657569a95a0b8d1665311e560723731ef8cff002af22bc4960be96ff43122985bef8ce00ef91dc1ad5f0e6b9149a88962912cf532a5bcb66c45381d48feeb7d7d6b9e863a7859dd19ac2aa8ac91e993c89e515655471f78118607b8f5ae4bc57329b63871e9c11d6ba2d3f59b4f15dbb208847aba8d84bf030bc61bd49ed8af2ff1bdfcda6bbd95db989c1248edee79afbdcbb36a589a5efef63c5c4e02742a6879eebb2913de7cf9c2373ef8af1c4959eea6c1eac715e873ea30dcb5f9136ec2b67f5af3ab488996427fbc6b86a5a551c91e8d2d20ae695a31e8dd6b52d14c72007183cd675aa7cf902b45085209ed8e6b0af29283b1ac773d33e1bfc1ef167c53fb44fe1b48cc36adb642ec170703d6bd2a3fd9b2fb49b985fc47abe9b0c9010430954b8c7eb5bdfb15ea305c4daef875a6485a5459a3dcd8dd90335df7c56f054435297549ef1f2885b6212460726be52be3ead0a9a1d71a10ab1f78abe11b4f08f82e26905c45aa5f9e448cc3e5fa64d1e28f88735e911f96ed6f1754461e9d2b2a1f8236171e18b0f120d7ae2137ee1523270724f149e16f82f61afa6b664d6a782db481996663d4823815cd5f1f5f14b95c8e8c3e1e9e19de08e367f8b9a842cd6e9a56a2b6e243b8a21ce3a5539bc7dae1d4edeefc25a1485e3889692e06d76635ddc5f0674c9f59d3744b4d7e795b535668d80e001ef526aff087c3fa27daa39fc43705ad2411314539de7b715cb0a6e3bb3a275e72d11c8e81e3ed7fc3f731ea1ad6872b4b3b11736f1fccb203d3e98af6ef017c7c68615f374abb4301f911c000a8e83935cadffc08d2ad6deca79fc53209aea2132c3c970a46467d2934ff0082fe1dbfd1aeb5b5f13ddac16d218c96046581e715b39ce1aa660ed35690ef8fbe0df859f1fb4c7be7d1a2d235c3ca5c281f7bb671ef5f36cdfb33789a28c437dac69d7b15b8c47e5ccbc8ec0f3c57d196bf087c3b737eba4daf8a6fc4ef0998fca76a281dcf4e9503fc2bf0cdad89ba6f13dd4e82658976027731e2b7a398ce9c96a633c3537d0f30f0f78174bf0c6906d1b44861b8180ee9860df95755a5dfad8d9c712d990a9c6715cdfed31a7c3f0b7c04b73a56bf32df5dccbe58901040c57cad67fb417c44d355513525976ff7c6457d9e5d37898dd9e36294693b44f7af8dfa8eb9a4c906b961a13c967c7da65893242e7fc2b08786078e7c33078dbc0eca6eb4a712b59b38dd210727233fcebcaeff00f69df889a8d949a6ddb5a4904a30c0a704570961e3ff001469334d368fa9cb682e4967488e073c9af57d8d8e4e6b9f6bf863e35f817c63a1cda4f8fafadb4eba822f26e2dae0003206095ed5f2dfc4df12786b4df124f0783ee3ed76409d8f8e84fa579acfa8dc5ecef7575333cee72ec7a927f9d04bb0cb639ed49d24c42df6ad777e4995b193c0aa0aa55b27ad5a6b7727701c633f856be95e16d5f5c748749b096e18f528bc0aa8538c7613928ee634704b36150727a715edff0007be076b9aecb6baf6bf65347a2a30770108f3475ad2f833f0cfc2f6dad4779e36b8469626c2db75c107bd7d413f89acbc2ed15a085069b33058914655474cf15d74f0ee6b439658a49d91c37c41fd987c11e27d2a0d63c07769a54c100304ad80c40ea4e78cd795587ecefaec924b6d04b05e5da65445136589f6afa6cc0f65752597de866db342f9e083cd56f022da69fe2bbed5b5893ecf144ea6028a49ce70718f6a9585536e2c8963e703e56f107833c69e189e287c45a6ea312c40aaace8db547b718a6691e206b19c3aa80911cb13f5f7afb9be30f8cfc2d79a045259dbcd732801e43756a541518cf27dab13c37fb357c18f8a90e9de2dfed48ac84eaaf736514806581e7f3af32be196a8d69e6baab9c4fc20d63fb65ad047014b393ac8170acddeba1f8eb670c5abe9ed0370162000fc2bd57e2b5b7c3ff867e14d234ad0ed60b6482611db14037b73c93f8d7917c61b8fb76a5a65c40e1d36439c73d715f3f8dc34a946ecfaecbf194f110b45ea731786e3fb2ecc4606d7ba2a73f5ae53c45697326b270990230335d85eca069b6c9b082b7659727dcd73fa923bea2496eaa09e7debc68a3b2773ceef5d60b9b8b59939241040ef5d6fc2fba74d7a16908f94afe59ac0d4ace28b519273974cedcfbd69782418bc4d12b0e19011b7918dd5b6263cd4d24677b1f75780ee56e440d1b83891f3c8f415ef5e1e53e4c6377a77af92fe1d78a6cecb547d3a4b85498499d87d0aa915f4e786afe49238c2c9d003fa57a98092f60a27ce6360e55398fceef87b1c4fa9f9533b2abcf75c8e7a23ff005af1df0e6b3a85afc4ed72ca78a745b086536b0b82be64a48db8cfbd7abf8355dae6de58a42b8bd9589ce3272723f1afa6be267c2af861a9403c7171e1f5b2d4f4ab35b96787e5136d53d7f1c57a3c2d89941f215c456943999f01278dbe22783fe28698dab4d3d9dc30f34a07fbca4e47f9f7afb3ec7e201f8a9e0d6b5f114eceb69115f340dc631dc8e7835f1dfc7ebebbd4be2869dae0b368a22a151874c11c0fad7b5fecd3e2ab459aef47d41d1a1bd858bc727765e31f88afaac5d2f6a99f3582adecad3461f8a3c75e1db953e1ff00007c36bbbe7b463149a9491b397707923b7eb5666f1bfc69b0f0b4f72da2e95a4da451e18498591863d3dc57a12f87be32fc4ff0cde5efc264d17c3f616f7d25aec8adc6f94ab105b3d7935e0ff1abe0efc7bf06d81d4bc4daa35f2c4a1e650e406c9f415e14b0738b3ecf0d9e2f67cacc7f04dee87e2ed2af7c39e25916c3533742e34dbc2b912316e633f874af63f0aea1e07f859325e416177abeb36ea563936858e36239af8df52d6f57b775b790343796d22ca8ca78565391fcabeb1f87f631fc5af082f89edf538ad65b1b702f40c7ef251800fe75ebe5f469bfe21f299e5794a0dd3ea6beb5f12f5df1df8aac2dae4b471cf324296e0927793f337e02be80f026897516a1636877b5bfdb1cc8d8e36aaaed1f9e7f3af98b49f06f8c74cf16d8f892c6c5af62b54221651f2b48c719fc057d77e05b4d52d347864be25ae631e74c147019bb57b3984a84292503e4b2fa75652bccf6bb28decb4d59d142244b96cf500578efc52d3a6f885e1bd56dcc7bad350b4b9822e30762ab62bd3ecb5bb4d6f423a746d89e41b64c3738ef5e53fb426bdac780bc2fa759f85e37943c12c3318e3dcd18208cd7cec2d73de9b6ac8f8cff0063cf88ba8785bc63a87c36d4b506834f99265b705b8591726bdbbc531f8c6fe19a483c45791e90e4191dce3a9c0c1cd7c7d0f85f51b3baf10eb76ba94916a9a35c19e3640558ee6e41fae6bedff84be3df0ff8cbe0658ebbad59acc9a5230d5532324a8f973e9934b329ce8534e07550c3a9d9b39ad5f46d2fc01f0bf5ff00169f115d4d3cf62d6f1076183bbad7cc7f0b7c6b75e165d3b5ad3e166ba9f538e23b4e0b29393f5af65f8fdf14fc27e2af81978740812d664bf5892db773e590403fa57ce9f01f49bef15fc4df0d786d2e0f966f44fb0f23e5c66af0941e33092e62e51f655958fd11f837ac7882e3c47e3af0b5e46b6726a0f1ded997240951e35dcbf9e6abea577abfc3ff008e3e088278ca595d5b9b769fb47bc1c038f7357bc69f0f3e25ebdad4179f0ceead61bbb6884523c839040c0e9ed5f3f78efc6bf18b4fd4eeac3c59a858ddde6993fd952409f75d4f6e6bf30c7615e1abb8a3ebf09554a08f61fda27c3dafe8be0d97c47140b2dea6b50bcc8877068c4a0efe3dabb1f88567aaeade1cbcf1645109265d1449a7ed39272a0329fc0fe95f3659f8a3e35f8abc3ad7371ab41756f7408104899cf381fad5bb9d5fe3c58ea53f84ee3c476fbecb4afb579010e238b70f94d611a4da3a5ceecf62f82a9ab6bbf0074859d07fa36a330bcb7e8549e87e95cf7c11bbd46fbe27fc4cb470b14904312425b80c83238f5af398d7e3869fa4f95a56b9059dacf6ff006e9618d4ed61c8cfb571c7c5df11ac665bf87534b3b8bd87f793c6bcca031033ebcd57b261ed2c7adeb7797b65f1efc1de18b5859ac84a2e66958654b9e4feb52fed1faaea3a5daea0d6c84c9a85ec96f33e777ee8b6011e95e6f7907c56cd95c5dea90c97f732225ace13e756750c3df8cd616abe21f1ebdedd786f5abe5d46e2dbf732ee5ce241c13f9d44e93b17cf7d11f4e78cff00b52d34bf09e89a54f0c7a3dbe951dc5e48c4650ac60f5f7af90fe367c586f19ebb2f8734d9f6e91a7105307efb83c9afaaf41f87daff0088be195ebea5aabb5d5c69b22aae795c2123e95f9fbaa5849a7eb573632291340db1c1c8390ddebbb2aa119caeccab4ea5342ea2eaf76cc9d31c71ed546e416849e7e9566575f38ee61c5569e44da40239afad8ae5491c4db6eece6ee1191c961c126b57c3314a7cd4810bc9282888bf79d8f403f1aa9a82025718507a9ec31d6be93fd917e10e9f35c2fc58f1d5b16d32ca4c69366c3e6bc941201c1ed9ac3155d528e82f23d13f66af81173e07d0a1f1a7c42b0fb56a7758974cd2dc8f94e721df3d02fd3b57a6f86234f1f78feffc29a16a41ae2281e7d6b55c0fdcc0a4131463f0ebed50788d3e22f8cef2ff0045f095bb5ceb77abb269e33886c203c145c743b7ae315e85f0bfe1dafc2ff164979a8fd8adecf59d2a4b4ba94c9cacbb719249f7fd2be5eb549d5936d89416f63ce753d5f45974d6b5f02787b4db6d36ce6292ea1a8aee96e8a93b88e3d7f9d7a27c09f11786eeb52d5b46b2d1b4eb2d45acfed0d3c639909e3e50464579ada684b69e27b2f096b1e5c76da59be52189f2ee036d78dfdfa1fcea9fc12bad4bc6df1925d7de5b7d263f0cee8fecd6c98fb5c21b033dbad67caa3ad8def645c1a3ebb07c5dd634cd06f5d3ec76515f330002167c968dff000ad4f891f0c349d3b40d7fc6f6462d2c5bc48f1c20805e523e6e9ef5c178d7c7dabf847e3af8ca1ba866b8b5d6dc4416dc61e34d8bb4afa01fd2afd9d8f8efe2458c1e1412dcdedbb3072ae48214f20c8c383c75e2a5d5b05357679445ab6b3ad3322eee5b710c4aaf2791eff8577de1cf057897548cc7a4787e49da4403cd75f2e15ee793c9fcbb57a7da783fc01e0070fe2031eb3acc4a3c8b3b75c44ad8c8fd7ad6178cbe26ded9da87d6b5bb6d02c13e616f6e407c0ec6b9de22ab768a3aa18794a5a236be1efc3bf07d878820b5f887abda5c3ddc4d0470c2bf2c6c7a73d7afb57d0bf087c14bf0f357b9d234b8d7fb32546951b7e7209c8e3b57c37e16f8f9e19f10fc4dd03c2fe11d064bf7bcbd412de4ec4b60641207e55fa07e15d4ad3fe126b9b08ae91dad6d10b267254915e861e7351b4cd6ae1a515767cabf1cfe1878c7c7fe39d52efc3ef3086722277e9b71d715e3fe34fd8e7c0b6d7092dc6adaacf31fbe3cb2dcf7fd735fa312585acd33c96f1c682573920753deb2f57f0ee9cfb8cb6f0920673b06694aa4a0cecc33e58f2b3f397c33fb1be977faf5a1b7fb60822b9468d9d00ce18638afd1ed3f40b6d0bc0f16862318b5b3f27a7702a9681a4e9ada8c51410464c5b5c9039ede95d6df402e23b989b85954e2b750f6b0e662ad56d3b23f2bfe37fecd3a8788fc617faa69d3bc6b71231c2ae79c9ae0f4dfd90ae63f9afb5c9e190f6484926bf45f57f0dada5dccd246a7e7246e1c1ad0d1fc2b0cf2c337f6540d93c965cf1f954c713282e43a23479e3cccf80343fd9afe2368b7b1cde1792eefadd1812248f6961f9d7d7ffb318f1c783a597c39e29d3e78d66194dc321722be8db2d12c6ce1465b68805032a898c563f88756b4b6bf5b6b6d3b1728a1bcc621411edebef5ae168d4c6d5f65455e4cf371f88a581a4ead7768a39df8c7a65d5e787e0d4e3cfee4e1b1d79af34b7f847e0ad574bd3bc4de36d4a50914de6bdb003903a0f7af4cf1278b6f17479ad2fec2d2e6de51ca0dc8c08e47cd923f4af0ab4f88de1dd73c4f3f86fc55ad2e9325b4caf6f6ec701e3cf1df0735e863f29c6e5f4955c443dd7a5fcce0ca334cbf3cacf0f879de495edb69dcc6f197c53f0aa6a17be1df0afc32b5366654b4f333891c1272dd3d054fab784bc3b7914034df0ad8aa4f1af965a5c489201f30cf41ce2b9ef8c7a1af82fc58de3cd1a75b9d31d639a2453846901208e38e41aeed6c27f10687a74f676ab1c9abda457002b11e492c4b03dfdebc094549dd9eb63a0b08ad13ccfc65e1bd3bc23acdada2debc1a998925cb1db8623203e3af1d0d666bda1695f12f479a0b88c5a6af6cac801ff96847f17f85753f12f476f1bfc6368346d3ee357b4d334fb6b69cc078691631939f6359337867c51a05f19359d02e2ce546cdac833b5d01e15cfd2a7dad5a0d38ec799093c46b23e3abed1eff00c272eb1a66af1ba4f1bb7945ba30e715c969d70cc096382c7a57d7ff001b7e1e45f10fc3127883c3f68916a96a9be5451cb60723f4af906dec6e2dee5e09d76491310cac39041afa6c0633da43de7a91529722d0deb3071cd5d1ce0555b62a89c91f4153ab89061783ea6bba4b9d189d77807c6daa780fc5b65ae6953306800322740eb9e4715f696b176de3df0de9be35f0ddf87b1ba455bc88e09427ef0fc2be02691d26dcad821719afb9bf65ff000a6a0ff09505c5c1235190ac71b71c370315f339ad2841dceda33e879b4dad7c47b4f155e4445cdcf87ec06fb36507cb8c8e9d2afdfdff00c411fd9bff0008fcf2cf657e4c9a9c56ff003641fef7ff005ebaaf883f0dfe28fc33d0e59eeb5385744bdb8d891ae18b6e3d3279af3bf0cdc78ca29a7d2fc33ac35bcd26ef37e5cfca012473d2bc9846faa3a94d3dd9dadc5f78b5b46bcd47c33381aad96c8aca107f78327e6ab9a45e7896e85be8fac6c82f668fed576d30e5e6e816b85d3346f1d2477de21b7bb955ac537cb700e173923e9cd3aca2f1af89b58b6b36d459af258bed0931383ed5b463dc9d1ec755a5dcfc475f3f53f1223c1a8f9e60b632fdc10f63f956d5c5df8cacb566d1ef2053a045179c268f85925c739e71d6bcf3c5337c44d3b53fec2d775692e5dd3cc5f9b1803a554b7d6fc71ab5a496369a84c62814096276ec78fad0e009d8f5bb897c652d9e9b71a745196bf710df4d11cf936e7a8f5e95b90472db786f523a298277b0612450e413907963cfa735e136daaf8ebc3b6171a858ea17115a452085959b2ac4f1deb4bc3b6df11758b4d56f3c3cd202206370413f329eb5be1b0aab5448e7c5621528f31f3d7ed65f18ae3e257896cf4a2cbe5e99114982e71e67f2af03fb334830c4815f58dcfecdba3f8b241792bdd595e4f26652eb92cc7a9fce92ff00f6279a1b47bb8bc591aa8e81a3e7f9d7e9b86cbe385a6923e56ae3a3889687c9a34e918e141c1ef520d2651fc40d7d2ebfb255c451ef7f18c0540cf095634efd9b7c30adb750f104d26d201d8a07f5ae8f657337888c3e23e625d3d10ed2aecc781819e6ba6f0d7c3bf13789e548347d12f2e1cb633e5e057d79e18f859f09bc3d1ef8b4817d75fdfb96caafbe2baab2d6f4cf0e486df4d8ad51c821560880c67f5ac9d3920862a15348b3c0fc3bfb286a1044ba878db538ed02a875b68fe6661e87d2bd53c336be1cf09699fd97a6e8b0421460c980646fc7b54de22f12dcc6e6e75072db8e5727b57297da99bb613c720404f233c62a1a2e534d6a705e3689b49d764d72c8f97187ceccf5ee6b6ec7c7d7de25b5b185cfee53e563d581ae6fc5b06afe20bebab5d391a58610090aa4e0f73c54bf0be38b4cf1047a2ea9110979f223bf015cf1fcebe8309492a7767cf54ac954b5cfa86d1e7bdd0f4a9523791c44a0363231d05741e0cf08f882eb51558a281248a40c9f6ae15f3e9c57a4fc2df01585cf8162d26ed80bb8231223e3920735bf0f863508f51b496c9e248d645dcd32f1c1e7e9c578f89aea137cbb9d915cf14ce1be3f685e2f83c0573716da7da0516fb265f2b3d78255bffad5e4bfb3d4da6d96976cd3bb33db4a55c89091926becdf1fc36f7fe1cb8d1350bcb478a7b764f2a11f7895e3f5af89be0ce8f0c5ae788fc1bf6831dd41a89288dd7693902bce6dce572d50f74ea3f6b2de6efc2a6262a92a6f403dcd721e2137074ed2bcf701dc47c9393818c57a87ed2be149b59bbf0ce990b7efac2dd1030ec7bd70ff001174b1a7dce97a7ae09b74811cfbf19ae2cde29d047ad90c670ada98b344bfd916b23bef6370403dfad675c5b07bb695a0dc0281ef5a179748ba5d9c11a0256e0f207bd5882e6dfcc2666551b79ddd2be37992763ed252b9e79e21d2ef200d2c30a35b5d12c707e6422b1bc237a96de268238e2694c4007238eac3835dcf88e28d55ef2d643b41e0672bf4ae3224b7b3d621bbb6cc66ec85978f7ebed5b6b289849dcf489b5c9749f893ac5dc60fda60d3a29eda1ddc6e2831fad7d79fb3e6b9e29d4bc1f697fe2e282f6e4090a8fe107902be33d621b4baf1b49a88f37ed0b636f1038f9580502becbf8552cc74bd3d18820c28300fb575e0d3e648f3716972dd9f16594cbe1fbfd352497ed097324b70b328c2fcdc91efed5f51f8cbc6da0f8c3c1f3e8567a9e2e6fac560031d3e5e47b7239af93eef5bb46d14cdaec2161b52ac1d46d28cd850898f7356f42d5758ba623477ba9ade220accc48c92391f856380c6bc1cf991db8bc0c31907198f9be0feb7e268ee6d7576086c2de696d8e796938083f9fe755344f86be21f05699a65dc76d35c6aae92b4a15b8009c0e95d2477fe2c99d97c898321c64ca46696e2e7c5714aa5d6704291feb4e40f4af567c4d50f2e1c3f4d2b267adfece1e20d5bc29e0fb7d1f5d5160a6ea5b990b9e72cc4d6cfed2fe2fd0fc41e00bad1748b65d4f54d423c218cfcabe86be7abbd57c5725a88f370ca5c820c87fc6a92ea7e2980ed8eda62a3a65eb99f10d5a86f4f218435b9f3beabf03be275ddfdc5c7f62cac1e42ca771e9cf15ec1fb39784bc5fe109f56d03c5504969a7ea30f0771c060411fcaba83a9f8adfee24ab8ea0bf1552e2ebc4538dae67dd8c1fde1c673daaa9e7357a0ea6454aac7964cfa4bc2de30f0da78ab4cf0ec977059e89a55a8324847fad94e7393df18af62d27c77f0a208648c78aad159d9815cf5cf4afcff0092e35d40636b592407af3555a6d5ed9c05b0906ef7ada79c569dae73478769527ee1f71dc7c42f07f85bc451ea3a36a70ea115c7c8e8afc282793d6a1f107c5ef0db6bba4ea71ea56926993dcac57f04c03058b23775f635f0e7db35af314f9730c9c6039aaeda9ea91c12a5d5accc858aa0cf539eb4a39a54b932c92099e99f1c348d02f3e33eb3ab7c3ff21b40d5ecf748a980be6000f1f5229dfb3bcd3f84f4ff0013e85e225b75d2b594dcd6d2be3be78e73dabca753d6751d12ded679eddcda4ae10ba37fab24f19c7bd53935fd4b5177b94b69de085b66ede7923915d357359d5a6a3245acb230d8e9fe3768da76b7269da27842c121b237205dedeca0f07f9d43f03741b1f875f1bed35ed4e164d16d46d4b8ce4862064d7296faf5fdc4a5522915938c1639cfe74ffb6eb6c6585a29995fe71f31c7a1ef5d14337a94e838402796c65a9faabf0a7c5de15bed26eb5dd17548ee6dae2e1943af2c31807e95f1c7c74b0bfd17c5fe2586589668e7d59aee26232db58e47e95ea5fb0edddb5efc1ed4ed1a3592ea2bf9c08bab7afd6b97f1fc16ff0011f5817ad2fd8af65bef21959b8f90ed2bcfa815f218baaeb557291b52a2a96c697c30d2e3b58bc152dd40896f7318925561dc9047eb8ac5d6a7827f15fc49d68b12f3c11e9d1311fead4c8381f9577d1d85a58699a1dc3cc045a6c2b20c1e46d600fe62b3fc7fe076b2d775cb7fb54729f175a9bcdab8c5bc71aef0c7ea47eb592924ac6cdbbe862db40e3498f48b65f364bbd21205909c804efaf3c4d1a2d5fc0103a448d7da41b8b1b80a39cac9c1fc41aef746bcb9d33c057de228e03713693a7c32c4847de5123a935cf68c9a7ad8df5dbc9f647d6e03786dd5b2189c6587a54ba89681ab3d6fc03e11b6bf9b47bcd4ed91a38ed23963dcbd1c4298af9aee13ecbe2cd56f514126e1dd8bf56258922be9ad0fc4562f65a35afda4dbbdaada445b770cb246a01af04f8d5a159f847c5375a269f225e491379924e0fdd663b88e3d297368d9ad24f995cf67f849e358354be5d004e1996104c78e808c1fe75f0b7ed0b6834bf8c5e268ac916381250400318cf5afa4ff0066bb8dfe37bfd5266e20b7652d9f419af98be39ebf6fac7c4df105fda30749a7c0279e879aeeca23696a74e3795c52479e65a43f2c8727a826a436ce40dcfc7bd02f59caa185171dc0c52cb23dc05b78559a596458911724b31fa57d1d5768dd9e51d5fc15f8517df167c71fd9570d22683607ced4ae870234182467e95f60f88bc43a2f8374b8752d32048aceda31a7785ecfb363e53330ef93cf350fc3af0269df0efe1ce8fe04b76f2afefe1fedbf12cfd19203f32c64fbae3ad79a789eff005af8ade242de19d267b882d330e9f0c4848862030a78f515f318ac44ab4f9501f496a975aaf867c3fe19f877e16d6bfb3753d4ed9b54d66f001e6346137380c79e074ae3acf4ed3b53b810eb1aa6bd73a76a313341712dc100b8fe215d52780bc7e348f0a78bb58d1fced52df489ec2f6076dade5b465413df35e776fe08f895f14afdb4ad16dee74887c336a1622d908e430240ec722b082b6e3474baec725dea361697ba8c2f3e968116527e7f2483b598f7e983f5ae5b4ff8a87c1fe26bab0f0a787a2935304a162990c0f2493e99feb5d9fc6ff0ede787bc11e14d5f4eb7862f11ea2459dc40002d2228c97f600d4bf09fe135aea505d788fc4132c1a75aa89b51b93f289d87fcb207d07b77359626768d915bad0a3e09f871a9fc45f115df8dbc4922d95a4a436a17f2000617198e3f40074fe75d66bde2cb3b0d2e5d1fe1b94d2743b742b71abcb8df2228c1218fa8fe74cf1dfc41d3b52d34ea5aa14d17c09a447e4c10a9086f4a8e7818cd7c39f18fe3d6b1f10a76d1b4077d37c390031c16f09da1947033f856187a52ad247b595e5d3c4bbb477ff107f696d3740fb4e8be018fedb7ae4ac9a8ce3736e3d48fc6be78d77c57aef89e796ef5bbf96e2797ef6e6c8cf6acd4204088aa030ea7bfd6942e0e4753debe8a9606318a67dbe1b2a8423b6a7b4fec7ba789be2ed96a406e9b4cb79a7890f463f2800fe26befdf07689e23d175cd7bc5da8eb7b27d691479511cf92aa33f7bb67be00f6af80bf652f17e8fe13f8853c3aa32c536ab6df66b594f412060c57d06e038ce3eee3a902bee04f14dc5d46b65017dd29099c70a0f527e82bed726c87052c23c6d7926d5ee9f4b1f8971ce7b9961b34fecac353718bb59a5f15fcfb23d7f52d5cdde9d62b13b231b8328646c103631cfaf0715cc78f3e245f7837c3977acdf3f9e214c8908f987a6e0383cf7fcfd6b0b5fd5f59b0d3acaf7ca3b109c2af2550e31fc867ea4fad79df8c3c5d65aae95345ae5ca2e9af8fb4331caec07247a64f6efcfa7359d2c8f0b3c9a73c535171e67aeebb7de795533fc5c3882943049ce32e54d2d9ad9bf96a755f0e3f68dd0b4248ee7c50b70b7dac069e23b7e4db8240f6a7eadfb70782b4b9246bdca8427208c7e15f327c4afda074e31da58f8634d8648ecb02176841c28e00e9e95f38f8d7c4dacf8bb5792e6e2d5634931b822607e95f07857cd0b1fafe2b0d0767147e8047fb707c1bf175fff00635c2490cb30223917fbddb3f8d753e12f8d890de49a7dcb29849dd6ce4755cd7e6ef8065f0f685adc175aae9a256824565257d393fd2beb987c5fe01f88363691e917d1596a50c60244ac149c76ae4c541a7746d85514accfaae2f8b0d74f1d9598432ccc15323239fa1acdf14789a68a787edc823704b871c8e3d3fa83fad793fc309e4b4d6e31a9dc1636b031504f56e00fc85759e37d6a0b9d3e625866352e3db1cff9fad7daf0ef0f4b1d96bc5c1daa26dc5fa743f31e2be25865d9bac1497352692947d7aafc087c4be2c9afc7d8e389bcc6180a80b039f4f5fe7eb5e33f13bf674f10f893c4fa778ce0955254b558e5854e597e6257a77c1e6bdbbc15e26d1751f0d09ef9613736c4c7bb6e1b03a1c8f6fe55d0f80bc75a16a5aacba0ddc68ba8ee3e4cd22fc92211c67b647f4cd7abc4388c663325a52b2f6774dbeadff5b9e4f0950c0e57c435a3ef7b549a49ea92bafe91e2be30d226f067c2dd3ecbc5761f6f57bf53042c796e0019ef8cd3edb52f10ea71c7e1db2be82c25bb58e384c63e6863232517d383d7deb6be3e68d7baa18134fd546a4fa4dc34f71129e154f4007b5795f84f5cb9b4bdf10f8a678cbcda75b27d9579fbee704fe1b40afcd744cfd171f55e22573d0bc497fa8e8166d65e0d924d1ed20c41757aa333dcb8186724f3d7a63150683aaf8e359b3d4f4a9f5c6d4e182ccced1dd202e542e4329c7f2af35bcd7bc79a75c417fe2eb598691761549c121d4f20fe75d57877c43a98d5ef7508acae6246d35ece12ca412bb485c71cf1454873c4e3a69537a14fc31ac0d622b8442b0cf6ff002dcc638dc01c071fd7b57ce9fb427c339747bb5f18e891e2295f6cf128ee7f8abd4adc6b7e04d57fb6eef4fb98c070ea92a603a31e41f5e3d6bd13c61a1d878b3c1cd7b6b6e2e20bf8f76e4190aa7afd314b06e54a7a94ef24cf87f4eb5335aacb249f31ea2a1612c6ceca4e13915a3abe8ade15f11dde913b395425a307ba93c55792e9064245c13ce6beb29cb9e09a3926accb3a5aa5f46af90096556c8e7935fa75f0fa3d37c3be17f0a69d6d1858cdb43903d4a824d7e5f5a5e8b7b84222089b831c7b57e8cf8275fb3d6fc19e17d6e19716f15bc7e63673d14035e167517c899d342c745fb4ede9d5fc0167636e09369731dc124e7e5c835f397c2f803fc47923663e5bc33337a7dc35ec7f17fc4665d1acb4c8c7996f7d07df3fde0323f5af31f85fa535b6a52ddc8712cb1ce01efc29af2b0dac2e3a917cd74769e22f22c7e0e5de9362c7fd3f5244729f78f278cf5acbd0b478b4df1d45716f2055b6d2d10a1e4ae39fe75aba5697a86bfe1bb9d02ddb6c16738be9e66e88067155f46b6964f1e59cf2a964bdb560cc7fb80851f98ad62d36545bb58c2f18e9b75ac6b961e279251b1d8da843c648a6f84749b3b9f135fdbb38894db03201d88cd4ff00126fe7b3d7ef7c3f0c2c9158325cc640c70c073563e1e69861bbbfbc926595ee2d0b87383c119ab9d922ae278fbc340f87f49b58af96282e2432b2ed0376338351f80b5a5d0b54d43481a8c7e535a64ba8c0006335abe328ee2fbc2a9a8dc3944d1dcc414f01f391c579de9364f0f86f59d764b528ef09f2c9382578adf053e59a68e4af0f6ab9648f499bc4be16f3eda48f50859d0924fbd335ef136917f6cf6e9770aab76c815f2c8bfbb762523906e24fde3d6a69353d4923059260101e4b9ff1afadfed7a8d24d9c50ca692d4f5fbe9e35245a4e9212b818c1ae2c2f89249678cdb9455c91b7bd735a75e6b0f64d771412b900b2a090ee600f5eb55e1f1adddd5d456d0a4ed34bc6d0fc8c7ad4ace67196c655b27a75bdd6742a9e27892578ed33b810bb8e3069745b1f12c771f68bfb51bc1e083eb59175e2fd49a68ec1ade5271f7839c673f5ad03ab6bac148b5982fa863fe34aa67936b633a191428bd19d18f0a6ade21940be648e3240c9238ad73f0612e23544d5a118ff006c0ae5e0bed6cc6bfba9c64f4dff00fd7ab027d7421296b317cf07ccae279bcdb3d0fecb8c958340f07f893c0fe34998e9c979a55c00aec0039ec4d49f12be125edfcf0eb3e10b6db229f34216c1563528d57c582dc46d6f32f6e1ff00faf52437de2a551ba298e7fe9a7ff5ebd1a1c455610e5679d578630f3973b67d19f037c6da8e97e1ab04f1a35b59ddd9288db737322e31ce4f35eb975e3df02b2248bac59babfccca4f03f5af889af75e993f7f612138eee4f1f9d4664d7a651b74c9481db77ff005ebcaa999ce73e63b68e4d4e947951f6cc7e35f87f2dec57326ad67b50e08ec077af9e17c1d6b67fb4f6a5e3fd335bb74d02ee2563b48c1618c9af328a5f112b848f4e9002391bab4edae75a44db26993173d06fc0a51ccaa235796412d0f7af1e6b5e1bbcb88f525d416e268cfcb8e7a578b7c63d521fed1b5d4ac66f304c626743c6d2303f1aa729d7d2096e66d365263e7cb5619aa09a8e93788ad71612cb7918de229c12b8ee067818a9af8e9578f2c8e9c3e1234354616a3ae5cd84b1583c43cc126f1f2e472722ba0d37403a8a2dfeaf29293aed114471807bd2da5fb32ed8ed2095c3650ca819d53ea47615d4d8eb3a3e9fa64a909fb43b27972bc6990a4e381c7b5791285ddd1d6d9e77e37f0add68c902e9533dc5bdc7ca232f92adeb58169e19bd7922863559ef030658d5b27d4d7a0d9787f40d4673aeeafa95c33c44ac76be691853ce48cd61ea973e14b49bcdd1e69ed6f51c9575046ec8e39ada0ac89228efb578fc54b6faae952db5acb02c0642b908e38eb5f5f7c1b8de5d32d009cb346a14f3ed815f2435dde5ce8fe5dc6a524e4619d4b65939cf3dfa57d3ff00037526b8d22d9c42628d1956339fbc0015db839253499e7631fba7c97f61d1b535b8b68e6375a648f1a2dc119c306183f9d3c6b56de1995347bbba5b59b04000fcaebd9b8e2b7adeef4bd167ff00846eeacbecb303e4a02bfbb9060fcd915e77f119acf52d5b4dd26c264965b6cbc928e739ed9f6af094afa1eccb43ab3e34d263b7774d490b67a9ebc5568bc77a74ed97d411b033c9ae266b66122c6610303070bc1f7aaa74f60cd8c0cfa71c5690a69eaccdc9ad8ed24f1a69c62dab7c99df9ebdb351af8df4b070da8afe75c4cda52c782a8083c9e2a26d2f71ca4600f615b7b34851aaf6677cfe39d2028c6a2993f5aa2de3ad27cc39d462e4f5cd70973a5aae320f07d2aa1b0d8d911861ef5b420ba92ea49ec7a1dcf8d74a1034a3538c01dc1ce0d533e38d1a7b604eaa8cc33d0d7017cab1406360aa0919c0acb588e44103a286e49c649ae854d5839df567a541e30d20cc91c57cb248dc6d0327f4e950eababc2f2345149219231e646003d474fd6b90d0ed8d80925889f358156775c607b66ba4d2f44bcbeff487b970a572323e6fad528a4272341276d5f4f78f55963905d949a68946028520d57d5ad2d348b79748b095638eea3fb440ed91961ce39a865b2974a8a57b7bbf31cbfcfb9790075c7e14f9b66a96ad6f2dcf9859c79385c1418e7e955cb720c5d1ae1e2880b81995f92e33daafcbe2dd22de5689af95248881b581c907af5a82e74d7b389cb5dc98423903f2feb5c96bd6f1ea044b2292d1f1ba35e7db38ae88455ac16d0fb17f606f899a7e9ff172e3c1a9728f6fac4667419c857c60fe78af5ff8b9f0e6f741f174baae88f14ba6dc6a3f6860ad831cbbb257f135f057ecd5adcfe08f8efe15d5a69f6c725d2c4ec3a85623835fa09fb4cf8d7c3df0f7c79a41bb33cb677b32dec96ea78e7907ae2bc5c6d27195d1ced5e56394f10788134e86dc4d033456d70d6970bfdc0c4919fc47e95d36b3336ad0eaba8802796ff46fb1db4b190c10311c0faff5ae2fc41e2ff0bd9797a93cd0df687aeb1669b70dd0ccc31f30ebc66b9ef847e33d00f8cee3c2d61abcac97378059acd9f2d942b12a09e9ce315c6934f529c6c74f6fa9c3a1e9f6be1ed65952cf57d1a4d2ddb8db1caac08cfe26b2b4df87576b696f3cd728eb6717d96360e3e64249c8e79ae6756d1fc477fe2bbdf03ea04a1334d706490ed118272369efc0e3154b45f1b695a178e9747bcd4ee24b38a15b46673848dc6e05bf127f4a2506cb847a9e8d6cc34af166982eeea31a75cc76ca7710154c5f2827d338ae6fe3b5b4365e25bdd56678251aa4af3218d83650f23a532f3c53a1dd4375a76ab3431c16487cb955c1f39771618fc0d714746b8f1ff846ff00c4fe1ebc769ad6e8c10db4cdced27a8a4a2d1b2dcea3e0ec49e1ef857e2bf185c1d93982636ed9c718200af8bb54692eefa59ddc9796567639f539afb1fc76d27833f679d62def1d2232f9768b8383bd8827a57c6ef751eef2624f30e70cfd78c57b595415cc312ddc8beceabceeddd38af61fd98fe1edbf8cbc6f378bb58b7dba3785a2fb54e587c8d3672abe87a578ccaf295611fde2481f5cf1fad7debf0bfc1761e14f855e10f03b4261bcf12abeb7ad4bc0c4098d99f41c9adf36ace10b44e32f6b7a56bde2cd2eeb4fb1ba8f4fbdf1162eb53bb99b6ada58e07971e4f4f947415674092cbc33a7daf82fe137882c05ef0973a9919677e87dfaf4ae9fe114ba37c4bf0c7887556b4f3917509a36b75600bc519da8393c020555f831f113c0f65f180fc39d5bc2d6104b7ac0413478611b91cafd41af029377bb0399d4f55f88f71e20bb83c57abdfdf3d8c24ca901210a81d73f4af3bd73f695f1ee937a24f0b5e7d9ace2431f90570d20e01cfd7fc6bda7e3bf8d2ebe01f8db54d1d74f5d422d7ed192d9d9465032e0f5fad7ccfe02f0f9f11ebedab5c59992cad246982119f36e09c2c43f16cfe157564a2ae34cf78f873a778dfe32f8934e6f125c7ef0c02790e7e5b5b6072467a024fe95d9fc4df1ce8a2da7d0b4c75d3fc1fe1f5db74c0ed1752af55f704f5fad695fdac9f0c3c0d65e17d30ac5e21f140fb45dca0f36d001923db8af8b3f691f8a91ead7b17c3df0f5d13a65864dd48a70669cfde3ef58e1a1f589d99ebe5b97cb192d0e5fe337c69d5fe25eac6de17fb368d664c76b691b7c981c6702bcb254dac70475e3038a4d879c36307f1c529c05e4f35f45470d0a76b23f47c0e0561a0860217231f4a0b0183e951bb9f5a697e304fd335db1563b6fca5ab2bf9f4fbd8351b490c73dac82589b3c861d0d7d53f0dbf6ccd67569745f04789ad633be6485af5802718e0703b9e33d81af9219874073496d752d95e45796ed89219164523d41ab8cdd3a91a96bd9dede87cce7980a58da33849d9c93575babae87ea7ea5f10a4961b48ae6d5950cc9f394c281cfe1d3d2bc5bf6a4bd5d3f4eb49a3622cc8dee8a786f6aeb34ef16cbe30f86be1bf115d8d92be9e0203fc4c876ff004af10f8e3e25bdd4747b6b4d4776d8e51190dec79af13883359e718df6bc9ca92b591f25c3b9153e1ec2fd5d54736ddeec8fc016daf78ab464bbd1fe184d7b6db06c94459dc31f4a76bbf0fbc753dc0b8b3f85375191807101c1f7af63f839f1674ff077816d34ed1e789a6481414c67040cd723e2bfdb0bc5b6d712456734718472a72a00e2b0c33e45667d0b6a48f2dbdf00fc42b476bbb8f86176234059bf70474fc2b8eb7d763d375e8644d2e7d2afd25fb9202bd0f35edf63fb4d78abc4b22fdb2e1a7427055570307afd6b85f8df2e8da9ad96b1144b1de1192300373c9e95957973ec73bf759ecfe1bf141bcd3a3d56da5d972a8371ce416eff005cd47a978e351d45e5b1ba548d02e7287ef7e75e1ff0fbc51742d8e9a67c2b02383ebe95dacb7d05818ae669f763ef64f6ae9c2e739860a84b0942a35096ebfad8f271591e578fc5c31b88a4a5523b3f4dbc9dbccf51d3af6decbc33a9ea924cd1bda593cc1d5b03781919ed5f36db7ed75e3ed291ad2dd6ddd6398b79db143e09e791ed5ec915f4777f037c67aecac520787cb84b77cf18af87ee2456918aafca7b576e1aae22b61d61e737c8b657d3ee3d0597613dbcb151a71f68d59cacaefe67dfbe04f8a3a7f8fb495d7ecee17ed61025e28232e7bf1dfbd52f1738d19e4d4f41558ed3504d97008e15c723e993fcabe3df849f106ebc01e27b59d5ddece570b3c79e319afb57539f4bd73c369afd87fa46997e804a8a321091c1fcebc7c6d2a9467a6c7162e8386c60691f16bc5b7c4695aaf87e0d5adec940f2f6f1081d1bf118aecf52f1bea7765afa0d25addc2ee67da005c2f18ffeb5799784b58b6d186aba35e4c9e69ba8d84b8e64846085fc057abe9bade8f7624d7754b71e468d6324eaa84149339da1bf4ac69ceeb53cc7a328699a4789f5cd396efc6f716d15bce0794d74c01d8718383edcd6bf85b4093c346e7c3b15fc57fa6de967b5915c10ae464a7b647f215e73aa78e86a1159cfabb198dfdd244c33f2c10b30071f415e81aaeb7a458e89aadcd958fd9a3d2c43359b16197208c9c67b8cd692692ba2af63e6ff00da07c0efa5de49a8c76e51e06c12473b49ff001af0f105c4a9bd8633d2bedef8b9a643e2ff000843e23b78c48b710aabfa00c3afe06be20d7a2b9b5d5a7d3cb11f6690a0c1c0233c57ab965672f75b39ab2d342148a5594ee70f80723dabecff00d99f579358f81ba969fe6169b4d67545ee3d3debe35494c70179205181cb67935f527ec69a9dbdc69be2bd1966dcc6dc5c08fbf4e456d9c53e6a3745506d23dcbe20698dadfc34f0f5dd9438b8485598f7ca8e79ae47c1301b5952696225764ea1bb1250fe75df7c4e783c2bf02f44d4e69992e564d88abc8c31c1cf71c5794c3f11748d5349d3a5d380b6bbd3b31bc0c400eac082de9d2be6a868ac757c4ceb3c21af4777a3eada524a217b9c4730070480c71f5cd3f51bd16dab7db2d4f951db69e2de21d3041e4fe26bc9f57f1059e9fe27b5bfd3e66f20b079c21e09ff00f5d76be2f96feeef74b9f4cd8f0de5a03c370493ce715b256d8a71ec45e20d52ebc4daec1a8408adfe8a96f31e3e6c0c56bdadab691e1abdb9b66db70201b501e42fff00aab86d7922f07cc099de732aacaf1a9fba7a11eb5d06a1e29d3b57b951a3dca2c1796a8afb8e3cbe06579a727742b5b56755aa4b0ebbf0f2d2ce3ba8c07904b704b0cfbf1d6bc93e2278cac74bf0f5cda413f9703016b1b1e1580393fcab6f4d1a76abaa4ba0e9d7b2479898172709903b7d6bc0fe2fdc6a705fc7e1a9dc2adbb33824121bb66bbb2f85e6612dcab0f8974c8cfcf7f1804f04b0abd1ea70ddc45924691318e86bce2db4d669a3ba901668d8ec017e5aec34e5d4b53da21b831b2632aab818af5e54d2146fb1d2e8ba9cc9762350ab0c6b8407af3d7f0ad48749d234fb77d5ad615fb444cde6b02320377ac4b3d1ae209bce374495fbc1ba66af4172eb22c10ba9de0acc00277560e3aea6ab431da036fa907924326d3bd182e41079cd7447c556d0c682fe61020e85c606714bff0008fdc48a3cab90a8a32508ce47a5616a31fdaa39b4c9636e47cc1d791cf04552845a06f53a54f1b68a15586a08cbd062ae2f8cf48da0fdbd064fa9af259349bed2a500a9f27b074e7156ecae23b997cbf2c0c1c12454fb24f5139d8f573e33d31e30ab7c9d3a669ebe31d3485db7e981c579fc7690ac8a0719f6ab7169381f2aa907a66b3f676294ee7a00f17e9c307ede871ef5a11f8e74344119d41031ec09af3e1a3c985c22d4b1e8477abb05524e3a52e4b169b47a27fc26fa305510dfc7bc0eb4f4f1be9ec7335fa138e062b858f45659b7a80768c9c56bc1a39db1c8d08c30cf22a250b0396875a9e31d3ddd145d825c614739357df4a0e8755d83ce78c8441c9da475c76e2b8efb2c569736b733da13144e32ca3a0af4efedbd034bb34d489f3da6188e287e6724f418acda262ee62e81a2d9decbe5db6a51452a40de6accc0738c639ab7a4d8bc113d8c85e18e024f991ae55d8f4f63deaf4d6e6f9d6e6f7485b1fb6a02a030de31d33f5ab31df4cd6cda41896385cedf37dc52d0ad7a9ce6a73476ae1858b48cac0e1a3ce71f85278fef342f10e91a1ea5a569915b5f990dbddc1b02f4c61aba01a4ea97fa35cc57aac8606021980cfca3bd735a78d1ec6eee6c269e6b89a68c9124919091bfd4f4aad04dd8c5bad29f4b9e3dc424738da4e320b11d3d2bddbf677d56edfc28da6ddc397d3af9e1dfc02431e3f206bc6347b8d22f4adaeb9e20f2a347256208492c0e3d31dabdc7e165ad8695611db698ccd1c929b891dbabb9ad70dfc438b151bc4f13d6e05d4e4b68e1b4dd3986398349d4215e7f4af30d2fc381759bbb75466314ad8727f3af799e60d7773a9bc308b77b5242aafcd1a853b547d0e2b8af06786fc2ad6e2ff54f121699c34b32a0e573dbdcd7cac7156d4f69c2e71b73a4dc16db12172382401814f8fc22f247e7cb72a33c63af3e95e8adab7c34d061791bed93453b800b2fde3cf4a824f1a7806dc66df43b8daf961e664027b76ada18d9cdf2c519b8c52bb387ff00845a051869b81df14c6f0a5bf48af40ddc81b6bd06d3c5fe1abf5e3c379519c00dcd3db55d00b161e1c6503d0f35e8c69e26c9f291edb0eb76796cfe0d96491a38e6591ba818ac2d43c27a8c4182a723d2bd9e6d4fc1d3823fb3ee2de61dc1accb83e189998c7aba231c0db201d7f3ae8873c7e242e7a325eeb3c2ae7c3d7687cc685a4918eddb8c81ef5b7a4784f5582cfecc34a81e76cca93939daa7b74af43d4fc317b14a97ba54d6d76c877045618914f51edc50355b3b4d4d6f8c66d03c6229ad243c237720d6dedb42396e70b61e09d56f224b9be951b649828aa7922b62182400ee9922743b0230c1c0aef6d354d0eda1c5d4c814f2acbcf3dab99f1bc1a2d95ed95df87af167be2de64eb37dc643d47149556c5289c6b6a3a2c6936a3a83bcbb8b05b78d7392322a945ac68b728c2c2de5b674230ae3ae4e31547529d74dbe8eca258a5691829f40cc79f7aa504420d724d1eea408f112c65eab9ea2b78c9ab32526b73aa9dad922c965791c0053a9c1ae7e4f0a5e89e7b8b59764539ce0af43e95dbe8161a24f3bea1abdea09950247e5afc9f53566eae34e689a2b3995915b2ce7039ad1567128f2f8a1bdd0f5ad3aecdb03716f74922b630783c57b77c5df1b6b9f12bc4b0def881d0b594296f1461ba281ef5e777b756373a9a5e4a564789d15634c1ce0f7af4ff0ae93a5f88fe34697a4ea16c5ed2eef625963dd8ca9038ae7c76dcc62e36d4e164b85b7b4fb2bcc64854e4207caf1deaa595fcd637b6da869f318a68640e92237284739afa793c1ff00027fb7b56d175ab35b39acaf1a148bcdec5881d6b99fda03e09683e0cd3745d63c356a6db4fbab88e2ba94317f91cf0c2bc9724d94ad2392d67e3aebfe24d2ed61d52c2d1f53b5cc6b7f1b15668fa0ddc7f5af3799a4b9b99a5ba9c6eb862cec0f249afb1edfe0d7c2bb6d034fd2ff00b15268f52b36cdeeef9948407ccc8e9cd785f81fe1e68d71797493c035149f567d3ec8312bb9107ccfc7a55a9268a5a3b1e597534f88ad8cb90170a7713d3a56ef85fc4779a36cd2e098c76f34eaee15b049cd7bc69fe0bf837aaf890785e0481af7cc31ed5909e41e467dabcd3e3af82f46f047c454d1b4284c76e91c2ebf313c9009fd694e4922a2eecb1fb4cc2c3e0b7978730fdba27dc5b3b89e6be45b7db0c60ae46e1939afb0bf68c9c5c7c068d1ced517503671d4e2be40575904720c140a41fae38fd6bd8ca5ae530c4b46f7c37f0f8f1af8eb40f0edb2b34979a8c68ea3fb8a77367f015f6e7c48f109f0f787bc43afc24877f2bc37a4af6548571211f527b57cf7fb1a787605f1a6b7f106ea0f32dfc39a63b4591c09df214fd735eddad5a9f1078c7e1dfc3fbd993ecd34adaadfb39c0124b21214fbe3d6b9732aaa53e5472257381b9f0ffc51f85fe1bb6f12c17971a65aeb8015b6858972a7f8c81d2bd27f65ff008597da878d21f8a5e2149a0b3d265334525c6774ae7927f3af6bf8bf7fa1f823e25d9bf88f45fb7e8434c8e1b54281a3470b8c8ed5c1eb7f1ea0beb18b45f0b5b44b1c2987892208a580c2838fd6bcf841b1d8e6ff006dcf16d878b7c63a5496655ae34fb62a5179f99b017f338aea3f66df8736d05947af788a11158f87226d42e811c49391800e7d335e18f6f73e23f18c571abb89ae5e43773f718404841ed9afa83c637ede02f81ba67876360352f1448866c70de58209fd05618ad1248a853e7691e43f1dfe2d4fa268dabf8cef883a86aecd6ba6c59ff5707a8f4af83aeaf9ef2ea5ba989324ae5d98fa924d7a87ed1be3cbaf15f8c4e891c9b6d34a4589541f9723838c57926483823f1af572ca1cbef33f46c9306b0f05265b523a9efcd472919e2a304ede7aff004a540d2b7c9f363d2bdbeba1f453ab187520762a7a62a22d904f61561e07621550bc8c42ac6a32cc4f0381ef53f89342d57c2d6f036b9a74b64d78bbe259060903be08ade8d2e667898dcd2961d6accc0e59828524b1e8066bacf873f0d7c47f12bc5b65e14d0eca579aea45591829fdda93c93f866b93f0b5e5b24eda85f9c880e514f3b893815fac1fb147c1dd0fc0fe01b7f883a9dac336b7e2141710e5798623d053c4c553563e33179e3c4ced4f62cf8bfe0a58f82fe0ce8be1cd34e751f0edb29391feb09f99bf535f1ffc71bcd3754f04e997964e8f313209c71b95c1e6bf483e282c77f6ab2baed474f9b1d0ae3f9d7e61fc61d3c68be23d56cac93361732492db464e42924d7810a719d67734a55252873331fe01dccafae471ea2ccd6a9f2904f6e95ec3e3af853f0bfc4f72974b7ef66d95dcab81b8e79efdebe74d33c4571e1e9167b4214be3705e3bf4abbae7c47d51dd66699979fef518ac34f9bdc3a696320a3a9ef57de17f851e05d1125d3af19ee117a3019ce2be79f1c6b8753d4dca92d1eef90e7b13c5676b7f106e2fa154ba949c0e3e6ae32f7c5e0dc328c3118c53c2e5f5272f78e3c463a0af63d1742bcb5d293ed52dc147fbca3352c9e25bef10dd3c50cadf3fcb807b579ac1a95eeb32a4313150481cf4eb5ed1f0c3c06d75776d73348182b02d8ef5d988c353a28e7c3579d499edde3bd2574efd95efed6c908c246ce3d49f5af85fcb650148e475cfad7e9278f74955fd9b7c491f96a7c9873c8f41c1afce3988675e7e691b6aa8e493e95d7828270ba47b14b170a56550aea84e42f071c1c57d55fb2578da2d6ec6fbe19ebb738f3632d6a58e72c73c7f2af98e5d32f2d54bdcc0f0ed19c3a904e7eb5ade04f145e7843c5da5ebf6726cf2265dc471c12335c398439a2d9d955539439933e90f1a68575e1ed566b6788acf60e449b81f994f43f956f7c3eb9b8d4bc31e34d2e39ccb2cda433dbc679e403c5751f166de3f16db685e3db0da2d753b448ae0a0e19f18cfa573df04ac6ee69eeee6d2dc196c9cc53e7f8e307057f2af9d84ed2e53e5ebc6d26d232b57f09dfc7e1ed22eadd1e597eccb2ba8e92281938f703f5ae76de4f116b770fa6daa5dcea3f8189c281d735ed12ea72e807fb2ef6c05d6868e5addd7fd6db64f29ee289bc5fe10365749e1cd04d85ccd1101c805e47cfd38aea92bc6e60dec867c277bbd7bc15acf84f555f2e4d3ced0879f9181c633ee2be50f8b7a047a56bd7373bb6039507fbcca48afa63e1ceb371a7fc4686c7509155753b464609fc4ca723fcfbd798fed4be158e3ba927b689915251707b7cadd47e63f5ad72fa8e15099ad0f9eacee24b9b33bb90491c8afa13f62f5783c73ac88c13bec70ebed8c578040ad15bac5005e0e4f1ce49eb5f42fec63279df1035d63c3258018cf538c57b9984af402924f43b2f8dfe20d6a4d64f855f5291f4f8143ac47a29af3292da67557de14eec1da7048aeff00e2c6cb9f88d2c4c99472887f12335a9e3087c17e1cbc82c1f4c3e618039f9bd6be5e935b1d8a0d1e611bbca0c4bd0920e4f35d1f873c75a9e8588495b948536c7b8f2a326b7eff00c1365a97826f3c59a346b13d93a178c1e761ce7f95765e12f017c3ed4fc1d61750af99a95cb7ef5cbf0b9ea7f0ade2ae68ac8f23d4f5f5d6a76bdbc777924ca823a28a8637894aed7f2c0183b4e376075aebb48f0c6836fe2ed6a3bc8cde695a636ddca701c9ea062ba081fe115ddd4167fd8b2c72cb22a0cc9dcf18a4e3a8a56679dc37b258dddb5d594cd1790e1dbfda19e47e35c17c477bcf13f8e6e6fc400c291a855faf15eb3e3fd0ac344f124ba6d89c4119042039383f5f4af37d6a6b68afa58a44920b80e0c726728c07635e8e03499cf248e762f0eea4d70b032ac71919c639e6ba6d1f421a745fbe90444920311d6b6344bdb3b99639eee58c941820107b56d6af69e1ebdb2691ef887c13105e3e6f435e9ce44592398b982d96754bab9f948c931f7fcea6b4d5bc36930b56b2b88dd8ed5976f07deb17c4524b159a5f911892dd446117a1c77aaf6f7928b5b3bc9c0921ba1b86d1ca1f4ac5bbec0933bcb35b6943b1bc8d146703b9aa971e17bfd6244bed3946f1f2924601152e8ba669f78b0a6a576896913f98c631fbc6c9e95ea76737872c2c5a2b5b956465fdd02a3238ef58ba961b57478e5d787bc4167be5d4a08eee18c6d184fba4f4ae4f55f0e5ee9f7504c6058e29db71c7bd7b66a97a67b2fece59a240f26f909ebb4566df785ef3c592dbc7a5d99b6b3b6037cd3b0fde37b55c2adc9e56727a4f878ddc4bfbb0481c1adeb5f0399594cd284046462baab3d0345d236c5ab6b90295001489b9adf8b50f045a858a3f3ae4fb9feb5a3729fc281b8c16ace36d7c1b66f22a3dd91b39e99adb8be1f58ddaa3fdac7cb93d3db15b6be23d02dd995745461eacf5661f1968d18555d2630076dfdab19d2add10bdbc3b9cacdf0f2ec2b4766ea573cb77c5412f85356d3caed064453d057627e28785d55ada4d2a424119109c9abf69f10bc077e16d1acaee073c1523e63f98ae59cdc1da40a4a5b338936370e0b5ddb24081700311823d6b6b40d120b59e1ba82286e223f33b64613d6ba579be1e6b16f2abdc5c47b3e43e68c631df8a6d95ae9769637165a0cd14b1b0cabf50c0f6eb59ba8689a441707c3e7c46b67aaea26188a8f2dc9c852474ab9afe8b0585b791a55fc17cf7f83008c8240cf3df83cd569fc3da5eaea2dafadc0ba740637248ce07f853e3f06cba12bcfa1cce2e2d1049bde4dea9d33c565cfa95728efd67407974d4633c088a5831fba4f51cd61496b14d72cf2ed2f2beed9fc2c3b738f5ae9e5bcd7e69d6e2fb4b827598069a55c8f3074e9dab356385b57124f14704711c189f3868fa93f5aaf682bdce597498e3d4a6b79eca35690e5718217e86bd1be19db4da3f8c20d38348f6b736e6408c721481915cfeaa13c41a9c773e1cd35e2b2b01e580496691bb93f8f4aeb7c157305a6a25e6955efa38f68523a64720574616a5ea239b13f01e7fa9e997f2c0cf6f7452272ab31047cb137561f853f4dd1346b0b18a0b3b58d218f2abf28667f5624f2739af68b1f8570431856b6de4065cb0ec78c7356edbe155b4402a420229c85db5d54f8669a4aece1967125b1e0f7d089954456114be464c41a105573ec7ad58f0be8777aff9d6be2082d6e2d58178b64211a271c05e3d7fa57bf27c35b73d6cd3fef919abb6bf0fa0b72be5da2c601c9da3ad754387e9517cc8c5e6b52a7ba791787be17e996ff39b52483c0c1e3d2ba2ff00856d63273f660323a62bd9349f0e881427d9c1f4f9726b59bc38a47faa038af729a8d38a5638252a9395ee7cbde21f8576ceeef047b5fb63a578378dbc15ab59f9f75a569df68961976ccad9ca83c035f7beade18deee562c0ec715c3eafe01b49e59a4309579c0593038603a57362684311236a15aa52dcf88d6d3c4b0d9c915cdbcb6f301bc3c4c47d05615f5a6b1aa5bc8ba95d5c4bb785278607b74eb5f65ea7f0cacee879524614a1e08519359937c26b058fcc5b55660300b20e0d60b28a7257b9d8b309ad8f91aca0bdb34513b5d4c8070993b8b76ae9f4fb0d5f51899b51d363b4882fcad29cb62bde67f8550ace938b701b3d87153cff000c96e270f247d391c74fc29c727a6983cca5d4f907c6be16d534cd4e2d46cdcdd297185c631cf14f7d1b5c9677b8bad3995e750598839c8e715f594bf0bada4262b8b55700e412bdfd6992fc3bb78c342ca5cb0ea45742cb617b09663267cc5693dedb5b3bb58995546360c8359f35a5e5fb11629750c528fde2313c11fe35f4c5d7c2db2042b5a2b64e791c8359b71f0bdcab2e495c8c023a62b58e570d2e4cb3099f37d9784354b7bc4bab3bc9a22f22ef5739e01f7af7df0441f65f8efe18049dd25edbe7eb85ababf0c4fca4ab7caca7a67bd57b32ba67ed01a0b9ff00975beb7c0ee7eed78b9ce1151a7734c263275b4650f8fb14b6bf14fc511a6202f72cd9e87ae722bd67e157c58f0afc49f003fc2ef883731c734518586690e0b81f7707eb516afe04d0fc79fb59eb9e10f115b4b3c1791b3aec3f758ae474e9c9a9eebe027c2ef02c57f3ea576b797b69310ae65c7938ce17f3af944ec77a6d32beadf0e7e22f86b4a7d1e0f1cc979a0025a3f2c032ac47fe5986c71c573cde20d3bc01613eb72aa47a82406d349d3b765a32d9dd337ab13d7355fc3de30d7749f1bd9d86a26e1fc2faa06b4cf98595246385c1adff0088ff000b3c19a56bd6a7c436d3d8457319f2ef0c8489303239cf7155cc8de2cf22f84f7d35bfc54d0af66937cb2dcb194f52c58e4fd7935d97ed4a443f189e2dc722d206c7d545417be10f0df85bc53f0f752d067790ea370d33be78c091942fe43f5a7fed60241f19e49b3f2bd95b95e79fba2b293652655f8eb6e750f8230dae4926e2138ff80d7c9f17871a16f2d247c3f0067a1c1afb0fc7364756f86d15b90481242dff008ed7891f0af96e58c7f28048e3d066becf20c12af85948f1731c6fb29f29ec1fb2c7877fb27e026bd7008179ae788ad2c9188e5a3525987e42b6b4bf015e7c5bf8e7ae69d63ac4f629a498d84d09e536281b45749f0d3493a3fc32f02da183cbdf7b7baaca00c6e11c200faf26adfc38b8f13786b4b7ff008432d507893c6b7d757ef2e06e86d55b6863e95f2f8ba6e18969b3a30cfda43989be297c4b4d4b464f02de699772cfa37ee96fa5c977c7f3af316b8bfbab05b636a9061321914077c8ce58f5aa9acf88b539bc4f2ff6adf9bbd40dc35bb499f94b038fa75af58d33e0ef896dbc65e158f5eb88e6b1d4e4135d2ab0023888c8ce3daabda4608d926798fc3db2b8d57c67a669d6a9ba5b9ba8ed640396d8cc370fcabd7ff695f105bdaf8a6e559bfd1bc2fa688d23cf024600549f067c37689f1ba7bbd32de27b2b49e79d0a0e15549da78f6af15fda7bc54d750f8a75459b0f7d77b36e4e4a8278af2a7cf56bdd6c7761147daae67a1f27ea778dac6a777a9c9f7ae6679093f5e2a84e0291db278f4aeabc3de0cd5f5cd363bfb5b7f22d8b61a59b0ab939aef741f84fe190d1dc78a35796fca1e2d74f4dce4f040e057d861683514cfb979de130d87e5bea78fe9fa66a1aadcad9d859cb71339c288d49fc2bd7fc27fb376b72dba6b7e39d62dfc2fa5f961d8cec03bae324807a66bdbbc0ff000e3e296ab6c60f871f0bed3c2ba7af0354d4a20250075396e7deb4358f84ff00063c260f897f68cf8c7ff090ea109f30d8457398c1eebb471d735ddc87c763f89673ba81e55a578afe0ff8265fb3fc34f87977e2fd6a071e5df4f1b3c45c1ea074af9e7e3afc4bf16fc4ef17cb7be2db34b29ed328b6d126c5887a62beca97f6f1f827f0fb6e8df08be135b5c4283624bf66dccd918ce715f0dfc4df15dd78d7c57aaf8b2eec059b5fcc6536f8c1407a0c57a9818c6da9f258ac6d7c4deeca5e0fb73a9ebda7d9baee8c4e8cea3fba0f35fad7f05be2021d3f4cd02090797696691c5cf1ee3f3afc9df86571143e2cb3f306565ca0cfbe3fc2bee5f829e26315f69cab2126def3ca739fe1ed5e6670ed2d0f432ba69c75dcfb7bc6f79f69f0b079461f61f635f9bffb40e91a8daebaf3dd2b456c58f952a741e82bf41bc69abdbc9610895d7caf215b19f5af9cbc71e1ff000df8a74eb9d1ee1976cb9dacdfc07b727a57cec26d55b9f47421cd1e53e01d545dc3bd8ee2a848c8e6b99bbd5afa6c891d82a9e322bea4d53e0f5bdaefd2c4ab280c76ca0718e715e1de3bf877aae977524420c2ab7054751eb5f4346bd2925cc7256c3385ec79d5edfcee47ce48c565c0cf2de67a9270056d5d6877e8e63688f1deba5f05f827edf7d04b72815438ce4718aee5569c637478d3a7394ec6f7c3bf056a1ac4a8238dd54904b053c57d2bf0cb401a2dc2c4de634438e477ae9fe15787f46d334555b78609084f989504d7ab7823c2075ad6e2f2ed13c9560785001af9bc6623da4ec7bf864a953d50ff00895a5490fecefe277653e5c96ac4e7f1afccef0cea769a5f8a34ebc5d2bfb4a5b39bcefb3609df83cf1debf4aff6e5f1a587c36f832be0ab3991f50d606d78948dc8315f9cdf03fc5ba6f803e25e99e31f10698350b7b663e6c1b37654f5c8c57b1818f2d1b9e26638cf7ad13ec6d2be35fec9ff0017ac6dfc2bf117c129e1ad4caac26e0218c02303e9d6b2bc57ff0004f7d37c4b0c9adfc17f1bdaea36b2af991c2d302d839c0c75af451abfec4ffb4d4021d461b2f0dead2fc818aac4431c60faf5ae7750fd893e32f82ee5b58f809f14a4bbb024345147799e0720601ac6a53555347253ccaac743a1f0afc23f89fa17c136f08f8afc2f3cb75a5485e278fa90a78ae13c03e2093c1be3cb9d2b58b2974efed17f302cca51493d473c726b5defbfe0a2ba3dc2d9fd82eae961e092a5838ffebd58d5350f8f3e24d3a6b7f8edf069aeed7042ea1656fb67840ea7819e2bc6965a94ae8dd66129ad4e87c5fe1db9134fae787146a167326eb8b563f3292324afad71160ba1dd5e8b99b567b1b945646b69e2e9f4e2a7d2eefc5ba442b75e14d57fb7b4eb6186b6ddb6f2051fc2cbd4f1ea2922f1ef86bc573cd67259241a99cf989709b24c8fa8ac65424b435a75948e6752b69342f16693e258aeda658eed0125780a4e0d751fb51e9f697fa4dbdd43cfdaad48e3a72370e9f5aa1acea97563a0cd3ddd847736ea4445768263c10435747f14ed9353f865a3ddb460c4f0a329ea70548fe95c51e685751f33b1b4e9b67c410db948ca81f30e060fa715efbfb17e9f716be2ed66ee718dd6809cfa1e95c22f83638a4dd121c648e79e339af75fd9db43365ac6a52a26cff440a78c66bee332c1a780555763c7c2e36f5fd998df1118cdf12e45cf4b84ff00d0aa1f8c2f02f8b62336369b555ce7da8f1a069fe2acf1ee19fb422e3fe042ac7c48d35753f89f63a4496c655984510099c9cf04d7e7f4db4cfa36ee8ade0ff1a43a35a49a1dccab25b5da6c757e847a55db2d0a2bfbe2be1ff144da55ab8f9d37e5467ae33d335d8de7c15f03785b55b9b1d7b5012dccb1a4b0db16e550e49cfe35c06aa61d3fc490c9a3e8f20d2ed25556032432f7ae952ea64ee6a6bbaa787fc2fa51f0f695399cc6c649e6272d2ca7a9f53f8d713e1c99e5f17e9cf3b6f26f1095f72c0d7b2789fc39f0af56d197518ad1ad6eeec83f7b0cbc706bccbec9a2e9fe26d2a3d2f749e45dc68d37f7f0dd69fb4057b9aff17a4dbf1067119c03b471e9819af18d7e2d4e7d6ee124b8616e0fcab8e2bd6be2bbb4fe36bc94f0c0ab01ec0569e95f0e9756b18751922e65c755e2bdfc9682ab5753cdcc3132a0b43c3b4f824d3e42f6a24cb75c927f9d753a1c3a86a02444d39c469f319666c283debd60fc2a801c2c0b9c64305e4568597c2f4680a4ab23e78c6702be82b65c9cf43cc86613dcf11f11e95149a739fb724b303f7621d7daa9d8693ad1d3ede27b0658139523a62be88b5f8550c5c25926d1d8a83f8d5f8be1b442116f22b6d07803a511cb60b735fed091e17a13dddacc6131a0ddd9c7deadefb3dedfca516d6e2ce48ce4056dcae315eacff0ba092331b42ac1b80768cd4da7fc36b8b08da286497691c03d2b3965516c6b1f3678d5c7852e260d74f7b2acee088e5de4a823b62ad476dacc7a71373adcd73344bb563dc5547e03835ec517c2d47880456c862d8f73d6ae5bfc2a837aa496e4927938a8796c620f1f33c0b44d23c49ad6ad15a5dd844524381263903b57abf87fe179dfe55ccd92ad838cd7a9693f0decacc279706181c820735dce91e108630bf202dd724735ad1c3468bbb39aae2275158f33b5f845a5f9218c5b891c9e4d50d47e14da246c63b7236f4c715f465ae8119882189460750054777e1b43195f2c73db15d72941474463194d6ecf97fc3fe11b6d02fee08b3b7371203e4b4ca08dddb3daa0be11585d2cba925acd7684991e18000a7b6303d2be80d67c116b29591a1058743b6b117e1fda9661f670dbb939506bc6a99742bcf999d10c4ce0790c1a868b776fb0dd42b23b7cfe64430dedd2a28b4dd1ac75132699a9aac12b0696057e15bd47a735eaf27c25b37cb7d9179e836d665c7c15d39b7916acacfd48eb4a592d3b68cdd66125a339d1613dd90d6f246c07532360fe15ada1d8226e49ac242f2f12132fc840e715349f0b800232b7184180771edf8d4175f0def7eccd0457d76031fb9e6363a7d6bcf9e44efeeb2e398b27bbbfd36f7513159c71cb1c2a22658cfcab8355357d3aca69423d9ab348a1136ae48c77aa3a4fc30d63409cde6952488c4ee6427218fbe6b66e5fc711c2c21b2810b2eddfb327ff00ad5cd2c92aad99b47314b73966bebbf075cffa245131b942ae02e79f5f6abbe0cd18cde255bebc9879a88d24a71c1ddd063be2aee91e1ad7a18bfd3e18ee65918b1791327935e95e16f09cb2490cb710a2100670a0741554b2aab4e6a5726b6363563647adaf8723539d9487428d492631ed5beee7240c544f20c60e2be83da36793c860be90010510714c3a730ea00ada763daab3b9ce7d69a9c9828a2b43084c00075a7c8463814a58f526a291b3cd3726f72ad6d8826891d482a09f5ac6bbd2a1994928011e82b60bf2413f8542f8c92688bd46de963919b418f25b68eb54e4d0918600e95d5cca4c846383daa331a01938fcaad37b5c9513927d023c6368e2abb787943ee007e55d6c8b1924715567f90f4eb5a466d2071b9ccdd68482df8519ce3359e7408c0dcc8a7f0aeb257c8d840f61556451e9dab68d4760b58e4ae7458de41b605381e95526d0e300e6051ed5d64e0052c1706b3e662473f8d5c2726c996c734ba3c0370f28718ed5f3bf88e56b2fda2b4f50178d4ad8723fda5afa7a40119871cf5fcebe5bf1e47bbf685b460c008f52b527279c6f15e37103bd2bb3ab2e5667d03abdcdbf86be2478a7c696fa9dad8ea7717896c25958798aa7aed1d7a7a5725e32f0d7d9b58b5f146ad35d5ee9575720ddc52230560c305fa7626b77c53e11b797c67e2ff1d476135feaf657a8b6d03e7c88d402431cfb53be0ffed2b0f8fbc4f0fc2bf887e1bb67fed0678219630081807f2af8572be88f6109e39b3f05c36d61e1fd02c229a245cdabae30ce46571ea7351f8d63d4ee7c0da6695e3cf1069d6f34d9290ce479b1a80001f955bf13f862d7c11e2bd7b4af1244c74df0ac2759d2a65eaecd9014fae0d781ebde2d2225f1ef8aa27d52f359919ac6d99b11c680f0ded8ad22afb9aad4f45f0b78026b6b5d3b4fd625f3f4cb4bd175a5dea02769ce4a7a8e7f9d731fb58a01f13edee9e321ee6c616031fec8e6be93f86d3dff00fc215a0c7fd9b05eda6a56ff006a9655036c04f45fc057ceff00b5e0107c44d2d8649fb1020e474c70295aeec5adcbf6604fe0d44b945755446208f415c3eb5a6c6d0b98d55176e781ea40ae3b40f88faa9d43fb3ee6e0bda060a53d40aed53c75e19d42de5b5369247282aaa36e790c0d7d3e539afd4684a9b3ccc665df58a9cecf77f10c09a068fe0ab3521443e15d426007ab796bdbd9abca5ad3e3cdb0d13c41a36846d23b6d35ededde3237cb0124962073debd5be2f5c4057c30f046ca13c197a738e877438ae3351d77c7d27c3af0df88fc31a8a49613d87d8679c124dac8ac7391d4641fd2be57118b788c43947a9b5287b28f223c5b41f0378fbc4f0ddeb76da44e23174c0dc4c0a0136ee7afa1af7cd6f48f8cba7f862c7467f115a5eead710f930c51c999228c8c02e7b003d4f4aeff00c1d3785ecfe0e5be8435fb5d5f5d695a7b82a36ac4ec7249e33d3a5717e369c4ba7792fada787f456402fb55727ed1763f892251cf1d0703b57a980c3baabf7888a95794e6fc25ac7fc296bb54f12fc5086eaf9edda1934fd293cf9816182a4a0eb9a345f073f8ade5d53fe15d489672ca64377af38890827ef61ffc2b3fc26baf799f60fd9e3e0e5dde5cbb1cebbad2005cff00786ee706bd06c3f622f8f3f15e65d53e2efc513656ee016b1b290803fd9e38e99af5a181a5177b1e7cb113e6d19e75e34d7bf66ff0542b6fe3bf1058ea33dabf989a66920326471b4ecf7fe55cca7ed711f906cfe06fc039237076457725917271c03f76bec2f04fec01f01fc2256e2ef4a9757ba4c33c93e4e48ff135ecda37c3cf04786634b5f0f7862c6cd630300423271dfa577c2a282518a39eb62253d1b3f36e0f0d7edd5f1f18da5d3dde83a7cdce1b31281f97a57a27827fe097b1df791aa7c5cf194ba8cedb5e68448ce031e48ebeb5f78cbab68f08cddb9831f28214228c5616a1f14bc05a44b1d9dc6bf01796558b00e70c480056ea9cdae668c7dbc5fbb7382f087ec9ff0002bc050c16fa4f81acee7ca504cb3c209e3af5afcd9ff82867c2083e19fc606beb1d363b7d275888496e2150a8b8ea38afd8af323937794d98dba13dc7ad793fc75fd9efe1f7ed01616561e32dc1ec4e23641ce0f5a74aa4a93368b4f53f09adeea6d32fa0bab6077c2e1c6d1c6075e95f637c0df10db5d3417b6d32b47770ab103aacc303071eb5f6aafec0ff0002b4ff00095f689a5e8c1ef25b768e2b997aab11c57e7578cfe1efc49fd95bc79716baa68d752e826e0bdbdc202c8464f3c7b5658b4ab3bc8f4b018954a5667da7e21f11de5ee9cb346ee42c210ae4f502bcdcb5c4b7626959f1d97a669ff0f3e277843e2269910d2f57892f4a80f048c172c3a8e78ad5d634c68e30cd1323fde523a63d7d2be6b130f632f74facc357a728ab331e5b094a3395d9fec9ef5c4f8afc2cfa99d896c49eb92b9e2bd1f4dd93491c37872ce401835ed7e13f85fa5dfd9c73dc47bcb2e464035c4b13520f53ae74e3347c197ff0b676dec2cf71ff0076b6bc25f0a3529e24416440de3076f35f5df8c7c11a469571f678605567ce063d3e9557c33a1adbde25b22221fbd97e0003af26ba638ea9356471cf0d4e1ef331fe197c29bb4812d6484a3123923d6bdbf58d63c17f05bc1975e2df11dc416f0db447686203c8c07f08ea727d2bcbfe22fed45f0c3e0ae9d3592ce359f103a620b6b55f30efc7038f7ae0fe13fc1ef8bbfb6078b21f1c7c5b8ee34cf0adb4ab35a581f95645ce46456b470d3a92e691e6e2b191a70e589e0bf1bf4bf8e1fb46c97ff1874ff0c5f3e868cc2d22f2db72a0e8718f4abdff0004ecf85da278c3e33ea1a578cf43fb424166c64b7b988fcad903a1e95faf5a3f81b40f0ee830787347d2ada3b28d7cb31041b5862b9bf0c7c11f017833c5979e3ad174886d351bd8cc7298d70093cd7bd4a72843911f2d39ba92bb3c43e287fc13c7e0778cd8dde8d6a344d40a911496ff00200d9c83c7bd78bea3fb187ed55f0a6ea393e167c4f9afad41244324e70aa3a7535f5cfc4df8ebe19f86fe2cd3f43d72dee333c0f32b28caf503d6b7bc33f1a7c23e2b8525b39248f2bf7a442a2abd8544b98c2588a717cad9f14c961ff051a8c8b35961623e5f3030fe78ac49be1d7fc143f4e99f5eb9d612f515bcc6b432060c0755c77e2bf47961b4d41a3b9b6bc0e8fc8dac338aadac5afd8a5866b299994b6d65cf27d6b99f36ccde138bd99f98727c47b16d75348f8d5e0bbcf03ebe0ed4d72d6131a173c02d8c77f5adbf18780a3d4b4c8b58bf8edb5cd3508683c43a53299a33d8c8a8738f5c8afd04f1efc1df04fc4ad25ac7c5fe1fb6bb59108de506f1915f2bf8c7f635f1e7c349a4d77e03f8909842b19348bb6dd1c8bdd7078e6a94535668e88cdc363e779bc35e2f910a5b6a915ee93731845955b2081d378eaa7b735df78fd25b2f853a758cc8aa6de18e3c8208e0b1ea2a8daeb1670ea7268fe31d0aefc09e24762b219a3274fbb6eff30fbb93ea056bebb652da686745d7e18e1b6bf1fb99e27f36de43d8ab0e99f7c57995b04dcfda23a238a6e3cacf1bd2b4c826b4dcc9e6307e00e78cd7aa7c28b1165737b2280a554647b0ae0f50c782665d3efec7744fca4eadf2e09e067e955756f1ccd676eede1fd592db29f391d5b8c57a38fcda4f08a8589cbf02a755d533bc48bf68f8c373216ff5b76b8f6c115eb4fe08bbbcf10ea3e34b6bd82292d1238a0790f287bb63dabc2f4bbd9352f11e9f7b2cad35d3dc2167f5f9abe81b992ce61a97953cc6eb2abe48202e369c9eb8e2be4946db1f447357ba3eb1afeaaf7c9afd9ea77cca2391d9c0603bf5addbdd3b41d06c23d2b5bb8800894198af766e7ad7997c36f1440ff1120b2ba8c8826ba368e31ebd0fe15ea1e30d0ee74df1fea3e1ed72449745d26d935585c0e5c9ce10fe55af91251b6f05cdad69a93c71ad8c73b6c80cc7e768874383ebcd7330fc298f47f10a5b41e20b699d26594c521da7ef03c66ab6a9f18b51d2c9d4d205b8bb958f9098f9234ce001e9c5765a45edb7885748d72e624bcd56e7639743858738fcf14b91a7703c6fe264b32f8dafc6186c609923af22be97f016856f378234e9d9012c809fad7cc9f14ae5a6f1f6a085feecc01fcebeb0f02129e0bd3611d3c95271f415f4f906952e7859a6c59fec384a82b101f4a9a0d0947f0704f4c56940c3803b7ad5f80af18afa7af2b4f4678d18da3633a1d1a35c0039ab49e1f89c80538abf0afce723bd5e8642485c8ae77524816ba1923c3b0c6411174f61562dbc3e93642a018f5ad80dc633562dd829ca8e7bd4fb491a28d91951787157f807e15621d0551c398f815b6921ebeb53a118eb52e4dee55ba9462d3221f308c0fc2aeda5ba8933b78153260f502ac42aa0f03349bb858b112fa1e9560c7bd464678a862381c54eb27418a86edb315ba88da7c5227cca0fd45463478376422f357a37f7a9540073494d8ca2ba4c24630b4efec489864aa9ad150bd054e98fa52e76c971b982fe1d858f312e299ff08c5a1ff9775cd74602fad4888a453e7712944e59bc2d01e044a066a06f09c058830820fa0aed042a4f352ac711e368342ab71729c2af846d55b2b6f5b565a0ac2a0244171df005744208b3f76a4f2954e454ca7a14a2919858fad46e7b1352b118cd57939e86b18ee31a5813b41ebdaa090e38a9002afbcf6ed514df33ee038ad530237e950c870b5331045433ff00a938eb47502bb30cf06ab4b2e3814b2395e2abc8487008c66ae2ecc056705724f3552705fbd49212060542cd91806b40202029c96e955ae240edc9e953ca0e33546e7e539f5a12b92d91ca413c9aaecea4900d2bb1270474a847cac58d68869df72bdc4c0b188751542662a78357a558c1925039238acbb9981600fa56d4ee6737a15e52589dc39e3a7d6be5af89a1e0fda06db6820b5fdab007a1f9c1afa99c0639fcebe64f8cebe47c6fd32f08c1135bc871e818735e37106b48ecc03b33bff8e9e31f885a77c40f15681e10565b296dd66bc91573b46d19ae27f651f03eade24f8afa7f890c72a69fa2a4d7373752290bbb69efdb935f526a7e1ed3fc41ff0009c45a7c1136ab71650ce81bef3200091ebc8af2d83e2ef87ac743ff00846a5f0ede7875c111de43689b5a7c1e79233cf7fad7c3c16a7ae6efc64f11a6beb7f6fbc4d712e9ac648cfde6804ca33f91af09f893e139aef41b15b2b53bb4a887950a8fbf6eea0ee1eb835d6beab7367e398bc75afc0d1e997f6afa64566c794b438cb1f7c907f0ad3b9f132784ade2b0d674b7d474a898be99ab5b80e7ca639114b9e38ad516707f06fe277c55f0dc361a258b3cde1d4ba5b6944c0831a93efd39ae8bf6c6813fe136d22540033582918e7a8ce6ba0d13c5ba2f8b7c7cb65a4e92967e1e4b357bb608157ce53f7863d4d737fb59ecb9f17e8521980274f5db81fc38e3f4a74a37a8ae6b4d9f2f2e9ab73a8cb325f491b86c8dbebe95d1d8cf3e9db256759151d4b13d4f22b26028b7f380bc863cfaf357a5626ddbd88fe62bb6bc3960da3a1cd247d99f142437565e18b8180ade0abc23fefa8ab8df075f6b7a1fc28d2ecbc1b662f349d40c92ea3291bcc7303c8c7d3debaef1e832e85e1320e3fe289bde4fd62acbf0aea9a8e89f083c17e02f0ac314173e23f3eef54bb71b8436ead82ded904f3ed5e360e8ba95ec799564a1791936fe26b7d3fc3f2f8d2ef438ededa293ecd6f690f126a774383c7a035eb1f07bf67cbbf16dd5a78ffe3413757738592d3455cf9368840daa41f6c66b0fe087816d3e2cf8c5fc617d0795e14f0849f63d1edc8f92eae13ef4cdd8e5b9afaaede65b2399f8b83f7f1d33e8076afbcc361b92091e154c439b773a0d26c34ed12c92cecec20b58d70a86140a31d3151f88bc59a478434b9f57d4675860857765ce0b7b54767aa4775188dce153b9f4c57cbff1b3c447e2cebb2e8567aa49069362fb3e47c798e3dc57a780c03c656f66d6879d8cc62a54fccb3e26fda77c61aaea133f86dad2d2c776d8de46e5b9eb5cf5d7c77f88ce36dd789ace26c646dc93835e6b7ff035a6904763aede00a72417f96b3b56f84f7f0ca041aa4f26d5f9b39ed5fa1e0f873054e0b996a7c5d4ccabb9b699dceabf10b54d6211fdb3e27926dc4e423607f3ae72fdb47d57ec56d657d9ba37d6ec8c64cb70c09ae324f006b3b1996ee4f93a839e6b3b4cf0878874fd774fbe69e5d91dfc2ddf1cb0e2bab30cbb0b4b0d270473e1f1b5e788577a1fa77a6dbc274f87cfbc50cb18079e7381528b1b3652d1dc82c39ac0b7d02f2e2da0b813c837c4a4807daa64f0f5ee36adcc838eb9afcb2765368fd270fac1366dad92ca3625d2827b64722b9af1c7c2ef0b7c41d1e6d0fc55a7c17b6b2295c32aee4c8c1209a9dbc31abe4325fc839e0f35762f0cea53a6d9b51914e3a8351257d0dd3b1f06fc5eff0082686a9a65dcfe27f827e297b69326416acdb769f4e0d7cffa86bbfb52fc1d592cbc57e1e1aa5adb310d2336ef94751c1afd6e9bc33359585d5f4daa5cb2ac6dfc5819c1af85e4f07c9e206bdbcd575fd42e44b7520f2a59372e33c7e95db96e510cc24d48f3b199c4f00d599f32e9dfb58c763ab4777abf84e6de8e0caaa7001efc62be83d03fe0a3df0dac34648bfe10ad51ae91766d8c657a715afa7fecf1e03d5661349a0c32b93b9d990727b9af40d33e0d7c29f0be9e52dfe1fe997774dd9e3dd8c8eb5d988e10a1157b11438baac96acf9afc49fb6f78a7c577d2bf83fe155dca5f88da40cc467f0ff38acfd0b4ff00dadfe35ea30dac1613787ec6edf69760570a4f3d7dabed1f0ef84fc31e1eb13a847e18d2a094e19512dc7cbf9fd6ba8d2659eebc55a2246de4ab481fc98942a9c7e15e555c8e1858dd23a171154af251b9c5fecfff00f04edf06f826ee1f177c40bd935fd5c912913fcca1baf7f7afb234bd26cb45b24b1b0b486de0450a91c6b8000e9d296dd8a804a60138007356c7239af31ab6877fb494d26c69c7a633cd437310913af4a9653803071504ec444c7d463f9556c6727a368f8fbf6afd29752f8abe16842f999b7932b8cf195aebbc25e1eb4b0d323326d5455cac6060e7bd6d7c65f0a0bef1ff0087b5c91372c104aa491ea5691159dc6c5c22718afaac0c215a8a4cf9acc2f197315f55f11eafe17b57f1069c19a3b4523ece5ce1aa97813f6aef0a78af505d1fc436936997703a825865339ea4f6ae57e3478a134ed15f4fb797f7b370141c75ef5e65e09f0d4169e14d5b54d52dd2e2f351970accb865527a8efc0ae9ad9229d3e748e4a5984e2d267df963ac5aeab6b15fd9dc47240e0157439c8356c2a4bcef18c75c735f2f7c0af176b3e1cbe4d06eee5ae3492022197fe5993d3afbd7d456c1648d645c1040c11e95f278ac34b0f3b33e9b0b5bdac53390f1e7c27f047c47d365d37c53a1dbdd44ca407283cc527a1040af8a7e2d7c23f187eced74fa8451cbe27f87f78e566b494132d8293f7d0fb0afd0b651822b13c4de1db0f1169b3e93aadac7756973198a489d411823ad731d9cccfcbdf1ee9515bf8721d5b44b85d7bc17ab0cfdad4e67d3d89e55b1e86bc03c41e199746bc7b58b5395e103cc8989f95e33c839fa57d79f17fe1c6adfb2df8aae1a1d39f53f865e22631ddda302df6666eac33d2bc23e24f821bc37bad2d67177a75cc7f6bd22edb9125bb7222cfb0fe54b134e15293d0eac262254e76307c1d1347afe911939ccd1f23d722bb1f1b6adaf5bf8a356b0d21a674080cce9fc00f15cbf810a5e78bb4684650f9f1f006470457b769563a54ade3573736eba8c7b0c624c61806191f957cb4e3c8ec7d0c27ce8e1ff0067df045ef8a7c7d6776f672ad8e98cd737570ca402c071d6bd6fe236af65a9788758427216c0296eeea18d735a1fc46d734ad33fb2fcab4b681970c6ce308cde809eb5cd6a3a91fed0bdd6af1e52f771790518f0b1e3ff00af4acdb43394f1b7866e03b5fe916333d924285248c17539519edd8d55f8577fae5a78834db18e497ecd24e376fc8239f7aec3c0be32f117846de6d2205b7d474e9589486640eca0f6e69349966baf1fd96a125a0b4b6793708953681f4ae99d94511cd66703f12d157c717f264167b900907debebaf074613c27a5aaffcfbaff215f20fc442afe35b93190dbee0127d06eafaff00c2436f85f4dcff000db8fd715f4191ad4f1b333613030738e6adc0e436076f6aa606140ff6b26ac42ffbc273c66be8aaabcae78cb646aa923071d47353dbb0f305512e49187edd2a78e4c1e9f8d62f629685f12e642074ed5662761dea8424039f5ab91302715268a5d0bd1c8d566376e33f8d54888ee79ab518e9cf4a81b76b17632beb53a381d0f7aa719f5ef53a63b91532d00bb1303deac2b0f6fcaa9c58153ee1eb50f502d230c75eb5611b8eb54a33ce73d4d5856e2802da3e0f5a995fdcd54523a81daa446e47a1a00b41bd2a54623bd5756c715206edeb4a405a56cf7a9d73ebd6ab44d9c0356471803a7d6b301e0e2a4423383516454886930322427d6a0a9a5279a86a900848231503a926a7c0ee6a191b1d2ad01091fa547282c314e2c0920719a8a42477a6054b94c6306abb0079cf4ab328de724d41200a0e39cd356b814e61806ab31c77ab2fd6a1741c9ad00ad2b715426393cd5f970060fe154668b27706aa46722aba924e3f5aaf282073565e445255aa27950fdd3fad55ec1177d0a13b15538acdba42cc1fd38ad3bb381f5aa0e494c56f498a6b42a484a28627a57cb9fb414af17c51b69c390512223f3afa8e75fdd3fd2be5afda43317c42b5c91b9e2848c8e7822bc7cfbf8475e01abd8f70bcd3bc5f7df1a06a3e14d5ae605b1d161b9b8b64e7ed00203b39f53593e3af15403574f11fc40b5b4b7beb7f92db4db541e64a7b33f7ebd6ad78ab5cf13d8fc55b5f0d785afa2d3eef5dd12202e9880caa2352704fb57cebaef894697e21d4ade59a4d4f50593ca9af27258c67760919af894ac7b315767a769fe31b2d5fc5dfda3e3eb267d32e606b68ade007f719c60fe5fcaa6bdd275cf01d85d5d7873516d6fc2b74e642ae3cdf281e7691d462bb6d0be17dc5a2681ace85afc4d6d776bf68b8df1ac9e633606dac2f1bf89fc2fe05f19ff65497e34cba9a15692780836c58f69231f2e7ea3bd52691bc92b181f6e7f1a684f7de1244d221d325885e4302f330e0f39f5ef4efdab39f13786e578821934c8f18181ca8c574fa7786df53d31fc49e1f9ed74fbf5bb44922b775f235142061b6838ce3afbd667ed81133ea5e17bb31aa13621180182180c1fd69425efe8113e5fb78f17b3f1d49fe75a1b47d925cf5ca81f98aa71022f2739e371fe756272cb6ae17a92bcfd0835df888b546eca96a7d95e34312e89e10f3f3e5b7832f1180eb8cc59fd2b81d025f13cbe06f0ff80f4ef9b5ff0016b1b5b36db96b5d354fccded9cd7ab5b6976fe24d43e1469b712009a968f3dab82382a4c448fc8576be01f84f73e1af899e20f1c6bf6a116d9934ad0d08e238117248f4e4f6a8c928aad55b3c7c6cdc558f4af02f85f48f87be15d37c23a4262df4f81519fbc9201cb1fc6ad5e5f379818b73ea6abcd7accc5d8e093d07ad40f289cf5c915f7aa928c523c3bea6925ccafa6dd8873e6b41208c67f8b61c57c653db7882d26925b427779edbd739e49afb27482cd70887f849cfe2315f09dff8db50d07c61ad585fbc845b5f4802f3c0cf19afa2e1c49d668f9ecf5f246e8efadb54f1ac1b2792d99e15192028eb915b907887569a11e768c029fbc428ce6b97f0ff00c54d2753c4135f84e40d878aea0eb569756d26350011402b1a1c31cd7dace2e27ca29a9047a809ff00e5c906783c547762d246b7845b206379028e38cee5a9a48a616d1ca06d0c0606793ef482211eafa3dac8bb8dc6ab6e31dcfcc2b87329db0d2b9d384827591f6be91128d3add5c6088d411f80abbe5447f840c55781c2d9c7818da00c7d054ab2e7073d7b57e512779367e95415a0ae4bb621f284e6998c1c814e1c9cd231271b79e79a9b9a9c9fc51ba9ac7c01af5dc32b2bc764c536faf3fad7c9de0ef0d5d2e9f657da8c6d0a98bce915fb93d735f5c7c4dd83c11ad34db020b624648af9d3c3cfaa6ad7767676ba725e5d496ab23a3b6122461f2f7c74af4b0198acbe329b3c3cc307f5b9a44b0ada69ea56042818f0684ba80cff00770f8e64e48c640ab1a969be2eb9d40dccb65a47d9e1423c846dc410381c1e6b323f166b734f6fa68f0cda44ef2188b3dbed4ea09e48aa971b61ef69331870fd45b1d0cb2e931c6f6f2c92492b2f5c9c1e6adf839ade7f1e682229d98a339da7b01818fc3fad52bdd27c6578ee62f0a59dda842cb25b49c803e87fce297e13b4371e2fd2efbecf35b309e7b7786439daebb3775f73532cfb0d8fa4d45ea5acb67869a6cfabe245e481c93de9e63c74aaf0ca5430cf42473532c80f24d780f76d1ef53d16a56b894c6db40e69111a4521875a6ca8cf7033d01ed4f9eee3b72231d4e0734ca6bb1e57f142e1d7c47a7d991f218588cfd45738d2aa40c57b03daba7f8af143fdbfa5deee284a38f639ed5cb6b45ed74fdefb46632d8e8783ff00eaafa8ca6aab28b3e73348bdcf9ffe27b4faef8a2282204a46464f6e2ba7d1f4d2f6f69a6119403248f5f4acf8ec0eaba95c5e2c9c33607f515ea5e11f0edadb41bee51998ae467d715f5f88c4a8515189e2421764da4e876361a63909c82b271c739afa17433bf4db76ec621fcabc3afc086ce55518014e39af6ff0ff001a25a927931aff002af81cd9de773ea72cd205ec8dd8c551d56f0da34217a3363f3abe794dc3e99ef583af5ca9d42cacd94ee67c9f5c578acf52f7287c4ef02e8bf11bc2777e18d7acd27b7bc88a0665fb848e08f4afcd7d73c097fa25ceaffb3ef8c1dd6eb4c77b8f0cdd3e773460ee0993d78afd4bd4255b744673919000ed5e3bf1cbf679d2fe2dea5a278a2d5c5aeb1a3ce9224e3e52d18209538f514395d34545d9a3f35741d1ff00b23e24e956c8cd1959d080c31e9bbf5addb9d0a5d63c7bad8496e99627dcf04448f300f535e8bf1ff43d33c31fb43e97a35a40b020642c00c64f193c7bd736daddedc6b7ace936d776f630c5be6775c23cc07f0e7a9cfd6be6f15653b23e9f0dac132946d6965039b4d3bcb850859232c58a91ea4f34c4369a8dc13a81cc12a6c5f443dab0aefc6fa6078ed8112b3be3ca4242a9ee5bd7f1aec53c0da56bba625c0d7a78a309e7388b85071ed59426ae6e721128f086a9f6a50b73107e18f2715ae355b9d77c4da4ea16a678ed8cd80ac9853cf22bceaf3c46906a32e997570b736d0ccca9283ce0703eb5db7812e3535d5ecac62bc90da4afbd2163d8f3919addb4f725a386f1cc53a78ee65605434ea38f735f63f86d36787ac13d214fe95f1c78d1d9fe216c12b38176a181c9fe2afb27466d9a5d929e9e42ff002afa4c8edd0f0f333490f2323a54f082663ef5591b76319eb566238718afa19e8cf1bb169397c1ed56d081c5535214ee22ad44fe6632b595ae516a03dc8eb57233ed55230001cd598db159b4345c89cf157a339159b1313c7f4ad0b723039fcea0d2d7d4b081b754ea30726a28fd6a5009f7a87a013c6724558191d6abc6a7b8fa54caa6968c0b1103eb56a3f43552327a1ab71d2604c807a54caa08c9150a54e9f76900f5a9a3fe750ad48848c5296c05a40322a5c1ea0d41193eb5381d0d66028ce7ad4a9cf3510eb52a50c0cb947eb55cf0383d2ac4bdaa0232314d010973d79a8a4627f0a99900e2a075c926b440444639a864624d4e54edc54122906802bca4ae3155a46ebf4ab532e5724e3154dcf19cd546d7d4081813cd4323aae41a99aab5c7a8abd80ad2b9393ed54a4573f3678f4ab6e58e7d076a866185c5527733667dc2f3ea2aa30c1abb29e795ce0d5690e47116298e09ee8a9312ca4552978e455c909ebf98aab28201ada93b30a8f4b14ae9b099cf7af987f6a08f67c43d2d947261423f022be9cbb52e871dbd3d6be65fda9fceff0084a744b8442d21800ce38001eb5e567aaf48db03f11ebde37d23c27ab7c4ad257c4b7cda7983c3914d15d8936329f2d7a7e75e51f0f3e0d787be287883c5e89adcf25968e0ba488bcca7700093f8f3ed5ebbf107c37f0ffc557fa28f1c6a6da4c87c330882ed7270db17b0e6ac7c25d1efbc2be19bef07f8785aea1637c4edd42d88f36753d981f9ba75e2be21bb1efc2c40d6379f0dbe17db783fc2f7b236ab7ee5e39ddb7aac7d0e0f6af27bcf853a578952e753b8bbb88de2472f73704e2e2e14659573c9e7a57b3eada15b59ea51e9373aa09b5eb787cbb4d3a02582c6dcb1248c035c56b7e22bdd2213a2cdfd9e7ec92652398912c45ba9c01c92692bb365a8efd9ff00e1ff00837c47a3d8c69e259e4d6a395ee459ace57ca2ad81919ee077a93f6c7194f0bdcb2e1c46f191ea41c66b17c0166da66bda9eaf0430e9a2e140fb5efda6424f200ad8fdae647fecaf0533463fe3dc93920eee4f35518f2c930b58f95bcd3f6f9908e3ae6a69d8988a83d4aff3a82325efee0b018c9153c91968cae40e40cfe55e8e2e5fb82a291f7678773fdadf04644382239573ea0aaf15f49fc40778f5081114aa8cb103d4e057cd7e18da5be094fb86d469509cfa2a9feb5f487892e1b50bfbdb8603c98308a48ad78695e4d9e0e66ecf439696e4229dfd3eb4cb5b94799b69e07a9ac6bcbb325c3460fca0e052dacc2372ce783c1afbb7b1e1736a7536b2b09d1e36e8eb9c7a03cd7c2df1934f7d17e33ebf617a82317b3092327a106bee6b2781c22c2725c63f1ea2be51fdb57c33247ace87e36b18ff00d7036d71201c06c71cfe15e9e47888e1f1493ea78f9e41ce8dd1c4dbfc3fd296359e2b822e4e18153c7278ae8a0f0ecba2992f2e751fb4398c6d553c2d791f85be27df68b7822d52132c3900b0e40519e6bdebc37e3bf02ebd6a91c31e1dd3e62fd338e6bf45a91ba523e229c92766165a847059adcde6a1ba69106d841ce0678ad0d2ef165f16785e39a53e61d561c03e9b970688b4af0eb3349685642c30ae0f0b49a769617c61e197593711abdbe1bb1c32e6bc5cd55b0f23d5c0353acac7dcd14ead6ea9c7ca71f955984a160ccd802a9da25bba155911dd3059548257eb57628803823b647d2bf2993b499fa3534f9116370272a383432e450001c7e54b499ab3cffe38b983e14f8825881de20ec7d6bc8fe0c691732f8a75590ca5ade2b0b0b5dc0f490469b87e79af64f8c50f9df0dbc4119fb86006bc8ff67c9ff71e2891b273a9295fc14102bcbcd26e341a4674e9deaa6761e2b9bc3be16d0a7d5af1d2d84119224285b2d8e33c7ad7917843e2b5c6a9e25b7d3fc43ac595ce93732958521b76df93d33f2f15ed3e24b1b5bab4816e11240255768641b838cf3fa7ad3d6e3c05ac335a786f4cb3fed0b5219d161da57d48e06457c5d1c3aaa9f31ee25648d3b5b3d3f448a18f4e833e7969f71fee80063f5af27f860ba99f89fa95adfe0456dad4af0018e1648d0ff315ebd6ed24f2db2cb820c2e323d32bc578f68572f07ed11a95aacbb2113db9c03c13b057a994c3d9d5e4b9c58d49c6e8faa572bbbeb8fd7ad3e373eb5189039f94704e3fad3d1715f55d2c71d3d63764ab8073eb556ead8c9307c6706a5918aa8fc6b2750bad53cc58e08c843c6ea468ee79d7c7f40b6da3ce588d9311f29e71d6bce35ed767d4eca3d0ed5be52a3f785b2dee2bdc355f0b3f8822f235b459a3462e983c838c560c9f0d34440445a63ab00487cf39ed5eae0b111a4b53cac5e19d64799f86fc3d65a7811baac971f788ec33debb6891a25cb01c8e00e2aa43a21d26ea4f3254790f6539200e956ddb6a92c7a7ad7d152c47b58dee786e8aa4ec66eaee45a856c6e918263eb815ee9a42797a55b267eec4bcfe15e05abccb3dee9d68a73e65dc638e7f8abe82b4d8b6d14608caa018fc2be77339734cf732e5644e6558a06762005e73f4ae374dba9758f134b7529ca403f77f4ad6f12ea096da7ceaadf314c002b3fc316c963a58bc9d4abc8327e95e5389e9177c497c3ed1696483e67218fb574014790a4750067f2ae574a85f57d58decc331c7c29fa574ced93b54f02b37a0d6e7c33fb667812e60f8b5e1ef1bc119f29a411b9c7af15f36ebf65e06d5eeb56b8bdd4ae60d42291b00b6d53edef5fa23fb4d783d7c4fe0d5bc89944ba748260d9e78afcd9d534fb6bcd4ef26b99a176370df21c82d8fa0af9ec647dfb9f458397b83be1ffc2687c59e1fbdf114cd27976b71e52b6edab83df278aecaeacb4ab5f33c33605edada0b31f699c124b0efef9357bc2fe340da1c7e1069f48b2b42c1dd2590a3060782405ad9f11e8ff0fe3fb2acbe3d860d4ef0070446cd0391c04e07f4ae45a6a769e1fe27f05f87b44d152fad8491bdc1df1ac9f79933d4d7a9fc25d17c1baa35aeb5a25d4b7177a7dbe66f31ce1582f239ab1e29f0bcf244d2dd58d94cb2c6079893065000c71c0eb557e1bd9e85a5eaab65a2cac8672c2e2339539e73d6aaa49d9582c78f6baeb37c449c0006ebe5cf20ff001d7d99a72e34cb3c1fbb0ae6be35d5a155f8972205c66fd475cf4715f65d9661b4b65f485703f0afb1c87e1b9e066724f445c8436f031d79cd5a5041fbe3f3aa914aee7e61dea78b1bb38afa0a9ab3c845e8fe6e0f6c55b857a60e3354e120f6ab7167fa560f42ad72da7619ab31ae40c9c55580773571054377048b56c833935763500f5aa7003fad5c40739c566cd49919b775ab31939c9aae9807352a6e27e507f0a97e622da1c74a941c5578cb0ea2a7009349b480b318c8ce2ac47d6a18beed4d10c9c93537b8161463bd3c3103029abd2968026424e3dea5419a853a0a990e054c80b08302a62485cd408c76d4a58918c540124796a93a7151c5d7f0a9693032e50700e2a2507d29cef4ddc3d6ad2019201e9559872455a620e79a81c8f4f5aa4acc0818e16a094827bd4af55e5c934c0ad70377e1559f0063d2ad49dff5aaafde9b496c0577e2a19406f7fa5597031cd569081d3d6a93d00ab2feefa83504a415a9a725f9cd557fe557121ea569400738fd2a3927182368e2a59812327eb55e5da39356ca8bb142660cc78aa9303ce3d2aeca07241aa8e783cd694d19d4b99d313b0e3bd7ce3fb51cbf66d7b44942e4b5b74fcebe909d78af9aff006ad0dfdb7a0f1c7d9988c0e7826b833cfe01d180f88f59f1558786f5dbcf0b5f78aaf974eb3b5f0d472adc1396dc117002ff00173ef5d57c304d1e28bfe122d3b487b9b6815b1a96762e40e3f76a7f99af35f1678734bf18ea1e01d375fd456cad1bc3a19e42fb57841547e0af8cb49f87be25f17f8457c64b7ba6359b456505c9cc66424671dfa6715f04e37773dfa713d33c512685a04f73f1034179354d643097ec937c8eec781b08ce17d735e2ba8f8bbc6fae6b5a8eada8f82b4ab44670f724c85d932321471c9fcebbbd67c417775a25a78c7c39669369fa716b2bd8a33e63b2939ddedcf4fad712be2cd06df543a77892f1634b967bdb69226c6c3b4011c833c906a9687447426f0cf866efc4d35f5f5e89a08d2359208038c9ee491db9f6e95a5fb52b6cf0ef81e1924cb2da93c9cf1ce39a7fecf6de151f68f19788bc4de76ab25cdc44f6524a550c458845db9feee314dfdac3ec7268be126862f2d1233b6207ee292485cf7c552d64909eba1f312315bd9f3fdecf1e86acced9864da79233c1efeb542594457cc831ce01e73c8a95a4796368a1cb3be15557ae4f02bd4a949ce97289cd4373f423e0cf842fbc61e1ef86d7d6d2661d1a29a691ff00da60a31fa57baf8e6e20d2ad174f85c195c6f939e9e95cefecdfe1e7f02fc0bd16f35718956d4c881b86e4640fceb2353d52ef5dbbb8bbbe055a56e00eca3a57a790e0feaeaecf9cc7d58ce56465ab991cc8339356a11e61da39f514c48822018e9c53e2730b165afa969a3ca48bda4eaeb6777f6770082db73e95cafed13e0c7f167c2ad66c42625d3192fa32304950793f91a9e499cdf142a70e492d9c6300e3f5aed74df27c47a2ad9dd2799fda1633db4818e7242e47f2fd6a2954f65554fb1962e92ad49a67e72e91e1cb7bc1877f309181c672475aded1bc333d95cef899950740b915d2e97a1269baa5ed8bc1b12d2f26881c638dc38aea23b2b38fccdaa18051b47626bf56c2626388a1191f9ad6a4a359c518ba2ddeae904c50b456a8fb72c092dfe35a1ad789fc53168b2dc7845209b5ad2e117f6f03b7cec1172703d460d4daa5ee9fa54969a56ababdb595dea3091676bc70fce0b7d4d7c93e1cf8a7e2ff0086df1fe0d6bc61712c8b63a8183518ddbf76f03361be5e98c135f3d9de2d72ba68fa3c9b02d495491f417ec77fb5f78c347f8cd73a7fc49d7da7d2fc48cf1af9cfc412938039f735faa5673c5790c73c4e1b7a0707d548c8afc53fda9fe19d9f817c756be3ff000663fe11ff0012117fa54d170913b00d8c8e0735fa1dfb097ed0bff0ba7e16dae99aa5dc7fdb9a2af9171b9c6f751c038f61fcebf30ae9aa8da3ef62b447d4d18c9fa719a6b2fcc79a48dca7ca79fa5484e4e71d69c5a686ce33e2d0c7c3bd703700dbf27f1af9e3e1778b74cf04ea5af586aad2adbdcdcc770252a085465187afa17e31b63e1aeb6093cc079af95fc41a2dd4d069faae9d099161b24b7d42d89c9b88028c30e3ae2b9f15839e2684b94e55888d2aab98ef3f69bf8af6df0c3e0e5eebd0dc2c97d7d1b59e9ec38259810181078af98f41f8b7e22f05789be1978865d46429aaa241a987907ef0303cf5f5afa29fc2fe10f8c5f0e74fd2b58d2c6b167637458c324a565871900119edfd2a9afece3f0eb57bbd0e5b8f0bdc94d1dd4c51b4e7011738c57c54e13a1eec96a7bf0ab1a91e647d036d7113c96cd028313c2270fea1b93fa0af0bd1af9b56f8bf36b91dbec8ae75c304241fbc91c6809fc4e7f2ae93c73e2dbbb4bb3e1af06b2c974d108576be56ce25e18b1f5c1e3f1ae67c32a61f197876dad2390db59dc0cdc3003ce959b2e7f3af6b26cbe7ad591e5e37150bf2a3eba8cecdc5f8e46d039ec2a5565ea580cd456ea194b31c939e0f61530587abae7d39c0af6d98c257b58a3a9eafa6e991896fae96142e230c4e392781f9d3757b844b00d1125cf2bce074c8ac2f88b67a24ba286d64b2c0274901538f9b70c7eb58ff0016bc416fa0f80ee278a69226b88e2b78594e586e38047be2b1ab2e589b2382f11fed137fe15bf93c3d71e00d62f6fd83180db0f9640bd79ff3d6b6fe16fc5c9fe25e95a9dddc7872fb45bdd2b2b35b5d1e78191d073c579dcbe29d6af63f0b5f785ae63925b4f3e2bb7be405f6a842d9f438e95adf097c6d657fe39d6e13752b1d5a22f1890011bb2f0db78e79af3a8e264e6904a374ce96d35bbcd7ade4d764d2d6d62791a353d4b6d3d6992cc64cab7031ce6afc7249178592d9210512e9c071c632c49e958f78d22b158f0588e95f7996b6e1a9f318c569e841a45836a9e32d3a05ce2397cd6f6c57bbf98b04424073d81f5e2bc83e16dacd7de29bfd4264c2da44215ff788c7e95ea57121484401c6d8892c73c57978f77ad63d4cbe2d53bb33a7496ee7ccf1964dddfa62a79bce9996c6143b0f071c002a0b5bf9af6f5d2143f674fbcf8c8cd4daaebba5787ed24bed4afa0b68947fac7205732a729e9047654a91a4aecd4d3ad8d8279719233d4e38cd4f2df456d133dcca88003f396c01f9d7857c43fdad7e1d78234496eacf578756bd2085b7b77073f5af8e7e24fed85f14fe20c32dae9ce343b29b2a163397dbd8e7b715ef653c278ecd67eec6cbb9e2e333ba387d99f5e7c7bf8ebe1082c24f06689a8c179aa5c651d51b70407a938af861b41b7b7379ac788e78edadbce67c23664933d80ed9aadf0d56e65d77fb52e2e3ed772558cb34ee58f7cfd2b3754b5d2f50b1d5ef75cd65e3bb8a56f2200fc633c71dabe578cb25964959527a9f4bc3798ac7d3763725f11d8a5a96d0fc07a73db6062e6fa6632b7d303dbbd745e1af11691afdbcd0ea1e08d3ece5b18c06b967322ec3fdd1eb5c3784bc5fe138bc311e87771c92ea524e19a4958043181c2fe75a5a85f9d3ede59ed122856703e446ca2e3a357c841dec7d5daccf45d5b5bd0d3438ed2df449268114ed69dbcbdbefc124d607812cec752bc8fc4ba76a6ad35bb3473441785233debceb5bf156a171a2cf1ea1ae4734d300a89100a15075af49f85f1785b45d31a3d07503726fe3decb236595c8e7b7ad69534b05b43c72fb7bfc5358fa93a82e4fb6e15f66424111463a08c62be39f244df1660319fbd7ea1b3d386afb2843e49419ea83f957da6471f72e7cb664ad2258473f4ab3163393502640e38c9a9e3ce79af727a33863b17222a0e455d8467fa5508ff9f4abf0e32307a564f50d8b119c1c0fc6ad231c819eb55e25054b66a74c8910564cb4cbd6f907afa55c4620e3355201927daad260b62a4a2504e73572de7da3040ce3ad564539cd4ab807350fcc0b88fbbae2a45eb55e2233c5595e950f5dc0b111e3153c3c63f1aaa9d6adc5d7f034740275229d51af4a78e94012c678fa54c9d05411f4353a74152c0994802a51cd42bd2a61d2b3d9812c4c3353039155e2fbd53af4a1819457bf3513000edab07a540df78d6c044dd4d467bd48df78d46e31f8d0057739a824193f4e6ac49d6a1900c66802bc9cf6aaaf939ab4c326a129924e69a57029c80e2aac8848c0ab938e0e0f7aacd556b015a44c0c1aa72609357db81d3ad529f00938e95488915e40318c8aa172f3282ab1a9cf7ab729c9cfa8aab3337ad5a6c71df52a386f2fe61826aac89c1157275cc63748315588500e1b35ac1f61496852910ae323a0af9b7f6b157fb56833c4769fb3bae71ef5f4bcd8c0c9ea6be73fdac2d9161d01c371b5c37e66b833ad6858df02ad33abf167866eb5cb1f85da94162f7234ed3239aed10925e00a0b0c77e2bc87c57e0db2f10f89756bcf093c76e2494f9303a95910f20f5eb5eeb79e3c8be1e68df09bc41733ec86eb4e3013824729c640ea33d6b5fc5de17f0e7c468a1bed63494f0deb3390f69ad5a0f2d1f3f77701c727d6be05cad2b1eec256394f03d97853c05e09d2b4fb5bb9cddeaa4c5a81de5bf7b918520f6233d05719f18fe0b68d0f88acf5cd36f5346d3ef200f79ba532b97cff00029cf515a5e26d2bc63e10d6ed3c37e23022bcb8cfd875c55023913b927b9c7e35e75e30f1cae81adc9a3f84ee2e7c4be2451b66d4ae774a2dcf7d80f1f4ab5a9d29dcea348d27e1e783f44d4750d561984ade549a6acc7f7f3b8032c57a609e9c56dfed357cda9781bc2fa93dba42e4290aa318079af32f0b5aebfe178aff00c77e3c8e6bfbb9e322ddae93cc21893ca8230a01e9802bb2fda43529ae3e1bf84eee795ddee163909e8395071e95715692133e759e4dba9bb139cb7a735eb5fb34fc33bbf8adf17348d021849b2b2945cdeba8fe05e83f3c578a35cc971abc505adbc93cd290b146809258f0057e98fec49f0867f847f0e2f7c6de25b568b59d614ac6b22fccaa7903d457d0d2873d8e0c65650858f6bf1d6a514096de18b450b67611ac5c70091d3a570ff79b0a060702aeea8d2cceeececef2bee258f3515adb9e067bd7d3e168c69c558f96a92e79dc8444579c1a8a4da3233cfa568c91050493d05625d4a61dc48ebeb5d2d5c94675f6504b281f701603e95ada4f889748d1f46d414fcd04ecce99fbcadc1cff009ed58d7134ad1ca638f702873f956178a750863d02de385f649144ced83d064573d48db52eca51699c17c49d34787bc6fac59cb09fb25f62feddbfbc1f391f81ae21eee7332c6ae420e460f3c57a25d6a47c6be1986e7507126a7a0dc792ff00de7b671c13df0081d7d6b8cd6b4eb7d1a3628e86e26394ce38079fc2bef787aab9d15191f9fe7186f6151ca278ef88fe1b45e2ef16b6b5a8789aff00ed51c9e6c033c4401ce071c5753aafc1cf87bf177c71e1f8bc50f7715dea92c56723db614ca7006f6f73ebef56dee5ed6efce5039fbc3d6b6bc17ac193e247865e340a23d4e1ddc772c00aeace72fa73a12a8736579b5655a34dec7d5f69fb1f7c2c3f0bf4af85be205bfd5f4dd258b5b3dc4c5a48f279507ae076adaf83bfb267c26f829e207f127802caf2da79a268a4125d3324993939078e2bd4ad2e111e539624390735a56ed6601658db739c907a57e4d52379347eab4e7cd04cd18c85e095ce3a0e6a72df2ee03a7e55512540a02ae00a9c4836f4fc2b3b14d9c5fc621e77c39d6233c662c5780dbc1a8c56d6963a79576110c39500a8c7ea2be83f8b48927c37d61989cac79af0a8364eb0ec210792b92c71dabddc9e319d394648f0332ba95d18171e14d4f4bd61358f0dea4d61aaa7cd23407f71337f7248fa367b9ebdeb5e7f16fc4cd6ad64d1b564d3f40dcb87b9b425a59467a2649d99fa55866892292de16f28ff00795f1bfdc55030b59956814ef24b3337273eb5d75387a86226a6d19d2cd27878720db7d1eef4cb76b4b7824b788ed7966930d34adfde73d4839e95a1a4deddbf88b41531a2c11dda805576ee24febedf5ac917572acfe61692427712cdc638c559d1eee797c49a144d27ca6f54ede38feb5d389cae8e130ef94e3a388a988af791f5d46d8038f4fd6ac83ea05548a372327a0e724fb54c8c7bf6af889fc4cfaaa5b181f102d6d6e7c3b31bb81a68e2c49b1793907358c96ba0fc46f0e584b7fa69314256648d8f4742315ddbc715c40f0cc8191d4a9079e08ac8d3fc350e9d8168c5225cfc8a70bcd73d55756374ec78c7c40f851aa25dc5a8f8025b7b742ce6e6c265f92eb70c30ddd4703b1addd07e19f872c2cb4bd52eb425b0bfd32dd8471c529f2d0b1cb0fc4fa9ef5dcf89e3b8834bb88ace5486e252151db1f2e4d79fdfdb5fc2c2dafbc4f3ddaaaa968d1884279c8e3af6ae6c265d52ad4ba154c44211d58fbd692d74ab7b3f25563691a4dc33dc93f8d606a3731c31493b3ed5452491d47bd58d4af2691d369c4118c2a6e271eb5c96bb7c6e8db6956819e4d46658768cfdd24035f774683c2d0bb3e6275157ab647a7fc288ff00b33c351ddc921336a5397249ea3248ae8f52d5f4a85e58aef55b6823c6640f2007f9d78dfc7af8d1a3fc05f055c6af318bccb4b516f610646e6988c038efcd7e596bbf173e25f8c75abaf106b1e28d442ddbb32c11dc3055c9e0601f4adb27e1cad9f55bc363d55888e1a8d99fa1df173f6f3f0c7c35d6e5f08782f484d49a2caccf9246ece077af9bbe277ed4df117e27c5f65ba30d8d8bf2218c7507f1af9ae2ba0d3b5c5c33191fefc8ff0078fe27ad5d7f135bd9c79f3d582f0029cd7ec79470565595d3e6c534e47c86658cc4e22f1a6ceed2e56501d93121ef9ce69599581dc707b7b9ae5b40d5ee75e923b7b689cb6782057b3f84fc0b14091dfeb68256072b171fad7ab5b30a18583a78489f39f51af3d6a327f82be16f116ab73ac5eec68607b4905b8917ef48178c7af3587a6e9fa65d8d59359541a83298da37e0ee0c3247e15ef3a52dec36111b6dd1f90caf1c70a919c1c807f2af3cf8e7f0deeecb5383c6ba469ec20d5c049d631f3433107078f5afc278e708f1d7aaf73f41e12acf08f959e7361f0eed6faf6175b982e6043ba5b7762b2ed07a020e6bd31b49f0dea16e3c3761a45d4198be58e4524640eeff005f7af222badd8c86d753b19e37046cb800ac80f6aeaf44f1578a64b46b2baf12dd3c11fc8b0be4330ff7bffaf5f8c72f2c9aec7ea8a4a4933166f8731d95f31d42fd43239f2e0840247d4f5c57a1f83b43d3ecb57b6b888a9ba109326ce14000fa557d361b78620e34d9efee0f260841d993ddd875fceaee89e20375adc9a54b6a96d3c113b32469b55783fe735abb3b15d0f2bd26749be29dbc80e436a3c7fdf55f6713ca9073851fcabe2ef08c2aff0012ec518671a8e73ff02afb65a256da40c0e057dc64e92a67cbe60d398231000c54881bae38a558f69c9a9a15320c0e95ebc8f31e9b12c19eff00855cb6e7393daa18e12a78156615d84e6b296835a96602706ad2e0953e955e2e578156a25e05645a4cb96c3bd598146f2c6abc03a8153a295392735259680cf15205e79e6a24ce715610735320268d78071daaca8e39a8a319515305200fad66c09075ab3175fc0d570a7d2acc4071f4a9570245e94f1d29b4e1d2a80923e86a74e82a08fa1a9d3a0a9604abd2a61d2a14fbd530e9597501f17dea98608a8133bb8a9929b76033cd40df78d48d519eb5b01137de34c93a0a7b7de351c8481f4a00824eb50c9d2a6719a8a51d2802b9eb5130c66a47c83c540e58820d340569fb8cd566ab129273555891c66a806374aa77400c60d5b073d4d54b8c722ae243dca8d18623355aea3c0e2ad13b6a2936b0fa0e2b4d132919b2459193c81513a2aa9e2acdc038ca2d54b93205c0e8455c2d7227a152720ed51d4b57cf9fb5528165a3b31c01e6019f5e715f40907706cf00e6bc1ff6ae8bfe24de1f931d6e241f8738ae1cdf5a1737c0dd48f46f02db695ab68df08e7d6ed61bb8a0d3a597648320ed8c9c7e95996be16f1ef8e759d4bc73e2bd5668fc2ad7062b2b1b43b9a10a783b579fad711ac6a5e2bd33e147c26d4bc1b04971a8dbc728f25064baed391f95703e0cf8f3e3cf0178cd35292e265b337216ef4d9d48daac70dc1e3bd7c0b579bb9eda67b37c56bd9ed3c389e05d44b6b6bac48a9e1fbddb978253c3213d8e31fad79ec1e13d4fc2b6975e10f03c56905cd9c425d77c4178c1764ac398518f5207bd7b6fc43d3f4e99b4bd7b4e0bf669aee1bfb51ff3ca478df2071ebdabc1be21ea622f0d4b35c5defb68aeee2eee6157c19a72d850df41d2b482378b6437563a8e9bfd8b76de259b556bf9cdb5f5b4a0ba2a1e8e3d322b13f684d62d13c13a4e9b14cf32d9dd304e4e1541c01f90af21b1f883f10f51bfb86d2a0b8b82c09caae5625c7033db02b5fe2a6a72c5e0ed2ecae59d6508b2b86e4ee6504feb5bd2a7cd346f2b28dcf63ff82747c3ad0fe26fc70d46ff005eb34bab3d0ed44c9138e3cc3ca9fcebf4b7e23cd158da5b69b1c6a8072a8980140e057e7bff00c12a75dd334bf1cf88acf55b8f26f357b557b407f891460fd2beeff88533ddea2b3c326e545d8c3ad7d761b0ed34d9f298ca8e5268e3e5c918e09f5ab36a8863049e79e2a2119cf5eb52161047b9b8c0af6e292564798bcca7a85dac195cf38ed5caea9a8a98faf5ed57b58d5177b0dbeb835c76a7aa232107835aa571b6913cbac14254c8141e0f3dab92f88de25b5d2bc137b72a079e0058db8e4e79acad5b58904cfb660bb72464e2be7bf8f3f14dac2cdec63bb57db8665073cf4a5560a0aecba69cf445bf03f8fbe2278b3e2ddac5e0db0966b28a158f548c2f062073cfe35f41eb1e1cb716f71757f244b7570ecc32788100181e82bc07fe09ede2f4d53e366b5a5df44915aea1a761dd8f0a33927db8afaa3e25cff057c3973a8eabaef89fecfa6c31941648dba5b971d481eff5ae8cbf34a9859a8c4f2336cbfdac2ecf9faf1a0d5afce99e1e45ba78890f3ab6538ebcf4aa1a6dd4fa578c743923742f1ea70062872b90eb9e9ef55fc4bf16a6f146749f871e163a0e904ec8cf9799e71dfa74fcea95b46be19fecbbcd72e82ca97504be59fbe086070c3f9d7ddd4aff005cc14afbd8f80a54bd8e2e291fa9764657856690f2ea1bf319ad1b59541193f5ae5348d5d6ff004fb2b8b63fbb9ade365cfb8cd6f5b1ca062f83e95f94568da6d799fad612ee92bf637239973d7afbd5a46cae7776ac7b67573b7918e7247a5737f16be317833e0bf826ebc59e2fd46381235221841fde4ad8c80075eb5c9256d0e8d8f3ff00dac3f68ff00fc14d0d7c39e338ef19b588be458622db81c81fcabc57e0dfed05e05f8bfa9df697e14b7d443d85a862b3c64741efd2be29fda13f680f137c78f17b789b5952ba6da31fb0427af960f1d6bdd7f60df879afe892ebbf106eb4c96db4dd5a1c5b99786208f43d3ad7b595bf67b1e6e3e9a946e7d5529f38acaea60cb1c023a0c1ac7f14f89fc2de17d126f10788f5686c34f88ec3348d82cde83bd74da9b885279af537dbe9d6b2dd48a0725517762bf303f683f8ebae7c5cf11cb11924b6d06d2431a5ac7d58824027d735f43eda51d8f1e95055773ed25fda5ff67ab9fdd2f8f91240083be3231922aff867e36fc086f1269da81f8ada708eda712146620e0633fd2bf39a1f863f1026b686ea0f066b12dbce8248a44b6ce54f4ef4b17c2ff887f6b480f8175ae859f7da91f28e49e0e6b87155ea54a6e2cefa386a74ddd1fbe3e0df1ff833c7fa72ea5e15d7edb55b6007cf6b286031eb8ae9c152011d0f6afc31fd9a3f69cf177ecede36849fb43e8d35c98afb4f933b90038381debf69fc15e2eb4f18f8634cf1469e8e90ea30a4e124182aac01af8dab16a763dba2972a67548c00c03d2a600edc8ed54e3704e54e73deadab0c1aca48736dec70ff0016256b5f0facd136d76991739e71935e6971202f80ff002ed049ff0068f5af40f8cd27fc48ad63cf2d72b8fc39af32924c444824735f4d91d2538ea8f03319b5a2632eee4ac6c41fba3247b555f86b66bacf8e27d72fc6cd3b438cba971f2eec649c9aa1a94ee4322b60907f2abb6f14fa3fc05f197882ddf648f6970cafe98538aecce27eca959186534f9ab6a7e6ff00ed95f19355f8c5f13b5610cee34bd12e5a182353f2b10701bdebc2ecef6ea58bf77bb70ebd7353477975757b34ee37bcf3b348cc7839279a9ac11ed3507b6e00c16dc467f2afbaf0faba9d3b2dcebcd69f2e8471c3a9ddb88c24ac58e3be2b734bf09b348bfda52a2292091bba0aab3788af2243041838e01d9d2a2b3835cd55f3b9f078c938afb6c6c9c67ef23e69aec7a7693e21d03c2af1c162126901c1da327debd87c0dac5df89ef63f26663112a76edc81ea09af0cf09783b44b4617fe23bb638e801e07f8d7b0e87f13fc1fe1b862b5d1a0174eb81fbbc28e3b9af1319cd66e3a12a3dcfa0b49ba7b564b70bf708c11dcd5d90a789ee67f0eea1113637287715077c6f8e1c1ed8fad70fe02f12cbe2694ea57a0792a33b076f6af4ad2aee142f38992256fe1239c57c9e61819e2e0d33af0f88f6124e2786789bc05e3af076a773a75e6ad67afe9b202615b8653344bdb00f3d2b98f01e8d05e5d6adaadfc664d374c2018f1cc931ce231ff00d6af51f8c7abe8977abe8d616f39fed6898caab9fbebc64570c3575f0f37d9c428b6d35f35d4a01c067000dbf81cd7e0f9de0a581c5b823f52caf172c4d14cddd63c37e3ebfd04dfe9be20b4f0f2ecf33ec21c2944ea33ef8eb5cd7c38b9d535496f2e75bb9fb4cf6e8f109987cce00c7e35c6f8ff00e24eb1acdd368d15fbdbdba7cee23e59c9e838f6ad8f8530ebb73ad7fa4da3db5a25a3ed6618327cb5e7c75b5cf522dbb9cef8123337c56b28f1906ff903d3757da4df249b07418e3f0af8c7e15c0d27c59b594b9f96f49c01ee6bed0954190b31c0afb4ca5be43e6b1ffc560493cf356ed0845c77aaa1d38c1cd4f1e40c8e7dabd89b3cfb9716439feb53f94ec372b63355a1524e48e957957e51c562db65c55c96de22aa373e6ac21e703b54500f970454ea801e39348d2d62d46481d7a8ab5128241cf6e955630738c55b81791dea1816506707352a6467351c687381528186c54816a0e40a9f91d3b55781b031e9538626a00915989ab71fddcd520c723357631951ef40120cf7a70e94d6c8c60d2a124734012c7d0d4e9d05411f4353a74152c0953ef54c3a5429f7aa61d2b2ea02afde153a540bf78558418aa0331d4f5a88f5353119a89c60935adc085c804d45274a99949278a8e4518e2802bb102a290e3af3531520d44ea48e451702bc845576600631569e323af150cb111d39e29abf4029c8011d3a5559179e9579a31d4f150ba0eb5443958cf7e33eb552652013ed5a13201ce2a94cb9040fcaa93b0afd4a327d3a5579242bcedab72201f31aaf3c7b81ad13b8f98a52c8e40e98cd579d4f5ec6ae2c60c6727a75aad30c9c8e99ad23b932d8a132ec56c0ea2bc23f6aa729e1dd19cc64ac733138f7af7e9903000f7f415e21fb53459f05d93119c5c8009f722b8735b3a06f837adcd8f03eb7a2687f0f7e18ebbacdfa59c690ca91c8eb95472a76e7db3d6bcd7c49f0bbc6bf16be217db52db4cb3d3ddc7da2f92e1424899cee51df8f6aeffc1579e1cff853de014f14da5adc5ac970f6b189ce10bb020027b73fad735e3ff0b5df812f552e2c35ad1b4fb9dd244219c4b13641236b11919af82fb4cfa0a31524751f1f3e2ff837c0f73e00f865a35ec57e34eb88cea77519e0200571fa9af09f8aba0c965e31d66c9eefccf0ef8840bcd2aed3ee6e232538e3ad5af887a5fc32d37e1e58cf2cb2dcf8aaeaf16e2796572cdf670795fc41ae8f4afb178bfc31a8d958da35c68b656093d934a99fb3ca01dc03673fad6f4e37d0ea54d1e6ff000dadee7c39e1fd534a3a65c5c6b177704402200a32e39e7b715e7ff1ce5bd8e4b5b6993cb9805675272074e38abbaaf8a753d21a48f48d767b5490925baba13c1da7b573df13a77bbf0f68d7be74934b3c0332c872ee7d4fd6bd0c2d07ed1361555a0c4f0bfc57d4fc0171a078afc3939b5bfd224567d8d812a03928715fa7ff0004ff0069af037c7af0bdbcf67a9dbdaebe8805cd94ae159881c919f7afc9af02fc24f881f1463be5f09e893df43a644d71395048555193d2b99b6d63c59f0f75f33d8de5ee8f7d6cf805328c083d0d7da53953e45aea7c857849c99fb9a67860252e018dc1e01e87e958daff00882d6ce00a016272062bf3e7e0f7fc1447c53a1db41a3fc4eb05d5ec0155fb50004800e324fd2beaef087c78f835f12ad7edba3789ecad59f07c9bc9f6ba93daba21a9c7cae37ba36756d62ea70cf0c47693dab93d52f2e1173fc5e86bd122d3b49d42d49b1d774ff2d864b8990e7e9935c7f88ef3e16e83234de22f19daa18c6593ed0a0fd715ba9282bb3349b763ceb5aba5fb0ddde5f948fca521793dc57c1ff153597d4bc457c8ae5a3191bb3c7515f4dfc6bf8c3e0ed4b4ed42c7c03a935dc710c3b83c7240073debe42f10ce66b9b9763f3390493cf7ae3ad8c8567cb13dec0e19455d9f4f7fc13a2da2baf897e269186e78b4801011dcb57d81f1cfe04f847c51e19f0b5d6a7691daeb77374c8276976a6ccf04835f25ff00c130d527f8c1adc5336124d3d4313e9b857df9fb53786f47d5adbc2367ab5f4b69a725c36e92062add06791db15cf4b9955563cece2d1a6ec7ca3e3abbf04fc1663a3f866e62d73c4d20d9988830db8c75cfafe15e756de12bed7ac2e75cf146a4cf348566404f24e73f857bb78a3e0d7c10f0209fc4ede3089a59a2f3e2867943bb139c0e7e95e1777a85cf89a3ba97452c227662163e8a32702bf40c162634f0cd33f2eab097d61491fa57f0fad157c27a2090e0ad8c407bfcbc5761046bd09c30e95cdf8274c9a0f0a688262db92c21cfd760c8ae8e15ccc01e9cd7c0621a9d4933f48c1cdfb18dcbf681906652300838c751e95f097fc1467f67cf89fe2f9adfe23f866eeeb54d22d149934b889fdde072d81c57deb00556048ce391e99ab2f6eb343225cc71cd0ca36bc4c32ac0fe15c53ba6762773f06b56f0878d7e1d5d787f5af1cf86cdadbde27daadede627e68c13c1047723d2bedff00d94bf683f137c64fedcd0afb41d3b4cb2d1ad123b78ed861718183d3d2b83ff82a798e0f8a7e18d32d582241a4029128c2a825bb0aa1ff0004ef8659cf8de65201548a3dddb381915ece5fac533871df01f5af8a2ee583c2de22bc918b30d1ee813d33fbb6afc8f4b38e4d560de0edb8be8f773eb28cd7eb4fc477169f0ebc5329700a68d747763fd86afca2d2c35c5e69a17e676d46d538f796bd9bdcf3308ae99fa5f6b6b258693a65b413b451456912054518fba0e79eb5b5e0d0cfe30845d5d1757b29d8074523851ed45d69cc62b0838422d2338ff802d1a458cf6fe29b79c32b793a4ddbb0271d00adebd38ac2b919519b75ec7c2df082f3e01e9df1abc53e2af8cb7576d15b6b3335a5bc71068d887c60e4f1cd7ec3f81358f0f7887c29a5eb5e1281a2d2eead11add0aeddab8e38edc57e02eb8df6bf12eac48c89f559db9c6726635fbbbf04f4e361f097c27046a540d26df807001d83dabe2b13049dcfa5a6df29e8d6990a011cd5f560a36fb66b2ac64070993bbbf35aa9c9238fad71bb5cbb595d9e47f1e7526806936d1302cd2962bec075af3692eaf65500e00aed3e32a7da3c61688e7290db970bef9c66b919c2ab2e07a678afafc8a1ee1f3199c9ba9633ae91a3b596594e76a935b5f176e2d3c25fb256bd2c92edfb4693212deeca71fceb235724d84b1a0cf98367e06aa7edc1243a27ec9daad90711892ce38d4038eaa05726793729281d793c57b43f1c2ea6b8b871324e55237c803a30ade92e814b5bc8ff00dd722b02088456e88c78233cfa56ce9ef6f7569241148bb906e0b9af7383b1df54c5462de87af9b61b9e95d1d04b7b059c4ae62439191c5546f17dfc5fbbb68140e83029b671a5ec61244394f7ad08f4fb7848905ba9c7739afde2a53863a9a92923e19a9c1bf748b4fb2f17f899c2c70c8b1ff798951cd7b57c38f847a759490ddf88756df8019a14fbbd3a66bcdacbc492d945e5c72e113b0c54b2fc5e92c55916ec920600e2bc5af82c3d0d6acd1c957eb151da113eb78bc45e19f0ee9e91582a81101844239f4ae27c73fb44e95e19b7627cb7b820ec883723f2af96759f8cfe24923686d0801c150c0fcdcd72fa769de29f1d6b315969fa7df6af7d70c1556342db73fa57c666d9e6070178c1dcf630193626bfbd247a269ff1675ed47e245a78d279a4ba713148a027e5da7d39edf4af45f117888eb727956f23fda92e0dc08c8f97e6c12b5eeffb33fec356de17f0e5cf8e7e27289f5416ef25b59b2fc90fca4e48f506bc3f4216f2f8db5ef0d5cd9c6f2dddeba413b21cc601c614678e2bf05e22c653c7d775227e9193e12785872b25d3fc3779737d69e27b186def211303716acc1240c3a8c1ea3f1af67bcbeb9babe5b8fecc4d36216e7646a47f74fa5717aa78574fd0e5091dddcac6802bc6c36bc8d8e7691c8e6ba1d3a5b1be12e9904335bc96766cc6392732b11b4f527915f3f1e87b16b33cdbe11a39f8a9646320eebb62df9d7d992ee53b641fa57c7ff02a14bbf8a36aa79092bb0c7b57d89380d961c63ad7da652bf768f99c7eb54ab1904f0b8c5685a150bf30c9aacb10037763d6ac44a460d7a6f5670efa932b15723a835a51619148f4aa4918739ab908200150d58a8b689d4103d2a58a4646edf8d3170065bd29f180d818ef4997b97206dcc491f855b8ce3e6aaf021038ab4170b50c63e26e724d585eb9a8214279c54ea08ebeb520588864e055955e39a8201839f6ab68ca0608a960342f356e1e83e9558e7356a2040a00924ce411da950e7f1a47072285ed4809a3e86a74e82a08fa1a9d3a0a9604a9f7aa61d2a14383522b738acba80f0707353ab64557a99338fc29bb0148f5a8df9c9c54afb83e300679c1a858b0c82a4568808cf5a63a8c134e3bc1f940a69ddce54e6a8085907af4a8d94d4fb32d8cd0c8a4e32062807a159a32dc8c714c309231c0ab69183ce29e2025ba62a93b194ea59196f6c4ff00f5eabc96d83c01cd6e9b6041f96a07b51fdda7b98739cecf6ec7238acf92d645cf1f957512da2f39159f730796bc0e08e33548a53b9cd4f19ce08e7d2aa4c36035b5710ed62769acbbb520e6a91b43528b8db1f4eb551c29c806b41ca98768aa05194b123e95517a96e29a2165cf6ed5e2dfb53c59f00da3a6322f973f4e335ed84609723a0e2bc57f6a24c7c3f85c8e97cbf9122b933695b0eec6b8456958f39f14ddadcfeca9e1b78d82793ad0449319d986ebf857afddfc79f83da8e85e17f0478a35ab7d40c765fe9178d1931c2e17001cfbd78d6a56ecdfb26e8854fdcd749e073f78d78b6a10e3055e272f87215319c721481ef5f9fc257933e9b0d4db5a9ee7e2fb6f01cb74dacf8774bb0d7e195dada16dcc16d73d5c8cf423a67d2b2be25f8e7c37e07f0143f0d3c13a9c491dcc62eaf658fe66f31f3b9037a0f4ad0f811f0f74dd4f41d57c5706ac2788dac915ed974452471c7b1af07f895e19d0bc3378d0417723dcb132804fca031e00cf4c62bb284f9a7648eb54fa1ce6bd75a3369289653b3cc622642d82724d47e3bb79aebc39e1886da32f2cd6d1c31c6bddc80057357484c2ed07fac20827dabe97fd99fe1d5afc4cf897f0eec2e2dcc9696502dcdc80b919539fe95edc2f15b1862572419f667ecadf08a0f807f00a2d6e7b189f57d5acc5c5d79899ea33b7a719cd7c4dfb467813c3ff00127c4b73ae58c30e9d70ce4b040021fc3a75afd27f8dde208747d1d74481cc16cf018c03d000b802bf393c6c93e9da95dc16e9e7297326319e2b7a7524a4b53828e123521cccf91fc4de02d63c3370c8c44b08638651c601e0d60ab5cc4e4c7947273e629653c7d38afa77508ecf588becd756f1ac99e011df358be25f871a5eb360abf67892e547cbb14007d2bd8a55da47355c0a77b23c42d3c53e36813c8b4f126aa1718c0b87c01e9d6acdbe91e2ad7835eea6d7f730f3ba47959b38ea3935e9da0781e0feccb89dc24771a649b248f6fdee95e836ba568773a0796ccb6ec91b3483381dff000ae87898ca0d1e6ac1b8cf53c9bc316d347a06a76ec8ab1c512ec01307ef0fc6b87d7b78bb9370c16f5af44d1665d9e2568a40d0a220420e7f8c5701e259125bcdf918e463f0af230e9aa8d9ef53a6a10d0fa5ff00e09b9a8476df1a2f74de43dfd89407dc30afd29f89b0f87fc41aee9fe1df145d88adf4a843216200dedc927f015f9b3ff04d6b04bef8fde66dc9b7d39df3efb8015fa53f16b40d22ff0057b6b9d5adb306a16c210d8007982bd3a5fc547c9e749b834789fc4ef05fecad6464d63c67e2185ae906df260b827007418ce05782f8dfe3cfc23d274897c39f0b7c13b2dd8046bf941dcd83c9c74e457acf883f66ef856da93ddeb5632492bfccdf397271e833c715c978d3c09f0ee0d1ae74fd1bc3d1c28b6ec1242a37631c76cd7d5e1f0d52306e4f43e12a4529a3ecdf03f8e86afe0dd0efad143433d94441031d54715dad85c79c5650460fa5703f0f7c3f6fa5fc38f0ddb5b20d89631738edb6bb1d2e5104607a72735f275b49b47dbe112f668ebadd43283c7356b6fcbc1154ec2449630e5bae2af02140c735c926933b363f2aff00e0a88e66f8f9a3c248cc7a3a93c7d6a5ff00827327976de3c6ec2e21039f5c7354bfe0a61893f68bb672381a3a0ebec6b5bfe09e56f8d3bc75807fe3e231f96057b183ba8a38719ac19f487c5f902fc2bf193b1c05d16e17f35afcb6f075bb4fad684807facd5ed323d8495fa73f1eee059fc15f1aca549dda6c8b81df2b8afcd6f858e2e7c55e1d8b6e73aadae07fc0abd6e64a3a9e7e16368b3f52b5583ca920955198c5046839e395acbd3a699f5fd4268d06d8742b966cf4048ae83584292329e1046818f4e768c5733094b0b1f16de9919da3f0fccc476192715be23111fa9d8e6a092ae7e542234faeccee47cda9c9903a64cc6bf7dfe18db31f865e1940a014d32df8ff00802d7e0469c0dd6b7670c59dd71a91618ebf34b915fd04fc39429e08d16193864d3adc15ff00802d7c5e2e4cfa6a56b0f491a0b90d8c11dab7ed5c3a86f51d6b1f5481e3b8ddb700d686932f991118191dab8d3346bb1e37f137173e35756e91db01c7bb57232c7f3023a015d4f8fd99bc697676f48140fccd73729c465b1c815f6b923b52b9f29992b55336e904b35a41d44d70a9c1f535c37fc14df503a7fecf9058a394df3c71b7be08ff000af45f0ec4354f11e8f64e986373e674eca6bc87fe0abf7089f0bf49d35b1896ec13dbbf7af2737a89d7573d2c9e94e4d4a27e5a44b35c4c224859d986c183f77de91228b4b98efbc863909c1f9bb7e75ab6922e97a64d731b013ce0a45c7b75ae5e1b64bcb812ddc6ccc4fcc4e719af3e3899d09a9c19f64a9c1c3966763a6acaf09d423d6221182032272d5dce99e05f10f8af497bcf09eb01e78c61e095413f9f5e6bcdedad2d4c44c30880c4c30d91f357a2fc38f123f86b5db3967bc1f66bd944538ce00e8057a10e2bcc682b466ce59659869eb638cd77e1ff00c57b5325bdde9b28dbd0c63afe554741f84ff1475d996df4ff000cdc492b100bbe71f5afaff52b5b9b69ccc6472ae374249277467906b226f136aba6b11a75dcc643f2ec5639cf4af331bc4f8fc57c53676d0c930af5b191f0a7f623d3efe48352f8abe28fb0292ac6d2ddf2cdcf23be2bee0f863e13f875f0ab4e4b0f869f0f2196741b7ed33aef91fd4e48cf35e2ff0005fc13e26d7ee3fb4f5d6628c37a06c93eb5f51f87fc3a6d6d1618e4978033f3715f1d8ccc6bd576933dca582a14e2944d8d2b50bfd4a2336a7a625a6f051e30c4839ce7826be33f8a367a2fc32f8a7acebba9d8d941201e6e9b85c162dd49ec79afb6a2b6644191d07e39af963f6eff0006d9ddf8734bf17f95996d9cc2e71c81d413f8d70d28ceabb366555469ec7cefaa78bb4fd5eeadb50bdd5ddafa69fcd65400ac60d6af806fd67f14f892e7ed26e19ad9f1276c1071ed5e282e605db18059872481c11dbf4af4bf85370e5b566895149b461e87a576aa4e0d5ce753e635ff006748c9f8a5129fbca6463f8e6bebe23e6600753debe47fd9c51bfe16b44cf8e23909c1fad7d7499249c77afb1cad5a9a3e6f18bf780572a1303f0a9e250aa32320718a60183d2adc047522bb9cb539ad65a046403902ae4409031d2a1642c3207e556e18fe4191f8d2bdc7ca4919008047e75604b16e0a1403f4aa999436102fe356e1576c191509f518a4c945b898f6a9831ef5146a3a038a942e2a1945884e413528eb5140085ab5128cf22a409210715614d468001d6a45c1153d40907278ab4bd066aba004d5ae3143dc07120f4a075a62904d3c75a404b1f4353a74150203cd4eb52c09075a7af5a60eb4f02b360483a54c95001ef53a52b2b01c6f8e3c692f84752b6b1b9f0edd6a11cc7679d095ca023f5aa3e29f1e6a9a3e9f69ab58786ef2ead64472ed20542b819c72457e7978cff69df89577ac41e2087e126af66edfbc8e4bc9e594018e0955438fcea87897f6dbf8ff00ab456ba718ac6da3890a2c69653632471fc3c9ab407d9573fb531b28edae0f8165796e646863ccea72c08c700f19a926fda5bc40dabdae8dff000aaf598ee6e305b6c6ccac87b8c647e5eb5f9cde26f8d9f17f53b786db52d46da0f21ccc7c8b470eac48c1f980a8adfe39fc693716fa8a7c43d44bc1858a4584b14031f290327ffd55a28b607ec7f876da6bed2ceb373a4eaf6ced1eff00264b76273ec31debcbf56f8d77da2eb92db4de0cbe648f20452c2637600fde19ea2be0ad17f6bffda71a0fb2db78def6e0a91b89b09495007b2e3f5a9ad3e3ff00ed01abeb2fadea1acdddd4bb001bb4f900fe5de88d397532ab3e55a1f7a68bf1fbc3772219755d1751b359a42aaed09d99e71db15e93a0789b4fd76c21d6a1df6b14e76209a3e24183823eb5f09f873e26fc72d6eda1b5d4f401aa583b8765fb1950a49c03cfff005abe98f83fab78e9ed6d341d63c0325ae9892971766e1098f8ebb739fd3bd6ae16573c99e2db9599efd6b631dc442464c13cf030292e3458d94955c56ee957568f6a89148b3ecf97703dc0a82e6f18de083c960847a5732a97763a399b5738fb9d38ab32fa76ac7bcb518c6de077aedf53b5085a551c11d2b97bc03078f7ae88bb8e12b3d4e52fa029d4d63dea2ede39c8ae8353e324f7158572300551d909190e4a283fa5577258f4eb572e7016a9bf9a17210153de9d8d2ec8d86057917ed3312c9f0de493602239d4f3d8e4735ebccacd1cae4a2222166773b42fe26be51fda37e3b68babd94be03f0d47f6d1138171700e1770383fad54b28af9a43d9d342faf52c1be69b2378e5b8fd93ecfcbc968f5be3b63e63cd7cfda85e2581dd72fb7713ce7a9c5763e1df13f8975cd3b4cf863e7ab69375a8a4a625e1f96e7f9d7a2fc70f82ff0dec7e15699ad6996175fda30ea021b87f3477072315c0b82b1386a8a335b9b7fad7868eccf9fbc3ff1b7c43e028ef6c7c2babb4306a0c16753d32720d72de23f17ddebf7cd77aa6a06771800e78c7b574f63f0dbc37a86a69612dd4f6f1cce177633806bdaf55ff827a6bf7ff0fc78efe1f6ae757f2d0bbdb30c3103923deba330e1a96511539f53d1c0f1152c4bb459f293de47216104872413c74c018afd23ff008265f862daf7c297bf10ef5363d94460858ae78031c57e7bae816b6fa8ddf87757d3a7d37548ff0070b148bb4993a1fad7eb2fecc9e0b7f84bfb33693a54ea63b8bc8bcd663c673cd792e1d4f471d5e356092396fda47e26595ca9b7b8b3927019954248015503ad7c8faadcc9aa991ad9b7920ed0c76c87db07afff005abd8fe25f892d6fbc6177a46ad2a2472b18a0917fbc7803debc8dee23d0b5596d4f291c9b18a8ce31939ff3eb55049b161ea250e53ccaf612d1cf28768eea1639563d39f4356f40f10b4612daf97201192457ad78a3c11e1af18e96358f0eea36e97b6f1e67b7dc15a4f7fad792c9606095a09e0d8c3b37b715d896854db474ba7d85bea379a9da69b6c927f68b43b768248f95727db06b37e28409e11d1eeb4bb390492dcb244ad1b64f000619fae6b1a3f1c2e84ef1d8eabf64b988796446ac5994f4c6063f5ac1d7352bbd6ad1b57d410da5b5b294837b7cd2b9eaf8ef93fceb272b4ae73f25ddd9c82df1b0d3b51847ca6551bb0300f20d729ad2f989e680391c7e55a1abcc6486570c76be01e719c1acebfcc96f0a03c9e00cf35ad24d6a68e7cab94fa8bfe0997766dbf6854b5e82f74f913eb82a6bf4e3e2c5bbcfe1cd3ac653b654bd7dafd4815f9d1ff04e8f055c43f13fc3be2f605525fb5c418f4c288cff005afd26f8af6b235ae9201037cd23fd7a62baa8372acac7cb66caf16cf0ed762b8b3945c4b290f10e247e5645f4af26f89f70a96177a85ac8ac4a1dcbd2bdbfc68d04fa5bc2ea1278f0a80f41ef5f3b78d66568752b696742a7312e3a1c9c0fad7e8d47fdd9dfb1f9fd77cb592f33eddf857ac2dff82343b7b88c05161160ff00c06bb31a5412a6e85c60fa1ae23e1e692d67e05d16dc7de5b18b9c7fb22bb5d2e66822dae49cf6eb5f9f57d6a33edf09fc345bd3775ab18a405941e306b37c79f147e1f7c3482da5f1bf8aacf49175feac4f26d2df4adbb74577ddd0107fc6be19ff0082a2f82fc53e2db5f0849e1af0cdfea8212ff68fb3465b03b77ae29c75d4ed5aa3e7ff00f828078d7c2bf11be3541af782b5cb7d42d9b4f48cbc320232063b1aeaff0060af1bf833c1ba1f8c26f166bda769325ecf988dd4c14100e01e6be578fe1bfc49b0dcf27c37f10c4bb766f3664fcbf9d457de06f19fd9e427c2baca86e4a9b3703939ed5ece1a3cd05ca705769bb33f4aff0068cd4f4cd77f679f13ebba36a30de58dd59623b9b53ba3917b30c7183fcabf347e19ea315af8ff00c3af733c505b47ab412172fd1549ce6bf4d7e00786ac754fd973c35e0ef1669137d9f53d3120b881d0aba12b80707a62be08fda0ff00675d7fe13f8b646b1b092ff40b994c90dc44accd1124f040aeb71958c69384743f4eaeaffc33afdb9bbb4f12e92f14b126d55bb8c1c8001e339af3cf120b7b2d23c7337f69d97967c3d246a16e50927271c679afccfb38ee6d9364cf7814fdd6fdea91d33d45527babf8afe7fb0eb7a9a9923d8e88d23175c9f9391dcd615656872b261423ed39911f801a393c4fa11601f1ac46beb91bf9faf35fd06f850471e95671f185b48703b7dc5afcaefd893f628d6fe216b767f127c7d62da6e85613acf6b6cdf2b4aca78278f5cd7eafda5bc36e8b1c2a155142a81e8071fa57ce626aa93b1ecc2365617558c4fb703a77a874e02072afdf8ad078c3266aa3a796411d41fea2b08eaec1768f19f1faa1f185eb0ed12ff3ae5db0eac31d477ae8fc5d2b5c78bf51cb29030a08f4ae7aec0891b6f5c57dc6511e5a373e5b3377aa5ff85360971e3c21be75b388b06c67058e6bc8fe3af8abc0bf193e20dffc36f889a647fd9da5b1861918fcdbcf01877eb5ed5f0210c9e28d6e697fe59aa0cf6e541c57c8ff00f051ad4749f871f14f42f1068cab15d5d445e74538de7e95f339b49d4c43b1f5dc36a0a0948f24f8a9fb04f8f2c77eabf0acc7afe9136596d91b32203edf4af05d5bf67bf8dde198a49b55f869ae456d11cb48f6ad81edc0afa0be18fedbbe21f065dc22fed2e2e2c26214a4672d83f8d7e827c3bf8a907c4cf0ac1abdbe81318ae23e56e63da39fa8af095774a4d33e971384b3e789f8882de6b4bb16f7b04b6d206c18e65d8723d9abb5d13e1df8e3c65095f0bf84f54bf40fbbccb7b7620301c74afd5cf13fc0ff00823e31d72def3c55e01b55b98a4ddf68894618e7be3debd5740f07787bc2d6915a78634bb5b1b3880f2c40ab9618ef4a759491c96691f01fc30f847f183c73e14b2d37c4be19bcd32e74d4f283cf1ec2ea3a649e7a54165e051a578c25d12f52369ed1f121e0fcd9e6bf479ee43264064208c82073eb5f29dd7c29d46e7e2b6b5acb2ffa35cdcb3ae5b3d49ae5a9a6c75e1a567a9d7fc3ad1cda5b46917ca028181c0af55d32358e3da7a9ae7fc3de1e5d28a44c7200e715d5c51286c8238af26a2bb3d173d0919159738af0ff00daeb4986f3e0fea88eaacc8a5d491d0806bddd5702bc4ff6b1665f847ac151d11bf91adf0a973d8c553f6f2b1f979a0eab04a0891be703673ea38af4df85372ab36b9103c8b2723fef9af02b1be6b3b8777c901cf1f9d7b47c21bb179fdab76bc06b165e7dd6bd2c4d1704a446230b3c3ab9e8ff00b31a9bbf890653c9481f07db15f5da4642e4fa9af91ff65c468fe22cd93c8b67cfe55f5c23b9209e84d7bf974bf768f95c5cef31c4283c8a9a2e9edf5a89ca8e69f1bb6e015091debb5ee73f322e5b485b7291f89abb0ed6f90362a9c4bce40c03d6a748ceec86e94376173dcb4ab18cee42d8f4a9e38a018658cae6a28495e4e2ac2924d4895ee4d1818c0a9d40c824542bc74a96305b152e562cb712a81c54a0e0e40a8d06d5ebd29c0e4e4723d69013231c64d4d175e6a08feee2a78fad26ec0585e3a54e3a5443a54a3a54dee03c003a0a7a0191c5345488013f4a00951454a140a8c71d2a4069301e8013cd4bb4546952d65b80aa3902a78d4541923a53918e719a4d5c0f8a2dfe09fc48f0de8d6d7da2fc65d32e5f58b75b7b3fed04474dd8c71dc574bf0efe06fc75d2fc529378ca7f0aeaf6e2c6431cd1daaed320c01df8eb5f29ff00c2e8d531a6b3d8bdc416bbde38833111927a819e315d8587ed19f10ad22791752bf86d4a85f918e700e48e6ba5e1f90b56d8f5ad7be1bfc635f88767a75cf81fc39a943757203c90db2b24716790dc8fe55cdfc48f83df137c2dae6b0745f0e7861ad5e7578238e350d829c8c16e39ae47c3ff001c3c5b75e315bdd0f59d623b94b79a4732cc7632ed190148c13e95e6fe27f8bbaa78835f9afef754d7669a4185c5cb4615813b8e00e7915ac22c248fb026f867e38b3f82be1dd774b6d2f44d5e3dc6f6092d63df7084f1839feb5a7e08f017c58f10fc32d6b4fd46e34c82f258d25d3af63822001182558e78af957c4ff1a356d7fc1de1ad2b51f106ad298b7958a19cee5018e3771cf15d87c3af8a92683e18d47c3fa8eadabdba062f1a1b9672ca7900641c7e14fd94a4f467157b1f40fc3ef879e3fd0f5a8f4dd575889adb504686ef33a6620dfc48bec7a57a7f803c277fa06a32dbcfae59dc471394cc9764bc8bee00c035f37f847e20db5eea906a31e997d2cd1c8ad35c4b74c7e4041276f4e95e99e15f165ac9ac5d3bda0d97576d2c722e4b30e319c9f5ab7093563c4c54952773eabd02cadac10c7149180d96da1b3c9eb5a1757305bc45d953767826bc56cfe204762ecd2b481c1c04ddc8cf4ab779f11e5ba48a18e091f7c81707af26b95e1795dcce9e61d0f46d42559a02491ce7a7a57297a9c36715b37771308e30f0f960a2f19e6b06f242cae41ed56958f528fef173181a861988238ac0be5c0c63b56edd12092c7a74ac6ba612363f0aa47741198c8a5406c7e3502c69999ee1d22811776f246d5c0e735665540cc1e4548d14bb393801475af90bf691fda366d4e6b9f87de03b87b7823263bdbc53feb0f42a315e9e0304f19351471e3f1b1c1c2ed8cfda0bf68d3a835c7817c07724c314862bcbb524073d085c7502be715450ee15707ab64e4b13d4fe74906d8a2080e4939663f799bb934e6041241ea6bf57c9f014f034ed6d4f81c6e61531726d3d0eafe13b456df10f47b9b96fddc370ae7d80af43f891e269f53f86572a9399127f10b6d3e8006e2bc6f4dbd7d3a61731921c118238e49c5777321b8f80b16a00e5a3d7f04f7e55854e6114ea45b472d36dad4e36ca4225865fe259e2191e85b15fa7fe17f1b69de03f0d7c3cd172b12ebb100e320066200fc7ad7e59a5cbc2e3cb1d5d643f45233fcebec4f8d5e2e583c17f063c47637200b46467e71c0db9af93e36a6eac2118a3dcc9dfb19e8cf6df89ff00b25fc35f8cde2c875082ce3d335bd3ee44f24b1a0db30c8207e55e8bf1e621e0bf8332c36214b69d64208caf03206335dc78120b6f125b69de2db6da12e6d637240c124a8f4ae03f6b4d66cf4ff8772595d3a8372c408ce06ee6bf2c9a71763f43c3d47552bb3e09f185e1d574569eeec668efe3c3457253e5623f515c9ebfab5aadaaea5691a87645660fd0b0e08fc6b7bc5fe22bcbbb24b2326d8e36c850bd8f4fd2b92bfb74bbb78ed18005dbe45ec315d1462a523ae555d2574528b58fedab79d2d2c0dadc24792d14a549fd39aa3e0ab1935af1335a6b25a54488edf9b0735d9786bc37651b4d7176e5252a5303a1e3ff00d559fe1282df4cf1c4c1573198ce0b75ce6bd0951f74c618c9549a898be39f0d7877c156ff006bd5355b0d45988921b6b55fde28278590f3c8af12f10f88e7d6eeccd75fe8b6c8e425b93d0678aedbe2ddda8f12de5b59ae1c3f9aec39c03cd70b61676ed7a24d6adda7599b7a301cedebfcabcd945731ec45e8606b2c8262222595b9cf41546ee60b6dbc9e53819f5ab7e2bbc45d45c5adb98e2076804738ed54843f6d896120932ba20007766c0fd4d7546c91cd56573f4abf626d18e8707c37d3270166d474ed42fc7a904c4a0d7d7df126fdcdc69d653e4fd921673f89001af92be06ea2346fda1fe17f8255b3fd97e0f759541fbaeeca79fc00afabbe33ce74fd5ec0ac7992e6dca938e80135ae09df10ae7cf66b3bc0f22f1dccd716cf15b48a09f99989ede95f3ff8de286148a15e775dc2093d482c335ee3e26ba696ce485edb300f98ca9d4fb578778eca4925a344ac11af2dc00dd7ef2d7e8f05fecafd0f80ab173ac8fd07f0e9b68346d3a055c6db28f1ff007c8abf0152dd7a562e8b96b1b120f4b48c1ffbe6b5620ddbbd7c056569367dce197eed2362d980e01e4f4ad6b7b382e9145c4714a07412206c1fc6b9a88caae08078f5e95d169f2cb8527bf5ae1aced13ad1c1fc725874cf064975676d046e2754c88973cd792da79970424c616552320c09cf1f4af54fda36e367813e418dd7299af23d32ee349cacd2ae3a939ef8af7324a4e70726785984dc65a33aa89e58edbcb8d9515100550a0000738f41f8579df8a219e3bc5f3561ba8060949e2dea0e793cd7a04522cb10643918ea2b07c43a7acea5fbe2be821452d1a3ca55657dca7e1fb3f0a6a0820baf08e833b852cbbecc039e86ba7f87df0d7e1e6afe319ed2fbc0da132a4424f92d802189e2bce21b99f4ab90d17df2401f9d7ab7c0bba9effc77a94b263f756f186fc4579f9be1952a5ed2276e02ab9d4499eefa5e9f6ba3da269ba7db4305ac7c4714681428abd1a0ddfceabb4a0363dfa9a9e070c4015f09522f9b98faa4ec95cb4a30b83d05473aa98cb63900d4c84118a8ae09103edeb83443e2227b5cf9c750bd924d6b5695ce48ba2809f4159d752e4609157f52840d535103ac97249ac7d458428a3beef5afbccb17ee6c7ca66124ead8ec7e05ff00c85fc40d8eac9cff00c0457e7f7fc151f51b8d5be3be95a0dbc6d34915a2ed44e492474afd02f8073433ddeb9e6f07cf5507e8a2bf3dbf6baf1968da67edb51eb1ada2cd6ba5491964700aed079ebed5f278fd2b33e9f235ef2b10fece9fb325bdabd9f8b7e256495c4b6b6381ce3919cff857e88784b53d161d04410450d85bc11724e1515463bd7c7be3bf8c3a3f8aeff4fb9f8736f75aa4cea02db5b465523e831915a5a6fc37f8bbe3ff002c78f7c64de1bd1f391a75939324a3fbac7d08af97c44ef50fd1e5052a28f66f157ed01f0d74ad465d23419af7c4baa2b85fb3e9b01750fe8cd9e39aeabe1e6b9f187c512fda75dd02cb43d224c3430cae4cdb7b67038e2b83f0d786fc29f0b1a3b4f0c6910db9741bee2550f2b1ee4b119af71f0c78960d574912bddc00c7c348c47a7b9c0aca352ecf1eb529246dac200c161903ae49fe62a17d374d76de6dd448c725b8cd73f79f127c3c97c34eb212df4e0856fb326e553eb915bb7114923c73b96886d0cab8eb914e73be88e7a72e42396de18dd95141c7a50800e40a0b1196f5ef513dcc483e63822b8ea248ed8cb98b0f2844e4d7cbbfb6df8c3fb23e1c5d5a24a71392a4038ed5efbadeb91dbc6c164f9876af843f6edf1e412d85ae802532492b96600e71f5abc26b52c7b19752e6a89d8f8bf2b329753d493c0ebcd7b37ecfba58d6ec7c43a7c17845ec564cf0c4073210a4902bc6e151e5aaa642815dbfc1bf18bf813e21e95ad336db63288ae39e0a31c1faf15efe323fb948fa1c7e0554a2dd8fa27f658808f1f5e9909de968db95b82a47515f58c0772e00af9fbe15e876ba2fc68d5e4b051f62bfb43736ecbd36b0cff5afa06d4794791c74aeecb9de163f1fcce97b1aee25a8a143f7c54ea153a0c5451905f0075e99a9b6e7a8e95eaf29c4b6245cf51deac41c9c75a644991d3b5588220ae091c5448a4aec99100e718352a824d2121986074a9c30e80541a248411c8c460707ad5889303183c51129eb9ab0001dbaf5a87a01240c3692c2a448d7271dea38e3ed53a80b49ec03d133c548a983d0d2276a94366a407819c0a98038e951c639153ede28001d6a689726a11d6a7868024dbef4ee4375a29719349812c60633ef529dbd8d4049000a72f5ac981281938a90271c546bc11532f4a4ee07e5b59f87a1d4347d424f0ee9f6e74f88ccb697f38daf3aa13ce3fda02acfc38f177823c3f6338f1958cf753452472dadbc28bf303f7b71c12471eb5e323e206bb6f6b2787afa697ecfe46f540e40c9e40eb83cd573e24b9d4992642b1c8576b01c1e2bd9e5bee558fa835ef8c9e04d5534e1e1ff0006592ea4d2b00cc815933f2a8e3b1c9cfd2b0f54d66db46d66cf4cf1cf83acad679fcd9a0785542481802a4f1eb5f3a5beb135bb0992e248ee036448b9c8c73c7a56beb5f12354f12dac516b172d75736e9e5c333365828edcf34a4acb440df43d2edbe204dac5f5a6991784740b796d5da049521030bb8fcc79c74af57d226d6ee63d4b50f0f36896da3d8a6f32cb66b234f81ced27d0e7a57cafe1fd41e7d4665b63b7cb88c8cddc6060feb5d37897e256a1e1fd1b46d00de4f0430424ec8d881283ce0e3fad3a699cf56373dfe1f1bf86d35042ba62ea57170be679d13b4298ec368e066ba78fc4b670ea50dd5adbc96d6ed1892487cd25970467049af99743f14af9b64f25d0114f89464e39270057ab78d64bbb1f0c3df4170524318f2d97ab6473fa0ad2ddcf1b1545d4d8f6497c4b60351375a7dfdc3acea2508efb8e06067f3ab7e18f185d5ff8c348b4b8be62925d0033d0f2315e17e06d52e754bdd3a0b990891f4d69559bee90ac01af42f87933ddfc44d0a2900da350da8c08208001a9a8bdd382197ca5247d9fa9cf2098aef240240fc2b22eee30bb40c03deaddfdc452ccd81d18fe359772c58e33dab85ea7d250a3eca1628df90509038ac5943b4a238c0dcdd056acedbf7276e715ca78efc4f65e09f0b5d7892ee6c483f716c3fbd21ce2aa8c7dad5504695251a54eecf1cfda3fe23eab67a44fe03f08ccbfda972bfbe953ac6bdc57c4b7fe1bd7b4c90adfdb3b4ae7749201f7989e4e6bdde4bf9f5ad46eb58bd25eeae662cfbb92339e0568c6b6d709b248918818c15afd1b29c0c70b15367c5e6539625f29f35b24d0b626565f5c8c538b201b8b0e2bddf53f04681aa6527b75424f2ca306b02efe0c684e5a3b4d4a446238e7a1c57d2c718968782f0724f43c995c489b97b73f9735e8ba3ea5a6df7c10d4bc3d3dd2437716a91dc42b9e5877fd2b3b50f845ae69d6f20d367fb41c90a07de22b9831ea5a548d6f7f62d0e080c1d70091df14aa358892627070562aaee8a59a323790a406fa8e457b078c7c40fe23f81de0fc2167d2ae6583a9ca90460d791cc630fbd0905c6e39f5af4cf81ba3dcfc46b887e194658f9da84774b81f7541c1fcebcfe21c3c6586f6afa1dd96c653a8b94fd3dfd99efae34cf815a16a7e2394c612c83b3c9c7cbcff004af8eff687f8abe26f8f3e359b4bf08c2d2e99a3ccd022463fd6107ad7d0bf1f3c4d67e11f0ae8df0c2cef52c634b78d2795481f28001e95e091f842d74ed457c5fe09d40340c761319c0623824e3d4d7e1388ab19556d773f52cbf0ee34d36798dcfc38f15ddc263bad38c0fc28523bd58d13e0f6ac6fed45dc47cc593386cf4c57b5d86b336a8cdf6c0fbcb044949e371fad5e92e64b2d524f94910465f763b818ada8545747754a1cc8f9af52b3bbd3b5fb9d2c3a16467381c10a3193f95711aceb56fa25e4daa614c8e1a3881ee7d7f3af5bf142e99a0ff6b78e35750b2ba48b0027192739fd2be67bdf11d86beed35d2c804b2b18994166c03d39e95e9fd6a318ea634b012525228dd596bdaf6b4f3dae9525c4eabe65c8c61766320e7e9589abda6b512229b2785667fdcca07a755aefb46b6d7eeae4a787ed352ba475f2de18d86efc71fd6ae6abe25d57c20f259defc3ebcbad41102c2fa8b6f8e0cf4600fa578fed1ceadd1ea38f2a3e78f101b979d85d6e0ea70430e78a9347963b6bfb179b1b1264724f4f95837f4a778b2f2e6f7579ae2fdd3cf95f732a70abcf41e950841240bb33e61c2263fbc4e00af45ad0e0acec7e807ec2b6d79f147e3fea9f166e27ff008956976a9610376df8fbbcfd2bed5f8b77906a9af88ad64597fb3ad80980e7692781edc578efec6ff0b62f84df01f4abd96122fb5699751989183b769007e66b7ed6e2f24d6354bd9e5726ee6799837a0e00fcabbf2cc33a95d347cce6b26a0d9cdeb123d93bac6331edc856e467e95e17e3cbf926d4ace2b88d5247bf80f038fbeb9af78d765b3b98a5dd22a3f3c77af02f887677326a56b75687cc30dedbf3efbd41afd065ee619a7d8f8c8bbcd1f7fe953c6969680b6079083ff1d15af6b2a3b75e7d2b9cd2ed6e1b4ab299b866b742c3dc81577ce789c10718afcfab3bc99f6f877ee23b2b3489d30c066b4e01b700718e95c8e9da8b19172dd4fad765605678d4e79c8af3ea2ea752d763cbff0068a27fe10a8158f0d76148fcabc3afdbc8864b908763e08f6af6dfda51f1e12d32153832ea417f0c8af275b213593dadc4c318c76afaae1cf7a9bb9f3798e931de17f16d9cf73fd9ecc339c28271c57537d6d0de40cc8304678af9f3c5c2fbc35aec57b63705009060fb035ec9e10f118d734b42f2ab4a506ee466be92746cf991e4f3eb630753804576a31d0f7fad7a4fecf67778d35bc630b043d3f1af3df1744d6332cb83861907b5777fb32cab79e28f114c7ef2c508e3dc1af0f3da9fecf63b72cfe29f41c982ff005ab16c7271e94d308c939e87351197ca7f95871d79af85b5d687d6c5dd246a2671f85326c985bfdd350477b1edfbc375135c2340406c1dadd0d6693e6487515e27cf7aa1db7b7ae58645c35723e20bdf294b6fc61ba67b55dd675f82daef5559261c5d3e326bc9bc6de34192ab3800676e0f7afd3329c13961f9bc8f89c7d46ab58f79fd9d6f62bb8fc437224dc12f44631ecab5f9a1fb508d1359fdb17571e24b8074f4d45239ce463606f9867e95f7a7ec9fabb5d786f5eb90e18c9a8b93ce7a28afcbbf8fda84bac7c70f1acf773e18eb12a07cfdd0243fd2be1f35a2e188699f6d90a4e299f6aea3f17bc0df0fa0b6f0d7c37d1ec2dec5220d35c2c43cc207539f5abf6ffb56fc3cb5b08e6bebe966bb8fa430a6598d7cbdfb3e68c3e23788adfc37e289a5b5b1b6059ee958e1d00e84f7e2be93d27c2df067c29ac2cda568d6723c4db44d2e093efef5f255e9b536ec7e8309a74d11ea5f1afe237c45914f827e1b4c2d4e01bbd454a855f5e31dabda7e15fc345f16e94b63e35f16dc234c77cb656129897f1239fd6b91d5be24f85a0d3a4b76f12db5bc417e588ca1130074eb5e79a5fed2fe1cf05ebd132eab1cf196daa96e4b3373c7d735c893b98d68f32b9f7b7877c2de1df04e96ba67862de3b7488756f9a47f72c793f9d437bab46e06e259867ab135e37f0f7c61e3af8d778ff6ad26e745f0f88c34370a59259b23919eb5eada4783f4df0ce9e90db4d7574c588cdc4a59f24fbd69c9296a8f1e70b4b51f15d19433e31b41fa715c7f88bc54969bc46ca7071c1ac2f881f1bfc25e187d53c3da85ca5acc227432b1c04c83fcabe39f1e7ed6fe12f05a49068576faedf1276b16ca2b7f5c54cb0f29e87761a3ccec8fa1be2b7c69d03c07a04da9ea77118bb287cb898f24e38afcd8f88de3fd53e25f89eeb5bbe91bc977263424f0b9e3f9555f1a7c4ff137c4bd624d735fbb91cb121220df2a0278e3a560c6406c8239f4aefc1e5fecbdf91f5d96d1b24cb712f0003c558303614e38cfe5e8696d26b50544880e3ad6ddbcda4be0cb6f91e80e3ffd55e9d78f3c523ed70b858e269f248fb2bf64df12e99e35d0638ee181d634887c966246e641c0fd2be8b68b6c2acc39ce718afcd8f87df11af7e1a6b475cf0aaac72b0c32cbcab03ea3bd7a94dfb67fc50923d862d2863f8844b46167ec51f119d70554af55ce91f6ec31c6c77056c8efdaac881826f55f94f7af8d3c3bfb7378cb4e758fc49a1d85f5a9ead1a8c8af74f85ffb48f813e286a1168fa7dc3da6a928ff008f67c804fb66bd18e2b9cf87ccb85f15805cd6d0f5b5040c7152a86230698b1ba486364da41e455a44507e6aded7573e6d2707cb21f0a809ef522264e452220ec7ad4d1ab018c54177448aa48c5588eddfa97fc2a25ed56e3fbb59c843a34db8a7d22ff5a7edc9a36403d0120003b548aacbda8846063d2a5c1a9dc054a9327d6991839e6a52b40029c9ab11715022f22ac20e334012020d48ac31512f5a9074a4c07020d4c8a0f7a8075ab11f07358f5010121f9a9d7eee6a123e6ce38a977003069b03f1cbe257c31beb0d5edee4d8bdac5059c2239724099ca8c8f7ac39fc362dad20ba5b950491e6a1cef423ae47f2af67f89ba8f8ab5455b6d7eda5377692a85000f2022fdd0b8e99edd2b475cf045ccbe14d0156c2dcdfdc40f248d18fdeb82323cced81db93d6bda524f62f47b1e01af69abf61825b78db05589700fcd8c73f8560d9695348f1dca9dd93c2e3af38af72d57c21756fa469d05edafcb293197f340504b0f9467ae40ed553c37e0f1fdbf7ba57d8a5866d3a3f3942a6f5285b83919cd27257b02398f86de1c9ef7c66fa3236d92ee3781b70fba4fa7e7597f13ac6e6df5182ce761ba08844081d7debdd7c256de05f0c7c4c8a6b6be9f53d60c9fe950f90c8b0860318c8c74ae4fe27c76916a02ff55f085dcb632dd34369711803cc60718f7a7cf08eec2c9ad4e3ff00e115d4f4c6d151d21cdd401a32391c6091f522bdc3c7fa4dfd9fc2bb7d5a58c4715d4e90dbf2065ca906a9f8b34bd12c3c3de0dd5efd67b286e999155d493090a48042839e9cd7a66bde15d57c57fb3f25ee8ca35a96df5389ad96d632fb719c9c751c75cd3956a6fa99fb185cf35f0b58be8faaf861a79d60492ce581999861d895f97af7245775e16fb5f86be315a0d42131c5a749048e3236aa499c3f5aa9e16f02f893e21f81ac758b4d320b2d53c3bac3dbdcc7728622d108f76403d795fd2bdb7c07f04749f1c452fc4df126b4b19bfb41a725ab928a258d88ce4fbe315c95aaae8cc5d3b3d11ebf3cc1a565c7dce849fbc09c83f8e6aa5d4986cf4e3b554d161b8b1b51a06a33096ff4f408e41c9743f7707be1719a71983a1568d94a9c0c8c572395f5358ab104b855dc7fbdc9af04fdacee0dbe91a0e851381f6a99a72b9c6700e3f5af7e16ed7122c40647715f34fed5172d71f11346d39d488edec59d7238040af53298a9574ce2cc649523c8f41826827446453b0649f535a91c31a5e4b23ba8efb451a57c91bdd15e8a7155987990cb3b361cb7ca057e9b4dda08f8e93bb1af791bce7629c034e46613bc80f071f952dbd934e872c37a8c9a610636273f5f7aa5dec0f556148691dfca668cf50c3f5acfd5ad6c3588fec9a9d944d18e04b8c9cfe156a6b8f2d4953827838acabe79f0a6004f21bf1cd6f4e5cba9cb569f33b1e4de31f0bcba25fb1b5692e2190858805ee4e00afb93f637f8247e1a78747c47f11da47fdb5ab460d9c6c3e6890e704d53fd9bbc0ba27c5cb80de21d1ada6b7d21d65770382e3a76afa8751b7b7b19120821448d17ca8a303854030315f9df19f12ca9c5e1a9b3ebb873278cad36792fc4bf8417bf116f3ed92bade4a465831c75ff000ae0edb43baf865bfc35a8d8490c2d9109c7ca09f53d0735f4fe8ef122f0b861dc5723f1c34a82fb41fb4aa82c91bb8c2e77103fc6bf2ea0e559ab753f409d15469a48f255d02dd2c74db179137acdf6972187017903f1ae67c75e298340d1ef754bd6104928da88c4067efc67ad717f123e39f877e1668b1cba99379aa18cac76911c9ddd8b738af92bc61f177c55f117584d6754bc78e389f7436a8d84507f9f15fa0e43c2b89c65a4d1f378ccdd615388ff008a5f15758f1ef89e3b36796df4eb2dc0427237678ed5c2d9b5a3ea16134904b3c76d23bbc511243807bd75fad68b6fac5bc7e25d2e40d7b026248b1904573fe1ebb84de359bc1b6e82b4ab81b4b73923fc2b0cf721af964af2477e4d9947191b5ce8f59f885ac5897b9d3d2e741d3eec0454b69b6b1038c9c570ba9f8bf509ae030d5efae995b399a62e4806b7bc4121d72da174b278635e3920ed23af4ae623d1ccd76d142230ca707e6c038af9aa5f11ea5430fc432c9a8b8ba2815c1e6bbcfd9efc0d27c45f8b7e18f0d469b924ba59650471b17935c3ebf692d9b3c4ca0641e55c374fa57d2fff0004f3d05757fda0edaf791169da6cb23f1d3385cfe66bd75b23cfc46a7ea8da585bdada58e876aa8b6b690ac289c019007f5af1cbf8e78fc45aada5b49fbcb3b9018370b86ed5ed3f225c47f264b8e140eb82327f2af993e2178e6d34af8bdad410bb3e9d2b456f2e392250b9cfeb5ee64709cebda27c967535085db2d78c3479aee26b8b4621c7276938af1fd7af2eb4dd5b48b39edc3f9f7d6eae58772cb5d6fc45f8debe1422ce0d29e4ddfc406462bc5b59f8973f8bfc4da24896fe481a85b971d31f32d7dbe2684e341dcf8c8d54e6accfd3489e216d0a3911aa44a07e42abcd0b4993195653d08aa96ae6f2da20e410625230782314e9b4d126c8c4c50138c2f400d7e71515a4ee7de61dde9a12ca4b8b5b8db27427835def87af836d466ea719cd7943c37561772c370ec08398db39dc3d6ba8f0d6bab1b2a4a79040cfe35c95763aa9dca1fb4cdacbff0008d693b149d9a86e38af23b19e39d9d55c924e706bdffe2cac5a9e83a709230e1a70d8238cd782ebba45ff0087b532e96e4c6c7391e99afa2e1e97253b33c2ccd7bc70bf1834417ba325e5b70f6cc3701fddae43e14f8d8d86b6ba7bbe23c80589c735e89e2ad46c65b296da49543cab8dbd79c57cb9aceaf77e1af104d35b70049b860fbd7ded1a0ebc6c8f91c6627d84ee7dabe2cfb3dfe85f6b4219510b920741c55bfd9535ab49f5ff0015dc4446d430c79cf70b5f3bf85be34cfaf787e6d1e670aef1ecc93c9cf415ea1fb28477765a7f8baea2259a4bf455c9cf01066be57887073a346ccf5324c52ad3b9f63c9ae43e512a79c1e95c75e78a1175afb0cd70d18739f9ab98b9f116bb62a2482d8392b81f5cd705e24d4fc4f7fa98d466290051d075af8ca546ef63ec6333d8b54f11dae9a9e62ea2ac3b0045731a87c57874e8669cdc97090c8d82de8a6bc4f58bd9f50265b8bfba2c8721470a6b03c417cba7f85358d5eea6204161263278dcc302bbe8e0e13a8ae462710e9c343e67f1b7ed2fac5cf88f568edd1c406ee4da33ef8ae425f8dba86a008b952001c64fad79fde1fb44f3dc63979198f1d7249cd50d855892303073f4afd130d6a187b2ec7c4e267edaadcfba3f649f8a12e9bf0d3c417e21673f6e9318ff00756be0cd5757b5d6be29eb1adeb3097b6b8d5659e68c8ce57cc2715f637ecb5a5cbff0a57c477f202a8d34d3a9c632aabc9fd2be0eb9bb9a6d66fe680b1696ea420e3924b9afcdf37f7abb68fd13208f2c123d4dfe256af73a881e1ec697a6c0422c5170cc83d7f0ab179e3ed42eae92d23ba599df1d18ff00315e7c897560c998489241ce7a1cd74be1db2b95d43ccb544dcabe6961c8403a826be6eb4559aea7d8509b4eccfa3be0a783ac3c45a9c23c69676f79a54cb890190e549af72baf827fb3ff00836e8f89fc3be1b49ae2150f1a4846c0c3ea715f19cfe2dd5934f8f50b0173a6a0ca2b2c98333772067f5ae7b57f895e38beb2fb1dc789af9a02480bdff9d717b04f63b5494a363f4f3c1ffb5b7c31d0b41783c63abda68ed68a54448c3918e00c7b57cebf1bff00e0a63a705bad1fe11e972cc5b29f6e9381e9c57c29a8334f2eebc9a69e463d5d89fceb2afed4464048c6dc73b4715e9e1a82e4b33ce9d3d4bde30f895e33f1eeb575abf8835bb89e5b962ec9bced19edcd61c5146cc085e7b7f8d4b15aacbc639f6ab36d61221cedc8aeb5469c7a1d597f2c27ef0e8e3655f957f2ab0a5939239ad2d26de13379730ea702ba6bbf08349e1eb9d4ede12cd037cd8ec319a9aae2b43e86966118cf9227191ca722b52d2e09c0cf19ac552010d93cd68d9b0240acf9538e87d4e031538f535c4eaa33fd69a6e83038aaa589a68620f359b89ee7d624d2722d19f03a55ef05f8aaf7c27e35d2fc41613344f04e996071f2e466b259c118e39a86e6378515f0727054e3de87354a3cccf233851ab8769ad4fd82f08ebf6fe2bf0f69faf5bb87fb4dba31239c92307f5ad9689f3918c7b9af19fd907557f10fc1bb095e5dd258131b8cf239f4af6d9a0923d8ccbc3f23073d6b7c26654f10f922cfc2334c3ca9d6722107cbe71d6a54949e71f8534c6376c23a54d04601c1e83d6bbddba9e7a6ee4a849c1356e3fbb506d02a64eb8accd0957fad483ad3500ce3152851da8025840fd2a6006319a8d139a91573d2a1ea038601cd29724e314870291793cd0b40245624e0d4f19e2a18d466a6c0c63d28024523d6a41d2a01d6a71d294b601475ab11f5aae3ad4e9d056604b81e94922e58114ea4c0ce6803e61f8e1fb2443a9add6a3a178a6e74e96f2eadedd1255dcac808f4e9c552f1c7ecc5aceb5e21d1743d2ae91d74ed1263712472940d305f907078e7eb5ed36ff16aff00c536598bc03a9dec8b1868e2da085940e067d8d5bf045dea7ae6b525d78a3c35a8e8ba85cc215e1dff002951d3153f589c0b3e6ed4ff0063fd575bf875a1e8dab9bb8b52b533493b2be55482bb4e73e99a9fc31fb2af88741f12cff65f10b3c136970a4923c5c8218e5739afaa2eb5bd72d8ea1a55ff0087cc1636c85ede792625d8e0f278e4715e75a5fc5bf1add787b55bcd2b40b3d62ea1692de2860e0a95271927fc2b485694b503c22cbe03eab0fc6c9dac614bf8e0bb81ae1d780c028c827b715ec9f1e3c2bf09f48f87fa6e81e22f0ddf0b6b8bb26dee2d4077b591dbfd61c0e467f4af9e6397f6b1f11ebfad6b7e1996c3496d55cdbcd6be67cd1b0c01b4f5271ec2bdafe11e93f12f5bd2dfc2df192ea189bc3f1ed8658a50ef718e70c1875a9a9293d40d8d7bf67dff00848fc07e17d1acef2cae86984c93cedf2bed6520139e063356be0add7843e0a783b5bf012eb96d757b04925e42ef828d21e899fad6aea1e04d4758f015c597833c733e9905d311757539df2843fc2be9e95e0aff00b3d43e19b9bc8e6f8b77f7515ca7caad685db7123be7eb59c5b7603d4fc0bf163514f0e6bf2fc4cf0969967712c934fa7fd8a4cacaaaa76b3fa5799784bf6daf873e26d21bc13f103466d0dad2e2436f2db38f28e1880dfe35ab71fb1f6a5e27f0e432e8bf17b57b53760c04cc8360cf2460f238f7ae7ed7fe09b9e19b6d307fc241f1065ba92de42a4c718f99ba91f8d6a9b6ac0d762a7817f6a2f0545f13f52d0f58f11cf731cec3fb3efe142e9ca801187a7af35f4a7872fb5ed46c09d774e484460186ea272f15ca1e558647048fad79df82fe187ecd1f0fef2cf48d3fc2f05df88ec62cb3ceca4487dc74feb5e8975e2f87fb421d2b4abab6365b417b7c6d111c72171536ec16b2b9b7a628323127e61fcebe79fdadb410be24d1bc469feae581ad988ec719fe95f43e9052560c808620b329e08c0ae2ff00681f07378b3c013c96683ed1a762e1571c900f3fa57ab964f92aa6cf271d17281f2159cc3ec122ab0e47afa53ade22f128da4e466a9e88d0a7da6ddd58c83b1ec475adfb48d3f70e00ced3853edd6bf47a5513a7cc7cbf2b4ecca366abe6bed04b11b48fa550bd9e286eade10b9372c428ce4f06a2f11f8863d10db6ad64c8f6ff006a093e0f23270456578aaf96d3c59673c0e16286ca4b919e80b64a9ae4a99ad3a5a366f0c2ba9aa164bd5b8d426b5898793699fb43b70ab8ed9e95ce5e78864ba32cb6ae63b546f29199797727031f8d53d43590d6f06996f207833f68bb914fcd34dd767bf3fcabb8fd9f7e1c5c7c59f8b1a3e893c5e75ae98ff6cb88d3fd5a81d037afe35e5d7cfd420d459aacbddd368fb9ff0066ff0002dbfc35f83167a8cc4473eab89ee1db83c8e07af35af7badc57ba81da4845fba5abbff196876d1f856db4b86211c16a634454381c715cdea3a15858c1149e48259067db8afc9f37ab531755ca47dee4b4d5285914e0b9709942391d4571df1e1fc40bf08b54bef0f234d796885f60193b7193d2bb6b5b2263f90673d2ad5b5b4722c9a76a31892daed0c12c67a10dc56395b546b479fb9ede2ef3a2f9773f11bc53abea9e21d72eb54d625325c4aec086e7611d7e9591671a42edc918c903b57b4fed5df0c13e127c64d5b43863ff0045bd95ae2db8c0da4e703f3af18915f79da0e3a935fd35c3f569cf0d19523f22ccdcfdaca3337fc3faac96978a779dad80c09e2adf8bfc351929e29d0c4ab79030675cfca57ad73f68e639036de9d6bbef0eea0f3958d8078d861d08c835b673954333a4d35a9e5e1f31ab97d4528ec73769e23d17535307d992caf1d543c2ef959b8e587a67f1aa5ab68b60f1cb2d84d269d78a322193e65987b107bd6b6bff000db43bbd5af6eee75592c04aa1e2089b8038e9d78ae4ee52ff004493fb3351b9fb7daca3304ea72d19c7039e98afc3335c9aae5d88e56b43f56cb735a58ea29df5394d54c8b131941563f2b2b02083f9f7afb5bfe0995a32cfe37f10eac11bf75a62c6c71eaea47f2af8c35d9a592410dc0dceac18bf18600e40fc6bf427fe096fa65b1f0af8bf5f63cbcd1c3923a0c838cd737374675622ca3cc8fb1bc6fae5cf85fc2daa78921b669a5d36c659638c75638c0ff3ed5f9f16fe27d435bd4aeb55bfb91bb537374ccd9f91c9e17f015fa21e34bdb06d0b534bb2bf67361287ddd3ee1c7eb5f9b72e9d7a2f5c59d93b42d24ae0f6c6ee3f4afbae1184155bc8fcab8ba7393b459dad835878aa78b49d665cc932e04847193c0eb5c47c44f86babf80af1b51f25ded629229a29941c1208c56f9d035a8a08351891e108c191b1cf18af65f0adde9df117c2f71a1788d0349047b50b1c92077fd2beaf379a8529247ce6594aa49ab9f43fc3bd6e4d5bc2fa2ea3290de758c4cc477256bb4320913e5876a9182c3afd6b9ff09785e1d2fc15a47f66c6e238ed1061ba8e056f5a0b81088e723a76f4afca6acef267e9f864d5348a5ab5b2ea1666da33fbc5fb8c7afd2b9dd3ee25b2b97b49f22543d0f07af5aeca3863320321c01c83e87b554d6b425d4545f5a22add403731ff009e8a3b573b5cc8e98e8ccff885e32874ef0f689717322047bd30649c7cd918ae53c4bafd9eafa54aeae9e68539c1ae03f69fbabb8be1959eaf0168c69dab2dc4caa7ee29c66b0fc2de205f10698b7704a1919077f515f579160db8731f339ce23d9cec8e57c4735c3cb2f2728c483ce71d2bc63c57a25eddcf2cc22739c9e2be8fd4f434d4019a35e475181822b83d734c58bed2eb224400c6d6e6bf41cbd7268cf89cc6f521cc7cf367a85c681a8c323874c4ab91f435f72fec5f7716a7e06f10ea88ca7ced4f2d93d00502be2cf1d5b8493719118993236f6183cd7d13fb205f6a163f08af911dd56e75393e7048e9818af0b8bbdea6923bf85b59ea7d59e28f14e89a64463b371713018c2e0806bceaff0055b8d458bc9c2b67033503ac426cb48429fbcc79fa9a278142192ddcba8fe220e315f9f28a89fa2c57531a5b78964711c8cf91d0f4cd7967ed037973a6fc22d624b76f2de59228187fb25866bd920b712ca240063f8bdabc8ff6a1d358fc22d4ae236e3edd0803d724d7a1834a55523871fa536cf88dc2101633dbafbe39a8e1b4692558f04f9a7cb1c7738152c1138077a9ce715daf823c2dfda3afe8b1cec043737b1a1c8ef91c57dc4e1ecf0ce5e47c5c2adf1163ec1f067876c3c17f02e7d16d8379874596790e39dcc324d7e5f595cfd97549268d54324ee46e1919dc719f5afda0f18784ad3c3ff0bbc48cd10729a43047dbd14276afc5cb09635d564791048a2e18ed3dfe6afca71d51ceab6bb9fab64f1e58a67a37877441756526abe2cbf36d6727dc8ca6657f4da01e2ba4b6b9f0c69c821b895edecdf1f2820cd37700fa0e2b8fb11aff00897558f49b28dae2f9b0235c61205ec7e98adeb9f86d69a7165b9f1d584bace702dc1dd93e99af22a36cfa58906b7ac3f88f585692dbec963651ecb7854f18f5fc6a8ea613ec88ca8a31dc5578c5cdbdd4d657e81268b8e0f5c77e6acdf8274f889ee09cd667653d8e76e82f94d24800278dc7ad169e18d5eeb4d7d4c5a5d359e7fd718ced1f8f4a91e5896eade2b840d03c80499f4afabf5ff13f82ed7f6794f0a787ec95afa728ed26c048c60f5eb5ac2b3813249b3e3f8ece2b2ba0b3311904f238a9df51b38578038cf26ba1f12d85a5c4f03c7f29da4b600eb8ae72ef4a5993cb45ce78abf6cdb4d19ca2d6a8cf8359c6a56e55c106500d7db3f0bbe1bda7893e1b6b1308726e2c4c8bdf900fb57c5d71e0cb8b5b58b518e60c55f71503902bf4b7f64dd323d4be0ec37529cb4b6b2c27f2e0570e3ab352490f0adaac9b67e6e6a7646c2fa6b27fbd0c8e9f88278a5b560b827ad741f1274e3a678df59b2603315e4a3dfef5736a39fa577d06f9133f46c2e914cd20411bb3d7ad46d8c919351c4dc609a992332c8b183c93deae48f49546d08325b0324f615d4687a34badc2b6663fde46c0a8c738350e9fe14d4a6c4d041e70efb474aef3e1e68f7716b315c496cc3ca6024420f4fcab971293a4d1e76635d2872b3ecefd87745974cd3aff0041bb0c23986f404606715f4acfa6393e505c084e3a7a5707fb39785ede3b68753b3006f5c9f5e7a8af63bbd2674b899bcb2049ea2be57295528629c9ec7e4f9d3529687072dab9b82517233c9a78b62b9cd7513690605dc539c5655cc415880bf5e2bef2353991e024676d5e95222ae7ad364420934884e7ad5816a3009cd3ba1c53232454a1493914013446ac281fa541129039a9413e943d4057f4a40319e3b53c8cf268dbef42560123273d6ac260f02a003073c548ac7772680260bea6a41c53139a7f4e294b601475a9d3a0a807b53d49ac9bb016474a5a8b71f5a0b376342d40f947c05fb47dce97aa4f6177a9e9690c77512168c6c032c013c1fad7d5adf10b41b9d1a5d42d2eeca796040fe6799d88af84fc27f0ebc37e24f13eb8e7e15dc5cd95cda87b58b07f76e002071ef5f5b7843c23e0ed2fc050aea7e0454923876c9132fccd8edea6894352cf27f893fb45473f8acdb5bd9da5cdb456ce9f35ebc6ace7b1c37b1af25f02fed0573a64971bbc37a2e87a4cf73224d30be918c8f9e7ef3f19f6abff001a3c27f0a75af11e8da4587c2fbcb79649659e699432afca33b4e38e735e436fa1fc39bcbafb1e95f0d259240d7103c771b9a2560c007c1e3ffd55ad3a2dea80f5d4fda37e1968be20b9b6b6f07416ed6a3ed4b7f25f4ac924879ce3760d567fda135a9bc4713e9b268722497aa0dc8620b213f74e4fa7a8af9b2d7e027c42bdd7b7e8da343716e93194446325300e76f3c62bb9b6f86fe377f88f61e23d4be1bdadac513a32c090ed84b0c0e9d3b7a56ea8dd6a07d8fe00f8e5a0c035bd1756bed2e08228da40f0462508c0120e0f15c03fc4bf1a6ad73f68d12f27bab7958f952c36d9529d9bdab37c19f0e7c49a6f88bc457d75a9e8ba343af5b4908b6db1aac4581036e6b89ff856be38f01bcba6c5f1d2336f3a9592137eb858f3db0dc7b62b0f676d80f64f0ffc59b8d0b4a8adf5ebb96e219eed83cf3cfe5ac4e17ebc6335c978bff68cf0bf83ed2eac74af1b2bdcc8f24ed1894dc063db1cf18ae17c2be09f80e7ed5a778abc48faa4b2b89997ed4eea5c6727ae0fbd695e41f03b4f66b9d27c0115cc96cde5c2eb000a53bee38e7dbf1aa70b22a2ae711e16f88675eb31e23d1fe1c6ade22f125cdcc8ff006a926912df68620743e9ef5ea9f0e3e31f8f7c477771e1df14fc19b5d12087fe3e354f31e330af76049e48fe951e9bf1b67d23488746f0ee9765e1ed22d8348af1a2ef67249c70338cd63deebdf113e356af1e936097da9aa3050c14ac383d4b63823eb5836ef609ab23e8ff0081b776d7fa35e4365acdd6b314372cab7d71f7882795f438af4a5b58ef565b4b9f9a2991a2707fba7ad79efc06f035ef81bc2874579e1ba99a62f2953808dc920638af4a097f11ca69c180e7ef7ff5ebae8cf935470558f3a773e24f8b5f0fae7e1bfc459a27b5234ed53734120e5475ae1b4dd7ed2c7523a5eaa1e0265610c8e3e4653d466beb3fda66083c45e00b963a787d434d659202aff30e7a715f13f88bc5b6d65a7cb67e35f095fb5bc918db2ec388d8770d8feb5f4f4330b61fde67892c1f355514657c458edfc3777abf86f517d96ba8c62fec250c482c39207e35e5de2ef8ab278b27b68f4d3e4c8f629672c8780180c1acff001cf8ab54f164512adf492697a512968d20cba0f404f26b9692faddede34f29430f98e1769623a1f7af93c5639d59b5167d261b030a5046dc9a56bba7d9a5dd86bad31c8628c78423a9afd14ff82657841ecfc2da9fc41d5646171a8ce208989fbca0e6bf3bb4afed3f12df59e8d656bb64bb912d9460e58bb01c7af5afd61d0ac2d3e07fc19d13c19a0a83abda40970ebd0ee6001cfd335e6ca725d4e9fabc5e963de3e218b497468fcfbd36e8b3ac84a9e481dbf1ae7e2ba4f13c2924219618308a5b82d8ac7d62eeef5bf0b787649e52f737a0492807232074ae9bc396eb63a6c6ae814963bb774503bfb579b2e6a93e548eda36a30bb33bc4faae9fe10f0f49ad5e3aa4300c12719dc73815c9f83fc52be23f125d4c5c8b6257612703247f8d7987edaff137c2d69f0caf745d2fc5367fda90dc248608e6059803c8c03589fb3afc44b4f18787b4fbfd3c032045f3b69c9de319fa74ac71383c461da9b5647a585ad4f110693b9c9ffc14bbe1e59cfe18f0ff00c430aa9750cff6490f7607a1fd2be004b3591578e71dabf4dbfe0a21b351f813a5dcb8fde47a9c2a71d391d6bf37a3b62a71d00f4e99afdff806abad814a4cfcaf8957b1c44994934d24702ba4f0a2fd9af234600f23a8aab12ab384c73ed5d3f85f45373ab411807961918ed9afbda8dc2173e2aa57f6bee9e870f806df5ad05efa10b05cabf991c84021b07ee906b0b5bf837a2fc4dd2e5b3b355d2bc4b64a5b11fcb14f8e4103a67fa9afa27c2be1cb4bad262d364b6cfc8178f5c570de30f861e28f0deb71f88f439e74fb33878e324ed3839e7d6be2733c3c31d78c96a7af96e2eae0acd33e12f16f8775cf0d6b5ff08d6afa7cb1df89044ab8e5893818fad7eacfec6bf0a2ebe157c18b1b1b88fcbbcd731753ae79000c8cfe75e27e26f04689f119b4bf186a3a6db8d7746952ee485170d7010e48fd2be87f0d7ed09e02d7b4eb2d36c751874dd510ac06c1ce245603a63ad7e6b9965b2a13e64b43eeb0f9cac4c141ee761f131443e12be89a4dc658bcb600f63d6be3af156b10e88ce9026c200038ed5f5ef89e2bad43487695799573823b62be5df89de1b925b873b62c01db00d7d0f0ec93924d9f319e41cfde68e5fc3ff18bc30d711e91e2d66da4ed460701457b3f813c27e1ed6b5fb3bcf09eb337953c45f0ac186debfcabe46f14f828c25e58e17db8dc4b027f5aecff00652f12eafe1af8af6f62d7529b59addf119738c6d38c735f499c61e4a93699e565b594aa28247e89a49e24d2b4b82c2c75cb7b8114606d99002063a7e155d752f19b1dae34efc1f19aa5a278a6d3518f74811988c3657ffad5727d36c6e23370d12ee6e40e82bf329d36a4d1f790768a12f350f19c50975b1b59475c2bf5fc8d65dbfc49d674d9523d5b4d306d246402455911410c4636660074c67ad67cb64b3c6e19f721cf0fcf14285b42f9fa9c3fc6bf14e85a97807598cb24b6f7703662239f3467a7e55f297c16f88da87879fec1a9b1f25e42003d973c57b77ed11e1e1fd836163673792d7170e5821c641fa57cb7ac7857c61e1c99eeade26b9b78db9751d2beef2494614accf90cdaf39dcfa8358f88f1e3ec7a569e4f983e798f6f7af19f883e383e6b6990cee6661bd987039af3fd3fe30eb7a59105c0050e010e326ba3d2fc47e19f14ca22bd36e9338e738cd7d152c4a8bba3e6ebd39558f2a392d42fe4b8469652cfc6de9d0e0d7d81fb276972de7c13b5d91e19efe72d9e3804015e3165f0b9af221369f651dd46c70555c138c1c77af73f837afdff0081fc0b1f86cf87eea310de48f9009eb8af0b882b7b689dfc3f4de1ea3e63d5574e8ecb74971087c0e54f4fa556b8b96d4545a2fee231d116b8dbff008a1225d1fb569d7489bbef188e6a6d3be25f87a4983cc675fac66be26699f790a87a368de07bdbcb57d42396210aae768ef5e57fb45e996f37c394d365880fb5ea30c289eac093fd2bd9fe1c7c4bf074777f679756b730c9c0321db83f8d7937edcdaadb5be9fe13d4fc3f2c5340baa2cd2f924153856f4abc056e5c424cc730a6ea51763e44f187c23d4746845edb58931fde24678aecfe15783edaf7c256fae34797b0d455f207230467e95efb0dbd9f897c27035d2c652ee0e4639048e95c77c32d19342d275ef0f6cc8372648948ff006b8afbec5e2e33c338c7b1f074a8548e21367d3ff17fc88fe036bda9370afa2641efca57e10ec3f6c924fef485b81ef5fb8ffb465dbdafeca9accc8a50ff00638527d3e4c1afc35b7bb2c50a821b1d7bf15f93d56dcd9faee58ed4a27ad7c38d7ac6ca17b4d4351fb11bfc8bbba4fbeb00e5914f5048f4a87c6fe30f036a052c3c25e126b3f224052fa4959a5931d4e735e7f64d239691198f193cfb735bbe0bd19bc4be24b4d1d465ae18851c8e4735c5520ee7d141e85b4ba96f2e96f5831da8158939adfd7829d12d1d08da50fd69f77a1cbe19d5afb46bc452c8a41e9c0aa9abb0fecc8d07dd5538a98ab1d90d8e42e652ea07b8e6bb3d375dd5d3465b269f31038c1e78ff00f5571d347987703dc6335d1db5b5cae9c668c17897058e381c529c6fa8ba9a065d35e702689d902f0727ad3d6d34d2a5d11891d87f8550bc0d0db4522f561d3f0a6596a0619a291a5c007e619ed592bc58aa688d982d0ca8ccf03088fc8463819e95fa05fb105a893e135cd93c6ffe8d72ea3fdd22be26d09ecef2ca5b45957128f39ba760706bef2fd8b0a47f0e2f2da32af283bd80eb839c7e95e6e6526a48e6854b5547e7a7ed19a4b693f18fc496c1084374ce3f139af3324824115ef5fb62da2c1f1af55dabb449863f88af079410c07a57a785a9cd047e978395e9459242f839f4ab9090ceb838239154ed6d27ba6db12139ed5d6f873c0faa6a326245d8a7a66b7a95d535a9df03d0fe175fcb0cc890c6b2038dc18035f58fc3ef0f785f5e7824bed1a186e1c00ce83018fa9af9b3c03e053a64f1996e0a9c8cf35f607c24d32d99add5a40400073835e655c5c65a23e7f3c72706d1f4b7c26f075bf87ad54c32a988f28abce057a4cd68932966009f535cc7856e2d2cadaded0b28665caf2326baa13a13b0b8c91d2b1a32a7cd75b9f9562b9dcfde39dd5acb6a312074ebd2b8bd53c88b7003e6e95dd6beeeb1b6de98af3cd458bbb6e6f5af7e83bc51caf43304acd91b78a72004e3151b0c2e17b9a92352319aecbdec41222e0f356141c814c00e2a44eb4580953d29e0e053141cd480123f1a9603f9cd0064e28a5070734201db3de911086a901c0e9d6806801e876f6a93827351633522d296c0491903ad484af61d7bd420e29e1c13593024a29370a5eb4c0fcb2d375ef8c9a32a4f6fa37892d58a8123476f2827f4ad8bbf893f1e56c4086e7c48aa32c4159323f4af48f01fed3ff1c358892fa1d0adf58b4b58835d131a28c81c9e4fafb577761fb5878875fb4b88ec7c1de1e82e111959a79a35f9875183ee6b6945dcb3e32f1078d3e33dcdc196eee7c4c76b7cafe548304f07b561e9b7bf192f59a4d32cbc46c11c8cac72f20e724d7d2de31fdab7c5692258c9a668a2589f73c76c8b20c74249038af3687f686f16cba84d7926a4c8a6532ac76f1001474c11df15d9455a207176b6df1dd2d5de2b7f132839c05494139ea3a567bd97c758ae628a4d37c4b281c812097a93f4e6bd4aff00f68bf155d6882dacf53d612eece6c4f2fd9ff760b1c81edc11535f7ed15e27d63ec77cdf6e33d8a224cd143b91981e07038ad5a0327c35f09bf681f104f0b5df8375c9fcd20219d1f1f5e6baad53f66ff8b22f63b5f135adbe98806f0f7370aa02fa1c9aeb6d7f6c5f1769ab16a8346d51a3976ec88a81b738a83c6df1ff00c7be3ebcd3f544f054f0cf763ecb6c8ec18484ff0019c1e3039ae39fbbd00a9a17c166b39a3b6baf16787e288fdeba59d5f61efd3bd77be04f829e05bb97508e4f896d770c0035dcb102a98e7e504f06bce1744f1fc9e25b5d0fc5f2dbc16f7a9b83dae046b8e4863ebf857a527847c1ba16991fd8acb50bfb8909595e57d91301d40f5ace77e5291b7736bfb3e78474f686d3463aedf5b30308925dfb81f6fad741ae7c587d55edf48f87fe1f83c3f12596eb92621115c2e49e809fad73fe1ef0bf83974cbbd7e6d33e58237c5adb38326474ea78fc71593e1cf11be9fe04d5b59f11da89dee646b5d34328129b6638da71c1c03ebdab9b9b5d499bd0f7dfd9edefaf3e1c5a6a97f38925be93ce1206073926bd562dcc4a1fa7e75c0fc2ad1ecfc31e0ed37c3d166336d6b1c8109c904806bd0edd8003e5ebcd6d7b46e72bd743e7cf8fda7c57ba4ea9673ea371115877c69029dc76f3ce2bf3b3e3278b751974cb6d222bb936cc4ab19252197071d2bf50fe2ddb2c7a8c90c123442f21292ed4c9da4119f4afcc0fda2be1feb5e18f17b9f2de4b5476955b190c84e7e99af2ea666dcbd926756170377cf23929ac3c3d71a3d868fe419270a249581dbcfaf279aad7fe0cd1510ea0d7d25ab803ca8c83f31c71f9d57bbd574bba8a1b5d0adee9af5a3556f313bfa56c68be0ff11eb17509f10b8b649a56b65881276baf03f5abcbf0d52bd4d8e8c66269e1a173b5fd98fc312de7c5cd3750d763f260d1ada5d422491483332296079f7afb83e29f8f16f341d0b548ed5cdeebb6ff00678e3518393c03c75c7f4af92bc31e261a64fa6dc6a36620d474947b19ca8c192261b73c75afabbc77a4dbd8f887e125bc31abc5242cc7079cb46c47eb5be65849613e231c062d62dfba7b1782eda6b74d13459e7f3a4d3acd1a6ef876ff00eb579dfed83f1f2dfe17e849e10d02571ad6a484bb21e6353c76af51f054074ad704574a59a52048719c83c8afcfcfdb03c4936b1f1df5b124bbe3b302dd54f45c576f0be5ff005cc6a8c91c1c4d899e130efd9b3c835553ab5cb5f5fdc3decd7272cd2b12771c93d6bdb3f616d760d23c61ab784ef2f3629903c28e71c1ea05781c9a93ee5543851807fc6934ef13eb1e0af155978d3c3c76dd5b1f997fbe057eb5c43c3d43118254e947de3e478733cab42b7ef5e87e94fed85e1dff008497f673d6a4b705df4e2b76981d369ebf957e62691b350856e1f231f2907d7d6bed1f087edbfe01f1df82b54f087c41b696c66bcb2920621328cc54e0f5f515f1bd89b5fb75efd89f7db7da18c4471f292715e5f0461b138093a35b63a38a7114f132f694dee43810dee3d3a57a3fc3ab9b43addb19860ee1fcebcfeee022ebcc03deb67c2579716dad5adc2e080fc8e9d2bf4bae9ba6ec7c1ad2573ed3f0feab61691acae30a9deba3bcd7f43d52d1a1691640ca463af35e21a278ce431c904a14ab76cfb55eb7d5c196396173925be44e4e335f1f89a13a73e767af4e6a513704113eb0069b10b731c832475ebc9acdf17fc309edb5283e267819228bc49a63891d197e5b98c7dee3d7d38aecfc17a3ea77f1c973069c7cb972ccee06e18fd6b6f508356b1884ad00b644f9b7bb00b81c7735e4e26146bae592d4f430b53d93ba3a1f843f1b3c2bf1934e6d1b558934df10db27973daca769661c120771d697c73f07acef03ce6d4b679c8cd7ce1f12b43d364d497c6fe09f10da69fe22b2fde4822930b2907eef1eb5f46feccbf1d57e2df870e87ae46b1ebda37c93c6ff00f2d80ee3eb5f335f0b5b2d97b5a7b1ebd3aab15ee4cf18f147c1fbc08f1d81f281ce1661c62b99f873f08f59b0f88b6fa94363ba4b38199da3180495f6e2bee5d5bc1f61ac8398c479cf181c562687e008b40d42eae163dcd27c8b823904513cf6556972c9ea6d4b2854e7cf04791adedde87a9b5adcc12c4c304f1c60f3f4aed6c3c630adb2f9878e95d86ada5e957cec2ead10b2fcaec473c5735a87877485899634c28e98af17da5dde47aeaf6b1245abd9ea11ef8641bbb8cd57998e5b74842f5e2b9f9f4e92c5c496d3055cf033535aea173b9c4e99400e4d5c5a6293b1e69f1e6ea0923d1172490f21f7e3bd79ee94f6afa7cab78ab27999cab57a1fc613653dee949b402b0bc9c9ee49af248629e294bbb82bc9001afaacb67681f378d8f34ce7fc4ff0b345d6646b9b6b611b3e4e074e6bcb75ef84dad584a65d2d9f7a7423ad7bfcf785991164dbed5435092e618cc8632df419af5a352c717b182d4f19f0cf897e287826ea36492778893bc6e24e147ff5ebeaef80fe3ebbf167841f54d4e2904c2e1a2cb0c5784eb3e29b7b052f7960cc1411c2673918af6df829abe8117c3db1930227bbb89a4652b8c7231dabcdcca6a503af03462aa5d1eaf269b05ea072dbb3c91806a4b7d1ada2043c1111ea5726a959df69eee3ecf743006719eb5af05d40ebccca38f5af99763e82d633a4d174994625d2e191339fbb835cf78ff42f0d5bf87e05b9b079834dfbb47625138ed935daa985e550245c13f8570ff1a6e4c36ba3db2300af3c8587b05383461695eb264e21af66cc0d2f504d2e082ca0998246a4845391cf4ad2d362b06be37725d3c6f2e3201c0cd721a7dc3c8a248f0d83835af04f3ed60b0e4e335f4f3849c6c8f92a8dc67cc8f54f881a8eb9f12be175ff00c2db4b8b7dfa843f67b72ce0162074fc6bf24be257c32f16fc29f115c787bc57a5cf6b716f33c68cc876b80c40c1e9c8afd33f0e5cea2fe38f09c71e428bc2d291ec462bd8bf699f815e0af8dbe09d49758b08a2d42ced659e1bc55c10546473d6be3b32c37b0a87dce4b8a94e0933f14b469882f919ddc576de0abbb4d27588f51f32485e17c965eaa08ffebd73963a21d37c4b7b035c2b5ae9f2bc7b89c6fc12334ebdd57ed5712ad8c5b1791c75af2e6aeae7d6d3ab7d0eebe24f893c25782d17c386e26d4a4726f2e1c9f9b3d073591ad5d29d36dfb62301b1ebdeb8eb782559d1df24e4139ae8bc4d208f4c8581ed8ac796e7646a98971751bc1e5a1c11c8c73cd7a5ebfe3d9753f07e8be1a8b4cb6b6fb3c204d2c6a034847738e4fe35e4904a0b11ea2bb18bf7b6b1effbcb1802a269a3683b9a9af23416766d1f531eee6b9eb690cb70bbd084958271d324d753e21cb5959e072b1003f2ae68096140c40500e467ae722b9fa95555d1e9ba2e8b7693c578104686331903ba8ef5f6afec0bac1d523f14dac6ff0025ac4aa17d300e6be49f0fc31dce996519b9265976fca06700820d7d55fb11da45e1bbaf1b47037c9f670c4ffb5835e563e57923cea9eec91f347edaf6fe47c60bab82387896be75e1d896c71c0e6be95fdb5f64de2cd3ef95bf7935b167f5e0b57cd0319cfad7765f794753f4ec06b878b7e46d6917b05bc8a140078e6bd0746d6445b184b935e511384208c71cd745a56b71200ae4823a1ed5ae3293a8b43d153491ee9a1eb68d3c45a4e0f5e6be81f86de3182ca36bc9ae02c36e80e41e335f1ae91aa4f72418660149c31cf41eb5b9e24f8b6da7e9d0f85b479f231fbe9013c9af1bea7367062e946ac353f433e127c666f137891da4bbff004785b620278c0e2bdb97c7b0bf88a3d32294316507ae735f97ff0007be23dc787208aeef2e361639393d8f4afa17e1a7c54975bf8b1a5db894bacb8006ecf515c90c3d68d748fce339c3c6936d1f6b5deb71dca18e4e33eb5cdde416d21621f39aaf757de6150148c67bd536b962c4027f135f6987a728c15cf94e74d913c6158af5c52af6a7f0dc96a55007208f6aeb8a01eb52a544b528e4e39a527660489d6a507b5469d29d4807d14e4eb4fc0f4a0042c546698256a94804638e69be5ae7a50049112c39a9735081818152ad296c02d28c679a4a55eb598120e94f1c53074a7d4a03f2ff00c2fa9c3e0ad1b58b8b31793a6b2a6deca485fe584b7572075007bf4ac4bdb4b3b2769e0d420baba931224c7263603a8c03d7f1ad9d5fc33e21f06f84f4e9b4fd5f4f4d2aee7f305bc884cf0823ee649e87a5733e0ef0adf6b1ac36936af842cd233c872a80f518f4af562a0dea59d0fc3cf14f85ed20d7346d774fd2adeeee6212437d38202e09c803a9ea3bf15ada85ae89e19b182e4693a5cb79a82892caf2260f0301d77fa1ac1d5fc07e14f126aba5e8baddbcf6290dc343737766bbbcd8cf51cf4e40c553d7fe166b7e1ff103f872ca7963d15019ec649e7c86878e71d8d1749e8077be0bbed1fc57a0f88f48bab58841752279f751440192e703e519e8318ace5d47c31e0cb1bcb5286d9cfce5238fcd42c3a17240c7e155fc1fa55d59f87ef6c20d521b491f544b843182cac54281bbd8e39adad5b4a9f54d52ff0045f15c70cb15cb98ec069a8019ff00bbbcf51ef557b6a0606917baf78b5679bed36c8f3a19224081638c0e8093eb5d2f843e2d7832ce4b5f0ecbe2294ebd6025548becdba3f348c11bb3e9fcab7bc31f0c06996e96767ade988b383f688e6c9db8ea99ce46697c43e05d11a3bd9f45f07693a7ddacabe75cc521671f292593f4ef58d4716071be24f145f9ba37c659162043bbb313fbd0790a3b023ad7a3e83ad78a75231b6a9a959c7677b6aad0ac6374aa09c1c28e9d39cd70faef82fec7fd9b3d85e5c5cef4ded6cf1ef0cc0f278af6bf0969a96be1b1ace9df0ee593519a0f23782c4fe47ee66b9a6eeac86de879f5d6a1aa6b7ae9f0c69da8c7a6595f4a20b89c8225645e090338c9aeabc7514361f133c1de059ad02e8b6f0a08d233969837f7bdeb6744f85ba8de788b4ebcf105f58e85757f198ad61957ccd8d9201cf73f5aee758f869e1ff0aebfa7cfad6b897bab5ab24227ba6fde3c878c46074e7a561ca8ce4eeac7afdbc620bab795e0f2925b2091823938518ae8f4fdd3c51391d464d6378a4ff65ff64decb28304128b76dc3b30c01f99ad9f0ec82e6cd6443c2318f8fcf35a27a5998ad19ccfc50d31e7fb2dd20de5d366c503279c9cd78378ff00e1fe89e2ed36e34a6b05924c1d8c573fbc23eef3c9f7afa6fc5f6535de9c66b7c09d084463d029eb5e79a86931c51bddc2aab24244108fef48dcb357c6e674ead3c429d347ab86c44630b33f3b6c7e1d2787fc54b6575a6c6274bd64395c12898e718e955246796e5ef2da3f336eaf24d8c70a3757d95f15be0ba6a7aacde2ff000faffa7699a708e68b190f215cb1faf35f265969b358d844aebf3b49279c0f556c9cfd2bf4fe11c3c6b25299f17c435a7adb61de24d12df51beb2d5a322313c914772471805c64d7d2daaf8db43f1778ff00c2b61a5499b7f0cc7146d2f5dc48dbfd6be7896ce6d42cded118a929f29f71d3f5aeefe0edbc77325b6a4eb8fb3c816f00fbd90786fceba78e703eca87b6a48eae07ab19d774ea3dcfb2d7c4104be363636681992dd5811ebeb5f979fb40ea2edf1a3c5f25d4ac646bf6519ea38e95fa07e19d1b56d37c7dff00093de6bb18d36fd55628dc80d8ed8cf5af85ff006c6f873acf81fe2eea9ac5ca17d3b5b905d5acfd8923915e5f0063a0f157a9b9eef18e0bf72b90f1c6bc8cb60b723ad4914e937eedc654d60b316937e704f6ab9673959002735fbb3b4f5e87e46a0e9cae50d5ed0d94e0aa968dd81dd8fd2b6b40bd88a84008f615d868da3e9be23b2fb0dd4611981d8e07f1735c135a5c68fab5c5a4aa54c0fb7918e33c62b9e308d2a9cc91d95a4ead3b1dce8f631ea7a9c36ee70afc7e3daba683c1f71a56b004911f2c80c840e3eb5c6f87f524b7bb82e0b0f95d49f600e6beb8d0fc23a6f8c3c3365ab40c0314059b8cf415df5b151a54f53cb8516e563c92ce010969039dc5b8ae8bc3bf69d3b525d42f5a382cd065a4973c8ef5bfe21d0b40f085b1d535d9e38a08412b1e70d21fff005e6b836bed5be205d20585edb4c4388a151f7973c13f515e2e27114ab4373ae149c373bbd0fe22ea37de207b3f096b33ac05b6bc8c9f228efb466bd36dfc2326b566f6ba96b136a0675c33c926ddb9f415c0f80be15eb16f2a4b656be5db870187201cfe15ea786d319ec6e620a63618284839c74af93ac94a5a33ba0ec8f31d77f6573a6da5d6aba16afe6bed321b72c496c7381cd79af85f53d57c01e2b87c57a5096d6f34e902dddb648f394119cfe15f4d1d56eb7796be7276033d3f3af30f8a7e10b5d5236d63498cc5a8c0a7cd43f7651dfa56f1a6ebc7d9cf521e2a54a5789f5d7c3ff1ce85f10b4183c43a2dda48b32033439198dfb8f5eb5d61442376d0586083df35f9e3f077e2f5f7c1cd7e6beb9479b48ba9562b8873811138c9f6afd02d1358d3f59b28751d3e7496dee916485c10432b743c7b57c2e71973c0d6d168cfb3cbb19f58a288ef34e86e03ef89704e491eb5c96a3a5db92e82e8281d88aefa42bcae7f4159f7f696ef116fb2c6e4f526bce8c8ed7b9e49ab68b871f669c163d8f4aca96ceeed46d91c00410462bd2752d3ed8b82210ad8edd2b9cd67492e3729e01e715d14e56b194d687cd7f1a9ef97c436af6472b15a11b4f4e735e769a86a7218d174e390b83d719afa3bc61f0fa3d62fc5dace18ec0a075ae625f871244c3715200edc57d0e0b1318475678d5f0f294ae8f18b7bd9e1702f2ca42e18ab11eb5d25addc77507cd16d03b1c1aedae7c168331bc0ac41ceec5467c139c320da00e457a3f5c858c7eaadee71171a2e9ba8234535a23719ce335e89a2784e0b4f0be9d1db2a70aec140c753d6ab0f0b2d9c4642a72c0804d76fa6db85d1acd107fab520d7062abc6a2b267550a1c8d1c62dbdf5831628cb8f4cf35d0691ac5bcc823ba565909c03d056a49682403746afec69b2f865e79360548c91950a39af21b3d25ad8d4b7b6211258db773c639af3df8b5f68bff15e9b6a65220b6b53232e3b9e2bb8b0b5f10e8b309c5b8b9813195cf38ae2fc7fe2259bc58acda3b63ecb860339ea38ae9c15bda2d4e5c52b41d8e7ed562b40228c74c678f5ad9d3ef14b3ef5e02902abc1ae6952292fa4c8a48e0d4f1ea3a1f95b85ace09ea3dabea14a09267cc544dcac91bfe08320f1469370543017671ec38aefbf6b2f8b71fc3af82fe21bd59962b8bf81ad2d8038396e091f4cd709e0a361fdbfa6dc5bc9365ee01556e83d6be67ff828efc604f11f8bed3e1e69172a6cb4a25ae76b023ccce71f9d7cae7969cee8facc929cb448f8fae2ee597f76598b3c85dc8efb8e4ff3abf008ace52000580cfd2b36d6fa081cf9aa0e40c9f415d47879fc2da85d18757bc36d022798f37567c74503b64d7cec91f6b4e8c914646432238efcf14ef125d2c9a74483b0c1a352bed2e5d4d8d82345660e235639381d2a96b13433461612580eb9eb4a276469b320472154d808dcc067dabbb8b1b238c1c90a01ae3e29b74051a2da548c1cd74b692b08e2707aa8c9fc2b2aa8e9a7092d4eafc43194b4b46c706318ae51a5335ca5bb7dd2c3f9d765ac05bbb6b3811864c400e7be2b8a9e26b3d45626fbc1bfad711550f60f0a6a36964f6d380c764b145f3745073935f5d7ec84aab378fef1a5cc06104313d3e535f1c68505bc9a7ed925f2ce15c1f706beb7fd9350c3e12f1dac1217536c1f71fef1539af2f191b48e0acaf248f91ff68dd5ef356f195c2cf7066480944e7385c9c57903b05e86bd9bf68cd16df4ad42c6fa0984925fc6d2484766dc463f9578734fc95cf209cd7a7972f74fd0b015e2b0f1d4b492015299411f2f1c55059063af3e94af2e3a1cd77ce173b7dbc2d6b9b50eb3359c5b21959777079aaeb72b35c2cae49258727ad649998d39262a41ddfad62a93e88caa568dad73b4d63c5ad6b6f15a41211c28041e457d09fb37ebf20f8c3e1af365fbc53bf5e2be40b99da6b88467733c8a3ae78cd7d35f025fecff0016fc292962a0cb1ab7e381594a118cd33e173d929bb23f512562ce48e84f14dda09cd0d857c678c0e6953be3a57ab07ee1f0f6b487941b7a734d5192054a08c609eb4aa141c0c51d7434439179c9a99579a021c7a5380c526ec02e3148d4a063bd20196fc680268b919a7d47b8a9c7ad480e466800a91578c547522d002e053969295694b6016957ad252af5acc09074a7d3074a7d4a03e45f85527c12f89d6f6da678c74dd3dadd5f7407cf6578dbb0619f5f5af714fd967e03c64eab6123d93b02564b7bb214823f2e95f9befacf8c6dcafdbbc0ed0ce7ef4d05b156933df815ddf86bc57e388b477b3beb3f112db0f9a305a5001ee3e95d33a524f72933e96f137c17f853e0eb8b9b9b15d4ee9266f35c8bbcfccbd31f5cd78fc83e1547e22bab8bfb3d5098a36dad797c5d783d00e82bc7b57f88f71673cd6d7035c2cc7ee9b8938f5eb5cb6a5e2bd1353431fd875769b396dc49047bd69494a3b8cfa27c27aef83f57d42e93c31e1f9ade34245ecb34a0db841d08c8f4f434dd353e1ceada8bdbdbc7a8496f6ac56f6e96ecc449efe57d2be77d33c731e91a5c961241aac16cee40542c030ebdbaf34d5f895a96bfaa4371268f7f7090622882c2d90bdbeef5fc6ba25b6807dbde00f0bfc059b541677f3247a4a5b032cf71a8b191a438c0ebcf34df893a0f8323bcc78775ed1f4fd3023c0be5cc5e5cec6dacd96f5fe75f36f84ef238f5322dbe0d6a3a8cd7285224923650b27f09e471cd51f17ea5aec7797be19f10f836d344d46ee0259d9fe65008e3af1c572b5a81f4a7c3af885f0fbc1f716e9af78bf47ba9a0b46cedb75672c0f6cf722a1f12fed1fe26d52f60d1bc05e1f96cb4ab9726e752baf923900e817b0c83dabe4fd33c3371a16a56d7f796b16c4b57963de3fd628c0c8cf5c935d31f1beb71f8622fed2bc9a78677923b7b773958d4fa0a528697626ae7b2f88be3ef8be6b6fec497c39a7db8d31bf73a86df326407044aa4fb9fd2ad78274cf18fc43f88be17f106b2f72b616f32493deea12e24b8c60868d3a01f85795784d9fc4d0c76b7178c97674f026964f945b4484f3cf723a576bf05ef3c43e22f1fb6ad36a13cf1e9fa7c86092662caa814aa803a0e3da8a345d59729cd5ea7b28f333ecef889e31f0edcf856eed6d35cb5925855644c9cb6f4c7f855df855e258b58b5605c2196112aa6724b679fe75e2fa1f83ec9acd9af6059a4995be775e724537c03e2597c2976325849a7dd792fb8f3e5b1c035df572ee585cf3619846a4b94fa935450da74a7fd8cfe35ccbe9d6d2c7a74ac80f93bdcf1d58f435d45bdd2ea3671dc9c324d186f6e471595796c90b32c7d3d2bc8f61193b4fa1e942775730dec5219de55391282b22e3ef13d4d7c59f1afe1e4fe05d76f6f1edcfd86fe669524038524e71c702bee178ba645737e33f02e91f10347b8f0deb112bacc8446e40cab7635ee655895819fba79798e1de222f43e07d25a22e8b9e3afe14cf0cf89dbc0fe3b1f6e94c7a4ea60c131c640624153edc8ae97c63f0d355f865e25934ad52de76b02ccb6d738255bd39ae5bc6fa2db5fe98b2b292721be846467f0afb7ad4e19ce11c24cf9acba5532bc62a9d0fa2f4cb2d13e2f5ed8ea169e24b986e7424290c11c98493238c81c1a97c7bf0fec7f683f879a8782b519631e22d0657103b7df240e057cddf077c4d7fa36b42783523035938dd1138dcbeb5e9df19fe20dcfc32f1af86be25f862ef1fda96e1af6d90e3711d588f715f8d2c262729cc1fb25a267ebd3a94332c3734dead1f0df897c25aef83f5dbcd035eb66b7bcb395a364938c80783cfa8aad6313492840306bee4f8b5a27c3cfda83e1d5e7c44f0f24169e25d2e0f36e54603c81473f5af90346d0ee9a5494c0429231f41c57eefc359c3c6d14aa2d51f9567397470751f26b73aff02c4202acf116dbedfad55fda03c371e9373a4f892da30915fc644a57a6e038aeafc3302888c50dbb6f6c2302bd46466ba0f88fe0a9b5ff0086f7d6f1c7249259117108209daa0807f9d7b15ab253b1e65085e3a9f31da5f6f7062761d338ef5f46fc15f8ff006fe0ed2a6d1fc431bcd6b1c5fe8ec49ceee7e5af9db49862b79819906e89b9047191dabb6d12f2c65d5ffb4f548ede28e1559234dbf29209ad2b50fac51b5ce49b54e773dc22d2754f89b776de39f1f5e35bd9dcdd795a6e96aa32c80fcacc3e95efff000f7e1f6856b04b7977089a689b09040b84500f19af9734ff008dfa5d9a8bfb8d226d52fe365116e5c470a0e81463d2bb2b1fdac3c61ab7fc4b344d2acf4c66e00f2c7e07debe571196e2e2db8ec74c6bd392b1f5bc97367616b12d9a240091f20e318ae1f54f1af85340b9bcbbd7b56b40ecd90a58139af05babcf89de308f76afe389962957223872bc7e14cb0f845a6496cda8ebd7734d1c637cb3c8c588e981c9ef9af37f75864e55a5b0e34ead77cb451d4ea1f1efc2171e202905dc9f66dd869147caa31ffd6adc8753b0f175b7da3c2d791ea770cd8f20380d8af22f11f847c2f6d01fec4b391dd87dec607b1ae62ca5d67c2d790dee951cd6770ac0ab4276ee00f7af1711c6797d097b1a6f53e868f07e3aad2f6b3d8e9fe38f85aebc39a0ea1a95ed99b5fb4aec78c92006f6af71fd86fe30b78abe1eaf833509fccd47c3db6342c725e35c63f415f1c7c6ff008dfe2df895771e8b7cc05a58008f8eb230ea4d6d7ec89e337f08fc6cd2a279bcab4d48186504e03120fe75ee6638596638158866781a6f0157d8b67eac5a5d8bd533a70189c53e668dc949091589a64a2dc18d1f28bdc9f5e6b4cb893e6f6cd7e7ca9b5a33e8b7d4cdd4961040539c7ad635eae10e17af35b1aa0fdd199470bd481594ee8ea30c0e57fc8ada2ac2399bab3fde160b806b9dbf8499f18c5769731492640435937b66df32980640ce71cd74d3911ca91cacb68a412a0673d6a0168f8208ebed5bd269cc23deabc9ed54cdacb8e495c56ce5e66528a7d0a2da7f9b1aa4d1ee0b9c67dea48ac64d9e4a131a0f4ed5a9145fbb0a1f27dc5588add18e1875e3351cd6ea28c6c621d02ea642b6b7d87ec4a838f7ad3d3349d4edb69bdbb12b8eea8338adc82c62840600648ce71572dd63520153cf5e6a65515ac6a96c67470b39e721b1d862b2357f085c6a97e2ee0b28646111524e39aec9228dba2e7156a18501ce31f854c2af23ba2670e7563cac7c3cd777165d0a3c13d8d4bff0ad759603ccd19547700e6bd6e395232028271deac095dc7c8c79f7ae9fed19dad7393fb3e127a1e7761f0eb53b4d36e0d8da442f8c6e6d770fbb211c63f1afc87f8dfa2f8cf42f899aee9be378e44d53ed6ef299339705b208fc2bf71a10ec06e1e5b47cabfbd7e7e7fc1517e1e4506a3a17c47b4b30ad72822ba940fbcdd39f5fc6b87118875be23dccae8aa52b33e007041ce704501d430665dd8ec6a591548f95b350156c8f4ac94133ebe115cb72d7db1e520b9e9daad47282bc9f6c1acf4c672474e956108c67d2a5c2c7652512c16e7dbd2ba3d0eee39d16363c838ae6464f217357f4291a1bd45c1c13cd73d646d38db54769aa5c4e92426272bb1703dab17cc925bc59673b9b70e4fd6b5afdc30573e9599768236490700e09ae4515b9c153b1e9f6aa25d08491ae32546f1d001ce2beb1fd972ee4d33e11f8ef56182c61544ef93b6be4af0e5e89bc38b60a061b2ff5c57d7dfb3c68d796ff00b3b788ee194037b31400f5c018af1f1d34a672c96a99f317c47f0e6a5e3fd2ccf05d451dc582b3046e0b0c93fd6bc057c37e2292690ff654cc431076a12339afae6f7c31358dd15f2cbef1c8cf426aa18354d2d985bced1a63276a8a30f8df67a23be8e60e8ab33e598fc27e2395c2a68b784f7fdd13fd2a1bcd0b57b39c46fa7dc206e177464127d2bec9f0faf8caf756d2b4c9f5392d2df520ed1cc635ce1413e9df15b9aae8e9aa7c2a9b57b8962b8d4acb5031c770d12ee20363d39aef8e3a4d1b3cda173e187d035b3cae9d3e0f4cc66a27d0f5a419fecd9c7fc00815f62f8aedf55f0c6a967a545746ede7b15ba63e403b41fc2b3a5bad4dd025c1421c6462151f874a258eb07f6929eccf977c2fe05d7b5bd56266b5786184862cc081c73debdfbe1b4634ff00883a030704a5e44a187b102afcd6178eec8dc2b72485c71e9c53749b4874df15e87205c6cbc8cf1d7ef0ac957f692b9e56366ea3b9fa701449144feb1a9fcc52aa609c54360e64b1b4603ef408dfa558078c1af7a934e08f989a7cec3613cd391486cd4b1a829939e9d29107cdf4a6dd98d12ef2714f039cd3074a917ad2dc07053e9d69e23c1ffeb50873c7a53f71a006344c4823b53c29146e346e34006d34f4e062985f14e56c8a007d2ad20c9a50314a5b00b4b9c525079acc072b60f3530391500e2a40c076a4c0fc72d1fc75e3dd2e7492d3c537aae8c08dedbc707a726bd9347fda77e28d8588b7935c827dab81bedd4f3f95783c51c9136d61ce45695b12ca772e31c1c8aee93b83763d1357f8dde3fd6a73331d259fd64b24eff85654bf12bc7851f274905d4838b14040ff00be6b98550790f8a9d659369427229a17332e5bf8c7c6114d05e0bbb467825dc636b6054f3f4c55cb7f885e3db2d4cdd5a6bb141bc865f2add46d39fd2b1d78e73ef4b27ce9818dd9e4818abe6b6855ee747ab7c5ef897a95d2dcddf8baf964041cc276f23a74aafa27890eb4d77278a22bad4ae1c3b473b3e5d4f1f789e715cece988c9ef8a8b426f25af9c339df1104a9e003ff00d7a8b85cdd796f5ae247b8bb771158b22ac84908acc3803f0ab7ab7970691a44a9900dbb9209eb8603354a14b88e2bcfb5b2b3bdbc289ec096abbac45e7b585b33858edec3057d49639fe54a4efa328b316a73decfbc48210b02c7846c6e503be3af5afa27f676d3d2df4ed675a65cab20b50e7d0f5c7e75f38c7f66b794c8b18c79406457d7bf04b43361f0e3498241f35ffefe41f5e4574e023fbcd4f273377858f51b256fb15bb85fba8081ee3a579d78b2ca6b1f13dec492054d5ed7cd42470244c1c57ac436ecb15b88c00aa391f415e79fb405bcf61e1083c5d671ff00c82ae144c1465bcb6e0f4af6eac79da8b3e768a7095cf63f805e313e2df06a4572e0dc69f27d9dc93d715d86a8927db987f0f622be49fd973e2d687a578befbc3b73aa44b6faac7e7c6246230f5f53cde2df0d5c88e3b7d5edccc1b694c9cff2af9cc661a742b58fa6c34d4a3b96e4b66e3b1a61b2dae2507e61d2b453f7c81f69c019cfb50c995dc0707b8e6b9d6e74b8a6719e33f0468be34d2e6d2759b6492375c2b11ca9ec457cbfe2cf82faaf876ea5d27cb49ade6c8b790fbf02becc6b60cb9c5717f10bc36354d33cc59024d11dca4e720039af67019a4f0fa5cf33158285447e7778bbc19acf83bc426d6f43db5d852430c80cb9e39e86b96d62c358d76689f50bb9ae9201b63dec4ed53d40afbc7c73f0a6d7e2c78256f6c8c635bd30148d88e66f6e95f286ade14d5f42be934dd6aca4b4ba89b6ec75e188ee2be8f2eaf83c5c9bad1d4f0ab4b194572c25a1e7ba1b6bde19f3edf48bb78e3bb468a65048050e463f2a768fa37d9a758c26e00f02bb83a22799bcaf3d0e7d6a7b4d14894ba460907b8afa3a0b0f86d691c73ab56aab5523f0dd9c506a90cd245f282320d7b23e9297563e5db46ad0ddc6d138c0e841c7eb5e756364c5c1940503b8af4ef045d2dc6ed34b6e3128753ee307bd6788c4dbdf45c62d2d0f84fc79e1a9fc23e32d5b44bbb565c4c664047f093d6a4f0fdce8579384d4111555422827ef1af61fdaebc3cf0f8af4ff00155a44de54e9e4ce42f1918c03e95e67f0f3e17ea9f12bc4d6fe1df0f40a979261d9b3811a93d79ebf8576e1f378d285e679f5e839b2ecd67a1f9211222a4e36e5703ffaf573429edbc39a9457eba64770a0e4a9201c0fad7aaf88bf67bf12fc39b616dac5ac9aa5bb1ca5edba97d87b8381c7e55cfcde19b58620f712afcd800804fe7c71f8d7a54b34c3e3a9f247738254274ddcfa43e0878e3c29ace910c9ff0008bd91b84e1d48048af639bc27e1df19e817b6569a75ba4178bb6454500c67a83f9d7c23e1ad66f7c1b7a574ed4550ab6f214e73ce6be9af86ff001621bb8a3617412f4af3129e1978c9fcebe1788387ea568ca507a33e8324cc69e1a6b9d1c16b3f0f350f0d6bb2e87a8db498524c2ecbf7d46718fc2b3759f07dabdbef9213950c381c0c8e2beb4bad2346f8a9a4c6d70e96daa5b29586403393e95e19e38f0beb7e1c32da6af6ad0942552e3f85c763e95f836619255c162f9deb63f72c06734f1585508ae87c13e2ff00086a3e17d62e96fa0252791a45976fcb827a67a550f0acf2d9f8dbc3b77679f353508b6b2fa1619fad7d25e33d0bfb555ad75485658db246e1ce05737f087e0ddb78bbc649ae5886834dd1a68cc791f79d4febcd7eb593719d1ad80faa4d6a958f87cc787e50adedd1f7f68172d770c63041f210107d768cd7496eeaa04648c9ae1b46be9a3d50d94703190464b1c8c640cfe54ba87882fa1f0e43731a1467bdf2b7375c77af1e73529b68e56f9743b2bbc12d6ce7e575233ef5c3e9d3c913de433b3030cc42e7fbb5a926babe58267dcd1e38f7239ac4d77595b78daea38d4aba6e6e319c525a827734a4d6ade22371073ef9aad36af64f2905d46473c8aa5a1cfa4ebfa71bbb23fbc53f3a9e3a555bdd2ed8392ca54f7e6ae3a0cd36b8d39c8db71190474cd491dbdaba90c5189e98c573474fd37394b82241d81ad0b3591b0a8c48e829b9b44b46ba6956ecc0aede7b0ab63c3b1bb2b238c13eb4db4b6955406c935b567613c801da715939dc146fb907fc23ea4002553c7ad3d3c3e41c971d2b6e0d1e472304fe356d744947f1feb59b95d94e26047a22af024a97fb28839df5ba3497519ddc54f1e9a8a3f78e39a3993d85639d5d3092486fcead5b6953b9fdd60e3d6b685b5b21c48c429e33daa5cc56685a4710c7d559ce370ace53495db348c1bd8c161acd81668b498ae71d3328feb5e37fb4ff00c26f10fc71f83faaf87df4616faad86e9eccf077e390057b65c78d7c310c9e4bdeb3b2f076277a75bf8c746b8548ed8dc10a792ea3fc6b9655e0b7674d1a35613e647e06f89fc33e20f08eab3e85e23d2e7b3ba82431b09232a0907dc561ca555f0dc12322bf6ebe38fecd3f0aff00681d26e22b88a3d33561931dd08c00cdebc7bd7e557ed05fb3078ffe05ebf3586b7a7bdc6985bf737d10dd1907a0c8e9f8d6d4f1307647d0d1c43492678c0383907f2ab51b0c0e9cd4325a496caa18f24f38a9638d9483b4f3ed5d2e49ec7ab425cf6b22f5be091fcaacc6fe4bac8bd41cd5480302323f4ab4cca53183cfa573cd731eb2c34e48df172f751a11c8c73ed4fb889a6808feed52d26e8087c87edebd6b4e02be60576f95860fe35c92d0f271349d27a9d27822ee516af6f230610025077e78c57e907c10d012cbf669b47957e6bf95a5e7d2bf32fc2892daf8a20d3c3164b970a31ee6bf5bfc21a44ba67c14d034948b0eb6e1ca9e3ad7cc66b3507a338d2e63e78f10e936b6f7124931500741c7e958907845fc4726cb0b7658d7265999480abdcd7d23e0b4f86736b73787fc6d1c31de39f32269701369ff0068f02bb1d721f8680af877c276cb7b712f1b6d177283eedd2b8f053553567356a8a3b9f27e97656f3788d35716d22587876ce644671805b6100fe7505ef9769f06d6c2ea254ba9e6372a00c1652e315ecdf15fc35069d7563e14d3ed425d6ab220b811e3e6527a71cd617c41f00cf1db6a9a7416dba2d234d40a57b1cae457b7069238dcd49e879adee92da97c418ac9e1ccb27868340a47df61e95c3e96909964b2d5e06b7ba824652928c0201e3ad7bbf8d342d4b4df0af82fe3268768677d2a1fb35ec6a325a3ef9c7b517b0fc38f8836635cd25a056bb5f326b793e46493bf38e39a992bea7451b9e3379e1e0f135d5bc64447819eff00e35cade580b5d52c6e645388ee63c3118e723d6bdcad7e17d8ab3dc8ba9a386d9498e2f337027b74ebd6b80f166981ecdc32e0c1287e983c366bcfa555c2b2573ae716e173ee2d04b4da1e9b703956b58f9fc2b43629ed593e0c9c5d782741993386b34c9fc2b65179e4fe15f6945de0ac7cc557efb05f9570280b8e6a4da01e45071eb56c1080e6a5519351283cd4cb4c07270714fa00ef450014514fa0065397814b40cd003949a7d3053e93402e3bd078a55a7e07a567b011ed34fc1a5c0f4a5a9b81f92df14fe1aea1f0d7c6373e16d4b7fee1cb5b4a07fac8ff0084e7e95ce03300ccea02f5e3d6bed11e08d23f694f87c972d2a8f12e976de5890e0bb851819ef5f2678afc29ad785b519746d62dcc72c2db36ff00780aef030d06e0307a8c9a9d085e09fc4d568cf993ee8d0aaaf041f5153cad183b48e680b12e41fbbda80727278a8e061212076a2507a6687a80b290dc751576d74d58ed9a751fbc96e20b70abd30eddff002ace04671b87be4d7a87c35f08aea8742fb41f96e6ea6bf9b77431c11311ff008f1142560395d6acda2bfd46d656098b886dd4f6e01c8f6ed53ebba4c965702157f364b78959fbed0067ff0066a358885eeaf65092c06a37f24e5b19c65d113fad6af8ee26b3f126a96d6fff002c84368cd9fbec2352c7f950f5771b76463e976375abeb7a5e836ca5a7bfb848428ebb4907f957e815ae936fe18b68ac005586dadd2de11f4500e3f1af943f654f094be2df8b5fdb5796c4da787e2ce71c7983a7b74afa93e21dc837b64b1929c9dca4fa924577e023efdcf0b329dcebad5924863746e303ad41e24d0e0f11f86b53f0e5ca864bfb67500f3f38191fad268e7ccb28028cfcbcfd6b6903c401540ce0e47b7ad7a7897ca933ca8abec7e60de5e6a3e01f1f5bdde312e817ac9329c8fddeec678f6afbefc19aa68be2ad034ef11694b1c82f15242e0f46ee3f3af99ff6bcf8789e1af1a278a61b71fd9fafc2639195785981c8cd741fb16f8da636da9780b529379b4c496e18f63e95e9d7a34b1987534b5473fd6ea61e56b9f5bdb7c66d334bd64683aed85c5ba222813c637a1181d71cd775a478afc33aac45b4fd6607c9e17701f4e0f35e39a869b19f105bdf3460ab4277a30182474fc6b0f56d2f4f79259ede192de55ce24b7728549e7a74af93a9816e5a1ec61b30728a723e94585a5f9d30c0f23a63155753d3a2b8b591248c1ca9e8013d3eb5f3ee91e21f1f6856aafa77899ae1506561b95ce47a67e95d1e9bfb435be9c160f19e8d25ab9f944f092c849fad724b09562f44763c6539ea6df84658b45d5aeed99b11bc9f2a1ea39abde3ff00855e1bf88d64f15dda2c572c3315cc6bf3ab11c73585aadee99ab883c53e17d4adee8a7cd3451b649079ce3dabb4f0e78a85c450978c0df8ebd456f0f694973477263eceb3d4f8e7e217c26f14fc3db8f22fac9e6b756c2dcaa6432f63c7b57371422e027d9ca2e40c8ef5fa297965a56bf6ff0067d4ace1b885c1055d41e31ef5f387c5cfd9c2eac6ea4d77c0302cd039f326b6e430e7a2fe15e865f9eca3354eb1cb89c046d789e066d9a33b4105475f7ae8bc317a6caf602a8aa09c331eb8ac9b8d36fac6ea58750b69ad25438114cb8357ac95d42ca132c0803e95f4bf5aa7557bacf3fd8f23d51ddf8c3c0fa278ab419b4fd56d524b4bd4dde615cb46c78047a73fcabe34f14785be217c01f1947aee872cef670cc1e1bb8ff8d339d8d8afb9bc357b1eb1a33da48bbbca033f8f4aa9a97c3d1e2e2da0dc450cd1b29cc53282581f4f4ac9d483838d4d84e927d0d3f81bf1a7c37f1b3c2093d9b403528136dfd9b8077363048cfad52f1e7c0cf0ef88629eff004009a7dd9427c9c66394fa7b5783eb5f07fc75fb3b789ee7e21fc2f47f21862e74d903152075c63afe55b5e18fdb9b4dbe5fb178dfc192400fc923432152ac3a9fcebc982ab46a73e1e5a10e9269a923cd3c57e01bbf0deaaf1dd46609a1255edf6f233dc67ef549f0934bbd6f17dfea4d74e22b6b7db8c10325863e9c57d0b71ad7c25f8e7a5a41a57886217089e646cdb56e217ec3afcc33d6bcfac2d21f86dae5ce87e2ab411bdcf0b7e06229973c57d4e173994e9fb1ac78af0bcb5bdd3d9be11f88a587505b2b9b9ff5846c6cf6af78f13784748f17e82fa6eaf891258ff75295f991b1c1fcebe4fd26ee2d2f58b5b9b6b80202c18480e4007f9d7d5be1cd7ed2e3c396f7724eb340ebb4baf6e2be1f8870f0a926e27db64f89a9854ae7c1bf1f342d5fe165d5fd86af13bab425ece60386dc70057ba7c1df01d9e81f0fbc3e8b6c166bbb186ee66c756640c73f8e6bd33e2e7c28d17e33f843fb06f4c6d7a922c96b704024c40f4cd3a7b6b7d1f4f4b2810470d942b6c83b808307f957c761302e152e7d262f32756928a396b565b5d7ef244e3cab663c1ff66b99d4b5b9aef4dd1b4f240596f657ebe80d52bdf15c66c3c43e21b794b0895e04c773c8e2b0a2bf083c3a93c877b179086eb922bdf8c6cac7cdf33e6d4ed23b9f2e795667c2ee0bfa702b0fc79ab4765a2b486502307631071d6ac5d5c4729600f25b3c1f4af37f8bbacada781751776198e546c9ebc935d108a7b9d50d4e87e1aebd3bea37ba7c1283080a460fa806bd2e2d48ce0473428c07049e322bc37e0c79cda54baeb8c7da5f62e39e0015eb76129b874c1aa6ac8ab5cdcb5d2b46bfba32ed922623181ebeb5d669de1ab6b65509f303ce4d6669bfd9ba5c2b757efbfbec0715ab6fe33d1e6c24103f1ef5c936525737ad749b4401f6671d78ad5b78618c05541f4accd3bc4fa44ca2de485949ef5d259436f73179b6edb8565ce38c6cc622a839da062a4c6ee8b539b46cfd29cb6e148dc78ace5245b8df629c90965f9475a885ace43280a703249e82aceb3a8691e1db537daa6a11c110191b88cb7a003bd7137fafdfeb16de669b24b6f627eeee1f3ca3fa57256aea0b714284e5256459f11789f4bd2a07874fcde5e6301739446ae16eee35ad5a40fab5d348c47ca8ad84507b7bd6efd92c6388cd146327ef16e5b3de98ff0067854bba2e0f3c8af23118d9db467d1e17071d399142db4f863500c2849e991935a102a45c84c60e0e071f5acb9fc4367012bbd400696dfc4b6ecbbb7a91dba5795531b3ee7b54f0107d0e9ad1fcc7002fe238351f8a7c27e1ff001ce973787bc53a5c17d63709b1a399416427a3026a95a6b31310d181cfa55bfedd8d8fcc32477a9a5984a9cd32678282d8fccafdadff0063abef851acb7897c216f3de7876762e485c8873dbf0af98bec0aad97604678f5afdd0d6f4bd27c75e1fbaf0e6b76cb2d9dd2323ab01f292300f35f939fb517c02d57e08f8d2e15519b47be95a4b5900380a4e715f4f83c7ac42b5cedcba118cd2678cc36b128f9979a91add73c28a4dfbd7777007229c246c726bd16fa9f634e34ec3201e54d9c62b5a108cbb9b391cf15948e036f6fad6adb23cf102887078cd7155972eacf99cde8c652bc4f4ff00803e146f1bfc4ed12c2287798a70ec0fa022bf5cef2c12c745b3d38c3c4102c7b47b0af84bf611f867147e221e2ab943fb85c863db3cf7afb93c5de2bd374b81e7beb9440178c9f41d6be2337aea53d0f168e1e5d51e6be2cf0af87af6c2e53598c22b061bb003a8f507afe15c6fc2cfda03e13fc21f05de5add5e7dab51b79e458d19732b00781926bcdbf682f8b3a74f3c50d9f8a1a1c920ac6e304127debe65f125d69322bdea6a704d21f9c65b927ae4f35ae57467257418bc0c5a4cfb6be01fc54b7f8ebf19b54f1e6bf1a697a36888df67499f21b1c03fa574f75f12fc2dafeafe3c865d5ade3b39623144fb8156208e3f2afcfcf067c45bef0f585f59595ebc3697a7f7a617f9bd6b413e2269d67666d21ba9a5133ef752002df8835ec3a7511e7ac128ec7d4961fb4e7857c1da1ffc21d7f2437d62032b2374233f4f4ae0ee7c47f0fbc71e2ad2acfc09757766d7f386b9b688008133c9cf6e6bc2af348d30c0bab5fdedbb2dc82eb0b37cca3d2a8e8be2bb5f0d5f8bdd1afe3b59864211f7873d8d4548d5941f2a378d2503f44e5f0d5be9b0ac368b23451a8552e724e05794fc46d0d60d3af6e120c12093f5cd68fecc1f1861f88fe1fb9f0fead75e76a162cc51dc8dcc2ba5f89164b3e837731183b5b2b8ee2be4e556ad3c5a52d8f4a54d3a1768f5af85334d79f0f3422e31b6d947bf4aeac2152411deb88f8197ff006df875a6a8ff009629b0e7dabbd2bdebf50c14b9a9459f09888b55591ede4d1b01e79a7818a5aeb1ad0445191f5a7639e94f5c6338a7019a0041d28a53c1a4a0029d9e29b4a2801c3914abee2850314f5031400a3da8a28a0051d3f1a9322a21f5a3e6278a8683625c834b5183938c7e34e5f97af359b5603f38be037c6393e1af8ae137f291a6dd958e77c9f941e3f2af6ef8fbf063fe168e9b07c41f025dc77972abbde38f1864238e057c5c18c13b3160cac36907a6077af5af849f1dbc4bf0f2fed2dadf50927d28c8165b66cb6dcf19aefdc0f3fd7bc31ab7865e6b7d774b9ece64cb00cbc1c75ac18a34ba50c8dcb773d2bf49758b9f875f12b41b6bfd76db47963bd8c28cec120cf27f5af379bf65df83bad4d3be9ad2c1e50ce2197e527f0349bb0ec7c3fe44f6d230da48cf0474a993f7808cf247e5c57d45ad7ecc5e07d3ee6dcff6ddf44b7771e4451b3904b63b0ef5afe03f835f0bfc3be268adadecdf5294f3235d0c856cfbd09dc2c7ce5e12f85be35f18930e87e1cb9b9f340586675daa49ea6bd25526f09d9f88d90a87f0c691fd94083c2dccee8afec7ff00d75f4b78fbe24f86be13f836faee59a1b3d44dbc89a75aa00837153b781ef5f0fd9ebd79adac5a7c89379772f26b1ad339277302028e7fda65c7d29858e834eb6b06d56c2597e57b792142ae72ac111a46233eac56b33c5d746fb5a33b1c31325cccbe8ce70a3fef90299acdeaea9af69fa25a29486ca0699e519ff587923f203f3ab1e03f096a9f117e2159787e090c82e67596e0af5d8a40fe43bd35a99d6972c59f597ecb3e0ab9f07fc39fed8bf4f2ef7c4131b8191c88f3c7e6056bf8d659b50f15a431e5842c01ef5e936fa7c3a758c1a759a916b63147020c631b4004fe26b374cf0dc77baadcde18b2c4e4122bd2c2fb9a9f318893a922c7864e2d5636182a00e6ba168d48057b5652593e9da9456879329240c62b6954afdeae8a951491105a1e5bfb40f80a2f1b7c32d4ac0c21ee2cc7db2d891c82bd47f2af89be0c7889fc29f1174dd43cd68da797ec93ae00f981afd27bd45789b7c61d1814753d0820835f9ddf1a3c1f7ff0e7e30cf0dbc1b6c6fae56fad4edc0c93c81f435e864d89494e948f331d4da6a48fb9e621dadae4b9963948dae0e4293d6aa6a7650335eaa0c8233d7a1aa7f0df5c83c51e0cb3b88dbe728a1d7fbae00cd6bb45b67911f3f300306b9e69466d9bd07cd4ec6745a5c42c7e64dd85c633c563be996d751243796be647192361e473df9aedcdb8f20a28e40dc46074aca686669c340a029e0f14ef17a1566ba9e45e21f877aee977536b9e10d56e74e9edfa22be23914ffb3d0fe55b7e04f8bf7d6928b0f17db9f3a1fbd3dbae0363d47f857a3dfda896258a45c80315e39f103423a0ea69e20b146058e08eabc76ad161a352162635a74a573ea6f0878e74ad56d127b3b849a07030b9c32d77114b6f36d9a23c05047d71c8af933c01afe85e27458da7feccbf8976878be52c40c0e2bd574af15f89bc2bb0eb71b6a7a603febe2e5e31d3240ff0af9cc7e5ce8be648f770b8e8d4b46475ff00103e16f873c7968eb716a915da8cacc8006ce3f5fc6be48d7f41d43c27afdce81a81f9a07251f180c9d2bedbf0feb1a46bd64b79a5dec7386ea108257eb5e07fb50f84245beb1f13c30ed873b2e1c74231dff1a8ca71ae35fd9cce9af4e328dd2382f87fab416f7d25a96056e97603e8c3915e836f2cd1edb95f96e226c07030703a74af13d32e45bdd452da90a15d4a91e99e6bdba057b8b2b7bb5e44a801e3b8eb5f558b5174ee8f3a10b3b1e97a4da68be3bf0f4967a9c49232a61d88f9b7639fad7cb5f187f634d2b569ae350d3ece5b579198a3c24e09cf04f6af6ff0d6bf3e97ac88a64f2958840878dea3a1f7cd7b4c4d6f790a490b29dca090d83c1faf4af948e26a60ea7323afd846a419f8dde32f86be38f843abb48d1dec011c986f20072307f8b1c7e62bd1bc05f14f53f1e787ff00e115f89165fda3a40c28d442e2584e701b239e3bd7e83fc45f843a378a9e464091ca54fc8c015932391cf1cd7c9de2ff0081da97822e658b42b06462fe635a9e030ee56bdfa799d2ad0f7b4670470128cb9ac7b258fc2bf056b9e02d3adfc297cb31b68408ae09c973e8d58ba0f89f5af86fab1d0bc421ce9338f25a2c642ffb43f0af1df0b7c41f137c31d4d6e741b832c45b75f58b82571dc63a023fa57d33a2eb3e0df8d9e16fb4c4c8d3ac7ba48a3c192073907df00d7958a8cafcd277476d38b44765e3293c217b14325d0b9d2ee0092c671dc1e7693ed51fc5fbbbf1e1dfeded190bc1342cafb7928edc1cfe35e7baf693ad7c3c32e97ac4325ee8571878e5232b1b9cf2be95b5e0ff00123e9d18d3a49a4d5f47b923cf8dc65e307be3ff00ad58fb24a3cc8b973773ce2eadfec5a2695e1b326679dc5c5df3c364e493f5accd4bc4fa3bf8921b97b8592d2c97cb8d54e0ef23a0f5ad2f8e5a05cfc3d7baf13d95cb5de937e0f912a8c98723250e3a7a57ca43c5b2ea9aec62de665822955822b7049eb50acf632a7177d4fb116e9a711dd428424aa48c9ce3d2bc4ff683d6197c3f79a5ac9869c4638f663fe35dfa7881b4df032ea934fc08d63524e3e638c57ce7f13bc493eb172d1ef32b9281541c93c8278ae851d0ef4ac91f54fc3dd1ff00b2bc0ba4da47ce6147cf7cb2835db6992da693139bd9914a8c8c9c62bcc744f8bfe0a8bc1da7496ad29bab6b68e19d08fbae1402718ac9b6f144fe2df10c4af63793e9e1b7178d58719ee056136d1699ed169737de2bbb36da2033296d8cff00c2bcf5fc2bd0b40f02c56eca92b34aebc3b76cf7a8be19cba54da340fa6c090a28d9b42609c0ef5eaf6362820124500c01f311dfdeb86a498d2b9816be13b08889258fa7439adab0b25b13e5c00ed3c819cd26b1ac689a4599b8d4af844a1870064f7fcab26e3e21e891951a45b4fa848ca36aa21c67b560db7b1a5ac767044bb019be527debcfbe277c5df0e780a116902ff686ad30221b488eec9ed9c74e6b9ff1c7c4ff0014d8581d3ae2086deeeed0ac10c6732283d09c7438ae1be19fc35b7b1d45f5ed4aee5bfbf9dfcd779db798c9392066bcbc4e33d93b5cf4b07839567ccd685ef0de85e2af15dd8f177c4db9dc5ce6cf4a4e238013c13eb81f5aeeed50619660063ee11c607a0ab9346bb0e0e31e9c1acdbcd42282201df247af5af2e7887559e946928bb220d55a08222ca70a793fe35e7be32f1c5969768c5270ce010055ef17f8a859d8c8531c038c9af9f7c57a9cfac4ccfe610093c035cd527a5cf730f4a33489f51f88f7d2dc92b21dacc73c7bd74de15d7aef557531c87602323debcacdbedff9680e3bf7aed7e1cc9225df96adf2938c76af33132b46e7a51a6944f7ff000f2398959b278ad8fb392e4e3afb56778648781231e80575696785048e335cf0a9739ea244568a628f23b9af9bbfe0a0da269ba87c198354b9803dcda5cfc8c4f3c8e95f4d98c46318af8fbfe0a39e2e4d33c05a3f86226ccd7f3b3edefb40c66bdccae4e3551950d2a687e7309437caab804f4fe94f392303b0a4da4b64f6eb8a7060bc66bed92ba47d55177a66d7823c23aa78c75916168311c7f3487fd91c9fd2bd97c39f08ae1af63468cc96e1b040e3a77f5af13f0f78d354f066a49aae99273d1d71d47715e8f69fb4fea4b6f3416ba7a4533ae03018c57978ba339fc27cd63a6d4ddcfb1bc05e3cd3be17e80d61670049157191cf41fad79b7c51f8f7aceb10dd8b76926797f771c6070a4f1c57ca57ff00137e20ea4ed30bd60ae776379eff008d6af833c47afddea2c9aadc07cc7bc28018601e7af7af9e9e4f36f9e673ac528a3adf887f0ebe27cba358f8a2f34848ecae106c9092db89ef5e5f77e18f176c0b15b8257ef1c1c7eb5fa0ff0002b51d13c67f0caffc39e2b87ed3676f01b9b7908cb263a81f435870dcfc06b7b5f22df44d475299fe5c2c676e7a6338af43054dd18da28f3f19985da89f05e9fe14f1c65d2c216b82c4e52353f2fe55ad6be01f8b72a154d2246562096f2b91fa57d83e2bd7fc2d696d0afc38d1ff00b0e6838bb97665c03c739ae56dbc637644d2b78cf53fb48c855518424d6d3c5387431855e647cd5a9f82be22baa5b5d2c912a0c2ef5c1cd61af81fc791b1f903b293cb1e6bf487e1b68fe12f1c7c1bd4bc57f10f4dfb7cda45c858e409f3b0c77e2b9c82ebf671bb2b06ade0cbeb40e706401d4669471329269227eb31bd99e0ff00b1ea7887c21f10a0bfd618882506393938c9afb1bc73aadadd5a5ec2b22b23862307d7a570d0ff00c2aed57ec7e0df84fa2226a4f36567941dd8ce7a9aeb07c0bf8bd797820bdb7b74b566c48e8470bdebc7c4e5f3c4555348de58f8f27236775fb37df3cbe169ad6461fba9385c7239af5d6ef5caf80fc05a5780ec05959ca659a400cac7a67bfeb5d575c8f7afb0c0c1d3a4a2cf97c43e6a8da1b453bcb3eb47967d6bb081b934f5248349e59f5a72aed1400a01ee68a29680129475a369a369a007ff0009229d19f9793ce6994e04e322801f453727bd2824f5a005a518ef494ab9ce3d69301d818c83da8c93d69c576a75a8c96ed58b03f2052c6ef54d463b3d3104f2dc0c46a182ee38e9c9c5745a6f80bc68b72f6b73e1d9605b6c3dc4accbe5aae09c96cf38fa9eb52f83fc2ba67883c4f736165abcaf631599ba8de34db239c642a73c91571eea4bad3a4b0d4f5abfb58ade4f2841246c1a5527e60c40ea2bb91a5b4b981a96b7aa6992c5a7e99ab396964291089ce383cfd3dab6f41f17f8ae0b3bcba9bc7f77a64b6f3aa43a62c6f2cb72e0649e3903eb54dbc390aeb274fd1ee86a322ac53432229c88f9cefe9b76f7cfad58d0740f1236ada85c69d2463ed328b79d91374821519775247a63bfa50d5c47b6f873e2ff00f68dbe89aa78c747d59b51d2a7f3e186ce02e970c0630ce785f7c9158b7bf1be4f03eac7585f06ddbc57ae645334e85949e40201cd7210369973aec7278774a5bbf0f5a5b6c289314e7a349293dcb67a66b1fc3de1ff000ff8a756d6ecefad350c2176d3e549018ad87254be48e3f0a12b0193e39f1f6bff0014fc48759d758ab6f2cb6e1b0a83b565c1a85cd95abc3037cd7ce12419cfc808207d322ba9953c39e19b7d3db4fd661f106a37c24b49a1f2caac648232091ce0d7230d8dcc3786d9eddf28fb4285cf3ce715327ae84c9d9166d6f67b56b8ba70ccec0a927a1638c015f61fecc5f0e6cfe1b78463f88be288ee5751d6d1a4893c86630c40f1d0719cd788fc04f85779e37f1d59d9de87b4b58035c399a2ca3b290463fcf7afbeb4cd2af743648e6bd17712401510ae23441c70315ad2573ccc455bab2384bef8a3e1486048a1d661b6695b72fda119188efd47ad4be07f8abe1dbfd72e3c3d73a946b348c5ad8e7687cf4c135b57c7c37ac4f9bbd36c2728c558346370febf957947c69f07c7a945a7f8afc3966ab3e8d2057b7897609501e99fa57a74e2ed63c59cb5b1ecfa7697ac5c789a5d56fae97c84045ba91f7b3f518adf92da4237310a49e14f06bcbbe165c5878874f2ba6789756d2efa34daf6b72372a3639c1eff00857717169f11f488c3d9ead63aaa2f25271e5f1f5e6b9aa4a4a562e9aba345d4a864700e7e53938fff005d7837ed61f0d93c57e0cb3f146976e52ff429c33100fcd11e4fd79af519fc71add9becf10f822fa243f7a7b4659d01fcf3fa543a9f8abc1dad6992e9375a8954bd8cc5e5dc44ca573ebc62b4a155c268aab4e325a9e17fb3ff8b9bc3faf0d0753ba5fb26a48b2c44f0172071cfbd7d09aa5ba2ea28f1b7cad8231dc67ad7cc7e23f080d36059b4d9d45c584ec239236054a06caf4e4718af5bf879e3d7d7ecadac755252f6d405f9872401f957b15284aa2e68b3cf8ae57647aa5d5a2c5771ba9f9658f07eb8aac6d1606236d5c49c5d416cce3f7b903f0ab0f0067391922b89369d99b455cc79ed848b80b9ef5c5f8d746177a74903c79c64f4af4692151d3d6b9fd7202d9565c861d71c576d0ab668ceac2fb1f3869a1f4cbe9523263911b823d457b6f813c6772f6c905ec85d88dbb8f3c743f5af30f1769474dd4a5b948cb2b9ec2a6d035c36e6238d8aaf86ef5ec55a31c452b347153bd39e87d056366f6974755f0a5c0b3980ded186c249ebed5d26a91dafc45f06df683a946b1de98c9f2db1b95c74603fcf5ae2bc397b05e58ac9149be275072a7f4f515b3711bde05b9b39fecd796e331c99e1c0eaa7eb5f118acbfd8cf9e27b94717271b33e5d7b49345d4ae34dbb52bf6498a7cdc7d0fbd7b37832fcdfe8491860c21241f6ce2b84f8bb146be2682f65885bdcdca61a0638dec3ab0edfad6a7c31bc74bd9eca57d893c63009e8466bd3a5294e92523584d367a2e9b0c7abbff0065cd8176a0182e3ba9ec2bb3f016aba943792e83aaa32dddbe7a9fbe83a30cf5c8af3e8edae6ce61725dbca24e254e40607a575a3508af2ded35872e1ecc806551f3100f7ef5e26363cacefa5dcf53654badb2a7cd8e0823bfff005ab1bc49e1ad3f5fb2482f2153321263b8c7cf19ec7d7d6920d55dad1350b5632c4464a804d6a5a5fc3a8421d0e09fbca7b1af32d24ee99b3d51f297c42f84167a9deddd9db40b65adc44c8b29c2a5d0af20f0feabe24f867e2a67b432699aa5a30f361da42dca771e878afbdbc55e0fb1f125910db63bb41fba97b8ef8fcebc17e247c2e9fc4511b4d5ed12df52b319b5bb53feb001c03e95e8d2acea2e5998b89da787757f0bfc5ef0cfda6c618e5b8740b7766e002187de38f7af38f167816ebc05ac4775a5ce63b79d87d9dc9c08ce7ee1fa579978475fd7fe1578e22b8b98e5b69212ab7911fbae84fde1d8f1e95f5478c74fd37c75e108ee2ce55686fd05cdac833c4846e3f4c9fe74d7bb56dd04cf296d6346f17e8fa87c3ff1bc08aba8dbbc097057f76923290a47e35f0378efc25a7fc08f185fe87e2fba9208ad8992da44e4ce1beeedfa57db52da8ba6305e4322986416d26382ac0801bf3af23fdaebe108f89ff0aceb16c566d7bc28e24523acf077e4f071c77ef5d98ba4a8c5548ec551a7cf3513e6cd5bf696f06eb3a7dae8e22d4160b520b3ba108e474ae2af7e22f87756d79eeed2ecaaca55630782a718ae0ffe156f89af53ce49223bb9450481ee0e7de88be10f8bd5b71108c60fdeaf3a3984168cfa0795bb268fab7e1af86a5b8b38751d52eadadf4d9065a49261f367a719f4afacfe06782b46f15c7736fa6df3c4b06159a319ddce2bf3a7e1eebdf147e19dc24e9058ea76a83e5b6b96dc9f957ddffb24fc5bf1778b3e1bf88354bdd16d6c2f3fb41ad03db8db819c71f4a53c5467b1c957032a4aecfa027b8f067c218db4a8679b55d46526468431611f1c93e9f8d52d1be2bf883c577f71a25b5ed9d8009e62c7b82c850753ef5e65ac4575e1b7b8d6eeb76a692464cf086cc8e3193d7bd7866a3fb58e85a56b7f61f06e93790ea1684858752b6d8d1b1e0e082411e9584bde5739a9ad6c7dd11dadaa5986d466885b95ccf35db6c463dbef7dec7b7ad711af7c5cd3f49f3b49f02451df4982925d05c450e382173d7f0f4af9aed7e267883c693dbddf8e35d6bc662db6085f6a4790300af7aecb48d4ad922652c060e5140e31dabcdc4e21514d3dcf6b0b80f6cb98eefc316f249a9c9ae6b73bdddddc9c8924ea9f4f4af40d2757b3b166321fbfd36fbd79dd9eb0935baf19f940381d0d675eebb756acd2798c5066be4ea56954a8cf7214951872a3daa0be8b50665b79371009619e82bccfe2078eadb47bbfb3a480c8b9ca83573e146beda88f10dcc9265ada0271e871f957ce5f12f50d46fbc4b713f98ca1892a3b574a8da37672d2579d8d2f1afc439f537611cd88c0c100e39ae1478921472d23ee07b66b84f116b7a8588916763806b9a8fc57713b88557731e9c826b1a89b89eed34a16b1ebc9abd9cae3c873f3fafad7a27c388ddee4360f2457967c3bf0aea3ae3a5c4e8e501cf4e39e95f46f84fc2d1e982393043000915e6574de875a6da3d47c1f16d55de3a62bb5dc1946dae23429dd6418e07a62bacb49198fcdd00a8a71d5238ab3e527963655466202b9e3f0afcecff82946ae25f1c787f4e2e408ed0c8131d096c67f4afd0fd467c5b79bc011b0da33cfbd7e74fed93a1eadf11fe2ccb71a5442e974e81205507bf535ede0a51a52e6918529a8c9367c72e6442370233edc54523b019e4e6bd61fe0878e2ec22ff6326ffee6f1c0a63fecfbf1297ee787411d78916be9219ad18a573dd8621ca3689e42ecedc1523eb50a42c1b71eb9af58d43e057c4c8a207fe11a03d4f9ab9ac57f84be37b7245d687823afce2b459a52679b89a52a8ee72f68e480b93c56f68f7f369d7f6f2c8cd1c32111e5467a9e4d4cbe02f1444db57473d307e715a7a3fc33f1a6a13471268e8a85c166926000191cf3586233084a279eb0f24f53ee6fd9db4c164ffd831c05a2bbd21a68df076b1619fe758b61e0ff001cac5347665ade21230fddc7838cf7aeabe06787fc69a4e8d1eb7a2595a5d1d2acfc99034d91c0e474a9b5ef8d3f11bc2be1997c457ff0e34c934a4dde64914e3775e7a8cd78b87c6a5267935e839d5382b4f046ad65a7eaba5ea71b4f3ea6c0a48796001c9ebcd5bf0d7c17335c2ac96b87c672dcfe359fa67ed5be0fd5efe3bdd5bc1b24654676c722fa7bd76da57ed67f0ead5d64b7f0add3484918de99c7fdf55cd89c75af6475d1c1cadb9ec9e02f8612c5f073c41a1619249e40f1ede3903835e1f7df0a3e2a451340b74f34311c461e2e40fcabbcb4fdb2add2d9749f0df859ccd72c0209644c6e3d3bd59d77f689f8aba1ac2dabfc36b36b775dfb96452769e95961b30729a8d8e2c461dd395ce07e07f87b57b0f8bb6d6fad5bee9e00096dbb71ef5f65dc4ac67711b301c8e0f06bcb7e19693ff092ea23e25dd69f1d94d77180b0a9c8000af51f9319fc4d7dc60d2a94eecf1aadefb9088c673800f5cd3d54834498382a7b52271ef5d8972ad0c121f8348c76f5a7d31d01ed525003bb9028a000381450014a3ad2528eb400ea28a28001cd387029b4f53ebdea1e8000669464034b4547330133c6714a1b07a514607a53bdc0797cae314ca28ce2803f2a74df0df8835558754f08e9ba82325d22c5245843b8b0c95f50b5b1ff00089fc4374b76beb88026b31cb785e71929e50f99b39e32719aee6eecbe25fc03bb8b48d6349b5d423b58e47b56b70eca149ce5b073c0fa74ae0ffe120f1978dacec743b2b8b2b5b682296147f308c873961924f5c74aea83b9669eaba8f85be1fdbdb69be0c924d435dd774992db54902831a49232edf2cf63f21ebeb590b65f10bc0674eb9d62ddd6c52dca4e61cb3793260959081c3103afa5777f0c7c01a3699662e27b2fb55fc5305324d7188e3c73b87ae0f4e6b4eeb596d335bbb92db528a48646ccd6f7204d0ca075c83e9f506aaf7d80e567f07693ae58dbdd7c31f14b697a3eb64c725adc00648e58c60af1fc24fb77a874af845e368b44b0d465d6a189b578c5cb10e01763f7632bd7d3d2b66fb49f02eb6c75ad135c7f0cea90399bcb8be7b3909ebb14f2a4f7e69d77e1ff008836be46a56373a76b6aee7ecf15a4ee664cf23f779c0fcab2949a03cd354f00f8af402fabeb3a618224b9102dcc7b594484e0b28c8aeffc0be043abf8a342d23c15abbebf7ef26750696df6a5ac4ca4313cf24715dce9df07be2d7c61d42dac4698fa3595b44a1e3b904a64e06eafa5fe0cfc18d17e13f8765d36ccc336ab33b1bdbf0bf31206420cfbd4a9a6eccceaa6e2cc19f4bb4f87de36f04e896902a47756b716ef205c19243b4e6bd6a777f286c942ba214604678cd7957c6d6ba8acb42f11a2379fa06ad0bb39ebe5be54fd3915e8d3c8f2db7dac371346b22fb86506bd1c359b3e6ab4e7ccf53cefc51e1db39ef8dfd85c4b14e396daf856f5a9b41b37d5743bab07908b8463b4e7393dbaf5a96eee1e6b9607a06c37d3351c7a87f645a6a979a7c62596c504e62cfde51c91f957ad24a9c798e172bb39dd2a59740d5c5aeb33ad98793f737217863e87d2bd8ecef9ee6dd51245994ae7cc56e315c77f68e8377656fa84f1c22daf40730dd441d6363d707a8adfd062d114e7474c12bd1272cbf91ae79cf9b7474427636ec4ac61e37f9b27823a7eb4b71a3e8f7b115bdd2ed65ce7e668c6454706fce1c1dd9e722ae744e6b07146d7be879ff8c7e1d6831e91713e8da7889cb07900c9c915e57a7406cef0dcdaaec923604e3b81d6be8e774689e291731b82ae3a9af9ff00e215bdbf847c48cb25ea247383246806300f635e9e02ac92e491c759723d0f5bd36f5eeb4b82f00c3000f5adfb79d6785588c1c735c1fc3cd7f4dd634a8da2bc8a510801d51ba577516c640d18f94f4c567595a771d29732d47b20c1accd4556486452bd0715a323b221723a7ad65c7345777525b9c8c8c67d0d10767734a891e67e2dd285edac8c132541230335e77a4c93c6f2dc5b422630310f09fe2c75af6e96cd4dc5ed8a0ded0f2c31d88c8af25d7ad8783b5b1332379178d8c8180a49e6bdbc3e2a2e1ca704e36d4f4bf01ea91cf6ca967088e3232e873956effd6bbdb6c3444b360104038f51c7eb5e63e0edd6b7a5e360619977053d726bd260949842a0c6466bc9c642fb9b5395b63c63f6a9d02f356f86cfe23b0578b51d06e12412275d873d71ea6bc73e0bfc52935ab882db551f67d560917f785be5914815f61788742b1f12f87356d0ae94b2ea364f130ff6b1c7eb5f9b422b9f0878aee34d791966d3eeda00738236b719fc2ba329a31af7848cead79539291fa4165750b5bc12187ccb2bb5ccb10eaa4f56ad8d03434d32ff00eccb73f6bd32fc119638299e95e6df04bc623c5be11b6ba5c4cd680c1373d315e9c90c8c980000083191c051dabe7733872d5713e830957db41491b5a4b4da4cf3e9b9c5baf0a5876a9c379130921976e7a8ac1bcf1258d949b6ed5e57c75404fe79ac5d4bc5d77338165a73aa67059ce38ee6b8e14e2dab9d8cf4d8354c85f39d700f52474aafacdbe93adc3225dc90af1fba6f306e06bcb25d62ea4506eae9846dd0efc0fa54f656d6baa308575383271d27cbf3f43573c3493bc4c9d449d8c1f8a7f0ce6f1368b2ceb6b19d4ac97304aac09914740715c57c25f8ad3f862da5f0a78b19cdac47f77c60c0e3829cfa1af58d4f4fb4f0aa25e5df8962b5118dccd773f0475c57897c535f0acfa81f13e83e23d36e05e0fdf451b80a24cf27d7ad74e168aa934a4889548c51de6aa746f124afad68f2218670524d87f8ba64fbe6b074af0ec3e22b5d77c257974d179fa6dc0b57c6771db920fe5c579fe93ac6ade19b88759d11a3b9b49580b98376e89c1c038f43fd6bd634596df5311f8a3c34b2bac11c9e6c4f8cab1420a8fe9f4aeccc294a9d1e5b682c3d75ed558fcce4b1d5135dd4b46b7bfc496d70f16361e8a48ec6b58683e2a810cadaa05007468bfc4d7a0f89748b4f06beafe2cd66cd20bbd4af255b4b761860e5b218f7c63ad79df886ead2d6dedefae3c592de6a33cab24f6c9858e18bb8e3d2bf3dafcf19bb1f7f87aeaa534452e93e2db88887d4e251d08301071f9d7d17fb0efc44d0b43bcd73e16f8bb505b69755b8371632bfca19c9c8049e3935e17e36d5f4ed3f4eb1974dd43ed735d98e42b1be4aa9c00302ac6ada25cda36c10491eaa82392de5886d68f7720e7f5aaa55a49ea2c4455485ac7e956b3e03fb55b0290fcce3f7727255875edeb5e29f137f65df0a78ed7ed31dab68baec2370bb89372499c81dbd6be73f047ed5ff00b41fc37d16555f15c3aedae9ae608e3be8038da0e07cdd7a57a57843fe0a6b35cdb983c77f0deda7d8d9796d1f60fc8f35ec52c473455cf07ea7352d0f2bd7fc23e3df837ab0d37c61a74ed6a58f93a8c685a3906475c74c7f535dcf857c5e93344cb7915cc4c01de879cfa63afe95ec5a7fede9fb30f89ec248fc63e15bb8e300048ae2249d4e739eb8c57977c47f8fdfb135e4be7687e13d76198fccb3e9cc22da7ae31c8eb5862e84710aeb73d0c2d6961f467aa7863578ae2351b647c8ea1081cd68eb76524d6ad72a8151413b73926be61f0ffed6ff0001b45b961069de3331c67e50d7484fe3c63f4af6ef02fc76f017c53d3ee27f066ad2335b44fe669d7410dc498c9c29503f957831caa509f333aea663168f4cf8716767e1af87daedddc5c137fa8c2f32af5da9cf1c5780f89b49bfd4358322cc405fe1607bd769e3df1d3f81349f0c78eadadee27d16ead5ec756b50a58c618637fe07f9579a5f7c4686e6e26b8b2bc82eeca73b926460085ed5db5b05354ee8c70f8a84aa0e3f0aae3c453aa4a80ef386c8e2bd03c3bfb29f81a28e3bfbb8ee0cc3e6611e31f8d62f837e20d9c9324464c63193919af6ab4f1c69e9a5c82d6422530f19e878af16a5e27d1424a56b187a2e87e18f0ccffd9ba5be421c32903231ef5d9db49609f702926be73d43c7b245ac5c1cbace643bb1f77af15d9f87fc537770c85ee33b80cf35c3521ccae775357b23db6ce78c15285720f635b56faa6c600818af2db4d4eea33bd64273ce335b1a7f88cb822447241da3ea7a5634dda6a26788a2f95c99bff13fc77a1f83fc1d73ae6a37022600c70296037c8c0e07bfe15f0a5d6a3797dac5feb37378cb7177299186ee80f4c7e15ea1fb54f88078afc75e0df861692f948049a85d297e85718cd65786be064d7ad77e26d4af9c69b6c492e5805603b735eace8d95cf15565cd639ad106a32c885ae2476272b963f37e55d35c5c6a1676c2536f364704172703d6a4f15789748f07f822c5740b3826bed46e1d1679173e5c41b1f29ad17d7bc291476da85aeb104907d8d7fb41659b71f308e768fad734a8ca7a23d0a18b50dce1f57f146aa00105a0753df7927f9573b3cd717acd25d46c9bba8cd571e38d367d5de3fb61b7b3136dca2ee60b9f7e2bb0d6b427b6b58e78e7695274f362f3630a707a1e2947035774ce9faf53968ce02fb54d034d7f2ef74dbd666e8c3183542db52d1b57d4bc9d2adb501e52177cb8013d0f5aeeacfc310f8854c1a944336e9b99874ebc0f5a97c71e1bd13c0be1eb591628ad753d5f1f221c91083819fe759ca955a7f1132c4426b43deff00651ba117c3af12b3339c2b1396cf502ab78c359d2ec3c1d1e93a9daa5c5acb0991e37ee0927d699f0122fecef875e218edb0b1cb0ab023be4579bfc63d62e6daeed7480e306c94649f515d581a4a4db67cfd79b8d4b986fe22f86d000bff000afb4dc301f31622b4f45f12fc28824567f87ba7963ff4d0d7947f65ea576e15c1201f9703b56845a3dec4e0889b2075c575d6c3d367453ad2b687d19e11d73e18eada824767e06b2b46851a62eac5b18ac0f8a1e29d42f3c9362e16dae2e56de2427a8e0579d7c3f96f2c24d535196e19218e111e3dc93c574773711dfddf8474c76cfdaf500eb9e73822ab0582a7ed11c78ba8f959f70781ac3fb2fc21a5dbb441596d632547a915b45f77180314ff002d6ded6dadd31f2411af1ec05475f5f4e2a11b23e79b6d8633da940c7514abd291b8abe67b123b8340c0f6a45cf6a63372327a9a0b489703ae699b94704d498c707d6a064dcf8cf5ef45c96ac481d4f4a5a6ac2fd997db9c50caebd5c1fa1a043a90b2af53467342a2b70e8c7dc50028f986453c03e948b130edb572704fa551bad7740b1b916d75aed94321ed2ce001f9d269be80dd8d1a323a0aa761abe91a9cad0e97abd95db8fbc229837f2ab840524672476159b8b5b92a576078eb4641a73a82a0e3de99c0eb4d2285a319a29475a407c1ff001b3c5be24f06f8ab55f0fde21b4d45a39633238322490c808ca83d383c57927824690cd1e95a8e8f67713076314fbda3280756382057b0fed851cb2fc679a486f088c59aa3a6063214115c9f84b41f0f359e9978faf3a6a37ac5678a6d822da3183f30fcf9aeaa524868f78f08fc3ef8336bf0aee8dcf8ded17539c34ac89323c91b6380a5812bf81af917c59a5d869ba94d6ba7ebd77728646c33c9f36d24fa0afa42c7f677f096b91cf3e8f7cf7cac84cef657b0288d8f6e791f87a57956b9f06fc25a46be6d5e3d551a2077492cc1d5bdb72ff8d552b4657636edb907c1af017c359f525b8f881e23bd10390d144272a0f3edfe35f4ff0085afff00662f869e261e24b3732cf02816edf6979307e85b1fa57cef63f08be1c9d42d60d6b5a582d2641216fb60c839fba39cf6fad7a8dafc38f805e0cd0f53d6ef1d6fef922cd85badd1df210383d79f7a9aed37a02773dabc4ffb4de8b7f7567a3780ed54cba9ba42248e3e402473c57a7d8dbc91d9c02e0ee9480d2123abf5cd7c51fb376931defc68d3eeef2de58a098492c3033e42ed524707d2bee032b4ec5d8f5ebc77ae4f8592f54d1c5fc52f0d4be25f0bea365685565963c807192ca4303f863f5a8341bd7b9f0969ed34eaef05aadbcac0ff001a0c1fa1e95dacb043e6ab34843b02467a71d4570ba8f8426d3352bed634dbd296576a0bd893c2c833961e99f6aeec2d65ce91e5d7c2a49c8e50ddde3dccc2d230e413c900d59f06e91a94fa85fbea51ec8ef6dde1c118c9238a6e9d195bb63928dbba03c1f7aed25bd8ed96c980071300debc915f4788b2a699f3f28be63cd7e1edcde5de9771a64f6e93430dc342c0804ae0903af23f0aeab49f0c1d3b531aae8b02a3291be22e4ae33cf19e2bc8fc57a86b3f0b3e265fea1a4b996cddfcd9ad49f9581ea79e9c57aaf857e2d7827c5b042e97ab613938d9bb073dff005ae5f6329479a2871928bb367a5da32c88259630ae464afa54d2c0265f91b6e4605721e20b2f1bea1025d7867c53636b163e46781581fafad731783e3758c27ecde28d22e594641fb3a0cfb74ac145bf537f6915b1e8d25bea300c0896551dc7de1cd71be39d22c359d3e59ef34ab69ee633d6e6dc31dbdc67b572f078b3e38412793a84561731ff001189429fd2ba5b0d7757bbd388d5ad960994f287a30ee306b5a6a5097319547ce79e783a2d27c17e269f483649670df9da9246c763313c2804f1cd7b469f71711a181e12045ca923afb579f7c44f0dc57be1ab986da2fde4616fed645ebbd0eeda08ae1ae3e2ff008d2eefa28ede7b5b4b48a1567054066238239e6baa37c4cad6262f93467d077d2efb7dc38c8e7eb59164c535870dc831afe7cd62783fc6d6de21b258ae6e10c871923039c56bc7e62eb51023f76c3ef63d3a52ad4e549d9a2b9d4b429de325878decf2c553518f6b81d1b1c73eb597f14fc270dcd814d9ba19b2acdde36cf073db156fe28a1d260d33c4224012d2e00933c7c87935d70974fd7f4196de442f1ddc45909e473c8ae6555d3d51128df43c33c0d7d79a46a2341d6599ae63c7932b0e244071c7af18af66b2ded00908effe45799c56b1bceda4eab11b7bfd2a426dee31c84cf04fa8e95e81a16ac8245d3750fdc5cb26fc91f24c3d54f4aa75dd556610835b9b5136d60e3b638f6af873f6bcf872de15f1f9f115a868ed75f512864e36c8bd7a74afb9de19a3ced8f2a064127b5799fed09e021e3ff877359c50eebdd3835cc0d8e7b923ff00ad5b60f10f0f5d34678ba5cd0d0f05fd8e3e203da7892e7c313cc04176bbc237f1311cfeb5f5ecfab5b44eb6b209e224e030e9bbd3f3afcc3f0378a351f007c41d375c2fb16d2e3cb9940f7c1cd7ea56857dff00096e9563ad5869f15c585edba4f202a324b2e4e0f51f85679fd274e6a76d19df92d44a1c9d48eea5d41c24567a2cb7521da524503663df8ae27e30788ed7e1b78724d7fc5d7519b8618b5b188ec2f21e80e3a8c6735ea3a7c3aae9cb2b69682387a6cb8906579c63935f1e7eda7a8dcde7c46d26da575bc84db6d8e24f99165247381d70335e2e0e3edaaa47ab899ba54efd4f2ef11fc4ff001ff8ef520af7f35ada4992b6d6b848a319e3240e7f3a934bf0cf89ac09beb1f12df43743e75f2e76209eb8e4d6841a27fc233a298ee4c113ca04a7790a02f7e3a57377df1bbc23e128cc775a9c13119ca44558e7f98afb24b09469a53b1e1d075aacad6135cbbf106af79f67f1beb7a8cc54f59a56298edc0a9e5f01e9c5566b7bd5113c79f9738c9ef826a2d3fe27f803e295a3dae917822be5ff0096537cacc47d6a34b5f105a065b7b9008e444ef8000edc9f4ae8a31c1dee98b111c45376687d9789fc5de05d1e5d134c482f206b813299549c00727bd7b87c25f8dfe19b1d46de5f10dfda686d381f688f6931c981c1e4e07d6be70d7fc5902208f59722504215b76ddd781d3a7bd723a978daef5ff0b8f03e93a422c32dc87f3d544971230e8378e4019e79ef5e5e73570f0a568b37cb69d7ad555d1b5fb4a78c74df891f18752d4745baf3746b5221b6110f90b93d401c738af3a3e05d4ae5a33b260b34815d4a9ced247f8d771a3f82ee7c1cfa6dceb961b1a77dfe475240fe239efcd7b6cd1f84f548fc3d2aeaf6886e75058440140741b723791fed57e5f89c4a72691fa4e1a94e9d3499c4e85f0b7e14683aa4f25d9d97ba44481a195c9690950c028279e4d497897979a278dbc52f0325c5858c370a8eb92a194703d38af4293e1f78f6d35bbb4d5fc2fa55ccf34cd2db6a6eaabb41fba0f63818eb553c63e1bbaf0f781ef7e1ce97a88d77c4de259164d56ea000c56f1a6095dc381c0c75ae053699d5ae88f08f1869f61a6691e14d1f493bed352d1c6a170c792ce4063fa9af3cf11683a03f997b133ac872aaaa4a8f63815f49ea3e0ab4f885f0dfc2fe2df0d5ac56f73a059ff66dd42cdf349181b738cfb7d6bcbeff00e1f6b7731b136f6b15bf2c24931bb8ea00ce4fff005ebd0a35d24448f0f4d26449548792451fc21bee8ee6acea361240563843b5bca819327a9eff00957a4ae8d15a584b71e4a340098ee1c260c7e87e9d6b052dec354b63a65c4c576b37d96651fa71d73ef5e853ae9984e0a4ac711a3e9d65797b359dddaaa3c8856366eeddab5fc0361e20d0b5d8351f0bddbda6bd69769e520254c9c805700e0e47b51aaf8675185825e5bbc12a1c4528e871d0e6bd27f67fd33fe122f8c1e0eb2d5e113f937d1b33a701b69ef8e2b473e7d8f3eb5250573f49fc5df0fe4d4fe10e91aa2f8751aec59abde69eaa36c8193e6e3d6bf38be307c30d7fe1c4efe3ff0000c93ddf85647db79665cb358c84f2a47a03eb5faafa8ea536bda5b9d32f96de54f92dc93908cbd01f4ce31f8d7ce1e2dd0f4bf1a6a57fa5d92c1a378ca1245ee89380b6baa283c950dc124739aeda1cb34a123c7a98874a5789f12782be2959de3aa8758a5418c83f7bdce3a57a7cbf142e67b65b6b5bb657098e09008c5701f18bf6749b4fd72ef52f04c13e93aa005ae7469c6d1b81c93193d41ed835e5be1ef195de877e745f175acd6b2467cb22652aca4753cf6ae2cc7234d73d347b785ce5592933da1bc4f796974f713399439cbe4e6bd1be1f78e2cef1d5a59b69046149ed5e0d77a8d985f3acaf92e21906473d334cf0e6b4cb7616196443bf6f19f5af94ab97d48e891f5586cc69c926d9f75687aa26a7079d6d216c60104f156bc49e2dd23e1c6893f8a7c4b70b1d8c03cc8549c191c0e05787fc39f125a689a65ceb1e21f117d934cb2432c8d249866c73b4679fcab0f4fd0bc5ff00b65f8c12f667b8b0f87fa54a04618151705781e99eb5183cb24eade64e619ac29d2e58b20f85de04f14fed03f11353f8f5af5dcf6ba4413986d6146d8658c7f08cf638e6bbdf8bd378875b5b7f0d681746cac9536bda42c542a2f52e47527be6bdcbe322e8ff0004fe0d687e0ef0be996f6c973288e32000dc0e4e7ae4d7ce16be2f48e7377788a8d1127048c483be73d7f1aeec5c5426a28f1309275539b2bebba55e0f855a3dfdac12dddbe832491dd4b1ae46c2c7dbb579acff000f93c4737f69f865da54ba1b9631210727e9c0fcabd8f49f8c967a337d8f49b3864d31c97b9b07ff00532ee39208355e41f0675bd446a9e1cf105ff82f5794f366bb9a00d9e4a8c63ae6b3a714b566d39496c723e0bfd987c57e24d420fede9ffb3b4f86457772a07c808cf3d7a57a77c62bfd0aeb58b5d13c369becf4ab45b5f3b39f31801fd6aadcddeaeaff00d9177e3c9f51882fcae098d5bdb23ae7dea84da1ea2516df4ab2dc849925ba9f384e39c67ad74b9c52b114e336f431f4388e8d762eae6f04b6607992c6dcee90741f4f6acff155b41e359e4d426386033bc9c8403a000ff4aea2cfc37a5dac6625b979fcf7f982fce4b1f4cf23f0a768b71e1c5d5ef6cdaca491edd0c4f6ec8636538e0fe3eb5e563aa2b1e961a127b9e87f08a27b3f861ad01317c4000206381c0ae13e28782eeb58be835d1134b1c564848c9e060735e85f09a66b9f873e268991956246552cd9c004e07e02adea1ae693a7f87ded2f1a2323d828cbff00ba2ab2d6da3cfc77bb33cf7c3fe09b1fb247318b20a8c06c7715b12f85ac88f2dad1173c03b7ad3ed7528a7d1ed664b955ce09d87b76ad08f56b15904725d6e38e093deb9f1752a46764755149c15cc19bc0083c3b7f159c197b8902951f9f6ae52cac8c3f11fc0da23261eda72483ebb857b5687a9e9b67a3cd793dc47f3cdb72586de9e9d2bc9a7b88eebe3f7851a26528d29618e87e615ec656e5757383196513eee572eaa5ba8007e031430001229db428c11dbbfd290e1b38afa95b23c1dc107c99c72690e38523ad38640c5040ea7b5311134ab123c8d22c68832cedf75474af28f8b1fb43e99f0cb528346b0f036b1e28b8b940fe6d8a12abf9702baaf8c579a8e9ff000bb5eb8d2d809d91115b009c93d6be03f8c9f12fe2c782b59b6d2fc3de30bcb10f63135c32372370e71dc7e15ad287b5691aa3e87d6bf6dad5b4800defc3cb4d2148dc23bfb93bf1efce4573abff00051281e636ede1ef0f6e538255d9bf5dd5f1b5ff0086b5af1ec897b7173757f72e774d35c313bb9e7ad69587c25b0b6f28dd6b2969bcedd88a3793d38c8cd77ac0a3391f624dfb7f580b7cda5a787166c7dd999979fc4d528ff6e6f88f7c33a3f877c1573cf2be7b67ff0042af19f0e7ecaa35c816f757bbbfb1b1201f3e52b96f43823fa569ea1fb11e83a8c2c3c33e2c7b8be65263491942b71c722a7ea918ee4dcf578ff6bff8f17932bd8fc33f0c4c072425db75fc58d75ba17ed59f1a351caea5f05acced1f31b6b823fad7c23adfc1ef899e05d75f41bbb3bbb79a30594f9c42c801c6464e2ab5c78abc7fe075f2eee6bf6128200695d00e79e57ad35848b65a573ec4f8a7fb45fc4c33878a29b425db9fb2120e7f123f95797cbf1a354f104abfdb7e1ad22e98f596543b8faf39ef5e7de19d6ae3c5da3ff6b6a48c195bca05a466c903dcd5936ab172d11e40ff00eb57b343014dc6ece69ceccef6c3c6d2e99791ea5e1edfa45cab063f6594846c738209c1f7af74d1bf6baf155d3dbe8963e0cd3af64f287db2f9a628b1a8c65b19ebf415f2449751404c43e693a8c0efdab0bc4b35cea9a6c71a6a52d9c81b37088db7728ec6b9315818257455257773f40fe137ed57a27c4df88b75f0f974b5824b78b724f1b12aec382bc9c57b98cf99b8fdd2081f507d2bf2c3f654d73fb3be3ae917da6c8b0d9c19864ce30c5b8c9f5afd5575529bc302c46ec8e983cd785569a868754a3618a0f43522e3ae4547907a75ef4b922b95a333e11fda0ef5752f8b9e279658c32db491206ce71c8047eb5e6914ea8e84a6f10380810f233fcabbdf8931b5eebfe22d48e4fdb2fa2894e3921981033f4af31b78ae65d7efb4b883c13a3103777da0b11c7b0aea8455c476ba16b7a3689657b7d7fa2b5edd2ccab1013f96aa0824ee1dfdbf1a75ef8a156d5a6860b5b75b83bc889f711ec6b91b2bfb8d434dbc0a10ac03cc940396041c0271ee6b334fbcbb314b3dc228293045e32002323a7ad6bca81ea7a3daf8e2f2396289ecb4c364a0712420b13819e48f5ad75d7a0b9d266175636d34f6cf9231c84278c7e06bce356bbbd4b182f6385424b2b4273c0e3f4aee22b05ba9ec0237ee759b551bf70c79a1369ce3dc544a29ea0958f49fd9f6c2d749f8cba74d35d1680aba41903077a9c0afb1e48bca668c800827a57c25e0bd5ae34fd522d454b4579e1fba8a3981ebc3601e3ae474afb9ed6e9753b787518cfeeee2249413df22b92a011b808495eac326a9dec6b2c4c1b904722aecdb83918e05559db2a411d2b3a57524c738a9c59c55c69b15b5c828b8cb67f0ad09edd4d932aa86618619f51dea5d4e0ccc1876356215df1e7b62be9a9d5e7a6933e5ebd3e49ec79f7c67f00c7e20b2b7f11400ab940b2b8ea7200e6be75d4fe1cf89342b85beb37902039f323391fa57daeb2db0d3469f76a19251b3e6e833eb9ae5b53f0ad8c2ed1aa7ee9c7dd3ca927f9576e1315eca3cb247955e2dcb43c43c13f1f753f05c51e91e2fb5b99ec49081d50b91efc74af78d1fc4be1cf14e971eafa0df0b885802cb1fcd22e474dbd7f3ae1b57f847a7eaf2192c6ed6dae79daa798cfd78acef0af82fc71f0fb5cfb5269304f6729c4b25b380857d7d7f4a99fb27ef22a937b33d45e58ad40b89ae63439f951b1b8fa7f935977d7f6d7c9295993207418c9a3c55e20f04783ad9355f11472a47778750a8646f71e82b96bcf88de18f12ca90f85e1c4446e6631952452a6f9e5646a777e1d9935cd2bececcac2025718071c107f4af1ef8ebe0bb5d02ca1f11fd9e38ada0902b945e7693d7e82bd13e177eeaeef2d598ed605c64fe38aec7c57e1cd3bc59a25de89aac424b7bb88c4d9eaa08ea3e9514abbc3d7d4d6ac39a1ee9f31f852eed6c5a1d4747bdf3e371bb729e0015effe10d661d76c2290b02e075c739af91fc79f0cfe217ecff7afa8697613ebde140c59becff34b083ce483db15d4fc21f8f7e069750865b8f138b1df8df6f759531f3df15ebe22ad3c542f1dce08f35395a47d4be32f0f8f137856eb4b6037b4476703390322b94f845adcb75a1368d7cc45f69e4db943ea3806ba9d13c73e1bd4e1f2adfc45a6cf14f82a52e57241fc7fa579c6b7672782fe22ff006869aa7ecb7ae1861810c4f5239fe75e07b3973d9a3af9d7436fe2468f3adf59f8d6d40df01f26e113918ee5bdab734e16f7da7c5f3ab07c3a8ebc7a8f4abbab593c76f26a96902de5ade427ed3129ce011c9f4ae53c37a8dbda46628240f0efc2827943e959c1fbd62e326cece25984210cc5950f38eb8ed5148fe6a989e4578c82a73dc1183562d9b7a0914e09ee6abcb66be69941233d456f25cb0e6264db8b47e777ed3bf0eee3c0ff0010ef63851a2b1d55bed16e5470377247e79afad3f620f1d6b5e33f84d178616fb65de90e6091ce198267e53cf3d297f68ff85527c4bf06cf75670aff0068e911f996ec41cc80725460727f2af9abf644f88973f0d7e300d0f542f6d6dab9114f1b606d907041e7d6bbf1556398e0797aa33c0af655ae8fd0ad47e17deebb6aedadf8aafa46ddb5628d8a0eb9ec6be05fda3f584f067c75b6b4d116e6eb48d0b69d41a5cb8524e324f38e6bf4ba4d72dadb45b8d4f0db2dada49c9e3a2ae73d6bf33fc03e25d37e22fed0faee8de275171a778b92e2d13cc5e0483eef3d01001c7bd7cee55195394b9ba1eee3e7ee45231bf681d36f7c4dafe9b7fa46ab1c166f6093c71b328490375fae2bc0752f016ac6e5dedeeec10be4b6c2a727a76afaeb59f833e229fc33af7c3990c37971e1f91ee746d411896f2c03986418ce00e980467bd7ce83c3be272c2294582cabf2485c950ac0907a0af9ecdf1f5a359da5a1f4f9261a8d4a4a4d6a797c9f0d35f86fd2fecf584b69d3ab452633f956e58e93f14652627f128ba41c0492ef8c7e278fa576dff08df8904e8926a3e1f407bb48c3fa574fa4f81bc51744b5bff604eaa72f245239000fa2d717f6ce2211f75b3dc9e5546aeb24705a4f84bc55121dda269b24a32dbcdd81b8f51d6ba8b1f0f7c45fb2ada585968fa72ca725adeea2f333ea4935e83a6780fc5ed7d05bada69789f846e70401927919e95d45bf81bc65697f1c56b6ba05ce402e48385f6ae1af9c56ada499ad2caa8d2d6073be175f8aba35947a6ea5a4e8faedb81b916eee617607d77139c0a87c51e1df8a5e2b3029d3745d2edad1bcc822b3bc887cc3d707d6bd6f43f047c4391ca7f60f8654607cccec0303f45cd6dffc2bff001a401963d03c28588c2fef9cf3ff007c578b531ed48e878576390f0b78fbe32e93a3ff0066f893c1ba6eb68a008a4fed18f7ed1c01f7b9ac4f1a7893e2beb125ac3a0f8274ed1ace27324d1a5d26f9f2724139ef5e9b3fc3df1e8b7ccfa7784a2c0ce5249718f7f93eb5933f81bc6515fc16d7165e1695ae90c91859a4e5467e6fbbed4471bccc9f60923c8fc31ac7c54f0a6b17b710f86ac069f72cdfe842e914460e781934ef1878a3c73abc4dfd97e06b0d367db817335d4648e39039af4ed5be1df8d85c5b5b5c5b786a05b991a28c33ca46e03eef095917df0bfc6782e20f0d384386db33fca7d3ee7ff5ebb69e2d232f6573e70b2f0e7c42d2750b8bef36de48ef47fa4452dd2947fc338aababd8eb135afd960d1f4db4c31cc9148bd4e39af74d5be14f8c1d4dcbc3a3b0233849180e3ea2b8bd5be1d7882250d245a64249c6d2cd9e7b74aec86349746c8f288a0f175b5b35b5ccd6b750631fbc914e2b57e1578ba3f873f157c2baedf69e902c77e8b26d60ca416ebc74ae9357f879e22b2b66b9ba36621db926362723f2af0ef17b5c5edfca2698a180e23d9c1c8e86be872d5eddea78998c9422ec7eb8e97e2216b3c96b7b208ad758c169339116e190d9edcd727f11fc3fe13f885723c17e2cbe1a4f89f4f024d2353cf95f680391890e3391ef5e09fb347c62ff008593e024f076a92b2ebfa4c4202246199e31c6e073c9c57b4dadef86be23e9cde01f1a4cb6f711a95d3752562af038ed9afa1fa97b3b491f25526e4ce1755bfd4b4cb71e1bf8c7a1c9acd9db36c8352b738bab74ecc48f988efd48af3ff1e7c04d2fc67a24dab7848d9f8bf482096f2c017f6a31fc4bd4fb7e35dc6b577e34f015f2782be255bbea9a6a9f2f4fd55973b90f425bfc6aab786751f0fdda78a3c257f2c0cfcb4f6d968c63a06519fe5eb5db4e8f3c7738a5369e87c35e27f85bacf872f9ed343d4ae9210c4f917198e44c1e8738aa3a2c1e398af96d6dd1e4901c2fcd9049e99afd06bed7fc39e2d8d07c42f0b68baac838fb6c132c521ff791b0dfa56d7853c1bfb3e5a8fed34f06cd3306cec8dd5f047d0d7356c251a51e691d7471b562ac99e15f053f660d7fe23b5adefc48d42e2fa052aeba75a64a75fe220fe79afb97c23a07853c1b0da7817c3105a3de850bf66b600c500ff6d8700fd6b3745d2bc6de2b8a2d37c2fa78f0cf878a6d3200a8e53eb9f4f6aecbc35a67863c02c345f0c33df5c3869afef31b9b8e4fcc48efe95e157e482728a3d3c2d5ab59da4cf96ff6cdbabcbcf1a68be1a40cc9656eeee031c2b9efc57cfc34591b6c3733ce98ce42a16c66bdcfe24695e3ef89ff0010755f10f84353d15a1b794c0b0dcc85650a0f270473f866b0edbe12fc70b894cbe67868c647de79480473eab9af85cc7314aad91f7b9761d2a3a9e3f2f876d1242a935eed1dfecc4f35245e0fd16f4eebfd4f514dbf758da3657f1c715ed165fb3f7c72be85f53957c39676ca33e71b92178fc3fa573cdf0e7e31b6a69a647ad7872f5a424205958838f70bfceb18e22a4d5d1d708d293b1cd6882e3475166de20bebcb53f752e2dd8803ea4715a373e23924b70b6d24b218cf31b4c40007f3aea2d3e0e7c687b9f36e359f0c416f0e7cd26e5898cf62415ce338acdf19fc37f893e176b49b50f14e8325c5ebed892dc16564f5e9c538ce6deacde1ec93b2384bcf12de3cd1bafdaeda5864122ecc8191df35b09e3ed4f57bc56bfb54470a14cc4e1a4e3f8ab33c49e1bf88100325fdf69b716ea46e31b9057f4aa9e1ff000c78b759bc4860d574b4887f789fc074a8acf996a68d4627bcfc15d4c5df82bc5f61115f3111988073c1e6b88f8bcd72f67a05d41232c77164b1be3bb01c9aecfe05691a969d3eb9a4eac62df3da364460f61c75eb5ca7c468ae5bc37a299936a472bc6871e84e2bbb287ab3e73305799c3693e22361691db16e1576eecf7ad56f144b2442459bbed1cf35c35f594c1b6152851b241cf3424f3c7b170703a83d7f5af5ead18bd5a26357961647aa5e6b32bfc368e4123095eff0b839cf15078651e4f8c3e0691c658e0b1ff810ab034f8ffe15ce8a4105a7b8918f3c64015674085a2f8bfe078ca9ec32077cd75616118ec70d795e373ef5b8c090a8f41fc8544aa453e507cd24f6e3f4a0b05eb5ec46f6479371318a43ca9a7f07918e690ae79e381cd5b12777639ff19d98d57c357fa3ae0bdc5bbb4408e0ba8c8fd6bf317c4ba578dfc77e339ecfc4911b38f4e9a48249d870510e07e95fa6fe27bb6d2ee74ebd9c85b62eeb2b9230b91815f04fed13e29b3f0ef89357d37439639efb5699c2f9786010f43c576e022b9cddc5f2e878d78bbc7b71a35b3f86bc2504773e4131f9d0904b37e1553e03e81a978afe2059dd7892ee4952ca4f39a2949e4ae78e6b73e17fc17d6e5bcfed2d73792dbde3c1cfcc7a6735e91e03f05de7822f9f5b92e60b968ae3cc9153264284fcd8e30703b67b57b3cc968c88e1ab4973247a95d5ddecde03d54bc7e6abb3839c930463380a7e95ccfc1cd53569fe1dea1776d7e5574dbd5782494fce46ee573f4aefb49beb86d0f57d2f47822beb4d4a090dac839dcc41f949ec7ebdeb8a45d5ac7c1b69e145d1df449229bed17f34c9b637419380ddce7a56151a7a9838ca2c7fed417b7973e09d0be23d9c4b24b62c22ba5ce0b860315f28cbf1327bebc9a69f488268490ab149838e39c66bea5f89891f89fe161d23503244daa5c22d847b72cf1479cbe074193c74af9e6cfe0cc36b7e2322f94b1c06fb3e5411dea6138dec8eb5467cbcc763e12bfb2d77c2ab36956bf6748663e685c0c1e3238352eb125b0b1370589289cab1e78ef5b7f0f7c130683e17d4ede5ba495d2f39182bbb207ad6f7c3bf0a685e31f1fc3a16b105db5a88cb3476f9727ae01c0c0fcebda8d5f674ee79f5ad1763cb2c22b49d12f20e727a9e79ae5fc69e03d6e4b8fed2b29644b59fe693fc2bbdf10c71e91e2cd4f448ec5ad2d6d6e1e28958fcc003804fa563ebbe2ad7b478d614b0fb4da9c29239c7a1e715cf5e4aa46e8db0dabba32be1cdab784215d655c8962bcb70ac7afdf19afd67f0ddf2ea1a1699779cfdb2c61941f7d833fad7e415ef8b2fb5a68f4e82cfca559d2473d3807dbdebf57be0f5ff00f687c33f0bdc3a92c2c12339f6af9cc5ad743aea74b1d988c86cfe14bb3da9f4579adea60cf8dfc6da12dd785fc49a8d83c5349a5eb36076e79cae01fccd798f89b467d07e32d9dee5045a8c715c3214f93e6054a839f53cd7afcb6d6379aafc49f0fc703db3f9cd3ef04b2e629d7071f415cdf8c7459af2dbc2fae4d689732e9e65b79a36072c554b2648f500e3e95d14e71b08e52d7c1367e17f196af63abac5e55d911ee5236791383b5b93d9907e26b92f0c7824c1e2bd67e1eea37df669aecb0b595c8cb381988e7a60a9e3e95f50eb7f0c34df16f853c3fe329ecc28b48bc9d42d803be581981539f5520fe66b93f8dbf0a268f4ad2bc7fa0456c6e74f01641131f34c0bcc6cc3d87069ba8901e67e18d02d7c53e15bbf873aad8c361ade9ef320b895c8cce338cf6e463073527c1ab57f1768bab7c3bf120b8d33c43a1bb3d9c6a9966753f773db38ff000aec750b583c59a3e9df14b46b6205e2a586bdf671feaae13859c0f5db8cf6e2ba8f88ff000be2d26e6c3e307c336bad42eed442dad423896ea3c0ccca071d3ae074a975101c95ce9d2da7d8fc60960eaae0596b16eeca36bf4128c1ce33ed5f52fc1ff1236b7e0f8209a532dc58301b7aee8ba03c7a554f05783fe1778e3485f16e856c976babc656f2196525622c3e6000e847bd73a3c3faf7c0df1023dadbdd5e7856f5f6a4e872d083d237e3a67bfd2b09493607aeb482691a43855e9d474a8a740461483c76aa763afe8fab4e2182ea0b69a55de90c872587723d73fd2b4258f83b62da0756c633424b70326ead05c2305601bb66ac269f1456e37dc44a768fbce01ce2a492dcb67819c645655ee93677aa4dd69e59c74759d8107d71d2bae962d5356382b609d495ccdf16dfe34bbe86d678229edadda68dddf00b01c5713e02f8cba07892cd74ff00125fc7637d17caed203b64238e0f4ae8f57f0ec17103c5e4f9ca0e087273b7d38af39f11f84ac648de236768157eea247b5f3f5cd6d1c7c526732ca79dea7ac37d82e11aef4ed52de444c0cc53264e7a7f15559fce891945cdcb29c1dbb971cfd0d7cd5e26f0bdc58e99accda7de5d59bc50c4632972df2924f6e95f3bdd7c4df8bfa06af710e99e3bbc0b0b602c8378e003d4d72c33ba729729d12c85c55e27e8fc16967aeda3691aad809e263c1923c95fa64579a6b5e0ebbf0beb3b74cb47168ef9dcb1e31fa57c6a9fb59fed1da423436be24b638e8cf6c19bebd6a1d3ff006c4fda125d560b8d5b59b2bf8633b9edfecc14b81c91c1f4af4f0b9953bf33399e4f556a7df1e10d40dbeb36f2a4a042e7cb639ee78fe75eb2db8fddf4cd7ccbf087e2e7857e2ce8f67ade9db60d4ad645fb659a1e55b383c7d6be96172a115d7eeed071e9c56d5aaaab2e689c0e8ca94ad23375cd3dee2d24d914726fc79b048331b8fc6be34fda9ff674d374eb63f13fc19a6aaa96ff008985a46bb421ea48c76afb6fcf8e73b7b91dcd65eb5a1db6ad6571a75ddbc7358dfc2d0ca8c32013d0d6986ab2a135267357a3ed17323f30741ba8d4a3c37d731aae0af973b6e07b71d2bd47c33e37d6f4d91669bc4d7374a846c5bacb6d1e839ae03e20781f53f865f12f54f0e5d71179ad25b123831b72a39f6a9232b2154b862d8008c715f7146961b170528ad4f1dce74a5667d8df09bf681d32dada3d23c5f10104cc009d5cb633ea3d3f1aed7c43e11b4d5643e25f877a941768e37c96e920231ea07ad7c2d67ac5c58b2a4570a22c81b645ce7fc2bb9f0dfc48d6744bb8ae340bd368e846f5595b631ff7738af271d90b527568b37a78b4b43eaff0af8bee0ea0ba2eaf0793320c00dc1cff005aed251b4e1ba9af1ef0cfc45d07e25dbc169a9449a6f892dd079770a70b271c7e67f9d7a6e8375797566ba75f022f6df891d8f0c3a0ed5e0494a1784d1df4df32b9aa9b9b642aaacaa771cf3907a8af873f6b7f85379f0e7c670fc4bf0c42bfd9d7b72b71232ae3c991482c0fb135f70be6265d8c09e84fbd61f8ff00c15a57c44f09dff86f5611ba5d44c88ac3255b1818f4cd1424a93d0d1d2bae64ce13c3bf17359f14fc18bf9ac258a5ba6d124f941c9ff547a67ae6be2cf815e34d274bf11c0be2d8bece915e975bd8c7cf0ca1b2327ae3b1fad7aefc18d52e7c077f79e07f11f991c56377269ceefde36255739f6af05f15f87a2f08f8ff00c4be1cba5c5adccbe6c0ea3f849c823dc7f8d7b385c052aea5ecf7670d6c5cd7c47e91ea1e074f1045a77c4ff01deafdb1420b8890ef4bc84fde27a0071f5af8a3f688f07a7843e29ea515ca4d6d63a8b2df4617e540187cca3e87dabd53f64afda6edbc0f15bfc3df1a499b1998ada5d3b648cf00367815dd7edebe07b6f13f81348f895a2ac730d3976cad10e5e36e474afcdf3fcb2a50aad33ed387b33528d8f94f4ab1f0a35ba09ad60756e4162493fad6fc1a29d2a2fedaf034856e420925b595b114ca7ae319c6474af21b3d5125681a170d12fddc673ee3afad771e0fbabeb19ee2e2d2fdd92524881d81033c803fcf6af9c749a8d8fba55b995cf73f04eb0ba93e95a93c45018e58a457395865652a3b74cd5087c49f10bc31a85ce843c0f737f72ecef1dd41b4c6c9d41c9ac2f066a92c3208a2947920f992a8e7e63db9e9cfbd7a0df7c418f44d38d9eb2d708d38dc86dfe6911075fa573d3a4aeee66ea4af73d17c39a9eaa7c276fa96a1a5343791c4ccf0b11819c673835d469024d56c52f16d82cc6304051c66bcff00c1daf41e2bd2b7e91a8c573608a15c871e7063d997bd7aae8b3416762969190bf27cee7828b8e71fa75cd79d5f0f172e61bad3d9b39cd46d7c50d1cd6b1c7161d49dbb7248cff85538343b73a926a576d0996d6148edde3ce15140cafe26ba8b9d481d3a7bad3ec26b916bf34ccadf330f51c71595a7b58cd650dde9d1fee265ddb58e4a93d41f4c5635611846e870a8fa987e26d221d4ede5b3bcbb952291d678ae21037c320e430ee79ebd2b83d59b59d35deeef8dc4514c429bab6f9a2720ff00cb48f1b97dc826bd37529ad96e23caab063fc3fc24f03eb5817be20b34b896d6785c84523cc45560a71d083c11f866b4c247da2bb1d49b479a6a7ab3168e0bd550ce0f9735bcde65b49e803f186c75040eb5c4ea9e21597569f489ed019232a633bf1e6023a8edc575de2cb08f48dd7d6e223a35c92b736910c2c329c95953d09e7773e95e5fad88afb2ef6e24500ac6cac5648d87524e79c8c7e55ebd1c3f3b4912aabe4d4c2f1c78fb50d3b4cbfd3ae34496d43a3470bbb82181ee300d7cc9a9de5ddd5e9170aa1492772fbd7aa7c4ff00105edd3c5a64570d2db5aa6d2cdcb67a9e6bcb6e90c8c08fcebed72cc2fb18a67cce2e4a72b13f86b5fd57c1dad41ac6837ef15d5a38657562038079071ea2bebff08fc45d2fe2df86e3d4b456fb26b368a0dfdaeefde338fe34f6fd79af8c4c4c3a0f7cd6a78775fd7fc29ac45ad7873506b1bb8470e06518770c3a1af7a9564a494f63cbad87baf74fd0af0a7c59d22f74e5f02fc5bb55bfd39c04b7bcc13240dd39ee2a9eb3f0b7c7be1376f10fc18f17c3ade973b194d9390ea075c62bc3bc13f1b7c1fe358e2b6f14451e9baf95d8d232ff00a3dc9f5ff64e7d2bd4f434d6749b71a8f86ef350b542727ec72ef898f738eddabaa7494f5833c8a949c7465687e319b5bf365e3df814d3dc4676cb3dadb3f2d9e48ed5ebfe04f8bbe1abc74d3bc1df03eee1b86c143716ce1379e84e7dfad53f077c49f1544ca351b0d36ef23ef5cc4039faf15e9f67f16358b7545b6d134b8598e0cb181f2e7bfe15e7e230f5251b0a168bd4bf63a6fc65f18cab1ebaf69a0e9abd23849031e9f953fc79ade91e05f09dc687e1cc5d5f4ea52599720b1c7201f7fad3efbc49e25d52ccde6b5a82da58a02cd3b308e3da3afe95e51ab6bfa47c4090bf87752177a5d848634914906694719c8eb835f259ad496169be63e87298aab511cedd3e9f1687a4f8874fb578359fb414963031943f78bfad7a2e9d3595ccb0593b9134a8b22a371c1c671ffd7ac1d33c1524ba85ab4b7df693b80f2c0c0c9ed8ad4f8856cda478bb44b896c8db43b3ecfbc1c7cc71dabf3aacbdbd4e63ee39dd2872c4eb3c7163fdbb77a778663d59f4fd261b2fb4dd792706403a8e95e65e08d06d3fe127b8d62c2cefa2d26d818e092571f31e9bbee826bb7d4af3cc9a2b777769121368d222e320e48ebd7ad70fab6beba61820d2ae7524bbd350c735a3a0f29c2f561dfa577d16946c73616a38c9b9157c49a7f8cacb5ddfa6e8adaac324bf2f9570104a3b2b820f1ebcd733e29b7f1b43ad7f6c78cb4fb7b58d136c16b1cc0ac631d01db9e9ed5f46fc2e8f4ed53c3dff000965e5b4b1c93e40466c018eb815f397c6ef1241ad7896e2c52696248d8850181ef8adb45a9bd09f3d6ba3324f0c5af89b499f56b0d43ec5183b5dee71b646ebb5303fa570d75e1d1a6c9e609e5b7914e44cabf2b30e87838af5bf046b1a469da25b68be28d3cdd436ead716ee000379180181ff001af35f177886e26d622d25b0b1cd707081400158e40e33fceb295a47a2e573d3be0fdf5edd6a770d7b24772e6c4a8963e37607d73581f102cd350f02694b20c3c578f838c630c6b7be17f873fe11df1a5bdb2349e55edb36037af3c557f883a7b8f0632dac6ce62be7046795f98d7765fee48f0f1eaf23c1f57b0d424bf6fb6c4368c84318fcaa94ba5b5cb2accf8d80e0a8ebc77af45d46dd2f16da4582589847b4bb28dacc0561cfa56e621783df8e0d7ad3a87241687426c25b6f87fa122b1602595867f0ad5d080ff8599e0476c6439c9f7c8e2a7d422fb2f823c3d1643076901c7fc06934187cdf893e169546045280b9f5c8aecc36a9330ac9729f6e487f7ae3dea17049c1a9e41890838c90338e958be2df13e8fe0dd12e35dd6ee4450c03d40cfe75ecd18dcf1de8d9a8bcf5a9554b9d8072c71cfbd79ef87fe387c39d66ccdca6b688c08c824639fa9aeef4fd4adb52b78f51d3e659a1971b18118ade54dc756427aa39bf88da25d7883c33a978710321bbb77549948cc6e0641f6cd7e7cdb7c2fb8f0b7892ff0055f152c97b796eed1c3e77cc703a3706bf47bc41e24d3749ba834abc03cebe8a4743dc6d033fcebe65f13f86ff00b6354d52fd2dfcc5d923c6723a8adb0b2b4f43e8f034a138a7238ef02e9ce2c26bcb9858c97abba241d235f5aacda58b0b799cb371265941c75ef923f3aedfe1fe937da878774f9ae2dd8b9478be45c7462076ed5c1fc41d6a2d17ed7e1cb589e5d499c820bfca83df1ed5e9b7ceec7b9531186c3d069a394d120bcd57c78fa47837c7b2787a59f3b9880f6ef3f650848c73eff85747f0efc3be34f883e29d6bc19f13f58b97f1469244d656b29f2ed2f2252082300e73f535e1ba9dcff62eb10ea5a6c61af124df226f27730e70a077cf4af7ff00869f1c2d5b51d3f51f1e787c7daed76f937921686e231e85b18618acaaa696a7c254af1a951c96c59f19596a463dda8411c37560fe58840e2151c10991d2bccfc49ac6a5a3eb3657203fd9248cb101b0370f6c57d65f153c2c9e28b2b7f885e11b68750b3d42dca5c2c4db8a30191d3f5e2be74f1f6930af825af6eec916e6ce52877020a826b9a8cd296a7b6ead2fabd96e607827c4dff09168daec375b1992f40550bb4e081ce6bd2ff67717d65e2dbd934fb69109898b4a0e24f972718c1fd0d7927c34d3628acf549c3c12c72dc29055f183819cf15ef1f03a69ecbc45a8ea3631c735e0b7db6f6d25cac6ae4e475db9af7ab492a47ca554dcaf73e5af8b9abea1ff0009b6b17d796ed6f2dc5eb3b293920027af1deb661d2a1d73c316777e6810dc29f31b1d08e9efd6b1ff006805d457c67a93ea7662dae5ee64df187dc01c9ef8fe95d8782f4c96e7e18e9f2a82089081c7b1ac25a514cf472f4e6ec79f5af87ed6d2e4dbc7131b89384040e467f2afd2ff00803bdbe11787c4c7124311461e8476af02f855f08bc0de2ef8437d7d7e857c45219a4b59320b008b9c018cf39af71fd9be4993e13e9d6b76a5a586e26859b07f85b19af9cc44f9a4cecad1b6e7a800594950481d70334ddc4750deb5c6f8ff00e25697e18b382d34abd075196e76488c32028ea7d7a574ba3ebd69aa5a477716a305cc6ea1832a951c8e95cad5ce46798da780ecb48f883ac5b4ee5ee35fb4bd555ff68e48faf4ac2b6f86b7fab7853508e09775cb235e4687f82581978fc559857a7ebba65feaff0011adfc42f711c56b6370862da811b69e0838f6eb5d869de1ed3746f137909346bf6edd347d029c8f987a1e2b9ef61d8cff00044da06b3f0e2c754d3ad951c41e44d1e3eeb8fbc083df3d3eb591ae7c3fd27519e2d6228eee546436f716ae0088a11c9e0735bdff0008b4be09d46f2cf4d558f47d51bccc2a8db14d93c803a039e6b72e278b46d0ff00e26576b19fbe36f1c7627dbeb4733b058f93b49f0a9fd9dfe244fa46a568f73e05f184a72ecb94b395fa8f6c57d23e0b4d3f4bbf97c39ac45626611797633a2ec59e03f74673cf181577c4167a078d3c272e8faf68a9756928dea912025bfda5c7439f4e6bcaae348bbd2d22f03f8c6ee4d4b4b0e468dab5a9c5c59b7555761c9c524dcb44163a8d2be1d4df0b7c5773a9f846453a36ab234b7d60d92909e4968c0e9ed5ded8f8934cd72ce7b1d4edaddad641c3c87723a7a364f07d30474af9dc7c64bad0f517f0cf8c64d46ee1b0738bcb7631dda11ff3d547de4f5e318ab17df113564d2aef5cb19b46f18e8576b89ac74c45f36d90f56da39561df00557b293158f51d63e0af8735f89ffb035dbbb587ef46f6f26e7b793b1463c81ed922b86697e2d7c35d52d343d7a683c41a64c1f75d313e73a03c1273d40f4c75af305f881aafc379ecf5fd12e7524d2354566b63323192161f791b77a646323bd74d6bfb50aea10ab6a969a4dcb42acb3cb2a2ab953fde27a71e95aaa728ad4763d7b44f13e8de2580dde8b72b2c717eea404e595c7047e07f955f980da48e07e55e6ff077c736be35b5d55b4df0e69ba669f6d29305d5a004cec7ae4f7e7f957a286063f24ccad270719c6452e504ec50b98c7cc02f5eb8ae5b56d252e0b798400dc015d9cb6ecc32073542e2c439c48b914aa46d4dd8d14acd1e4be25f0b452e95af46a54b6c83031ee6be2ed7b4466f136a10c306184cc0e79e001935fa13a8e91121d6a375232b0719ea0ee35f1ceafa446be3ed4e48d70a27940fc857c8504e35e4cf62124e28f10d474b78dcca63caee229fe15f0ac57fe28b775c8448a491f038c0526bbbbad0cccb2295192ec707eb5a9f0ffc3cb26a1aa4d1427759e9b34afc74014e0fe95e82c54e2d245282678d7867c4fe23f855e2c83c5de0cbd36d7704fbfca7f9a2b900e4a38e8723f5afd2df80bf1f7c3df1ebc391ded8f936be208142df69fb828723ab01ec7f957e70eafa1aed82678c2e49721871cd63689aa78a3c15afa78cfc0babdc69baada3e4490487c99541e55c77c8f5afa2c262db8a6cf1b1b97aab768fd8496d9e37daaaaa47247a7b523c8f1a0008073dabe5efd9f7f6e5f06fc488e2f0d7c516b6f0ff008913114734cc520b938e4e738ce7dfbd7d416e12fed85dd8491dcdbb8cacd01dc8463820f4af5a8e2154566cf9bab849d27cb63e6efdb53e1dcbaf7856dbc79a4419d474723cf651cb46391f9035f2d6872a5ce9b15cee0cd20049f7c722bf49b5eb3b1d7344bbd12e608de2ba85e290119e48c0afcdff001068973f0f7c55a9f85351468d20b876838ce50938f6e95f5b9156949f21f339941c1b761658464918ebd2abb5e2c048e4104608a8df5385b223624f4e41ac7d42e989f735f6118a6accf0bdadba9e85e1bf19490ba45e76d643b9641d57d0d7d31f0bfe37b48b6da47891d274930a9761406f60d8af86a1d4a7b3944eac78238af40f0378a12499bed170ec1c8ca0623f1af0f30cad544e5147ab86c75924d9fa368d15ca89a1dbe5b8caede9cd21210921c0662303dc74af03f84ff142f6c254d0354d44358dc002ce79893e59ec849e95ecb75a879e8b0cc845c44a089623856c723a75af8dab427427667b387abed23a9e21f1dbc23041f1064bd16823b7d72c8bb30e099d071fad7cdbf1ff004f9df4ad1bc63a74282e74f736f70d20ddf291d4ff009ef5f707c4fd153c5be108b57b781a5bfd2a55954a9c3051f7bf4af0af19784f49f12787f59d02dedd40bcb532211c9571c9c7a57bb95d751834b73cfc5535177386f859f03acff688f03a7887c37771e91aa69594981cf9523e321b8e9d2be92f825e12f899acfc3fd6fe157c414b1d534d489e3b4ba88e594804007273c76af9ff00f609f18cbe11f889a8780750b8063bcdd1ec73f2b1538e41f515f6e5ff00c299344d667f15f827529ad279f124962ae7c97c1c9f9738fd3bd7c8e7f5273a8fda1f4392d250b347e4af8afc3f79f0ff00c6bad784eec9536172ca011838278abba06bacf2298e5dac0e335ee3fb7d781e6d23e2369be2d5d3d2d935fb54f32344da0c8382c71df8e7bd7cc5677421bcde882301bee81815f1f385cfd070726e3667b3e8fabc16d6f22480bb4c3efa3953cfe35e89e1ff008991f861d23b8f055eea111405ae6ddf7b2a8ea086cd783e9d7d6973106919b728ec78af41f0e6a9ab5ac30dd69c4bc64859083b9957bf15cd3a763ad9ed725c691ad40bf10bc016e74ad42c0896e6c7c9f28cb0ff00cb4ca8e09e9dbd6bd4343d663d774fb7d512402d2ed0cf16d6c32903e607bf5af33f0d78d74db6b7b2b2d4d0197537f2a378e3e4a846c86007ae3ad755e0896d6c7446b758170d732a025705632e738c8e99af33150e51347adf81de59a6786d255961b98c8718f4e315c5c21f44f1c6a1a649bd74dd513ed3142bd2298fde03d39aa715b5ec2126d37c72da23e9979b992071b6ee23fc27b74eb4ed77c55a2d8ea0faeea3afc3631b0fdcf99f31627a9fceb8f939a361c3495cb97d6b1b8b8bc788235ba10aa074007535c15bcf1dd4d2c618798e0c847a8f5adab8f18f87b528aeb4e87c5762d3ddc0d136d90a4aa4823206722bce22d36fbc137d6d34babdc6a0a8cff3bb12ccb8240f5aeac3d3e489755f332d6af7369a8e81ac5ba49c45191b48ff009680fcbfa66bc9b59bf6d034f5d39e04663199e5940e790302bd064d460786e3ca89f75fcfbd95f240c6718af24f1deaf6f6d16ab14929dc4ec507d71eb5eb6022dd44615df2536cf10f146aaf7f7f3c923e4339da3f1e2b9a95be6c11d6b56fa08da4ceec96c9e6abad9ac80302339c735f734d72c133e6aa7bd2b94e350c7eed3c4609e0715d9c1f0e7c5171e1393c5f69616d7b601b131b720b403d481d2b063d3254452a85c37e629f3a7d42da58cb6b40f82ca303f0e7f0e95d4f85fe257c40f043c67c2fe2bd42d9548fdc30f3a2603b6181fd3d6b3869eca482691edb6a9182723a62ad62a70d1194b0d09bbb3ddf48fdb17c61059471788fc01e1cd46e5700cc61f299bd09da456b1fdbabc456316cd1be14f8792700e1fcc760a7b705abe6f4b504e5e0079eeb53c76b0a9dc902ae73d14035aac44a4b539a78485ceb7e287ed05f187e2adb3d8788b5c36da74adc59da0f2d1413d38eb5f64fc1bf0843a6fc1fd0a0d1f4cbb9af4422ea6b976912341dce03735f07c88bb170a382b83d0738afd0cf022ea77bf0f34568216748ecd2322098838efd2be333e9f3c6ccf672ca11a724d1de682b35e592eafa75b4b753403255010491d71deb80f893e2df11f88355d3e4d63e1feaf696f65264ddbb103823a0ef5d75b78565d6ad2de35bfbeb564f94c6b2302d9fa75aa5e2ef0b5c7862e21b53a95c5ca491ef66772c631d3ea2be2e34f43e8eb7bcd236e4b9d17c63a2c17b6333958d003862ae8e0632715169b04da241a96bfe23b7b4b88a0b7f2229070ec48c0ef57fc35a468fa6e9eb25a04964997799028f9b354fe214335cf82356d3602cd3aa2cc1437240fe757056667285a2ec771addfc3a37c268afac2d044bf652e815b1b72bce6be305b74d42fa6d62eed2598bca4b480f039afaa75ebc5d5be03dbdca30cc56c237278e8307f2af9fbc39a478886992dce85a3deea76d921d5173181dfa0ade6b42b08d53b937f6036bb6929bd6cdbac3ba1dac54e07d082715cac5a069d0c4baceb3296364f9b2b419f32e1c74c9cf4e2baa893e24ddc8925de85a85ae97651b01bd36c71a9ebc91cd71fe35f1a6a5676c63bab67bab441fba5f28165fff0059e78ace11bb3b54aef43d33c2de30b0b8f14683038437b10cdc224b911ee3c2e3b605697c4cb6fb2e89e208ec1c7ee6ecc8d91d98e6bcafe1978175db5d08fc4bd481b6325da0b68119b0c848e4826bd6fe23bb8b0f15c76d12b07823949faa826baf0ced52c8f3318da95cf3db72afe16d2a730310921467001c9fcab3ae6ce39a6c8520107a802ac59ddb5d78090a12be45d01b470324febd6abc73264166e839e6bd29dee73c6cd1d0eada7c6be0ed0b61f99669393cfa551d0d76fc43f0de7a8b919fcc56b6a93ab781f44caf0d3c8037e55cee8b7062f1de80fbf71174a013f515ea60d5e299c55b44d1f724a3f79cf180335f34fedbafa82f84b4f484ccb6664fdfb27a67bd7d287736d72392a09ac2f1bf83b48f881e1fb8f0a6b76aaf0dca90b2100f96c7a119e86bd9a0ecd23c79fc47e62bc577122c26e6458e640c863623b77c57d8dfb14f8faf35fd0750f0c6a1334a6c3fd5b373debe6af12fc3abaf0df8b359f0b58896eadb4f775f3812db00e9f415f60feca5e0bf0bf807e1b3f892e1a1826bce659e571d075e4f4af4712bdc56449b3f15500f1df86a33290cf6771f7477f96b9d8ac742f0969971ae789af3ecd03efdbe7360c99cf016b1be387c63f07ddea567a9f86b7ddea9601e18658dbf7593f4e3ad780ebdaef88fc5f29d4bc5b7d25f5dc04b449b8886dd7a8f97a13f856981c1c9fbf23658aa908da0cecb5cf8efab43a41f0c78361874dd29656637822dd2c9b98e4027a7e15e5baae8b7fa9f88a5d274d8750bebabf6593cb490bbcccdce4b0e40cd6e783bc13e25f88daa8d2f4642c9237efae91311c4bdfdabebaf87bf0e347f84f651358e9b6b73a918ff007b7d2e1a56c0e48cf4fc2ba6af2505786e653ad5aae923cd7e0b7ecb761a5cd0f89bc71a709efc0dc968a80a447b6722bdafc43f0ffc21e2fb07d23c51e12b39ad910ac60c210a6780411d6a59bc53abc7b71616cccc339619c8359d73e3ad66062ab6d65904055f2c115c13acea6e6718d96a79769fe19f883fb36dc5d6abe123ff00091f836625e6b0705e4b51d828f4c7f2adad2bc6ff0001be3468575a75de970e9f7ba96619eddfe59637ee769f7f6aea7c43e2bd4352b17d23cc8ed649807334118deb839f4e9eb5e29f137e1d7807c52e9e20b091741f13da4793a858bf96b72547560bc67d6b9d45f317edda5ca70b79f0b74ff84926b5e1ad37504bbb396efcf84c809654600819cfb56dfc36b0d5b54d610e83e19d335796d304c376ed19541d0ab86073f8d709e1ad5357f106937e9ab6a51dedd4574611348e72eab8192dfe26bd07e0d6942fb5dd4ddad209ce9b6fe704307988580cfde5e7f5cd7bf36feaeae72cd5f53c8be34f865af752bdbabcb478ef05d30921259c21c9e013e9daba9f0dc2740f0269514b66248e447c8e7393c533c43af5e7882ff5096f6dade14699f082365080138fbdcd7bf7c30f0af8ef51f867a75f685a4687a944cac5629edc3371e84f3d2b9f1d271a3148f4f2aad1a12e691e15f0c7e250f0efc45d274e96f7658ac171e72608dbb800057d69f09b535b3f861a8ea7a4dd2848ae6ea58640a0e72723ebcd79ff00883e093df68d77f103c51e0d82defaca2654b4b5b45457f53f28e7f1af4af820f6517c3bb58534d8f4f85ddc4d6d3a05182707823d2bc093e63a6b565564da3e1ef1e7c5bf1a5ff8bbed92ea50a3dacce4b2c4a0e3711dc73d2bdf3f66ff00887e25f89babff0064dbeada80b5d3947da7fd15163671d71c7a8aeffc45fb2dfc1af1a78adefacac6375019ee4c4ea1558f6fcebb1f849e00f09fc3fd024d37c276f1c27cd732c91e37311d0123935073c9598e8ff682f85d73a635c4aa43baa951e5976e3a1254735d67867c65a478dacdee2da07582084c905d342ca030232149eb8ef8af9a7e177c3ef86fe1dd73fb520d4356304680456e5565561d8a82dd3f5f6af7892ebe1c78a8abdcf8aa5d16e208ca25adcb7d955b1d1b07afe19ac2514901dc58f89ec354d2881a84324b139493ce0176afae0f5e959daec91cd696f7167a846d6e03892f44eaaa318f900cf26b9df0f587c31bf92e5adf579b5c9624f2640a8e8a09ebc9183d38c1fcb8cf3573f047e12dddf4d7c1f5db67f30c8238b50568fdc7964e7ad656b81b9e155b4867fb3586ad042ad3b1f2679829932725a3278fff00551e2ef8756fadda3dbe9b7f6a93b12caa2e0b12c7a1e38eb5c8b6abf05349997476d03c5772f6cdb361883e4e727183c7eb5da689f133c15a348d65a0784b5bf307456b5f9b18e3ef371fcaae1171607867ed13e07d5fc3e342b9d3e3b9fb75b5ab2dd5d410b3c4580c7dec6057cc9178a35fd0b539666bc9ec66931b67b37fb3cd9c827e5182d9ef815f7bf8f750b1f1ae90f2ebe355d16c95983cd73b30411cec489989fcab85d1bc07f0baebc9d43c2fe10b8d52edced173a94421dac3f89439cfe95d119580f9767bff008b7f15dedf4eb6b0f10ebd05b9021925b6711293c64b11cfbfe15ea7f08ff649d4750f134307c4fd664b717485d2c6d986180c6430078ffebd7d6d26a7a3f86bc3806bf77a7da2a2a7cb0c8a0a119ec3915e45f107f6a6f06f83aee0fec1d1cebd75129082cc033f3eed8551ebf367d01aa9557256037be24f88fc01f04f42b3f0fcb14fa3e8bbd2d60fb18fdecb2938dc76f279eb5da69973a7cb1c56b61a835c398d248c5c48164642010369e49c7b57cc767a7f8c7f689f1a58f8cbc7762d6be1dd37f7a96e183242aa73f3b038dff4cd5bf1ff008e2e07c408bc47e1bb76b4b7d34a490fcc7f788b8007a723f9d424433e9c7558c95392c7820f1b6ab491e78ef4dd2eecea96f6f7521c3cd6c92caa3f80b0071f9d5bd815c2f5c91d6aaac6d4d8a37b9cd6a912b4da99620197c95c7d3757c77e248059f8a356bc643b05dc8171ef806bebcd4e56924d539e63ba8941cf6dac6be4ebe80ea7e22d5a195c851737123719c0046057c65257ad23d7a32f74e4658b103c91c1e71dc4f07ee835d0fc3fb451a6f8d357002463473171c6095c7e158334ed1224b6432b2921d73ee4575be0fb7687c11e3b9c81e5791147f9915d6a176766aa373c6fc436221b0b75700b6c0338e4f15e617775169da8bda91b6361f773f29cfe95ed5e32b74686131afca1401c7a578febda419af9e490741c715e8529a82b364a6da396d66cedeea759925dac9929cf0bf4f7af55f861fb44fc54f85fa4476da1f8b64bb8d5b02dae3e74551d00cf4af33bab2580e255e3b54258dbc2cf681779e3e635db4b10fa1cb570d09eacfa72ebf6fdf19d9d92cb7fe15b39ae80cb4a274447c67803391efc75cd79078b3f68f83e3378c63d5750d160d19cc7b5dd5c3ef23e95da7eceff0005f4df1edaea3abf8eac249f4d1114b720007791ce3f1acef1d7ec77a7584eb73e06d71e2b98c96486e9c01d4900126beaf26cc5d292b9f299be570ab16d2316de65fb4c89e6061c60f4ce7a1e69674def93dba561dc5978cbc25702c3c5de19bd731fca97b6604a8d81d08078ad287504b98d65fb1de0cf237c58feb915fa261b35a1287bc7e7b5f27aea7eea2492cda65e0f152595bcf632096194a91cf5a7c170d2b88e3b3b8249c709dff3ab17b6577043e6cf6f7518ea36c79e9f8d6cb30c3d4f76e60f2dc4d3f7ac7adf81bc5b1eafa38d3e6b88e2b9b63ca9619f6615f4bfc2ef1d47ad59c5e1ed5af91ae215c472330cca31c7d78af84bc3f7ef637697288c5986086e0e2bda3c25e273776de4c32c705ed91f363c3fcc47502bcec765d0af17381df84c63a5ee4cfb234e1e4dcc96fe4e63746ca1e4483b81fafbd713e31f00b68e575bd174e692da473bd0a619490411ec2a1f0febd77e21f0c58ead6b39b6bb4c3b465b21b6f5ebce4f6e3bd52f1c78ebc7ff000facd7c59a65bcfafe88c3fd36cdc665b7f56007519fa75af92509e1eafba7a537ed237b9f17c1a8dcf82fe35c9abdbc6f6d716d7824c723085b07afd6bf577c19acc3e2df04e9dad5a5c0df3dba96756e7381919afc9df885e29b4f1a7c4c9fc5561a6bdadb5dc45cc6fc3039e47b60d7d97fb10fc6086f34f9fe1b6b33ff00a5da9f3a12cdc98cf41fe7d69711e01d5c3c6ba3b72ac6a854f677337fe0a27a73bf80342d512d5e67b5b93117233b464e2bf38de731df3432c85640c728411dfa57eaa7edff0064937c0b134317cc97608c7be2bf33752d3c4c433441a51d76ae493debf39aaf925ca7e978195e05bd0cb01e50270c319fad7a5fc398ef2c7517567668254287db24735c678634b769143c0f80070c39af62f066930bb2b1b073386548c92540c9c1e95cb39773d05a9d87873c28b77acc7ac8998c7a1c65e25dd9cc8f90063be6bd73c3760675b5dd6cd6ee21f32557c8cb16249c76e2b27c31a5699a6584c8ed246e0ab4a5d7efb0ce075e9d6ba8d12d6dee2f8dddbf9eda840eb32ee1fbb9100c6cebe9ed5c1884aabb19b97295dfc61e15f116a2da6691af580bb490c06dcca132e3033cfb62b2ff0068cd356c2cfc25a95baa98e730c0ec9caf0c339ed5e7dfb49f80e4f0fdddafc46f04c06dac6f8896e23418304e0e189e78048efeb5e8df10273e3bf813a36b1a700cd6cd048841cf704f5f7aba7868c6cce79d668f39f8e3e1cb383e2944f60218ae5120658e25003160bb98e3d01355755d6f4db2512ea372d0c71b9ccb28257681c8e7dfb8f5aecbe28dabdef8cefaf4b464bdadbd944aa3e6f3182a7f335e59f117467bdf1c1f0be8a925c45656c968508f95e4382c4fa7bf5adbd9ab688ba755c81b56b4d501d434bb88a4811811b412339ff0af1bf8a16ad63addf33b131ca56541db9193fad7b74de1cd3bc2da6c7a635cdb47a84ae59ad965048c0181cf5e6bcbbe31a44ba3c13dd5bbc5792315191905477cd7765f4dba88318d4a9591e097f2a3c8d238608b924a2e4e3f0eb5d37c38f857e35f8a7e214d2bc39a6b18880d35c920450a7f789e99c7bd636dd9f2960bcf56e466bd0fc1bf17fc71e0df0dcbe19d15ad16d1f9122e564e7df15f593768247cfc753d5ed3e0bafc334bfb8f03789cf88afac61ceb5a43c9ba19a3032e579c0c0cd79adf7c2ad3fc572cbe22f85fa9a491b0325c68f2cc1648cf390377a1f4af43f81be23d2b58bbd73ccb3ba8757d434e9d65df32846250f4c9ae17e13fc39f14f8c3c6e965a1d95d4696974d35dcb1b6d1120273b88383f9d72a934accdac7985e69baae977ef6fac585cd89562364919c0c71d7ff00af522c910c08d4ca4fdd0a3767f2cd7d59f16f5bd6e7d64685e08f03e97aedbda46b0ce044af34920e0f39efed5e57a9dcfc39b39c59f8e3e146a3a46ae1b12c7692a86c11d704f18ad39ec6733cac1da8aef032e49f94a9c8fcea654b79e32532adc80318e6bd42ff00c0bf092f7c3b73ae7843c717f15cc2371d2e7b2925972473f3282bc7d6bccd23f33ccf377c622193e6a6c3f4f5a7edad1b99a8dd977c27e197f15f882cb41b48642f3ce8a460e026e1927f0afbf349d1edfc27a86910e813a8b56b716f3203f22b81fe35e21fb377c2ebbb5d30fc40d56d8837276c0bb790a73ce3af4afa1747d323b8974f86490e05da927183dfad7c7e6b5d569591ede1a3c90e63a4d72df53d3fc3ede20b69d5e68dd52351f2920f53c75aa5e2f5bd9747b6d525b4fb45c5f5ba40880f3bcf53cf15d5f8eb462fe1eba86d6e1888086c6d03a8fad79df8475efb4c3fd8baa9592e6d98985e4ec0f403d6bc7e48a477539393bb344ea69a3dadbe930dce9935cc51297b7f382b29feeeee87f3ac393c5968d785de19e1b88815b9b49632cb2467862adec39155bc5ba75ec48f75a45cc8de436fb9867200eb9cad57d4f377a069de296b74472e23ca0fbc33ce6b1d99bdeeac76df0e64d2758d2758f04c9fbcb578dee2df69e429078f5fceb99f057837cdf09f88f49d2f56bdd32e6c2479e368dd81c0ec71ed5aba6e9d1782b58b4f12d948cd6f2b2f9c9b7828dd7a1a87c69a9dc783bc41a84f6531583c436ffb92a7804f51fa55b660aea7ca8e6b48f1b1d5fe1adff85f50be4fed5762b04938005c6deaa73fd6bcebecabaa598d3f55d02e34eb88001b95415623bf1d8d2c9ff08e5ecf71a6ca2e2de439691645c146ebb9483589729711e9b7674bd4e5985a8dabe63e491593958f4a8d37d49b59f8c3a95b6b5a47c3db7991e15655943a01900f0067a7e15eb3e2eb68e797c476e51ff7ba324c3248e420af9874b8a18bc496972f1ab5d0983b4ac41232457d4faa46f73a95f48ac585c78747cb8ea447d6baf08d3aa8e0cc63cba9e2da516b8f87fa9c284a3dadc248c0e7a66b1ec2e55e52259b008e3271cd6b6837013c19e244751bcaaf53e84572b1df5a4042326594024e7bfa57b13833cb84ba5cf56d4181f871a2dc4615c45752023701d8572fa4dda0f19e8733af02ed32335aa97a975f0aec7cb38d97edf8e5457308ed0f89747910f3f6b4e9e99af4f090b451c75e7ef1fa00640c91b27dd68d481f852ab88f323e30809c9e9c54562acf6b6c1d864c0873ff000114fbe8f1653e17911377e7815ea53dd1c134ba1f28fc44d67c25e1bf10ea3a8695a0cb7dabdec8cd2992e425b9ea7b9c1af29f1278f751d6111352d5a7b5890809a5c0b8833e9f2f073589e38d6af27f136a91b3b6d8ee5d7924f1b8fe55adf0d6d6ca5d656e352b64be8d06e58e619db8efee6be8a8c23285d98a773abd1fe1e6afe27d2e3d7ad2c20d1a1893e6498e3cd18ea89dfeb8aa1e18f87faaf8cb5efec5b11341670498ba98e4061dc7a0af56b6d03c7177a5def8923b778b4c8d36c4eed908a7b28ed5e95f09744b393c206668545d4b212f2e396ac6a639534e312d46fa1b1e09f0768fe0ed2e2d2743b38a3455f9cc63990f7271d735b775a3cf730973b810400083d3d2a548a2b5db148ae49e816b6e0854c03ca56e9dfad7972adceef735504717a958187313961b57e521491c0e9d2b321b3fb1a9d46ea648e385494c919663c74aeb7518ae27262118241cd71be24827be65b64f9522e481d09f5aa85ae4c95b4382f10eb1ab5d968e291c2bb1dcca39c5721adc722e93787ecaca8207218a1392073db8aeeeeed2e206f2d10bccff007540eb55fc59a24fa0783751d5b55955af6f6d992ded90038183cfb575462ae8e6923e7ef85714971e0a9caa470cb25dc877038cfcd5ebbf07608748ff00848f54bcb7b8458e02db23563e610bd78ebd2b9ff859e1d4ff008402dd6e634b79e49a4dfe6fca3a9efcd6bc1e2bf0ef81ac355d3cdddccb77a9c4d16200b22ae78ea581fd2bd974bda514910dab1e4572f35e5cdf5c159a74ba99b789148c29ce3b56af83ff00694f13fc3048bc3579e5dae9514998cc91fcc50f501b191f9d731aa6afab490bdada4690c609f9b7024927be38fe754bc75a65d6b1e0a36d7f1c2ec81592541f3023deb9f3085a090e9caccfabbc0ffb5af83b5b6fb158ddf91391965b8b8cabe7b00c79cfb0af47b0f8bbe1eba8c1bad0ace7c91f3ae01cfb29e4fe02bf3a3c22744d6fc3963e08d574db596e5af1162b954649a3c9c120fb7d6b53c6717883e11fc4f4f0d7873c477f7d6b6d045332dd4bf74900903d3f5af9d9435d0ee83b1fa27a978a74416128d32d6df4d7981672f0eddd9edc8c541f0cee6cee74498c131664b86ce4608e6bcc342f167fc24be03d3b5c8da0b9fb445b1879df323af0dd467ad76ff046f4dee8fa840678a530dc1f9d01fd78ac67168ddb4cf9efc07e11f884d73358c767abe8572ae561796dc48840ee1c3e7a77da2bdef44fd9ced35cd36e0f8aee1b5fd4af62553773ce5648307aaf0318f7f5ea6be46f06fc7cf89b6baa4325bead70cf689bcc8db994a1ee771c74f402be95f077ed63adc96124f756b673496f11667319cc871ed4aa42fb199d4f89bc0bf16bc1ba1d9e8ff0df5cd2678e260b22df2fcc80741b9719e33d4578ecfa37ed20dab5cdd0ff0084583212c24779072393c06f7acdf197edafe2fb8bf78b4fd374648d5be60d0b127ebc8ae1ec7f6aff001d79f3cafa2e924beec6f81ca907fe054e9d3e8c0eaf4cd73e3b69badc1a8bf88bc3104f2dc796aceede5ab0e096079c7e35e9fa2cbf183c39e30935bf1978d3c06d04f1f1b26900248e38ebd6be7d6f8f5af5f481e4f07e8c4c67cc46168c543e7af27d7deabdf7c6cd7758d605fdce8da32ca00080da3155c74e0be3ad692a49ec2bd8fa4b59f1c68bfd9ba8697ff092df78935fe6e174dd1f4891e3b6906480aeec3201f6af14f137893e2f6af22a69fe19bfd0b4e9808ee2f2f50f9e927a8f9d163c9f66adcf86bf187c7971e2d11ea9a9259da4f6d2299ed34e8a221b6f1b9baf5fad705e22f15eaf3ebf7275df115f6a70cb23f991dc4ec6373838c05f4fc2a234ddecc1b3bff0bfc3af1118e6d43c6df116c6269e3451f6abb333bc7ce195157afe3f8d6c4be1bf86de137fb4e9da15e78bef8e0fefd059db86ec41c9671ebc0ae0346d66e351d3b4db4d1f442d7568c57ce7214b29391c3e702bbad5b535b787c9d6af6d619da3554580b5c4ca7b8001555fc49ad152bee4a6d327bef10eb57f65fd9d18b7866b9fbba469f398a30b9e108232df5fd2b9f911e3d51748d4f364f2b24f7d1ca3718a34395518fbab81c9383ec6b98d77e26685e0a9a6b869a349658fcb5b89e40f7c9e85140c29f4c935e47e34f8e3adf89ac64d2342826b2b62bb67be9e4df7d7c3d647236807fbaaa3eb438586fc8fb9be02f8c0f8d6d3c47ac40545ac5789042aae4e155b03e9d2bd5d18bba93ea2be62fd842e5a3f08788b4978db6c72acc189fbcc5b3fd6bea08154cd8e31c56727cd169825ef1c0dc8f3ae35842c7f777cac7f08debe60d22732788b583805645bb66cf2461f8afa7259d2197c457327dc8ee0ee3dbfd5b57cc3e0c9e06d7f5fb999709f65ba6527a72e706be470f1bd5933d4a4ec91e7b15cb5d4e24593201da02e40c0ef5e9de0d922b6f849e2b9ddc1373791c27774c022bcbedee22116f48c20c9c6073d6bd16c2075f817ac5c852a64d613e6f5c115d9637ad2715a1e79e2f7c476caabc37cc07bf6ae8fe107ecfd73f1734fd475c6be488d933218873c81f4ac3f11d8cb73696d76a0e2dc2bb0f50306baef83bf1a20f84fa7f8934fbbb69376b303359303801f804fe02b9b12dc1685d17cc7cdbf14b4c9341d72ef43b6b6795ada5319dabc920f518ed557e1d783eefc5faed8f874dab799348acebdc0c8fcab6e5d60cff1022d4b5b9e2fb3dcdcb492bbf3f78f039f7af5efd9f34bb2bcfda0228ac553cab95cc5f407b576e0e768ab8eaad353eb0f0a7c39d33c1fe13d3ac6348aded52101d99d54163d49cf3d7dab85f1fbfc34d3599355f145ba6738f253cc6fd3a57d277df0ff0043f16d9b69dab59cd25b40307c998a367bf4af9c3e3ef87be0e782ed9748d3b4756d58a9f2916732313db76781f957a35f192c2a4e074e4d964333c4aa32d8f21d6f56f03e0ae8de25b994118d925b6171df92723f2ac2f2bc17147f69bcbe099072c5475edc62b1749f0ff8abc6ba94d67e1cd344f751920c78c4683d4902abf8a3e107c47d1eda4935fbad30ac633e4c72316539f4c76a74f34c5ce3747d8e69c2995601a85d5cb7a878b3c3361633dfe85a0cba92dbb2891c305539e31592ff0011f46d54a59cde1f9ecc4839db286dbfa63f5ac4d2748d42e34c8ace17db046ed35d942577600c03ff00d6c5694bf06bc4baa5aa7896c348bc96cae17e56b6988381d4e08c1fc2aa8e6b8a554f1f1dc3981a54af15b906b3650d8225fe9b1bcb6d29cabe72d9fa7ff5eb5fc31aea4d716d788047776cdb5938dcea0f1fe4d4de1cd135fb3b48b4abfb482fac4392181db7107aabe7ae3bd45e21f05ea1a7c875ed1ae2285e062c57046e5073fa8afafcb78b5d2a8b0f5d6e7e3fc41c3319b75282b58f76f853f1034eb0d4ee745d42ed6082f807b796524046041231dbbd7b75c4f27f66b246f15cc528da141dc25523906be45f85234bf1a788b4fb5bddacb764c2e80e0c729ced61dfaff3af7bf0dcf7fa0eaf75a068575249a869e8775b6a07e438fe218e73e9ce39af731deca725521d4f95c353a94a4e9d4e8786fc78f8383c1dacda78e34cb59858dfef8ee211d2190905718ea3d73ed55ff67dd5af3c3bf18bc3d70ad8fb53f91330c6dc1208fa71f5af75f1df8f749f13f83f54f0cf8d347874ed51937db9562519c7008cfb57cb51cf7ba0eb3a7ead6f2307b4996456040040356aa3c5e0a50a9d0e76e543149c59f6ff00edc5acda5cf82747f07c538f36f6512807eee077ff0022be15bbf87e1dda56d4fcb62e4929cf5e95f547c7748fc7ba9f86afeeaf5e344d160b9555e7e620e7b5703a67c3e89e48fce4913e607122e4943d187d47ad7e1f99623d8e225167edd93c155c3464cf32f0e783e4d2e6567d49e70fcae464d7ac787ac0436cd79312be5631db26b613c1034dbc68e16fb6d9955d9334614ab1ea3e82b68786aef51bfb7f0c6896eb3cd2ba4b28c67083ae7e9f5af3de354b447a2e2a1b96344ba923beb0b9d4b4f96eadc6e610a38058f1b73f519af63b2d274cf89de1e7834f8e5f0beb760c66b60b207048fbbbb1d41faf7aced1fc25a0689343692da497d74a9b9a667d8a841fba1718ff00f556278ee7f197842ebfe13df025a45aa698b22c375a701b25848e49c83c8a74e4a523cfab793d09746b8baf1ada6aff000cfc756115b6b51a323a04c25c2f45963c939c8ebf8f5acbf865e1c934bf859aff0081f507064d0a67518248da1b23b7a7b5753a9eafa778be6f0df8fadf4f9b4dd6207482653d1a23c904f5ea4d6bddd843a7f893c4f132a18f50b4133a8e072b926bd04d5ac73fb3937a9c35fe902ebc772ea5751c660d3d1b507f768d7283a727762bcb3c63adc1e07b59eead2dd2e35cd615e57908fb818f07d738af71bd87669faeea2f263ed7b2de31c719ea3f2cd799f8db4184ea31c73c0844b123e597ee82785e79aa8c9366b18b4ac7cef69a5dddfcafa9cc2ea7b996505a4909fdde739c77fe5d2bce7e2a6a97571e231a6497924d159a60066ce09ea315ec5e3cb4d76d2fae34e88cd6ab6e8d3165014141d0fbf3fcebe79d4d9eeef25be9a4692498e0b1eb9048ff000af6b2ea6b9ae726326d69732e48f7e7824639ab10bbc71aaa2818ea48a916020f4a7792c3eef3ec6bdd6aeac705f53a9f05789f46f0dea22ef56d22e7508db2a5ed6e444e3231e86bd97c01e35d3edb4fd56c7e156af26997fa94455edb50705a4cf501c7f857cf1691491b96645c11f855ab781ede637b0cd2895398dd25d8d1fd31d7f135cf289773a4926f897e04f114b781b57b0be0fe73cbe4b188f3d430ec7dc5755e18d2ef3e2e7899bc65e3ef15d85ad9da84fb6399712cc9e8011c7039ac45f8a3f106e34cfecbbbf112dc5b15f2c09edd1dcae3a163cd7346049e7dec877b1c90a4a83f874fd2972df73393e88faf3c25f117c3169e31d23c19f0d6cbc2569a006549ae26512ddce7b920a8039f735e77e25f87773f11ff00687d7346d13458dac2daed9e6642ab132824b631c018af0bb2b5d46e2fe38b4686482f1e40b1f92419189ee081c7e75f637c25f07dbfc37f0c979a6be9359d4c799757170e4be4f2ca79af3f135f9158d69c5b3d17c3be659c769a24fa2c5a6436d88634130756038cf41d7f1adc6fece3a9ff00c4b04920b6225036e3e71fe7d6b9bd3efa0d56e12d9da37b8858346bbba11d083dc8f735b3750dd269b3c365331bc9412a1400722be46b4dce7767b546decec773a56bada9cf7765acda2c46e21e41ebc6403c7f8d7862345a778b25d25544f70b78c50a64e109c83d3b56c693e21d674bb8316a72ca246528c5b0495ee39e954ad45b45e258f51fed082dd3765e676190339c1cd4b57d8e88b51563abf19e8c23d3522fb479b3de911c4aa0ee39eb9e2a3d7f46b0d3f47d27c1d11df34404b385e421e09079cfe95b5aa78cbc3b73e5c5a04497f7a000975bd4c71b630700571baaf89747f0a996f355bc96e7519d835c2468199be9e9f8565ec6fa8bdad9dceaad34b3af19347595221b3119909038edc0ae73c73a49d5fc17a86992ca8fac7879964508493b01e71dfa557d07e25687ad5ca4b6b1dcd8cb1302ab3a84dc41feb5d6da5be9765ad4de25bdb839d6d0daf965410c587d707f2a392da0d3f7b98f9a7c74629b4ab2d66cd99bcd842bc81792e0fdde2b8ef00c3aec7ad5c59ebb6660b5bf2122df919cf43ea3ad7b26b5a54ba7eb5278427b10f1dbea71dcc0bb40dd1b1e47e157be20c7e1b9bc7f6b65a3a5b878608ddd41385900e475c5615125767753aed1cc4bfb3b6ab1a4faac30ed8513cf1231e31f966bb6b59e732e950c284acba2488db8f270847f4aed7c43f11ec6efe16ddd9d95c2457f1c62028a416247078ae27477653e1d667dcc749950e7a93b0e6b6cabdfaba9e7e6139491e27e1a886a5a6789edae83aac56b24a9b4e32ca722b8ab6bf47b70f3db65d86339fd6bbff0ccb05bb6bf6f7444227b49d4027ef360e07e75c45b6993c90c6863e54f43d3ad7d438dd1e6d1d4ef6c8b49f0a6d9e3c0035120f3fecd73925e793af692cafb9bed48403ec6bb6d3b4f41f08a4db1066875253907eee41cf7ae56f6de0fb76972841b85c2e081ee2bbf0cad138eb7c67defa3ce66b0b1723efdb479fcab449dcb2c4464b46ca3ea456278724ce8da7313cfd9d3f2c0adb84e5fcecfdc39c57541ae64ce59af33f397c7ba0b5af8975e8a478e3905e38f9891d4fb0ab5e18d3af74e8629a288891801bd5bafe83b577df1b3c1fa53f8fb58b7d4ae6e2d899bed0a6051923d2b32cf4bd10d9c4d69a86a594180ae8306be968d9d3b982ba7a1f4f7c235bbf12fc1dbed32fda47da0ed00007819ad7f86da7ac3a50b68884f29ca4993d0533f66eb755f87f30065903ce53047622b6f48d3db4dd76f74e00aab4825c74041af9daaef519bc6fd4ecad3c35bd95c4c258ce082c30c33dab620f0fc206d738f5ab3a3a17854e30074c7a62b502e0806b86ad469d91a9cfcde11b26632459df8c73c0e6b92d5fc12200e5421dc4963df1f957a61f9726b9bf125e476d0ee054b1ec4e062b4c3ce5cc6534799ea3a4787b4480deba99ae1064260673f8d79278e75bbbd6ac351862b1fb39688aa33a83b40cf2306bbdf1aead3df4db3006c070b1f71ebd2bc83c5fe2696ca36b68a35669811f77a763d3ad7b945bbab9cfcb76711e0ed4a6b7d0ecacafaf44c3ed5202bb801f7bdcf15c77c4ed33531ac46ba68db712c8596384161b79c75ef8fc2a7f12c5a8dcd9f9563b1089377976f012f927a8c1aa571a9eb170f16a5a945ae58ded8c6214923b4ca15031b8eec8c915ef51c4d34ad733953bea64db596a72634fbab39d6e9980612aed0456df8c60863f0c0b3f20db49b402c1bbfafbd16cafaddcade49a9ea3796e9ff002d5e3f2fe6efd39eb591f163506b7b682d125c8111ea727f1ae0c7d78d4d11118b4ce5be076873f883e33689a5193ce822b9123903fbbcd6e7c56b2b9d6be3d7894e9d24664b491625f35b030a075aee7f627f041bbf1bbf88246c7908cc5c8e8483cd713ae2f97f1ebc63757371889ef193795dc33db8af124df31dd4b4dcf72f096a578fe114b3f2adad4db42af28b5b7dfb9b1c95f980fafbe6bdb3f67fb5921f0cdcdfcb72255bc9891fba0a473ec6be77f0bd94a74432cff6a370331471b9300653d381907db9afa9fe16e90da27822c6d5d4a12a1b04720919ace7a9bdcfcfdf066ade00bdba9adb52f155ce90d2a953ba20548fa915ee9a4787fe00c7a3055f8c91d9492c603c6ac3191dff001af8b2fc6a16c25436d79920e4c91fcab9fc2b3ace579c6d554940e37ed1d7f0ab6afb03563e96f137853e18c3a819346f89fa4df46d924cc7e6cf6c60d612e9de1f59992db59d2a50abb8b872a303f1af1196226d7788e11b486c6c049fd334c594dc00195c293e98154a3611ecf378ab4fd39fecb05ddaca80e0a8c3023ebd7f5a6cdad7875b6dc9d4f4d85f20ec66191f8579125bb1915ad848cd1f619fe9532e94e8c66103073ce5b27f4aa44b573def4af887f0bf45bafb56b77c278244f9fca964c330fe1db1b2ff003acff17fc75f871f6158fc11a05f5befcab21b43c9c750d26e3fa9af197468c64c4cf29e3013afb702a8496a249019de4196036313c13d2b4f74123a49fe276b73dc66c4b6474170d9c7e0b85fd33506b7f11bc65aac62d6f35d9a0b765dae967fe8e0ff00bcf1e1cfe2d5a7e15f84baf789224ba31359d996016478b073f5c735f53fc36fd907e125f6870eabe29827b89d958c8e6611a6475fae6b09b51d516a173e24b8b9f323caa21248c31cb3f40325d8963f89af44f841f0aae7e246a5a84acde569ba443e7dcc8f9e70326bd3be2f7c07f87ba5e81a8eb5f0f8bc52e9729326d9b7285079af46fd9b6cf4cb5f823a9dbc90bb5c6b503331eec39f5a84d31356d0ee3f6638f4ab6b9f125968b185820589063d4639af7681984cbedcd7cfbfb3ba3687e30d73498a1309b9b757456232c38cd7bdc9bde761b24054027683c7158577c916ca85b9acce02ec83a178a6694f596600fd1700d7cb3a5b8b2b4d59a73b7cdb668a361dc9626bea0d6ae117c09adc824387966e4f5ec2be7a95f4e8345ba49d51a428be53e39c9e4ff4af96a0bde93ee77a5768e16d74e845b2b119c00a476c8ef5e93676065f8137702b8456d64727d322b8c8fcb591bc9901046de3d7bd7a1698d6cff05ee613cf91ac067fcc575c51b621e891e69e27862b1d2248cdc06f914103a9c9af3ed72fadee6d34086d100b9b7b892294e324e50903f4af45f1d25a431349e59757857047627915e79a6d8457de20b1439025b8dc323f8b6b62b9f16bdd37c25a4ecce575ad296eefa3be31a031b112865ce00ef5e91fb32ebb6f69f1ef42c10636431a9e993915abe2ef862d77a4cb750c4e5a107cc0a393e86bcfbe0fc06c3e35784d154ab4779e591df861461277b22f151e4573f447f683f8b775f0b3c22b2690d145a85ee5639181cae7233e95f1b6abe2c926b717ab24ba96a9a8317b9bf09bf664f2178afd11f1f7c24f05fc51d3ada3f1369e93ac2aa46f1e9cd797f88b4ef869f0a2d5346f0ff86ffb42f1ce22b2b5877ee3db38e95db5e9cab491ee6439c6172d8f3dbde3e78f87de3cf879e13d1a4b364f1145348499a58ed186e73fed01c8cfe1515d7883c09e29d4da1baf1aa69c1d8851776f83d3debd8754d07e2d78b1238b54bd4f0669d2300b6f042a6668cf5078e2ba3f0bfc0af875e1d2d7773e1fb7d6ae661f3ddea41643cf52011eb5d74e35231e5898e679cd0c6d7f6b519f15f8e85a68b3dd69ba3eb365776f3e479ca48241e3b1e2bb2f869f15744d3fc3b6fe1dd563beb71a7a94496de62cad9fad7d71a97c27f86bab27932781f472a7f863b745cfe42bce7c61fb22780b5856b9f0aa5c681a831e363128076e9511c34e33e767a14b3bc262a97b23c77c6167a0ddb59789748b6d4eca4908cde795fb8b8cff007bb6e3df18ac5b05867d4e7b6d4e696059df1ba420c58e87038c56f78a7e117c46f85fe1cd5935ad5279b465915e2dcc5d6461fc583d2b2bc35041aa306ba8c279877a963dcf27ad7919856746bc6af63c9c5d2a13838c4f3b82e6e3e1ff00c508a6b068dad3ed692248077dc08c7a57d87a5f815fc73e24b7f1df85b5b86dee64880bc8f77ccca3ae54fbff002af997e34f85ecaceced75ed24c6ad1f0ed0b0ca1ea1b8fceba5f841fb47685e15d3ed74ef10e9b3bea566329756f9cdcaf00838e4fe35fa561712f1d848d4a6f53f20cde8ac3629a47d4fe20f873a0ebba6b586b3650dc4e80ec9c4603ab1cf723d6be56f8cfe03d0f44f095e5914306ad6176be48ce3cc8cf23dfad7d09a1fed61f0befa32356bb7d39e45c6245c1e7d722b96f1f697e1ff008ebaee9ba9782efd6ff4d8d3ecfa84b0281e53060549c74f7aaa58ca946128c96879d4a842b555739d9fe1eea9e21f0c786b59d5bc4facf8767fecb86dcb408ac8401c6720e2b6fc33e10d4f41b61617fe331aac6a77bcf2c204a53b61ba74f6af53b9f0ccda4e9f0d8788f51b17d396354c4843290a3031835c65adddf4d73347a1ea5a1cf6f164081e308db476c9f6f4afc7736a92ad8a7ca7ebf965a9e192443e29ba5f0dd85beb7ad871637b986dce0727042f403bd751f0b34c365a2ea9e262edf6eb851180c0131c6ddc77e9ef58179f107c23e2fb48fc05e23b69b4768e7578ae98ef84b83c286e839f715da7c2e9eff4eb7bdf0d6bf68d19958f9170f8db3a7f0e1bbfe75852c3cad792155ab26f52df8958e9d67a4598731c97caee187de6618f5fad7350dfcf6666d3a3bf22295ff7c4f53edfe456d78ca3b4d6ecbfe116bcd66decf5fd365fb4696d2c817cc2320a0278e78cfd2b88d3ae3567be5b1f10e8f75a7ea21847e4329293927ef213c60ff5ad669c762a938f5675b697d2dbaadaab79b1a000a3018e0f07a67a5685c5ec375797fa84cbc4f6eb6fc31e8075fcab9ef3e0b1d7af3c36f13a5c5b44b331cf2c0f38f7c549a9cf15a6c918f0a1b9208ce3bf3531ab5158ea9469c9681a9ea3159da95cf99149706561fddc7ddfd6bcebc5be219afa4134cfba418543c00a074ae82feea0bf678acaf22b85032446d923d8d71faf412cf67792dbc60fd91033ec53d09c5765194a5248e69452479afc53f13cf2e8d7525c88cdc5c47e423af5da0826be6f78c2c9230ce093807dabd7be2cea96d8b5b541875566207a9c5790dc4a59890a4839e95f6797c796373c2c5be7968caeb708a76b1c115620c48415c5514b72ee4b29009ee2b46da310aeec57a8b5d4c92d113adb48e370353246e83e6ab16ea4a02463229fe5024e694a3707e4408ac4f2318e99ab68ac5080003dc8eb8f6a44819d805538cf35d2f82bc11aa78cfc476ba3d840cd1ab879e4031b501e47b7ff005ab96acd422d950a777a9ea5fb397c36fed095bc6fa9db2b4368f8b5c920b11fe15f48590b75be49eed16504e76ccd95e7eb5c7e9367e08f0cc10e81289ede1846d0564c22b77fccd6fe9b3782ef2716b63a940eeac40569f93faf35f2b8aaaea4ee7a34a091a97da4e8ba69371a5584025b9915a38626dcb19c825b3dab49ed6ea69c5bd9aeebabbc6cebfbbf5279a75be8e9a6ab5e491820f31ecc1fa74ab7e118e08ae753d7a591cbdb42db14938e702bcd9475b9d5f09625f0e78534c0a35abb5b99481e6baf66ee05665dcbf022199ad35ad0d27d83fd64a1d97f438ac59e7b5d5f517f3de4f2c0de40071939aebb50f0d587fc2ba79608f6a963248db467007bd38d96836dbd4e722f873f04fc78e07c3fd664d0f528be688da4cca091fecb120f3ed586fa96bde13d6ae7c31f11bc3363adc406cb5bf58024bec4b2e33f9567f862d616b5b8f13e8560e6ef4f245b81c96c75e9ef54a4f1078afc4a25bef14dba48e5b223279183512a896c553839334f52d091b449b5a5f0e4fa91958ec86ddb71840ee7d3ff00ad5049e1ef12cde1283c5daacf7b6a9a6ccad6b68a80b9c7e19e95b3e15b8974cf11d85fc57d1d9095879c03ed5753d8fa9addf1f78a2f4789a2b8b2bb125aa208d901ca6490335cb3ab6368c1f3d99e47e24f1fe8de2ef11417ba6da5d69fa9410049cca30188ea4f1d7ad67ea3616f3eb76b7d6cccaaeea0dca1f9a490f5cd759f11f44b1d2efedf5a0c07db62da638e3fe23cfa5773f03fe1f6913d835eea7685c9943c2b2a70a7ae7a572cea731d738fb34719e3ff000f683e18934bb2d3dc25eb406eeefcc6ceec8e33ce2a4f07dbc7ac49e1e9e71895aca60083c721b150fed1ba7aa78e2e278b6211a7aa2051c719ae83c07696d6fa6e837322f1169cc4fd769cd77656b967747062e578d99e1de28f04b69652e1a5902cf73e5f07d4f415acbe02b3894155772e40233d2bb0f88125a6a169a6a58c01dd2ed6520e0f00f26adbcb0cc1650ca8531c0c57b15aa492d0e5a30d343374af04a49f0ff50d3604624dea9ebcf435e71e2bd0ce85a9d95acc586c951abe81f08dc59ff67ea8a275222292119ee73935e4bf1cae2da4bfb3bb81811f28c8f635dd80ad271d4e0c4c6d33ea0f0b5c06d074d63ded93f956e43392fb15b04f5cfaf6ae4fc1921b8f08691305639b64c100fa57410c6ced928dc1e7835ead37adce29c4f9cff697b38adfc5f69a9349b16ee3dac7b12315c969373bac1638c80abc29039af63fda57c389a8785acb528ed5b759dc00588ec4e2bc4ad2e120b7686361b80c6057d160e5cf0b18a89f577eceac4f8119ccae48b9c91b8d74fe268df4ed7a1d49186db94da7f0af39fd97f537baf0edfd93ca331cb9c1fa57a978cec8cfa035c48a5a6b6632295ea062bc3c47bb59a375a1d0689ab449085924c115b90ea7038c96c8af17d1b5f7bdb459c48401c31cfa5751a7ebc45a3b7999f294ab1273cd60e973bb9573b9bfd6ade18b28c0b1ce00eb5e73e24d59a791cb7cd819c1fe554e4f1248e4be7907d6b03c477dbc7da2d9b21873cf7ae9a187b6a673660f884e9d25bc8f334b0139532a1e80fd78ae4740f85d7df10b51367a76b460d36d9b74b348837b0efcf4a35fbebbbac58c6e775c3ac78fa9af79d1fc3f07837e1da2da8d970d0ab48c3ef64f26b5ad3952564108f318be13f0d7c39f06ea1fd996de1e8a79ed622f3df5ca86e83f2ae774df8f9e08d7fc4abe10d47c16b141733186199635d9264e01c1ec6b422b16d47c17af6a6a1e6b82e515b71dc5428e0d78b782a1fed4f12984dab8b88640212013e5e3815e73a92e6bdcde54d247a47c5bf83de1ff001019ef3c0f2a5b6a1608647b14e1580e49c0f6af893e25b25d6a7269328315c6f1132e3a7af5e6bef6bad4af344f8916850e44d1a4370abcef2400735f3cfed47f0a3fb0fe2dd86b3a45ae21d64805157f88ff00f5ab486224b7662e8a47a37ec91e0f8fc3de089f5596318b946446db8380bcd7c9de25b1693e29788a68e42c93ea0e436ec1523a608e95fa0be18d37fe111f8711e9adfba16da7c92925780c579e95f9ea227d47c59793ef322dc5e4adbd72392d815d0aa293b89268fa03e1d5aeb3a9695a7d9ea5732cad249f2c975706452a3a0f515f54c6ce96b6d6ac8aa218d54ed1819000af9dbe1069910bad26d64458a65cef5de598e0f1c7ff005abe886963ddc6f3efb0d6552a1a9f18781f5af0fc57c2c3c426088b27c8f3e19083db07a0352fc43f87df0a7c7da89b1d0a5b4b5d424b76265b240132bd3a7bf5aabe096f10db5f79fe1dd052f1d50234372a1c2e3d075af44b9b5d41a192f756d02c74d982806688797c107239e7a8ad93b167c4fe26f046ade16d525d36e9732a3108e48c483b7f9f7aecbe17fc0dbaf165d2ddea1756ab215de209650808e3df15a9f1a7c4ba6ebfe29b282c3ca10d84789675c619b7723debd43e095f78624bd9ef2eaccea6e91a1b7843053c75eb5770381f1068165e159eeb4b8f47b7436d3184c814316200cf3d6b2634b393314b65991c7c985e3eb5e91f1025b7d47c4b78b696b2c76b29f3cc6c47ee9c8f9867bf35cd5be9fa83cc24b6b452b11fbc7d3d4628b81cde9de0fb7f14caf6fb0c4627f2836d236b1381fad63f813e1b1d47e2fc3e0fd55f7c1a5bc93dd6f3932aa2923af5e6bd85b52d0bc15a2cdacdddc45f6b8886580f05df391c7d6bc5f4ff00887ac693f10e4f88e96aad3cb23836bc6591810473c74a77d34158fadf55d1ef2e3e1542da6595a2c715df9815766f58874279c8cf359fa1e97e16b3d3eccebd16afa94d7fe6bc369048c912e36e7773eb5c4691f1e3c21e21f0da69f7425d2643b8b97e48ce091f9ff3aec6cbf697f855e00d0ecdb4d326b9aa246cb1a08be553c7afbd6328b65a76327e24dee87e0af861a998b4b8b4f93580f0c56a172ea7246e27f5ae07e047c6ed07c29e1c9340f18b5d3a25bb471344b9da4838e07bd79bfc52f8a9e20f8ade216d6355096e85c88ad5491b40e3a562dad84724eaa10b799c328f4aa8c5ec4bd4fa2be15fc469fc45f150f88ac2da686082158e3471b4bae40079ebc57de105e5a5c584974b1052f016ce07f74f15f9d9f07ded74dbfbdd5af6e7cab6b28896761c1c741f9d7ddfe19d721b8f8676faf1c3472d9ef18eb92303f9d72639f2537726defdcf28f17c6b6df0c351b95625a59a6c027ae48af9b2ee59c691224cbc1c000f241c57d3ff0010e0487e18bd9cb19ccacac3d72e49fe95f39ebba24e630aca40500607b57ccd1a9b9e8c1bd0e3e37304a31f74e73f5af44f082b5d7c22f154b9256df5047c1fa8ae2a6b165215612c4577bf0faca49fe1e78eb492ea85d12e02f738c66ba63513669563cc933cd7c5d24d2e9c885721d36e7ae00af33d4b5293c37a85b6a31b12f64eb328ecc06723f115eafe2ed3e4b7b0b6407208efd79ebfa579bf88ed6cedeeadaf668cdc244f868d97031838ad650554bc34d425a926bbfb526b3ae429a6697a3a5824a763baa02c78c73c66a6f837686ffe347852ee790bbcb75e631c1cf51cd78cea766175c92faddfca8cb9738fb8327815f47fec8be14d5fc51f15bc39aacfa6cf1d9d9c858bba91b8023079aba78754b545e2ab294753f5327b757d2648619c27caaa4b36dc715e79aff873c53a001a8fc3cd0f4cbdbc981fb51b995559cf6c16f6ab5fb416b773a37c23d7b5bd1e5682eecd03c6482338edef5c8fc01f8e9a2fc42f86f69ae6a97c56f60411dcc41096660318c019ae94ddac78f09b8b39cd6be257c43d1ae3cbf17fc20d40843b44d607ce427aff000ff3aad61f1dbc085cc1acde5fe813a9c182f22233f9d769afeaff00127c6ae6cfc31a68d174c24a9bbb819761d3214e2b1347fd9f3c131cb35ff8c2e46b5784ee325cb2a2827af5a4eace1b1ecd0787a90bcd19adf1ebc1335c0b1f09413ebf764fdd8d86d07a0fa735d0e9f77f187c4110922b0d1b44b793ee998876c7a71d2a8ea1f04fe0b3293697963a3dd1e44b6d74a187e46b03c3be1bd5fc37adce742f8c96f736d09022b5b99015624f4dd42c4c9e8ca9ba1057a6ac6dfc60f0b78b61f847af1f116bf6773188430223f9723bd7c53a2b02eb63a8eb76f6a262ab1b29c0c1c60fb57e85788a41e23f02dff877e2047f678a78b12dcdb02c841e847ad781f8b3f6797f0fe9b1ea9e16d360d7f498a3f317cb3fbfe99efd6bcfc651f6dad8e286224e5a9c7e9df0cbc1d16813e9b3dfdd6a57779030568a369537107032071fa57cd5ae691aff00803c486d2e6011dd5a4be6da09c004a83c8e7b62be8297c43ae5be34e3792e931afde8150accbec7ff00ac6b9cf1be95a77897469a4bc49e5bd850bc374edf3360fdd3c67915f43c3356a52fddcb63c2cf30f0ab1e74b528eabf13be15789bc356f71ae78264b2d6a04092cd61b4176eed843cf4abbf09be257c38bdb6d4fe1deb726b76fa66a3345fe951968da327380483fd6bc4134dbadad1959301cee50ddc7f881fad7649fd85733693a768d6496f2ccc92dc82d9395ee481c64d7e8989c0d0a9836d6ecf8ec2a9c710958fbd7c33a77c32f0b69e96e9e2f17e9020544bbbaf3090718ee6afeb775f0adac65bbd46eb4c78228f7b88c857000cfe35f395c7c4ad5638a0617f656be5a04511c396200ea6a84be36bd9a399ae357370655fba611839fc6bf28793255dcd9fa1d2c54e3151e87b1693f0ff00e1febd72358f86de21b294dc8dcf6178418e407aa8ddc038aec2dbc3f7d656eb1d95a2c460240b3ba62d183ff4cdfa7e46be54b9d66072929d46e2d9e1f9b10a6ce7b7435d7f843e3278ab4f922d28c9fdbb67230436b7326d619eea4ff8d15b2eb42e8d6359cf73d875abaf04789a71a278f74e3677b1b6d492e1b6051eb1c84ff5e6ba2f05786bc37e0591f51d38eaf3c2f8589a79bcd4933c8d849e95cceb5f092c7c7fa445ac446ff47d45173041330922248cf5078e95a5e18d03c4a2fac6c75bbb962974a58e3f2c826de4033f329c75c5787528b8dd3368b6c4d767d366f1e5b6af1c902c3a901119623b8a48146e46c70083dab2fc1be1fd66f3c49e24f0ff00882ecea315aab4903491e36ab648033ed57f51d22d8c1a9cb6f68f125eeafe6db23671b8050cc3f11dabafd2ac9ad3c5b7b3061cdb456d27a16da33fad72f22b9d119b89e37e30f8656baa4f0e97a599aca7bd956257872b80392722b38c379e14d72eb47976ddd85d42b69247905c11c97e79af61d449b2f10e973b821506403cf4af31f1e0b3d1750d6b5a9e20592da599327fbc302bb30f4d3904aa7badb3e3ff008b53e9b7de34bd8f4a8c8b4b56f25777760727fa5716b04687e651ef9157aea392e2fe7bd56c2dc48d260f3c926a17830492d9cfb57d96122a3047895657914a6103e404191e950c4c818a919ab7f62193202073d2ab491084963cf7aeb72ec172dc373d176e7156728796201f4cd50b6beb60bca1040a9e2ba824df363e54cf51439ab0cb9019a596282dade696695c2462304e58f4afb13e0dfc2b87c19e1b5bbd6e065bebf8c4d3c99e554f217ae7f2af0cf80ba2e9b2ebf1f897c445aded22c0b52c84a79bfde6e3a0afa67c51f17b4bf0e69915859cd0eababca09f3d00f22253f74649ce7f0ed5e462e35272f74da0ec6a43a4785244511784f50bf129cb34366cedc7be29f7df0efc017cc2e5f42bcd2d98615e4b765606bc4afbe2078aae1dbcff00124eacedbc8b772a8bcf4ff22b5745f8c5e23d2a6dc9acfdb6361b24b6bb04e474241c5703c04a4aece98d5499e85a9e9977e07b29ec6c3c4b04d04a448b25c1398d3a9fd2ba4f0cdd35ff0084f50b88e78ae03da31dd01eac08f4e9deb9cd0bc7116bd756da9ffc23db7cdb768644940313f1c915d38b4d37c12d67acd8db4b6ba7ea64c1716936782c3a8fc6bc9ab0e46d33aa33e63cfb43d72ca49364b136e63b4b139e4577da2f8e2e748b09f46d5b4f92ef4cb9072c9f33203c67d6bcabe20f83f53f0ddecd3e9ce7ecd70e658a607e55079c1ffeb566e8df105ad112cb5a3bfcaf97cf8f2777b7bd71f2cba1bdee8ef8eaf61a1db4fa7689ab5ca899cbc5e5c251c027382475ac4b5b7b8bbb8fb54d34cc437ccb2e4b93dc9ffebd49a7f8bfc39717b15d3c77b234677048e20338f7e94c935181b59b9bfb7b6312dcb1936175ce0f7c567384bb170a8a0cb914692dcc76c809679950a60f42464f35d95e69d65676d0dbd8e8ed299ae16390b303818e5bafad6369f3bf92b7b7b79616ac176a6e9d77e0f1b828eb81516ade21d2bc3b1a243ac9bc9a55da8b186e33eb5c9384bb1d34ea45cae4fe318a1335ae9ef74ad20995b283242807f9570b77f1f7c59f0eb56bd78b3a8e9a8fb63889c1007515bf6da82adb4bad5ecf107c1083cc04f3fcebc53e24cf16afe5c30a7ef26936a85ead93c9e3b57259a763d3a308d5f88ec3c53f1617e294275a3a57d8e628221dcf5c75af6616eba1f826263c4d068bbfdf2549cd78a693e16d3a2d4746f0de9d6c62591223213d59fa935f437c56d3d74af0aea6e8388b4f5b618e83e5c1af5b2c5695cf1733718cb911f2e5af8bef8da3dcdc5c36db68c907193c9c77aa56be38d42e6622296528d9ebd334b34096ba1dcaaaab9750b8fd4d7311c3b2656b4401b9ea38af6a76671d16e2ac7b2fc3cd7af2f74df10c5b8ef4b60e07d09ae3bc4d78752b2f32f9b25002a3af22b4fe0ec8f26a9ac59dc4a30fa7c9b80079208ac6d5adf369298c9230c0823d33fad74e19a4f438f13794ae7d9ff03ae21d43e18e8f7070f88b664fb1c62bd0618e04ff00964bcf5e0578cfecb9abaeabf0aada089be6b295e375ee0678af618d9b7726bd48e88e392e871ff1cb467d63e19eaf15b2e1e089a65dbc1f979fe95f0d6997329d85b73bb673927820d7e896a9025fe977b6120052e2da4420f7ca9afceed7e54d0759d4b4db640f2c33b2004fdd19f7af672cabef72f7326923df7f661f12c1a4f8ae5d06e6643f6e4ce091d474e2beb8b8b48aeed66b791014963f2cfd31ff00d7afcd8f02f8b47867c55a7ebaca7ce8e45c9ce4609e6bf44bc33e20835fd0acb55b770cb3c41ce33dc722b9330a4e3539985ee7805d4cde12f16def86a695844cc5e1ddc6ecf6e6bb1d12f1469576f380ad2e760cf2702b3ff695f0ecb1e9f67e34d353f7f60c3cde3922b91f0578b22beb6b6b633ef95be63938e0d2c1a5519126d1a371ae461e5862981c1258e7bfa5555f10c73c3369c54176e5180ee3ff00ad5ce6b5711596a53c6c42e1c9e0d656adaf27d9e3fb3c46320f2cbc1af5153b2b194a572fcb7d18d6ac0eec7fa522b1f4e6beaabbd39353f0dadac24ee680152bd4f02be28d4ef25545d46d2e1184637b17ecc0e457d03f0c7c77ac78cbc370b68fab5b47a8da44b1981c11903bf4af371706f634a53b6e3ad351d43c2326a3a75ce8d7172258cb085133e6380463f2ae47e082c7a6cbad6abe22d1350d36ea7b877b74bc8c800139039af58fb4f8bd155359f0e417d327ccb242fc7a8e7159fa878aa19a6fb47893c23791aa0c10986191f4af1e5cd17a9dbce9ec67f84b48d4b53f1749ab6a76f0cd1ac865f3370f97078c53be24f862dfc59f12bc2d04ca8e964ed712861c60038cfe26ba8f0ff8ff00c17770c96d61e759f971191e39e064c201c9dc462a5f04c51eb9aa5e7896540c66262b62c3f83a93445376627a957e32dd2e97f0ef5ab9b58e1824366638dce07518c7e55f14fc19f07dd6a5a887bbd2adee2d4bb493dc2b00f0b16241c753dc9afa8ff6a1f1459e9fa3597864b8325eb608ce38e39c579a7c34b58c9fb569ee6d648936c8a8005900faf15d707644f29e8ff0a74c853c6f3b413c57a2ca301e654c29623a0e3b0eb5ef115bdb3919853dfe5af32f8408b39d4b506b6f2cc92e01c70700038c57a544487eb595495c93f253c1bfb42f8f7c16ff0069d2d2ca59b18267049c7e1553c73f1e7e24fc41022d675410444fccb6e36823d2a07f006ab19dc9a5cc58f00f9593fceb3753f067886c86eb8b39d41e83c822bd16ac6aa2730c870ca189c9dd96c9273d6b5347d7753d0ae63b8d36fa4b761c12a4f4fc0d46343d4c3736d20e7fba7fc2a55d26e22224962e17248a6a3703aa6f8b97f6accd716705c332e19989058fae6a8dc7c5ff0011dc47e569d05bdba93c907b7e55ca5c5a3cb0be22c9dd9e9daabdb584a53704201e82ad442c5ad4359d53577f3354b86964cf2dbb8fcaa0819e46314d18e4f0f93baafd9e89248e19f201f5ad64f0b3b30b86911517b679a7642d0c786dd5db62c5bb1d09a9069ae6412246aac3a638e2b70da5bdbaee8d813de93ed71dba92630f459750b99d6b642d58b9b73239e8db7279aded2ecec2d97eddacdefd9e323854e5ab1df55989c436e4127a8352476977ac5d47616e86e2e188fdd804e09ed5578a137727d57c51a8dfdabe8fa323c1a6c7f33927e79b9ea7fc39afd1af03cfe77c0af0e408850ddc5142475e323f3e95f025ff00c2ef17685a4cba9ded8f971797b867ae3af4c57df5f092e84bf0e7c19673c6302dc3e0f3f30e95e3e69517b32a0af2d49be25e94d77a3c5a74499f2de32303a800e7f5af1cf12685e54823308dc464d7d29abe906fa58dd46e232cc0f4038af28d5fc3f36ababcf0c6abb8485540ea07635f23093717ca7a74d6878c4de1c8831775c123a62b43e1d69f1ffc245a9e95282b16a164f103d46ec1c5775af78522d19e58ef354b6678903c91a8dc547bd725a494b1d7ec75ab4923f243e5ce3f848e7bd694e724f537691c2f8f74b090c4235f9616c6f271d3ad78df88a1bad415ed2d2da69a576d8a8a325c9e00e057d3df123c31717ba44efa7aa18c03246dd7afd28f837e0cf007863fe2a9f1d6b96f717c3e6b7b5550769ec7915ef60e8caba56382bd6861fde91e51f09ff649175141e29f8a226b65421ecf4c89412e7a8327a0fc0d7d23f0a2e34db5f8a561e1fd234e8e186cadc92d0a808bcf4e073d2aaf8e7e27e80b657977617733ce911587098fbdd38fa550fd9db568ee3e225b246db9e6b6324ac472589fd2bd1ab80a9495e48f1e59a52c44b929b3d9bf69abc61f02bc572b000a4381f400d7cc7ff04edd72caf6cbc4f65771c6f159c8b202e37630bcd7d1dfb52b84f807e2f51d7ecec7f4af91bfe09a718babdf16c0e49134083039e19064d72a8db43a12763ed2f10f8374df8af656d77a6f8cb50d3e08f21858c80723820fb75ae6aeff00677f0cdaa85bef13788afcb7044973807fc2be63fd9b7f690bef007c7cd7fe10789649ae34ebbd52486cddc93b1cb9c0e7a57dfb7fa75f6a1ff1ef2a8420360fbf22938a3784dc1591e3537ecf7f0be0b7cbe9da8c972ebb5435de7248ebd2bb5f03fc16f03787b488624d0e269436e6697e6627b7535d669da25fadcf9b78f1b05e07c8338fcab77615f941ed8ac6514b513afd0e73c5f65670f876e87901a248c0f2f6e4607415c4d8df4da4f87bfb5344b52eb1a8964b6273fbbc738e39c0f6ed5e9fa9c226b09e33b706339cf3dabca74af17785b4c2f6d7faf5adbb4398d91ce0607506b6a349d4d91cf53150c3fc4cc4f1b7c21f04fc5dd0d75bd1e4fb36a724659268d403bc8e847b1f7af967c69e0df137812ee5d335d88ac83e4425485913ebd8e2be93d1be21783fc21f109f4eb2f1240fa26b0a595778db6ee3a807b735d778eecbe1afc55d21f49bed52c9e65c1b7b95906e1201f2f7e6baa9b95077b0d4d62a378ea7e6ef897c393452c97b64b2adbce7050aff00193d7ad6cf85bc230e976bf6890e279d479848c955edce6bd17c73e15bef056b53e83ac44d208b2609b1949476e7a138ae366d5f632c71c679263208e9802bdfa79b39d354cf3560dc2b735875dca91a344a778231923a55484205d9113bbb16248fe74fb99a6d858c600154e3ba6621b1c8f6ae74aef53d16ed645b2b771aba4ca006c608ce38fad2c705e49b5ace7f26446dc1c1f9862a0b89a499776f2303f4a7dacd2c5002a724fad44946c38be567bafc3afda0b59f0b410695e2741716318dad70b979076e9df8f7af5487e3f7c3ad46e61b6875abfb992e0845816db1b49e8339af90524bb957721000ea0f20d5cd36faef46d420d5b4f82113dbb8930f9dad839e6bc5c5601557cc8e88d6b1f6d18e5bed40ea1704a0b35cdbdb6dcab6738cfa1fceae6933e2edee5a30c111a6989382d81915f2ceb5fb49f8fee6da11676f636ca8dba5288db9b07ebe95f4c780b5cb4f15f8622f13590571756a11a24fbcac571c8fad7855b072a2ef63a23884ca3e2d9956e34499863ed30b94c9c724645789fed4978f65e038b50b7944373330b6941fe2506be83d7b4afed0b2b16d462db1e944c8eedf2ed4009c0f5af8b7f68ef8863c59a8cda7c036d946fb2dc11d48ea6ba305879ce7731ab5d2d2e781c93ec648c9fe107f534e8e3595c8dc463a73c53e2b359af104871c638a2f2d6eade5285015cf51e95f5105689c7bbb8f16e3ab4ab826a0bb16db368c13eb418ddd020c820e6aa5cc0e723710475aa2c87644b9c255ef0e5b4faa6af1daa40a2ce360d34879fc31ff00d7acbb3b796fee041049231271f2ae475af4ef0ee8f0e8360f05bdb3c93c9f34d213c67db8a00ec5ae3ecfa7adb69f214b7da004418c91d4d511e7ca8ca55a48db18f980208fad66adfea055448bb101ec335694ef03f7ac41ea0714efe43b9a32b2a41124a31ea58e48c7d0d437735a07495a591b000c28e7155c1dbcb1240f539a1de49c6d83861ce0722b4566ac24d9eabf0c3e20f85b46d364f0ff00882f2ea388307826f2b73a93d40e6bbbf885f1e7c3fad4165e1bf0b5935e1464025bb5c61b380722bc47c21e1bd53c4515e269d6df6bba031147b39cfad5bb3f87fe2e6bf5bcd4ac0e9b05bdcc6199d880edb874af95cc61184ceea334f73e858755b6b8b51e1ff1458cd1b18958b793ba220f70d9fe95e7fe22f859693dd35cf857598620fcac5729b90fe23a57a37f6de9be22d44f84e182e94476aab2cc5721485ea0f5ae1fe15ea9a05dea3e20f0a78af5368e1b2b96fb25c337257d3f315e3fb5f66f63b533879be1f7c41b1b8dd1e996eea78f32def8608f5c11c67eb5565f0778867b9c5f5f7d8c1c861e78638fa8af68d57e1f7853532b2e97f1095180c8466200cf6e08fe559b1fc29b0f395ee3c616d3a0edcf3f8ee35a7b5e7e86b1517b9e7b63e1db7d2a252d7135e5d9f95379dc067818e7ad5ed774cd5b48b98ed2586256750ec1cfcd835e9b63e10d1b4dd6acae45dc57505bb79a51181276f35c0fc5af10e977fe228f5ad1d5e713bf932213ca63b573d5b337a6a3cfa1c3f88fc43e15f0b5a493eb2b34d732e0450c6ff2eeedcf7fcab95992e6e34a6f125f38b596727ec70f741ea73fe14df1ae9f0eabe21b6d46f6455d3ad93cc74fe2328c60564eb17da86ac549fddc69f24699e0281815e7ca8eb73d4a751535767d0ffb3669cde30f11d8dcddbacff6388167ea430af66f8d76a25f0b5f5aaca41ba94478c718ce3d79ae5bf643f07b681e11b8d5258f33dd924301eb5e81f12b4a6bf5b6d3970c07ef1ce7a1aeac1cbd9b3c0c7c9cea5d1f2a6afe1fb6d3d0c0c85c679c2d73e746b7460a101cf40bd7f1af52d63459afb5b7b0894bb83b14463209e9cd43ab780c68ea5aeb57b78252013181b9947bf1c57a5ed3990422b94e4fe1e5a9b2f175b2220884f0cb110403e664702a7f1af86ce9fa6cf70e7cb7f3186d033d493eb5d069da147a46a1a76a2804e826120b846f971d08aedbc6be088f55d16fafa1477263f3a3039072326ab0f5f967aa39ea413287ec737ed0c1ae68d2bb8025f35063b100d7d2a1cf9848e95f317ecd9249a678c66b49b6c6b3c3caf4e464735f4e178c395539c1eb5f4109a9c51e7cd59dc976f9ca11464e40e9dbff00d55f087ed07e18b7d0be246a56ad03c42f09943018c8afbba2b8301322609c11ede95f37fed7be0f9ae6c74df19db3aee85f64e4f5d872315dd839fb3a89983573e488e69628e41249f2a711b66bec0fd8efe2a8d6b48b9f07ea971fe9965cc21892594f4eb5f1a6a4c1eee4424ac240dbee735adf0e3c7b7de00f1fe9baf59cbb215c24e3a6e5079fd2bd3c6e1dd7873a326d44fd46d7744b5f11e853e997b10613c6410467a8af88bc4524ff000f3c5773a50322cb6126006180e9bb8fa71f5afb2bc1be32d37c67a25a6bba3dcacd0cb182d839da71cfe46bc1ff006b5f023dcdac7e3ad3ad8f996abe5dd045fbca3ab7e55e4e167ec65cac4f55a1e7be36bc99af975056062ba85658ce7d40c8ae4afb5a7b956066d8a00c0cd430ead26abe1a82137019edd7f76ccdc15f4ac0ba65784ef7c1000e0d7bbcc9a4ce791a361aec71349697ac1d2518193d33deae7877c5bac782f5bfb76837463900182df75c039e99feb5c56a0be52a32364a9c9e7b574b69e4eb7a42b46a16ea118047a0ae6aa9312934cf6eb6fda3aef534866bed627d16ee300323c7be0971dfe539e7e95d2e9bfb4f681a358dedff008cb5fb4d4238d3312595b90c71d3ef77fc2be55bcba4b6b81004c944e58f273f962b84f115e5eea3ac58e916b1031cae19ca8e71ef5e7cf0ca6ae75d3a87d63a47c54d77f688f145a687e1cd2ffb274567c4f294c4d2440f20e318e3f4afaf74bd32d344d361d3ed785b78c20231c015e1ff00b2bfc395f0cf868788b50b74135da0f280182063f4af47f8bde3fb0f875e03d475eb89e18a4f28ac019f96908c0ae0e4b4ac8de2eef53e4bf8ff00e383affc639618944f6fa7c460c6321589eb5d6783a6b0d3fc2535e5d7da4bb9dab1a463927dc1c8fcabe7ef0cebf3eb5afdd6bb76fbee2f67124819739058fbfa57bb693a25d6b7ace9be17d2dee625bc7499fcb3c22f7cfb66b79c7923a96e47d2df0a3498f4bf0758aa972675321debcf2738ebcd76823da7a118aaf63630e9d656fa7c20816d1ac79cf520727f3ab408c726b95eaccdbee7e413f89bc4231245e21bd8c8391871c55c4f8a5e3b68d2c1bc48248d7f8658518e3ea456ef887e126b7a2e9adab7d81ee34f452c66846e2b804f206715e52d2483514689e694c8088a3443963e9c0af51bd4e9bab1d35df8d3c4d2b9373a8c254765857fa0accb8d76eee15bcd990e724fcb8ae9f4cf85fae6a16f15d6a5673580906e592418001ef83570fc1ed3a46067d79e7278fdda1c7d3a55c6491079cade976215c107ae2acdb4eaa8015e3e95ddcdf071915bec576a4a8e15b835c6ebbe1bd7fc3c9e45ec3e5c5da41d7ad5b92e802cd76b0c4ac5b058e060f7355669650d89676527b64e39e95b5e15f0eea1e2dd4e0d134f8448d281ba52321071cd7d13a3fc08f0d786f419359d46c3ed17c98cbc92075c8239c1e31593912cf9bac74dbfbc4d96f04b28cf64269d7fa4dce9b6ccf7d673c2a480199302bdbbfe130d0ad2736f140607493684822da323a7418af58f02ae9ff112da5f0d6b7e1417163731ed3732c5828e7a11c5439b15ac7c6363a5cd7d79159db234b3cccab1a8278cf43c57d17f0dbe1d69be11788cd64971a8bb6f9e566cf3fdd15c2783b49b0f06fc749f45d467578ecae6482d1b00af1f741fa7bd7d10353fb4e9961e1f8b48f2a6175e75cdc36373396c8da4ff004e295db4338cf1fc7a86aba6eaf35cc46189606d9107fba00f7af55f805e288fc49e1df0e5b460797a5c6d1bb0f5c62bc67e3b6a565e18b5bcb0fb489350d59844ea1b2563c8f4e95d2fecd3aaae916302e408d9f1827dabcdc7d0954a6ec352b347d49aa5d4f74d3c1182ac63263c12067b74af33f0af8b6eadfc56da0788f4bfb2dd166f2e465e2400f1c9f6aef750b98fe49ed6da778e41b9ee2325f637a71d2b8bf1c4da4788eeace4b3d4c47ace94e25099dad229eb9f5af95a71f672699e9537743756d2211f11350b5b9b7578ef74d3200c33938ebf8578858e9577041369d0c72cb1c6f24b2bff00cf38c1ce3f2af769f5482eb57b1bd3728b72b6cf6eca783cf20faf7af3dd25633e16d4e39640d2ea972d6f16ee320b60f26baa30e6d9153a9c9b9caf84effc51aa5addf882089e3d260568d23961f30381c579d788fc41aa497f2c16d73005c312b1da00cbfa57d95a3fc35bab2f0adbf8762b2861b0f28392b36d258f3d41af3ff11fecefa6c923dcdbda5cc25f3ba48afd867dbad7d1e515e34a4948529e06b5271adb9f243eadacddf9af26acecc1554294c6ec67dabd3bf65fd6b54b3f8b36a97b22859d0a2e4726a5f1cfc247f0f233c0d7323292033a17c0f4e2b84f056a77be12f883a5eaa430f225da4142bd4f5c76afb9c5ba788c2f344fcbad4e8e63cb45e973ef2f8e5e0abef1efc2ff0011f8474998add6a16ffbb2718276f4af927fe09d5e0ad67c11e2ff001a68de238a486f6c25481959719017afe55f68f86fc596be23d26dae63b989262406da7b62a73e1fd1b4dbabed774fb0861bdb98d9e69514032103009c57c15ed3691f7b08bb26cfca99e18ffe1b463688e03788c1247fbf5faff6818409b4f445ddf5c57e39d9cb3bfed7f03ce1959bc44a4039191bebf62f4e706d7713c85518fc055cf42a52b22dab1200e94eda4738a6c673c8ef53e0118c74ac375a9cf25d4a579179b6d2447a3a91fa57e7dfc509ecb47f16eada65ddbb4ce2ea46e09dd82c481d715fa1970311e077af863e3f784752d3fc5ba96ba7ce9ad1e762c91300473c9c75af67248c6757959f2bc4bcea8a9419d4fc18f0cfc2ff0016d82dbea3e1bb792f51014f35981ddf8114ef1dfc24f1068d652ea9a75be9d676d03e63f291998771c64f6af27f0178facfc3da8db5fc0ceaa932a9ea4e3b8f6afb3fc0fe2fd33c55a219e170ea467e650c5bd7a8c57a19ce0a547df8ad0d384b1b3da6ee7c9daaea5adf8ef46ff843b50b38ae350850bd9dd08995f70e71d7b8af17bb8c5b1b8b5be8cc77b6d214955860ab0ea6bf45f59f0adb2bf9d660b487f783644372367db9e457c8bfb4278065d13c45ff000915a59dc449a967ed2aeb81b8719c62bc2a0ed247dae26bc6a46f1478b421e7575694e08e01e94f5b4f29006c64f4fa5235b48e76c24e41ed5661b1b899e31186761c11ef5eaa773cfb365532200576e4938cfb549192b036ddb9070013dea78b44bd93cc90c7b0293d7ad4f61a434976be7203e5e5864fa50d1432de6b88a344685707ae3ad5862b90195813d0015a30e9a923c93bc8324fdd1db1daad456b0ab8665048e9c50a370d8e7e6d3de58fcb0a70739ae87c21f12bc77e0369ad7c35a8347012311cc991c53ee551465140e3d2b2dd6592625cf001c62b2a942157464b95b54777af7c6cf885e26b29edf56d6634b5994aca228c21507af4eb5e11e2dbbb5d4ee176bb482dc6d466ebfa7d6b4b5dd62611bc304a3838201ae626689be6908466e4d10c3d3a51d11cb2e69caeccd9107caf0e7706ab7279d305257711c1a66e0186ce6b4ad2e82ae1a007f9d5db43a96a8c9b8d3989dea48e2a945a2dc4f383249852715d6bdd42d1902d482475c56e787fc32352297b2419894e4d1645730cd17c35a5e856caa96c8f3b8059bd88a199a3b8758c3152791d85745796aea8c6de1202fcb93ed5516cae970760c3f078a56ec3b99eab1bc4b0c91baef3c639ab296b1da9003924918dddeb4edec6e449b447bc0c11c679abd2e9b0ba892f7e520f1ef4905cc56b20c79e33e9490d8ac52952e5438c6e1d726ba06d2648c79a79471f2fd288ece37655923c91835a27d0573a7f833e33b6f01789d25d4e0636b32189a545195cf19e9d8d7b56a1e14b7d7b466d1f589ee6e2d65bb4bbb1b98b96383900e3a8af01fb3e21611c458607ca073d6bebcf85f6f64fa669175732c71a5b5a8ca9607e6e3d6be7b33c3ca72d0da9bb1c4597c32f17cbad4daae95ad148648041e49b70981d3afd2af597c1d3e13b3b9d474dd26cb57d467c9912ea3c8e793fafbd7b8dc7887498c8cdec381d3e61585abf8b34655664bd809231804578b2c2cfb1d90ab64795c9e0cd66e7498ef1345d16daf07dfb6f25405f4fad70d7f6baf595f476dab78574c92de4942b3460a9504e0fdd35e91e22d7b4cbb2c15a338e7ef1fe95e79aaa68f74eced32c4c723891b3f8734a38692378544ce6b5d964f0678aedf52834790429280c6399d93ca3d4e09c74ae435cd3e15d72f75ab64371a73cab710889f9562726b2fc6ba4f89d6f9d748b5bab8b7949da56566047e27a57231b6bda7c8165b2ba824030ca589cfe14a58672677d16aea46a78beea0d77ce9ed74f16f0a389141ea481c935c8e85b359f14d968b661e569e51bc73c7383f8574da7de4b75a75ee9d7db95e404c648c1cd6a7c0af0dc30f8d6df57921065597cbf9f9c8c8ae7ab49c23737ab51b5a1f747c3bd162f0bf846caca3f9008813f9562788279b561a97d86273736d1b347b4fde2055fb0bdd4d7c4674bd4e31169c61568c138dc48fcab9fbdbdbcf0eebf737773a3cd670b39293962caea0fd7a62b8f0cd4a4ee7955aef53cebe137881b55f1bc9a0eb567e45e231752cb8271dbd6baab9d2521f1cebf693dbc6d17d8d98968c31c9c63ef0aab7c9a66a9e34d3bc6be1b9236cca23b9f2c6ddb93835d7eb5044b75ac6a727065b6540f8ee48af4d593d0c7da34790acb1e83a3e1b4ab8ba81a56dcd1923683d00ec39ad7f879e29d76feeeeac753d3da0d3228cb4424396287b735d76ab3e87e1ef07c09a95ec568d7f20daac01257b9fd6b8cf13f8cee2db4b3a47c3fd025d45e51b65bb61f2018e4fe14d5a3a9a42ef4666dac91f85be26d8df68c125b7bd39001ce32791f9e6be80f0ff8a86b4d3dbdc5aa43346c70071f8d7cc3a10bc6f15e890cf6abf6885b32b21c8c9ebf957b65bb49a56bd1dd2b1db2bfcdf89ac7fb45d2aaa1736ab848b85cf4c8db70da0fdeac4f893e1287c69e04d57c353a02f2c2cd11c73b8723f5ad98c06457cf519fceadac8a14190678c11eb9afadc3cb9a2a478335cacfcb2d6ec352d3afef345bd4567b1731648f98004d73f3c8d1d9b4ad85d8d8c91d057d05fb51f80d7c2be389f508a2296bacaef0c380ae0d7cf1a8e99a8caffd956ab2dc3dc0c46aa9924d7d1d1af19d2e5918b8dd9f477ec9ff0019ef7c17abc7e1fd4aeb7e8d39e327a31fe5cd7dc7a8d8e99e2bd067b295165b1d46228c3820ab0eb5f91de193abe8ad3695abc335adcc4df7641b5bd88afab3f67dfda82ef42b8b7f06f8da7692cbe58e0b9909ca8e83f2af231149427ee8d44e2fe28f81753f851e209b4b7494e9cb23341b870509e00ae4e6d634d9d563231e6824053f74815f767c54f873a57c63f053fd8e48a6b8f2cc96d70b8248c640afcf3d6e0b8f0ceaf7fe17d5ed9a1bcb29302561825735d542b73ab19ca9ea5e92e616b1f30ef6cc9b0f7e2b4742bd9aca6516f1b32b8c10793835aff0cbc39e17bad4a18b5d97ce82e082ca64ee7f1fad7d0fe3cf833f0b34ef009d6f4c8574e9c266370e72e7b71df26954934c874ee7cb9e2558ed4b5c2b3658724fa56f7ecf7f0f27f881e3f8a71034d6b1b286207ca077ac58fc3fe32f13eb90f866ced6517373f2a6f876feeb3c1e71dabef4f821f0ab47f83de0d86058a2fb4b4625ba9c8c638cb735cd52b5958d21068ef560b0f0e68e2dc79505969d07ef189c6d0a2bf3b7f6a6f8dc9f13fc5e7c3da55d37f62e992740df2bb8e878af5cfdad3f6a084da4fe06f03dda389018ee6543c608c1e9f8d7c59a4402e0c93a32bed606461c96627f5ac68c2eeecdd267a87c3eb65935cb496dd8f968a5dc0e431038ebef5f6cfece5e11b988cfe2fd78efbb9cecb6da7858c1e38e9debe45f853a74b26a368aaaf2cbaa4cb04517901f6a8c127a71c57e8df85747b0d1740b2b1b6b748fcb8941c26d39c73fad3c54b4b22f635ce0b972724f3ef4ec13c126981463ad4b5c49d8cdab9f257c1af0c5cc973f66bad63edba7cd6722dc5a4e7e528508279ef835e11f083c09e1fbef8fbac5a858dad74e5b96b2849dc3cce800a81bf691d56cf4ab8d13c1fa7f90b2a792d2b91bf0462bcf745d5f5bf0f6ad1789f4bbf36f7f1cc5db1d64627919f7af4791a6746da9f5c7886df4e87423a65cc970f793c7317dd03158ca0e067a0ebfa5789cba75c2b453c77023c45f311d37027b0e9c56fb7ed07a0f8a3475b4d6d6f34ebd4c2c85002af91c9aca7f147836e6336d0ea09b5b9dd839e68e5b3b85ee64cc6e4c91b4d7c251fc583cd67eb16a1345b98f57904caf19652e3ee9ea2adeafe20f0769d0058ae1e494027201e4d79ef89fc5f71acc2d6af98e00df211e95a586765f006686ddf538c3a9bf2cb244a0632808c8f5e95f44eb7aa5c5f5aea165b2ce1b69e284c4892aee5c3024919f4af8934fd62facb53fb7d84ad048802a303e9f4af58f0f7c76f14e9965e45de8d6777f26df31b1923d7f95270b89a3a9d6f499fcf68f498634944a5849c65ba5759a2fc4e4f859e169b53f116a51cfa84a8e2dedd5b2770e878f4cd7886b3f1735ed525736b6b6f69b81194238e6b80d42eafef2edae2f2ee49d9bfbc72003d68506982459d5359bcd475eb8d727b9916f6f273764a93f2963c7d38c577117c6af1bdbdb45134f0b4e8a1629481bc10300f4af3b8e29092c14f239247a74a91508383d71eb4dc6c237db53d4f5dd54ea1afde497d780ef91d89af5bf0778a2d743f0c42f752792cf709b327b1615e2f6937947799d573c73deb774a98eada8d8593cfe7442ea30c99cf0585655d254d8af79248fd12d3b4917de1fb5d6340d5a686e2781199a304a671d0d79ff00c45bed4aced8af89f4d8bcd08c6d753b75cf96c3fbd8e467fa573de37f106bdf0ba1d3a0d1b54945bcf02911e321781c57986abf1cfe231965816f609616f98c53c25948faf35f01395eab47d0616873c6e695d7c5cd97b6f35b4612ecc5e548ecd8562380467d45775fb3f5c0f1b6acd2ead6d1c9a66821ddd9f1b59c9ce7f3af9a7c4ff1324bfb837577a05a35d202372a6d15f527ecb7a3dcea3f0d34fb8b50b15beab3b4d724f19e73b6bddc353bc55ce3cce3c91491edd1eb3ad6a9a8c30e83e5c7a5c0dfbd62700aff005addb996d630c924a818a9765dc3a77efd2b9cf10eb3a378574e6b7cc36b05a46ccc18e0c98072063a9f4af97b5ef8bb79af6af7d7cbaa7d96d2dd4194873e62c6186100ee49c74ed9af4a8c145a679b2c1d4952e747affc41f11f836cfc3773e21b8d5e2fb12975f2dd86fdebd702be60d2fc31e29f8bfaf4979a042fa768b14bbcddca854b00780320558d5f4df107892e74ff001ef89acdadbc2706a0914709076cbbb19622beab3a7682da2db8d1e18adb4e7863f2fcb000c11d78af6e58d71c3b8459f3d4b2d4b11eda48f337b9f15786ed74cb2f0c4b3cd189d20ba214f23a16fc6be96d02f623a54705cdcf99346a2397206790335e0d26babe19d467ba4469cd8155995c70f19e8e3d78af42d035cb0d62e1b55d02eb7f9a03cd03119c6323f4af95539c65cecfab9d4a7562a103c87f685fd98b4fbef19f873e2e7802d55351d3f54865b88a3182c9b81627d6beb7d20ce74cb792e170f246a5c6318200af973e2dfc4bf12695e28820d135dfecb8a001655b8898a48c7042f03bd767e0efda161bebcb6d22ff006dcc8916eb89e03845007bf3ff00ebabfadddfbc6cb2bab28f323e848b000c8eb53f18e2bce4fc5ef09c5649aa9bb263958a201c82476ad287e26e8575662ed6e5510f50722ad54848e4781af7f84ebae06216241239e95f39f8df40f1045777faee8d9bdd3dddfceb665dcf8cfcd8ef5ea7a47c45d3751d42ff004f37caaf14425419ea84706b0bc31ab5adf2cfa9dacbe6c7248635ca9c31cf279ebcd7660f17f55a8a48f2332c24654dc267c71e2cf0dda0bb9756d274db894b921ac509428e78c9c7bd27c31f899aa780f5b547e2d95846c8242fb49eb9afa0fe39786349d345b6b5a74021d4a79954c6a7fd68ce49c0af9c3c53a12dacef796b0ba9199258f18f98e066bee3eb31c7e17dedcf9cc85fd4315c953e167dd5e12f18c7e2cb082681d15248c311b86e2715cffc65f0058f8cbc11a8c72c01ef6d2232c2c473c649af0efd9cfc5d35b6a634cd42e967338fdc3f99c47ea315f56a40f730949e58e4496228483c1041af897a5468fbcc6518d369c7667e6ec36e56465fb36c923768d971d4838ad4d1ece7b6904f24230a4f3f5ae8bc73a1be87e37d62c5220162bb6f287b120d436f6e1a33c72793c577d296872cb432cd8995e421c8dcc4ed14cfecc64e7041f535b91da61812791eb535c5bbcb17eeca86c5697d4ccc078fcbb62aaa339ea2aa6f2bf375c56c5c4256d9c3fde5eb59505bcaf2962c3663a1eb9ad531bd48ae2e0051bba7ad566b8b71637576cc079711c1fc3ad59bd80c9032226493d476a8357d0a6b3f869e2dd7de16d907970447d18e33fa9a86eda98cb5d0f269b50b79c82240d24873b54927f2ad38fc37afeab1a4d65a26a52a1e014b6620fe95ec7fb1cf817c2baf5deb1e2bd6f4f8eea3d3c7951238dc0c87807f3c57d9766208edd20b5b0b6822030a91c4063d335839f992b43f3660f857f11ee18b5a781f569113a916ec383d3b53b50f09789fc3711975df0c6a7631804992681957e993c57e9e69d05c2a020819ec140acef1ff00846dbc6be12d4f43d42ce1943db3b46c5790e07151f58e5d0b8b727a23f2ea5d41448a4731103381ce08aef7e19df4fa869735ac5900b9f988c60571fa8f87ae2c356bcd36f236496d2e5a1550a7900e00fcabd73e1ee829a6e95b9a32af2b72718383f5ada33535a031c6c136ac0b9273e9c1ab29e1e98c414b2119ce322ba07b00098d63191ce4524f64a36fcc41ea6ab54cd3646526982d133c73e950c96d299048b0893d030ad9b98e2485155ba8ef4c4495103478fc4534813b95a3b73241be650a4745aad2f956ac09883127d2ae3f9e01dcf9049e07ad577864b870cd190073d3a8aa404acb3c9187842a64763daacdabdf79586d5aff00692155124207f3a9ed2c1268b2e71c569da69902451b87ce0f19f5a974e33f8839ac528adef37822f6f80f47949ae934d9da1454926964f52c726aac91b48c0938c0f4a9a10636011724724d47d5e93e827368de0f0328da0f3eb514b6363246d235ba3c8476c74aad1dc48fc30e9c54a933646c6c1cf38144f0b4d41b48ca3564a6786fc719b55d322b69f4cbfbbb7546c158988c035e571789fc408a4c7a85c492b75790f38fc6be87f8a1a441ad68d7ca46e9114b29fa735f3a4761748de4b445413c9f615f2f29463368fa6a0f9a08d0d1e7bebbbf5fb55e3b29605c8ed93cd7a8699ae41e09f17e9f299165d3e74468d81c956e339fc6bccaca0923056d865d8ed2715a377098fcb86e8b99081b4f615e7621dd1dd0a329f43f4356e34af177862d35049fcd668d4868cf2a7ffad5cedd5c6bda1877b4d417528621936d70c39ff6466be57f087ed03e36f875a4ff0063436f14d10395328dc707b75a4befdb27c4703389f49b1724f3f277ae3a3869d59fba8ceb619a5b1ea7e22f893a0d9ebff68b7b192ce67ff5d69c6ddc3a91cfad4373f193ce8a1b6d4a458ad849e6ba6ffbeaa381c7bd7846b5fb565b6acccf77e11d3da4c11929824915ca5dfed251070d1f83ac9b61c81806bd2faa558ea723a563e9bd2bc7b178b7541ad2690357d43262b2b691710da463f89b3c735b7aacfabf94b71aa6b1e59c65ed6d2322203f0e0d7cbfa47ed57e3991841a2d8e9f648e0290b6f86dbf857a8fc3ef11fc41f8937d0d9beb7e4dbbb0df1edc6727903d05706239a92bb3aa9533d7fe15f875b56d667f124d079704436c04afdec77e7debd075db57d8c631820ee047ad6be87a65a68ba4c1a65be4f948149c6327b9fce9d7508955c119cae2be66be25c6aa91ddec79a2ee5ef0bdec97ba647e61cb20dbc9ad82a4f7ae33c297b2d9ea1269f212109e01aed01c719afd1729aff58a491f2b8da2a9ccf31fda4be1ec3e3bf86f773db44a6fb4c1e7a71962a3ad7e766a9a8df6877ba66af6eed14f6572015e87208c835facaf0c1710bdbce3314a851f238208c1afcebfda8be1349e0ef1add47bb165a8b9b8b6650400c7a8e95eed39fd939123e9abbf839f0fbe3e7c32d37c47736715aea8f66acd776e0025c0e4122bf3ff00c4d14de1dd4358d21ae2495ac259218e463cfca4806bee5fd87fc54da9f846efc1da95cfef34f67318279c102be37f8f3a62699f113c576709e3ed52b0cf1d5b35177cf60b1f627c16f8a1e24f047ecb169e2e6865bcb80988cb124815f2778a3c483e2a78bafbc41e2895ad650bbd55063cce7a1afba3f66af0bd8788ff0066fd1342d4a05786eed4a907180c41c1fcebe23f8abf0ff50f02f8fafb499222b14729319e9b949adb0d25ce396a8dbf853a4f826ff550b6fadea3a7bd99dd349c8e0761cd7bdea9fb49f80b48b783c3d1db6a9ad476b852d2a70cc3bf35f367852c27fec9bf921550f2c8b1839c1c9ebcd55b7b332ea77104c33158464962782fd6baaac532630d0fb3356f8cdf0e6c2cf47d6e2904be20d45512d6c42ab48b9e003b6bbff8dfac6af6ff0002359d46256b5bc3606470a705095e457c83fb24780ae7e22fc58ff848b5452f65a3ff000b72370f4afb53e3e42937c1df13441701ecdc283c91c1c57912769f29a28a3f2812d756f17eb7a6f866d67ccbab4e9134e792bb9b04e7af7af49f1d7c3dd03c07e2ab0f08684f2bcb6888f7b3750efdfad3fe0be8763a67c44fed8d41556d746b396f2467e4655723f5ab3e1f37ff001135cb8ba9c9f3afaeda45de7e62b9c01f957659462369247bc7ecabf0fc6ade346f12488ff64d3571106e06f3d78afb514ee6caae07a579efc17f045bf833c236b6ab0149a650f21c753815e88aca3e507f1ae3ab2bbb1048be952544a41352d62c83f1ce2892dca344b82700fbd5b95b7c62323e51c814515ebb35456312ace88790e0e6a4541693930fa743451490caf75234d2348e7a8e9591732348850f0334514ca436019239e95b564a5954163c9c1a28aa444b722fb246647238c31e82a48edd01e4668a2a993724915638f2a2b06fef248f2cb4515122915ac2e65ba721db15eb9f07b4fb3d435b8fce84031b46e08ee778a28ae5c57f0c887c67d31f19e5fb75ad9a4e8a42c400e3d00af9e357dd0ccf12b12833c1a28afcfe7fc57ea7d960f4a479c6bf296ba750301b835fa15f07ee6d7c19f03bc33159d8a4c27b68dfe66dbb58ae734515f5186fe1a3c9cd55da3cbff689f166ab3e9b06991c9e509641fbc53f30ae2fe12785ac3c6fe2ab2d1f59e634fdecce8a019c8e81a8a2baa9367b34e9c7ea17b1f55f8fbc11a1ebdf0cb54f0d0b75b6b5b2b532421141dae0706bcbbe035edc7883e1e4ba36a7234bfd972b5b47293cb007827de8a2b59fc2cf97e54e9b17c4e565d4ada4645db0c8da6cc9da68db1827dc678fa5797789358d6bc07a45bf88bc3fa9c90cfa65fb58b263e59d03ed1bbf0fad145713f84f122dc6a687b178135cd3be2edb431f8abc3d6d24c843f9a1b393d01c11fd69754fd9f7c3fa441aedc68fabdd5ac976bb7704076027b734515c15123ea7055aa7b35a949fe1a2e9fe01d3ace3d76677b5596512b4432cd818c8cd67f80bc25aa6b9a3dcc77fe279d8babae44206dffc7a8a2b1a7b9e973cb97736f5bf0427c3df0b2ebd65abdcdddfdc98ac8cb2800043c74af47f08da4692369b6ffbab7b68632100fbcc4024fd7268a2bd0a1f11f25987bd277ee7137665f15fc748b4cd4253f65d314f95181907eb547e38f82f4ad3ae22d4ed14234cc51d02fca460ff00851457d3e0e4f6f23e6b1314aa5cf23f00d92c1e298e2b6658a3cf455f9873eb9afab7c1f7932a9b595de550cbb496e4514579953f8ccfb2a9ae1e0d9f3afc79861b7f8997cd14606e11b1fa915c85a20219bd4d14574d36713dc74b953907bd42eccb229ce79a28add098970836371f78735997bb235895230323ad145691119370ee903b2391cd7b3fc38f08e9de3af82fe2ad1f54665472d2ef50090ca320f3f4a28acf15eec6e8ce3acd0dfd963c076be11f87d2cb6f7cf3bdfde33c85931d18e07535ef9a4a93236e6ceef9be94515e4f333e8150a7c9b1d125d8b1b6697ca121f738acab1f194971a89b43a7a2ab020fef3b7e54515cf393261469db6097e157c3dd4279b55b8f0bda35cb132b395072c6be62d6fc8fed6bc782da38638e6789234185001a28aeec0c9b7667935d24ca9e7e33841961c9a6f90b265998fdda28af55ee631f84af25bc6caa48e82ad41651bc382c4734515321ad8960d2edd73924f3de9d75690a23155ed4514a2319670aecdbdab421897681d97a514532596d9432e3a71446814814515227b16a28f2739e9459b150e475ce28a2aaa37ecd9850f7aa6a729a9a79a753b6724aa86c13f4af18bc292c820f29546f2323af7a28af83c437ed99f5f878a5143ede08eda3dd1a0ce6a1d4d0cf2c2646ce08c645145613d8f6307b92788edfcbb0deacb909dd73dabc875052659246209c9ed4515eae57f11ae33e139fbc5172d87006de9815585aec7c890f3ed4515eed4d8f0e4765e1bb58731c8514b0239c57d57fb3cc69f6c4971f30239a28af8fcd36674513eaf500a8fa0a6b2e01a28af87c4fc47a0b639dba76835ab79623b4b30cd7791b12a0939e28a2bef78664dc0f9cccd2b96118b000d78dfed53e0dd2fc49f0e26d4af32b73a59f3219140cfd28a2beb96e78e7807ecdf7f3689f13b459ac4944d4610278c1f95abcf7f6d1d1adb4df8b7ac7d97e459c091940ee7ad14547da03ee0fd9290afc0cd03e6ce6dc63dabc63f6d9d1ec6d35bd3b558e15f3a650ae71d79a28a74bf8834790f83fc3b6d7da0f9cd33a1598c9851c1217a573579a55b1d3e7542e8f77248eee1b9e3a0a28aee93651f647ec55e16d3b42f866d7f6c375c5d4acd248ca32dcd7a0fc7999a2f853e20dbdedd81a28af36a7f1068fcd9d16eae1e4d5edc4aca9771885f079db919af79fd9bfc1da6dff008dacdee39180400bd36f4a28aea9fc2819f77c28b0c6624036a600fca9ea01c7bd145714b533258c6335351454320fffd9, 'Michael Brown', 'CrossFit Coach', 'Michael is a CrossFit coach with a background in competitive CrossFit. He designs high-intensity workouts to help clients improve their overall fitness.');
INSERT INTO `trainers` (`id`, `photo_url`, `name`, `designation`, `description`) VALUES
(11, 0xffd8ffe000104a46494600010100000100010000ffdb0084000906071213121513131315151517181818171818171e181918181f181a161e171818181d2820181b251d1d1522312125292b2e2e2e171f3338332d37282d2e2b010a0a0a0e0d0e1a10101a2d251d252d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2b2d2d2d2d2d2d2d2d2d2d2d2d2d2dffc0001108011300b703012200021101031101ffc4001c0000020203010100000000000000000000050604070001030208ffc4004710000201020305050406090205030500000102110003041221050631416113225171813291a1b107144252c1d1233362728292b2e1f0a2f1152443537383c2d21634445464ffc400190100020301000000000000000000000000010300020405ffc400281100020202010304020203000000000000000102110321311222510432416133811471132342ffda000c03010002110311003f003fb3f00722e93a79d72c5ec0b2fedd946f341f38a2db3af81694b100471ae3776ca6b95879d26c942be2f73304c75b593aab11f0e14abb6f74f0c9fabbaffc401f9453bed0db512743d4d00c45b6bdde2aaabcd8f757e3c68a06c43b9b175eeb29f8542b1b359df22c4eb3ae800e249e4053f26d3c061ce9188bbe2da5b1e43ed572c508b4d72d8efdf26e3306c8a109e03303026780f95472a2f156c5970b6adb2da708f9649905eec988194f716274f5ad62eeb0c2a23710c4152e148fb51946bac8ebc6b8e0316987170cc5d3a02833301e21db459f10b3c351ce0a61defbfda83f798b9f791535cb19ce9038f391ad74b18b7b673231520c820c1a3373637660cc93974304af493e3a507bf60ae84cfc6aca499570683b676a0baa6e5c725868c58c93e5512fed39d1167ab70f750ec0019c2b706207975a674d9683871f134748a301dab1718c927c7c07baa6aec946d58b1279ff00bd4f38322b577301a50b2022fec703d97f788a8cf80b8bc0fb8d1279e75a832409264f0a964059bd7978c9f313f3ac38a5e683872d28ea605cf1ee8ebf9578da162d29cad058a2e531c4c19ff3ad4b440267b47991e7ad60b63ecb0f7c7ce895fd9d68f0047afe7506e6cd8e0defa96827339c78fcebda5c263a1ae270d70703ee35a375c7113e628d009d7b1000135aa1ef7ba56aa510b3ac6d4cca4dcbc4857745506745301bc04d18d97b3b13888ecad154fbefdd1e7aea7d07ad44c36d3c160101160e23111a91aa03d1c80bee06826d8dfbc65f3adcb9653ee5b411ea665aa9b6019ae6e9622dddcf6b136ee126596e5b2510f0d0e6f8544db9b3f1407e996d5dea2e151e885728a5bb1be78a4fff00214fefdb23e42bde337c6fdd10c6cb79183f1a94c846bd8446601b0cc2481dd2a7a72344b7c2c8501104c281e10565405e66358f3a00fb51e6729d35d0834c984da5f5855bc5e6edb233a1033651a6780387031e24f8eb4cb6b63b0d374c5cd95bb175c8ed1481c04e9ac4ea0f4fc29acecb5b30a8926019f0d4e823970d4d5957765029da1caa099d34d79c7bb8d2def7ed3c361d428234d091c58cf00389e54a93948d705188a58a63df1d001d39fe74a5b4700e25b88e7e3c79d16c76f30724855404e8225a3af81aed8756742ccb0a7e35237004ba67c0ab87c106cc4b15551248126661547527f1a3471cd00cf11cc7a1f8c8af0b83ca971438cca732e93988d42f9f18eb537116c2dc417173900671ccb190787113ef83e34e53b6679635d36716c4b9202ae6900e80f3135dede02f37b402799d7dc2bb1da375884b16824e8044927a2a7e7467676e06d3c4ead6ee2a9e770f62bfcbed1156102fbd9b16ff00597331f09fc06b5e4e30ff00d3b71d5bb83f33eeab0ecfd1c60f0a271d8fb56bf62d90ac7c99a59bf96bd1de5d8383ff00edf0ad8971f6dc693e337787a2d4a2085b3b63e371462d25cb9ff8d3ba3cddb41f0a644fa1ac65cb6ccef6ad18d05cb85c8333a9590be86a46d4fa5fc5308b296ec2f01946761eadddff004d24ed9de1bd893fa7c45db9d19c95f44f647a0a2121edad8973077423622c5de33d8dded008d21b4194f4a82d7ab4e88783d716b5e0c0d421ed9eb2d9e935c1948a91b35336699e551f04472720f21d34acaed72c80c401595130d0e786dfbc75b50ad63301e36b37c562bdb7d215b3faec1593e76cafff002a59b5b630bcf0c07ee5c74f95484da5833ffeca795dce3fd628d2f0503a37af65bfb78241fb8f1f80a1db5f17b36e47d5ed3a9e6199587a778d42b8f856e1887fe3b28df28a8f89d9f6c12a1ad338e2bd9143eb0d02a248844bf61795a81e3a8f9579c3b0b6640753c2751e93d6b5b631d79bb8ec32a810abec8d3a71f5a8b7dd9802cc5bcc9a35e4859989df4b8f86b08a9da154097086ef160b1014738d679d0cdafb2ee622c58c5ab40b85932b08652a483af5e3eb4bbb9db4530f8bb2d727b1cd96e09fb2415cd3cb2921a79455abbdf76c617036ecfdaccceb027dad499d67fb5669c7a59b714ba95314361eea080cc0301c4ac1275983fed5d36f6275c8ab940e553b73f687686f004a5b805731e2dcc7cbdf41f6ddc19cea0d52ddec7692d03ee5b903ce687ed8561172788018ae910790e4351eea9c2f807a562b06b67c38fa7fb55a32a762651b5410dd7fa4cbd81c39b366ce1cbc93db3a937082661a08cd1ca7808115176b7d21ed1c44f698ab801fb36cf66be516e2479cd2ce299918ab653cc12bc47235c0de5e68be848ad4918d92df1ac4c9993c4f8d727c56a6b87689e0c3c8d69f2cfb44798a243a36234f7fe15e05ed457365fda1f2ad2a19e47d6a10ccf5d16d1ad2d83c634d3f1a936d6226830a3c148f13ad13d8b683768672c004753ad40b9713c79cd4cd997eef7fb252d312728d38c6adc39d51a741b276330e835127c4ff00b56570b897989572a0801a19cb0d647b2b0395650afb0d81df02e38a30fe13f95707b51c74a71c3ef938d1b07836f2b650fbd4d48ffeb2c39f6f6727f05fb83e074a65837e042228a60f6b5cb76980d496d49d797c698711b6f675c1dec2df43fb2d6dc7fad66b9aff00c3590c1bca09fb5694ebfc1ad4b03402c5586b90d20e65127fb571bc9063c34a3572d5a0a16db3120820b29595d07b274ebeb437136fbcc7f6a83604448ab1b72f7b8361df057d4dd62a16d8d333a6a3b396d2469afddfddaafcad70b848208d0f4e23d6849292a2f0938bb1d76d975b8c84dab32754b473b28e105ce93e43c7850fbc858ccb651cdbf3e753f646f4da6b27b5553890c25d809b89d18fb2c398e7c7c6b9ed1c35eb882eb08b6daa7ed03cc788eb596569d3372a9ab405c55ccc428d07ce88da2157a4570c3e139d4bb96732340e02a59281f8bc0f68801d089c8d1c3a1e9f2a0188c25c430ca4758d08e1208d08e1560dbb96ed614ddb9ae90073663a051ebf89a41bd887772cda927872f20390a7e0727cf066f50a2bfb23a249039f4ad941264c515c0ec7bd766e5ab4c429d4880b3e12c449e8285e32db2bb0604193a1d0d3ed5d19e9f274ecd6260b0f75794c565f6540ebc6bbe1ac335bd04ce6f8004fc2b800a6047bf49a803cb6258f3acb5af19359da81f647f9e75d16e31e1140876451e544364626d2b10f273150239192249f5a1614f8fb8518dddd989759b349cb9635f127f2aa3a2cac91b41eddbbae5b3e5ca9ec341925baf0d2b2a76270e8711715c0205bb7a1f36acaadaf90829307358f80a71b5baf89035c3ddfe43f80acb9b0ee8e366e0f3b6c3f0a631b6844bb858af56f1cc96bb3096f8939cacb79718f8532e376511f648f3114031d84ca0d553d81c43181c316b68eda9e5e9af2a078dfd65cfde3f3a6dc1a22e5048828b007192071a59c791dab8fda3f3aa9406621e04fe35c1afa9e9539974d418335ac06c1b97982595663f68f0551e2ec7441c7527955d501d90ec582e72a8258cc0f49f949f4ab6b74b671b9b3175ce2dbdc55fdd04661e598b11d2294f773662b38c3db75cd71d6d3de1a8258c85b72077154179d0b109c1626ddd9f87b781b2b86b4a4db9d736ac64ead3e33cbc297ea351a63fd327d56855c2eed8b98666411ae9d6a0603649b16ae35e10066cc4e8a14739ab4ece192cd92272db0598b1d0004ceb3c00154deff00ef5fd649b367f52a66781769caac7a4f01d09e310bc582521d933c62276dcda0d7da1415b6ba2af9f163fb47e03d6b5b1b64bdf75b76c778fb82fde6f01fe7122bc2da0015e6181f31c0fcc7bead9fa1fd8ea6cddbee3bd71e17f7174feacdfca2b64bfd71d7e8c50ef95c89587d8dd961ede1cb4a2a856655cbaf36d678993eb4b1bd5b9d6ce9da19fb2e575f231a30f75597b4ad800a788a59c5a9b960cea5254fe1f0ae6db8cace8d4651a655d8bdd5bf6948ee3f13dd3a91a700c04f909a5cc508356d626d67c3a3731227c8c528edfd942e00ea0073f13e07f3ad10cd6fb8cb93056e226cd4ac309a8ec6a6618c09a7c8cc890aa28f6e5da05eec8e4bf334bf6dc92078d32ee82957ba06bdd5e3e7d2952e0bd12820faddd03feddbf9b56eb5b6af8c3b9bc4662e15201ca34933ac9aca1d2ded12e8fa29777f0d1a5a03c9997e46b7ff0000b3cbb51e57ae7ff2a236b80f215eeb40a049d836fefde1ff00a84ff54d227d216eadb7c92f70e8d13974e1e0a27d6ad1a50df85d07afe141a0dd156e2b63322a315e4a0790d3379d266d2b23b57d3ed9fc6aefc2ed556b987c29b524d80d9cc308194464d3533c49aa5b6d98c4dd13c2e38ff5114aa2d1764fdcadd7faf5ecac4ad9b633dd61c403a0513cda0fb8d32ef7625553ea385516edaeb723801c72b1e259bda627588d75146774ed8c26ca57806edf39d41e6cd22dcf8a8419c8fdea56dacb90112492496278b31d493e669b871dbea7c20ce54a972c178071699321d6dde56b7a4977506e3961e1100f86a07468c3efed9b9795c5a78e25641131c8f18eb148452e9b83b304b00caa0093a839881e275f414c5bb3b271185b6cd7132a31cb9580963c781d401f8f5a6cf1c323dae0ac324b1f0cedbe7bcd88c5b1b53d9da04028a74cc7bc4b37da2abe80b0d34a54bb6b8e9a488f20200ff3c4d310c119f192c4f99326a26d2c2c2cc682ada5a4069b161f893c8027fcf88abfb7370e2de0ed202014b6baf898933ea4d506c07e9263503a713156fdfdac2d00434a7091c878d64f553aa34fa585a90c38eb9333f0a0787706e5c4e4eb3ebc2b67690649cd3427158e0ac8dac83063c2b25d9ab83c27ea1d7eeb9a018d1ddf507f0fca8edeb902f28e6548f5a57c5623da13e3f3a89124c58dbd80cb88755035323d44fe7512d40d09147b69e1f33adde6019ea20fca95953a56c8bea460926a4175c92235f2a3fba40e6bc469dd5e23a9eb4a6b7d915634e3d699b70ddae5d70ceaa216598181a9fba26a924e89615db572de55ed573cea3bb3ac753d6b2985f61619f47c5d9d387718fbab2aa9a442dac26f2e1b2acdde438ab0e5d45481bcb84ffbf6c79b47cebbe0e32a96e2547cb9576057402af193f22c8837870dff007adff3afe740b7a31897141460c3bdc083e1e14d5730e099d3dd49bbdd6b238234999f48157b6002e1ef28c7e0a4803eacfa9f341f8554dbc797eb57ff00f23ff51a7dc6de738bc214049161a23ff2c7e155fedf63f59bd320e76f7c9aa8625c9870ac96feedab36c28fda28baff002858f36f1a49dac1648d38f3ae582de88c3d949e28a1b91945087e5f1a0f89c68772723bf414f8ea290cf9b3b58b015f38c425b3a8953de00e86204831224539d9be97546667b84081dd811d3400527e1b15797f5785b69fb4ee01af58cdbd8b886b96874569a360690d576e58512c05266f4ed856395400a380e03ccc73a138fdb0e7ed4facd2f62f1458c9a0d82cf58ac4999fc669dfeb81ac8643c57553c0d574cd4576563c85ecc9e1c3f2acf9e1d493f03704fa5b5e43584dba6dca1060c46becff006881e82a6aed62ea411aa9900f5312695b177e482358335796ee606c3e0ade6456257989264e83ca92d521e9b6257d70ea49ff00a418f989a5bbd70c93d69fb6d6cbb4f71d2d8c8c21547223286f7c9a836f729d7f4978e51c9799f3f0aaa6917716c595b458068e14bfb5b062d3f82b0ccbd2788f43f022ac7c45852856d8e1c693b7b57f4565b98257e7f90abe195b179e151010b41bb307877a99b73f0c035dca0fb2bf334bd87f6adfeeb558db8bb0dd99bb321d9ad5b72ba0c8199c6a49fd9356937746647ab6b04a95590036ad1dd98ebceb28edfd857edde916c3b1b44655862b95d64b478ce9e5595564b2cab7748b4823ecac48e702bb6073026013ce0f2a9b82406d20d23288d67978d6af332f0d41e1d3a55ba2bb859e86297504ea38d29efa6810f1f6bff6d30289969018e91e3481f493bd06cc5bb6a8d714992e330131c17813e723a5322db0580beb6b6b1384bef76ddab6960866b8d1337ee42a81259bba4e839520ef2df5b98abaf6caba33cab03a10750448ab33058cc25e4c3dec79416ee25f85b902de75ba81572001780b8c34e66aacda26d76efd819b5989b648cbdde2047202607402a506016d9fbbb76ee06f626d825ad5d8ca3594ecc3315d352343e44f8527dcc699e247955e9f47b29b350fdfb975bce1bb39ff004d577b677605dbd7bb04405487605b20832085d238f2eb4613b7d23e58df4f509c71239973eb5a3884e4a7d4d3462b60608229477ce6732b11dd88e606bc6a5ed6d8bb3ac5ab6196fddbee3444600f292606824c5345d311ee6249a8ced344368600a196516872466ccf1e43fb50e228153cd6eb2b22a009586c501a11eb5726e2ed2ed304907d8ee9f4903f0aa469dfe8c36a64baf609d1fbc3f7871f847ba93961ab468c393ba99631c34e2adcf321e7c8653fd228cef05d98a85cc3f353fe93a1f8c7c6b9ed6bc4f5acbf06d5c8aa6f64c41563dd707df1a527ede72d6f4f655c99f331f97be8fef2a12e08d239d02bf649b0e801204b1f4f0ff4d5f1e989cdb4d02ac0ef5bfdd6f9d595b9e8ca97ee2c165c3e10004c0ef35e9f9556d63dab7fb87e7567ee49057100c7eaf02b1d3f4dad35fbbf4637c047698be5b0cb215dacb398602417d01262781e35959bd6917b0cbfff002aff005135941a021a6d612e6cf5cf82ba2fe1809b9867b80ba8892d61c9e3fb078f2355d6f96f6e331f74a6116e9b68640b45a408305888ef1d4c728a65df3c6e32dffca5dbb6076c995570f8739c126022962752260c08f5a56d9ff4618cb8da03875804f6b77be7ae4b423c74279d594972d8b38ee5d9da1f5fc38c43626ddb0d9d8dc760a42a9600c98d48511457e9017b4c530b76d9c05073202cac78e846878fc29c7763e8fade0bb4c43dd6bf70db2a43005049124032674e24f8d565bd6fff0035772c2a860328d00855e43acd5d3bda233aef2e9b3b068012cb76f02352625b52388049a54b79814ee12065d32f131c3ce698378ad21c0616e045ccd76e2b30519881c89e279575fa39d8a6fe3ed13faab4a2f38e5dd51944757cbe80d47c178169e2f0e30f62d581a7676b298d3bd024fa9cc7d6ab437d0e2985d44b96f23332b890c57551a73d4d3bedfda52cd313927c742c44fc0d55b8cc47e9cc93de575d3a831c7ad231bb9d9b64aa146b792ed9042dab79759632753e00030aa3a575b58c3a5c701c11120ea07e14236ab889f8f8d74bce16d5b870491a81208f3e46b6990e58b4b6599dd6675fc87ca83620f8055f2d6bb62afcd4267a006cc2a2bc56cd65001e4d48d9d8b6b5752e2f15607f31ea245706ad0a842fcc06345cb6aea655803e608e15abf74332a0d49f978d56bba7bc26c28b4e7b87553f764f03d29cf76313dae21ce84a28cb3c20983c38f2d3ad619c1c5d1d1c79149592379367f7330f0a4cc855c10743208f10743f0356aef0e1253c879556db4ed659e4410c0f872aac74c33dab159532dc45f0561ee622acbdc1b25beb3a4809819d60f0ba7e555d6d0655ba1cb0020e9cf53323a6b4d5b9fbc496fb5cd99b3ad80b924feaf389613c6187ba9ef9bfa39ed7c0ddbde8462ed83cb0c9a7f156e85edcde8b57f122eadbba10585b7ec6b98349804f0eb5951b250730175717b799de1130cac42b1e0da5b0241234d4f1ab2efed1c38f6eea479ebefaab7e8cf74b0d8ab1771388ed3335c65056ebdb191401ae4613a86e3e14e385dccd905737648e38e67b8ec3deed14c557a42897b636ad9faaddb966f2ba8395b5986d0c70e3041aa1b6adfed2fdc3f7ae13f3fed575ef3ec9c3dad9d72de16da2a160d96d6a09d3bd0bc780aa2fb339fae6275f5ab4501f232ec455b986c3a9661d9dcbac72c4c1540756063da8d35d69bb70b65ae1f0d88bc01517aeb2a492c7b24ee0124eb2d9fe1556ae3cdbb79543660cc4653c3ba93987ddd055d69dcc2584fba880f9e504cfc6a991d21f82372b11b6b5a77c4285cb254a31831225e009d78b0e3c54d266dcd9976ce2127dace847220e610638813e34f1db65b81a620833d4f875d4fbe84edc8388b0b942a9b99da4ea40612eedc4e81f4e948c6f66ec8bb459df0b656e35b250e40a09410b3198e51cb52684a5c3d8f11f89f5f0a64de8b169114066677ef303a4728e1de3d41f9d0418906cf64156044e90c4781235ae8339e02c490780ae1153315717eca053d09f91a8c6e9e75401e411e7584d49b3244e4503c4f015a727901e7963dd5084522bdda5935e5abb61907b4780a8009eccb169837697421d001a491c79fa5597f46784b25e51f335b1958e9de463984c730563ca2ab0c0681ae44c772d88065db4f581f31568fd10e052d8c430f6814427a852c7fa852b2f0370b6a7a1d7785c653eb555ef15d597ea001ef9a72dedda4408504b4f2f4aafb118476662fa402639f80acab6ecdb2d46807b657ba87f84f51c47c66baee888bcd1c327fee15eb789328b63d7d22b96e95fcb7bf81be041ad4b7030e4f78676cedcecff004683330e249d17a69c4d652cb9cc599cead2de3a96ff007acab282a2bd4cfaa772b0096767e1ed1b6d3d902e3244b38ccd3ea4d0bdb1f47d85b96d970f6ee61d8c4657616f420eb6c5c03ddc2b56f6ee22203e80468a3f2a8b8ade0bff00f7587b87c854e0a50b1b4f75b6b60edb3a5d2c83925d0cd104cc32a988074cc692709b72eda396f6181b6a162ddc56209c825cb2431ccd2dacfb556a6d318a3605dbd7fb3121955c939979e6130a083f8d55f8d60aef12447775fb312bf08abff6502984deec192a06112d39257359b855bbd0a410e04820090678558db55e2d19d005d63ca001d4920555bba588b6d73b2b9854bcd71942bbea2dcb22e82346e2647874ab176dde95ece79927c94e9f89f4acf9ded1b3d2c796295f79bca0f8c81c80f1ebe74231b8d538eb7984a89523a1cebf88a93771233bdc9e034e80e8a3fceb40704ad7b1472f050eee79040a4127c35207f152f12b91a72caa21bdecc55856ec85a4b8667bef9401c32ea0c9e40f846b00404b5b3afb5b73f575b36883fa4416da3a67625957870fc748bbd7762e80da18f199e60c795406c79ecf20791e13f856f6cc2c8b7f6685e37500fda3defe559f9d700d65384dc3e27babeee35c1ee035eadba0fb04d50a9206289ebd00d2a3debb5eeee3348032d46ca78c5421e6bada507981e7c3d6b91af7648913c39f95400cd8ac4e5ef1581654051e374889d3c047c2ac0fa2ac335bc2dc6620f68e5c11d5138f5aaaf686356e405042282d1f79cf13e5c874156a6e15e0a8d6b9f66aff000ca4fc052b2fb46e17de829b4c8cda01e24fc691aedf96663f698e9d24d376ddbb96d3bf88ca3a9e949b8fb3d9851cf2ebeb58e26e9f009dbcb9c8394981e3c34e3d685ecac6ad972e02b18220c81d78548db978801678ccf9002a3ec1d986fdc023b8353d4780adb1d47660c9ee23dd48274813a033c3c351594ef8a6d429988f7440aca0b27d03a465ff0085edb711736a3283c42cf0f30051cc6e26dd9c972e6aaaca0cf33d68835da5adfc04e119a2729563e531f8d32edec5b5ad0477b36edac7d871980c8b31cd98f051e42079dce94a3b1376ef62edbdb5282ed950183341ca466431a98e22693176991c38669f87fb518dd5dbdd8dcc46283b7d6090aa78ae527591f6b870e82aed14482fba9608c6e1ad785eccdd59017f7081ea4d3def859b50c41cac7b9e73ab18f291497f47b89ed76ab5c3aad9b375fe2147acb37bea56f06d526d973ed12447120031af52493eb5933bda4743d32ed6c59dbb89545600c92c24f41afe547374367a8c0e2834f6f7d141107b969b30493ca4e663d08a41da18b25b53accf8ebe46ac0dd3c3bbecfbf70c67bc1f291a77555801fccafe8453b0c2958acb3ea95203262aeb586b8a1ae3885b96b2e7018121b327189ef023ef11a40a5ada98cb8fa3db5b23c05ac9af5914e9b55b0a2e837d6edab86196fd86cbda2912338e04c11fda685e231b7d8ffc9dab971413df7c849891ec5acb00f599d385398b62858b775cc202de9f8d4a7c084fd75c0a7ee2f79fd40f67d48a2b88c36d27d191ed03c613b307cc8027d4d0e386b761a0c5fbdf65175453fb47ed9fd91efe55501bc495b68b92dadb6619b35c399c2f23a885278e826235a1ad6b36a589eb07f1a61c3ec1b926ee2012c75218fcf9fa541daee2741c3400680540d019940e75b415b6cde15e5491ca81509e07655cbab290c418ca06baf327d9038ea48e14e9baf76e2ed0b6aca126d142b981996eeea342640e1314a7bb9b67eace5f2e752a41598e60cf03a88f89a60d95b72c5ec661c84657ed520e875cc39ccd566ae2c31b534c7bdb1820e406d12df1ea4eb1f2a44dbf89cd79a380d053e6f762d6d08d496820751cfcb855678c7d493c4f2ac505b3a137a0762ec76b772e60a150927f01d4d14dc419afb5a3119091fccb51930169f5ed943102664474aef6b6bbe05952d8b37149ef7701275e19fda9f0e3e55b74e15f2739b7d764cdf93922d2e85b53020850741ea7e55ba81bdf7259ee4112c15469a401a69d4356548aa446c61d91b6afe32edc665bdd9c029170db50660890bdefed469302c74ece7302a73deb9701074232c804d58bb1b0816d80b8141a699d907f486a1db7f1b77085313f55b59518e716ae667ca548908556758e126992c7b17d7a29cde3dcf7c39d4e50d394368c798d0d29da2eb2c15a381d3407cf855b7bebb43138fb50966eb231919ec9b6ca7f79800452c58c162b0f680bc12e5a521fb13716491cb492474a2ebc8136fe03bf44383918bbf206602d0f1803b46f9dba58da78a317547117489f5e03a9d2ac3dc6d8972de02e38b66d36218baa499543016275120123a45258d8964628dbc65c7b364b5c66b8077a724a65d0f168e558e5bc87421db8ac4ec56c9bddb0b44779880a664107ed03cc55c1b32fa8b764d850d696da80bf797d965fdf041d4f3247da9a81b59f66dbc3a0c2adc67b4f6c9bb714fb0cd95882fac91e10296377f13730df585124a39b90dc18680fa91d38035be306d18565a7b1effe156eea04640ca354ccb263c32b7065e11cc4780a4cc5eede15710f68bb5a2ba97524af09e044c7ad32ecfdf2b6d683a808ce3bab774568d0c3ea391d1bde290368e2deedeb859bda6330032fa435558db446db98f40459c3bbdc038b9905d8f80e428aeedeeef66a311886ecc1f67ef7a0e23ceb5b3367648605739e12aab1fb458b69ee353f6a6dc16ad0b5dbda66e70c58033fb224d50290336f6d6ed01b560364e13cd87981a0a58b98633106798064faf851bb589569fd65c03562dfa1b2be79659bcb9d0dc4ed0669008541a2aa2e407a9e263d68d32ada075c48d387ad73ae97a274e15e28515b3a583a8d244ea39f90a33b085a18cb119922e5b20107316ce207af8d06c3dc2acac388208f3066ad2ddab9f5d09756ec323a76968db4201cc0f7480080791e5425c117289dbe58b50f72e710b08bee0491ea4fbaabb7ba5da7c4d39efadf25dd23ba9a8d3c4d29dcbf982ae588e07d2b1c19d0c8be08989c05aed4adbb87283ab1ebcc0d3afa450bb8c43ebdeca7c48f5d351563becad977182a9b79ce90976093e41a09a89b4372aca82cb7dadf132f047a9d2b6aaa39b6ec49c6e2335b51ae8c4ea49f1f1acae7b4b0e11ca2dc5b834219660fbeb2816182fedec5b087da2d1e0b72e1fe9814c3f47d61f33e285e776fd5a36a181305b29624ea204f98ade1b6cec14d1706ccdca64acf9b6a3e345f03b52d5cb41acdb1645cf66d833d98d413c049267df3e14649ae5958d3e10e0b84c4a18baf7886fbcec441f523d29237b3640b378dd3dd472734f00fcc7af1f7d1dd95b4efda03b2ba4a412044a91c78372f4d748a54de46b976edf371cb9203a8fba3da851c073e1e1ad2dab1b174c6bdd0df95b8c30b70cc5a7cb739be588533cf2e9d6291be903698676285831907f76351401998652ba306194f020f0068da6c3372e5bedc821fb4ce0b43e65b6cfc8f0240d67d295c33647ba3471d8b711ed5c175f570117908035e80c9f52b5e70b8d395ed5c505c0cb98fda4820ac8e84ebe06b7b215061c080c09713c74ce74ea2235e8687633bbdefba635d62381ea3ad74e1a8a3953f7341cb7b6ec2da16c232b2a90b31a4883a8e3e742f1b8bb372e02b69090a140319607162399fed5131ae2e2485ef8f0e63cb9f8d02693c89f4a139fc02310c59386405ae8172e319ca3455f3cba479570b789b59cdd7efb133940803c00e5a69eea1c30ce7ec9f75764d9b78fd83f2f9d2adf8194bc9eb1bb41ae00beca8e0a387af89ea6a29b67c3df538609d356745e8483f006a3dd65fb307c481f29a0d3f90afa23b03ce8e6cadd0c6e2133dbb0e50fdaca60f90024fba8e6e26ef5a75facde5ed3bc56ddbe448e2ee798e400f03a8d29f52f3b103560640004058fb21468a38fbbad2db2e915daee15f413773a0e249b6540f568a29bab76c60aff68cf72e8880a8a00067da624f7a3901e34d78bb47556041d4107979834adb6767a59860c329e2bc4a9e83ee9a5c9b68bc693b1cf695bc35eb61d083dae9af29fc66293b68ecab61d829839734729d647a50cd99b605bb8267b363047e31ca8b63f6e276d761010534f9cd65e9699bba94e3623e06d10cc8cba8307fbd11db781b99333b3314fb258b003a4920474ae3b42e9188072e5cea330fdad75e9a47be8d602f0b92a7dc7988d6b4df0cc2d728496d4fddf09d6b2993626ee1bd7dedb48b76bda61c75f640ea78fa1aca70972a39eccc2616fddb76ada5d0ee60c90c174e3235227a0a7ad9db05b0a02300413dd2796b244facd6be8f7742d1ba97d59cb219d0748d74ab2f78f66b5dc3b22a77d7bd6cc7da0384751234f1145a258818cc4e1b0f6d4b3e82000c67bc09601321cc477b8748e54bd7f69e6737fb261692db6ae029620c881320711af8d78c4e6bb792e365ca8a42813ed13ab411a683850dde3c5b0b194e85c8e7c86a7e31efaa16178ed071041cb06401c07bf8d4dc5dfc6402fda8cf105815cd008194902444f0a1566d672146a4ff00934dbbfd8f57bd6ecdbf62c5ab76123f7753ee9153a532ff00e46b481e97cad955109a6acb12ff00c4c6147388d6685e2712e4106e2b4fa9f7a88a60b9b2313d982b6dd93223028a1c00ca184820e5e3d296f1aec0c33b0e9a0f829ad0e69ad310a2ef68e0b7d975123cabcf6e598966209d49ae640ff0d68ad2ed97a44c027fea9f7915dede08b7fd427c8fe7502c5d00f78665f0fca8adbc15b2440267c0c55a3b292d1b1832a24349fda022a0628eba9f719153b14020215bd0316f7f11439d89fb23e5f2a2c88b6360d80987b36c4425b562df664f78b4f8493536e6d3759ec5dad2a19679c99e2412cd3a28d743e04c13c57f73f19da6100d4942118788d634e6008a31f5166810541d4bb185016022804c6added3c0cf1acec6a0836debe44129773490c5412a224778ea4f13e1a1e1a0a4896b8b712e1cd7248627893c431f3a67ba0cb3b3e7663989cb95752632ab493000e23889d34a50b9b451b1872778150188e198786be1a50a09130d860c8e39f2f3fec62a3aed0046ba330ca7c74d74f79f7572da9b4196e3adbd04904f3e3cbc35a12d881c7898f8cf1aab858c84e891b4f186edc04e8471f3ff602a47d7db5cbdd0044f33f950a42499346b77f679bf792dc489ccfd106a67cf87ad5ab5451caf658dbad821670b6c477980779e25d803af9081e95943f7bb1376e35bc16141375866683195049e3ca63e5e3594c115659bb99864169615640e4608fc453162091f6a7a46beffed48d87df5c059519efa311e1a11e4470ae2ff49b66e1cb656f5e1fb169ae11e4578fafbeacc28efbd5b02ddf0cc14dbb878b82158f98d55bcc89aaa368eefa25d018bdc33a9669f90156a6d0c6dfba80adabd044f7adf67efce045206d60eadfa40011cbb45247f293428899c76fe1eda767d85a16c14980b13d7f6869c75a4ebb75ae5e59d5899f53c3e007be8fdede4c721606e76886616e00ea41e8dcbc04c74a5c872f9e61a6741c3d3402a051726e4e208046bfaab511d114572de0b8cd272f0f113f3af1ba1722c597d4936c293ce57b9afbaa5ed452644e867957365cd1d68fb50b62c234fe8d093fb234f85662706919422f0d4802bcab14683c0c47957bc4e289ce0701a0f750d8690a78fc329cda0e359676633585ba173012a4ac86420c6a4728833c35aeb79bba7d68c7d18e322f3da9e3df1e9c7e4b5a2192504da11931466d26285fcde248eb07e313515ad98f0ff3a9d2af73b0f0b70677c35962d267b3593f0a1988d838440dff002d641e4320a67f297815fc47e4ab37736a1b3732f68516e402c0fb244c1f02353c7c7a53d263ae0f6995fc330ca4ff001288f857ac66cdb2a3f556c71e083f2a5dbdb48abe40b9d634d60af97223a5059549f056581c513b6de2eede22d006ddb209b8d32ce4924a83c84993e7516d61d6d80a800fc4d73bbb49009ef48fb3964fa11a507c56d1bce0e51917c49d7fb7f9ad5ec55322dab0d76f051ed3bc0f5313e9c7d28963772318b25505c5f15207c1a0fce896e25cc32172dfac5592cdc02f0ee9e43e26baef06fcbb4a61fb89c339f69bc87215748a36ec03ff0000ecb5c4dd5b5fb0bdfb87a40d07c6a561b6e25852b8557b64c4dc241668f15208238e9d7950277b8c736a4ccc9fef5b5539b3319333c011333c0e847422a10b5774b665c5b67117496c462618923516bec2c0e19a0347864f0aca5cdb7bd98ab96728b8b062595152e083300a400263956510507f62b58c1a2b5dd9f6a08917900be0f5ced314df86dedb5714047b82782a231fe8481efaa5f61ef1dfc3c147eef346d54f42a699b0bb63037ccb06c25d3f6edeb6c9eabc454a40d8f38cc5b9d3b0b8c3ab2afbf3b0a42db96e1d894ca7c330623dd23e34c08f8cb6b9815c559fbd6db503af852eed3c5da73a67563c430d41fc6a240a3313694e1924090de1cb59a56b9ed1f0e54cef7076313c24d2e5c001d4d10a1e3706fb3da3687b4adfe96ef7cf3532ed45caa49d4853f281f18a53fa2ebb17ef37208a3d4b69f00d4c3bcd8a0244f123f3f98ac196294d9d5c126f1a15b693c9d388a88b8b04319ff22b31174c1e524475e7fe79d0977d4f5a1416e99cf1773bb46fe8db0ca6e9627bcf99547380a413ea4c7a52be2dc9ee8e24c5396e76313eb96115114282244c9843a924f13a9a728f6333ca7df15f659589716d146b2071e3af90a5638aedb122d8e0356fefe34636aed0d1b869cf89f4a57dd6be0dcc45c3c1405f7ff82b31b28ebb7ae77881c07fb52882339345f6a637316e54bf72f6b4c821337b357db89a858d7fd17bbe75d710fa572c524a47514e8ada1137a60dfad1cb9468264f53e27c6a66c4c522172f6d6e4800662465d752a411aff7ae2b8315d058f4ad06464d2d843ff7d7c995c7c40af2d62c1f63111d1ed91f1591432e619b9115cdad38e550813bd65fecbdb6fdd68f83565082c79d6ea042fb54e6398c4c71023e543edb9acaca80413d97b52f59606d5c643d0fe1c2ac9db7854bb815beea0dd23da883fe9815aaca202a8c55f604c31a8a6f31e24d6eb2832c3b7d19b9cb8bd7ecdbfea6a62de2630bd45656562cbef3a3e9ff0018a58c31c286b9acacab22b2e48cfed513dd873f5cb3fbc7fa5ab2b29cbf1b333fc8bf43f6f1b109e93eb4237344e1efcf3ba67f945656562ff93a4fdc857dac618c69a9a0dda19e26b2b2b4e3e0c797924a9915daf7b23fce55959565ee42e5ed672b66b93b1acacad065391735b673ad6ab2a108b75cf8d6eb2b2aa58fffd9, 'Emon Bepari', 'Unemployed Master', 'I cannot train you to be honest, I am just here for timepass');

-- --------------------------------------------------------

--
-- Table structure for table `trainer_social_link`
--

CREATE TABLE `trainer_social_link` (
  `id` int(11) NOT NULL,
  `trainer_id` int(11) NOT NULL,
  `facebook_link` varchar(255) DEFAULT NULL,
  `x_link` varchar(255) DEFAULT NULL,
  `linkedin_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trainer_social_link`
--

INSERT INTO `trainer_social_link` (`id`, `trainer_id`, `facebook_link`, `x_link`, `linkedin_link`) VALUES
(1, 1, 'https://www.facebook.com/trainer1', 'https://twitter.com/trainer1', 'https://www.linkedin.com/in/trainer1'),
(3, 3, 'https://www.facebook.com/trainer3', 'https://twitter.com/trainer3', 'https://www.linkedin.com/in/trainer3'),
(4, 4, 'https://www.facebook.com/trainer4', 'https://twitter.com/trainer4', 'https://www.linkedin.com/in/trainer4'),
(11, 11, 'www.facebook.com', '#', '#');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `RollNo` varchar(50) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `EmailId` varchar(50) DEFAULT NULL,
  `MobNo` bigint(11) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`RollNo`, `Name`, `Type`, `Category`, `EmailId`, `MobNo`, `Password`) VALUES
('123', 'mahfuz', 'Student', 'GEN', 'mahfuzhasanreza1@gmail.com', 1770452285, '123'),
('12345', 'mahfuzhasanrezarrr', 'Student', 'GEN', 'mahfuzhasanzaareza1@gmail.com', 1770452285, 'mahfuzhasanrezarr'),
('989', 'mahfuzhasanrezarrrfsssd', 'Student', 'GEN', 'mahfuzhasanzaaressssza1@gmail.com', 17704522, '12345'),
('ADMIN', 'admin', 'Admin', NULL, 'admin@gmail.com', 123456789, '12345'),
('b160001cs', 'John', 'Student', 'GEN', 'john@gmail.com', 9876543210, 'b160001cs'),
('b160002cs', 'Adam', 'Student', 'ST', 'adam@yahoo.com', 7845965212, 'b160002cs'),
('b160003ch', 'Alice', 'Student', 'OBC', 'alice@hotmail.com', 4512451245, 'b160003ch'),
('b160004me', 'Abbot', 'Student', 'GEN', 'abbot@gmail.com', 6352416352, 'b160004me'),
('b160005ce', 'bale', 'Student', 'SC', 'bale@gmail.com', 96685747485, 'b160005ce'),
('b160006cs', 'Bob', 'Student', 'GEN', 'bob@gmail.com', 4141415263, 'b160006cs'),
('b160007cs', 'Goku', 'Student', 'GEN', 'goku@yahoo.com', 4545451212, 'b160007cs'),
('b160008cs', 'Ben', 'Student', 'GEN', 'ben10@hotmail.com', 6352416345, 'b160008cs'),
('b160009cs', 'Ash', 'Student', 'GEN', 'ash@yahoo.com', 7845124578, 'b160009cs'),
('b160010cs', 'Harry', 'Student', 'GEN', 'harry@hotmail.com', 4578457845, 'b160010cs'),
('b160011ch', 'Gwen', 'Student', 'GEN', 'gwen@yahoo.com', 9685747474, 'b160011ch'),
('b160012me', 'Kevin', 'Student', 'ST', 'kevin11@hotmail.com', 1242425163, 'b160012me'),
('b160013ee', 'Max', 'Student', 'OBC', 'max@gmail.com', 9685748574, 'b160013ee'),
('B160111Cs', 'Bharat', 'Student', 'GEN', 'bharat@gmail.com', 123456, 'abcd'),
('B160158CS', 'MANU', 'Student', 'GEN', 'manu@gmail.com', 8365917597, 'manu'),
('b160257me', 'Eve', 'Student', 'GEN', 'eve@gmail.com', 5451525356, 'b160257me'),
('b160321ec', 'Joey', 'Student', 'SC', 'joey@yahoo.com', 9898982020, 'b160321ec'),
('b160412cs', 'Barney', 'Student', 'ST', 'legendary@gmail.com', 9695989192, 'b160412cs'),
('b160423cs', 'Rachel', 'Student', 'GEN', 'rachel@gmail.com', 7475787671, 'b160423cs'),
('B160511CS', 'MALHAR', 'Student', 'OBC', 'malhar@gmail.com', 9756153859, 'abcd'),
('B160632CS', 'KENIL', 'Student', 'GEN', 'kenilshah081198@gmail.com', 9892506094, '1234'),
('b160777cs', 'Sheldon', 'Student', 'GEN', 'smartestpersoninroom@gmail.com', 9696969696, 'b160777cs'),
('b160854cs', 'Ram Prabhu', 'Student', 'SC', 'ram@nitc.ac.in', 968599, '1234'),
('b160951cs', 'Misty', 'Student', 'SC', 'watermaster@hotmail.com', 4145424847, 'b160951cs'),
('b160999cs', 'Chandler', 'Student', 'OBC', 'sarcasticlord@hotmail.com', 9494959694, 'b160999cs');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(100) NOT NULL,
  `username` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(100) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `fullname`, `email`, `password`, `role`, `timestamp`) VALUES
(13, 'root', 'zsz', 'mahfuzhasanreza1@gmail.com', '$2y$10$waN/3fR0Sj/R8LhhL1phWuYYxaH7U4SfEnlddgbdH0txyqHoyj4yy', 'student', '0000-00-00 00:00:00'),
(17, 'themahfuz', 'Mahfuz Hasan Reza', 'arshedmdadel@gmail.com', '$2y$10$i7dknuL1DSkcxpK38O5AHeH9snTkKsYVFf0/QMK68eqAJA57tT8IO', 'student', '2024-04-20 18:07:34'),
(18, 'mahfuzhr', 'lupil', 'mr.mahfuz.reza@gmail.com', '$2y$10$L3Sb4lNnTSH6WS0jrlw6tOSMtDIM47Jc7bnnx8FK8mb1fshz3FK6K', 'student', '2024-04-20 18:08:08'),
(19, 'mahfuz', 'Mahfuz Hasan Reza', 'mr.mahfuz.reza@uiu.ac.bd', '$2y$10$2bsi8jJh3IjBnBHQFsC.H.QvdczcDCldhWI8NZU2cdj34HVmcRM8C', 'student', '2024-04-21 01:04:43'),
(20, 'mahfuzreza', 'mahfuzreza', 'ds@gscn', '12345678', 'student', '2024-04-24 10:41:46');

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
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`BookId`,`Author`);

--
-- Indexes for table `availability`
--
ALTER TABLE `availability`
  ADD PRIMARY KEY (`availability_id`),
  ADD KEY `ad_id` (`ad_id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`BookId`);

--
-- Indexes for table `buy_sell`
--
ALTER TABLE `buy_sell`
  ADD PRIMARY KEY (`ad_id`);

--
-- Indexes for table `canteen_menu`
--
ALTER TABLE `canteen_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `canteen_staff`
--
ALTER TABLE `canteen_staff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD KEY `ad_id` (`ad_id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clubs`
--
ALTER TABLE `clubs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_manager` (`manager_id`);

--
-- Indexes for table `club_members`
--
ALTER TABLE `club_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `club_id` (`club_id`);

--
-- Indexes for table `counseling_availability`
--
ALTER TABLE `counseling_availability`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `counselling_requests`
--
ALTER TABLE `counselling_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `club_id` (`club_id`);

--
-- Indexes for table `gymnasium_manager`
--
ALTER TABLE `gymnasium_manager`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `gymnasium_membership`
--
ALTER TABLE `gymnasium_membership`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `gym_managers`
--
ALTER TABLE `gym_managers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `ad_id` (`ad_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership_requests`
--
ALTER TABLE `membership_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plan_id` (`plan_id`);

--
-- Indexes for table `membership_types`
--
ALTER TABLE `membership_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`M_Id`),
  ADD KEY `RollNo` (`RollNo`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recommendations`
--
ALTER TABLE `recommendations`
  ADD PRIMARY KEY (`R_ID`),
  ADD KEY `RollNo` (`RollNo`);

--
-- Indexes for table `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`RollNo`,`BookId`),
  ADD KEY `BookId` (`BookId`);

--
-- Indexes for table `renew`
--
ALTER TABLE `renew`
  ADD PRIMARY KEY (`RollNo`,`BookId`),
  ADD KEY `BookId` (`BookId`);

--
-- Indexes for table `return`
--
ALTER TABLE `return`
  ADD PRIMARY KEY (`RollNo`,`BookId`),
  ADD KEY `BookId` (`BookId`);

--
-- Indexes for table `shuttle_bus_schedule`
--
ALTER TABLE `shuttle_bus_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shuttle_driver`
--
ALTER TABLE `shuttle_driver`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `shuttle_schedule`
--
ALTER TABLE `shuttle_schedule`
  ADD PRIMARY KEY (`shuttle_number_plate`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`faculty_number`);

--
-- Indexes for table `teacher_availability`
--
ALTER TABLE `teacher_availability`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `trainers`
--
ALTER TABLE `trainers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainer_social_link`
--
ALTER TABLE `trainer_social_link`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trainer_id` (`trainer_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`RollNo`),
  ADD UNIQUE KEY `EmailId` (`EmailId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ad`
--
ALTER TABLE `ad`
  MODIFY `ad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `availability`
--
ALTER TABLE `availability`
  MODIFY `availability_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `BookId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `canteen_menu`
--
ALTER TABLE `canteen_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `canteen_staff`
--
ALTER TABLE `canteen_staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `clubs`
--
ALTER TABLE `clubs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `club_members`
--
ALTER TABLE `club_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `counseling_availability`
--
ALTER TABLE `counseling_availability`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `counselling_requests`
--
ALTER TABLE `counselling_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `gymnasium_manager`
--
ALTER TABLE `gymnasium_manager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gymnasium_membership`
--
ALTER TABLE `gymnasium_membership`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gym_managers`
--
ALTER TABLE `gym_managers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `membership_requests`
--
ALTER TABLE `membership_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `membership_types`
--
ALTER TABLE `membership_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `M_Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recommendations`
--
ALTER TABLE `recommendations`
  MODIFY `R_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `shuttle_bus_schedule`
--
ALTER TABLE `shuttle_bus_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shuttle_driver`
--
ALTER TABLE `shuttle_driver`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `teacher_availability`
--
ALTER TABLE `teacher_availability`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trainers`
--
ALTER TABLE `trainers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `trainer_social_link`
--
ALTER TABLE `trainer_social_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
-- Constraints for table `author`
--
ALTER TABLE `author`
  ADD CONSTRAINT `author_ibfk_1` FOREIGN KEY (`BookId`) REFERENCES `book` (`BookId`);

--
-- Constraints for table `availability`
--
ALTER TABLE `availability`
  ADD CONSTRAINT `availability_ibfk_1` FOREIGN KEY (`ad_id`) REFERENCES `ad` (`ad_id`);

--
-- Constraints for table `buy_sell`
--
ALTER TABLE `buy_sell`
  ADD CONSTRAINT `buy_sell_ibfk_1` FOREIGN KEY (`ad_id`) REFERENCES `ad` (`ad_id`);

--
-- Constraints for table `canteen_staff`
--
ALTER TABLE `canteen_staff`
  ADD CONSTRAINT `canteen_staff_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`ad_id`) REFERENCES `ad` (`ad_id`);

--
-- Constraints for table `clubs`
--
ALTER TABLE `clubs`
  ADD CONSTRAINT `fk_manager` FOREIGN KEY (`manager_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `counselling_requests`
--
ALTER TABLE `counselling_requests`
  ADD CONSTRAINT `counselling_requests_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`club_id`) REFERENCES `clubs` (`id`);

--
-- Constraints for table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `image_ibfk_1` FOREIGN KEY (`ad_id`) REFERENCES `ad` (`ad_id`);

--
-- Constraints for table `membership_requests`
--
ALTER TABLE `membership_requests`
  ADD CONSTRAINT `membership_requests_ibfk_1` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`);

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`RollNo`) REFERENCES `user` (`RollNo`);

--
-- Constraints for table `recommendations`
--
ALTER TABLE `recommendations`
  ADD CONSTRAINT `recommendations_ibfk_1` FOREIGN KEY (`RollNo`) REFERENCES `user` (`RollNo`);

--
-- Constraints for table `record`
--
ALTER TABLE `record`
  ADD CONSTRAINT `record_ibfk_1` FOREIGN KEY (`RollNo`) REFERENCES `user` (`RollNo`),
  ADD CONSTRAINT `record_ibfk_2` FOREIGN KEY (`BookId`) REFERENCES `book` (`BookId`);

--
-- Constraints for table `renew`
--
ALTER TABLE `renew`
  ADD CONSTRAINT `renew_ibfk_1` FOREIGN KEY (`RollNo`) REFERENCES `user` (`RollNo`),
  ADD CONSTRAINT `renew_ibfk_2` FOREIGN KEY (`BookId`) REFERENCES `book` (`BookId`);

--
-- Constraints for table `return`
--
ALTER TABLE `return`
  ADD CONSTRAINT `return_ibfk_1` FOREIGN KEY (`RollNo`) REFERENCES `user` (`RollNo`),
  ADD CONSTRAINT `return_ibfk_2` FOREIGN KEY (`BookId`) REFERENCES `book` (`BookId`);

--
-- Constraints for table `trainer_social_link`
--
ALTER TABLE `trainer_social_link`
  ADD CONSTRAINT `trainer_social_link_ibfk_1` FOREIGN KEY (`trainer_id`) REFERENCES `trainers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;