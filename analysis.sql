-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2016 at 03:57 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `osm`
--

-- --------------------------------------------------------

--
-- Table structure for table `analysis`
--

CREATE TABLE `analysis` (
  `Issue` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Alabama` int(5) NOT NULL DEFAULT '0',
  `Alaska` int(11) NOT NULL,
  `Arizona` int(5) NOT NULL DEFAULT '0',
  `Arkansas` int(5) NOT NULL DEFAULT '0',
  `California` int(5) NOT NULL DEFAULT '0',
  `Colorado` int(5) NOT NULL DEFAULT '0',
  `Connecticut` int(5) DEFAULT '0',
  `Delaware` int(5) NOT NULL DEFAULT '0',
  `Florida` int(5) NOT NULL DEFAULT '0',
  `Georgia` int(5) NOT NULL DEFAULT '0',
  `Hawaii` int(5) NOT NULL DEFAULT '0',
  `Idaho` int(5) NOT NULL DEFAULT '0',
  `Illinois` int(5) NOT NULL DEFAULT '0',
  `Indiana` int(5) NOT NULL DEFAULT '0',
  `Iowa` int(5) NOT NULL DEFAULT '0',
  `Kansas` int(5) NOT NULL DEFAULT '0',
  `Kentucky` int(5) NOT NULL DEFAULT '0',
  `Louisiana` int(5) NOT NULL DEFAULT '0',
  `Maine` int(5) NOT NULL DEFAULT '0',
  `Maryland` int(5) NOT NULL DEFAULT '0',
  `Massachusetts` int(5) NOT NULL DEFAULT '0',
  `Michigan` int(5) NOT NULL DEFAULT '0',
  `Minnesota` int(5) NOT NULL DEFAULT '0',
  `Mississippi` int(5) NOT NULL DEFAULT '0',
  `Missouri` int(5) NOT NULL DEFAULT '0',
  `Montana` int(5) NOT NULL DEFAULT '0',
  `Nebraska` int(11) NOT NULL,
  `Nevada` int(5) NOT NULL DEFAULT '0',
  `New Hampshire` int(5) NOT NULL DEFAULT '0',
  `New Jersey` int(5) NOT NULL DEFAULT '0',
  `New Mexico` int(5) NOT NULL DEFAULT '0',
  `New York` int(5) NOT NULL DEFAULT '0',
  `North Carolina` int(5) NOT NULL DEFAULT '0',
  `North Dakota` int(5) NOT NULL DEFAULT '0',
  `Ohio` int(5) NOT NULL DEFAULT '0',
  `Oklahoma` int(5) NOT NULL DEFAULT '0',
  `Oregon` int(5) NOT NULL DEFAULT '0',
  `Pennsylvania` int(5) NOT NULL DEFAULT '0',
  `Rhode Island` int(5) NOT NULL DEFAULT '0',
  `South Carolina` int(5) NOT NULL DEFAULT '0',
  `South Dakota` int(5) NOT NULL DEFAULT '0',
  `Tennessee` int(5) NOT NULL DEFAULT '0',
  `Texas` int(5) NOT NULL DEFAULT '0',
  `Utah` int(5) NOT NULL DEFAULT '0',
  `Vermont` int(5) NOT NULL DEFAULT '0',
  `Virginia` int(5) NOT NULL DEFAULT '0',
  `Washington` int(5) NOT NULL DEFAULT '0',
  `West Virginia` int(5) NOT NULL DEFAULT '0',
  `Wisconsin` int(5) NOT NULL DEFAULT '0',
  `Wyoming` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `analysis`
--

INSERT INTO `analysis` (`Issue`, `Alabama`, `Alaska`, `Arizona`, `Arkansas`, `California`, `Colorado`, `Connecticut`, `Delaware`, `Florida`, `Georgia`, `Hawaii`, `Idaho`, `Illinois`, `Indiana`, `Iowa`, `Kansas`, `Kentucky`, `Louisiana`, `Maine`, `Maryland`, `Massachusetts`, `Michigan`, `Minnesota`, `Mississippi`, `Missouri`, `Montana`, `Nebraska`, `Nevada`, `New Hampshire`, `New Jersey`, `New Mexico`, `New York`, `North Carolina`, `North Dakota`, `Ohio`, `Oklahoma`, `Oregon`, `Pennsylvania`, `Rhode Island`, `South Carolina`, `South Dakota`, `Tennessee`, `Texas`, `Utah`, `Vermont`, `Virginia`, `Washington`, `West Virginia`, `Wisconsin`, `Wyoming`) VALUES
('ObamaCare', 8, 0, 6, 4, 40, 4, 2, 0, 35, 8, 2, 0, 11, 3, 2, 2, 4, 10, 0, 8, 9, 16, 4, 6, 14, 8, 0, 16, 2, 19, 4, 22, 25, 0, 12, 8, 5, 23, 2, 18, 0, 5, 45, 5, 4, 6, 22, 2, 4, 2),
('Women', 4, 0, 8, 4, 34, 7, 0, 0, 26, 6, 6, 0, 7, 9, 2, 0, 0, 8, 0, 4, 2, 6, 4, 4, 4, 0, 0, 10, 0, 4, 4, 30, 10, 0, 8, 4, 6, 22, 4, 0, 0, 10, 22, 0, 0, 8, 12, 4, 6, 0),
('Crime', 3, 0, 0, 3, 12, 0, 0, 0, 10, 2, 0, 0, 4, 0, 2, 0, 0, 0, 3, 0, 2, 2, 0, 0, 2, 0, 0, 0, 0, 2, 2, 10, 4, 0, 2, 0, 2, 4, 0, 0, 0, 4, 0, 0, 0, 0, 8, 4, 0, 0),
('Racism', 1, 0, 4, 0, 30, 2, 2, 0, 18, 5, 2, 2, 0, 0, 6, 4, 2, 12, 0, 0, 0, 2, 4, 4, 6, 0, 0, 4, 0, 7, 2, 19, 5, 0, 4, 5, 4, 5, 0, 5, 0, 5, 19, 0, 1, 5, 12, 2, 4, 0),
('Gun Control', 0, 0, 4, 0, 10, 0, 0, 0, 12, 2, 0, 0, 0, 0, 0, 0, 2, 4, 0, 0, 0, 4, 2, 0, 0, 0, 0, 0, 0, 4, 2, 8, 2, 0, 0, 0, 0, 2, 0, 0, 0, 8, 10, 0, 4, 2, 0, 0, 0, 0),
('Blacks', 4, 0, 6, 0, 27, 3, 0, 0, 12, 4, 0, 0, 0, 2, 0, 0, 0, 6, 4, 6, 0, 6, 0, 0, 2, 0, 0, 4, 0, 8, 4, 16, 10, 0, 6, 5, 4, 4, 0, 2, 0, 4, 8, 2, 2, 4, 0, 0, 4, 0),
('Abortion', 0, 0, 2, 0, 10, 0, 0, 0, 5, 0, 2, 0, 4, 0, 0, 0, 0, 4, 0, 4, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0),
('Immigrants', 0, 0, 2, 0, 5, 0, 0, 0, 5, 2, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 4, 0, 0, 0, 4, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Mexican and Latinos', 4, 0, 2, 0, 10, 3, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 2, 4, 0, 0, 0, 2, 2, 0, 0, 0, 0, 8, 0, 4, 0, 10, 0, 0, 4, 0, 0, 0, 0, 0, 0, 4, 6, 0, 0, 0, 4, 0, 0, 0),
('LGBT', 3, 0, 1, 0, 14, 5, 0, 0, 10, 0, 0, 0, 2, 2, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 2, 0, 0, 2, 0, 2, 2, 2, 6, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 0, 0, 0, 0, 0, 0, 0),
('Feminism', 0, 0, 2, 0, 4, 0, 0, 0, 4, 2, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 4, 0, 0, 2, 0, 2, 0, 4, 0, 2, 4, 0, 0, 0, 0, 0, 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
