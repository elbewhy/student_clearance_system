-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 27, 2023 at 10:10 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_clearance`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `status` varchar(10) NOT NULL,
  `photo` varchar(300) NOT NULL,
  `dept` varchar(255) NOT NULL,
  `faculty` varchar(255) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `is_general_office` int NOT NULL,
  `clearance_permissions` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `username`, `password`, `fullname`, `email`, `status`, `photo`, `dept`, `faculty`, `category`, `is_general_office`, `clearance_permissions`) VALUES
(1, 'sadmin', 'admin123', 'Saliha Sama\'ila Abubakar', 'saliha1234@gmail.com', 'Active', 'uploads/default.jpg', '', '', 'super_admin', 1, 'super_admin'),
(2, 'hall_admin', 'halladmin', 'ABUBAKAR MANGA', 'abubakarmanga@gmail.com', 'Active', 'uploads/avatar_nick.png', '', '', 'hall_admin', 1, 'hadmin'),
(3, 'dbursar', 'bursaradmin', 'DEPUTY BURSAR', 'deputybursar@gmail.com', 'Active', 'uploads/avatar_nick.png', '', '', 'bursar', 1, 'bursar'),
(4, 'clinic', 'clinicadmin', 'HEAD OF CLINIC', 'headofclinic@gmail.com', 'Active', 'uploads/avatar_nick.png', '', '', 'hoc', 1, 'hoc'),
(5, 'library', 'libraryadmin', 'LIBRARIAN LIBRARIAN', 'ksustalibrarian@gmail.com', 'Active', 'uploads/avatar_nick.png', '', '', 'library', 1, 'library'),
(6, 'sport', 'sportadmin', 'SPORT DIRECTOR', 'sportdirector@gmail.com', 'Active', 'uploads/avatar_nick.png', '', '', 'sport', 1, 'sdirector'),
(7, 'ssa', 'ssaadmin', 'SECRETARY STUDENT AFFAIRS', 'ksustassa@gmail.com', 'Active', 'uploads/avatar_nick.png', '', '', 'ssa', 1, 'ssa'),
(8, 'eng', 'engadmin', 'Dr. ABDULLAHI SB', 'abdullahisb@gmail.com', 'Active', 'uploads/default.jpg', '', 'eng', 'dean', 0, 'dean'),
(9, 'agr', 'agradmin', 'AGRICULTURAL SC.', 'example_email', 'Active', 'uploads/default.jpg', 'agr', 'agr', 'dean', 0, 'agr'),
(10, 'evs', 'evsadmin', 'ENVIRONMENTAL SCIENCE', 'example_email', 'Active', 'uploads/default.jpg', 'department_name', 'evs', 'dean', 0, 'evs'),
(11, 'edusc', 'eduscadmin', 'SCIENCE EDUCATION', 'example_email', 'Active', 'uploads/default.jpg', 'department_name', 'edusc', 'dean', 0, 'edusc'),
(12, 'lsc', 'lscadmin', 'LIFE SCIENCE', 'example_email', 'Active', 'uploads/default.jpg', 'department_name', 'lsc', 'dean', 0, 'lsc'),
(13, 'psc', 'pscadmin', 'PHYSICAL SCIENCE', 'example_email', 'Active', 'uploads/default.jpg', 'department_name', 'psc', 'dean', 0, 'lsc'),
(14, 'cohs', 'cohsadmin', 'COLLEGE OF HEALTH', 'example_email', 'Active', 'uploads/default.jpg', 'department_name', 'cohs', 'dean', 0, 'cohs'),
(15, 'edutech', 'edutechadmin', 'EDUCATION TECH.', 'example_email', 'Active', 'uploads/default.jpg', 'department_name', 'edutech', 'dean', 0, 'edutech'),
(16, 'bagric', 'bagricadmin', 'AGRIC. SC. DEPT.', 'example_email', 'Active', 'uploads/default.jpg', 'bagric', 'agr', 'hod', 0, 'bagric'),
(17, 'fish', 'fishadmin', 'FISHERY DEPT.', 'example_email', 'Active', 'uploads/default.jpg', 'fishery', 'agr', 'hod', 0, 'fish'),
(18, 'forest', 'forestadmin', 'FORESTRY', 'example_email', 'Active', 'uploads/default.jpg', 'forestry', 'agr', 'hod', 0, 'forest'),
(19, 'nsc', 'nscadmin', 'NURSING SCIENCE', 'example_email', 'Active', 'uploads/default.jpg', 'nsc', 'cohs', 'hod', 0, 'nsc'),
(20, 'mbbs', 'mbbsadmin', 'MEDICINE SCIENCE', 'example_email', 'Active', 'uploads/default.jpg', 'mbbs', 'cohs', 'hod', 0, 'mbbs'),
(21, 'eee', 'eeeadmin', 'Dr. ABDULLAHI SB', 'example_email', 'Active', 'uploads/default.jpg', 'eee', 'eng', 'hod', 0, 'eee'),
(22, 'cve', 'cveadmin', 'SANDA SANDA.', 'example_email', 'Active', 'uploads/default.jpg', 'cve', 'eng', 'hod', 0, 'cve'),
(23, 'ict', 'ictadmin', 'Dr. MUHAMMAD SA\'IDU ALIERO', 'example_email', 'Active', 'uploads/default.jpg', 'ict', 'eng', 'hod', 0, 'ict'),
(24, 'mee', 'meeadmin', 'BUHARI IBRAHIM', 'example_email', 'Active', 'uploads/default.jpg', 'mee', 'eng', 'hod', 0, 'mee'),
(25, 'qts', 'qtsadmin', 'QUANTITY SURVEYING', 'example_email', 'Active', 'uploads/default.jpg', 'qts', 'evs', 'hod', 0, 'qts'),
(26, 'arch', 'archadmin', 'ARCHITECHTURE DEPT.', 'example_email', 'Active', 'uploads/default.jpg', 'arch', 'evs', 'hod', 0, 'arch'),
(27, 'btech', 'btechadmin', 'BUILDING DEPT.', 'example_email', 'Active', 'uploads/default.jpg', 'btech', 'evs', 'hod', 0, 'btech'),
(28, 'bio', 'bioadmin', 'BIOLOGY DEPT.', 'example_email', 'Active', 'uploads/default.jpg', 'bio', 'lsc', 'hod', 0, 'bio'),
(29, 'bot', 'botadmin', 'BOOTANY DEPT.', 'example_email', 'Active', 'uploads/default.jpg', 'bot', 'lsc', 'hod', 0, 'bot'),
(30, 'bch', 'bchadmin', 'BIOCHEMISTRY DEPT.', 'example_email', 'Active', 'uploads/default.jpg', 'bch', 'llsc', 'hod', 0, 'bch'),
(31, 'mcb', 'mcbadmin', 'MICOBIOLOGY DEPT.', 'example_email', 'Active', 'uploads/default.jpg', 'mcb', 'lsc', 'hod', 0, 'mcb'),
(32, 'zoo', 'zooadmin', 'ZOOLOGY DEPT.', 'example_email', 'Active', 'uploads/default.jpg', 'zoo', 'lsc', 'hod', 0, 'zoo'),
(33, 'edubio', 'edubioadmin', 'DEDUCATION BIO.', 'example_email', 'Active', 'uploads/default.jpg', 'edubio', 'edusc', 'hod', 0, 'edubio'),
(34, 'educsc', 'educscadmin', 'EDUCATION COM. SC.', 'example_email', 'Active', 'uploads/default.jpg', 'educsc', 'edusc', 'hod', 0, 'educsc'),
(35, 'educhem', 'educhemadmin', 'EDUCATION CHEM.', 'example_email', 'Active', 'uploads/default.jpg', 'educchem', 'edusc', 'hod', 0, 'educchem'),
(36, 'eduphy', 'eduphyadmin', 'EDUCATION PHY.', 'example_email', 'Active', 'uploads/default.jpg', 'eduphy', 'edusc', 'hod', 0, 'eduphy'),
(37, 'edumth', 'edumthadmin', 'EDUCATION MATH.', 'example_email', 'Active', 'uploads/default.jpg', 'edumth', 'edusc', 'hod', 0, 'edumth'),
(38, 'csc', 'cscadmin', 'COMPUTER. SC.', 'example_email', 'Active', 'uploads/default.jpg', 'csc', 'psc', 'hod', 0, 'csc'),
(39, 'pachem', 'pachemadmin', 'PURE AND APPLIED CHEM.', 'example_email', 'Active', 'uploads/default.jpg', 'pachem', 'psc', 'hod', 0, 'pachem'),
(40, 'phy', 'phyadmin', 'PHYSICS DEPT.', 'example_email', 'Active', 'uploads/default.jpg', 'phy', 'psc', 'hod', 0, 'phy'),
(41, 'stamth', 'stamthadmin', 'MATH. AND STA.', 'example_email', 'Active', 'uploads/default.jpg', 'stamth', 'psc', 'hod', 0, 'stamth');

-- --------------------------------------------------------

--
-- Table structure for table `dean`
--

DROP TABLE IF EXISTS `dean`;
CREATE TABLE IF NOT EXISTS `dean` (
  `id` int NOT NULL AUTO_INCREMENT,
  `admin_id` int DEFAULT NULL,
  `faculty` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_id` (`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fee`
--

DROP TABLE IF EXISTS `fee`;
CREATE TABLE IF NOT EXISTS `fee` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `session` varchar(9) NOT NULL,
  `faculty` varchar(40) NOT NULL,
  `dept` varchar(40) NOT NULL,
  `amount` varchar(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `fee`
--

INSERT INTO `fee` (`ID`, `session`, `faculty`, `dept`, `amount`) VALUES
(14, '2020/2021', 'Science', 'Computer Science', '100000');

-- --------------------------------------------------------

--
-- Table structure for table `hod`
--

DROP TABLE IF EXISTS `hod`;
CREATE TABLE IF NOT EXISTS `hod` (
  `id` int NOT NULL AUTO_INCREMENT,
  `admin_id` int DEFAULT NULL,
  `dept` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_id` (`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `feeID` varchar(25) NOT NULL,
  `studentID` varchar(25) NOT NULL,
  `amount` varchar(25) NOT NULL,
  `datepaid` varchar(25) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`ID`, `feeID`, `studentID`, `amount`, `datepaid`) VALUES
(24, '8FAC46R2579D', '8', '20000', '2022-08-17 13:24:57'),
(25, 'DEAR92C6734B', '8', '80000', '2022-08-17 13:25:09');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `fullname` varchar(50) NOT NULL,
  `matric_no` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `session` varchar(10) NOT NULL,
  `faculty` varchar(30) NOT NULL,
  `dept` varchar(44) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `photo` varchar(400) NOT NULL,
  `is_department_approved` int NOT NULL,
  `is_faculty_approved` int NOT NULL,
  `is_clinic_approved` int NOT NULL,
  `is_hostel_approved` int NOT NULL,
  `is_sport_approved` int NOT NULL,
  `is_example_approved` int NOT NULL,
  `is_dbursar_saffairs_approved` int NOT NULL,
  `is_stud_affairs_approved` int NOT NULL,
  `admin_id` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`ID`, `fullname`, `matric_no`, `password`, `session`, `faculty`, `dept`, `phone`, `photo`, `is_department_approved`, `is_faculty_approved`, `is_clinic_approved`, `is_hostel_approved`, `is_sport_approved`, `is_example_approved`, `is_dbursar_saffairs_approved`, `is_stud_affairs_approved`, `admin_id`) VALUES
(1, 'Abubakar Ruwa', '1710340019', '1710340019', '2021/2022', 'eng', 'ICT', '07062255636', 'uploads/311817672_5598376663612211_254594136102698223_n.jpg', 0, 0, 1, 1, 1, 1, 1, 1, 0),
(2, 'Abubakar Bello', '1710340006', '1710340006', '2021/2022', 'eng', 'ICT', '07084643408', 'uploads/avatar_nick.png', 0, 0, 1, 1, 1, 1, 1, 1, 0),
(3, 'Ahmad Aliyu', '1710340001', '1710340001', '2022/2023', 'eng', 'ICT', '08136563372', 'uploads/avatar_nick.png', 0, 0, 1, 1, 1, 1, 1, 0, 0),
(4, 'Abdulhadi Hassan', '1710340025', '1710340025', '2022/2023', 'eng', 'ICT', '0806920096', 'uploads/Screenshot 2023-07-14 120855.png', 0, 0, 1, 1, 1, 1, 1, 1, 0),
(5, 'Ibrahim Murtala Sani', '1710310032', '1710310032', '2022/2023', 'eng', 'EEE', '08164014941', 'uploads/avatar_nick.png', 0, 0, 1, 1, 1, 1, 1, 1, 0),
(6, 'Qa\'im Haruna Muhammad', '1710330011', '1710330011', '2022/2023', 'eng', 'mee', '08167224509', 'uploads/avatar_nick.png', 0, 0, 1, 1, 1, 1, 1, 0, 0),
(7, 'Saliha Sama\'ila Abubakar', '1710340012', '1710340012', '2022/2023', 'eng', 'ict', '09065714512', 'uploads/avatar_nick.png', 0, 0, 1, 0, 1, 1, 0, 0, 0),
(8, 'YAKUBU ABUBAKAR', '1710340007', '1710340007', '2022/2023', 'eng', 'ict', '07062123211', 'uploads/avatar_nick.png', 0, 0, 0, 0, 0, 1, 0, 0, 0),
(9, 'Nusaiba Yakubu Ikoh', '1710340011', '1710340011', '2022/2023', 'eng', 'ict', '0806920096', 'uploads/avatar_nick.png', 0, 0, 0, 0, 0, 1, 0, 0, 0),
(10, 'Umar Abdulbasit', '1820304004', '1820304004', '2022/2023', 'eng', 'ict', '08134266762', 'uploads/avatar_nick.png', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 'Abakar yakubu', '1710340015', '1710340015', '2022/2023', 'eng', 'ict', '09156207400', 'uploads/avatar_nick.png', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 'Abakar yakubu', '1710340018', '1710340018', '2022/2023', 'Select faculty', 'Select Department', '09156207400', 'uploads/avatar_nick.png', 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblsession`
--

DROP TABLE IF EXISTS `tblsession`;
CREATE TABLE IF NOT EXISTS `tblsession` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `session` varchar(9) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tblsession`
--

INSERT INTO `tblsession` (`ID`, `session`) VALUES
(1, '2022/2023'),
(2, '2023/2024');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
