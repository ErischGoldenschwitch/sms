-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2019 at 10:46 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `march9_audit_tables`
--

-- --------------------------------------------------------

--
-- Table structure for table `class_log`
--

CREATE TABLE `class_log` (
  `id` int(11) NOT NULL,
  `actionTaken` varchar(25) NOT NULL,
  `actionTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ccode` int(11) DEFAULT NULL,
  `gcode` int(11) DEFAULT NULL,
  `ctcode` int(11) DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `lastModified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `class_type_log`
--

CREATE TABLE `class_type_log` (
  `id` int(11) NOT NULL,
  `actionTaken` varchar(25) NOT NULL,
  `actionTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ctcode` int(11) DEFAULT NULL,
  `type` varchar(245) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `lastModified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exam_term_log`
--

CREATE TABLE `exam_term_log` (
  `id` int(11) NOT NULL,
  `actionTaken` varchar(25) NOT NULL,
  `actionTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `exam_id` int(12) DEFAULT NULL,
  `name` varchar(450) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `grade_log`
--

CREATE TABLE `grade_log` (
  `id` int(11) NOT NULL,
  `actionTaken` varchar(25) NOT NULL,
  `actionTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `gcode` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `lastModified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mark_log`
--

CREATE TABLE `mark_log` (
  `id` int(11) NOT NULL,
  `actionTaken` varchar(25) NOT NULL,
  `actionTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `mcode` int(11) DEFAULT NULL,
  `ssecode` int(11) DEFAULT NULL,
  `tecode` int(11) DEFAULT NULL,
  `term` int(11) DEFAULT NULL,
  `mark` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `lastModified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mark_log`
--

INSERT INTO `mark_log` (`id`, `actionTaken`, `actionTime`, `mcode`, `ssecode`, `tecode`, `term`, `mark`, `year`, `createDate`, `lastModified`) VALUES
(1, 'DELETE', '2019-04-10 21:11:55', 16, 12, 4, 5, 99, 2019, '2019-03-18 00:00:00', '2019-03-18 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `meadmin_log`
--

CREATE TABLE `meadmin_log` (
  `id` int(11) NOT NULL,
  `actionTaken` varchar(25) NOT NULL,
  `actionTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `admin_id` int(150) DEFAULT NULL,
  `admin_username` varchar(150) DEFAULT NULL,
  `admin_password` varchar(100) DEFAULT NULL,
  `t_staff_type` varchar(150) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_class_enrol_log`
--

CREATE TABLE `student_class_enrol_log` (
  `id` int(11) NOT NULL,
  `actionTaken` varchar(25) NOT NULL,
  `actionTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sccode` int(11) DEFAULT NULL,
  `scode` int(11) DEFAULT NULL,
  `class` int(11) DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `lastModified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_subject_enrol_log`
--

CREATE TABLE `student_subject_enrol_log` (
  `id` int(11) NOT NULL,
  `actionTaken` varchar(25) NOT NULL,
  `actionTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scecode` int(11) DEFAULT NULL,
  `sccode` int(11) DEFAULT NULL,
  `subject` int(11) DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `lastModiefied` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `st_info_log`
--

CREATE TABLE `st_info_log` (
  `id` int(11) NOT NULL,
  `actionTaken` varchar(25) NOT NULL,
  `actionTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `st_id` int(12) DEFAULT NULL,
  `st_fullname` varchar(100) DEFAULT NULL,
  `st_username` varchar(30) DEFAULT NULL,
  `st_password` varchar(100) DEFAULT NULL,
  `st_grade` int(5) DEFAULT NULL,
  `roll_no` int(5) DEFAULT NULL,
  `st_dob` varchar(20) DEFAULT NULL,
  `st_address` varchar(100) DEFAULT NULL,
  `st_district` varchar(100) DEFAULT NULL,
  `st_gender` varchar(12) DEFAULT NULL,
  `st_father` varchar(100) DEFAULT NULL,
  `st_mother` varchar(200) DEFAULT NULL,
  `st_parents_contact` varchar(15) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `st_info_log`
--

INSERT INTO `st_info_log` (`id`, `actionTaken`, `actionTime`, `st_id`, `st_fullname`, `st_username`, `st_password`, `st_grade`, `roll_no`, `st_dob`, `st_address`, `st_district`, `st_gender`, `st_father`, `st_mother`, `st_parents_contact`, `image`) VALUES
(1, 'Update', '2019-04-10 20:23:52', 3, 'Qwe', 'asdf', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 8, 11, '27 Dec 1998', 'Banepa', 'Kavre', 'Male', 'aasd', 'aasdf', '9812222', ''),
(2, 'Update', '2019-04-10 20:40:23', 27, 'vilo qas', 'qas', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(3, 'DELETE', '2019-04-10 20:45:02', 51, 'basi rta', 'rota', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(4, 'Update', '2019-04-10 22:43:22', 2, 'Hari Thapa', 'hari2055', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 10, 12, '11/17/2055', 'Kausaltar', 'Bhaktapur', 'Male', 'Ram Thapa', 'Sita Thapa', '9812222200', ''),
(5, 'Update', '2019-04-10 22:51:33', 2, 'Hari Thapa', 'hari2055', 'abc', 10, 12, '11/17/2055', 'Kausaltar', 'Bhaktapur', 'Male', 'Ram Thapa', 'Sita Thapa', '9812222200', ''),
(6, 'Update', '2019-04-10 22:52:21', 2, 'Hari Thapa', 'hari2055', 'abc2', 10, 12, '11/17/2055', 'Kausaltar', 'Bhaktapur', 'Male', 'Ram Thapa', 'Sita Thapa', '9812222200', ''),
(7, 'Update', '2019-04-10 22:52:21', 3, 'Qwe', 'asdf', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 8, 11, '27 Dec 1998', 'Banepa', 'Kavre', 'Male', 'aasd', 'aasdf', '9812222', ''),
(8, 'Update', '2019-04-10 22:52:22', 4, 'Robin Dhakal', 'robin2053', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 10, 1, '20 Jan 1994', 'Patan', 'Lalitpur', 'Male', 'Rajan Dhakal', 'Rama Dhakal', '9841111', ''),
(9, 'Update', '2019-04-10 22:52:22', 5, 'Saugat Gautam', 'saugat2055', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 7, 12, '12 Jan 1999', 'Jadibuti', 'Kathmandu', 'Male', 'John Gautam', 'Sita Gautam', '9802212222', ''),
(10, 'Update', '2019-04-10 22:52:22', 8, 'Your Name', 'yourname', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 5, 1, '27 Jan 2000', 'Lokanthali', 'Bhaktapur', 'Male', 'John Cena', 'Sita Cena', '9811111111', ''),
(11, 'Update', '2019-04-10 22:52:22', 9, 'rajkumar xyz', 'rajkumar', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 10, 5, '13 Jan 2000', 'Kausaltar', 'Bhaktapur', 'Male', 'Abc xyz', 'Bcd xyz', '98000000', ''),
(12, 'Update', '2019-04-10 22:52:22', 10, 'dsdsdsd', 'aaaa', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 2, 1, '1 Jan 2000', 'Tinkune', 'Kathmandu', 'Male', 'abbb', 'acc', '123456', ''),
(13, 'Update', '2019-04-10 22:52:22', 12, 'dsdsds', 'qq', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 3, 1, '28 jan 2000', 'adsd', 'dsdsd', 'Male', 'dsds', 'ddsds', '12121', ''),
(14, 'Update', '2019-04-10 22:52:22', 13, 'Zorina Abreu', 'zabreu', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(15, 'Update', '2019-04-10 22:52:22', 14, 'Yon Akin', 'yonakin', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(16, 'Update', '2019-04-10 22:52:22', 15, 'santa baga', 'santa', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(17, 'Update', '2019-04-10 22:52:22', 16, 'Nush Nush', 'nush', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(18, 'Update', '2019-04-10 22:52:22', 17, 'zull zull', 'biza', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(19, 'Update', '2019-04-10 22:52:22', 18, 'bix Nush', 'bix', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(20, 'Update', '2019-04-10 22:52:22', 19, 'fala fal', 'fal', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(21, 'Update', '2019-04-10 22:52:22', 20, 'bix gash', 'gash', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(22, 'Update', '2019-04-10 22:52:22', 21, 'vilo vil', 'vil', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(23, 'Update', '2019-04-10 22:52:22', 22, 'bix dish', 'dish', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(24, 'Update', '2019-04-10 22:52:22', 23, 'vilo kas', 'kas', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(25, 'Update', '2019-04-10 22:52:22', 24, 'bix kas', 'bos', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(26, 'Update', '2019-04-10 22:52:22', 25, 'vilo tas', 'tas', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(27, 'Update', '2019-04-10 22:52:22', 26, 'bix tas', 'tasa', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(28, 'Update', '2019-04-10 22:52:22', 28, 'bas nash', 'nash', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(29, 'Update', '2019-04-10 22:52:23', 29, 'bobo rob', 'rob', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(30, 'Update', '2019-04-10 22:52:23', 30, 'bas rob', 'nasu', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(31, 'Update', '2019-04-10 22:52:23', 31, 'bas rosta', 'rosta', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(32, 'Update', '2019-04-10 22:52:23', 32, 'kasi rob', 'kasi', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(33, 'Update', '2019-04-10 22:52:23', 33, 'kasi kesh', 'kesh', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(34, 'Update', '2019-04-10 22:52:23', 34, 'kesha rob', 'kesha', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(35, 'Update', '2019-04-10 22:52:23', 35, 'vilx kesh', 'vilx', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(36, 'Update', '2019-04-10 22:52:23', 36, 'natxa tili', 'natxa', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(37, 'Update', '2019-04-10 22:52:23', 37, 'ntati zab', 'zab', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(38, 'Update', '2019-04-10 22:52:23', 38, 'zaompa sas', 'sas', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(39, 'Update', '2019-04-10 22:52:23', 39, 'jesi kas', 'jesi', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(40, 'Update', '2019-04-10 22:52:23', 40, 'kas jesi', 'kasu', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(41, 'Update', '2019-04-10 22:52:23', 41, 'basi rta', 'rota', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(42, 'Update', '2019-04-10 22:52:23', 42, 'kasi rob', 'kasi', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(43, 'Update', '2019-04-10 22:52:23', 43, 'kai kesh', 'kesu', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(44, 'Update', '2019-04-10 22:52:23', 44, 'keha ro', 'keha', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(45, 'Update', '2019-04-10 22:52:24', 45, 'vilp keh', 'vilp', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(46, 'Update', '2019-04-10 22:52:24', 46, 'nata tii', 'nata', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(47, 'Update', '2019-04-10 22:52:24', 47, 'ntai zabi', 'zabi', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(48, 'Update', '2019-04-10 22:52:24', 48, 'zaompa saso', 'saso', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(49, 'Update', '2019-04-10 22:52:24', 49, 'jei kaps', 'kaps', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(50, 'Update', '2019-04-10 22:52:24', 50, 'kaspi jel', 'kaspsi', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(51, 'Update', '2019-04-10 22:52:24', 52, 'kasil rob', 'kasil', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(52, 'Update', '2019-04-10 22:52:24', 53, 'kaib kesih', 'kesuh', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(53, 'Update', '2019-04-10 22:52:24', 54, 'kehah rov', 'kseha', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(54, 'Update', '2019-04-10 22:52:24', 55, 'vilpo kelh', 'vilpo', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(55, 'Update', '2019-04-10 22:52:24', 56, 'natal tiiv', 'natia', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(56, 'Update', '2019-04-10 22:52:24', 57, 'ntai zabki', 'zabki', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(57, 'Update', '2019-04-10 22:52:24', 58, 'zaompa sasoo', 'sasoo', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(58, 'Update', '2019-04-10 22:52:24', 59, 'jeil kapis', 'kapis', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(59, 'Update', '2019-04-10 22:52:24', 60, 'kaspi jel', 'kaspsi', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(60, 'Update', '2019-04-10 22:52:24', 61, 'basil rata', 'rotaa', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(61, 'Update', '2019-04-10 22:52:24', 62, 'kasila royb', 'kasiyl', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(62, 'Update', '2019-04-10 22:52:24', 63, 'kaiba keysih', 'kesyuh', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(63, 'Update', '2019-04-10 22:52:24', 64, 'kehyah royv', 'kseyha', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(64, 'Update', '2019-04-10 22:52:25', 65, 'vilpyo kelah', 'viylpo', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(65, 'Update', '2019-04-10 22:52:25', 66, 'natyal tiliv', 'naytia', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(66, 'Update', '2019-04-10 22:52:25', 67, 'ntayi zabkis', 'zabkis', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(67, 'Update', '2019-04-10 22:52:25', 68, 'zalompa sasloo', 'sasolo', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(68, 'Update', '2019-04-10 22:52:25', 69, 'eil kapis', 'apis', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(69, 'Update', '2019-04-10 22:52:25', 70, 'kspi jel', 'aspsi', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(70, 'Update', '2019-04-10 22:52:25', 71, 'basil rata', 'rotaa', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(71, 'Update', '2019-04-10 22:52:25', 72, 'asila oyb', 'asiyl', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(72, 'Update', '2019-04-10 22:52:25', 73, 'aiba eysih', 'esyuh', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(73, 'Update', '2019-04-10 22:52:25', 74, 'ehyah royv', 'keyha', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(74, 'Update', '2019-04-10 22:52:25', 75, 'ilpyo kela', 'iylpo', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(75, 'Update', '2019-04-10 22:52:25', 76, 'atyal iliv', 'aytia', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(76, 'Update', '2019-04-10 22:52:25', 77, 'tayi abkis', 'abkis', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(77, 'Update', '2019-04-10 22:52:25', 78, 'alompa asloo', 'asolo', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(78, 'Update', '2019-04-10 22:52:25', 79, 'zeil kapis', 'zapis', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(79, 'Update', '2019-04-10 22:52:25', 80, 'zakspi jel', 'zaspsi', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(80, 'Update', '2019-04-10 22:52:25', 81, 'zabasil ata', 'otaa', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(81, 'Update', '2019-04-10 22:52:25', 82, 'zasila oyb', 'zasiyl', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(82, 'Update', '2019-04-10 22:52:25', 83, 'zaiba zeysih', 'zesyuh', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(83, 'Update', '2019-04-10 22:52:25', 84, 'zehyah royv', 'zeyha', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(84, 'Update', '2019-04-10 22:52:25', 85, 'zilpyo kela', 'ziylpo', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(85, 'Update', '2019-04-10 22:52:25', 86, 'zatyal iliv', 'zaytia', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(86, 'Update', '2019-04-10 22:52:25', 87, 'ayi abkis', 'zabkis', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(87, 'Update', '2019-04-10 22:52:26', 88, 'zalompa asloo', 'zasolo', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(88, 'Update', '2019-04-10 22:52:26', 89, 'zei apis', 'zapi', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(89, 'Update', '2019-04-10 22:52:26', 90, 'zakspi el', 'zazsi', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(90, 'Update', '2019-04-10 22:52:26', 91, 'zabasil zata', 'zotaa', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(91, 'Update', '2019-04-10 22:52:26', 92, 'zasia oyb', 'casiyl', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(92, 'Update', '2019-04-10 22:52:26', 93, 'zaiba eysih', 'xesyuh', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(93, 'Update', '2019-04-10 22:52:26', 94, 'oehyah royv', 'zoyha', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(94, 'Update', '2019-04-10 22:52:26', 95, 'zolpyo kela', 'zoylpo', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(95, 'Update', '2019-04-10 22:52:26', 96, 'zotyal iliv', 'zoytia', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(96, 'Update', '2019-04-10 22:52:26', 97, 'kayi abks', 'zabkiso', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(97, 'Update', '2019-04-10 22:52:26', 98, 'lompa asloo', 'zaspolo', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(98, 'Update', '2019-04-10 22:52:26', 99, 'zee apos', 'zapo', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(99, 'Update', '2019-04-10 22:52:26', 100, 'zokspi el', 'zazsi', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(100, 'Update', '2019-04-10 22:52:26', 101, 'zabosil zata', 'zotoa', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(101, 'Update', '2019-04-10 22:52:26', 102, 'zasoa oyb', 'casoyl', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(102, 'Update', '2019-04-10 22:52:26', 103, 'zaoba eysih', 'xesouh', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(103, 'Update', '2019-04-10 22:52:26', 104, 'oeoyah royv', 'zoyho', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(104, 'Update', '2019-04-10 22:52:26', 105, 'zoloyo kela', 'zoylopo', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(105, 'Update', '2019-04-10 22:52:26', 106, 'zotyol iliv', 'zoytio', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(106, 'Update', '2019-04-10 22:52:26', 107, 'kayio aboks', 'zabkoso', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(107, 'Update', '2019-04-10 22:52:26', 108, 'lompa asloxo', 'zaspalo', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(108, 'Update', '2019-04-10 22:52:26', 109, 'zee apos', 'zapos', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(109, 'Update', '2019-04-10 22:52:26', 110, 'zokspi el', 'zazdi', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(110, 'Update', '2019-04-10 22:52:26', 111, 'zabosil zata', 'zotoad', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(111, 'Update', '2019-04-10 22:52:26', 112, 'zasoa oyb', 'casoyld', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(112, 'Update', '2019-04-10 22:52:26', 113, 'zaoba eysih', 'xesouhd', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(113, 'Update', '2019-04-10 22:52:27', 114, 'oeoyah royv', 'zoyhod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(114, 'Update', '2019-04-10 22:52:27', 115, 'zoloyo kela', 'zoylopod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(115, 'Update', '2019-04-10 22:52:27', 116, 'zotyol iliv', 'zoytiod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(116, 'Update', '2019-04-10 22:52:27', 117, 'kayio aboks', 'zabkosod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(117, 'Update', '2019-04-10 22:52:27', 118, 'lompa asloxo', 'zaspalod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(118, 'Update', '2019-04-10 22:52:27', 119, 'zee apos', 'zados', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(119, 'Update', '2019-04-10 22:52:27', 120, 'zokspi el', 'zazdid', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(120, 'Update', '2019-04-10 22:52:27', 121, 'zabosil zata', 'zotdoad', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(121, 'Update', '2019-04-10 22:52:27', 122, 'zasoa oyb', 'casoylopod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(122, 'Update', '2019-04-10 22:52:27', 123, 'zaoba eysih', 'xesouhdod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(123, 'Update', '2019-04-10 22:52:27', 124, 'oeoyah royv', 'zoyhodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(124, 'Update', '2019-04-10 22:52:27', 125, 'zoloyo kela', 'zoylopodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(125, 'Update', '2019-04-10 22:52:27', 126, 'zotyol iliv', 'zoytiodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(126, 'Update', '2019-04-10 22:52:27', 127, 'kayio aboks', 'zabkosodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(127, 'Update', '2019-04-10 22:52:27', 128, 'lompa asloxo', 'zaspalodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(128, 'Update', '2019-04-10 22:52:27', 129, 'zee apos', 'ados', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(129, 'Update', '2019-04-10 22:52:27', 130, 'zokspi el', 'azdid', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(130, 'Update', '2019-04-10 22:52:27', 131, 'zabosil zata', 'otdoad', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(131, 'Update', '2019-04-10 22:52:27', 132, 'zasoa oyb', 'soylopod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(132, 'Update', '2019-04-10 22:52:27', 133, 'zaoba eysih', 'ouhdod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(133, 'Update', '2019-04-10 22:52:27', 134, 'oeoyah royv', 'oyhodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(134, 'Update', '2019-04-10 22:52:27', 135, 'zoloyo kela', 'oylopodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(135, 'Update', '2019-04-10 22:52:27', 136, 'zotyol iliv', 'oytiodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(136, 'Update', '2019-04-10 22:52:27', 137, 'kayio aboks', 'abkosodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(137, 'Update', '2019-04-10 22:52:28', 138, 'lompa asloxo', 'aspalodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(138, 'Update', '2019-04-10 22:52:28', 139, 'zee apos', 'xados', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(139, 'Update', '2019-04-10 22:52:28', 140, 'zokspi el', 'xazdid', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(140, 'Update', '2019-04-10 22:52:28', 141, 'zabosil zata', 'xotdoad', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(141, 'Update', '2019-04-10 22:52:28', 142, 'zasoa oyb', 'xoylopod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(142, 'Update', '2019-04-10 22:52:28', 143, 'zaoba eysih', 'xouhdod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(143, 'Update', '2019-04-10 22:52:28', 144, 'oeoyah royv', 'xoyhodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(144, 'Update', '2019-04-10 22:52:28', 145, 'zoloyo kela', 'xoylopodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(145, 'Update', '2019-04-10 22:52:28', 146, 'zotyol iliv', 'xoytiodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(146, 'Update', '2019-04-10 22:52:28', 147, 'kayio aboks', 'xabkosodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(147, 'Update', '2019-04-10 22:52:28', 148, 'lompa asloxo', 'xaspalodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(148, 'Update', '2019-04-10 22:52:28', 149, 'zee apos', 'qados', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(149, 'Update', '2019-04-10 22:52:28', 150, 'zokspi el', 'qazdid', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(150, 'Update', '2019-04-10 22:52:28', 151, 'zabosil zata', 'qotdoad', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(151, 'Update', '2019-04-10 22:52:28', 152, 'zasoa oyb', 'qoylopod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(152, 'Update', '2019-04-10 22:52:28', 153, 'zaoba eysih', 'qouhdod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(153, 'Update', '2019-04-10 22:52:28', 154, 'oeoyah royv', 'qoyhodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(154, 'Update', '2019-04-10 22:52:28', 155, 'zoloyo kela', 'qoylopodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(155, 'Update', '2019-04-10 22:52:28', 156, 'zotyol iliv', 'qoytiodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(156, 'Update', '2019-04-10 22:52:28', 157, 'kayio aboks', 'qabkosodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(157, 'Update', '2019-04-10 22:52:28', 158, 'lompa asloxo', 'qaspalodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(158, 'Update', '2019-04-10 22:52:28', 159, 'zee apos', 'wados', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(159, 'Update', '2019-04-10 22:52:28', 160, 'zokspi el', 'wazdid', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(160, 'Update', '2019-04-10 22:52:28', 161, 'zabosil zata', 'wotdoad', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(161, 'Update', '2019-04-10 22:52:28', 162, 'zasoa oyb', 'woylopod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(162, 'Update', '2019-04-10 22:52:28', 163, 'zaoba eysih', 'wouhdod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(163, 'Update', '2019-04-10 22:52:28', 164, 'oeoyah royv', 'woyhodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(164, 'Update', '2019-04-10 22:52:29', 165, 'zoloyo kela', 'woylopodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(165, 'Update', '2019-04-10 22:52:29', 166, 'zotyol iliv', 'woytiodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(166, 'Update', '2019-04-10 22:52:29', 167, 'kayio aboks', 'wabkosodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(167, 'Update', '2019-04-10 22:52:29', 168, 'lompa asloxo', 'waspalodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(168, 'Update', '2019-04-10 22:52:29', 169, 'zee apos', 'eados', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(169, 'Update', '2019-04-10 22:52:29', 170, 'zokspi el', 'eazdid', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(170, 'Update', '2019-04-10 22:52:29', 171, 'zabosil zata', 'eotdoad', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(171, 'Update', '2019-04-10 22:52:29', 172, 'zasoa oyb', 'eoylopod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(172, 'Update', '2019-04-10 22:52:29', 173, 'zaoba eysih', 'eouhdod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(173, 'Update', '2019-04-10 22:52:29', 174, 'oeoyah royv', 'eoyhodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(174, 'Update', '2019-04-10 22:52:29', 175, 'zoloyo kela', 'eoylopodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(175, 'Update', '2019-04-10 22:52:29', 176, 'zotyol iliv', 'eoytiodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(176, 'Update', '2019-04-10 22:52:29', 177, 'kayio aboks', 'eabkosodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(177, 'Update', '2019-04-10 22:52:29', 178, 'lompa asloxo', 'easpalodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(178, 'Update', '2019-04-10 22:52:29', 179, 'zee apos', 'rados', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(179, 'Update', '2019-04-10 22:52:29', 180, 'zokspi el', 'razdid', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(180, 'Update', '2019-04-10 22:52:29', 181, 'zabosil zata', 'rotdoad', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(181, 'Update', '2019-04-10 22:52:29', 182, 'zasoa oyb', 'roylopod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(182, 'Update', '2019-04-10 22:52:29', 183, 'zaoba eysih', 'rouhdod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(183, 'Update', '2019-04-10 22:52:29', 184, 'oeoyah royv', 'royhodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(184, 'Update', '2019-04-10 22:52:29', 185, 'zoloyo kela', 'roylopodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(185, 'Update', '2019-04-10 22:52:29', 186, 'zotyol iliv', 'roytiodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(186, 'Update', '2019-04-10 22:52:29', 187, 'kayio aboks', 'rabkosodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(187, 'Update', '2019-04-10 22:52:29', 188, 'lompa asloxo', 'raspalodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(188, 'Update', '2019-04-10 22:52:29', 189, 'zee apos', 'tados', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(189, 'Update', '2019-04-10 22:52:29', 190, 'zokspi el', 'tazdid', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(190, 'Update', '2019-04-10 22:52:29', 191, 'zabosil zata', 'totdoad', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(191, 'Update', '2019-04-10 22:52:30', 192, 'zasoa oyb', 'toylopod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(192, 'Update', '2019-04-10 22:52:30', 193, 'zaoba eysih', 'touhdod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(193, 'Update', '2019-04-10 22:52:30', 194, 'oeoyah royv', 'toyhodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(194, 'Update', '2019-04-10 22:52:30', 195, 'zoloyo kela', 'toylopodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(195, 'Update', '2019-04-10 22:52:30', 196, 'zotyol iliv', 'toytiodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(196, 'Update', '2019-04-10 22:52:30', 197, 'kayio aboks', 'tabkosodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(197, 'Update', '2019-04-10 22:52:30', 198, 'lompa asloxo', 'taspalodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(198, 'Update', '2019-04-10 22:52:30', 199, 'zee apos', 'yados', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(199, 'Update', '2019-04-10 22:52:30', 200, 'zokspi el', 'yazdid', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(200, 'Update', '2019-04-10 22:52:30', 201, 'zabosil zata', 'yotdoad', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(201, 'Update', '2019-04-10 22:52:30', 202, 'zasoa oyb', 'yoylopod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(202, 'Update', '2019-04-10 22:52:30', 203, 'zaoba eysih', 'youhdod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(203, 'Update', '2019-04-10 22:52:30', 204, 'oeoyah royv', 'yoyhodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(204, 'Update', '2019-04-10 22:52:30', 205, 'zoloyo kela', 'yoylopodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(205, 'Update', '2019-04-10 22:52:30', 206, 'zotyol iliv', 'yoytiodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(206, 'Update', '2019-04-10 22:52:30', 207, 'kayio aboks', 'yabkosodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(207, 'Update', '2019-04-10 22:52:30', 208, 'lompa asloxo', 'yaspalodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(208, 'Update', '2019-04-10 22:52:30', 209, 'zee apos', 'uados', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(209, 'Update', '2019-04-10 22:52:30', 210, 'zokspi el', 'uazdid', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(210, 'Update', '2019-04-10 22:52:30', 211, 'zabosil zata', 'uotdoad', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(211, 'Update', '2019-04-10 22:52:30', 212, 'zasoa oyb', 'uoylopod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(212, 'Update', '2019-04-10 22:52:30', 213, 'zaoba eysih', 'uouhdod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(213, 'Update', '2019-04-10 22:52:30', 214, 'oeoyah royv', 'uoyhodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(214, 'Update', '2019-04-10 22:52:30', 215, 'zoloyo kela', 'uoylopodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(215, 'Update', '2019-04-10 22:52:30', 216, 'zotyol iliv', 'uoytiodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(216, 'Update', '2019-04-10 22:52:30', 217, 'kayio aboks', 'uabkosodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(217, 'Update', '2019-04-10 22:52:31', 218, 'lompa asloxo', 'uaspalodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(218, 'Update', '2019-04-10 22:52:31', 219, 'zee apos', 'iados', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(219, 'Update', '2019-04-10 22:52:31', 220, 'zokspi el', 'iazdid', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(220, 'Update', '2019-04-10 22:52:31', 221, 'zabosil zata', 'iotdoad', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(221, 'Update', '2019-04-10 22:52:31', 222, 'zasoa oyb', 'ioylopod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(222, 'Update', '2019-04-10 22:52:31', 223, 'zaoba eysih', 'iouhdod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(223, 'Update', '2019-04-10 22:52:31', 224, 'oeoyah royv', 'ioyhodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(224, 'Update', '2019-04-10 22:52:31', 225, 'zoloyo kela', 'ioylopodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(225, 'Update', '2019-04-10 22:52:31', 226, 'zotyol iliv', 'ioytiodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(226, 'Update', '2019-04-10 22:52:31', 227, 'kayio aboks', 'iabkosodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(227, 'Update', '2019-04-10 22:52:31', 228, 'lompa asloxo', 'iaspalodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(228, 'Update', '2019-04-10 22:52:31', 229, 'zee apos', 'pados', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(229, 'Update', '2019-04-10 22:52:31', 230, 'zokspi el', 'pazdid', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(230, 'Update', '2019-04-10 22:52:31', 231, 'zabosil zata', 'potdoad', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(231, 'Update', '2019-04-10 22:52:31', 232, 'zasoa oyb', 'poylopod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(232, 'Update', '2019-04-10 22:52:31', 233, 'zaoba eysih', 'pouhdod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(233, 'Update', '2019-04-10 22:52:31', 234, 'oeoyah royv', 'poyhodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', '');
INSERT INTO `st_info_log` (`id`, `actionTaken`, `actionTime`, `st_id`, `st_fullname`, `st_username`, `st_password`, `st_grade`, `roll_no`, `st_dob`, `st_address`, `st_district`, `st_gender`, `st_father`, `st_mother`, `st_parents_contact`, `image`) VALUES
(234, 'Update', '2019-04-10 22:52:31', 235, 'zoloyo kela', 'poylopodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(235, 'Update', '2019-04-10 22:52:31', 236, 'zotyol iliv', 'poytiodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(236, 'Update', '2019-04-10 22:52:31', 237, 'kayio aboks', 'pabkosodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(237, 'Update', '2019-04-10 22:52:31', 238, 'lompa asloxo', 'paspalodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(238, 'Update', '2019-04-10 22:52:31', 239, 'zee apos', 'fados', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(239, 'Update', '2019-04-10 22:52:31', 240, 'zokspi el', 'fazdid', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(240, 'Update', '2019-04-10 22:52:31', 241, 'zabosil zata', 'fotdoad', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(241, 'Update', '2019-04-10 22:52:32', 242, 'zasoa oyb', 'foylopod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(242, 'Update', '2019-04-10 22:52:32', 243, 'zaoba eysih', 'fouhdod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(243, 'Update', '2019-04-10 22:52:32', 244, 'oeoyah royv', 'foyhodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(244, 'Update', '2019-04-10 22:52:32', 245, 'zoloyo kela', 'foylopodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(245, 'Update', '2019-04-10 22:52:32', 246, 'zotyol iliv', 'foytiodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(246, 'Update', '2019-04-10 22:52:32', 247, 'kayio aboks', 'fabkosodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(247, 'Update', '2019-04-10 22:52:32', 248, 'lompa asloxo', 'faspalodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(248, 'Update', '2019-04-10 22:52:32', 249, 'zee apos', 'gados', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(249, 'Update', '2019-04-10 22:52:32', 250, 'zokspi el', 'gazdid', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(250, 'Update', '2019-04-10 22:52:32', 251, 'zabosil zata', 'gotdoad', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(251, 'Update', '2019-04-10 22:52:32', 252, 'zasoa oyb', 'goylopod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(252, 'Update', '2019-04-10 22:52:32', 253, 'zaoba eysih', 'gouhdod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(253, 'Update', '2019-04-10 22:52:32', 254, 'oeoyah royv', 'goyhodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(254, 'Update', '2019-04-10 22:52:32', 255, 'zoloyo kela', 'goylopodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(255, 'Update', '2019-04-10 22:52:32', 256, 'zotyol iliv', 'goytiodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(256, 'Update', '2019-04-10 22:52:32', 257, 'kayio aboks', 'gabkosodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(257, 'Update', '2019-04-10 22:52:32', 258, 'lompa asloxo', 'gaspalodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(258, 'Update', '2019-04-10 22:52:32', 259, 'zee apos', 'hados', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(259, 'Update', '2019-04-10 22:52:32', 260, 'zokspi el', 'hazdid', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(260, 'Update', '2019-04-10 22:52:32', 261, 'zabosil zata', 'hotdoad', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(261, 'Update', '2019-04-10 22:52:32', 262, 'zasoa oyb', 'hoylopod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(262, 'Update', '2019-04-10 22:52:32', 263, 'zaoba eysih', 'houhdod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(263, 'Update', '2019-04-10 22:52:32', 264, 'oeoyah royv', 'hoyhodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(264, 'Update', '2019-04-10 22:52:32', 265, 'zoloyo kela', 'hoylopodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(265, 'Update', '2019-04-10 22:52:32', 266, 'zotyol iliv', 'hoytiodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(266, 'Update', '2019-04-10 22:52:33', 267, 'kayio aboks', 'habkosodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(267, 'Update', '2019-04-10 22:52:33', 268, 'lompa asloxo', 'haspalodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(268, 'Update', '2019-04-10 22:52:33', 269, 'zee apos', 'jados', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(269, 'Update', '2019-04-10 22:52:33', 270, 'zokspi el', 'jazdid', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(270, 'Update', '2019-04-10 22:52:33', 271, 'zabosil zata', 'jotdoad', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(271, 'Update', '2019-04-10 22:52:33', 272, 'zasoa oyb', 'joylopod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(272, 'Update', '2019-04-10 22:52:33', 273, 'zaoba eysih', 'jouhdod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(273, 'Update', '2019-04-10 22:52:33', 274, 'oeoyah royv', 'joyhodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(274, 'Update', '2019-04-10 22:52:33', 275, 'zoloyo kela', 'joylopodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(275, 'Update', '2019-04-10 22:52:33', 276, 'zotyol iliv', 'joytiodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(276, 'Update', '2019-04-10 22:52:33', 277, 'kayio aboks', 'jabkosodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(277, 'Update', '2019-04-10 22:52:33', 278, 'lompa asloxo', 'jaspalodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(278, 'Update', '2019-04-10 22:52:33', 279, 'zee apos', 'kados', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(279, 'Update', '2019-04-10 22:52:33', 280, 'zokspi el', 'kazdid', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(280, 'Update', '2019-04-10 22:52:33', 281, 'zabosil zata', 'kotdoad', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(281, 'Update', '2019-04-10 22:52:33', 282, 'zasoa oyb', 'koylopod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(282, 'Update', '2019-04-10 22:52:33', 283, 'zaoba eysih', 'kouhdod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(283, 'Update', '2019-04-10 22:52:33', 284, 'oeoyah royv', 'koyhodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(284, 'Update', '2019-04-10 22:52:33', 285, 'zoloyo kela', 'koylopodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(285, 'Update', '2019-04-10 22:52:33', 286, 'zotyol iliv', 'koytiodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(286, 'Update', '2019-04-10 22:52:33', 287, 'kayio aboks', 'kabkosodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(287, 'Update', '2019-04-10 22:52:33', 288, 'lompa asloxo', 'kaspalodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(288, 'Update', '2019-04-10 22:52:33', 289, 'zee apos', 'lados', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(289, 'Update', '2019-04-10 22:52:33', 290, 'zokspi el', 'lazdid', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(290, 'Update', '2019-04-10 22:52:34', 291, 'zabosil zata', 'lotdoad', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(291, 'Update', '2019-04-10 22:52:34', 292, 'zasoa oyb', 'loylopod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(292, 'Update', '2019-04-10 22:52:34', 293, 'zaoba eysih', 'louhdod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(293, 'Update', '2019-04-10 22:52:34', 294, 'oeoyah royv', 'loyhodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(294, 'Update', '2019-04-10 22:52:34', 295, 'zoloyo kela', 'loylopodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(295, 'Update', '2019-04-10 22:52:34', 296, 'zotyol iliv', 'loytiodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(296, 'Update', '2019-04-10 22:52:34', 297, 'kayio aboks', 'labkosodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(297, 'Update', '2019-04-10 22:52:34', 298, 'lompa asloxo', 'laspalodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(298, 'Update', '2019-04-10 22:52:34', 299, 'zee apos', 'vados', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(299, 'Update', '2019-04-10 22:52:34', 300, 'zokspi el', 'vazdid', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(300, 'Update', '2019-04-10 22:52:34', 301, 'zabosil zata', 'votdoad', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(301, 'Update', '2019-04-10 22:52:34', 302, 'zasoa oyb', 'voylopod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(302, 'Update', '2019-04-10 22:52:34', 303, 'zaoba eysih', 'vouhdod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(303, 'Update', '2019-04-10 22:52:34', 304, 'oeoyah royv', 'voyhodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(304, 'Update', '2019-04-10 22:52:34', 305, 'zoloyo kela', 'voylopodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(305, 'Update', '2019-04-10 22:52:34', 306, 'zotyol iliv', 'voytiodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(306, 'Update', '2019-04-10 22:52:34', 307, 'kayio aboks', 'vabkosodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(307, 'Update', '2019-04-10 22:52:34', 308, 'lompa asloxo', 'vaspalodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(308, 'Update', '2019-04-10 22:52:34', 309, 'zee apos', 'bados', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(309, 'Update', '2019-04-10 22:52:34', 310, 'zokspi el', 'bazdid', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(310, 'Update', '2019-04-10 22:52:34', 311, 'zabosil zata', 'botdoad', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(311, 'Update', '2019-04-10 22:52:34', 312, 'zasoa oyb', 'boylopod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(312, 'Update', '2019-04-10 22:52:34', 313, 'zaoba eysih', 'bouhdod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(313, 'Update', '2019-04-10 22:52:34', 314, 'oeoyah royv', 'boyhodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(314, 'Update', '2019-04-10 22:52:35', 315, 'zoloyo kela', 'boylopodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(315, 'Update', '2019-04-10 22:53:37', 2, 'Hari Thapa', 'hari2055', 'abc2', 10, 12, '11/17/2055', 'Kausaltar', 'Bhaktapur', 'Male', 'Ram Thapa', 'Sita Thapa', '9812222200', ''),
(316, 'Update', '2019-04-10 22:53:37', 3, 'Qwe', 'asdf', 'abc3', 8, 11, '27 Dec 1998', 'Banepa', 'Kavre', 'Male', 'aasd', 'aasdf', '9812222', ''),
(317, 'Update', '2019-04-10 22:53:37', 4, 'Robin Dhakal', 'robin2053', 'abc4', 10, 1, '20 Jan 1994', 'Patan', 'Lalitpur', 'Male', 'Rajan Dhakal', 'Rama Dhakal', '9841111', ''),
(318, 'Update', '2019-04-10 22:53:37', 5, 'Saugat Gautam', 'saugat2055', 'abc5', 7, 12, '12 Jan 1999', 'Jadibuti', 'Kathmandu', 'Male', 'John Gautam', 'Sita Gautam', '9802212222', ''),
(319, 'Update', '2019-04-10 22:53:37', 8, 'Your Name', 'yourname', 'abc8', 5, 1, '27 Jan 2000', 'Lokanthali', 'Bhaktapur', 'Male', 'John Cena', 'Sita Cena', '9811111111', ''),
(320, 'Update', '2019-04-10 22:53:37', 9, 'rajkumar xyz', 'rajkumar', 'abc9', 10, 5, '13 Jan 2000', 'Kausaltar', 'Bhaktapur', 'Male', 'Abc xyz', 'Bcd xyz', '98000000', ''),
(321, 'Update', '2019-04-10 22:53:37', 10, 'dsdsdsd', 'aaaa', 'abc10', 2, 1, '1 Jan 2000', 'Tinkune', 'Kathmandu', 'Male', 'abbb', 'acc', '123456', ''),
(322, 'Update', '2019-04-10 22:53:37', 12, 'dsdsds', 'qq', 'abc12', 3, 1, '28 jan 2000', 'adsd', 'dsdsd', 'Male', 'dsds', 'ddsds', '12121', ''),
(323, 'Update', '2019-04-10 22:53:37', 13, 'Zorina Abreu', 'zabreu', 'abc13', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(324, 'Update', '2019-04-10 22:53:37', 14, 'Yon Akin', 'yonakin', 'abc14', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(325, 'Update', '2019-04-10 22:53:37', 15, 'santa baga', 'santa', 'abc15', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(326, 'Update', '2019-04-10 22:53:37', 16, 'Nush Nush', 'nush', 'abc16', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(327, 'Update', '2019-04-10 22:53:37', 17, 'zull zull', 'biza', 'abc17', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(328, 'Update', '2019-04-10 22:53:37', 18, 'bix Nush', 'bix', 'abc18', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(329, 'Update', '2019-04-10 22:53:37', 19, 'fala fal', 'fal', 'abc19', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(330, 'Update', '2019-04-10 22:53:37', 20, 'bix gash', 'gash', 'abc20', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(331, 'Update', '2019-04-10 22:53:37', 21, 'vilo vil', 'vil', 'abc21', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(332, 'Update', '2019-04-10 22:53:37', 22, 'bix dish', 'dish', 'abc22', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(333, 'Update', '2019-04-10 22:53:37', 23, 'vilo kas', 'kas', 'abc23', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(334, 'Update', '2019-04-10 22:53:37', 24, 'bix kas', 'bos', 'abc24', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(335, 'Update', '2019-04-10 22:53:37', 25, 'vilo tas', 'tas', 'abc25', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(336, 'Update', '2019-04-10 22:53:38', 26, 'bix tas', 'tasa', 'abc26', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(337, 'Update', '2019-04-10 22:53:38', 28, 'bas nash', 'nash', 'abc28', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(338, 'Update', '2019-04-10 22:53:38', 29, 'bobo rob', 'rob', 'abc29', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(339, 'Update', '2019-04-10 22:53:38', 30, 'bas rob', 'nasu', 'abc30', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(340, 'Update', '2019-04-10 22:53:38', 31, 'bas rosta', 'rosta', 'abc31', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(341, 'Update', '2019-04-10 22:53:38', 32, 'kasi rob', 'kasi', 'abc32', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(342, 'Update', '2019-04-10 22:53:38', 33, 'kasi kesh', 'kesh', 'abc33', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(343, 'Update', '2019-04-10 22:53:38', 34, 'kesha rob', 'kesha', 'abc34', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(344, 'Update', '2019-04-10 22:53:38', 35, 'vilx kesh', 'vilx', 'abc35', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(345, 'Update', '2019-04-10 22:53:38', 36, 'natxa tili', 'natxa', 'abc36', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(346, 'Update', '2019-04-10 22:53:38', 37, 'ntati zab', 'zab', 'abc37', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(347, 'Update', '2019-04-10 22:53:38', 38, 'zaompa sas', 'sas', 'abc38', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(348, 'Update', '2019-04-10 22:53:38', 39, 'jesi kas', 'jesi', 'abc39', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(349, 'Update', '2019-04-10 22:53:38', 40, 'kas jesi', 'kasu', 'abc40', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(350, 'Update', '2019-04-10 22:53:38', 41, 'basi rta', 'rota', 'abc41', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(351, 'Update', '2019-04-10 22:53:38', 42, 'kasi rob', 'kasi', 'abc42', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(352, 'Update', '2019-04-10 22:53:38', 43, 'kai kesh', 'kesu', 'abc43', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(353, 'Update', '2019-04-10 22:53:38', 44, 'keha ro', 'keha', 'abc44', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(354, 'Update', '2019-04-10 22:53:38', 45, 'vilp keh', 'vilp', 'abc45', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(355, 'Update', '2019-04-10 22:53:38', 46, 'nata tii', 'nata', 'abc46', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(356, 'Update', '2019-04-10 22:53:38', 47, 'ntai zabi', 'zabi', 'abc47', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(357, 'Update', '2019-04-10 22:53:38', 48, 'zaompa saso', 'saso', 'abc48', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(358, 'Update', '2019-04-10 22:53:38', 49, 'jei kaps', 'kaps', 'abc49', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(359, 'Update', '2019-04-10 22:53:38', 50, 'kaspi jel', 'kaspsi', 'abc50', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(360, 'Update', '2019-04-10 22:53:39', 52, 'kasil rob', 'kasil', 'abc52', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(361, 'Update', '2019-04-10 22:53:39', 53, 'kaib kesih', 'kesuh', 'abc53', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(362, 'Update', '2019-04-10 22:53:39', 54, 'kehah rov', 'kseha', 'abc54', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(363, 'Update', '2019-04-10 22:53:39', 55, 'vilpo kelh', 'vilpo', 'abc55', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(364, 'Update', '2019-04-10 22:53:39', 56, 'natal tiiv', 'natia', 'abc56', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(365, 'Update', '2019-04-10 22:53:39', 57, 'ntai zabki', 'zabki', 'abc57', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(366, 'Update', '2019-04-10 22:53:39', 58, 'zaompa sasoo', 'sasoo', 'abc58', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(367, 'Update', '2019-04-10 22:53:39', 59, 'jeil kapis', 'kapis', 'abc59', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(368, 'Update', '2019-04-10 22:53:39', 60, 'kaspi jel', 'kaspsi', 'abc60', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(369, 'Update', '2019-04-10 22:53:39', 61, 'basil rata', 'rotaa', 'abc61', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(370, 'Update', '2019-04-10 22:53:39', 62, 'kasila royb', 'kasiyl', 'abc62', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(371, 'Update', '2019-04-10 22:53:39', 63, 'kaiba keysih', 'kesyuh', 'abc63', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(372, 'Update', '2019-04-10 22:53:39', 64, 'kehyah royv', 'kseyha', 'abc64', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(373, 'Update', '2019-04-10 22:53:39', 65, 'vilpyo kelah', 'viylpo', 'abc65', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(374, 'Update', '2019-04-10 22:53:39', 66, 'natyal tiliv', 'naytia', 'abc66', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(375, 'Update', '2019-04-10 22:53:39', 67, 'ntayi zabkis', 'zabkis', 'abc67', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(376, 'Update', '2019-04-10 22:53:39', 68, 'zalompa sasloo', 'sasolo', 'abc68', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(377, 'Update', '2019-04-10 22:53:39', 69, 'eil kapis', 'apis', 'abc69', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(378, 'Update', '2019-04-10 22:53:39', 70, 'kspi jel', 'aspsi', 'abc70', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(379, 'Update', '2019-04-10 22:53:39', 71, 'basil rata', 'rotaa', 'abc71', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(380, 'Update', '2019-04-10 22:53:39', 72, 'asila oyb', 'asiyl', 'abc72', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(381, 'Update', '2019-04-10 22:53:39', 73, 'aiba eysih', 'esyuh', 'abc73', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(382, 'Update', '2019-04-10 22:53:40', 74, 'ehyah royv', 'keyha', 'abc74', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(383, 'Update', '2019-04-10 22:53:40', 75, 'ilpyo kela', 'iylpo', 'abc75', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(384, 'Update', '2019-04-10 22:53:40', 76, 'atyal iliv', 'aytia', 'abc76', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(385, 'Update', '2019-04-10 22:53:40', 77, 'tayi abkis', 'abkis', 'abc77', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(386, 'Update', '2019-04-10 22:53:40', 78, 'alompa asloo', 'asolo', 'abc78', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(387, 'Update', '2019-04-10 22:53:40', 79, 'zeil kapis', 'zapis', 'abc79', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(388, 'Update', '2019-04-10 22:53:40', 80, 'zakspi jel', 'zaspsi', 'abc80', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(389, 'Update', '2019-04-10 22:53:40', 81, 'zabasil ata', 'otaa', 'abc81', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(390, 'Update', '2019-04-10 22:53:40', 82, 'zasila oyb', 'zasiyl', 'abc82', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(391, 'Update', '2019-04-10 22:53:40', 83, 'zaiba zeysih', 'zesyuh', 'abc83', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(392, 'Update', '2019-04-10 22:53:40', 84, 'zehyah royv', 'zeyha', 'abc84', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(393, 'Update', '2019-04-10 22:53:40', 85, 'zilpyo kela', 'ziylpo', 'abc85', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(394, 'Update', '2019-04-10 22:53:40', 86, 'zatyal iliv', 'zaytia', 'abc86', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(395, 'Update', '2019-04-10 22:53:40', 87, 'ayi abkis', 'zabkis', 'abc87', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(396, 'Update', '2019-04-10 22:53:40', 88, 'zalompa asloo', 'zasolo', 'abc88', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(397, 'Update', '2019-04-10 22:53:40', 89, 'zei apis', 'zapi', 'abc89', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(398, 'Update', '2019-04-10 22:53:40', 90, 'zakspi el', 'zazsi', 'abc90', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(399, 'Update', '2019-04-10 22:53:40', 91, 'zabasil zata', 'zotaa', 'abc91', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(400, 'Update', '2019-04-10 22:53:40', 92, 'zasia oyb', 'casiyl', 'abc92', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(401, 'Update', '2019-04-10 22:53:40', 93, 'zaiba eysih', 'xesyuh', 'abc93', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(402, 'Update', '2019-04-10 22:53:40', 94, 'oehyah royv', 'zoyha', 'abc94', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(403, 'Update', '2019-04-10 22:53:40', 95, 'zolpyo kela', 'zoylpo', 'abc95', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(404, 'Update', '2019-04-10 22:53:40', 96, 'zotyal iliv', 'zoytia', 'abc96', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(405, 'Update', '2019-04-10 22:53:41', 97, 'kayi abks', 'zabkiso', 'abc97', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(406, 'Update', '2019-04-10 22:53:41', 98, 'lompa asloo', 'zaspolo', 'abc98', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(407, 'Update', '2019-04-10 22:53:41', 99, 'zee apos', 'zapo', 'abc99', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(408, 'Update', '2019-04-10 22:53:41', 100, 'zokspi el', 'zazsi', 'abc100', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(409, 'Update', '2019-04-10 22:53:41', 101, 'zabosil zata', 'zotoa', 'abc101', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(410, 'Update', '2019-04-10 22:53:41', 102, 'zasoa oyb', 'casoyl', 'abc102', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(411, 'Update', '2019-04-10 22:53:41', 103, 'zaoba eysih', 'xesouh', 'abc103', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(412, 'Update', '2019-04-10 22:53:41', 104, 'oeoyah royv', 'zoyho', 'abc104', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(413, 'Update', '2019-04-10 22:53:41', 105, 'zoloyo kela', 'zoylopo', 'abc105', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(414, 'Update', '2019-04-10 22:53:41', 106, 'zotyol iliv', 'zoytio', 'abc106', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(415, 'Update', '2019-04-10 22:53:41', 107, 'kayio aboks', 'zabkoso', 'abc107', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(416, 'Update', '2019-04-10 22:53:41', 108, 'lompa asloxo', 'zaspalo', 'abc108', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(417, 'Update', '2019-04-10 22:53:41', 109, 'zee apos', 'zapos', 'abc109', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(418, 'Update', '2019-04-10 22:53:41', 110, 'zokspi el', 'zazdi', 'abc110', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(419, 'Update', '2019-04-10 22:53:41', 111, 'zabosil zata', 'zotoad', 'abc111', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(420, 'Update', '2019-04-10 22:53:41', 112, 'zasoa oyb', 'casoyld', 'abc112', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(421, 'Update', '2019-04-10 22:53:41', 113, 'zaoba eysih', 'xesouhd', 'abc113', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(422, 'Update', '2019-04-10 22:53:41', 114, 'oeoyah royv', 'zoyhod', 'abc114', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(423, 'Update', '2019-04-10 22:53:41', 115, 'zoloyo kela', 'zoylopod', 'abc115', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(424, 'Update', '2019-04-10 22:53:42', 116, 'zotyol iliv', 'zoytiod', 'abc116', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(425, 'Update', '2019-04-10 22:53:42', 117, 'kayio aboks', 'zabkosod', 'abc117', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(426, 'Update', '2019-04-10 22:53:42', 118, 'lompa asloxo', 'zaspalod', 'abc118', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(427, 'Update', '2019-04-10 22:53:42', 119, 'zee apos', 'zados', 'abc119', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(428, 'Update', '2019-04-10 22:53:42', 120, 'zokspi el', 'zazdid', 'abc120', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(429, 'Update', '2019-04-10 22:53:42', 121, 'zabosil zata', 'zotdoad', 'abc121', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(430, 'Update', '2019-04-10 22:53:42', 122, 'zasoa oyb', 'casoylopod', 'abc122', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(431, 'Update', '2019-04-10 22:53:42', 123, 'zaoba eysih', 'xesouhdod', 'abc123', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(432, 'Update', '2019-04-10 22:53:42', 124, 'oeoyah royv', 'zoyhodod', 'abc124', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(433, 'Update', '2019-04-10 22:53:42', 125, 'zoloyo kela', 'zoylopodod', 'abc125', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(434, 'Update', '2019-04-10 22:53:42', 126, 'zotyol iliv', 'zoytiodod', 'abc126', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(435, 'Update', '2019-04-10 22:53:42', 127, 'kayio aboks', 'zabkosodod', 'abc127', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(436, 'Update', '2019-04-10 22:53:42', 128, 'lompa asloxo', 'zaspalodod', 'abc128', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(437, 'Update', '2019-04-10 22:53:42', 129, 'zee apos', 'ados', 'abc129', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(438, 'Update', '2019-04-10 22:53:42', 130, 'zokspi el', 'azdid', 'abc130', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(439, 'Update', '2019-04-10 22:53:42', 131, 'zabosil zata', 'otdoad', 'abc131', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(440, 'Update', '2019-04-10 22:53:42', 132, 'zasoa oyb', 'soylopod', 'abc132', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(441, 'Update', '2019-04-10 22:53:42', 133, 'zaoba eysih', 'ouhdod', 'abc133', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(442, 'Update', '2019-04-10 22:53:42', 134, 'oeoyah royv', 'oyhodod', 'abc134', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(443, 'Update', '2019-04-10 22:53:42', 135, 'zoloyo kela', 'oylopodod', 'abc135', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(444, 'Update', '2019-04-10 22:53:42', 136, 'zotyol iliv', 'oytiodod', 'abc136', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(445, 'Update', '2019-04-10 22:53:42', 137, 'kayio aboks', 'abkosodod', 'abc137', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(446, 'Update', '2019-04-10 22:53:42', 138, 'lompa asloxo', 'aspalodod', 'abc138', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(447, 'Update', '2019-04-10 22:53:42', 139, 'zee apos', 'xados', 'abc139', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(448, 'Update', '2019-04-10 22:53:43', 140, 'zokspi el', 'xazdid', 'abc140', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(449, 'Update', '2019-04-10 22:53:43', 141, 'zabosil zata', 'xotdoad', 'abc141', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(450, 'Update', '2019-04-10 22:53:43', 142, 'zasoa oyb', 'xoylopod', 'abc142', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(451, 'Update', '2019-04-10 22:53:43', 143, 'zaoba eysih', 'xouhdod', 'abc143', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(452, 'Update', '2019-04-10 22:53:43', 144, 'oeoyah royv', 'xoyhodod', 'abc144', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(453, 'Update', '2019-04-10 22:53:43', 145, 'zoloyo kela', 'xoylopodod', 'abc145', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(454, 'Update', '2019-04-10 22:53:43', 146, 'zotyol iliv', 'xoytiodod', 'abc146', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(455, 'Update', '2019-04-10 22:53:43', 147, 'kayio aboks', 'xabkosodod', 'abc147', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(456, 'Update', '2019-04-10 22:53:43', 148, 'lompa asloxo', 'xaspalodod', 'abc148', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(457, 'Update', '2019-04-10 22:53:43', 149, 'zee apos', 'qados', 'abc149', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(458, 'Update', '2019-04-10 22:53:43', 150, 'zokspi el', 'qazdid', 'abc150', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(459, 'Update', '2019-04-10 22:53:43', 151, 'zabosil zata', 'qotdoad', 'abc151', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(460, 'Update', '2019-04-10 22:53:43', 152, 'zasoa oyb', 'qoylopod', 'abc152', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(461, 'Update', '2019-04-10 22:53:43', 153, 'zaoba eysih', 'qouhdod', 'abc153', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(462, 'Update', '2019-04-10 22:53:43', 154, 'oeoyah royv', 'qoyhodod', 'abc154', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(463, 'Update', '2019-04-10 22:53:43', 155, 'zoloyo kela', 'qoylopodod', 'abc155', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(464, 'Update', '2019-04-10 22:53:43', 156, 'zotyol iliv', 'qoytiodod', 'abc156', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(465, 'Update', '2019-04-10 22:53:43', 157, 'kayio aboks', 'qabkosodod', 'abc157', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(466, 'Update', '2019-04-10 22:53:43', 158, 'lompa asloxo', 'qaspalodod', 'abc158', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(467, 'Update', '2019-04-10 22:53:43', 159, 'zee apos', 'wados', 'abc159', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(468, 'Update', '2019-04-10 22:53:43', 160, 'zokspi el', 'wazdid', 'abc160', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(469, 'Update', '2019-04-10 22:53:43', 161, 'zabosil zata', 'wotdoad', 'abc161', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(470, 'Update', '2019-04-10 22:53:43', 162, 'zasoa oyb', 'woylopod', 'abc162', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(471, 'Update', '2019-04-10 22:53:43', 163, 'zaoba eysih', 'wouhdod', 'abc163', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(472, 'Update', '2019-04-10 22:53:43', 164, 'oeoyah royv', 'woyhodod', 'abc164', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(473, 'Update', '2019-04-10 22:53:43', 165, 'zoloyo kela', 'woylopodod', 'abc165', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(474, 'Update', '2019-04-10 22:53:44', 166, 'zotyol iliv', 'woytiodod', 'abc166', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(475, 'Update', '2019-04-10 22:53:44', 167, 'kayio aboks', 'wabkosodod', 'abc167', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(476, 'Update', '2019-04-10 22:53:44', 168, 'lompa asloxo', 'waspalodod', 'abc168', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(477, 'Update', '2019-04-10 22:53:44', 169, 'zee apos', 'eados', 'abc169', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(478, 'Update', '2019-04-10 22:53:44', 170, 'zokspi el', 'eazdid', 'abc170', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(479, 'Update', '2019-04-10 22:53:44', 171, 'zabosil zata', 'eotdoad', 'abc171', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(480, 'Update', '2019-04-10 22:53:44', 172, 'zasoa oyb', 'eoylopod', 'abc172', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(481, 'Update', '2019-04-10 22:53:44', 173, 'zaoba eysih', 'eouhdod', 'abc173', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(482, 'Update', '2019-04-10 22:53:44', 174, 'oeoyah royv', 'eoyhodod', 'abc174', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(483, 'Update', '2019-04-10 22:53:44', 175, 'zoloyo kela', 'eoylopodod', 'abc175', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(484, 'Update', '2019-04-10 22:53:44', 176, 'zotyol iliv', 'eoytiodod', 'abc176', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(485, 'Update', '2019-04-10 22:53:44', 177, 'kayio aboks', 'eabkosodod', 'abc177', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(486, 'Update', '2019-04-10 22:53:44', 178, 'lompa asloxo', 'easpalodod', 'abc178', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(487, 'Update', '2019-04-10 22:53:44', 179, 'zee apos', 'rados', 'abc179', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(488, 'Update', '2019-04-10 22:53:44', 180, 'zokspi el', 'razdid', 'abc180', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(489, 'Update', '2019-04-10 22:53:44', 181, 'zabosil zata', 'rotdoad', 'abc181', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(490, 'Update', '2019-04-10 22:53:44', 182, 'zasoa oyb', 'roylopod', 'abc182', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(491, 'Update', '2019-04-10 22:53:44', 183, 'zaoba eysih', 'rouhdod', 'abc183', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(492, 'Update', '2019-04-10 22:53:44', 184, 'oeoyah royv', 'royhodod', 'abc184', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(493, 'Update', '2019-04-10 22:53:44', 185, 'zoloyo kela', 'roylopodod', 'abc185', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(494, 'Update', '2019-04-10 22:53:44', 186, 'zotyol iliv', 'roytiodod', 'abc186', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(495, 'Update', '2019-04-10 22:53:44', 187, 'kayio aboks', 'rabkosodod', 'abc187', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(496, 'Update', '2019-04-10 22:53:44', 188, 'lompa asloxo', 'raspalodod', 'abc188', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(497, 'Update', '2019-04-10 22:53:44', 189, 'zee apos', 'tados', 'abc189', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(498, 'Update', '2019-04-10 22:53:45', 190, 'zokspi el', 'tazdid', 'abc190', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(499, 'Update', '2019-04-10 22:53:45', 191, 'zabosil zata', 'totdoad', 'abc191', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(500, 'Update', '2019-04-10 22:53:45', 192, 'zasoa oyb', 'toylopod', 'abc192', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(501, 'Update', '2019-04-10 22:53:45', 193, 'zaoba eysih', 'touhdod', 'abc193', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(502, 'Update', '2019-04-10 22:53:45', 194, 'oeoyah royv', 'toyhodod', 'abc194', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(503, 'Update', '2019-04-10 22:53:45', 195, 'zoloyo kela', 'toylopodod', 'abc195', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(504, 'Update', '2019-04-10 22:53:45', 196, 'zotyol iliv', 'toytiodod', 'abc196', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(505, 'Update', '2019-04-10 22:53:45', 197, 'kayio aboks', 'tabkosodod', 'abc197', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(506, 'Update', '2019-04-10 22:53:45', 198, 'lompa asloxo', 'taspalodod', 'abc198', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(507, 'Update', '2019-04-10 22:53:45', 199, 'zee apos', 'yados', 'abc199', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(508, 'Update', '2019-04-10 22:53:45', 200, 'zokspi el', 'yazdid', 'abc200', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(509, 'Update', '2019-04-10 22:53:45', 201, 'zabosil zata', 'yotdoad', 'abc201', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(510, 'Update', '2019-04-10 22:53:45', 202, 'zasoa oyb', 'yoylopod', 'abc202', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(511, 'Update', '2019-04-10 22:53:45', 203, 'zaoba eysih', 'youhdod', 'abc203', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(512, 'Update', '2019-04-10 22:53:45', 204, 'oeoyah royv', 'yoyhodod', 'abc204', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(513, 'Update', '2019-04-10 22:53:46', 205, 'zoloyo kela', 'yoylopodod', 'abc205', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(514, 'Update', '2019-04-10 22:53:46', 206, 'zotyol iliv', 'yoytiodod', 'abc206', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(515, 'Update', '2019-04-10 22:53:46', 207, 'kayio aboks', 'yabkosodod', 'abc207', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(516, 'Update', '2019-04-10 22:53:46', 208, 'lompa asloxo', 'yaspalodod', 'abc208', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', '');
INSERT INTO `st_info_log` (`id`, `actionTaken`, `actionTime`, `st_id`, `st_fullname`, `st_username`, `st_password`, `st_grade`, `roll_no`, `st_dob`, `st_address`, `st_district`, `st_gender`, `st_father`, `st_mother`, `st_parents_contact`, `image`) VALUES
(517, 'Update', '2019-04-10 22:53:46', 209, 'zee apos', 'uados', 'abc209', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(518, 'Update', '2019-04-10 22:53:46', 210, 'zokspi el', 'uazdid', 'abc210', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(519, 'Update', '2019-04-10 22:53:46', 211, 'zabosil zata', 'uotdoad', 'abc211', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(520, 'Update', '2019-04-10 22:53:46', 212, 'zasoa oyb', 'uoylopod', 'abc212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(521, 'Update', '2019-04-10 22:53:46', 213, 'zaoba eysih', 'uouhdod', 'abc213', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(522, 'Update', '2019-04-10 22:53:46', 214, 'oeoyah royv', 'uoyhodod', 'abc214', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(523, 'Update', '2019-04-10 22:53:46', 215, 'zoloyo kela', 'uoylopodod', 'abc215', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(524, 'Update', '2019-04-10 22:53:46', 216, 'zotyol iliv', 'uoytiodod', 'abc216', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(525, 'Update', '2019-04-10 22:53:46', 217, 'kayio aboks', 'uabkosodod', 'abc217', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(526, 'Update', '2019-04-10 22:53:46', 218, 'lompa asloxo', 'uaspalodod', 'abc218', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(527, 'Update', '2019-04-10 22:53:46', 219, 'zee apos', 'iados', 'abc219', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(528, 'Update', '2019-04-10 22:53:46', 220, 'zokspi el', 'iazdid', 'abc220', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(529, 'Update', '2019-04-10 22:53:47', 221, 'zabosil zata', 'iotdoad', 'abc221', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(530, 'Update', '2019-04-10 22:53:47', 222, 'zasoa oyb', 'ioylopod', 'abc222', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(531, 'Update', '2019-04-10 22:53:47', 223, 'zaoba eysih', 'iouhdod', 'abc223', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(532, 'Update', '2019-04-10 22:53:47', 224, 'oeoyah royv', 'ioyhodod', 'abc224', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(533, 'Update', '2019-04-10 22:53:47', 225, 'zoloyo kela', 'ioylopodod', 'abc225', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(534, 'Update', '2019-04-10 22:53:47', 226, 'zotyol iliv', 'ioytiodod', 'abc226', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(535, 'Update', '2019-04-10 22:53:47', 227, 'kayio aboks', 'iabkosodod', 'abc227', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(536, 'Update', '2019-04-10 22:53:47', 228, 'lompa asloxo', 'iaspalodod', 'abc228', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(537, 'Update', '2019-04-10 22:53:47', 229, 'zee apos', 'pados', 'abc229', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(538, 'Update', '2019-04-10 22:53:47', 230, 'zokspi el', 'pazdid', 'abc230', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(539, 'Update', '2019-04-10 22:53:47', 231, 'zabosil zata', 'potdoad', 'abc231', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(540, 'Update', '2019-04-10 22:53:47', 232, 'zasoa oyb', 'poylopod', 'abc232', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(541, 'Update', '2019-04-10 22:53:47', 233, 'zaoba eysih', 'pouhdod', 'abc233', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(542, 'Update', '2019-04-10 22:53:47', 234, 'oeoyah royv', 'poyhodod', 'abc234', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(543, 'Update', '2019-04-10 22:53:47', 235, 'zoloyo kela', 'poylopodod', 'abc235', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(544, 'Update', '2019-04-10 22:53:47', 236, 'zotyol iliv', 'poytiodod', 'abc236', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(545, 'Update', '2019-04-10 22:53:47', 237, 'kayio aboks', 'pabkosodod', 'abc237', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(546, 'Update', '2019-04-10 22:53:47', 238, 'lompa asloxo', 'paspalodod', 'abc238', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(547, 'Update', '2019-04-10 22:53:47', 239, 'zee apos', 'fados', 'abc239', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(548, 'Update', '2019-04-10 22:53:47', 240, 'zokspi el', 'fazdid', 'abc240', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(549, 'Update', '2019-04-10 22:53:47', 241, 'zabosil zata', 'fotdoad', 'abc241', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(550, 'Update', '2019-04-10 22:53:47', 242, 'zasoa oyb', 'foylopod', 'abc242', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(551, 'Update', '2019-04-10 22:53:47', 243, 'zaoba eysih', 'fouhdod', 'abc243', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(552, 'Update', '2019-04-10 22:53:48', 244, 'oeoyah royv', 'foyhodod', 'abc244', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(553, 'Update', '2019-04-10 22:53:48', 245, 'zoloyo kela', 'foylopodod', 'abc245', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(554, 'Update', '2019-04-10 22:53:48', 246, 'zotyol iliv', 'foytiodod', 'abc246', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(555, 'Update', '2019-04-10 22:53:48', 247, 'kayio aboks', 'fabkosodod', 'abc247', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(556, 'Update', '2019-04-10 22:53:48', 248, 'lompa asloxo', 'faspalodod', 'abc248', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(557, 'Update', '2019-04-10 22:53:48', 249, 'zee apos', 'gados', 'abc249', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(558, 'Update', '2019-04-10 22:53:48', 250, 'zokspi el', 'gazdid', 'abc250', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(559, 'Update', '2019-04-10 22:53:48', 251, 'zabosil zata', 'gotdoad', 'abc251', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(560, 'Update', '2019-04-10 22:53:48', 252, 'zasoa oyb', 'goylopod', 'abc252', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(561, 'Update', '2019-04-10 22:53:48', 253, 'zaoba eysih', 'gouhdod', 'abc253', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(562, 'Update', '2019-04-10 22:53:48', 254, 'oeoyah royv', 'goyhodod', 'abc254', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(563, 'Update', '2019-04-10 22:53:48', 255, 'zoloyo kela', 'goylopodod', 'abc255', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(564, 'Update', '2019-04-10 22:53:48', 256, 'zotyol iliv', 'goytiodod', 'abc256', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(565, 'Update', '2019-04-10 22:53:48', 257, 'kayio aboks', 'gabkosodod', 'abc257', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(566, 'Update', '2019-04-10 22:53:48', 258, 'lompa asloxo', 'gaspalodod', 'abc258', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(567, 'Update', '2019-04-10 22:53:48', 259, 'zee apos', 'hados', 'abc259', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(568, 'Update', '2019-04-10 22:53:48', 260, 'zokspi el', 'hazdid', 'abc260', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(569, 'Update', '2019-04-10 22:53:48', 261, 'zabosil zata', 'hotdoad', 'abc261', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(570, 'Update', '2019-04-10 22:53:48', 262, 'zasoa oyb', 'hoylopod', 'abc262', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(571, 'Update', '2019-04-10 22:53:48', 263, 'zaoba eysih', 'houhdod', 'abc263', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(572, 'Update', '2019-04-10 22:53:48', 264, 'oeoyah royv', 'hoyhodod', 'abc264', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(573, 'Update', '2019-04-10 22:53:48', 265, 'zoloyo kela', 'hoylopodod', 'abc265', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(574, 'Update', '2019-04-10 22:53:48', 266, 'zotyol iliv', 'hoytiodod', 'abc266', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(575, 'Update', '2019-04-10 22:53:48', 267, 'kayio aboks', 'habkosodod', 'abc267', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(576, 'Update', '2019-04-10 22:53:48', 268, 'lompa asloxo', 'haspalodod', 'abc268', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(577, 'Update', '2019-04-10 22:53:48', 269, 'zee apos', 'jados', 'abc269', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(578, 'Update', '2019-04-10 22:53:48', 270, 'zokspi el', 'jazdid', 'abc270', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(579, 'Update', '2019-04-10 22:53:49', 271, 'zabosil zata', 'jotdoad', 'abc271', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(580, 'Update', '2019-04-10 22:53:49', 272, 'zasoa oyb', 'joylopod', 'abc272', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(581, 'Update', '2019-04-10 22:53:49', 273, 'zaoba eysih', 'jouhdod', 'abc273', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(582, 'Update', '2019-04-10 22:53:49', 274, 'oeoyah royv', 'joyhodod', 'abc274', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(583, 'Update', '2019-04-10 22:53:49', 275, 'zoloyo kela', 'joylopodod', 'abc275', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(584, 'Update', '2019-04-10 22:53:49', 276, 'zotyol iliv', 'joytiodod', 'abc276', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(585, 'Update', '2019-04-10 22:53:49', 277, 'kayio aboks', 'jabkosodod', 'abc277', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(586, 'Update', '2019-04-10 22:53:49', 278, 'lompa asloxo', 'jaspalodod', 'abc278', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(587, 'Update', '2019-04-10 22:53:49', 279, 'zee apos', 'kados', 'abc279', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(588, 'Update', '2019-04-10 22:53:49', 280, 'zokspi el', 'kazdid', 'abc280', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(589, 'Update', '2019-04-10 22:53:49', 281, 'zabosil zata', 'kotdoad', 'abc281', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(590, 'Update', '2019-04-10 22:53:49', 282, 'zasoa oyb', 'koylopod', 'abc282', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(591, 'Update', '2019-04-10 22:53:49', 283, 'zaoba eysih', 'kouhdod', 'abc283', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(592, 'Update', '2019-04-10 22:53:49', 284, 'oeoyah royv', 'koyhodod', 'abc284', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(593, 'Update', '2019-04-10 22:53:49', 285, 'zoloyo kela', 'koylopodod', 'abc285', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(594, 'Update', '2019-04-10 22:53:49', 286, 'zotyol iliv', 'koytiodod', 'abc286', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(595, 'Update', '2019-04-10 22:53:49', 287, 'kayio aboks', 'kabkosodod', 'abc287', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(596, 'Update', '2019-04-10 22:53:49', 288, 'lompa asloxo', 'kaspalodod', 'abc288', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(597, 'Update', '2019-04-10 22:53:49', 289, 'zee apos', 'lados', 'abc289', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(598, 'Update', '2019-04-10 22:53:49', 290, 'zokspi el', 'lazdid', 'abc290', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(599, 'Update', '2019-04-10 22:53:49', 291, 'zabosil zata', 'lotdoad', 'abc291', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(600, 'Update', '2019-04-10 22:53:49', 292, 'zasoa oyb', 'loylopod', 'abc292', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(601, 'Update', '2019-04-10 22:53:49', 293, 'zaoba eysih', 'louhdod', 'abc293', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(602, 'Update', '2019-04-10 22:53:49', 294, 'oeoyah royv', 'loyhodod', 'abc294', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(603, 'Update', '2019-04-10 22:53:49', 295, 'zoloyo kela', 'loylopodod', 'abc295', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(604, 'Update', '2019-04-10 22:53:49', 296, 'zotyol iliv', 'loytiodod', 'abc296', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(605, 'Update', '2019-04-10 22:53:49', 297, 'kayio aboks', 'labkosodod', 'abc297', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(606, 'Update', '2019-04-10 22:53:49', 298, 'lompa asloxo', 'laspalodod', 'abc298', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(607, 'Update', '2019-04-10 22:53:50', 299, 'zee apos', 'vados', 'abc299', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(608, 'Update', '2019-04-10 22:53:50', 300, 'zokspi el', 'vazdid', 'abc300', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(609, 'Update', '2019-04-10 22:53:50', 301, 'zabosil zata', 'votdoad', 'abc301', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(610, 'Update', '2019-04-10 22:53:50', 302, 'zasoa oyb', 'voylopod', 'abc302', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(611, 'Update', '2019-04-10 22:53:50', 303, 'zaoba eysih', 'vouhdod', 'abc303', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(612, 'Update', '2019-04-10 22:53:50', 304, 'oeoyah royv', 'voyhodod', 'abc304', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(613, 'Update', '2019-04-10 22:53:50', 305, 'zoloyo kela', 'voylopodod', 'abc305', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(614, 'Update', '2019-04-10 22:53:50', 306, 'zotyol iliv', 'voytiodod', 'abc306', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(615, 'Update', '2019-04-10 22:53:50', 307, 'kayio aboks', 'vabkosodod', 'abc307', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(616, 'Update', '2019-04-10 22:53:50', 308, 'lompa asloxo', 'vaspalodod', 'abc308', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(617, 'Update', '2019-04-10 22:53:50', 309, 'zee apos', 'bados', 'abc309', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(618, 'Update', '2019-04-10 22:53:50', 310, 'zokspi el', 'bazdid', 'abc310', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(619, 'Update', '2019-04-10 22:53:50', 311, 'zabosil zata', 'botdoad', 'abc311', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(620, 'Update', '2019-04-10 22:53:50', 312, 'zasoa oyb', 'boylopod', 'abc312', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(621, 'Update', '2019-04-10 22:53:50', 313, 'zaoba eysih', 'bouhdod', 'abc313', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(622, 'Update', '2019-04-10 22:53:50', 314, 'oeoyah royv', 'boyhodod', 'abc314', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(623, 'Update', '2019-04-10 22:53:50', 315, 'zoloyo kela', 'boylopodod', 'abc315', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(624, 'Update', '2019-04-10 22:56:02', 0, 'Ravi Khadka', 'ravi2056', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 10, 2, '11/17/2056', 'lokanthali', 'Bhaktapur', 'Male', 'Abc Xyz', 'Bcd Xyz', '9800000', 'ferrari.jpg'),
(625, 'Update', '2019-04-10 22:56:02', 2, 'Hari Thapa', 'hari2055', 'abc2', 10, 12, '11/17/2055', 'Kausaltar', 'Bhaktapur', 'Male', 'Ram Thapa', 'Sita Thapa', '9812222200', ''),
(626, 'Update', '2019-04-10 22:56:02', 3, 'Qwe', 'asdf', 'abc3', 8, 11, '27 Dec 1998', 'Banepa', 'Kavre', 'Male', 'aasd', 'aasdf', '9812222', ''),
(627, 'Update', '2019-04-10 22:56:02', 4, 'Robin Dhakal', 'robin2053', 'abc4', 10, 1, '20 Jan 1994', 'Patan', 'Lalitpur', 'Male', 'Rajan Dhakal', 'Rama Dhakal', '9841111', ''),
(628, 'Update', '2019-04-10 22:56:02', 5, 'Saugat Gautam', 'saugat2055', 'abc5', 7, 12, '12 Jan 1999', 'Jadibuti', 'Kathmandu', 'Male', 'John Gautam', 'Sita Gautam', '9802212222', ''),
(629, 'Update', '2019-04-10 22:56:02', 8, 'Your Name', 'yourname', 'abc8', 5, 1, '27 Jan 2000', 'Lokanthali', 'Bhaktapur', 'Male', 'John Cena', 'Sita Cena', '9811111111', ''),
(630, 'Update', '2019-04-10 22:56:02', 9, 'rajkumar xyz', 'rajkumar', 'abc9', 10, 5, '13 Jan 2000', 'Kausaltar', 'Bhaktapur', 'Male', 'Abc xyz', 'Bcd xyz', '98000000', ''),
(631, 'Update', '2019-04-10 22:56:02', 10, 'dsdsdsd', 'aaaa', 'abc10', 2, 1, '1 Jan 2000', 'Tinkune', 'Kathmandu', 'Male', 'abbb', 'acc', '123456', ''),
(632, 'Update', '2019-04-10 22:56:02', 12, 'dsdsds', 'qq', 'abc12', 3, 1, '28 jan 2000', 'adsd', 'dsdsd', 'Male', 'dsds', 'ddsds', '12121', ''),
(633, 'Update', '2019-04-10 22:56:02', 13, 'Zorina Abreu', 'zabreu', 'abc13', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(634, 'Update', '2019-04-10 22:56:02', 14, 'Yon Akin', 'yonakin', 'abc14', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(635, 'Update', '2019-04-10 22:56:02', 15, 'santa baga', 'santa', 'abc15', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(636, 'Update', '2019-04-10 22:56:02', 16, 'Nush Nush', 'nush', 'abc16', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(637, 'Update', '2019-04-10 22:56:02', 17, 'zull zull', 'biza', 'abc17', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(638, 'Update', '2019-04-10 22:56:02', 18, 'bix Nush', 'bix', 'abc18', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(639, 'Update', '2019-04-10 22:56:02', 19, 'fala fal', 'fal', 'abc19', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(640, 'Update', '2019-04-10 22:56:02', 20, 'bix gash', 'gash', 'abc20', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(641, 'Update', '2019-04-10 22:56:02', 21, 'vilo vil', 'vil', 'abc21', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(642, 'Update', '2019-04-10 22:56:02', 22, 'bix dish', 'dish', 'abc22', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(643, 'Update', '2019-04-10 22:56:03', 23, 'vilo kas', 'kas', 'abc23', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(644, 'Update', '2019-04-10 22:56:03', 24, 'bix kas', 'bos', 'abc24', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(645, 'Update', '2019-04-10 22:56:03', 25, 'vilo tas', 'tas', 'abc25', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(646, 'Update', '2019-04-10 22:56:03', 26, 'bix tas', 'tasa', 'abc26', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(647, 'Update', '2019-04-10 22:56:03', 28, 'bas nash', 'nash', 'abc28', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(648, 'Update', '2019-04-10 22:56:03', 29, 'bobo rob', 'rob', 'abc29', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(649, 'Update', '2019-04-10 22:56:03', 30, 'bas rob', 'nasu', 'abc30', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(650, 'Update', '2019-04-10 22:56:03', 31, 'bas rosta', 'rosta', 'abc31', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(651, 'Update', '2019-04-10 22:56:03', 32, 'kasi rob', 'kasi', 'abc32', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(652, 'Update', '2019-04-10 22:56:03', 33, 'kasi kesh', 'kesh', 'abc33', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(653, 'Update', '2019-04-10 22:56:03', 34, 'kesha rob', 'kesha', 'abc34', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(654, 'Update', '2019-04-10 22:56:03', 35, 'vilx kesh', 'vilx', 'abc35', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(655, 'Update', '2019-04-10 22:56:03', 36, 'natxa tili', 'natxa', 'abc36', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(656, 'Update', '2019-04-10 22:56:03', 37, 'ntati zab', 'zab', 'abc37', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(657, 'Update', '2019-04-10 22:56:03', 38, 'zaompa sas', 'sas', 'abc38', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(658, 'Update', '2019-04-10 22:56:03', 39, 'jesi kas', 'jesi', 'abc39', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(659, 'Update', '2019-04-10 22:56:03', 40, 'kas jesi', 'kasu', 'abc40', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(660, 'Update', '2019-04-10 22:56:03', 41, 'basi rta', 'rota', 'abc41', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(661, 'Update', '2019-04-10 22:56:03', 42, 'kasi rob', 'kasi', 'abc42', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(662, 'Update', '2019-04-10 22:56:03', 43, 'kai kesh', 'kesu', 'abc43', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(663, 'Update', '2019-04-10 22:56:03', 44, 'keha ro', 'keha', 'abc44', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(664, 'Update', '2019-04-10 22:56:03', 45, 'vilp keh', 'vilp', 'abc45', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(665, 'Update', '2019-04-10 22:56:03', 46, 'nata tii', 'nata', 'abc46', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(666, 'Update', '2019-04-10 22:56:03', 47, 'ntai zabi', 'zabi', 'abc47', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(667, 'Update', '2019-04-10 22:56:03', 48, 'zaompa saso', 'saso', 'abc48', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(668, 'Update', '2019-04-10 22:56:03', 49, 'jei kaps', 'kaps', 'abc49', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(669, 'Update', '2019-04-10 22:56:03', 50, 'kaspi jel', 'kaspsi', 'abc50', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(670, 'Update', '2019-04-10 22:56:04', 52, 'kasil rob', 'kasil', 'abc52', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(671, 'Update', '2019-04-10 22:56:04', 53, 'kaib kesih', 'kesuh', 'abc53', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(672, 'Update', '2019-04-10 22:56:04', 54, 'kehah rov', 'kseha', 'abc54', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(673, 'Update', '2019-04-10 22:56:04', 55, 'vilpo kelh', 'vilpo', 'abc55', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(674, 'Update', '2019-04-10 22:56:04', 56, 'natal tiiv', 'natia', 'abc56', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(675, 'Update', '2019-04-10 22:56:04', 57, 'ntai zabki', 'zabki', 'abc57', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(676, 'Update', '2019-04-10 22:56:04', 58, 'zaompa sasoo', 'sasoo', 'abc58', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(677, 'Update', '2019-04-10 22:56:04', 59, 'jeil kapis', 'kapis', 'abc59', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(678, 'Update', '2019-04-10 22:56:04', 60, 'kaspi jel', 'kaspsi', 'abc60', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(679, 'Update', '2019-04-10 22:56:04', 61, 'basil rata', 'rotaa', 'abc61', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(680, 'Update', '2019-04-10 22:56:04', 62, 'kasila royb', 'kasiyl', 'abc62', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(681, 'Update', '2019-04-10 22:56:04', 63, 'kaiba keysih', 'kesyuh', 'abc63', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(682, 'Update', '2019-04-10 22:56:04', 64, 'kehyah royv', 'kseyha', 'abc64', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(683, 'Update', '2019-04-10 22:56:04', 65, 'vilpyo kelah', 'viylpo', 'abc65', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(684, 'Update', '2019-04-10 22:56:04', 66, 'natyal tiliv', 'naytia', 'abc66', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(685, 'Update', '2019-04-10 22:56:04', 67, 'ntayi zabkis', 'zabkis', 'abc67', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(686, 'Update', '2019-04-10 22:56:04', 68, 'zalompa sasloo', 'sasolo', 'abc68', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(687, 'Update', '2019-04-10 22:56:04', 69, 'eil kapis', 'apis', 'abc69', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(688, 'Update', '2019-04-10 22:56:04', 70, 'kspi jel', 'aspsi', 'abc70', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(689, 'Update', '2019-04-10 22:56:04', 71, 'basil rata', 'rotaa', 'abc71', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(690, 'Update', '2019-04-10 22:56:04', 72, 'asila oyb', 'asiyl', 'abc72', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(691, 'Update', '2019-04-10 22:56:04', 73, 'aiba eysih', 'esyuh', 'abc73', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(692, 'Update', '2019-04-10 22:56:05', 74, 'ehyah royv', 'keyha', 'abc74', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(693, 'Update', '2019-04-10 22:56:05', 75, 'ilpyo kela', 'iylpo', 'abc75', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(694, 'Update', '2019-04-10 22:56:05', 76, 'atyal iliv', 'aytia', 'abc76', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(695, 'Update', '2019-04-10 22:56:05', 77, 'tayi abkis', 'abkis', 'abc77', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(696, 'Update', '2019-04-10 22:56:05', 78, 'alompa asloo', 'asolo', 'abc78', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(697, 'Update', '2019-04-10 22:56:05', 79, 'zeil kapis', 'zapis', 'abc79', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(698, 'Update', '2019-04-10 22:56:05', 80, 'zakspi jel', 'zaspsi', 'abc80', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(699, 'Update', '2019-04-10 22:56:05', 81, 'zabasil ata', 'otaa', 'abc81', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(700, 'Update', '2019-04-10 22:56:05', 82, 'zasila oyb', 'zasiyl', 'abc82', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(701, 'Update', '2019-04-10 22:56:05', 83, 'zaiba zeysih', 'zesyuh', 'abc83', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(702, 'Update', '2019-04-10 22:56:05', 84, 'zehyah royv', 'zeyha', 'abc84', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(703, 'Update', '2019-04-10 22:56:05', 85, 'zilpyo kela', 'ziylpo', 'abc85', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(704, 'Update', '2019-04-10 22:56:05', 86, 'zatyal iliv', 'zaytia', 'abc86', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(705, 'Update', '2019-04-10 22:56:05', 87, 'ayi abkis', 'zabkis', 'abc87', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(706, 'Update', '2019-04-10 22:56:05', 88, 'zalompa asloo', 'zasolo', 'abc88', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(707, 'Update', '2019-04-10 22:56:05', 89, 'zei apis', 'zapi', 'abc89', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(708, 'Update', '2019-04-10 22:56:05', 90, 'zakspi el', 'zazsi', 'abc90', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(709, 'Update', '2019-04-10 22:56:05', 91, 'zabasil zata', 'zotaa', 'abc91', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(710, 'Update', '2019-04-10 22:56:05', 92, 'zasia oyb', 'casiyl', 'abc92', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(711, 'Update', '2019-04-10 22:56:05', 93, 'zaiba eysih', 'xesyuh', 'abc93', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(712, 'Update', '2019-04-10 22:56:06', 94, 'oehyah royv', 'zoyha', 'abc94', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(713, 'Update', '2019-04-10 22:56:06', 95, 'zolpyo kela', 'zoylpo', 'abc95', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(714, 'Update', '2019-04-10 22:56:06', 96, 'zotyal iliv', 'zoytia', 'abc96', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(715, 'Update', '2019-04-10 22:56:06', 97, 'kayi abks', 'zabkiso', 'abc97', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(716, 'Update', '2019-04-10 22:56:06', 98, 'lompa asloo', 'zaspolo', 'abc98', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(717, 'Update', '2019-04-10 22:56:06', 99, 'zee apos', 'zapo', 'abc99', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(718, 'Update', '2019-04-10 22:56:06', 100, 'zokspi el', 'zazsi', 'abc100', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(719, 'Update', '2019-04-10 22:56:06', 101, 'zabosil zata', 'zotoa', 'abc101', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(720, 'Update', '2019-04-10 22:56:06', 102, 'zasoa oyb', 'casoyl', 'abc102', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(721, 'Update', '2019-04-10 22:56:06', 103, 'zaoba eysih', 'xesouh', 'abc103', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(722, 'Update', '2019-04-10 22:56:06', 104, 'oeoyah royv', 'zoyho', 'abc104', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(723, 'Update', '2019-04-10 22:56:06', 105, 'zoloyo kela', 'zoylopo', 'abc105', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(724, 'Update', '2019-04-10 22:56:06', 106, 'zotyol iliv', 'zoytio', 'abc106', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(725, 'Update', '2019-04-10 22:56:06', 107, 'kayio aboks', 'zabkoso', 'abc107', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(726, 'Update', '2019-04-10 22:56:06', 108, 'lompa asloxo', 'zaspalo', 'abc108', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(727, 'Update', '2019-04-10 22:56:06', 109, 'zee apos', 'zapos', 'abc109', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(728, 'Update', '2019-04-10 22:56:06', 110, 'zokspi el', 'zazdi', 'abc110', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(729, 'Update', '2019-04-10 22:56:06', 111, 'zabosil zata', 'zotoad', 'abc111', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(730, 'Update', '2019-04-10 22:56:06', 112, 'zasoa oyb', 'casoyld', 'abc112', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(731, 'Update', '2019-04-10 22:56:06', 113, 'zaoba eysih', 'xesouhd', 'abc113', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(732, 'Update', '2019-04-10 22:56:06', 114, 'oeoyah royv', 'zoyhod', 'abc114', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(733, 'Update', '2019-04-10 22:56:06', 115, 'zoloyo kela', 'zoylopod', 'abc115', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(734, 'Update', '2019-04-10 22:56:06', 116, 'zotyol iliv', 'zoytiod', 'abc116', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(735, 'Update', '2019-04-10 22:56:06', 117, 'kayio aboks', 'zabkosod', 'abc117', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(736, 'Update', '2019-04-10 22:56:06', 118, 'lompa asloxo', 'zaspalod', 'abc118', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(737, 'Update', '2019-04-10 22:56:06', 119, 'zee apos', 'zados', 'abc119', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(738, 'Update', '2019-04-10 22:56:06', 120, 'zokspi el', 'zazdid', 'abc120', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(739, 'Update', '2019-04-10 22:56:07', 121, 'zabosil zata', 'zotdoad', 'abc121', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(740, 'Update', '2019-04-10 22:56:07', 122, 'zasoa oyb', 'casoylopod', 'abc122', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(741, 'Update', '2019-04-10 22:56:07', 123, 'zaoba eysih', 'xesouhdod', 'abc123', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(742, 'Update', '2019-04-10 22:56:07', 124, 'oeoyah royv', 'zoyhodod', 'abc124', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(743, 'Update', '2019-04-10 22:56:07', 125, 'zoloyo kela', 'zoylopodod', 'abc125', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(744, 'Update', '2019-04-10 22:56:07', 126, 'zotyol iliv', 'zoytiodod', 'abc126', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(745, 'Update', '2019-04-10 22:56:07', 127, 'kayio aboks', 'zabkosodod', 'abc127', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(746, 'Update', '2019-04-10 22:56:07', 128, 'lompa asloxo', 'zaspalodod', 'abc128', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(747, 'Update', '2019-04-10 22:56:07', 129, 'zee apos', 'ados', 'abc129', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(748, 'Update', '2019-04-10 22:56:07', 130, 'zokspi el', 'azdid', 'abc130', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(749, 'Update', '2019-04-10 22:56:07', 131, 'zabosil zata', 'otdoad', 'abc131', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(750, 'Update', '2019-04-10 22:56:07', 132, 'zasoa oyb', 'soylopod', 'abc132', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(751, 'Update', '2019-04-10 22:56:07', 133, 'zaoba eysih', 'ouhdod', 'abc133', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(752, 'Update', '2019-04-10 22:56:07', 134, 'oeoyah royv', 'oyhodod', 'abc134', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(753, 'Update', '2019-04-10 22:56:07', 135, 'zoloyo kela', 'oylopodod', 'abc135', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(754, 'Update', '2019-04-10 22:56:07', 136, 'zotyol iliv', 'oytiodod', 'abc136', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(755, 'Update', '2019-04-10 22:56:07', 137, 'kayio aboks', 'abkosodod', 'abc137', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(756, 'Update', '2019-04-10 22:56:07', 138, 'lompa asloxo', 'aspalodod', 'abc138', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(757, 'Update', '2019-04-10 22:56:07', 139, 'zee apos', 'xados', 'abc139', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(758, 'Update', '2019-04-10 22:56:07', 140, 'zokspi el', 'xazdid', 'abc140', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(759, 'Update', '2019-04-10 22:56:07', 141, 'zabosil zata', 'xotdoad', 'abc141', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(760, 'Update', '2019-04-10 22:56:07', 142, 'zasoa oyb', 'xoylopod', 'abc142', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(761, 'Update', '2019-04-10 22:56:07', 143, 'zaoba eysih', 'xouhdod', 'abc143', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(762, 'Update', '2019-04-10 22:56:07', 144, 'oeoyah royv', 'xoyhodod', 'abc144', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(763, 'Update', '2019-04-10 22:56:08', 145, 'zoloyo kela', 'xoylopodod', 'abc145', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(764, 'Update', '2019-04-10 22:56:08', 146, 'zotyol iliv', 'xoytiodod', 'abc146', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(765, 'Update', '2019-04-10 22:56:08', 147, 'kayio aboks', 'xabkosodod', 'abc147', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(766, 'Update', '2019-04-10 22:56:08', 148, 'lompa asloxo', 'xaspalodod', 'abc148', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(767, 'Update', '2019-04-10 22:56:08', 149, 'zee apos', 'qados', 'abc149', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(768, 'Update', '2019-04-10 22:56:08', 150, 'zokspi el', 'qazdid', 'abc150', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(769, 'Update', '2019-04-10 22:56:08', 151, 'zabosil zata', 'qotdoad', 'abc151', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(770, 'Update', '2019-04-10 22:56:08', 152, 'zasoa oyb', 'qoylopod', 'abc152', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(771, 'Update', '2019-04-10 22:56:08', 153, 'zaoba eysih', 'qouhdod', 'abc153', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(772, 'Update', '2019-04-10 22:56:08', 154, 'oeoyah royv', 'qoyhodod', 'abc154', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(773, 'Update', '2019-04-10 22:56:08', 155, 'zoloyo kela', 'qoylopodod', 'abc155', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(774, 'Update', '2019-04-10 22:56:08', 156, 'zotyol iliv', 'qoytiodod', 'abc156', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(775, 'Update', '2019-04-10 22:56:08', 157, 'kayio aboks', 'qabkosodod', 'abc157', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(776, 'Update', '2019-04-10 22:56:08', 158, 'lompa asloxo', 'qaspalodod', 'abc158', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(777, 'Update', '2019-04-10 22:56:08', 159, 'zee apos', 'wados', 'abc159', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(778, 'Update', '2019-04-10 22:56:08', 160, 'zokspi el', 'wazdid', 'abc160', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(779, 'Update', '2019-04-10 22:56:08', 161, 'zabosil zata', 'wotdoad', 'abc161', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(780, 'Update', '2019-04-10 22:56:08', 162, 'zasoa oyb', 'woylopod', 'abc162', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(781, 'Update', '2019-04-10 22:56:08', 163, 'zaoba eysih', 'wouhdod', 'abc163', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(782, 'Update', '2019-04-10 22:56:08', 164, 'oeoyah royv', 'woyhodod', 'abc164', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(783, 'Update', '2019-04-10 22:56:08', 165, 'zoloyo kela', 'woylopodod', 'abc165', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(784, 'Update', '2019-04-10 22:56:08', 166, 'zotyol iliv', 'woytiodod', 'abc166', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(785, 'Update', '2019-04-10 22:56:08', 167, 'kayio aboks', 'wabkosodod', 'abc167', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(786, 'Update', '2019-04-10 22:56:08', 168, 'lompa asloxo', 'waspalodod', 'abc168', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(787, 'Update', '2019-04-10 22:56:09', 169, 'zee apos', 'eados', 'abc169', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(788, 'Update', '2019-04-10 22:56:09', 170, 'zokspi el', 'eazdid', 'abc170', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(789, 'Update', '2019-04-10 22:56:09', 171, 'zabosil zata', 'eotdoad', 'abc171', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(790, 'Update', '2019-04-10 22:56:09', 172, 'zasoa oyb', 'eoylopod', 'abc172', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(791, 'Update', '2019-04-10 22:56:09', 173, 'zaoba eysih', 'eouhdod', 'abc173', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(792, 'Update', '2019-04-10 22:56:09', 174, 'oeoyah royv', 'eoyhodod', 'abc174', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(793, 'Update', '2019-04-10 22:56:09', 175, 'zoloyo kela', 'eoylopodod', 'abc175', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(794, 'Update', '2019-04-10 22:56:09', 176, 'zotyol iliv', 'eoytiodod', 'abc176', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(795, 'Update', '2019-04-10 22:56:09', 177, 'kayio aboks', 'eabkosodod', 'abc177', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(796, 'Update', '2019-04-10 22:56:09', 178, 'lompa asloxo', 'easpalodod', 'abc178', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(797, 'Update', '2019-04-10 22:56:09', 179, 'zee apos', 'rados', 'abc179', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(798, 'Update', '2019-04-10 22:56:09', 180, 'zokspi el', 'razdid', 'abc180', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(799, 'Update', '2019-04-10 22:56:09', 181, 'zabosil zata', 'rotdoad', 'abc181', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(800, 'Update', '2019-04-10 22:56:09', 182, 'zasoa oyb', 'roylopod', 'abc182', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(801, 'Update', '2019-04-10 22:56:09', 183, 'zaoba eysih', 'rouhdod', 'abc183', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(802, 'Update', '2019-04-10 22:56:09', 184, 'oeoyah royv', 'royhodod', 'abc184', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(803, 'Update', '2019-04-10 22:56:09', 185, 'zoloyo kela', 'roylopodod', 'abc185', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(804, 'Update', '2019-04-10 22:56:09', 186, 'zotyol iliv', 'roytiodod', 'abc186', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(805, 'Update', '2019-04-10 22:56:09', 187, 'kayio aboks', 'rabkosodod', 'abc187', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(806, 'Update', '2019-04-10 22:56:09', 188, 'lompa asloxo', 'raspalodod', 'abc188', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(807, 'Update', '2019-04-10 22:56:09', 189, 'zee apos', 'tados', 'abc189', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(808, 'Update', '2019-04-10 22:56:09', 190, 'zokspi el', 'tazdid', 'abc190', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(809, 'Update', '2019-04-10 22:56:09', 191, 'zabosil zata', 'totdoad', 'abc191', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(810, 'Update', '2019-04-10 22:56:09', 192, 'zasoa oyb', 'toylopod', 'abc192', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(811, 'Update', '2019-04-10 22:56:10', 193, 'zaoba eysih', 'touhdod', 'abc193', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(812, 'Update', '2019-04-10 22:56:10', 194, 'oeoyah royv', 'toyhodod', 'abc194', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(813, 'Update', '2019-04-10 22:56:10', 195, 'zoloyo kela', 'toylopodod', 'abc195', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(814, 'Update', '2019-04-10 22:56:10', 196, 'zotyol iliv', 'toytiodod', 'abc196', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(815, 'Update', '2019-04-10 22:56:10', 197, 'kayio aboks', 'tabkosodod', 'abc197', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(816, 'Update', '2019-04-10 22:56:10', 198, 'lompa asloxo', 'taspalodod', 'abc198', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(817, 'Update', '2019-04-10 22:56:10', 199, 'zee apos', 'yados', 'abc199', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(818, 'Update', '2019-04-10 22:56:10', 200, 'zokspi el', 'yazdid', 'abc200', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(819, 'Update', '2019-04-10 22:56:10', 201, 'zabosil zata', 'yotdoad', 'abc201', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(820, 'Update', '2019-04-10 22:56:10', 202, 'zasoa oyb', 'yoylopod', 'abc202', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(821, 'Update', '2019-04-10 22:56:10', 203, 'zaoba eysih', 'youhdod', 'abc203', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(822, 'Update', '2019-04-10 22:56:10', 204, 'oeoyah royv', 'yoyhodod', 'abc204', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(823, 'Update', '2019-04-10 22:56:10', 205, 'zoloyo kela', 'yoylopodod', 'abc205', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(824, 'Update', '2019-04-10 22:56:10', 206, 'zotyol iliv', 'yoytiodod', 'abc206', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(825, 'Update', '2019-04-10 22:56:10', 207, 'kayio aboks', 'yabkosodod', 'abc207', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', '');
INSERT INTO `st_info_log` (`id`, `actionTaken`, `actionTime`, `st_id`, `st_fullname`, `st_username`, `st_password`, `st_grade`, `roll_no`, `st_dob`, `st_address`, `st_district`, `st_gender`, `st_father`, `st_mother`, `st_parents_contact`, `image`) VALUES
(826, 'Update', '2019-04-10 22:56:10', 208, 'lompa asloxo', 'yaspalodod', 'abc208', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(827, 'Update', '2019-04-10 22:56:10', 209, 'zee apos', 'uados', 'abc209', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(828, 'Update', '2019-04-10 22:56:10', 210, 'zokspi el', 'uazdid', 'abc210', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(829, 'Update', '2019-04-10 22:56:10', 211, 'zabosil zata', 'uotdoad', 'abc211', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(830, 'Update', '2019-04-10 22:56:10', 212, 'zasoa oyb', 'uoylopod', 'abc212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(831, 'Update', '2019-04-10 22:56:10', 213, 'zaoba eysih', 'uouhdod', 'abc213', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(832, 'Update', '2019-04-10 22:56:10', 214, 'oeoyah royv', 'uoyhodod', 'abc214', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(833, 'Update', '2019-04-10 22:56:10', 215, 'zoloyo kela', 'uoylopodod', 'abc215', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(834, 'Update', '2019-04-10 22:56:10', 216, 'zotyol iliv', 'uoytiodod', 'abc216', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(835, 'Update', '2019-04-10 22:56:10', 217, 'kayio aboks', 'uabkosodod', 'abc217', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(836, 'Update', '2019-04-10 22:56:10', 218, 'lompa asloxo', 'uaspalodod', 'abc218', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(837, 'Update', '2019-04-10 22:56:10', 219, 'zee apos', 'iados', 'abc219', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(838, 'Update', '2019-04-10 22:56:10', 220, 'zokspi el', 'iazdid', 'abc220', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(839, 'Update', '2019-04-10 22:56:11', 221, 'zabosil zata', 'iotdoad', 'abc221', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(840, 'Update', '2019-04-10 22:56:11', 222, 'zasoa oyb', 'ioylopod', 'abc222', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(841, 'Update', '2019-04-10 22:56:11', 223, 'zaoba eysih', 'iouhdod', 'abc223', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(842, 'Update', '2019-04-10 22:56:11', 224, 'oeoyah royv', 'ioyhodod', 'abc224', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(843, 'Update', '2019-04-10 22:56:11', 225, 'zoloyo kela', 'ioylopodod', 'abc225', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(844, 'Update', '2019-04-10 22:56:11', 226, 'zotyol iliv', 'ioytiodod', 'abc226', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(845, 'Update', '2019-04-10 22:56:11', 227, 'kayio aboks', 'iabkosodod', 'abc227', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(846, 'Update', '2019-04-10 22:56:11', 228, 'lompa asloxo', 'iaspalodod', 'abc228', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(847, 'Update', '2019-04-10 22:56:11', 229, 'zee apos', 'pados', 'abc229', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(848, 'Update', '2019-04-10 22:56:11', 230, 'zokspi el', 'pazdid', 'abc230', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(849, 'Update', '2019-04-10 22:56:11', 231, 'zabosil zata', 'potdoad', 'abc231', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(850, 'Update', '2019-04-10 22:56:11', 232, 'zasoa oyb', 'poylopod', 'abc232', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(851, 'Update', '2019-04-10 22:56:11', 233, 'zaoba eysih', 'pouhdod', 'abc233', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(852, 'Update', '2019-04-10 22:56:11', 234, 'oeoyah royv', 'poyhodod', 'abc234', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(853, 'Update', '2019-04-10 22:56:11', 235, 'zoloyo kela', 'poylopodod', 'abc235', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(854, 'Update', '2019-04-10 22:56:11', 236, 'zotyol iliv', 'poytiodod', 'abc236', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(855, 'Update', '2019-04-10 22:56:11', 237, 'kayio aboks', 'pabkosodod', 'abc237', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(856, 'Update', '2019-04-10 22:56:11', 238, 'lompa asloxo', 'paspalodod', 'abc238', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(857, 'Update', '2019-04-10 22:56:11', 239, 'zee apos', 'fados', 'abc239', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(858, 'Update', '2019-04-10 22:56:11', 240, 'zokspi el', 'fazdid', 'abc240', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(859, 'Update', '2019-04-10 22:56:11', 241, 'zabosil zata', 'fotdoad', 'abc241', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(860, 'Update', '2019-04-10 22:56:11', 242, 'zasoa oyb', 'foylopod', 'abc242', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(861, 'Update', '2019-04-10 22:56:12', 243, 'zaoba eysih', 'fouhdod', 'abc243', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(862, 'Update', '2019-04-10 22:56:12', 244, 'oeoyah royv', 'foyhodod', 'abc244', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(863, 'Update', '2019-04-10 22:56:12', 245, 'zoloyo kela', 'foylopodod', 'abc245', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(864, 'Update', '2019-04-10 22:56:12', 246, 'zotyol iliv', 'foytiodod', 'abc246', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(865, 'Update', '2019-04-10 22:56:12', 247, 'kayio aboks', 'fabkosodod', 'abc247', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(866, 'Update', '2019-04-10 22:56:12', 248, 'lompa asloxo', 'faspalodod', 'abc248', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(867, 'Update', '2019-04-10 22:56:12', 249, 'zee apos', 'gados', 'abc249', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(868, 'Update', '2019-04-10 22:56:12', 250, 'zokspi el', 'gazdid', 'abc250', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(869, 'Update', '2019-04-10 22:56:12', 251, 'zabosil zata', 'gotdoad', 'abc251', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(870, 'Update', '2019-04-10 22:56:12', 252, 'zasoa oyb', 'goylopod', 'abc252', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(871, 'Update', '2019-04-10 22:56:12', 253, 'zaoba eysih', 'gouhdod', 'abc253', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(872, 'Update', '2019-04-10 22:56:12', 254, 'oeoyah royv', 'goyhodod', 'abc254', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(873, 'Update', '2019-04-10 22:56:12', 255, 'zoloyo kela', 'goylopodod', 'abc255', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(874, 'Update', '2019-04-10 22:56:12', 256, 'zotyol iliv', 'goytiodod', 'abc256', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(875, 'Update', '2019-04-10 22:56:12', 257, 'kayio aboks', 'gabkosodod', 'abc257', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(876, 'Update', '2019-04-10 22:56:12', 258, 'lompa asloxo', 'gaspalodod', 'abc258', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(877, 'Update', '2019-04-10 22:56:12', 259, 'zee apos', 'hados', 'abc259', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(878, 'Update', '2019-04-10 22:56:12', 260, 'zokspi el', 'hazdid', 'abc260', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(879, 'Update', '2019-04-10 22:56:12', 261, 'zabosil zata', 'hotdoad', 'abc261', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(880, 'Update', '2019-04-10 22:56:12', 262, 'zasoa oyb', 'hoylopod', 'abc262', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(881, 'Update', '2019-04-10 22:56:12', 263, 'zaoba eysih', 'houhdod', 'abc263', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(882, 'Update', '2019-04-10 22:56:12', 264, 'oeoyah royv', 'hoyhodod', 'abc264', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(883, 'Update', '2019-04-10 22:56:12', 265, 'zoloyo kela', 'hoylopodod', 'abc265', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(884, 'Update', '2019-04-10 22:56:12', 266, 'zotyol iliv', 'hoytiodod', 'abc266', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(885, 'Update', '2019-04-10 22:56:13', 267, 'kayio aboks', 'habkosodod', 'abc267', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(886, 'Update', '2019-04-10 22:56:13', 268, 'lompa asloxo', 'haspalodod', 'abc268', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(887, 'Update', '2019-04-10 22:56:13', 269, 'zee apos', 'jados', 'abc269', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(888, 'Update', '2019-04-10 22:56:13', 270, 'zokspi el', 'jazdid', 'abc270', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(889, 'Update', '2019-04-10 22:56:13', 271, 'zabosil zata', 'jotdoad', 'abc271', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(890, 'Update', '2019-04-10 22:56:13', 272, 'zasoa oyb', 'joylopod', 'abc272', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(891, 'Update', '2019-04-10 22:56:13', 273, 'zaoba eysih', 'jouhdod', 'abc273', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(892, 'Update', '2019-04-10 22:56:13', 274, 'oeoyah royv', 'joyhodod', 'abc274', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(893, 'Update', '2019-04-10 22:56:13', 275, 'zoloyo kela', 'joylopodod', 'abc275', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(894, 'Update', '2019-04-10 22:56:13', 276, 'zotyol iliv', 'joytiodod', 'abc276', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(895, 'Update', '2019-04-10 22:56:13', 277, 'kayio aboks', 'jabkosodod', 'abc277', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(896, 'Update', '2019-04-10 22:56:13', 278, 'lompa asloxo', 'jaspalodod', 'abc278', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(897, 'Update', '2019-04-10 22:56:13', 279, 'zee apos', 'kados', 'abc279', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(898, 'Update', '2019-04-10 22:56:13', 280, 'zokspi el', 'kazdid', 'abc280', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(899, 'Update', '2019-04-10 22:56:13', 281, 'zabosil zata', 'kotdoad', 'abc281', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(900, 'Update', '2019-04-10 22:56:14', 282, 'zasoa oyb', 'koylopod', 'abc282', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(901, 'Update', '2019-04-10 22:56:14', 283, 'zaoba eysih', 'kouhdod', 'abc283', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(902, 'Update', '2019-04-10 22:56:14', 284, 'oeoyah royv', 'koyhodod', 'abc284', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(903, 'Update', '2019-04-10 22:56:14', 285, 'zoloyo kela', 'koylopodod', 'abc285', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(904, 'Update', '2019-04-10 22:56:14', 286, 'zotyol iliv', 'koytiodod', 'abc286', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(905, 'Update', '2019-04-10 22:56:14', 287, 'kayio aboks', 'kabkosodod', 'abc287', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(906, 'Update', '2019-04-10 22:56:14', 288, 'lompa asloxo', 'kaspalodod', 'abc288', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(907, 'Update', '2019-04-10 22:56:14', 289, 'zee apos', 'lados', 'abc289', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(908, 'Update', '2019-04-10 22:56:14', 290, 'zokspi el', 'lazdid', 'abc290', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(909, 'Update', '2019-04-10 22:56:14', 291, 'zabosil zata', 'lotdoad', 'abc291', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(910, 'Update', '2019-04-10 22:56:14', 292, 'zasoa oyb', 'loylopod', 'abc292', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(911, 'Update', '2019-04-10 22:56:14', 293, 'zaoba eysih', 'louhdod', 'abc293', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(912, 'Update', '2019-04-10 22:56:14', 294, 'oeoyah royv', 'loyhodod', 'abc294', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(913, 'Update', '2019-04-10 22:56:14', 295, 'zoloyo kela', 'loylopodod', 'abc295', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(914, 'Update', '2019-04-10 22:56:14', 296, 'zotyol iliv', 'loytiodod', 'abc296', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(915, 'Update', '2019-04-10 22:56:14', 297, 'kayio aboks', 'labkosodod', 'abc297', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(916, 'Update', '2019-04-10 22:56:14', 298, 'lompa asloxo', 'laspalodod', 'abc298', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(917, 'Update', '2019-04-10 22:56:14', 299, 'zee apos', 'vados', 'abc299', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(918, 'Update', '2019-04-10 22:56:15', 300, 'zokspi el', 'vazdid', 'abc300', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(919, 'Update', '2019-04-10 22:56:15', 301, 'zabosil zata', 'votdoad', 'abc301', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(920, 'Update', '2019-04-10 22:56:15', 302, 'zasoa oyb', 'voylopod', 'abc302', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(921, 'Update', '2019-04-10 22:56:15', 303, 'zaoba eysih', 'vouhdod', 'abc303', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(922, 'Update', '2019-04-10 22:56:15', 304, 'oeoyah royv', 'voyhodod', 'abc304', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(923, 'Update', '2019-04-10 22:56:15', 305, 'zoloyo kela', 'voylopodod', 'abc305', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(924, 'Update', '2019-04-10 22:56:15', 306, 'zotyol iliv', 'voytiodod', 'abc306', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(925, 'Update', '2019-04-10 22:56:15', 307, 'kayio aboks', 'vabkosodod', 'abc307', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(926, 'Update', '2019-04-10 22:56:15', 308, 'lompa asloxo', 'vaspalodod', 'abc308', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(927, 'Update', '2019-04-10 22:56:15', 309, 'zee apos', 'bados', 'abc309', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(928, 'Update', '2019-04-10 22:56:15', 310, 'zokspi el', 'bazdid', 'abc310', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(929, 'Update', '2019-04-10 22:56:15', 311, 'zabosil zata', 'botdoad', 'abc311', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(930, 'Update', '2019-04-10 22:56:15', 312, 'zasoa oyb', 'boylopod', 'abc312', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(931, 'Update', '2019-04-10 22:56:15', 313, 'zaoba eysih', 'bouhdod', 'abc313', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(932, 'Update', '2019-04-10 22:56:15', 314, 'oeoyah royv', 'boyhodod', 'abc314', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(933, 'Update', '2019-04-10 23:00:36', 0, 'Ravi Khadka', 'ravi2056', 'abc0', 10, 2, '11/17/2056', 'lokanthali', 'Bhaktapur', 'Male', 'Abc Xyz', 'Bcd Xyz', '9800000', 'ferrari.jpg'),
(934, 'Update', '2019-04-10 23:00:37', 2, 'Hari Thapa', 'hari2055', 'abc2', 10, 12, '11/17/2055', 'Kausaltar', 'Bhaktapur', 'Male', 'Ram Thapa', 'Sita Thapa', '9812222200', ''),
(935, 'Update', '2019-04-10 23:00:38', 3, 'Qwe', 'asdf', 'abc3', 8, 11, '27 Dec 1998', 'Banepa', 'Kavre', 'Male', 'aasd', 'aasdf', '9812222', ''),
(936, 'Update', '2019-04-10 23:00:38', 4, 'Robin Dhakal', 'robin2053', 'abc4', 10, 1, '20 Jan 1994', 'Patan', 'Lalitpur', 'Male', 'Rajan Dhakal', 'Rama Dhakal', '9841111', ''),
(937, 'Update', '2019-04-10 23:00:39', 5, 'Saugat Gautam', 'saugat2055', 'abc5', 7, 12, '12 Jan 1999', 'Jadibuti', 'Kathmandu', 'Male', 'John Gautam', 'Sita Gautam', '9802212222', ''),
(938, 'Update', '2019-04-10 23:00:41', 8, 'Your Name', 'yourname', 'abc8', 5, 1, '27 Jan 2000', 'Lokanthali', 'Bhaktapur', 'Male', 'John Cena', 'Sita Cena', '9811111111', ''),
(939, 'Update', '2019-04-10 23:00:41', 9, 'rajkumar xyz', 'rajkumar', 'abc9', 10, 5, '13 Jan 2000', 'Kausaltar', 'Bhaktapur', 'Male', 'Abc xyz', 'Bcd xyz', '98000000', ''),
(940, 'Update', '2019-04-10 23:00:42', 10, 'dsdsdsd', 'aaaa', 'abc10', 2, 1, '1 Jan 2000', 'Tinkune', 'Kathmandu', 'Male', 'abbb', 'acc', '123456', ''),
(941, 'Update', '2019-04-10 23:00:43', 12, 'dsdsds', 'qq', 'abc12', 3, 1, '28 jan 2000', 'adsd', 'dsdsd', 'Male', 'dsds', 'ddsds', '12121', ''),
(942, 'Update', '2019-04-10 23:00:44', 13, 'Zorina Abreu', 'zabreu', 'abc13', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(943, 'Update', '2019-04-10 23:00:44', 14, 'Yon Akin', 'yonakin', 'abc14', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(944, 'Update', '2019-04-10 23:00:45', 15, 'santa baga', 'santa', 'abc15', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(945, 'Update', '2019-04-10 23:00:45', 16, 'Nush Nush', 'nush', 'abc16', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(946, 'Update', '2019-04-10 23:00:46', 17, 'zull zull', 'biza', 'abc17', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(947, 'Update', '2019-04-10 23:00:46', 18, 'bix Nush', 'bix', 'abc18', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(948, 'Update', '2019-04-10 23:00:47', 19, 'fala fal', 'fal', 'abc19', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(949, 'Update', '2019-04-10 23:00:48', 20, 'bix gash', 'gash', 'abc20', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(950, 'Update', '2019-04-10 23:00:48', 21, 'vilo vil', 'vil', 'abc21', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(951, 'Update', '2019-04-10 23:00:49', 22, 'bix dish', 'dish', 'abc22', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(952, 'Update', '2019-04-10 23:00:49', 23, 'vilo kas', 'kas', 'abc23', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(953, 'Update', '2019-04-10 23:00:50', 24, 'bix kas', 'bos', 'abc24', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(954, 'Update', '2019-04-10 23:00:50', 25, 'vilo tas', 'tas', 'abc25', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(955, 'Update', '2019-04-10 23:00:51', 26, 'bix tas', 'tasa', 'abc26', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(956, 'Update', '2019-04-10 23:00:52', 28, 'bas nash', 'nash', 'abc28', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(957, 'Update', '2019-04-10 23:00:52', 29, 'bobo rob', 'rob', 'abc29', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(958, 'Update', '2019-04-10 23:00:53', 30, 'bas rob', 'nasu', 'abc30', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(959, 'Update', '2019-04-10 23:00:54', 31, 'bas rosta', 'rosta', 'abc31', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(960, 'Update', '2019-04-10 23:00:54', 32, 'kasi rob', 'kasi', 'abc32', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(961, 'Update', '2019-04-10 23:00:55', 33, 'kasi kesh', 'kesh', 'abc33', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(962, 'Update', '2019-04-10 23:00:55', 34, 'kesha rob', 'kesha', 'abc34', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(963, 'Update', '2019-04-10 23:00:56', 35, 'vilx kesh', 'vilx', 'abc35', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(964, 'Update', '2019-04-10 23:00:56', 36, 'natxa tili', 'natxa', 'abc36', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(965, 'Update', '2019-04-10 23:00:57', 37, 'ntati zab', 'zab', 'abc37', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(966, 'Update', '2019-04-10 23:00:57', 38, 'zaompa sas', 'sas', 'abc38', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(967, 'Update', '2019-04-10 23:00:58', 39, 'jesi kas', 'jesi', 'abc39', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(968, 'Update', '2019-04-10 23:00:58', 40, 'kas jesi', 'kasu', 'abc40', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(969, 'Update', '2019-04-10 23:00:59', 41, 'basi rta', 'rota', 'abc41', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(970, 'Update', '2019-04-10 23:01:00', 42, 'kasi rob', 'kasi', 'abc42', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(971, 'Update', '2019-04-10 23:01:00', 43, 'kai kesh', 'kesu', 'abc43', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(972, 'Update', '2019-04-10 23:01:01', 44, 'keha ro', 'keha', 'abc44', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(973, 'Update', '2019-04-10 23:01:01', 45, 'vilp keh', 'vilp', 'abc45', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(974, 'Update', '2019-04-10 23:01:02', 46, 'nata tii', 'nata', 'abc46', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(975, 'Update', '2019-04-10 23:01:02', 47, 'ntai zabi', 'zabi', 'abc47', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(976, 'Update', '2019-04-10 23:01:03', 48, 'zaompa saso', 'saso', 'abc48', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(977, 'Update', '2019-04-10 23:01:04', 49, 'jei kaps', 'kaps', 'abc49', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(978, 'Update', '2019-04-10 23:01:04', 50, 'kaspi jel', 'kaspsi', 'abc50', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(979, 'Update', '2019-04-10 23:01:05', 52, 'kasil rob', 'kasil', 'abc52', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(980, 'Update', '2019-04-10 23:01:06', 53, 'kaib kesih', 'kesuh', 'abc53', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(981, 'Update', '2019-04-10 23:03:04', 0, 'Ravi Khadka', 'ravi2056', '', 10, 2, '11/17/2056', 'lokanthali', 'Bhaktapur', 'Male', 'Abc Xyz', 'Bcd Xyz', '9800000', 'ferrari.jpg'),
(982, 'Update', '2019-04-10 23:03:05', 2, 'Hari Thapa', 'hari2055', '', 10, 12, '11/17/2055', 'Kausaltar', 'Bhaktapur', 'Male', 'Ram Thapa', 'Sita Thapa', '9812222200', ''),
(983, 'Update', '2019-04-10 23:03:05', 3, 'Qwe', 'asdf', '', 8, 11, '27 Dec 1998', 'Banepa', 'Kavre', 'Male', 'aasd', 'aasdf', '9812222', ''),
(984, 'Update', '2019-04-10 23:03:06', 4, 'Robin Dhakal', 'robin2053', '', 10, 1, '20 Jan 1994', 'Patan', 'Lalitpur', 'Male', 'Rajan Dhakal', 'Rama Dhakal', '9841111', ''),
(985, 'Update', '2019-04-10 23:03:06', 5, 'Saugat Gautam', 'saugat2055', '', 7, 12, '12 Jan 1999', 'Jadibuti', 'Kathmandu', 'Male', 'John Gautam', 'Sita Gautam', '9802212222', ''),
(986, 'Update', '2019-04-10 23:03:08', 8, 'Your Name', 'yourname', '', 5, 1, '27 Jan 2000', 'Lokanthali', 'Bhaktapur', 'Male', 'John Cena', 'Sita Cena', '9811111111', ''),
(987, 'Update', '2019-04-10 23:03:08', 9, 'rajkumar xyz', 'rajkumar', '', 10, 5, '13 Jan 2000', 'Kausaltar', 'Bhaktapur', 'Male', 'Abc xyz', 'Bcd xyz', '98000000', ''),
(988, 'Update', '2019-04-10 23:03:09', 10, 'dsdsdsd', 'aaaa', '', 2, 1, '1 Jan 2000', 'Tinkune', 'Kathmandu', 'Male', 'abbb', 'acc', '123456', ''),
(989, 'Update', '2019-04-10 23:03:10', 12, 'dsdsds', 'qq', '', 3, 1, '28 jan 2000', 'adsd', 'dsdsd', 'Male', 'dsds', 'ddsds', '12121', ''),
(990, 'Update', '2019-04-10 23:03:11', 13, 'Zorina Abreu', 'zabreu', '', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(991, 'Update', '2019-04-10 23:03:11', 14, 'Yon Akin', 'yonakin', '', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(992, 'Update', '2019-04-10 23:03:12', 15, 'santa baga', 'santa', '', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(993, 'Update', '2019-04-10 23:03:12', 16, 'Nush Nush', 'nush', '', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(994, 'Update', '2019-04-10 23:03:13', 17, 'zull zull', 'biza', '', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(995, 'Update', '2019-04-10 23:03:13', 18, 'bix Nush', 'bix', '', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(996, 'Update', '2019-04-10 23:03:14', 19, 'fala fal', 'fal', '', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(997, 'Update', '2019-04-10 23:03:14', 20, 'bix gash', 'gash', '', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(998, 'Update', '2019-04-10 23:03:15', 21, 'vilo vil', 'vil', '', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(999, 'Update', '2019-04-10 23:03:15', 22, 'bix dish', 'dish', '', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1000, 'Update', '2019-04-10 23:03:16', 23, 'vilo kas', 'kas', '', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(1001, 'Update', '2019-04-10 23:03:17', 24, 'bix kas', 'bos', '', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1002, 'Update', '2019-04-10 23:03:17', 25, 'vilo tas', 'tas', '', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(1003, 'Update', '2019-04-10 23:03:18', 26, 'bix tas', 'tasa', '', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1004, 'Update', '2019-04-10 23:03:19', 28, 'bas nash', 'nash', '', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1005, 'Update', '2019-04-10 23:03:19', 29, 'bobo rob', 'rob', '', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(1006, 'Update', '2019-04-10 23:03:20', 30, 'bas rob', 'nasu', '', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1007, 'Update', '2019-04-10 23:03:20', 31, 'bas rosta', 'rosta', '', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1008, 'Update', '2019-04-10 23:03:21', 32, 'kasi rob', 'kasi', '', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1009, 'Update', '2019-04-10 23:03:21', 33, 'kasi kesh', 'kesh', '', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1010, 'Update', '2019-04-10 23:03:22', 34, 'kesha rob', 'kesha', '', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1011, 'Update', '2019-04-10 23:03:23', 35, 'vilx kesh', 'vilx', '', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1012, 'Update', '2019-04-10 23:03:23', 36, 'natxa tili', 'natxa', '', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1013, 'Update', '2019-04-10 23:03:24', 37, 'ntati zab', 'zab', '', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1014, 'Update', '2019-04-10 23:03:24', 38, 'zaompa sas', 'sas', '', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1015, 'Update', '2019-04-10 23:03:25', 39, 'jesi kas', 'jesi', '', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(1016, 'Update', '2019-04-10 23:03:25', 40, 'kas jesi', 'kasu', '', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1017, 'Update', '2019-04-10 23:03:26', 41, 'basi rta', 'rota', '', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1018, 'Update', '2019-04-10 23:03:26', 42, 'kasi rob', 'kasi', '', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1019, 'Update', '2019-04-10 23:03:27', 43, 'kai kesh', 'kesu', '', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1020, 'Update', '2019-04-10 23:03:27', 44, 'keha ro', 'keha', '', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1021, 'Update', '2019-04-10 23:03:28', 45, 'vilp keh', 'vilp', '', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1022, 'Update', '2019-04-10 23:03:28', 46, 'nata tii', 'nata', '', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1023, 'Update', '2019-04-10 23:03:29', 47, 'ntai zabi', 'zabi', '', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1024, 'Update', '2019-04-10 23:03:30', 48, 'zaompa saso', 'saso', '', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1025, 'Update', '2019-04-10 23:03:30', 49, 'jei kaps', 'kaps', '', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(1026, 'Update', '2019-04-10 23:03:31', 50, 'kaspi jel', 'kaspsi', '', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1027, 'Update', '2019-04-10 23:03:32', 52, 'kasil rob', 'kasil', '', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1028, 'Update', '2019-04-10 23:03:32', 53, 'kaib kesih', 'kesuh', '', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1029, 'Update', '2019-04-10 23:03:33', 54, 'kehah rov', 'kseha', 'abc54', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1030, 'Update', '2019-04-10 23:04:35', 0, 'Ravi Khadka', 'ravi2056', 'abc0', 10, 2, '11/17/2056', 'lokanthali', 'Bhaktapur', 'Male', 'Abc Xyz', 'Bcd Xyz', '9800000', 'ferrari.jpg'),
(1031, 'Update', '2019-04-10 23:04:36', 2, 'Hari Thapa', 'hari2055', 'abc2', 10, 12, '11/17/2055', 'Kausaltar', 'Bhaktapur', 'Male', 'Ram Thapa', 'Sita Thapa', '9812222200', ''),
(1032, 'Update', '2019-04-10 23:04:36', 3, 'Qwe', 'asdf', 'abc3', 8, 11, '27 Dec 1998', 'Banepa', 'Kavre', 'Male', 'aasd', 'aasdf', '9812222', ''),
(1033, 'Update', '2019-04-10 23:04:37', 4, 'Robin Dhakal', 'robin2053', 'abc4', 10, 1, '20 Jan 1994', 'Patan', 'Lalitpur', 'Male', 'Rajan Dhakal', 'Rama Dhakal', '9841111', ''),
(1034, 'Update', '2019-04-10 23:04:37', 5, 'Saugat Gautam', 'saugat2055', 'abc5', 7, 12, '12 Jan 1999', 'Jadibuti', 'Kathmandu', 'Male', 'John Gautam', 'Sita Gautam', '9802212222', ''),
(1035, 'Update', '2019-04-10 23:04:39', 8, 'Your Name', 'yourname', 'abc8', 5, 1, '27 Jan 2000', 'Lokanthali', 'Bhaktapur', 'Male', 'John Cena', 'Sita Cena', '9811111111', ''),
(1036, 'Update', '2019-04-10 23:04:39', 9, 'rajkumar xyz', 'rajkumar', 'abc9', 10, 5, '13 Jan 2000', 'Kausaltar', 'Bhaktapur', 'Male', 'Abc xyz', 'Bcd xyz', '98000000', ''),
(1037, 'Update', '2019-04-10 23:04:40', 10, 'dsdsdsd', 'aaaa', 'abc10', 2, 1, '1 Jan 2000', 'Tinkune', 'Kathmandu', 'Male', 'abbb', 'acc', '123456', ''),
(1038, 'Update', '2019-04-10 23:04:41', 12, 'dsdsds', 'qq', 'abc12', 3, 1, '28 jan 2000', 'adsd', 'dsdsd', 'Male', 'dsds', 'ddsds', '12121', ''),
(1039, 'Update', '2019-04-10 23:04:42', 13, 'Zorina Abreu', 'zabreu', 'abc13', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(1040, 'Update', '2019-04-10 23:04:42', 14, 'Yon Akin', 'yonakin', 'abc14', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1041, 'Update', '2019-04-10 23:04:43', 15, 'santa baga', 'santa', 'abc15', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(1042, 'Update', '2019-04-10 23:04:43', 16, 'Nush Nush', 'nush', 'abc16', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1043, 'Update', '2019-04-10 23:04:44', 17, 'zull zull', 'biza', 'abc17', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(1044, 'Update', '2019-04-10 23:04:44', 18, 'bix Nush', 'bix', 'abc18', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1045, 'Update', '2019-04-10 23:04:45', 19, 'fala fal', 'fal', 'abc19', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(1046, 'Update', '2019-04-10 23:04:46', 20, 'bix gash', 'gash', 'abc20', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1047, 'Update', '2019-04-10 23:04:46', 21, 'vilo vil', 'vil', 'abc21', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(1048, 'Update', '2019-04-10 23:04:47', 22, 'bix dish', 'dish', 'abc22', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1049, 'Update', '2019-04-10 23:04:47', 23, 'vilo kas', 'kas', 'abc23', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(1050, 'Update', '2019-04-10 23:04:48', 24, 'bix kas', 'bos', 'abc24', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1051, 'Update', '2019-04-10 23:04:49', 25, 'vilo tas', 'tas', 'abc25', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(1052, 'Update', '2019-04-10 23:04:49', 26, 'bix tas', 'tasa', 'abc26', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1053, 'Update', '2019-04-10 23:04:50', 28, 'bas nash', 'nash', 'abc28', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1054, 'Update', '2019-04-10 23:04:51', 29, 'bobo rob', 'rob', 'abc29', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(1055, 'Update', '2019-04-10 23:04:51', 30, 'bas rob', 'nasu', 'abc30', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1056, 'Update', '2019-04-10 23:04:52', 31, 'bas rosta', 'rosta', 'abc31', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1057, 'Update', '2019-04-10 23:04:52', 32, 'kasi rob', 'kasi', 'abc32', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1058, 'Update', '2019-04-10 23:04:53', 33, 'kasi kesh', 'kesh', 'abc33', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1059, 'Update', '2019-04-10 23:04:53', 34, 'kesha rob', 'kesha', 'abc34', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1060, 'Update', '2019-04-10 23:04:54', 35, 'vilx kesh', 'vilx', 'abc35', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1061, 'Update', '2019-04-10 23:04:54', 36, 'natxa tili', 'natxa', 'abc36', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1062, 'Update', '2019-04-10 23:04:55', 37, 'ntati zab', 'zab', 'abc37', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1063, 'Update', '2019-04-10 23:04:55', 38, 'zaompa sas', 'sas', 'abc38', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1064, 'Update', '2019-04-10 23:04:56', 39, 'jesi kas', 'jesi', 'abc39', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(1065, 'Update', '2019-04-10 23:04:57', 40, 'kas jesi', 'kasu', 'abc40', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1066, 'Update', '2019-04-10 23:04:57', 41, 'basi rta', 'rota', 'abc41', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1067, 'Update', '2019-04-10 23:04:58', 42, 'kasi rob', 'kasi', 'abc42', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1068, 'Update', '2019-04-10 23:04:58', 43, 'kai kesh', 'kesu', 'abc43', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1069, 'Update', '2019-04-10 23:04:59', 44, 'keha ro', 'keha', 'abc44', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1070, 'Update', '2019-04-10 23:04:59', 45, 'vilp keh', 'vilp', 'abc45', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1071, 'Update', '2019-04-10 23:05:00', 46, 'nata tii', 'nata', 'abc46', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1072, 'Update', '2019-04-10 23:05:00', 47, 'ntai zabi', 'zabi', 'abc47', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1073, 'Update', '2019-04-10 23:05:01', 48, 'zaompa saso', 'saso', 'abc48', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1074, 'Update', '2019-04-10 23:05:01', 49, 'jei kaps', 'kaps', 'abc49', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(1075, 'Update', '2019-04-10 23:05:02', 50, 'kaspi jel', 'kaspsi', 'abc50', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1076, 'Update', '2019-04-10 23:05:03', 52, 'kasil rob', 'kasil', 'abc52', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1077, 'Update', '2019-04-10 23:05:03', 53, 'kaib kesih', 'kesuh', 'abc53', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1078, 'Update', '2019-04-10 23:05:04', 54, 'kehah rov', 'kseha', 'abc54', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1079, 'Update', '2019-04-10 23:06:10', 0, 'Ravi Khadka', 'ravi2056', 'abc0', 10, 2, '11/17/2056', 'lokanthali', 'Bhaktapur', 'Male', 'Abc Xyz', 'Bcd Xyz', '9800000', 'ferrari.jpg'),
(1080, 'Update', '2019-04-10 23:06:11', 2, 'Hari Thapa', 'hari2055', 'abc2', 10, 12, '11/17/2055', 'Kausaltar', 'Bhaktapur', 'Male', 'Ram Thapa', 'Sita Thapa', '9812222200', ''),
(1081, 'Update', '2019-04-10 23:06:11', 3, 'Qwe', 'asdf', 'abc3', 8, 11, '27 Dec 1998', 'Banepa', 'Kavre', 'Male', 'aasd', 'aasdf', '9812222', ''),
(1082, 'Update', '2019-04-10 23:06:12', 4, 'Robin Dhakal', 'robin2053', 'abc4', 10, 1, '20 Jan 1994', 'Patan', 'Lalitpur', 'Male', 'Rajan Dhakal', 'Rama Dhakal', '9841111', ''),
(1083, 'Update', '2019-04-10 23:06:12', 5, 'Saugat Gautam', 'saugat2055', 'abc5', 7, 12, '12 Jan 1999', 'Jadibuti', 'Kathmandu', 'Male', 'John Gautam', 'Sita Gautam', '9802212222', ''),
(1084, 'Update', '2019-04-10 23:06:14', 8, 'Your Name', 'yourname', 'abc8', 5, 1, '27 Jan 2000', 'Lokanthali', 'Bhaktapur', 'Male', 'John Cena', 'Sita Cena', '9811111111', ''),
(1085, 'Update', '2019-04-10 23:06:14', 9, 'rajkumar xyz', 'rajkumar', 'abc9', 10, 5, '13 Jan 2000', 'Kausaltar', 'Bhaktapur', 'Male', 'Abc xyz', 'Bcd xyz', '98000000', ''),
(1086, 'Update', '2019-04-10 23:06:15', 10, 'dsdsdsd', 'aaaa', 'abc10', 2, 1, '1 Jan 2000', 'Tinkune', 'Kathmandu', 'Male', 'abbb', 'acc', '123456', ''),
(1087, 'Update', '2019-04-10 23:06:16', 12, 'dsdsds', 'qq', 'abc12', 3, 1, '28 jan 2000', 'adsd', 'dsdsd', 'Male', 'dsds', 'ddsds', '12121', ''),
(1088, 'Update', '2019-04-10 23:06:17', 13, 'Zorina Abreu', 'zabreu', 'abc13', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(1089, 'Update', '2019-04-10 23:06:17', 14, 'Yon Akin', 'yonakin', 'abc14', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1090, 'Update', '2019-04-10 23:06:18', 15, 'santa baga', 'santa', 'abc15', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(1091, 'Update', '2019-04-10 23:06:18', 16, 'Nush Nush', 'nush', 'abc16', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1092, 'Update', '2019-04-10 23:06:19', 17, 'zull zull', 'biza', 'abc17', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(1093, 'Update', '2019-04-10 23:06:19', 18, 'bix Nush', 'bix', 'abc18', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1094, 'Update', '2019-04-10 23:06:20', 19, 'fala fal', 'fal', 'abc19', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(1095, 'Update', '2019-04-10 23:06:20', 20, 'bix gash', 'gash', 'abc20', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1096, 'Update', '2019-04-10 23:06:21', 21, 'vilo vil', 'vil', 'abc21', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(1097, 'Update', '2019-04-10 23:06:21', 22, 'bix dish', 'dish', 'abc22', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1098, 'Update', '2019-04-10 23:06:22', 23, 'vilo kas', 'kas', 'abc23', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(1099, 'Update', '2019-04-10 23:06:23', 24, 'bix kas', 'bos', 'abc24', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1100, 'Update', '2019-04-10 23:06:23', 25, 'vilo tas', 'tas', 'abc25', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(1101, 'Update', '2019-04-10 23:06:24', 26, 'bix tas', 'tasa', 'abc26', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1102, 'Update', '2019-04-10 23:06:25', 28, 'bas nash', 'nash', 'abc28', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1103, 'Update', '2019-04-10 23:06:25', 29, 'bobo rob', 'rob', 'abc29', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(1104, 'Update', '2019-04-10 23:06:26', 30, 'bas rob', 'nasu', 'abc30', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1105, 'Update', '2019-04-10 23:06:26', 31, 'bas rosta', 'rosta', 'abc31', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1106, 'Update', '2019-04-10 23:06:27', 32, 'kasi rob', 'kasi', 'abc32', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1107, 'Update', '2019-04-10 23:06:27', 33, 'kasi kesh', 'kesh', 'abc33', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1108, 'Update', '2019-04-10 23:06:28', 34, 'kesha rob', 'kesha', 'abc34', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1109, 'Update', '2019-04-10 23:06:29', 35, 'vilx kesh', 'vilx', 'abc35', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1110, 'Update', '2019-04-10 23:06:29', 36, 'natxa tili', 'natxa', 'abc36', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1111, 'Update', '2019-04-10 23:06:30', 37, 'ntati zab', 'zab', 'abc37', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1112, 'Update', '2019-04-10 23:06:30', 38, 'zaompa sas', 'sas', 'abc38', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1113, 'Update', '2019-04-10 23:06:31', 39, 'jesi kas', 'jesi', 'abc39', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(1114, 'Update', '2019-04-10 23:06:31', 40, 'kas jesi', 'kasu', 'abc40', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1115, 'Update', '2019-04-10 23:06:32', 41, 'basi rta', 'rota', 'abc41', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1116, 'Update', '2019-04-10 23:06:32', 42, 'kasi rob', 'kasi', 'abc42', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1117, 'Update', '2019-04-10 23:06:33', 43, 'kai kesh', 'kesu', 'abc43', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1118, 'Update', '2019-04-10 23:06:33', 44, 'keha ro', 'keha', 'abc44', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1119, 'Update', '2019-04-10 23:06:34', 45, 'vilp keh', 'vilp', 'abc45', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1120, 'Update', '2019-04-10 23:06:34', 46, 'nata tii', 'nata', 'abc46', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1121, 'Update', '2019-04-10 23:06:35', 47, 'ntai zabi', 'zabi', 'abc47', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1122, 'Update', '2019-04-10 23:06:36', 48, 'zaompa saso', 'saso', 'abc48', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1123, 'Update', '2019-04-10 23:06:36', 49, 'jei kaps', 'kaps', 'abc49', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(1124, 'Update', '2019-04-10 23:06:37', 50, 'kaspi jel', 'kaspsi', 'abc50', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1125, 'Update', '2019-04-10 23:06:38', 52, 'kasil rob', 'kasil', 'abc52', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1126, 'Update', '2019-04-10 23:06:38', 53, 'kaib kesih', 'kesuh', 'abc53', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1127, 'Update', '2019-04-10 23:06:39', 54, 'kehah rov', 'kseha', 'abc54', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1128, 'Update', '2019-04-10 23:08:25', 0, 'Ravi Khadka', 'ravi2056', 'abc0', 10, 2, '11/17/2056', 'lokanthali', 'Bhaktapur', 'Male', 'Abc Xyz', 'Bcd Xyz', '9800000', 'ferrari.jpg'),
(1129, 'Update', '2019-04-10 23:08:26', 2, 'Hari Thapa', 'hari2055', 'abc2', 10, 12, '11/17/2055', 'Kausaltar', 'Bhaktapur', 'Male', 'Ram Thapa', 'Sita Thapa', '9812222200', ''),
(1130, 'Update', '2019-04-10 23:08:27', 3, 'Qwe', 'asdf', 'abc3', 8, 11, '27 Dec 1998', 'Banepa', 'Kavre', 'Male', 'aasd', 'aasdf', '9812222', ''),
(1131, 'Update', '2019-04-10 23:08:27', 4, 'Robin Dhakal', 'robin2053', 'abc4', 10, 1, '20 Jan 1994', 'Patan', 'Lalitpur', 'Male', 'Rajan Dhakal', 'Rama Dhakal', '9841111', ''),
(1132, 'Update', '2019-04-10 23:08:28', 5, 'Saugat Gautam', 'saugat2055', 'abc5', 7, 12, '12 Jan 1999', 'Jadibuti', 'Kathmandu', 'Male', 'John Gautam', 'Sita Gautam', '9802212222', ''),
(1133, 'Update', '2019-04-10 23:08:30', 8, 'Your Name', 'yourname', 'abc8', 5, 1, '27 Jan 2000', 'Lokanthali', 'Bhaktapur', 'Male', 'John Cena', 'Sita Cena', '9811111111', ''),
(1134, 'Update', '2019-04-10 23:08:30', 9, 'rajkumar xyz', 'rajkumar', 'abc9', 10, 5, '13 Jan 2000', 'Kausaltar', 'Bhaktapur', 'Male', 'Abc xyz', 'Bcd xyz', '98000000', ''),
(1135, 'Update', '2019-04-10 23:08:31', 10, 'dsdsdsd', 'aaaa', 'abc10', 2, 1, '1 Jan 2000', 'Tinkune', 'Kathmandu', 'Male', 'abbb', 'acc', '123456', ''),
(1136, 'Update', '2019-04-10 23:08:32', 12, 'dsdsds', 'qq', 'abc12', 3, 1, '28 jan 2000', 'adsd', 'dsdsd', 'Male', 'dsds', 'ddsds', '12121', ''),
(1137, 'Update', '2019-04-10 23:08:32', 13, 'Zorina Abreu', 'zabreu', 'abc13', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(1138, 'Update', '2019-04-10 23:08:33', 14, 'Yon Akin', 'yonakin', 'abc14', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', '');
INSERT INTO `st_info_log` (`id`, `actionTaken`, `actionTime`, `st_id`, `st_fullname`, `st_username`, `st_password`, `st_grade`, `roll_no`, `st_dob`, `st_address`, `st_district`, `st_gender`, `st_father`, `st_mother`, `st_parents_contact`, `image`) VALUES
(1139, 'Update', '2019-04-10 23:08:33', 15, 'santa baga', 'santa', 'abc15', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(1140, 'Update', '2019-04-10 23:08:34', 16, 'Nush Nush', 'nush', 'abc16', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1141, 'Update', '2019-04-10 23:08:34', 17, 'zull zull', 'biza', 'abc17', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(1142, 'Update', '2019-04-10 23:08:35', 18, 'bix Nush', 'bix', 'abc18', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1143, 'Update', '2019-04-10 23:08:35', 19, 'fala fal', 'fal', 'abc19', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(1144, 'Update', '2019-04-10 23:08:36', 20, 'bix gash', 'gash', 'abc20', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1145, 'Update', '2019-04-10 23:08:36', 21, 'vilo vil', 'vil', 'abc21', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(1146, 'Update', '2019-04-10 23:08:37', 22, 'bix dish', 'dish', 'abc22', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1147, 'Update', '2019-04-10 23:08:37', 23, 'vilo kas', 'kas', 'abc23', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(1148, 'Update', '2019-04-10 23:08:38', 24, 'bix kas', 'bos', 'abc24', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1149, 'Update', '2019-04-10 23:08:39', 25, 'vilo tas', 'tas', 'abc25', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(1150, 'Update', '2019-04-10 23:08:39', 26, 'bix tas', 'tasa', 'abc26', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1151, 'Update', '2019-04-10 23:08:40', 28, 'bas nash', 'nash', 'abc28', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1152, 'Update', '2019-04-10 23:08:41', 29, 'bobo rob', 'rob', 'abc29', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(1153, 'Update', '2019-04-10 23:08:41', 30, 'bas rob', 'nasu', 'abc30', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1154, 'Update', '2019-04-10 23:08:42', 31, 'bas rosta', 'rosta', 'abc31', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1155, 'Update', '2019-04-10 23:08:42', 32, 'kasi rob', 'kasi', 'abc32', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1156, 'Update', '2019-04-10 23:08:43', 33, 'kasi kesh', 'kesh', 'abc33', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1157, 'Update', '2019-04-10 23:08:43', 34, 'kesha rob', 'kesha', 'abc34', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1158, 'Update', '2019-04-10 23:08:44', 35, 'vilx kesh', 'vilx', 'abc35', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1159, 'Update', '2019-04-10 23:08:44', 36, 'natxa tili', 'natxa', 'abc36', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1160, 'Update', '2019-04-10 23:08:45', 37, 'ntati zab', 'zab', 'abc37', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1161, 'Update', '2019-04-10 23:08:46', 38, 'zaompa sas', 'sas', 'abc38', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1162, 'Update', '2019-04-10 23:08:46', 39, 'jesi kas', 'jesi', 'abc39', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(1163, 'Update', '2019-04-10 23:08:47', 40, 'kas jesi', 'kasu', 'abc40', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1164, 'Update', '2019-04-10 23:08:47', 41, 'basi rta', 'rota', 'abc41', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1165, 'Update', '2019-04-10 23:08:48', 42, 'kasi rob', 'kasi', 'abc42', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1166, 'Update', '2019-04-10 23:08:48', 43, 'kai kesh', 'kesu', 'abc43', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1167, 'Update', '2019-04-10 23:08:49', 44, 'keha ro', 'keha', 'abc44', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1168, 'Update', '2019-04-10 23:08:49', 45, 'vilp keh', 'vilp', 'abc45', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1169, 'Update', '2019-04-10 23:08:50', 46, 'nata tii', 'nata', 'abc46', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1170, 'Update', '2019-04-10 23:08:50', 47, 'ntai zabi', 'zabi', 'abc47', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1171, 'Update', '2019-04-10 23:08:51', 48, 'zaompa saso', 'saso', 'abc48', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1172, 'Update', '2019-04-10 23:08:51', 49, 'jei kaps', 'kaps', 'abc49', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(1173, 'Update', '2019-04-10 23:08:52', 50, 'kaspi jel', 'kaspsi', 'abc50', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1174, 'Update', '2019-04-10 23:08:53', 52, 'kasil rob', 'kasil', 'abc52', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1175, 'Update', '2019-04-10 23:08:53', 53, 'kaib kesih', 'kesuh', 'abc53', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1176, 'Update', '2019-04-10 23:08:54', 54, 'kehah rov', 'kseha', 'abc54', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1177, 'Update', '2019-04-10 23:08:54', 55, 'vilpo kelh', 'vilpo', 'abc55', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(1178, 'Update', '2019-04-11 08:06:38', 0, 'Ravi Khadka', 'ravi2056', '$2y$12$Q8zSE7tDkyrbqhaYDCv4Wu6LOnWNWQSXmBhlJ.FSQnMKcVkPb1c8G', 10, 2, '11/17/2056', 'lokanthali', 'Bhaktapur', 'Male', 'Abc Xyz', 'Bcd Xyz', '9800000', 'ferrari.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `subjects_info_log`
--

CREATE TABLE `subjects_info_log` (
  `id` int(11) NOT NULL,
  `actionTaken` varchar(25) NOT NULL,
  `actionTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `si_id` int(12) DEFAULT NULL,
  `subject_name` varchar(200) DEFAULT NULL,
  `t_fullname` varchar(200) DEFAULT NULL,
  `t_email` varchar(200) DEFAULT NULL,
  `grade` varchar(10) DEFAULT NULL,
  `time` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_class_name_log`
--

CREATE TABLE `sub_class_name_log` (
  `id` int(11) NOT NULL,
  `actionTaken` varchar(25) NOT NULL,
  `actionTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `s_id` varchar(100) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `class` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_enrol_log`
--

CREATE TABLE `teacher_enrol_log` (
  `id` int(11) NOT NULL,
  `actionTaken` varchar(25) NOT NULL,
  `actionTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tecode` int(11) DEFAULT NULL,
  `tcode` int(11) DEFAULT NULL,
  `subject` int(11) DEFAULT NULL,
  `class` int(11) DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `lastModified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_info_log`
--

CREATE TABLE `teacher_info_log` (
  `id` int(11) NOT NULL,
  `actionTaken` varchar(25) NOT NULL,
  `actionTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `t_id` int(12) DEFAULT NULL,
  `t_fullname` varchar(150) DEFAULT NULL,
  `t_address` varchar(200) DEFAULT NULL,
  `t_email` varchar(100) DEFAULT NULL,
  `t_username` varchar(150) DEFAULT NULL,
  `t_pass` varchar(50) DEFAULT NULL,
  `t_dob` varchar(50) DEFAULT NULL,
  `t_qualification` varchar(800) DEFAULT NULL,
  `t_contact` varchar(255) DEFAULT NULL,
  `t_staff_type` varchar(200) DEFAULT NULL,
  `t_gender` varchar(25) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class_log`
--
ALTER TABLE `class_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_type_log`
--
ALTER TABLE `class_type_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_term_log`
--
ALTER TABLE `exam_term_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grade_log`
--
ALTER TABLE `grade_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mark_log`
--
ALTER TABLE `mark_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meadmin_log`
--
ALTER TABLE `meadmin_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_class_enrol_log`
--
ALTER TABLE `student_class_enrol_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_subject_enrol_log`
--
ALTER TABLE `student_subject_enrol_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `st_info_log`
--
ALTER TABLE `st_info_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects_info_log`
--
ALTER TABLE `subjects_info_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_class_name_log`
--
ALTER TABLE `sub_class_name_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_enrol_log`
--
ALTER TABLE `teacher_enrol_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_info_log`
--
ALTER TABLE `teacher_info_log`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class_log`
--
ALTER TABLE `class_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class_type_log`
--
ALTER TABLE `class_type_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_term_log`
--
ALTER TABLE `exam_term_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_log`
--
ALTER TABLE `grade_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mark_log`
--
ALTER TABLE `mark_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `meadmin_log`
--
ALTER TABLE `meadmin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_class_enrol_log`
--
ALTER TABLE `student_class_enrol_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_subject_enrol_log`
--
ALTER TABLE `student_subject_enrol_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `st_info_log`
--
ALTER TABLE `st_info_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1179;

--
-- AUTO_INCREMENT for table `subjects_info_log`
--
ALTER TABLE `subjects_info_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_class_name_log`
--
ALTER TABLE `sub_class_name_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher_enrol_log`
--
ALTER TABLE `teacher_enrol_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher_info_log`
--
ALTER TABLE `teacher_info_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
