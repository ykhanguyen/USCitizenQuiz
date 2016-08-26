-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: vergil.u.washington.edu:22330
-- Generation Time: Aug 26, 2016 at 02:58 AM
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
  `choice` tinytext NOT NULL,
  `answer_id` tinyint(1) UNSIGNED NOT NULL,
  `question_id` tinyint(1) UNSIGNED NOT NULL,
  `choice_vi` tinytext CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `choices`
--

INSERT INTO `choices` (`id`, `choice`, `answer_id`, `question_id`, `choice_vi`) VALUES
(1, 'Quebec', 1, 1, 'Quebec'),
(2, 'Hawaii', 2, 1, 'Hawaii'),
(3, 'the Louisiana Territory', 3, 1, 'Lãnh Thổ Louisiana'),
(4, 'Alaska', 4, 1, 'Alaska'),
(5, 'civil rights movement', 1, 2, 'phong trào dân quyền'),
(6, 'prohibition', 2, 2, 'cấm'),
(7, 'conservation', 3, 2, 'bảo tồn'),
(8, 'women\'s suffrage', 4, 2, 'quyền bầu cử của phụ nữ'),
(9, 'made the first flag of the United States', 1, 3, 'làm lá cờ đầu tiên của Hoa Kỳ'),
(10, 'fought for women\'s rights', 2, 3, 'tranh đấu cho quyền phụ nữ'),
(11, 'the first woman elected to the House of Representatives', 3, 3, 'người phụ nữ đầu tiên được bầu vào Hạ viện'),
(12, 'founded the Red Cross', 4, 3, 'thành lập Hội Chữ thập đỏ'),
(13, 'freedom of religion and freedom to make treaties with other countries', 1, 4, 'tự do tôn giáo và tự do làm các hiệp ước với các nước khác'),
(14, 'freedom to petition the government and freedom to disobey traffic laws', 2, 4, 'tự do thỉnh nguyện chính quyền và tự do không tuân thủ luật giao thông'),
(15, 'freedom of speech and freedom of religion', 3, 4, 'tự do ngôn luận và tự do tôn giáo'),
(16, 'freedom of speech and freedom to run for president', 4, 4, 'tự do ngôn luận và tự do tranh cử tổng thống'),
(17, 'Maine', 1, 5, 'Maine'),
(18, 'Oregon', 2, 5, 'Oregon'),
(19, 'South Dakota', 3, 5, 'South Dakota'),
(20, 'Rhode Island', 4, 5, 'Rhode Island'),
(21, 'New York Harbor', 1, 6, 'Hải cảng New York'),
(22, 'Long Island', 2, 6, 'Long Island'),
(23, 'San Francisco Bay', 3, 6, 'Vịnh San Francisco'),
(24, 'Boston Harbor', 4, 6, 'Hải cảng Boston'),
(25, 'January', 1, 7, 'Tháng Một'),
(26, 'October', 2, 7, 'Tháng Mười'),
(27, 'November', 3, 7, 'Tháng Mười Một'),
(28, 'February', 4, 7, 'Tháng Hai'),
(29, 'men do not have to register', 1, 8, 'đàn ông không phải đăng ký'),
(30, 'at age sixteen (16)', 2, 8, 'lúc mười sáu tuổi (16)'),
(31, 'at any age', 3, 8, 'ở mọi lứa tuổi'),
(32, 'between eighteen (18) and twenty-six (26)', 4, 8, 'từ mười tám (18) và hai mươi sáu (26)'),
(33, 'Virginia, North Carolina, and Florida', 1, 9, 'Virginia, North Carolina, và Florida'),
(34, 'New York, Kentucky, and Georgia', 2, 9, 'New York, Kentucky, và Georgia'),
(35, 'Washington, Oregon, and California', 3, 9, 'Washington, Oregon, và California'),
(36, 'Maryland, Virginia, and North Carolina', 4, 9, 'Maryland, Virginia, và North Carolina'),
(37, 'coin or print money', 1, 10, 'đồng xu hoặc in tiền'),
(38, 'make treaties', 2, 10, 'lám các hiệp ước'),
(39, 'create an army', 3, 10, 'tạo ra một đội quân'),
(40, 'provide schooling and education', 4, 10, 'cung cấp trường học và giáo dục');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` tinytext NOT NULL,
  `answer` tinyint(1) UNSIGNED NOT NULL,
  `question_vi` tinytext CHARACTER SET utf8 NOT NULL,
  `audio` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `answer`, `question_vi`, `audio`) VALUES
(1, 'What territory did the United States buy from France in 1803?', 3, 'Hoa Kỳ mua lãnh thổ nào của Pháp vào năm 1803?', 'https://drive.google.com/uc?export=download&id=0B7bIuWhmnPfQQ2JDd2Vpd0V2b3M'),
(2, 'What movement tried to end racial discrimination?', 1, 'Phong trào nào tìm cách chấm dứt sự phân biệt chủng tộc?', 'https://drive.google.com/uc?export=download&id=0B7bIuWhmnPfQSk5uU2dYWnlsSlE'),
(3, 'What did Susan B. Anthony do?', 2, 'Bà Susan B. Anthony làm gì?', 'https://drive.google.com/uc?export=download&id=0B7bIuWhmnPfQSmJyMXE0V0tjS00'),
(4, 'What are two rights of everyone living in the United States?', 3, 'Kể ra Hai quyền trong bản Bản Tuyên Ngôn Độc Lập?', 'https://drive.google.com/uc?export=download&id=0B7bIuWhmnPfQTHNvX25wbUhRUnM'),
(5, 'Name one state that borders Canada.', 1, 'Cho biết một trong những tiểu bang ráp ranh Canada', 'https://drive.google.com/uc?export=download&id=0B7bIuWhmnPfQcm00WGsyWjlrNjA'),
(6, 'Where is the Statue of Liberty?', 1, 'Tượng Nữ Thần Tự Do ở đâu?', 'https://drive.google.com/uc?export=download&id=0B7bIuWhmnPfQWC1MNHJrQVhDa1k'),
(7, 'In what month do we vote for President?', 3, 'Bầu Tổng Thống vào tháng nào?', 'https://drive.google.com/uc?export=download&id=0B7bIuWhmnPfQaXFYZGp2SFpWWEk'),
(8, 'When must all men register for the Selective Service?', 4, 'Khi nào tất cả nam giới phải ghi tên cho Sở Quân Vụ (Selective Service)?', 'https://drive.google.com/uc?export=download&id=0B7bIuWhmnPfQRlA1OVlpUnlxVkU'),
(9, 'There were 13 original states. Name three.', 4, 'Có 13 tiểu bang nguyên thủy. Cho biết ba tiểu bang.', 'https://drive.google.com/uc?export=download&id=0B7bIuWhmnPfQc0JLS2V0cEFXbFU'),
(10, 'Under our Constitution, some powers belong to the states. What is one power of the states?', 4, 'Theo Hiến Pháp, các tiểu bang có một số quyền. Một trong những quyền này là gì?', 'https://drive.google.com/uc?export=download&id=0B7bIuWhmnPfQSTF0b0JSSjZ1MVE');

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
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

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
