-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: vergil.u.washington.edu:22330
-- Generation Time: Aug 27, 2016 at 05:40 PM
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
  `choice` tinytext CHARACTER SET latin1 NOT NULL,
  `answer_id` tinyint(1) UNSIGNED NOT NULL,
  `question_id` tinyint(1) UNSIGNED NOT NULL,
  `choice_vi` tinytext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
(38, 'make treaties', 2, 10, 'làm các hiệp ước'),
(39, 'create an army', 3, 10, 'tạo ra một đội quân'),
(40, 'provide schooling and education', 4, 10, 'cung cấp trường học và giáo dục'),
(41, 'the Secretary of State', 1, 11, ''),
(42, 'the President', 2, 11, ''),
(43, 'the Chief Justice of the Supreme Court', 3, 11, ''),
(44, 'the Vice President ', 4, 11, ''),
(45, 'freedom of speech', 1, 12, ''),
(46, 'checks and balances', 2, 12, ''),
(47, 'the people', 3, 12, ''),
(48, 'the President', 4, 12, ''),
(49, 'Cherokee', 1, 13, ''),
(50, 'Slavs', 2, 13, ''),
(51, 'Celts', 3, 13, ''),
(52, 'Zawi Chemi', 4, 13, ''),
(53, 'give up loyalty to other countries', 1, 14, ''),
(54, 'disobey the laws of the United States', 2, 14, ''),
(55, 'not defend the Constitution and laws of the United States', 3, 14, ''),
(56, 'never travel outside the United States', 4, 14, ''),
(57, 'one hundred (100)', 1, 15, ''),
(58, 'four hundred thirty-five (435)', 2, 15, ''),
(59, 'fifty (50)', 3, 15, ''),
(60, 'fifty-two (52)', 4, 15, ''),
(61, 'the President', 1, 16, ''),
(62, 'the Speaker of the House', 2, 16, ''),
(63, 'the Prime Minister', 3, 16, ''),
(64, 'the Chief Justice', 4, 16, ''),
(65, 'Pacific Ocean', 1, 17, ''),
(66, 'Atlantic Ocean', 2, 17, ''),
(67, 'Southern Ocean', 3, 17, ''),
(68, 'Arctic Ocean', 4, 17, ''),
(69, 'the Senate and House of Representatives', 1, 18, ''),
(70, 'the Senate and the courts', 2, 18, ''),
(71, 'the House of Representatives and the courts', 3, 18, ''),
(72, 'the House of Lords and the House of Commons', 4, 18, ''),
(73, 'Barack Obama', 1, 19, ''),
(74, 'Dick Cheney', 2, 19, ''),
(75, 'Al Gore', 3, 19, ''),
(76, 'Joe Biden', 4, 19, ''),
(77, 'Abraham Lincoln', 1, 20, ''),
(78, 'Thomas Jefferson', 2, 20, ''),
(79, 'George Washington', 3, 20, ''),
(80, 'John Adams', 4, 20, ''),
(81, 'because of high taxes', 1, 21, ''),
(82, 'because they didn\'t have self-government', 2, 21, ''),
(83, 'because the British army stayed in their houses', 3, 21, ''),
(84, 'all of these answers', 4, 21, ''),
(85, 'Thomas Jefferson', 1, 22, ''),
(86, 'James Madison', 2, 22, ''),
(87, 'George Washington', 3, 22, ''),
(88, 'John Adams', 4, 22, ''),
(89, 'two (2)', 1, 23, ''),
(90, 'six (6)', 2, 23, ''),
(91, 'four (4)', 3, 23, ''),
(92, 'ten (10)', 4, 23, ''),
(93, 'Paul D. Ryan', 1, 24, ''),
(94, 'Hillary Clinton', 2, 24, ''),
(95, 'Joe Biden', 3, 24, ''),
(96, 'Barack Obama ', 4, 24, ''),
(97, 'the Supreme Court', 1, 25, ''),
(98, 'the Federal Court', 2, 25, ''),
(99, 'the Court of Appeals', 3, 25, ''),
(100, 'the District Court', 4, 25, ''),
(101, 'trial by jury', 1, 26, ''),
(102, 'to vote', 2, 26, ''),
(103, 'speech', 3, 26, ''),
(104, 'to bear arms', 4, 26, ''),
(105, 'the Secretary of State', 1, 27, ''),
(106, 'the Secretary of the Treasury', 2, 27, ''),
(107, 'the President Pro Tempore', 3, 27, ''),
(108, 'the Speaker of the House', 4, 27, ''),
(109, 'resolves disputes', 1, 28, ''),
(110, 'decides if a law goes against the Constitution', 2, 28, ''),
(111, 'reviews laws', 3, 28, ''),
(112, 'all of these answers', 4, 28, ''),
(113, 'no one', 1, 29, ''),
(114, 'American Indians', 2, 29, ''),
(115, 'Floridians', 3, 29, ''),
(116, 'Canadians', 4, 29, ''),
(117, 'only the people of the state who belong to the senator\'s political party', 1, 30, ''),
(118, 'all people of the state', 2, 30, ''),
(119, 'the state legislatures', 3, 30, ''),
(120, 'only the people in the state who voted for the senator', 4, 30, ''),
(121, 'life and death', 1, 31, ''),
(122, 'liberty and justice', 2, 31, ''),
(123, 'life and right to own a home', 3, 31, ''),
(124, 'life and pursuit of happiness', 4, 31, ''),
(125, 'George Washington', 1, 32, ''),
(126, 'Patrick Henry', 2, 32, ''),
(127, 'Abraham Lincoln', 3, 32, ''),
(128, 'Thomas Jefferson', 4, 32, ''),
(129, 'four hundred thirty-five (435)', 1, 33, ''),
(130, 'four hundred forty-one (441)', 2, 33, ''),
(131, 'one hundred (100)', 3, 33, ''),
(132, 'two hundred (200)', 4, 33, ''),
(133, 'March 4', 1, 34, ''),
(134, 'June 30', 2, 34, ''),
(135, 'July 4', 3, 34, ''),
(136, 'January 1', 4, 34, ''),
(137, 'Secretary of Weather and Secretary of Energy', 1, 35, ''),
(138, 'Secretary of the Interior and Secretary of History', 2, 35, ''),
(139, 'Secretary of State and Secretary of Labor', 3, 35, ''),
(140, 'Secretary of Health and Human Services and Secretary of the Navy', 4, 35, ''),
(141, 'the Declaration of Independence', 1, 36, ''),
(142, 'the Bill of Rights', 2, 36, ''),
(143, 'the inalieanble rights', 3, 36, ''),
(144, 'the Articles of Confederation', 4, 36, ''),
(145, 'because there were 50 original colonies', 1, 37, ''),
(146, 'because there is one star for each state', 2, 37, ''),
(147, 'because there is one star for each president', 3, 37, ''),
(148, 'because there were 50 people who originally came to the United States', 4, 37, ''),
(149, 'oil', 1, 38, ''),
(150, 'sugar', 2, 38, ''),
(151, 'westward expansion', 3, 38, ''),
(152, 'slavery', 4, 38, ''),
(153, 'because it was considered lucky to have 13 stripes on a flag', 1, 39, ''),
(154, 'because the stripes represent the number of signatures on the U.S. Constitution', 2, 39, ''),
(155, 'because the stripes represent the original colonies', 3, 39, ''),
(156, 'because the stripes represent the members of the Second Continental Congress', 4, 39, ''),
(157, 'English', 1, 40, ''),
(158, 'Dutch', 2, 40, ''),
(159, 'Canadians', 3, 40, ''),
(160, 'Africans', 4, 40, ''),
(161, 'George Washington', 1, 41, ''),
(162, 'James Madison', 2, 41, ''),
(163, 'Thomas Jefferson', 3, 41, ''),
(164, 'Abraham Lincoln', 4, 41, ''),
(165, 'the Constitution', 1, 42, ''),
(166, 'the Emancipation Proclamation ', 2, 42, ''),
(167, 'the Declaration of Independence', 3, 42, ''),
(168, 'the Articles of Confederation', 4, 42, ''),
(169, 'George W. Bush', 1, 43, ''),
(170, 'Joe Biden', 2, 43, ''),
(171, 'Barack Obama', 3, 43, ''),
(172, 'Bill Clinton', 4, 43, ''),
(173, 'World War II', 1, 44, ''),
(174, 'World War I', 2, 44, ''),
(175, 'Korean War', 3, 44, ''),
(176, 'Mexican-American War', 4, 44, ''),
(177, 'freed slaves in most Southern states', 1, 45, ''),
(178, 'gave women the right to vote', 2, 45, ''),
(179, 'ended World War I', 3, 45, ''),
(180, 'gave the United States independence from Great Britain', 4, 45, ''),
(181, 'the Revolutionary War', 1, 46, ''),
(182, 'World War I', 2, 46, ''),
(183, 'The War of 1812', 3, 46, ''),
(184, 'The Civil War', 4, 46, '');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` tinytext CHARACTER SET latin1 NOT NULL,
  `answer` tinyint(1) UNSIGNED NOT NULL,
  `question_vi` tinytext NOT NULL,
  `audio` text CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `answer`, `question_vi`, `audio`) VALUES
(1, 'What territory did the United States buy from France in 1803?', 3, 'Hoa Kỳ mua lãnh thổ nào của Pháp vào năm 1803?', 'https://docs.google.com/uc?export=&id=0B7bIuWhmnPfQQ2JDd2Vpd0V2b3M'),
(2, 'What movement tried to end racial discrimination?', 1, 'Phong trào nào tìm cách chấm dứt sự phân biệt chủng tộc?', 'https://docs.google.com/uc?export=&id=0B7bIuWhmnPfQSk5uU2dYWnlsSlE'),
(3, 'What did Susan B. Anthony do?', 2, 'Bà Susan B. Anthony làm gì?', 'https://docs.google.com/uc?export=&id=0B7bIuWhmnPfQSmJyMXE0V0tjS00'),
(4, 'What are two rights of everyone living in the United States?', 3, 'Kể ra Hai quyền trong bản Bản Tuyên Ngôn Độc Lập?', 'https://docs.google.com/uc?export=&id=0B7bIuWhmnPfQTHNvX25wbUhRUnM'),
(5, 'Name one state that borders Canada.', 1, 'Cho biết một trong những tiểu bang ráp ranh Canada', 'https://docs.google.com/uc?export=&id=0B7bIuWhmnPfQcm00WGsyWjlrNjA'),
(6, 'Where is the Statue of Liberty?', 1, 'Tượng Nữ Thần Tự Do ở đâu?', 'https://docs.google.com/uc?export=&id=0B7bIuWhmnPfQWC1MNHJrQVhDa1k'),
(7, 'In what month do we vote for President?', 3, 'Bầu Tổng Thống vào tháng nào?', 'https://docs.google.com/uc?export=&id=0B7bIuWhmnPfQaXFYZGp2SFpWWEk'),
(8, 'When must all men register for the Selective Service?', 4, 'Khi nào tất cả nam giới phải ghi tên cho Sở Quân Vụ (Selective Service)?', 'https://docs.google.com/uc?export=&id=0B7bIuWhmnPfQRlA1OVlpUnlxVkU'),
(9, 'There were 13 original states. Name three.', 4, 'Có 13 tiểu bang nguyên thủy. Cho biết ba tiểu bang.', 'https://docs.google.com/uc?export=&id=0B7bIuWhmnPfQc0JLS2V0cEFXbFU'),
(10, 'Under our Constitution, some powers belong to the states. What is one power of the states?', 4, 'Theo Hiến Pháp, các tiểu bang có một số quyền. Một trong những quyền này là gì?', 'https://docs.google.com/uc?export=&id=0B7bIuWhmnPfQSTF0b0JSSjZ1MVE'),
(11, 'Who signs bills to become laws?', 2, 'Ai sẽ ký dự thảo luật thành luật?', 'https://docs.google.com/uc?export=&id=0B7bIuWhmnPfQUHN4VGM0LUdYbHc'),
(12, 'What stops one branch of government from becoming too powerful?', 2, 'Cách nào ngăn cản một ngành công quyền trở thành quá mạnh?', 'https://docs.google.com/uc?export=&id=0B7bIuWhmnPfQZVBkQklKb1VEbEk'),
(13, 'Name one American Indian tribe in the United States.', 1, 'Kể tên một bộ lạc da đỏ tại Mỹ.', 'https://docs.google.com/uc?export=&id=0B7bIuWhmnPfQVGlxZ0JYSWIyX2s'),
(14, 'What is one promise you make when you become a United States citizen?', 1, 'Khi trở thành công dân Hoa Kỳ, một trong những lời hứa của bạn là gì?', 'https://docs.google.com/uc?export=&id=0B7bIuWhmnPfQX29yekRBMTl2cWc'),
(15, 'How many U.S. Senators are there?', 1, 'Có bao nhiêu Thượng Nghị Sĩ Liên Bang?', 'https://docs.google.com/uc?export=&id=0B7bIuWhmnPfQaHJ5RWtpb3lmWXM'),
(16, 'Who is in charge of the executive branch?', 1, 'Ai phụ trách hành pháp?', 'https://docs.google.com/uc?export=&id=0B7bIuWhmnPfQUGFXdTFEdGRxaUU'),
(17, 'What ocean is on the West Coast of the United States?', 1, 'Biển nào ở bờ biển phía Tây Hoa Kỳ?', 'https://docs.google.com/uc?export=&id=0B7bIuWhmnPfQNC1JcnBHRjVkYUk'),
(18, 'What are the two parts of the U.S. Congress?', 1, 'Hai phần của Quốc Hội Hoa Kỳ là gì?', 'https://docs.google.com/uc?export=&id=0B7bIuWhmnPfQbTc2M1VoUjNqUkU'),
(19, 'What is the name of the Vice President of the United States now?', 4, 'Hiện nay tên Phó Tổng Thống Hoa Kỳ là gì?', 'https://docs.google.com/uc?export=&id=0B7bIuWhmnPfQX3NJa3FJTGpYSjg'),
(20, 'Who was the first President?', 3, 'Ai là Tổng Thống đầu tiên?', 'https://docs.google.com/uc?export=&id=0B7bIuWhmnPfQa050YmNvVEpfUms'),
(21, 'Why did the colonists fight the British?', 4, 'Tại sao những người di dân thời thuộc địa chống lại người Anh?', 'https://docs.google.com/uc?export=&id=0B7bIuWhmnPfQZ19ySFdpR3NabVE'),
(22, 'The Federalist Papers supported the passage of the U.S. Constitution. Name one of the writers.', 2, 'Các bài tham luận gọi là Federalist Papers có mục đích hỗ trợ việc thông qua Hiến Pháp Hoa Kỳ. Kể tên một trong những người viết tham luận.', 'https://docs.google.com/uc?export=&id=0B7bIuWhmnPfQS2s5VjBuczNQRGs'),
(23, 'We elect a U.S. Senator for how many years?', 2, 'Chúng ta bầu Thượng Nghị Sĩ cho bao nhiêu năm? ', 'https://docs.google.com/uc?export=&id=0B7bIuWhmnPfQa2p1UURzX0d0aVU'),
(24, 'What is the name of the Speaker of the House of Representatives now?', 1, 'Chủ Tịch Hạ Viện hiện thời tên gì?', 'https://docs.google.com/uc?export=&id=0B7bIuWhmnPfQWFR4R3Axc3ZlX0k'),
(25, 'What is the highest court in the United States?', 1, 'Tòa án cao nhất ở Hoa Kỳ là gì?', 'https://docs.google.com/uc?export=&id=0B7bIuWhmnPfQNGpZOHBZT1UwS28'),
(26, 'What is one right or freedom from the First Amendment?', 3, 'Kể ra Một quyền hoặc một tự do trong Tu Chính Án Đầu Tiên (First Amendment)?', 'https://docs.google.com/uc?export=&id=0B7bIuWhmnPfQWnViWG9kTFo5STg'),
(27, 'If both the President and the Vice President can no longer serve, who becomes President?', 4, 'Nếu cả Tổng Thống và Phó Tổng Thống không còn làm việc được nữa, ai sẽ thay thế?', 'https://docs.google.com/uc?export=&id=0B7bIuWhmnPfQUWRFMndPeFFQTk0'),
(28, 'What does the judicial branch do?', 4, 'Ngành tư pháp làm gì?', 'https://docs.google.com/uc?export=&id=0B7bIuWhmnPfQemM2MXhDMzdXanM'),
(29, 'Who lived in America before the Europeans arrived?', 2, 'Những ai sống tại Mỹ trước khi người Âu Châu tới?', 'https://docs.google.com/uc?export=&id=0B7bIuWhmnPfQNTFkbU9KOWpzQmM'),
(30, 'Who does a U.S. Senator represent?', 2, 'Thượng-nghị-sĩ đại diện ai?', 'https://docs.google.com/uc?export=&id=0B7bIuWhmnPfQem9IZUhVS2hkaHM'),
(31, 'What are two rights in the Declaration of Independence?', 4, 'Kể ra Hai quyền trong Bản Tuyên Ngôn Độc Lập?', 'https://docs.google.com/uc?export=&id=0B7bIuWhmnPfQSGxtNDlUY2hKWU0'),
(32, 'Who is the "Father of Our Country"?', 1, 'Ai được gọi là cha đẻ của nước Mỹ?', 'https://docs.google.com/uc?export=&id=0B7bIuWhmnPfQVXFiemRFaTZkZkU'),
(33, 'The House of Representatives has how many voting members?', 1, 'Hạ-Nghị-Viện có bao nhiêu dân biểu?', 'https://docs.google.com/uc?export=&id=0B7bIuWhmnPfQbkllMTdnYUxfU1E'),
(34, 'When do we celebrate Independence Day?', 3, 'Ngày nào là ngày Lễ Độc Lập?', 'https://docs.google.com/uc?export=&id=0B7bIuWhmnPfQZnVFSGRhNXNqQzA'),
(35, 'What are two Cabinet-level positions?', 3, 'Kể ra Hai chức vụ trong hàng nội các.', 'https://docs.google.com/uc?export=&id=0B7bIuWhmnPfQU3lOcFBYM25HYXc'),
(36, 'What do we call the first ten amendments to the Constitution?', 2, 'Ta gọi mười tu chính đầu tiên vào Hiến Pháp là gì?', 'https://docs.google.com/uc?export=&id=0B7bIuWhmnPfQOUVZUW9vaHNvRk0'),
(37, 'Why does the flag have 50 stars?', 2, 'Tại sao lá cờ Hoa Kỳ có 50 ngôi sao?', 'https://docs.google.com/uc?export=&id=0B7bIuWhmnPfQV3E0ZDVpQVhRRVU'),
(38, 'Name one problem that led to the Civil War.', 4, 'Cho biết một vấn đề đưa tới cuộc nội chiến', 'https://docs.google.com/uc?export=&id=0B7bIuWhmnPfQdm9CY25pRDVhYmM'),
(39, 'Why does the flag have 13 stripes?', 3, 'Tại sao lá cờ Hoa Kỳ có 13 lằn gạch?', 'https://docs.google.com/uc?export=&id=0B7bIuWhmnPfQNDZpUHlxZXlSanM'),
(40, 'What group of people was taken to America and sold as slaves?', 4, 'Nhóm người nào được mang tới Mỹ Châu và bán làm nô lệ?', 'https://docs.google.com/uc?export=&id=0B7bIuWhmnPfQWXhUVC1MaEYwQ0U'),
(41, 'Who wrote the Declaration of Independence?', 3, 'Ai viết Bản Tuyên Ngôn Độc Lập?', 'https://docs.google.com/uc?export=&id=0B7bIuWhmnPfQNm5qNm9XaHI3ODg'),
(42, 'What is the supreme law of the land?', 1, 'Luật cao nhất của quốc gia là gì?', 'https://docs.google.com/uc?export=&id=0B7bIuWhmnPfQeGd3dmhNSG40bUk'),
(43, 'What is the name of the President of the United States now?', 3, 'Hiện nay tên Tổng Thống Hoa Kỳ là gì?', 'https://docs.google.com/uc?export=&id=0B7bIuWhmnPfQNEZpMVM2SzdYRUE'),
(44, 'Name one war fought by the United States in the 1800s.', 4, 'Nói tên một trong những cuộc chiến Hoa Kỳ tham dự thời 1800.', 'https://docs.google.com/uc?export=&id=0B7bIuWhmnPfQUmZuSGRoOEtMbkE'),
(45, 'What did the Emancipation Proclamation do?', 1, 'Tuyên Ngôn Giải Phóng làm gì?', 'https://docs.google.com/uc?export=&id=0B7bIuWhmnPfQN1lFb3l3VG9selU'),
(46, 'Name the U.S. war between the North and the South.', 4, 'Tên gọi của cuộc chiến trên đất Hoa Kỳ giữa miền Bắc và miền Nam là gì.', 'https://docs.google.com/uc?export=&id=0B7bIuWhmnPfQaVpKdzdQQzVzSmc');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
