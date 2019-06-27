-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 27, 2019 at 03:55 AM
-- Server version: 5.7.26
-- PHP Version: 7.0.33
-- create by Yauwarut Cangsalak

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpmixbill`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_appconfig`
--

DROP TABLE IF EXISTS `tbl_appconfig`;
CREATE TABLE IF NOT EXISTS `tbl_appconfig` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `setting` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_appconfig`
--

INSERT INTO `tbl_appconfig` (`id`, `setting`, `value`) VALUES
(1, 'CompanyName', 'ATTC-RTA>HOTSPOT'),
(2, 'theme', 'default'),
(3, 'currency_code', 'B'),
(4, 'language', 'thailand'),
(5, 'show-logo', '1'),
(6, 'nstyle', 'blue'),
(7, 'timezone', 'Asia/Bangkok'),
(8, 'dec_point', '.'),
(9, 'thousands_sep', ','),
(10, 'rtl', '0'),
(11, 'address', '153 หมู่ 3 ต.ชัยนารายณ์ อ.ชัยบาดาล จ.ลพบุรี'),
(12, 'phone', '0890167912'),
(13, 'date_format', 'm/d/Y'),
(14, 'note', 'Thank you...');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bandwidth`
--

DROP TABLE IF EXISTS `tbl_bandwidth`;
CREATE TABLE IF NOT EXISTS `tbl_bandwidth` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name_bw` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `rate_down` int(10) UNSIGNED NOT NULL,
  `rate_down_unit` enum('Kbps','Mbps') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `rate_up` int(10) UNSIGNED NOT NULL,
  `rate_up_unit` enum('Kbps','Mbps') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customers`
--

DROP TABLE IF EXISTS `tbl_customers`;
CREATE TABLE IF NOT EXISTS `tbl_customers` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `fullname` varchar(45) NOT NULL,
  `address` text,
  `phonenumber` varchar(20) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_login` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

DROP TABLE IF EXISTS `tbl_language`;
CREATE TABLE IF NOT EXISTS `tbl_language` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `folder` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_language`
--

INSERT INTO `tbl_language` (`id`, `name`, `folder`, `author`) VALUES
(1, 'Thailand', 'thailand', 'cangsalak'),
(2, 'English', 'english', 'Ismail Marzuqi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logs`
--

DROP TABLE IF EXISTS `tbl_logs`;
CREATE TABLE IF NOT EXISTS `tbl_logs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `type` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `userid` int(10) NOT NULL,
  `ip` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_logs`
--

INSERT INTO `tbl_logs` (`id`, `date`, `type`, `description`, `userid`, `ip`) VALUES
(1, '2019-06-09 10:51:01', 'Admin', 'admin Login Successful', 1, '::1'),
(2, '2019-06-09 10:55:16', 'Admin', '[admin]: Settings Saved Successfully', 1, '::1'),
(3, '2019-06-09 10:58:14', 'Admin', '[admin]: Settings Saved Successfully', 1, '::1'),
(4, '2019-06-09 10:59:16', 'Admin', '[admin]: Settings Saved Successfully', 1, '::1'),
(5, '2019-06-09 10:59:18', 'Admin', '[admin]: Settings Saved Successfully', 1, '::1'),
(6, '2019-06-09 11:00:25', 'Admin', '[admin]: Settings Saved Successfully', 1, '::1'),
(7, '2019-06-09 11:00:48', 'Admin', '[admin]: บันทึกการตั้งค่าสำเร็จแล้ว', 1, '::1'),
(8, '2019-06-09 11:01:24', 'Admin', '[admin]: บันทึกการตั้งค่าสำเร็จแล้ว', 1, '::1'),
(9, '2019-06-09 11:13:09', 'Admin', '[admin]: ผู้ใช้อัปเดตสำเร็จแล้ว', 1, '::1'),
(10, '2019-06-09 11:41:01', 'Admin', '[admin]: บันทึกการตั้งค่าสำเร็จแล้ว', 1, '::1'),
(11, '2019-06-09 11:42:13', 'Admin', '[admin]: บันทึกการตั้งค่าสำเร็จแล้ว', 1, '::1'),
(12, '2019-06-09 12:28:02', 'Admin', '[admin]: บันทึกการตั้งค่าสำเร็จแล้ว', 1, '::1'),
(13, '2019-06-27 10:27:58', 'Admin', 'admin เข้าสู่ระบบสำเร็จ', 1, '::1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_message`
--

DROP TABLE IF EXISTS `tbl_message`;
CREATE TABLE IF NOT EXISTS `tbl_message` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `from_user` varchar(32) NOT NULL,
  `to_user` varchar(32) NOT NULL,
  `title` varchar(60) NOT NULL,
  `message` text NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_plans`
--

DROP TABLE IF EXISTS `tbl_plans`;
CREATE TABLE IF NOT EXISTS `tbl_plans` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name_plan` varchar(40) NOT NULL,
  `id_bw` int(10) NOT NULL,
  `price` varchar(40) NOT NULL,
  `type` enum('Hotspot','PPPOE') NOT NULL,
  `typebp` enum('Unlimited','Limited') DEFAULT NULL,
  `limit_type` enum('Time_Limit','Data_Limit','Both_Limit') DEFAULT NULL,
  `time_limit` int(10) UNSIGNED DEFAULT NULL,
  `time_unit` enum('Mins','Hrs') DEFAULT NULL,
  `data_limit` int(10) UNSIGNED DEFAULT NULL,
  `data_unit` enum('MB','GB') DEFAULT NULL,
  `validity` int(10) NOT NULL,
  `validity_unit` enum('Days','Months') NOT NULL,
  `shared_users` int(10) DEFAULT NULL,
  `routers` varchar(32) NOT NULL,
  `pool` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pool`
--

DROP TABLE IF EXISTS `tbl_pool`;
CREATE TABLE IF NOT EXISTS `tbl_pool` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pool_name` varchar(40) NOT NULL,
  `range_ip` varchar(40) NOT NULL,
  `routers` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_routers`
--

DROP TABLE IF EXISTS `tbl_routers`;
CREATE TABLE IF NOT EXISTS `tbl_routers` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `ip_address` varchar(128) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transactions`
--

DROP TABLE IF EXISTS `tbl_transactions`;
CREATE TABLE IF NOT EXISTS `tbl_transactions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `invoice` varchar(25) NOT NULL,
  `username` varchar(32) NOT NULL,
  `plan_name` varchar(40) NOT NULL,
  `price` varchar(40) NOT NULL,
  `recharged_on` date NOT NULL,
  `expiration` date NOT NULL,
  `time` time NOT NULL,
  `method` enum('voucher','admin') NOT NULL,
  `routers` varchar(32) NOT NULL,
  `type` enum('Hotspot','PPPOE') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

DROP TABLE IF EXISTS `tbl_users`;
CREATE TABLE IF NOT EXISTS `tbl_users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(45) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `fullname` varchar(45) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `password` text CHARACTER SET latin1 NOT NULL,
  `user_type` enum('Admin','Sales') CHARACTER SET latin1 NOT NULL,
  `status` enum('Active','Inactive') CHARACTER SET latin1 NOT NULL DEFAULT 'Active',
  `last_login` datetime DEFAULT NULL,
  `creationdate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `username`, `fullname`, `password`, `user_type`, `status`, `last_login`, `creationdate`) VALUES
(1, 'admin', 'Administrator', '$1$W44.ns/.$MUnR0NeBH9xAcXm0Oku2h1', 'Admin', 'Active', '2019-06-27 10:27:58', '2014-06-23 01:43:07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_recharges`
--

DROP TABLE IF EXISTS `tbl_user_recharges`;
CREATE TABLE IF NOT EXISTS `tbl_user_recharges` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) NOT NULL,
  `username` varchar(32) NOT NULL,
  `plan_id` int(10) NOT NULL,
  `namebp` varchar(40) NOT NULL,
  `recharged_on` date NOT NULL,
  `expiration` date NOT NULL,
  `time` time NOT NULL,
  `status` varchar(20) NOT NULL,
  `method` enum('voucher','admin') NOT NULL,
  `routers` varchar(32) NOT NULL,
  `type` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_voucher`
--

DROP TABLE IF EXISTS `tbl_voucher`;
CREATE TABLE IF NOT EXISTS `tbl_voucher` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` enum('Hotspot','PPPOE') NOT NULL,
  `routers` varchar(32) NOT NULL,
  `id_plan` int(10) NOT NULL,
  `code` varchar(55) NOT NULL,
  `user` varchar(45) NOT NULL,
  `status` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
