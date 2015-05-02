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

CREATE TABLE IF NOT EXISTS `timezones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(44) DEFAULT NULL,
  `timezone` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=141 ;

--
-- Dumping data for table `timezones`
--

INSERT INTO `timezones` (`id`, `name`, `timezone`) VALUES
(1, '(GMT-11:00) Midway Island ', 'Pacific/Midway'),
(2, '(GMT-11:00) Samoa ', 'Pacific/Samoa'),
(3, '(GMT-10:00) Hawaii ', 'Pacific/Honolulu'),
(4, '(GMT-09:00) Alaska ', 'America/Anchorage'),
(5, '(GMT-08:00) Pacific Time (US &amp; Canada) ', 'America/Los_Angeles'),
(6, '(GMT-08:00) Tijuana ', 'America/Tijuana'),
(7, '(GMT-07:00) Chihuahua ', 'America/Chihuahua'),
(8, '(GMT-07:00) La Paz ', 'America/Chihuahua'),
(9, '(GMT-07:00) Mazatlan ', 'America/Mazatlan'),
(10, '(GMT-07:00) Mountain Time (US &amp; Canada) ', 'America/Denver'),
(11, '(GMT-06:00) Central America ', 'America/Managua'),
(12, '(GMT-06:00) Central Time (US &amp; Canada) ', 'America/Chicago'),
(13, '(GMT-06:00) Guadalajara ', 'America/Mexico_City'),
(14, '(GMT-06:00) Mexico City ', 'America/Mexico_City'),
(15, '(GMT-06:00) Monterrey ', 'America/Monterrey'),
(16, '(GMT-05:00) Bogota ', 'America/Bogota'),
(17, '(GMT-05:00) Eastern Time (US &amp; Canada) ', 'America/New_York'),
(18, '(GMT-05:00) Lima ', 'America/Lima'),
(19, '(GMT-05:00) Quito ', 'America/Bogota'),
(20, '(GMT-04:00) Atlantic Time (Canada) ', 'Canada/Atlantic'),
(21, '(GMT-04:30) Caracas ', 'America/Caracas'),
(22, '(GMT-04:00) La Paz ', 'America/La_Paz'),
(23, '(GMT-04:00) Santiago ', 'America/Santiago'),
(24, '(GMT-03:30) Newfoundland ', 'America/St_Johns'),
(25, '(GMT-03:00) Brasilia ', 'America/Sao_Paulo'),
(26, '(GMT-03:00) Buenos Aires ', 'America/Argentina/Buenos_Aires'),
(27, '(GMT-03:00) Georgetown ', 'America/Argentina/Buenos_Aires'),
(28, '(GMT-03:00) Greenland ', 'America/Godthab'),
(29, '(GMT-02:00) Mid-Atlantic ', 'America/Noronha'),
(30, '(GMT-01:00) Azores ', 'Atlantic/Azores'),
(31, '(GMT-01:00) Cape Verde Is. ', 'Atlantic/Cape_Verde'),
(32, '(GMT+00:00) Casablanca ', 'Africa/Casablanca'),
(33, '(GMT+00:00) Edinburgh ', 'Europe/London'),
(34, '(GMT+00:00) Dublin ', 'Europe/Dublin'),
(35, '(GMT+00:00) Lisbon ', 'Europe/Lisbon'),
(36, '(GMT+00:00) London ', 'Europe/London'),
(37, '(GMT+00:00) Monrovia ', 'Africa/Monrovia'),
(38, '(GMT+00:00) UTC ', 'UTC'),
(39, '(GMT+01:00) Amsterdam ', 'Europe/Amsterdam'),
(40, '(GMT+01:00) Belgrade ', 'Europe/Belgrade'),
(41, '(GMT+01:00) Berlin ', 'Europe/Berlin'),
(42, '(GMT+01:00) Bern ', 'Europe/Berlin'),
(43, '(GMT+01:00) Bratislava ', 'Europe/Bratislava'),
(44, '(GMT+01:00) Brussels ', 'Europe/Brussels'),
(45, '(GMT+01:00) Budapest ', 'Europe/Budapest'),
(46, '(GMT+01:00) Copenhagen ', 'Europe/Copenhagen'),
(47, '(GMT+01:00) Ljubljana ', 'Europe/Ljubljana'),
(48, '(GMT+01:00) Madrid ', 'Europe/Madrid'),
(49, '(GMT+01:00) Paris ', 'Europe/Paris'),
(50, '(GMT+01:00) Prague ', 'Europe/Prague'),
(51, '(GMT+01:00) Rome ', 'Europe/Rome'),
(52, '(GMT+01:00) Sarajevo ', 'Europe/Sarajevo'),
(53, '(GMT+01:00) Skopje ', 'Europe/Skopje'),
(54, '(GMT+01:00) Stockholm ', 'Europe/Stockholm'),
(55, '(GMT+01:00) Vienna ', 'Europe/Vienna'),
(56, '(GMT+01:00) Warsaw ', 'Europe/Warsaw'),
(57, '(GMT+01:00) West Central Africa ', 'Africa/Lagos'),
(58, '(GMT+01:00) Zagreb ', 'Europe/Zagreb'),
(59, '(GMT+02:00) Athens ', 'Europe/Athens'),
(60, '(GMT+02:00) Bucharest ', 'Europe/Bucharest'),
(61, '(GMT+02:00) Cairo ', 'Africa/Cairo'),
(62, '(GMT+02:00) Harare ', 'Africa/Harare'),
(63, '(GMT+02:00) Helsinki ', 'Europe/Helsinki'),
(64, '(GMT+02:00) Istanbul ', 'Europe/Istanbul'),
(65, '(GMT+02:00) Jerusalem ', 'Asia/Jerusalem'),
(66, '(GMT+02:00) Kyiv ', 'Europe/Helsinki'),
(67, '(GMT+02:00) Pretoria ', 'Africa/Johannesburg'),
(68, '(GMT+02:00) Riga ', 'Europe/Riga'),
(69, '(GMT+02:00) Sofia ', 'Europe/Sofia'),
(70, '(GMT+02:00) Tallinn ', 'Europe/Tallinn'),
(71, '(GMT+02:00) Vilnius ', 'Europe/Vilnius'),
(72, '(GMT+03:00) Baghdad ', 'Asia/Baghdad'),
(73, '(GMT+03:00) Kuwait ', 'Asia/Kuwait'),
(74, '(GMT+03:00) Minsk ', 'Europe/Minsk'),
(75, '(GMT+03:00) Nairobi ', 'Africa/Nairobi'),
(76, '(GMT+03:00) Riyadh ', 'Asia/Riyadh'),
(77, '(GMT+03:00) Volgograd ', 'Europe/Volgograd'),
(78, '(GMT+03:30) Tehran ', 'Asia/Tehran'),
(79, '(GMT+04:00) Abu Dhabi ', 'Asia/Muscat'),
(80, '(GMT+04:00) Baku ', 'Asia/Baku'),
(81, '(GMT+04:00) Moscow ', 'Europe/Moscow'),
(82, '(GMT+04:00) Muscat ', 'Asia/Muscat'),
(83, '(GMT+04:00) St. Petersburg ', 'Europe/Moscow'),
(84, '(GMT+04:00) Tbilisi ', 'Asia/Tbilisi'),
(85, '(GMT+04:00) Yerevan ', 'Asia/Yerevan'),
(86, '(GMT+04:30) Kabul ', 'Asia/Kabul'),
(87, '(GMT+05:00) Islamabad ', 'Asia/Karachi'),
(88, '(GMT+05:00) Karachi ', 'Asia/Karachi'),
(89, '(GMT+05:00) Tashkent ', 'Asia/Tashkent'),
(90, '(GMT+05:30) Chennai ', 'Asia/Calcutta'),
(91, '(GMT+05:30) Kolkata ', 'Asia/Kolkata'),
(92, '(GMT+05:30) Mumbai ', 'Asia/Calcutta'),
(93, '(GMT+05:30) New Delhi ', 'Asia/Calcutta'),
(94, '(GMT+05:30) Sri Jayawardenepura ', 'Asia/Calcutta'),
(95, '(GMT+05:45) Kathmandu ', 'Asia/Katmandu'),
(96, '(GMT+06:00) Almaty ', 'Asia/Almaty'),
(97, '(GMT+06:00) Astana ', 'Asia/Dhaka'),
(98, '(GMT+06:00) Dhaka ', 'Asia/Dhaka'),
(99, '(GMT+06:00) Ekaterinburg ', 'Asia/Yekaterinburg'),
(100, '(GMT+06:30) Rangoon ', 'Asia/Rangoon'),
(101, '(GMT+07:00) Bangkok ', 'Asia/Bangkok'),
(102, '(GMT+07:00) Hanoi ', 'Asia/Bangkok'),
(103, '(GMT+07:00) Jakarta ', 'Asia/Jakarta'),
(104, '(GMT+07:00) Novosibirsk ', 'Asia/Novosibirsk'),
(105, '(GMT+08:00) Beijing ', 'Asia/Hong_Kong'),
(106, '(GMT+08:00) Chongqing ', 'Asia/Chongqing'),
(107, '(GMT+08:00) Hong Kong ', 'Asia/Hong_Kong'),
(108, '(GMT+08:00) Krasnoyarsk ', 'Asia/Krasnoyarsk'),
(109, '(GMT+08:00) Kuala Lumpur ', 'Asia/Kuala_Lumpur'),
(110, '(GMT+08:00) Perth ', 'Australia/Perth'),
(111, '(GMT+08:00) Singapore ', 'Asia/Singapore'),
(112, '(GMT+08:00) Taipei ', 'Asia/Taipei'),
(113, '(GMT+08:00) Ulaan Bataar ', 'Asia/Ulan_Bator'),
(114, '(GMT+08:00) Urumqi ', 'Asia/Urumqi'),
(115, '(GMT+09:00) Irkutsk ', 'Asia/Irkutsk'),
(116, '(GMT+09:00) Osaka ', 'Asia/Tokyo'),
(117, '(GMT+09:00) Sapporo ', 'Asia/Tokyo'),
(118, '(GMT+09:00) Seoul ', 'Asia/Seoul'),
(119, '(GMT+09:00) Tokyo ', 'Asia/Tokyo'),
(120, '(GMT+09:30) Adelaide ', 'Australia/Adelaide'),
(121, '(GMT+09:30) Darwin ', 'Australia/Darwin'),
(122, '(GMT+10:00) Brisbane ', 'Australia/Brisbane'),
(123, '(GMT+10:00) Canberra ', 'Australia/Canberra'),
(124, '(GMT+10:00) Guam ', 'Pacific/Guam'),
(125, '(GMT+10:00) Hobart ', 'Australia/Hobart'),
(126, '(GMT+10:00) Melbourne ', 'Australia/Melbourne'),
(127, '(GMT+10:00) Port Moresby ', 'Pacific/Port_Moresby'),
(128, '(GMT+10:00) Sydney ', 'Australia/Sydney'),
(129, '(GMT+10:00) Yakutsk ', 'Asia/Yakutsk'),
(130, '(GMT+11:00) Vladivostok ', 'Asia/Vladivostok'),
(131, '(GMT+12:00) Auckland ', 'Pacific/Auckland'),
(132, '(GMT+12:00) Fiji ', 'Pacific/Fiji'),
(133, '(GMT+12:00) International Date Line West ', 'Pacific/Kwajalein'),
(134, '(GMT+12:00) Kamchatka ', 'Asia/Kamchatka'),
(135, '(GMT+12:00) Magadan ', 'Asia/Magadan'),
(136, '(GMT+12:00) Marshall Is. ', 'Pacific/Fiji'),
(137, '(GMT+12:00) New Caledonia ', 'Asia/Magadan'),
(138, '(GMT+12:00) Solomon Is. ', 'Asia/Magadan'),
(139, '(GMT+12:00) Wellington ', 'Pacific/Auckland'),
(140, '(GMT+13:00) Nuku\\alofa ', 'Pacific/Tongatapu');




