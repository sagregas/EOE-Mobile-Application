-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: mysql1.cs.clemson.edu
-- Generation Time: Nov 04, 2016 at 03:54 PM
-- Server version: 5.5.52-0ubuntu0.12.04.1
-- PHP Version: 5.5.9-1ubuntu4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `EoE_r7zg`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE IF NOT EXISTS `doctor` (
  `doctorId` int(11) NOT NULL AUTO_INCREMENT,
  `doctorName` varchar(255) NOT NULL,
  `docUsername` varchar(50) NOT NULL,
  `docPassword` varchar(50) NOT NULL,
  PRIMARY KEY (`doctorId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctorId`, `doctorName`, `docUsername`, `docPassword`) VALUES
(1, 'Williams', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `foodDiary`
--

CREATE TABLE IF NOT EXISTS `foodDiary` (
  `diaryID` int(11) NOT NULL AUTO_INCREMENT,
  `patientID` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `inputPerson` varchar(45) NOT NULL,
  `image` varchar(255) NOT NULL,
  `location` longtext NOT NULL,
  `meal` varchar(45) NOT NULL,
  `partner` varchar(45) NOT NULL,
  `feelBefore` varchar(45) NOT NULL,
  `feelAfter` varchar(45) NOT NULL,
  `someone` varchar(45) NOT NULL,
  `others` varchar(45) NOT NULL,
  `worry` varchar(45) NOT NULL,
  PRIMARY KEY (`diaryID`),
  KEY `patientID` (`patientID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=253 ;

--
-- Dumping data for table `foodDiary`
--

INSERT INTO `foodDiary` (`diaryID`, `patientID`, `time`, `inputPerson`, `image`, `location`, `meal`, `partner`, `feelBefore`, `feelAfter`, `someone`, `others`, `worry`) VALUES
(226, 169, '2016-07-06 08:38:44', 'No', 'https://people.cs.clemson.edu/~sravira/Viewing/Images/226_1467808726.png', 'Home', 'Breakfast', 'Alone', 'No Symptoms', 'No Symptoms', '', '', 'No'),
(227, 169, '2016-07-06 10:30:16', 'No', 'https://people.cs.clemson.edu/~sravira/Viewing/Images/227_1467815418.png', 'School', 'Snack', 'Friends', 'No Symptoms', 'No Symptoms', '', '', 'No'),
(228, 169, '2016-07-13 10:36:18', 'No', 'https://people.cs.clemson.edu/~sravira/Viewing/Images/228_1468420590.png', 'Home', 'Breakfast', 'Alone', 'Symptoms', 'No Symptoms', '', '', 'Yes'),
(229, 170, '2016-07-13 10:38:50', 'Yes', '', 'Home', 'Breakfast', 'Alone', 'Symptoms', 'Symptoms', '', '', 'Yes'),
(230, 172, '2016-07-13 11:12:36', 'No', '', 'Home', 'Breakfast', 'Alone', 'No Symptoms', 'Symptoms', '', '', 'Yes'),
(231, 175, '2016-08-09 12:46:40', 'Yes', 'http://rchowda.people.clemson.edu/eoe_php/Images/231_1470761201.png', 'Home', 'Breakfast', 'Alone', 'No Symptoms', 'No Symptoms', '', '', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `pedsQL`
--

CREATE TABLE IF NOT EXISTS `pedsQL` (
  `pedsQLID` int(11) NOT NULL AUTO_INCREMENT,
  `patientID` int(11) NOT NULL DEFAULT '25',
  `time` datetime NOT NULL,
  `s1q1` int(11) NOT NULL,
  `s1q2` int(11) NOT NULL,
  `s1q3` int(11) NOT NULL,
  `s1q4` int(11) NOT NULL,
  `s1q5` int(11) NOT NULL,
  `s1q6` int(11) NOT NULL,
  `s2q1` int(11) NOT NULL,
  `s2q2` int(11) NOT NULL,
  `s2q3` int(11) NOT NULL,
  `s2q4` int(11) NOT NULL,
  `s3q1` int(11) NOT NULL,
  `s3q2` int(11) NOT NULL,
  `s3q3` int(11) NOT NULL,
  `s3q4` int(11) NOT NULL,
  `s3q5` int(11) NOT NULL,
  `s4q1` int(11) NOT NULL,
  `s4q2` int(11) NOT NULL,
  `s4q3` int(11) NOT NULL,
  `s4q4` int(11) NOT NULL,
  `s4q5` int(11) NOT NULL,
  `s4q6` int(11) NOT NULL,
  `s5q1` int(11) NOT NULL,
  `s5q2` int(11) NOT NULL,
  `s5q3` int(11) NOT NULL,
  `s5q4` int(11) NOT NULL,
  `s5q5` int(11) NOT NULL,
  `s67` int(11) DEFAULT NULL,
  `s6q1` int(11) DEFAULT NULL,
  `s6q2` int(11) DEFAULT NULL,
  `s6q3` int(11) DEFAULT NULL,
  `s6q4` int(11) DEFAULT NULL,
  `s7q1` int(11) DEFAULT NULL,
  `s7q2` int(11) DEFAULT NULL,
  `s7q3` int(11) DEFAULT NULL,
  `s8` int(11) DEFAULT NULL,
  `s8q1` int(11) DEFAULT NULL,
  `s8q2` int(11) DEFAULT NULL,
  `symptoms1` double NOT NULL,
  `symptoms2` double NOT NULL,
  `Treatment` double NOT NULL,
  `Worry` double NOT NULL,
  `Communication` double NOT NULL,
  `FE` double NOT NULL,
  `FF` double NOT NULL,
  `Total` double NOT NULL,
  `symptoms` double NOT NULL,
  PRIMARY KEY (`pedsQLID`),
  KEY `patientID` (`patientID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `pedsQL`
--

INSERT INTO `pedsQL` (`pedsQLID`, `patientID`, `time`, `s1q1`, `s1q2`, `s1q3`, `s1q4`, `s1q5`, `s1q6`, `s2q1`, `s2q2`, `s2q3`, `s2q4`, `s3q1`, `s3q2`, `s3q3`, `s3q4`, `s3q5`, `s4q1`, `s4q2`, `s4q3`, `s4q4`, `s4q5`, `s4q6`, `s5q1`, `s5q2`, `s5q3`, `s5q4`, `s5q5`, `s67`, `s6q1`, `s6q2`, `s6q3`, `s6q4`, `s7q1`, `s7q2`, `s7q3`, `s8`, `s8q1`, `s8q2`, `symptoms1`, `symptoms2`, `Treatment`, `Worry`, `Communication`, `FE`, `FF`, `Total`, `symptoms`) VALUES
(29, 169, '2016-07-06 08:45:32', 3, 2, 2, 2, 2, 2, 3, 1, 3, 2, 2, 1, 1, 3, 3, 2, 2, 1, 3, 1, 2, 3, 1, 4, 4, 2, 0, -1, -1, -1, -1, -1, -1, -1, 1, 3, 2, 45.83, 43.75, 50, 50, 30, 0, 0, 44.23, 45),
(30, 175, '2016-08-09 08:11:38', 0, 0, 1, 1, 2, 2, 3, 3, 4, 4, 3, 3, 2, 2, 1, 1, 0, 3, 1, 1, 2, 2, 3, 3, 4, 4, 0, -1, -1, -1, -1, -1, -1, -1, 1, 0, 1, 75, 12.5, 45, 79.17, 20, 0, 0, 50, 50),
(31, 175, '2016-09-08 08:15:32', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, -1, -1, -1, -1, -1, -1, -1, 0, 0, 1, 79.17, 100, 90, 91.67, 85, 0, 0, 88.46, 87.5),
(32, 170, '2016-08-11 09:09:40', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 0, -1, -1, -1, -1, -1, -1, -1, 0, -1, -1, 25, 25, 25, 25, 25, 0, 0, 25, 25),
(33, 170, '2016-08-11 09:09:49', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 0, -1, -1, -1, -1, -1, -1, -1, 0, -1, -1, 25, 25, 25, 25, 25, 0, 0, 25, 25),
(35, 174, '2016-11-02 16:06:45', 2, 2, 0, 2, 3, 4, 1, 4, 1, 1, 3, 3, 4, 1, 3, 3, 3, 4, 2, 3, 2, 3, 3, 2, 2, 3, 0, -1, -1, -1, -1, -1, -1, -1, 0, -1, -1, 45.83, 56.25, 30, 37.5, 35, 0, 0, 40.38, 50);

-- --------------------------------------------------------

--
-- Table structure for table `peess`
--

CREATE TABLE IF NOT EXISTS `peess` (
  `peessID` int(11) NOT NULL AUTO_INCREMENT,
  `patientID` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `q1f` int(11) DEFAULT NULL,
  `q1s` int(11) DEFAULT NULL,
  `q2f` int(11) DEFAULT NULL,
  `q2s` int(11) DEFAULT NULL,
  `q3f` int(11) DEFAULT NULL,
  `q3s` int(11) DEFAULT NULL,
  `q4f` int(11) DEFAULT NULL,
  `q4s` int(11) DEFAULT NULL,
  `q5f` int(11) DEFAULT NULL,
  `q5s` int(11) DEFAULT NULL,
  `q6f` int(11) DEFAULT NULL,
  `q6s` int(11) DEFAULT NULL,
  `q7f` int(11) DEFAULT NULL,
  `q7s` int(11) DEFAULT NULL,
  `q8f` int(11) DEFAULT NULL,
  `q8s` int(11) DEFAULT NULL,
  `q9f` int(11) DEFAULT NULL,
  `q9s` int(11) DEFAULT NULL,
  `q10f` int(11) DEFAULT NULL,
  `q11f` int(11) DEFAULT NULL,
  `frequency` text NOT NULL,
  `severity` text NOT NULL,
  `total` text NOT NULL,
  `Dysphagia` text NOT NULL,
  `Gerd` text NOT NULL,
  `Nausea` text NOT NULL,
  `Pain` text NOT NULL,
  PRIMARY KEY (`peessID`),
  KEY `patientID` (`patientID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `peess`
--

INSERT INTO `peess` (`peessID`, `patientID`, `time`, `q1f`, `q1s`, `q2f`, `q2s`, `q3f`, `q3s`, `q4f`, `q4s`, `q5f`, `q5s`, `q6f`, `q6s`, `q7f`, `q7s`, `q8f`, `q8s`, `q9f`, `q9s`, `q10f`, `q11f`, `frequency`, `severity`, `total`, `Dysphagia`, `Gerd`, `Nausea`, `Pain`) VALUES
(39, 169, '2016-07-06 08:42:44', 2, 2, 1, 1, 3, 3, 3, 0, 0, -1, 0, -1, 1, 1, 2, 1, 2, 4, 2, 2, '59.09', '57.14', '58.33', '70.83', '50.0', '68.75', '37.5'),
(40, 175, '2016-08-09 12:46:16', 3, 4, 0, -1, 1, 0, 0, -1, 0, -1, 0, 1, 0, -1, 1, 0, 0, -1, 0, 0, '88.64', '68.75', '83.33', '95.83', '100.0', '91.67', '50.0'),
(41, 172, '2016-08-08 23:23:13', 0, 4, 4, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 2, 0, '86.36', '50.0', '80.77', '90.0', '66.67', '100.0', '66.67'),
(42, 170, '2016-08-11 09:20:49', 0, -1, 0, -1, 1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, 2, '93.18', '100.0', '93.75', '90.0', '100.0', '100.0', '91.67'),
(43, 174, '2016-11-02 16:01:44', 3, 4, 3, 3, 3, 3, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 0, '34.09', '22.22', '28.75', '37.5', '25.0', '25.0', '18.75');

-- --------------------------------------------------------

--
-- Table structure for table `userInfo`
--

CREATE TABLE IF NOT EXISTS `userInfo` (
  `patientID` int(11) NOT NULL AUTO_INCREMENT,
  `doctorId` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(45) NOT NULL,
  `birthDate` date NOT NULL,
  `race` varchar(45) NOT NULL,
  `ethnicity` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `grade` varchar(45) NOT NULL,
  `lengthOfDisease` varchar(45) NOT NULL,
  `motherEducation` varchar(45) NOT NULL,
  `fatherEducation` varchar(45) NOT NULL,
  `familyIncome` varchar(45) NOT NULL,
  PRIMARY KEY (`patientID`),
  KEY `userInfo_ibfk_1` (`doctorId`),
  UNIQUE (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=192 ;

--
-- Dumping data for table `userInfo`
--

INSERT INTO `userInfo` (`patientID`, `doctorId`, `name`, `email`, `password`, `birthDate`, `race`, `ethnicity`, `gender`, `grade`, `lengthOfDisease`, `motherEducation`, `fatherEducation`, `familyIncome`) VALUES
(169, 1, 'Raghuvaran Chowda ', 'raghu@gmail.com', 'raghuvaran', '1993-06-11', 'Asian', 'No', 'Male', '12th', 'Less than 1 year', 'Bachelor''s degree', 'Bachelor''s degree', '$100,000 or more'),
(170, 1, 'Kieth', '2014-07-13', 'keith@gmail.com', 'keith','White', 'No', 'Male', '11th', 'Less than 1 year', 'Some college (no degree)', 'Bachelor''s degree', '$35,000 to $49,999'),
(171, 1, 'Hannah Williams', 'hannah@gmail.com', 'hannah','2009-06-29', 'White', 'No', 'Female', '3rd', 'Less than 1 year', 'Bachelor''s degree', 'Graduate or professional degree', '$75,000 to $99,999'),
(172, 1, 'FacTest','factest@gmail.com', 'factest', '2007-08-08', 'Asian', 'Yes', 'Male', 'Pre-school', 'Less than 1 year', 'Less than 9th grade', 'Less than 9th grade', 'Less than $10,000'),
(174, 1, 'test', 'test@gmail.com','test','2016-08-02', 'White', 'Yes', 'Male', 'Pre-school', 'Less than 1 year', 'Less than 9th grade', 'Less than 9th grade', 'Less than $10,000'),
(175, 1, 'Test2', 'test2@gmail.com','test2','2016-08-02', 'White', 'Yes', 'Male', 'Pre-school', 'Less than 1 year', 'Less than 9th grade', 'Less than 9th grade', 'Less than $10,000');


-- --------------------------------------------------------

--
-- Table structure for table `userSurvey`
--

CREATE TABLE IF NOT EXISTS `userSurvey` (
  `surveyID` int(11) NOT NULL AUTO_INCREMENT,
  `patientID` int(11) NOT NULL,
  `time` datetime DEFAULT NULL,
  `steroid` varchar(45) DEFAULT NULL,
  `dietary` varchar(45) DEFAULT NULL,
  `foodElimination` varchar(45) DEFAULT NULL,
  `allergy_syptoms` varchar(45) DEFAULT NULL,
  `allergy_syptoms_food` varchar(45) DEFAULT NULL,
  `elementalDiet` varchar(45) DEFAULT NULL,
  `exclElemental` varchar(45) DEFAULT NULL,
  `formula` varchar(45) DEFAULT NULL,
  `foodTrial` varchar(45) DEFAULT NULL,
  `foodTrial_food` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`surveyID`),
  KEY `patientID` (`patientID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `userSurvey`
--

INSERT INTO `userSurvey` (`surveyID`, `patientID`, `time`, `steroid`, `dietary`, `foodElimination`, `allergy_syptoms`, `allergy_syptoms_food`, `elementalDiet`, `exclElemental`, `formula`, `foodTrial`, `foodTrial_food`) VALUES
(26, 169, '2016-07-06 08:47:23', 'Yes', 'Yes', 'Yes', 'Allergy testing/Symptoms', 'Bread', 'Yes', 'Yes', 'Yes', 'Yes', 'Oats'),
(27, 171, '2016-08-04 11:11:28', '', 'Yes', 'Yes', 'Allergy testing/Symptoms', 'Carrots', 'No', '', '', '', ''),
(28, 172, '2016-08-11 09:14:32', 'No', 'No', 'No', 'Allergy testing/Symptoms', '', '', '', '', '', ''),
(29, 175, '2016-09-14 10:10:48', 'Yes', 'Yes', 'Yes', 'Six food elimination diet', 'Fish Carrots', 'No', '', '', '', '');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `foodDiary`
--
ALTER TABLE `foodDiary`
  ADD CONSTRAINT `foodDiary_ibfk_1` FOREIGN KEY (`patientID`) REFERENCES `userInfo` (`patientID`);

--
-- Constraints for table `pedsQL`
--
ALTER TABLE `pedsQL`
  ADD CONSTRAINT `pedsQL_ibfk_1` FOREIGN KEY (`patientID`) REFERENCES `userInfo` (`patientID`);

--
-- Constraints for table `peess`
--
ALTER TABLE `peess`
  ADD CONSTRAINT `peess_ibfk_1` FOREIGN KEY (`patientID`) REFERENCES `userInfo` (`patientID`);

--
-- Constraints for table `userInfo`
--
ALTER TABLE `userInfo`
  ADD CONSTRAINT `userInfo_ibfk_1` FOREIGN KEY (`doctorId`) REFERENCES `doctor` (`doctorId`);

--
-- Constraints for table `userSurvey`
--
ALTER TABLE `userSurvey`
  ADD CONSTRAINT `userSurvey_ibfk_1` FOREIGN KEY (`patientID`) REFERENCES `userInfo` (`patientID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
