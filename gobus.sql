-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2017 at 08:22 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gobus`
--

-- --------------------------------------------------------

--
-- Table structure for table `allbus`
--

CREATE TABLE `allbus` (
  `busid` varchar(6) NOT NULL,
  `seats` int(11) NOT NULL,
  `type` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `allbus`
--

INSERT INTO `allbus` (`busid`, `seats`, `type`) VALUES
('kg1', 40, 's'),
('kg10', 59, 'n'),
('kg11', 40, 's'),
('kg12', 40, 's'),
('kg13', 40, 's'),
('kg14', 59, 'n'),
('kg15', 42, 'n'),
('kg16', 54, 'n'),
('kg17', 54, 'n'),
('kg18', 59, 'n'),
('kg19', 40, 's'),
('kg2', 59, 'n'),
('kg20', 59, 'n'),
('kg21', 40, 's'),
('kg22', 59, 'n'),
('kg23', 59, 'n'),
('kg24', 59, 'n'),
('kg25', 42, 'n'),
('kg26', 54, 'n'),
('kg27', 54, 'n'),
('kg28', 59, 'n'),
('kg29', 40, 's'),
('kg3', 59, 'n'),
('kg30', 59, 'n'),
('kg31', 59, 'n'),
('kg4', 59, 'n'),
('kg5', 42, 'n'),
('kg6', 54, 'n'),
('kg7', 54, 'n'),
('kg8', 59, 'n'),
('kg9', 40, 's');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `comid` int(11) NOT NULL,
  `busno` varchar(8) DEFAULT NULL,
  `complaint` varchar(200) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`comid`, `busno`, `complaint`, `status`) VALUES
(1, 'NA1251', 'chamika gahuwa', 'new'),
(2, '', 'high speed', 'new'),
(3, '', 'high speed', 'new'),
(4, '', ',lk,lkk,', 'new');

-- --------------------------------------------------------

--
-- Table structure for table `fareindex`
--

CREATE TABLE `fareindex` (
  `fid` int(11) NOT NULL,
  `val` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fareindex`
--

INSERT INTO `fareindex` (`fid`, `val`) VALUES
(0, 0),
(1, 10),
(2, 13),
(3, 17),
(4, 21),
(5, 25),
(6, 29),
(7, 34),
(8, 35),
(9, 38),
(10, 40),
(11, 42),
(12, 45),
(13, 48),
(14, 50),
(15, 53),
(16, 55),
(17, 57),
(18, 60),
(19, 62),
(20, 64),
(21, 67),
(22, 69),
(23, 71),
(24, 73),
(25, 76),
(26, 78),
(27, 81),
(28, 83),
(29, 86),
(30, 88),
(31, 90),
(32, 93),
(33, 95),
(34, 98),
(35, 100),
(36, 102),
(37, 104),
(38, 107),
(39, 109),
(40, 112),
(41, 114),
(42, 117),
(43, 119),
(44, 121),
(45, 123),
(46, 126),
(47, 128),
(48, 131),
(49, 133),
(50, 135),
(51, 138),
(52, 140),
(53, 143),
(54, 145),
(55, 148),
(56, 150),
(57, 152),
(58, 154),
(59, 157),
(60, 159);

-- --------------------------------------------------------

--
-- Table structure for table `nfare`
--

CREATE TABLE `nfare` (
  `rid` varchar(10) NOT NULL,
  `ivalue` int(11) NOT NULL,
  `dest` varchar(25) NOT NULL,
  `eta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nfare`
--

INSERT INTO `nfare` (`rid`, `ivalue`, `dest`, `eta`) VALUES
('1-1-ck', 1, 'maligawatta', 8),
('1-1-ck', 2, 'kelanithissa', 15),
('1-1-ck', 3, '4 kanuwa', 22),
('1-1-ck', 4, 'thorana junc', 25),
('1-1-ck', 5, 'kelani campus', 30),
('1-1-ck', 6, 'kiribathgoda', 40),
('1-1-ck', 7, 'mahara', 45),
('1-1-ck', 8, 'kadawatha', 48),
('1-1-ck', 9, 'gonahena', 50),
('1-1-ck', 10, 'idigahamula', 55),
('1-1-ck', 11, 'kirillawala', 60),
('1-1-ck', 12, 'trackmo junc', 63),
('1-1-ck', 13, 'mudungoda', 65),
('1-1-ck', 14, 'miriswatta', 70),
('1-1-ck', 15, 'yakkala', 75),
('1-1-ck', 16, 'aluthgama', 77),
('1-1-ck', 17, 'kalagedihena', 80),
('1-1-ck', 18, 'thihariya', 84),
('1-1-ck', 19, 'nittabuwa college', 87),
('1-1-ck', 20, 'nittabuwa junc', 90),
('1-1-ck', 21, 'kalalpitiya', 95),
('1-1-ck', 22, 'pasyala', 98),
('1-1-ck', 23, 'kajugama', 102),
('1-1-ck', 24, 'radavadunna', 105),
('1-1-ck', 25, 'vevaldeniya', 110),
('1-1-ck', 26, 'danowita', 113),
('1-1-ck', 27, 'dummaladeniya', 117),
('1-1-ck', 28, 'warakapola', 120),
('1-1-ck', 29, 'ambepussa', 122),
('1-1-ck', 30, 'mahena', 125),
('1-1-ck', 31, 'tholangamuwa', 127),
('1-1-ck', 32, 'gasnawa watta', 129),
('1-1-ck', 33, 'nelumdeniya', 131),
('1-1-ck', 34, 'batapothalla', 133),
('1-1-ck', 35, 'siyabalapitiya', 135),
('1-1-ck', 36, 'ballapana', 136),
('1-1-ck', 37, 'galigamuwa', 137),
('1-1-ck', 38, 'abanpitiya', 138),
('1-1-ck', 39, 'ranwala', 139),
('1-1-ck', 40, 'kegalle', 140),
('1-1-ck', 0, 'colombo', 0),
('857-av', 10, 'mahara', 250),
('857-av', 12, 'mudungoda', 200),
('1-1-kc', 0, 'kegalle', 0),
('1-1-kc', 1, 'ranwala', 2),
('1-1-kc', 2, 'abanpitiya', 4),
('1-1-kc', 3, 'galigamuwa', 5),
('1-1-kc', 4, 'ballapana', 7),
('1-1-kc', 5, 'siyabalapitiya', 9),
('1-1-kc', 6, 'batapothalla', 10),
('1-1-kc', 7, 'nelumdeniya', 11),
('1-1-kc', 8, 'gasnawa watta', 13),
('1-1-kc', 9, 'tholangamuwa', 15),
('1-1-kc', 10, 'mahena', 17),
('1-1-kc', 11, 'ambepussa', 19),
('1-1-kc', 12, 'warakapola', 20),
('1-1-kc', 13, 'dummaladeniya', 22),
('1-1-kc', 14, 'danowita', 25),
('1-1-kc', 15, 'vevaldeniya', 28),
('1-1-kc', 16, 'radavadunna', 33),
('1-1-kc', 17, 'kajugama', 39),
('1-1-kc', 18, 'pasyala', 42),
('1-1-kc', 19, 'kalalpitiya', 46),
('1-1-kc', 20, 'nittabuwa junc', 50),
('1-1-kc', 21, 'nittabuwa college', 54),
('1-1-kc', 22, 'thihariya', 59),
('1-1-kc', 23, 'kalagedihena', 65),
('1-1-kc', 24, 'aluthgama', 68),
('1-1-kc', 25, 'yakkala', 72),
('1-1-kc', 26, 'miriswatta', 78),
('1-1-kc', 27, 'mudungoda', 84),
('1-1-kc', 28, 'trackmo junc', 88),
('1-1-kc', 29, 'kirillawala', 93),
('1-1-kc', 30, 'idigahamula', 99),
('1-1-kc', 31, 'gonahena', 105),
('1-1-kc', 32, 'kadawatha', 110),
('1-1-kc', 33, 'mahara', 116),
('1-1-kc', 34, 'kiribathgoda', 122),
('1-1-kc', 35, 'kelani campus', 127),
('1-1-kc', 36, 'thorana junc', 130),
('1-1-kc', 37, '4 kanuwa', 132),
('1-1-kc', 38, 'kelanithissa', 135),
('1-1-kc', 39, 'maligawatta', 138),
('1-1-kc', 40, 'colombo', 140);

-- --------------------------------------------------------

--
-- Table structure for table `normtt`
--

CREATE TABLE `normtt` (
  `rid` varchar(10) NOT NULL,
  `city` varchar(25) NOT NULL,
  `duration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `normtt`
--

INSERT INTO `normtt` (`rid`, `city`, `duration`) VALUES
('1-1-ck', 'nittabuwa', 90),
('1-1-ck', 'warakapola', 120),
('1-1-ck', 'kegalle', 140),
('1-1-ck', 'galapitamada', 150),
('1-1-kc', 'warakapola', 20),
('1-1-kc', 'nittabuwa', 50),
('1-1-kc', 'colombo', 140);

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `rid` varchar(10) NOT NULL,
  `start` varchar(25) NOT NULL,
  `end` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`rid`, `start`, `end`) VALUES
('1-1-ck', 'colombo', 'kegalle'),
('1-1-kc', 'kegalle', 'colombo'),
('857-av', 'anuradhapura', 'vavuniya'),
('907-nc', 'negombo', 'chilaw');

-- --------------------------------------------------------

--
-- Table structure for table `sbooking`
--

CREATE TABLE `sbooking` (
  `busid` varchar(6) NOT NULL,
  `seatno` int(11) NOT NULL,
  `day` date DEFAULT NULL,
  `passeng` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sbus`
--

CREATE TABLE `sbus` (
  `busid` varchar(6) NOT NULL,
  `seats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `rid` varchar(25) NOT NULL,
  `timestart` time DEFAULT NULL,
  `busno` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`rid`, `timestart`, `busno`) VALUES
('1-1-ck', '06:35:00', 'kg1'),
('1-1-ck', '06:50:00', 'kg2'),
('1-1-ck', '07:05:00', 'kg3'),
('1-1-ck', '07:20:00', 'kg4'),
('1-1-ck', '07:35:00', 'kg5'),
('1-1-ck', '07:50:00', 'kg6'),
('1-1-ck', '08:05:00', 'kg7'),
('1-1-ck', '08:20:00', 'kg8'),
('1-1-ck', '08:35:00', 'kg9'),
('1-1-ck', '08:50:00', 'kg10'),
('1-1-ck', '09:05:00', 'kg11'),
('1-1-ck', '09:20:00', 'kg12'),
('1-1-ck', '09:35:00', 'kg13'),
('1-1-ck', '09:50:00', 'kg14'),
('1-1-ck', '10:05:00', 'kg15'),
('1-1-ck', '10:20:00', 'kg16'),
('1-1-ck', '10:35:00', 'kg17'),
('1-1-ck', '10:50:00', 'kg18'),
('1-1-ck', '11:05:00', 'kg19'),
('1-1-ck', '11:20:00', 'kg20'),
('1-1-ck', '11:35:00', 'kg21'),
('1-1-ck', '11:50:00', 'kg22'),
('1-1-ck', '12:05:00', 'kg23'),
('1-1-ck', '12:25:00', 'kg24'),
('1-1-ck', '12:45:00', 'kg25'),
('1-1-ck', '13:05:00', 'kg26'),
('1-1-ck', '13:25:00', 'kg27'),
('1-1-ck', '13:45:00', 'kg28'),
('1-1-ck', '14:00:00', 'kg29'),
('1-1-ck', '14:15:00', 'kg30'),
('1-1-ck', '14:30:00', 'kg31'),
('1-1-ck', '14:45:00', 'kg1'),
('1-1-ck', '15:00:00', 'kg2'),
('1-1-ck', '15:15:00', 'kg3'),
('1-1-ck', '15:30:00', 'kg4'),
('1-1-ck', '15:45:00', 'kg5'),
('1-1-ck', '16:00:00', 'kg6'),
('1-1-ck', '16:15:00', 'kg7'),
('1-1-ck', '16:30:00', 'kg8'),
('1-1-ck', '16:45:00', 'kg9'),
('1-1-ck', '17:05:00', 'kg10'),
('1-1-ck', '17:25:00', 'kg11'),
('1-1-ck', '17:50:00', 'kg12'),
('1-1-ck', '18:20:00', 'kg13'),
('1-1-ck', '18:45:00', 'kg14'),
('1-1-ck', '19:15:00', 'kg15'),
('1-1-ck', '19:45:00', 'kg16'),
('1-1-ck', '20:15:00', 'kg17'),
('1-1-kc', '03:40:00', 'kg1'),
('1-1-kc', '03:50:00', 'kg2'),
('1-1-kc', '04:00:00', 'kg3'),
('1-1-kc', '04:10:00', 'kg4'),
('1-1-kc', '04:20:00', 'kg5'),
('1-1-kc', '04:30:00', 'kg6'),
('1-1-kc', '04:40:00', 'kg7'),
('1-1-kc', '04:50:00', 'kg8'),
('1-1-kc', '05:00:00', 'kg9'),
('1-1-kc', '05:10:00', 'kg10'),
('1-1-kc', '05:20:00', 'kg11'),
('1-1-kc', '05:30:00', 'kg12'),
('1-1-kc', '05:45:00', 'kg13'),
('1-1-kc', '05:55:00', 'kg14'),
('1-1-kc', '06:05:00', 'kg15'),
('1-1-kc', '06:15:00', 'kg16'),
('1-1-kc', '06:25:00', 'kg17'),
('1-1-kc', '06:40:00', 'kg18'),
('1-1-kc', '06:55:00', 'kg19'),
('1-1-kc', '07:10:00', 'kg20'),
('1-1-kc', '07:25:00', 'kg21'),
('1-1-kc', '07:40:00', 'kg22'),
('1-1-kc', '07:55:00', 'kg23'),
('1-1-kc', '08:10:00', 'kg24'),
('1-1-kc', '08:30:00', 'kg25'),
('1-1-kc', '08:50:00', 'kg26'),
('1-1-kc', '09:10:00', 'kg27'),
('1-1-kc', '09:30:00', 'kg28'),
('1-1-kc', '09:50:00', 'kg29'),
('1-1-kc', '10:10:00', 'kg30'),
('1-1-kc', '10:30:00', 'kg31'),
('1-1-kc', '10:50:00', 'kg1'),
('1-1-kc', '11:10:00', 'kg2'),
('1-1-kc', '11:30:00', 'kg3'),
('1-1-kc', '11:50:00', 'kg4'),
('1-1-kc', '12:10:00', 'kg5'),
('1-1-kc', '12:30:00', 'kg6'),
('1-1-kc', '12:50:00', 'kg7'),
('1-1-kc', '13:10:00', 'kg8'),
('1-1-kc', '13:30:00', 'kg9'),
('1-1-kc', '13:50:00', 'kg10'),
('1-1-kc', '14:10:00', 'kg11'),
('1-1-kc', '14:30:00', 'kg12'),
('1-1-kc', '14:50:00', 'kg13'),
('1-1-kc', '15:10:00', 'kg14'),
('1-1-kc', '15:30:00', 'kg15'),
('1-1-kc', '15:50:00', 'kg16'),
('1-1-kc', '16:10:00', 'kg17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `uname`, `password`, `type`) VALUES
(1, 'adm1', '123', 'admin'),
(2, 'thilak', '456', 'ntc'),
(3, 'kamal', '000', 'ntc'),
(4, 'pasan7352', '111', 'bus'),
(5, 'nimal2063', '789', 'bus'),
(6, 'admin2', '321', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allbus`
--
ALTER TABLE `allbus`
  ADD PRIMARY KEY (`busid`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`comid`);

--
-- Indexes for table `fareindex`
--
ALTER TABLE `fareindex`
  ADD UNIQUE KEY `fid` (`fid`);

--
-- Indexes for table `nfare`
--
ALTER TABLE `nfare`
  ADD KEY `rid` (`rid`);

--
-- Indexes for table `normtt`
--
ALTER TABLE `normtt`
  ADD KEY `rid` (`rid`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD KEY `rid` (`rid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `uname` (`uname`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `comid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `nfare`
--
ALTER TABLE `nfare`
  ADD CONSTRAINT `nfare_ibfk_1` FOREIGN KEY (`rid`) REFERENCES `route` (`rid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `normtt`
--
ALTER TABLE `normtt`
  ADD CONSTRAINT `normtt_ibfk_1` FOREIGN KEY (`rid`) REFERENCES `route` (`rid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`rid`) REFERENCES `route` (`rid`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
