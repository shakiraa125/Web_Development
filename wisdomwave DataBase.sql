-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2024 at 10:38 PM
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
-- Database: `wisdomwave`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `emailid` varchar(30) NOT NULL,
  `phoneno` int(10) NOT NULL,
  `home` varchar(50) NOT NULL,
  `street` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `pincode` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `name`, `emailid`, `phoneno`, `home`, `street`, `district`, `city`, `state`, `country`, `pincode`) VALUES
(22, 'shakira ym', 'nnn@gmail.com', 2147483647, 'Bapaliponam House', 'Bapaliponam', 'kasargod', 'Badiyaduka', 'AP', 'India', 671551),
(23, 'shakira ym', 'shaki@gmail.com', 2147483647, 'Bapaliponam House', 'Bapaliponam', 'kasargod', 'RD nagar', 'AP', 'India', 671124),
(24, 'shahina BATHUL', 'shahina@gmail.com', 2147483647, 'Bapaliponam House', 'Bapaliponam', 'kasargod', 'Badiyaduka', 'AP', 'India', 671551),
(25, 'shakira ym', 'shaki@gmail.com', 2147483647, 'Bapaliponam House', 'Bapaliponam', 'kasargod', 'RD nagar', 'AP', 'India', 671124),
(26, 'shakira ym', 'shaki@gmail.com', 2147483647, 'Bapaliponam House', 'chettumkuzhi', 'kasargod', 'RD nagar', 'AP', 'India', 671124),
(27, 'shakira ym', 'zzz@Gmail.com', 2147483647, 'Bapaliponam House', 'Bapaliponam', 'kasargod', 'Badiyaduka', 'AP', 'India', 671551),
(28, 'adhila t', 'cat@Gmail.com', 0, 'baithul fathima', 'mm', 'kerala', 'kasaragod', 'Kerala', 'India', 671124);

-- --------------------------------------------------------

--
-- Table structure for table `bookdetails`
--

CREATE TABLE `bookdetails` (
  `bookno` bigint(11) NOT NULL,
  `booktitle` varchar(20) NOT NULL,
  `class` varchar(11) NOT NULL,
  `price` varchar(50) NOT NULL,
  `syllabus` varchar(20) NOT NULL,
  `bookpics` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `bookdetails`
--

INSERT INTO `bookdetails` (`bookno`, `booktitle`, `class`, `price`, `syllabus`, `bookpics`, `status`, `quantity`) VALUES
(39, 'physics', '8', '50', 'kerala', 'k8physics.png', '', 7),
(40, 'Englis', '5', '75', 'kerala', 'english.png', '', 4),
(41, 'SAMSKRITH', '8', '34', 'kerala', 'samskrith.png', '', 7),
(44, 'PATHUMMAYUDE AAD', '1', '120', 'Libraries', 'pathummayude_aad.png', '', 5),
(45, 'C++', '.', '70', 'Libraries', 'c++.jpeg', '', 5),
(46, 'BIOLOGY', '10th', '68', 'kerala', 'biology.jpg', '', 7),
(47, 'RAM C/O ANANDHI', '.', '200', 'Libraries', 'ramAnandhi.jpeg', '', 7),
(48, 'SOCIAL', '8th', '70', 'kerala', 'social.jpeg', '', 3),
(49, 'MALAYALAM', '8', '55', 'kerala', 'Malayalam.jpeg', '', 5),
(50, 'SOCIAL', '10th', '90', 'kerala', 'social.jpeg', '', 2),
(51, 'ENGLISH', '7th', '70', 'kerala', 'english.png', '', 3),
(52, 'ENGLISH', '8th', '90', 'CBSE', 'english.png', '', 5),
(53, 'SOCIAL', '9th', '70', 'ICSE', 'social.jpeg', '', 4),
(54, 'ENGLIS', '9th', '80', 'ICSE', 'english.png', '', 7),
(55, 'BIOLOGY', '6th', '70', 'CBSE', 'social.jpeg', '', 4),
(56, 'MASTERPIES', '.', '70', 'Libraries', 'masterpies.jpeg', '', 2),
(57, 'MISTRY', '8th', '100', 'Libraries', 'mistry.jpeg', '', 7),
(58, 'ADU JEEVITHAM', 'BENYAMIN', '70', 'Libraries', 'aadujeevitham.jpeg', '', 2),
(59, 'ARABIC', '9', '67', 'ICSE', 'arabicc.png', '', 4),
(60, 'physics', '5', '67', 'kerala', 'k8physics.png', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `bookid` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `bookid`, `email`, `quantity`, `date`, `status`) VALUES
(184, 39, 'nnn@gmail.com', 1, '0000-00-00', 'out'),
(185, 39, 'nnn@gmail.com', 1, '0000-00-00', 'out'),
(186, 41, 'nnn@gmail.com', 1, '0000-00-00', 'out'),
(187, 39, 'nnn@gmail.com', 1, '0000-00-00', 'out'),
(188, 39, 'nnn@gmail.com', 1, '0000-00-00', 'out'),
(189, 41, 'nnn@gmail.com', 1, '0000-00-00', 'out'),
(190, 41, 'nnn@gmail.com', 1, '0000-00-00', 'out'),
(191, 40, 'nnn@gmail.com', 1, '0000-00-00', 'out'),
(192, 39, 'nnn@gmail.com', 6, '0000-00-00', 'out'),
(194, 39, 'nnn@gmail.com', 1, '0000-00-00', 'out'),
(195, 39, 'nnn@gmail.com', 4, '0000-00-00', 'out'),
(201, 40, 'shaki@gmail.com', 1, '0000-00-00', 'out'),
(203, 49, 'shaki@gmail.com', 1, '0000-00-00', 'out'),
(204, 48, 'shaki@gmail.com', 1, '0000-00-00', 'out'),
(205, 41, 'shaki@gmail.com', 1, '0000-00-00', 'out'),
(209, 39, 'shaki@gmail.com', 7, '0000-00-00', 'out'),
(213, 39, 'shaki@gmail.com', 6, '0000-00-00', 'out'),
(214, 49, 'shaki@gmail.com', 1, '0000-00-00', 'out'),
(215, 51, 'shaki@gmail.com', 5, '0000-00-00', 'out'),
(216, 46, 'shaki@gmail.com', 3, '0000-00-00', 'out'),
(217, 41, 'shaki@gmail.com', 3, '0000-00-00', 'out'),
(218, 39, 'shaki@gmail.com', 2, '0000-00-00', 'out'),
(219, 46, 'shaki@gmail.com', 1, '0000-00-00', 'out'),
(220, 48, 'shaki@gmail.com', 2, '0000-00-00', 'out'),
(221, 39, 'shaki@gmail.com', 4, '0000-00-00', 'out'),
(222, 41, 'shaki@gmail.com', 1, '0000-00-00', 'out'),
(223, 40, 'shaki@gmail.com', 2, '0000-00-00', 'out'),
(224, 40, 'shaki@gmail.com', 1, '0000-00-00', 'out'),
(225, 39, 'shaki@gmail.com', 2, '0000-00-00', 'out'),
(226, 50, 'shaki@gmail.com', 2, '0000-00-00', 'out'),
(227, 40, 'shahina@gmail.com', 4, '0000-00-00', 'out'),
(228, 39, 'shahina@gmail.com', 1, '0000-00-00', 'out'),
(229, 41, 'shahina@gmail.com', 1, '0000-00-00', 'out'),
(230, 46, 'shahina@gmail.com', 2, '0000-00-00', 'out'),
(231, 39, 'shaki@gmail.com', 5, '0000-00-00', 'out'),
(232, 49, 'shaki@gmail.com', 5, '0000-00-00', 'out'),
(233, 52, 'shaki@gmail.com', 3, '0000-00-00', 'out'),
(234, 39, 'shaki@gmail.com', 1, '0000-00-00', 'out'),
(236, 41, 'zzz@Gmail.com', 4, '0000-00-00', 'out'),
(237, 39, 'cat@Gmail.com', 1, '0000-00-00', 'out'),
(238, 39, 'shakirashakijsnz@gmail.com', 1, '0000-00-00', 'out'),
(239, 39, 'shakirashakijsnz@gmail.com', 1, '0000-00-00', 'out'),
(240, 39, 'shakirashakijsnz@gmail.com', 1, '0000-00-00', 'out'),
(241, 39, 'shakirashakijsnz@gmail.com', 1, '0000-00-00', 'out'),
(242, 39, 'shakirashakijsnz@gmail.com', 2, '0000-00-00', 'out'),
(243, 39, 'shakirashakijsnz@gmail.com', 1, '0000-00-00', 'out'),
(244, 39, 'shakirashakijsnz@gmail.com', 1, '0000-00-00', 'out');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `adminEmail` varchar(30) DEFAULT NULL,
  `adminPassword` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`adminEmail`, `adminPassword`) VALUES
('shakirashakijsnz@gmail.com', 'shakiraqwe'),
('adila@gmail.com', 'adilaqwe'),
('hafsi@gmail.com', 'hafsiqwe'),
('mehza@gmail.com', 'mehzaqwe');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_details_id` int(100) NOT NULL,
  `order_master_id` int(100) NOT NULL,
  `product_id` int(200) NOT NULL,
  `quantity` int(100) NOT NULL,
  `seller_email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_details_id`, `order_master_id`, `product_id`, `quantity`, `seller_email`) VALUES
(547, 224, 41, 1, 'shaki@gmail.com'),
(548, 224, 41, 3, 'shaki@gmail.com'),
(549, 224, 39, 7, 'shaki@gmail.com'),
(550, 224, 39, 6, 'shaki@gmail.com'),
(551, 224, 39, 2, 'shaki@gmail.com'),
(552, 224, 46, 3, 'shaki@gmail.com'),
(553, 224, 46, 1, 'shaki@gmail.com'),
(554, 224, 48, 1, 'shaki@gmail.com'),
(555, 224, 48, 2, 'shaki@gmail.com'),
(556, 225, 39, 7, 'shaki@gmail.com'),
(557, 225, 39, 6, 'shaki@gmail.com'),
(558, 225, 39, 2, 'shaki@gmail.com'),
(559, 225, 39, 4, 'shaki@gmail.com'),
(560, 226, 41, 1, 'shaki@gmail.com'),
(561, 226, 41, 3, 'shaki@gmail.com'),
(562, 226, 41, 1, 'shaki@gmail.com'),
(563, 237, 39, 7, 'shaki@gmail.com'),
(564, 237, 39, 6, 'shaki@gmail.com'),
(565, 237, 39, 2, 'shaki@gmail.com'),
(566, 237, 39, 4, 'shaki@gmail.com'),
(567, 237, 39, 2, 'shaki@gmail.com'),
(568, 238, 50, 2, 'shaki@gmail.com'),
(569, 239, 40, 4, 'shahina@gmail.com'),
(570, 240, 39, 1, 'shahina@gmail.com'),
(571, 240, 41, 1, 'shahina@gmail.com'),
(572, 240, 46, 2, 'shahina@gmail.com'),
(573, 241, 39, 7, 'shaki@gmail.com'),
(574, 241, 39, 6, 'shaki@gmail.com'),
(575, 241, 39, 2, 'shaki@gmail.com'),
(576, 241, 39, 4, 'shaki@gmail.com'),
(577, 241, 39, 2, 'shaki@gmail.com'),
(578, 241, 39, 5, 'shaki@gmail.com'),
(579, 241, 49, 1, 'shaki@gmail.com'),
(580, 241, 49, 1, 'shaki@gmail.com'),
(581, 241, 49, 5, 'shaki@gmail.com'),
(582, 241, 52, 3, 'shaki@gmail.com'),
(583, 242, 39, 7, 'shaki@gmail.com'),
(584, 242, 39, 6, 'shaki@gmail.com'),
(585, 242, 39, 2, 'shaki@gmail.com'),
(586, 242, 39, 4, 'shaki@gmail.com'),
(587, 242, 39, 2, 'shaki@gmail.com'),
(588, 242, 39, 5, 'shaki@gmail.com'),
(589, 242, 39, 1, 'shaki@gmail.com'),
(590, 243, 41, 4, 'zzz@Gmail.com'),
(591, 244, 39, 1, 'cat@Gmail.com'),
(592, 245, 39, 1, 'shakirashakijsnz@gmail.com'),
(593, 245, 39, 1, 'shakirashakijsnz@gmail.com'),
(594, 245, 39, 1, 'shakirashakijsnz@gmail.com'),
(595, 245, 39, 1, 'shakirashakijsnz@gmail.com'),
(596, 245, 39, 2, 'shakirashakijsnz@gmail.com'),
(597, 245, 39, 1, 'shakirashakijsnz@gmail.com'),
(598, 245, 39, 1, 'shakirashakijsnz@gmail.com'),
(599, 245, 39, 1, 'shakirashakijsnz@gmail.com'),
(600, 245, 39, 1, 'shakirashakijsnz@gmail.com'),
(601, 245, 39, 2, 'shakirashakijsnz@gmail.com'),
(602, 245, 39, 1, 'shakirashakijsnz@gmail.com'),
(603, 245, 39, 1, 'shakirashakijsnz@gmail.com'),
(604, 245, 39, 1, 'shakirashakijsnz@gmail.com'),
(605, 245, 39, 1, 'shakirashakijsnz@gmail.com'),
(606, 245, 39, 2, 'shakirashakijsnz@gmail.com'),
(607, 245, 39, 1, 'shakirashakijsnz@gmail.com'),
(608, 245, 39, 1, 'shakirashakijsnz@gmail.com'),
(609, 245, 39, 1, 'shakirashakijsnz@gmail.com'),
(610, 245, 39, 1, 'shakirashakijsnz@gmail.com'),
(611, 245, 39, 2, 'shakirashakijsnz@gmail.com'),
(612, 245, 39, 1, 'shakirashakijsnz@gmail.com'),
(613, 245, 39, 1, 'shakirashakijsnz@gmail.com'),
(614, 245, 39, 1, 'shakirashakijsnz@gmail.com'),
(615, 245, 39, 1, 'shakirashakijsnz@gmail.com'),
(616, 245, 39, 2, 'shakirashakijsnz@gmail.com'),
(617, 246, 39, 1, 'shakirashakijsnz@gmail.com'),
(618, 246, 39, 1, 'shakirashakijsnz@gmail.com'),
(619, 246, 39, 1, 'shakirashakijsnz@gmail.com'),
(620, 246, 39, 1, 'shakirashakijsnz@gmail.com'),
(621, 246, 39, 2, 'shakirashakijsnz@gmail.com'),
(622, 246, 39, 1, 'shakirashakijsnz@gmail.com'),
(623, 246, 39, 1, 'shakirashakijsnz@gmail.com'),
(624, 246, 39, 1, 'shakirashakijsnz@gmail.com'),
(625, 246, 39, 1, 'shakirashakijsnz@gmail.com'),
(626, 246, 39, 1, 'shakirashakijsnz@gmail.com'),
(627, 246, 39, 1, 'shakirashakijsnz@gmail.com'),
(628, 246, 39, 2, 'shakirashakijsnz@gmail.com'),
(629, 246, 39, 1, 'shakirashakijsnz@gmail.com'),
(630, 246, 39, 1, 'shakirashakijsnz@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `order_master`
--

CREATE TABLE `order_master` (
  `order_master_id` int(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `date` varchar(20) NOT NULL,
  `pay_mode` varchar(100) NOT NULL,
  `admin_status` varchar(100) NOT NULL DEFAULT 'ordered',
  `total_amount` int(40) NOT NULL,
  `delivery_status` varchar(100) NOT NULL DEFAULT 'ordered'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_master`
--

INSERT INTO `order_master` (`order_master_id`, `email`, `date`, `pay_mode`, `admin_status`, `total_amount`, `delivery_status`) VALUES
(224, 'shaki@gmail.com', '2024-03-02 22:06:03', 'bank', 'ordered', 410, 'shipped'),
(225, 'shaki@gmail.com', '2024-03-02 22:11:52', 'bank', 'ordered', 200, 'shipped'),
(226, 'shaki@gmail.com', '2024-03-02 22:21:03', 'bank', 'ordered', 34, 'outofdelivery'),
(227, 'shaki@gmail.com', '2024-03-02 22:22:31', 'bank', 'ordered', 150, 'outofdelivery'),
(228, 'shaki@gmail.com', '2024-03-02 22:22:37', 'bank', 'ordered', 150, 'delivered'),
(229, 'shaki@gmail.com', '2024-03-02 22:23:57', 'bank', 'ordered', 150, 'pending'),
(230, 'shaki@gmail.com', '2024-03-02 22:24:02', 'bank', 'ordered', 150, 'pending'),
(231, 'shaki@gmail.com', '2024-03-02 22:24:50', 'bank', 'ordered', 150, 'pending'),
(232, 'shaki@gmail.com', '2024-03-02 22:24:56', 'bank', 'ordered', 150, 'pending'),
(233, 'shaki@gmail.com', '2024-03-02 22:25:36', 'bank', 'ordered', 75, 'pending'),
(234, 'shaki@gmail.com', '2024-03-02 22:25:52', 'bank', 'ordered', 75, 'pending'),
(235, 'shaki@gmail.com', '2024-03-02 22:25:59', 'bank', 'ordered', 75, 'outofdelivery'),
(236, 'shaki@gmail.com', '2024-03-02 22:26:52', 'bank', 'ordered', 75, 'pending'),
(237, 'shaki@gmail.com', '2024-03-02 22:27:22', 'bank', 'ordered', 100, 'pending'),
(238, 'shaki@gmail.com', '2024-03-02 22:28:02', 'bank', 'ordered', 180, 'pending'),
(239, 'shahina@gmail.com', '2024-03-02 22:35:07', 'bank', 'ordered', 300, 'pending'),
(240, 'shahina@gmail.com', '2024-03-02 22:35:35', 'bank', 'ordered', 220, 'pending'),
(241, 'shaki@gmail.com', '2024-03-03 00:49:03', 'bank', 'ordered', 375, 'pending'),
(242, 'shaki@gmail.com', '2024-03-03 18:17:36', 'cod', 'ordered', 50, 'pending'),
(243, 'zzz@Gmail.com', '2024-03-03 18:26:22', 'cod', 'ordered', 34, 'pending'),
(244, 'cat@Gmail.com', '2024-03-03 18:49:20', 'cod', 'ordered', 50, 'pending'),
(245, 'shakirashakijsnz@gmail.com', '2024-03-03 19:12:56', 'cod', 'ordered', 250, 'pending'),
(246, 'shakirashakijsnz@gmail.com', '2024-03-03 19:14:08', 'bank', 'ordered', 100, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `regid` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `userEmail` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`regid`, `name`, `userEmail`) VALUES
(5, 'mmm', 'mmm@mail.com'),
(6, 'kkk', 'kkk@mail.com'),
(7, 'lll', 'lll@mail.com'),
(9, 'ddd', 'ddd@gmail.com'),
(10, 'hashir ym', 'adi@gmail.com'),
(11, 'hafseena', 'hafsi@gmail.com'),
(13, 'shakira', 'shakirashakijsnz@gmail.com'),
(14, 'aysha', 'aysha@gmail.com'),
(15, 'pathu', 'pathu@gmail.com'),
(16, 'shaki', 'nnn@gmail.com'),
(17, 'mesa', 'mesa@gmail.com'),
(18, 'affam', 'i@gmail.com'),
(19, 'hashir', 'sssa@gmail.com'),
(20, 'shahala', 'shahala@gmail.com'),
(21, 'sabira', 'sabira@gmail.com'),
(22, 'shahina', 'shahina@gmail.com'),
(23, 'dhsd', 'sss@gmail.com'),
(24, 'shakiraaa', 'zzz@Gmail.com'),
(25, 'adhila adhi', 'cat@Gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `sellerrequest`
--

CREATE TABLE `sellerrequest` (
  `bookno` varchar(1000) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mobno` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `booktitle` varchar(30) NOT NULL,
  `syllabus` varchar(20) NOT NULL,
  `class` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `bookpics` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sellerrequest`
--

INSERT INTO `sellerrequest` (`bookno`, `name`, `mobno`, `email`, `booktitle`, `syllabus`, `class`, `price`, `status`, `bookpics`) VALUES
('S1', 'shakira', 0, 'shaki@gmail.com', 'social', 'CBSE', 10, 34, 'approved', 'social.jpeg'),
('S2', 'hafseena', 0, 'shaki@gmail.com', 'Biology', 'kerala', 10, 75, 'approved', 'biology.jpg'),
('S3', 'shakira', 0, 'shaki@gmail.com', 'chemistry', 'kerala', 10, 34, 'approved', 'Malayalam.jpeg'),
('S4', 'shakira', 2147483647, 'shaki@gmail.com', 'biology', 'ICSE', 10, 75, 'approved', 'english.png'),
('S5', 'hafseena', 2147483647, 'shaki@gmail.com', 'arabic', 'kerala', 5, 70, 'approved', 'arabicc.png'),
('S6', 'Adhila', 2147483647, 'shaki@gmail.com', 'Samskrith', 'CBSE', 5, 34, 'approved', 'samskrith.png'),
('S7', 'shahala', 2147483647, 'shaki@gmail.com', 'English', 'ICSE', 10, 75, 'approved', 'english.png'),
('S8', 'shakira', 2147483647, 'zzz@Gmail.com', 'biology', 'kerala', 5, 67, 'pending', 'biology.jpg'),
('S9', 'Adhila', 2147483647, 'cat@Gmail.com', 'malayalam', 'CBSE', 5, 75, 'pending', 'Malayalam.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `sendbookdetails`
--

CREATE TABLE `sendbookdetails` (
  `id` int(11) NOT NULL,
  `bookno` varchar(11) NOT NULL,
  `courier` varchar(40) NOT NULL,
  `status` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sendbookdetails`
--

INSERT INTO `sendbookdetails` (`id`, `bookno`, `courier`, `status`) VALUES
(15, '0', '', 'pending'),
(16, '0', '', 'pending'),
(17, 'S5', 'COD', 'pending'),
(18, 'S6', 'COD', 'Recieved'),
(19, 'S8', 'COD', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `stock_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `in_stock` int(11) NOT NULL DEFAULT 0,
  `out_stock` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stock_id`, `product_id`, `in_stock`, `out_stock`) VALUES
(84, 39, 7, 0),
(85, 40, 4, 0),
(86, 41, 7, 0),
(87, 42, 7, 0),
(88, 43, 4, 0),
(89, 44, 5, 0),
(90, 45, 5, 0),
(91, 46, 7, 0),
(92, 47, 7, 0),
(93, 48, 3, 0),
(94, 49, 5, 0),
(95, 50, 2, 0),
(96, 51, 3, 0),
(97, 52, 5, 0),
(98, 53, 4, 0),
(99, 54, 7, 0),
(100, 55, 4, 0),
(101, 56, 2, 0),
(102, 57, 7, 0),
(103, 58, 2, 0),
(104, 39, 0, 1),
(105, 39, 0, 1),
(106, 41, 0, 1),
(107, 39, 0, 1),
(108, 39, 0, 1),
(109, 41, 0, 1),
(110, 41, 0, 1),
(111, 40, 0, 1),
(112, 39, 0, 6),
(113, 39, 0, 1),
(114, 39, 0, 4),
(115, 40, 0, 1),
(116, 49, 0, 1),
(117, 48, 0, 1),
(118, 41, 0, 1),
(119, 39, 0, 7),
(120, 39, 0, 6),
(121, 49, 0, 1),
(122, 51, 0, 5),
(123, 46, 0, 3),
(124, 41, 0, 3),
(125, 39, 0, 2),
(126, 46, 0, 1),
(127, 48, 0, 2),
(128, 39, 0, 4),
(129, 41, 0, 1),
(130, 39, 0, 2),
(131, 50, 0, 2),
(132, 40, 0, 4),
(133, 39, 0, 1),
(134, 41, 0, 1),
(135, 46, 0, 2),
(136, 39, 0, 5),
(137, 49, 0, 5),
(138, 52, 0, 3),
(139, 59, 4, 0),
(140, 39, 0, 1),
(141, 41, 0, 4),
(142, 39, 0, 1),
(143, 39, 0, 2),
(144, 39, 0, 2),
(145, 39, 0, 2),
(146, 39, 0, 2),
(147, 39, 0, 2),
(148, 39, 0, 1),
(149, 39, 0, 1),
(150, 60, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE `userlogin` (
  `userid` int(11) DEFAULT NULL,
  `userEmail` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `userlogin`
--

INSERT INTO `userlogin` (`userid`, `userEmail`, `password`, `type`) VALUES
(NULL, 'adi@gmail.com', 'adi', ''),
(NULL, 'aysha@gmail.com', 'aysha', ''),
(NULL, 'cat@Gmail.com', 'cat', ''),
(NULL, 'i@gmail.com', 'affam', ''),
(NULL, 'mesa@gmail.com', 'mesa', ''),
(NULL, 'nnn@gmail.com', 'sss', ''),
(NULL, 'pathu@gmail.com', 'pathu', ''),
(NULL, 'sabira@gmail.com', '123', ''),
(NULL, 'shahala@gmail.com', '123', ''),
(NULL, 'shahina@gmail.com', '134', ''),
(1, 'shaki@gmail.com', 'sss', 'buyer'),
(NULL, 'shakirashakijsnz@gmail.com', 'sss', ''),
(NULL, 'sss@gmail.com', 'sss', ''),
(NULL, 'sssa@gmail.com', 'sss', ''),
(NULL, 'zzz@Gmail.com', '123', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookdetails`
--
ALTER TABLE `bookdetails`
  ADD PRIMARY KEY (`bookno`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Indexes for table `order_master`
--
ALTER TABLE `order_master`
  ADD PRIMARY KEY (`order_master_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`regid`);

--
-- Indexes for table `sellerrequest`
--
ALTER TABLE `sellerrequest`
  ADD PRIMARY KEY (`bookno`);

--
-- Indexes for table `sendbookdetails`
--
ALTER TABLE `sendbookdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `userlogin`
--
ALTER TABLE `userlogin`
  ADD PRIMARY KEY (`userEmail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `bookdetails`
--
ALTER TABLE `bookdetails`
  MODIFY `bookno` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_details_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=631;

--
-- AUTO_INCREMENT for table `order_master`
--
ALTER TABLE `order_master`
  MODIFY `order_master_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `regid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `sendbookdetails`
--
ALTER TABLE `sendbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
