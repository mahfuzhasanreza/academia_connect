-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2024 at 03:55 AM
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
(19, 28, 'no');

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

--
-- Dumping data for table `canteen_staff_user`
--

INSERT INTO `canteen_staff_user` (`id`, `username`, `name`, `email`, `phone_no`, `password`, `timestamp`) VALUES
(0, 'canteeennnnn', 'canteeennnnn', 'canteeennnnn@edXAZ', NULL, 'canteeennnnn', '2024-04-30 05:19:22');

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
-- Table structure for table `clubs`
--

CREATE TABLE `clubs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `manager_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `club_members`
--

CREATE TABLE `club_members` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `club_id` int(11) NOT NULL,
  `designation` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
('gg', 'ghghh', 55.00, 'fghgh', 0, NULL, NULL, NULL),
('jhmhjhgmjk', 'jdytjytjgf', 0.00, 'jgjgj', 0, NULL, NULL, NULL);

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
(0, '3rqeffffffffffffffff', 'fsdfsvds', 'fdscfds2@gamail.com', NULL, '$2y$10$V/5f4fbhnw0oWIMZV5pbi./m66rd1zlU4njGKdXivLTyY8IMyKuia', '2024-04-30 06:29:25'),
(1, 'john_doe', 'John Doe', 'john.doe@example.com', '123-456-7890', '', '2024-04-28 22:32:24'),
(2, 'jane_smith', 'Jane Smith', 'jane.smith@example.com', '987-654-3210', '', '2024-04-28 22:32:24'),
(3, 'alex_wong', 'Alex Wong', 'alex.wong@example.com', '555-123-4567', '', '2024-04-28 22:32:24'),
(4, 'emily_jones', 'Emily Jones', 'emily.jones@example.com', '111-222-3333', '', '2024-04-28 22:32:24'),
(5, 'mahfuz', 'mahfuz', 'mahfuz@gmail.com', '10200', 'mahfuz12345', '2024-04-30 02:17:47'),
(6, 'root', 'mahfuz', 'mahfuzhasanreza1@gmail.com', NULL, '$2y$10$vZs.6G3hT6OQjJx2Qcm5ROUreQi21RfhzwWKyA1fGTZo5S4squplK', '2024-04-30 03:34:26');

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
(0, 'teacger', 'xxz', 'xccx@wdsc', '4', 'czax', '2024-04-30 05:17:01'),
(0, 'mahfuzgrrrrrrrrrr', 'fsdfsvdsaz', 'fdscfdsxcdadssdszdc2@gamail.com', NULL, '$2y$10$mywTc9EecvvMVhE5nZueO.yTz9zZPU3iY1mEimUTzBjXTghZMaJdq', '2024-04-30 06:31:32');

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
-- Indexes for table `availability`
--
ALTER TABLE `availability`
  ADD PRIMARY KEY (`availability_id`),
  ADD KEY `ad_id` (`ad_id`);

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
-- Indexes for table `clubs`
--
ALTER TABLE `clubs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `manager_id` (`manager_id`);

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
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `ad_id` (`ad_id`);

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
-- Indexes for table `teacher_availability`
--
ALTER TABLE `teacher_availability`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_id` (`teacher_id`);

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
  MODIFY `ad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `availability`
--
ALTER TABLE `availability`
  MODIFY `availability_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
-- AUTO_INCREMENT for table `clubs`
--
ALTER TABLE `clubs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `club_members`
--
ALTER TABLE `club_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
-- AUTO_INCREMENT for table `teacher_availability`
--
ALTER TABLE `teacher_availability`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  ADD CONSTRAINT `clubs_ibfk_1` FOREIGN KEY (`manager_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `club_members`
--
ALTER TABLE `club_members`
  ADD CONSTRAINT `club_members_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `club_members_ibfk_2` FOREIGN KEY (`club_id`) REFERENCES `clubs` (`id`);

--
-- Constraints for table `counselling_requests`
--
ALTER TABLE `counselling_requests`
  ADD CONSTRAINT `counselling_requests_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `image_ibfk_1` FOREIGN KEY (`ad_id`) REFERENCES `ad` (`ad_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
