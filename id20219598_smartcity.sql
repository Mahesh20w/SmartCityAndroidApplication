-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 14, 2024 at 06:52 AM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id20219598_smartcity`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `password`) VALUES
('admin', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `smart_city_dustbin`
--

CREATE TABLE `smart_city_dustbin` (
  `dust_id` varchar(100) NOT NULL,
  `dust_level` varchar(100) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `smart_city_dustbin`
--

INSERT INTO `smart_city_dustbin` (`dust_id`, `dust_level`, `latitude`, `longitude`) VALUES
('001', '25%', '15.3732431', '75.1459851'),
('002', '75%', '15.3707051', '75.1177146'),
('003', '100%', '15.3729629', '75.146694'),
('004', '75%', '15.3631772', '75.1292934'),
('005', '50%', '15.3707051', '75.1177146');

-- --------------------------------------------------------

--
-- Table structure for table `smart_city_electrical_complent`
--

CREATE TABLE `smart_city_electrical_complent` (
  `compl_no` varchar(100) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `place_name` varchar(100) NOT NULL,
  `location_electrical` varchar(500) NOT NULL,
  `dept_name` varchar(100) NOT NULL,
  `compl_details` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `smart_city_electrical_complent`
--

INSERT INTO `smart_city_electrical_complent` (`compl_no`, `user_name`, `mobile`, `place_name`, `location_electrical`, `dept_name`, `compl_details`) VALUES
('312', 'sagar', '9035292096', 'Jain College ', 'https://www.google.com/maps/place/Jain+College+of+Engineering+%26+Technology+Hubballi/@15.3941102,75', 'ELECTRICAL', 'Light Sparking'),
('304', 'sagar', '9035292096', 'Jain College ', 'https://www.google.com/maps/place/Jain+College+of+Engineering+%26+Technology+Hubballi/@15.3941102,75', 'ELECTRICAL', 'Light Sparking'),
('102', 'Pallav pawar', '7892755069', 'vidya nagar ', 'https://www.google.com/maps/place/Kittur+Rani+Chennamma+Circle/@15.3561131,75.1333677,15.75z/data=!4', 'ELECTRICAL', 'light  spark '),
('294', 'Pallav pawar', '7892755069', 'vidyanagar', 'https://www.google.com/maps/place/Kittur+Rani+Chennamma+Circle/@15.3561131,75.1333677,15.75z/data=!4', 'ELECTRICAL', 'light spark '),
('173', 'Pallav pawar', '7892755069', 'vidyanagar', 'https://www.google.com/maps/place/Kittur+Rani+Chennamma+Circle/@15.3561131,75.1333677,15.75z/data=!4', 'ELECTRICAL', 'light spark '),
('44', 'Pallav pawar', '7892755069', 'vidyanagar', 'https://www.google.com/maps/place/Kittur+Rani+Chennamma+Circle/@15.3561131,75.1333677,15.75z/data=!4', 'ELECTRICAL', 'light spark \n'),
('257', 'Pallav pawar', '7892755069', 'shanti nagar', 'https://www.google.com/maps/place/Kittur+Rani+Chennamma+Circle/@15.3561131,75.1333677,15.75z/data=!4', 'ELECTRICAL', 'short circuit '),
('722', 'Pallav pawar', '7892755069', 'shanti nagar', 'https://www.google.com/maps/place/Kittur+Rani+Chennamma+Circle/@15.3561131,75.1333677,15.75z/data=!4', 'ELECTRICAL', 'short circuit \n'),
('349', 'Pallav pawar', '7892755069', 'shanti nagar', 'https://www.google.com/maps/place/Kittur+Rani+Chennamma+Circle/@15.3561131,75.1333677,15.75z/data=!4', 'ELECTRICAL', 'short circuit \n'),
('246', 'Pallav pawar', '7892755069', 'oxford college ', 'https://www.google.com/maps/place/Kittur+Rani+Chennamma+Circle/@15.3561131,75.1333677,15.75z/data=!4', 'ELECTRICAL', 'light blast '),
('266', 'Pallav pawar', '7892755069', 'oxford college ', 'https://www.google.com/maps/place/Kittur+Rani+Chennamma+Circle/@15.3561131,75.1333677,15.75z/data=!4', 'ELECTRICAL', 'light blast'),
('761', 'Pallav pawar', '7892755069', 'oxford college ', 'https://www.google.com/maps/place/Kittur+Rani+Chennamma+Circle/@15.3561131,75.1333677,15.75z/data=!4', 'ELECTRICAL', 'light blast'),
('562', 'Prajwal M', '9353548256', 'bhavan', 'https://www.google.com/maps/place/Jain+College+of+Engineering+%26+Technology+Hubballi/@15.3941102,75', 'ELECTRICAL', 'light Spark '),
('104', 'Prajwal M', '9353548256', 'bhavan', 'https://www.google.com/maps/place/Jain+College+of+Engineering+%26+Technology+Hubballi/@15.3941102,75', 'ELECTRICAL', 'light Spark '),
('662', 'Prajwal M', '9353548256', 'Oxford clg', 'https://www.google.com/maps/place/Jain+College+of+Engineering+%26+Technology+Hubballi/@15.3941102,75', 'ELECTRICAL', 'light Spark '),
('266', 'Prajwal M', '9353548256', 'abc', 'https://www.google.com/maps/place/Oxford+Degree+College+of+BCA/@15.3675309,75.1645571', 'ELECTRICAL', 'light blast '),
('858', 'Prajwal M', '9353548256', 'hubli', 'https://www.google.com/maps/place/Oxford+Degree+College+of+BCA/@15.3675309,75.1645571,17z/data=!4m14!1m7!3m6!1s0x3bb8d9f75a8e40af:0xcbb64f8f02cac689!2sOxford+Degree+College+of+BCA!8m2!3d15.3675309!4d75.1667458!16s%2Fg%2F1tf68hkx!3m5!1s0x3bb8d9f75a8e40af:0xcbb64f8f02cac689!8m2!3d15.3675309!4d75.1667458!16s%2Fg%2F1tf68hkx', 'ELECTRICAL', 'light blast'),
('79', 'Prajwal M', '9353548256', 'hubli', 'https://www.google.com/maps/place/Oxford+Degree+College+of+BCA/@15.3675309,75.1645571,17z/data=!4m14!1m7!3m6!1s0x3bb8d9f75a8e40af:0xcbb64f8f02cac689!2sOxford+Degree+College+of+BCA!8m2!3d15.3675309!4d75.1667458!16s%2Fg%2F1tf68hkx!3m5!1s0x3bb8d9f75a8e40af:0xcbb64f8f02cac689!8m2!3d15.3675309!4d75.1667458!16s%2Fg%2F1tf68hkx', 'ELECTRICAL', 'light blast'),
('884', 'Prajwal M', '9353548256', 'hubli', 'https://www.google.com/maps/place/Oxford+Degree+College+of+BCA/@15.3675309,75.1645571,17z/data=!4m14!1m7!3m6!1s0x3bb8d9f75a8e40af:0xcbb64f8f02cac689!2sOxford+Degree+College+of+BCA!8m2!3d15.3675309!4d75.1667458!16s%2Fg%2F1tf68hkx!3m5!1s0x3bb8d9f75a8e40af:0xcbb64f8f02cac689!8m2!3d15.3675309!4d75.1667458!16s%2Fg%2F1tf68hkx', 'ELECTRICAL', 'light blast'),
('82', 'Prajwal M', '9353548256', 'Oxford college Hubli bca', 'https://www.google.com/maps/place/Oxford+Degree+College+of+BCA/@15.3675309,75.1645571,17z/data=!4m14!1m7!3m6!1s0x3bb8d9f75a8e40af:0xcbb64f8f02cac689!2sOxford+Degree+College+of+BCA!8m2!3d15.3675309!4d75.1667458!16s%2Fg%2F1tf68hkx!3m5!1s0x3bb8d9f75a8e40af:0xcbb64f8f02cac689!8m2!3d15.3675309!4d75.1667458!16s%2Fg%2F1tf68hkx', 'ELECTRICAL', 'short circuit '),
('942', 'Prajwal M', '9353548256', 'Oxford college Hubli bca', 'https://www.google.com/maps/place/Oxford+Degree+College+of+BCA/@15.3675309,75.1645571,17z/data=!4m14!1m7!3m6!1s0x3bb8d9f75a8e40af:0xcbb64f8f02cac689!2sOxford+Degree+College+of+BCA!8m2!3d15.3675309!4d75.1667458!16s%2Fg%2F1tf68hkx!3m5!1s0x3bb8d9f75a8e40af:0xcbb64f8f02cac689!8m2!3d15.3675309!4d75.1667458!16s%2Fg%2F1tf68hkx', 'ELECTRICAL', 'short circuit '),
('487', 'Prajwal M', '9353548256', 'Oxford college Hubli bca', 'https://www.google.com/maps/place/Oxford+Degree+College+of+BCA/@15.3675309,75.1645571,17z/data=!4m14!1m7!3m6!1s0x3bb8d9f75a8e40af:0xcbb64f8f02cac689!2sOxford+Degree+College+of+BCA!8m2!3d15.3675309!4d75.1667458!16s%2Fg%2F1tf68hkx!3m5!1s0x3bb8d9f75a8e40af:0xcbb64f8f02cac689!8m2!3d15.3675309!4d75.1667458!16s%2Fg%2F1tf68hkx', 'ELECTRICAL', 'short circuit '),
('673', 'Prajwal M', '9353548256', 'vidyanagar ', 'https://www.google.com/maps/place/Oxford+Degree+College+of+BCA/@15.3675309,75.1645571,17z/data=!4m14!1m7!3m6!1s0x3bb8d9f75a8e40af:0xcbb64f8f02cac689!2sOxford+Degree+College+of+BCA!8m2!3d15.3675309!4d75.1667458!16s%2Fg%2F1tf68hkx!3m5!1s0x3bb8d9f75a8e40af:0xcbb64f8f02cac689!8m2!3d15.3675309!4d75.1667458!16s%2Fg%2F1tf68hkx', 'ELECTRICAL', 'light blast'),
('785', 'Prajwal M', '9353548256', 'vidyanagar ', 'https://www.google.com/maps/place/Oxford+Degree+College+of+BCA/@15.3675309,75.1645571,17z/data=!4m14!1m7!3m6!1s0x3bb8d9f75a8e40af:0xcbb64f8f02cac689!2sOxford+Degree+College+of+BCA!8m2!3d15.3675309!4d75.1667458!16s%2Fg%2F1tf68hkx!3m5!1s0x3bb8d9f75a8e40af:0xcbb64f8f02cac689!8m2!3d15.3675309!4d75.1667458!16s%2Fg%2F1tf68hkx', 'ELECTRICAL', 'light blast'),
('889', 'Prajwal M', '9353548256', 'vidyanagar ', 'https://www.google.com/maps/place/Oxford+Degree+College+of+BCA/@15.3675309,75.1645571,17z/data=!4m14!1m7!3m6!1s0x3bb8d9f75a8e40af:0xcbb64f8f02cac689!2sOxford+Degree+College+of+BCA!8m2!3d15.3675309!4d75.1667458!16s%2Fg%2F1tf68hkx!3m5!1s0x3bb8d9f75a8e40af:0xcbb64f8f02cac689!8m2!3d15.3675309!4d75.1667458!16s%2Fg%2F1tf68hkx', 'ELECTRICAL', 'light blast'),
('693', 'prajwal', '9353548256', 'gg mathad', 'https://www.google.com/maps/place/Oxford+Degree+College+of+BCA/@15.3675309,75.1645571,17z/data=!4m14!1m7!3m6!1s0x3bb8d9f75a8e40af:0xcbb64f8f02cac689!2sOxford+Degree+College+of+BCA!8m2!3d15.3675309!4d75.1667458!16s%2Fg%2F1tf68hkx!3m5!1s0x3bb8d9f75a8e40af:0xcbb64f8f02cac689!8m2!3d15.3675309!4d75.1667458!16s%2Fg%2F1tf68hkx', 'ELECTRICAL', 'light boom'),
('658', 'prajwal', '9353548256', 'gg mathad', 'https://www.google.com/maps/place/Oxford+Degree+College+of+BCA/@15.3675309,75.1645571,17z/data=!4m14!1m7!3m6!1s0x3bb8d9f75a8e40af:0xcbb64f8f02cac689!2sOxford+Degree+College+of+BCA!8m2!3d15.3675309!4d75.1667458!16s%2Fg%2F1tf68hkx!3m5!1s0x3bb8d9f75a8e40af:0xcbb64f8f02cac689!8m2!3d15.3675309!4d75.1667458!16s%2Fg%2F1tf68hkx', 'ELECTRICAL', 'light boom'),
('205', 'prajwal', '9353548256', 'gg mathad', 'https://www.google.com/maps/place/Oxford+Degree+College+of+BCA/@15.3675309,75.1645571,17z/data=!4m14!1m7!3m6!1s0x3bb8d9f75a8e40af:0xcbb64f8f02cac689!2sOxford+Degree+College+of+BCA!8m2!3d15.3675309!4d75.1667458!16s%2Fg%2F1tf68hkx!3m5!1s0x3bb8d9f75a8e40af:0xcbb64f8f02cac689!8m2!3d15.3675309!4d75.1667458!16s%2Fg%2F1tf68hkx', 'ELECTRICAL', 'light boom'),
('414', 'prajwal', '9353548256', 'gg mathad', 'https://www.google.com/maps/place/Oxford+Degree+College+of+BCA/@15.3675309,75.1645571,17z/data=!4m14!1m7!3m6!1s0x3bb8d9f75a8e40af:0xcbb64f8f02cac689!2sOxford+Degree+College+of+BCA!8m2!3d15.3675309!4d75.1667458!16s%2Fg%2F1tf68hkx!3m5!1s0x3bb8d9f75a8e40af:0xcbb64f8f02cac689!8m2!3d15.3675309!4d75.1667458!16s%2Fg%2F1tf68hkx', 'ELECTRICAL', 'light boom'),
('987', 'prajwal', '9353548256', 'gg mathad', 'https://www.google.com/maps/place/Oxford+Degree+College+of+BCA/@15.3675309,75.1645571,17z/data=!4m14!1m7!3m6!1s0x3bb8d9f75a8e40af:0xcbb64f8f02cac689!2sOxford+Degree+College+of+BCA!8m2!3d15.3675309!4d75.1667458!16s%2Fg%2F1tf68hkx!3m5!1s0x3bb8d9f75a8e40af:0xcbb64f8f02cac689!8m2!3d15.3675309!4d75.1667458!16s%2Fg%2F1tf68hkx', 'ELECTRICAL', 'light boom'),
('67', 'prajwal', '9353548256', 'abcd', 'https://www.google.com/maps/place/Oxford+Degree+College+of+BCA/@15.3675309,75.1645571,17z/data=!4m14!1m7!3m6!1s0x3bb8d9f75a8e40af:0xcbb64f8f02cac689!2sOxford+Degree+College+of+BCA!8m2!3d15.3675309!4d75.1667458!16s%2Fg%2F1tf68hkx!3m5!1s0x3bb8d9f75a8e40af:0xcbb64f8f02cac689!8m2!3d15.3675309!4d75.1667458!16s%2Fg%2F1tf68hkx', 'ELECTRICAL', 'light boom');

-- --------------------------------------------------------

--
-- Table structure for table `smart_city_electrical_login`
--

CREATE TABLE `smart_city_electrical_login` (
  `eid` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mno` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `smart_city_electrical_login`
--

INSERT INTO `smart_city_electrical_login` (`eid`, `name`, `mno`, `email`, `city`, `designation`, `password`) VALUES
('admin', 'admin', '9035292096', 'sagar2gmail.com', 'Hubli', 'staff', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `smart_city_electril_location`
--

CREATE TABLE `smart_city_electril_location` (
  `code_id` varchar(100) NOT NULL,
  `location_electrical` varchar(600) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `smart_city_electril_location`
--

INSERT INTO `smart_city_electril_location` (`code_id`, `location_electrical`) VALUES
('ELE001', 'https://www.google.com/maps/place/Oxford+Degree+College+of+BCA/@15.3675309,75.1645571,17z/data=!4m14!1m7!3m6!1s0x3bb8d9f75a8e40af:0xcbb64f8f02cac689!2sOxford+Degree+College+of+BCA!8m2!3d15.3675309!4d75.1667458!16s%2Fg%2F1tf68hkx!3m5!1s0x3bb8d9f75a8e40af:0xcbb64f8f02cac689!8m2!3d15.3675309!4d75.1667458!16s%2Fg%2F1tf68hkx'),
('ELE002', 'https://www.google.com/maps/place/Jain+College+of+Engineering+%26+Technology+Hubballi/@15.3941102,75');

-- --------------------------------------------------------

--
-- Table structure for table `smart_city_garbage_complent`
--

CREATE TABLE `smart_city_garbage_complent` (
  `compl_no` varchar(100) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `place_name` varchar(100) DEFAULT NULL,
  `imged` varchar(100) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `dept_name` varchar(100) DEFAULT NULL,
  `dated` varchar(100) DEFAULT NULL,
  `timed` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `smart_city_garbage_complent`
--

INSERT INTO `smart_city_garbage_complent` (`compl_no`, `user_name`, `mobile`, `place_name`, `imged`, `latitude`, `longitude`, `dept_name`, `dated`, `timed`) VALUES
(NULL, NULL, NULL, NULL, 'Snapchat-390092413.mp4', NULL, NULL, NULL, NULL, NULL),
(NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL),
(NULL, NULL, NULL, NULL, 'IMG-20230208-WA0019.jpg', NULL, NULL, NULL, NULL, NULL),
('27', 'prajwal', '9353548256', 'Oxford college Hubli ', 'IMG-20230208-WA0015.jpeg', '15.3675688', '75.1667325', 'GARBAGE', '2023-02-09', '05:50:23pm'),
('54', 'prajwal', '9353548256', 'Goppankoppa ', 'IMG-20230209-WA0012.jpeg', '15.3732292', '75.1459892', 'GARBAGE', '2023-02-09', '07:01:42pm'),
('231', 'prajwal', '9353548256', 'siddram nagar ', 'Screenshot_2023-02-16-00-19-37-14_2768c6f3dd71c987876b7b9730ce2453.jpg', '15.3732388', '75.1459942', 'GARBAGE', '2023-02-16', '08:19:49pm'),
(NULL, NULL, NULL, NULL, 'Screenshot_2023-05-19-18-11-15-37_4336b74596784d9a2aa81f87c2016f50.jpg', NULL, NULL, NULL, NULL, NULL),
('325', 'prajwal', '9353548256', 'Oxford college\n', 'IMG20230612172418.jpg', '15.3674132', '75.1666419', 'GARBAGE', '2023-06-12', '05:25:50pm'),
('563', 'prajwal', '9353548256', 'siddram nagar', 'Screenshot_2023-06-15-12-37-43-72_944a2809ea1b4cda6ef12d1db9048ed3.jpg', '15.3732531', '75.1459927', 'GARBAGE', '2023-06-15', '02:48:12pm'),
('670', 'prajwal', '9353548256', 'bengeri', 'IMG-20230716-WA0001.jpg', '15.373225', '75.1459747', 'GARBAGE', '2023-07-16', '09:01:46pm'),
('23', 'prajwal', '9353548256', 'gandhinagar ', 'IMG-20231125-WA0002.jpg', '15.4372018', '75.0222328', 'GARBAGE', '2023-11-26', '12:32:57pm'),
('349', 'sagar', '9035292096', 'keshwapur', 'IMG-20240414-WA0000.jpg', '15.3705463', '75.1177359', 'GARBAGE', '2024-04-14', '12:17:12pm');

-- --------------------------------------------------------

--
-- Table structure for table `smart_city_garbage_complent_status`
--

CREATE TABLE `smart_city_garbage_complent_status` (
  `compl_no` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `statuss` varchar(100) NOT NULL,
  `depart` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `smart_city_garbage_complent_status`
--

INSERT INTO `smart_city_garbage_complent_status` (`compl_no`, `mobile`, `statuss`, `depart`) VALUES
('28', '9035292096', 'WORK ON PROCESS', 'GARBAGE'),
('296', '7892755069', 'WORK ON PROCESS', 'GARBAGE'),
('209', '7892755069', 'Work on Process', 'GARBAGE'),
('296', '7892755069', 'Work on Process', 'GARBAGE'),
('910', '7892755069', 'Work on process', 'GARBAGE'),
('170', '9353548256', 'Under Process', 'GARBAGE'),
('995', '9353548256', 'Work on process', 'GARBAGE'),
('768', '9353548256', 'Under Process', 'GARBAGE'),
('54', '9353548256', 'Work on process', 'GARBAGE'),
('563', '9353548256', 'Work on Process', 'GARBAGE'),
('670', '9353548256', 'KUSHI IS ON THE WAY', 'GARBAGE');

-- --------------------------------------------------------

--
-- Table structure for table `smart_city_garbage_login`
--

CREATE TABLE `smart_city_garbage_login` (
  `eid` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mno` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `smart_city_garbage_login`
--

INSERT INTO `smart_city_garbage_login` (`eid`, `name`, `mno`, `email`, `city`, `designation`, `password`) VALUES
('admin', 'admin', '9035292096', 'sagar2gmail.com', 'Hubli', 'staff', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `smart_city_road_complent`
--

CREATE TABLE `smart_city_road_complent` (
  `compl_no` varchar(100) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `place_name` varchar(100) DEFAULT NULL,
  `imged` varchar(100) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `dept_name` varchar(100) DEFAULT NULL,
  `dated` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `smart_city_road_complent`
--

INSERT INTO `smart_city_road_complent` (`compl_no`, `user_name`, `mobile`, `place_name`, `imged`, `latitude`, `longitude`, `dept_name`, `dated`) VALUES
('757', 'sagar', '9035292096', 'Hubli', 'IMG-20230130-WA0006.jpg', '15.3707', '75.1176931', 'ROAD', '2023-01-31'),
('526', 'Prajwal M', '9353548256', 'jammu', 'IMG_20230204_144910.jpg', '15.3707051', '75.1177146', 'ROAD', '2023-02-04'),
('173', 'prajwal', '9353548256', 'goppankoppa', 'Screenshot_2023-06-15-12-37-43-72_944a2809ea1b4cda6ef12d1db9048ed3.jpg', '15.3732435', '75.1459979', 'ROAD', '2023-06-15');

-- --------------------------------------------------------

--
-- Table structure for table `smart_city_road_login`
--

CREATE TABLE `smart_city_road_login` (
  `eid` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mno` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `smart_city_road_login`
--

INSERT INTO `smart_city_road_login` (`eid`, `name`, `mno`, `email`, `city`, `designation`, `password`) VALUES
('admin', 'admin', '9035292096', 'sagar2gmail.com', 'Hubli', 'staff', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `smart_city_user_account`
--

CREATE TABLE `smart_city_user_account` (
  `name` varchar(100) NOT NULL,
  `mno` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `smart_city_user_account`
--

INSERT INTO `smart_city_user_account` (`name`, `mno`, `email`, `address`, `password`, `city`, `gender`) VALUES
('', '', '', '', '', '', ''),
('sagar', '9035292096', 'sdalabanjan@gmail.com', 'Hubli', '123456', 'HUBLI', 'Male'),
('Pallav pawar', '7892755069', 'pawarpallavi247@gmail.com', 'hubli', 'pallavi@123', 'HUBLI', 'Female'),
('sagar', '9035292096', 'sdalabanjan@gmail.com', 'Hubli', '123456', 'HUBLI', 'Male'),
('Prajwal ', '9353548256', 'prajwalmathad1@gmail.com', 'hubli', 'pallavi@12', 'HUBLI', 'Male'),
('Pallavi B Pawar', '789275509', 'pawarpallavi247@gmail.com', 'hubli', 'pallavi@20', 'HUBLI', 'Female'),
('pooja', '8792306132', 'pawarpallavi247@gmail.com', 'vidyanagar', 'pooja@123', 'HUBLI', 'Female'),
('Prajwal ', '9353548256', 'prajwalmathad1@gmail.com', 'hubli', 'pallavi@12', 'HUBLI', 'Male'),
('pallavi pawar', '7892755069', 'pawarpallavi247@gmail.com', 'hubli vidyanagar', 'pallavi@20', 'HUBLI', 'Female'),
('pallavi pawar', '7892755069', 'pawarpallavi247@gmail.com', 'hubli vidyanagar', 'pallavi@20', 'HUBLI', 'Female'),
('Pallavi ', '8792306132', 'pawarpallavi247@gmail.com', 'dharwad', 'abc@12', 'HUBLI', 'Female'),
('Pallavi pawar', '8792306132', 'pawarpallavi247@gmail.com', 'hubli', 'nagaraj@22', 'HUBLI', 'Female'),
('pallavi', '8792306132', 'pawarpallavi247@gmail.com', 'hubli', 'pallavi@20', 'HUBLI', 'Female'),
('Prajwal ', '9353548256', 'prajwalmathad1@gmail.com', 'hubli', 'pallavi@12', 'HUBLI', 'Male'),
('Prajwal ', '9353548256', 'prajwalmathad1@gmail.com', 'hubli', 'pallavi@12', 'HUBLI', 'Male'),
('sagar', '9035292096', 'sdalabanjan@gmail.com', 'hubli', '123456', 'HUBLI', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `smart_city_view_feedback`
--

CREATE TABLE `smart_city_view_feedback` (
  `subject` varchar(100) NOT NULL,
  `msg` varchar(100) NOT NULL,
  `user_mno` varchar(100) NOT NULL,
  `dated` varchar(100) NOT NULL,
  `dept_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `smart_city_view_feedback`
--

INSERT INTO `smart_city_view_feedback` (`subject`, `msg`, `user_mno`, `dated`, `dept_name`) VALUES
('Clean Dustbin', 'near Oxford college', '9035292096', '2023-01-31', 'GARBAGE'),
('garbage ', 'clean dustbin ', '7892755069', '2023-01-31', 'GARBAGE'),
('light spark ', 'vidyanagar ', '7892755069', '2023-02-02', 'ELECTRICAL'),
('clean watar tank', 'oxford college ', '7892755069', '2023-02-02', 'CHOOSE DEPARTMENT'),
('clean watar tank ', 'oxford college ', '7892755069', '2023-02-02', 'WATER'),
('home shift ', 'vidyanagar', '9353548256', '2023-02-04', 'CHOOSE DEPARTMENT'),
('home shift ', 'vidyanagar ', '9353548256', '2023-02-04', 'GARBAGE'),
('clean area dusbin', 'near rotary school ', '9353548256', '2023-06-15', 'GARBAGE');

-- --------------------------------------------------------

--
-- Table structure for table `smart_city_water_complent`
--

CREATE TABLE `smart_city_water_complent` (
  `compl_no` varchar(100) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `place_name` varchar(100) DEFAULT NULL,
  `imged` varchar(100) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `dept_name` varchar(100) DEFAULT NULL,
  `dated` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `smart_city_water_complent`
--

INSERT INTO `smart_city_water_complent` (`compl_no`, `user_name`, `mobile`, `place_name`, `imged`, `latitude`, `longitude`, `dept_name`, `dated`) VALUES
('724', 'sagar', '9035292096', 'Hubli', 'IMG-20230130-WA0006.jpg', '15.3707038', '75.1177148', 'WATER', '2023-01-31'),
(NULL, NULL, NULL, NULL, '1675317002279.png', NULL, NULL, NULL, NULL),
('536', 'Pallav pawar', '7892755069', 'oxford college ', 'garbage-2729608__480.jpg', '15.3674808', '75.16666', 'WATER', '2023-02-02'),
('482', 'Prajwal M', '9353548256', 'kashmir', 'IMG_20230204_144849.jpg', '15.3707051', '75.1177146', 'WATER', '2023-02-04'),
('618', 'prajwal', '9353548256', 'siddram nagar\n', 'null-20230615-WA0000.jpg', '15.373264', '75.1459998', 'WATER', '2023-06-15'),
('167', 'prajwal', '9353548256', 'zaheer', 'Screenshot_2023-06-15-09-01-41-86_1c337646f29875672b5a61192b9010f9.jpg', '15.3732435', '75.1459979', 'WATER', '2023-06-15');

-- --------------------------------------------------------

--
-- Table structure for table `smart_city_water_login`
--

CREATE TABLE `smart_city_water_login` (
  `eid` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mno` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `smart_city_water_login`
--

INSERT INTO `smart_city_water_login` (`eid`, `name`, `mno`, `email`, `city`, `designation`, `password`) VALUES
('admin', 'admin', '9035292096', 'sagar@gmail.com', 'hubli', 'staff', '123456');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
