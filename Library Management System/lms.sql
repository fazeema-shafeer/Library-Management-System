-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2024 at 03:32 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `bookID` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `price` varchar(10) NOT NULL,
  `publisherYear` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`bookID`, `name`, `publisher`, `price`, `publisherYear`) VALUES
('1', 'computer science', 'nanthan', '500', '2000'),
('2', 'maths', 'mohamed', '800', '2024'),
('4', 'Science for Technology', 'aysha', '1000', '2018'),
('5', 'Bio System Technology', 'fathima', '900', '2015');

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

CREATE TABLE `issue` (
  `bookID` varchar(10) NOT NULL,
  `StudentID` varchar(10) NOT NULL,
  `issueDate` varchar(20) NOT NULL,
  `dueDate` varchar(20) NOT NULL,
  `returnBook` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `issue`
--

INSERT INTO `issue` (`bookID`, `StudentID`, `issueDate`, `dueDate`, `returnBook`) VALUES
('1', '1', '02-08-2024', '09-08-2024', 'Yes'),
('2', '2', '02-08-2024', '09-08-2024', 'No'),
('1', '1', '01-08-2024', '09-08-2024', 'Yes'),
('4', '3', '02-08-2024', '08-08-2024', 'No'),
('5', '5', '04-08-2024', '14-08-2024', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentID` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `fatherName` varchar(100) NOT NULL,
  `courseName` varchar(20) NOT NULL,
  `branchName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentID`, `name`, `fatherName`, `courseName`, `branchName`) VALUES
('1', 'fazeema', 'shafeer', 'B.tech', 'CSE'),
('2', 'fakeeha', 'shaheen', 'B.tech', 'IT'),
('3', 'salma', 'aslam', 'B.tech', 'Mechanical'),
('5', 'zidhan', 'ahmedh', 'B.tech', 'CIVIL');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`bookID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
