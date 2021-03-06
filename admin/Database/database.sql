-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 21, 2015 at 02:36 AM
-- Server version: 5.5.40-0ubuntu0.14.04.1
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
-- Table structure for table `LMContactDetails`
--

CREATE TABLE IF NOT EXISTS `LMContactDetails` (
  `ContactId` int(11) NOT NULL AUTO_INCREMENT,
  `ContactName` varchar(200) NOT NULL,
  `ContactEmailAddress` varchar(100) NOT NULL,
  `ContactMobileNo` varchar(20) NOT NULL,
  `GroupID` int(5) NOT NULL,
  `Association` int(11) NOT NULL,
  `ContactStatus` enum('0','1') NOT NULL DEFAULT '1',
  PRIMARY KEY (`ContactId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `LMContactDetails`
--

INSERT INTO `LMContactDetails` (`ContactId`, `ContactName`, `ContactEmailAddress`, `ContactMobileNo`, `GroupID`, `Association`, `ContactStatus`) VALUES
(1, 'Sushrit Shrivastava', 'sushrit.shrivastava@quadridge.com', '9819146159', 1, 5, '1'),
(2, 'Sushrit Shrivastava1', 'sushrit.shrivastava1@quadridge.com', '9819146159', 1, 5, '1'),
(3, 'Sushrit Shrivastava', 'sushrit.shrivastava2@quadridge.com', '9819146159', 1, 5, '1'),
(4, 'Sushrit Shrivastava', 'sushrit.shrivastava3@quadridge.com', '98191461591', 1, 5, '1'),
(5, 'Sushrit Shrivastava4', 'sushrit.shrivastava4@quadridge.com', '9819146159', 1, 5, '1'),
(6, 'Sushrit Shrivastava5', 'sushrit.shrivastava5@quadridge.com', '98191461595', 1, 5, '1');

-- --------------------------------------------------------

--
-- Table structure for table `LMGroupDetails`
--

CREATE TABLE IF NOT EXISTS `LMGroupDetails` (
  `LMGroupId` int(11) NOT NULL AUTO_INCREMENT,
  `GroupName` varchar(200) NOT NULL,
  `Association` int(6) NOT NULL,
  `GroupStatus` enum('0','1') DEFAULT '1',
  PRIMARY KEY (`LMGroupId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `LMGroupDetails`
--

INSERT INTO `LMGroupDetails` (`LMGroupId`, `GroupName`, `Association`, `GroupStatus`) VALUES
(1, 'General', 5, '1');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `LMLoginUsers`
--

INSERT INTO `LMLoginUsers` (`LMLoginId`, `LMUserid`, `LMPassword`, `LMEmailAddress`, `LMRole`, `LMLoginEnabled`, `LMCreatedOn`, `LMCreatedBy`) VALUES
(5, 'superadmin', 'superadmin123', 'abc@yahoo.com', '1', 1, '2015-05-20 00:00:00', 'website');

-- --------------------------------------------------------

--
-- Table structure for table `LMUserProfile`
--

CREATE TABLE IF NOT EXISTS `LMUserProfile` (
  `ProfileID` int(11) NOT NULL AUTO_INCREMENT,
  `LMLoginId` int(11) NOT NULL,
  `CompanyName` varchar(255) NOT NULL,
  `IndustryType` int(4) NOT NULL,
  `DisplayName` varchar(255) NOT NULL,
  `CompanyWebsite` varchar(255) NOT NULL,
  `Description` text NOT NULL,
  `NatureOfBusiness` varchar(255) NOT NULL,
  `Phone1` varchar(50) NOT NULL,
  `Phone2` varchar(50) NOT NULL,
  `MobileNo` varchar(50) NOT NULL,
  `SecondryEmail` varchar(50) NOT NULL,
  `PrimaryAddress` text NOT NULL,
  `Address2` text NOT NULL,
  `Address3` text NOT NULL,
  `FacebookId` varchar(200) NOT NULL,
  `TwitterId` varchar(200) NOT NULL,
  `GooglePlus` varchar(200) NOT NULL,
  `LinkedIn` varchar(200) NOT NULL,
  `BillingName` varchar(255) NOT NULL,
  `Currency` varchar(100) NOT NULL,
  `Timezones` varchar(100) NOT NULL,
  PRIMARY KEY (`ProfileID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `LMUserProfile`
--

INSERT INTO `LMUserProfile` (`ProfileID`, `LMLoginId`, `CompanyName`, `IndustryType`, `DisplayName`, `CompanyWebsite`, `Description`, `NatureOfBusiness`, `Phone1`, `Phone2`, `MobileNo`, `SecondryEmail`, `PrimaryAddress`, `Address2`, `Address3`, `FacebookId`, `TwitterId`, `GooglePlus`, `LinkedIn`, `BillingName`, `Currency`, `Timezones`) VALUES
(1, 5, 'Quadridge1', 0, 'Quadridge', 'http://www.quadridge.com', 'Brief Description Of Company', 'Information Technology', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `mstCurrency`
--

CREATE TABLE IF NOT EXISTS `mstCurrency` (
  `id_countries` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `countryname` varchar(200) DEFAULT NULL,
  `iso_alpha2` varchar(2) DEFAULT NULL,
  `iso_alpha3` varchar(3) DEFAULT NULL,
  `iso_numeric` int(11) DEFAULT NULL,
  `currency_code` char(3) DEFAULT NULL,
  `currency_name` varchar(32) DEFAULT NULL,
  `currency_symbol` varchar(3) DEFAULT NULL,
  `flag` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`id_countries`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=240 ;

--
-- Dumping data for table `mstCurrency`
--

INSERT INTO `mstCurrency` (`id_countries`, `countryname`, `iso_alpha2`, `iso_alpha3`, `iso_numeric`, `currency_code`, `currency_name`, `currency_symbol`, `flag`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', 4, 'AFN', 'Afghani', '؋', 'AF.png'),
(2, 'Albania', 'AL', 'ALB', 8, 'ALL', 'Lek', 'Lek', 'AL.png'),
(3, 'Algeria', 'DZ', 'DZA', 12, 'DZD', 'Dinar', NULL, 'DZ.png'),
(4, 'American Samoa', 'AS', 'ASM', 16, 'USD', 'Dollar', '$', 'AS.png'),
(5, 'Andorra', 'AD', 'AND', 20, 'EUR', 'Euro', '€', 'AD.png'),
(6, 'Angola', 'AO', 'AGO', 24, 'AOA', 'Kwanza', 'Kz', 'AO.png'),
(7, 'Anguilla', 'AI', 'AIA', 660, 'XCD', 'Dollar', '$', 'AI.png'),
(8, 'Antarctica', 'AQ', 'ATA', 10, '', '', NULL, 'AQ.png'),
(9, 'Antigua and Barbuda', 'AG', 'ATG', 28, 'XCD', 'Dollar', '$', 'AG.png'),
(10, 'Argentina', 'AR', 'ARG', 32, 'ARS', 'Peso', '$', 'AR.png'),
(11, 'Armenia', 'AM', 'ARM', 51, 'AMD', 'Dram', NULL, 'AM.png'),
(12, 'Aruba', 'AW', 'ABW', 533, 'AWG', 'Guilder', 'ƒ', 'AW.png'),
(13, 'Australia', 'AU', 'AUS', 36, 'AUD', 'Dollar', '$', 'AU.png'),
(14, 'Austria', 'AT', 'AUT', 40, 'EUR', 'Euro', '€', 'AT.png'),
(15, 'Azerbaijan', 'AZ', 'AZE', 31, 'AZN', 'Manat', 'ман', 'AZ.png'),
(16, 'Bahamas', 'BS', 'BHS', 44, 'BSD', 'Dollar', '$', 'BS.png'),
(17, 'Bahrain', 'BH', 'BHR', 48, 'BHD', 'Dinar', NULL, 'BH.png'),
(18, 'Bangladesh', 'BD', 'BGD', 50, 'BDT', 'Taka', NULL, 'BD.png'),
(19, 'Barbados', 'BB', 'BRB', 52, 'BBD', 'Dollar', '$', 'BB.png'),
(20, 'Belarus', 'BY', 'BLR', 112, 'BYR', 'Ruble', 'p.', 'BY.png'),
(21, 'Belgium', 'BE', 'BEL', 56, 'EUR', 'Euro', '€', 'BE.png'),
(22, 'Belize', 'BZ', 'BLZ', 84, 'BZD', 'Dollar', 'BZ$', 'BZ.png'),
(23, 'Benin', 'BJ', 'BEN', 204, 'XOF', 'Franc', NULL, 'BJ.png'),
(24, 'Bermuda', 'BM', 'BMU', 60, 'BMD', 'Dollar', '$', 'BM.png'),
(25, 'Bhutan', 'BT', 'BTN', 64, 'BTN', 'Ngultrum', NULL, 'BT.png'),
(26, 'Bolivia', 'BO', 'BOL', 68, 'BOB', 'Boliviano', '$b', 'BO.png'),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', 70, 'BAM', 'Marka', 'KM', 'BA.png'),
(28, 'Botswana', 'BW', 'BWA', 72, 'BWP', 'Pula', 'P', 'BW.png'),
(29, 'Bouvet Island', 'BV', 'BVT', 74, 'NOK', 'Krone', 'kr', 'BV.png'),
(30, 'Brazil', 'BR', 'BRA', 76, 'BRL', 'Real', 'R$', 'BR.png'),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', 86, 'USD', 'Dollar', '$', 'IO.png'),
(32, 'British Virgin Islands', 'VG', 'VGB', 92, 'USD', 'Dollar', '$', 'VG.png'),
(33, 'Brunei', 'BN', 'BRN', 96, 'BND', 'Dollar', '$', 'BN.png'),
(34, 'Bulgaria', 'BG', 'BGR', 100, 'BGN', 'Lev', 'лв', 'BG.png'),
(35, 'Burkina Faso', 'BF', 'BFA', 854, 'XOF', 'Franc', NULL, 'BF.png'),
(36, 'Burundi', 'BI', 'BDI', 108, 'BIF', 'Franc', NULL, 'BI.png'),
(37, 'Cambodia', 'KH', 'KHM', 116, 'KHR', 'Riels', '៛', 'KH.png'),
(38, 'Cameroon', 'CM', 'CMR', 120, 'XAF', 'Franc', 'FCF', 'CM.png'),
(39, 'Canada', 'CA', 'CAN', 124, 'CAD', 'Dollar', '$', 'CA.png'),
(40, 'Cape Verde', 'CV', 'CPV', 132, 'CVE', 'Escudo', NULL, 'CV.png'),
(41, 'Cayman Islands', 'KY', 'CYM', 136, 'KYD', 'Dollar', '$', 'KY.png'),
(42, 'Central African Republic', 'CF', 'CAF', 140, 'XAF', 'Franc', 'FCF', 'CF.png'),
(43, 'Chad', 'TD', 'TCD', 148, 'XAF', 'Franc', NULL, 'TD.png'),
(44, 'Chile', 'CL', 'CHL', 152, 'CLP', 'Peso', NULL, 'CL.png'),
(45, 'China', 'CN', 'CHN', 156, 'CNY', 'Yuan Renminbi', '¥', 'CN.png'),
(46, 'Christmas Island', 'CX', 'CXR', 162, 'AUD', 'Dollar', '$', 'CX.png'),
(47, 'Cocos Islands', 'CC', 'CCK', 166, 'AUD', 'Dollar', '$', 'CC.png'),
(48, 'Colombia', 'CO', 'COL', 170, 'COP', 'Peso', '$', 'CO.png'),
(49, 'Comoros', 'KM', 'COM', 174, 'KMF', 'Franc', NULL, 'KM.png'),
(50, 'Cook Islands', 'CK', 'COK', 184, 'NZD', 'Dollar', '$', 'CK.png'),
(51, 'Costa Rica', 'CR', 'CRI', 188, 'CRC', 'Colon', '₡', 'CR.png'),
(52, 'Croatia', 'HR', 'HRV', 191, 'HRK', 'Kuna', 'kn', 'HR.png'),
(53, 'Cuba', 'CU', 'CUB', 192, 'CUP', 'Peso', '₱', 'CU.png'),
(54, 'Cyprus', 'CY', 'CYP', 196, 'CYP', 'Pound', NULL, 'CY.png'),
(55, 'Czech Republic', 'CZ', 'CZE', 203, 'CZK', 'Koruna', 'Kč', 'CZ.png'),
(56, 'Democratic Republic of the Congo', 'CD', 'COD', 180, 'CDF', 'Franc', NULL, 'CD.png'),
(57, 'Denmark', 'DK', 'DNK', 208, 'DKK', 'Krone', 'kr', 'DK.png'),
(58, 'Djibouti', 'DJ', 'DJI', 262, 'DJF', 'Franc', NULL, 'DJ.png'),
(59, 'Dominica', 'DM', 'DMA', 212, 'XCD', 'Dollar', '$', 'DM.png'),
(60, 'Dominican Republic', 'DO', 'DOM', 214, 'DOP', 'Peso', 'RD$', 'DO.png'),
(61, 'East Timor', 'TL', 'TLS', 626, 'USD', 'Dollar', '$', 'TL.png'),
(62, 'Ecuador', 'EC', 'ECU', 218, 'USD', 'Dollar', '$', 'EC.png'),
(63, 'Egypt', 'EG', 'EGY', 818, 'EGP', 'Pound', '£', 'EG.png'),
(64, 'El Salvador', 'SV', 'SLV', 222, 'SVC', 'Colone', '$', 'SV.png'),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', 226, 'XAF', 'Franc', 'FCF', 'GQ.png'),
(66, 'Eritrea', 'ER', 'ERI', 232, 'ERN', 'Nakfa', 'Nfk', 'ER.png'),
(67, 'Estonia', 'EE', 'EST', 233, 'EEK', 'Kroon', 'kr', 'EE.png'),
(68, 'Ethiopia', 'ET', 'ETH', 231, 'ETB', 'Birr', NULL, 'ET.png'),
(69, 'Falkland Islands', 'FK', 'FLK', 238, 'FKP', 'Pound', '£', 'FK.png'),
(70, 'Faroe Islands', 'FO', 'FRO', 234, 'DKK', 'Krone', 'kr', 'FO.png'),
(71, 'Fiji', 'FJ', 'FJI', 242, 'FJD', 'Dollar', '$', 'FJ.png'),
(72, 'Finland', 'FI', 'FIN', 246, 'EUR', 'Euro', '€', 'FI.png'),
(73, 'France', 'FR', 'FRA', 250, 'EUR', 'Euro', '€', 'FR.png'),
(74, 'French Guiana', 'GF', 'GUF', 254, 'EUR', 'Euro', '€', 'GF.png'),
(75, 'French Polynesia', 'PF', 'PYF', 258, 'XPF', 'Franc', NULL, 'PF.png'),
(76, 'French Southern Territories', 'TF', 'ATF', 260, 'EUR', 'Euro  ', '€', 'TF.png'),
(77, 'Gabon', 'GA', 'GAB', 266, 'XAF', 'Franc', 'FCF', 'GA.png'),
(78, 'Gambia', 'GM', 'GMB', 270, 'GMD', 'Dalasi', 'D', 'GM.png'),
(79, 'Georgia', 'GE', 'GEO', 268, 'GEL', 'Lari', NULL, 'GE.png'),
(80, 'Germany', 'DE', 'DEU', 276, 'EUR', 'Euro', '€', 'DE.png'),
(81, 'Ghana', 'GH', 'GHA', 288, 'GHC', 'Cedi', '¢', 'GH.png'),
(82, 'Gibraltar', 'GI', 'GIB', 292, 'GIP', 'Pound', '£', 'GI.png'),
(83, 'Greece', 'GR', 'GRC', 300, 'EUR', 'Euro', '€', 'GR.png'),
(84, 'Greenland', 'GL', 'GRL', 304, 'DKK', 'Krone', 'kr', 'GL.png'),
(85, 'Grenada', 'GD', 'GRD', 308, 'XCD', 'Dollar', '$', 'GD.png'),
(86, 'Guadeloupe', 'GP', 'GLP', 312, 'EUR', 'Euro', '€', 'GP.png'),
(87, 'Guam', 'GU', 'GUM', 316, 'USD', 'Dollar', '$', 'GU.png'),
(88, 'Guatemala', 'GT', 'GTM', 320, 'GTQ', 'Quetzal', 'Q', 'GT.png'),
(89, 'Guinea', 'GN', 'GIN', 324, 'GNF', 'Franc', NULL, 'GN.png'),
(90, 'Guinea-Bissau', 'GW', 'GNB', 624, 'XOF', 'Franc', NULL, 'GW.png'),
(91, 'Guyana', 'GY', 'GUY', 328, 'GYD', 'Dollar', '$', 'GY.png'),
(92, 'Haiti', 'HT', 'HTI', 332, 'HTG', 'Gourde', 'G', 'HT.png'),
(93, 'Heard Island and McDonald Islands', 'HM', 'HMD', 334, 'AUD', 'Dollar', '$', 'HM.png'),
(94, 'Honduras', 'HN', 'HND', 340, 'HNL', 'Lempira', 'L', 'HN.png'),
(95, 'Hong Kong', 'HK', 'HKG', 344, 'HKD', 'Dollar', '$', 'HK.png'),
(96, 'Hungary', 'HU', 'HUN', 348, 'HUF', 'Forint', 'Ft', 'HU.png'),
(97, 'Iceland', 'IS', 'ISL', 352, 'ISK', 'Krona', 'kr', 'IS.png'),
(98, 'India', 'IN', 'IND', 356, 'INR', 'Rupee', '₹', 'IN.png'),
(99, 'Indonesia', 'ID', 'IDN', 360, 'IDR', 'Rupiah', 'Rp', 'ID.png'),
(100, 'Iran', 'IR', 'IRN', 364, 'IRR', 'Rial', '﷼', 'IR.png'),
(101, 'Iraq', 'IQ', 'IRQ', 368, 'IQD', 'Dinar', NULL, 'IQ.png'),
(102, 'Ireland', 'IE', 'IRL', 372, 'EUR', 'Euro', '€', 'IE.png'),
(103, 'Israel', 'IL', 'ISR', 376, 'ILS', 'Shekel', '₪', 'IL.png'),
(104, 'Italy', 'IT', 'ITA', 380, 'EUR', 'Euro', '€', 'IT.png'),
(105, 'Ivory Coast', 'CI', 'CIV', 384, 'XOF', 'Franc', NULL, 'CI.png'),
(106, 'Jamaica', 'JM', 'JAM', 388, 'JMD', 'Dollar', '$', 'JM.png'),
(107, 'Japan', 'JP', 'JPN', 392, 'JPY', 'Yen', '¥', 'JP.png'),
(108, 'Jordan', 'JO', 'JOR', 400, 'JOD', 'Dinar', NULL, 'JO.png'),
(109, 'Kazakhstan', 'KZ', 'KAZ', 398, 'KZT', 'Tenge', 'лв', 'KZ.png'),
(110, 'Kenya', 'KE', 'KEN', 404, 'KES', 'Shilling', NULL, 'KE.png'),
(111, 'Kiribati', 'KI', 'KIR', 296, 'AUD', 'Dollar', '$', 'KI.png'),
(112, 'Kuwait', 'KW', 'KWT', 414, 'KWD', 'Dinar', NULL, 'KW.png'),
(113, 'Kyrgyzstan', 'KG', 'KGZ', 417, 'KGS', 'Som', 'лв', 'KG.png'),
(114, 'Laos', 'LA', 'LAO', 418, 'LAK', 'Kip', '₭', 'LA.png'),
(115, 'Latvia', 'LV', 'LVA', 428, 'LVL', 'Lat', 'Ls', 'LV.png'),
(116, 'Lebanon', 'LB', 'LBN', 422, 'LBP', 'Pound', '£', 'LB.png'),
(117, 'Lesotho', 'LS', 'LSO', 426, 'LSL', 'Loti', 'L', 'LS.png'),
(118, 'Liberia', 'LR', 'LBR', 430, 'LRD', 'Dollar', '$', 'LR.png'),
(119, 'Libya', 'LY', 'LBY', 434, 'LYD', 'Dinar', NULL, 'LY.png'),
(120, 'Liechtenstein', 'LI', 'LIE', 438, 'CHF', 'Franc', 'CHF', 'LI.png'),
(121, 'Lithuania', 'LT', 'LTU', 440, 'LTL', 'Litas', 'Lt', 'LT.png'),
(122, 'Luxembourg', 'LU', 'LUX', 442, 'EUR', 'Euro', '€', 'LU.png'),
(123, 'Macao', 'MO', 'MAC', 446, 'MOP', 'Pataca', 'MOP', 'MO.png'),
(124, 'Macedonia', 'MK', 'MKD', 807, 'MKD', 'Denar', 'ден', 'MK.png'),
(125, 'Madagascar', 'MG', 'MDG', 450, 'MGA', 'Ariary', NULL, 'MG.png'),
(126, 'Malawi', 'MW', 'MWI', 454, 'MWK', 'Kwacha', 'MK', 'MW.png'),
(127, 'Malaysia', 'MY', 'MYS', 458, 'MYR', 'Ringgit', 'RM', 'MY.png'),
(128, 'Maldives', 'MV', 'MDV', 462, 'MVR', 'Rufiyaa', 'Rf', 'MV.png'),
(129, 'Mali', 'ML', 'MLI', 466, 'XOF', 'Franc', NULL, 'ML.png'),
(130, 'Malta', 'MT', 'MLT', 470, 'MTL', 'Lira', NULL, 'MT.png'),
(131, 'Marshall Islands', 'MH', 'MHL', 584, 'USD', 'Dollar', '$', 'MH.png'),
(132, 'Martinique', 'MQ', 'MTQ', 474, 'EUR', 'Euro', '€', 'MQ.png'),
(133, 'Mauritania', 'MR', 'MRT', 478, 'MRO', 'Ouguiya', 'UM', 'MR.png'),
(134, 'Mauritius', 'MU', 'MUS', 480, 'MUR', 'Rupee', '₨', 'MU.png'),
(135, 'Mayotte', 'YT', 'MYT', 175, 'EUR', 'Euro', '€', 'YT.png'),
(136, 'Mexico', 'MX', 'MEX', 484, 'MXN', 'Peso', '$', 'MX.png'),
(137, 'Micronesia', 'FM', 'FSM', 583, 'USD', 'Dollar', '$', 'FM.png'),
(138, 'Moldova', 'MD', 'MDA', 498, 'MDL', 'Leu', NULL, 'MD.png'),
(139, 'Monaco', 'MC', 'MCO', 492, 'EUR', 'Euro', '€', 'MC.png'),
(140, 'Mongolia', 'MN', 'MNG', 496, 'MNT', 'Tugrik', '₮', 'MN.png'),
(141, 'Montserrat', 'MS', 'MSR', 500, 'XCD', 'Dollar', '$', 'MS.png'),
(142, 'Morocco', 'MA', 'MAR', 504, 'MAD', 'Dirham', NULL, 'MA.png'),
(143, 'Mozambique', 'MZ', 'MOZ', 508, 'MZN', 'Meticail', 'MT', 'MZ.png'),
(144, 'Myanmar', 'MM', 'MMR', 104, 'MMK', 'Kyat', 'K', 'MM.png'),
(145, 'Namibia', 'NA', 'NAM', 516, 'NAD', 'Dollar', '$', 'NA.png'),
(146, 'Nauru', 'NR', 'NRU', 520, 'AUD', 'Dollar', '$', 'NR.png'),
(147, 'Nepal', 'NP', 'NPL', 524, 'NPR', 'Rupee', '₨', 'NP.png'),
(148, 'Netherlands', 'NL', 'NLD', 528, 'EUR', 'Euro', '€', 'NL.png'),
(149, 'Netherlands Antilles', 'AN', 'ANT', 530, 'ANG', 'Guilder', 'ƒ', 'AN.png'),
(150, 'New Caledonia', 'NC', 'NCL', 540, 'XPF', 'Franc', NULL, 'NC.png'),
(151, 'New Zealand', 'NZ', 'NZL', 554, 'NZD', 'Dollar', '$', 'NZ.png'),
(152, 'Nicaragua', 'NI', 'NIC', 558, 'NIO', 'Cordoba', 'C$', 'NI.png'),
(153, 'Niger', 'NE', 'NER', 562, 'XOF', 'Franc', NULL, 'NE.png'),
(154, 'Nigeria', 'NG', 'NGA', 566, 'NGN', 'Naira', '₦', 'NG.png'),
(155, 'Niue', 'NU', 'NIU', 570, 'NZD', 'Dollar', '$', 'NU.png'),
(156, 'Norfolk Island', 'NF', 'NFK', 574, 'AUD', 'Dollar', '$', 'NF.png'),
(157, 'North Korea', 'KP', 'PRK', 408, 'KPW', 'Won', '₩', 'KP.png'),
(158, 'Northern Mariana Islands', 'MP', 'MNP', 580, 'USD', 'Dollar', '$', 'MP.png'),
(159, 'Norway', 'NO', 'NOR', 578, 'NOK', 'Krone', 'kr', 'NO.png'),
(160, 'Oman', 'OM', 'OMN', 512, 'OMR', 'Rial', '﷼', 'OM.png'),
(161, 'Pakistan', 'PK', 'PAK', 586, 'PKR', 'Rupee', '₨', 'PK.png'),
(162, 'Palau', 'PW', 'PLW', 585, 'USD', 'Dollar', '$', 'PW.png'),
(163, 'Palestinian Territory', 'PS', 'PSE', 275, 'ILS', 'Shekel', '₪', 'PS.png'),
(164, 'Panama', 'PA', 'PAN', 591, 'PAB', 'Balboa', 'B/.', 'PA.png'),
(165, 'Papua New Guinea', 'PG', 'PNG', 598, 'PGK', 'Kina', NULL, 'PG.png'),
(166, 'Paraguay', 'PY', 'PRY', 600, 'PYG', 'Guarani', 'Gs', 'PY.png'),
(167, 'Peru', 'PE', 'PER', 604, 'PEN', 'Sol', 'S/.', 'PE.png'),
(168, 'Philippines', 'PH', 'PHL', 608, 'PHP', 'Peso', 'Php', 'PH.png'),
(169, 'Pitcairn', 'PN', 'PCN', 612, 'NZD', 'Dollar', '$', 'PN.png'),
(170, 'Poland', 'PL', 'POL', 616, 'PLN', 'Zloty', 'zł', 'PL.png'),
(171, 'Portugal', 'PT', 'PRT', 620, 'EUR', 'Euro', '€', 'PT.png'),
(172, 'Puerto Rico', 'PR', 'PRI', 630, 'USD', 'Dollar', '$', 'PR.png'),
(173, 'Qatar', 'QA', 'QAT', 634, 'QAR', 'Rial', '﷼', 'QA.png'),
(174, 'Republic of the Congo', 'CG', 'COG', 178, 'XAF', 'Franc', 'FCF', 'CG.png'),
(175, 'Reunion', 'RE', 'REU', 638, 'EUR', 'Euro', '€', 'RE.png'),
(176, 'Romania', 'RO', 'ROU', 642, 'RON', 'Leu', 'lei', 'RO.png'),
(177, 'Russia', 'RU', 'RUS', 643, 'RUB', 'Ruble', 'руб', 'RU.png'),
(178, 'Rwanda', 'RW', 'RWA', 646, 'RWF', 'Franc', NULL, 'RW.png'),
(179, 'Saint Helena', 'SH', 'SHN', 654, 'SHP', 'Pound', '£', 'SH.png'),
(180, 'Saint Kitts and Nevis', 'KN', 'KNA', 659, 'XCD', 'Dollar', '$', 'KN.png'),
(181, 'Saint Lucia', 'LC', 'LCA', 662, 'XCD', 'Dollar', '$', 'LC.png'),
(182, 'Saint Pierre and Miquelon', 'PM', 'SPM', 666, 'EUR', 'Euro', '€', 'PM.png'),
(183, 'Saint Vincent and the Grenadines', 'VC', 'VCT', 670, 'XCD', 'Dollar', '$', 'VC.png'),
(184, 'Samoa', 'WS', 'WSM', 882, 'WST', 'Tala', 'WS$', 'WS.png'),
(185, 'San Marino', 'SM', 'SMR', 674, 'EUR', 'Euro', '€', 'SM.png'),
(186, 'Sao Tome and Principe', 'ST', 'STP', 678, 'STD', 'Dobra', 'Db', 'ST.png'),
(187, 'Saudi Arabia', 'SA', 'SAU', 682, 'SAR', 'Rial', '﷼', 'SA.png'),
(188, 'Senegal', 'SN', 'SEN', 686, 'XOF', 'Franc', NULL, 'SN.png'),
(189, 'Serbia and Montenegro', 'CS', 'SCG', 891, 'RSD', 'Dinar', 'Дин', 'CS.png'),
(190, 'Seychelles', 'SC', 'SYC', 690, 'SCR', 'Rupee', '₨', 'SC.png'),
(191, 'Sierra Leone', 'SL', 'SLE', 694, 'SLL', 'Leone', 'Le', 'SL.png'),
(192, 'Singapore', 'SG', 'SGP', 702, 'SGD', 'Dollar', '$', 'SG.png'),
(193, 'Slovakia', 'SK', 'SVK', 703, 'SKK', 'Koruna', 'Sk', 'SK.png'),
(194, 'Slovenia', 'SI', 'SVN', 705, 'EUR', 'Euro', '€', 'SI.png'),
(195, 'Solomon Islands', 'SB', 'SLB', 90, 'SBD', 'Dollar', '$', 'SB.png'),
(196, 'Somalia', 'SO', 'SOM', 706, 'SOS', 'Shilling', 'S', 'SO.png'),
(197, 'South Africa', 'ZA', 'ZAF', 710, 'ZAR', 'Rand', 'R', 'ZA.png'),
(198, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', 239, 'GBP', 'Pound', '£', 'GS.png'),
(199, 'South Korea', 'KR', 'KOR', 410, 'KRW', 'Won', '₩', 'KR.png'),
(200, 'Spain', 'ES', 'ESP', 724, 'EUR', 'Euro', '€', 'ES.png'),
(201, 'Sri Lanka', 'LK', 'LKA', 144, 'LKR', 'Rupee', '₨', 'LK.png'),
(202, 'Sudan', 'SD', 'SDN', 736, 'SDD', 'Dinar', NULL, 'SD.png'),
(203, 'Suriname', 'SR', 'SUR', 740, 'SRD', 'Dollar', '$', 'SR.png'),
(204, 'Svalbard and Jan Mayen', 'SJ', 'SJM', 744, 'NOK', 'Krone', 'kr', 'SJ.png'),
(205, 'Swaziland', 'SZ', 'SWZ', 748, 'SZL', 'Lilangeni', NULL, 'SZ.png'),
(206, 'Sweden', 'SE', 'SWE', 752, 'SEK', 'Krona', 'kr', 'SE.png'),
(207, 'Switzerland', 'CH', 'CHE', 756, 'CHF', 'Franc', 'CHF', 'CH.png'),
(208, 'Syria', 'SY', 'SYR', 760, 'SYP', 'Pound', '£', 'SY.png'),
(209, 'Taiwan', 'TW', 'TWN', 158, 'TWD', 'Dollar', 'NT$', 'TW.png'),
(210, 'Tajikistan', 'TJ', 'TJK', 762, 'TJS', 'Somoni', NULL, 'TJ.png'),
(211, 'Tanzania', 'TZ', 'TZA', 834, 'TZS', 'Shilling', NULL, 'TZ.png'),
(212, 'Thailand', 'TH', 'THA', 764, 'THB', 'Baht', '฿', 'TH.png'),
(213, 'Togo', 'TG', 'TGO', 768, 'XOF', 'Franc', NULL, 'TG.png'),
(214, 'Tokelau', 'TK', 'TKL', 772, 'NZD', 'Dollar', '$', 'TK.png'),
(215, 'Tonga', 'TO', 'TON', 776, 'TOP', 'Pa''anga', 'T$', 'TO.png'),
(216, 'Trinidad and Tobago', 'TT', 'TTO', 780, 'TTD', 'Dollar', 'TT$', 'TT.png'),
(217, 'Tunisia', 'TN', 'TUN', 788, 'TND', 'Dinar', NULL, 'TN.png'),
(218, 'Turkey', 'TR', 'TUR', 792, 'TRY', 'Lira', 'YTL', 'TR.png'),
(219, 'Turkmenistan', 'TM', 'TKM', 795, 'TMM', 'Manat', 'm', 'TM.png'),
(220, 'Turks and Caicos Islands', 'TC', 'TCA', 796, 'USD', 'Dollar', '$', 'TC.png'),
(221, 'Tuvalu', 'TV', 'TUV', 798, 'AUD', 'Dollar', '$', 'TV.png'),
(222, 'U.S. Virgin Islands', 'VI', 'VIR', 850, 'USD', 'Dollar', '$', 'VI.png'),
(223, 'Uganda', 'UG', 'UGA', 800, 'UGX', 'Shilling', NULL, 'UG.png'),
(224, 'Ukraine', 'UA', 'UKR', 804, 'UAH', 'Hryvnia', '₴', 'UA.png'),
(225, 'United Arab Emirates', 'AE', 'ARE', 784, 'AED', 'Dirham', NULL, 'AE.png'),
(226, 'United Kingdom', 'GB', 'GBR', 826, 'GBP', 'Pound', '£', 'GB.png'),
(227, 'United States', 'US', 'USA', 840, 'USD', 'Dollar', '$', 'US.png'),
(228, 'United States Minor Outlying Islands', 'UM', 'UMI', 581, 'USD', 'Dollar ', '$', 'UM.png'),
(229, 'Uruguay', 'UY', 'URY', 858, 'UYU', 'Peso', '$U', 'UY.png'),
(230, 'Uzbekistan', 'UZ', 'UZB', 860, 'UZS', 'Som', 'лв', 'UZ.png'),
(231, 'Vanuatu', 'VU', 'VUT', 548, 'VUV', 'Vatu', 'Vt', 'VU.png'),
(232, 'Vatican', 'VA', 'VAT', 336, 'EUR', 'Euro', '€', 'VA.png'),
(233, 'Venezuela', 'VE', 'VEN', 862, 'VEF', 'Bolivar', 'Bs', 'VE.png'),
(234, 'Vietnam', 'VN', 'VNM', 704, 'VND', 'Dong', '₫', 'VN.png'),
(235, 'Wallis and Futuna', 'WF', 'WLF', 876, 'XPF', 'Franc', NULL, 'WF.png'),
(236, 'Western Sahara', 'EH', 'ESH', 732, 'MAD', 'Dirham', NULL, 'EH.png'),
(237, 'Yemen', 'YE', 'YEM', 887, 'YER', 'Rial', '﷼', 'YE.png'),
(238, 'Zambia', 'ZM', 'ZMB', 894, 'ZMK', 'Kwacha', 'ZK', 'ZM.png'),
(239, 'Zimbabwe', 'ZW', 'ZWE', 716, 'ZWD', 'Dollar', 'Z$', 'ZW.png');

-- --------------------------------------------------------

--
-- Table structure for table `mstIndustry`
--

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

-- --------------------------------------------------------

--
-- Table structure for table `mstTimezones`
--

CREATE TABLE IF NOT EXISTS `mstTimezones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(44) DEFAULT NULL,
  `timezone` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=141 ;

--
-- Dumping data for table `mstTimezones`
--

INSERT INTO `mstTimezones` (`id`, `name`, `timezone`) VALUES
(1, '(GMT-11:00) Midway Island ', 'Pacific Midway'),
(2, '(GMT-11:00) Samoa ', 'Pacific Samoa'),
(3, '(GMT-10:00) Hawaii ', 'Pacific Honolulu'),
(4, '(GMT-09:00) Alaska ', 'America Anchorage'),
(5, '(GMT-08:00) Pacific Time (US &amp; Canada) ', 'America Los_Angeles'),
(6, '(GMT-08:00) Tijuana ', 'America Tijuana'),
(7, '(GMT-07:00) Chihuahua ', 'America Chihuahua'),
(8, '(GMT-07:00) La Paz ', 'America Chihuahua'),
(9, '(GMT-07:00) Mazatlan ', 'America Mazatlan'),
(10, '(GMT-07:00) Mountain Time (US &amp; Canada) ', 'America Denver'),
(11, '(GMT-06:00) Central America ', 'America Managua'),
(12, '(GMT-06:00) Central Time (US &amp; Canada) ', 'America Chicago'),
(13, '(GMT-06:00) Guadalajara ', 'America Mexico_City'),
(14, '(GMT-06:00) Mexico City ', 'America Mexico_City'),
(15, '(GMT-06:00) Monterrey ', 'America Monterrey'),
(16, '(GMT-05:00) Bogota ', 'America Bogota'),
(17, '(GMT-05:00) Eastern Time (US &amp; Canada) ', 'America New_York'),
(18, '(GMT-05:00) Lima ', 'America Lima'),
(19, '(GMT-05:00) Quito ', 'America Bogota'),
(20, '(GMT-04:00) Atlantic Time (Canada) ', 'Canada Atlantic'),
(21, '(GMT-04:30) Caracas ', 'America Caracas'),
(22, '(GMT-04:00) La Paz ', 'America La_Paz'),
(23, '(GMT-04:00) Santiago ', 'America Santiago'),
(24, '(GMT-03:30) Newfoundland ', 'America St_Johns'),
(25, '(GMT-03:00) Brasilia ', 'America Sao_Paulo'),
(26, '(GMT-03:00) Buenos Aires ', 'America Argentina Buenos_Aires'),
(27, '(GMT-03:00) Georgetown ', 'America Argentina Buenos_Aires'),
(28, '(GMT-03:00) Greenland ', 'America Godthab'),
(29, '(GMT-02:00) Mid-Atlantic ', 'America Noronha'),
(30, '(GMT-01:00) Azores ', 'Atlantic Azores'),
(31, '(GMT-01:00) Cape Verde Is. ', 'Atlantic Cape_Verde'),
(32, '(GMT+00:00) Casablanca ', 'Africa Casablanca'),
(33, '(GMT+00:00) Edinburgh ', 'Europe London'),
(34, '(GMT+00:00) Dublin ', 'Europe Dublin'),
(35, '(GMT+00:00) Lisbon ', 'Europe Lisbon'),
(36, '(GMT+00:00) London ', 'Europe London'),
(37, '(GMT+00:00) Monrovia ', 'Africa Monrovia'),
(38, '(GMT+00:00) UTC ', 'UTC'),
(39, '(GMT+01:00) Amsterdam ', 'Europe Amsterdam'),
(40, '(GMT+01:00) Belgrade ', 'Europe Belgrade'),
(41, '(GMT+01:00) Berlin ', 'Europe Berlin'),
(42, '(GMT+01:00) Bern ', 'Europe Berlin'),
(43, '(GMT+01:00) Bratislava ', 'Europe Bratislava'),
(44, '(GMT+01:00) Brussels ', 'Europe Brussels'),
(45, '(GMT+01:00) Budapest ', 'Europe Budapest'),
(46, '(GMT+01:00) Copenhagen ', 'Europe Copenhagen'),
(47, '(GMT+01:00) Ljubljana ', 'Europe Ljubljana'),
(48, '(GMT+01:00) Madrid ', 'Europe Madrid'),
(49, '(GMT+01:00) Paris ', 'Europe Paris'),
(50, '(GMT+01:00) Prague ', 'Europe Prague'),
(51, '(GMT+01:00) Rome ', 'Europe Rome'),
(52, '(GMT+01:00) Sarajevo ', 'Europe Sarajevo'),
(53, '(GMT+01:00) Skopje ', 'Europe Skopje'),
(54, '(GMT+01:00) Stockholm ', 'Europe Stockholm'),
(55, '(GMT+01:00) Vienna ', 'Europe Vienna'),
(56, '(GMT+01:00) Warsaw ', 'Europe Warsaw'),
(57, '(GMT+01:00) West Central Africa ', 'Africa Lagos'),
(58, '(GMT+01:00) Zagreb ', 'Europe Zagreb'),
(59, '(GMT+02:00) Athens ', 'Europe Athens'),
(60, '(GMT+02:00) Bucharest ', 'Europe Bucharest'),
(61, '(GMT+02:00) Cairo ', 'Africa Cairo'),
(62, '(GMT+02:00) Harare ', 'Africa Harare'),
(63, '(GMT+02:00) Helsinki ', 'Europe Helsinki'),
(64, '(GMT+02:00) Istanbul ', 'Europe Istanbul'),
(65, '(GMT+02:00) Jerusalem ', 'Asia Jerusalem'),
(66, '(GMT+02:00) Kyiv ', 'Europe Helsinki'),
(67, '(GMT+02:00) Pretoria ', 'Africa Johannesburg'),
(68, '(GMT+02:00) Riga ', 'Europe Riga'),
(69, '(GMT+02:00) Sofia ', 'Europe Sofia'),
(70, '(GMT+02:00) Tallinn ', 'Europe Tallinn'),
(71, '(GMT+02:00) Vilnius ', 'Europe Vilnius'),
(72, '(GMT+03:00) Baghdad ', 'Asia Baghdad'),
(73, '(GMT+03:00) Kuwait ', 'Asia Kuwait'),
(74, '(GMT+03:00) Minsk ', 'Europe Minsk'),
(75, '(GMT+03:00) Nairobi ', 'Africa Nairobi'),
(76, '(GMT+03:00) Riyadh ', 'Asia Riyadh'),
(77, '(GMT+03:00) Volgograd ', 'Europe Volgograd'),
(78, '(GMT+03:30) Tehran ', 'Asia Tehran'),
(79, '(GMT+04:00) Abu Dhabi ', 'Asia Muscat'),
(80, '(GMT+04:00) Baku ', 'Asia Baku'),
(81, '(GMT+04:00) Moscow ', 'Europe Moscow'),
(82, '(GMT+04:00) Muscat ', 'Asia Muscat'),
(83, '(GMT+04:00) St. Petersburg ', 'Europe Moscow'),
(84, '(GMT+04:00) Tbilisi ', 'Asia Tbilisi'),
(85, '(GMT+04:00) Yerevan ', 'Asia Yerevan'),
(86, '(GMT+04:30) Kabul ', 'Asia Kabul'),
(87, '(GMT+05:00) Islamabad ', 'Asia Karachi'),
(88, '(GMT+05:00) Karachi ', 'Asia Karachi'),
(89, '(GMT+05:00) Tashkent ', 'Asia Tashkent'),
(90, '(GMT+05:30) Chennai ', 'Asia Calcutta'),
(91, '(GMT+05:30) Kolkata ', 'Asia Kolkata'),
(92, '(GMT+05:30) Mumbai ', 'Asia Calcutta'),
(93, '(GMT+05:30) New Delhi ', 'Asia Calcutta'),
(94, '(GMT+05:30) Sri Jayawardenepura ', 'Asia Calcutta'),
(95, '(GMT+05:45) Kathmandu ', 'Asia Katmandu'),
(96, '(GMT+06:00) Almaty ', 'Asia Almaty'),
(97, '(GMT+06:00) Astana ', 'Asia Dhaka'),
(98, '(GMT+06:00) Dhaka ', 'Asia Dhaka'),
(99, '(GMT+06:00) Ekaterinburg ', 'Asia Yekaterinburg'),
(100, '(GMT+06:30) Rangoon ', 'Asia Rangoon'),
(101, '(GMT+07:00) Bangkok ', 'Asia Bangkok'),
(102, '(GMT+07:00) Hanoi ', 'Asia Bangkok'),
(103, '(GMT+07:00) Jakarta ', 'Asia Jakarta'),
(104, '(GMT+07:00) Novosibirsk ', 'Asia Novosibirsk'),
(105, '(GMT+08:00) Beijing ', 'Asia Hong_Kong'),
(106, '(GMT+08:00) Chongqing ', 'Asia Chongqing'),
(107, '(GMT+08:00) Hong Kong ', 'Asia Hong_Kong'),
(108, '(GMT+08:00) Krasnoyarsk ', 'Asia Krasnoyarsk'),
(109, '(GMT+08:00) Kuala Lumpur ', 'Asia Kuala_Lumpur'),
(110, '(GMT+08:00) Perth ', 'Australia Perth'),
(111, '(GMT+08:00) Singapore ', 'Asia Singapore'),
(112, '(GMT+08:00) Taipei ', 'Asia Taipei'),
(113, '(GMT+08:00) Ulaan Bataar ', 'Asia Ulan_Bator'),
(114, '(GMT+08:00) Urumqi ', 'Asia Urumqi'),
(115, '(GMT+09:00) Irkutsk ', 'Asia Irkutsk'),
(116, '(GMT+09:00) Osaka ', 'Asia Tokyo'),
(117, '(GMT+09:00) Sapporo ', 'Asia Tokyo'),
(118, '(GMT+09:00) Seoul ', 'Asia Seoul'),
(119, '(GMT+09:00) Tokyo ', 'Asia Tokyo'),
(120, '(GMT+09:30) Adelaide ', 'Australia Adelaide'),
(121, '(GMT+09:30) Darwin ', 'Australia Darwin'),
(122, '(GMT+10:00) Brisbane ', 'Australia Brisbane'),
(123, '(GMT+10:00) Canberra ', 'Australia Canberra'),
(124, '(GMT+10:00) Guam ', 'Pacific Guam'),
(125, '(GMT+10:00) Hobart ', 'Australia Hobart'),
(126, '(GMT+10:00) Melbourne ', 'Australia Melbourne'),
(127, '(GMT+10:00) Port Moresby ', 'Pacific Port_Moresby'),
(128, '(GMT+10:00) Sydney ', 'Australia Sydney'),
(129, '(GMT+10:00) Yakutsk ', 'Asia Yakutsk'),
(130, '(GMT+11:00) Vladivostok ', 'Asia Vladivostok'),
(131, '(GMT+12:00) Auckland ', 'Pacific Auckland'),
(132, '(GMT+12:00) Fiji ', 'Pacific Fiji'),
(133, '(GMT+12:00) International Date Line West ', 'Pacific Kwajalein'),
(134, '(GMT+12:00) Kamchatka ', 'Asia Kamchatka'),
(135, '(GMT+12:00) Magadan ', 'Asia Magadan'),
(136, '(GMT+12:00) Marshall Is. ', 'Pacific Fiji'),
(137, '(GMT+12:00) New Caledonia ', 'Asia Magadan'),
(138, '(GMT+12:00) Solomon Is. ', 'Asia Magadan'),
(139, '(GMT+12:00) Wellington ', 'Pacific Auckland'),
(140, '(GMT+13:00) Nuku\\alofa ', 'Pacific Tongatapu');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
