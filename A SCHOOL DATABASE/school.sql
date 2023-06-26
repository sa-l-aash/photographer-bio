-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2023 at 03:40 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `BookID` int(11) NOT NULL,
  `Genre` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Author` varchar(255) DEFAULT NULL,
  `NumberOfBooks` int(5) DEFAULT NULL,
  `DatePublished` date DEFAULT NULL,
  `Subjects` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`BookID`, `Genre`, `Title`, `Author`, `NumberOfBooks`, `DatePublished`, `Subjects`) VALUES
(3, 'Action', 'Peter Pan', 'Michael Jackson', 2, '2015-05-12', 2),
(4, 'Adventure', 'Jackie Chan', 'David Josh', 4, '2005-03-19', 13),
(5, 'Narrative', 'Kiswahili 101', 'Michael Jackson', 4, '2012-01-01', 3),
(6, 'Literature', 'Bonjour', 'Michael Jackson', 4, '2005-03-19', 13),
(7, 'Literature', 'Chem101', 'Michael Jackson', 5, '2005-03-19', 8);

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `ClassID` int(11) NOT NULL,
  `ClassName` varchar(255) DEFAULT NULL,
  `NoOfStudents` int(5) DEFAULT 0,
  `Description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`ClassID`, `ClassName`, `NoOfStudents`, `Description`) VALUES
(1, 'Maths101', 53, NULL),
(2, 'Matrices101', 53, NULL),
(3, 'English101', 21, NULL),
(4, 'Maths102', 76, NULL),
(5, 'Kiswahi101', 90, NULL),
(6, 'Chemistry101', 11, NULL),
(7, 'Biology101', 21, NULL),
(8, 'Physics101', 31, NULL),
(10, 'Geography101', 44, NULL),
(11, 'History101', 75, NULL),
(12, 'Business101', 15, NULL),
(13, 'Agriculture101', 32, NULL),
(14, 'Computer101', 17, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dorms`
--

CREATE TABLE `dorms` (
  `DormID` int(11) NOT NULL,
  `DormName` varchar(255) DEFAULT NULL,
  `DormBuildDate` date DEFAULT NULL,
  `DormColour` varchar(255) DEFAULT NULL,
  `DormHeight` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dorms`
--

INSERT INTO `dorms` (`DormID`, `DormName`, `DormBuildDate`, `DormColour`, `DormHeight`) VALUES
(1, 'Kilimanjaro', '1999-06-22', 'yellow', '60m'),
(2, 'Everest', '2023-06-21', 'yellow', '60m'),
(3, 'Kenya', '2001-06-22', 'green', '60m'),
(4, 'Egypt', '2003-03-22', 'blue', '60m'),
(5, 'Tanzania', '2003-06-22', 'purple', '60m'),
(6, 'Somalia', '2004-05-22', 'white', '60m'),
(7, 'Uganda', '2005-06-22', 'black', '60m'),
(8, 'Rwanda', '2007-06-22', 'pink', '60m'),
(9, 'Burundi', '2007-06-22', 'violet', '60m'),
(10, 'Africa', '2008-06-22', 'indigo', '60m'),
(11, 'Asia', '2009-06-22', 'red', '60m'),
(12, 'Russia', '2009-06-22', 'yellow', '60m'),
(13, 'America', '2010-06-22', 'white', '60m'),
(14, 'Congo', '2011-06-22', 'yellow', '60m'),
(15, 'Djibouti', '2013-06-22', 'blue', '60m');

-- --------------------------------------------------------

--
-- Table structure for table `labs`
--

CREATE TABLE `labs` (
  `LabsID` int(11) NOT NULL,
  `LabName` varchar(55) NOT NULL,
  `LabFloor` int(11) NOT NULL,
  `LabColour` varchar(50) DEFAULT NULL,
  `LabTeacher` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `labs`
--

INSERT INTO `labs` (`LabsID`, `LabName`, `LabFloor`, `LabColour`, `LabTeacher`) VALUES
(1, 'Ericsson', 4, 'white', 'Joy Mbore'),
(2, 'Java', 2, 'blue', 'Ann'),
(3, 'Game hub', 1, 'green', NULL),
(4, 'Chill spot', 3, 'red', NULL),
(5, 'Microsoft', 5, 'yellow', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `StudentID` int(11) NOT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Age` int(5) DEFAULT NULL,
  `EmailAddress` varchar(255) NOT NULL,
  `PhoneNumber` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`StudentID`, `LastName`, `FirstName`, `Address`, `Age`, `EmailAddress`, `PhoneNumber`) VALUES
(5, 'Kibaki', 'Mwai', '254,Nairobi', 56, 'mwaikibaki@gmail.com', 712345678),
(6, 'Moi', 'Daniel', '254,Nairobi', 48, 'dainielmoi@gmail.com', 723456789),
(7, 'Salaash', 'Andrew', '254,Nairobi', 22, 'andrewsalaash@gmail.com', 734567890),
(8, 'James', 'David', '254,Nairobi', 34, 'davidjames@gmail.com', 734567891),
(9, 'Peterson', 'Josh', '254,Nairobi', 62, 'joshpeterson@gmail.com', 734567892),
(10, 'Kaelo', 'Timon', '254,Nairobi', 22, 'timonkaelo@gmail.com', 734567893),
(11, 'Kariuki', 'James', '254,Nairobi', 20, 'jameskariuki@gmail.com', 734567894),
(12, 'Cena', 'John', '254,Nairobi', 52, 'johncena@gmail.com', 734567895),
(13, 'Lay', 'Omah', '254,Nairobi', 29, 'omahlay@gmail.com', 734567896),
(14, 'Boy', 'Burna', '254,Nairobi', 23, 'burnaboy@gmail.com', 734567897),
(15, 'Gashi', 'James', '254,Nairobi', 98, 'jamesgashi@gmail.com', 734567860),
(16, 'Dell', 'Andrew', '254,Nairobi', 56, 'andrewdell@gmail.com', 734567861),
(17, 'David', 'Paul', '254,Nairobi', 78, 'pauldavid@gmail.com', 734567862),
(18, 'Njoroge', 'Max', '254,Nairobi', 12, 'maxnjoroge@gmail.com', 734567863),
(19, 'Hart', 'Kevin', '254,Nairobi', 35, 'kevinhart@gmail.com', 734567864),
(20, 'Freeman', 'Morgan', '254,Nairobi', 99, 'morganfreeman@gmail.com', 734567567);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `SubjectID` int(11) NOT NULL,
  `SubjectName` varchar(255) DEFAULT NULL,
  `SubjectDuration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`SubjectID`, `SubjectName`, `SubjectDuration`) VALUES
(1, 'Maths', '3hrs'),
(2, 'English', '3hrs'),
(3, 'Kiswahili', '3hrs'),
(8, 'Chemistry', '3hrs'),
(9, 'Biology', '3hrs'),
(10, 'Physics', '3hrs'),
(11, 'Business', '3hrs'),
(12, 'Agriculture', '3hrs'),
(13, 'French', '3hrs'),
(14, 'Computer', '3hrs'),
(15, 'Spanish', '3hrs'),
(16, 'Japanese', '3hrs'),
(17, 'History', '3hrs'),
(18, 'Shengh', '3hrs'),
(19, 'Chinese', '3hrs'),
(20, 'Italian', '3hrs');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `TeachersName` varchar(255) DEFAULT NULL,
  `StaffNo` int(11) DEFAULT NULL,
  `Subject` int(11) DEFAULT NULL,
  `Department` varchar(255) DEFAULT NULL,
  `YearsOfExperience` int(11) DEFAULT NULL,
  `StaffID` int(11) NOT NULL,
  `PhoneNumber` int(15) NOT NULL,
  `EmailAddress` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`TeachersName`, `StaffNo`, `Subject`, `Department`, `YearsOfExperience`, `StaffID`, `PhoneNumber`, `EmailAddress`) VALUES
('Joyce Omboyo', 123, 1, 'FIT', 9, 1, 798765432, 'joyceomboyo@gmail.com'),
('David Omboyo', 123, 3, 'FIT', 9, 2, 798765431, 'davidomboyo@gmail.com'),
('Joy Mbore', 2987, 8, 'iLab', 6, 3, 757325874, 'joymbore@gmail.com'),
('David Tarryl', 2987, 9, 'iLab', 6, 5, 757325875, 'davidtarryl@gmail.com'),
('James Kevin', NULL, 15, 'JSC', 11, 6, 757324874, 'jameskevin@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`BookID`),
  ADD KEY `FK_Subjects_id` (`Subjects`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`ClassID`);

--
-- Indexes for table `dorms`
--
ALTER TABLE `dorms`
  ADD PRIMARY KEY (`DormID`),
  ADD UNIQUE KEY `DormName` (`DormName`);

--
-- Indexes for table `labs`
--
ALTER TABLE `labs`
  ADD PRIMARY KEY (`LabsID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`StudentID`),
  ADD UNIQUE KEY `EmailAddress` (`EmailAddress`),
  ADD UNIQUE KEY `PhoneNumber` (`PhoneNumber`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`SubjectID`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`StaffID`),
  ADD UNIQUE KEY `PhoneNumber` (`PhoneNumber`),
  ADD UNIQUE KEY `EmailAddress` (`EmailAddress`),
  ADD KEY `fk_Subject_id` (`Subject`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `BookID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `ClassID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `dorms`
--
ALTER TABLE `dorms`
  MODIFY `DormID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `labs`
--
ALTER TABLE `labs`
  MODIFY `LabsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `StudentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `SubjectID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `StaffID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `FK_Subjects_id` FOREIGN KEY (`Subjects`) REFERENCES `subject` (`SubjectID`);

--
-- Constraints for table `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `fk_Subject_id` FOREIGN KEY (`Subject`) REFERENCES `subject` (`SubjectID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
