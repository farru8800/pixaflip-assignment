-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2021 at 08:20 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood_group`
--

CREATE TABLE `blood_group` (
  `b_id` int(3) NOT NULL,
  `b_type` varchar(3) NOT NULL,
  `d_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_group`
--

INSERT INTO `blood_group` (`b_id`, `b_type`, `d_id`) VALUES
(1, 'O+', 1),
(2, 'O-', 1),
(3, 'AB-', 1),
(4, 'A+', 2),
(5, 'O+', 2),
(6, 'AB-', 4),
(7, 'AB-', 7),
(8, 'B+', 3),
(9, 'A-', 6),
(10, 'A+', 10),
(11, 'B-', 6),
(12, 'O+', 8),
(13, 'AB+', 5),
(14, 'AB+', 2),
(15, 'AB+', 7);

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `d_id` int(3) NOT NULL,
  `d_name` varchar(20) NOT NULL,
  `s_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`d_id`, `d_name`, `s_id`) VALUES
(1, 'Ahmedabad', 1),
(2, 'Vadodara', 1),
(3, 'Indore', 2),
(4, 'Bhopal', 2),
(5, 'Mumbai', 3),
(6, 'Pune', 3),
(7, 'Lucknow', 4),
(8, 'Allahbad', 4),
(9, 'Ajmer', 5),
(10, 'Jaisalmer', 5);

-- --------------------------------------------------------

--
-- Table structure for table `donor_register`
--

CREATE TABLE `donor_register` (
  `dr_id` int(3) NOT NULL,
  `dr_name` varchar(20) NOT NULL,
  `dr_email` varchar(40) NOT NULL,
  `dr_pass` varchar(20) NOT NULL,
  `dr_phone` int(10) NOT NULL,
  `dr_gender` varchar(15) NOT NULL,
  `dr_city` varchar(20) NOT NULL,
  `dr_state` varchar(20) NOT NULL,
  `dr_blood` varchar(3) NOT NULL,
  `dr_file` varchar(40) NOT NULL,
  `age` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donor_register`
--

INSERT INTO `donor_register` (`dr_id`, `dr_name`, `dr_email`, `dr_pass`, `dr_phone`, `dr_gender`, `dr_city`, `dr_state`, `dr_blood`, `dr_file`, `age`) VALUES
(1, 'amaan chhipa', 'amaan@gmail.com', 'amaan2514', 12345678, 'male', 'ahmedabad', 'gujarat', 'o+', 'c://htdocs', 0),
(2, 'ayaan chhipa', 'chhipaamaan2514@gmail.com', 'amaan2514', 1223032007, 'male', 'vadodara', 'gujarat', 'o-', 'www.mac.os.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `s_id` int(3) NOT NULL,
  `s_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`s_id`, `s_name`) VALUES
(1, 'Gujarat'),
(2, 'MP'),
(3, 'Maharshtra'),
(4, 'UP'),
(5, 'Rajasthan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood_group`
--
ALTER TABLE `blood_group`
  ADD PRIMARY KEY (`b_id`),
  ADD KEY `fk_did` (`d_id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`d_id`),
  ADD KEY `fk_sid` (`s_id`);

--
-- Indexes for table `donor_register`
--
ALTER TABLE `donor_register`
  ADD PRIMARY KEY (`dr_id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`s_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donor_register`
--
ALTER TABLE `donor_register`
  MODIFY `dr_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blood_group`
--
ALTER TABLE `blood_group`
  ADD CONSTRAINT `fk_did` FOREIGN KEY (`d_id`) REFERENCES `district` (`d_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `district`
--
ALTER TABLE `district`
  ADD CONSTRAINT `fk_sid` FOREIGN KEY (`s_id`) REFERENCES `state` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
