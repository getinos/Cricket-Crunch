-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2025 at 08:57 AM
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
-- Database: `data_viz`
--

-- --------------------------------------------------------

--
-- Table structure for table `bidding`
--

CREATE TABLE `bidding` (
  `bidd_id` int(11) NOT NULL,
  `player_id` int(255) NOT NULL,
  `team_id` int(255) NOT NULL,
  `player_price` int(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bidding`
--

INSERT INTO `bidding` (`bidd_id`, `player_id`, `team_id`, `player_price`, `time`) VALUES
(5, 1, 5, 100, '2025-02-23 11:45:01'),
(6, 1, 6, 100, '2025-02-23 11:45:16'),
(7, 1, 7, 100, '2025-02-23 11:46:31'),
(8, 1, 7, 100, '2025-02-23 11:53:34'),
(9, 1, 8, 100, '2025-02-23 11:55:54'),
(10, 1, 5, 100, '2025-02-23 11:57:18'),
(11, 1, 7, 100, '2025-02-23 12:03:02'),
(12, 1, 5, 100, '2025-02-23 12:03:03'),
(13, 1, 4, 100, '2025-02-23 12:03:04'),
(14, 1, 1, 100, '2025-02-23 12:06:15'),
(15, 1, 5, 100, '2025-02-23 12:06:31'),
(16, 1, 2, 100, '2025-02-23 12:06:32'),
(17, 1, 1, 100, '2025-02-23 12:06:33'),
(18, 1, 2, 600, '2025-03-01 10:51:18'),
(19, 1, 2, 600, '2025-03-01 13:20:26'),
(20, 1, 2, 600, '2025-03-01 13:20:39'),
(21, 1, 2, 625, '2025-03-01 13:21:07'),
(22, 1, 2, 650, '2025-03-01 13:21:13'),
(23, 1, 2, 675, '2025-03-01 13:21:27'),
(24, 1, 2, 700, '2025-03-01 13:24:51'),
(25, 1, 2, 700, '2025-03-01 13:24:54'),
(26, 2, 2, 1525, '2025-03-01 13:44:30'),
(27, 2, 4, 1550, '2025-03-01 13:44:50'),
(28, 2, 5, 1575, '2025-03-01 14:14:40'),
(29, 2, 1, 1600, '2025-03-01 14:14:52'),
(30, 2, 3, 1625, '2025-03-01 14:18:58'),
(31, 2, 2, 1650, '2025-03-01 14:19:09'),
(32, 2, 6, 1675, '2025-03-01 14:21:42'),
(33, 2, 1, 1700, '2025-03-01 14:22:00'),
(34, 2, 3, 1725, '2025-03-01 14:25:27'),
(35, 0, 0, 0, '2025-03-01 14:29:36'),
(36, 2, 1, 1750, '2025-03-01 14:29:36'),
(37, 0, 0, 0, '2025-03-01 14:29:41'),
(38, 2, 1, 1750, '2025-03-01 14:29:41'),
(39, 0, 0, 0, '2025-03-01 14:37:28'),
(40, 2, 1, 1775, '2025-03-01 14:37:28'),
(41, 2, 3, 1800, '2025-03-01 14:38:45'),
(42, 2, 3, 1825, '2025-03-01 14:40:15'),
(43, 2, 3, 1850, '2025-03-01 14:40:50'),
(44, 2, 1, 1875, '2025-03-01 14:45:55'),
(45, 2, 1, 1875, '2025-03-01 14:45:59'),
(46, 2, 1, 1875, '2025-03-01 14:46:00'),
(47, 2, 1, 1875, '2025-03-01 14:46:02'),
(48, 2, 1, 1875, '2025-03-01 14:46:02'),
(49, 2, 1, 1875, '2025-03-01 14:46:02'),
(50, 2, 1, 1875, '2025-03-01 14:46:09'),
(51, 2, 1, 1875, '2025-03-01 14:46:10'),
(52, 2, 1, 1875, '2025-03-01 14:46:10'),
(53, 2, 1, 1875, '2025-03-01 14:46:10'),
(54, 2, 1, 1900, '2025-03-01 14:46:56'),
(55, 2, 5, 1925, '2025-03-01 14:48:26'),
(56, 2, 5, 1925, '2025-03-01 14:48:37'),
(57, 2, 5, 1950, '2025-03-01 14:49:46'),
(58, 2, 2, 1975, '2025-03-01 14:49:57'),
(59, 2, 2, 2000, '2025-03-01 14:54:14'),
(60, 2, 2, 2025, '2025-03-01 14:54:54'),
(61, 2, 2, 2050, '2025-03-01 14:56:21'),
(62, 2, 8, 2075, '2025-03-01 14:58:38'),
(63, 2, 8, 2075, '2025-03-01 14:58:42'),
(64, 2, 8, 2100, '2025-03-01 15:00:05'),
(65, 2, 8, 2100, '2025-03-01 15:00:18'),
(66, 2, 5, 2125, '2025-03-01 15:01:24'),
(67, 2, 5, 2150, '2025-03-01 15:02:32'),
(68, 2, 5, 2175, '2025-03-01 15:04:30'),
(69, 2, 5, 2200, '2025-03-01 15:04:36'),
(70, 2, 2, 2225, '2025-03-01 15:06:46'),
(71, 2, 2, 2250, '2025-03-01 15:06:48'),
(72, 2, 2, 2275, '2025-03-01 15:06:50'),
(73, 2, 2, 2300, '2025-03-01 15:08:12'),
(74, 2, 2, 2325, '2025-03-01 15:09:00'),
(75, 2, 2, 2350, '2025-03-01 15:09:17'),
(76, 2, 2, 2375, '2025-03-01 15:10:42'),
(77, 2, 2, 2400, '2025-03-01 15:11:02'),
(78, 2, 2, 2425, '2025-03-01 15:11:12'),
(79, 2, 2, 2450, '2025-03-01 15:11:29'),
(80, 2, 2, 2475, '2025-03-01 15:11:43'),
(81, 2, 2, 2500, '2025-03-01 15:14:30'),
(82, 2, 2, 2525, '2025-03-01 15:14:54'),
(83, 2, 2, 2550, '2025-03-01 15:15:19'),
(84, 2, 2, 2575, '2025-03-01 15:17:12'),
(85, 2, 2, 2600, '2025-03-01 15:17:28'),
(86, 2, 2, 2625, '2025-03-01 15:17:42'),
(87, 3, 2, 220, '2025-03-01 15:21:58'),
(88, 3, 2, 240, '2025-03-01 15:22:10'),
(89, 3, 2, 260, '2025-03-01 15:22:20'),
(90, 2, 2, 2650, '2025-03-02 05:15:21'),
(91, 2, 2, 2675, '2025-03-02 05:15:24'),
(92, 2, 2, 2700, '2025-03-02 05:15:33'),
(93, 2, 2, 2725, '2025-03-02 05:15:59'),
(94, 2, 2, 2750, '2025-03-02 05:16:04'),
(95, 2, 2, 2775, '2025-03-02 05:16:21'),
(96, 2, 2, 2800, '2025-03-02 05:16:34'),
(97, 2, 2, 2825, '2025-03-02 05:16:53'),
(98, 2, 2, 2850, '2025-03-02 05:16:57');

-- --------------------------------------------------------

--
-- Table structure for table `player_details`
--

CREATE TABLE `player_details` (
  `player_id` int(11) NOT NULL,
  `player_img` varchar(1000) NOT NULL,
  `player_name` varchar(100) NOT NULL,
  `player_price` int(5) NOT NULL,
  `player_status` varchar(20) NOT NULL,
  `player_specialism` varchar(25) NOT NULL,
  `player_points` int(5) NOT NULL,
  `player_ipl_mat` int(5) NOT NULL,
  `player_wkts` int(5) NOT NULL,
  `player_4s` int(5) NOT NULL,
  `player_6s` int(5) NOT NULL,
  `player_catches` int(5) NOT NULL,
  `player_run_outs` int(5) NOT NULL,
  `player_stumpings` int(5) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `player_details`
--

INSERT INTO `player_details` (`player_id`, `player_img`, `player_name`, `player_price`, `player_status`, `player_specialism`, `player_points`, `player_ipl_mat`, `player_wkts`, `player_4s`, `player_6s`, `player_catches`, `player_run_outs`, `player_stumpings`, `updated`) VALUES
(1, 'sn.png', 'Sunil Narine', 600, 'Capped', 'ALL-ROUNDER', 450, 15, 17, 127, 50, 33, 8, 3, '0000-00-00 00:00:00'),
(2, 'vk.png', 'Virat Kohli', 1500, 'Capped', 'BATTER', 316, 15, 0, 0, 62, 38, 8, 8, '0000-00-00 00:00:00'),
(3, 'th.png', 'Travis Head', 200, 'Capped', 'BATTER', 274, 15, 0, 2, 64, 32, 0, 0, '0000-00-00 00:00:00'),
(4, 'as.png', 'Abhishek Sharma', 650, 'Capped', 'ALL-ROUNDER', 274, 16, 2, 12, 36, 42, 7, 0, '0000-00-00 00:00:00'),
(5, 'images.jpg', 'Pat Cummins', 200, 'Capped', 'ALL-ROUNDER', 259, 16, 18, 125, 9, 8, 7, 3, '0000-00-00 00:00:00'),
(6, '', 'Andre Russell', 1600, 'Capped', 'ALL-ROUNDER', 250, 15, 19, 68, 20, 16, 3, 2, '0000-00-00 00:00:00'),
(7, '', 'Phil Salt', 200, 'Capped', 'WICKETKEEPER', 245, 12, 0, 0, 50, 24, 12, 6, '0000-00-00 00:00:00'),
(8, '', 'Sam Curran', 200, 'Capped', 'BATTER', 239, 13, 16, 84, 24, 6, 7, 0, '0000-00-00 00:00:00'),
(9, '', 'Riyan Parag', 380, 'Capped', 'ALL-ROUNDER', 238, 16, 0, 5, 40, 33, 7, 0, '0000-00-00 00:00:00'),
(10, '', 'Nicholas Pooran', 1600, 'Capped', 'BATTER', 234, 14, 0, 0, 35, 36, 7, 3, '0000-00-00 00:00:00'),
(11, '', 'Axar Patel', 1200, 'Capped', 'ALL-ROUNDER', 234, 14, 11, 80, 19, 10, 13, 0, '0000-00-00 00:00:00'),
(12, '', 'Sanju Samson', 1400, 'Capped', 'BATTER', 226, 16, 0, 0, 48, 24, 6, 5, '0000-00-00 00:00:00'),
(13, '', 'Jasprit Bumrah', 1200, 'Capped', 'BOWLER', 224, 13, 20, 149, 1, 0, 1, 0, '0000-00-00 00:00:00'),
(14, '', 'K L Rahul', 1700, 'Capped', 'BATTER', 222, 14, 0, 0, 45, 19, 15, 0, '0000-00-00 00:00:00'),
(15, '', 'Ruturaj Gaikwad', 600, 'Capped', 'BATTER', 221, 14, 0, 0, 58, 18, 5, 0, '0000-00-00 00:00:00'),
(16, '', 'Rishabh Pant', 200, 'Capped', 'BATTER', 219, 13, 0, 0, 36, 25, 11, 2, '0000-00-00 00:00:00'),
(17, '', 'Cameron Green', 200, 'Capped', 'ALL-ROUNDER', 214, 13, 10, 72, 22, 10, 5, 5, '0000-00-00 00:00:00'),
(18, '', 'Marcus Stoinis', 200, 'Capped', 'ALL-ROUNDER', 212, 14, 4, 33, 39, 16, 4, 2, '0000-00-00 00:00:00'),
(19, '', 'Faf Du Plessis', 200, 'Capped', 'BATTER', 211, 15, 0, 0, 47, 21, 8, 0, '0000-00-00 00:00:00'),
(20, '', 'Varun Chakaravarthy', 200, 'Capped', 'BOWLER', 209, 15, 21, 125, 0, 0, 4, 0, '0000-00-00 00:00:00'),
(21, '', 'Trent Boult', 200, 'Capped', 'BOWLER', 208, 16, 16, 137, 2, 0, 4, 0, '0000-00-00 00:00:00'),
(22, '', 'Heinrich Klaasen', 2300, 'Capped', 'BATTER', 207, 16, 0, 0, 19, 38, 8, 2, '0000-00-00 00:00:00'),
(23, '', 'Ravindra Jadeja', 1600, 'Capped', 'ALL-ROUNDER', 201, 14, 8, 75, 22, 8, 6, 0, '0000-00-00 00:00:00'),
(24, '', 'Yashasvi Jaiswal', 400, 'Uncapped', 'BATTER', 201, 16, 0, 0, 54, 16, 4, 0, '0000-00-00 00:00:00'),
(25, '', 'Rohit Sharma', 1600, 'Capped', 'BATTER', 201, 14, 0, 0, 45, 23, 3, 0, '0000-00-00 00:00:00'),
(26, '', 'Harshal Patel', 200, 'Capped', 'ALL-ROUNDER', 197, 14, 24, 85, 1, 1, 5, 9, '0000-00-00 00:00:00'),
(27, '', 'Mohammed Siraj', 700, 'Capped', 'BOWLER', 196, 14, 15, 129, 0, 2, 3, 0, '0000-00-00 00:00:00'),
(28, '', 'Hardik Pandya', 1500, 'Capped', 'ALL-ROUNDER', 196, 14, 11, 65, 17, 11, 4, 2, '0000-00-00 00:00:00'),
(29, '', 'Jake Fraser-McGurk', 20, 'Uncapped', 'ALL-ROUNDER', 194, 9, 0, 0, 32, 28, 5, 3, '0000-00-00 00:00:00'),
(30, '', 'Khaleel Ahmed', 480, 'Capped', 'BOWLER', 192, 14, 17, 130, 0, 0, 1, 0, '0000-00-00 00:00:00'),
(31, '', 'Tristan Stubbs', 50, 'Capped', 'WICKETKEEPER', 187, 14, 3, 6, 24, 26, 7, 2, '0000-00-00 00:00:00'),
(32, '', 'Arshdeep Singh', 200, 'Capped', 'BOWLER', 186, 14, 19, 114, 1, 0, 1, 0, '0000-00-00 00:00:00'),
(33, '', 'Mitchell Starc', 200, 'Capped', 'BOWLER', 185, 14, 17, 105, 1, 0, 6, 3, '0000-00-00 00:00:00'),
(34, '', 'Yash Dayal', 20, 'Uncapped', 'BOWLER', 185, 14, 15, 122, 0, 0, 3, 3, '0000-00-00 00:00:00'),
(35, '', 'Bhuvneshwar Kumar', 200, 'Capped', 'BOWLER', 185, 16, 11, 136, 3, 0, 1, 0, '0000-00-00 00:00:00'),
(36, '', 'T Natarajan', 200, 'Capped', 'BOWLER', 184, 14, 19, 112, 0, 0, 2, 0, '0000-00-00 00:00:00'),
(37, '', 'Tushar Deshpande', 100, 'Capped', 'BOWLER', 183, 13, 17, 118, 0, 0, 2, 0, '0000-00-00 00:00:00'),
(38, '', 'N Tilak Varma', 170, 'Capped', 'ALL-ROUNDER', 180, 13, 0, 0, 35, 19, 9, 3, '0000-00-00 00:00:00'),
(39, '', 'Avesh Khan', 200, 'Capped', 'BOWLER', 178, 16, 19, 101, 1, 0, 2, 3, '0000-00-00 00:00:00'),
(40, '', 'Shivam Dube', 400, 'Capped', 'ALL-ROUNDER', 178, 14, 1, 1, 28, 28, 2, 0, '0000-00-00 00:00:00'),
(41, '', 'B. Sai Sudharsan', 200, 'Uncapped', 'BATTER', 178, 12, 0, 0, 48, 16, 0, 2, '0000-00-00 00:00:00'),
(42, '', 'Rajat Patidar', 200, 'Uncapped', 'BATTER', 176, 15, 0, 0, 21, 33, 3, 0, '0000-00-00 00:00:00'),
(43, '', 'Yuzvendra Chahal', 200, 'Capped', 'BOWLER', 176, 15, 18, 100, 0, 0, 5, 0, '0000-00-00 00:00:00'),
(44, '', 'Harshit Rana', 400, 'Uncapped', 'BOWLER', 172, 13, 19, 95, 0, 0, 4, 0, '0000-00-00 00:00:00'),
(45, '', 'Ishan Kishan', 200, 'Capped', 'WICKETKEEPER', 171, 14, 0, 0, 35, 16, 9, 5, '0000-00-00 00:00:00'),
(46, '', 'Rashid Khan', 1500, 'Capped', 'ALL-ROUNDER', 170, 12, 10, 84, 10, 3, 6, 0, '0000-00-00 00:00:00'),
(47, '', 'Shashank Singh', 20, 'Uncapped', 'BATTER', 167, 14, 1, 1, 28, 21, 7, 2, '0000-00-00 00:00:00'),
(48, '', 'Venkatesh Iyer', 200, 'Capped', 'ALL-ROUNDER', 164, 15, 0, 0, 35, 19, 4, 0, '0000-00-00 00:00:00'),
(49, '', 'Suryakumar Yadav', 1800, 'Capped', 'BATTER', 163, 11, 0, 0, 36, 18, 4, 0, '0000-00-00 00:00:00'),
(50, '', 'Kuldeep Yadav', 1300, 'Capped', 'BOWLER', 162, 11, 16, 82, 6, 1, 2, 0, '0000-00-00 00:00:00'),
(51, '', 'Shreyas Iyer', 200, 'Capped', 'WICKETKEEPER', 161, 15, 0, 0, 34, 14, 10, 2, '0000-00-00 00:00:00'),
(52, '', 'Dinesh Karthik', 550, 'Capped', 'BATTER', 160, 15, 0, 0, 27, 22, 4, 3, '0000-00-00 00:00:00'),
(53, '', 'Ravichandran Ashwin', 975, 'Capped', 'BOWLER', 160, 15, 9, 89, 5, 4, 5, 0, '0000-00-00 00:00:00'),
(54, '', 'Kagiso Rabada', 200, 'Capped', 'BATTER', 159, 11, 11, 101, 0, 2, 5, 0, '0000-00-00 00:00:00'),
(55, '', 'Prabhsimran Singh', 400, 'Capped', 'WICKETKEEPER', 158, 14, 0, 0, 34, 20, 1, 0, '0000-00-00 00:00:00'),
(56, '', 'Nitish Kumar Reddy', 600, 'Capped', 'ALL-ROUNDER', 156, 13, 3, 20, 15, 21, 5, 2, '0000-00-00 00:00:00'),
(57, '', 'Jonny Bairstow', 200, 'Capped', 'ALL-ROUNDER', 153, 11, 0, 0, 33, 14, 8, 2, '0000-00-00 00:00:00'),
(58, '', 'Shahbaz Ahamad', 100, 'Capped', 'BATTER', 150, 16, 7, 52, 7, 13, 3, 3, '0000-00-00 00:00:00'),
(59, '', 'Shubman Gill', 1650, 'Capped', 'BATTER', 148, 12, 0, 0, 37, 15, 1, 0, '0000-00-00 00:00:00'),
(60, '', 'Mukesh Kumar', 200, 'Capped', 'BOWLER', 145, 10, 17, 72, 0, 0, 3, 6, '0000-00-00 00:00:00'),
(61, '', 'Harpreet Brar', 30, 'Uncapped', 'BATTER', 143, 13, 7, 74, 8, 2, 7, 0, '0000-00-00 00:00:00'),
(62, '', 'Jos Buttler', 200, 'Capped', 'WICKETKEEPER', 141, 11, 0, 0, 36, 12, 3, 2, '0000-00-00 00:00:00'),
(63, '', 'Abishek Porel', 400, 'Uncapped', 'WICKETKEEPER', 141, 14, 0, 0, 36, 13, 2, 0, '0000-00-00 00:00:00'),
(64, '', 'Ravi Bishnoi', 400, 'Capped', 'BOWLER', 137, 14, 10, 89, 0, 0, 4, 3, '0000-00-00 00:00:00'),
(65, '', 'Gerald Coetzee', 200, 'Capped', 'BATTER', 135, 10, 13, 81, 0, 1, 2, 0, '0000-00-00 00:00:00'),
(66, '', 'Mustafizur Rahman', 200, 'Capped', 'BOWLER', 133, 9, 14, 81, 0, 0, 1, 0, '0000-00-00 00:00:00'),
(67, '', 'Daryl Mitchell', 100, 'Capped', 'ALL-ROUNDER', 133, 13, 1, 4, 27, 10, 9, 0, '0000-00-00 00:00:00'),
(68, '', 'Sandeep Sharma', 400, 'Uncapped', 'BOWLER', 131, 11, 13, 75, 0, 0, 3, 3, '0000-00-00 00:00:00'),
(69, '', 'Naveen Ul Haq', 200, 'Capped', 'BOWLER', 131, 10, 14, 72, 0, 0, 4, 0, '0000-00-00 00:00:00'),
(70, '', 'Will Jacks', 200, 'Capped', 'ALL-ROUNDER', 129, 8, 2, 11, 16, 18, 3, 0, '0000-00-00 00:00:00'),
(71, '', 'Krunal Pandya', 200, 'Capped', 'ALL-ROUNDER', 124, 14, 6, 58, 8, 5, 3, 0, '0000-00-00 00:00:00'),
(72, '', 'Rachin Ravindra', 50, 'Capped', 'ALL-ROUNDER', 124, 10, 0, 5, 22, 12, 8, 2, '0000-00-00 00:00:00'),
(73, '', 'Noor Ahmad', 200, 'Capped', 'BOWLER', 122, 10, 8, 75, 2, 0, 5, 2, '0000-00-00 00:00:00'),
(74, '', 'Piyush Chawla', 50, 'Uncapped', 'BOWLER', 122, 11, 13, 65, 1, 1, 2, 0, '0000-00-00 00:00:00'),
(75, '', 'Vaibhav Arora', 30, 'Uncapped', 'WICKETKEEPER', 120, 10, 11, 79, 0, 0, 1, 0, '0000-00-00 00:00:00'),
(76, '', 'Mohsin Khan', 200, 'Uncapped', 'BOWLER', 120, 10, 10, 82, 0, 0, 1, 0, '0000-00-00 00:00:00'),
(77, '', 'Quinton De Kock', 200, 'Capped', 'WICKETKEEPER', 113, 11, 0, 0, 29, 9, 3, 2, '0000-00-00 00:00:00'),
(78, '', 'Mohit Sharma', 50, 'Uncapped', 'BOWLER', 111, 12, 13, 55, 0, 0, 4, 0, '0000-00-00 00:00:00'),
(79, '', 'Rahul Chahar', 100, 'Capped', 'BOWLER', 110, 9, 10, 56, 3, 1, 3, 0, '0000-00-00 00:00:00'),
(80, '', 'Yash Thakur', 30, 'Uncapped', 'BOWLER', 109, 10, 11, 68, 0, 0, 1, 0, '0000-00-00 00:00:00'),
(81, '', 'Rilee Rossouw', 200, 'Capped', 'BATTER', 109, 8, 0, 0, 25, 11, 3, 0, '0000-00-00 00:00:00'),
(82, '', 'MS Dhoni', 400, 'Uncapped', 'BATTER', 109, 14, 0, 0, 14, 13, 10, 3, '0000-00-00 00:00:00'),
(83, '', 'Ishant Sharma', 75, 'Capped', 'BOWLER', 106, 9, 10, 63, 0, 0, 2, 3, '0000-00-00 00:00:00'),
(84, '', 'Jitesh Sharma', 100, 'Capped', 'WICKETKEEPER', 105, 14, 0, 0, 9, 12, 13, 8, '0000-00-00 00:00:00'),
(85, '', 'Tim David', 200, 'Capped', 'ALL-ROUNDER', 103, 13, 0, 0, 14, 15, 6, 0, '0000-00-00 00:00:00'),
(86, '', 'Matheesha Pathirana', 200, 'Capped', 'BOWLER', 102, 6, 13, 54, 0, 0, 1, 0, '0000-00-00 00:00:00'),
(87, '', 'Abdul Samad', 30, 'Uncapped', 'ALL-ROUNDER', 99, 16, 0, 0, 15, 11, 9, 0, '0000-00-00 00:00:00'),
(88, '', 'Prithvi Shaw', 75, 'Capped', 'BATTER', 98, 8, 0, 0, 30, 5, 2, 0, '0000-00-00 00:00:00'),
(89, '', 'Dhruv Jurel', 200, 'Capped', 'WICKETKEEPER', 97, 15, 0, 0, 18, 7, 11, 0, '0000-00-00 00:00:00'),
(90, '', 'Karn Sharma', 50, 'Uncapped', 'BOWLER', 96, 9, 7, 41, 2, 3, 6, 0, '0000-00-00 00:00:00'),
(91, '', 'David Miller', 150, 'Capped', 'ALL-ROUNDER', 94, 9, 0, 0, 20, 8, 5, 3, '0000-00-00 00:00:00'),
(92, '', 'Rahul Tewatia', 900, 'Capped', 'ALL-ROUNDER', 93, 12, 0, 0, 24, 5, 6, 0, '0000-00-00 00:00:00'),
(93, '', 'David Warner', 200, 'Capped', 'BATTER', 90, 8, 0, 0, 17, 10, 5, 0, '0000-00-00 00:00:00'),
(94, '', 'Umesh Yadav', 200, 'Capped', 'BOWLER', 90, 7, 8, 56, 0, 1, 1, 0, '0000-00-00 00:00:00'),
(95, '', 'Shai Hope', 75, 'Capped', 'WICKETKEEPER', 89, 9, 0, 0, 12, 12, 6, 2, '0000-00-00 00:00:00'),
(96, '', 'Rasikh Dar', 20, 'Uncapped', 'WICKETKEEPER', 86, 8, 9, 42, 4, 0, 1, 0, '0000-00-00 00:00:00'),
(97, '', 'Liam Livingstone', 200, 'Capped', 'BOWLER', 86, 7, 3, 26, 8, 7, 2, 0, '0000-00-00 00:00:00'),
(98, '', 'Lockie Ferguson', 200, 'Capped', 'WICKETKEEPER', 85, 7, 9, 43, 0, 0, 4, 0, '0000-00-00 00:00:00'),
(99, '', 'Glenn Maxwell', 200, 'Capped', 'ALL-ROUNDER', 85, 10, 6, 34, 6, 2, 3, 0, '0000-00-00 00:00:00'),
(100, '', 'Ajinkya Rahane', 150, 'Capped', 'BATTER', 85, 13, 0, 0, 23, 7, 1, 0, '0000-00-00 00:00:00'),
(101, '', 'Shardul Thakur', 200, 'Capped', 'ALL-ROUNDER', 84, 9, 5, 48, 2, 1, 4, 0, '0000-00-00 00:00:00'),
(102, '', 'Jaydev Unadkat', 50, 'Capped', 'BOWLER', 84, 11, 8, 44, 2, 1, 0, 3, '0000-00-00 00:00:00'),
(103, '', 'Nuwan Thushara', 50, 'Capped', 'BOWLER', 83, 7, 8, 51, 0, 0, 1, 2, '0000-00-00 00:00:00'),
(104, '', 'Azmatullah Omarzai', 50, 'Capped', 'ALL-ROUNDER', 83, 7, 4, 57, 2, 2, 0, 0, '0000-00-00 00:00:00'),
(105, '', 'Ashutosh Sharma', 20, 'Uncapped', 'ALL-ROUNDER', 83, 11, 0, 0, 10, 15, 2, 0, '0000-00-00 00:00:00'),
(106, '', 'Ayush Badoni', 20, 'Uncapped', 'ALL-ROUNDER', 81, 14, 0, 1, 22, 5, 3, 0, '0000-00-00 00:00:00'),
(107, '', 'Nandre Burger', 20, 'Uncapped', 'BOWLER', 80, 6, 7, 50, 0, 0, 2, 0, '0000-00-00 00:00:00'),
(108, '', 'Angkrish Raghuvanshi', 20, 'Uncapped', 'BATTER', 78, 10, 0, 0, 16, 8, 4, 0, '0000-00-00 00:00:00'),
(109, '', 'Rinku Singh', 1300, 'Capped', 'BATTER', 78, 15, 0, 0, 13, 8, 7, 0, '0000-00-00 00:00:00'),
(110, '', 'Wriddhiman Saha', 100, 'Capped', 'BATTER', 78, 9, 0, 0, 18, 3, 5, 5, '0000-00-00 00:00:00'),
(111, '', 'Deepak Chahar', 200, 'Capped', 'WICKETKEEPER', 78, 8, 5, 60, 0, 0, 0, 0, '0000-00-00 00:00:00'),
(112, '', 'Naman Dhir', 20, 'Uncapped', 'ALL-ROUNDER', 77, 7, 0, 3, 12, 10, 3, 2, '0000-00-00 00:00:00'),
(113, '', 'Ramandeep Singh', 20, 'Uncapped', 'ALL-ROUNDER', 76, 15, 0, 0, 5, 12, 8, 2, '0000-00-00 00:00:00'),
(114, '', 'Aiden Markram', 200, 'Capped', 'BATTER', 76, 11, 0, 4, 18, 4, 5, 0, '0000-00-00 00:00:00'),
(115, '', 'Shahrukh Khan', 40, 'Uncapped', 'ALL-ROUNDER', 73, 7, 0, 4, 9, 9, 6, 0, '0000-00-00 00:00:00'),
(116, '', 'Rahul Tripathi', 75, 'Capped', 'BATTER', 71, 6, 0, 0, 18, 6, 2, 0, '0000-00-00 00:00:00'),
(117, '', 'Swapnil Singh', 20, 'Uncapped', 'ALL-ROUNDER', 71, 7, 6, 27, 3, 3, 2, 0, '0000-00-00 00:00:00'),
(118, '', 'Moeen Ali', 200, 'Capped', 'ALL-ROUNDER', 70, 8, 2, 12, 7, 8, 2, 0, '0000-00-00 00:00:00'),
(119, '', 'Mayank Yadav', 110, 'Capped', 'BOWLER', 69, 4, 7, 42, 0, 0, 1, 0, '0000-00-00 00:00:00'),
(120, '', 'Anrich Nortje', 200, 'Capped', 'BOWLER', 67, 6, 7, 40, 0, 0, 1, 0, '0000-00-00 00:00:00'),
(121, '', 'Sai Kishore', 20, 'Capped', 'BOWLER', 67, 5, 7, 30, 0, 2, 2, 0, '0000-00-00 00:00:00'),
(122, '', 'Shikhar Dhawan', 200, 'Capped', 'BATTER', 67, 5, 0, 0, 18, 4, 3, 0, '0000-00-00 00:00:00'),
(123, '', 'Rovman Powell', 100, 'Capped', 'BATTER', 66, 10, 0, 0, 10, 6, 8, 0, '0000-00-00 00:00:00'),
(124, '', 'Deepak Hooda', 75, 'Capped', 'ALL-ROUNDER', 65, 11, 0, 4, 16, 3, 4, 0, '0000-00-00 00:00:00'),
(125, '', 'Mahipal Lomror', 50, 'Uncapped', 'ALL-ROUNDER', 64, 10, 0, 1, 9, 9, 3, 2, '0000-00-00 00:00:00'),
(126, '', 'Mohd Arshad Khan', 130, 'Capped', 'ALL-ROUNDER', 63, 4, 1, 24, 6, 5, 1, 0, '0000-00-00 00:00:00'),
(127, '', 'Mayank Markande', 30, 'Uncapped', 'BOWLER', 62, 7, 8, 29, 0, 0, 2, 0, '0000-00-00 00:00:00'),
(128, '', 'Mohammad Nabi', 150, 'Capped', 'ALL-ROUNDER', 59, 7, 2, 19, 2, 2, 7, 3, '0000-00-00 00:00:00'),
(129, '', 'Shimron Hetmyer', 850, 'Capped', 'BATTER', 57, 12, 0, 0, 9, 7, 4, 0, '0000-00-00 00:00:00'),
(130, '', 'Spencer Johnson', 50, 'Capped', 'BOWLER', 57, 5, 4, 35, 1, 0, 2, 0, '0000-00-00 00:00:00'),
(131, '', 'Akash Madhwal', 30, 'Uncapped', 'BOWLER', 56, 5, 5, 36, 0, 0, 1, 0, '0000-00-00 00:00:00'),
(132, '', 'Maheesh Theekshana', 200, 'Capped', 'BOWLER', 56, 5, 2, 46, 0, 0, 1, 0, '0000-00-00 00:00:00'),
(133, '', 'Simarjeet Singh', 30, 'Uncapped', 'BOWLER', 52, 4, 5, 28, 0, 0, 2, 2, '0000-00-00 00:00:00'),
(134, '', 'Sandeep Warrier', 50, 'Capped', 'BOWLER', 52, 5, 6, 31, 0, 0, 0, 0, '0000-00-00 00:00:00'),
(135, '', 'Romario Shepherd', 150, 'Capped', 'ALL-ROUNDER', 52, 6, 1, 18, 5, 5, 0, 0, '0000-00-00 00:00:00'),
(136, '', 'Nehal Wadhera', 30, 'Uncapped', 'BATTER', 51, 6, 0, 2, 9, 6, 2, 0, '0000-00-00 00:00:00'),
(137, '', 'Anuj Rawat', 30, 'Uncapped', 'WICKETKEEPER', 48, 5, 0, 0, 10, 3, 5, 0, '0000-00-00 00:00:00'),
(138, '', 'Kuldeep Sen', 75, 'Capped', 'BOWLER', 48, 3, 6, 24, 0, 0, 1, 0, '0000-00-00 00:00:00'),
(139, '', 'Reece Topley', 75, 'Capped', 'BOWLER', 48, 4, 4, 31, 0, 0, 1, 0, '0000-00-00 00:00:00'),
(140, '', 'Vyshak Vijay kumar', 30, 'Uncapped', 'BOWLER', 47, 4, 4, 24, 0, 0, 3, 2, '0000-00-00 00:00:00'),
(141, '', 'Rahmanullah Gurbaz', 200, 'Capped', 'WICKETKEEPER', 46, 3, 0, 0, 7, 4, 5, 2, '0000-00-00 00:00:00'),
(142, '', 'Mitchell Marsh', 200, 'Capped', 'ALL-ROUNDER', 46, 4, 1, 9, 9, 3, 0, 0, '0000-00-00 00:00:00'),
(143, '', 'Marco Jansen', 125, 'Capped', 'ALL-ROUNDER', 45, 3, 1, 20, 1, 1, 6, 0, '0000-00-00 00:00:00'),
(144, '', 'Mitchell Santner', 200, 'Capped', 'ALL-ROUNDER', 38, 3, 2, 23, 1, 0, 1, 3, '0000-00-00 00:00:00'),
(145, '', 'Vijay Shankar', 30, 'Uncapped', 'ALL-ROUNDER', 36, 7, 0, 0, 7, 2, 4, 2, '0000-00-00 00:00:00'),
(146, '', 'Anshul Kamboj', 20, 'Uncapped', 'ALL-ROUNDER', 35, 3, 2, 20, 0, 0, 3, 0, '0000-00-00 00:00:00'),
(147, '', 'Mayank Dagar', 30, 'Uncapped', 'BATTER', 33, 5, 1, 22, 0, 0, 3, 0, '0000-00-00 00:00:00'),
(148, '', 'Matt Henry', 75, 'Capped', 'BOWLER', 30, 4, 1, 26, 0, 0, 0, 0, '0000-00-00 00:00:00'),
(149, '', 'Mayank Agarwal', 100, 'Capped', 'BATTER', 29, 4, 0, 0, 8, 1, 2, 0, '0000-00-00 00:00:00'),
(150, '', 'Dewald Brevis', 75, 'Capped', 'BATTER', 28, 3, 0, 0, 3, 5, 1, 0, '0000-00-00 00:00:00'),
(151, '', 'Vijayakanth Viyaskanth', 75, 'Capped', 'BOWLER', 28, 3, 1, 19, 0, 0, 2, 0, '0000-00-00 00:00:00'),
(152, '', 'Sameer Rizvi', 20, 'Uncapped', 'BATTER', 27, 8, 0, 0, 4, 2, 4, 0, '0000-00-00 00:00:00'),
(153, '', 'Darshan Nalkande', 30, 'Uncapped', 'ALL-ROUNDER', 26, 3, 3, 7, 0, 1, 2, 0, '0000-00-00 00:00:00'),
(154, '', 'M Siddharth', 240, 'Uncapped', 'BOWLER', 26, 3, 1, 22, 0, 0, 0, 0, '0000-00-00 00:00:00'),
(155, '', 'Atharva Taide', 30, 'Uncapped', 'BATTER', 25, 2, 0, 0, 7, 2, 0, 0, '0000-00-00 00:00:00'),
(156, '', 'Tom Kohler-Cadmore', 40, 'Uncapped', 'WICKETKEEPER', 24, 4, 0, 0, 7, 1, 1, 0, '0000-00-00 00:00:00'),
(157, '', 'Richard Gleeson', 50, 'Capped', 'BOWLER', 24, 2, 1, 20, 0, 0, 0, 0, '0000-00-00 00:00:00'),
(158, '', 'Joshua Little', 75, 'Capped', 'BOWLER', 23, 1, 4, 9, 0, 0, 0, 0, '0000-00-00 00:00:00'),
(159, '', 'Shreyas Gopal', 20, 'Uncapped', 'BOWLER', 23, 3, 3, 10, 0, 0, 1, 0, '0000-00-00 00:00:00'),
(160, '', 'Manish Pandey', 50, 'Capped', 'BATTER', 22, 1, 0, 0, 2, 2, 4, 0, '0000-00-00 00:00:00'),
(161, '', 'Alzarri Joseph', 100, 'Capped', 'BOWLER', 22, 3, 1, 18, 0, 0, 0, 0, '0000-00-00 00:00:00'),
(162, '', 'Devdutt Padikkal', 200, 'Capped', 'BATTER', 21, 7, 0, 0, 3, 0, 4, 3, '0000-00-00 00:00:00'),
(163, '', 'Keshav Maharaj', 50, 'Capped', 'ALL-ROUNDER', 21, 2, 2, 11, 0, 0, 1, 0, '0000-00-00 00:00:00'),
(164, '', 'Sumit Kumar', 20, 'Uncapped', 'ALL-ROUNDER', 20, 4, 0, 4, 2, 1, 1, 5, '0000-00-00 00:00:00'),
(165, '', 'Lizaad Williams', 50, 'Capped', 'BOWLER', 19, 2, 1, 13, 0, 0, 1, 0, '0000-00-00 00:00:00'),
(166, '', 'Yudhvir Singh', 20, 'Uncapped', 'BOWLER', 18, 2, 1, 5, 1, 2, 0, 0, '0000-00-00 00:00:00'),
(167, '', 'Vidwath Kaverappa', 30, 'Uncapped', 'BOWLER', 18, 1, 2, 11, 0, 0, 0, 0, '0000-00-00 00:00:00'),
(168, '', 'Shubham Dubey', 20, 'Uncapped', 'BATTER', 16, 4, 0, 0, 3, 2, 0, 2, '0000-00-00 00:00:00'),
(169, '', 'Luke Wood', 50, 'Capped', 'BOWLER', 16, 2, 1, 9, 0, 1, 0, 0, '0000-00-00 00:00:00'),
(170, '', 'Nitish Rana', 150, 'Capped', 'ALL-ROUNDER', 16, 2, 0, 0, 5, 1, 0, 0, '0000-00-00 00:00:00'),
(171, '', 'Kwena Maphaka', 20, 'Uncapped', 'BOWLER', 16, 2, 1, 12, 0, 0, 0, 0, '0000-00-00 00:00:00'),
(172, '', 'Sikandar Raza', 125, 'Capped', 'ALL-ROUNDER', 14, 2, 0, 2, 2, 2, 0, 0, '0000-00-00 00:00:00'),
(173, '', 'Nathan Ellis', 125, 'Capped', 'BOWLER', 14, 1, 1, 10, 0, 0, 0, 0, '0000-00-00 00:00:00'),
(174, '', 'Anukul Roy', 30, 'Uncapped', 'ALL-ROUNDER', 13, 4, 0, 13, 0, 0, 0, 0, '0000-00-00 00:00:00'),
(175, '', 'Kane Williamson', 200, 'Capped', 'BATTER', 13, 2, 0, 0, 4, 0, 1, 0, '0000-00-00 00:00:00'),
(176, '', 'Shamar Joseph', 20, 'Uncapped', 'BOWLER', 12, 1, 0, 12, 0, 0, 0, 0, '0000-00-00 00:00:00'),
(177, '', 'Sanvir Singh', 30, 'Uncapped', 'ALL-ROUNDER', 10, 4, 0, 0, 1, 0, 3, 0, '0000-00-00 00:00:00'),
(178, '', 'Akash Deep', 100, 'Capped', 'BOWLER', 10, 1, 1, 6, 0, 0, 0, 0, '0000-00-00 00:00:00'),
(179, '', 'Gulbadin Naib', 100, 'Capped', 'ALL-ROUNDER', 10, 2, 0, 1, 1, 1, 1, 0, '0000-00-00 00:00:00'),
(180, '', 'Tanush Kotian', 20, 'Uncapped', 'ALL-ROUNDER', 9, 1, 0, 0, 3, 0, 0, 2, '0000-00-00 00:00:00'),
(181, '', 'Amit Mishra', 50, 'Capped', 'BOWLER', 9, 1, 1, 5, 0, 0, 0, 0, '0000-00-00 00:00:00'),
(182, '', 'Jhye Richardson', 150, 'Capped', 'BOWLER', 8, 1, 0, 8, 0, 0, 0, 0, '0000-00-00 00:00:00'),
(183, '', 'Suyash S Prabhudessai', 30, 'Uncapped', 'BOWLER', 8, 1, 0, 0, 3, 0, 0, 0, '0000-00-00 00:00:00'),
(184, '', 'Abhinav Manohar', 30, 'Uncapped', 'BATTER', 8, 2, 0, 0, 1, 0, 2, 0, '0000-00-00 00:00:00'),
(185, '', 'Suyash Sharma', 30, 'Uncapped', 'BOWLER', 8, 2, 0, 5, 0, 0, 1, 0, '0000-00-00 00:00:00'),
(186, '', 'Krishnappa Gowtham', 100, 'Capped', 'ALL-ROUNDER', 8, 1, 0, 5, 0, 0, 1, 0, '0000-00-00 00:00:00'),
(187, '', 'Ashton Turner', 100, 'Capped', 'BATTER', 7, 2, 0, 0, 0, 2, 0, 0, '0000-00-00 00:00:00'),
(188, '', 'Shams Mulani', 30, 'Uncapped', 'ALL-ROUNDER', 7, 2, 0, 7, 0, 0, 0, 0, '0000-00-00 00:00:00'),
(189, '', 'Arjun Tendulkar', 30, 'Uncapped', 'BOWLER', 7, 1, 0, 7, 0, 0, 0, 0, '0000-00-00 00:00:00'),
(190, '', 'Washington Sundar', 200, 'Capped', 'ALL-ROUNDER', 7, 2, 1, 3, 0, 0, 0, 0, '0000-00-00 00:00:00'),
(191, '', 'Dushmantha Chameera', 75, 'Capped', 'BOWLER', 6, 1, 0, 6, 0, 0, 0, 0, '0000-00-00 00:00:00'),
(192, '', 'Saurav Chauhan', 30, 'Uncapped', 'WICKETKEEPER', 6, 3, 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00'),
(193, '', 'Lalit Yadav', 30, 'Uncapped', 'BOWLER', 6, 2, 0, 3, 1, 0, 0, 0, '0000-00-00 00:00:00'),
(194, '', 'Harpreet Bhatia', 40, 'Capped', 'ALL-ROUNDER', 5, 2, 0, 0, 2, 0, 0, 0, '0000-00-00 00:00:00'),
(195, '', 'Kartik Tyagi', 20, 'Uncapped', 'BOWLER', 5, 1, 0, 5, 0, 0, 0, 0, '0000-00-00 00:00:00'),
(196, '', 'Donovan Ferreira', 75, 'Capped', 'WICKETKEEPER', 5, 2, 0, 0, 0, 0, 2, 0, '0000-00-00 00:00:00'),
(197, '', 'Shivam Singh', 30, 'Uncapped', 'ALL-ROUNDER', 5, 1, 0, 0, 0, 0, 2, 0, '0000-00-00 00:00:00'),
(198, '', 'Arshin Kulkarni', 20, 'Uncapped', 'ALL-ROUNDER', 5, 2, 0, 0, 2, 0, 0, 0, '0000-00-00 00:00:00'),
(199, '', 'Rishi Dhawan', 30, 'Uncapped', 'ALL-ROUNDER', 5, 1, 0, 5, 0, 0, 0, 0, '0000-00-00 00:00:00'),
(200, '', 'Manav Suthar', 20, 'Uncapped', 'BOWLER', 4, 1, 0, 4, 0, 0, 0, 0, '0000-00-00 00:00:00'),
(201, '', 'Anmolpreet Singh', 30, 'Uncapped', 'BATTER', 3, 2, 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00'),
(202, '', 'Matthew Wade', 240, 'Capped', 'BATTER', 3, 2, 0, 0, 0, 0, 1, 0, '0000-00-00 00:00:00'),
(203, '', 'Kumar Kushagra', 20, 'Uncapped', 'WICKETKEEPER', 3, 4, 0, 0, 0, 0, 1, 0, '0000-00-00 00:00:00'),
(204, '', 'BR Sharath', 20, 'Uncapped', 'ALL-ROUNDER', 3, 1, 0, 0, 0, 0, 1, 0, '0000-00-00 00:00:00'),
(205, '', 'Umran Malik', 75, 'Capped', 'BOWLER', 2, 1, 0, 2, 0, 0, 0, 0, '0000-00-00 00:00:00'),
(206, '', 'Mukesh Choudhary', 30, 'Uncapped', 'BOWLER', 2, 1, 0, 2, 0, 0, 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `team_id` int(11) NOT NULL,
  `team_name` varchar(255) NOT NULL,
  `team_logo` varchar(800) NOT NULL,
  `team_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`team_id`, `team_name`, `team_logo`, `team_updated`) VALUES
(1, 'BCA', 'bca.jpg', '2025-02-09 07:59:32'),
(2, 'BBA', 'bba.jpg', '2025-02-09 07:59:32'),
(3, 'BScDA', 'bscda.jpg', '2025-02-09 07:59:32'),
(4, 'HHA', 'hha.jpg', '2025-02-09 07:59:32'),
(5, 'BID', 'bid.jpg', '2025-02-09 07:59:32'),
(6, 'ATA', 'ata.jpg', '2025-02-23 08:33:23'),
(7, 'BMGD', 'bmgd.jpg', '2025-02-23 08:33:23'),
(8, 'ATA', 'ata.jpg', '2025-02-23 08:34:23');

-- --------------------------------------------------------

--
-- Table structure for table `winner`
--

CREATE TABLE `winner` (
  `win_id` int(11) NOT NULL,
  `player_id` int(50) NOT NULL,
  `team_id` int(50) NOT NULL,
  `player_price` int(50) NOT NULL,
  `win_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `winner`
--

INSERT INTO `winner` (`win_id`, `player_id`, `team_id`, `player_price`, `win_updated`) VALUES
(1, 1, 5, 700, '2025-03-02 04:08:52'),
(2, 2, 2, 2625, '2025-03-02 04:08:56'),
(3, 3, 2, 260, '2025-03-02 04:08:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bidding`
--
ALTER TABLE `bidding`
  ADD PRIMARY KEY (`bidd_id`);

--
-- Indexes for table `player_details`
--
ALTER TABLE `player_details`
  ADD PRIMARY KEY (`player_id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`team_id`);

--
-- Indexes for table `winner`
--
ALTER TABLE `winner`
  ADD PRIMARY KEY (`win_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bidding`
--
ALTER TABLE `bidding`
  MODIFY `bidd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `player_details`
--
ALTER TABLE `player_details`
  MODIFY `player_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `winner`
--
ALTER TABLE `winner`
  MODIFY `win_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
