-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2019 at 11:30 PM
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
-- Database: `march9`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `ccode` int(11) NOT NULL,
  `gcode` int(11) NOT NULL,
  `ctcode` int(11) NOT NULL,
  `createDate` datetime NOT NULL,
  `lastModified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`ccode`, `gcode`, `ctcode`, `createDate`, `lastModified`) VALUES
(1, 1, 1, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(2, 1, 2, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(3, 1, 3, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(4, 1, 4, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(5, 2, 1, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(6, 2, 2, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(7, 2, 3, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(8, 3, 1, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(9, 3, 2, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(10, 3, 3, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(11, 4, 1, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(12, 4, 2, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(13, 4, 3, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(14, 5, 1, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(15, 5, 2, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(16, 5, 3, '2019-03-15 00:00:00', '2019-03-15 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `class_type`
--

CREATE TABLE `class_type` (
  `ctcode` int(11) NOT NULL,
  `type` varchar(245) NOT NULL,
  `createDate` datetime NOT NULL,
  `lastModified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_type`
--

INSERT INTO `class_type` (`ctcode`, `type`, `createDate`, `lastModified`) VALUES
(1, 'A', '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(2, 'B', '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(3, 'C', '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(4, 'D', '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(5, 'E', '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(6, 'F', '2019-03-15 00:00:00', '2019-03-15 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `exam_term`
--

CREATE TABLE `exam_term` (
  `id` int(12) NOT NULL,
  `name` varchar(450) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_term`
--

INSERT INTO `exam_term` (`id`, `name`) VALUES
(6, 'mid_term_1'),
(5, 'first_term'),
(7, 'lastTerm');

-- --------------------------------------------------------

--
-- Table structure for table `general_setting`
--

CREATE TABLE `general_setting` (
  `id` int(12) NOT NULL,
  `website_name` varchar(400) NOT NULL,
  `website_address` varchar(500) NOT NULL,
  `website_phone1` varchar(30) NOT NULL,
  `website_phone2` varchar(30) NOT NULL,
  `website_email1` varchar(200) NOT NULL,
  `website_email2` varchar(200) NOT NULL,
  `website_start` varchar(25) NOT NULL,
  `web_about` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general_setting`
--

INSERT INTO `general_setting` (`id`, `website_name`, `website_address`, `website_phone1`, `website_phone2`, `website_email1`, `website_email2`, `website_start`, `web_about`) VALUES
(5, 'Lokanthali Business', 'Kausaltar', '12345678', '1222222', 'lokanthalikhabar@gmail.com', 'llllllll@gmail.com', '2000', 'welcome to our company. lokanthali khabar one of the popular news portal in bhaktapur........');

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `gcode` int(11) NOT NULL,
  `grade` int(11) NOT NULL,
  `createDate` datetime NOT NULL,
  `lastModified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`gcode`, `grade`, `createDate`, `lastModified`) VALUES
(1, 8, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(2, 9, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(3, 10, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(4, 11, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(5, 12, '2019-03-15 00:00:00', '2019-03-15 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `mark`
--

CREATE TABLE `mark` (
  `mcode` int(11) NOT NULL,
  `ssecode` int(11) NOT NULL,
  `tecode` int(11) NOT NULL,
  `term` int(11) NOT NULL,
  `mark` varchar(245) NOT NULL,
  `year` year(4) NOT NULL,
  `createDate` datetime NOT NULL,
  `lastModified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mark`
--

INSERT INTO `mark` (`mcode`, `ssecode`, `tecode`, `term`, `mark`, `year`, `createDate`, `lastModified`) VALUES
(1, 1, 1, 5, '40', 2019, '2019-03-18 00:00:00', '2019-03-18 00:00:00'),
(2, 1, 1, 6, '60', 2019, '2019-03-18 00:00:00', '2019-03-18 00:00:00'),
(3, 1, 1, 7, '40', 2019, '2019-03-18 00:00:00', '2019-03-18 00:00:00'),
(4, 2, 1, 5, '50', 2019, '2019-03-18 00:00:00', '2019-03-18 00:00:00'),
(5, 2, 1, 6, '60', 2019, '2019-03-18 00:00:00', '2019-03-18 00:00:00'),
(6, 2, 1, 7, '80', 2019, '2019-03-18 00:00:00', '2019-03-18 00:00:00'),
(7, 3, 1, 5, '90', 2019, '2019-03-18 00:00:00', '2019-03-18 00:00:00'),
(8, 3, 1, 6, '60', 2019, '2019-03-18 00:00:00', '2019-03-18 00:00:00'),
(9, 3, 1, 7, '88', 2019, '2019-03-18 00:00:00', '2019-03-18 00:00:00'),
(10, 10, 4, 5, '40', 2019, '2019-03-18 00:00:00', '2019-03-18 00:00:00'),
(11, 10, 4, 6, '60', 2019, '2019-03-18 00:00:00', '2019-03-18 00:00:00'),
(12, 10, 4, 7, '70', 2019, '2019-03-18 00:00:00', '2019-03-18 00:00:00'),
(13, 11, 4, 5, '70', 2019, '2019-03-18 00:00:00', '2019-03-18 00:00:00'),
(14, 11, 4, 6, '60', 2019, '2019-03-18 00:00:00', '2019-03-18 00:00:00'),
(15, 11, 4, 7, '81', 2019, '2019-03-18 00:00:00', '2019-03-18 00:00:00'),
(17, 12, 4, 6, '80', 2019, '2019-03-18 00:00:00', '2019-03-18 00:00:00'),
(18, 12, 4, 7, '81', 2019, '2019-03-18 00:00:00', '2019-03-18 00:00:00'),
(19, 11, 11, 5, '50', 2019, '2019-03-24 00:00:00', '2019-03-24 00:00:00'),
(20, 61, 11, 5, '79', 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(21, 60, 11, 5, '80', 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00');

--
-- Triggers `mark`
--
DELIMITER $$
CREATE TRIGGER `mark_logging_before_delete` BEFORE DELETE ON `mark` FOR EACH ROW BEGIN 
	INSERT INTO march9_audit_tables.mark_log(
        actionTaken,actionTime,
        `mcode`,`ssecode`,`tecode`,
        `term`,`mark`,`year`,
        `createDate`,`lastModified`)
    Values (
        'DELETE',NOW(),
    	old.`mcode`,old.`ssecode`,old.`tecode`,
        old.`term`,old.`mark`,old.`year`,
        old.`createDate`,old.`lastModified`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `mark_logging_before_insert` BEFORE INSERT ON `mark` FOR EACH ROW BEGIN 
	INSERT INTO march9_audit_tables.mark_log(
        actionTaken,actionTime,
        `mcode`,`ssecode`,`tecode`,
        `term`,`mark`,`year`,
        `createDate`,`lastModified`)
    Values (
        'INSERT',NOW(),
    	new.`mcode`,new.`ssecode`,new.`tecode`,
        new.`term`,new.`mark`,new.`year`,
        new.`createDate`,new.`lastModified`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `mark_logging_before_update` BEFORE UPDATE ON `mark` FOR EACH ROW BEGIN 
	INSERT INTO march9_audit_tables.mark_log(
        actionTaken,actionTime,
        `mcode`,`ssecode`,`tecode`,
        `term`,`mark`,`year`,
        `createDate`,`lastModified`)
    Values (
        'UPDATE',NOW(),
    	old.`mcode`,old.`ssecode`,old.`tecode`,
        old.`term`,old.`mark`,old.`year`,
        old.`createDate`,old.`lastModified`);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `meadmin`
--

CREATE TABLE `meadmin` (
  `id` int(12) NOT NULL,
  `admin_username` varchar(150) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `t_staff_type` varchar(150) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meadmin`
--

INSERT INTO `meadmin` (`id`, `admin_username`, `admin_password`, `t_staff_type`, `image`) VALUES
(1, 'ravi@ravi', '$2y$12$0uwYKnM8FQCWAMBeJaA3rOW9ocjAy9jdCHJHcuLDADzXuCLshJk/C', 'Admin', '');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `id` int(6) UNSIGNED NOT NULL,
  `student_name` varchar(250) DEFAULT NULL,
  `student_grade` varchar(10) DEFAULT NULL,
  `english` varchar(250) DEFAULT NULL,
  `english2` varchar(250) DEFAULT NULL,
  `math` varchar(250) DEFAULT NULL,
  `math2` varchar(250) DEFAULT NULL,
  `Social` varchar(250) DEFAULT NULL,
  `Health` varchar(250) DEFAULT NULL,
  `GK` varchar(250) DEFAULT NULL,
  `Computer` varchar(250) DEFAULT NULL,
  `Science` varchar(250) DEFAULT NULL,
  `Nepali` varchar(250) DEFAULT NULL,
  `first_term` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_class_enrol`
--

CREATE TABLE `student_class_enrol` (
  `sccode` int(11) NOT NULL,
  `scode` int(11) NOT NULL,
  `class` int(11) NOT NULL,
  `year` year(4) NOT NULL,
  `createDate` datetime NOT NULL,
  `lastModified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_class_enrol`
--

INSERT INTO `student_class_enrol` (`sccode`, `scode`, `class`, `year`, `createDate`, `lastModified`) VALUES
(1, 1, 1, 2019, '2019-03-16 00:00:00', '2019-03-16 00:00:00'),
(3, 3, 1, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(4, 4, 1, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(5, 5, 1, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(6, 9, 1, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(7, 8, 1, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(8, 10, 1, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(9, 12, 1, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(10, 13, 1, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(11, 14, 2, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(12, 15, 2, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(13, 16, 2, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(14, 17, 2, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(15, 18, 2, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(16, 19, 2, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(17, 20, 2, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(18, 21, 2, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(19, 22, 2, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(20, 23, 2, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(21, 24, 3, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(22, 25, 3, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(23, 26, 3, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(24, 27, 3, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(25, 28, 3, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(26, 29, 3, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(27, 30, 3, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(28, 31, 3, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(29, 32, 3, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(30, 33, 3, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(31, 34, 4, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(32, 35, 4, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(33, 36, 4, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(34, 37, 4, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(35, 38, 4, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(36, 39, 4, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(37, 40, 4, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(38, 41, 4, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(39, 42, 4, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(40, 43, 4, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(41, 44, 5, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(42, 45, 5, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(43, 46, 5, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(44, 47, 5, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(45, 48, 5, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(46, 49, 5, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(47, 50, 5, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(48, 51, 5, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(49, 52, 5, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(50, 53, 5, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(51, 54, 6, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(52, 55, 6, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(53, 56, 6, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(54, 57, 6, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(55, 58, 6, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(56, 59, 6, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(57, 60, 6, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(58, 61, 6, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(59, 62, 6, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(60, 63, 6, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(61, 64, 7, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(62, 65, 7, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(63, 66, 7, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(64, 67, 7, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(65, 68, 7, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(66, 69, 7, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(67, 70, 7, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(68, 71, 7, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(69, 72, 7, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(70, 73, 7, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(71, 74, 8, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(72, 75, 8, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(73, 76, 8, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(74, 77, 8, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(75, 78, 8, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(76, 79, 8, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(77, 80, 8, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(78, 81, 8, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(79, 82, 8, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(80, 83, 8, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(81, 84, 9, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(82, 85, 9, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(83, 86, 9, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(84, 87, 9, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(85, 88, 9, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(86, 89, 9, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(87, 90, 9, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(88, 91, 9, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(89, 92, 9, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(90, 93, 9, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(91, 94, 10, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(92, 95, 10, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(93, 96, 10, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(94, 97, 10, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(95, 98, 10, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(96, 99, 10, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(97, 100, 10, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(98, 101, 10, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(99, 102, 10, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(100, 103, 10, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(101, 104, 11, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(102, 105, 11, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(103, 106, 11, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(104, 107, 11, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(105, 108, 11, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(106, 109, 11, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(107, 110, 11, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(108, 111, 11, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(109, 112, 11, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(110, 113, 11, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(111, 114, 12, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(112, 115, 12, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(113, 116, 12, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(114, 117, 12, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(115, 118, 12, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(116, 119, 12, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(117, 120, 12, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(118, 121, 12, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(119, 122, 12, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(120, 123, 12, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(121, 124, 13, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(122, 125, 13, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(123, 126, 13, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(124, 127, 13, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(125, 128, 13, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(126, 129, 13, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(127, 130, 13, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(128, 131, 13, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(129, 132, 13, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(130, 133, 13, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(131, 134, 14, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(132, 135, 14, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(133, 136, 14, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(134, 137, 14, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(135, 138, 14, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(136, 139, 14, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(137, 140, 14, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(138, 141, 14, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(139, 142, 14, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(140, 143, 14, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(141, 144, 15, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(142, 145, 15, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(143, 146, 15, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(144, 147, 15, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(145, 148, 15, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(146, 149, 15, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(147, 150, 15, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(148, 151, 15, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(149, 152, 15, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(150, 153, 15, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(151, 154, 16, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(152, 155, 16, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(153, 156, 16, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(154, 157, 16, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(155, 158, 16, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(156, 159, 16, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(157, 160, 16, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(158, 161, 16, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(159, 162, 16, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(160, 163, 16, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `student_subject_enrol`
--

CREATE TABLE `student_subject_enrol` (
  `scecode` int(11) NOT NULL,
  `sccode` int(11) NOT NULL,
  `subject` int(11) NOT NULL,
  `year` year(4) NOT NULL,
  `createDate` datetime NOT NULL,
  `lastModified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_subject_enrol`
--

INSERT INTO `student_subject_enrol` (`scecode`, `sccode`, `subject`, `year`, `createDate`, `lastModified`) VALUES
(1, 1, 1, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(2, 1, 2, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(3, 1, 3, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(4, 2, 4, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(5, 2, 5, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(6, 2, 6, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(7, 3, 7, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(8, 3, 8, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(9, 3, 9, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(10, 4, 10, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(11, 4, 11, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(12, 4, 12, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(13, 5, 13, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(14, 5, 1, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(15, 5, 2, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(16, 6, 3, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(17, 6, 4, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(18, 6, 5, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(19, 7, 6, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(20, 7, 6, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(21, 7, 7, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(22, 8, 3, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(23, 8, 4, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(24, 8, 5, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(25, 9, 6, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(26, 9, 7, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(27, 9, 8, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(28, 10, 9, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(29, 10, 10, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(30, 10, 11, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(31, 11, 12, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(32, 11, 13, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(33, 11, 1, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(34, 11, 2, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(35, 11, 3, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(36, 11, 4, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(37, 11, 5, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(38, 11, 6, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(39, 7, 6, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(40, 11, 7, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(41, 12, 3, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(42, 12, 4, 2017, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(43, 12, 5, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(44, 13, 6, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(45, 13, 7, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(46, 13, 8, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(47, 14, 9, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(48, 14, 10, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(49, 14, 11, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(50, 15, 12, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(51, 15, 13, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(52, 15, 1, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(53, 16, 2, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(54, 16, 3, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(55, 16, 4, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(56, 17, 5, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(57, 17, 6, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(58, 7, 6, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(59, 17, 7, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(60, 160, 13, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(61, 160, 12, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00');

--
-- Triggers `student_subject_enrol`
--
DELIMITER $$
CREATE TRIGGER `student_subject_enrol_logging_before_delete` BEFORE DELETE ON `student_subject_enrol` FOR EACH ROW BEGIN 
	INSERT INTO march9_audit_tables.student_subject_enrol_log(
        actionTaken,actionTime,
        `scecode`,`sccode`,`subject`,`year`,`createDate`,`lastModified`)
    Values (
        'DELETE',NOW(),
    	old.`scecode`,old.`sccode`,old.`subject`,old.`year`,old.`createDate`,old.`lastModified`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `student_subject_enrol_logging_before_insert` BEFORE INSERT ON `student_subject_enrol` FOR EACH ROW BEGIN 
	INSERT INTO march9_audit_tables.student_subject_enrol_log(
        actionTaken,actionTime,
        `scecode`,`sccode`,`subject`,`year`,`createDate`,`lastModified`)
    Values (
        'INSERT',NOW(),
    	new.`scecode`,new.`sccode`,new.`subject`,new.`year`,new.`createDate`,new.`lastModified`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `student_subject_enrol_logging_before_update` BEFORE UPDATE ON `student_subject_enrol` FOR EACH ROW BEGIN 
	INSERT INTO march9_audit_tables.student_subject_enrol_log(
        actionTaken,actionTime,
        `scecode`,`sccode`,`subject`,`year`,`createDate`,`lastModified`)
    Values (
        'UPDATE',NOW(),
    	old.`scecode`,old.`sccode`,old.`subject`,old.`year`,old.`createDate`,old.`lastModified`);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `st_info`
--

CREATE TABLE `st_info` (
  `st_id` int(12) NOT NULL,
  `st_fullname` varchar(100) NOT NULL,
  `st_username` varchar(30) NOT NULL,
  `st_password` varchar(100) NOT NULL,
  `st_grade` int(5) NOT NULL,
  `roll_no` int(5) NOT NULL,
  `st_dob` varchar(20) NOT NULL,
  `st_address` varchar(100) NOT NULL,
  `st_district` varchar(100) NOT NULL,
  `st_gender` varchar(12) NOT NULL,
  `st_father` varchar(100) NOT NULL,
  `st_mother` varchar(100) NOT NULL,
  `st_parents_contact` varchar(15) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `st_info`
--

INSERT INTO `st_info` (`st_id`, `st_fullname`, `st_username`, `st_password`, `st_grade`, `roll_no`, `st_dob`, `st_address`, `st_district`, `st_gender`, `st_father`, `st_mother`, `st_parents_contact`, `image`) VALUES
(0, 'Ravi Khadka', 'ravi2056', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 10, 2, '11/17/2056', 'lokanthali', 'Bhaktapur', 'Male', 'Abc Xyz', 'Bcd Xyz', '9800000', 'ferrari.jpg'),
(2, 'Hari Thapa', 'hari2055', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 10, 12, '11/17/2055', 'Kausaltar', 'Bhaktapur', 'Male', 'Ram Thapa', 'Sita Thapa', '9812222200', ''),
(5, 'Saugat Gautam', 'saugat2055', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 7, 12, '12 Jan 1999', 'Jadibuti', 'Kathmandu', 'Male', 'John Gautam', 'Sita Gautam', '9802212222', ''),
(3, 'Qwe', 'asdf', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 8, 11, '27 Dec 1998', 'Banepa', 'Kavre', 'Male', 'aasd', 'aasdf', '9812222', ''),
(4, 'Robin Dhakal', 'robin2053', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 10, 1, '20 Jan 1994', 'Patan', 'Lalitpur', 'Male', 'Rajan Dhakal', 'Rama Dhakal', '9841111', ''),
(9, 'rajkumar xyz', 'rajkumar', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 10, 5, '13 Jan 2000', 'Kausaltar', 'Bhaktapur', 'Male', 'Abc xyz', 'Bcd xyz', '98000000', ''),
(8, 'Your Name', 'yourname', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 5, 1, '27 Jan 2000', 'Lokanthali', 'Bhaktapur', 'Male', 'John Cena', 'Sita Cena', '9811111111', ''),
(10, 'dsdsdsd', 'aaaa', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 2, 1, '1 Jan 2000', 'Tinkune', 'Kathmandu', 'Male', 'abbb', 'acc', '123456', ''),
(12, 'dsdsds', 'qq', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 3, 1, '28 jan 2000', 'adsd', 'dsdsd', 'Male', 'dsds', 'ddsds', '12121', ''),
(13, 'Zorina Abreu', 'zabreu', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(14, 'Yon Akin', 'yonakin', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(15, 'santa baga', 'santa', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(16, 'Nush Nush', 'nush', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(17, 'zull zull', 'biza', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(18, 'bix Nush', 'bix', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(19, 'fala fal', 'fal', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(20, 'bix gash', 'gash', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(21, 'vilo vil', 'vil', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(22, 'bix dish', 'dish', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(23, 'vilo kas', 'kas', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(24, 'bix kas', 'bos', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(25, 'vilo tas', 'tas', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(26, 'bix tas', 'tasa', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(28, 'bas nash', 'nash', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(29, 'bobo rob', 'rob', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(30, 'bas rob', 'nasu', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(31, 'bas rosta', 'rosta', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(32, 'kasi rob', 'kasi', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(33, 'kasi kesh', 'kesh', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(34, 'kesha rob', 'kesha', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(35, 'vilx kesh', 'vilx', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(36, 'natxa tili', 'natxa', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(37, 'ntati zab', 'zab', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(38, 'zaompa sas', 'sas', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(39, 'jesi kas', 'jesi', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(40, 'kas jesi', 'kasu', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(41, 'basi rta', 'rota', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(42, 'kasi rob', 'kasi', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(43, 'kai kesh', 'kesu', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(44, 'keha ro', 'keha', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(45, 'vilp keh', 'vilp', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(46, 'nata tii', 'nata', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(47, 'ntai zabi', 'zabi', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(48, 'zaompa saso', 'saso', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(49, 'jei kaps', 'kaps', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(50, 'kaspi jel', 'kaspsi', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(52, 'kasil rob', 'kasil', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(53, 'kaib kesih', 'kesuh', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(54, 'kehah rov', 'kseha', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(55, 'vilpo kelh', 'vilpo', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(56, 'natal tiiv', 'natia', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(57, 'ntai zabki', 'zabki', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(58, 'zaompa sasoo', 'sasoo', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(59, 'jeil kapis', 'kapis', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(60, 'kaspi jel', 'kaspsi', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(61, 'basil rata', 'rotaa', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(62, 'kasila royb', 'kasiyl', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(63, 'kaiba keysih', 'kesyuh', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(64, 'kehyah royv', 'kseyha', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(65, 'vilpyo kelah', 'viylpo', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(66, 'natyal tiliv', 'naytia', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(67, 'ntayi zabkis', 'zabkis', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(68, 'zalompa sasloo', 'sasolo', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(69, 'eil kapis', 'apis', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(70, 'kspi jel', 'aspsi', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(71, 'basil rata', 'rotaa', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(72, 'asila oyb', 'asiyl', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(73, 'aiba eysih', 'esyuh', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(74, 'ehyah royv', 'keyha', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(75, 'ilpyo kela', 'iylpo', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(76, 'atyal iliv', 'aytia', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(77, 'tayi abkis', 'abkis', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(78, 'alompa asloo', 'asolo', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(79, 'zeil kapis', 'zapis', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(80, 'zakspi jel', 'zaspsi', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(81, 'zabasil ata', 'otaa', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(82, 'zasila oyb', 'zasiyl', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(83, 'zaiba zeysih', 'zesyuh', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(84, 'zehyah royv', 'zeyha', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(85, 'zilpyo kela', 'ziylpo', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(86, 'zatyal iliv', 'zaytia', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(87, 'ayi abkis', 'zabkis', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(88, 'zalompa asloo', 'zasolo', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(89, 'zei apis', 'zapi', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(90, 'zakspi el', 'zazsi', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(91, 'zabasil zata', 'zotaa', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(92, 'zasia oyb', 'casiyl', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(93, 'zaiba eysih', 'xesyuh', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(94, 'oehyah royv', 'zoyha', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(95, 'zolpyo kela', 'zoylpo', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(96, 'zotyal iliv', 'zoytia', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(97, 'kayi abks', 'zabkiso', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(98, 'lompa asloo', 'zaspolo', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(99, 'zee apos', 'zapo', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(100, 'zokspi el', 'zazsi', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(101, 'zabosil zata', 'zotoa', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(102, 'zasoa oyb', 'casoyl', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(103, 'zaoba eysih', 'xesouh', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(104, 'oeoyah royv', 'zoyho', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(105, 'zoloyo kela', 'zoylopo', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(106, 'zotyol iliv', 'zoytio', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(107, 'kayio aboks', 'zabkoso', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(108, 'lompa asloxo', 'zaspalo', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(109, 'zee apos', 'zapos', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(110, 'zokspi el', 'zazdi', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(111, 'zabosil zata', 'zotoad', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(112, 'zasoa oyb', 'casoyld', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(113, 'zaoba eysih', 'xesouhd', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(114, 'oeoyah royv', 'zoyhod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(115, 'zoloyo kela', 'zoylopod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(116, 'zotyol iliv', 'zoytiod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(117, 'kayio aboks', 'zabkosod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(118, 'lompa asloxo', 'zaspalod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(119, 'zee apos', 'zados', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(120, 'zokspi el', 'zazdid', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(121, 'zabosil zata', 'zotdoad', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(122, 'zasoa oyb', 'casoylopod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(123, 'zaoba eysih', 'xesouhdod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(124, 'oeoyah royv', 'zoyhodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(125, 'zoloyo kela', 'zoylopodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(126, 'zotyol iliv', 'zoytiodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(127, 'kayio aboks', 'zabkosodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(128, 'lompa asloxo', 'zaspalodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(129, 'zee apos', 'ados', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(130, 'zokspi el', 'azdid', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(131, 'zabosil zata', 'otdoad', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(132, 'zasoa oyb', 'soylopod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(133, 'zaoba eysih', 'ouhdod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(134, 'oeoyah royv', 'oyhodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(135, 'zoloyo kela', 'oylopodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(136, 'zotyol iliv', 'oytiodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(137, 'kayio aboks', 'abkosodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(138, 'lompa asloxo', 'aspalodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(139, 'zee apos', 'xados', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(140, 'zokspi el', 'xazdid', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(141, 'zabosil zata', 'xotdoad', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(142, 'zasoa oyb', 'xoylopod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(143, 'zaoba eysih', 'xouhdod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(144, 'oeoyah royv', 'xoyhodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(145, 'zoloyo kela', 'xoylopodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(146, 'zotyol iliv', 'xoytiodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(147, 'kayio aboks', 'xabkosodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(148, 'lompa asloxo', 'xaspalodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(149, 'zee apos', 'qados', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(150, 'zokspi el', 'qazdid', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(151, 'zabosil zata', 'qotdoad', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(152, 'zasoa oyb', 'qoylopod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(153, 'zaoba eysih', 'qouhdod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(154, 'oeoyah royv', 'qoyhodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(155, 'zoloyo kela', 'qoylopodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(156, 'zotyol iliv', 'qoytiodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(157, 'kayio aboks', 'qabkosodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(158, 'lompa asloxo', 'qaspalodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(159, 'zee apos', 'wados', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(160, 'zokspi el', 'wazdid', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(161, 'zabosil zata', 'wotdoad', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(162, 'zasoa oyb', 'woylopod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(163, 'zaoba eysih', 'wouhdod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(164, 'oeoyah royv', 'woyhodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(165, 'zoloyo kela', 'woylopodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(166, 'zotyol iliv', 'woytiodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(167, 'kayio aboks', 'wabkosodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(168, 'lompa asloxo', 'waspalodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(169, 'zee apos', 'eados', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(170, 'zokspi el', 'eazdid', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(171, 'zabosil zata', 'eotdoad', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(172, 'zasoa oyb', 'eoylopod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(173, 'zaoba eysih', 'eouhdod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(174, 'oeoyah royv', 'eoyhodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(175, 'zoloyo kela', 'eoylopodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(176, 'zotyol iliv', 'eoytiodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(177, 'kayio aboks', 'eabkosodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(178, 'lompa asloxo', 'easpalodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(179, 'zee apos', 'rados', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(180, 'zokspi el', 'razdid', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(181, 'zabosil zata', 'rotdoad', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(182, 'zasoa oyb', 'roylopod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(183, 'zaoba eysih', 'rouhdod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(184, 'oeoyah royv', 'royhodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(185, 'zoloyo kela', 'roylopodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(186, 'zotyol iliv', 'roytiodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(187, 'kayio aboks', 'rabkosodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(188, 'lompa asloxo', 'raspalodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(189, 'zee apos', 'tados', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(190, 'zokspi el', 'tazdid', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(191, 'zabosil zata', 'totdoad', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(192, 'zasoa oyb', 'toylopod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(193, 'zaoba eysih', 'touhdod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(194, 'oeoyah royv', 'toyhodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(195, 'zoloyo kela', 'toylopodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(196, 'zotyol iliv', 'toytiodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(197, 'kayio aboks', 'tabkosodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(198, 'lompa asloxo', 'taspalodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(199, 'zee apos', 'yados', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(200, 'zokspi el', 'yazdid', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(201, 'zabosil zata', 'yotdoad', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(202, 'zasoa oyb', 'yoylopod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(203, 'zaoba eysih', 'youhdod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(204, 'oeoyah royv', 'yoyhodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(205, 'zoloyo kela', 'yoylopodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(206, 'zotyol iliv', 'yoytiodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(207, 'kayio aboks', 'yabkosodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(208, 'lompa asloxo', 'yaspalodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(209, 'zee apos', 'uados', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(210, 'zokspi el', 'uazdid', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(211, 'zabosil zata', 'uotdoad', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(212, 'zasoa oyb', 'uoylopod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(213, 'zaoba eysih', 'uouhdod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(214, 'oeoyah royv', 'uoyhodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(215, 'zoloyo kela', 'uoylopodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(216, 'zotyol iliv', 'uoytiodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(217, 'kayio aboks', 'uabkosodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(218, 'lompa asloxo', 'uaspalodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(219, 'zee apos', 'iados', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(220, 'zokspi el', 'iazdid', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(221, 'zabosil zata', 'iotdoad', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(222, 'zasoa oyb', 'ioylopod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(223, 'zaoba eysih', 'iouhdod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(224, 'oeoyah royv', 'ioyhodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(225, 'zoloyo kela', 'ioylopodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(226, 'zotyol iliv', 'ioytiodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(227, 'kayio aboks', 'iabkosodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(228, 'lompa asloxo', 'iaspalodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(229, 'zee apos', 'pados', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(230, 'zokspi el', 'pazdid', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(231, 'zabosil zata', 'potdoad', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(232, 'zasoa oyb', 'poylopod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(233, 'zaoba eysih', 'pouhdod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(234, 'oeoyah royv', 'poyhodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(235, 'zoloyo kela', 'poylopodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(236, 'zotyol iliv', 'poytiodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(237, 'kayio aboks', 'pabkosodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(238, 'lompa asloxo', 'paspalodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(239, 'zee apos', 'fados', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(240, 'zokspi el', 'fazdid', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(241, 'zabosil zata', 'fotdoad', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(242, 'zasoa oyb', 'foylopod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(243, 'zaoba eysih', 'fouhdod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(244, 'oeoyah royv', 'foyhodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(245, 'zoloyo kela', 'foylopodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(246, 'zotyol iliv', 'foytiodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(247, 'kayio aboks', 'fabkosodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(248, 'lompa asloxo', 'faspalodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(249, 'zee apos', 'gados', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(250, 'zokspi el', 'gazdid', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(251, 'zabosil zata', 'gotdoad', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(252, 'zasoa oyb', 'goylopod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(253, 'zaoba eysih', 'gouhdod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(254, 'oeoyah royv', 'goyhodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(255, 'zoloyo kela', 'goylopodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(256, 'zotyol iliv', 'goytiodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(257, 'kayio aboks', 'gabkosodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(258, 'lompa asloxo', 'gaspalodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(259, 'zee apos', 'hados', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(260, 'zokspi el', 'hazdid', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(261, 'zabosil zata', 'hotdoad', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(262, 'zasoa oyb', 'hoylopod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(263, 'zaoba eysih', 'houhdod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(264, 'oeoyah royv', 'hoyhodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(265, 'zoloyo kela', 'hoylopodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(266, 'zotyol iliv', 'hoytiodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(267, 'kayio aboks', 'habkosodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(268, 'lompa asloxo', 'haspalodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(269, 'zee apos', 'jados', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(270, 'zokspi el', 'jazdid', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(271, 'zabosil zata', 'jotdoad', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(272, 'zasoa oyb', 'joylopod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(273, 'zaoba eysih', 'jouhdod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(274, 'oeoyah royv', 'joyhodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(275, 'zoloyo kela', 'joylopodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(276, 'zotyol iliv', 'joytiodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(277, 'kayio aboks', 'jabkosodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(278, 'lompa asloxo', 'jaspalodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(279, 'zee apos', 'kados', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(280, 'zokspi el', 'kazdid', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(281, 'zabosil zata', 'kotdoad', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(282, 'zasoa oyb', 'koylopod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(283, 'zaoba eysih', 'kouhdod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(284, 'oeoyah royv', 'koyhodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(285, 'zoloyo kela', 'koylopodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(286, 'zotyol iliv', 'koytiodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', '');
INSERT INTO `st_info` (`st_id`, `st_fullname`, `st_username`, `st_password`, `st_grade`, `roll_no`, `st_dob`, `st_address`, `st_district`, `st_gender`, `st_father`, `st_mother`, `st_parents_contact`, `image`) VALUES
(287, 'kayio aboks', 'kabkosodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(288, 'lompa asloxo', 'kaspalodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(289, 'zee apos', 'lados', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(290, 'zokspi el', 'lazdid', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(291, 'zabosil zata', 'lotdoad', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(292, 'zasoa oyb', 'loylopod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(293, 'zaoba eysih', 'louhdod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(294, 'oeoyah royv', 'loyhodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(295, 'zoloyo kela', 'loylopodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(296, 'zotyol iliv', 'loytiodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(297, 'kayio aboks', 'labkosodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(298, 'lompa asloxo', 'laspalodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(299, 'zee apos', 'vados', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(300, 'zokspi el', 'vazdid', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(301, 'zabosil zata', 'votdoad', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(302, 'zasoa oyb', 'voylopod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(303, 'zaoba eysih', 'vouhdod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(304, 'oeoyah royv', 'voyhodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(305, 'zoloyo kela', 'voylopodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(306, 'zotyol iliv', 'voytiodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(307, 'kayio aboks', 'vabkosodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(308, 'lompa asloxo', 'vaspalodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(309, 'zee apos', 'bados', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(310, 'zokspi el', 'bazdid', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(311, 'zabosil zata', 'botdoad', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(312, 'zasoa oyb', 'boylopod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(313, 'zaoba eysih', 'bouhdod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(314, 'oeoyah royv', 'boyhodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(315, 'zoloyo kela', 'boylopodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(316, 'zotyol iliv', 'boytiodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(317, 'kayio aboks', 'babkosodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(318, 'lompa asloxo', 'baspalodod', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455', ''),
(319, 'zee apos', 'hululu', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564', ''),
(320, 'zokspi el', 'kavange', '$2y$12$Sc2eGqTMJdSfq8ftLuVS.eYaXqFrXX6NOU0Mes7Dt7CyC3TwmvZWC', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455', '');

--
-- Triggers `st_info`
--
DELIMITER $$
CREATE TRIGGER `st_info_logging_before_delete` BEFORE DELETE ON `st_info` FOR EACH ROW BEGIN 
	INSERT INTO march9_audit_tables.st_info_log(
        actionTaken,actionTime,`st_id`,`st_fullname`,`st_username`,
        `st_password`,`st_grade`,`roll_no`,`st_dob`,
        `st_address`,`st_district`,`st_gender`,`st_father`,`st_mother`,
        `st_parents_contact`,`image`)
    Values ('DELETE',NOW(),Old.`st_id`,old.`st_fullname`,Old.`st_username`,
            Old.`st_password`,old.`st_grade`,old.`roll_no`,old.`st_dob`,
            old.`st_address`,old.`st_district`,old.`st_gender`,old.`st_father`,old.`st_mother`,
            old.`st_parents_contact`,old.`image`);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `st_info_logging_before_update` BEFORE UPDATE ON `st_info` FOR EACH ROW BEGIN 
	INSERT INTO march9_audit_tables.st_info_log(
        actionTaken,actionTime,`st_id`,`st_fullname`,`st_username`,
        `st_password`,`st_grade`,`roll_no`,`st_dob`,
        `st_address`,`st_district`,`st_gender`,`st_father`,`st_mother`,
        `st_parents_contact`,`image`)
    Values ('Update',NOW(),Old.`st_id`,old.`st_fullname`,Old.`st_username`,
            Old.`st_password`,old.`st_grade`,old.`roll_no`,old.`st_dob`,
            old.`st_address`,old.`st_district`,old.`st_gender`,old.`st_father`,old.`st_mother`,
            old.`st_parents_contact`,old.`image`);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `subjects_info`
--

CREATE TABLE `subjects_info` (
  `id` int(12) NOT NULL,
  `subject_name` varchar(200) NOT NULL,
  `t_fullname` varchar(200) NOT NULL,
  `t_email` varchar(200) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `time` varchar(80) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects_info`
--

INSERT INTO `subjects_info` (`id`, `subject_name`, `t_fullname`, `t_email`, `grade`, `time`) VALUES
(1, 'Math', 'ram parsad thapa', 'ram@ram', '9', '10:00AM - 10:45AM'),
(2, 'Computer', 'Ravi Khadka', 'rrrrr@gmail.com', '10', '10:00AM - 10:45AM'),
(3, 'English', 'Rabin Khadka', 'rabin@gmail.com', '10', '10:45AM - 11:30AM'),
(4, 'Geometry', 'jashj', 'jasn@gmail.com', '2', '89'),
(5, 'Science', 'jahsja', 'hjashj@gmail.com', '2', '67621'),
(6, 'Biology', 'jashj', 'jasn@gmail.com', '2', '89'),
(7, 'Physics', 'jahsja', 'hjashj@gmail.com', '2', '67621'),
(8, 'Geography', 'jashj', 'jasn@gmail.com', '2', '89'),
(9, 'History', 'jahsja', 'hjashj@gmail.com', '2', '67621'),
(10, 'Business Studies', 'jashj', 'jasn@gmail.com', '2', '89'),
(11, 'Home Economics', 'jahsja', 'hjashj@gmail.com', '2', '67621'),
(12, 'Art', 'jashj', 'jasn@gmail.com', '2', '89'),
(13, 'Music', 'jahsja', 'hjashj@gmail.com', '2', '67621');

-- --------------------------------------------------------

--
-- Table structure for table `sub_class_name`
--

CREATE TABLE `sub_class_name` (
  `id` int(12) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `class` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_class_name`
--

INSERT INTO `sub_class_name` (`id`, `subject`, `class`) VALUES
(1, 'English', '1'),
(2, 'Nepali', '2'),
(3, 'Social', '3'),
(4, 'Computer ', '4'),
(5, 'Math', '5'),
(6, 'Optional Math', '6'),
(7, 'Health', '7'),
(8, 'Grammar', '8'),
(9, 'GK', '9'),
(10, 'Science', '10');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_enrol`
--

CREATE TABLE `teacher_enrol` (
  `tecode` int(11) NOT NULL,
  `tcode` int(11) NOT NULL,
  `subject` int(11) NOT NULL,
  `class` int(11) NOT NULL,
  `year` year(4) NOT NULL,
  `createDate` datetime NOT NULL,
  `lastModified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_enrol`
--

INSERT INTO `teacher_enrol` (`tecode`, `tcode`, `subject`, `class`, `year`, `createDate`, `lastModified`) VALUES
(1, 1, 1, 1, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(2, 1, 2, 1, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(3, 1, 3, 1, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(4, 2, 4, 4, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(5, 2, 5, 5, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(6, 2, 6, 6, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(7, 3, 7, 7, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(8, 3, 8, 8, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(9, 3, 9, 9, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(10, 4, 10, 4, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(11, 4, 11, 4, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(12, 4, 12, 4, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(13, 5, 13, 13, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(14, 5, 13, 14, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(15, 5, 13, 15, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(16, 6, 16, 5, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00'),
(17, 6, 16, 6, 2019, '2019-03-17 00:00:00', '2019-03-17 00:00:00'),
(18, 6, 16, 7, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_info`
--

CREATE TABLE `teacher_info` (
  `t_id` int(12) NOT NULL,
  `t_fullname` varchar(150) NOT NULL,
  `t_address` varchar(200) NOT NULL,
  `t_email` varchar(100) NOT NULL,
  `t_username` varchar(150) NOT NULL,
  `t_pass` varchar(50) NOT NULL,
  `t_father` varchar(150) NOT NULL,
  `t_mother` varchar(150) NOT NULL,
  `t_dob` varchar(50) NOT NULL,
  `t_qualification` varchar(800) NOT NULL,
  `t_contact` int(255) NOT NULL,
  `t_staff_type` varchar(200) NOT NULL,
  `t_gender` varchar(25) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_info`
--

INSERT INTO `teacher_info` (`t_id`, `t_fullname`, `t_address`, `t_email`, `t_username`, `t_pass`, `t_father`, `t_mother`, `t_dob`, `t_qualification`, `t_contact`, `t_staff_type`, `t_gender`, `image`) VALUES
(1, 'Hari Parsad Thapa', 'Tinkune 1', 'ram@gmail.com', 'ramsir', 'ram', 'hari prasad thapa', 'sita kumari thapa', '20 Feb 1978', 'Master ', 986811111, 'Teacher', 'Male', ''),
(2, 'Ndeshihafel', 'Lokanthali', 'malonga@gmail.com', 'ravi@ravi', 'ravi', 'ABC XYZ', 'Bcd Xyz', '29 feb 2000', 'Masters', 81252525, 'Admin', 'Male', 'img1488970168991.png'),
(3, 'Hello', 'Kathmandu', 'hello@gmail.com', 'hello', 'hello', 'hello abc ', 'world abc', '20 jan 1885', 'Master', 98680222, 'Teacher', 'Male', ''),
(5, 'Sanjay', 'Bhaktapur', 'sanjay@gmail.com', 'sanjay', 'sanjay', 'Abc xyz', 'bcd xyz', '22 feb 2000', 'Master ', 9866666, 'Teacher', 'Male', ''),
(6, 'Ram Karki', 'Lokanthali', 'ram@hhkhkjk', 'ram1878', 'ram1878', 'Hari Karki', 'Rita Karki', '12 Jan 1878', 'Master', 1234567890, 'Teacher', 'Male', ''),
(7, 'Raj Thapa', 'Kausaltar', 'rajjjjjjjjjjjjjj@gmail.com', 'raaj', 'raaj1', 'hari thapa', 'gita thapa', '11 Jan 1978', 'Master', 123456789, 'Teacher', 'Male', ''),
(8, 'Kashipu', 'asjk Windhoek', 'kashiupu@gmail.com', 'kashiupu@gmail.com', 'kashiupu', 'jhdsj', 'asdjhsa', '10/10/98', 'None', 235235235, 'Teacher', 'Male', ''),
(9, 'Fika', 'MMM ROcky', 'fika@gmail.com', 'fika@gmail.com', 'fika@gmail.com', 'kdkfjlskdj', 'lkjlkjsld', '10/5/58', 'Certificate', 52525252, 'Teacher', 'Male', ''),
(10, 'Elis', 'akska North', 'elis@gmail.com', 'elis@gmail.com', 'elis@gmail.com', 'klsjadlkjas', 'lkjldkjfs', '10/25/58', 'Diploma', 55464655, 'Teacher', 'Female', ''),
(11, 'Lisa Birth', 'jhsks Soouth', 'eis@gmail.com', 'eis@gmail.com', 'eis@gmail.com', 'hjsdh ', 'jhsdjh', '10/10/10', 'Master', 23525252, 'Teacher', 'Female', ''),
(12, 'Betty David', 'Hjhas South', 'betty@gmail.com', 'betty@gmail.com', 'betty@gmail.com', 'jhasdgja', 'jhsgdsha', '10/10/58', 'Certificate', 55464655, 'Teacher', 'Female', ''),
(13, 'Mariam Chicken', 'chicken farm', 'mariam@gmail.com', 'mariam@gmail.com', 'mariam@gmail.com', 'sldkfj', 'lksjdlf', '10/12/50', 'Master', 23212132, 'Teacher', 'Female', ''),
(14, 'Tulika kuli', 'jhsaj South', 'tulika@gmail.com', 'tulika@gmail.com', 'tulika@gmail.com', 'sjdlkasj', 'lksjdflksj', '10/25/25', 'Master', 5656, 'Teacher', 'Female', ''),
(15, 'Tuli shivula', 'jahskjdh East', 'tuli@gmail.com', 'tuli@gmail.com', 'tuli@gmail.com', 'ksdjfkj', 'lkjsdlkfj', '10/20/65', 'None', 545445, 'Teacher', 'Female', ''),
(16, 'Selvia vigo', 'hjsdh East', 'selvia@gmail.com', 'selvia@gmail.com', 'selvia@gmail.com', 'skdjflks', 'ljsdlkfjls', '10/10/58', 'master', 55464655, 'Teacher', 'Female', ''),
(17, 'Helvi kisha', 'kjadjkas west', 'helvi@gmail.com', 'helvi@gmail.com', 'helvi@gmail.com', 'lksjdlk', 'skjdlfs', '10/10/85', 'Certificate', 45458, 'Teacher', 'Female', ''),
(18, 'Tulonga Makaveli', 'jhsdj East', 'tulonga@gmail.com', 'tulonga@gmail.com', 'tulonga@gmail.com', 'kjshdkjs', 'kjhsdkf', '10/10/256', 'Diploma', 4578545, 'Teacher', 'Female', ''),
(19, 'Kanguvi', 'ajskjsa Farm', 'kanguvi@gmail.com', 'kanguvi@gmail.com', 'kanguvi@gmail.com', 'skjdfjs', 'ksjhkdfks', '10/10/96', 'None', 7548754, 'Teacher', 'Female', ''),
(20, 'Vilsa', 'hasjhja America', 'vilsa@gmail.com', 'vilsa@gmail.com', 'vilsa@gmail.com', 'sdjflksjl', 'lkjsdlkfj', '10/10/58', 'Degree', 45152, 'Teacher', 'Female', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`ccode`);

--
-- Indexes for table `class_type`
--
ALTER TABLE `class_type`
  ADD PRIMARY KEY (`ctcode`);

--
-- Indexes for table `exam_term`
--
ALTER TABLE `exam_term`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_setting`
--
ALTER TABLE `general_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`gcode`);

--
-- Indexes for table `mark`
--
ALTER TABLE `mark`
  ADD PRIMARY KEY (`mcode`);

--
-- Indexes for table `meadmin`
--
ALTER TABLE `meadmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_class_enrol`
--
ALTER TABLE `student_class_enrol`
  ADD PRIMARY KEY (`sccode`);

--
-- Indexes for table `student_subject_enrol`
--
ALTER TABLE `student_subject_enrol`
  ADD PRIMARY KEY (`scecode`);

--
-- Indexes for table `st_info`
--
ALTER TABLE `st_info`
  ADD PRIMARY KEY (`st_id`);

--
-- Indexes for table `subjects_info`
--
ALTER TABLE `subjects_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_class_name`
--
ALTER TABLE `sub_class_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_enrol`
--
ALTER TABLE `teacher_enrol`
  ADD PRIMARY KEY (`tecode`);

--
-- Indexes for table `teacher_info`
--
ALTER TABLE `teacher_info`
  ADD PRIMARY KEY (`t_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `ccode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `class_type`
--
ALTER TABLE `class_type`
  MODIFY `ctcode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `exam_term`
--
ALTER TABLE `exam_term`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `general_setting`
--
ALTER TABLE `general_setting`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `gcode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mark`
--
ALTER TABLE `mark`
  MODIFY `mcode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `meadmin`
--
ALTER TABLE `meadmin`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_class_enrol`
--
ALTER TABLE `student_class_enrol`
  MODIFY `sccode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `student_subject_enrol`
--
ALTER TABLE `student_subject_enrol`
  MODIFY `scecode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `st_info`
--
ALTER TABLE `st_info`
  MODIFY `st_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;

--
-- AUTO_INCREMENT for table `subjects_info`
--
ALTER TABLE `subjects_info`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sub_class_name`
--
ALTER TABLE `sub_class_name`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `teacher_enrol`
--
ALTER TABLE `teacher_enrol`
  MODIFY `tecode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `teacher_info`
--
ALTER TABLE `teacher_info`
  MODIFY `t_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
