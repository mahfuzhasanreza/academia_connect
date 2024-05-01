-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2024 at 03:13 AM
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
  `category_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `marketplace_items`
--

CREATE TABLE `marketplace_items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `buyer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `name` (`name`);

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
-- Indexes for table `marketplace_items`
--
ALTER TABLE `marketplace_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seller_id` (`seller_id`),
  ADD KEY `buyer_id` (`buyer_id`);

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
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketplace_items`
--
ALTER TABLE `marketplace_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
-- Constraints for table `canteen_staff`
--
ALTER TABLE `canteen_staff`
  ADD CONSTRAINT `canteen_staff_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

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
-- Constraints for table `counseling_availability`
--
ALTER TABLE `counseling_availability`
  ADD CONSTRAINT `counseling_availability_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `counselling_requests`
--
ALTER TABLE `counselling_requests`
  ADD CONSTRAINT `counselling_requests_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `gymnasium_manager`
--
ALTER TABLE `gymnasium_manager`
  ADD CONSTRAINT `gymnasium_manager_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `gymnasium_membership`
--
ALTER TABLE `gymnasium_membership`
  ADD CONSTRAINT `gymnasium_membership_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `image_ibfk_1` FOREIGN KEY (`ad_id`) REFERENCES `ad` (`ad_id`);

--
-- Constraints for table `marketplace_items`
--
ALTER TABLE `marketplace_items`
  ADD CONSTRAINT `marketplace_items_ibfk_1` FOREIGN KEY (`seller_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `marketplace_items_ibfk_2` FOREIGN KEY (`buyer_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `shuttle_driver`
--
ALTER TABLE `shuttle_driver`
  ADD CONSTRAINT `shuttle_driver_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `teacher_availability`
--
ALTER TABLE `teacher_availability`
  ADD CONSTRAINT `teacher_availability_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
