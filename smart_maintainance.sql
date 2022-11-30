-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2022 at 12:13 PM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `smart_maintainance`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE IF NOT EXISTS `adminlogin` (
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`email`, `password`) VALUES
('admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `comcomment`
--

CREATE TABLE IF NOT EXISTS `comcomment` (
`commid` int(50) NOT NULL,
  `comment` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `comcomment`
--

INSERT INTO `comcomment` (`commid`, `comment`) VALUES
(1, 'aniket ki manjusha');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE IF NOT EXISTS `complaints` (
`cid` int(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `department` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `image` blob NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`cid`, `title`, `description`, `department`, `date`, `status`, `email`, `image`) VALUES
(4, 'Power', 'power is off', 'Electric', '2022-02-26', 'Approved', 'uemail', ''),
(5, 'ef', 'safd', 'Sevage', '2022-02-22', 'Pending', 'nikita@gmail.com', ''),
(6, 'Hello', 'hello here', 'Electrical', '2022-02-22', 'Approved', 'kalyani@gmail.com', ''),
(7, 'Water', 'water leakage', 'water', '2022-02-24', 'Pending', 'neha@gmail.com', ''),
(8, 'Garbage', 'collect garbage from area', 'Sevage', '2022-02-28', 'Pending', 'kalyani@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `departmentlogin`
--

CREATE TABLE IF NOT EXISTS `departmentlogin` (
`id` int(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `dept_Name` varchar(30) NOT NULL,
  `taluka` varchar(30) NOT NULL,
  `district` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `mobile` varchar(30) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `departmentlogin`
--

INSERT INTO `departmentlogin` (`id`, `email`, `password`, `dept_Name`, `taluka`, `district`, `address`, `mobile`) VALUES
(2, 'kalyani@gmail.com', '123', 'Electric', 'Nandurbar', 'Nandurbar', 'Datta colony', '7798945840'),
(3, 'Ashwini@gmail.com', '456', 'Sevage', 'Jamner', 'Jalgaon', 'betawad', '789456123'),
(4, 'Ashwini@gmail.com', '123', 'Crying', 'Jamner', 'Jalgaon', 'betawad', '32165497'),
(7, 'neha@gmail.com', '123', 'Water', 'pachora', 'jalgaon', 'pachora jalgaon', '987654321');

-- --------------------------------------------------------

--
-- Table structure for table `helpline`
--

CREATE TABLE IF NOT EXISTS `helpline` (
  `name` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roadmaintainance`
--

CREATE TABLE IF NOT EXISTS `roadmaintainance` (
`tid` int(50) NOT NULL,
  `road` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `deadline` date NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `roadmaintainance`
--

INSERT INTO `roadmaintainance` (`tid`, `road`, `location`, `department`, `deadline`) VALUES
(1, 'Korit', 'nandurbar', 'Electric', '2022-02-22'),
(2, 'Korit', 'nandurbar', 'Electric', '2022-02-26'),
(3, 'Nimzari', 'Shirpur', 'Electric', '2022-02-21');

-- --------------------------------------------------------

--
-- Table structure for table `taskcomment`
--

CREATE TABLE IF NOT EXISTS `taskcomment` (
`commid` int(50) NOT NULL,
  `comment` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `taskcomment`
--

INSERT INTO `taskcomment` (`commid`, `comment`, `email`) VALUES
(1, 'hello everyone', 'kalyani@gmail.com'),
(2, 'Ashiti here', 'kalyani@gmail.com'),
(3, 'kalyani here', 'kalyani@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE IF NOT EXISTS `userlogin` (
  `name` varchar(30) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlogin`
--

INSERT INTO `userlogin` (`name`, `mobile`, `email`, `address`, `password`) VALUES
('Kalyani', '7798945840', 'kalyani@gmail.com', 'NDB', '123'),
('jhg', 'fgh', 'dfh', 'fgh', 'cfh'),
('Kalyani', '7798945840', 'kalyani@gmail.com', 'NDB', '123'),
('Nikita', '789456123', 'Nikita@gmail.com', 'NDB', '123'),
('Rishika', '789456123', 'rishi@gmail.com', 'asd', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comcomment`
--
ALTER TABLE `comcomment`
 ADD PRIMARY KEY (`commid`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
 ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `departmentlogin`
--
ALTER TABLE `departmentlogin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roadmaintainance`
--
ALTER TABLE `roadmaintainance`
 ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `taskcomment`
--
ALTER TABLE `taskcomment`
 ADD PRIMARY KEY (`commid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comcomment`
--
ALTER TABLE `comcomment`
MODIFY `commid` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
MODIFY `cid` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `departmentlogin`
--
ALTER TABLE `departmentlogin`
MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `roadmaintainance`
--
ALTER TABLE `roadmaintainance`
MODIFY `tid` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `taskcomment`
--
ALTER TABLE `taskcomment`
MODIFY `commid` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
