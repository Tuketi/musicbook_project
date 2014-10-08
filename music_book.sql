-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2013 at 04:27 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `music_book`
--
CREATE DATABASE IF NOT EXISTS `music_book` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `music_book`;

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE IF NOT EXISTS `albums` (
  `album_id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `band_id` int(5) unsigned NOT NULL,
  `album_name` varchar(100) NOT NULL,
  `album_image` varchar(100) NOT NULL,
  `album_date` date NOT NULL,
  PRIMARY KEY (`album_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`album_id`, `band_id`, `album_name`, `album_image`, `album_date`) VALUES
(1, 1, 'Third Eye Blind', 'album_3eb.png', '1997-04-08'),
(2, 1, 'Blue', 'album_blue.png', '1999-11-23'),
(3, 1, 'Out of the Vein', 'album_out_of_the_vein.png', '2003-05-13'),
(4, 1, 'Ursa Major', 'album_ursa_major.png', '2009-08-18'),
(5, 2, 'No Name Face', 'album_no_name_face.png', '2000-10-31'),
(6, 2, 'Stanley Climbfall', 'album_stanley_climbfall.png', '2002-09-17'),
(7, 2, 'Lifehouse', 'album_lifehouse.png', '2005-03-22'),
(8, 2, 'Who We Are', 'album_who_we_are.png', '2007-06-18'),
(9, 2, 'Smoke & Mirrors', 'album_smoke_and_mirrors.png', '2010-03-02'),
(10, 2, 'Almeria', 'album_almeria.png', '2012-12-11'),
(11, 3, 'Rockin'' the Suburbs', 'album_rockin_the_suburbs.png', '2001-09-11'),
(12, 3, 'Songs for Silverman', 'album_songs_for_silverman.png', '2005-04-11'),
(13, 3, 'Way To Normal', 'album_way_to_normal.png', '2008-09-17'),
(14, 5, 'Waiting For My Rocket to Come', 'album_waiting_for_my_rocket_to_come.png', '2002-10-15'),
(15, 5, 'Mr. A-Z', 'album_mr_a_z.png', '2005-07-26'),
(16, 5, 'We Sing. We Dance. We Steal Things.', 'album_sing_dance.png', '2008-05-13'),
(17, 5, 'Love Is A Four Letter Word', 'album_love.png', '2002-04-13'),
(18, 4, 'A History of Sport Fishing', 'album_history_of_sport_fishing.png', '2002-05-07'),
(19, 4, 'More Deep Cuts', 'album_more_deep_cuts.png', '2005-07-12'),
(20, 4, 'Book of Bad Breaks', 'album_book_of_bad_breaks.png', '2007-04-27');

-- --------------------------------------------------------

--
-- Table structure for table `bands`
--

CREATE TABLE IF NOT EXISTS `bands` (
  `band_id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `band_name` varchar(100) NOT NULL,
  `band_image` varchar(100) NOT NULL,
  `band_bio` text NOT NULL,
  PRIMARY KEY (`band_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `bands`
--

INSERT INTO `bands` (`band_id`, `band_name`, `band_image`, `band_bio`) VALUES
(1, 'Third Eye Blind', 'photo_3eb.png', 'Third Eye Blind is an American alternative rock band formed in the early 1990s in San Francisco. The songwriting duo of Stephan Jenkins and Kevin Cadogan signed the band''s first major label recording contract with Elektra records in 1996, which was later reported as the largest publishing deal ever for an unsigned artist.'),
(2, 'Lifehouse', 'photo_lifehouse.png', 'Lifehouse is an American rock band from Los Angeles comprising Jason Wade (lead vocals, rhythm guitar), Rick Woolstenhulme, Jr. (drums, percussion), Bryce Soderberg (bass guitar, back-up vocals) and Ben Carey (lead guitar).\r\n\r\nThe band came to mainstream prominence in 2001 with the hit single "Hanging by a Moment" from their debut studio album, No Name Face. The song was #1 for three weeks on the Billboard Modern Rock Tracks chart and peaked at #2 on the Billboard Hot 100 charts, and the single won a Billboard Music Award for Hot 100 Single of the Year, having spent twenty weeks in the top 10 and more than a year on the charts.'),
(3, 'Ben Folds', 'photo_benfolds.png', 'Benjamin Scott "Ben" Folds (born September 12, 1966) is an American singer-songwriter and record producer. From 1995 to 2000, Folds was the frontman and pianist of the alternative rock band Ben Folds Five. After the group temporarily disbanded, Folds performed as a solo artist and has toured all over the world. The group reunited in 2011. He has also collaborated with musicians such as William Shatner, Regina Spektor and "Weird Al" Yankovic and undertaken experimental songwriting projects with authors such as Nick Hornby and Neil Gaiman. In addition to contributing music to the soundtracks of the animated films Over the Hedge, and Hoodwinked!, Folds produced Amanda Palmer''s first solo album and has been a judge on the NBC a cappella singing contest The Sing-Off since 2009.'),
(4, 'Thee More Shallows', 'photo_theemoreshallows.png', 'The three musicians who would come to comprise Thee More Shallows met for the first time at a concert in 2001, where they were all playing with different groups. Songwriter Dee Kesler at the time was in a band called Shackleton along with Tadas Kisielius, and the two of them became the founding members of the group originally known as simply Thee Shallows. Tadas soon moved away, however, and so Kesler brought in Chavo Fraser and Jason Gonzales, both of whom were performing as drummers at the time.'),
(5, 'Jason Mraz', 'photo_jasonmraz.png', 'Jason Thomas Mraz (born June 23, 1977) is an American singer-songwriter. Mraz first came to prominence on the San Diego coffee house scene in 2000. At one of these coffee houses, Mraz met percussionist Toca Rivera and released Live at Java Joe''s. He released his debut album, Waiting for My Rocket to Come, which contained the hit single "The Remedy (I Won''t Worry)", in 2002, but it was not until the release of his second album, Mr. A-Z, in 2005, that Mraz achieved major commercial success. The album peaked at number five on the Billboard 200 and sold over 100,000 copies in the US. In 2008, Mraz released his third studio album, We Sing. We Dance. We Steal Things. The album debuted at number three on the Billboard 200 and was a commercial success worldwide, peaking in the top ten of many international charts.');

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE IF NOT EXISTS `favourites` (
  `fav_id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(5) unsigned NOT NULL,
  `band_id` int(5) unsigned NOT NULL,
  PRIMARY KEY (`fav_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `favourites`
--

INSERT INTO `favourites` (`fav_id`, `user_id`, `band_id`) VALUES
(1, 4, 1),
(2, 4, 2),
(3, 4, 3),
(4, 3, 4),
(5, 3, 5),
(6, 8, 1),
(7, 8, 3);

-- --------------------------------------------------------

--
-- Table structure for table `friends_list`
--

CREATE TABLE IF NOT EXISTS `friends_list` (
  `link_id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(5) unsigned NOT NULL,
  `friend_id` int(5) unsigned NOT NULL,
  PRIMARY KEY (`link_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `friends_list`
--

INSERT INTO `friends_list` (`link_id`, `user_id`, `friend_id`) VALUES
(1, 4, 3),
(2, 7, 5),
(3, 7, 4),
(4, 8, 4);

-- --------------------------------------------------------

--
-- Table structure for table `genre_band_link`
--

CREATE TABLE IF NOT EXISTS `genre_band_link` (
  `link_id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `band_id` int(5) unsigned NOT NULL,
  `genre_id` int(5) unsigned NOT NULL,
  PRIMARY KEY (`link_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `genre_band_link`
--

INSERT INTO `genre_band_link` (`link_id`, `band_id`, `genre_id`) VALUES
(1, 1, 1),
(2, 3, 1),
(3, 3, 2),
(4, 3, 3),
(5, 3, 4),
(6, 5, 1),
(7, 5, 5),
(8, 2, 3),
(9, 2, 6),
(10, 2, 1),
(11, 1, 3),
(12, 4, 7),
(13, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `genre_types`
--

CREATE TABLE IF NOT EXISTS `genre_types` (
  `genre_id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `genre_type_name` varchar(30) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `genre_types`
--

INSERT INTO `genre_types` (`genre_id`, `genre_type_name`) VALUES
(1, 'alternative'),
(2, 'piano rock'),
(3, 'rock'),
(4, 'indie'),
(5, 'acoustic'),
(6, 'pop'),
(7, 'experimental');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `message_id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `owner_id` int(5) unsigned NOT NULL,
  `poster_id` int(5) unsigned NOT NULL,
  `message_text` varchar(500) NOT NULL,
  `message_date` datetime NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`message_id`, `owner_id`, `poster_id`, `message_text`, `message_date`) VALUES
(1, 3, 7, 'Hello', '2013-12-10 13:12:10'),
(2, 3, 4, 'Hey Nathan lol.', '2013-12-12 10:12:00'),
(3, 3, 4, 'Nathan I''m spamming your wall, what are you going to do about it.', '2013-12-13 06:19:27'),
(4, 4, 3, 'Great ass, Cutter.', '2013-12-13 18:22:12'),
(5, 4, 8, 'Hi Cutter lol.', '2013-12-15 07:43:21'),
(6, 3, 4, 'Hey Nate.', '0000-00-00 00:00:00'),
(7, 3, 4, 'Nathaaaaan', '2013-12-16 04:23:41');

-- --------------------------------------------------------

--
-- Table structure for table `playlist_tracks`
--

CREATE TABLE IF NOT EXISTS `playlist_tracks` (
  `list_id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(5) unsigned NOT NULL,
  `track_id` int(5) unsigned NOT NULL,
  PRIMARY KEY (`list_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `playlist_tracks`
--

INSERT INTO `playlist_tracks` (`list_id`, `user_id`, `track_id`) VALUES
(1, 4, 4),
(2, 4, 29),
(3, 4, 77),
(4, 4, 205),
(5, 4, 78),
(6, 7, 29),
(7, 8, 29),
(8, 8, 161);

-- --------------------------------------------------------

--
-- Table structure for table `tracks`
--

CREATE TABLE IF NOT EXISTS `tracks` (
  `track_id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `album_id` int(5) unsigned NOT NULL,
  `track_title` varchar(100) NOT NULL,
  `track_time` time NOT NULL,
  `track_mp3` varchar(100) DEFAULT NULL,
  `uploaded_by` int(5) unsigned NOT NULL,
  PRIMARY KEY (`track_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=252 ;

--
-- Dumping data for table `tracks`
--

INSERT INTO `tracks` (`track_id`, `album_id`, `track_title`, `track_time`, `track_mp3`, `uploaded_by`) VALUES
(1, 1, 'Losing A Whole Year', '00:03:21', NULL, 0),
(2, 1, 'Narcolepsy', '00:03:49', NULL, 0),
(3, 1, 'Semi-Charmed Life', '00:04:29', NULL, 0),
(4, 1, 'Jumper', '00:04:33', 'track4.mp3', 4),
(5, 1, 'Graduate', '00:03:10', NULL, 0),
(6, 1, 'How''s It Going to Be', '00:04:14', NULL, 0),
(7, 1, 'Thanks a Lot', '00:04:58', NULL, 0),
(8, 1, 'Burning Man', '00:03:00', NULL, 0),
(9, 1, 'Good For You', '00:03:52', NULL, 0),
(10, 1, 'London', '00:03:07', NULL, 0),
(11, 1, 'I Want You', '00:04:57', NULL, 0),
(12, 1, 'The Background', '00:04:57', NULL, 0),
(13, 1, 'Motorcycle Drive By', '00:04:23', NULL, 0),
(14, 1, 'God of Wine', '00:05:18', NULL, 0),
(15, 2, 'Anything', '00:01:59', NULL, 0),
(16, 2, 'Wounded', '00:04:51', NULL, 0),
(17, 2, '10 Days Late', '00:03:05', NULL, 0),
(18, 2, 'Never Let You Go', '00:03:57', NULL, 0),
(19, 2, 'Deep Inside of You', '00:04:10', NULL, 0),
(20, 2, '1000 Julys', '00:03:53', NULL, 0),
(21, 2, 'An Ode to Maybe', '00:02:36', NULL, 0),
(22, 2, 'The Red Summer Sun', '00:05:25', NULL, 0),
(23, 2, 'Camouflage', '00:04:35', NULL, 0),
(24, 2, 'Farther', '00:04:01', NULL, 0),
(25, 2, 'Darkness', '00:05:08', NULL, 0),
(26, 2, 'Darwin', '00:05:47', NULL, 0),
(27, 2, 'Slow Motion', '00:04:34', NULL, 0),
(29, 3, 'Faster', '00:03:32', 'track29.mp3', 4),
(30, 3, 'Blinded', '00:04:22', NULL, 0),
(31, 3, 'Forget Myself', '00:04:13', NULL, 0),
(32, 3, 'Danger', '00:03:12', NULL, 0),
(33, 3, 'Crystal Baller', '00:04:15', NULL, 0),
(34, 3, 'My Hit and Run', '00:04:22', NULL, 0),
(35, 3, 'Misfits', '00:04:19', NULL, 0),
(36, 3, 'Can''t Get Away', '00:03:46', NULL, 0),
(37, 3, 'Wake for Young Souls', '00:04:37', NULL, 0),
(38, 3, 'Palm Reader', '00:04:54', NULL, 0),
(39, 3, 'Self Righteous', '00:06:18', NULL, 0),
(40, 3, 'Company', '00:03:54', NULL, 0),
(41, 3, 'Good Man', '00:09:24', NULL, 0),
(42, 4, 'Can You Take Me', '00:03:21', NULL, 0),
(43, 4, 'Don''t Believe A Word', '00:04:01', NULL, 0),
(44, 4, 'Bonfire', '00:04:08', NULL, 0),
(45, 4, 'Sharp Knife', '00:04:27', NULL, 0),
(46, 4, 'One In Ten', '00:02:51', NULL, 0),
(47, 4, 'About to Break', '00:03:56', NULL, 0),
(48, 4, 'Summer Town', '00:04:52', NULL, 0),
(49, 4, 'Why Can''t You Be', '00:05:25', NULL, 0),
(50, 4, 'Water Landing', '00:04:30', NULL, 0),
(51, 4, 'Dao of St. Paul', '00:04:05', NULL, 0),
(52, 4, 'Monotov''s Private Opera', '00:04:19', NULL, 0),
(53, 4, 'Carnival Barker', '00:01:24', NULL, 0),
(54, 5, 'Hanging by a Moment', '00:03:36', NULL, 0),
(55, 5, 'Sick Cycle Carousel', '00:04:23', NULL, 0),
(56, 5, 'Unknown', '00:04:06', NULL, 0),
(57, 5, 'Somebody Else''s Song', '00:04:36', NULL, 0),
(58, 5, 'Trying', '00:03:52', NULL, 0),
(59, 5, 'Only One', '00:04:56', NULL, 0),
(60, 5, 'Simon', '00:06:01', NULL, 0),
(61, 5, 'Cling and Clatter', '00:04:29', NULL, 0),
(62, 5, 'Breathing', '00:04:25', NULL, 0),
(63, 5, 'Quasimodo', '00:04:32', NULL, 0),
(64, 5, 'Somewhere in Between', '00:04:14', NULL, 0),
(65, 5, 'Everything', '00:06:07', NULL, 0),
(66, 6, 'Spin', '00:04:51', 'track66.mp3', 4),
(67, 6, 'Wash', '00:04:48', NULL, 0),
(68, 6, 'Sky Is Falling', '00:03:29', NULL, 0),
(69, 6, 'Anchor', '00:05:02', NULL, 0),
(70, 6, 'Am I Ever Gonna Find Out', '00:02:39', NULL, 0),
(71, 6, 'Stanley Climbfall', '00:03:49', NULL, 0),
(72, 6, 'Out of Breath', '00:03:20', NULL, 0),
(73, 6, 'Just Another Name', '00:03:24', NULL, 0),
(74, 6, 'Take Me Away', '00:04:47', NULL, 0),
(75, 6, 'My Precious', '00:04:24', NULL, 0),
(76, 6, 'Empty Space', '00:05:02', NULL, 0),
(77, 6, 'The Beginning', '00:04:38', NULL, 0),
(78, 7, 'Come Back Down', '00:04:36', NULL, 0),
(79, 7, 'You and Me', '00:03:15', NULL, 0),
(80, 7, 'Blind', '00:05:01', NULL, 0),
(81, 7, 'All in All', '00:02:56', NULL, 0),
(82, 7, 'Better Luck Next Time', '00:03:38', NULL, 0),
(83, 7, 'Days Go By', '00:03:24', NULL, 0),
(84, 7, 'Into the Sun', '00:05:21', NULL, 0),
(85, 7, 'Undone', '00:03:25', NULL, 0),
(86, 7, 'We''ll Never Know', '00:03:25', NULL, 0),
(87, 7, 'Walking Away', '00:04:46', NULL, 0),
(88, 7, 'Chapter One', '00:03:39', NULL, 0),
(89, 7, 'The End Has Only Begun', '00:04:22', NULL, 0),
(90, 8, 'Disarray', '00:03:45', NULL, 0),
(91, 8, 'First Time', '00:03:23', NULL, 0),
(92, 8, 'Whatever It Takes', '00:03:27', NULL, 0),
(93, 8, 'Who We Are', '00:03:27', NULL, 0),
(94, 8, 'Broken', '00:04:46', 'track94.mp3', 4),
(95, 8, 'The Joke', '00:03:56', NULL, 0),
(96, 8, 'Easier to Be', '00:03:31', NULL, 0),
(97, 8, 'Make Me Over', '00:03:57', NULL, 0),
(98, 8, 'Mesmerized', '00:03:13', NULL, 0),
(99, 8, 'Bridges', '00:04:02', NULL, 0),
(100, 8, 'Learn You Inside-Out', '00:04:26', NULL, 0),
(101, 8, 'Storm', '00:04:25', NULL, 0),
(102, 9, 'All In', '00:03:54', NULL, 0),
(103, 9, 'Nerve Damage', '00:04:27', NULL, 0),
(104, 9, 'Had Enough', '00:03:45', NULL, 0),
(105, 9, 'Halfway Gone', '00:03:14', NULL, 0),
(106, 9, 'It Is What It Is', '00:03:20', NULL, 0),
(107, 9, 'From Where You Are', '00:03:06', NULL, 0),
(108, 9, 'Smoke & Mirrors', '00:04:25', NULL, 0),
(109, 9, 'Falling In', '00:03:44', NULL, 0),
(110, 9, 'Wrecking Ball', '00:04:24', NULL, 0),
(111, 9, 'Here Tomorrow Gone Today', '00:03:09', NULL, 0),
(112, 9, 'By Your Side', '00:04:08', NULL, 0),
(113, 9, 'In Your Skin', '00:03:24', NULL, 0),
(114, 9, 'All That I''m Asking For', '00:03:55', NULL, 0),
(115, 9, 'Crash and Burn', '00:04:15', NULL, 0),
(116, 9, 'Near Life Experience ', '00:04:11', NULL, 0),
(117, 10, 'Gotta Be Tonight', '00:03:11', NULL, 0),
(118, 10, 'Between the Raindrops', '00:04:45', NULL, 0),
(119, 10, 'Nobody Listen', '00:03:40', NULL, 0),
(120, 10, 'Moveonday', '00:04:03', NULL, 0),
(121, 10, 'Slow Motion', '00:05:22', NULL, 0),
(122, 10, 'Only You''re the One', '00:03:29', NULL, 0),
(123, 10, 'Where I Come From', '00:03:52', NULL, 0),
(124, 10, 'Right Back Home', '00:03:58', NULL, 0),
(125, 10, 'Barricade', '00:03:04', NULL, 0),
(126, 10, 'Aftermath', '00:03:47', NULL, 0),
(127, 10, 'Lady Day', '00:03:37', NULL, 0),
(128, 10, 'Pins & Needles', '00:03:03', NULL, 0),
(129, 10, 'Rolling Off the Stone', '00:03:33', NULL, 0),
(130, 10, 'Always Somewhere Close', '00:03:00', NULL, 0),
(131, 11, 'Annie Waits', '00:04:17', NULL, 0),
(132, 11, 'Zak and Sara', '00:03:11', NULL, 0),
(133, 11, 'Still Fighting It', '00:04:25', NULL, 0),
(134, 11, 'Gone', '00:03:22', NULL, 0),
(135, 11, 'Fred Jones, Part 2', '00:03:45', NULL, 0),
(136, 11, 'The Ascent of Stan', '00:04:14', NULL, 0),
(137, 11, 'Losing Lisa', '00:04:10', NULL, 0),
(138, 11, 'Carrying Cathy', '00:03:49', NULL, 0),
(139, 11, 'Not the Same', '00:04:17', NULL, 0),
(140, 11, 'Rockin'' the Suburbs', '00:05:00', NULL, 0),
(141, 11, 'Fired', '00:03:49', NULL, 0),
(142, 11, 'The Luckiest', '00:04:44', NULL, 0),
(143, 12, 'Bastard', '00:05:23', NULL, 0),
(144, 12, 'You to Thank', '00:03:36', NULL, 0),
(145, 12, 'Jesusland', '00:04:30', NULL, 0),
(146, 12, 'Landed', '00:04:28', NULL, 0),
(147, 12, 'Gracie', '00:02:40', NULL, 0),
(148, 12, 'Trusted', '00:04:08', NULL, 0),
(149, 12, 'Give Judy My Notice', '00:03:37', NULL, 0),
(150, 12, 'Late', '00:03:58', NULL, 0),
(151, 12, 'Sentimental Guy', '00:03:03', NULL, 0),
(152, 12, 'Time', '00:04:30', NULL, 0),
(153, 12, 'Prison Food', '00:04:15', NULL, 0),
(154, 12, 'Bitches Ain''t Shit', '00:03:54', NULL, 0),
(155, 12, 'Landed (Strings Version)', '00:04:46', NULL, 0),
(156, 13, 'Hiroshima (B B B Benny Hit His Head)', '00:03:38', NULL, 0),
(157, 13, 'Dr. Yang', '00:02:30', NULL, 0),
(158, 13, 'The Frown Song', '00:03:38', NULL, 0),
(159, 13, 'You Don''t Know Me', '00:03:12', NULL, 0),
(160, 13, 'Before Cologne', '00:00:54', NULL, 0),
(161, 13, 'Cologne', '00:05:03', 'track161.mp3', 8),
(162, 13, 'Errant Dog', '00:02:24', NULL, 0),
(163, 13, 'Free Coffee', '00:03:08', NULL, 0),
(164, 13, 'Bitch Went Nuts', '00:03:58', NULL, 0),
(165, 13, 'Brainwascht', '00:03:49', NULL, 0),
(166, 13, 'Effington', '00:03:33', NULL, 0),
(167, 13, 'Kylie from Connecticut', '00:04:43', NULL, 0),
(168, 14, 'You and I Both', '00:03:39', NULL, 0),
(169, 14, 'I''ll Do Anything', '00:03:11', NULL, 0),
(170, 14, 'The Remedy (I Won''t Worry)', '00:04:16', NULL, 0),
(171, 14, 'Who Needs Shelter', '00:03:12', NULL, 0),
(172, 14, 'Curbside Prophet', '00:03:34', NULL, 0),
(173, 14, 'Sleep All Day', '00:04:56', NULL, 0),
(174, 14, 'Too Much Food', '00:03:41', NULL, 0),
(175, 14, 'Absolutely Zero', '00:05:39', NULL, 0),
(176, 14, 'On Love, In Sadness', '00:03:28', NULL, 0),
(177, 14, 'No Stopping Us', '00:03:18', NULL, 0),
(178, 14, 'The Boy''s Gone', '00:04:15', NULL, 0),
(179, 14, 'Tonight, Not Again', '00:04:49', NULL, 0),
(180, 15, 'Life Is Wonderful', '00:04:20', NULL, 0),
(181, 15, 'Wordplay', '00:03:06', NULL, 0),
(182, 15, 'Geek in the Pink', '00:03:55', NULL, 0),
(183, 15, 'Did You Get My Message?', '00:04:00', NULL, 0),
(184, 15, 'Mr. Curiosity', '00:03:54', NULL, 0),
(185, 15, 'Clockwatching', '00:04:23', NULL, 0),
(186, 15, 'Bella Luna', '00:05:02', NULL, 0),
(187, 15, 'Plane', '00:05:13', NULL, 0),
(188, 15, 'O. Lover', '00:03:54', NULL, 0),
(189, 15, 'Please Don''t Tell Her', '00:04:40', NULL, 0),
(190, 15, 'The Forecast', '00:03:44', NULL, 0),
(191, 15, 'Song for a Friend', '00:08:09', NULL, 0),
(192, 16, 'Make It Mine', '00:03:07', NULL, 0),
(193, 16, 'I''m Yours', '00:04:04', NULL, 0),
(194, 16, 'Lucky', '00:03:09', NULL, 0),
(195, 16, 'Butterfly', '00:04:59', NULL, 0),
(196, 16, 'Live High', '00:04:14', NULL, 0),
(197, 16, 'Love for a Child', '00:04:04', NULL, 0),
(198, 16, 'Details in the Fabric', '00:05:45', NULL, 0),
(199, 16, 'Coyotes', '00:03:38', NULL, 0),
(200, 16, 'Only Human', '00:04:02', NULL, 0),
(201, 16, 'The Dynamo of Volition', '00:03:36', NULL, 0),
(202, 16, 'If It Kills Me', '00:04:33', NULL, 0),
(203, 16, 'A Beautiful Mess', '00:05:37', NULL, 0),
(204, 17, 'The Freedom Song', '00:03:59', NULL, 0),
(205, 17, 'Living in the Moment', '00:03:55', NULL, 0),
(206, 17, 'The Woman I Love', '00:03:10', NULL, 0),
(207, 17, 'I Won''t Give Up', '00:04:00', NULL, 0),
(208, 17, '5/6', '00:05:57', NULL, 0),
(209, 17, 'Everything Is Sound', '00:04:45', NULL, 0),
(210, 17, '93 Million Miles', '00:03:36', NULL, 0),
(211, 17, 'Frank D. Fixer', '00:04:45', NULL, 0),
(212, 17, 'Who''s Thinking About You Now?', '00:04:47', NULL, 0),
(213, 17, 'In Your Hands', '00:04:51', NULL, 0),
(214, 17, 'Be Honest', '00:03:25', NULL, 0),
(215, 17, 'The World as I See It', '00:03:59', NULL, 0),
(216, 17, 'I''m Coming Over', '00:04:29', NULL, 0),
(217, 18, 'Where Are You Now?', '00:04:16', NULL, 0),
(218, 18, 'The 8th Ring of Hell', '00:06:29', NULL, 0),
(219, 18, 'Pulchritude', '00:02:36', NULL, 0),
(220, 18, 'A History of Sport Fishing', '00:07:00', NULL, 0),
(221, 18, 'The CruXXX', '00:04:22', NULL, 0),
(222, 18, 'Ballad of Douglas Chin', '00:03:59', NULL, 0),
(223, 18, 'Aerodrome', '00:03:38', NULL, 0),
(224, 18, 'I Do So Have a Sense of Humor', '00:06:15', NULL, 0),
(225, 18, 'The Perfect Map', '00:08:03', NULL, 0),
(226, 18, 'He Hate Me', '00:03:38', NULL, 0),
(227, 18, 'The Horizon Is a Single Point', '00:06:37', NULL, 0),
(228, 19, 'Post-Present', '00:01:39', NULL, 0),
(229, 19, 'Pre-Present', '00:03:30', NULL, 0),
(230, 19, 'Freshman Thesis', '00:05:02', NULL, 0),
(231, 19, 'Int', '00:02:18', NULL, 0),
(232, 19, 'Ave Grave', '00:02:40', NULL, 0),
(233, 19, 'Cold Dis', '00:00:54', NULL, 0),
(234, 19, 'Cloisterphobia', '00:04:31', NULL, 0),
(235, 19, '2 AM', '00:04:52', NULL, 0),
(236, 19, 'Walk of Shame', '00:05:34', NULL, 0),
(237, 19, 'Ask Me About Jon Stross', '00:04:05', NULL, 0),
(238, 19, 'House Break', '00:03:20', NULL, 0),
(239, 20, 'D. Shallow', '00:00:45', NULL, 0),
(240, 20, 'Eagle Rock', '00:02:57', NULL, 0),
(241, 20, 'The Dutch Fist', '00:03:26', NULL, 0),
(242, 20, 'Night at the Knight School', '00:03:24', NULL, 0),
(243, 20, 'Int. 1', '00:01:56', NULL, 0),
(244, 20, 'Proud Turkey', '00:03:41', NULL, 0),
(245, 20, 'Int. 2', '00:00:46', NULL, 0),
(246, 20, 'Fly Paper', '00:03:41', NULL, 0),
(247, 20, 'Int. 3', '00:00:27', NULL, 0),
(248, 20, 'Oh Yes. Another Mother', '00:03:11', NULL, 0),
(249, 20, 'The White Mask', '00:06:41', NULL, 0),
(250, 20, 'Chrome Caps', '00:03:55', NULL, 0),
(251, 20, 'Mo Deeper', '00:01:48', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(50) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_avatar` varchar(100) DEFAULT 'default.png',
  `user_email` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_login`, `user_password`, `user_avatar`, `user_email`) VALUES
(3, 'nathan_2', '5b5fb1c9d70308c44b6bf579a82122981bd37a7c', 'nathan_2.png', 'hello@hello.com'),
(4, 'fake_cutter', '30c8c797984424bc4a253f587dae86b0be74303a', 'fake_cutter.png', 'hello@hello.com'),
(5, 'fat_nathan', '5b5fb1c9d70308c44b6bf579a82122981bd37a7c', 'default.png', 'hello@hello.com'),
(7, 'cole_magrath', 'c40dbb01a0ae2ed2db5ce64b57b4492867839e53', 'default.png', 'hello@hello.com'),
(8, 'fat_greg', '5b5fb1c9d70308c44b6bf579a82122981bd37a7c', 'default.png', 'hello@hello.com');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
