-- phpMyAdmin SQL Dump
-- version 2.11.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 18, 2014 at 11:22 AM
-- Server version: 5.0.45
-- PHP Version: 5.2.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `diary`
--

-- --------------------------------------------------------

--
-- Table structure for table `audios`
--

CREATE TABLE `audios` (
  `aud_id` int(11) NOT NULL auto_increment,
  `aud_user` int(11) NOT NULL,
  `aud_aud` longtext collate latin1_general_ci NOT NULL,
  `aud_date` varchar(100) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`aud_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `audios`
--


-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `com_id` int(11) NOT NULL auto_increment,
  `com_user` int(11) NOT NULL,
  `com_com` longtext collate latin1_general_ci NOT NULL,
  `com_date` varchar(100) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`com_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`com_id`, `com_user`, `com_com`, `com_date`) VALUES
(1, 1, 'Today is My Birthday', '17-Jun-2013-Mon');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `con_id` int(11) NOT NULL auto_increment,
  `con_user` int(11) NOT NULL,
  `con_home` varchar(100) collate latin1_general_ci NOT NULL,
  `con_mobile` varchar(100) collate latin1_general_ci NOT NULL,
  `con_fax` varchar(100) collate latin1_general_ci NOT NULL,
  `con_email` varchar(100) collate latin1_general_ci NOT NULL,
  `con_fb` varchar(100) collate latin1_general_ci NOT NULL,
  `con_web` varchar(100) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`con_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`con_id`, `con_user`, `con_home`, `con_mobile`, `con_fax`, `con_email`, `con_fb`, `con_web`) VALUES
(1, 8, '-', '9638520741', '-', 'hari@gmail.com', 'Hari Hari', '-'),
(2, 1, '0242-66163656', '9994482552', '-', 'mahe@gmail.com', 'Mahendran R', '-'),
(3, 2, '0422-2425262', '9876543210', '-', 'rich@gmail.com', '-', '-'),
(4, 3, '0422-2425262', '9876543210', '+0426356263552', 'sara@gmail.com', 'MS Saravanan', 'www.mssaravanan.com'),
(5, 4, '044-6235325', '2987654310', '-', 'shiam@gmail.com', 'Shiyam Prashant', '-');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `img_id` int(11) NOT NULL auto_increment,
  `img_user` int(11) NOT NULL,
  `img_img` longtext collate latin1_general_ci NOT NULL,
  `img_date` varchar(100) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`img_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`img_id`, `img_user`, `img_img`, `img_date`) VALUES
(1, 1, 'img/24-12-13-12-08-13-Erode.jpg', '17-Jun-2013-Mon');

-- --------------------------------------------------------

--
-- Table structure for table `peer_chat`
--

CREATE TABLE `peer_chat` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `from` varchar(255) NOT NULL default '',
  `to` varchar(255) NOT NULL default '',
  `message` text NOT NULL,
  `sent` datetime NOT NULL default '0000-00-00 00:00:00',
  `recd` int(10) unsigned NOT NULL default '0',
  `sex` varchar(5) NOT NULL,
  `stratus` text NOT NULL,
  `action` int(11) NOT NULL default '0',
  `online` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `from` (`from`),
  KEY `to` (`to`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `peer_chat`
--

INSERT INTO `peer_chat` (`id`, `from`, `to`, `message`, `sent`, `recd`, `sex`, `stratus`, `action`, `online`) VALUES
(1, 'mahe', 'rich', 'hi dude', '2013-12-24 12:09:39', 1, '', '', 0, 0),
(2, 'mahe', 'rich', 'HI', '2013-12-31 12:18:51', 1, '', '', 0, 0),
(3, 'rich', 'mahe', 'hello', '2013-12-31 12:19:00', 1, '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `peer_userstatus`
--

CREATE TABLE `peer_userstatus` (
  `username` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY  (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peer_userstatus`
--


-- --------------------------------------------------------

--
-- Table structure for table `remin`
--

CREATE TABLE `remin` (
  `re_id` int(11) NOT NULL auto_increment,
  `re_user` int(11) NOT NULL,
  `re_tit` varchar(100) collate latin1_general_ci NOT NULL,
  `re_date` varchar(100) collate latin1_general_ci NOT NULL,
  `re_time` varchar(100) collate latin1_general_ci NOT NULL,
  `re_who` varchar(100) collate latin1_general_ci NOT NULL,
  `re_loc` varchar(100) collate latin1_general_ci NOT NULL,
  `re_desc` longtext collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`re_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `remin`
--

INSERT INTO `remin` (`re_id`, `re_user`, `re_tit`, `re_date`, `re_time`, `re_who`, `re_loc`, `re_desc`) VALUES
(1, 1, 'Christmas', '24-12-2013', '12.00 AM', 'God', 'Coimbatore', 'Nice to Meet them');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL auto_increment,
  `user_name` varchar(100) NOT NULL,
  `user_uname` varchar(100) NOT NULL,
  `user_pwd` varchar(100) NOT NULL,
  `user_photo` longtext NOT NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_uname`, `user_pwd`, `user_photo`) VALUES
(1, 'Mahendran', 'mahe', 'mahe', 'user/25-11-13-12-03-19-mahe.png'),
(2, 'Richard', 'rich', 'rich', 'user/28-11-13-17-04-39-rich.png'),
(3, 'Saravanan', 'sara', 'sara', 'user/25-11-13-12-04-14-sara.png'),
(4, 'Shiyam', 'shiam', 'shiam', 'user/25-11-13-12-08-28-shiam.png'),
(8, 'Hariharan', 'hari', 'hari', 'user/04-12-13-11-31-49-hari.png');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `vid_id` int(11) NOT NULL auto_increment,
  `vid_user` int(11) NOT NULL,
  `vid_vid` longtext collate latin1_general_ci NOT NULL,
  `vid_date` varchar(100) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`vid_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `videos`
--

