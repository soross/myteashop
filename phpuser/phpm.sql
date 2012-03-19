-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 16, 2012 at 04:16 AM
-- Server version: 5.5.16
-- PHP Version: 5.2.15

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `phpm`
--

-- --------------------------------------------------------

--
-- Table structure for table `domains`
--

CREATE TABLE IF NOT EXISTS `domains` (
  `domain_id` int(11) NOT NULL AUTO_INCREMENT,
  `domain_name` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reg_time` datetime NOT NULL,
  `owner` varchar(30) NOT NULL,
  `owner_ln` varchar(20) NOT NULL,
  `owner_fn` varchar(20) NOT NULL,
  `owner_country` varchar(100) NOT NULL,
  `owner_province` varchar(20) NOT NULL,
  `owner_city` varchar(20) NOT NULL,
  `owner_street` varchar(100) NOT NULL,
  `owner_zip` varchar(10) NOT NULL,
  `owner_telCANE` varchar(50) NOT NULL,
  `owner_faxCANE` varchar(50) NOT NULL,
  `owner_email` varchar(50) NOT NULL,
  `period` int(2) NOT NULL,
  PRIMARY KEY (`domain_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `domains`
--

INSERT INTO `domains` (`domain_id`, `domain_name`, `user_id`, `reg_time`, `owner`, `owner_ln`, `owner_fn`, `owner_country`, `owner_province`, `owner_city`, `owner_street`, `owner_zip`, `owner_telCANE`, `owner_faxCANE`, `owner_email`, `period`) VALUES
(1, 'fuckmonalcer.net', 1, '2011-11-15 21:32:05', 'sun', 'li', 'sun', 'CN', 'guangdong', 'guangzhou', 'xiaozhou', '111111', '86|020|11111111|8000', '86|021|11111111|8000', 'coine90@hotmail.com', 1),
(2, 'fuckmonalcer.net', 1, '2011-11-15 22:21:46', 'sun', 'li', 'sun', 'CN', 'guangdong', 'guangzhou', 'xiaozhou', '111111', '86|020|11111111|8000', '86|021|11111111|8000', 'coine90@hotmail.com', 1),
(3, 'fuckmonalcer.net', 1, '2011-11-15 22:21:54', 'sun', 'li', 'sun', 'CN', 'guangdong', 'guangzhou', 'xiaozhou', '111111', '86|020|11111111|8000', '86|021|11111111|8000', 'coine90@hotmail.com', 1),
(4, 'uggusa.net', 1, '2011-11-15 22:22:01', 'sun', 'li', 'sun', 'CN', 'guangdong', 'guangzhou', 'xiaozhou', '111111', '86|020|11111111|8000', '86|021|11111111|8000', 'coine90@hotmail.com', 1),
(5, 'outletmonclers.com', 1, '2011-11-15 22:22:15', 'sun', 'li', 'sun', 'CN', 'guangdong', 'guangzhou', 'xiaozhou', '111111', '86|020|11111111|8000', '86|021|11111111|8000', 'coine90@hotmail.com', 1),
(6, 'outletmonclers.com', 1, '2011-11-15 22:22:15', 'sun', 'li', 'sun', 'CN', 'guangdong', 'guangzhou', 'xiaozhou', '111111', '86|020|11111111|8000', '86|021|11111111|8000', 'coine90@hotmail.com', 1),
(7, 'ugogogoo.com', 8, '2012-01-12 23:53:25', 'dsfsdfa', 'fasdf', 'asdfasd', 'CN', 'sadfsdf', 'asdfasdf', 'sadfasdfasd', '444444', '86|444|44444444|4444', '86|444|444444444|4444', 'bus@1.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `domain_detail`
--

CREATE TABLE IF NOT EXISTS `domain_detail` (
  `domain_id` int(11) NOT NULL,
  `domain_dns` text NOT NULL,
  `domain_ip` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `domain_detail`
--

INSERT INTO `domain_detail` (`domain_id`, `domain_dns`, `domain_ip`) VALUES
(1, 'dns1.form.net|dns2.form.net', ''),
(10, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL DEFAULT '',
  `password` varchar(45) NOT NULL DEFAULT '',
  `sex` char(1) NOT NULL DEFAULT '',
  `mail` varchar(255) NOT NULL DEFAULT '',
  `photo` varchar(255) DEFAULT NULL,
  `tel` varchar(45) DEFAULT NULL,
  `web` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `inter` text,
  `intro` text,
  `reg_time` varchar(19) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `sex`, `mail`, `photo`, `tel`, `web`, `birthday`, `inter`, `intro`, `reg_time`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '0', 'coine90@hotmail.com', NULL, '', '', '', '', '', '2011-10-18 14:14:50'),
(3, 'test', '098f6bcd4621d373cade4e832627b4f6', '', 'test@teat.com', NULL, '', '', '', '', '', '2011-10-20 09:55:32'),
(4, 'test', '0b4e7a0e5fe84ad35fb5f95b9ceeac79', '', 'test@teat.com', NULL, '', '', '', '', '', '2011-10-20 09:56:47'),
(5, 'gougou', '51ff9fb42044b57a0df1dcff214c67d8', '', 'test@teat.com', NULL, '', '', '', '', '', '2011-10-22 14:06:38'),
(6, 'what', '827ccb0eea8a706c4c34a16891f84e7b', '', '11111@111.com', NULL, '', '', '', '', '', '2011-12-27 18:14:06'),
(7, 'admin4', 'c4ca4238a0b923820dcc509a6f75849b', '', 'y@y.com', NULL, '', '', '', '', '', '2012-01-11 21:25:21'),
(8, 'jones', '96e79218965eb72c92a549dd5a330112', '', 'bus@1.com', NULL, '', '', '', '', '', '2012-01-12 23:46:37'),
(9, 'jones', '96e79218965eb72c92a549dd5a330112', '', 'bus@1.com', NULL, '', '', '', '', '', '2012-01-12 23:47:19'),
(10, 'jones', '96e79218965eb72c92a549dd5a330112', '', 'bus@1.com', NULL, '', '', '', '', '', '2012-01-12 23:48:44');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
