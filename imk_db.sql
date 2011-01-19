-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 19, 2011 at 05:19 PM
-- Server version: 5.1.37
-- PHP Version: 5.2.11

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `imk_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `MsMateri`
--

CREATE TABLE `MsMateri` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `MsMateri`
--

INSERT INTO `MsMateri` VALUES(1, 'Interaksi Manusia dan Komputer');
INSERT INTO `MsMateri` VALUES(2, 'Web Programming');

-- --------------------------------------------------------

--
-- Table structure for table `MsMember`
--

CREATE TABLE `MsMember` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `forumcounter` int(11) DEFAULT NULL,
  `matericounter` int(11) DEFAULT NULL,
  `result` varchar(30) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 DATA DIRECTORY='./imk_db/' INDEX DIRECTORY='./imk_db/' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `MsMember`
--

INSERT INTO `MsMember` VALUES(1, 'ariauakbar', 'ariau', 7, 8, 'Good', 80);

-- --------------------------------------------------------

--
-- Table structure for table `MsThread`
--

CREATE TABLE `MsThread` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` tinytext,
  `content` text,
  `member_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `MsThread`
--

INSERT INTO `MsThread` VALUES(1, 'Pengertian IMK', 'Adalah ilmu yang mempelejari', 1);
INSERT INTO `MsThread` VALUES(2, 'Siapa yang belum dapet kelompok IMK ?', 'Gue belum dapet kelompok nih ?', 1);
INSERT INTO `MsThread` VALUES(3, 'Tugas kapan dikumpul ?', 'Kemaren ada yang bilang tugas kumpul tanggal 27 bener gak ?', NULL);
INSERT INTO `MsThread` VALUES(4, 'test', 'test', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `MsTopic`
--

CREATE TABLE `MsTopic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topic` varchar(100) DEFAULT NULL,
  `materi_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `MsTopic`
--

INSERT INTO `MsTopic` VALUES(1, 'Usability', 1);
INSERT INTO `MsTopic` VALUES(2, 'Interface Desain', 1);
INSERT INTO `MsTopic` VALUES(3, 'Dasar JSP', 2);
