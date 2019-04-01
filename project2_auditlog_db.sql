-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2019 at 10:52 PM
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
  `creatDate` datetime DEFAULT NULL,
  `lastModified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
