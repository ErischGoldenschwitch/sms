-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2019 at 09:16 PM
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
  `grade` int(11) NOT NULL,
  `classType` int(11) NOT NULL,
  `createDate` datetime NOT NULL,
  `lastModified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`ccode`, `grade`, `classType`, `createDate`, `lastModified`) VALUES
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
(2, 'Term 2'),
(1, 'Term 1'),
(3, 'Term 3');

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
(1, 1, 1, 1, '80', 2019, '2019-03-18 00:00:00', '2019-03-18 00:00:00'),
(2, 2, 1, 1, '74', 2019, '2019-03-18 00:00:00', '2019-03-18 00:00:00'),
(3, 3, 1, 1, '70', 2019, '2019-03-18 00:00:00', '2019-03-18 00:00:00'),
(4, 4, 1, 1, '82', 2019, '2019-03-18 00:00:00', '2019-03-18 00:00:00'),
(5, 5, 1, 1, '78', 2019, '2019-03-18 00:00:00', '2019-03-18 00:00:00'),
(6, 6, 1, 1, '67', 2019, '2019-03-18 00:00:00', '2019-03-18 00:00:00'),
(7, 7, 1, 1, '80', 2019, '2019-03-18 00:00:00', '2019-03-18 00:00:00'),
(8, 8, 1, 1, '70', 2019, '2019-03-18 00:00:00', '2019-03-18 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `meadmin`
--

CREATE TABLE `meadmin` (
  `id` int(12) NOT NULL,
  `admin_username` varchar(150) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `t_staff_type` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meadmin`
--

INSERT INTO `meadmin` (`id`, `admin_username`, `admin_password`, `t_staff_type`) VALUES
(1, 'ravi@ravi', 'ravi', 'Admin');

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
(1, 1, 1, 2019, '2019-03-18 00:00:00', '2019-03-18 00:00:00'),
(2, 2, 1, 2019, '2019-03-18 00:00:00', '2019-03-18 00:00:00');

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
(1, 1, 1, 2019, '2019-03-18 00:00:00', '2019-03-18 00:00:00'),
(2, 1, 2, 2019, '2019-03-18 00:00:00', '2019-03-18 00:00:00'),
(3, 1, 3, 2019, '2019-03-18 00:00:00', '2019-03-18 00:00:00'),
(4, 1, 4, 2019, '2019-03-18 00:00:00', '2019-03-18 00:00:00'),
(5, 2, 1, 2019, '2019-03-18 00:00:00', '2019-03-18 00:00:00'),
(6, 2, 2, 2019, '2019-03-18 00:00:00', '2019-03-18 00:00:00'),
(7, 2, 3, 2019, '2019-03-18 00:00:00', '2019-03-18 00:00:00'),
(8, 2, 4, 2019, '2019-03-18 00:00:00', '2019-03-18 00:00:00');

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
  `st_parents_contact` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `st_info`
--

INSERT INTO `st_info` (`st_id`, `st_fullname`, `st_username`, `st_password`, `st_grade`, `roll_no`, `st_dob`, `st_address`, `st_district`, `st_gender`, `st_father`, `st_mother`, `st_parents_contact`) VALUES
(1, 'Ravi Khadka', 'ravi2056', 'ravi', 10, 2, '11/17/2056', 'lokanthali', 'Bhaktapur', 'Male', 'Abc Xyz', 'Bcd Xyz', '9800000'),
(2, 'Hari Thapa', 'hari2055', 'asdf', 10, 12, '11/17/2055', 'Kausaltar', 'Bhaktapur', 'Male', 'Ram Thapa', 'Sita Thapa', '9812222200'),
(5, 'Saugat Gautam', 'saugat2055', 'saugat2055', 7, 12, '12 Jan 1999', 'Jadibuti', 'Kathmandu', 'Male', 'John Gautam', 'Sita Gautam', '9802212222'),
(3, 'qwe', 'asdf', 'asdf', 8, 11, '27 Dec 1998', 'Banepa', 'Kavre', 'Male', 'aasd', 'aasdf', '9812222'),
(4, 'Robin Dhakal', 'robin2053', '123456', 10, 1, '20 Jan 1994', 'Patan', 'Lalitpur', 'Male', 'Rajan Dhakal', 'Rama Dhakal', '9841111'),
(9, 'rajkumar xyz', 'rajkumar', 'abcdef', 10, 5, '13 Jan 2000', 'Kausaltar', 'Bhaktapur', 'Male', 'Abc xyz', 'Bcd xyz', '98000000'),
(8, 'Your Name', 'yourname', 'yourname1', 5, 1, '27 Jan 2000', 'Lokanthali', 'Bhaktapur', 'Male', 'John Cena', 'Sita Cena', '9811111111'),
(10, 'dsdsdsd', 'aaaa', 'abc', 2, 1, '1 Jan 2000', 'Tinkune', 'Kathmandu', 'Male', 'abbb', 'acc', '123456'),
(12, 'dsdsds', 'qq', '123', 3, 1, '28 jan 2000', 'adsd', 'dsdsd', 'Male', 'dsds', 'ddsds', '12121'),
(13, 'Zorina Abreu', 'zabreu', 'zAbreu', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564'),
(14, 'Yon Akin', 'yonakin', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(15, 'santa baga', 'santa', 'baga', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564'),
(16, 'Nush Nush', 'nush', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(17, 'zull zull', 'biza', 'bogan', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564'),
(18, 'bix Nush', 'bix', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(19, 'fala fal', 'fal', 'asas', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564'),
(20, 'bix gash', 'gash', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(21, 'vilo vil', 'vil', 'asas', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564'),
(22, 'bix dish', 'dish', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(23, 'vilo kas', 'kas', 'asas', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564'),
(24, 'bix kas', 'bos', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(25, 'vilo tas', 'tas', 'asas', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564'),
(26, 'bix tas', 'tasa', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(27, 'vilo qas', 'qas', 'nashi', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564'),
(28, 'bas nash', 'nash', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(29, 'bobo rob', 'rob', 'nasi', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564'),
(30, 'bas rob', 'nasu', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(31, 'bas rosta', 'rosta', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(32, 'kasi rob', 'kasi', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(33, 'kasi kesh', 'kesh', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(34, 'kesha rob', 'kesha', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(35, 'vilx kesh', 'vilx', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(36, 'natxa tili', 'natxa', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(37, 'ntati zab', 'zab', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(38, 'zaompa sas', 'sas', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(39, 'jesi kas', 'jesi', 'nasi', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564'),
(40, 'kas jesi', 'kasu', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(41, 'basi rta', 'rota', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(42, 'kasi rob', 'kasi', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(43, 'kai kesh', 'kesu', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(44, 'keha ro', 'keha', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(45, 'vilp keh', 'vilp', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(46, 'nata tii', 'nata', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(47, 'ntai zabi', 'zabi', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(48, 'zaompa saso', 'saso', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(49, 'jei kaps', 'kaps', 'nasi', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564'),
(50, 'kaspi jel', 'kaspsi', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(51, 'basi rta', 'rota', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(52, 'kasil rob', 'kasil', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(53, 'kaib kesih', 'kesuh', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(54, 'kehah rov', 'kseha', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(55, 'vilpo kelh', 'vilpo', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(56, 'natal tiiv', 'natia', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(57, 'ntai zabki', 'zabki', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(58, 'zaompa sasoo', 'sasoo', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(59, 'jeil kapis', 'kapis', 'nasi', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564'),
(60, 'kaspi jel', 'kaspsi', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(61, 'basil rata', 'rotaa', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(62, 'kasila royb', 'kasiyl', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(63, 'kaiba keysih', 'kesyuh', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(64, 'kehyah royv', 'kseyha', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(65, 'vilpyo kelah', 'viylpo', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(66, 'natyal tiliv', 'naytia', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(67, 'ntayi zabkis', 'zabkis', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(68, 'zalompa sasloo', 'sasolo', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(69, 'eil kapis', 'apis', 'apsi', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564'),
(70, 'kspi jel', 'aspsi', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(71, 'basil rata', 'rotaa', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(72, 'asila oyb', 'asiyl', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(73, 'aiba eysih', 'esyuh', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(74, 'ehyah royv', 'keyha', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(75, 'ilpyo kela', 'iylpo', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(76, 'atyal iliv', 'aytia', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(77, 'tayi abkis', 'abkis', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(78, 'alompa asloo', 'asolo', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(79, 'zeil kapis', 'zapis', 'apsi', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564'),
(80, 'zakspi jel', 'zaspsi', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(81, 'zabasil ata', 'otaa', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(82, 'zasila oyb', 'zasiyl', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(83, 'zaiba zeysih', 'zesyuh', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(84, 'zehyah royv', 'zeyha', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(85, 'zilpyo kela', 'ziylpo', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(86, 'zatyal iliv', 'zaytia', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(87, 'ayi abkis', 'zabkis', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(88, 'zalompa asloo', 'zasolo', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(89, 'zei apis', 'zapi', 'apsi', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564'),
(90, 'zakspi el', 'zazsi', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(91, 'zabasil zata', 'zotaa', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(92, 'zasia oyb', 'casiyl', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(93, 'zaiba eysih', 'xesyuh', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(94, 'oehyah royv', 'zoyha', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(95, 'zolpyo kela', 'zoylpo', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(96, 'zotyal iliv', 'zoytia', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(97, 'kayi abks', 'zabkiso', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(98, 'lompa asloo', 'zaspolo', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(99, 'zee apos', 'zapo', 'apsi', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564'),
(100, 'zokspi el', 'zazsi', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(101, 'zabosil zata', 'zotoa', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(102, 'zasoa oyb', 'casoyl', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(103, 'zaoba eysih', 'xesouh', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(104, 'oeoyah royv', 'zoyho', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(105, 'zoloyo kela', 'zoylopo', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(106, 'zotyol iliv', 'zoytio', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(107, 'kayio aboks', 'zabkoso', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(108, 'lompa asloxo', 'zaspalo', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(109, 'zee apos', 'zapos', 'apsi', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564'),
(110, 'zokspi el', 'zazdi', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(111, 'zabosil zata', 'zotoad', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(112, 'zasoa oyb', 'casoyld', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(113, 'zaoba eysih', 'xesouhd', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(114, 'oeoyah royv', 'zoyhod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(115, 'zoloyo kela', 'zoylopod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(116, 'zotyol iliv', 'zoytiod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(117, 'kayio aboks', 'zabkosod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(118, 'lompa asloxo', 'zaspalod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(119, 'zee apos', 'zados', 'apsi', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564'),
(120, 'zokspi el', 'zazdid', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(121, 'zabosil zata', 'zotdoad', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(122, 'zasoa oyb', 'casoylopod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(123, 'zaoba eysih', 'xesouhdod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(124, 'oeoyah royv', 'zoyhodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(125, 'zoloyo kela', 'zoylopodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(126, 'zotyol iliv', 'zoytiodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(127, 'kayio aboks', 'zabkosodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(128, 'lompa asloxo', 'zaspalodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(129, 'zee apos', 'ados', 'apsi', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564'),
(130, 'zokspi el', 'azdid', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(131, 'zabosil zata', 'otdoad', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(132, 'zasoa oyb', 'soylopod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(133, 'zaoba eysih', 'ouhdod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(134, 'oeoyah royv', 'oyhodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(135, 'zoloyo kela', 'oylopodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(136, 'zotyol iliv', 'oytiodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(137, 'kayio aboks', 'abkosodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(138, 'lompa asloxo', 'aspalodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(139, 'zee apos', 'xados', 'apsi', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564'),
(140, 'zokspi el', 'xazdid', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(141, 'zabosil zata', 'xotdoad', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(142, 'zasoa oyb', 'xoylopod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(143, 'zaoba eysih', 'xouhdod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(144, 'oeoyah royv', 'xoyhodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(145, 'zoloyo kela', 'xoylopodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(146, 'zotyol iliv', 'xoytiodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(147, 'kayio aboks', 'xabkosodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(148, 'lompa asloxo', 'xaspalodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(149, 'zee apos', 'qados', 'apsi', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564'),
(150, 'zokspi el', 'qazdid', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(151, 'zabosil zata', 'qotdoad', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(152, 'zasoa oyb', 'qoylopod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(153, 'zaoba eysih', 'qouhdod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(154, 'oeoyah royv', 'qoyhodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(155, 'zoloyo kela', 'qoylopodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(156, 'zotyol iliv', 'qoytiodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(157, 'kayio aboks', 'qabkosodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(158, 'lompa asloxo', 'qaspalodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(159, 'zee apos', 'wados', 'apsi', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564'),
(160, 'zokspi el', 'wazdid', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(161, 'zabosil zata', 'wotdoad', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(162, 'zasoa oyb', 'woylopod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(163, 'zaoba eysih', 'wouhdod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(164, 'oeoyah royv', 'woyhodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(165, 'zoloyo kela', 'woylopodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(166, 'zotyol iliv', 'woytiodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(167, 'kayio aboks', 'wabkosodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(168, 'lompa asloxo', 'waspalodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(169, 'zee apos', 'eados', 'apsi', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564'),
(170, 'zokspi el', 'eazdid', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(171, 'zabosil zata', 'eotdoad', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(172, 'zasoa oyb', 'eoylopod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(173, 'zaoba eysih', 'eouhdod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(174, 'oeoyah royv', 'eoyhodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(175, 'zoloyo kela', 'eoylopodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(176, 'zotyol iliv', 'eoytiodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(177, 'kayio aboks', 'eabkosodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(178, 'lompa asloxo', 'easpalodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(179, 'zee apos', 'rados', 'apsi', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564'),
(180, 'zokspi el', 'razdid', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(181, 'zabosil zata', 'rotdoad', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(182, 'zasoa oyb', 'roylopod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(183, 'zaoba eysih', 'rouhdod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(184, 'oeoyah royv', 'royhodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(185, 'zoloyo kela', 'roylopodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(186, 'zotyol iliv', 'roytiodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(187, 'kayio aboks', 'rabkosodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(188, 'lompa asloxo', 'raspalodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(189, 'zee apos', 'tados', 'apsi', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564'),
(190, 'zokspi el', 'tazdid', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(191, 'zabosil zata', 'totdoad', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(192, 'zasoa oyb', 'toylopod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(193, 'zaoba eysih', 'touhdod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(194, 'oeoyah royv', 'toyhodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(195, 'zoloyo kela', 'toylopodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(196, 'zotyol iliv', 'toytiodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(197, 'kayio aboks', 'tabkosodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(198, 'lompa asloxo', 'taspalodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(199, 'zee apos', 'yados', 'apsi', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564'),
(200, 'zokspi el', 'yazdid', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(201, 'zabosil zata', 'yotdoad', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(202, 'zasoa oyb', 'yoylopod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(203, 'zaoba eysih', 'youhdod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(204, 'oeoyah royv', 'yoyhodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(205, 'zoloyo kela', 'yoylopodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(206, 'zotyol iliv', 'yoytiodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(207, 'kayio aboks', 'yabkosodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(208, 'lompa asloxo', 'yaspalodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(209, 'zee apos', 'uados', 'apsi', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564'),
(210, 'zokspi el', 'uazdid', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(211, 'zabosil zata', 'uotdoad', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(212, 'zasoa oyb', 'uoylopod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(213, 'zaoba eysih', 'uouhdod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(214, 'oeoyah royv', 'uoyhodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(215, 'zoloyo kela', 'uoylopodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(216, 'zotyol iliv', 'uoytiodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(217, 'kayio aboks', 'uabkosodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(218, 'lompa asloxo', 'uaspalodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(219, 'zee apos', 'iados', 'apsi', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564'),
(220, 'zokspi el', 'iazdid', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(221, 'zabosil zata', 'iotdoad', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(222, 'zasoa oyb', 'ioylopod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(223, 'zaoba eysih', 'iouhdod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(224, 'oeoyah royv', 'ioyhodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(225, 'zoloyo kela', 'ioylopodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(226, 'zotyol iliv', 'ioytiodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(227, 'kayio aboks', 'iabkosodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(228, 'lompa asloxo', 'iaspalodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(229, 'zee apos', 'pados', 'apsi', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564'),
(230, 'zokspi el', 'pazdid', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(231, 'zabosil zata', 'potdoad', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(232, 'zasoa oyb', 'poylopod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(233, 'zaoba eysih', 'pouhdod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(234, 'oeoyah royv', 'poyhodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(235, 'zoloyo kela', 'poylopodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(236, 'zotyol iliv', 'poytiodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(237, 'kayio aboks', 'pabkosodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(238, 'lompa asloxo', 'paspalodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(239, 'zee apos', 'fados', 'apsi', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564'),
(240, 'zokspi el', 'fazdid', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(241, 'zabosil zata', 'fotdoad', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(242, 'zasoa oyb', 'foylopod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(243, 'zaoba eysih', 'fouhdod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(244, 'oeoyah royv', 'foyhodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(245, 'zoloyo kela', 'foylopodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(246, 'zotyol iliv', 'foytiodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(247, 'kayio aboks', 'fabkosodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(248, 'lompa asloxo', 'faspalodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(249, 'zee apos', 'gados', 'apsi', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564'),
(250, 'zokspi el', 'gazdid', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(251, 'zabosil zata', 'gotdoad', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(252, 'zasoa oyb', 'goylopod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(253, 'zaoba eysih', 'gouhdod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(254, 'oeoyah royv', 'goyhodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(255, 'zoloyo kela', 'goylopodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(256, 'zotyol iliv', 'goytiodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(257, 'kayio aboks', 'gabkosodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(258, 'lompa asloxo', 'gaspalodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(259, 'zee apos', 'hados', 'apsi', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564'),
(260, 'zokspi el', 'hazdid', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(261, 'zabosil zata', 'hotdoad', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(262, 'zasoa oyb', 'hoylopod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(263, 'zaoba eysih', 'houhdod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(264, 'oeoyah royv', 'hoyhodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(265, 'zoloyo kela', 'hoylopodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(266, 'zotyol iliv', 'hoytiodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(267, 'kayio aboks', 'habkosodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(268, 'lompa asloxo', 'haspalodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(269, 'zee apos', 'jados', 'apsi', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564'),
(270, 'zokspi el', 'jazdid', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(271, 'zabosil zata', 'jotdoad', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(272, 'zasoa oyb', 'joylopod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(273, 'zaoba eysih', 'jouhdod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(274, 'oeoyah royv', 'joyhodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(275, 'zoloyo kela', 'joylopodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(276, 'zotyol iliv', 'joytiodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(277, 'kayio aboks', 'jabkosodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(278, 'lompa asloxo', 'jaspalodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(279, 'zee apos', 'kados', 'apsi', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564'),
(280, 'zokspi el', 'kazdid', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(281, 'zabosil zata', 'kotdoad', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(282, 'zasoa oyb', 'koylopod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(283, 'zaoba eysih', 'kouhdod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(284, 'oeoyah royv', 'koyhodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(285, 'zoloyo kela', 'koylopodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(286, 'zotyol iliv', 'koytiodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(287, 'kayio aboks', 'kabkosodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(288, 'lompa asloxo', 'kaspalodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(289, 'zee apos', 'lados', 'apsi', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564'),
(290, 'zokspi el', 'lazdid', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(291, 'zabosil zata', 'lotdoad', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(292, 'zasoa oyb', 'loylopod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(293, 'zaoba eysih', 'louhdod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(294, 'oeoyah royv', 'loyhodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(295, 'zoloyo kela', 'loylopodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(296, 'zotyol iliv', 'loytiodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(297, 'kayio aboks', 'labkosodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(298, 'lompa asloxo', 'laspalodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(299, 'zee apos', 'vados', 'apsi', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564'),
(300, 'zokspi el', 'vazdid', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(301, 'zabosil zata', 'votdoad', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(302, 'zasoa oyb', 'voylopod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(303, 'zaoba eysih', 'vouhdod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(304, 'oeoyah royv', 'voyhodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(305, 'zoloyo kela', 'voylopodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(306, 'zotyol iliv', 'voytiodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(307, 'kayio aboks', 'vabkosodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(308, 'lompa asloxo', 'vaspalodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(309, 'zee apos', 'bados', 'apsi', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564'),
(310, 'zokspi el', 'bazdid', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(311, 'zabosil zata', 'botdoad', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(312, 'zasoa oyb', 'boylopod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(313, 'zaoba eysih', 'bouhdod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455'),
(314, 'oeoyah royv', 'boyhodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(315, 'zoloyo kela', 'boylopodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(316, 'zotyol iliv', 'boytiodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(317, 'kayio aboks', 'babkosodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(318, 'lompa asloxo', 'baspalodod', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Female', 'jhjhsdj', 'kjshdkj', '8755455'),
(319, 'zee apos', 'hululu', 'apsi', 1, 1, '12/12/12', 'skdjlsk north', 'Otavi', 'Male', 'hjashj', 'hjjsdh', '45564'),
(320, 'zokspi el', 'kavange', 'pwd1212', 1, 1, '12/15/20', 'kjhaksj ', 'hj', 'Male', 'jhjhsdj', 'kjshdkj', '8755455');

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
(2, 1, 2, 1, 2019, '2019-03-15 00:00:00', '2019-03-15 00:00:00');

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
  `t_gender` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_info`
--

INSERT INTO `teacher_info` (`t_id`, `t_fullname`, `t_address`, `t_email`, `t_username`, `t_pass`, `t_father`, `t_mother`, `t_dob`, `t_qualification`, `t_contact`, `t_staff_type`, `t_gender`) VALUES
(1, 'Hari Parsad Thapa', 'Tinkune 1', 'ram@gmail.com', 'ramsir', 'ram', 'hari prasad thapa', 'sita kumari thapa', '20 Feb 1978', 'Master ', 986811111, 'Teacher', 'Male'),
(2, 'Hello MeRavi', 'Lokanthali', 'abc@xyz', 'ravi@ravi', 'ravi', 'ABC XYZ', 'Bcd Xyz', '29 feb 2000', '+2', 98680000, 'Admin', 'Male'),
(3, 'Hello', 'Kathmandu', 'hello@gmail.com', 'hello', 'hello', 'hello abc ', 'world abc', '20 jan 1885', 'Master', 98680222, 'Teacher', 'Male'),
(5, 'Sanjay', 'Bhaktapur', 'sanjay@gmail.com', 'sanjay', 'sanjay', 'Abc xyz', 'bcd xyz', '22 feb 2000', 'Master ', 9866666, 'Teacher', 'Male'),
(6, 'Ram Karki', 'Lokanthali', 'ram@hhkhkjk', 'ram1878', 'ram1878', 'Hari Karki', 'Rita Karki', '12 Jan 1878', 'Master', 1234567890, 'Teacher', 'Male'),
(7, 'Raj Thapa', 'Kausaltar', 'rajjjjjjjjjjjjjj@gmail.com', 'raaj', 'raaj1', 'hari thapa', 'gita thapa', '11 Jan 1978', 'Master', 123456789, 'Teacher', 'Male'),
(8, 'Kashipu', 'asjk Windhoek', 'kashiupu@gmail.com', 'kashiupu@gmail.com', 'kashiupu', 'jhdsj', 'asdjhsa', '10/10/98', 'None', 235235235, 'Teacher', 'Male'),
(9, 'Fika', 'MMM ROcky', 'fika@gmail.com', 'fika@gmail.com', 'fika@gmail.com', 'kdkfjlskdj', 'lkjlkjsld', '10/5/58', 'Certificate', 52525252, 'Teacher', 'Male'),
(10, 'Elis', 'akska North', 'elis@gmail.com', 'elis@gmail.com', 'elis@gmail.com', 'klsjadlkjas', 'lkjldkjfs', '10/25/58', 'Diploma', 55464655, 'Teacher', 'Female'),
(11, 'Lisa Birth', 'jhsks Soouth', 'eis@gmail.com', 'eis@gmail.com', 'eis@gmail.com', 'hjsdh ', 'jhsdjh', '10/10/10', 'Master', 23525252, 'Teacher', 'Female'),
(12, 'Betty David', 'Hjhas South', 'betty@gmail.com', 'betty@gmail.com', 'betty@gmail.com', 'jhasdgja', 'jhsgdsha', '10/10/58', 'Certificate', 55464655, 'Teacher', 'Female'),
(13, 'Mariam Chicken', 'chicken farm', 'mariam@gmail.com', 'mariam@gmail.com', 'mariam@gmail.com', 'sldkfj', 'lksjdlf', '10/12/50', 'Master', 23212132, 'Teacher', 'Female'),
(14, 'Tulika kuli', 'jhsaj South', 'tulika@gmail.com', 'tulika@gmail.com', 'tulika@gmail.com', 'sjdlkasj', 'lksjdflksj', '10/25/25', 'Master', 5656, 'Teacher', 'Female'),
(15, 'Tuli shivula', 'jahskjdh East', 'tuli@gmail.com', 'tuli@gmail.com', 'tuli@gmail.com', 'ksdjfkj', 'lkjsdlkfj', '10/20/65', 'None', 545445, 'Teacher', 'Female'),
(16, 'Selvia vigo', 'hjsdh East', 'selvia@gmail.com', 'selvia@gmail.com', 'selvia@gmail.com', 'skdjflks', 'ljsdlkfjls', '10/10/58', 'master', 55464655, 'Teacher', 'Female'),
(17, 'Helvi kisha', 'kjadjkas west', 'helvi@gmail.com', 'helvi@gmail.com', 'helvi@gmail.com', 'lksjdlk', 'skjdlfs', '10/10/85', 'Certificate', 45458, 'Teacher', 'Female'),
(18, 'Tulonga Makaveli', 'jhsdj East', 'tulonga@gmail.com', 'tulonga@gmail.com', 'tulonga@gmail.com', 'kjshdkjs', 'kjhsdkf', '10/10/256', 'Diploma', 4578545, 'Teacher', 'Female'),
(19, 'Kanguvi', 'ajskjsa Farm', 'kanguvi@gmail.com', 'kanguvi@gmail.com', 'kanguvi@gmail.com', 'skjdfjs', 'ksjhkdfks', '10/10/96', 'None', 7548754, 'Teacher', 'Female'),
(20, 'Vilsa', 'hasjhja America', 'vilsa@gmail.com', 'vilsa@gmail.com', 'vilsa@gmail.com', 'sdjflksjl', 'lkjsdlkfj', '10/10/58', 'Degree', 45152, 'Teacher', 'Female');

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
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `mcode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `sccode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `tecode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teacher_info`
--
ALTER TABLE `teacher_info`
  MODIFY `t_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
