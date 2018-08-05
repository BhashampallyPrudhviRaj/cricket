-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2018 at 10:25 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `03_g1_m1`
--

CREATE TABLE `03_g1_m1` (
  `inning` char(1) NOT NULL,
  `batsmanid` varchar(10) NOT NULL,
  `bowlerid` varchar(10) NOT NULL,
  `overs` int(2) NOT NULL,
  `balls` int(2) NOT NULL,
  `score` int(3) NOT NULL,
  `scoretype` varchar(10) NOT NULL,
  `extra` int(2) DEFAULT NULL,
  `extratype` varchar(15) DEFAULT NULL,
  `outtype` varchar(10) DEFAULT NULL,
  `fielderid` varchar(10) DEFAULT NULL,
  `thetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `03_g1_m1`
--

INSERT INTO `03_g1_m1` (`inning`, `batsmanid`, `bowlerid`, `overs`, `balls`, `score`, `scoretype`, `extra`, `extratype`, `outtype`, `fielderid`, `thetime`) VALUES
('1', 'KUCET_P_01', 'CMRIT_P_04', 0, 1, 0, 'Hit', 0, '.', '.', '.', '2018-01-02 08:33:10'),
('1', 'KUCET_P_01', 'CMRIT_P_04', 0, 2, 0, 'Hit', 0, '.', '.', '.', '2018-01-02 08:33:11'),
('1', 'KUCET_P_01', 'CMRIT_P_04', 0, 3, 0, 'Hit', 0, '.', '.', '.', '2018-01-02 08:33:12'),
('1', 'KUCET_P_02', 'CMRIT_P_04', 0, 3, 0, '.', 1, 'Wide', '.', '.', '2018-01-02 08:33:36'),
('1', 'KUCET_P_02', 'CMRIT_P_04', 0, 4, 6, 'Hit', 0, '.', '.', '.', '2018-01-02 13:06:47'),
('1', 'KUCET_P_02', 'CMRIT_P_04', 0, 5, 6, 'Hit', 0, '.', '.', '.', '2018-01-02 13:06:48'),
('1', 'KUCET_P_01', 'CMRIT_P_04', 0, 6, 4, 'Hit', 0, '.', '.', '.', '2018-01-02 13:07:12'),
('1', 'KUCET_P_02', 'CMRIT_P_06', 1, 0, 0, '.', 2, 'Wide', '.', '.', '2018-01-02 13:07:46');

-- --------------------------------------------------------

--
-- Table structure for table `03_g1_m2`
--

CREATE TABLE `03_g1_m2` (
  `inning` char(1) NOT NULL,
  `batsmanid` varchar(10) NOT NULL,
  `bowlerid` varchar(10) NOT NULL,
  `overs` int(2) NOT NULL,
  `balls` int(2) NOT NULL,
  `score` int(3) NOT NULL,
  `scoretype` varchar(10) NOT NULL,
  `extra` int(2) DEFAULT NULL,
  `extratype` varchar(15) DEFAULT NULL,
  `outtype` varchar(10) DEFAULT NULL,
  `fielderid` varchar(10) DEFAULT NULL,
  `thetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `03_g2_m1`
--

CREATE TABLE `03_g2_m1` (
  `inning` char(1) NOT NULL,
  `batsmanid` varchar(10) NOT NULL,
  `bowlerid` varchar(10) NOT NULL,
  `overs` int(2) NOT NULL,
  `balls` int(2) NOT NULL,
  `score` int(3) NOT NULL,
  `scoretype` varchar(10) NOT NULL,
  `extra` int(2) DEFAULT NULL,
  `extratype` varchar(15) DEFAULT NULL,
  `outtype` varchar(10) DEFAULT NULL,
  `fielderid` varchar(10) DEFAULT NULL,
  `thetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `03_g2_m2`
--

CREATE TABLE `03_g2_m2` (
  `inning` char(1) NOT NULL,
  `batsmanid` varchar(10) NOT NULL,
  `bowlerid` varchar(10) NOT NULL,
  `overs` int(2) NOT NULL,
  `balls` int(2) NOT NULL,
  `score` int(3) NOT NULL,
  `scoretype` varchar(10) NOT NULL,
  `extra` int(2) DEFAULT NULL,
  `extratype` varchar(15) DEFAULT NULL,
  `outtype` varchar(10) DEFAULT NULL,
  `fielderid` varchar(10) DEFAULT NULL,
  `thetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `03_g3_m1`
--

CREATE TABLE `03_g3_m1` (
  `inning` char(1) NOT NULL,
  `batsmanid` varchar(10) NOT NULL,
  `bowlerid` varchar(10) NOT NULL,
  `overs` int(2) NOT NULL,
  `balls` int(2) NOT NULL,
  `score` int(3) NOT NULL,
  `scoretype` varchar(10) NOT NULL,
  `extra` int(2) DEFAULT NULL,
  `extratype` varchar(15) DEFAULT NULL,
  `outtype` varchar(10) DEFAULT NULL,
  `fielderid` varchar(10) DEFAULT NULL,
  `thetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `03_g3_m2`
--

CREATE TABLE `03_g3_m2` (
  `inning` char(1) NOT NULL,
  `batsmanid` varchar(10) NOT NULL,
  `bowlerid` varchar(10) NOT NULL,
  `overs` int(2) NOT NULL,
  `balls` int(2) NOT NULL,
  `score` int(3) NOT NULL,
  `scoretype` varchar(10) NOT NULL,
  `extra` int(2) DEFAULT NULL,
  `extratype` varchar(15) DEFAULT NULL,
  `outtype` varchar(10) DEFAULT NULL,
  `fielderid` varchar(10) DEFAULT NULL,
  `thetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `03_g4_m1`
--

CREATE TABLE `03_g4_m1` (
  `inning` char(1) NOT NULL,
  `batsmanid` varchar(10) NOT NULL,
  `bowlerid` varchar(10) NOT NULL,
  `overs` int(2) NOT NULL,
  `balls` int(2) NOT NULL,
  `score` int(3) NOT NULL,
  `scoretype` varchar(10) NOT NULL,
  `extra` int(2) DEFAULT NULL,
  `extratype` varchar(15) DEFAULT NULL,
  `outtype` varchar(10) DEFAULT NULL,
  `fielderid` varchar(10) DEFAULT NULL,
  `thetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `03_g4_m2`
--

CREATE TABLE `03_g4_m2` (
  `inning` char(1) NOT NULL,
  `batsmanid` varchar(10) NOT NULL,
  `bowlerid` varchar(10) NOT NULL,
  `overs` int(2) NOT NULL,
  `balls` int(2) NOT NULL,
  `score` int(3) NOT NULL,
  `scoretype` varchar(10) NOT NULL,
  `extra` int(2) DEFAULT NULL,
  `extratype` varchar(15) DEFAULT NULL,
  `outtype` varchar(10) DEFAULT NULL,
  `fielderid` varchar(10) DEFAULT NULL,
  `thetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `out_type` varchar(20) DEFAULT NULL,
  `out_bowlerid` varchar(10) DEFAULT NULL,
  `out_fielderid` varchar(10) DEFAULT NULL,
  `remarks` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `batting`
--

INSERT INTO `batting` (`matchid`, `playerid`, `n0`, `n1`, `n2`, `n3`, `n4`, `n6`, `out_type`, `out_bowlerid`, `out_fielderid`, `remarks`) VALUES
('G1D1M1', 'TS_01_01', 10, 1, 2, 3, 2, 2, '.', '.', '.', NULL),
('G1D1M1', 'TS_01_02', 13, 4, 3, 4, 2, 1, '.', '.', '.', NULL),
('G2D1M1', 'TS_03_01', 20, 2, 3, 4, 1, 0, '.', '.', '.', NULL),
('G2D1M1', 'TS_03_02', 31, 3, 4, 5, 1, 2, '.', '.', '.', NULL);

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
-- Table structure for table `clientsinfo`
--

CREATE TABLE `clientsinfo` (
  `machine` varchar(50) DEFAULT NULL,
  `os` varchar(50) DEFAULT NULL,
  `browser` varchar(50) DEFAULT NULL,
  `datetime` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clientsinfo`
--

INSERT INTO `clientsinfo` (`machine`, `os`, `browser`, `datetime`) VALUES
(NULL, NULL, 'Chrome', '2018-01-02 21:29:42'),
(NULL, NULL, 'Chrome', '2018-01-02 21:29:57'),
(NULL, NULL, 'Internet Explorer', '2018-01-02 21:30:23'),
(NULL, NULL, 'Internet Explorer', '2018-01-02 21:33:40'),
(NULL, NULL, 'Chrome', '2018-01-02 21:33:59'),
(NULL, NULL, 'Chrome', '2018-01-02 21:35:09'),
(NULL, NULL, 'Internet Explorer', '2018-01-02 21:35:22'),
(NULL, NULL, 'Chrome', '2018-01-02 22:51:46'),
(NULL, NULL, 'Chrome', '2018-01-02 22:54:07'),
(NULL, NULL, 'Chrome', '2018-01-02 22:55:02'),
(NULL, NULL, 'Chrome', '2018-01-02 22:55:48'),
(NULL, NULL, 'Chrome', '2018-01-02 22:57:02'),
(NULL, NULL, 'Chrome', '2018-01-02 22:58:32'),
(NULL, NULL, 'Chrome', '2018-01-02 22:59:09'),
(NULL, NULL, 'Chrome', '2018-01-02 23:00:11'),
(NULL, NULL, 'Chrome', '2018-01-02 23:00:35'),
(NULL, NULL, 'Chrome', '2018-01-02 23:02:30'),
(NULL, NULL, 'Chrome', '2018-01-02 23:05:05'),
(NULL, NULL, 'Chrome', '2018-01-02 23:05:28'),
(NULL, NULL, 'Chrome', '2018-01-02 23:05:52'),
(NULL, NULL, 'Chrome', '2018-01-02 23:06:12'),
(NULL, NULL, 'Chrome', '2018-01-02 23:06:41'),
(NULL, NULL, 'Chrome', '2018-01-02 23:07:43'),
(NULL, NULL, 'Chrome', '2018-01-02 23:07:56'),
(NULL, NULL, 'Chrome', '2018-01-01 23:12:51'),
(NULL, NULL, 'Internet Explorer', '2018-01-01 23:13:15'),
(NULL, NULL, 'Chrome', '2018-01-01 23:20:00'),
(NULL, NULL, 'Chrome', '2018-01-01 23:20:42'),
(NULL, NULL, 'Chrome', '2018-01-01 23:22:42'),
(NULL, NULL, 'Chrome', '2018-01-01 23:23:22'),
(NULL, NULL, 'Chrome', '2018-01-01 23:23:41'),
(NULL, NULL, 'Chrome', '2018-01-01 23:26:18'),
(NULL, NULL, 'Chrome', '2018-01-01 23:29:27'),
(NULL, NULL, 'Chrome', '2018-01-01 23:30:36'),
(NULL, NULL, 'Chrome', '2018-01-01 23:32:04'),
(NULL, NULL, 'Chrome', '2018-01-01 23:34:10'),
(NULL, NULL, 'Chrome', '2018-01-01 23:35:19'),
(NULL, NULL, 'Chrome', '2018-01-01 23:39:52'),
(NULL, NULL, 'Chrome', '2018-01-01 23:41:36'),
(NULL, NULL, 'Chrome', '2018-01-01 23:42:00'),
(NULL, NULL, 'Chrome', '2018-01-01 23:43:42'),
(NULL, NULL, 'Chrome', '2018-01-02 08:14:42'),
(NULL, NULL, 'Chrome', '2018-01-02 08:18:02'),
(NULL, NULL, 'Chrome', '2018-01-02 08:18:13'),
(NULL, NULL, 'Chrome', '2018-01-02 08:18:35'),
(NULL, NULL, 'Chrome', '2018-01-02 08:20:48'),
(NULL, NULL, 'Chrome', '2018-01-02 08:27:23'),
(NULL, NULL, 'Chrome', '2018-01-02 08:35:49'),
(NULL, NULL, 'Chrome', '2018-01-02 08:36:02'),
(NULL, NULL, 'Chrome', '2018-01-02 08:37:17'),
(NULL, NULL, 'Chrome', '2018-01-02 09:39:13'),
(NULL, NULL, 'Chrome', '2018-01-02 13:03:36'),
(NULL, NULL, 'Chrome', '2018-01-02 13:04:48'),
(NULL, NULL, 'Chrome', '2018-01-02 13:04:56'),
(NULL, NULL, 'Chrome', '2018-01-02 13:05:23'),
(NULL, NULL, 'Chrome', '2018-01-03 13:16:18');

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
  `team1id` varchar(15) NOT NULL,
  `team2id` varchar(15) NOT NULL,
  `scheduledon` date DEFAULT NULL,
  `status` varchar(15) NOT NULL,
  `toss_teamid` varchar(15) DEFAULT NULL,
  `toss_type` varchar(7) DEFAULT NULL,
  `inning1start` datetime DEFAULT NULL,
  `inning1end` datetime DEFAULT NULL,
  `inning2start` datetime DEFAULT NULL,
  `inning2end` datetime DEFAULT NULL,
  `winner_teamid` varchar(15) DEFAULT NULL,
  `remarks` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matches_2018`
--

INSERT INTO `matches_2018` (`matchid`, `team1id`, `team2id`, `scheduledon`, `status`, `toss_teamid`, `toss_type`, `inning1start`, `inning1end`, `inning2start`, `inning2end`, `winner_teamid`, `remarks`) VALUES
('03_G1_M1', 'KUCET', 'CMRIT', '0000-00-00', 'active', 'KUCET', 'Batting', '2018-01-02 20:34:23', NULL, NULL, NULL, '.', '.'),
('03_G1_M2', 'AUROH', 'KITSW', '0000-00-00', 'None', '.', '.', NULL, NULL, NULL, NULL, '.', '.'),
('03_G2_M1', 'SBITK', 'GITUH', '0000-00-00', 'active', '.', '.', NULL, NULL, NULL, NULL, '.', '.'),
('03_G2_M2', 'CMRCE', 'NITWG', '0000-00-00', 'None', '.', '.', NULL, NULL, NULL, NULL, '.', '.'),
('03_G3_M1', 'VAGCE', 'KLRCE', '0000-00-00', 'active', '.', '.', NULL, NULL, NULL, NULL, '.', '.'),
('03_G3_M2', 'CMRTC', 'GCETH', '0000-00-00', 'None', '.', '.', NULL, NULL, NULL, NULL, '.', '.'),
('03_G4_M1', 'MRIET', 'CVRCE', '0000-00-00', 'None', '.', '.', NULL, NULL, NULL, NULL, '.', '.'),
('03_G4_M2', 'STPEC', 'VRCEH', '0000-00-00', 'None', '.', '.', NULL, NULL, NULL, NULL, '.', '.'),
('04_G1_M1', 'BITSN', 'THECH', '0000-00-00', 'None', '.', '.', NULL, NULL, NULL, NULL, '.', '.'),
('04_G1_M2', 'TPCEW', 'SVCEW', '0000-00-00', 'None', '.', '.', NULL, NULL, NULL, NULL, '.', '.'),
('04_G1_M3', 'ADECP', 'KITSK', '0000-00-00', 'None', '.', '.', NULL, NULL, NULL, NULL, '.', '.'),
('04_G2_M1', 'SCCET', 'KLUGU', '0000-00-00', 'None', '.', '.', NULL, NULL, NULL, NULL, '.', '.'),
('04_G2_M2', 'SVSIT', 'SMVIT', '0000-00-00', 'None', '.', '.', NULL, NULL, NULL, NULL, '.', '.'),
('04_G2_M3', 'JNETK', 'VJITH', '0000-00-00', 'None', '.', '.', NULL, NULL, NULL, NULL, '.', '.'),
('04_G3_M1', 'MLRIT', 'MRECH', '0000-00-00', 'None', '.', '.', NULL, NULL, NULL, NULL, '.', '.'),
('04_G3_M2', 'GNITH', 'SSITS', '0000-00-00', 'None', '.', '.', NULL, NULL, NULL, NULL, '.', '.'),
('04_G3_M3', 'CMRCT', 'MVITP', '0000-00-00', 'None', '.', '.', NULL, NULL, NULL, NULL, '.', '.'),
('04_G4_M1', 'SNITS', 'VNRVJ', '0000-00-00', 'None', '.', '.', NULL, NULL, NULL, NULL, '.', '.'),
('04_G4_M2', 'MVSRE', 'SRIIT', '0000-00-00', 'None', '.', '.', NULL, NULL, NULL, NULL, '.', '.'),
('04_G4_M3', 'CBITH', 'MRCET', '0000-00-00', 'None', '.', '.', NULL, NULL, NULL, NULL, '.', '.'),
('05_G1_M1', 'SRECW', 'JITSN', '0000-00-00', 'None', '.', '.', NULL, NULL, NULL, NULL, '.', '.'),
('05_G1_M3', 'SRMUC', 'CJITJ', '0000-00-00', 'None', '.', '.', NULL, NULL, NULL, NULL, '.', '.'),
('05_G2_M1', 'AUSTR', '.', '0000-00-00', 'None', '.', '.', NULL, NULL, NULL, NULL, '.', '.'),
('05_G4_M2', 'SVITH', '.', '0000-00-00', 'None', '.', '.', NULL, NULL, NULL, NULL, '.', '.');

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `teamid` varchar(15) NOT NULL,
  `playerid` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `bat_type` varchar(10) DEFAULT NULL,
  `bowl_type` varchar(10) DEFAULT NULL,
  `field_type` varchar(10) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`teamid`, `playerid`, `name`, `bat_type`, `bowl_type`, `field_type`, `mobile`) VALUES
('ADECP', 'ADECP_P_01', '.', 'L', 'None', 'AllRounder', '.'),
('ADECP', 'ADECP_P_02', '.', 'R', 'None', 'AllRounder', '.'),
('ADECP', 'ADECP_P_03', '.', 'R', 'None', 'Keeper', '.'),
('ADECP', 'ADECP_P_04', '.', 'R', 'F', 'AllRounder', '.'),
('ADECP', 'ADECP_P_05', '.', 'R', 'None', 'AllRounder', '.'),
('ADECP', 'ADECP_P_06', '.', 'R', 'F', 'AllRounder', '.'),
('ADECP', 'ADECP_P_07', '.', 'R', 'None', 'AllRounder', '.'),
('ADECP', 'ADECP_P_08', '.', 'R', 'S', 'AllRounder', '.'),
('ADECP', 'ADECP_P_09', '.', 'R', 'M', 'AllRounder', '.'),
('ADECP', 'ADECP_P_10', '.', 'R', 'S', 'AllRounder', '.'),
('ADECP', 'ADECP_P_11', '.', 'R', 'M', 'AllRounder', '.'),
('ADECP', 'ADECP_P_12', '.', 'E', 'None', 'AllRounder', '.'),
('ADECP', 'ADECP_P_13', '.', 'E', 'None', 'AllRounder', '.'),
('ADECP', 'ADECP_P_14', '.', 'E', 'None', 'AllRounder', '.'),
('ADECP', 'ADECP_P_15', '.', 'E', 'None', 'AllRounder', '.'),
('AUROH', 'AUROH_P_01', '.', 'L', 'None', 'AllRounder', '.'),
('AUROH', 'AUROH_P_02', '.', 'R', 'None', 'AllRounder', '.'),
('AUROH', 'AUROH_P_03', '.', 'R', 'None', 'Keeper', '.'),
('AUROH', 'AUROH_P_04', '.', 'R', 'F', 'AllRounder', '.'),
('AUROH', 'AUROH_P_05', '.', 'R', 'None', 'AllRounder', '.'),
('AUROH', 'AUROH_P_06', '.', 'R', 'F', 'AllRounder', '.'),
('AUROH', 'AUROH_P_07', '.', 'R', 'None', 'AllRounder', '.'),
('AUROH', 'AUROH_P_08', '.', 'R', 'S', 'AllRounder', '.'),
('AUROH', 'AUROH_P_09', '.', 'R', 'M', 'AllRounder', '.'),
('AUROH', 'AUROH_P_10', '.', 'R', 'S', 'AllRounder', '.'),
('AUROH', 'AUROH_P_11', '.', 'R', 'M', 'AllRounder', '.'),
('AUROH', 'AUROH_P_12', '.', 'E', 'None', 'AllRounder', '.'),
('AUROH', 'AUROH_P_13', '.', 'E', 'None', 'AllRounder', '.'),
('AUROH', 'AUROH_P_14', '.', 'E', 'None', 'AllRounder', '.'),
('AUROH', 'AUROH_P_15', '.', 'E', 'None', 'AllRounder', '.'),
('BITSN', 'BITSN_P_01', '.', 'L', 'None', 'AllRounder', '.'),
('BITSN', 'BITSN_P_02', '.', 'R', 'None', 'AllRounder', '.'),
('BITSN', 'BITSN_P_03', '.', 'R', 'None', 'Keeper', '.'),
('BITSN', 'BITSN_P_04', '.', 'R', 'F', 'AllRounder', '.'),
('BITSN', 'BITSN_P_05', '.', 'R', 'None', 'AllRounder', '.'),
('BITSN', 'BITSN_P_06', '.', 'R', 'F', 'AllRounder', '.'),
('BITSN', 'BITSN_P_07', '.', 'R', 'None', 'AllRounder', '.'),
('BITSN', 'BITSN_P_08', '.', 'R', 'S', 'AllRounder', '.'),
('BITSN', 'BITSN_P_09', '.', 'R', 'M', 'AllRounder', '.'),
('BITSN', 'BITSN_P_10', '.', 'R', 'S', 'AllRounder', '.'),
('BITSN', 'BITSN_P_11', '.', 'R', 'M', 'AllRounder', '.'),
('BITSN', 'BITSN_P_12', '.', 'E', 'None', 'AllRounder', '.'),
('BITSN', 'BITSN_P_13', '.', 'E', 'None', 'AllRounder', '.'),
('BITSN', 'BITSN_P_14', '.', 'E', 'None', 'AllRounder', '.'),
('BITSN', 'BITSN_P_15', '.', 'E', 'None', 'AllRounder', '.'),
('CMRCE', 'CMRCE_P_01', '.', 'L', 'None', 'AllRounder', '.'),
('CMRCE', 'CMRCE_P_02', '.', 'R', 'None', 'AllRounder', '.'),
('CMRCE', 'CMRCE_P_03', '.', 'R', 'None', 'Keeper', '.'),
('CMRCE', 'CMRCE_P_04', '.', 'R', 'F', 'AllRounder', '.'),
('CMRCE', 'CMRCE_P_05', '.', 'R', 'None', 'AllRounder', '.'),
('CMRCE', 'CMRCE_P_06', '.', 'R', 'F', 'AllRounder', '.'),
('CMRCE', 'CMRCE_P_07', '.', 'R', 'None', 'AllRounder', '.'),
('CMRCE', 'CMRCE_P_08', '.', 'R', 'S', 'AllRounder', '.'),
('CMRCE', 'CMRCE_P_09', '.', 'R', 'M', 'AllRounder', '.'),
('CMRCE', 'CMRCE_P_10', '.', 'R', 'S', 'AllRounder', '.'),
('CMRCE', 'CMRCE_P_11', '.', 'R', 'M', 'AllRounder', '.'),
('CMRCE', 'CMRCE_P_12', '.', 'E', 'None', 'AllRounder', '.'),
('CMRCE', 'CMRCE_P_13', '.', 'E', 'None', 'AllRounder', '.'),
('CMRCE', 'CMRCE_P_14', '.', 'E', 'None', 'AllRounder', '.'),
('CMRCE', 'CMRCE_P_15', '.', 'E', 'None', 'AllRounder', '.'),
('CMRIT', 'CMRIT_P_01', '.', 'L', 'None', 'AllRounder', '.'),
('CMRIT', 'CMRIT_P_02', '.', 'R', 'None', 'AllRounder', '.'),
('CMRIT', 'CMRIT_P_03', '.', 'R', 'None', 'Keeper', '.'),
('CMRIT', 'CMRIT_P_04', '.', 'R', 'F', 'AllRounder', '.'),
('CMRIT', 'CMRIT_P_05', '.', 'R', 'None', 'AllRounder', '.'),
('CMRIT', 'CMRIT_P_06', '.', 'R', 'F', 'AllRounder', '.'),
('CMRIT', 'CMRIT_P_07', '.', 'R', 'None', 'AllRounder', '.'),
('CMRIT', 'CMRIT_P_08', '.', 'R', 'S', 'AllRounder', '.'),
('CMRIT', 'CMRIT_P_09', '.', 'R', 'M', 'AllRounder', '.'),
('CMRIT', 'CMRIT_P_10', '.', 'R', 'S', 'AllRounder', '.'),
('CMRIT', 'CMRIT_P_11', '.', 'R', 'M', 'AllRounder', '.'),
('CMRIT', 'CMRIT_P_12', '.', 'E', 'None', 'AllRounder', '.'),
('CMRIT', 'CMRIT_P_13', '.', 'E', 'None', 'AllRounder', '.'),
('CMRIT', 'CMRIT_P_14', '.', 'E', 'None', 'AllRounder', '.'),
('CMRIT', 'CMRIT_P_15', '.', 'E', 'None', 'AllRounder', '.'),
('GITUH', 'GITUH_P_01', '.', 'L', 'None', 'AllRounder', '.'),
('GITUH', 'GITUH_P_02', '.', 'R', 'None', 'AllRounder', '.'),
('GITUH', 'GITUH_P_03', '.', 'R', 'None', 'Keeper', '.'),
('GITUH', 'GITUH_P_04', '.', 'R', 'F', 'AllRounder', '.'),
('GITUH', 'GITUH_P_05', '.', 'R', 'None', 'AllRounder', '.'),
('GITUH', 'GITUH_P_06', '.', 'R', 'F', 'AllRounder', '.'),
('GITUH', 'GITUH_P_07', '.', 'R', 'None', 'AllRounder', '.'),
('GITUH', 'GITUH_P_08', '.', 'R', 'S', 'AllRounder', '.'),
('GITUH', 'GITUH_P_09', '.', 'R', 'M', 'AllRounder', '.'),
('GITUH', 'GITUH_P_10', '.', 'R', 'S', 'AllRounder', '.'),
('GITUH', 'GITUH_P_11', '.', 'R', 'M', 'AllRounder', '.'),
('GITUH', 'GITUH_P_12', '.', 'E', 'None', 'AllRounder', '.'),
('GITUH', 'GITUH_P_13', '.', 'E', 'None', 'AllRounder', '.'),
('GITUH', 'GITUH_P_14', '.', 'E', 'None', 'AllRounder', '.'),
('GITUH', 'GITUH_P_15', '.', 'E', 'None', 'AllRounder', '.'),
('JITSN', 'JITSN_P_01', '.', 'L', 'None', 'AllRounder', '.'),
('JITSN', 'JITSN_P_02', '.', 'R', 'None', 'AllRounder', '.'),
('JITSN', 'JITSN_P_03', '.', 'R', 'None', 'Keeper', '.'),
('JITSN', 'JITSN_P_04', '.', 'R', 'F', 'AllRounder', '.'),
('JITSN', 'JITSN_P_05', '.', 'R', 'None', 'AllRounder', '.'),
('JITSN', 'JITSN_P_06', '.', 'R', 'F', 'AllRounder', '.'),
('JITSN', 'JITSN_P_07', '.', 'R', 'None', 'AllRounder', '.'),
('JITSN', 'JITSN_P_08', '.', 'R', 'S', 'AllRounder', '.'),
('JITSN', 'JITSN_P_09', '.', 'R', 'M', 'AllRounder', '.'),
('JITSN', 'JITSN_P_10', '.', 'R', 'S', 'AllRounder', '.'),
('JITSN', 'JITSN_P_11', '.', 'R', 'M', 'AllRounder', '.'),
('JITSN', 'JITSN_P_12', '.', 'E', 'None', 'AllRounder', '.'),
('JITSN', 'JITSN_P_13', '.', 'E', 'None', 'AllRounder', '.'),
('JITSN', 'JITSN_P_14', '.', 'E', 'None', 'AllRounder', '.'),
('JITSN', 'JITSN_P_15', '.', 'E', 'None', 'AllRounder', '.'),
('JNETK', 'JNETK_P_01', '.', 'L', 'None', 'AllRounder', '.'),
('JNETK', 'JNETK_P_02', '.', 'R', 'None', 'AllRounder', '.'),
('JNETK', 'JNETK_P_03', '.', 'R', 'None', 'Keeper', '.'),
('JNETK', 'JNETK_P_04', '.', 'R', 'F', 'AllRounder', '.'),
('JNETK', 'JNETK_P_05', '.', 'R', 'None', 'AllRounder', '.'),
('JNETK', 'JNETK_P_06', '.', 'R', 'F', 'AllRounder', '.'),
('JNETK', 'JNETK_P_07', '.', 'R', 'None', 'AllRounder', '.'),
('JNETK', 'JNETK_P_08', '.', 'R', 'S', 'AllRounder', '.'),
('JNETK', 'JNETK_P_09', '.', 'R', 'M', 'AllRounder', '.'),
('JNETK', 'JNETK_P_10', '.', 'R', 'S', 'AllRounder', '.'),
('JNETK', 'JNETK_P_11', '.', 'R', 'M', 'AllRounder', '.'),
('JNETK', 'JNETK_P_12', '.', 'E', 'None', 'AllRounder', '.'),
('JNETK', 'JNETK_P_13', '.', 'E', 'None', 'AllRounder', '.'),
('JNETK', 'JNETK_P_14', '.', 'E', 'None', 'AllRounder', '.'),
('JNETK', 'JNETK_P_15', '.', 'E', 'None', 'AllRounder', '.'),
('KITSK', 'KITSK_P_01', '.', 'L', 'None', 'AllRounder', '.'),
('KITSK', 'KITSK_P_02', '.', 'R', 'None', 'AllRounder', '.'),
('KITSK', 'KITSK_P_03', '.', 'R', 'None', 'Keeper', '.'),
('KITSK', 'KITSK_P_04', '.', 'R', 'F', 'AllRounder', '.'),
('KITSK', 'KITSK_P_05', '.', 'R', 'None', 'AllRounder', '.'),
('KITSK', 'KITSK_P_06', '.', 'R', 'F', 'AllRounder', '.'),
('KITSK', 'KITSK_P_07', '.', 'R', 'None', 'AllRounder', '.'),
('KITSK', 'KITSK_P_08', '.', 'R', 'S', 'AllRounder', '.'),
('KITSK', 'KITSK_P_09', '.', 'R', 'M', 'AllRounder', '.'),
('KITSK', 'KITSK_P_10', '.', 'R', 'S', 'AllRounder', '.'),
('KITSK', 'KITSK_P_11', '.', 'R', 'M', 'AllRounder', '.'),
('KITSK', 'KITSK_P_12', '.', 'E', 'None', 'AllRounder', '.'),
('KITSK', 'KITSK_P_13', '.', 'E', 'None', 'AllRounder', '.'),
('KITSK', 'KITSK_P_14', '.', 'E', 'None', 'AllRounder', '.'),
('KITSK', 'KITSK_P_15', '.', 'E', 'None', 'AllRounder', '.'),
('KITSW', 'KITSW_P_01', '.', 'L', 'None', 'AllRounder', '.'),
('KITSW', 'KITSW_P_02', '.', 'R', 'None', 'AllRounder', '.'),
('KITSW', 'KITSW_P_03', '.', 'R', 'None', 'Keeper', '.'),
('KITSW', 'KITSW_P_04', '.', 'R', 'F', 'AllRounder', '.'),
('KITSW', 'KITSW_P_05', '.', 'R', 'None', 'AllRounder', '.'),
('KITSW', 'KITSW_P_06', '.', 'R', 'F', 'AllRounder', '.'),
('KITSW', 'KITSW_P_07', '.', 'R', 'None', 'AllRounder', '.'),
('KITSW', 'KITSW_P_08', '.', 'R', 'S', 'AllRounder', '.'),
('KITSW', 'KITSW_P_09', '.', 'R', 'M', 'AllRounder', '.'),
('KITSW', 'KITSW_P_10', '.', 'R', 'S', 'AllRounder', '.'),
('KITSW', 'KITSW_P_11', '.', 'R', 'M', 'AllRounder', '.'),
('KITSW', 'KITSW_P_12', '.', 'E', 'None', 'AllRounder', '.'),
('KITSW', 'KITSW_P_13', '.', 'E', 'None', 'AllRounder', '.'),
('KITSW', 'KITSW_P_14', '.', 'E', 'None', 'AllRounder', '.'),
('KITSW', 'KITSW_P_15', '.', 'E', 'None', 'AllRounder', '.'),
('KLUGU', 'KLUGU_P_01', '.', 'L', 'None', 'AllRounder', '.'),
('KLUGU', 'KLUGU_P_02', '.', 'R', 'None', 'AllRounder', '.'),
('KLUGU', 'KLUGU_P_03', '.', 'R', 'None', 'Keeper', '.'),
('KLUGU', 'KLUGU_P_04', '.', 'R', 'F', 'AllRounder', '.'),
('KLUGU', 'KLUGU_P_05', '.', 'R', 'None', 'AllRounder', '.'),
('KLUGU', 'KLUGU_P_06', '.', 'R', 'F', 'AllRounder', '.'),
('KLUGU', 'KLUGU_P_07', '.', 'R', 'None', 'AllRounder', '.'),
('KLUGU', 'KLUGU_P_08', '.', 'R', 'S', 'AllRounder', '.'),
('KLUGU', 'KLUGU_P_09', '.', 'R', 'M', 'AllRounder', '.'),
('KLUGU', 'KLUGU_P_10', '.', 'R', 'S', 'AllRounder', '.'),
('KLUGU', 'KLUGU_P_11', '.', 'R', 'M', 'AllRounder', '.'),
('KLUGU', 'KLUGU_P_12', '.', 'E', 'None', 'AllRounder', '.'),
('KLUGU', 'KLUGU_P_13', '.', 'E', 'None', 'AllRounder', '.'),
('KLUGU', 'KLUGU_P_14', '.', 'E', 'None', 'AllRounder', '.'),
('KLUGU', 'KLUGU_P_15', '.', 'E', 'None', 'AllRounder', '.'),
('KUCET', 'KUCET_P_01', '.', 'L', 'None', 'AllRounder', '.'),
('KUCET', 'KUCET_P_02', '.', 'R', 'None', 'AllRounder', '.'),
('KUCET', 'KUCET_P_03', '.', 'R', 'None', 'Keeper', '.'),
('KUCET', 'KUCET_P_04', '.', 'R', 'F', 'AllRounder', '.'),
('KUCET', 'KUCET_P_05', '.', 'R', 'None', 'AllRounder', '.'),
('KUCET', 'KUCET_P_06', '.', 'R', 'F', 'AllRounder', '.'),
('KUCET', 'KUCET_P_07', '.', 'R', 'None', 'AllRounder', '.'),
('KUCET', 'KUCET_P_08', '.', 'R', 'S', 'AllRounder', '.'),
('KUCET', 'KUCET_P_09', '.', 'R', 'M', 'AllRounder', '.'),
('KUCET', 'KUCET_P_10', '.', 'R', 'S', 'AllRounder', '.'),
('KUCET', 'KUCET_P_11', '.', 'R', 'M', 'AllRounder', '.'),
('KUCET', 'KUCET_P_12', '.', 'E', 'None', 'AllRounder', '.'),
('KUCET', 'KUCET_P_13', '.', 'E', 'None', 'AllRounder', '.'),
('KUCET', 'KUCET_P_14', '.', 'E', 'None', 'AllRounder', '.'),
('KUCET', 'KUCET_P_15', '.', 'E', 'None', 'AllRounder', '.'),
('NITWG', 'NITWG_P_01', '.', 'L', 'None', 'AllRounder', '.'),
('NITWG', 'NITWG_P_02', '.', 'R', 'None', 'AllRounder', '.'),
('NITWG', 'NITWG_P_03', '.', 'R', 'None', 'Keeper', '.'),
('NITWG', 'NITWG_P_04', '.', 'R', 'F', 'AllRounder', '.'),
('NITWG', 'NITWG_P_05', '.', 'R', 'None', 'AllRounder', '.'),
('NITWG', 'NITWG_P_06', '.', 'R', 'F', 'AllRounder', '.'),
('NITWG', 'NITWG_P_07', '.', 'R', 'None', 'AllRounder', '.'),
('NITWG', 'NITWG_P_08', '.', 'R', 'S', 'AllRounder', '.'),
('NITWG', 'NITWG_P_09', '.', 'R', 'M', 'AllRounder', '.'),
('NITWG', 'NITWG_P_10', '.', 'R', 'S', 'AllRounder', '.'),
('NITWG', 'NITWG_P_11', '.', 'R', 'M', 'AllRounder', '.'),
('NITWG', 'NITWG_P_12', '.', 'E', 'None', 'AllRounder', '.'),
('NITWG', 'NITWG_P_13', '.', 'E', 'None', 'AllRounder', '.'),
('NITWG', 'NITWG_P_14', '.', 'E', 'None', 'AllRounder', '.'),
('NITWG', 'NITWG_P_15', '.', 'E', 'None', 'AllRounder', '.'),
('SBITK', 'SBITK_P_01', '.', 'L', 'None', 'AllRounder', '.'),
('SBITK', 'SBITK_P_02', '.', 'R', 'None', 'AllRounder', '.'),
('SBITK', 'SBITK_P_03', '.', 'R', 'None', 'Keeper', '.'),
('SBITK', 'SBITK_P_04', '.', 'R', 'F', 'AllRounder', '.'),
('SBITK', 'SBITK_P_05', '.', 'R', 'None', 'AllRounder', '.'),
('SBITK', 'SBITK_P_06', '.', 'R', 'F', 'AllRounder', '.'),
('SBITK', 'SBITK_P_07', '.', 'R', 'None', 'AllRounder', '.'),
('SBITK', 'SBITK_P_08', '.', 'R', 'S', 'AllRounder', '.'),
('SBITK', 'SBITK_P_09', '.', 'R', 'M', 'AllRounder', '.'),
('SBITK', 'SBITK_P_10', '.', 'R', 'S', 'AllRounder', '.'),
('SBITK', 'SBITK_P_11', '.', 'R', 'M', 'AllRounder', '.'),
('SBITK', 'SBITK_P_12', '.', 'E', 'None', 'AllRounder', '.'),
('SBITK', 'SBITK_P_13', '.', 'E', 'None', 'AllRounder', '.'),
('SBITK', 'SBITK_P_14', '.', 'E', 'None', 'AllRounder', '.'),
('SBITK', 'SBITK_P_15', '.', 'E', 'None', 'AllRounder', '.'),
('SCCET', 'SCCET_P_01', '.', 'L', 'None', 'AllRounder', '.'),
('SCCET', 'SCCET_P_02', '.', 'R', 'None', 'AllRounder', '.'),
('SCCET', 'SCCET_P_03', '.', 'R', 'None', 'Keeper', '.'),
('SCCET', 'SCCET_P_04', '.', 'R', 'F', 'AllRounder', '.'),
('SCCET', 'SCCET_P_05', '.', 'R', 'None', 'AllRounder', '.'),
('SCCET', 'SCCET_P_06', '.', 'R', 'F', 'AllRounder', '.'),
('SCCET', 'SCCET_P_07', '.', 'R', 'None', 'AllRounder', '.'),
('SCCET', 'SCCET_P_08', '.', 'R', 'S', 'AllRounder', '.'),
('SCCET', 'SCCET_P_09', '.', 'R', 'M', 'AllRounder', '.'),
('SCCET', 'SCCET_P_10', '.', 'R', 'S', 'AllRounder', '.'),
('SCCET', 'SCCET_P_11', '.', 'R', 'M', 'AllRounder', '.'),
('SCCET', 'SCCET_P_12', '.', 'E', 'None', 'AllRounder', '.'),
('SCCET', 'SCCET_P_13', '.', 'E', 'None', 'AllRounder', '.'),
('SCCET', 'SCCET_P_14', '.', 'E', 'None', 'AllRounder', '.'),
('SCCET', 'SCCET_P_15', '.', 'E', 'None', 'AllRounder', '.'),
('SRECW', 'SRECW_P_01', '.', 'L', 'None', 'AllRounder', '.'),
('SRECW', 'SRECW_P_02', '.', 'R', 'None', 'AllRounder', '.'),
('SRECW', 'SRECW_P_03', '.', 'R', 'None', 'Keeper', '.'),
('SRECW', 'SRECW_P_04', '.', 'R', 'F', 'AllRounder', '.'),
('SRECW', 'SRECW_P_05', '.', 'R', 'None', 'AllRounder', '.'),
('SRECW', 'SRECW_P_06', '.', 'R', 'F', 'AllRounder', '.'),
('SRECW', 'SRECW_P_07', '.', 'R', 'None', 'AllRounder', '.'),
('SRECW', 'SRECW_P_08', '.', 'R', 'S', 'AllRounder', '.'),
('SRECW', 'SRECW_P_09', '.', 'R', 'M', 'AllRounder', '.'),
('SRECW', 'SRECW_P_10', '.', 'R', 'S', 'AllRounder', '.'),
('SRECW', 'SRECW_P_11', '.', 'R', 'M', 'AllRounder', '.'),
('SRECW', 'SRECW_P_12', '.', 'E', 'None', 'AllRounder', '.'),
('SRECW', 'SRECW_P_13', '.', 'E', 'None', 'AllRounder', '.'),
('SRECW', 'SRECW_P_14', '.', 'E', 'None', 'AllRounder', '.'),
('SRECW', 'SRECW_P_15', '.', 'E', 'None', 'AllRounder', '.'),
('SVCEW', 'SVCEW_P_01', '.', 'L', 'None', 'AllRounder', '.'),
('SVCEW', 'SVCEW_P_02', '.', 'R', 'None', 'AllRounder', '.'),
('SVCEW', 'SVCEW_P_03', '.', 'R', 'None', 'Keeper', '.'),
('SVCEW', 'SVCEW_P_04', '.', 'R', 'F', 'AllRounder', '.'),
('SVCEW', 'SVCEW_P_05', '.', 'R', 'None', 'AllRounder', '.'),
('SVCEW', 'SVCEW_P_06', '.', 'R', 'F', 'AllRounder', '.'),
('SVCEW', 'SVCEW_P_07', '.', 'R', 'None', 'AllRounder', '.'),
('SVCEW', 'SVCEW_P_08', '.', 'R', 'S', 'AllRounder', '.'),
('SVCEW', 'SVCEW_P_09', '.', 'R', 'M', 'AllRounder', '.'),
('SVCEW', 'SVCEW_P_10', '.', 'R', 'S', 'AllRounder', '.'),
('SVCEW', 'SVCEW_P_11', '.', 'R', 'M', 'AllRounder', '.'),
('SVCEW', 'SVCEW_P_12', '.', 'E', 'None', 'AllRounder', '.'),
('SVCEW', 'SVCEW_P_13', '.', 'E', 'None', 'AllRounder', '.'),
('SVCEW', 'SVCEW_P_14', '.', 'E', 'None', 'AllRounder', '.'),
('SVCEW', 'SVCEW_P_15', '.', 'E', 'None', 'AllRounder', '.'),
('THECH', 'THECH_P_01', '.', 'L', 'None', 'AllRounder', '.'),
('THECH', 'THECH_P_02', '.', 'R', 'None', 'AllRounder', '.'),
('THECH', 'THECH_P_03', '.', 'R', 'None', 'Keeper', '.'),
('THECH', 'THECH_P_04', '.', 'R', 'F', 'AllRounder', '.'),
('THECH', 'THECH_P_05', '.', 'R', 'None', 'AllRounder', '.'),
('THECH', 'THECH_P_06', '.', 'R', 'F', 'AllRounder', '.'),
('THECH', 'THECH_P_07', '.', 'R', 'None', 'AllRounder', '.'),
('THECH', 'THECH_P_08', '.', 'R', 'S', 'AllRounder', '.'),
('THECH', 'THECH_P_09', '.', 'R', 'M', 'AllRounder', '.'),
('THECH', 'THECH_P_10', '.', 'R', 'S', 'AllRounder', '.'),
('THECH', 'THECH_P_11', '.', 'R', 'M', 'AllRounder', '.'),
('THECH', 'THECH_P_12', '.', 'E', 'None', 'AllRounder', '.'),
('THECH', 'THECH_P_13', '.', 'E', 'None', 'AllRounder', '.'),
('THECH', 'THECH_P_14', '.', 'E', 'None', 'AllRounder', '.'),
('THECH', 'THECH_P_15', '.', 'E', 'None', 'AllRounder', '.'),
('TPCEW', 'TPCEW_P_01', '.', 'L', 'None', 'AllRounder', '.'),
('TPCEW', 'TPCEW_P_02', '.', 'R', 'None', 'AllRounder', '.'),
('TPCEW', 'TPCEW_P_03', '.', 'R', 'None', 'Keeper', '.'),
('TPCEW', 'TPCEW_P_04', '.', 'R', 'F', 'AllRounder', '.'),
('TPCEW', 'TPCEW_P_05', '.', 'R', 'None', 'AllRounder', '.'),
('TPCEW', 'TPCEW_P_06', '.', 'R', 'F', 'AllRounder', '.'),
('TPCEW', 'TPCEW_P_07', '.', 'R', 'None', 'AllRounder', '.'),
('TPCEW', 'TPCEW_P_08', '.', 'R', 'S', 'AllRounder', '.'),
('TPCEW', 'TPCEW_P_09', '.', 'R', 'M', 'AllRounder', '.'),
('TPCEW', 'TPCEW_P_10', '.', 'R', 'S', 'AllRounder', '.'),
('TPCEW', 'TPCEW_P_11', '.', 'R', 'M', 'AllRounder', '.'),
('TPCEW', 'TPCEW_P_12', '.', 'E', 'None', 'AllRounder', '.'),
('TPCEW', 'TPCEW_P_13', '.', 'E', 'None', 'AllRounder', '.'),
('TPCEW', 'TPCEW_P_14', '.', 'E', 'None', 'AllRounder', '.'),
('TPCEW', 'TPCEW_P_15', '.', 'E', 'None', 'AllRounder', '.'),
('VJITH', 'VJITH_P_01', '.', 'L', 'None', 'AllRounder', '.'),
('VJITH', 'VJITH_P_02', '.', 'R', 'None', 'AllRounder', '.'),
('VJITH', 'VJITH_P_03', '.', 'R', 'None', 'Keeper', '.'),
('VJITH', 'VJITH_P_04', '.', 'R', 'F', 'AllRounder', '.'),
('VJITH', 'VJITH_P_05', '.', 'R', 'None', 'AllRounder', '.'),
('VJITH', 'VJITH_P_06', '.', 'R', 'F', 'AllRounder', '.'),
('VJITH', 'VJITH_P_07', '.', 'R', 'None', 'AllRounder', '.'),
('VJITH', 'VJITH_P_08', '.', 'R', 'S', 'AllRounder', '.'),
('VJITH', 'VJITH_P_09', '.', 'R', 'M', 'AllRounder', '.'),
('VJITH', 'VJITH_P_10', '.', 'R', 'S', 'AllRounder', '.'),
('VJITH', 'VJITH_P_11', '.', 'R', 'M', 'AllRounder', '.'),
('VJITH', 'VJITH_P_12', '.', 'E', 'None', 'AllRounder', '.'),
('VJITH', 'VJITH_P_13', '.', 'E', 'None', 'AllRounder', '.'),
('VJITH', 'VJITH_P_14', '.', 'E', 'None', 'AllRounder', '.'),
('VJITH', 'VJITH_P_15', '.', 'E', 'None', 'AllRounder', '.');

-- --------------------------------------------------------

--
-- Table structure for table `teamid`
--

CREATE TABLE `teamid` (
  `sno` int(2) NOT NULL,
  `teamid` varchar(20) NOT NULL,
  `collegename` varchar(80) NOT NULL,
  `state` varchar(20) NOT NULL,
  `district` varchar(20) DEFAULT NULL,
  `location` text,
  `pincode` varchar(10) DEFAULT NULL,
  `coachname` varchar(30) DEFAULT NULL,
  `coachmobile` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teamid`
--

INSERT INTO `teamid` (`sno`, `teamid`, `collegename`, `state`, `district`, `location`, `pincode`, `coachname`, `coachmobile`) VALUES
(1, 'SRECW', 'SR Engineering College', 'Ananthasagar', 'Warangal', '.', '.', '.', '.'),
(2, 'JITSN', 'Jayamukhi ITS', '.', 'Narsampet', '.', '.', '.', '.'),
(3, 'KUCET', 'Kakatiya University College of Engineering Technology', '.', 'Warangal', '.', '.', '.', '.'),
(4, 'CMRIT', 'CMR Institute of Technology', '.', 'Hyderabad', '.', '.', '.', '.'),
(5, 'AUROH', 'Aurora Enginering College', 'Uppal', 'Hyderabad', '.', '.', '.', '.'),
(6, 'KITSW', 'Kakatiya Institute of Technology & Science', 'Erragattu', 'Warangal', '.', '.', '.', '.'),
(7, 'BITSN', 'Balaji Institute of Technology & Science', 'Narsampet', 'Warangal', '.', '.', '.', '.'),
(8, 'THECH', 'Thirumala Engineering College', '.', 'Hyderabad', '.', '.', '.', '.'),
(9, 'TPCEW', 'Talla Padmavathi College of Engineering', '.', 'Warangal', '.', '.', '.', '.'),
(10, 'SVCEW', 'SV College of Engineering', '.', 'Tirupathi', '.', '.', '.', '.'),
(11, 'ADECP', 'Admes Engineering College', 'Palvancha', 'Khammam', '.', '.', '.', '.'),
(12, 'KITSK', 'K Institute of Technology & Science', '.', 'Khammam', '.', '.', '.', '.'),
(13, 'JNETK', 'Jawaharlal Nehru Engineering & Technology', '.', 'Kerala', '.', '.', '.', '.'),
(14, 'VJITH', 'VJ Institute of Technology', '.', 'Hyderabad', '.', '.', '.', '.'),
(15, 'SCCET', 'Sri Chaitanya College of Engineering & Technology', '.', 'Karimnagar', '.', '.', '.', '.'),
(16, 'KLUGU', 'KL University', '.', 'Guntur', '.', '.', '.', '.'),
(17, 'CMRCE', 'CMR College of Engineering', '.', 'Hyderabad', '.', '.', '.', '.'),
(18, 'NITWG', 'National Institute of Technology', '.', 'Warangal', '.', '.', '.', '.'),
(19, 'SBITK', 'SB Institute of Technology', '.', 'Khammam', '.', '.', '.', '.'),
(20, 'GITUH', 'Gitam University', '.', 'Hyderabad', '.', '.', '.', '.'),
(21, 'AUSTR', 'Aurora School of Technology & Research', '.', 'Hyderabad', '.', '.', '.', '.'),
(22, 'SVSIT', 'SVS Institute of Technology & Science', 'Bheemaram', 'Warangal', '.', '.', '.', '.'),
(23, 'SMVIT', 'SMV Institute of Technology', '.', 'Pondicherry', '.', '.', '.', '.'),
(24, 'SRMUC', 'SRM University', '.', 'Chennai', '.', '.', '.', '.'),
(25, 'CJITJ', 'Chritsu Jyothi Institute of Technology', '.', 'Jangaon', '.', '.', '.', '.'),
(26, 'VAGCE', 'Vaagdevi College of Engineering', 'Bollikunta', 'Warangal', '.', '.', '.', '.'),
(27, 'KLRCE', 'KLR College of Engineering & Technology', 'Palvancha', 'Khammam', '.', '.', '.', '.'),
(28, 'CMRTC', 'CMR Technology Center', '.', 'Hyderabad', '.', '.', '.', '.'),
(29, 'GCETH', 'Geethanjal College of Engineering & Technology', '.', 'Hyderabad', '.', '.', '.', '.'),
(30, 'GNITH', 'GN Institute of Technology', '.', 'Hyderabad', '.', '.', '.', '.'),
(31, 'SSITS', 'Sai Spruthi Institute of Technology & Science', '.', 'Sathupally', '.', '.', '.', '.'),
(32, 'MLRIT', 'Malla Reddy Institute of Technology', '.', 'Hyderabad', '.', '.', '.', '.'),
(33, 'MRECH', 'Malla Reddy Engineering College', '.', 'Hyderabad', '.', '.', '.', '.'),
(34, 'CMRCT', 'CMR College of Engineering & Technology', '.', 'Hyderabad', '.', '.', '.', '.'),
(35, 'MVITP', 'MV Institute of Technology', '.', 'Pondicherry', '.', '.', '.', '.'),
(36, 'CBITH', 'CB Institute of Technology', '.', 'Hyderabad', '.', '.', '.', '.'),
(37, 'MRCET', 'MR College of Engineering Technology', '.', 'Hyderabad', '.', '.', '.', '.'),
(38, 'MRIET', 'MR Institute of Engineering Technology', '.', 'Hyderabad', '.', '.', '.', '.'),
(39, 'CVRCE', 'CVR College of Engineering', '.', 'Hyderabad', '.', '.', '.', '.'),
(40, 'STPEC', 'St. Peter''s Engineering College', '.', 'Hyderabad', '.', '.', '.', '.'),
(41, 'VRCEH', 'Vardaman College of Engineering', '.', 'Hyderabad', '.', '.', '.', '.'),
(42, 'SNITS', 'Srinidhi Institute of Technology & Science', '.', 'Hyderabad', '.', '.', '.', '.'),
(43, 'VNRVJ', 'VNR VJ Institute of Engineering Technology', 'Bachupally', 'Hyderabad', '.', '.', '.', '.'),
(44, 'SVITH', 'SV Institute of Technology', '.', 'Secunderabad', '.', '.', '.', '.'),
(45, 'MVSRE', 'MVSR Engineering College', '.', 'Hyderabad', '.', '.', '.', '.'),
(46, 'SRIIT', 'SR International Institute of Technology', 'Ghatkesar', 'Ranga Reddy', '.', '.', '.', '.');

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

--
-- Indexes for table `teamid`
--
ALTER TABLE `teamid`
  ADD PRIMARY KEY (`sno`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
