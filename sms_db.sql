-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2023 at 01:15 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(127) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fname` varchar(127) NOT NULL,
  `lname` varchar(127) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `fname`, `lname`) VALUES
(1, 'justin', '$2y$10$H7obJEdmLzqqcPy7wQWhsOLUvrgzC8f1Y1or2Gxaza5z1PT0tvLy6', 'justin', 's');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `grade_id` int(11) NOT NULL,
  `grade` varchar(31) NOT NULL,
  `grade_code` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`grade_id`, `grade`, `grade_code`) VALUES
(1, '1', 'KG'),
(3, '1', 'G'),
(4, '2', 'G'),
(5, '3', 'G'),
(6, '4', 'G'),
(7, '5', 'G'),
(8, '6', 'G');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `sender_full_name` varchar(100) NOT NULL,
  `sender_email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `sender_full_name`, `sender_email`, `message`, `date_time`) VALUES
(4, 'justin', 'justinsegura17@gmail.com', 'example', '2023-04-24 17:39:16'),
(5, 'Carl', 'carlivanvillanueva23@gmail.com', 'patulong po !!', '2023-04-25 14:33:36'),
(6, 'Arile Caniscosa', 'ArielCaniscosa@gmail.com', 'Inquire.', '2023-04-25 15:42:24');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `Registration_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `Email` varchar(127) NOT NULL,
  `Contact_Number` varchar(11) NOT NULL,
  `Present_address` varchar(31) NOT NULL,
  `Age` int(11) NOT NULL,
  `Type_of_student` varchar(11) NOT NULL,
  `Child_birthday` date NOT NULL,
  `gender` varchar(11) NOT NULL,
  `Father_Name` varchar(127) NOT NULL,
  `Mother_name` varchar(127) NOT NULL,
  `grade` int(11) NOT NULL,
  `date_of_submission` timestamp NULL DEFAULT current_timestamp(),
  `First_name` varchar(255) NOT NULL,
  `Middle_name` varchar(255) NOT NULL,
  `Last_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`Registration_id`, `user_id`, `Email`, `Contact_Number`, `Present_address`, `Age`, `Type_of_student`, `Child_birthday`, `gender`, `Father_Name`, `Mother_name`, `grade`, `date_of_submission`, `First_name`, `Middle_name`, `Last_name`) VALUES
('1', '', 'justinsegura17@gmail.com', '09609048253', 'Cainta, Rizal', 23, 'New_Student', '2023-06-01', 'Male', 'da', 'ad', 1, '2023-06-07 05:19:56', 'Elisha Pearl', 'Magno', 'Sardido'),
('2', '', 'justinsegura17@gmail.com', '09609048253', 'Cainta, Rizal', 23, 'New_Student', '2023-06-01', 'Male', 'da', 'ad', 1, '2023-06-07 05:21:07', 'Elisha Pearl', 'Magno', 'Sardido'),
('3', '', 'justinsegura17@gmail.com', '09609048253', 'Cainta, Rizal', 23, 'New_Student', '2023-06-01', 'Male', 'da', 'ad', 1, '2023-06-07 05:23:09', 'Elisha Pearl', 'Magno', 'Sardido');

-- --------------------------------------------------------

--
-- Table structure for table `registration2`
--

CREATE TABLE `registration2` (
  `Registration_id` varchar(255) NOT NULL,
  `First_name` varchar(255) NOT NULL,
  `Middle_name` varchar(255) NOT NULL,
  `Last_name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Contact_Number` varchar(11) NOT NULL,
  `Present_address` varchar(255) NOT NULL,
  `Age` int(11) NOT NULL,
  `Type_of_student` varchar(11) NOT NULL,
  `Child_birthday` date NOT NULL,
  `gender` varchar(11) NOT NULL,
  `Father_Name` varchar(255) NOT NULL,
  `Mother_name` varchar(255) NOT NULL,
  `grade` int(11) NOT NULL,
  `date_of_submission` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration2`
--

INSERT INTO `registration2` (`Registration_id`, `First_name`, `Middle_name`, `Last_name`, `Email`, `Contact_Number`, `Present_address`, `Age`, `Type_of_student`, `Child_birthday`, `gender`, `Father_Name`, `Mother_name`, `grade`, `date_of_submission`) VALUES
('R2209540', 'Elisha Pearl', 'Felicidario', 'Sardido', 'justinsegura17@gmail.com', '09609048253', 'Cainta, Rizal', 23, 'New_Student', '2023-06-10', 'Male', 'Carl ', 'djadja', 1, '2023-06-07 09:36:12'),
('R2209541', 'Justin Alexis', 'Magno', 'Sardido', 'justinsegura17@gmail.com', '09609048253', 'ad', 12, 'New_Student', '2023-06-13', 'Male', 'Carl ', 'djadja', 1, '2023-06-07 09:37:45'),
('R2209542', 'Elisha Pearl', 'Magno', 'Sardido', 'justinsegura17@gmail.com', '09609048253', 'Cainta, Rizal', 23, 'New_Student', '0000-00-00', 'Male', 'ad', 'qe', 1, '2023-06-07 09:38:55'),
('R2209543', 'Justin Alexis', 'Felicidario', 'Sardido', 'justinsegura17@gmail.com', '00000000000', 'Cainta, Rizal', 23, 'New_Student', '2023-06-08', 'Male', 'ad', 'djadja', 1, '2023-06-27 05:03:38');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `section_id` int(11) NOT NULL,
  `section` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`section_id`, `section`) VALUES
(1, 'Love'),
(2, 'Peace'),
(3, 'Faith'),
(4, 'Hope'),
(5, 'Joy'),
(6, 'Patience'),
(7, 'Matthew');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `username` varchar(127) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(127) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `grade` int(11) NOT NULL,
  `section` int(11) NOT NULL,
  `address` varchar(31) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `religion` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `date_of_joined` timestamp NULL DEFAULT current_timestamp(),
  `guardian_parent_first_name` varchar(127) NOT NULL,
  `guardian_parent_last_name` varchar(127) NOT NULL,
  `guardian_parent_phone_number` varchar(31) NOT NULL,
  `lrn` varchar(12) NOT NULL,
  `Form_137` varchar(255) DEFAULT NULL,
  `1x1_pic` varchar(255) DEFAULT NULL,
  `birth_certificate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `username`, `password`, `first_name`, `last_name`, `grade`, `section`, `address`, `gender`, `religion`, `date_of_birth`, `date_of_joined`, `guardian_parent_first_name`, `guardian_parent_last_name`, `guardian_parent_phone_number`, `lrn`, `Form_137`, `1x1_pic`, `birth_certificate`) VALUES
(1, 'Sebastian', '$2y$10$nc3ds3kdzq1Wp6Il6G0GGeJ0AExUg6QBdUGG8QF1MUsjoH4L.3Qcu', 'Sebastian Grey', 'Saulon', 3, 4, 'TAYTAY, RIZAL				', 'Male', 'Christianity', '2016-07-20', '2023-04-25 05:21:22', 'Romyl', 'Espiritu', '09425892348', '109538210170', '../img/form_137.png', '../img/1x1pic.png', '../img/birth_Certificate.png'),
(2, 'Aevhan', '$2y$10$cAZ1VchGn3YYeiC3OpZrx.YbbvYAsT.DlaCvduszFVfUwssyAgi4G', 'Kryz Aevhan', 'Caringal', 3, 4, 'Binangonan, Rizal', 'Male', 'Christianity', '2015-04-17', '2023-04-25 05:26:41', 'Christian', 'Caringal', '09823582132', '109312210502', NULL, NULL, NULL),
(3, 'Earnest', '$2y$10$lrfDut.TMAn4.IaHpL51wew8WZP1Mbgzoj2Kx30f4CLMnMg6AAcii', 'Adriel Earnest', 'Garcia', 4, 3, 'Cainta, Rizal', 'Male', 'Christianity', '2013-07-29', '2023-04-25 05:31:26', 'Andro', 'Garcia', '09982472841', '425614170013', NULL, NULL, NULL),
(4, 'Jacob', '$2y$10$7MNbAAveP9a.OybexKX6rOg22.XErD3j/PdxvLm5lX4nFMAReBvTG', 'Neo Jacob', 'Tiangson', 4, 3, 'Cainta, Rizal', 'Male', 'Christianity', '2015-08-16', '2023-04-25 05:42:07', 'Rojer', 'Tiangson', '09413847123', '109410200021', NULL, NULL, NULL),
(5, 'Loraine', '$2y$10$wlJ9zVI9unmFmmv83xSUueeLAVSKt9TvErKPwuu0wjruu0s57lgwG', 'Jann Loraine', 'Tolentino', 6, 1, 'San juan, Cainta, Rizal', 'Female', 'Christianity', '2013-07-18', '2023-04-25 05:45:35', 'Julio', 'Celis', '09941414121', '425614170004', NULL, NULL, NULL),
(6, 'Khurt', '$2y$10$Su2fQUwRxaADHJjsHF06gu0zEr3di44kycLaKQrw2VbCrdm5YJ1Ay', 'Khurt Yael', 'Musa', 6, 1, 'Taytay, Rizal', 'Male', 'Christianity', '2012-08-31', '2023-04-25 08:26:54', 'Joel', 'Musa', '09452235364', '425508170004', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subject_id` int(11) NOT NULL,
  `subject` varchar(31) NOT NULL,
  `subject_code` varchar(31) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subject_id`, `subject`, `subject_code`) VALUES
(1, 'English', 'En'),
(2, 'Science', 'Sci'),
(3, 'Math', 'Mth'),
(4, 'PhyEd', 'P.E'),
(5, 'Values', 'Val'),
(6, 'Filipino', 'Fil');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `teacher_id` int(11) NOT NULL,
  `username` varchar(127) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fname` varchar(127) NOT NULL,
  `lname` varchar(127) NOT NULL,
  `subjects` varchar(31) NOT NULL,
  `grades` varchar(31) NOT NULL,
  `section` varchar(31) NOT NULL,
  `address` varchar(31) NOT NULL,
  `employee_number` int(11) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `phone_number` varchar(31) NOT NULL,
  `qualification` varchar(127) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `date_of_joined` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`teacher_id`, `username`, `password`, `fname`, `lname`, `subjects`, `grades`, `section`, `address`, `employee_number`, `date_of_birth`, `phone_number`, `qualification`, `gender`, `email_address`, `date_of_joined`) VALUES
(1, 'annaliza', '$2y$10$G7UnjoM5lXYpSnjP.DMNzuuDP1G5vAFbvh9FHEQtzYoZePL6cAU5K', 'Annaliza ', 'Muji', '1', '6', '2', 'Cainta, Rizal', 2345, '1995-03-22', '09242823334', 'teacher', 'Female', 'annalizamuji@gmail.com', '2023-04-25 13:48:31'),
(2, 'Leajoy', '$2y$10$dK9pVw9CcXM2dX3o8kRSAe1G/m4YDlXs5pCSYjq.umbnXo.VkJouu', 'Lea Joy', 'Battad', '4', '7', '1', 'Cainta, Rizal ', 2346, '1997-11-20', '09224523221', 'teacher', 'Male', 'Leajoybattad@gmail.com', '2023-04-25 14:10:52'),
(3, 'rommel', '$2y$10$1hkkSVCxMouJ7U7nWmIMnOtY25j6NDhTGbI.UPG6WumJcNIEzlyS6', 'Rommel', 'Fontanilia', '2', '3', '4', 'Cainta, Rizal', 2347, '1994-06-14', '09242428613', 'teacher', 'Male', 'rommelfontanilla@gmail.com', '2023-04-25 14:14:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`grade_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`Registration_id`);

--
-- Indexes for table `registration2`
--
ALTER TABLE `registration2`
  ADD PRIMARY KEY (`Registration_id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`section_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`teacher_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `grade_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
