-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 08, 2019 at 02:53 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_favoritethings`
--

-- --------------------------------------------------------

--
-- Table structure for table `favoritethings`
--

CREATE TABLE `favoritethings` (
  `ID` tinyint(2) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `Age` varchar(100) DEFAULT NULL,
  `nationality` varchar(100) DEFAULT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `favoritethings`
--

INSERT INTO `favoritethings` (`ID`, `name`, `gender`, `Age`, `nationality`, `image`) VALUES
(1, 'Emma Charlotte Duerre Watson', 'woman', '29', 'England', 'emma.jpeg'),
(2, 'Scarlett Johansson', 'woman', '35', 'America', 'Scarlett.jpg'),
(3, 'Leonardo DiCaprio', 'man', '45', 'America', 'Leonardo.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `favoritethings`
--
ALTER TABLE `favoritethings`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `favoritethings`
--
ALTER TABLE `favoritethings`
  MODIFY `ID` tinyint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
