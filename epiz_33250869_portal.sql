-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2023 at 06:04 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_33250869_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(12) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `dept` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `pwd`, `dept`) VALUES
(1, 'Ridham Patel', 'ridhampatel2002@gmail.com', '1234', 5);

-- --------------------------------------------------------

--
-- Table structure for table `applied`
--

CREATE TABLE `applied` (
  `srno` int(12) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `schemeid` int(25) NOT NULL,
  `statu` int(12) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `applied`
--

INSERT INTO `applied` (`srno`, `name`, `email`, `schemeid`, `statu`, `date`) VALUES
(1, 'Ridham', 'ridhampatel2002@gmail.com', 1, 1, '2023-02-10'),
(3, 'Ridham', 'ridhampatel2002@gmail.com', 5, 3, '2023-02-10'),
(10, 'Ridham', 'ridhampatel2002@gmail.com', 3, 1, '2023-02-10'),
(11, 'Ridham', 'ridhampatel2002@gmail.com', 2, 1, '2023-02-10'),
(19, 'Ridham', 'ridhampatel2002@gmail.com', 6, 1, '2023-02-10'),
(35, 'Miral', 'chauhanmiral02@gmail.com', 2, 1, '2023-02-11'),
(36, 'Vandan', 'vandanvala14@gmail.com', 1, 1, '2023-02-11'),
(37, 'Yaxita', 'yaxita2003@gmail.com', 5, 1, '2023-02-11'),
(38, 'Govind', 'govind@duck.com', 3, 1, '2023-02-11'),
(39, 'Niraj', 'darjiniraj9422@gmail.com', 7, 1, '2023-02-11'),
(40, 'Jenil', 'jenilkheni19@gmail.com', 5, 1, '2023-02-11'),
(41, 'Gautam', 'rathodgautam7717@gmail.com', 6, 1, '2023-02-11'),
(42, 'Vinay', 'vinaysharma352044@gmail.com\r\n', 3, 1, '2023-02-11'),
(43, 'Dhruvil', 'bhojanidhruvil1234@gmail.com', 1, 1, '2023-02-11'),
(44, 'Shreyash', 'shrey.detroja14@gmail.com', 2, 1, '2023-02-11'),
(45, 'Akanksha', 'ampriyadarshee@gmail.com', 7, 1, '2023-02-11'),
(46, 'Dhrumil', 'ponkiyadhrumil20@gmail.com', 6, 1, '2023-02-11'),
(47, 'Miral', 'chauhanmiral02@gmail.com', 6, 1, '2023-02-11'),
(48, 'Vandan', 'vandanvala14@gmail.com', 2, 1, '2023-02-11'),
(49, 'Yaxita', 'yaxita2003@gmail.com', 3, 1, '2023-02-11'),
(50, 'Govind', 'govind@duck.com', 2, 1, '2023-02-11'),
(51, 'Niraj', 'darjiniraj9422@gmail.com', 1, 1, '2023-02-11'),
(52, 'Jenil', 'jenilkheni19@gmail.com', 2, 1, '2023-02-11'),
(53, 'Gautam', 'rathodgautam7717@gmail.com', 2, 1, '2023-02-11'),
(54, 'Vinay', 'vinaysharma352044@gmail.com', 4, 1, '2023-02-11'),
(55, 'Dhruvil', 'bhojanidhruvil1234@gmail.com', 3, 1, '2023-02-11'),
(56, 'Shreyash', 'shrey.detroja14@gmail.com', 5, 1, '2023-02-11'),
(57, 'Akanksha', 'ampriyadarshee@gmail.com', 1, 1, '2023-02-11'),
(58, 'Dhrumil', 'ponkiyadhrumil20@gmail.com', 4, 1, '2023-02-11');

-- --------------------------------------------------------

--
-- Table structure for table `schemelist`
--

CREATE TABLE `schemelist` (
  `schemeid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schemelist`
--

INSERT INTO `schemelist` (`schemeid`, `name`, `description`, `image`, `link`) VALUES
(1, 'Meal Bill Assistance', 'Rs.1500 per month for 10 months for non-reserved category students studying in graduate level medical, dental, technical, para-medical and studying in government/non-aided hostels who do not have educational system in their own taluk away from their family and study outside...', '1.jpg', 'MBA.html'),
(2, 'Niradhar Vrudh Sahay', 'The Government of Gujarat has been implementing a number of schemes of the State Government to enable the destitute old people, destitute persons with disabilities and destitute persons living in the state to live a dignified life in the society and to help them financially...', '2.jpg', 'NVS.html'),
(3, 'Mukhyamantri Amrutum Yojana', 'After Class-12th only for MBBS, Graduation (even if degree after Diploma is valid) Post Graduate as well as Post Graduation Diploma or equivalent course known by other name for non-reserved category students', '3.jpg', 'MA.html'),
(4, 'Coaching Assistance', '3 years or more for coaching of non-reserved class 12 science stream students for preparation of required entrance examinations in medical, engineering like JEE, GUJCAT, NEET after class 12, students with 70% in class 10 Rs. 20,000/- or actual fee whichever is lower will be eligible...', '4.jpg', 'CAS.html'),
(5, 'MYSY', 'MYSY scholarship, also popularly known as the Mukhyamantri Yuva Swavalamban Yojana, is an initiative by the state government of Gujarat. They offer financial assistance to the economically weaker students domiciled in the Gujarat state for their higher education...', '5.jpg', 'MYSY.html'),
(6, 'Digital Gujarat', 'A Common Services Portal is a vision to provide one-stop solution for all G2C Services for citizens of Gujarat State. As a part of this vision, this Department intended to integrate Home Department, Women & Child Development ,Food, Civil Supplies & Consumer Affairs...', '6.jpg', 'DG.html'),
(7, 'MKSY', 'There is a new crop insurance scheme that has been started to benefit the farmers of\r\nthe state.Mukhyamantri Kisan Sahay Yojana, New Crop Insurance Scheme Farmers of the state have to bear economic losses due to irregularities in rainfall, especially\r\nduring the Kharif season...', '7.jpg', 'MKSY.html'),
(8, 'Ridham', 'This is my ghar ki scheme', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sno` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `aadhar` varchar(255) NOT NULL,
  `income` varchar(255) NOT NULL,
  `cast` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sno`, `fname`, `lname`, `dob`, `email`, `pwd`, `aadhar`, `income`, `cast`, `address`, `phone`, `gender`, `district`, `age`) VALUES
(1, 'Ridham', 'Patel', '2002-05-24', 'ridhampatel2002@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '123456789', '1200000', 'General', 'Modasa, Arvalli', '8320255090', 'M', 'abd', 21),
(11, 'Mira', 'Chauhan', '2002-05-24', 'chauhanmiral02@gmail.com', '9c19b39b816141f2e7d8865f68ec3f5f', '153299141962105', '0', 'OBC', 'Ahmedabad ', '7043942138', 'F', 'surat', 20),
(13, 'Vandan', 'Vala', '2003-12-20', 'vandanvala14@gmail.com', 'a872f8dff04fce27147d9a1ce6b402b4', '173747913498', '50000000', 'General', 'Nxjwjsika', '7203057677', 'M', 'vadodara', 24),
(14, 'Yaxita', 'Amin', '2003-05-17', 'yaxita2003@gmail.com', 'de9102f01f4650bc7a04b31bd5ac07d5', '12345678', '67878', 'SC', 'E/13, Asmakam flat, Phase 1,', '7567855591', 'F', 'rajkot', 23),
(17, 'Govind', 'Gojiya', '2003-01-06', 'govind@duck.com', '81dc9bdb52d04dc20036dbd8313ed055', '1234567890', '0', 'ST', 'MAYURNAGAR , STREET NO. 4 , NEAR BAPA SITARAM TEMPLE ,UDYOGNAGAR,', '9510588517', 'M', 'surat', 21),
(18, 'Niraj ', 'Darji', '2023-02-08', 'darjiniraj9422@gmail.com', 'b0baee9d279d34fa1dfd71aadb908c3f', '11111', '1111', 'OBC', '3790', '7043676714', 'M', 'abd', 25),
(20, 'Jenil', 'kheni', '22-08-02', 'jenilkheni19@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '1234567890', '100000', 'General', 'Surat', '9978625625', 'M', 'rajkot', 22),
(21, 'Gautam', 'Rathod', '11-1-02', 'rathodgautam7717@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '125796423455', '88567', 'General', 'Junagadh', '9638473813', 'M', 'abd', 23),
(22, 'Vinay ', 'Sharma', '22-3-03', 'vinaysharma352044@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '26814932', '93242', 'ST', 'Ahmedabad', '9427352044', 'M', 'rajkot', 19),
(23, 'Dhruvil', 'Bhojani', '12-7-02', 'bhojanidhruvil1234@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '278478329', '229242', 'General', 'Surat', '9662439349', 'M', 'vadodara', 24),
(24, 'Shreyash', 'Detroja', '2-4-02', 'shrey.detroja14@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2183805732', '374392', 'OBC', 'Rajkot', '9586498683', 'M', 'surat', 21),
(25, 'Akanksha', 'Priyadarshee', '5-9-03', 'ampriyadarshee@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '732194739', '372892', 'SC', 'Porbandar', '8980964390', 'F', 'surat', 24),
(26, 'Dhrumil', 'Ponkiya', '12-12-03', 'ponkiyadhrumil20@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '48539857340', '472393', 'General', 'Junagadh', '6353959892', 'M', 'abd', 21);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applied`
--
ALTER TABLE `applied`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `schemelist`
--
ALTER TABLE `schemelist`
  ADD PRIMARY KEY (`schemeid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `applied`
--
ALTER TABLE `applied`
  MODIFY `srno` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `schemelist`
--
ALTER TABLE `schemelist`
  MODIFY `schemeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
