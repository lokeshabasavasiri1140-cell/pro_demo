-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 26, 2026 at 04:06 AM
-- Server version: 8.4.7
-- PHP Version: 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `refund_db`
--
CREATE DATABASE IF NOT EXISTS `refund_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `refund_db`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id` int NOT NULL AUTO_INCREMENT,
  `event_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `event_name`, `event_type`) VALUES
(26, 'pannir2.O', ''),
(25, 'hackers', ''),
(5, 'geethayaana', 'Workshop');

-- --------------------------------------------------------

--
-- Table structure for table `hod`
--

DROP TABLE IF EXISTS `hod`;
CREATE TABLE IF NOT EXISTS `hod` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hod`
--

INSERT INTO `hod` (`id`, `username`, `password`) VALUES
(1, 'hod', '123');

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
CREATE TABLE IF NOT EXISTS `permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usn` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `members` text COLLATE utf8mb4_unicode_ci,
  `reason` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'Pending',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refund_request`
--

DROP TABLE IF EXISTS `refund_request`;
CREATE TABLE IF NOT EXISTS `refund_request` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usn` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `place` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participants` text COLLATE utf8mb4_unicode_ci,
  `amount` decimal(10,2) DEFAULT NULL,
  `account_number` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ifsc_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_branch` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificate_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_proof` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `bank_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_holder_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passbook_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usn` (`usn`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `refund_request`
--

INSERT INTO `refund_request` (`id`, `usn`, `event_name`, `event_type`, `from_date`, `to_date`, `place`, `participants`, `amount`, `account_number`, `ifsc_code`, `bank_branch`, `certificate_file`, `payment_proof`, `status`, `created_at`, `bank_name`, `subject_name`, `account_holder_name`, `passbook_file`) VALUES
(1, '4GW24CI006', 'pannir2.O', 'Hackathon', '2026-05-14', '2026-05-14', 'Mandya', 'Basavsiri - CI006\r\nSameeksha S -CI035\r\nThanushree - CI032\r\nRachana R - CI031', 199.00, 'abcjj', 'dhiw', 'gpet', 'Screenshot (303).png', 'Screenshot (303).png', 'Approved', '2026-05-14 18:54:48', NULL, NULL, NULL, NULL),
(2, '4GW24CI006', 'pannir2.O', 'Hackathon', '2026-05-14', '2026-05-14', 'Mandya', 'Basavsiri - CI006\r\nSameeksha S -CI035\r\nThanushree - CI032\r\nRachana R - CI031', 199.00, 'abcjj', 'dhiw', 'gpet', 'Screenshot (303).png', 'Screenshot (303).png', 'Rejected', '2026-05-14 19:30:04', NULL, NULL, NULL, NULL),
(3, '', '', '', '0000-00-00', '0000-00-00', '', '', 0.00, '', '', '', '', '', 'Approved', '2026-05-14 19:30:34', NULL, NULL, NULL, NULL),
(4, '4GW24CI006', 'geethayaana', 'Hackathon', '2026-04-17', '2026-04-18', 'mysore', 'Siri-CI006\r\njeevika - CI016\r\nVeena-CI031', 200.00, 'abc202', 'aass', 'mys', 'Screenshot (303).png', 'Screenshot (303).png', 'Approved', '2026-05-14 19:40:01', NULL, NULL, NULL, NULL),
(5, '4GW24CI006', 'hackers', 'Other', '2026-05-08', '2026-05-09', 'mysore', 'siri - CI006\r\njeevi - CI016\r\nVeena - CI031', 200.00, 'abvd', 'cdf22', 'mysore', 'Screenshot (306).png', 'Screenshot (304).png', 'Rejected', '2026-05-15 04:42:43', NULL, NULL, NULL, NULL),
(6, '4GW24CI006', 'hackers', 'Other', '2026-05-08', '2026-05-09', 'mysore', 'siri - CI006\r\njeevi - CI016\r\nVeena - CI031', 200.00, 'abvd', 'cdf22', 'mysore', 'Screenshot (306).png', 'Screenshot (304).png', 'Pending', '2026-05-15 04:53:48', NULL, NULL, NULL, NULL),
(7, '4GW24CI016', '', '', '2026-05-08', '0000-00-00', '', 'Siri - CI006 , 4th sem\r\njeevika - CI016, 4th sem', 250.00, 'abc123', 'sbi12', 'mysore', 'Screenshot (303).png', 'Screenshot (303).png', 'Pending', '2026-05-15 14:34:48', NULL, NULL, NULL, NULL),
(8, '4GW24CI016', '', '', '2026-05-08', '0000-00-00', '', 'Siri - CI006 , 4th sem\r\njeevika - CI016, 4th sem', 250.00, 'abc123', 'sbi12', 'mysore', 'Screenshot (303).png', 'Screenshot (303).png', 'Approved', '2026-05-15 14:58:51', 'sbi', 'hackathon', 'Jeevika', NULL),
(9, '4GW24CI006', '', '', '2026-05-08', '0000-00-00', '', 'rani - 1, 3rd sem\r\npooja -5, 3rd sem', 500.00, 'abc202', 'sbi12', 'gpet', 'Screenshot (303).png', 'Screenshot (306).png', 'Pending', '2026-05-15 15:01:02', 'sbi', 'Ideathon', 'Rani', NULL),
(10, '4GW24CI006', '', '', '2026-05-08', '0000-00-00', '', 'rani - 1, 3rd sem\r\npooja -5, 3rd sem', 500.00, 'abc202', 'sbi12', 'gpet', 'Screenshot (303).png', 'Screenshot (306).png', 'Pending', '2026-05-15 15:23:50', 'sbi', 'Ideathon', 'Rani', NULL),
(11, '4GW25CI401', '', '', '2026-05-02', '0000-00-00', '', 'Ashitha - 4GW25CI401, 4th sem\r\nAnkitha -  4GW25CI400, 4th\r\nAyesha- 4GW25CI402, 4th', 300.00, 'abc123', 'abc0001', 'mysore', 'Screenshot (347).png', 'Screenshot (347).png', 'Pending', '2026-05-18 09:01:21', 'SBI', 'hackathon', 'Ashitha', NULL),
(12, '4GW24CI006', '', '', '2026-05-07', '0000-00-00', '', 'siri -ci006- 4th sem\r\njeevi-ci016-4th sem\r\nveena-ci031-4th sem', 300.00, 'abc123', 'abc0001', 'gpet', 'Screenshot (347).png', 'Screenshot (347).png', 'Pending', '2026-05-19 10:18:04', 'SBI', 'hackathon', 'siri', NULL),
(13, '4GW24CI006', '', '', '2026-05-07', '0000-00-00', '', 'siri -ci006- 4th sem\r\njeevi-ci016-4th sem\r\nveena-ci031-4th sem', 300.00, 'abc123', 'abc0001', 'gpet', 'Screenshot (347).png', 'Screenshot (347).png', 'Pending', '2026-05-19 10:21:57', 'SBI', 'hackathon', 'siri', NULL),
(14, '4GW24CI006', '', '', '2026-05-14', '0000-00-00', '', 'sanjana-ci001,3rd sem\r\nrani\r\nshwetha', 250.00, 'avs233', 'aass002', 'mysore', 'Screenshot (347).png', 'Screenshot (347).png', 'Pending', '2026-05-19 10:23:34', 'CKGB', 'Ideathon', 'Rani', NULL),
(15, '4GW24CI006', '', '', '2026-05-07', '0000-00-00', '', 'rani - 1, 3rd sem pooja -5, 3rd sem', 300.00, 'avs233', 'aass002', 'mysore', 'Screenshot (347).png', 'Screenshot (347).png', 'Approved', '2026-05-19 10:34:38', 'CKGB', 'hackathon', 'Rani', 'Screenshot (347).png'),
(16, '4GW24CI006', '', '', '2026-05-14', '0000-00-00', '', 'veena', 400.00, 'abvd', 'aass', 'mysore', 'Screenshot (347).png', 'Screenshot (347).png', 'Pending', '2026-05-20 05:20:08', 'CKGB', 'hackathon', 'veena', 'Screenshot (347).png'),
(17, '4GW24CI031', '', '', '2026-05-14', '0000-00-00', '', 'R veena- Ci031, 4th\r\nRamya -CI021, 3rd', 99.00, 'abc123', 'abc0001', 'Chamarajanagar', 'Screenshot (347).png', 'Screenshot (347).png', 'Pending', '2026-05-20 14:45:28', 'Union Bank', 'Geethayaana', 'R veena', 'Screenshot (347).png'),
(18, '4GW24CI016', '', '', '2026-05-08', '0000-00-00', '', 'jeevi-09\r\nveena-032\r\nsiri-054', 300.00, 'abc123', 'aass', 'mysore', 'Screenshot (347).png', 'Screenshot (347).png', 'Approved', '2026-05-21 10:13:32', 'SBI', 'Geethayaana', 'Jeevika', 'Screenshot (347).png'),
(19, '4GW24CI016', 'hackers', '', '2026-05-02', '0000-00-00', '', 'rani - 1, 3rd sem pooja -5, 3rd sem', 200.00, '1212563683', 'SBIN0001234', 'Chamarajanagar', 'Screenshot (347).png', 'Screenshot (347).png', 'Rejected', '2026-05-21 15:19:38', 'sbi', '', 'veena', 'Screenshot (347).png'),
(20, '4GW24CI006', 'hackers', '', '2026-05-09', '0000-00-00', '', 'siri-4th sem -ci006\r\njeevi -4th sem -ci', 200.00, '2463779389466', 'SBIN0001234', 'Chamarajanagar', 'Screenshot (347).png', 'Screenshot (347).png', 'Approved', '2026-05-23 05:03:19', 'CKGB', '', 'R veena', 'Screenshot (347).png');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `usn` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `semester` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`usn`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`usn`, `name`, `password`, `branch`, `semester`) VALUES
('4GW24CI001', 'Siri', '123', 'CSE(AI&ML', NULL),
('4GW24AI002', 'Jeevi', '111', 'CSE(AI&ML)', NULL),
('4GW24EC003', 'Veena', '222', 'CSE(AI&ML)', NULL),
('4GW24CI006', 'Basava', '123', 'AIML', '4'),
('4GW25CI401', 'Ashitha', '123', 'AIML', '4'),
('4GW24CI016', 'Jeevi', '123', 'AIML', '4'),
('4GW24CI031', 'Veena', '123', 'ECE', '4'),
('4GW25CI400', 'Siri', '123', 'AIML', '4');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
