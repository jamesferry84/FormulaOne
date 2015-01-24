-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2014 at 11:07 PM
-- Server version: 5.6.15-log
-- PHP Version: 5.5.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `formulaonepredictor`
--
CREATE DATABASE IF NOT EXISTS `formulaonepredictor` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `formulaonepredictor`;

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE IF NOT EXISTS `driver` (
  `Name` varchar(100) NOT NULL,
  `Price` decimal(5,2) NOT NULL,
  `Points` int(11) NOT NULL DEFAULT '0',
  `Team` varchar(100) NOT NULL,
  `Wins` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Name`,`Team`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `driver`
--

TRUNCATE TABLE `driver`;
--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`Name`, `Price`, `Points`, `Team`, `Wins`) VALUES
('Kvyat', '9.30', 0, 'Toro Rosso', 0),
('Gutierrez', '9.35', 0, 'Sauber', 0),
('Sutil', '9.51', 0, 'Sauber', 0),
('Hulkenberg', '9.70', 0, 'Force India', 0),
('Perez', '9.76', 0, 'Force India', 0),
('Massa', '9.76', 0, 'Williams-Renault', 0),
('Maldonado', '10.35', 0, 'Lotus-Renault', 0),
('Magnussen', '10.92', 0, 'McLaren-Mercedes', 0),
('Button', '11.12', 0, 'McLaren-Mercedes', 0),
('Grosjean', '11.73', 0, 'Lotus-Renault', 0),
('Ricciardo', '13.54', 0, 'Red Bull Racing', 0),
('Raikkonen', '13.71', 0, 'Ferrari', 0),
('Rosberg', '13.72', 0, 'Mercedes', 0),
('Hamilton', '14.68', 0, 'Mercedes', 0),
('Alonso', '15.39', 0, 'Ferrari', 0),
('Vettel', '21.44', 0, 'Red Bull Racing', 0),
('Bottas', '8.61', 0, 'Williams-Renault', 0),
('Vergne', '8.61', 0, 'Toro Rosso', 0),
('Chilton', '8.44', 0, 'Marussia', 0),
('Bianchi', '8.32', 0, 'Marussia', 0),
('Kobayashi', '8.07', 0, 'Caterham', 0),
('Ericsson', '7.87', 0, 'Caterham', 0);

-- --------------------------------------------------------

--
-- Table structure for table `racecalendar`
--

CREATE TABLE IF NOT EXISTS `racecalendar` (
  `Date` date NOT NULL,
  `Country` varchar(75) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `racecalendar`
--

TRUNCATE TABLE `racecalendar`;
--
-- Dumping data for table `racecalendar`
--

INSERT INTO `racecalendar` (`Date`, `Country`) VALUES
('2014-03-16', 'Australia'),
('2014-03-30', 'Malaysia'),
('2014-04-06', 'Bahrain'),
('2014-04-20', 'China'),
('2014-05-11', 'Spain'),
('2014-05-25', 'Monaco'),
('2014-06-08', 'Canada'),
('2014-06-22', 'Austria'),
('2014-07-06', 'Great Britain'),
('2014-07-20', 'Germany'),
('2014-07-27', 'Hungary'),
('2014-08-24', 'Belgiun'),
('2014-09-07', 'Italy'),
('2014-09-21', 'Singapore'),
('2014-10-05', 'Japan'),
('2014-10-12', 'Russia'),
('2014-11-02', 'USA'),
('2014-11-09', 'Brazil'),
('2014-11-23', 'Abu Dhabi');

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

CREATE TABLE IF NOT EXISTS `submissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(75) NOT NULL,
  `driver1` varchar(100) NOT NULL,
  `driver2` varchar(100) NOT NULL,
  `constructor1` varchar(100) NOT NULL,
  `constructor2` varchar(100) NOT NULL,
  `joker` int(5) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Truncate table before insert `submissions`
--

TRUNCATE TABLE `submissions`;
--
-- Dumping data for table `submissions`
--

INSERT INTO `submissions` (`id`, `UserName`, `driver1`, `driver2`, `constructor1`, `constructor2`, `joker`, `date`) VALUES
(1, 'jamesferry84', '', '', '', '', 1, '2014-05-05 15:51:54'),
(2, 'jamesferry84', 'Raikkonen Â£13.71', 'Grosjean Â£11.73', 'Williams-Renault Â£8.79', 'Caterham Â£7.39', 1, '2014-05-05 15:53:48'),
(3, 'jamesferry84', 'Grosjean Â£11.73', 'Ricciardo Â£13.54', 'Red Bull Racing Â£21.18', 'Mercedes Â£16.32', 1, '2014-05-09 20:35:28'),
(4, 'jamesferry84', 'Please select First Driver', 'Please select Second Driver', 'Please select First Constructor', 'Please select Second Constructor', 1, '2014-05-09 21:22:51');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE IF NOT EXISTS `team` (
  `Name` varchar(100) NOT NULL,
  `Price` decimal(5,2) NOT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `team`
--

TRUNCATE TABLE `team`;
--
-- Dumping data for table `team`
--

INSERT INTO `team` (`Name`, `Price`) VALUES
('Williams-Renault', '8.79'),
('Force India', '9.75'),
('Sauber', '10.14'),
('McLaren-Mercedes', '12.37'),
('Lotus-Renault', '12.78'),
('Ferrari', '15.14'),
('Mercedes', '16.32'),
('Red Bull Racing', '21.18'),
('Torro Rosso', '8.66'),
('Marussia', '7.81'),
('Caterham', '7.39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Email` varchar(120) NOT NULL,
  `Activated` int(11) NOT NULL DEFAULT '0',
  `jokers` int(11) NOT NULL,
  `budget` decimal(5,2) NOT NULL DEFAULT '55.00',
  `points` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `UserName` (`UserName`,`Email`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Truncate table before insert `users`
--

TRUNCATE TABLE `users`;
--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `UserName`, `Password`, `Email`, `Activated`, `jokers`, `budget`, `points`) VALUES
(1, 'jamesferry84', '5f4dcc3b5aa765d61d8327deb882cf99', 'jrferry@gmail.com', 1, 0, '55.00', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
