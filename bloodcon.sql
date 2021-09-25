-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2021 at 02:44 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bloodcon`
--

-- --------------------------------------------------------

--
-- Table structure for table `apheresis`
--

CREATE TABLE `apheresis` (
  `userName` varchar(30) DEFAULT NULL,
  `phoneNumber` varchar(13) DEFAULT NULL,
  `bloodGroup` varchar(3) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `apheresis`
--

INSERT INTO `apheresis` (`userName`, `phoneNumber`, `bloodGroup`, `region`) VALUES
('adfaed qweq', '123143', 'a-', 'Rajshahi');

-- --------------------------------------------------------

--
-- Table structure for table `blood`
--

CREATE TABLE `blood` (
  `userName` varchar(20) DEFAULT NULL,
  `phoneNumber` varchar(13) DEFAULT NULL,
  `bloodGroup` varchar(3) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood`
--

INSERT INTO `blood` (`userName`, `phoneNumber`, `bloodGroup`, `region`) VALUES
('dfgfggw', 'a+', '124', 'dhaka'),
('dgrg wet', '2342567', 'o+', 'Rangpur'),
('aaaaaa', '12441', 'a+', 'dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `donorID` int(11) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `phoneNumber` varchar(13) DEFAULT NULL,
  `region` varchar(10) NOT NULL,
  `bloodGroup` varchar(3) NOT NULL,
  `lastDonationDate` date DEFAULT NULL,
  `previousCondition` varchar(20) DEFAULT NULL,
  `donationCriteria` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `name` varchar(20) NOT NULL,
  `number` varchar(13) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patientID` int(11) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `phoneNumber` varchar(13) DEFAULT NULL,
  `region` varchar(10) NOT NULL,
  `bloodGroup` varchar(3) NOT NULL,
  `necessity` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `plasma`
--

CREATE TABLE `plasma` (
  `userName` varchar(30) DEFAULT NULL,
  `phoneNumber` varchar(13) DEFAULT NULL,
  `bloodGroup` varchar(3) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plasma`
--

INSERT INTO `plasma` (`userName`, `phoneNumber`, `bloodGroup`, `region`) VALUES
('ae dfqe3 ', '12434', 'a-', 'Khulna'),
('as dad ew', '231242', 'ab+', 'Sylhet');

-- --------------------------------------------------------

--
-- Table structure for table `platelet`
--

CREATE TABLE `platelet` (
  `userName` varchar(30) DEFAULT NULL,
  `phoneNumber` varchar(13) DEFAULT NULL,
  `bloodGroup` varchar(3) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `platelet`
--

INSERT INTO `platelet` (`userName`, `phoneNumber`, `bloodGroup`, `region`) VALUES
('s dqed qe', '123414', 'b+', 'dhaka'),
('q qerd313er', '1243434', 'b-', 'Sylhet');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`donorID`),
  ADD UNIQUE KEY `phoneNumber` (`phoneNumber`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `number` (`number`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patientID`),
  ADD UNIQUE KEY `phoneNumber` (`phoneNumber`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
  MODIFY `donorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `patientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
