-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2024 at 05:47 PM
-- Server version: 8.0.35
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_dbms`
--

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Aadhar_ID` int NOT NULL,
  `Firstname` varchar(40) NOT NULL,
  `Surname` varchar(40) NOT NULL,
  `Father` varchar(40) NOT NULL,
  `DOB` date NOT NULL,
  `STD` int NOT NULL,
  `Phoneno` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Pr` float NOT NULL,
  `Gender` enum('m','f','o') NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Stream` enum('A','B') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Aadhar_ID`, `Firstname`, `Surname`, `Father`, `DOB`, `STD`, `Phoneno`, `Pr`, `Gender`, `Email`, `Stream`) VALUES
(1, 'Nishant', 'Patel', 'Jayeshbhai', '2005-03-29', 12, '8320095397', 99.98, 'm', 'nishantpatel197322@gmail.com', 'A'),
(2, 'kalpesh', 'Kumavat', 'maheshbhai', '2005-02-18', 11, '9426179392', 99.97, 'm', 'kalpeshkumavat123@gmail.com', 'B'),
(3, 'rahul', 'tannna', 'kamleshbhai', '2004-08-18', 11, '9426179311', 99.9, 'm', 'rahultanna123@gmail.com', 'B'),
(4, 'harsh', 'hirani', 'rajeshbhai', '2004-11-04', 12, '9426171234', 99.96, 'm', 'harshhirani423@gmail.com', 'A'),
(5, 'darshan', 'patel', 'hiteshbhai', '2004-12-04', 11, '9426171256', 99.95, 'm', 'darshanpatel423@gmail.com', 'B'),
(6, 'nishit', 'kapadia', 'hemantbhai', '2004-12-04', 12, '1426171251', 99.97, 'm', 'nishitkapadia423@gmail.com', 'A'),
(7, 'alia', 'bhatt', 'maheshbhai', '2003-02-12', 12, '1234567868', 90, 'f', 'alia@gmail.com', 'B'),
(12, 'akshay', 'patel', 'subhashbhai', '2003-02-12', 11, '1233211231', 90, 'm', 'akshay@gmail.com', 'A'),
(32, 'Neha', 'sharma', 'hemantbhai', '2003-05-12', 11, '123443211', 94, 'f', 'neha@gmail.com', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `Subject_Id` int NOT NULL,
  `Name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`Subject_Id`, `Name`) VALUES
(1, 'Physics'),
(2, 'Chemistry'),
(3, 'Maths'),
(4, 'Biology'),
(5, 'Computer'),
(6, 'Sanskrit');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `ID` int NOT NULL,
  `Firstname` varchar(40) NOT NULL,
  `Surname` varchar(40) NOT NULL,
  `FatherName` varchar(40) NOT NULL,
  `Subject` varchar(40) NOT NULL,
  `Experience` int NOT NULL,
  `Subject_Id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`ID`, `Firstname`, `Surname`, `FatherName`, `Subject`, `Experience`, `Subject_Id`) VALUES
(1, 'Amitva', 'Chaudhary', 'Mukeshbhai', 'Physics', 20, 1),
(2, 'Ajay', 'Chauhan', 'sureshbhai', 'Maths', 5, 3),
(3, 'Satish', 'Agrawal', 'Hemantbhai', 'Chemistry', 11, 2),
(4, 'Mohit', 'Yodha', 'Ashokkumar', 'Biology', 7, 4),
(5, 'Dr.Rajesh', 'Patel', 'Mohitkumar', 'Chemistry', 25, 2),
(6, 'Pratik', 'Pandya', 'Umeshbhai', 'Maths', 25, 3),
(7, 'Alpesh', 'Modi', 'Rameshbhai', 'computer', 4, 5),
(8, 'Alpesh', 'Shah', 'Manilal', 'Physics', 9, 1),
(9, 'Harish', 'Hirani', 'Jamshedbhai', 'Sanskrit', 14, 6),
(10, 'Ravi', 'Kotadia', 'Sureshbhai', 'Biology', 4, 4),
(11, 'Satyendra', 'Jain', 'Rinkankumar', 'Biology', 6, 4),
(12, 'Chintan', 'Vaghela', 'Mukeshbhai', 'Chemistry', 8, 2),
(13, 'Aditya', 'Shastri', 'Ishankumar', 'Maths', 17, 3),
(14, 'Aditya', 'Patel', 'Rakeshbhai', 'computer', 18, 5),
(15, 'Nitin', 'Thakkar', 'Amitbhai', 'computer', 3, 5),
(16, 'Mohit', 'Chaudhary', 'Ashokkumar', 'Sanskrit', 8, 6),
(17, 'Ravi', 'Kishan', 'Heminbhai', 'Biology', 21, 4),
(18, 'Navin', 'Chauhan', 'sureshbhai', 'Physics', 26, 1),
(19, 'Akash', 'Upadhyay', 'hareshkumar', 'Chemistry', 13, 2),
(20, 'Vipul', 'Hirani', 'Mukeshbhai', 'Biology', 7, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Aadhar_ID`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`Subject_Id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
