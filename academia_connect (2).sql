-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2024 at 09:14 AM
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
-- Table structure for table `counseling_availability`
--

CREATE TABLE `counseling_availability` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `available_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('student','teacher','club_manager','canteen_staff','gymnasium_manager','shuttle_driver') NOT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `full_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `role`, `fullname`, `full_name`) VALUES
(1, 'Emon', '111', '', 'student', NULL, NULL),
(2, 'abc', '123', '', 'student', NULL, NULL),
(3, 'pqr', '456', '', 'student', NULL, NULL),
(4, 'Emon143Nerd', '$2y$10$plfG9EnXFvwkJmKlBjvrVe6sCJwK/iSik1xC80djWqgbYxveLmMqu', 'emon99284@gmail.com', 'student', NULL, 'Md Emon'),
(5, 'busDriver1212', '$2y$10$s/o7ASth3/kHjdkcZcs/Te8ofe9Hi1JzJP8KlKEqIoAs1Svmi5ERm', 'driver@gmail.com', 'shuttle_driver', NULL, 'Bus Driver'),
(6, 'bashir1212', '$2y$10$rczOmg1LQkcX3NQH3m53Ue.ecL3Z0ouJRP3DybTBrdqYbQQCrMehS', 'bashir@gmail.com', 'teacher', NULL, 'Mahtab Bashir'),
(7, 'canteenStaff', '$2y$10$O47SzSWEcjUfoE2XaI6xPu9Nnh7N9WoCG3hEGu5FIWU.6LRAC3dwq', 'staff@gmail.com', 'canteen_staff', NULL, 'canteen Staff'),
(8, 'clubManager', '$2y$10$tNSUhaJzgy60u25w42z/WeeBq25pzYySe5QG8yrGSR1TQEnRKvamG', 'club@gmail.com', 'club_manager', NULL, 'club manager'),
(9, 'gymManager', '$2y$10$gRtA5VfUYJwSOUxV4m0Zpu37UAxtYXKGPNK83lVyt5m9KE6qRpWSC', 'gym@gmail.com', '', NULL, 'gym manager'),
(10, 'gym123', '$2y$10$C2/aEhc5Lak3NihBd40R3OaLkhsTYtWntJZSWqQYBcig/pbXaW5Wm', 'gymnasium@gmail.com', '', NULL, 'gym gym'),
(11, 'asif123', '$2y$10$3HCRY1smBZ84dSrrlVC6g.VTyLSbj127mQRG9odlHyiM4Q9.CtBMO', 'asif@gmail.com', 'teacher', NULL, 'asif ahmed'),
(12, 'emon123', '$2y$10$2LAw/nHWB0UAGWIjQJGby.iyEF6X0Z2SYvPyNcwxbtY35En6KWk5W', 'emon123@gmail.com', 'student', NULL, 'emon bepari');

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
-- Indexes for table `teacher_availability`
--
ALTER TABLE `teacher_availability`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `canteen_staff`
--
ALTER TABLE `canteen_staff`
  ADD CONSTRAINT `canteen_staff_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `clubs`
--
ALTER TABLE `clubs`
  ADD CONSTRAINT `clubs_ibfk_1` FOREIGN KEY (`manager_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `club_members`
--
ALTER TABLE `club_members`
  ADD CONSTRAINT `club_members_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `club_members_ibfk_2` FOREIGN KEY (`club_id`) REFERENCES `clubs` (`id`);

--
-- Constraints for table `counseling_availability`
--
ALTER TABLE `counseling_availability`
  ADD CONSTRAINT `counseling_availability_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `counselling_requests`
--
ALTER TABLE `counselling_requests`
  ADD CONSTRAINT `counselling_requests_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `gymnasium_manager`
--
ALTER TABLE `gymnasium_manager`
  ADD CONSTRAINT `gymnasium_manager_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `gymnasium_membership`
--
ALTER TABLE `gymnasium_membership`
  ADD CONSTRAINT `gymnasium_membership_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `marketplace_items`
--
ALTER TABLE `marketplace_items`
  ADD CONSTRAINT `marketplace_items_ibfk_1` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `marketplace_items_ibfk_2` FOREIGN KEY (`buyer_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `shuttle_driver`
--
ALTER TABLE `shuttle_driver`
  ADD CONSTRAINT `shuttle_driver_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `teacher_availability`
--
ALTER TABLE `teacher_availability`
  ADD CONSTRAINT `teacher_availability_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
