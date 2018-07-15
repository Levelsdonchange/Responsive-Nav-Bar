-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2018 at 05:13 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ssqdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `acn_choices`
--

CREATE TABLE `acn_choices` (
  `id` int(11) NOT NULL,
  `question_number` int(11) NOT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT '0',
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acn_choices`
--

INSERT INTO `acn_choices` (`id`, `question_number`, `is_correct`, `text`) VALUES
(1, 1, 0, '3'),
(2, 1, 1, '4'),
(3, 1, 0, '5'),
(4, 1, 0, '6'),
(5, 1, 0, '7'),
(6, 2, 0, 'Ivory Coast '),
(7, 2, 0, 'Gabon'),
(8, 2, 1, 'Ghana'),
(9, 2, 0, 'Tunisia '),
(10, 2, 0, 'Nigeria'),
(11, 3, 0, 'Congo and Guinea'),
(12, 3, 0, 'Ivory Coast and Ghana'),
(13, 3, 0, 'Burkina Faso Zambia'),
(14, 3, 1, 'Nigeria and Ghana'),
(15, 3, 0, 'South Africa and Mali'),
(16, 4, 0, 'Abedi Pele '),
(17, 4, 1, 'Shaun Bartlett'),
(18, 4, 0, 'Samuel Eto\'o'),
(19, 4, 0, 'Didier Drogba'),
(20, 4, 0, 'Fadiga '),
(21, 5, 0, '6'),
(22, 5, 0, '3'),
(23, 5, 0, '1'),
(24, 5, 1, '4'),
(25, 5, 0, '7'),
(31, 6, 0, 'Ghana'),
(32, 6, 0, 'Tunisia'),
(33, 6, 0, 'Egypt'),
(34, 6, 0, 'Senegal'),
(35, 6, 1, 'Nigeria'),
(36, 7, 1, 'Gabon'),
(37, 7, 0, 'South Africa'),
(38, 7, 0, 'Nigeria'),
(39, 7, 0, 'Ivory Coast'),
(40, 7, 0, 'Zambia'),
(41, 8, 0, 'South Africa and Ghana'),
(42, 8, 1, 'Gabon and Tunisia'),
(43, 8, 0, 'Nigeria and Guinea'),
(44, 8, 0, 'Cameroon and Angola'),
(45, 8, 0, 'Ivory Coast and Egypt'),
(46, 9, 0, 'Zambia'),
(47, 9, 0, 'Gabon'),
(48, 9, 0, 'Ghana'),
(49, 9, 1, 'Guinea'),
(50, 9, 0, 'Benin '),
(51, 10, 0, 'Ghana'),
(52, 10, 0, 'Ivory Coast'),
(53, 10, 1, 'Zambia'),
(54, 10, 0, 'Guinea '),
(55, 10, 0, 'Congo ');

-- --------------------------------------------------------

--
-- Table structure for table `acn_questions`
--

CREATE TABLE `acn_questions` (
  `question_number` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acn_questions`
--

INSERT INTO `acn_questions` (`question_number`, `text`) VALUES
(1, 'How many venues were used for the 2010 African cup of Nations?'),
(2, 'Which country lost to Egypt in the 2010 African cup of Nations final?'),
(3, 'Which countries co-hosted the 2000 African cup of Nations?'),
(4, 'Who was the top scorer in the 2000 African cup of Nations? '),
(5, 'How many goals did Samuel Etoâ€™o score in the 2000 African cup of Nations tournament?'),
(6, 'Which country won third place in the 2006 African cup of Nations? '),
(7, 'Which country topped group C of the 2012 African cup of Nations? '),
(8, 'Which two countries advanced from group C to the next round of the 2012 African cup of Nations? '),
(9, 'Which of the following countries did not qualify for the 2010 African cup of Nation? '),
(10, 'Which country won the 2012 African cup of Nations? ');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'sunnygkp10@gmail.com', '123456'),
(2, 'admin@admin.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `epl_choices`
--

CREATE TABLE `epl_choices` (
  `id` int(11) NOT NULL,
  `question_number` int(11) NOT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT '0',
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `epl_choices`
--

INSERT INTO `epl_choices` (`id`, `question_number`, `is_correct`, `text`) VALUES
(16, 1, 0, 'Manchester United 	'),
(17, 1, 1, 'Manchester City'),
(18, 1, 0, 'Liverpool'),
(19, 1, 0, 'Chelsea'),
(20, 1, 0, 'Arsenal'),
(21, 2, 0, 'Sergio Aguero '),
(22, 2, 0, 'Wayne Rooney'),
(23, 2, 0, 'Demba Ba'),
(24, 2, 1, 'Van Persie'),
(25, 2, 0, 'Edin Dzeko'),
(26, 3, 0, 'Van der Sar '),
(27, 3, 1, 'Joe Hart  '),
(28, 3, 0, 'De Gea'),
(29, 3, 0, 'Courtois '),
(30, 3, 0, 'Pepe Reina'),
(31, 4, 1, 'Van Persie '),
(32, 4, 0, 'Wayne Rooney'),
(33, 4, 0, 'Sergio Aguero'),
(34, 4, 0, 'Frank Lampard'),
(35, 4, 0, 'Stephen Gerrard'),
(36, 5, 0, 'Brendan Rodgers'),
(37, 5, 1, 'Tony Pulis'),
(38, 5, 0, 'Jose Mourinho'),
(39, 5, 0, 'Alex Furguson'),
(40, 5, 0, 'Arsene Wenger'),
(41, 6, 1, 'Eden Hazard'),
(42, 6, 0, 'Gary Cahill'),
(43, 6, 0, 'Adam Lallana'),
(44, 6, 0, 'Andre Schurrle'),
(45, 6, 0, 'Sergio Aguero'),
(46, 7, 0, 'Manchester United '),
(47, 7, 0, 'Spurs'),
(48, 7, 1, 'Chelsea'),
(49, 7, 0, 'Arsenal'),
(50, 7, 0, 'Liverpool'),
(51, 8, 0, 'C. Ronaldo'),
(52, 8, 0, 'Didier Drogba '),
(53, 8, 0, 'Wayne Rooney'),
(54, 8, 1, 'Marlon Harewood'),
(55, 8, 0, 'Christian Benteke'),
(56, 10, 0, 'Chelsea'),
(57, 10, 0, 'Everton'),
(58, 10, 1, 'Leicester City'),
(59, 10, 0, 'Spurs'),
(60, 10, 0, 'Manchester City');

-- --------------------------------------------------------

--
-- Table structure for table `epl_questions`
--

CREATE TABLE `epl_questions` (
  `question_number` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `epl_questions`
--

INSERT INTO `epl_questions` (`question_number`, `text`) VALUES
(1, 'Which team won the 2011/2012 English Premier League?'),
(2, 'Who was the top scorer in the 2011/2012 English Premier League?'),
(3, 'Who won the best goalkeeper award for the 2011/2012 English Premier League season?'),
(4, 'Who won the PFA player of the year award for the 2011/2012 English Premier League season?'),
(5, 'Who won the manager of the season award for the 2013/2014 English Premier League season? '),
(6, 'Who won the PFA young player of the year award for the 2013/2014 English Premier League season?'),
(7, 'Which team had the longest unbeaten run in the 2005/2006 English Premier League season?'),
(8, 'Who scored the first hat-trick of the 2005/2006 English premier league season? '),
(9, 'Who won the premier league player of the season award for the 2015/2016 English premier league? '),
(10, 'Which team won the 2015/2016 English premier league? ');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `feedback`, `date`, `time`) VALUES
('5b3bac915e3d6', 'Richmond Sowah', 'rdsowah@st.ug.edu.gh', 'Complaint', 'My money is locked ', '2018-07-03', '05:04:17pm'),
('5b4331d864ee8', 'Ricci', 'rdsowah@st.ug.edu.gh', 'trial', 'dfbbdsfjhsbfjkfbksfbakfbkajbfksabfsfb  cxfbsfhbsjfbabajj', '2018-07-09', '09:58:48am');

-- --------------------------------------------------------

--
-- Table structure for table `fwc_choices`
--

CREATE TABLE `fwc_choices` (
  `id` int(11) NOT NULL,
  `question_number` int(11) NOT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT '0',
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fwc_choices`
--

INSERT INTO `fwc_choices` (`id`, `question_number`, `is_correct`, `text`) VALUES
(1, 1, 0, 'Mexico'),
(2, 1, 0, 'Uruguay'),
(3, 1, 0, 'Paraguay'),
(4, 1, 1, 'France'),
(5, 1, 0, 'Spain'),
(6, 2, 0, 'Thierry Henry'),
(7, 2, 1, 'Miroslav Klose'),
(8, 2, 0, 'Ruud Van Nistelrooy'),
(9, 2, 0, 'Pavel Nedved'),
(10, 2, 0, 'Francesco Totti'),
(11, 3, 0, 'Germany and Italy'),
(12, 3, 0, 'Spain and France'),
(13, 3, 0, 'Brazil and Germany'),
(14, 3, 0, 'Spain and Italy'),
(15, 3, 1, 'Brazil and France'),
(16, 4, 0, '180 goals'),
(17, 4, 0, '200 goals'),
(18, 4, 0, '165 goals'),
(19, 4, 1, '171 goals'),
(20, 4, 0, '153 goals'),
(21, 5, 0, '25th May 2002'),
(22, 5, 0, '28th May 2002'),
(23, 5, 0, '30th May 2002'),
(24, 5, 1, '31st May 2002'),
(25, 5, 0, '29th May 2002'),
(26, 6, 0, '0-0'),
(27, 6, 1, '1-1'),
(28, 6, 0, '2-2'),
(29, 6, 0, '3-2'),
(30, 6, 0, '1-0'),
(31, 7, 0, 'Angola'),
(32, 7, 0, 'Ghana'),
(33, 7, 1, 'Senegal'),
(34, 7, 0, 'Togo'),
(35, 7, 0, 'Tunisia'),
(36, 8, 0, 'Iniesta '),
(37, 8, 0, 'Xavi'),
(38, 8, 1, 'Diego Forlan'),
(39, 8, 0, 'Thomas Muller'),
(40, 8, 0, 'Wesley Sneijder'),
(41, 9, 0, 'C. Ronaldo'),
(42, 9, 0, 'David Villa'),
(43, 9, 0, 'Mario Gotze'),
(44, 9, 0, 'Rooney'),
(45, 9, 1, 'Thomas Muller'),
(46, 10, 0, 'France'),
(47, 10, 0, 'Uruguay'),
(48, 10, 0, 'Paraguay'),
(49, 10, 1, 'Mexico'),
(50, 10, 0, 'Italy');

-- --------------------------------------------------------

--
-- Table structure for table `fwc_questions`
--

CREATE TABLE `fwc_questions` (
  `question_number` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fwc_questions`
--

INSERT INTO `fwc_questions` (`question_number`, `text`) VALUES
(1, 'Which country hosted the 1998 FIFA World Cup? '),
(2, 'Who was the top scorer in the 2006 FIFA World cup? '),
(3, 'Which countries played in the final match of the 1998 FIFA World cup?  '),
(4, 'How many goals were scored in the 1998 FIFA World Cup?  '),
(5, 'On what date did the 2002 FIFA World Cup start? '),
(6, 'What was the score line of the 2006 FIFA World cup final after extra time?   '),
(7, 'All the following countries played in the 2006 FIFA World cup except?   '),
(8, 'Who won the best player award for the 2010 FIFA World cup?   '),
(9, 'Who won the best young player award for the 2010 FIFA World cup?  '),
(10, 'Which country played against South Africa in the 2010 FIFA World cup opening match?  ');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `amount_paid` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`name`, `email`, `status`, `amount_paid`, `date`) VALUES
('Richmond', 'sowahrichmond30@yahoo.com', 'won', 0, '2018-07-13 17:20:33');

-- --------------------------------------------------------

--
-- Table structure for table `recovery_keys`
--

CREATE TABLE `recovery_keys` (
  `rid` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `valid` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sll_choices`
--

CREATE TABLE `sll_choices` (
  `id` int(11) NOT NULL,
  `question_number` int(11) NOT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT '0',
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sll_choices`
--

INSERT INTO `sll_choices` (`id`, `question_number`, `is_correct`, `text`) VALUES
(1, 1, 0, 'C. Ronaldo'),
(2, 1, 0, 'Lionel Messi'),
(3, 1, 0, 'Benzema'),
(4, 1, 0, 'Neymar'),
(5, 1, 1, 'Luis Suarez'),
(6, 2, 1, 'Jan Oblak'),
(7, 2, 0, 'Claudio Bravo'),
(8, 2, 0, 'Ter Stergen'),
(9, 2, 0, 'Diego Lopez'),
(10, 2, 0, 'Diego Alves'),
(11, 3, 0, 'Atletico Madrid'),
(12, 3, 0, 'Real Madrid'),
(13, 3, 1, 'Barcelona'),
(14, 3, 0, 'Valencia'),
(15, 3, 0, 'Sevilla'),
(16, 4, 1, '27th August 2005'),
(17, 4, 0, '28th August 2005'),
(18, 4, 0, '29th August 2005'),
(19, 4, 0, '30th August 2005'),
(20, 4, 0, '31st August 2005'),
(21, 5, 0, 'Toni Kroos'),
(22, 5, 0, 'Varane'),
(23, 5, 0, 'Roberto Carlos'),
(24, 5, 1, 'Granero'),
(25, 5, 0, 'Marcelo'),
(26, 6, 1, 'Real Zaragoza'),
(27, 6, 0, 'Rayo Vallecano'),
(28, 6, 0, 'Villareal'),
(29, 6, 0, 'Getafe'),
(30, 6, 0, 'Granada'),
(31, 7, 0, 'Sergio Ramos'),
(32, 7, 1, 'Gregory Beranger'),
(33, 7, 0, 'Juanfran'),
(34, 7, 0, 'Maxi Rodriguez '),
(35, 7, 0, 'Diego Godin');

-- --------------------------------------------------------

--
-- Table structure for table `sll_questions`
--

CREATE TABLE `sll_questions` (
  `question_number` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sll_questions`
--

INSERT INTO `sll_questions` (`question_number`, `text`) VALUES
(1, 'Who was the top scorer in the 2015/2016 Spanish La Liga? '),
(2, 'Who won the Liga de Futbol award for best goalkeeper of the 2015/2016 Spanish La Liga?'),
(3, 'Which team won the 2014/2015 Spanish La Liga? '),
(4, 'On what date did the 2005/2006 Spanish La Liga begin?'),
(5, 'Which of the following players signed for Real Madrid during the 2008/2009 transfer windows?'),
(6, 'Which of the following teams was relegated at the end of the 2007/2008 Spanish La Liga season? '),
(7, 'Who received the first yellow card of the 2008/2009 Spanish La Liga season? ');

-- --------------------------------------------------------

--
-- Table structure for table `ucl_choices`
--

CREATE TABLE `ucl_choices` (
  `id` int(11) NOT NULL,
  `question_number` int(11) NOT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT '0',
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ucl_choices`
--

INSERT INTO `ucl_choices` (`id`, `question_number`, `is_correct`, `text`) VALUES
(1, 1, 0, 'Stadio Olimpico'),
(2, 1, 0, 'Estadio da Luz'),
(3, 1, 1, 'Olympiastadion'),
(4, 1, 0, 'Wembley Stadium'),
(5, 1, 0, 'Allianz Arena'),
(6, 2, 0, 'Real Madrid and Juventus'),
(7, 2, 0, 'Bayern Munich and Chelsea'),
(8, 2, 0, 'Barcelona and Manchester United'),
(9, 2, 0, 'Real Madrid and Atletico Madrid'),
(10, 2, 1, 'Barcelona and Juventus'),
(11, 3, 0, '0-0'),
(12, 3, 0, '1-0'),
(13, 3, 1, '2-0'),
(14, 3, 0, '2-1'),
(15, 3, 0, '1-1'),
(16, 4, 0, 'Zurich'),
(17, 4, 0, 'Amsterdam'),
(18, 4, 0, 'Paris '),
(19, 4, 0, 'Rome'),
(20, 4, 1, 'Moscow'),
(21, 5, 0, 'PSG'),
(22, 5, 0, 'Real Madrid'),
(23, 5, 1, 'Arsenal '),
(24, 5, 0, 'Manchester United'),
(25, 5, 0, 'Benfica '),
(26, 6, 1, 'Bayern Munich'),
(27, 6, 0, 'Juventus'),
(28, 6, 0, 'Chelsea'),
(29, 6, 0, 'Arsenal '),
(30, 6, 0, 'A.C. Milan'),
(31, 7, 0, '16th'),
(32, 7, 0, '15th'),
(33, 7, 1, '14th'),
(34, 7, 0, '13th'),
(35, 7, 0, '12th'),
(36, 8, 1, '13th September 2005'),
(37, 8, 0, '14th September 2005'),
(38, 8, 0, '15th September 2004'),
(39, 8, 0, '16th September 2005'),
(40, 8, 0, '17th September 2005'),
(41, 9, 0, 'Atletico Madrid'),
(42, 9, 1, 'Chelsea'),
(43, 9, 0, 'Juventus'),
(44, 9, 0, 'Manchester United '),
(45, 9, 0, 'Liverpool'),
(46, 10, 0, 'C. Ronaldo'),
(47, 10, 0, 'Ronaldinho'),
(48, 10, 0, 'Messi'),
(49, 10, 1, 'Kaka'),
(50, 10, 0, 'Raul');

-- --------------------------------------------------------

--
-- Table structure for table `ucl_questions`
--

CREATE TABLE `ucl_questions` (
  `question_number` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ucl_questions`
--

INSERT INTO `ucl_questions` (`question_number`, `text`) VALUES
(1, 'In which stadium was the 2014/2015 UEFA Champions league final played?'),
(2, 'Which teams played in the 2014/2015 UEFA Champions league final match? '),
(3, 'What was the score line of the 2008/2009 UEFA Champions league final? '),
(4, 'Which city hosted the 2007/2008 UEFA Champions league final? '),
(5, 'Which team eliminated A.S. Roma from the 2008/2009 UEFA Champions league? '),
(6, 'Which team lost to Barcelona in the 2008/2009 UEFA Champions league quarter final?'),
(7, 'The 2005/2006 UEFA Champions league was theâ€¦â€¦â€¦season since it was rebranded from the European cup. '),
(8, 'On what date did the 2005/2006 UEFA Champions league start? '),
(9, 'Which team lost the 2007/2008 UEFA Champions league final? '),
(10, 'Who won the UEFA club footballer of the year award after the 2006/2007 UEFA Champions league season? ');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` text NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `email`, `mob`, `password`) VALUES
('Courage', 'F', 'c@gmail.com', '0200874441', 'ed8ce15da9b7b5e2ee70634cc235e363'),
('Mark Zukarburg', 'M', 'ceo@facebook.com', '987654321', 'e10adc3949ba59abbe56e057f20f883e'),
('Elliot', 'M', 'elliot@gmail.com', '0540819824', '46fa97a5b70681d5ac78efb60f0c6867'),
('Faith', 'F', 'faith@gmail.com', '200851486', 'ecee7df9bbac50b9b428483bfea1dd7c'),
('Jemima', 'F', 'jbt@gmail.com', '0501424074', '962bb25aa7ea6a808aad3a1dea0f4099'),
('Richmond', 'M', 'rdsowah@st.ug.edu.gh', '540819824', 'aa4bbe632574e4a96cddc259086b20dc'),
('Richmond', 'M', 'sowahrichmond30@yahoo.com', '0200851486', '083d2182dc8fdf0834b112256802ae2a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acn_choices`
--
ALTER TABLE `acn_choices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `acn_questions`
--
ALTER TABLE `acn_questions`
  ADD PRIMARY KEY (`question_number`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `epl_choices`
--
ALTER TABLE `epl_choices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `epl_questions`
--
ALTER TABLE `epl_questions`
  ADD PRIMARY KEY (`question_number`);

--
-- Indexes for table `fwc_choices`
--
ALTER TABLE `fwc_choices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fwc_questions`
--
ALTER TABLE `fwc_questions`
  ADD PRIMARY KEY (`question_number`);

--
-- Indexes for table `recovery_keys`
--
ALTER TABLE `recovery_keys`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `sll_choices`
--
ALTER TABLE `sll_choices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sll_questions`
--
ALTER TABLE `sll_questions`
  ADD PRIMARY KEY (`question_number`);

--
-- Indexes for table `ucl_choices`
--
ALTER TABLE `ucl_choices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ucl_questions`
--
ALTER TABLE `ucl_questions`
  ADD PRIMARY KEY (`question_number`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acn_choices`
--
ALTER TABLE `acn_choices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `acn_questions`
--
ALTER TABLE `acn_questions`
  MODIFY `question_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `epl_choices`
--
ALTER TABLE `epl_choices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `fwc_choices`
--
ALTER TABLE `fwc_choices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `recovery_keys`
--
ALTER TABLE `recovery_keys`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sll_choices`
--
ALTER TABLE `sll_choices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `ucl_choices`
--
ALTER TABLE `ucl_choices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
