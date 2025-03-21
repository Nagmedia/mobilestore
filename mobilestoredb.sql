-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 22, 2023 at 02:23 PM
-- Server version: 5.7.40
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobilestoredb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

DROP TABLE IF EXISTS `tbladmin`;
CREATE TABLE IF NOT EXISTS `tbladmin` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AdminName` varchar(200) DEFAULT NULL,
  `UserName` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'admin', 'admin', 5689845475, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2020-06-25 07:19:31');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrand`
--

DROP TABLE IF EXISTS `tblbrand`;
CREATE TABLE IF NOT EXISTS `tblbrand` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `BrandName` varchar(200) DEFAULT NULL,
  `Status` int(2) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblbrand`
--

INSERT INTO `tblbrand` (`ID`, `BrandName`, `Status`, `CreationDate`) VALUES
(1, 'Oppo', 1, '2020-06-26 06:13:29'),
(2, 'LG', 1, '2020-06-26 06:17:16'),
(3, 'Nokia', 1, '2020-06-26 06:17:54'),
(4, 'RedMI', 1, '2020-06-26 06:18:08'),
(5, 'Motorola', 1, '2020-06-26 06:18:28'),
(6, 'Samsung', 1, '2020-06-26 06:18:45'),
(7, 'realme', 1, '2020-06-26 06:18:55'),
(8, 'Xiaomi', 1, '2020-06-26 06:19:11'),
(9, 'Vivo', 1, '2020-06-26 06:19:20'),
(10, 'Apple', 1, '2020-06-26 06:19:28'),
(15, 'Meeroso', 1, '2020-06-26 06:20:14'),
(16, 'Teeroso', 1, '2020-06-26 06:20:22'),
(17, 'Oneplus', 1, '2020-06-26 06:20:46'),
(18, 'itel', 1, '2020-06-26 06:21:04'),
(20, 'Aquasure', 0, '2020-06-26 06:21:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

DROP TABLE IF EXISTS `tblcontact`;
CREATE TABLE IF NOT EXISTS `tblcontact` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Message` mediumtext,
  `EnquiryDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IsRead` int(5) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcontact`
--

INSERT INTO `tblcontact` (`ID`, `Name`, `Email`, `Message`, `EnquiryDate`, `IsRead`) VALUES
(1, 'Kiran', 'kran@gmail.com', 'cost of volvo place pritampura to dwarka', '2021-07-05 07:26:24', 1),
(2, 'Sarita Pandey', 'sar@gmail.com', 'huiyuihhjjkhkjvhknv iyi tuyvuoiup', '2021-07-09 12:48:40', 1),
(3, 'Test', 'test@gmail.com', 'Want to know price of forest cake', '2021-07-16 12:51:06', 1),
(4, 'Shanu', 'shanu@gmail.com', 'hkjhkjhk', '2021-07-17 07:32:14', 1),
(5, 'Taanu Sharma', 'tannu@gmail.com', 'ytjhdjguqwgyugjhbjdsuy\r\nkjhjkwhkd\r\nljkkljwq\r\nmlkjol ', '2021-07-28 12:09:22', 1),
(6, 'Harish Kumar', 'hari@gmail.com', 'rytweiuyeiouoipoipo[po\r\njknkjlkdsflkjflkdjslk;lsdkf;l\r\nn,mn,ncxm.,m.m.,.', '2021-07-31 16:34:16', NULL),
(7, 'test', 'test@gmail.com', 'Test', '2021-08-25 16:56:19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer`
--

DROP TABLE IF EXISTS `tblcustomer`;
CREATE TABLE IF NOT EXISTS `tblcustomer` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `BillingNumber` varchar(120) DEFAULT NULL,
  `CustomerName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `ModeofPayment` varchar(50) DEFAULT NULL,
  `BillingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcustomer`
--

INSERT INTO `tblcustomer` (`ID`, `BillingNumber`, `CustomerName`, `MobileNumber`, `ModeofPayment`, `BillingDate`) VALUES
(1, '295895096', 'Sarita', 7797987987, 'cash', '2020-08-27 05:37:21'),
(2, '915520085', 'Sarita', 6465464646, 'cash', '2020-08-27 05:57:42'),
(3, '255048845', 'Harish', 7987978979, 'cash', '2020-08-27 12:14:38'),
(4, '558104108', 'Rahul', 6665464654, 'card', '2020-08-27 14:58:03'),
(5, '122198457', 'RaviKumar', 5765557576, 'cash', '2020-09-02 05:53:15'),
(6, '190413658', 'Rahul Khanna', 8798998776, 'cash', '2020-09-21 11:12:26'),
(7, '761556863', 'Ritesh', 8997987979, 'cash', '2020-09-21 11:21:07'),
(8, '298091720', 'Mangal ', 5456465456, 'cash', '2020-09-21 11:43:44'),
(9, '418836227', 'Madhav', 6465464654, 'card', '2020-09-21 12:19:21'),
(10, '199920246', 'cdfds', 3345464565, 'card', '2021-06-17 11:53:42');

-- --------------------------------------------------------

--
-- Table structure for table `tblorderaddresses`
--

DROP TABLE IF EXISTS `tblorderaddresses`;
CREATE TABLE IF NOT EXISTS `tblorderaddresses` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` char(100) DEFAULT NULL,
  `Ordernumber` char(100) DEFAULT NULL,
  `Flatnobuldngno` varchar(255) DEFAULT NULL,
  `StreetName` varchar(255) DEFAULT NULL,
  `Area` varchar(255) DEFAULT NULL,
  `Landmark` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `Zipcode` int(10) DEFAULT NULL,
  `Phone` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `OrderTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `OrderFinalStatus` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `UserId` (`UserId`,`Ordernumber`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblorderaddresses`
--

INSERT INTO `tblorderaddresses` (`ID`, `UserId`, `Ordernumber`, `Flatnobuldngno`, `StreetName`, `Area`, `Landmark`, `City`, `Zipcode`, `Phone`, `Email`, `OrderTime`, `OrderFinalStatus`) VALUES
(3, '8', '680013087', 'B-101', 'ghjg', 'jhg', 'jkjj', 'hkh', 78979, 7878789789, 'j@gmail.com', '2021-08-09 11:37:14', 'Mobile Delivered'),
(4, '8', '756641148', 'skljlk', 'lkjkl', 'lkjlkj', 'lkj', 'jlk', 0, 6546546546, 'jlkj@gmail.com', '2021-08-09 11:58:02', 'Mobile Delivered'),
(5, '9', '501768737', 'xyz', 'ABC Street', 'ABC', 'NA', 'Ghazauibad', 201001, 1234567890, 'anuj@gmail.com', '2021-08-25 16:49:11', 'On The Way'),
(6, '10', '171828454', 'No. 19, 9th Cross Street', 'Sri Lakshmi Nagar, Porur,', 'Chennai', 'Municipality Office', 'Chennai', 600116, 8248440907, 'anandrajkanniyappan@gmail.com', '2023-03-20 09:40:52', NULL),
(7, '10', '240619116', '18', 'SL Nagar', 'Chennai', 'Nearby Amma Hotel', 'Chennai', 600116, 8248440907, 'rktechsoftindia@gmail.com', '2023-03-22 06:26:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblorders`
--

DROP TABLE IF EXISTS `tblorders`;
CREATE TABLE IF NOT EXISTS `tblorders` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` char(10) DEFAULT NULL,
  `PId` char(10) DEFAULT NULL,
  `IsOrderPlaced` int(11) DEFAULT NULL,
  `OrderNumber` char(100) DEFAULT NULL,
  `CashonDelivery` varchar(100) DEFAULT NULL,
  `OrderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `UserId` (`UserId`,`PId`,`OrderNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblorders`
--

INSERT INTO `tblorders` (`ID`, `UserId`, `PId`, `IsOrderPlaced`, `OrderNumber`, `CashonDelivery`, `OrderDate`) VALUES
(1, '8', '1', 1, '756641148', 'Cash on Delivery', '2021-08-09 11:14:20'),
(2, '8', '6', 1, '756641148', 'Cash on Delivery', '2021-08-09 11:16:26'),
(3, '8', '4', 1, '756641148', 'Cash on Delivery', '2021-08-09 11:16:48'),
(4, '6', '1', 1, '680013087', 'Cash on Delivery', '2021-08-09 11:35:04'),
(12, '9', '1', 1, '501768737', 'Cash on Delivery', '2021-08-25 16:48:24'),
(13, '9', '2', NULL, NULL, NULL, '2021-08-25 16:54:37'),
(14, '10', '1', 1, '171828454', 'Cash on Delivery', '2023-03-20 09:39:45'),
(15, '10', '1', 1, '240619116', 'Cash on Delivery', '2023-03-22 06:25:39');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

DROP TABLE IF EXISTS `tblpage`;
CREATE TABLE IF NOT EXISTS `tblpage` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext,
  `PageDescription` mediumtext,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', '<div style=\"text-align: justify;\"><font color=\"#4f4e4e\" face=\"Roboto, sans-serif\" size=\"3\">&nbsp;</font><font color=\"#4f4e4e\" face=\"Roboto, sans-serif\" size=\"3\">Shop Mobile Phones Online at the Best Prices in India at <b>Aishwarya</b></font><b style=\"color: rgb(79, 78, 78); font-family: Roboto, sans-serif; font-size: medium;\">&nbsp;Mobile Stores.</b></div><div style=\"text-align: justify;\"><b style=\"color: rgb(79, 78, 78); font-family: Roboto, sans-serif; font-size: medium;\"><br></b></div><div style=\"text-align: justify;\"><font color=\"#4f4e4e\" face=\"Roboto, sans-serif\" size=\"3\">Itâ€™s easy to get caught up in acronyms and tech specs while buying a new smartphone but no matter your budget, your usage, or your OS preference, youâ€™ll always find the best smartphone for yourself at&nbsp;</font><font color=\"#4f4e4e\" face=\"Roboto, sans-serif\" size=\"3\"><b>Aishwarya</b></font><b style=\"color: rgb(79, 78, 78); font-family: Roboto, sans-serif; font-size: medium;\">&nbsp;Mobile Stores.</b><font color=\"#4f4e4e\" face=\"Roboto, sans-serif\" size=\"3\">. Explore smartphones online from popular brands such as Apple, Samsung, OnePlus, Vivo, and more at&nbsp;</font><font color=\"#4f4e4e\" face=\"Roboto, sans-serif\" size=\"3\"><b>Aishwarya</b></font><b style=\"color: rgb(79, 78, 78); font-family: Roboto, sans-serif; font-size: medium;\">&nbsp;Mobile Stores.</b><font color=\"#4f4e4e\" face=\"Roboto, sans-serif\" size=\"3\">&nbsp;or in-store. The easy EMI options and other benefits let you buy your dream phone with ease.</font></div>                ', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', '<span style=\"color: rgb(85, 85, 85); font-family: Archivo, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">No.19, 1st Floor, 9th Cross Street,&nbsp;</span><span style=\"color: rgb(85, 85, 85); font-family: Archivo, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">Sri Lakshmi Nagar, Alapakkam, Porur,&nbsp;</span><span style=\"color: rgb(85, 85, 85); font-family: Archivo, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">Chennai - 600116, Tamilnadu, India.</span>', 'info@rkmobilestore.com', 8248440907, NULL, '09:30 am to 7:30 pm');

-- --------------------------------------------------------

--
-- Table structure for table `tblproducts`
--

DROP TABLE IF EXISTS `tblproducts`;
CREATE TABLE IF NOT EXISTS `tblproducts` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(200) DEFAULT NULL,
  `BrandName` varchar(200) DEFAULT NULL,
  `ModelNumber` varchar(200) DEFAULT NULL,
  `Stock` int(10) DEFAULT NULL,
  `Price` decimal(10,0) DEFAULT NULL,
  `Status` int(2) DEFAULT NULL,
  `Color` varchar(100) DEFAULT '',
  `RAM` varchar(100) DEFAULT NULL,
  `ROM` varchar(100) DEFAULT NULL,
  `ExpandableUpto` varchar(100) DEFAULT NULL,
  `FrontCamera` varchar(200) DEFAULT NULL,
  `KeyFeature` longtext,
  `Specification` longtext,
  `Processor` varchar(200) DEFAULT NULL,
  `Display` varchar(200) DEFAULT NULL,
  `Image1` varchar(200) DEFAULT NULL,
  `Image2` varchar(200) DEFAULT NULL,
  `Image3` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblproducts`
--

INSERT INTO `tblproducts` (`ID`, `ProductName`, `BrandName`, `ModelNumber`, `Stock`, `Price`, `Status`, `Color`, `RAM`, `ROM`, `ExpandableUpto`, `FrontCamera`, `KeyFeature`, `Specification`, `Processor`, `Display`, `Image1`, `Image2`, `Image3`, `CreationDate`) VALUES
(1, 'Oppo Reno6 Pro 5G (12GB/256GB | Glow)', 'Oppo', 'Reno6', 8, '500', 1, 'Glow', '12GB', '256GB', '256GB', '4 MP+8 MP+2 MP+2 MP | 32 MP Front Camera', '12GB RAM | 256GB ROM\r\n6.55 inches, 103.6 cm2 (~88.6% screen-to-body ratio)\r\n64 MP+8 MP+2 MP+2 MP | 32 MP Front Camera\r\nMediaTek MT6893 Dimensity 1200 5G (6 nm)\r\nLi-Po 4500 mAh, non-removable', 'Oppo Reno6 Pro 5G (12GB/256GB | Glow)\r\n \r\n\r\nThe OPPO Reno6 Pro 5G is not only easy on the eyes but also equipped with innovative features. The X-axis Linear Motor ensures immersive viewing and usage. With an ultra-slim body and lightweight construction, you can easily hold it during extended usage. You can replicate the appeal of some of your favourite images in a single click with the AI Palette feature. And, you can enjoy long-lasting usage with its 4500 mAh battery.\r\nDisplay\r\nDisplay Size\r\n6.55 inches, 103.6 cm2 (~88.6% screen-to-body ratio)\r\nDisplay Resolution\r\n1080 x 2400 pixels, 20:9 ratio (~402 ppi density)\r\nDisplay Type\r\nAMOLED, 90Hz, HDR10+, 500 nits (typ), 800 nits (HDR)', 'hkjhkjhjk', '6.55 inches, 103.6 cm2 (~88.6% screen-to-body ratio)', 'e7b621662c291d4e3be1fb065dc68bb31629826151.jpg', '563b9ab07e7b2ac7bdf64fb113aafcf11627365374.jpg', 'fb26e29bd66bee25fe4b1b807033f2d11627358719.jpg', '2021-07-27 04:05:19'),
(2, 'Apple Iphone 12 Mini (4GB/256GB|Purple)', 'Apple', '12 Mi', 10, '1500', 1, 'Purple', '4GB', '256 GB,', '256 GB', '12MP + 12MP | 12MP Front Camera', 'Highlights:\r\n256 GB ROM\r\n13.72 cm (5.4 inch) Super Retina XDR Display\r\n12MP + 12MP | 12MP Front Camera\r\nA14 Bionic Chip with Next Generation Neural Engine Processor\r\nCeramic Shield\r\nIP68 Water Resistance\r\nAll Screen OLED Display', 'Network\r\nNetwork Type\r\nGSM / CDMA / HSPA / EVDO / LTE / 5G\r\nBody\r\nItem Weight\r\n135 g (4.76 oz)\r\nDimensions\r\n131.5 x 64.2 x 7.4 mm (5.18 x 2.53 x 0.29 in)\r\nSIM\r\nSingle SIM (Nano-SIM and/or eSIM) or Dual SIM (Nano-SIM, dual stand-by) - for China\r\nDisplay\r\nDisplay Size\r\n5.4 inches, 71.9 cm2 (~85.1% screen-to-body ratio)\r\nDisplay Resolution\r\n1080 x 2340 pixels, 19.5:9 ratio (~476 ppi density)\r\nDisplay Type\r\nSuper Retina XDR OLED, HDR10, 625 nits (typ), 1200 nits (peak)\r\nStorage\r\nStorage\r\n256GB\r\nRAM\r\n4GB\r\nCamera\r\nPrimary Camera Features\r\nDual 12MP Camera System (Ultra Wide and Wide), Ultra Wide: f/2.4 Aperture, Wide: f/1.6 Aperture, Night Mode, Deep Fusion, Optical Image Stabilisation, 2x Optical Zoom Out, Digital Zoom Upto 5x, Portrait Mode with Advanced Bokeh and Depth Control, Portrait\r\nSecondary Camera\r\n12MP Front Camera\r\nPrimary Camera\r\n12MP + 12MP\r\nSecondary Camera Feature\r\nTrueDepth Camera, 12MP Photos, f/2.2 Aperture, Smart HDR 3 for Photos, Portrait Mode with Advanced Bokeh and Depth Control, Portrait Lighting with Six Effects (Natural, Studio, Contour, Stage, Stage Mono, High-Key Mono), Extended Dynamic Rnge for Video at\r\nBattery\r\nBattery\r\nLi-Ion 2227 mAh, non-removable\r\nPlatform\r\nOperating System\r\niOS 14.1, upgradable to iOS 14.2\r\nProcessor\r\nA14 Bionic Chip with Next Generation Neural Engine\r\nOthers\r\nSensors\r\nFace ID, Barometer, Three‑axis Gyro, Accelerometer, Proximity Sensor, Ambient Light Sensor\r\nGPS\r\nBuilt-in GPS, GLONASS, Galileo, QZSS and BeiDou\r\nWLAN\r\nWi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot\r\nBluetooth\r\nv5.0', NULL, NULL, '5cef62c2e623b4ef9ab3f895583c584e1627365453.jpg', '563b9ab07e7b2ac7bdf64fb113aafcf11627358980.jpg', '1682412aa00977c3fb8a65b510ecfbd41627358980.jpg', '2021-07-27 04:09:40'),
(3, 'Oppo Reno6 Pro 5G (12GB/256GB | Glow)', 'Oppo', 'Reno6', 8, '500', 1, 'Glow', '12GB', '256GB', '256GB', '4 MP+8 MP+2 MP+2 MP | 32 MP Front Camera', '12GB RAM | 256GB ROM\r\n6.55 inches, 103.6 cm2 (~88.6% screen-to-body ratio)\r\n64 MP+8 MP+2 MP+2 MP | 32 MP Front Camera\r\nMediaTek MT6893 Dimensity 1200 5G (6 nm)\r\nLi-Po 4500 mAh, non-removable', 'Oppo Reno6 Pro 5G (12GB/256GB | Glow)\r\n \r\n\r\nThe OPPO Reno6 Pro 5G is not only easy on the eyes but also equipped with innovative features. The X-axis Linear Motor ensures immersive viewing and usage. With an ultra-slim body and lightweight construction, you can easily hold it during extended usage. You can replicate the appeal of some of your favourite images in a single click with the AI Palette feature. And, you can enjoy long-lasting usage with its 4500 mAh battery.\r\nDisplay\r\nDisplay Size\r\n6.55 inches, 103.6 cm2 (~88.6% screen-to-body ratio)\r\nDisplay Resolution\r\n1080 x 2400 pixels, 20:9 ratio (~402 ppi density)\r\nDisplay Type\r\nAMOLED, 90Hz, HDR10+, 500 nits (typ), 800 nits (HDR)', 'hkjhkjhjk', '6.55 inches, 103.6 cm2 (~88.6% screen-to-body ratio)', 'fb26e29bd66bee25fe4b1b807033f2d11627365291.jpg', '563b9ab07e7b2ac7bdf64fb113aafcf11627365374.jpg', 'fb26e29bd66bee25fe4b1b807033f2d11627358719.jpg', '2021-07-27 04:05:19'),
(4, 'Apple Iphone 12 Mini (4GB/256GB|Purple)', 'Apple', '12 Mi', 100, '1500', 1, 'Purple', '4GB', '256 GB,', '256 GB', '12MP + 12MP | 12MP Front Camera', 'Highlights:\r\n256 GB ROM\r\n13.72 cm (5.4 inch) Super Retina XDR Display\r\n12MP + 12MP | 12MP Front Camera\r\nA14 Bionic Chip with Next Generation Neural Engine Processor\r\nCeramic Shield\r\nIP68 Water Resistance\r\nAll Screen OLED Display', 'Network\r\nNetwork Type\r\nGSM / CDMA / HSPA / EVDO / LTE / 5G\r\nBody\r\nItem Weight\r\n135 g (4.76 oz)\r\nDimensions\r\n131.5 x 64.2 x 7.4 mm (5.18 x 2.53 x 0.29 in)\r\nSIM\r\nSingle SIM (Nano-SIM and/or eSIM) or Dual SIM (Nano-SIM, dual stand-by) - for China\r\nDisplay\r\nDisplay Size\r\n5.4 inches, 71.9 cm2 (~85.1% screen-to-body ratio)\r\nDisplay Resolution\r\n1080 x 2340 pixels, 19.5:9 ratio (~476 ppi density)\r\nDisplay Type\r\nSuper Retina XDR OLED, HDR10, 625 nits (typ), 1200 nits (peak)\r\nStorage\r\nStorage\r\n256GB\r\nRAM\r\n4GB\r\nCamera\r\nPrimary Camera Features\r\nDual 12MP Camera System (Ultra Wide and Wide), Ultra Wide: f/2.4 Aperture, Wide: f/1.6 Aperture, Night Mode, Deep Fusion, Optical Image Stabilisation, 2x Optical Zoom Out, Digital Zoom Upto 5x, Portrait Mode with Advanced Bokeh and Depth Control, Portrait\r\nSecondary Camera\r\n12MP Front Camera\r\nPrimary Camera\r\n12MP + 12MP\r\nSecondary Camera Feature\r\nTrueDepth Camera, 12MP Photos, f/2.2 Aperture, Smart HDR 3 for Photos, Portrait Mode with Advanced Bokeh and Depth Control, Portrait Lighting with Six Effects (Natural, Studio, Contour, Stage, Stage Mono, High-Key Mono), Extended Dynamic Rnge for Video at\r\nBattery\r\nBattery\r\nLi-Ion 2227 mAh, non-removable\r\nPlatform\r\nOperating System\r\niOS 14.1, upgradable to iOS 14.2\r\nProcessor\r\nA14 Bionic Chip with Next Generation Neural Engine\r\nOthers\r\nSensors\r\nFace ID, Barometer, Three?axis Gyro, Accelerometer, Proximity Sensor, Ambient Light Sensor\r\nGPS\r\nBuilt-in GPS, GLONASS, Galileo, QZSS and BeiDou\r\nWLAN\r\nWi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot\r\nBluetooth\r\nv5.0', '1.5 GHZ', '5', '5cef62c2e623b4ef9ab3f895583c584e1627365453.jpg', '563b9ab07e7b2ac7bdf64fb113aafcf11627358980.jpg', '1682412aa00977c3fb8a65b510ecfbd41627358980.jpg', '2021-07-27 04:09:40'),
(5, 'Oppo Reno6 Pro 5G (12GB/256GB | Glow)', 'Oppo', 'Reno6', 8, '500', 1, 'Glow', '12GB', '256GB', '256GB', '4 MP+8 MP+2 MP+2 MP | 32 MP Front Camera', '12GB RAM | 256GB ROM\r\n6.55 inches, 103.6 cm2 (~88.6% screen-to-body ratio)\r\n64 MP+8 MP+2 MP+2 MP | 32 MP Front Camera\r\nMediaTek MT6893 Dimensity 1200 5G (6 nm)\r\nLi-Po 4500 mAh, non-removable', 'Oppo Reno6 Pro 5G (12GB/256GB | Glow)\r\n \r\n\r\nThe OPPO Reno6 Pro 5G is not only easy on the eyes but also equipped with innovative features. The X-axis Linear Motor ensures immersive viewing and usage. With an ultra-slim body and lightweight construction, you can easily hold it during extended usage. You can replicate the appeal of some of your favourite images in a single click with the AI Palette feature. And, you can enjoy long-lasting usage with its 4500 mAh battery.\r\nDisplay\r\nDisplay Size\r\n6.55 inches, 103.6 cm2 (~88.6% screen-to-body ratio)\r\nDisplay Resolution\r\n1080 x 2400 pixels, 20:9 ratio (~402 ppi density)\r\nDisplay Type\r\nAMOLED, 90Hz, HDR10+, 500 nits (typ), 800 nits (HDR)', 'hkjhkjhjk', '6.55 inches, 103.6 cm2 (~88.6% screen-to-body ratio)', 'fb26e29bd66bee25fe4b1b807033f2d11627365291.jpg', '563b9ab07e7b2ac7bdf64fb113aafcf11627365374.jpg', 'fb26e29bd66bee25fe4b1b807033f2d11627358719.jpg', '2021-07-27 04:05:19'),
(6, 'Apple Iphone 12 Mini (4GB/256GB|Purple)', 'Apple', '12 Mi', 10, '1500', 0, 'Purple', '4GB', '256 GB,', '256 GB', '12MP + 12MP | 12MP Front Camera', 'Highlights:\r\n256 GB ROM\r\n13.72 cm (5.4 inch) Super Retina XDR Display\r\n12MP + 12MP | 12MP Front Camera\r\nA14 Bionic Chip with Next Generation Neural Engine Processor\r\nCeramic Shield\r\nIP68 Water Resistance\r\nAll Screen OLED Display', 'Network\r\nNetwork Type\r\nGSM / CDMA / HSPA / EVDO / LTE / 5G\r\nBody\r\nItem Weight\r\n135 g (4.76 oz)\r\nDimensions\r\n131.5 x 64.2 x 7.4 mm (5.18 x 2.53 x 0.29 in)\r\nSIM\r\nSingle SIM (Nano-SIM and/or eSIM) or Dual SIM (Nano-SIM, dual stand-by) - for China\r\nDisplay\r\nDisplay Size\r\n5.4 inches, 71.9 cm2 (~85.1% screen-to-body ratio)\r\nDisplay Resolution\r\n1080 x 2340 pixels, 19.5:9 ratio (~476 ppi density)\r\nDisplay Type\r\nSuper Retina XDR OLED, HDR10, 625 nits (typ), 1200 nits (peak)\r\nStorage\r\nStorage\r\n256GB\r\nRAM\r\n4GB\r\nCamera\r\nPrimary Camera Features\r\nDual 12MP Camera System (Ultra Wide and Wide), Ultra Wide: f/2.4 Aperture, Wide: f/1.6 Aperture, Night Mode, Deep Fusion, Optical Image Stabilisation, 2x Optical Zoom Out, Digital Zoom Upto 5x, Portrait Mode with Advanced Bokeh and Depth Control, Portrait\r\nSecondary Camera\r\n12MP Front Camera\r\nPrimary Camera\r\n12MP + 12MP\r\nSecondary Camera Feature\r\nTrueDepth Camera, 12MP Photos, f/2.2 Aperture, Smart HDR 3 for Photos, Portrait Mode with Advanced Bokeh and Depth Control, Portrait Lighting with Six Effects (Natural, Studio, Contour, Stage, Stage Mono, High-Key Mono), Extended Dynamic Rnge for Video at\r\nBattery\r\nBattery\r\nLi-Ion 2227 mAh, non-removable\r\nPlatform\r\nOperating System\r\niOS 14.1, upgradable to iOS 14.2\r\nProcessor\r\nA14 Bionic Chip with Next Generation Neural Engine\r\nOthers\r\nSensors\r\nFace ID, Barometer, Three‑axis Gyro, Accelerometer, Proximity Sensor, Ambient Light Sensor\r\nGPS\r\nBuilt-in GPS, GLONASS, Galileo, QZSS and BeiDou\r\nWLAN\r\nWi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot\r\nBluetooth\r\nv5.0', 'der', 'efrwr', '5cef62c2e623b4ef9ab3f895583c584e1627365453.jpg', '563b9ab07e7b2ac7bdf64fb113aafcf11627358980.jpg', '1682412aa00977c3fb8a65b510ecfbd41627358980.jpg', '2021-07-27 04:09:40');

-- --------------------------------------------------------

--
-- Table structure for table `tblreview`
--

DROP TABLE IF EXISTS `tblreview`;
CREATE TABLE IF NOT EXISTS `tblreview` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `ProductID` int(10) DEFAULT NULL,
  `ReviewTitle` varchar(200) DEFAULT NULL,
  `Review` mediumtext,
  `Name` varchar(200) DEFAULT NULL,
  `DateofReview` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Remark` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblreview`
--

INSERT INTO `tblreview` (`ID`, `ProductID`, `ReviewTitle`, `Review`, `Name`, `DateofReview`, `Remark`, `Status`, `UpdationDate`) VALUES
(1, 1, 'Great Product', 'nice product I have great expierince', 'manika', '2021-08-12 07:43:48', 'Review Accept', 'Review Accept', '2021-08-12 07:15:07'),
(2, 3, 'Great Expierence', 'nice product', 'manish', '2021-08-12 11:33:42', 'Review Reject', 'Review Reject', '2021-08-12 07:15:07'),
(5, 2, 'test', 'This is for testing Purpose', 'test', '2021-08-25 17:03:31', 'Review Accept', 'Review Accept', '2021-08-25 16:54:56');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscriber`
--

DROP TABLE IF EXISTS `tblsubscriber`;
CREATE TABLE IF NOT EXISTS `tblsubscriber` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `Email` varchar(200) DEFAULT NULL,
  `DateofSub` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblsubscriber`
--

INSERT INTO `tblsubscriber` (`ID`, `Email`, `DateofSub`) VALUES
(1, 'ani@gmail.com', '2021-07-16 07:32:33'),
(2, 'rahul@gmail.com', '2021-07-16 07:32:33'),
(6, 'j@gmail.com', '2021-08-16 15:00:59'),
(7, 'cfsdf@gmail.com', '2021-08-25 16:57:34');

-- --------------------------------------------------------

--
-- Table structure for table `tbltracking`
--

DROP TABLE IF EXISTS `tbltracking`;
CREATE TABLE IF NOT EXISTS `tbltracking` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `OrderId` char(50) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `status` char(50) DEFAULT NULL,
  `StatusDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `OrderCanclledByUser` int(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltracking`
--

INSERT INTO `tbltracking` (`ID`, `OrderId`, `remark`, `status`, `StatusDate`, `OrderCanclledByUser`) VALUES
(1, '680013087', 'order confirmed', 'Order Confirmed', '2021-08-11 05:29:47', NULL),
(2, '680013087', 'Mobile Pickup', 'Mobile Pickup', '2021-08-11 05:35:09', NULL),
(3, '680013087', 'Mobile Pickup', 'Mobile Pickup', '2021-08-11 05:36:50', NULL),
(4, '680013087', 'Mobile Pickup', 'Mobile Pickup', '2021-08-11 05:37:59', NULL),
(5, '756641148', 'Order Confirmed', 'Order Confirmed', '2021-08-11 05:50:31', NULL),
(6, '756641148', 'Mobile Pickup', 'Mobile Pickup', '2021-08-11 05:50:56', NULL),
(7, '756641148', 'On the way', 'On The Way', '2021-08-11 05:51:28', NULL),
(8, '756641148', 'Delivered', 'Mobile Delivered', '2021-08-11 05:52:20', NULL),
(9, '501768737', 'Order is confirmed', 'Order Confirmed', '2021-08-25 16:50:39', NULL),
(10, '501768737', 'In transit', 'On The Way', '2021-08-25 16:51:03', NULL),
(11, '501768737', 'Delivered', 'On The Way', '2021-08-25 16:51:14', NULL),
(12, '680013087', 'delivered', 'Mobile Delivered', '2021-08-25 17:10:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

DROP TABLE IF EXISTS `tbluser`;
CREATE TABLE IF NOT EXISTS `tbluser` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FirstName`, `LastName`, `Email`, `MobileNumber`, `Password`, `RegDate`) VALUES
(1, 'Pankaj', 'Shahu', 'testuser@gmail.com', 7894561236, '202cb962ac59075b964b07152d234b70', '2019-04-08 07:41:22'),
(2, 'Rakesh', 'Chandra', 'rakesh@gmail.com', 7656234589, '202cb962ac59075b964b07152d234b70', '2019-04-08 07:43:28'),
(3, 'Yogesh', 'Chandra', 'y@gmail.com', 8989898989, '202cb962ac59075b964b07152d234b70', '2019-04-24 07:04:02'),
(4, 'Yogesh', 'Shah', 'Test1@gmail.com', 8975895698, '202cb962ac59075b964b07152d234b70', '2019-05-06 09:09:05'),
(5, 'Test demo', 'User', 'testuser123@gmail.com', 1234567890, '7ec66345281b134a33f784bcd06d7ea5', '2019-05-06 16:26:40'),
(6, 'Abir', 'Rajwansh', 'abir@gmail.com', 7987897897, '202cb962ac59075b964b07152d234b70', '2021-07-10 06:58:13'),
(7, 'Devi Nand', 'Shah', 'Devi@gmail.com', 9797987987, '202cb962ac59075b964b07152d234b70', '2021-07-16 08:02:24'),
(8, 'Manu', 'Sharma', 'manu@gmail.com', 4654654654, '202cb962ac59075b964b07152d234b70', '2021-08-03 07:26:31'),
(9, 'Anuj', 'kumar', 'ak30@gmail.com', 1234563214, 'f925916e2754e5e03f75dd58a5733251', '2021-08-25 16:47:14'),
(10, 'Anandraj', 'Kanniyappan', 'anandrajkanniyappan@gmail.com', 8248440907, 'd343c30c3b471c07a20cb4d2eab445f7', '2023-03-20 09:37:56');

-- --------------------------------------------------------

--
-- Table structure for table `tblwish`
--

DROP TABLE IF EXISTS `tblwish`;
CREATE TABLE IF NOT EXISTS `tblwish` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `ProductId` int(5) DEFAULT NULL,
  `UserId` int(11) DEFAULT NULL,
  `WishlistDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblwish`
--

INSERT INTO `tblwish` (`ID`, `ProductId`, `UserId`, `WishlistDate`) VALUES
(2, 1, 6, '2021-08-10 07:56:38'),
(4, 1, 8, '2021-08-10 11:41:52'),
(5, 1, 8, '2021-08-13 05:44:32');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
