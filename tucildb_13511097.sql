-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2014 at 05:57 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tucildb_13511097`
--

-- --------------------------------------------------------

--
-- Table structure for table `listpost`
--

CREATE TABLE IF NOT EXISTS `listpost` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `post` text NOT NULL,
  `published` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `listpost`
--

INSERT INTO `listpost` (`id`, `id_user`, `title`, `date`, `post`, `published`) VALUES
(0, 1, 'Coba coba c', '2014-10-04', 'adfadfadfasjovpwe\r\nasj;ljdvowiejflfovioqepfjkld;vj;lsdngaoiefw0oevnowiegnwoietnoehnapsdvhnaospienghtwohngdbnvsnvsakdvn,vc.v.c\r\nfl;asdjfowejv?d\r\noasdjfaosdphgoebowgngnwlgndoodinviocvnw', 't'),
(1, 0, 'Post baru', '2014-09-05', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 't'),
(2, 2, 'tes', '2014-10-10', 'sdfadsfasdfasdf', 't'),
(3, 0, 'Raja Temporasi rangga', '2014-03-10', 'chkfhmvghkf', 't'),
(4, 1, 'tes333', '2014-12-10', 'adsfafasfdfsfasf wwwww', 'f'),
(5, 1, 'huahahahaha', '2014-11-27', 'tinggal cookiess', 'f'),
(6, 2, 'tes owner', '2014-11-27', 'berhasil! asdfasd', 't');

-- --------------------------------------------------------

--
-- Table structure for table `post-komen`
--

CREATE TABLE IF NOT EXISTS `post-komen` (
  `myID` int(11) NOT NULL,
  `id_post` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tanggal` datetime NOT NULL,
  `isi` text NOT NULL,
  PRIMARY KEY (`myID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post-komen`
--

INSERT INTO `post-komen` (`myID`, `id_post`, `nama`, `email`, `tanggal`, `isi`) VALUES
(0, 0, 'Anu', 'anggapardana.geraldi@gmail.coma', '2014-10-14 12:41:28', 'tes'),
(1, 0, 'geraldi', 'anggapardana.geraldi@gmail.co', '2014-10-14 12:41:48', 'tes lagi'),
(2, 0, 'asdfasdf', 'anggapardana.geraldi@gmail.co', '2014-10-14 13:43:59', 'coba'),
(3, 3, 'geraldi', 'anggapardana.geraldi@gmail.coma', '2014-10-14 02:20:00', 'huaahahahaha'),
(4, 3, 'geraldi', 'anggapardana.geraldi@gmail.coms', '2014-10-14 14:20:34', 'lhooo?????????'),
(5, 3, 'akbar', 'ajs.ffh@gmail.hc', '2014-10-15 08:52:56', 'fghfghfg'),
(6, 2, 'aa', 'a@a.com', '2014-11-20 20:15:08', 'ha'),
(7, 2, 'aaa', 'g@a.com', '2014-11-26 00:28:43', 'wkwkwkw'),
(8, 2, 'bb', 'aa@t.cc', '2014-11-26 00:33:00', 'ss'),
(9, 0, 'asss', 'cccc@s.ss', '2014-11-26 00:34:50', 'coba lagi'),
(11, 1, 'koji', 'geraldi.anggapardana@hotmail.com', '2014-11-26 16:06:02', 'eeeeeeee');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `role` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `role`) VALUES
(0, 'geraldi', '123', 'null@a.co.id', 'admin'),
(1, 'fawwaz', '123', 'geraldi.anggapardana@hotmail.com', 'owner'),
(2, 'koji', '123', 'geraldi.anggapardana@hotmail.com', 'editor'),
(3, 'anuku', 'aaa', 'geraldi.anggapardana@hotmail.com', 'owner'),
(4, 'waw', '123', 'geraldi.anggapardana@hotmail.com', 'owner');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
