-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 03, 2015 at 11:48 AM
-- Server version: 5.5.41-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `DBLetsMeet`
--

-- --------------------------------------------------------

--
-- Table structure for table `LMLoginUsers`
--

CREATE TABLE IF NOT EXISTS `LMLoginUsers` (
  `LMLoginId` int(11) NOT NULL AUTO_INCREMENT,
  `LMUserid` varchar(100) NOT NULL,
  `LMPassword` varchar(50) NOT NULL,
  `LMEmailAddress` varchar(150) NOT NULL,
  `LMRole` enum('0','1') NOT NULL COMMENT '0-LMSuperAdmin,1-CompanyAdmin',
  `LMLoginEnabled` tinyint(1) NOT NULL,
  `LMCreatedOn` datetime NOT NULL,
  `LMCreatedBy` varchar(100) NOT NULL,
  PRIMARY KEY (`LMLoginId`),
  UNIQUE KEY `Userid` (`LMUserid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `LMUserProfile`
--

CREATE TABLE IF NOT EXISTS `LMUserProfile` (
  `LMLoginId` int(11) NOT NULL,
  `ClientId` varchar(25) DEFAULT NULL COMMENT 'Client Id of user',
  `FirstName` varchar(50) DEFAULT NULL COMMENT 'First name of user',
  `LastName` varchar(50) DEFAULT NULL COMMENT 'Last name of user',
  `CountryName` varchar(150) DEFAULT NULL COMMENT 'Country name of user from country_details table',
  `Timezones` varchar(100) DEFAULT NULL COMMENT 'Timezones of user',
  `gmt` varchar(20) DEFAULT NULL COMMENT 'GMT hrs on the basis of timezones',
  `LMCreatedOn` datetime DEFAULT NULL,
  `Mobilenumber` varchar(255) DEFAULT NULL,
  `AlternateMobileNumber` varchar(255) DEFAULT NULL,
  `Photo` blob,
  `DOB` date DEFAULT NULL,
  `Gender` enum('M','F','O') DEFAULT NULL COMMENT 'M-Male,F-Female,O-Others',
  `Occupation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`LMLoginId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

CREATE TABLE IF NOT EXISTS `mstIndustry` (
  `Industryid` int(11) NOT NULL AUTO_INCREMENT,
  `IndustryName` varchar(200) NOT NULL,
  PRIMARY KEY (`Industryid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=59 ;

--
-- Dumping data for table `mstIndustry`
--

INSERT INTO `mstIndustry` (`Industryid`, `IndustryName`) VALUES
(1, 'Agriculture'),
(2, 'Grocery '),
(3, 'Accounting'),
(4, 'Health Care '),
(5, 'Advertising'),
(6, 'Internet Publishing '),
(7, 'Aerospace'),
(8, 'Investment Banking '),
(9, 'Aircraft'),
(10, 'Legal '),
(11, 'Airline'),
(12, 'Manufacturing '),
(13, 'Apparel & Accessories'),
(14, 'Motion Picture & Video '),
(15, 'Automotive'),
(16, 'Music '),
(17, 'Banking'),
(18, 'Newspaper Publishers '),
(19, 'Broadcasting'),
(20, 'Online Auctions '),
(21, 'Brokerage'),
(22, 'Pension Funds '),
(23, 'Biotechnology'),
(24, 'Pharmaceuticals '),
(25, 'Call Centers'),
(26, 'Private Equity '),
(27, 'Cargo Handling'),
(28, 'Publishing '),
(29, 'Chemical'),
(30, 'Real Estate '),
(31, 'Computer'),
(32, 'Retail & Wholesale '),
(33, 'Consulting'),
(34, 'Securities & Commodity Exchanges '),
(35, 'Consumer Products'),
(36, 'Service '),
(37, 'Cosmetics'),
(38, 'Soap & Detergent '),
(39, 'Defense'),
(40, 'Software '),
(41, 'Department Stores'),
(42, 'Sports '),
(43, 'Education'),
(44, 'Technology '),
(45, 'Electronics'),
(46, 'Telecommunications '),
(47, 'Energy'),
(48, 'Television '),
(49, 'Entertainment & Leisure'),
(50, 'Transportation '),
(51, 'Executive Search'),
(52, 'Trucking '),
(53, 'Financial Services'),
(54, 'Venture Capital '),
(55, 'Food'),
(56, 'Beverages'),
(57, 'Tobacco'),
(58, '');





