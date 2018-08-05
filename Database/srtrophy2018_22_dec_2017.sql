-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2017 at 10:22 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `srtrophy2018`
--

-- --------------------------------------------------------

--
-- Table structure for table `batting`
--

CREATE TABLE `batting` (
  `matchid` varchar(10) NOT NULL,
  `playerid` varchar(10) NOT NULL,
  `n0` int(2) NOT NULL,
  `n1` int(2) NOT NULL,
  `n2` int(2) NOT NULL,
  `n3` int(2) NOT NULL,
  `n4` int(2) NOT NULL,
  `n6` int(2) NOT NULL,
  `out_type` varchar(20) NOT NULL,
  `out_bowlerid` varchar(10) NOT NULL,
  `out_fielderid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bowling`
--

CREATE TABLE `bowling` (
  `matchid` varchar(10) NOT NULL,
  `playerid` varchar(10) NOT NULL,
  `n0` int(2) NOT NULL,
  `n1` int(2) NOT NULL,
  `n2` int(2) NOT NULL,
  `n3` int(2) NOT NULL,
  `n4` int(2) NOT NULL,
  `n6` int(2) NOT NULL,
  `extras` int(2) NOT NULL,
  `remarks` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fallofwicket`
--

CREATE TABLE `fallofwicket` (
  `matchid` varchar(10) NOT NULL,
  `batsmanid` varchar(10) NOT NULL,
  `bowlerid` varchar(10) NOT NULL,
  `typeout` decimal(15,0) NOT NULL,
  `fielderid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user_id` varchar(10) NOT NULL,
  `pwd` varchar(10) NOT NULL,
  `ground_id` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `pwd`, `ground_id`) VALUES
('user1', '1', 'G1'),
('user2', '2', 'G2');

-- --------------------------------------------------------

--
-- Table structure for table `matches_2018`
--

CREATE TABLE `matches_2018` (
  `matchid` varchar(10) NOT NULL,
  `groundid` varchar(10) NOT NULL,
  `team1id` varchar(15) NOT NULL,
  `team2id` varchar(15) NOT NULL,
  `scheduledon` date NOT NULL,
  `status` varchar(15) NOT NULL,
  `toss_teamid` varchar(15) NOT NULL,
  `toss_type` varchar(7) NOT NULL,
  `winner_teamid` varchar(15) NOT NULL,
  `remarks` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matches_2018`
--

INSERT INTO `matches_2018` (`matchid`, `groundid`, `team1id`, `team2id`, `scheduledon`, `status`, `toss_teamid`, `toss_type`, `winner_teamid`, `remarks`) VALUES
('G1D1M1', 'G1', 'SR18_TS_01', 'SR18_TS_02', '2017-12-22', 'active', '', '', '', ''),
('G1D1M2', 'G1', 'SR18_TS_01', 'SR18_TS_02', '2017-12-21', 'inactive', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `teamid` varchar(15) NOT NULL,
  `playerid` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `bat_type` varchar(10) NOT NULL,
  `bowl_type` varchar(10) NOT NULL,
  `field_type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`teamid`, `playerid`, `name`, `mobile`, `bat_type`, `bowl_type`, `field_type`) VALUES
('SR18_TS_01', 'TS_01_01', 'Player-1 of SR18_TS_01', 'mobile-1', '', '', ''),
('SR18_TS_01', 'TS_01_02', 'player-2 of SR18_TS_01', 'mobile2', '', '', ''),
('SR18_TS_01', 'TS_01_03', 'Player-3 of SR18_TS_01', 'mobile-3', '', '', ''),
('SR18_TS_01', 'TS_01_04', 'player-4 of SR18_TS_01', 'mobile4', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `teamid`
--

CREATE TABLE `teamid` (
  `teamid` varchar(20) NOT NULL,
  `collegename` varchar(50) NOT NULL,
  `state` varchar(20) NOT NULL,
  `district` varchar(20) NOT NULL,
  `location` text NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `coachname` varchar(30) NOT NULL,
  `coachmobile` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teamid`
--

INSERT INTO `teamid` (`teamid`, `collegename`, `state`, `district`, `location`, `pincode`, `coachname`, `coachmobile`) VALUES
('SR18_TS_01', 'S R Engineering College', 'Telangana', 'Warangal Urban', 'Ananthasagar,\r\nHasanparthy', '506371', 'Puli Srinivas Goud', '9988998899'),
('SR18_TS_02', 'KITS', 'Telangana', 'Warangal Urban', 'Bheemaram', '506001', 'Coach_KITS', 'Mobile_KIT');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `batting`
--
ALTER TABLE `batting`
  ADD PRIMARY KEY (`playerid`);

--
-- Indexes for table `bowling`
--
ALTER TABLE `bowling`
  ADD PRIMARY KEY (`playerid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `matches_2018`
--
ALTER TABLE `matches_2018`
  ADD PRIMARY KEY (`matchid`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`playerid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
