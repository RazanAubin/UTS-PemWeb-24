-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 28, 2024 at 02:29 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portofolio_razan`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `data` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `data`) VALUES
(1, 'I am pursuing a bachelor\'s degree in Informatics, with a focus on front end development. I try to always try new things and increase my understanding, willing to learn about things that I don\'t know or still don\'t understand. Apart from that, I am also active in the world of sports, and had win 3 medal in taekwondo competitions.');

-- --------------------------------------------------------

--
-- Table structure for table `biodata`
--

CREATE TABLE `biodata` (
  `id` int(11) NOT NULL,
  `Birthday` date NOT NULL,
  `Website` varchar(100) NOT NULL,
  `Phone` varchar(100) NOT NULL,
  `City` varchar(100) NOT NULL,
  `Age` int(60) NOT NULL,
  `Degree` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `biodata`
--

INSERT INTO `biodata` (`id`, `Birthday`, `Website`, `Phone`, `City`, `Age`, `Degree`, `Email`) VALUES
(1, '2004-01-08', 'razanaubin.inf-upj.my.id', '+62 812 8603 5062', 'Indonesia, Tangerang Selatan', 20, 'Student', 'razanaubin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `social_links` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`social_links`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `address`, `phone`, `email`, `social_links`) VALUES
(1, 'Kontrakan Haji Toto, Gg. H. Abdul Karim I, Pd. Ranji, Kec. Ciputat Tim., Kota Tangerang Selatan, Banten 15412', '+62 812 8603 5062', 'razanaubin@gmail.com', '{\"instagram\": \"https://www.instagram.com/razan.afn/\", \"linkedin\": \"https://www.linkedin.com/in/razan-aubin/\", \"discord\": \"https://www.discordapp.com/users/311002827969396736\"}');

-- --------------------------------------------------------

--
-- Table structure for table `contact2`
--

CREATE TABLE `contact2` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(150) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact2`
--

INSERT INTO `contact2` (`id`, `name`, `email`, `subject`, `message`, `created_at`) VALUES
(1, 'y', 'y@gmail.com', 'y', 'yyyghgsdg', '2024-10-28 13:27:43');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_items`
--

CREATE TABLE `portfolio_items` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `portfolio_items`
--

INSERT INTO `portfolio_items` (`id`, `title`, `description`, `image_url`, `category`) VALUES
(1, 'Course 1', 'Kaggle, Python', 'assets/img/sertifikat/course-1.jpg', 'course'),
(2, 'StockLab 1', 'Peserta Stock Lab, UPJ', 'assets/img/sertifikat/stocklab-1.png', 'stocklab'),
(3, 'Lomba 1', 'Kejuaran Nasional Taekwondo, UI', 'assets/img/sertifikat/lomba-1.jpg', 'lomba'),
(4, 'Course 2', 'Decoding, Javascript', 'assets/img/sertifikat/course-2.jpg', 'course'),
(5, 'StockLab 2', 'Peserta Stock Lab, UIN', 'assets/img/sertifikat/stocklab-2.jpg', 'stocklab'),
(6, 'StockLab 3', 'Peserta Stock Lab, Mercu Buana', 'assets/img/sertifikat/stocklab-3.jpg', 'stocklab');

-- --------------------------------------------------------

--
-- Table structure for table `resume`
--

CREATE TABLE `resume` (
  `id` int(11) NOT NULL,
  `section` varchar(50) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `date_range` varchar(50) DEFAULT NULL,
  `achievements` text DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resume`
--

INSERT INTO `resume` (`id`, `section`, `title`, `description`, `date_range`, `achievements`, `address`, `phone`, `email`) VALUES
(1, 'Summary', 'Razan Aubin Farras', 'Pursuing a bachelor\'s degree in Informatics, with a focus on front end development. Menjangan 3, Pondok Ranji, Indonesia. +62 812 8603 5062. razanaubin@gmail.com', NULL, NULL, NULL, NULL, NULL),
(2, 'Education', 'Senior High School', 'MAN 1 TANGERANG SELATAN', '2019 - 2022', NULL, NULL, NULL, NULL),
(3, 'Education', 'College', 'Pembangunan Jaya University', '2022 - Now', NULL, NULL, NULL, NULL),
(4, 'Experience', 'Document Processing Internship for Informatics Study Program', 'Manage administrative data for the UPJ informatics study program & create sharepoints to display data and make it accessible.', 'February - June 2023', NULL, NULL, NULL, NULL),
(5, 'Experience', 'Internship as part of the social media team of the PHA unit at Pembangunan Jaya University', 'Manage and optimize brand social media accounts on various UPJ platforms to increase content visibility', '15 October 2022 - 15 January 2023', NULL, NULL, NULL, NULL),
(6, 'Achievement', '2nd Place in the ATF UI Taekwondo Championship 2023 U-58', NULL, '2 - 4 June 2023', NULL, NULL, NULL, NULL),
(7, 'Achievement', '1st Place in the U-58 Men\'s National Taekwondo Championship KAPOLRI CUP 4', NULL, '17 - 20 November 2022', NULL, NULL, NULL, NULL),
(8, 'Summary', 'Razan Aubin Farras', 'Pursuing a bachelor\'s degree in Informatics, with a focus on front end development.', NULL, NULL, 'Menjangan 3, Pondok Ranji, Indonesia', '+62 812 8603 5062', 'razanaubin@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biodata`
--
ALTER TABLE `biodata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact2`
--
ALTER TABLE `contact2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio_items`
--
ALTER TABLE `portfolio_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resume`
--
ALTER TABLE `resume`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `biodata`
--
ALTER TABLE `biodata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact2`
--
ALTER TABLE `contact2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `portfolio_items`
--
ALTER TABLE `portfolio_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `resume`
--
ALTER TABLE `resume`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
