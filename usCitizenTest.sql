-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: vergil.u.washington.edu:22330
-- Generation Time: Aug 24, 2016 at 05:31 PM
-- Server version: 5.5.18
-- PHP Version: 5.6.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `usCitizenTest`
--

-- --------------------------------------------------------

--
-- Table structure for table `choices`
--

CREATE TABLE `choices` (
  `id` int(10) UNSIGNED NOT NULL,
  `choice` varchar(100) NOT NULL,
  `answer_id` tinyint(1) UNSIGNED NOT NULL,
  `question_id` tinyint(1) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `choices`
--

INSERT INTO `choices` (`id`, `choice`, `answer_id`, `question_id`) VALUES
(1, 'Quebec', 1, 1),
(2, 'Hawaii', 2, 1),
(3, 'the Louisiana Territory', 3, 1),
(4, 'Alaska', 4, 1),
(5, 'civil rights movement', 1, 2),
(6, 'prohibition', 2, 2),
(7, 'conservation', 3, 2),
(8, 'women\'s suffrage', 4, 2),
(9, 'made the first flag of the United States', 1, 3),
(10, 'fought for women\'s rights', 2, 3),
(11, 'the first woman elected to the House of Representatives', 3, 3),
(12, 'founded the Red Cross', 4, 3),
(13, 'freedom of religion and freedom to make treaties with other countries', 1, 4),
(14, 'freedom to petition the government and freedom to disobey traffic laws', 2, 4),
(15, 'freedom of speech and freedom of religion', 3, 4),
(16, 'freedom of speech and freedom to run for president', 4, 4),
(17, 'Maine', 1, 5),
(18, 'Oregon', 2, 5),
(19, 'South Dakota', 3, 5),
(20, 'Rhode Island', 4, 5),
(21, 'New York Harbor', 1, 6),
(22, 'Long Island', 2, 6),
(23, 'San Francisco Bay', 3, 6),
(24, 'Boston Harbor', 4, 6),
(25, 'January', 1, 7),
(26, 'October', 2, 7),
(27, 'November', 3, 7),
(28, 'February', 4, 7),
(29, 'men do not have to register', 1, 8),
(30, 'at age sixteen (16)', 2, 8),
(31, 'at any age', 3, 8),
(32, 'between eighteen (18) and twenty-six (26)', 4, 8),
(33, 'Virginia, North Carolina, and Florida', 1, 9),
(34, 'New York, Kentucky, and Georgia', 2, 9),
(35, 'Washington, Oregon, and California', 3, 9),
(36, 'Maryland, Virginia, and North Carolina', 4, 9),
(37, 'coin or print money', 1, 10),
(38, 'make treaties', 2, 10),
(39, 'create an army', 3, 10),
(40, 'provide schooling and education', 4, 10);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` varchar(100) NOT NULL,
  `answer` tinyint(1) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `answer`) VALUES
(1, 'What territory did the United States buy from France in 1803?', 3),
(2, 'What movement tried to end racial discrimination?', 1),
(3, 'What did Susan B. Anthony do?', 2),
(4, 'What are two rights of everyone living in the United States?', 3),
(5, 'Name one state that borders Canada.', 1),
(6, 'Where is the Statue of Liberty?', 1),
(7, 'In what month do we vote for President?', 3),
(8, 'When must all men register for the Selective Service?', 4),
(9, 'There were 13 original states. Name three.', 4),
(10, 'Under our Constitution, some powers belong to the states. What is one power of the states?', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `choices`
--
ALTER TABLE `choices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `question_UNIQUE` (`question`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `choices`
--
ALTER TABLE `choices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
