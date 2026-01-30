-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2026 at 02:14 PM
-- Server version: 11.4.5-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scis`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_logs`
--

CREATE TABLE `access_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `browser` varchar(100) DEFAULT NULL,
  `device` varchar(100) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `access_logs`
--

INSERT INTO `access_logs` (`id`, `user_id`, `action`, `ip_address`, `user_agent`, `browser`, `device`, `timestamp`) VALUES
(1, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:22:09'),
(2, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:22:23'),
(3, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:22:29'),
(4, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:24:21'),
(5, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:24:21'),
(6, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:24:21'),
(7, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:24:21'),
(8, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:24:21'),
(9, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:24:35'),
(10, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:24:40'),
(11, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:37:09'),
(12, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:37:18'),
(13, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:37:41'),
(14, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:37:43'),
(15, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:38:22'),
(16, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:38:28'),
(17, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:38:31'),
(18, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:38:31'),
(19, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:38:31'),
(20, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:38:31'),
(21, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:38:31'),
(22, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:39:32'),
(23, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:39:53'),
(24, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:39:54'),
(25, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:39:54'),
(26, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:40:09'),
(27, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:40:13'),
(28, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:40:13'),
(29, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:40:13'),
(30, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:40:13'),
(31, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 08:40:13'),
(32, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:35:10'),
(33, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:35:19'),
(34, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:35:23'),
(35, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:35:23'),
(36, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:35:23'),
(37, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:35:23'),
(38, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:35:23'),
(39, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:39:49'),
(40, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:40:01'),
(41, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:40:05'),
(42, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:40:06'),
(43, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:40:06'),
(44, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:40:07'),
(45, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:40:07'),
(46, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:40:09'),
(47, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:46:45'),
(48, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:46:46'),
(49, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:46:58'),
(50, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:47:00'),
(51, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:47:00'),
(52, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:47:00'),
(53, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:47:00'),
(54, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:47:00'),
(55, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:47:02'),
(56, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:47:02'),
(57, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:47:02'),
(58, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:47:02'),
(59, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 09:47:02'),
(60, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:08:30'),
(61, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:08:30'),
(62, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:08:30'),
(63, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:08:30'),
(64, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:08:30'),
(65, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:22:50'),
(66, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:22:55'),
(67, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:22:55'),
(68, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:22:56'),
(69, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:22:58'),
(70, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:22:58'),
(71, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:22:58'),
(72, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:22:58'),
(73, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:22:58'),
(74, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:23:10'),
(75, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:23:10'),
(76, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:23:10'),
(77, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:23:10'),
(78, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:23:10'),
(79, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:23:42'),
(80, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:23:42'),
(81, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:23:42'),
(82, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:23:42'),
(83, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:23:42'),
(84, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 10:59:59'),
(85, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:00:31'),
(86, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:00:37'),
(87, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:00:43'),
(88, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:00:56'),
(89, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:01:17'),
(90, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:06:07'),
(91, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:06:18'),
(92, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:06:22'),
(93, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:06:58'),
(94, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:07:02'),
(95, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:07:08'),
(96, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:07:09'),
(97, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:07:14'),
(98, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:07:29'),
(99, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:07:31'),
(100, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:07:31'),
(101, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:07:33'),
(102, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:07:52'),
(103, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:07:54'),
(104, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:08:07'),
(105, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:08:08'),
(106, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:10:04'),
(107, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:10:38'),
(108, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:12:57'),
(109, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:13:00'),
(110, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:13:04'),
(111, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:13:10'),
(112, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:13:18'),
(113, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:13:20'),
(114, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:13:25'),
(115, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:13:40'),
(116, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:20:15'),
(117, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:20:16'),
(118, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:20:21'),
(119, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:22:49'),
(120, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:22:50'),
(121, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:22:52'),
(122, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:23:18'),
(123, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:23:33'),
(124, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:23:36'),
(125, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:23:46'),
(126, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:25:05'),
(127, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:26:19'),
(128, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:26:19'),
(129, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:26:19'),
(130, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:26:19'),
(131, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:26:19'),
(132, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:26:22'),
(133, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:26:24'),
(134, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:26:24'),
(135, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:26:24'),
(136, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:26:24'),
(137, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:26:24'),
(138, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:26:25'),
(139, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:26:28'),
(140, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:27:09'),
(141, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:29:11'),
(142, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:40:25'),
(143, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:40:28'),
(144, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:40:38'),
(145, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:40:47'),
(146, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:40:54'),
(147, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:40:56'),
(148, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:41:51'),
(149, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:41:52'),
(150, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:41:55'),
(151, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:41:55'),
(152, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:41:55'),
(153, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:41:55'),
(154, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:41:55'),
(155, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:41:59'),
(156, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:42:28'),
(157, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:42:35'),
(158, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:42:36'),
(159, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:42:37'),
(160, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:42:37'),
(161, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:42:52'),
(162, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:45:39'),
(163, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:46:33'),
(164, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:46:36'),
(165, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:46:41'),
(166, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:46:42'),
(167, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:48:54'),
(168, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:48:57'),
(169, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:49:07'),
(170, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:49:09'),
(171, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:49:12'),
(172, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:56:58'),
(173, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 11:56:59'),
(174, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:08:10'),
(175, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:10:22'),
(176, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:10:36'),
(177, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:10:52'),
(178, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:28:31'),
(179, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:28:47'),
(180, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:28:50'),
(181, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:34:05'),
(182, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:34:13'),
(183, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:34:15'),
(184, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:34:21'),
(185, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:34:25'),
(186, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:34:35'),
(187, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:34:56'),
(188, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:34:58'),
(189, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:34:58'),
(190, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:34:58'),
(191, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:34:58'),
(192, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:34:58'),
(193, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:35:10'),
(194, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:35:11'),
(195, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:35:16'),
(196, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:35:23'),
(197, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:35:29'),
(198, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:35:32'),
(199, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:35:33'),
(200, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:35:35'),
(201, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:35:36'),
(202, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:35:38'),
(203, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:36:43'),
(204, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:36:48'),
(205, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:36:57'),
(206, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:36:57'),
(207, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:36:58'),
(208, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:37:23'),
(209, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:38:40'),
(210, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:38:41'),
(211, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:44:27'),
(212, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:44:41'),
(213, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:44:46'),
(214, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:44:47'),
(215, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:44:48'),
(216, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:44:49'),
(217, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:44:49'),
(218, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:44:59'),
(219, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:45:37'),
(220, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:45:38'),
(221, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:45:39'),
(222, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:45:40'),
(223, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:45:41'),
(224, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:49:22'),
(225, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:49:37'),
(226, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:49:42'),
(227, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:49:42'),
(228, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:49:43'),
(229, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:50:43'),
(230, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:50:44'),
(231, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:50:50'),
(232, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:50:55'),
(233, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:52:44'),
(234, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:52:55'),
(235, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:53:01'),
(236, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:53:02'),
(237, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:53:05'),
(238, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:53:07'),
(239, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:53:09'),
(240, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:53:10'),
(241, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:58:36'),
(242, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 12:59:02'),
(243, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 13:20:42'),
(244, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 13:20:53'),
(245, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 13:20:56'),
(246, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 13:20:57'),
(247, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 13:20:58');
INSERT INTO `access_logs` (`id`, `user_id`, `action`, `ip_address`, `user_agent`, `browser`, `device`, `timestamp`) VALUES
(248, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 13:21:00'),
(249, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 13:21:02'),
(250, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 13:21:03'),
(251, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 13:21:06'),
(252, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 13:37:37'),
(253, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 13:37:46'),
(254, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 13:37:48'),
(255, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 13:37:49'),
(256, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 13:37:51'),
(257, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 13:38:00'),
(258, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 13:39:19'),
(259, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 13:46:05'),
(260, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 13:56:41'),
(261, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 14:09:40'),
(262, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 14:10:45'),
(263, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 14:10:46'),
(264, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 14:10:49'),
(265, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 14:10:50'),
(266, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 14:10:52'),
(267, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:31:22'),
(268, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:31:31'),
(269, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:31:32'),
(270, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:31:32'),
(271, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:31:32'),
(272, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:31:32'),
(273, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:31:33'),
(274, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:31:33'),
(275, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:31:33'),
(276, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:31:33'),
(277, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:31:33'),
(278, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:31:34'),
(279, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:31:34'),
(280, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:31:34'),
(281, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:31:35'),
(282, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:31:35'),
(283, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:31:35'),
(284, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:31:35'),
(285, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:31:36'),
(286, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:32:39'),
(287, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:32:56'),
(288, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:35:33'),
(289, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:35:41'),
(290, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:35:44'),
(291, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:35:45'),
(292, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:35:46'),
(293, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:35:48'),
(294, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:35:49'),
(295, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:35:50'),
(296, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:35:52'),
(297, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:35:59'),
(298, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:36:01'),
(299, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:36:02'),
(300, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:36:03'),
(301, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:36:04'),
(302, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:36:07'),
(303, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:36:09'),
(304, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:36:13'),
(305, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:36:14'),
(306, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:36:14'),
(307, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:36:14'),
(308, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:36:14'),
(309, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:36:14'),
(310, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:36:22'),
(311, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:37:17'),
(312, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:37:27'),
(313, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:37:27'),
(314, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:37:28'),
(315, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:37:40'),
(316, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:37:56'),
(317, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:37:57'),
(318, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:38:04'),
(319, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:38:14'),
(320, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:38:18'),
(321, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:38:19'),
(322, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:38:20'),
(323, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:38:21'),
(324, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:38:23'),
(325, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:40:05'),
(326, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:40:07'),
(327, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:40:16'),
(328, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:40:30'),
(329, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:40:37'),
(330, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:40:39'),
(331, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:40:51'),
(332, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:41:00'),
(333, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:52:04'),
(334, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:56:13'),
(335, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:56:15'),
(336, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 15:56:16'),
(337, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', 'Chrome', 'Mobile', '2025-12-16 15:58:05'),
(338, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 16:38:02'),
(339, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 16:41:10'),
(340, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 16:41:12'),
(341, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 16:41:13'),
(342, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 16:41:16'),
(343, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 16:41:17'),
(344, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 16:41:19'),
(345, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 16:41:22'),
(346, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 16:41:23'),
(347, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 16:41:24'),
(348, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 16:41:26'),
(349, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 16:41:26'),
(350, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 16:41:27'),
(351, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 16:41:29'),
(352, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 16:41:29'),
(353, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 16:46:17'),
(354, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:38:29'),
(355, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:38:33'),
(356, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:38:34'),
(357, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:38:35'),
(358, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:38:37'),
(359, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:39:11'),
(360, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:39:11'),
(361, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:39:14'),
(362, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:39:15'),
(363, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:39:16'),
(364, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:39:17'),
(365, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:44:39'),
(366, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:44:40'),
(367, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:44:41'),
(368, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:44:43'),
(369, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:44:44'),
(370, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:44:59'),
(371, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:45:00'),
(372, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:48:23'),
(373, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:50:34'),
(374, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:51:10'),
(375, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:51:13'),
(376, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:51:15'),
(377, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:51:17'),
(378, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:51:18'),
(379, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:51:19'),
(380, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:51:21'),
(381, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:51:23'),
(382, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:51:24'),
(383, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:51:24'),
(384, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:51:25'),
(385, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:51:27'),
(386, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:51:27'),
(387, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:51:27'),
(388, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:51:27'),
(389, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:51:27'),
(390, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:51:27'),
(391, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 17:51:30'),
(392, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:04:30'),
(393, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:05:09'),
(394, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:05:15'),
(395, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:05:16'),
(396, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:05:18'),
(397, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:05:21'),
(398, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:05:23'),
(399, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:05:26'),
(400, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:05:28'),
(401, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:05:30'),
(402, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:05:31'),
(403, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:05:36'),
(404, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:05:38'),
(405, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:05:40'),
(406, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:06:10'),
(407, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:12:04'),
(408, 2, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:12:05'),
(409, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:12:29'),
(410, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:12:31'),
(411, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:12:32'),
(412, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:32:32'),
(413, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:32:36'),
(414, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:32:39'),
(415, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:32:43'),
(416, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:32:45'),
(417, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:32:47'),
(418, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:32:49'),
(419, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:32:51'),
(420, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:32:52'),
(421, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:32:59'),
(422, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:33:00'),
(423, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:33:02'),
(424, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:33:05'),
(425, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-16 18:33:06'),
(426, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 04:17:51'),
(427, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 05:27:56'),
(428, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 05:28:06'),
(429, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 05:28:09'),
(430, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 05:28:11'),
(431, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 05:28:12'),
(432, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 05:28:15'),
(433, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 05:28:16'),
(434, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 05:28:16'),
(435, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 05:28:18'),
(436, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 05:40:00'),
(437, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 05:40:14'),
(438, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 05:40:22'),
(439, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 09:51:04'),
(440, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 09:52:20'),
(441, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 09:52:44'),
(442, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 09:52:49'),
(443, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 09:52:50'),
(444, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 09:52:52'),
(445, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 09:52:53'),
(446, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 09:52:55'),
(447, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 09:52:55'),
(448, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 09:52:56'),
(449, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 09:55:33'),
(450, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 09:55:38'),
(451, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:05:44'),
(452, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:05:50'),
(453, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:05:52'),
(454, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:05:56'),
(455, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:06:03'),
(456, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:06:12'),
(457, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:06:13'),
(458, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:06:14'),
(459, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:06:14'),
(460, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:06:15'),
(461, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:06:16'),
(462, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:06:16'),
(463, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:07:56'),
(464, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:08:16'),
(465, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:08:16'),
(466, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:08:16'),
(467, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:08:16'),
(468, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:08:16'),
(469, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:08:30'),
(470, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:08:37'),
(471, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:08:38'),
(472, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:08:38'),
(473, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:08:38'),
(474, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:08:38'),
(475, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:08:38'),
(476, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:08:39'),
(477, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:08:40'),
(478, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:08:40'),
(479, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:08:40'),
(480, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:08:40'),
(481, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:08:40'),
(482, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:08:45'),
(483, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:08:47'),
(484, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:08:57'),
(485, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:05'),
(486, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:09'),
(487, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:11'),
(488, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:11'),
(489, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:12'),
(490, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:14'),
(491, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:14'),
(492, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:15'),
(493, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:18');
INSERT INTO `access_logs` (`id`, `user_id`, `action`, `ip_address`, `user_agent`, `browser`, `device`, `timestamp`) VALUES
(494, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:21'),
(495, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:23'),
(496, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:23'),
(497, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:23'),
(498, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:23'),
(499, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:23'),
(500, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:25'),
(501, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:30'),
(502, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:30'),
(503, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:30'),
(504, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:30'),
(505, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:30'),
(506, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:31'),
(507, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:53'),
(508, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:53'),
(509, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:53'),
(510, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:53'),
(511, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:53'),
(512, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:54'),
(513, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:56'),
(514, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:56'),
(515, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:56'),
(516, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:56'),
(517, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:56'),
(518, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:09:57'),
(519, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:10:01'),
(520, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:12:41'),
(521, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:12:41'),
(522, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:12:42'),
(523, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:12:45'),
(524, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:12:50'),
(525, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:12:52'),
(526, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:12:54'),
(527, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:12:56'),
(528, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:13:34'),
(529, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:14:04'),
(530, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:14:07'),
(531, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:14:08'),
(532, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:14:08'),
(533, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:14:08'),
(534, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:14:08'),
(535, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:14:08'),
(536, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:14:18'),
(537, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:14:20'),
(538, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:14:20'),
(539, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:14:20'),
(540, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:14:20'),
(541, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:14:20'),
(542, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:14:20'),
(543, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:14:33'),
(544, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:14:33'),
(545, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:14:33'),
(546, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:14:33'),
(547, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:14:33'),
(548, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:14:39'),
(549, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:23:56'),
(550, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:23:57'),
(551, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:23:58'),
(552, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:25:15'),
(553, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:28:42'),
(554, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:28:53'),
(555, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:28:56'),
(556, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:29:01'),
(557, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:29:02'),
(558, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:29:03'),
(559, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:29:04'),
(560, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:29:04'),
(561, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:29:05'),
(562, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:29:19'),
(563, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:29:24'),
(564, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:29:32'),
(565, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:29:35'),
(566, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:29:40'),
(567, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:29:41'),
(568, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:29:42'),
(569, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:29:43'),
(570, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:29:43'),
(571, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:29:44'),
(572, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:29:45'),
(573, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:31:53'),
(574, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:31:55'),
(575, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:31:55'),
(576, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:31:55'),
(577, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:31:55'),
(578, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:31:55'),
(579, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:31:57'),
(580, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:31:58'),
(581, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:31:58'),
(582, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:31:58'),
(583, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:31:58'),
(584, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:31:58'),
(585, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:32:02'),
(586, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:33:05'),
(587, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:33:32'),
(588, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:35:01'),
(589, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:35:01'),
(590, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:35:01'),
(591, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:35:01'),
(592, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:35:01'),
(593, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:36:33'),
(594, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:36:35'),
(595, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:36:35'),
(596, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:36:36'),
(597, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:36:36'),
(598, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:36:36'),
(599, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:36:36'),
(600, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:36:36'),
(601, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:36:36'),
(602, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:36:36'),
(603, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:36:38'),
(604, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:36:38'),
(605, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:36:39'),
(606, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:36:39'),
(607, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:36:39'),
(608, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:36:39'),
(609, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:36:54'),
(610, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:36:54'),
(611, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:36:54'),
(612, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:36:55'),
(613, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:37:06'),
(614, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:37:16'),
(615, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:37:17'),
(616, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:37:19'),
(617, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:37:20'),
(618, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:37:31'),
(619, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:37:33'),
(620, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:37:34'),
(621, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:38:51'),
(622, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:38:51'),
(623, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:38:51'),
(624, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:38:51'),
(625, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:38:51'),
(626, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:38:56'),
(627, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:39:29'),
(628, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:39:29'),
(629, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:39:29'),
(630, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:39:29'),
(631, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:39:29'),
(632, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:39:33'),
(633, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:45:15'),
(634, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:45:18'),
(635, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:45:19'),
(636, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:45:20'),
(637, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:45:22'),
(638, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:45:23'),
(639, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:45:25'),
(640, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:45:26'),
(641, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:45:28'),
(642, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:45:30'),
(643, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:45:33'),
(644, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:47:39'),
(645, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:47:44'),
(646, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:47:50'),
(647, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:47:51'),
(648, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:47:56'),
(649, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:48:00'),
(650, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 10:48:06'),
(651, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:26:19'),
(652, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:26:35'),
(653, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:26:37'),
(654, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:26:40'),
(655, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:26:40'),
(656, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:26:40'),
(657, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:26:55'),
(658, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:26:55'),
(659, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:26:55'),
(660, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:26:55'),
(661, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:26:55'),
(662, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:26:55'),
(663, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:26:57'),
(664, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:26:59'),
(665, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:27:08'),
(666, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:27:08'),
(667, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:27:08'),
(668, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:27:08'),
(669, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:27:10'),
(670, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:27:14'),
(671, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:27:15'),
(672, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:27:16'),
(673, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:27:16'),
(674, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:27:17'),
(675, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:27:17'),
(676, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:27:18'),
(677, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:27:21'),
(678, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:27:23'),
(679, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 11:27:28'),
(680, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:05:38'),
(681, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:05:47'),
(682, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:05:50'),
(683, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:05:51'),
(684, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:05:52'),
(685, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:05:53'),
(686, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:05:53'),
(687, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:05:54'),
(688, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:05:56'),
(689, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:05:59'),
(690, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:06:01'),
(691, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:06:04'),
(692, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:06:05'),
(693, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:06:05'),
(694, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:06:05'),
(695, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:06:05'),
(696, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:06:05'),
(697, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:06:07'),
(698, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:06:10'),
(699, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:06:11'),
(700, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:06:11'),
(701, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:06:11'),
(702, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:06:16'),
(703, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 13:20:57'),
(704, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:02:35'),
(705, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:02:37'),
(706, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:02:37'),
(707, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:02:37'),
(708, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:02:37'),
(709, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:02:37'),
(710, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:02:39'),
(711, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:02:42'),
(712, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:02:42'),
(713, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:02:43'),
(714, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:02:44'),
(715, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:02:45'),
(716, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:02:46'),
(717, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:02:47'),
(718, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:02:47'),
(719, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:06:21'),
(720, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:06:22'),
(721, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:06:23'),
(722, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:06:24'),
(723, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:06:24'),
(724, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:06:25'),
(725, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:06:26'),
(726, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:13:58'),
(727, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:14:07'),
(728, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:14:10'),
(729, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:14:11'),
(730, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:14:12'),
(731, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:14:12'),
(732, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:14:13'),
(733, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:14:14'),
(734, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:14:14'),
(735, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:14:17'),
(736, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:14:18'),
(737, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:14:18'),
(738, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:14:18'),
(739, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:14:18');
INSERT INTO `access_logs` (`id`, `user_id`, `action`, `ip_address`, `user_agent`, `browser`, `device`, `timestamp`) VALUES
(740, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:14:18'),
(741, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:14:27'),
(742, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:14:30'),
(743, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:21:30'),
(744, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:27:06'),
(745, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:27:58'),
(746, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:00'),
(747, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:01'),
(748, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:01'),
(749, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:02'),
(750, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:02'),
(751, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:03'),
(752, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:03'),
(753, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:03'),
(754, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:04'),
(755, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:05'),
(756, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:16'),
(757, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:18'),
(758, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:19'),
(759, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:19'),
(760, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:19'),
(761, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:19'),
(762, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:19'),
(763, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:20'),
(764, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:20'),
(765, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:20'),
(766, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:20'),
(767, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:20'),
(768, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:22'),
(769, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:23'),
(770, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:23'),
(771, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:26'),
(772, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:27'),
(773, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:27'),
(774, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:27'),
(775, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:27'),
(776, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:28:27'),
(777, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:29:12'),
(778, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:29:13'),
(779, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:29:13'),
(780, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:29:13'),
(781, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:29:15'),
(782, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:29:15'),
(783, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:29:15'),
(784, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:29:15'),
(785, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:29:15'),
(786, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:29:15'),
(787, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:30:49'),
(788, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:30:49'),
(789, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:30:49'),
(790, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:30:49'),
(791, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:30:49'),
(792, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:30:51'),
(793, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 14:46:25'),
(794, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:25:47'),
(795, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:25:54'),
(796, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:25:57'),
(797, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:26:11'),
(798, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:26:11'),
(799, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:26:11'),
(800, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:26:11'),
(801, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:26:11'),
(802, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:26:13'),
(803, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:26:16'),
(804, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:26:46'),
(805, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:26:55'),
(806, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:26:58'),
(807, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:26:59'),
(808, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:00'),
(809, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:01'),
(810, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:01'),
(811, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:02'),
(812, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:02'),
(813, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:04'),
(814, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:06'),
(815, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:08'),
(816, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:09'),
(817, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:09'),
(818, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:10'),
(819, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:12'),
(820, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:17'),
(821, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:20'),
(822, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:22'),
(823, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:29'),
(824, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:43'),
(825, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:44'),
(826, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:44'),
(827, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:44'),
(828, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:44'),
(829, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:44'),
(830, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:45'),
(831, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:27:47'),
(832, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', 'Chrome', 'Mobile', '2025-12-17 15:33:05'),
(833, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', 'Chrome', 'Mobile', '2025-12-17 15:34:05'),
(834, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:34:58'),
(835, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:34:58'),
(836, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:34:58'),
(837, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:34:58'),
(838, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:34:58'),
(839, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:35:00'),
(840, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:38:34'),
(841, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:38:35'),
(842, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:38:36'),
(843, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:38:37'),
(844, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:38:37'),
(845, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:38:38'),
(846, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:38:39'),
(847, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-17 15:38:43'),
(848, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', 'Chrome', 'Mobile', '2025-12-17 15:41:06'),
(849, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', 'Chrome', 'Mobile', '2025-12-17 15:45:32'),
(850, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:52:46'),
(851, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:52:57'),
(852, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:52:59'),
(853, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:52:59'),
(854, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:52:59'),
(855, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:52:59'),
(856, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:52:59'),
(857, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:52:59'),
(858, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:53:02'),
(859, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:53:05'),
(860, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:53:07'),
(861, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:53:07'),
(862, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:53:07'),
(863, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:55:19'),
(864, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:55:40'),
(865, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:55:40'),
(866, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:55:40'),
(867, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:55:40'),
(868, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:55:40'),
(869, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:55:43'),
(870, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:55:46'),
(871, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:55:46'),
(872, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:55:46'),
(873, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:55:46'),
(874, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:55:46'),
(875, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:55:50'),
(876, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:55:53'),
(877, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:55:54'),
(878, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:55:54'),
(879, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:55:54'),
(880, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:55:54'),
(881, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:55:54'),
(882, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:55:56'),
(883, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:56:03'),
(884, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:56:04'),
(885, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:56:05'),
(886, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:56:05'),
(887, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:56:06'),
(888, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:56:07'),
(889, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:56:08'),
(890, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:56:09'),
(891, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:56:11'),
(892, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:56:15'),
(893, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:56:17'),
(894, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:56:22'),
(895, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:56:28'),
(896, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:56:32'),
(897, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:57:12'),
(898, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:57:12'),
(899, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:57:12'),
(900, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:57:13'),
(901, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:57:52'),
(902, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:57:52'),
(903, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:57:52'),
(904, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:57:52'),
(905, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:58:21'),
(906, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:58:24'),
(907, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:58:24'),
(908, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:58:24'),
(909, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:58:24'),
(910, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:58:24'),
(911, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:58:26'),
(912, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:58:28'),
(913, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:58:28'),
(914, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:58:28'),
(915, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 06:58:29'),
(916, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 07:00:01'),
(917, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 07:00:01'),
(918, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 07:00:01'),
(919, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 07:00:03'),
(920, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 07:01:05'),
(921, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 07:01:07'),
(922, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:02:09'),
(923, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:03:31'),
(924, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:03:34'),
(925, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:03:35'),
(926, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:03:36'),
(927, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:03:37'),
(928, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:03:37'),
(929, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:03:46'),
(930, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:04:44'),
(931, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:04:50'),
(932, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:04:51'),
(933, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:05:03'),
(934, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:05:03'),
(935, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:05:03'),
(936, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:05:03'),
(937, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:05:03'),
(938, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:05:06'),
(939, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:05:07'),
(940, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:05:07'),
(941, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:05:07'),
(942, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:05:07'),
(943, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:05:07'),
(944, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:05:09'),
(945, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:20:20'),
(946, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:20:22'),
(947, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:20:24'),
(948, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:20:32'),
(949, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:20:44'),
(950, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:20:52'),
(951, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:20:52'),
(952, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:20:53'),
(953, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:21:00'),
(954, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:24:52'),
(955, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:24:55'),
(956, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:24:57'),
(957, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:25:16'),
(958, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:27:43'),
(959, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:27:50'),
(960, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:27:54'),
(961, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:33:40'),
(962, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:33:42'),
(963, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:33:47'),
(964, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:33:58'),
(965, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:34:02'),
(966, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:34:08'),
(967, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:35:54'),
(968, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:35:55'),
(969, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:35:56'),
(970, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:35:57'),
(971, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:35:58'),
(972, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:36:01'),
(973, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:36:02'),
(974, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:36:03'),
(975, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:36:11'),
(976, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:36:11'),
(977, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:36:26'),
(978, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:36:28'),
(979, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:36:54'),
(980, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:36:54'),
(981, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:36:56'),
(982, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:36:57'),
(983, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:36:57'),
(984, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:36:58'),
(985, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:37:02');
INSERT INTO `access_logs` (`id`, `user_id`, `action`, `ip_address`, `user_agent`, `browser`, `device`, `timestamp`) VALUES
(986, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:37:03'),
(987, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:37:04'),
(988, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:37:05'),
(989, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:37:05'),
(990, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:37:06'),
(991, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:41:01'),
(992, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:41:05'),
(993, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:41:05'),
(994, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:42:26'),
(995, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:42:28'),
(996, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:42:32'),
(997, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:42:36'),
(998, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:42:37'),
(999, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:42:39'),
(1000, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:42:42'),
(1001, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:42:42'),
(1002, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:42:43'),
(1003, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:42:43'),
(1004, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:42:44'),
(1005, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:42:47'),
(1006, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:42:56'),
(1007, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:43:00'),
(1008, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:43:10'),
(1009, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:43:11'),
(1010, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:43:14'),
(1011, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:43:21'),
(1012, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:43:26'),
(1013, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:43:33'),
(1014, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:43:35'),
(1015, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:43:35'),
(1016, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:43:36'),
(1017, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:43:38'),
(1018, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:43:43'),
(1019, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:43:44'),
(1020, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:43:47'),
(1021, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:43:48'),
(1022, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:43:48'),
(1023, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:43:48'),
(1024, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:53:04'),
(1025, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:53:05'),
(1026, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:54:42'),
(1027, 7, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0', 'Chrome', 'Desktop', '2025-12-18 08:54:43'),
(1028, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 10:50:08'),
(1029, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 10:50:20'),
(1030, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 10:50:24'),
(1031, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 10:50:26'),
(1032, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 10:50:27'),
(1033, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 10:50:28'),
(1034, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 10:50:28'),
(1035, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 10:50:32'),
(1036, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 10:50:36'),
(1037, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 10:50:36'),
(1038, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 10:50:36'),
(1039, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 10:51:54'),
(1040, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 10:52:05'),
(1041, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 10:52:12'),
(1042, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 10:52:14'),
(1043, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 10:52:20'),
(1044, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 10:52:27'),
(1045, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 10:53:48'),
(1046, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 10:53:48'),
(1047, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 10:53:48'),
(1048, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 10:53:52'),
(1049, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:04:42'),
(1050, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:04:43'),
(1051, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:04:43'),
(1052, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:04:43'),
(1053, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:04:43'),
(1054, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:04:45'),
(1055, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:04:50'),
(1056, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:04:50'),
(1057, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:07:45'),
(1058, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:07:45'),
(1059, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:07:45'),
(1060, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:08:17'),
(1061, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:08:19'),
(1062, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:08:22'),
(1063, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:16:32'),
(1064, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:16:36'),
(1065, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:16:36'),
(1066, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:16:36'),
(1067, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:16:53'),
(1068, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:16:55'),
(1069, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:17:03'),
(1070, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:17:38'),
(1071, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:17:41'),
(1072, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:17:43'),
(1073, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:18:29'),
(1074, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:49:54'),
(1075, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:49:56'),
(1076, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:50:02'),
(1077, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:50:04'),
(1078, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:50:09'),
(1079, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:50:09'),
(1080, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:50:10'),
(1081, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:50:11'),
(1082, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:50:11'),
(1083, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:50:12'),
(1084, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:50:12'),
(1085, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:50:13'),
(1086, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:50:14'),
(1087, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:50:14'),
(1088, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:50:15'),
(1089, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:50:15'),
(1090, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:50:16'),
(1091, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:50:16'),
(1092, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:50:35'),
(1093, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:50:35'),
(1094, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:50:35'),
(1095, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:50:35'),
(1096, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:50:35'),
(1097, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 11:50:38'),
(1098, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:15:22'),
(1099, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:15:23'),
(1100, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:15:25'),
(1101, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:15:25'),
(1102, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:15:28'),
(1103, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:15:30'),
(1104, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:15:36'),
(1105, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:15:36'),
(1106, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:15:39'),
(1107, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:15:41'),
(1108, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:16:28'),
(1109, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:16:28'),
(1110, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:16:28'),
(1111, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:16:28'),
(1112, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:16:28'),
(1113, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:16:30'),
(1114, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:16:33'),
(1115, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:16:36'),
(1116, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:17:19'),
(1117, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:17:23'),
(1118, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:17:41'),
(1119, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:18:17'),
(1120, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:19:23'),
(1121, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:19:25'),
(1122, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:21:42'),
(1123, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:21:42'),
(1124, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:21:42'),
(1125, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:21:42'),
(1126, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:21:42'),
(1127, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:21:54'),
(1128, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:21:54'),
(1129, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:21:54'),
(1130, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:21:56'),
(1131, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:21:59'),
(1132, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:22:55'),
(1133, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:25:20'),
(1134, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:25:20'),
(1135, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:25:20'),
(1136, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:26:15'),
(1137, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:26:18'),
(1138, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:26:25'),
(1139, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:39:14'),
(1140, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:40:50'),
(1141, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:41:03'),
(1142, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:41:05'),
(1143, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:41:07'),
(1144, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:41:13'),
(1145, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:42:09'),
(1146, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:42:12'),
(1147, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:42:39'),
(1148, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:42:42'),
(1149, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:42:59'),
(1150, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:42:59'),
(1151, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:43:01'),
(1152, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:46:39'),
(1153, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:46:39'),
(1154, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:46:39'),
(1155, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:46:39'),
(1156, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:46:39'),
(1157, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:46:42'),
(1158, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:51:14'),
(1159, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:51:17'),
(1160, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:53:53'),
(1161, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:53:53'),
(1162, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:53:53'),
(1163, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:53:55'),
(1164, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:53:57'),
(1165, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:55:00'),
(1166, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:55:10'),
(1167, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:55:45'),
(1168, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:55:49'),
(1169, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:55:51'),
(1170, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:55:53'),
(1171, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:56:04'),
(1172, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:56:43'),
(1173, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:56:47'),
(1174, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:56:50'),
(1175, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:57:38'),
(1176, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 13:59:46'),
(1177, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:01:13'),
(1178, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:01:47'),
(1179, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:01:50'),
(1180, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:01:52'),
(1181, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:02:24'),
(1182, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:02:26'),
(1183, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:09:25'),
(1184, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:09:30'),
(1185, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:09:33'),
(1186, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:09:39'),
(1187, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:09:42'),
(1188, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:09:47'),
(1189, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:09:49'),
(1190, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:09:52'),
(1191, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:09:52'),
(1192, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:09:52'),
(1193, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:09:56'),
(1194, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:10:00'),
(1195, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:10:02'),
(1196, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:10:09'),
(1197, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:10:12'),
(1198, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:10:15'),
(1199, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:10:17'),
(1200, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:10:19'),
(1201, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:10:22'),
(1202, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:10:24'),
(1203, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:10:27'),
(1204, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:10:28'),
(1205, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:10:31'),
(1206, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:10:32'),
(1207, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:10:34'),
(1208, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:10:39'),
(1209, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:10:43'),
(1210, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:10:47'),
(1211, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:10:49'),
(1212, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:10:53'),
(1213, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:10:55'),
(1214, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:10:57'),
(1215, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:11:02'),
(1216, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:11:04'),
(1217, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:11:47'),
(1218, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:11:56'),
(1219, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:12:00'),
(1220, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:12:05'),
(1221, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:12:07'),
(1222, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:12:09'),
(1223, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:12:11'),
(1224, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:12:12'),
(1225, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:12:12'),
(1226, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:12:12'),
(1227, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:13:05'),
(1228, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:13:13'),
(1229, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:13:13'),
(1230, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:13:13'),
(1231, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:13:17'),
(1232, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:13:18'),
(1233, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:13:20'),
(1234, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:13:21'),
(1235, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:13:24'),
(1236, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:13:27'),
(1237, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:13:30'),
(1238, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:13:32'),
(1239, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:13:36'),
(1240, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:14:01'),
(1241, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:14:08'),
(1242, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:14:28'),
(1243, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:15:08'),
(1244, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:15:14'),
(1245, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:16:37');
INSERT INTO `access_logs` (`id`, `user_id`, `action`, `ip_address`, `user_agent`, `browser`, `device`, `timestamp`) VALUES
(1246, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:16:37'),
(1247, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:17:42'),
(1248, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:21:03'),
(1249, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:21:04'),
(1250, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:21:06'),
(1251, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:21:08'),
(1252, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:21:12'),
(1253, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:21:14'),
(1254, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:21:14'),
(1255, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:21:14'),
(1256, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:21:14'),
(1257, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:21:23'),
(1258, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:21:28'),
(1259, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:21:35'),
(1260, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:21:37'),
(1261, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:21:41'),
(1262, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:21:46'),
(1263, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:21:49'),
(1264, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:21:50'),
(1265, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:21:52'),
(1266, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:21:52'),
(1267, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:21:52'),
(1268, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:21:57'),
(1269, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:21:58'),
(1270, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:22:02'),
(1271, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:22:07'),
(1272, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:22:15'),
(1273, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:22:42'),
(1274, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:23:12'),
(1275, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:23:38'),
(1276, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:25:02'),
(1277, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:25:02'),
(1278, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:25:02'),
(1279, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:25:13'),
(1280, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:25:36'),
(1281, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:25:55'),
(1282, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:25:57'),
(1283, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:26:00'),
(1284, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:26:12'),
(1285, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:26:21'),
(1286, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:26:24'),
(1287, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:26:38'),
(1288, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:26:49'),
(1289, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:26:54'),
(1290, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:27:01'),
(1291, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:27:06'),
(1292, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:27:07'),
(1293, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:27:13'),
(1294, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:27:16'),
(1295, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:27:23'),
(1296, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:27:28'),
(1297, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:27:47'),
(1298, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:27:48'),
(1299, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:27:48'),
(1300, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:27:53'),
(1301, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:27:55'),
(1302, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:28:13'),
(1303, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:28:16'),
(1304, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:30:24'),
(1305, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:30:27'),
(1306, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:31:16'),
(1307, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:31:20'),
(1308, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:31:22'),
(1309, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:31:29'),
(1310, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:31:32'),
(1311, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:31:32'),
(1312, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:31:32'),
(1313, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:31:35'),
(1314, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:31:40'),
(1315, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:31:43'),
(1316, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:41:52'),
(1317, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:41:53'),
(1318, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:41:53'),
(1319, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:42:16'),
(1320, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:42:16'),
(1321, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:42:16'),
(1322, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:43:06'),
(1323, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:43:15'),
(1324, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:43:15'),
(1325, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:43:15'),
(1326, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:43:18'),
(1327, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:43:18'),
(1328, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:43:22'),
(1329, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:43:25'),
(1330, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:43:28'),
(1331, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:43:49'),
(1332, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:43:49'),
(1333, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:43:49'),
(1334, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:43:53'),
(1335, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:45:10'),
(1336, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:45:10'),
(1337, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:45:10'),
(1338, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:45:11'),
(1339, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:45:11'),
(1340, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:45:11'),
(1341, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:46:00'),
(1342, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:46:54'),
(1343, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:46:55'),
(1344, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:47:00'),
(1345, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:47:05'),
(1346, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:47:07'),
(1347, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 14:47:09'),
(1348, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:00:15'),
(1349, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:00:16'),
(1350, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:03:12'),
(1351, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:03:12'),
(1352, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:03:12'),
(1353, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:03:16'),
(1354, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:03:17'),
(1355, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:03:18'),
(1356, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:03:21'),
(1357, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:03:21'),
(1358, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:03:21'),
(1359, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:03:55'),
(1360, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:04:30'),
(1361, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:04:40'),
(1362, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:06:30'),
(1363, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:07:45'),
(1364, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:07:49'),
(1365, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:12:59'),
(1366, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:13:05'),
(1367, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:13:08'),
(1368, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:13:12'),
(1369, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:13:12'),
(1370, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:13:12'),
(1371, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:13:48'),
(1372, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:13:50'),
(1373, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:13:51'),
(1374, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:13:53'),
(1375, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:14:24'),
(1376, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:14:26'),
(1377, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:14:26'),
(1378, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:14:29'),
(1379, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:14:35'),
(1380, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:14:35'),
(1381, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:14:35'),
(1382, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:14:39'),
(1383, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:14:43'),
(1384, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:14:49'),
(1385, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:14:49'),
(1386, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:14:49'),
(1387, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:15:00'),
(1388, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:15:01'),
(1389, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:15:02'),
(1390, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:15:05'),
(1391, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:15:05'),
(1392, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:15:05'),
(1393, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:15:07'),
(1394, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:16:06'),
(1395, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:16:07'),
(1396, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:16:10'),
(1397, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:16:10'),
(1398, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:16:10'),
(1399, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:16:23'),
(1400, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:16:24'),
(1401, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:16:25'),
(1402, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:16:59'),
(1403, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:16:59'),
(1404, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:16:59'),
(1405, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:17:23'),
(1406, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:17:24'),
(1407, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:17:25'),
(1408, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:22:58'),
(1409, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:22:59'),
(1410, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:23:21'),
(1411, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:23:23'),
(1412, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:23:26'),
(1413, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:23:42'),
(1414, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:24:10'),
(1415, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:24:12'),
(1416, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:26:29'),
(1417, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:26:30'),
(1418, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:26:30'),
(1419, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:26:34'),
(1420, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:27:00'),
(1421, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:27:04'),
(1422, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:27:08'),
(1423, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:27:08'),
(1424, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:27:08'),
(1425, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:27:09'),
(1426, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:27:10'),
(1427, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:27:18'),
(1428, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:27:20'),
(1429, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:27:27'),
(1430, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:30:34'),
(1431, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:30:35'),
(1432, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:30:36'),
(1433, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:30:36'),
(1434, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:30:36'),
(1435, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:30:46'),
(1436, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:30:53'),
(1437, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:30:58'),
(1438, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:31:47'),
(1439, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:32:04'),
(1440, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:32:05'),
(1441, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:32:05'),
(1442, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:33:17'),
(1443, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:33:19'),
(1444, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:33:20'),
(1445, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:34:19'),
(1446, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:34:21'),
(1447, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:34:23'),
(1448, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:34:29'),
(1449, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:34:31'),
(1450, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:39:41'),
(1451, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:39:42'),
(1452, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:39:43'),
(1453, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:39:53'),
(1454, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:39:55'),
(1455, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:39:56'),
(1456, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:40:00'),
(1457, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:40:04'),
(1458, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:40:06'),
(1459, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:40:14'),
(1460, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:40:15'),
(1461, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:40:15'),
(1462, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:40:15'),
(1463, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:40:30'),
(1464, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:40:32'),
(1465, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:40:40'),
(1466, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:40:43'),
(1467, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:40:44'),
(1468, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:40:46'),
(1469, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:40:54'),
(1470, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:40:56'),
(1471, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:41:00'),
(1472, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:41:02'),
(1473, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:41:05'),
(1474, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:41:06'),
(1475, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:41:08'),
(1476, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:41:15'),
(1477, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:41:16'),
(1478, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:41:20'),
(1479, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:41:20'),
(1480, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:41:20'),
(1481, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:41:24'),
(1482, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:45:00'),
(1483, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:45:01'),
(1484, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:45:01'),
(1485, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:45:06'),
(1486, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:45:08'),
(1487, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:45:10'),
(1488, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:45:15'),
(1489, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:45:19'),
(1490, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:45:22'),
(1491, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:45:25'),
(1492, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:45:29'),
(1493, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:45:32'),
(1494, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:45:34'),
(1495, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:46:45'),
(1496, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:46:45'),
(1497, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:46:47'),
(1498, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:46:51'),
(1499, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:46:56'),
(1500, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:46:56'),
(1501, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:46:57'),
(1502, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:46:57'),
(1503, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:46:57'),
(1504, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:47:27'),
(1505, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:47:29'),
(1506, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:47:37'),
(1507, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:47:42'),
(1508, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:47:45');
INSERT INTO `access_logs` (`id`, `user_id`, `action`, `ip_address`, `user_agent`, `browser`, `device`, `timestamp`) VALUES
(1509, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:47:53'),
(1510, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:47:55'),
(1511, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:47:57'),
(1512, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:48:03'),
(1513, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:48:07'),
(1514, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:48:11'),
(1515, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:48:17'),
(1516, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:48:19'),
(1517, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:48:25'),
(1518, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:48:26'),
(1519, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:48:31'),
(1520, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:48:34'),
(1521, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:48:38'),
(1522, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:48:39'),
(1523, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:48:42'),
(1524, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:48:42'),
(1525, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:48:42'),
(1526, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:48:45'),
(1527, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:48:47'),
(1528, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:48:52'),
(1529, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:48:54'),
(1530, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:48:55'),
(1531, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:48:56'),
(1532, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:48:59'),
(1533, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:49:11'),
(1534, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:49:26'),
(1535, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:49:31'),
(1536, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:49:58'),
(1537, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:49:58'),
(1538, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:50:07'),
(1539, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:50:07'),
(1540, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:50:09'),
(1541, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:50:10'),
(1542, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:50:17'),
(1543, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:50:21'),
(1544, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:50:21'),
(1545, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:50:22'),
(1546, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:50:24'),
(1547, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:50:24'),
(1548, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:50:25'),
(1549, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:50:25'),
(1550, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:50:25'),
(1551, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:50:30'),
(1552, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:50:31'),
(1553, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:50:31'),
(1554, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:50:31'),
(1555, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:50:31'),
(1556, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:50:38'),
(1557, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:50:40'),
(1558, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:50:40'),
(1559, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:50:42'),
(1560, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:50:42'),
(1561, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:50:42'),
(1562, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:50:45'),
(1563, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:50:51'),
(1564, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:50:53'),
(1565, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:50:55'),
(1566, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:50:55'),
(1567, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:50:57'),
(1568, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:50:58'),
(1569, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:50:59'),
(1570, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:51:01'),
(1571, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:51:01'),
(1572, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:51:04'),
(1573, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:51:05'),
(1574, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:51:06'),
(1575, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:51:06'),
(1576, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:51:09'),
(1577, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:59:06'),
(1578, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:59:10'),
(1579, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:59:12'),
(1580, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:59:14'),
(1581, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:59:14'),
(1582, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:59:14'),
(1583, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:59:48'),
(1584, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:59:50'),
(1585, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:59:55'),
(1586, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:59:58'),
(1587, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 15:59:59'),
(1588, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:00:01'),
(1589, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:00:03'),
(1590, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:00:09'),
(1591, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:00:12'),
(1592, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:00:13'),
(1593, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:00:14'),
(1594, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:00:16'),
(1595, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:00:17'),
(1596, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:00:18'),
(1597, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:00:19'),
(1598, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:00:23'),
(1599, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:00:57'),
(1600, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:00:57'),
(1601, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:00:57'),
(1602, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:01:32'),
(1603, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:01:35'),
(1604, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:01:35'),
(1605, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:01:35'),
(1606, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:01:41'),
(1607, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:01:42'),
(1608, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:01:43'),
(1609, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:01:45'),
(1610, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:01:53'),
(1611, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:02:15'),
(1612, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:02:18'),
(1613, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:02:20'),
(1614, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:02:22'),
(1615, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:02:57'),
(1616, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:02:59'),
(1617, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:03:49'),
(1618, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:03:51'),
(1619, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:03:55'),
(1620, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:04:00'),
(1621, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:04:03'),
(1622, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:04:05'),
(1623, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:04:12'),
(1624, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:04:15'),
(1625, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:04:17'),
(1626, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:04:20'),
(1627, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:04:23'),
(1628, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:04:26'),
(1629, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:06:41'),
(1630, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:06:44'),
(1631, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:06:47'),
(1632, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:07:36'),
(1633, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:07:48'),
(1634, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:07:49'),
(1635, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:07:49'),
(1636, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:07:49'),
(1637, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:07:49'),
(1638, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:07:54'),
(1639, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:07:54'),
(1640, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:07:57'),
(1641, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:07:59'),
(1642, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:07:59'),
(1643, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:07:59'),
(1644, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:07:59'),
(1645, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:08:26'),
(1646, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:08:26'),
(1647, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:08:26'),
(1648, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:08:27'),
(1649, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:08:29'),
(1650, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:08:31'),
(1651, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:08:32'),
(1652, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:08:36'),
(1653, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:08:38'),
(1654, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:08:38'),
(1655, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:08:38'),
(1656, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:08:38'),
(1657, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:08:41'),
(1658, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:08:43'),
(1659, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:08:44'),
(1660, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:08:48'),
(1661, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:08:50'),
(1662, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:08:50'),
(1663, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:08:50'),
(1664, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:08:50'),
(1665, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:10:07'),
(1666, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:10:09'),
(1667, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:10:11'),
(1668, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:10:19'),
(1669, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:10:19'),
(1670, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:10:22'),
(1671, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:10:24'),
(1672, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:10:25'),
(1673, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:10:25'),
(1674, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:10:25'),
(1675, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:10:57'),
(1676, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:10:59'),
(1677, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:11:02'),
(1678, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:11:13'),
(1679, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:11:13'),
(1680, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:11:13'),
(1681, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:11:13'),
(1682, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:12:52'),
(1683, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:12:54'),
(1684, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:12:55'),
(1685, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:15:31'),
(1686, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:15:32'),
(1687, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:15:34'),
(1688, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:15:38'),
(1689, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:15:38'),
(1690, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:15:38'),
(1691, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:15:38'),
(1692, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:15:46'),
(1693, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:15:47'),
(1694, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:15:50'),
(1695, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:15:55'),
(1696, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:15:55'),
(1697, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:15:55'),
(1698, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:15:55'),
(1699, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:17:20'),
(1700, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:17:22'),
(1701, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:17:26'),
(1702, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:17:31'),
(1703, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:17:34'),
(1704, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:17:36'),
(1705, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:17:36'),
(1706, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:17:36'),
(1707, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:17:36'),
(1708, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:17:39'),
(1709, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:17:41'),
(1710, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:17:44'),
(1711, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:17:52'),
(1712, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:17:52'),
(1713, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:17:52'),
(1714, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:17:52'),
(1715, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:18:28'),
(1716, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:18:30'),
(1717, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:18:33'),
(1718, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:18:33'),
(1719, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:18:33'),
(1720, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:18:35'),
(1721, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:18:37'),
(1722, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:18:40'),
(1723, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:18:40'),
(1724, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:18:40'),
(1725, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:18:40'),
(1726, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:18:54'),
(1727, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:18:55'),
(1728, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:18:55'),
(1729, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:18:55'),
(1730, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:19:02'),
(1731, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:19:18'),
(1732, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:19:18'),
(1733, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:19:18'),
(1734, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:19:20'),
(1735, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:19:22'),
(1736, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:19:23'),
(1737, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:19:26'),
(1738, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:19:28'),
(1739, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:19:29'),
(1740, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:19:29'),
(1741, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:19:29'),
(1742, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:19:29'),
(1743, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:19:37'),
(1744, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:20:04'),
(1745, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:20:07'),
(1746, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:20:08'),
(1747, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:20:08'),
(1748, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:20:08'),
(1749, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:20:08'),
(1750, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:21:37'),
(1751, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:21:39'),
(1752, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:21:42'),
(1753, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:21:44'),
(1754, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:21:53'),
(1755, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', 'Chrome', 'Mobile', '2025-12-18 16:22:58'),
(1756, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', 'Chrome', 'Mobile', '2025-12-18 16:23:04'),
(1757, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', 'Chrome', 'Mobile', '2025-12-18 16:23:04'),
(1758, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', 'Chrome', 'Mobile', '2025-12-18 16:23:04'),
(1759, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', 'Chrome', 'Mobile', '2025-12-18 16:23:04'),
(1760, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', 'Chrome', 'Mobile', '2025-12-18 16:25:47'),
(1761, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', 'Chrome', 'Mobile', '2025-12-18 16:25:47'),
(1762, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', 'Chrome', 'Mobile', '2025-12-18 16:25:47'),
(1763, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', 'Chrome', 'Mobile', '2025-12-18 16:25:47'),
(1764, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', 'Chrome', 'Mobile', '2025-12-18 16:25:51'),
(1765, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:26:01'),
(1766, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:26:02'),
(1767, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:26:04'),
(1768, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:26:04'),
(1769, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:26:04'),
(1770, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:26:07');
INSERT INTO `access_logs` (`id`, `user_id`, `action`, `ip_address`, `user_agent`, `browser`, `device`, `timestamp`) VALUES
(1771, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:26:08'),
(1772, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:26:08'),
(1773, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:26:08'),
(1774, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:26:08'),
(1775, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:26:44'),
(1776, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:26:45'),
(1777, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:26:45'),
(1778, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:26:45'),
(1779, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:26:47'),
(1780, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:26:51'),
(1781, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:26:54'),
(1782, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:29:32'),
(1783, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:29:32'),
(1784, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:29:32'),
(1785, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:29:32'),
(1786, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:29:33'),
(1787, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:29:33'),
(1788, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:29:33'),
(1789, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:29:37'),
(1790, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:29:39'),
(1791, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:29:39'),
(1792, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:29:39'),
(1793, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:29:39'),
(1794, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:30:22'),
(1795, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:30:24'),
(1796, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:30:27'),
(1797, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:30:33'),
(1798, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:30:37'),
(1799, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:30:38'),
(1800, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:30:38'),
(1801, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:30:38'),
(1802, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:30:38'),
(1803, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:30:45'),
(1804, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:30:46'),
(1805, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:30:49'),
(1806, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:30:53'),
(1807, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:30:53'),
(1808, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:30:53'),
(1809, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:30:53'),
(1810, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:31:09'),
(1811, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:31:10'),
(1812, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:31:13'),
(1813, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:31:16'),
(1814, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:31:21'),
(1815, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:31:21'),
(1816, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:31:21'),
(1817, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:31:21'),
(1818, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:31:49'),
(1819, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:31:51'),
(1820, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:31:53'),
(1821, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:32:00'),
(1822, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:32:05'),
(1823, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:32:05'),
(1824, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:32:05'),
(1825, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:32:05'),
(1826, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:32:10'),
(1827, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:32:12'),
(1828, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:32:14'),
(1829, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:32:29'),
(1830, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:33:10'),
(1831, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:33:12'),
(1832, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:33:12'),
(1833, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:33:12'),
(1834, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:33:12'),
(1835, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:33:27'),
(1836, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:33:28'),
(1837, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:33:30'),
(1838, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:33:33'),
(1839, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:33:35'),
(1840, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:33:38'),
(1841, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:35:26'),
(1842, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:35:27'),
(1843, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:35:27'),
(1844, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:35:27'),
(1845, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:35:27'),
(1846, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:35:28'),
(1847, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:35:46'),
(1848, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:35:57'),
(1849, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:36:00'),
(1850, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:36:01'),
(1851, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:36:03'),
(1852, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:36:04'),
(1853, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:36:54'),
(1854, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:36:56'),
(1855, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:37:59'),
(1856, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:38:00'),
(1857, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:38:02'),
(1858, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:38:04'),
(1859, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:39:57'),
(1860, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:39:57'),
(1861, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:39:57'),
(1862, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:39:59'),
(1863, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:40:03'),
(1864, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:40:06'),
(1865, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:40:06'),
(1866, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:40:08'),
(1867, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:40:10'),
(1868, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:40:10'),
(1869, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:40:10'),
(1870, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:40:10'),
(1871, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:40:42'),
(1872, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:40:44'),
(1873, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:40:48'),
(1874, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:40:49'),
(1875, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:40:49'),
(1876, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:40:51'),
(1877, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:40:53'),
(1878, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:40:53'),
(1879, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:40:53'),
(1880, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:40:53'),
(1881, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:41:01'),
(1882, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:41:03'),
(1883, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:41:05'),
(1884, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:41:25'),
(1885, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:41:30'),
(1886, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:41:31'),
(1887, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:41:31'),
(1888, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:41:31'),
(1889, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:41:31'),
(1890, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:41:46'),
(1891, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:41:47'),
(1892, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:41:49'),
(1893, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:42:21'),
(1894, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:43:48'),
(1895, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:43:49'),
(1896, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:43:49'),
(1897, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:43:49'),
(1898, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:45:47'),
(1899, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:45:48'),
(1900, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:45:48'),
(1901, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:45:49'),
(1902, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:45:49'),
(1903, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:45:50'),
(1904, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:45:52'),
(1905, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:45:52'),
(1906, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:45:52'),
(1907, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:45:52'),
(1908, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:46:26'),
(1909, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:46:28'),
(1910, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:46:30'),
(1911, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:46:31'),
(1912, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:46:36'),
(1913, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:46:36'),
(1914, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:46:36'),
(1915, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:46:36'),
(1916, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:46:42'),
(1917, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:46:45'),
(1918, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:46:47'),
(1919, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:46:49'),
(1920, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:46:49'),
(1921, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:46:49'),
(1922, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:46:50'),
(1923, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:47:11'),
(1924, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:47:11'),
(1925, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:47:11'),
(1926, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:47:11'),
(1927, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:47:19'),
(1928, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:47:20'),
(1929, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:47:23'),
(1930, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:47:24'),
(1931, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:47:24'),
(1932, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:47:24'),
(1933, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:47:25'),
(1934, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:47:30'),
(1935, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:47:31'),
(1936, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:47:34'),
(1937, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:47:36'),
(1938, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:47:36'),
(1939, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:47:36'),
(1940, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:47:36'),
(1941, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:47:42'),
(1942, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:47:43'),
(1943, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:47:48'),
(1944, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:47:49'),
(1945, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:47:49'),
(1946, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:47:49'),
(1947, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:47:49'),
(1948, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:47:56'),
(1949, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:47:57'),
(1950, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:48:03'),
(1951, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:48:07'),
(1952, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:48:10'),
(1953, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:48:10'),
(1954, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:48:14'),
(1955, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:48:14'),
(1956, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:48:14'),
(1957, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:48:14'),
(1958, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:48:15'),
(1959, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:48:15'),
(1960, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:48:16'),
(1961, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:48:18'),
(1962, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:48:21'),
(1963, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:48:21'),
(1964, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:48:21'),
(1965, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:48:21'),
(1966, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:48:52'),
(1967, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:48:53'),
(1968, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:48:57'),
(1969, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:48:59'),
(1970, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:48:59'),
(1971, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:48:59'),
(1972, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:48:59'),
(1973, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:49:33'),
(1974, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:49:36'),
(1975, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:49:38'),
(1976, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:49:42'),
(1977, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:49:51'),
(1978, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:49:57'),
(1979, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:49:57'),
(1980, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:49:57'),
(1981, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:49:59'),
(1982, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:50:02'),
(1983, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:50:06'),
(1984, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:50:06'),
(1985, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:50:06'),
(1986, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:50:06'),
(1987, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:50:07'),
(1988, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:50:08'),
(1989, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:50:12'),
(1990, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:50:42'),
(1991, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:50:45'),
(1992, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:50:47'),
(1993, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:50:49'),
(1994, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:50:50'),
(1995, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:50:52'),
(1996, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:50:54'),
(1997, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:50:56'),
(1998, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:51:06'),
(1999, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:51:12'),
(2000, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:51:16'),
(2001, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:51:18'),
(2002, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:51:18'),
(2003, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:51:18'),
(2004, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:51:19'),
(2005, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:51:23'),
(2006, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:51:26'),
(2007, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:51:35'),
(2008, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:51:40'),
(2009, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:51:40'),
(2010, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:51:40'),
(2011, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:51:40'),
(2012, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:51:57'),
(2013, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:52:08'),
(2014, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:52:15'),
(2015, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:52:17'),
(2016, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:52:21'),
(2017, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:52:24'),
(2018, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:52:24'),
(2019, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:52:24'),
(2020, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:52:24'),
(2021, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:52:33'),
(2022, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:52:34'),
(2023, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:52:37'),
(2024, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:52:39'),
(2025, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:52:39'),
(2026, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:52:39'),
(2027, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:52:39'),
(2028, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:52:46'),
(2029, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:52:47'),
(2030, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:52:51'),
(2031, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:53:07'),
(2032, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:53:07'),
(2033, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:53:07');
INSERT INTO `access_logs` (`id`, `user_id`, `action`, `ip_address`, `user_agent`, `browser`, `device`, `timestamp`) VALUES
(2034, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:53:07'),
(2035, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:53:20'),
(2036, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:53:22'),
(2037, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:53:24'),
(2038, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:56:48'),
(2039, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:56:48'),
(2040, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:56:51'),
(2041, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:56:51'),
(2042, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:56:51'),
(2043, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:56:51'),
(2044, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:57:05'),
(2045, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:57:12'),
(2046, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:57:14'),
(2047, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:57:17'),
(2048, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:57:19'),
(2049, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:57:19'),
(2050, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:57:19'),
(2051, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:57:19'),
(2052, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:57:35'),
(2053, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:57:37'),
(2054, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:57:40'),
(2055, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:58:02'),
(2056, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:58:02'),
(2057, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:58:02'),
(2058, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:58:02'),
(2059, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:58:32'),
(2060, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:58:33'),
(2061, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:58:35'),
(2062, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:58:43'),
(2063, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:58:43'),
(2064, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:58:43'),
(2065, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:58:43'),
(2066, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:59:03'),
(2067, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:59:05'),
(2068, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:59:08'),
(2069, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:59:09'),
(2070, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:59:09'),
(2071, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:59:09'),
(2072, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:59:09'),
(2073, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:59:30'),
(2074, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:59:31'),
(2075, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:59:33'),
(2076, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:59:36'),
(2077, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:59:36'),
(2078, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:59:36'),
(2079, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 16:59:36'),
(2080, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:00:33'),
(2081, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:00:35'),
(2082, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:00:37'),
(2083, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:00:43'),
(2084, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:00:43'),
(2085, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:00:43'),
(2086, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:00:43'),
(2087, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:02:28'),
(2088, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:02:30'),
(2089, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:02:32'),
(2090, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:04:01'),
(2091, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:04:03'),
(2092, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:04:06'),
(2093, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:04:21'),
(2094, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:04:38'),
(2095, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:04:40'),
(2096, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:04:41'),
(2097, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:04:41'),
(2098, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:04:41'),
(2099, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:04:41'),
(2100, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:04:54'),
(2101, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:04:56'),
(2102, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:04:57'),
(2103, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:05:02'),
(2104, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:05:02'),
(2105, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:05:02'),
(2106, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:05:02'),
(2107, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:05:07'),
(2108, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:05:26'),
(2109, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:05:28'),
(2110, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:08:17'),
(2111, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:08:23'),
(2112, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:08:26'),
(2113, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:55:03'),
(2114, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:55:03'),
(2115, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:55:14'),
(2116, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:55:17'),
(2117, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:55:17'),
(2118, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:55:17'),
(2119, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:55:17'),
(2120, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:55:27'),
(2121, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:55:29'),
(2122, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:55:32'),
(2123, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:55:35'),
(2124, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:55:35'),
(2125, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:55:35'),
(2126, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:55:35'),
(2127, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:56:19'),
(2128, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:56:21'),
(2129, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:56:23'),
(2130, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:56:30'),
(2131, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:56:30'),
(2132, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:56:30'),
(2133, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:56:30'),
(2134, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:56:36'),
(2135, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:56:40'),
(2136, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:56:43'),
(2137, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:56:45'),
(2138, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:56:46'),
(2139, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:57:01'),
(2140, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:59:41'),
(2141, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:59:56'),
(2142, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 17:59:58'),
(2143, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:00:00'),
(2144, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:00:00'),
(2145, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:00:00'),
(2146, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:00:03'),
(2147, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:00:06'),
(2148, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:00:12'),
(2149, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:00:15'),
(2150, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:00:17'),
(2151, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:00:17'),
(2152, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:00:17'),
(2153, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:00:33'),
(2154, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:00:33'),
(2155, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:00:33'),
(2156, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:00:39'),
(2157, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:00:39'),
(2158, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:00:39'),
(2159, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:00:39'),
(2160, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:00:39'),
(2161, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:00:39'),
(2162, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:00:39'),
(2163, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:00:39'),
(2164, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:00:39'),
(2165, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:02:16'),
(2166, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:02:17'),
(2167, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:02:20'),
(2168, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:02:53'),
(2169, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:02:53'),
(2170, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:02:53'),
(2171, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:02:54'),
(2172, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:05:29'),
(2173, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:05:32'),
(2174, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:05:35'),
(2175, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:05:40'),
(2176, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:05:43'),
(2177, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:11:12'),
(2178, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:11:13'),
(2179, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:12:28'),
(2180, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:12:28'),
(2181, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:12:32'),
(2182, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:12:33'),
(2183, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:12:34'),
(2184, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:12:37'),
(2185, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:12:41'),
(2186, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:12:44'),
(2187, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:12:46'),
(2188, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:12:52'),
(2189, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:12:55'),
(2190, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:13:20'),
(2191, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:13:23'),
(2192, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:13:28'),
(2193, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:13:31'),
(2194, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:13:33'),
(2195, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:13:39'),
(2196, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:13:40'),
(2197, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:13:41'),
(2198, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:13:45'),
(2199, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:13:46'),
(2200, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:13:49'),
(2201, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:13:51'),
(2202, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:14:10'),
(2203, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:14:12'),
(2204, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:14:16'),
(2205, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:15:20'),
(2206, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:15:21'),
(2207, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:15:22'),
(2208, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:15:25'),
(2209, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:17:08'),
(2210, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:17:09'),
(2211, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:17:11'),
(2212, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:17:47'),
(2213, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:17:47'),
(2214, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:17:49'),
(2215, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:17:52'),
(2216, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:17:54'),
(2217, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:17:54'),
(2218, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:17:54'),
(2219, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:17:54'),
(2220, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:18:00'),
(2221, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:18:01'),
(2222, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:18:02'),
(2223, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:18:07'),
(2224, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:18:28'),
(2225, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:18:41'),
(2226, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:18:41'),
(2227, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:18:41'),
(2228, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:18:44'),
(2229, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:18:47'),
(2230, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:18:50'),
(2231, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:19:05'),
(2232, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:19:11'),
(2233, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:19:17'),
(2234, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:19:17'),
(2235, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:19:17'),
(2236, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:19:17'),
(2237, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:19:28'),
(2238, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:19:30'),
(2239, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:19:33'),
(2240, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:19:34'),
(2241, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:19:36'),
(2242, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:19:36'),
(2243, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:19:36'),
(2244, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:19:36'),
(2245, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:19:52'),
(2246, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:19:53'),
(2247, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:19:55'),
(2248, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:21:17'),
(2249, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:21:18'),
(2250, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:21:20'),
(2251, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:21:20'),
(2252, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:21:20'),
(2253, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:21:20'),
(2254, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:21:27'),
(2255, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:21:28'),
(2256, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:23:08'),
(2257, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:23:12'),
(2258, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:23:12'),
(2259, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:23:12'),
(2260, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:23:12'),
(2261, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:23:32'),
(2262, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:23:43'),
(2263, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:23:45'),
(2264, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:23:51'),
(2265, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:23:51'),
(2266, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:23:51'),
(2267, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:23:51'),
(2268, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:24:03'),
(2269, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:24:04'),
(2270, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:24:06'),
(2271, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:25:19'),
(2272, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:25:19'),
(2273, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:25:19'),
(2274, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:25:19'),
(2275, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:25:29'),
(2276, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:25:30'),
(2277, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:25:32'),
(2278, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:25:56'),
(2279, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:25:56'),
(2280, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:25:56'),
(2281, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:25:56'),
(2282, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:38:28'),
(2283, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:38:31'),
(2284, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:38:32'),
(2285, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:38:40'),
(2286, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:42:22'),
(2287, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 18:42:25'),
(2288, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:02:16'),
(2289, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:02:26'),
(2290, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:02:34'),
(2291, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:02:36'),
(2292, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:02:42'),
(2293, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:02:45'),
(2294, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:02:56'),
(2295, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:03:11'),
(2296, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:03:13');
INSERT INTO `access_logs` (`id`, `user_id`, `action`, `ip_address`, `user_agent`, `browser`, `device`, `timestamp`) VALUES
(2297, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:03:13'),
(2298, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:03:17'),
(2299, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:03:51'),
(2300, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:03:51'),
(2301, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:03:51'),
(2302, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:03:51'),
(2303, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:04:08'),
(2304, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:04:10'),
(2305, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:04:13'),
(2306, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:05:11'),
(2307, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:05:11'),
(2308, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:05:11'),
(2309, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:05:11'),
(2310, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:05:27'),
(2311, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:05:29'),
(2312, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:05:31'),
(2313, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:06:45'),
(2314, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:06:45'),
(2315, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:06:45'),
(2316, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:06:46'),
(2317, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:06:55'),
(2318, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:06:56'),
(2319, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:06:58'),
(2320, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:07:07'),
(2321, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:07:07'),
(2322, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:07:07'),
(2323, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:07:07'),
(2324, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:07:17'),
(2325, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:07:19'),
(2326, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:07:21'),
(2327, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:09:11'),
(2328, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:09:12'),
(2329, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:09:17'),
(2330, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:09:24'),
(2331, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:09:28'),
(2332, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:09:42'),
(2333, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:09:42'),
(2334, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:09:42'),
(2335, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:10:27'),
(2336, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:10:28'),
(2337, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:10:32'),
(2338, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:10:34'),
(2339, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:10:35'),
(2340, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:11:20'),
(2341, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:12:03'),
(2342, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:12:04'),
(2343, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:12:10'),
(2344, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:12:23'),
(2345, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:12:23'),
(2346, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:12:23'),
(2347, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:12:23'),
(2348, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:12:53'),
(2349, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:12:55'),
(2350, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:12:57'),
(2351, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:12:59'),
(2352, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:13:04'),
(2353, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:13:10'),
(2354, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:13:11'),
(2355, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:13:13'),
(2356, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:13:24'),
(2357, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:13:24'),
(2358, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:13:24'),
(2359, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:13:24'),
(2360, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:13:31'),
(2361, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:13:32'),
(2362, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:13:32'),
(2363, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:15:30'),
(2364, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:15:32'),
(2365, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:15:36'),
(2366, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:15:36'),
(2367, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:15:36'),
(2368, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:15:36'),
(2369, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:15:51'),
(2370, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:15:53'),
(2371, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:15:55'),
(2372, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:15:57'),
(2373, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:15:57'),
(2374, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:15:57'),
(2375, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:15:57'),
(2376, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:16:35'),
(2377, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:16:36'),
(2378, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:16:38'),
(2379, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:17:49'),
(2380, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:17:49'),
(2381, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:17:50'),
(2382, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:17:50'),
(2383, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:17:51'),
(2384, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:17:51'),
(2385, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:17:51'),
(2386, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:17:53'),
(2387, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:18:00'),
(2388, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:18:03'),
(2389, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:18:03'),
(2390, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:18:03'),
(2391, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:18:03'),
(2392, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:18:08'),
(2393, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:18:09'),
(2394, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:22:23'),
(2395, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:22:25'),
(2396, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:22:27'),
(2397, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:22:27'),
(2398, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:22:27'),
(2399, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:22:27'),
(2400, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:22:37'),
(2401, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:22:39'),
(2402, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:22:41'),
(2403, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:22:50'),
(2404, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:22:50'),
(2405, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:22:50'),
(2406, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:23:07'),
(2407, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:23:09'),
(2408, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:23:18'),
(2409, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:23:30'),
(2410, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:23:30'),
(2411, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:23:30'),
(2412, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:23:30'),
(2413, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:24:03'),
(2414, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:24:04'),
(2415, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:24:26'),
(2416, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:26:05'),
(2417, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:26:05'),
(2418, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:26:07'),
(2419, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:26:09'),
(2420, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:26:09'),
(2421, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:26:09'),
(2422, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:26:09'),
(2423, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:26:42'),
(2424, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:26:44'),
(2425, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:26:51'),
(2426, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:26:51'),
(2427, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:27:03'),
(2428, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:27:13'),
(2429, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:27:13'),
(2430, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:27:13'),
(2431, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:27:13'),
(2432, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:27:15'),
(2433, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:27:41'),
(2434, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:27:47'),
(2435, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:27:50'),
(2436, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:27:50'),
(2437, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:27:50'),
(2438, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:27:50'),
(2439, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:28:08'),
(2440, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:28:09'),
(2441, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:28:16'),
(2442, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:28:27'),
(2443, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:28:31'),
(2444, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:29:08'),
(2445, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:29:11'),
(2446, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:29:14'),
(2447, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:29:14'),
(2448, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:29:14'),
(2449, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:29:14'),
(2450, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:29:29'),
(2451, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:29:37'),
(2452, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:29:40'),
(2453, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:29:44'),
(2454, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:29:46'),
(2455, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:29:46'),
(2456, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:29:46'),
(2457, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:29:46'),
(2458, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:30:01'),
(2459, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:30:02'),
(2460, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:30:35'),
(2461, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:30:36'),
(2462, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:30:38'),
(2463, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:30:39'),
(2464, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:30:39'),
(2465, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:30:39'),
(2466, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:30:39'),
(2467, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:30:58'),
(2468, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:31:00'),
(2469, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:31:34'),
(2470, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:31:35'),
(2471, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:31:35'),
(2472, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:31:36'),
(2473, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:31:38'),
(2474, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:31:38'),
(2475, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:31:38'),
(2476, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:31:38'),
(2477, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:32:01'),
(2478, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:32:03'),
(2479, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:32:52'),
(2480, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:32:55'),
(2481, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:32:56'),
(2482, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:32:56'),
(2483, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:32:56'),
(2484, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:32:57'),
(2485, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:32:59'),
(2486, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:33:00'),
(2487, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:33:02'),
(2488, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:33:06'),
(2489, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:33:09'),
(2490, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:33:12'),
(2491, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:33:12'),
(2492, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:33:12'),
(2493, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:33:12'),
(2494, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:34:04'),
(2495, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:34:06'),
(2496, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:34:10'),
(2497, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:34:11'),
(2498, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:34:11'),
(2499, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:34:11'),
(2500, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:34:11'),
(2501, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:34:38'),
(2502, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:34:39'),
(2503, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:34:44'),
(2504, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:34:44'),
(2505, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:34:47'),
(2506, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:34:53'),
(2507, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:34:53'),
(2508, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:34:56'),
(2509, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:34:56'),
(2510, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:34:58'),
(2511, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:34:59'),
(2512, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:35:02'),
(2513, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:35:05'),
(2514, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:35:05'),
(2515, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:35:05'),
(2516, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:35:05'),
(2517, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:35:18'),
(2518, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:35:19'),
(2519, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:35:22'),
(2520, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:35:24'),
(2521, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:35:24'),
(2522, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:35:24'),
(2523, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:35:24'),
(2524, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:35:34'),
(2525, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:35:36'),
(2526, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:35:40'),
(2527, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:35:43'),
(2528, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:35:43'),
(2529, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:35:43'),
(2530, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:35:43'),
(2531, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:36:45'),
(2532, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:36:47'),
(2533, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:36:49'),
(2534, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:36:54'),
(2535, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:36:54'),
(2536, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:36:54'),
(2537, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:36:54'),
(2538, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:37:10'),
(2539, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:37:13'),
(2540, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:37:32'),
(2541, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:37:42'),
(2542, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:45:14'),
(2543, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:45:14'),
(2544, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:45:16'),
(2545, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:45:19'),
(2546, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:45:21'),
(2547, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:45:21'),
(2548, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:45:21'),
(2549, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:45:55'),
(2550, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:45:57'),
(2551, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:46:00'),
(2552, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:46:15'),
(2553, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:46:15'),
(2554, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:46:15'),
(2555, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:46:15'),
(2556, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:47:01'),
(2557, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:47:03'),
(2558, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:47:34'),
(2559, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:49:24');
INSERT INTO `access_logs` (`id`, `user_id`, `action`, `ip_address`, `user_agent`, `browser`, `device`, `timestamp`) VALUES
(2560, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:49:25'),
(2561, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:49:36'),
(2562, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:53:45'),
(2563, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:54:43'),
(2564, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:54:44'),
(2565, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:54:47'),
(2566, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:54:47'),
(2567, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:54:49'),
(2568, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:54:49'),
(2569, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:54:49'),
(2570, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:55:36'),
(2571, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:55:38'),
(2572, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:55:45'),
(2573, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:56:20'),
(2574, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:56:24'),
(2575, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:56:43'),
(2576, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:56:44'),
(2577, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:56:45'),
(2578, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:56:45'),
(2579, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:58:26'),
(2580, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:58:28'),
(2581, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 19:58:31'),
(2582, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:00:31'),
(2583, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:00:31'),
(2584, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:00:31'),
(2585, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:00:31'),
(2586, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:00:43'),
(2587, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:00:43'),
(2588, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:00:43'),
(2589, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:00:43'),
(2590, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:00:45'),
(2591, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:00:48'),
(2592, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:00:48'),
(2593, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:00:48'),
(2594, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:00:48'),
(2595, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:00:55'),
(2596, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:01:00'),
(2597, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:01:06'),
(2598, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:01:27'),
(2599, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:01:28'),
(2600, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:01:28'),
(2601, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:01:28'),
(2602, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:02:35'),
(2603, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:02:36'),
(2604, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:02:38'),
(2605, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:05:17'),
(2606, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:05:19'),
(2607, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:05:24'),
(2608, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:05:43'),
(2609, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:05:45'),
(2610, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:05:55'),
(2611, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:05:58'),
(2612, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:06:01'),
(2613, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:06:02'),
(2614, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:06:06'),
(2615, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:06:07'),
(2616, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:06:07'),
(2617, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:06:08'),
(2618, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:06:08'),
(2619, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:06:08'),
(2620, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:06:46'),
(2621, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:06:48'),
(2622, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:06:51'),
(2623, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:07:26'),
(2624, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:07:27'),
(2625, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:07:27'),
(2626, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:07:27'),
(2627, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:08:36'),
(2628, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:08:40'),
(2629, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:08:42'),
(2630, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:11:41'),
(2631, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:11:42'),
(2632, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:11:44'),
(2633, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:11:46'),
(2634, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:11:50'),
(2635, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:11:50'),
(2636, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:11:50'),
(2637, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:11:50'),
(2638, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:12:32'),
(2639, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:12:34'),
(2640, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:12:39'),
(2641, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:12:45'),
(2642, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:12:51'),
(2643, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:12:51'),
(2644, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:15:28'),
(2645, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:15:29'),
(2646, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:15:29'),
(2647, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:15:29'),
(2648, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:15:31'),
(2649, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:15:31'),
(2650, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:15:31'),
(2651, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:15:31'),
(2652, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:15:58'),
(2653, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:16:00'),
(2654, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:16:05'),
(2655, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:16:05'),
(2656, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:16:14'),
(2657, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:16:14'),
(2658, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:16:14'),
(2659, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:16:16'),
(2660, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:16:19'),
(2661, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:16:24'),
(2662, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:16:31'),
(2663, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:16:31'),
(2664, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:16:31'),
(2665, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:16:31'),
(2666, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:16:40'),
(2667, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:16:43'),
(2668, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:16:47'),
(2669, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:16:53'),
(2670, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:16:55'),
(2671, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:16:59'),
(2672, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:16:59'),
(2673, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:17:01'),
(2674, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:17:01'),
(2675, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:17:05'),
(2676, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:17:07'),
(2677, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:17:08'),
(2678, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:17:08'),
(2679, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:17:08'),
(2680, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:18:29'),
(2681, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:18:30'),
(2682, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:18:34'),
(2683, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:19:25'),
(2684, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:19:27'),
(2685, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:19:36'),
(2686, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:19:42'),
(2687, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:19:46'),
(2688, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:19:54'),
(2689, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:19:58'),
(2690, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:20:00'),
(2691, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:20:40'),
(2692, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:20:53'),
(2693, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:20:56'),
(2694, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:20:57'),
(2695, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:20:58'),
(2696, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:20:58'),
(2697, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:20:59'),
(2698, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:21:01'),
(2699, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:21:03'),
(2700, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:21:03'),
(2701, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:21:03'),
(2702, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:21:03'),
(2703, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:21:26'),
(2704, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:21:27'),
(2705, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:21:35'),
(2706, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:21:46'),
(2707, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:21:53'),
(2708, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:21:58'),
(2709, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:22:45'),
(2710, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:22:50'),
(2711, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:22:50'),
(2712, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:26:33'),
(2713, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:26:54'),
(2714, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:28:17'),
(2715, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:28:22'),
(2716, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:28:25'),
(2717, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:28:36'),
(2718, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:28:41'),
(2719, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:28:41'),
(2720, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:28:41'),
(2721, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:28:51'),
(2722, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:28:55'),
(2723, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:28:58'),
(2724, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:29:03'),
(2725, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:29:05'),
(2726, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:29:07'),
(2727, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:29:14'),
(2728, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:29:30'),
(2729, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:29:31'),
(2730, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:29:50'),
(2731, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:29:55'),
(2732, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:29:57'),
(2733, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:30:10'),
(2734, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:30:32'),
(2735, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:31:35'),
(2736, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:31:35'),
(2737, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:31:35'),
(2738, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:31:39'),
(2739, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:31:42'),
(2740, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:31:57'),
(2741, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:31:57'),
(2742, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:31:57'),
(2743, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:32:23'),
(2744, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:32:25'),
(2745, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:32:30'),
(2746, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:32:35'),
(2747, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:32:35'),
(2748, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:32:35'),
(2749, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:32:35'),
(2750, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:33:07'),
(2751, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:33:11'),
(2752, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:33:20'),
(2753, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:33:20'),
(2754, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:33:20'),
(2755, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:33:21'),
(2756, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:33:21'),
(2757, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:33:21'),
(2758, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:33:24'),
(2759, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:33:27'),
(2760, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:33:29'),
(2761, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:33:29'),
(2762, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:33:29'),
(2763, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:33:44'),
(2764, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:33:45'),
(2765, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:33:48'),
(2766, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:33:51'),
(2767, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:33:51'),
(2768, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:33:51'),
(2769, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:33:51'),
(2770, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:34:15'),
(2771, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:34:18'),
(2772, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:35:38'),
(2773, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:36:18'),
(2774, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:36:19'),
(2775, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:36:20'),
(2776, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:36:23'),
(2777, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:36:27'),
(2778, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:36:29'),
(2779, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:36:34'),
(2780, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:36:35'),
(2781, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:36:40'),
(2782, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:36:45'),
(2783, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:37:07'),
(2784, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:37:09'),
(2785, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:37:44'),
(2786, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:37:44'),
(2787, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:37:45'),
(2788, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:37:45'),
(2789, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:37:45'),
(2790, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:37:47'),
(2791, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:37:51'),
(2792, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:37:51'),
(2793, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:37:51'),
(2794, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:37:51'),
(2795, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:38:07'),
(2796, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:38:08'),
(2797, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:40:25'),
(2798, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:40:26'),
(2799, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:40:26'),
(2800, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:40:59'),
(2801, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:41:02'),
(2802, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:42:28'),
(2803, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:42:28'),
(2804, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:42:31'),
(2805, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:42:33'),
(2806, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:42:33'),
(2807, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:42:33'),
(2808, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:42:33'),
(2809, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:42:44'),
(2810, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:42:45'),
(2811, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:42:58'),
(2812, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:43:07'),
(2813, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:43:35'),
(2814, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:43:35'),
(2815, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:43:38'),
(2816, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:43:38'),
(2817, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:43:41'),
(2818, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:43:41'),
(2819, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:43:41'),
(2820, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:43:55'),
(2821, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:43:57'),
(2822, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:43:59');
INSERT INTO `access_logs` (`id`, `user_id`, `action`, `ip_address`, `user_agent`, `browser`, `device`, `timestamp`) VALUES
(2823, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:44:01'),
(2824, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:44:01'),
(2825, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:44:01'),
(2826, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:44:02'),
(2827, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:44:36'),
(2828, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:44:38'),
(2829, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:44:53'),
(2830, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:44:53'),
(2831, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:46:47'),
(2832, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:46:47'),
(2833, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:46:47'),
(2834, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:46:47'),
(2835, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:46:47'),
(2836, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:46:50'),
(2837, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:48:38'),
(2838, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:48:38'),
(2839, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:48:38'),
(2840, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:48:38'),
(2841, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:48:38'),
(2842, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:48:40'),
(2843, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:48:50'),
(2844, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:48:53'),
(2845, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:48:57'),
(2846, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:49:01'),
(2847, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:49:03'),
(2848, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:49:09'),
(2849, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:49:55'),
(2850, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:49:58'),
(2851, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:50:03'),
(2852, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:50:03'),
(2853, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:50:03'),
(2854, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:50:07'),
(2855, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:50:09'),
(2856, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:50:11'),
(2857, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:50:15'),
(2858, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:50:15'),
(2859, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:50:15'),
(2860, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:50:15'),
(2861, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:50:58'),
(2862, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:50:59'),
(2863, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:52:08'),
(2864, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:52:12'),
(2865, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:52:12'),
(2866, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:52:12'),
(2867, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:52:12'),
(2868, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:52:14'),
(2869, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:52:16'),
(2870, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:52:19'),
(2871, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:52:21'),
(2872, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:52:23'),
(2873, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:52:23'),
(2874, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:52:25'),
(2875, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:52:25'),
(2876, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:52:25'),
(2877, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:52:46'),
(2878, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:52:48'),
(2879, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:52:51'),
(2880, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:52:53'),
(2881, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:52:53'),
(2882, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:52:53'),
(2883, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:52:54'),
(2884, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:53:19'),
(2885, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:53:20'),
(2886, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:53:35'),
(2887, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:53:35'),
(2888, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:53:37'),
(2889, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:53:39'),
(2890, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:53:39'),
(2891, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:53:39'),
(2892, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:53:39'),
(2893, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:54:11'),
(2894, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:54:12'),
(2895, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:55:48'),
(2896, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:55:48'),
(2897, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:55:50'),
(2898, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:56:00'),
(2899, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:56:02'),
(2900, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:56:04'),
(2901, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:56:12'),
(2902, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:56:12'),
(2903, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:56:12'),
(2904, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:56:13'),
(2905, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:56:15'),
(2906, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:56:17'),
(2907, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:56:17'),
(2908, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:56:26'),
(2909, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:56:26'),
(2910, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:56:26'),
(2911, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:56:53'),
(2912, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:56:55'),
(2913, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:56:59'),
(2914, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:57:09'),
(2915, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:57:10'),
(2916, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:57:19'),
(2917, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:57:22'),
(2918, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:57:27'),
(2919, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:57:27'),
(2920, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:57:27'),
(2921, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:57:27'),
(2922, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:57:27'),
(2923, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:57:30'),
(2924, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:58:15'),
(2925, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:58:15'),
(2926, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:58:15'),
(2927, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:58:28'),
(2928, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:58:29'),
(2929, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:58:31'),
(2930, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:58:33'),
(2931, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:58:33'),
(2932, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:58:33'),
(2933, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:58:33'),
(2934, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:58:55'),
(2935, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:58:57'),
(2936, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:59:03'),
(2937, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:59:03'),
(2938, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:59:03'),
(2939, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:59:38'),
(2940, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:59:39'),
(2941, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:59:43'),
(2942, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:59:46'),
(2943, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:59:46'),
(2944, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:59:46'),
(2945, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 20:59:46'),
(2946, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', 'Chrome', 'Mobile', '2025-12-18 21:02:17'),
(2947, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', 'Chrome', 'Mobile', '2025-12-18 21:02:20'),
(2948, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:04:10'),
(2949, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:04:11'),
(2950, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:04:16'),
(2951, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:04:16'),
(2952, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:04:16'),
(2953, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:04:16'),
(2954, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:04:27'),
(2955, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:04:29'),
(2956, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:05:24'),
(2957, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:06:06'),
(2958, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:06:11'),
(2959, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:10:39'),
(2960, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:10:39'),
(2961, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:10:39'),
(2962, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:10:41'),
(2963, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:10:42'),
(2964, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:10:43'),
(2965, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:10:44'),
(2966, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:13:44'),
(2967, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:13:56'),
(2968, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:13:56'),
(2969, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:13:56'),
(2970, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:13:56'),
(2971, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:14:34'),
(2972, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:14:36'),
(2973, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:15:58'),
(2974, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:15:58'),
(2975, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:16:01'),
(2976, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:16:04'),
(2977, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:16:04'),
(2978, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:16:04'),
(2979, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:16:04'),
(2980, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:16:19'),
(2981, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:16:20'),
(2982, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:18:43'),
(2983, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:18:43'),
(2984, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:18:43'),
(2985, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:18:43'),
(2986, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:18:43'),
(2987, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:18:46'),
(2988, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:20:56'),
(2989, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:20:56'),
(2990, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:20:58'),
(2991, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:20:59'),
(2992, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:20:59'),
(2993, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:20:59'),
(2994, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:21:00'),
(2995, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:21:16'),
(2996, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:21:17'),
(2997, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:21:21'),
(2998, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:21:24'),
(2999, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:21:24'),
(3000, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:21:24'),
(3001, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:21:24'),
(3002, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:21:55'),
(3003, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:21:56'),
(3004, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:22:00'),
(3005, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:22:04'),
(3006, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:22:05'),
(3007, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:22:06'),
(3008, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:22:09'),
(3009, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:22:40'),
(3010, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:22:50'),
(3011, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:23:26'),
(3012, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:23:27'),
(3013, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:23:28'),
(3014, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:23:30'),
(3015, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:23:32'),
(3016, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:24:23'),
(3017, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:24:25'),
(3018, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:24:26'),
(3019, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:24:27'),
(3020, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:24:31'),
(3021, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:24:34'),
(3022, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:24:36'),
(3023, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:24:38'),
(3024, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:24:42'),
(3025, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:24:44'),
(3026, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:24:46'),
(3027, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:24:52'),
(3028, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:28:51'),
(3029, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:28:53'),
(3030, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:28:55'),
(3031, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:29:00'),
(3032, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:29:00'),
(3033, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:29:00'),
(3034, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:29:01'),
(3035, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:29:15'),
(3036, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:29:16'),
(3037, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:29:21'),
(3038, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:29:22'),
(3039, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:29:25'),
(3040, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:29:26'),
(3041, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:29:28'),
(3042, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:29:29'),
(3043, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:29:31'),
(3044, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:29:41'),
(3045, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:29:43'),
(3046, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:29:46'),
(3047, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:29:57'),
(3048, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:30:00'),
(3049, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:30:02'),
(3050, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:30:02'),
(3051, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:30:02'),
(3052, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:30:06'),
(3053, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:30:07'),
(3054, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:30:08'),
(3055, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:30:08'),
(3056, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:30:10'),
(3057, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:30:10'),
(3058, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:30:10'),
(3059, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:30:10'),
(3060, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:30:10'),
(3061, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:30:15'),
(3062, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:30:23'),
(3063, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:30:29'),
(3064, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:30:31'),
(3065, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:30:35'),
(3066, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:30:38'),
(3067, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:30:38'),
(3068, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:30:38'),
(3069, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:30:43'),
(3070, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:30:47'),
(3071, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:30:49'),
(3072, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:30:50'),
(3073, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:31:03'),
(3074, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:31:03'),
(3075, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:31:03'),
(3076, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:31:03'),
(3077, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:31:03'),
(3078, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:31:08'),
(3079, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:31:09'),
(3080, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:31:19'),
(3081, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:31:19'),
(3082, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:31:19'),
(3083, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:31:27'),
(3084, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:31:55'),
(3085, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:31:56');
INSERT INTO `access_logs` (`id`, `user_id`, `action`, `ip_address`, `user_agent`, `browser`, `device`, `timestamp`) VALUES
(3086, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:32:16'),
(3087, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:32:18'),
(3088, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:32:19'),
(3089, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:32:20'),
(3090, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:32:22'),
(3091, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:32:23'),
(3092, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:32:24'),
(3093, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:32:28'),
(3094, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:32:30'),
(3095, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:32:32'),
(3096, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:32:33'),
(3097, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:32:33'),
(3098, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:32:33'),
(3099, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:32:35'),
(3100, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:32:37'),
(3101, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:34:12'),
(3102, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:34:13'),
(3103, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:34:13'),
(3104, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:34:13'),
(3105, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:34:13'),
(3106, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:34:42'),
(3107, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:34:43'),
(3108, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:35:24'),
(3109, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:35:24'),
(3110, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:35:24'),
(3111, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:35:24'),
(3112, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:35:24'),
(3113, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:35:28'),
(3114, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:35:29'),
(3115, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:36:15'),
(3116, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:36:15'),
(3117, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:36:15'),
(3118, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:36:24'),
(3119, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:36:36'),
(3120, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:36:36'),
(3121, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:36:36'),
(3122, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:36:42'),
(3123, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:36:44'),
(3124, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:36:44'),
(3125, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:36:44'),
(3126, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:36:50'),
(3127, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:37:38'),
(3128, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:37:38'),
(3129, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:37:38'),
(3130, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:37:44'),
(3131, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:37:49'),
(3132, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:37:49'),
(3133, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:37:49'),
(3134, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:37:53'),
(3135, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:37:55'),
(3136, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:37:55'),
(3137, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:37:55'),
(3138, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:37:58'),
(3139, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:39:38'),
(3140, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:39:38'),
(3141, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:39:38'),
(3142, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:39:40'),
(3143, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:39:56'),
(3144, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:39:56'),
(3145, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:39:57'),
(3146, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:39:59'),
(3147, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:40:03'),
(3148, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:40:05'),
(3149, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:40:06'),
(3150, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:40:07'),
(3151, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:40:07'),
(3152, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:40:08'),
(3153, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:40:40'),
(3154, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:40:41'),
(3155, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:40:44'),
(3156, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:40:46'),
(3157, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:40:49'),
(3158, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:41:01'),
(3159, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:41:02'),
(3160, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:41:03'),
(3161, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:41:05'),
(3162, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:41:06'),
(3163, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:41:09'),
(3164, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:41:10'),
(3165, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:41:13'),
(3166, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:41:15'),
(3167, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:41:16'),
(3168, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:41:17'),
(3169, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:41:17'),
(3170, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:41:57'),
(3171, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:42:03'),
(3172, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:42:03'),
(3173, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:42:11'),
(3174, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:42:15'),
(3175, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:42:17'),
(3176, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:43:22'),
(3177, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:43:40'),
(3178, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:43:40'),
(3179, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:43:40'),
(3180, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:43:40'),
(3181, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:43:40'),
(3182, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:43:45'),
(3183, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:43:47'),
(3184, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:43:48'),
(3185, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:43:48'),
(3186, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:43:48'),
(3187, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:43:52'),
(3188, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:43:55'),
(3189, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:43:55'),
(3190, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:43:55'),
(3191, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:43:55'),
(3192, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:43:55'),
(3193, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:43:57'),
(3194, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:45:09'),
(3195, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:45:11'),
(3196, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:45:37'),
(3197, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:45:42'),
(3198, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:45:45'),
(3199, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:45:46'),
(3200, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:46:05'),
(3201, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:46:06'),
(3202, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:46:12'),
(3203, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:46:15'),
(3204, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:46:21'),
(3205, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:46:24'),
(3206, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:46:24'),
(3207, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:46:24'),
(3208, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:46:24'),
(3209, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:46:24'),
(3210, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:46:26'),
(3211, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:46:30'),
(3212, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:46:31'),
(3213, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:46:41'),
(3214, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:46:41'),
(3215, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:46:41'),
(3216, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:46:41'),
(3217, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:46:41'),
(3218, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:46:42'),
(3219, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:46:47'),
(3220, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:46:47'),
(3221, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:46:47'),
(3222, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:46:47'),
(3223, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:46:47'),
(3224, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:47:12'),
(3225, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:47:14'),
(3226, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:47:17'),
(3227, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:47:21'),
(3228, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:47:21'),
(3229, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:47:25'),
(3230, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:47:25'),
(3231, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:47:27'),
(3232, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:47:29'),
(3233, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:47:30'),
(3234, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:47:30'),
(3235, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:47:30'),
(3236, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:47:31'),
(3237, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:47:32'),
(3238, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:47:33'),
(3239, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:47:33'),
(3240, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:47:34'),
(3241, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:47:35'),
(3242, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:47:50'),
(3243, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:51:15'),
(3244, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:52:17'),
(3245, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:52:17'),
(3246, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:52:17'),
(3247, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:52:17'),
(3248, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:52:17'),
(3249, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:52:27'),
(3250, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:52:29'),
(3251, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:52:29'),
(3252, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:52:31'),
(3253, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:53:29'),
(3254, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:53:31'),
(3255, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:54:31'),
(3256, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:54:34'),
(3257, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:54:36'),
(3258, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:54:37'),
(3259, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:54:42'),
(3260, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:55:07'),
(3261, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:55:08'),
(3262, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:55:10'),
(3263, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:55:14'),
(3264, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:55:14'),
(3265, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:55:26'),
(3266, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:55:26'),
(3267, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:55:26'),
(3268, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:55:26'),
(3269, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:55:26'),
(3270, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:55:28'),
(3271, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:55:42'),
(3272, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:55:46'),
(3273, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:56:19'),
(3274, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:56:23'),
(3275, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:56:31'),
(3276, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:56:33'),
(3277, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:56:34'),
(3278, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:58:57'),
(3279, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:58:57'),
(3280, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:58:57'),
(3281, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:58:59'),
(3282, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:59:13'),
(3283, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:59:14'),
(3284, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:59:23'),
(3285, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:59:23'),
(3286, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:59:23'),
(3287, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:59:23'),
(3288, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:59:23'),
(3289, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 21:59:31'),
(3290, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:00:19'),
(3291, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:00:19'),
(3292, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:00:19'),
(3293, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:00:19'),
(3294, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:00:19'),
(3295, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:01:31'),
(3296, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:01:41'),
(3297, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:01:45'),
(3298, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:01:45'),
(3299, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:01:45'),
(3300, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:01:45'),
(3301, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:01:45'),
(3302, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:01:46'),
(3303, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:01:58'),
(3304, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:01:58'),
(3305, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:01:58'),
(3306, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:01:58'),
(3307, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:01:58'),
(3308, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:05:16'),
(3309, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:12:06'),
(3310, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:14:17'),
(3311, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:14:19'),
(3312, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:14:20'),
(3313, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:14:20'),
(3314, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:14:21'),
(3315, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:14:24'),
(3316, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:14:24'),
(3317, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:14:24'),
(3318, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:14:24'),
(3319, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:14:24'),
(3320, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:15:49'),
(3321, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:15:56'),
(3322, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:16:11'),
(3323, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:19:04'),
(3324, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:19:05'),
(3325, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:19:06'),
(3326, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:19:06'),
(3327, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:19:06'),
(3328, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:19:53'),
(3329, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:19:54'),
(3330, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:19:56'),
(3331, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:22:50'),
(3332, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:22:51'),
(3333, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:22:51'),
(3334, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:22:51'),
(3335, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:24:12'),
(3336, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:24:18'),
(3337, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:24:20'),
(3338, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:24:38'),
(3339, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:24:40'),
(3340, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:25:02'),
(3341, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:25:02'),
(3342, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:25:02'),
(3343, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:25:03'),
(3344, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:25:05'),
(3345, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:25:06'),
(3346, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:25:24'),
(3347, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:25:27'),
(3348, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:25:27');
INSERT INTO `access_logs` (`id`, `user_id`, `action`, `ip_address`, `user_agent`, `browser`, `device`, `timestamp`) VALUES
(3349, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:25:27'),
(3350, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:25:28'),
(3351, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:25:28'),
(3352, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:25:29'),
(3353, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:25:29'),
(3354, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:25:29'),
(3355, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:25:29'),
(3356, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:25:29'),
(3357, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:25:35'),
(3358, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:25:37'),
(3359, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:25:44'),
(3360, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:25:44'),
(3361, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:25:44'),
(3362, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:25:44'),
(3363, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:25:44'),
(3364, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:25:50'),
(3365, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:25:53'),
(3366, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:25:53'),
(3367, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:25:53'),
(3368, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:25:53'),
(3369, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:25:53'),
(3370, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:25:56'),
(3371, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:26:02'),
(3372, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:26:04'),
(3373, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:26:06'),
(3374, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:26:06'),
(3375, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:26:06'),
(3376, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:26:07'),
(3377, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:26:53'),
(3378, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:26:54'),
(3379, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:26:54'),
(3380, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:26:55'),
(3381, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:26:55'),
(3382, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:26:56'),
(3383, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:26:56'),
(3384, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:26:57'),
(3385, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:26:57'),
(3386, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:26:58'),
(3387, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:26:58'),
(3388, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:26:59'),
(3389, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:27:00'),
(3390, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:27:07'),
(3391, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:27:08'),
(3392, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:27:57'),
(3393, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:27:58'),
(3394, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:28:01'),
(3395, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:28:01'),
(3396, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:28:02'),
(3397, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:29:19'),
(3398, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:30:37'),
(3399, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:30:37'),
(3400, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:30:42'),
(3401, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:30:43'),
(3402, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:30:50'),
(3403, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:30:59'),
(3404, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:30:59'),
(3405, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:31:00'),
(3406, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:31:32'),
(3407, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:31:33'),
(3408, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:31:34'),
(3409, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:31:35'),
(3410, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:31:35'),
(3411, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:31:36'),
(3412, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:31:37'),
(3413, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:31:38'),
(3414, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:31:46'),
(3415, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:31:47'),
(3416, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:31:51'),
(3417, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:31:52'),
(3418, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:31:53'),
(3419, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:32:00'),
(3420, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:32:32'),
(3421, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:32:32'),
(3422, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:32:34'),
(3423, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:32:35'),
(3424, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:32:39'),
(3425, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:33:19'),
(3426, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:33:19'),
(3427, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:33:25'),
(3428, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:33:26'),
(3429, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:33:27'),
(3430, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:33:28'),
(3431, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:33:36'),
(3432, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:33:36'),
(3433, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:33:36'),
(3434, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:33:38'),
(3435, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:33:44'),
(3436, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:33:44'),
(3437, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:33:44'),
(3438, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:33:44'),
(3439, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:33:44'),
(3440, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:33:47'),
(3441, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:33:49'),
(3442, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:33:49'),
(3443, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:33:49'),
(3444, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:33:49'),
(3445, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:33:49'),
(3446, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:33:57'),
(3447, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:34:03'),
(3448, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:34:04'),
(3449, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:34:04'),
(3450, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:34:04'),
(3451, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:34:04'),
(3452, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:34:04'),
(3453, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:34:24'),
(3454, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:35:11'),
(3455, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:35:19'),
(3456, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:35:19'),
(3457, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:35:23'),
(3458, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:35:49'),
(3459, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:35:49'),
(3460, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:35:49'),
(3461, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:35:49'),
(3462, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:35:49'),
(3463, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:35:53'),
(3464, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:36:06'),
(3465, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:36:06'),
(3466, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:36:06'),
(3467, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:36:06'),
(3468, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:36:06'),
(3469, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:36:28'),
(3470, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:37:10'),
(3471, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:37:10'),
(3472, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:37:10'),
(3473, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:37:10'),
(3474, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:37:10'),
(3475, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:37:16'),
(3476, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:37:58'),
(3477, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:37:58'),
(3478, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:37:58'),
(3479, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:37:58'),
(3480, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:37:58'),
(3481, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:38:33'),
(3482, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:38:35'),
(3483, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:38:35'),
(3484, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:38:35'),
(3485, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:38:35'),
(3486, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:38:35'),
(3487, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:38:44'),
(3488, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:39:08'),
(3489, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:39:08'),
(3490, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:39:10'),
(3491, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:39:11'),
(3492, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:39:12'),
(3493, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:39:12'),
(3494, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:39:19'),
(3495, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:39:21'),
(3496, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:39:25'),
(3497, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:39:26'),
(3498, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:39:27'),
(3499, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:39:28'),
(3500, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:39:29'),
(3501, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:44:39'),
(3502, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:44:40'),
(3503, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:44:54'),
(3504, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:44:54'),
(3505, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:44:54'),
(3506, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:44:54'),
(3507, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:44:56'),
(3508, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:44:57'),
(3509, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:44:57'),
(3510, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:44:57'),
(3511, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:44:57'),
(3512, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:44:57'),
(3513, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:45:06'),
(3514, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:45:08'),
(3515, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:45:08'),
(3516, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:45:08'),
(3517, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:45:08'),
(3518, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:45:08'),
(3519, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:45:10'),
(3520, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:45:11'),
(3521, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:45:11'),
(3522, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:45:11'),
(3523, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:45:11'),
(3524, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:45:11'),
(3525, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:45:21'),
(3526, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:45:36'),
(3527, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:45:36'),
(3528, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:45:36'),
(3529, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:45:36'),
(3530, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:45:36'),
(3531, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:46:24'),
(3532, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:46:29'),
(3533, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:46:30'),
(3534, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:46:30'),
(3535, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:46:30'),
(3536, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:46:30'),
(3537, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:46:30'),
(3538, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:46:33'),
(3539, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:46:39'),
(3540, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:46:39'),
(3541, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:46:39'),
(3542, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:46:41'),
(3543, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:46:42'),
(3544, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:46:42'),
(3545, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:46:42'),
(3546, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:46:42'),
(3547, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:46:42'),
(3548, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:46:44'),
(3549, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:47:00'),
(3550, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:47:43'),
(3551, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:48:23'),
(3552, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:48:56'),
(3553, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:49:39'),
(3554, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:49:40'),
(3555, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:49:41'),
(3556, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:49:42'),
(3557, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:49:43'),
(3558, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:49:51'),
(3559, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:53:34'),
(3560, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:53:34'),
(3561, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:53:34'),
(3562, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:53:41'),
(3563, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:54:00'),
(3564, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:54:17'),
(3565, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:54:36'),
(3566, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:54:56'),
(3567, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:55:00'),
(3568, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:55:25'),
(3569, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:56:03'),
(3570, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:56:31'),
(3571, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:56:32'),
(3572, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:56:33'),
(3573, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:56:34'),
(3574, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:56:35'),
(3575, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:56:36'),
(3576, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:56:41'),
(3577, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:56:42'),
(3578, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:56:43'),
(3579, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:56:44'),
(3580, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:56:45'),
(3581, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:56:46'),
(3582, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:57:05'),
(3583, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:57:07'),
(3584, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:57:07'),
(3585, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:57:08'),
(3586, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:58:11'),
(3587, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:58:13'),
(3588, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:58:15'),
(3589, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:58:16'),
(3590, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:58:16'),
(3591, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:58:16'),
(3592, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:58:16'),
(3593, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:58:16'),
(3594, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 22:58:21'),
(3595, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:02:54'),
(3596, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:03:31'),
(3597, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:03:31'),
(3598, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:03:36'),
(3599, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:03:39'),
(3600, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:03:42'),
(3601, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:03:43'),
(3602, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:03:44'),
(3603, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:03:45'),
(3604, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:03:47'),
(3605, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:03:47'),
(3606, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:03:47'),
(3607, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:03:47'),
(3608, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:03:47'),
(3609, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:04:33'),
(3610, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:05:30'),
(3611, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:07:33');
INSERT INTO `access_logs` (`id`, `user_id`, `action`, `ip_address`, `user_agent`, `browser`, `device`, `timestamp`) VALUES
(3612, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:07:42'),
(3613, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:07:44'),
(3614, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:07:56'),
(3615, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:09:31'),
(3616, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:09:31'),
(3617, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:09:31'),
(3618, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:09:31'),
(3619, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:09:31'),
(3620, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:31:05'),
(3621, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:31:07'),
(3622, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:31:10'),
(3623, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:31:10'),
(3624, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:31:10'),
(3625, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:31:10'),
(3626, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:31:10'),
(3627, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:31:57'),
(3628, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:32:02'),
(3629, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:35:26'),
(3630, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:35:26'),
(3631, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:35:26'),
(3632, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:35:27'),
(3633, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:37:50'),
(3634, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:37:50'),
(3635, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:37:50'),
(3636, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:37:50'),
(3637, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:37:51'),
(3638, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:37:51'),
(3639, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:37:51'),
(3640, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:37:56'),
(3641, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:37:58'),
(3642, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:37:59'),
(3643, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:37:59'),
(3644, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:37:59'),
(3645, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:38:01'),
(3646, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:38:02'),
(3647, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:38:02'),
(3648, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:38:02'),
(3649, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:38:49'),
(3650, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:39:31'),
(3651, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:39:31'),
(3652, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:39:32'),
(3653, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:39:33'),
(3654, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:39:33'),
(3655, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:39:33'),
(3656, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:39:33'),
(3657, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:39:33'),
(3658, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:39:39'),
(3659, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-18 23:49:28'),
(3660, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:05:50'),
(3661, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:05:51'),
(3662, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:05:51'),
(3663, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:05:51'),
(3664, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:05:51'),
(3665, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:05:51'),
(3666, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:07:06'),
(3667, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:07:21'),
(3668, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:07:24'),
(3669, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:07:24'),
(3670, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:07:26'),
(3671, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:07:26'),
(3672, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:07:27'),
(3673, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:07:29'),
(3674, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:07:29'),
(3675, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:07:31'),
(3676, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:07:31'),
(3677, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:07:33'),
(3678, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:07:37'),
(3679, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:07:39'),
(3680, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:07:41'),
(3681, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:07:42'),
(3682, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:07:42'),
(3683, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:07:43'),
(3684, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:07:45'),
(3685, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:07:49'),
(3686, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:07:50'),
(3687, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:07:51'),
(3688, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:07:52'),
(3689, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:09:47'),
(3690, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:09:48'),
(3691, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:09:53'),
(3692, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:09:58'),
(3693, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:09:59'),
(3694, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:10:03'),
(3695, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:10:07'),
(3696, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:10:09'),
(3697, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:10:11'),
(3698, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:10:15'),
(3699, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:10:15'),
(3700, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:10:25'),
(3701, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:10:29'),
(3702, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:10:30'),
(3703, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:10:36'),
(3704, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:10:41'),
(3705, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:10:45'),
(3706, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:10:47'),
(3707, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:10:48'),
(3708, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:10:51'),
(3709, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:10:52'),
(3710, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:11:17'),
(3711, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:11:17'),
(3712, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:11:17'),
(3713, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:11:17'),
(3714, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:11:17'),
(3715, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:11:22'),
(3716, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:11:22'),
(3717, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:11:24'),
(3718, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:11:25'),
(3719, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:11:26'),
(3720, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:11:28'),
(3721, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:11:33'),
(3722, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:11:34'),
(3723, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:11:35'),
(3724, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:11:37'),
(3725, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:11:37'),
(3726, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:11:38'),
(3727, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:11:38'),
(3728, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:11:39'),
(3729, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:11:40'),
(3730, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:11:41'),
(3731, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:11:42'),
(3732, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:11:42'),
(3733, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:11:42'),
(3734, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:11:42'),
(3735, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:11:42'),
(3736, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:11:45'),
(3737, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:11:46'),
(3738, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:11:47'),
(3739, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:11:47'),
(3740, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:11:49'),
(3741, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:11:49'),
(3742, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:14:45'),
(3743, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:14:46'),
(3744, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:14:46'),
(3745, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:14:47'),
(3746, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:14:47'),
(3747, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:14:47'),
(3748, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:14:47'),
(3749, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:14:47'),
(3750, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:14:52'),
(3751, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:15:10'),
(3752, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:15:13'),
(3753, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:15:13'),
(3754, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:15:13'),
(3755, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:15:13'),
(3756, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:15:13'),
(3757, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:15:47'),
(3758, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:18:02'),
(3759, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:18:03'),
(3760, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:18:03'),
(3761, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:18:04'),
(3762, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:18:04'),
(3763, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:18:04'),
(3764, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:18:04'),
(3765, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:18:04'),
(3766, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:18:18'),
(3767, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:18:26'),
(3768, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:18:35'),
(3769, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:18:35'),
(3770, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:18:35'),
(3771, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:18:35'),
(3772, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:18:35'),
(3773, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:19:39'),
(3774, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:19:39'),
(3775, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:19:39'),
(3776, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:19:39'),
(3777, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:19:39'),
(3778, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:19:39'),
(3779, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:19:39'),
(3780, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:19:39'),
(3781, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:19:39'),
(3782, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:19:39'),
(3783, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:19:39'),
(3784, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:19:39'),
(3785, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:19:39'),
(3786, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:19:39'),
(3787, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:19:39'),
(3788, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:19:39'),
(3789, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:19:39'),
(3790, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:19:39'),
(3791, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:19:39'),
(3792, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:19:39'),
(3793, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:25:06'),
(3794, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:25:06'),
(3795, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:25:06'),
(3796, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:25:06'),
(3797, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:25:06'),
(3798, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:25:06'),
(3799, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:25:06'),
(3800, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:25:06'),
(3801, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:25:06'),
(3802, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:25:06'),
(3803, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:25:09'),
(3804, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:25:12'),
(3805, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:25:15'),
(3806, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:25:15'),
(3807, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:25:15'),
(3808, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:25:15'),
(3809, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:25:15'),
(3810, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:25:15'),
(3811, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:25:15'),
(3812, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:25:15'),
(3813, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:25:15'),
(3814, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:25:15'),
(3815, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:25:18'),
(3816, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:25:35'),
(3817, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:25:39'),
(3818, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:25:43'),
(3819, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:27:36'),
(3820, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:27:36'),
(3821, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:27:39'),
(3822, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:27:40'),
(3823, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:27:40'),
(3824, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:27:40'),
(3825, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:27:40'),
(3826, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:27:40'),
(3827, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:27:42'),
(3828, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:27:47'),
(3829, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:27:50'),
(3830, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:27:56'),
(3831, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:27:56'),
(3832, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:27:56'),
(3833, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:27:56'),
(3834, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:27:56'),
(3835, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:27:58'),
(3836, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:28:46'),
(3837, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:28:50'),
(3838, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:28:59'),
(3839, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:29:00'),
(3840, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:29:05'),
(3841, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:29:09'),
(3842, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:29:13'),
(3843, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:29:17'),
(3844, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:29:17'),
(3845, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:29:19'),
(3846, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:29:19'),
(3847, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:29:54'),
(3848, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:29:56'),
(3849, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:29:58'),
(3850, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:31:01'),
(3851, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:31:02'),
(3852, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:31:03'),
(3853, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:31:04'),
(3854, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:31:05'),
(3855, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:31:05'),
(3856, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:31:05'),
(3857, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:31:08'),
(3858, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:31:13'),
(3859, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:31:13'),
(3860, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:31:15'),
(3861, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:32:12'),
(3862, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:32:12'),
(3863, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:32:14'),
(3864, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:32:14'),
(3865, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:32:15'),
(3866, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:32:15'),
(3867, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:32:15'),
(3868, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:32:16'),
(3869, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:32:16'),
(3870, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:32:16'),
(3871, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:32:17'),
(3872, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:32:18'),
(3873, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:32:23'),
(3874, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:32:25');
INSERT INTO `access_logs` (`id`, `user_id`, `action`, `ip_address`, `user_agent`, `browser`, `device`, `timestamp`) VALUES
(3875, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:32:35'),
(3876, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:35:04'),
(3877, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:35:16'),
(3878, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:35:18'),
(3879, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:35:19'),
(3880, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:35:20'),
(3881, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:35:20'),
(3882, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:35:21'),
(3883, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:39:20'),
(3884, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:39:20'),
(3885, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:39:21'),
(3886, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:39:36'),
(3887, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:39:37'),
(3888, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 00:39:38'),
(3889, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:17:20'),
(3890, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:17:31'),
(3891, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:17:33'),
(3892, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:26:58'),
(3893, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:27:03'),
(3894, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:27:04'),
(3895, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:27:17'),
(3896, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:27:18'),
(3897, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:27:27'),
(3898, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:27:27'),
(3899, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:27:33'),
(3900, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:27:37'),
(3901, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:28:06'),
(3902, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:28:14'),
(3903, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:28:15'),
(3904, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:28:16'),
(3905, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:28:17'),
(3906, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:28:18'),
(3907, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:28:41'),
(3908, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:29:37'),
(3909, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:29:45'),
(3910, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:29:52'),
(3911, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:29:56'),
(3912, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:29:57'),
(3913, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:29:57'),
(3914, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:29:59'),
(3915, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:30:00'),
(3916, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:30:01'),
(3917, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:30:05'),
(3918, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:30:11'),
(3919, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:30:14'),
(3920, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:30:14'),
(3921, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:30:15'),
(3922, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:30:15'),
(3923, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:30:15'),
(3924, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:30:18'),
(3925, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:30:18'),
(3926, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:30:19'),
(3927, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:30:19'),
(3928, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:30:20'),
(3929, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:31:24'),
(3930, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:31:26'),
(3931, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:31:33'),
(3932, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:31:37'),
(3933, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:31:38'),
(3934, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:31:42'),
(3935, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:31:44'),
(3936, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:31:47'),
(3937, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:31:49'),
(3938, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:31:51'),
(3939, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:31:53'),
(3940, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:31:54'),
(3941, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:31:57'),
(3942, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:31:59'),
(3943, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:32:00'),
(3944, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:32:01'),
(3945, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:32:03'),
(3946, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:32:06'),
(3947, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:32:07'),
(3948, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:32:08'),
(3949, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:32:11'),
(3950, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:32:12'),
(3951, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:32:13'),
(3952, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:32:14'),
(3953, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:32:16'),
(3954, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', 'Chrome', 'Mobile', '2025-12-19 01:32:17'),
(3955, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:32:20'),
(3956, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:32:20'),
(3957, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:32:22'),
(3958, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:32:23'),
(3959, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:32:25'),
(3960, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:32:26'),
(3961, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:32:26'),
(3962, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:32:27'),
(3963, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:32:28'),
(3964, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:32:30'),
(3965, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:32:30'),
(3966, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:32:34'),
(3967, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:32:36'),
(3968, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:32:47'),
(3969, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:32:48'),
(3970, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:33:06'),
(3971, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:33:06'),
(3972, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:33:06'),
(3973, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:33:40'),
(3974, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:35:19'),
(3975, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:35:19'),
(3976, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:37:32'),
(3977, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:40:07'),
(3978, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:40:08'),
(3979, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:40:08'),
(3980, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:40:08'),
(3981, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:40:09'),
(3982, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:40:09'),
(3983, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:40:09'),
(3984, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:40:09'),
(3985, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:40:10'),
(3986, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:40:10'),
(3987, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:40:10'),
(3988, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:40:10'),
(3989, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:40:11'),
(3990, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:40:11'),
(3991, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:40:12'),
(3992, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:40:14'),
(3993, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:40:37'),
(3994, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:40:39'),
(3995, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:40:40'),
(3996, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:40:40'),
(3997, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:40:40'),
(3998, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:40:40'),
(3999, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:40:40'),
(4000, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:40:41'),
(4001, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:40:43'),
(4002, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:40:50'),
(4003, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:40:50'),
(4004, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:40:50'),
(4005, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:40:50'),
(4006, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:40:50'),
(4007, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:40:53'),
(4008, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:41:00'),
(4009, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:41:00'),
(4010, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:41:00'),
(4011, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:41:00'),
(4012, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:41:00'),
(4013, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:41:07'),
(4014, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:41:09'),
(4015, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:41:18'),
(4016, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:41:18'),
(4017, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:41:18'),
(4018, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:41:18'),
(4019, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:41:18'),
(4020, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:41:25'),
(4021, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:41:26'),
(4022, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:41:26'),
(4023, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:41:26'),
(4024, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:41:26'),
(4025, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:41:26'),
(4026, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:41:34'),
(4027, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:41:41'),
(4028, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:41:41'),
(4029, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:41:41'),
(4030, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:41:41'),
(4031, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:41:41'),
(4032, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:41:46'),
(4033, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:41:48'),
(4034, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:41:58'),
(4035, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:41:58'),
(4036, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:41:58'),
(4037, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:41:58'),
(4038, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:41:58'),
(4039, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:42:06'),
(4040, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:42:07'),
(4041, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:42:07'),
(4042, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:42:07'),
(4043, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:42:07'),
(4044, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:42:07'),
(4045, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:42:09'),
(4046, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:42:12'),
(4047, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:42:18'),
(4048, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:42:18'),
(4049, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:42:18'),
(4050, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:42:18'),
(4051, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:42:18'),
(4052, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:42:20'),
(4053, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:42:24'),
(4054, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:42:31'),
(4055, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:42:31'),
(4056, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:42:31'),
(4057, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:42:31'),
(4058, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:42:31'),
(4059, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:42:34'),
(4060, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:42:57'),
(4061, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:43:00'),
(4062, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:43:04'),
(4063, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:43:05'),
(4064, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:43:06'),
(4065, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:43:06'),
(4066, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:43:06'),
(4067, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:43:07'),
(4068, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:43:13'),
(4069, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:43:16'),
(4070, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:43:21'),
(4071, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:43:39'),
(4072, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:43:41'),
(4073, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:43:49'),
(4074, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:44:09'),
(4075, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:44:10'),
(4076, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:44:10'),
(4077, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:44:10'),
(4078, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:44:10'),
(4079, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:44:10'),
(4080, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:44:17'),
(4081, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:44:21'),
(4082, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:45:48'),
(4083, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:45:48'),
(4084, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:45:48'),
(4085, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:45:48'),
(4086, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:45:48'),
(4087, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:45:51'),
(4088, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:45:54'),
(4089, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:46:01'),
(4090, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:46:01'),
(4091, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:46:01'),
(4092, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:46:01'),
(4093, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:46:01'),
(4094, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:46:03'),
(4095, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:46:55'),
(4096, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:46:57'),
(4097, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:48:03'),
(4098, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:48:04'),
(4099, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:48:05'),
(4100, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:50:52'),
(4101, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:51:38'),
(4102, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:51:39'),
(4103, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:51:40'),
(4104, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:51:41'),
(4105, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:51:43'),
(4106, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:51:44'),
(4107, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:51:45'),
(4108, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:51:46'),
(4109, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:51:49'),
(4110, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:51:51'),
(4111, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:51:52'),
(4112, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:51:52'),
(4113, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:51:55'),
(4114, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:51:56'),
(4115, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:51:57'),
(4116, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:51:59'),
(4117, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:52:00'),
(4118, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', 'Chrome', 'Mobile', '2025-12-19 01:52:25'),
(4119, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:52:38'),
(4120, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:52:39'),
(4121, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:53:00'),
(4122, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:53:02'),
(4123, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:53:06'),
(4124, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:53:23'),
(4125, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:53:25'),
(4126, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:53:35'),
(4127, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:53:36'),
(4128, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:53:49'),
(4129, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:53:51'),
(4130, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:53:52'),
(4131, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:53:53'),
(4132, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:53:55'),
(4133, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:53:56'),
(4134, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:53:57'),
(4135, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:54:02'),
(4136, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:54:02'),
(4137, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:54:02');
INSERT INTO `access_logs` (`id`, `user_id`, `action`, `ip_address`, `user_agent`, `browser`, `device`, `timestamp`) VALUES
(4138, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:54:57'),
(4139, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:54:59'),
(4140, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:55:05'),
(4141, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:55:05'),
(4142, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:55:05'),
(4143, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:55:07'),
(4144, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:55:09'),
(4145, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:55:12'),
(4146, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:55:25'),
(4147, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:55:25'),
(4148, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:55:25'),
(4149, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:55:25'),
(4150, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:55:27'),
(4151, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:55:30'),
(4152, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:55:31'),
(4153, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:55:33'),
(4154, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:55:34'),
(4155, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:55:36'),
(4156, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:55:47'),
(4157, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:55:54'),
(4158, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:56:15'),
(4159, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:56:15'),
(4160, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:56:15'),
(4161, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:56:20'),
(4162, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:59:15'),
(4163, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:59:16'),
(4164, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:59:27'),
(4165, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:59:29'),
(4166, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:59:32'),
(4167, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:59:36'),
(4168, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:59:40'),
(4169, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:59:42'),
(4170, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:59:49'),
(4171, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:59:51'),
(4172, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:59:52'),
(4173, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 01:59:55'),
(4174, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:00:07'),
(4175, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:00:09'),
(4176, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:00:09'),
(4177, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:00:09'),
(4178, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:00:10'),
(4179, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:00:11'),
(4180, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:00:11'),
(4181, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:00:14'),
(4182, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:00:21'),
(4183, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:00:23'),
(4184, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:00:24'),
(4185, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:00:25'),
(4186, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:01:04'),
(4187, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:01:07'),
(4188, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:01:07'),
(4189, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:01:07'),
(4190, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:01:07'),
(4191, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:01:07'),
(4192, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:01:09'),
(4193, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:01:14'),
(4194, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:01:18'),
(4195, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:01:20'),
(4196, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:05:27'),
(4197, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:05:28'),
(4198, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:05:29'),
(4199, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:05:32'),
(4200, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:05:33'),
(4201, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:05:45'),
(4202, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:05:48'),
(4203, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:05:49'),
(4204, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:05:50'),
(4205, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:06:20'),
(4206, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:06:21'),
(4207, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:07:46'),
(4208, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:07:59'),
(4209, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:08:09'),
(4210, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:08:09'),
(4211, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:08:09'),
(4212, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:08:09'),
(4213, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:08:09'),
(4214, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:08:13'),
(4215, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:08:21'),
(4216, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:08:27'),
(4217, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:08:32'),
(4218, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:08:38'),
(4219, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:08:38'),
(4220, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:08:39'),
(4221, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:08:39'),
(4222, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:08:44'),
(4223, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:08:54'),
(4224, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:08:54'),
(4225, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:08:54'),
(4226, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:08:54'),
(4227, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:08:54'),
(4228, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:08:58'),
(4229, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:09:18'),
(4230, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:09:20'),
(4231, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:17:50'),
(4232, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:18:05'),
(4233, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:18:10'),
(4234, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:19:07'),
(4235, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:19:19'),
(4236, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:19:22'),
(4237, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:19:31'),
(4238, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:19:33'),
(4239, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:19:44'),
(4240, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:19:45'),
(4241, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:20:34'),
(4242, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:20:35'),
(4243, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:20:35'),
(4244, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:20:36'),
(4245, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:22:51'),
(4246, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:23:01'),
(4247, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:23:08'),
(4248, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:23:15'),
(4249, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:24:10'),
(4250, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:24:13'),
(4251, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:24:22'),
(4252, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:24:24'),
(4253, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:24:34'),
(4254, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:24:37'),
(4255, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:24:37'),
(4256, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:24:42'),
(4257, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:24:42'),
(4258, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:24:51'),
(4259, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:29:24'),
(4260, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:29:24'),
(4261, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:29:24'),
(4262, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:29:52'),
(4263, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:29:55'),
(4264, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:29:55'),
(4265, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:29:55'),
(4266, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:29:56'),
(4267, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:29:59'),
(4268, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:29:59'),
(4269, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:30:27'),
(4270, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:30:28'),
(4271, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:30:28'),
(4272, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:30:37'),
(4273, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:30:39'),
(4274, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:30:40'),
(4275, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:30:41'),
(4276, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:30:45'),
(4277, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:30:46'),
(4278, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:30:49'),
(4279, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:30:50'),
(4280, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:31:45'),
(4281, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:32:04'),
(4282, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:32:05'),
(4283, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:32:05'),
(4284, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:32:26'),
(4285, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:32:26'),
(4286, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:32:27'),
(4287, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:32:27'),
(4288, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:32:29'),
(4289, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:32:58'),
(4290, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:33:00'),
(4291, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:33:09'),
(4292, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:33:10'),
(4293, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:33:14'),
(4294, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:33:15'),
(4295, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:33:16'),
(4296, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:33:16'),
(4297, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:33:17'),
(4298, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:33:28'),
(4299, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:34:17'),
(4300, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:34:20'),
(4301, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:34:24'),
(4302, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:34:28'),
(4303, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:34:30'),
(4304, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:34:33'),
(4305, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:34:43'),
(4306, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:34:45'),
(4307, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:34:50'),
(4308, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:35:14'),
(4309, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:35:19'),
(4310, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:36:02'),
(4311, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:39:01'),
(4312, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:39:05'),
(4313, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:39:12'),
(4314, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:39:14'),
(4315, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:39:21'),
(4316, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 02:39:24'),
(4317, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 07:42:44'),
(4318, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 07:42:47'),
(4319, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 07:42:52'),
(4320, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 07:42:52'),
(4321, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 07:42:53'),
(4322, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 07:42:53'),
(4323, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 07:42:55'),
(4324, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 07:43:58'),
(4325, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 07:43:59'),
(4326, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 07:47:47'),
(4327, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 07:47:51'),
(4328, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 07:47:53'),
(4329, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 07:47:54'),
(4330, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 07:47:55'),
(4331, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 07:47:57'),
(4332, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 07:47:58'),
(4333, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 07:48:00'),
(4334, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 07:48:01'),
(4335, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 07:48:19'),
(4336, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 07:48:19'),
(4337, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 07:48:20'),
(4338, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 07:48:32'),
(4339, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 07:48:33'),
(4340, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 07:48:33'),
(4341, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 07:48:34'),
(4342, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 07:48:34'),
(4343, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 07:48:35'),
(4344, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2025-12-19 07:48:36'),
(4345, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2026-01-27 00:06:17'),
(4346, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2026-01-27 00:06:28'),
(4347, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2026-01-27 00:06:30'),
(4348, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2026-01-27 00:06:33'),
(4349, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2026-01-27 00:06:33'),
(4350, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2026-01-27 00:08:56'),
(4351, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2026-01-27 00:10:40'),
(4352, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2026-01-27 00:10:41'),
(4353, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2026-01-27 00:10:42'),
(4354, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2026-01-27 00:11:48'),
(4355, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2026-01-27 00:12:29'),
(4356, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2026-01-27 00:12:30'),
(4357, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2026-01-27 00:14:01'),
(4358, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2026-01-27 00:14:02'),
(4359, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2026-01-27 00:14:05'),
(4360, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2026-01-27 00:14:06'),
(4361, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2026-01-27 00:14:09'),
(4362, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2026-01-27 00:14:15'),
(4363, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2026-01-27 00:14:17'),
(4364, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2026-01-27 00:14:18'),
(4365, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2026-01-27 00:16:52'),
(4366, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2026-01-27 00:17:08'),
(4367, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2026-01-27 00:18:28'),
(4368, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2026-01-27 00:18:31'),
(4369, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2026-01-27 00:18:37'),
(4370, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2026-01-27 00:18:37'),
(4371, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2026-01-27 00:18:37'),
(4372, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2026-01-27 00:18:39'),
(4373, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2026-01-27 00:18:40'),
(4374, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2026-01-27 00:18:43'),
(4375, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2026-01-27 00:18:44'),
(4376, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2026-01-27 00:18:44'),
(4377, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2026-01-27 00:18:47'),
(4378, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2026-01-27 00:18:48'),
(4379, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2026-01-27 00:18:48'),
(4380, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2026-01-27 00:18:49'),
(4381, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2026-01-27 00:18:53'),
(4382, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2026-01-27 00:18:54'),
(4383, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2026-01-27 00:18:55'),
(4384, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2026-01-27 00:18:56'),
(4385, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2026-01-27 00:19:51'),
(4386, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2026-01-27 00:19:55'),
(4387, 1, 'API_ACCESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'Chrome', 'Desktop', '2026-01-27 00:19:56');

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `module` varchar(100) DEFAULT NULL,
  `record_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `old_values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`old_values`)),
  `new_values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`new_values`)),
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `user_id`, `action`, `module`, `record_id`, `description`, `old_values`, `new_values`, `timestamp`) VALUES
(1, 7, 'UPDATE', 'senior_citizens', 23, 'Updated senior citizen: Deceased change', '{\"status\":{\"is_deceased\":0,\"deceased_date\":null}}', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '2025-12-17 10:37:16'),
(2, 7, 'UPDATE', 'senior_citizens', 23, 'Updated senior citizen: Deceased change', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '2025-12-17 10:37:17'),
(3, 7, 'UPDATE', 'senior_citizens', 23, 'Updated senior citizen: Deceased change', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '2025-12-17 10:37:19'),
(4, 7, 'UPDATE', 'senior_citizens', 23, 'Updated senior citizen: Deceased change', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '2025-12-17 10:37:20'),
(5, 7, 'UPDATE', 'senior_citizens', 23, 'Updated senior citizen: Deceased change', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '2025-12-17 10:37:31'),
(6, 7, 'UPDATE', 'senior_citizens', 23, 'Updated senior citizen: Deceased change', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '2025-12-17 10:37:33'),
(7, 7, 'UPDATE', 'senior_citizens', 23, 'Updated senior citizen: Deceased change', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '2025-12-17 10:37:34'),
(8, 7, 'UPDATE', 'senior_citizens', 15, 'Updated senior citizen: Deceased change', '{\"status\":{\"is_deceased\":0,\"deceased_date\":null}}', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '2025-12-17 10:45:16'),
(9, 7, 'UPDATE', 'senior_citizens', 23, 'Updated senior citizen: Deceased change', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '2025-12-17 10:45:18'),
(10, 7, 'UPDATE', 'senior_citizens', 23, 'Updated senior citizen: Deceased change', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '2025-12-17 10:45:19'),
(11, 7, 'UPDATE', 'senior_citizens', 23, 'Updated senior citizen: Deceased change', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '2025-12-17 10:45:20'),
(12, 7, 'UPDATE', 'senior_citizens', 23, 'Updated senior citizen: Deceased change', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '2025-12-17 10:45:22'),
(13, 7, 'UPDATE', 'senior_citizens', 23, 'Updated senior citizen: Deceased change', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '2025-12-17 10:45:23'),
(14, 7, 'UPDATE', 'senior_citizens', 23, 'Updated senior citizen: Deceased change', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '2025-12-17 10:45:25'),
(15, 7, 'UPDATE', 'senior_citizens', 23, 'Updated senior citizen: Deceased change', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '2025-12-17 10:45:26'),
(16, 7, 'UPDATE', 'senior_citizens', 23, 'Updated senior citizen: Deceased change', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '2025-12-17 10:45:28'),
(17, 7, 'UPDATE', 'senior_citizens', 23, 'Updated senior citizen: Deceased change', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-17\"}}', '2025-12-17 10:45:30'),
(18, 1, 'UPDATE_STATUS', 'applications', 13, 'Application status changed to: Verified', NULL, NULL, '2025-12-18 15:41:00'),
(19, 1, 'UPDATE_STATUS', 'applications', 17, 'Application status changed to: Approved', NULL, NULL, '2025-12-18 15:48:17'),
(20, 1, 'UPDATE_STATUS', 'applications', 4, 'Application status changed to: Approved', NULL, NULL, '2025-12-18 15:48:54'),
(21, 1, 'UPDATE_STATUS', 'applications', 16, 'Application status changed to: Approved', NULL, NULL, '2025-12-18 15:50:53'),
(22, 1, 'UPDATE_STATUS', 'applications', 18, 'Application status changed to: Approved', NULL, NULL, '2025-12-18 15:59:58'),
(23, 1, 'UPDATE', 'senior_citizens', 30, 'Updated senior citizen: Deceased change', '{\"status\":{\"is_deceased\":0,\"deceased_date\":null}}', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-18\"}}', '2025-12-18 16:00:09'),
(24, 1, 'UPDATE_STATUS', 'applications', 19, 'Application status changed to: Approved', NULL, NULL, '2025-12-18 16:50:45'),
(25, 1, 'UPDATE_STATUS', 'applications', 27, 'Application status changed to: Approved', NULL, NULL, '2025-12-18 20:19:25'),
(26, 1, 'UPDATE_STATUS', 'applications', 6, 'Application status changed to: Approved', NULL, NULL, '2025-12-18 20:36:34'),
(27, 1, 'UPDATE_STATUS', 'applications', 32, 'Application status changed to: Approved', NULL, NULL, '2025-12-18 20:57:09'),
(28, 1, 'UPDATE_STATUS', 'applications', 34, 'Application status changed to: Approved', NULL, NULL, '2025-12-18 21:22:04'),
(29, 1, 'UPDATE', 'senior_citizens', 35, 'Updated senior citizen: Deceased change', '{\"status\":{\"is_deceased\":0,\"deceased_date\":null}}', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-18\"}}', '2025-12-18 21:46:05'),
(30, 1, 'UPDATE', 'senior_citizens', 35, 'Updated senior citizen: Deceased change', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-18\"}}', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-18\"}}', '2025-12-18 21:46:30'),
(31, 1, 'UPDATE', 'senior_citizens', 35, 'Updated senior citizen: Revive change', '{\"status\":{\"is_deceased\":1,\"is_active\":0,\"deceased_date\":\"2025-12-18\"}}', '{\"status\":{\"is_deceased\":0,\"is_active\":1,\"deceased_date\":null}}', '2025-12-18 21:53:29'),
(32, 1, 'UPDATE', 'senior_citizens', 35, 'Updated senior citizen: Deceased change', '{\"status\":{\"is_deceased\":0,\"deceased_date\":null}}', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-19\"}}', '2025-12-19 01:27:03'),
(33, 1, 'UPDATE', 'senior_citizens', 35, 'Updated senior citizen: Revive change', '{\"status\":{\"is_deceased\":1,\"is_active\":0,\"deceased_date\":\"2025-12-19\"}}', '{\"status\":{\"is_deceased\":0,\"is_active\":1,\"deceased_date\":null}}', '2025-12-19 01:27:17'),
(34, 1, 'UPDATE', 'senior_citizens', 35, 'Updated senior citizen: Deceased change', '{\"status\":{\"is_deceased\":0,\"deceased_date\":null}}', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-19\"}}', '2025-12-19 01:27:27'),
(35, 1, 'UPDATE', 'senior_citizens', 35, 'Updated senior citizen: Revive change', '{\"status\":{\"is_deceased\":1,\"is_active\":0,\"deceased_date\":\"2025-12-19\"}}', '{\"status\":{\"is_deceased\":0,\"is_active\":1,\"deceased_date\":null}}', '2025-12-19 01:27:33'),
(36, 1, 'UPDATE', 'senior_citizens', 35, 'Updated senior citizen: Deceased change', '{\"status\":{\"is_deceased\":0,\"deceased_date\":null}}', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-19\"}}', '2025-12-19 01:53:23'),
(37, 1, 'UPDATE', 'senior_citizens', 35, 'Updated senior citizen: Revive change', '{\"status\":{\"is_deceased\":1,\"is_active\":0,\"deceased_date\":\"2025-12-19\"}}', '{\"status\":{\"is_deceased\":0,\"is_active\":1,\"deceased_date\":null}}', '2025-12-19 01:53:35'),
(38, 1, 'UPDATE_STATUS', 'applications', 37, 'Application status changed to: Approved', NULL, NULL, '2025-12-19 01:55:33'),
(39, 1, 'UPDATE', 'senior_citizens', 33, 'Updated senior citizen: Revalidation change', '{\"registration\":{\"registration_date\":\"2025-12-19\",\"registration_status_id\":1,\"is_active\":1}}', '{\"registration\":{\"registration_date\":\"2025-12-19\",\"registration_status_id\":2,\"is_active\":1}}', '2025-12-19 02:08:21'),
(40, 1, 'UPDATE', 'senior_citizens', 36, 'Updated senior citizen: Deceased change', '{\"status\":{\"is_deceased\":0,\"deceased_date\":null}}', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-19\"}}', '2025-12-19 02:19:31'),
(41, 1, 'UPDATE', 'senior_citizens', 36, 'Updated senior citizen: Revive change', '{\"status\":{\"is_deceased\":1,\"is_active\":0,\"deceased_date\":\"2025-12-19\"}}', '{\"status\":{\"is_deceased\":0,\"is_active\":1,\"deceased_date\":null}}', '2025-12-19 02:19:44'),
(42, 1, 'UPDATE', 'senior_citizens', 36, 'Updated senior citizen: Deceased change', '{\"status\":{\"is_deceased\":0,\"deceased_date\":null}}', '{\"status\":{\"is_deceased\":1,\"deceased_date\":\"2025-12-19\"}}', '2025-12-19 02:39:12'),
(43, 1, 'UPDATE', 'senior_citizens', 36, 'Updated senior citizen: Revive change', '{\"status\":{\"is_deceased\":1,\"is_active\":0,\"deceased_date\":\"2025-12-19\"}}', '{\"status\":{\"is_deceased\":0,\"is_active\":1,\"deceased_date\":null}}', '2025-12-19 02:39:21');

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) NOT NULL,
  `extension` varchar(10) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `gender_id` int(11) DEFAULT NULL,
  `mobile_number` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `branch_id` int(11) DEFAULT NULL COMMENT 'For branch and barangay admins',
  `barangay_id` int(11) DEFAULT NULL COMMENT 'For barangay admins only',
  `is_active` tinyint(1) DEFAULT 1,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `employee_id`, `username`, `password_hash`, `first_name`, `middle_name`, `last_name`, `extension`, `position`, `gender_id`, `mobile_number`, `email`, `role_id`, `branch_id`, `barangay_id`, `is_active`, `last_login`, `created_at`, `updated_at`) VALUES
(1, 'OSCA-ADMIN-001', 'mainadmin', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Main', NULL, 'Administrator', NULL, 'System Administrator', 1, '09171234567', 'admin@osca.gov.ph', 1, NULL, NULL, 1, '2026-01-29 03:47:18', '2025-12-15 01:34:10', '2026-01-29 03:47:18'),
(2, 'OSCA-BRANCH-001', 'branch1admin', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Branch', NULL, 'Admin One', NULL, 'Field Office Manager', 1, '09171234568', 'field1@osca.gov.ph', 2, 2, NULL, 1, '2025-12-16 18:05:09', '2025-12-15 01:34:10', '2025-12-16 18:05:09'),
(3, 'OSCA-BRANCH-002', 'branch2admin', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Branch', NULL, 'Admin Two', NULL, 'Field Office Manager', 2, '09171234569', 'field2@osca.gov.ph', 2, 3, NULL, 1, NULL, '2025-12-15 01:34:10', '2025-12-15 01:34:10'),
(4, 'OSCA-BRGY-001', 'tetuan.admin', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Tetuan', NULL, 'Admin', NULL, 'Barangay OSCA Coordinator', 1, '09171234570', 'tetuan@osca.gov.ph', 3, 2, 79, 1, NULL, '2025-12-15 01:34:10', '2025-12-15 01:34:10'),
(5, 'OSCA-BRGY-002', 'santamaria.admin', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Santa Maria', NULL, 'Admin', NULL, 'Barangay OSCA Coordinator', 2, '09171234571', 'santamaria@osca.gov.ph', 3, 2, 68, 1, NULL, '2025-12-15 01:34:10', '2025-12-15 01:34:10'),
(6, 'OSCA-BRGY-003', 'guiwan.admin', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Guiwan', NULL, 'Admin', NULL, 'Barangay OSCA Coordinator', 1, '09171234572', 'guiwan@osca.gov.ph', 3, 6, 26, 1, NULL, '2025-12-15 01:34:10', '2025-12-15 01:34:10'),
(7, 'OSCA-ADMIN-999', 'admin', '$2y$10$KQ8NHMt5LVbuyjYuW3p1zuzZOeJ7.1q3FSRnWb/Zkqr03YMR7GQxe', 'System', NULL, 'Administrator', NULL, 'Main Administrator', 1, '09999999999', 'admin@osca.local', 1, NULL, NULL, 1, '2025-12-18 08:42:26', '2025-12-16 18:26:07', '2025-12-18 08:42:26');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `event_date` date DEFAULT NULL,
  `event_time` time DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `target_audience` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `is_published` tinyint(1) DEFAULT 0,
  `published_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `type_id`, `title`, `description`, `event_date`, `event_time`, `location`, `target_audience`, `created_by`, `is_published`, `published_date`, `created_at`, `updated_at`) VALUES
(1, 1, 'Medical Mission 2025', 'Free medical checkup and medicines for senior citizens', '2025-10-25', '09:00:00', 'Barangay Hall, Tetuan', 'All Senior Citizens', 1, 1, '2025-01-10 00:00:00', '2025-12-15 01:34:59', '2025-12-15 01:34:59'),
(2, 1, 'Quarterly Pension (Octogenarian)', 'Distribution of quarterly pension for seniors aged 80-89', '2025-10-25', '09:00:00', 'DSWD Office', 'Ages 80-89', 1, 1, '2025-01-11 00:00:00', '2025-12-15 01:34:59', '2025-12-15 01:34:59');

-- --------------------------------------------------------

--
-- Table structure for table `announcement_media`
--

CREATE TABLE `announcement_media` (
  `id` int(11) NOT NULL,
  `announcement_id` int(11) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `media_type` enum('image','video','document') NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `announcement_types`
--

CREATE TABLE `announcement_types` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announcement_types`
--

INSERT INTO `announcement_types` (`id`, `name`) VALUES
(3, 'Alert'),
(1, 'Event'),
(2, 'News'),
(4, 'Program');

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(11) NOT NULL,
  `application_number` varchar(50) NOT NULL,
  `senior_id` int(11) DEFAULT NULL,
  `application_type_id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Draft',
  `submitted_by` int(11) DEFAULT NULL,
  `submission_date` timestamp NULL DEFAULT NULL,
  `verified_by` int(11) DEFAULT NULL,
  `verification_date` timestamp NULL DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `approval_date` timestamp NULL DEFAULT NULL,
  `printed_by` int(11) DEFAULT NULL,
  `print_date` timestamp NULL DEFAULT NULL,
  `claimed_by` int(11) DEFAULT NULL,
  `claim_date` timestamp NULL DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `application_number`, `senior_id`, `application_type_id`, `status`, `submitted_by`, `submission_date`, `verified_by`, `verification_date`, `approved_by`, `approval_date`, `printed_by`, `print_date`, `claimed_by`, `claim_date`, `notes`, `created_at`, `updated_at`) VALUES
(6, 'APP-2025-000027', 26, 1, 'Claimed', 1, '2025-12-18 13:21:26', NULL, NULL, 1, '2025-12-18 13:36:34', 1, '2025-12-19 02:34:43', 1, '2025-12-19 02:34:50', '\n2025-12-18 21:36:34 - Status changed to Approved by user 1', '2025-12-18 11:08:17', '2025-12-19 02:34:50'),
(18, 'APP-2025-000033', 31, 1, 'Claimed', 1, '2025-12-18 08:59:48', NULL, NULL, 1, '2025-12-18 08:59:58', 1, '2025-12-19 00:10:07', 1, '2025-12-19 00:10:09', '\n[APPLICANT_PAYLOAD]{\"personal_info\":{\"first_name\":\"cali\",\"middle_name\":\"the\",\"last_name\":\"cat\",\"extension\":\"da\",\"birthdate\":\"0124-12-31\",\"gender_id\":2,\"barangay_id\":19,\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"contact_info\":{\"mobile_number\":null,\"telephone_number\":null,\"house_number\":\"dsa\",\"street\":\"das\",\"email\":null},\"family_members\":null,\"target_sectors\":null,\"photo_path\":null}\n2025-12-18 16:59:58 - Status changed to Approved by user 1', '2025-12-18 15:59:48', '2025-12-19 00:10:09'),
(19, 'APP-2025-000034', 32, 1, 'Approved', 1, '2025-12-18 09:10:57', NULL, NULL, 1, '2025-12-18 09:50:45', NULL, NULL, NULL, NULL, '\n[APPLICANT_PAYLOAD]{\"personal_info\":{\"first_name\":\"dog \",\"middle_name\":\"d \",\"last_name\":\"dog\",\"extension\":null,\"birthdate\":\"0032-12-24\",\"gender_id\":2,\"barangay_id\":17,\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"contact_info\":{\"mobile_number\":null,\"telephone_number\":null,\"house_number\":\"dsa\",\"street\":\"d\",\"email\":null},\"family_members\":null,\"target_sectors\":null,\"photo_path\":null}\n2025-12-18 17:50:45 - Status changed to Approved by user 1', '2025-12-18 16:10:57', '2025-12-18 16:50:45'),
(27, 'APP-2025-000035', 33, 1, 'Approved', 1, '2025-12-18 13:18:29', NULL, NULL, 1, '2025-12-18 13:19:25', NULL, NULL, NULL, NULL, '\n[APPLICANT_PAYLOAD]{\"personal_info\":{\"first_name\":\"Ace\",\"middle_name\":null,\"last_name\":\"Nieva\",\"extension\":\"fas\",\"birthdate\":\"0343-04-04\",\"gender_id\":1,\"barangay_id\":15,\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"contact_info\":{\"mobile_number\":null,\"telephone_number\":null,\"house_number\":\"as\",\"street\":\"da\",\"email\":null},\"family_members\":null,\"target_sectors\":null,\"photo_path\":null}\n2025-12-18 21:19:25 - Status changed to Approved by user 1', '2025-12-18 20:18:29', '2025-12-18 20:19:25'),
(33, 'APP-2025-000037', NULL, 1, 'For Verification', 1, '2025-12-18 14:34:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\n[APPLICANT_PAYLOAD]{\"personal_info\":{\"first_name\":\"gor\",\"middle_name\":null,\"last_name\":\"illa\",\"extension\":null,\"birthdate\":\"0323-02-23\",\"gender_id\":2,\"barangay_id\":4,\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"contact_info\":{\"mobile_number\":null,\"telephone_number\":null,\"house_number\":\"24\",\"street\":\"42\",\"email\":null},\"family_members\":null,\"target_sectors\":null,\"photo_path\":null}', '2025-12-18 20:58:28', '2025-12-18 21:34:42'),
(34, 'APP-2025-000038', 35, 1, 'Printed', 1, '2025-12-18 14:21:55', NULL, NULL, 1, '2025-12-18 14:22:04', 1, '2025-12-19 00:10:25', 1, '2025-12-19 00:09:53', '\n[APPLICANT_PAYLOAD]{\"personal_info\":{\"first_name\":\"edit\",\"middle_name\":null,\"last_name\":\"pls\",\"extension\":null,\"birthdate\":\"0323-02-23\",\"gender_id\":2,\"barangay_id\":17,\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"contact_info\":{\"mobile_number\":null,\"telephone_number\":null,\"house_number\":\"dsa\",\"street\":\"dsa\",\"email\":null},\"family_members\":null,\"target_sectors\":null,\"photo_path\":null}\n2025-12-18 22:22:04 - Status changed to Approved by user 1', '2025-12-18 20:59:38', '2025-12-19 00:10:25'),
(35, 'APP-2025-000039', NULL, 1, 'For Verification', 1, '2025-12-18 15:19:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\n[APPLICANT_PAYLOAD]{\"personal_info\":{\"first_name\":\"Loniel\",\"middle_name\":null,\"last_name\":\"Gapol\",\"extension\":null,\"birthdate\":\"1945-12-31\",\"gender_id\":1,\"barangay_id\":16,\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"contact_info\":{\"mobile_number\":null,\"telephone_number\":null,\"house_number\":\"23\",\"street\":\"32\",\"email\":null},\"family_members\":null,\"target_sectors\":[\"WEPC\"],\"photo_path\":null}', '2025-12-18 22:19:53', '2025-12-18 22:19:53'),
(37, 'APP-2025-000040', 36, 1, 'Printed', 1, '2025-12-18 18:54:57', NULL, NULL, 1, '2025-12-18 18:55:33', 1, '2025-12-19 02:34:33', 1, '2025-12-19 02:34:30', '\n[APPLICANT_PAYLOAD]{\"personal_info\":{\"first_name\":\"Fatima\",\"middle_name\":null,\"last_name\":\"Abubakar\",\"extension\":null,\"birthdate\":\"1940-12-02\",\"gender_id\":2,\"barangay_id\":15,\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"contact_info\":{\"mobile_number\":null,\"telephone_number\":null,\"house_number\":\"123\",\"street\":\"123\",\"email\":null},\"family_members\":null,\"target_sectors\":null,\"photo_path\":null}\n2025-12-19 02:55:33 - Status changed to Approved by user 1', '2025-12-19 01:54:57', '2025-12-19 02:34:33');

-- --------------------------------------------------------

--
-- Table structure for table `application_documents`
--

CREATE TABLE `application_documents` (
  `id` int(11) NOT NULL,
  `application_id` int(11) NOT NULL,
  `document_type_id` int(11) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `original_filename` varchar(255) DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `uploaded_by` int(11) NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `application_documents`
--

INSERT INTO `application_documents` (`id`, `application_id`, `document_type_id`, `file_path`, `original_filename`, `file_size`, `uploaded_by`, `uploaded_at`) VALUES
(16, 18, 1, 'uploads/applications/1766073588_dbd90a24.jpg', 'dog.jpg', 14746, 1, '2025-12-18 15:59:48'),
(17, 18, 1, 'uploads/applications/1766073588_37479067.jpg', 'gorz1.jpg', 27583, 1, '2025-12-18 15:59:48'),
(18, 18, 3, 'uploads/applications/1766073588_b6b593a3.jpg', 'dog.jpg', 14746, 1, '2025-12-18 15:59:48'),
(19, 19, 1, 'uploads/applications/1766074257_2cf64a6a.jpg', 'dog.jpg', 14746, 1, '2025-12-18 16:10:57'),
(20, 19, 1, 'uploads/applications/1766074257_8c34bf8d.jpg', 'dog.jpg', 14746, 1, '2025-12-18 16:10:57'),
(21, 19, 3, 'uploads/applications/1766074257_1fefda6f.jpg', 'dog.jpg', 14746, 1, '2025-12-18 16:10:57'),
(61, 27, 5, 'uploads/applications/1766089109_02425194.jpg', 'birth_certificate.jpg', 14746, 1, '2025-12-18 20:18:29'),
(62, 27, 2, 'uploads/applications/1766089109_d4acafa3.jpg', 'barangay_certificate.jpg', 27583, 1, '2025-12-18 20:18:29'),
(63, 27, 3, 'uploads/applications/1766089109_f4325320.jpg', 'senior_photo.jpg', 6796, 1, '2025-12-18 20:18:29'),
(64, 6, 5, 'uploads/applications/1766089286_birth_certificate_28eef890.jpg', 'birth_certificate.jpg', 14746, 1, '2025-12-18 20:21:26'),
(65, 6, 2, 'uploads/applications/1766089286_barangay_certificate_96a437ef.jpg', 'barangay_certificate.jpg', 27583, 1, '2025-12-18 20:21:26'),
(66, 6, 3, 'uploads/applications/1766089286_senior_photo_fc867758.jpg', 'senior_photo.jpg', 6796, 1, '2025-12-18 20:21:26'),
(99, 33, 6, 'uploads/applications/1766092474_comelec_id_6c57a69e.jpg', 'comelec_id.jpg', 14746, 1, '2025-12-18 21:14:34'),
(101, 34, 5, 'uploads/applications/1766092915_birth_certificate_5c4ac61b.jpg', 'birth_certificate.jpg', 14746, 1, '2025-12-18 21:21:55'),
(102, 34, 2, 'uploads/applications/1766092915_barangay_certificate_0f13585e.jpg', 'barangay_certificate.jpg', 14746, 1, '2025-12-18 21:21:55'),
(103, 34, 6, 'uploads/applications/1766092915_comelec_id_f12733ad.jpg', 'comelec_id.jpg', 6796, 1, '2025-12-18 21:21:55'),
(104, 34, 3, 'uploads/applications/1766092915_senior_photo_bd9c9228.jpg', 'senior_photo.jpg', 9541, 1, '2025-12-18 21:21:55'),
(105, 33, 5, 'uploads/applications/1766093682_birth_certificate_2a6fe84b.jpg', 'birth_certificate.jpg', 14746, 1, '2025-12-18 21:34:42'),
(106, 33, 2, 'uploads/applications/1766093682_barangay_certificate_182a8a29.img', 'barangay_certificate.img', 7608, 1, '2025-12-18 21:34:42'),
(107, 33, 3, 'uploads/applications/1766093682_senior_photo_a6cd7702.jpg', 'senior_photo.jpg', 14746, 1, '2025-12-18 21:34:42'),
(108, 35, 5, 'uploads/applications/1766096393_cbeaae74.jpg', 'birth_certificate.jpg', 14746, 1, '2025-12-18 22:19:53'),
(109, 35, 2, 'uploads/applications/1766096393_4a684780.jpg', 'barangay_certificate.jpg', 27583, 1, '2025-12-18 22:19:53'),
(110, 35, 6, 'uploads/applications/1766096393_c98947dc.jpg', 'comelec_id.jpg', 14746, 1, '2025-12-18 22:19:53'),
(111, 35, 3, 'uploads/applications/1766096393_03325226.jpg', 'senior_photo.jpg', 14746, 1, '2025-12-18 22:19:53'),
(112, 37, 5, 'uploads/applications/1766109297_b41f271d.jpg', 'birth_certificate.jpg', 27583, 1, '2025-12-19 01:54:57'),
(113, 37, 2, 'uploads/applications/1766109297_bac47745.jpg', 'barangay_certificate.jpg', 14746, 1, '2025-12-19 01:54:57'),
(114, 37, 3, 'uploads/applications/1766109297_6742159a.jpg', 'senior_photo.jpg', 14746, 1, '2025-12-19 01:54:57');

-- --------------------------------------------------------

--
-- Table structure for table `application_types`
--

CREATE TABLE `application_types` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `required_documents` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `application_types`
--

INSERT INTO `application_types` (`id`, `name`, `description`, `required_documents`) VALUES
(1, 'New ID', 'New senior citizen ID application', 'Birth Certificate, Barangay Certificate, Photo'),
(2, 'Renewal', 'Renewal of existing ID', 'Old ID, Photo'),
(3, 'Lost ID', 'Replacement for lost ID', 'Affidavit of Loss, Barangay Certificate, Photo'),
(4, 'Damaged ID', 'Replacement for damaged ID', 'Damaged ID, Photo'),
(5, 'Update', 'Update of information', 'Supporting documents for changes');

-- --------------------------------------------------------

--
-- Table structure for table `archives`
--

CREATE TABLE `archives` (
  `id` int(11) NOT NULL,
  `archive_type` enum('senior_citizen','admin_user') NOT NULL,
  `reference_id` int(11) NOT NULL COMMENT 'Original ID from source table',
  `archive_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`archive_data`)),
  `archive_reason` enum('deceased','deactivated','transferred','other') NOT NULL,
  `archive_notes` text DEFAULT NULL,
  `original_created_at` timestamp NULL DEFAULT NULL,
  `original_updated_at` timestamp NULL DEFAULT NULL,
  `deceased_date` date DEFAULT NULL COMMENT 'For deceased seniors',
  `archived_by` int(11) NOT NULL,
  `archived_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `archives`
--

INSERT INTO `archives` (`id`, `archive_type`, `reference_id`, `archive_data`, `archive_reason`, `archive_notes`, `original_created_at`, `original_updated_at`, `deceased_date`, `archived_by`, `archived_at`) VALUES
(1, 'senior_citizen', 999, '{\"id\":999,\"osca_id\":\"ZC-2024-000999\",\"first_name\":\"Rosa\",\"middle_name\":\"Santos\",\"last_name\":\"Martinez\",\"birthdate\":\"1940-03-15\",\"gender_id\":2,\"barangay_id\":79,\"registration_date\":\"2024-06-10\",\"deceased_info\":\"Natural causes\"}', 'deceased', 'Passed away peacefully. Family reported death on 2024-12-20.', '2024-06-10 00:00:00', '2024-12-20 07:00:00', '2024-12-18', 1, '2024-12-20 08:00:00'),
(2, 'admin_user', 998, '{\"id\":998,\"employee_id\":\"OSCA-BRGY-099\",\"username\":\"old.admin\",\"first_name\":\"Former\",\"last_name\":\"Admin\",\"position\":\"Barangay OSCA Coordinator\",\"branch_id\":2,\"barangay_id\":79,\"role_id\":3,\"deactivation_reason\":\"Resigned\"}', 'deactivated', 'Resigned from position. Account deactivated as per protocol.', '2023-01-15 00:00:00', '2024-11-30 09:00:00', NULL, 1, '2024-11-30 09:30:00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `archives_expanded`
-- (See below for the actual view)
--
CREATE TABLE `archives_expanded` (
`id` int(11)
,`archive_type` enum('senior_citizen','admin_user')
,`reference_id` int(11)
,`archive_data` longtext
,`archive_reason` enum('deceased','deactivated','transferred','other')
,`archive_notes` text
,`original_created_at` timestamp
,`original_updated_at` timestamp
,`deceased_date` date
,`archived_by` int(11)
,`archived_by_name` varchar(201)
,`archived_at` timestamp
,`osca_id` longtext
,`first_name` longtext
,`last_name` longtext
,`username` longtext
,`employee_id` longtext
);

-- --------------------------------------------------------

--
-- Table structure for table `barangays`
--

CREATE TABLE `barangays` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `city` varchar(100) DEFAULT 'Zamboanga City',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barangays`
--

INSERT INTO `barangays` (`id`, `code`, `name`, `district`, `city`, `created_at`, `updated_at`) VALUES
(1, 'ZC-001', 'Arena Blanco', 'District 1', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(2, 'ZC-002', 'Ayala', 'District 1', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(3, 'ZC-003', 'Baliwasan', 'District 1', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(4, 'ZC-004', 'Baluno', 'District 1', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(5, 'ZC-005', 'Boalan', 'District 1', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(6, 'ZC-006', 'Bolong', 'District 1', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(7, 'ZC-007', 'Buenavista', 'District 1', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(8, 'ZC-008', 'Bunguiao', 'District 1', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(9, 'ZC-009', 'Busay', 'District 1', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(10, 'ZC-010', 'Cabaluay', 'District 1', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(11, 'ZC-011', 'Cabatangan', 'District 1', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(12, 'ZC-012', 'Cacao', 'District 1', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(13, 'ZC-013', 'Calabasa', 'District 1', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(14, 'ZC-014', 'Calarian', 'District 1', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(15, 'ZC-015', 'Campo Islam', 'District 1', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(16, 'ZC-016', 'Canelar', 'District 1', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(17, 'ZC-017', 'Capisan', 'District 1', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(18, 'ZC-018', 'Cawit', 'District 1', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(19, 'ZC-019', 'Culianan', 'District 1', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(20, 'ZC-020', 'Curuan', 'District 1', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(21, 'ZC-021', 'Dita', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(22, 'ZC-022', 'Divisoria', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(23, 'ZC-023', 'Dulian (Upper Bunguiao)', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(24, 'ZC-024', 'Dulian (Lower Pasonanca)', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(25, 'ZC-025', 'Guisao', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(26, 'ZC-026', 'Guiwan', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(27, 'ZC-027', 'La Paz', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(28, 'ZC-028', 'Labuan', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(29, 'ZC-029', 'Lamisahan', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(30, 'ZC-030', 'Landang Gua', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(31, 'ZC-031', 'Landang Laum', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(32, 'ZC-032', 'Lanzones', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(33, 'ZC-033', 'Lapakan', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(34, 'ZC-034', 'Latuan (Curuan)', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(35, 'ZC-035', 'Licomo', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(36, 'ZC-036', 'Limaong', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(37, 'ZC-037', 'Limpapa', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(38, 'ZC-038', 'Lubigan', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(39, 'ZC-039', 'Lumayang', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(40, 'ZC-040', 'Lumbangan', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(41, 'ZC-041', 'Lunzuran', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(42, 'ZC-042', 'Maasin', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(43, 'ZC-043', 'Malagutay', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(44, 'ZC-044', 'Mampang', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(45, 'ZC-045', 'Manalipa', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(46, 'ZC-046', 'Mangusu', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(47, 'ZC-047', 'Manicahan', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(48, 'ZC-048', 'Mariki', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(49, 'ZC-049', 'Mercedes', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(50, 'ZC-050', 'Muti', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(51, 'ZC-051', 'Pamucutan', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(52, 'ZC-052', 'Pangapuyan', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(53, 'ZC-053', 'Panubigan', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(54, 'ZC-054', 'Pasilmanta (Sacol Island)', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(55, 'ZC-055', 'Pasonanca', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(56, 'ZC-056', 'Patalon', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(57, 'ZC-057', 'Putik', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(58, 'ZC-058', 'Quiniput', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(59, 'ZC-059', 'Recodo', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(60, 'ZC-060', 'Rio Hondo', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(61, 'ZC-061', 'Salaan', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(62, 'ZC-062', 'San Jose Cawa-cawa', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(63, 'ZC-063', 'San Jose Gusu', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(64, 'ZC-064', 'San Roque', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(65, 'ZC-065', 'Sangali', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(66, 'ZC-066', 'Santa Barbara', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(67, 'ZC-067', 'Santa Catalina', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(68, 'ZC-068', 'Santa Maria', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(69, 'ZC-069', 'Santo Ni?o', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(70, 'ZC-070', 'Sibulao (Caruan)', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(71, 'ZC-071', 'Sinubung', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(72, 'ZC-072', 'Sinunuc', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(73, 'ZC-073', 'Tagasilay', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(74, 'ZC-074', 'Taguiti', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(75, 'ZC-075', 'Talabaan', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(76, 'ZC-076', 'Talisayan', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(77, 'ZC-077', 'Talon-talon', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(78, 'ZC-078', 'Taluksangay', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(79, 'ZC-079', 'Tetuan', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(80, 'ZC-080', 'Tictapul', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(81, 'ZC-081', 'Tigbalabag', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(82, 'ZC-082', 'Tigtabon', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(83, 'ZC-083', 'Tolosa', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(84, 'ZC-084', 'Tugbungan', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(85, 'ZC-085', 'Tulungatung', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(86, 'ZC-086', 'Tumaga', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(87, 'ZC-087', 'Tumalutab', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(88, 'ZC-088', 'Tumitus', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(89, 'ZC-089', 'Victoria', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(90, 'ZC-090', 'Vitali', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(91, 'ZC-091', 'Zambowood', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(92, 'ZC-092', 'Zone I (Poblacion)', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(93, 'ZC-093', 'Zone II (Poblacion)', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(94, 'ZC-094', 'Zone III (Poblacion)', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54'),
(95, 'ZC-095', 'Zone IV (Poblacion)', 'District 2', 'Zamboanga City', '2025-12-15 01:31:54', '2025-12-15 01:31:54');

-- --------------------------------------------------------

--
-- Table structure for table `benefits`
--

CREATE TABLE `benefits` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `type` enum('discount','pension','medical','event','assistance','privilege') NOT NULL,
  `amount` decimal(10,2) DEFAULT 0.00 COMMENT 'Amount if applicable (pension, cash assistance)',
  `age_requirement` int(11) DEFAULT 60 COMMENT 'Minimum age to qualify',
  `max_age` int(11) DEFAULT NULL COMMENT 'Maximum age (null = no limit)',
  `frequency` enum('one-time','daily','monthly','quarterly','annual','per-use') DEFAULT 'per-use',
  `is_barangay_specific` tinyint(1) DEFAULT 0,
  `barangay_id` int(11) DEFAULT NULL COMMENT 'Specific barangay if exclusive',
  `requires_application` tinyint(1) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `benefits`
--

INSERT INTO `benefits` (`id`, `code`, `name`, `description`, `type`, `amount`, `age_requirement`, `max_age`, `frequency`, `is_barangay_specific`, `barangay_id`, `requires_application`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'SC-DISCOUNT-20', '20% Discount on Basic Necessities', 'Transportation, hotels, restaurants, recreation', 'discount', 0.00, 60, NULL, 'per-use', 0, NULL, 0, 1, '2025-12-15 04:10:10', '2025-12-15 04:10:10'),
(2, 'SC-MEDICINE-20', '20% Discount on Medicines', 'All prescription and OTC medicines', 'discount', 0.00, 60, NULL, 'per-use', 0, NULL, 0, 1, '2025-12-15 04:10:10', '2025-12-15 04:10:10'),
(3, 'SC-TRANSPORT-20', '20% Discount on Public Transport', 'Bus, jeepney, LRT, domestic flights', 'discount', 0.00, 60, NULL, 'per-use', 0, NULL, 0, 1, '2025-12-15 04:10:10', '2025-12-15 04:10:10'),
(4, 'SC-VAT-EXEMPT', 'VAT Exemption', 'VAT exemption on applicable purchases', 'privilege', 0.00, 60, NULL, 'per-use', 0, NULL, 0, 1, '2025-12-15 04:10:10', '2025-12-15 04:10:10'),
(5, 'SC-PRIORITY', 'Priority Lane Access', 'Priority in banks, government offices, etc.', 'privilege', 0.00, 60, NULL, 'per-use', 0, NULL, 0, 1, '2025-12-15 04:10:10', '2025-12-15 04:10:10'),
(6, 'SC-FREE-MEDICAL', 'Free Medical Services', 'Government hospitals and health centers', 'medical', 0.00, 60, NULL, 'per-use', 0, NULL, 0, 1, '2025-12-15 04:10:10', '2025-12-15 04:10:10'),
(7, 'PENSION-OCTOGENARIAN-500', 'Octogenarian Monthly Pension', 'Monthly pension for seniors 80-89 years old', 'pension', 500.00, 80, 89, 'monthly', 0, NULL, 0, 1, '2025-12-15 04:10:10', '2025-12-15 04:10:10'),
(8, 'PENSION-NONAGENARIAN-1000', 'Nonagenarian Monthly Pension', 'Monthly pension for seniors 90-99 years old', 'pension', 1000.00, 90, 99, 'monthly', 0, NULL, 0, 1, '2025-12-15 04:10:10', '2025-12-15 04:10:10'),
(9, 'PENSION-CENTENARIAN-ONETIME-10000', 'Centenarian Cash Gift', 'One-time cash gift upon reaching 100 years old', 'pension', 10000.00, 100, NULL, 'one-time', 0, NULL, 0, 1, '2025-12-15 04:10:10', '2025-12-15 04:10:10'),
(10, 'PENSION-CENTENARIAN-MONTHLY-1500', 'Centenarian Monthly Pension', 'Monthly pension for centenarians (100+)', 'pension', 1500.00, 100, NULL, 'monthly', 0, NULL, 0, 1, '2025-12-15 04:10:10', '2025-12-15 04:10:10'),
(11, 'MED-CHECKUP-FREE', 'Free Annual Health Checkup', 'Complete physical examination', 'medical', 0.00, 60, NULL, 'annual', 0, NULL, 0, 1, '2025-12-15 04:10:10', '2025-12-15 04:10:10'),
(12, 'MED-DENTAL-FREE', 'Free Dental Services', 'Basic dental care in government facilities', 'medical', 0.00, 60, NULL, 'per-use', 0, NULL, 0, 1, '2025-12-15 04:10:10', '2025-12-15 04:10:10'),
(13, 'MED-VACCINATION', 'Free Vaccinations', 'Flu shots and other senior vaccinations', 'medical', 0.00, 60, NULL, 'annual', 0, NULL, 0, 1, '2025-12-15 04:10:10', '2025-12-15 04:10:10'),
(14, 'ASSIST-BURIAL-5000', 'Burial Assistance', 'Financial assistance for burial expenses', 'assistance', 5000.00, 60, NULL, 'one-time', 0, NULL, 0, 1, '2025-12-15 04:10:10', '2025-12-15 04:10:10'),
(15, 'ASSIST-HOSPITALIZATION', 'Hospitalization Assistance', 'Support for hospital expenses', 'assistance', 0.00, 60, NULL, 'per-use', 0, NULL, 0, 1, '2025-12-15 04:10:10', '2025-12-15 04:10:10'),
(16, 'TETUAN-DENTAL-FREE', 'Free Dental Checkup - Tetuan Only', 'Exclusive free dental services for Tetuan residents', 'medical', 0.00, 60, NULL, 'quarterly', 1, 79, 0, 1, '2025-12-15 04:10:10', '2025-12-15 04:10:10');

-- --------------------------------------------------------

--
-- Table structure for table `benefit_history`
--

CREATE TABLE `benefit_history` (
  `id` int(11) NOT NULL,
  `senior_id` int(11) NOT NULL,
  `benefit_id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `claimed_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `next_eligible_date` date DEFAULT NULL COMMENT 'When can claim again',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `benefit_transactions`
--

CREATE TABLE `benefit_transactions` (
  `id` int(11) NOT NULL,
  `transaction_number` varchar(50) NOT NULL,
  `senior_id` int(11) NOT NULL,
  `benefit_id` int(11) NOT NULL,
  `amount` decimal(10,2) DEFAULT 0.00,
  `transaction_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `location` varchar(255) DEFAULT NULL COMMENT 'Where benefit was claimed',
  `processed_by` int(11) NOT NULL COMMENT 'Staff who processed',
  `verification_document` varchar(255) DEFAULT NULL COMMENT 'Receipt/proof path',
  `notes` text DEFAULT NULL,
  `status` enum('pending','approved','completed','rejected','cancelled') DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Triggers `benefit_transactions`
--
DELIMITER $$
CREATE TRIGGER `after_benefit_transaction_insert` AFTER INSERT ON `benefit_transactions` FOR EACH ROW BEGIN
    DECLARE next_date DATE;
    DECLARE benefit_freq VARCHAR(20);
    
    
    SELECT frequency INTO benefit_freq 
    FROM benefits 
    WHERE id = NEW.benefit_id;
    
    
    SET next_date = CASE benefit_freq
        WHEN 'daily' THEN DATE_ADD(NEW.transaction_date, INTERVAL 1 DAY)
        WHEN 'monthly' THEN DATE_ADD(NEW.transaction_date, INTERVAL 1 MONTH)
        WHEN 'quarterly' THEN DATE_ADD(NEW.transaction_date, INTERVAL 3 MONTH)
        WHEN 'annual' THEN DATE_ADD(NEW.transaction_date, INTERVAL 1 YEAR)
        WHEN 'one-time' THEN NULL
        ELSE NEW.transaction_date
    END;
    
    
    INSERT INTO benefit_history (senior_id, benefit_id, transaction_id, claimed_date, next_eligible_date)
    VALUES (NEW.senior_id, NEW.benefit_id, NEW.id, NEW.transaction_date, next_date);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `branch_head` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `code`, `name`, `address`, `contact_number`, `email`, `branch_head`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'OSCA-MAIN', 'OSCA Main Office', 'City Hall, Zamboanga City', '062-991-1234', 'osca.main@zamboanga.gov.ph', 'Main Administrator', 1, '2025-12-15 01:32:12', '2025-12-15 01:32:12'),
(2, 'OSCA-F1', 'Field Office 1 - East District', 'Tetuan, Zamboanga City', '062-991-1235', 'osca.field1@zamboanga.gov.ph', 'Branch Head 1', 1, '2025-12-15 01:32:12', '2025-12-15 01:32:12'),
(3, 'OSCA-F2', 'Field Office 2 - West District', 'Baliwasan, Zamboanga City', '062-991-1236', 'osca.field2@zamboanga.gov.ph', 'Branch Head 2', 1, '2025-12-15 01:32:12', '2025-12-15 01:32:12'),
(4, 'OSCA-F3', 'Field Office 3 - North District', 'Pasonanca, Zamboanga City', '062-991-1237', 'osca.field3@zamboanga.gov.ph', 'Branch Head 3', 1, '2025-12-15 01:32:12', '2025-12-15 01:32:12'),
(5, 'OSCA-F4', 'Field Office 4 - South District', 'Taluksangay, Zamboanga City', '062-991-1238', 'osca.field4@zamboanga.gov.ph', 'Branch Head 4', 1, '2025-12-15 01:32:12', '2025-12-15 01:32:12'),
(6, 'OSCA-F5', 'Field Office 5 - Central District', 'Guiwan, Zamboanga City', '062-991-1239', 'osca.field5@zamboanga.gov.ph', 'Branch Head 5', 1, '2025-12-15 01:32:12', '2025-12-15 01:32:12'),
(7, 'OSCA-F6', 'Field Office 6 - Coastal District', 'Recodo, Zamboanga City', '062-991-1240', 'osca.field6@zamboanga.gov.ph', 'Branch Head 6', 1, '2025-12-15 01:32:12', '2025-12-15 01:32:12'),
(8, 'OSCA-F7', 'Field Office 7 - Mountain District', 'Curuan, Zamboanga City', '062-991-1241', 'osca.field7@zamboanga.gov.ph', 'Branch Head 7', 1, '2025-12-15 01:32:12', '2025-12-15 01:32:12');

-- --------------------------------------------------------

--
-- Table structure for table `branch_barangays`
--

CREATE TABLE `branch_barangays` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `barangay_id` int(11) NOT NULL,
  `assigned_date` date NOT NULL,
  `is_active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `branch_barangays`
--

INSERT INTO `branch_barangays` (`id`, `branch_id`, `barangay_id`, `assigned_date`, `is_active`) VALUES
(1, 2, 1, '2025-01-01', 1),
(2, 2, 2, '2025-01-01', 1),
(3, 2, 3, '2025-01-01', 1),
(4, 2, 4, '2025-01-01', 1),
(5, 2, 5, '2025-01-01', 1),
(6, 2, 6, '2025-01-01', 1),
(7, 2, 7, '2025-01-01', 1),
(8, 2, 8, '2025-01-01', 1),
(9, 2, 9, '2025-01-01', 1),
(10, 2, 10, '2025-01-01', 1),
(11, 2, 11, '2025-01-01', 1),
(12, 2, 12, '2025-01-01', 1),
(13, 2, 13, '2025-01-01', 1),
(14, 2, 14, '2025-01-01', 1),
(16, 3, 15, '2025-01-01', 1),
(17, 3, 16, '2025-01-01', 1),
(18, 3, 17, '2025-01-01', 1),
(19, 3, 18, '2025-01-01', 1),
(20, 3, 19, '2025-01-01', 1),
(21, 3, 20, '2025-01-01', 1),
(22, 3, 21, '2025-01-01', 1),
(23, 3, 22, '2025-01-01', 1),
(24, 3, 23, '2025-01-01', 1),
(25, 3, 24, '2025-01-01', 1),
(26, 3, 25, '2025-01-01', 1),
(27, 3, 26, '2025-01-01', 1),
(28, 3, 27, '2025-01-01', 1),
(29, 3, 28, '2025-01-01', 1),
(31, 4, 29, '2025-01-01', 1),
(32, 4, 30, '2025-01-01', 1),
(33, 4, 31, '2025-01-01', 1),
(34, 4, 32, '2025-01-01', 1),
(35, 4, 33, '2025-01-01', 1),
(36, 4, 34, '2025-01-01', 1),
(37, 4, 35, '2025-01-01', 1),
(38, 4, 36, '2025-01-01', 1),
(39, 4, 37, '2025-01-01', 1),
(40, 4, 38, '2025-01-01', 1),
(41, 4, 39, '2025-01-01', 1),
(42, 4, 40, '2025-01-01', 1),
(43, 4, 41, '2025-01-01', 1),
(44, 4, 42, '2025-01-01', 1),
(46, 5, 43, '2025-01-01', 1),
(47, 5, 44, '2025-01-01', 1),
(48, 5, 45, '2025-01-01', 1),
(49, 5, 46, '2025-01-01', 1),
(50, 5, 47, '2025-01-01', 1),
(51, 5, 48, '2025-01-01', 1),
(52, 5, 49, '2025-01-01', 1),
(53, 5, 50, '2025-01-01', 1),
(54, 5, 51, '2025-01-01', 1),
(55, 5, 52, '2025-01-01', 1),
(56, 5, 53, '2025-01-01', 1),
(57, 5, 54, '2025-01-01', 1),
(58, 5, 55, '2025-01-01', 1),
(59, 5, 56, '2025-01-01', 1),
(61, 6, 57, '2025-01-01', 1),
(62, 6, 58, '2025-01-01', 1),
(63, 6, 59, '2025-01-01', 1),
(64, 6, 60, '2025-01-01', 1),
(65, 6, 61, '2025-01-01', 1),
(66, 6, 62, '2025-01-01', 1),
(67, 6, 63, '2025-01-01', 1),
(68, 6, 64, '2025-01-01', 1),
(69, 6, 65, '2025-01-01', 1),
(70, 6, 66, '2025-01-01', 1),
(71, 6, 67, '2025-01-01', 1),
(72, 6, 68, '2025-01-01', 1),
(73, 6, 69, '2025-01-01', 1),
(74, 6, 70, '2025-01-01', 1),
(76, 7, 71, '2025-01-01', 1),
(77, 7, 72, '2025-01-01', 1),
(78, 7, 73, '2025-01-01', 1),
(79, 7, 74, '2025-01-01', 1),
(80, 7, 75, '2025-01-01', 1),
(81, 7, 76, '2025-01-01', 1),
(82, 7, 77, '2025-01-01', 1),
(83, 7, 78, '2025-01-01', 1),
(84, 7, 79, '2025-01-01', 1),
(85, 7, 80, '2025-01-01', 1),
(86, 7, 81, '2025-01-01', 1),
(87, 7, 82, '2025-01-01', 1),
(88, 7, 83, '2025-01-01', 1),
(89, 7, 84, '2025-01-01', 1),
(91, 8, 85, '2025-01-01', 1),
(92, 8, 86, '2025-01-01', 1),
(93, 8, 87, '2025-01-01', 1),
(94, 8, 88, '2025-01-01', 1),
(95, 8, 89, '2025-01-01', 1),
(96, 8, 90, '2025-01-01', 1),
(97, 8, 91, '2025-01-01', 1),
(98, 8, 92, '2025-01-01', 1),
(99, 8, 93, '2025-01-01', 1),
(100, 8, 94, '2025-01-01', 1),
(101, 8, 95, '2025-01-01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` int(11) NOT NULL,
  `complaint_number` varchar(50) NOT NULL,
  `complainant_id` int(11) NOT NULL,
  `violator_name` varchar(255) NOT NULL,
  `violator_contact` text DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `incident_date` date DEFAULT NULL,
  `incident_location` text DEFAULT NULL,
  `status_id` int(11) NOT NULL,
  `amount_billable` decimal(10,2) DEFAULT NULL,
  `filed_by` int(11) NOT NULL,
  `filed_date` date NOT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `resolved_date` date DEFAULT NULL,
  `resolution_notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`id`, `complaint_number`, `complainant_id`, `violator_name`, `violator_contact`, `category_id`, `description`, `incident_date`, `incident_location`, `status_id`, `amount_billable`, `filed_by`, `filed_date`, `assigned_to`, `resolved_date`, `resolution_notes`, `created_at`, `updated_at`) VALUES
(1, 'CMPL-2025-001', 1, 'ABC Drugstore', '09171234444, abc.drugstore@email.com', 1, 'The establishment refused to honor the 20% senior citizen discount when purchasing medicines. Staff claimed they do not offer discounts for over-the-counter medicines.', '2025-01-10', 'ABC Drugstore, Governor Alvarez Avenue, Tetuan, Zamboanga City', 2, 250.00, 4, '2025-01-11', 1, NULL, NULL, '2025-12-16 15:28:57', '2025-12-16 15:28:57'),
(2, 'CMPL-2025-002', 2, 'XYZ Supermarket', '062-991-5555', 2, 'Senior citizen was not allowed to use the priority lane despite showing valid ID. Security guard directed senior to regular lane claiming priority lane is for pregnant women only.', '2025-01-12', 'XYZ Supermarket, Pilar Street, Santa Maria, Zamboanga City', 4, NULL, 5, '2025-01-13', 1, '2025-01-20', 'Management issued written apology and conducted retraining for all staff. Establishment now has proper signage for senior priority lanes.', '2025-12-16 15:28:57', '2025-12-16 15:28:57'),
(3, 'CMPL-2025-003', 3, 'DEF Restaurant', '09187654321', 1, 'Restaurant only applied 5% discount instead of the mandated 20% senior citizen discount on the total bill. Manager insisted their policy is 5% for dine-in customers.', '2025-01-14', 'DEF Restaurant, Mayor Jaldon Street, Guiwan, Zamboanga City', 3, 450.00, 6, '2025-01-15', 2, NULL, 'Legal notice sent to establishment. Awaiting response and compliance.', '2025-12-16 15:28:57', '2025-12-16 15:28:57'),
(4, 'CMPL-2025-004', 1, 'City Bus Line #5', '09198765432', 2, 'Bus conductor refused to let senior citizen board first despite showing senior ID. Conductor was rude and told senior to wait like everyone else.', '2025-01-16', 'Governor Camins Avenue Bus Stop, Zone II, Zamboanga City', 2, NULL, 4, '2025-01-17', 1, NULL, NULL, '2025-12-16 15:28:57', '2025-12-16 15:28:57'),
(5, 'CMPL-2025-005', 2, 'GHI Pharmacy', '062-991-6666, ghi.pharmacy@email.com', 1, 'Pharmacy charged full price for prescription medicines and refused to give senior discount. Staff claimed they need special authorization from management which was not available.', '2025-01-18', 'GHI Pharmacy, Tomas Claudio Street, Santa Maria, Zamboanga City', 1, 1200.00, 5, '2025-01-19', NULL, NULL, NULL, '2025-12-16 15:28:57', '2025-12-16 15:28:57');

-- --------------------------------------------------------

--
-- Table structure for table `complaint_categories`
--

CREATE TABLE `complaint_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaint_categories`
--

INSERT INTO `complaint_categories` (`id`, `name`, `description`) VALUES
(1, 'Discount Denial', 'Establishment refused senior discount'),
(2, 'Priority Lane Violation', 'Denied priority lane access'),
(3, 'Abuse/Neglect', 'Physical or emotional abuse'),
(4, 'Discrimination', 'Age-based discrimination'),
(5, 'Service Denial', 'Denied services for seniors'),
(6, 'Pension Issues', 'Problems with pension distribution'),
(7, 'Other', 'Other complaints');

-- --------------------------------------------------------

--
-- Table structure for table `complaint_documents`
--

CREATE TABLE `complaint_documents` (
  `id` int(11) NOT NULL,
  `complaint_id` int(11) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `original_filename` varchar(255) DEFAULT NULL,
  `file_type` varchar(50) DEFAULT NULL,
  `uploaded_by` int(11) NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `complaint_statuses`
--

CREATE TABLE `complaint_statuses` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `color_code` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaint_statuses`
--

INSERT INTO `complaint_statuses` (`id`, `name`, `description`, `color_code`) VALUES
(1, 'Submitted', 'Complaint filed', '#FFA500'),
(2, 'Under Investigation', 'Being investigated', '#2196F3'),
(3, 'In Progress', 'Action being taken', '#FF9800'),
(4, 'Resolved', 'Complaint resolved', '#4CAF50'),
(5, 'Closed', 'Case closed', '#9E9E9E'),
(6, 'Rejected', 'Complaint rejected', '#F44336');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `mobile_number` varchar(20) DEFAULT NULL,
  `telephone_number` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `house_number` varchar(50) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `barangay_id` int(11) DEFAULT NULL,
  `city` varchar(100) DEFAULT 'Zamboanga City',
  `postal_code` varchar(10) DEFAULT '7000',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `mobile_number`, `telephone_number`, `email`, `house_number`, `street`, `barangay_id`, `city`, `postal_code`, `created_at`, `updated_at`) VALUES
(1, '09171111111', '062-991-1111', 'senior1@email.com', '123', 'Rizal Street', 79, 'Zamboanga City', '7000', '2025-12-15 01:34:59', '2025-12-15 01:34:59'),
(2, '09172222222', '062-991-2222', 'senior2@email.com', '456', 'Bonifacio Avenue', 68, 'Zamboanga City', '7000', '2025-12-15 01:34:59', '2025-12-15 01:34:59'),
(3, '09173333333', NULL, NULL, '789', 'Luna Street', 26, 'Zamboanga City', '7000', '2025-12-15 01:34:59', '2025-12-15 01:34:59'),
(4, '09670922527', '', '', '', '', 82, 'Zamboanga City', '7000', '2025-12-17 10:36:33', '2025-12-17 10:36:33'),
(5, '09670922527', '', '', '', '', 82, 'Zamboanga City', '7000', '2025-12-17 10:36:35', '2025-12-17 10:36:35'),
(6, '09670922527', '', '', '', '', 82, 'Zamboanga City', '7000', '2025-12-17 10:36:35', '2025-12-17 10:36:35'),
(7, '09670922527', '', '', '', '', 82, 'Zamboanga City', '7000', '2025-12-17 10:36:36', '2025-12-17 10:36:36'),
(8, '09670922527', '', '', '', '', 82, 'Zamboanga City', '7000', '2025-12-17 10:36:36', '2025-12-17 10:36:36'),
(9, '09670922527', '', '', '', '', 82, 'Zamboanga City', '7000', '2025-12-17 10:36:36', '2025-12-17 10:36:36'),
(10, '09670922527', '', '', '', '', 82, 'Zamboanga City', '7000', '2025-12-17 10:36:36', '2025-12-17 10:36:36'),
(11, '09670922527', '', '', '', '', 82, 'Zamboanga City', '7000', '2025-12-17 10:36:36', '2025-12-17 10:36:36'),
(12, '09670922527', '', '', '', '', 82, 'Zamboanga City', '7000', '2025-12-17 10:36:36', '2025-12-17 10:36:36'),
(13, '09670922527', '', '', '', '', 82, 'Zamboanga City', '7000', '2025-12-17 10:36:36', '2025-12-17 10:36:36'),
(14, '09670922527', '', '', '', '', 82, 'Zamboanga City', '7000', '2025-12-17 10:36:38', '2025-12-17 10:36:38'),
(15, '09670922527', '', '', '', '', 82, 'Zamboanga City', '7000', '2025-12-17 10:36:38', '2025-12-17 10:36:38'),
(16, '09670922527', '', '', '', '', 82, 'Zamboanga City', '7000', '2025-12-17 10:36:39', '2025-12-17 10:36:39'),
(17, '09670922527', '', '', '', '', 82, 'Zamboanga City', '7000', '2025-12-17 10:36:39', '2025-12-17 10:36:39'),
(18, '09670922527', '', '', '', '', 82, 'Zamboanga City', '7000', '2025-12-17 10:36:39', '2025-12-17 10:36:39'),
(19, '09670922527', '', '', '', '', 82, 'Zamboanga City', '7000', '2025-12-17 10:36:39', '2025-12-17 10:36:39'),
(20, '09670922527', '', '', '', '', 82, 'Zamboanga City', '7000', '2025-12-17 10:36:54', '2025-12-17 10:36:54'),
(21, '09670922527', '', '', '', '', 82, 'Zamboanga City', '7000', '2025-12-17 10:36:54', '2025-12-17 10:36:54'),
(22, '09670922527', '', '', '', '', 82, 'Zamboanga City', '7000', '2025-12-17 10:36:54', '2025-12-17 10:36:54'),
(23, '09670922527', '', '', '', '', 82, 'Zamboanga City', '7000', '2025-12-17 10:36:55', '2025-12-17 10:36:55'),
(24, NULL, NULL, NULL, 'asd', 'sad', 90, 'Zamboanga City', '7000', '2025-12-18 10:51:54', '2025-12-18 10:51:54'),
(25, NULL, NULL, NULL, 'asd', 'sad', 90, 'Zamboanga City', '7000', '2025-12-18 10:52:20', '2025-12-18 10:52:20'),
(26, NULL, NULL, NULL, '124', 'pauline', 16, 'Zamboanga City', '7000', '2025-12-18 11:08:17', '2025-12-18 19:35:34'),
(27, NULL, NULL, NULL, 'dsa', 'dsa', 13, 'Zamboanga City', '7000', '2025-12-18 11:16:53', '2025-12-18 16:52:33'),
(29, NULL, NULL, NULL, 'das', 'fa', 1, 'Zamboanga City', '7000', '2025-12-18 14:25:55', '2025-12-18 16:30:22'),
(36, NULL, NULL, NULL, 'dsa', '32', 6, 'Zamboanga City', '7000', '2025-12-18 15:13:48', '2025-12-18 15:13:48'),
(37, NULL, NULL, NULL, 'dsa', 'ds', 17, 'Zamboanga City', '7000', '2025-12-18 15:15:00', '2025-12-18 15:15:00'),
(38, NULL, NULL, NULL, 'sda', 'dsa', 19, 'Zamboanga City', '7000', '2025-12-18 15:16:23', '2025-12-18 15:16:23'),
(39, NULL, NULL, NULL, 'dsq', 'dsa', 15, 'Zamboanga City', '7000', '2025-12-18 15:17:23', '2025-12-18 15:17:23'),
(40, NULL, NULL, NULL, 'dsa', '214', 18, 'Zamboanga City', '7000', '2025-12-18 15:47:27', '2025-12-18 15:47:27'),
(41, NULL, NULL, NULL, 'dsa', '214', 18, 'Zamboanga City', '7000', '2025-12-18 15:48:17', '2025-12-18 15:48:17'),
(42, NULL, NULL, NULL, 'dsq', 'dsa', 15, 'Zamboanga City', '7000', '2025-12-18 15:50:53', '2025-12-18 15:50:53'),
(43, NULL, NULL, NULL, 'dsa', 'das', 19, 'Zamboanga City', '7000', '2025-12-18 15:59:48', '2025-12-18 15:59:48'),
(44, NULL, NULL, NULL, 'dsa', 'das', 19, 'Zamboanga City', '7000', '2025-12-18 15:59:58', '2025-12-18 15:59:58'),
(45, NULL, NULL, NULL, 'dsa', 'd', 17, 'Zamboanga City', '7000', '2025-12-18 16:10:57', '2025-12-18 16:10:57'),
(46, NULL, NULL, NULL, 'dsa', 'd', 17, 'Zamboanga City', '7000', '2025-12-18 16:50:45', '2025-12-18 16:50:45'),
(47, NULL, NULL, NULL, 'da', '32', 15, 'Zamboanga City', '7000', '2025-12-18 18:02:16', '2025-12-18 18:02:16'),
(48, NULL, NULL, NULL, 'dsa', '32', 12, 'Zamboanga City', '7000', '2025-12-18 19:10:27', '2025-12-18 19:10:27'),
(49, NULL, NULL, NULL, 'dwq', '321', 21, 'Zamboanga City', '7000', '2025-12-18 19:23:07', '2025-12-18 19:23:07'),
(50, NULL, NULL, NULL, '321', '2321', 18, 'Zamboanga City', '7000', '2025-12-18 19:45:55', '2025-12-18 19:45:55'),
(51, NULL, NULL, NULL, 'sda', 'dsa', 15, 'Zamboanga City', '7000', '2025-12-18 19:55:36', '2025-12-18 19:55:36'),
(52, NULL, NULL, NULL, '321', '321', 66, 'Zamboanga City', '7000', '2025-12-18 19:58:26', '2025-12-18 19:58:26'),
(53, NULL, NULL, NULL, '4as', '42', 16, 'Zamboanga City', '7000', '2025-12-18 20:06:46', '2025-12-18 20:06:46'),
(54, NULL, NULL, NULL, 'as', 'da', 15, 'Zamboanga City', '7000', '2025-12-18 20:18:29', '2025-12-18 20:18:29'),
(55, NULL, NULL, NULL, 'as', 'da', 15, 'Zamboanga City', '7000', '2025-12-18 20:19:25', '2025-12-18 20:19:25'),
(56, NULL, NULL, NULL, '321', '321', 17, 'Zamboanga City', '7000', '2025-12-18 20:32:23', '2025-12-18 20:32:23'),
(57, NULL, NULL, NULL, '2421', '42', 18, 'Zamboanga City', '7000', '2025-12-18 20:33:44', '2025-12-18 20:33:44'),
(58, NULL, NULL, NULL, 'das', 'dsa', 14, 'Zamboanga City', '7000', '2025-12-18 20:43:55', '2025-12-18 20:43:55'),
(59, NULL, NULL, NULL, 'dsa', 'dsa', 15, 'Zamboanga City', '7000', '2025-12-18 20:52:46', '2025-12-18 20:52:46'),
(60, NULL, NULL, NULL, 'sad', 'das', 17, 'Zamboanga City', '7000', '2025-12-18 20:56:53', '2025-12-18 20:56:53'),
(61, NULL, NULL, NULL, 'sad', 'das', 17, 'Zamboanga City', '7000', '2025-12-18 20:57:09', '2025-12-18 20:57:09'),
(62, NULL, NULL, NULL, 'dsa', 'dsa', 10, 'Zamboanga City', '7000', '2025-12-18 20:58:28', '2025-12-18 20:58:28'),
(63, NULL, NULL, NULL, 'dsa', 'dsa', 15, 'Zamboanga City', '7000', '2025-12-18 20:59:38', '2025-12-18 20:59:38'),
(64, NULL, NULL, NULL, 'dsa', 'dsa', 17, 'Zamboanga City', '7000', '2025-12-18 21:22:04', '2025-12-18 21:22:04'),
(65, NULL, NULL, NULL, '23', '32', 16, 'Zamboanga City', '7000', '2025-12-18 22:19:53', '2025-12-18 22:19:53'),
(66, NULL, NULL, NULL, '123', '123', 15, 'Zamboanga City', '7000', '2025-12-19 01:54:57', '2025-12-19 01:54:57'),
(67, NULL, NULL, NULL, '123', '123', 15, 'Zamboanga City', '7000', '2025-12-19 01:55:33', '2025-12-19 01:55:33');

-- --------------------------------------------------------

--
-- Table structure for table `document_types`
--

CREATE TABLE `document_types` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `is_required` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `document_types`
--

INSERT INTO `document_types` (`id`, `name`, `description`, `is_required`) VALUES
(1, 'Birth Certificate', 'Proof of age and identity', 1),
(2, 'Barangay Certificate', 'Certificate of residency', 1),
(3, 'Senior Photo', 'Recent photo for ID', 1),
(4, 'Affidavit of Loss', 'For lost ID replacement', 0),
(5, 'Old/Damaged ID', 'For renewal or replacement', 0),
(6, 'COMELEC ID', 'Voter identification', 0),
(7, 'Medical Certificate', 'For PWD or special cases', 0);

-- --------------------------------------------------------

--
-- Table structure for table `educational_attainment`
--

CREATE TABLE `educational_attainment` (
  `id` int(11) NOT NULL,
  `level` varchar(100) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `educational_attainment`
--

INSERT INTO `educational_attainment` (`id`, `level`, `description`) VALUES
(1, 'No Formal Education', 'No formal schooling'),
(2, 'Elementary Level', 'Some elementary education'),
(3, 'Elementary Graduate', 'Completed elementary'),
(4, 'High School Level', 'Some high school education'),
(5, 'High School Graduate', 'Completed high school'),
(6, 'Vocational/Technical', 'Vocational or technical training'),
(7, 'College Level', 'Some college education'),
(8, 'College Graduate', 'Completed college degree'),
(9, 'Post Graduate', 'Masters or Doctorate degree');

-- --------------------------------------------------------

--
-- Table structure for table `event_participants`
--

CREATE TABLE `event_participants` (
  `id` int(11) NOT NULL,
  `announcement_id` int(11) NOT NULL,
  `senior_id` int(11) NOT NULL,
  `registered_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `attended` tinyint(1) DEFAULT 0,
  `attendance_date` timestamp NULL DEFAULT NULL,
  `claimed_benefit` tinyint(1) DEFAULT 0,
  `claim_date` timestamp NULL DEFAULT NULL,
  `claimed_by_admin` int(11) DEFAULT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `family_members`
--

CREATE TABLE `family_members` (
  `id` int(11) NOT NULL,
  `senior_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) NOT NULL,
  `extension` varchar(10) DEFAULT NULL,
  `relationship` varchar(100) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `monthly_salary` decimal(10,2) DEFAULT NULL,
  `contact_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `family_members`
--

INSERT INTO `family_members` (`id`, `senior_id`, `first_name`, `middle_name`, `last_name`, `extension`, `relationship`, `age`, `monthly_salary`, `contact_id`, `created_at`) VALUES
(1, 24, 'asanul', 'pogi', 'yess', 'jr', 'Mother', 0, 10000.00, NULL, '2025-12-18 10:51:54'),
(2, 25, 'asanul', 'pogi', 'yess', 'jr', 'Mother', 0, 10000.00, NULL, '2025-12-18 10:52:20'),
(7, 27, 'Dog', NULL, 'sda', NULL, 'sda', 23, 32.00, NULL, '2025-12-18 19:04:08'),
(8, 26, 'fam', NULL, 'yes', 'yes', 'MOTHER', 20, NULL, NULL, '2025-12-18 19:36:45');

-- --------------------------------------------------------

--
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genders`
--

INSERT INTO `genders` (`id`, `name`) VALUES
(2, 'Female'),
(1, 'Male'),
(3, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `id_printing_queue`
--

CREATE TABLE `id_printing_queue` (
  `id` int(11) NOT NULL,
  `senior_id` int(11) NOT NULL,
  `application_id` int(11) DEFAULT NULL,
  `queue_number` varchar(50) NOT NULL,
  `priority` enum('normal','urgent','express') DEFAULT 'normal',
  `status` enum('pending','in_progress','printed','claimed','cancelled') DEFAULT 'pending',
  `id_type` enum('new','renewal','replacement') NOT NULL,
  `requested_by` int(11) NOT NULL,
  `requested_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `assigned_to` int(11) DEFAULT NULL COMMENT 'Printer operator',
  `assigned_date` timestamp NULL DEFAULT NULL,
  `printed_by` int(11) DEFAULT NULL,
  `printed_date` timestamp NULL DEFAULT NULL,
  `claimed_by` int(11) DEFAULT NULL COMMENT 'Admin who released the ID',
  `claimed_date` timestamp NULL DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `id_printing_queue`
--

INSERT INTO `id_printing_queue` (`id`, `senior_id`, `application_id`, `queue_number`, `priority`, `status`, `id_type`, `requested_by`, `requested_date`, `assigned_to`, `assigned_date`, `printed_by`, `printed_date`, `claimed_by`, `claimed_date`, `notes`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'PRINT-2025-001', 'normal', 'printed', 'new', 4, '2025-01-14 19:00:00', 1, NULL, 1, '2025-01-16 00:00:00', NULL, NULL, 'ID printed and ready for release', '2025-12-16 15:28:57', '2025-12-19 07:48:19'),
(2, 2, NULL, 'PRINT-2025-002', 'normal', 'claimed', 'new', 5, '2025-01-15 18:00:00', 1, NULL, 1, '2025-01-17 01:00:00', 5, '2025-01-18 02:00:00', 'ID claimed by senior citizen on 2025-01-18', '2025-12-16 15:28:57', '2025-12-18 21:47:25'),
(3, 3, NULL, 'PRINT-2025-003', 'urgent', 'pending', 'new', 6, '2025-01-16 20:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Rush request - senior needs ID for medical appointment', '2025-12-16 15:28:57', '2025-12-18 21:47:21');

-- --------------------------------------------------------

--
-- Table structure for table `id_statuses`
--

CREATE TABLE `id_statuses` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `id_statuses`
--

INSERT INTO `id_statuses` (`id`, `name`, `description`) VALUES
(1, 'Active', 'ID is active and valid'),
(2, 'Expired', 'ID has expired'),
(3, 'Lost', 'ID reported as lost'),
(4, 'Damaged', 'ID reported as damaged'),
(5, 'Suspended', 'ID temporarily suspended'),
(6, 'Replaced', 'ID has been replaced');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `mobility_levels`
--

CREATE TABLE `mobility_levels` (
  `id` int(11) NOT NULL,
  `level` varchar(100) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mobility_levels`
--

INSERT INTO `mobility_levels` (`id`, `level`, `description`) VALUES
(1, 'Independent', 'Able to move without assistance'),
(2, 'Assisted', 'Requires assistance for mobility'),
(3, 'Wheelchair Bound', 'Uses wheelchair'),
(4, 'Bedridden', 'Confined to bed');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth-token', '97933a9612d712befa4a270aa3f1afb5b400c505a7bd6533e4b8275ee2a105b9', '[\"*\"]', NULL, NULL, '2026-01-29 03:38:12', '2026-01-29 03:38:12'),
(2, 'App\\Models\\User', 1, 'auth-token', '6079c8dc6284408a76ca9c75ca568f372598e1c243a522ae7dfbb65761b2cf9a', '[\"*\"]', NULL, NULL, '2026-01-29 03:38:27', '2026-01-29 03:38:27'),
(5, 'App\\Models\\User', 1, 'auth-token', 'c009e5668fed1009ec07090cdf01d8d077e73013f4561ebd58498617a523de73', '[\"*\"]', '2026-01-29 04:25:03', NULL, '2026-01-29 03:47:18', '2026-01-29 04:25:03');

-- --------------------------------------------------------

--
-- Table structure for table `registration_statuses`
--

CREATE TABLE `registration_statuses` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `color_code` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration_statuses`
--

INSERT INTO `registration_statuses` (`id`, `name`, `description`, `color_code`) VALUES
(1, 'Pending', 'Application pending review', '#FFA500'),
(2, 'Approved', 'Application approved', '#4CAF50'),
(3, 'Rejected', 'Application rejected', '#F44336'),
(4, 'For Verification', 'Needs verification', '#2196F3'),
(5, 'For Printing', 'Ready for ID printing', '#9C27B0'),
(6, 'Completed', 'Process completed', '#4CAF50');

-- --------------------------------------------------------

--
-- Table structure for table `senior_citizens`
--

CREATE TABLE `senior_citizens` (
  `id` int(11) NOT NULL,
  `osca_id` varchar(50) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) NOT NULL,
  `extension` varchar(10) DEFAULT NULL,
  `birthdate` date NOT NULL,
  `gender_id` int(11) NOT NULL,
  `contact_id` int(11) DEFAULT NULL,
  `educational_attainment_id` int(11) DEFAULT NULL,
  `monthly_salary` decimal(10,2) DEFAULT 0.00,
  `occupation` varchar(255) DEFAULT NULL,
  `other_skills` text DEFAULT NULL,
  `socioeconomic_status_id` int(11) DEFAULT NULL,
  `mobility_level_id` int(11) DEFAULT NULL,
  `barangay_id` int(11) NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `registration_date` date NOT NULL,
  `registration_status_id` int(11) NOT NULL,
  `registered_by` int(11) DEFAULT NULL,
  `photo_path` varchar(255) DEFAULT NULL,
  `thumbmark_verified` tinyint(1) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `is_deceased` tinyint(1) DEFAULT 0,
  `deceased_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `age` int(11) GENERATED ALWAYS AS (timestampdiff(YEAR,`birthdate`,curdate())) VIRTUAL,
  `qr_code_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `senior_citizens`
--

INSERT INTO `senior_citizens` (`id`, `osca_id`, `first_name`, `middle_name`, `last_name`, `extension`, `birthdate`, `gender_id`, `contact_id`, `educational_attainment_id`, `monthly_salary`, `occupation`, `other_skills`, `socioeconomic_status_id`, `mobility_level_id`, `barangay_id`, `branch_id`, `registration_date`, `registration_status_id`, `registered_by`, `photo_path`, `thumbmark_verified`, `is_active`, `is_deceased`, `deceased_date`, `created_at`, `updated_at`, `qr_code_path`) VALUES
(1, 'ZC-2025-001001', 'Juan', 'Santos', 'Dela Cruz', NULL, '1953-05-15', 1, 1, 6, 5000.00, 'Retired Teacher', NULL, 2, 1, 79, 2, '2025-01-15', 2, 1, NULL, 0, 1, 0, NULL, '2025-12-15 01:34:59', '2025-12-15 01:34:59', NULL),
(2, 'ZC-2025-001002', 'Maria', 'Lopez', 'Garcia', NULL, '1950-08-22', 2, 2, 8, 8000.00, 'Retired Nurse', NULL, 2, 1, 68, 2, '2025-01-16', 2, 1, NULL, 0, 1, 0, NULL, '2025-12-15 01:34:59', '2025-12-15 01:34:59', NULL),
(3, 'ZC-2025-001003', 'Pedro', 'Ramos', 'Mendoza', NULL, '1948-12-10', 1, 3, 4, 3000.00, 'Farmer', NULL, 1, 2, 26, 6, '2025-01-17', 2, 1, NULL, 0, 1, 0, NULL, '2025-12-15 01:34:59', '2025-12-15 01:34:59', NULL),
(24, 'ZC-2025-001004', '1st', NULL, 'test', NULL, '1910-02-05', 2, 24, NULL, NULL, NULL, NULL, NULL, NULL, 90, NULL, '2025-12-18', 1, 1, NULL, 0, 1, 0, NULL, '2025-12-18 10:51:54', '2025-12-18 10:51:54', NULL),
(25, 'ZC-2025-001005', '1st', NULL, 'test', NULL, '1910-02-05', 2, 25, NULL, NULL, NULL, NULL, NULL, NULL, 90, NULL, '2025-12-18', 1, 1, NULL, 0, 1, 0, NULL, '2025-12-18 10:52:20', '2025-12-18 10:52:20', NULL),
(26, 'ZC-2025-001006', 'Asanul', NULL, 'ibrahaim', NULL, '1910-02-05', 2, 26, NULL, NULL, NULL, NULL, NULL, NULL, 16, NULL, '2025-12-18', 1, 1, NULL, 0, 1, 0, NULL, '2025-12-18 11:08:17', '2025-12-18 19:35:34', NULL),
(27, 'ZC-2025-001007', 'Wang', NULL, 'new', NULL, '1930-02-05', 2, 27, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL, '2025-12-18', 1, 1, NULL, 0, 1, 0, NULL, '2025-12-18 11:16:53', '2025-12-18 19:04:08', NULL),
(28, 'ZC-2025-001008', 'Rafat', NULL, 'raf', NULL, '0950-02-05', 1, 29, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-12-18', 1, 1, NULL, 0, 1, 0, NULL, '2025-12-18 14:25:55', '2025-12-18 16:30:45', NULL),
(29, 'ZC-2025-001009', 'cali', 'the ', 'cat', 'das', '1920-12-04', 2, 41, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, '2025-12-18', 1, 1, NULL, 0, 1, 0, NULL, '2025-12-18 15:48:17', '2025-12-18 15:48:17', NULL),
(30, 'ZC-2025-001010', 'sda', NULL, 'dsa', NULL, '0042-04-21', 1, 42, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, '2025-12-18', 1, 1, NULL, 0, 0, 1, '2025-12-18', '2025-12-18 15:50:53', '2025-12-18 16:00:09', NULL),
(31, 'ZC-2025-001011', 'cali', 'the', 'cat', 'da', '0124-12-31', 2, 44, NULL, NULL, NULL, NULL, NULL, NULL, 19, NULL, '2025-12-18', 1, 1, NULL, 0, 1, 0, NULL, '2025-12-18 15:59:58', '2025-12-18 15:59:58', NULL),
(32, 'ZC-2025-001012', 'dog ', 'd ', 'dog', NULL, '0032-12-24', 2, 46, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, '2025-12-19', 1, 1, NULL, 0, 1, 0, NULL, '2025-12-18 16:50:45', '2025-12-18 16:50:45', NULL),
(33, 'ZC-2025-001013', 'Ace', NULL, 'Nieva', 'fas', '0343-04-04', 1, 55, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, '2025-12-19', 2, 1, NULL, 0, 1, 0, NULL, '2025-12-18 20:19:25', '2025-12-19 02:08:21', NULL),
(34, 'ZC-2025-001014', 'last', NULL, 'last', NULL, '1221-12-23', 1, 61, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, '2025-12-19', 1, 1, NULL, 0, 1, 0, NULL, '2025-12-18 20:57:09', '2025-12-18 20:57:09', NULL),
(35, 'ZC-2025-001015', 'edit', '', 'pls', NULL, '0323-02-23', 2, 64, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, '2025-12-19', 1, 1, NULL, 0, 1, 0, NULL, '2025-12-18 21:22:04', '2025-12-19 01:53:35', NULL),
(36, 'ZC-2025-001016', 'Fatima', '', 'Abubakar', NULL, '1940-12-02', 2, 67, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, '2025-12-19', 1, 1, NULL, 0, 1, 0, NULL, '2025-12-19 01:55:33', '2025-12-19 02:39:21', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `senior_citizens_with_benefits`
-- (See below for the actual view)
--
CREATE TABLE `senior_citizens_with_benefits` (
`id` int(11)
,`osca_id` varchar(50)
,`first_name` varchar(100)
,`middle_name` varchar(100)
,`last_name` varchar(100)
,`extension` varchar(10)
,`birthdate` date
,`age` bigint(21)
,`gender_id` int(11)
,`gender` varchar(50)
,`barangay_id` int(11)
,`barangay` varchar(255)
,`branch_id` int(11)
,`branch` varchar(255)
,`registration_date` date
,`registration_status_id` int(11)
,`registration_status` varchar(50)
,`is_active` tinyint(1)
,`is_deceased` tinyint(1)
,`eligible_benefits` mediumtext
,`benefit_count` bigint(21)
,`monthly_pension_amount` decimal(32,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `senior_eligible_benefits`
--

CREATE TABLE `senior_eligible_benefits` (
  `id` int(11) NOT NULL,
  `senior_id` int(11) NOT NULL,
  `benefit_id` int(11) NOT NULL,
  `eligible_from` date NOT NULL,
  `eligible_until` date DEFAULT NULL COMMENT 'Null = no expiry',
  `assigned_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `senior_eligible_benefits`
--

INSERT INTO `senior_eligible_benefits` (`id`, `senior_id`, `benefit_id`, `eligible_from`, `eligible_until`, `assigned_date`) VALUES
(1, 1, 1, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(2, 1, 2, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(3, 1, 3, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(4, 1, 4, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(5, 1, 5, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(6, 1, 6, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(7, 1, 11, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(8, 1, 12, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(9, 1, 13, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(10, 1, 14, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(11, 1, 15, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(12, 1, 16, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(16, 2, 1, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(17, 2, 2, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(18, 2, 3, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(19, 2, 4, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(20, 2, 5, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(21, 2, 6, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(22, 2, 11, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(23, 2, 12, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(24, 2, 13, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(25, 2, 14, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(26, 2, 15, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(31, 3, 1, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(32, 3, 2, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(33, 3, 3, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(34, 3, 4, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(35, 3, 5, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(36, 3, 6, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(37, 3, 11, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(38, 3, 12, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(39, 3, 13, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(40, 3, 14, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(41, 3, 15, '2025-12-17', NULL, '2025-12-17 05:46:29'),
(42, 24, 10, '2025-12-18', '2026-12-18', '2025-12-18 10:51:54'),
(43, 24, 9, '2025-12-18', '2026-12-18', '2025-12-18 10:51:54'),
(44, 24, 1, '2025-12-18', '2026-12-18', '2025-12-18 10:51:54'),
(45, 24, 2, '2025-12-18', '2026-12-18', '2025-12-18 10:51:54'),
(46, 24, 5, '2025-12-18', '2026-12-18', '2025-12-18 10:51:54'),
(47, 24, 3, '2025-12-18', '2026-12-18', '2025-12-18 10:51:54'),
(48, 24, 4, '2025-12-18', '2026-12-18', '2025-12-18 10:51:54'),
(49, 25, 10, '2025-12-18', '2026-12-18', '2025-12-18 10:52:20'),
(50, 25, 9, '2025-12-18', '2026-12-18', '2025-12-18 10:52:20'),
(51, 25, 1, '2025-12-18', '2026-12-18', '2025-12-18 10:52:20'),
(52, 25, 2, '2025-12-18', '2026-12-18', '2025-12-18 10:52:20'),
(53, 25, 5, '2025-12-18', '2026-12-18', '2025-12-18 10:52:20'),
(54, 25, 3, '2025-12-18', '2026-12-18', '2025-12-18 10:52:20'),
(55, 25, 4, '2025-12-18', '2026-12-18', '2025-12-18 10:52:20'),
(56, 26, 1, '2025-12-18', '2026-12-18', '2025-12-18 11:08:17'),
(57, 26, 2, '2025-12-18', '2026-12-18', '2025-12-18 11:08:17'),
(58, 26, 3, '2025-12-18', '2026-12-18', '2025-12-18 11:08:17'),
(59, 26, 4, '2025-12-18', '2026-12-18', '2025-12-18 11:08:17'),
(60, 26, 5, '2025-12-18', '2026-12-18', '2025-12-18 11:08:17'),
(61, 26, 9, '2025-12-18', '2026-12-18', '2025-12-18 11:08:17'),
(62, 26, 10, '2025-12-18', '2026-12-18', '2025-12-18 11:08:17'),
(63, 27, 1, '2025-12-18', '2026-12-18', '2025-12-18 11:16:53'),
(64, 27, 2, '2025-12-18', '2026-12-18', '2025-12-18 11:16:53'),
(65, 27, 3, '2025-12-18', '2026-12-18', '2025-12-18 11:16:53'),
(66, 27, 4, '2025-12-18', '2026-12-18', '2025-12-18 11:16:53'),
(67, 27, 5, '2025-12-18', '2026-12-18', '2025-12-18 11:16:53'),
(68, 27, 9, '2025-12-18', '2026-12-18', '2025-12-18 11:16:53'),
(69, 27, 10, '2025-12-18', '2026-12-18', '2025-12-18 11:16:53'),
(70, 28, 1, '2025-12-18', '2026-12-18', '2025-12-18 14:25:55'),
(71, 28, 2, '2025-12-18', '2026-12-18', '2025-12-18 14:25:55'),
(72, 28, 3, '2025-12-18', '2026-12-18', '2025-12-18 14:25:55'),
(73, 28, 4, '2025-12-18', '2026-12-18', '2025-12-18 14:25:55'),
(74, 28, 5, '2025-12-18', '2026-12-18', '2025-12-18 14:25:55'),
(75, 28, 9, '2025-12-18', '2026-12-18', '2025-12-18 14:25:55'),
(76, 28, 10, '2025-12-18', '2026-12-18', '2025-12-18 14:25:55'),
(77, 29, 1, '2025-12-18', '2026-12-18', '2025-12-18 15:48:17'),
(78, 29, 2, '2025-12-18', '2026-12-18', '2025-12-18 15:48:17'),
(79, 29, 3, '2025-12-18', '2026-12-18', '2025-12-18 15:48:17'),
(80, 29, 4, '2025-12-18', '2026-12-18', '2025-12-18 15:48:17'),
(81, 29, 5, '2025-12-18', '2026-12-18', '2025-12-18 15:48:17'),
(82, 29, 9, '2025-12-18', '2026-12-18', '2025-12-18 15:48:17'),
(83, 29, 10, '2025-12-18', '2026-12-18', '2025-12-18 15:48:17'),
(84, 30, 1, '2025-12-18', '2026-12-18', '2025-12-18 15:50:53'),
(85, 30, 2, '2025-12-18', '2026-12-18', '2025-12-18 15:50:53'),
(86, 30, 3, '2025-12-18', '2026-12-18', '2025-12-18 15:50:53'),
(87, 30, 4, '2025-12-18', '2026-12-18', '2025-12-18 15:50:53'),
(88, 30, 5, '2025-12-18', '2026-12-18', '2025-12-18 15:50:53'),
(89, 30, 9, '2025-12-18', '2026-12-18', '2025-12-18 15:50:53'),
(90, 30, 10, '2025-12-18', '2026-12-18', '2025-12-18 15:50:53'),
(91, 31, 1, '2025-12-18', '2026-12-18', '2025-12-18 15:59:58'),
(92, 31, 2, '2025-12-18', '2026-12-18', '2025-12-18 15:59:58'),
(93, 31, 3, '2025-12-18', '2026-12-18', '2025-12-18 15:59:58'),
(94, 31, 4, '2025-12-18', '2026-12-18', '2025-12-18 15:59:58'),
(95, 31, 5, '2025-12-18', '2026-12-18', '2025-12-18 15:59:58'),
(96, 31, 9, '2025-12-18', '2026-12-18', '2025-12-18 15:59:58'),
(97, 31, 10, '2025-12-18', '2026-12-18', '2025-12-18 15:59:58'),
(98, 32, 1, '2025-12-19', '2026-12-19', '2025-12-18 16:50:45'),
(99, 32, 2, '2025-12-19', '2026-12-19', '2025-12-18 16:50:45'),
(100, 32, 3, '2025-12-19', '2026-12-19', '2025-12-18 16:50:45'),
(101, 32, 4, '2025-12-19', '2026-12-19', '2025-12-18 16:50:45'),
(102, 32, 5, '2025-12-19', '2026-12-19', '2025-12-18 16:50:45'),
(103, 32, 9, '2025-12-19', '2026-12-19', '2025-12-18 16:50:45'),
(104, 32, 10, '2025-12-19', '2026-12-19', '2025-12-18 16:50:45'),
(105, 33, 1, '2025-12-19', '2026-12-19', '2025-12-18 20:19:25'),
(106, 33, 2, '2025-12-19', '2026-12-19', '2025-12-18 20:19:25'),
(107, 33, 3, '2025-12-19', '2026-12-19', '2025-12-18 20:19:25'),
(108, 33, 4, '2025-12-19', '2026-12-19', '2025-12-18 20:19:25'),
(109, 33, 5, '2025-12-19', '2026-12-19', '2025-12-18 20:19:25'),
(110, 33, 9, '2025-12-19', '2026-12-19', '2025-12-18 20:19:25'),
(111, 33, 10, '2025-12-19', '2026-12-19', '2025-12-18 20:19:25'),
(112, 34, 1, '2025-12-19', '2026-12-19', '2025-12-18 20:57:09'),
(113, 34, 2, '2025-12-19', '2026-12-19', '2025-12-18 20:57:09'),
(114, 34, 3, '2025-12-19', '2026-12-19', '2025-12-18 20:57:09'),
(115, 34, 4, '2025-12-19', '2026-12-19', '2025-12-18 20:57:09'),
(116, 34, 5, '2025-12-19', '2026-12-19', '2025-12-18 20:57:09'),
(117, 34, 9, '2025-12-19', '2026-12-19', '2025-12-18 20:57:09'),
(118, 34, 10, '2025-12-19', '2026-12-19', '2025-12-18 20:57:09'),
(119, 35, 1, '2025-12-19', '2026-12-19', '2025-12-18 21:22:04'),
(120, 35, 2, '2025-12-19', '2026-12-19', '2025-12-18 21:22:04'),
(121, 35, 3, '2025-12-19', '2026-12-19', '2025-12-18 21:22:04'),
(122, 35, 4, '2025-12-19', '2026-12-19', '2025-12-18 21:22:04'),
(123, 35, 5, '2025-12-19', '2026-12-19', '2025-12-18 21:22:04'),
(124, 35, 9, '2025-12-19', '2026-12-19', '2025-12-18 21:22:04'),
(125, 35, 10, '2025-12-19', '2026-12-19', '2025-12-18 21:22:04'),
(126, 36, 1, '2025-12-19', '2026-12-19', '2025-12-19 01:55:33'),
(127, 36, 2, '2025-12-19', '2026-12-19', '2025-12-19 01:55:33'),
(128, 36, 3, '2025-12-19', '2026-12-19', '2025-12-19 01:55:33'),
(129, 36, 4, '2025-12-19', '2026-12-19', '2025-12-19 01:55:33'),
(130, 36, 5, '2025-12-19', '2026-12-19', '2025-12-19 01:55:33'),
(131, 36, 7, '2025-12-19', '2026-12-19', '2025-12-19 01:55:33');

-- --------------------------------------------------------

--
-- Table structure for table `senior_ids`
--

CREATE TABLE `senior_ids` (
  `id` int(11) NOT NULL,
  `senior_id` int(11) NOT NULL,
  `application_id` int(11) DEFAULT NULL,
  `id_number` varchar(50) NOT NULL,
  `qr_code` text DEFAULT NULL,
  `issue_date` date NOT NULL,
  `expiry_date` date NOT NULL,
  `status_id` int(11) NOT NULL,
  `printed_by` int(11) DEFAULT NULL,
  `print_date` timestamp NULL DEFAULT NULL,
  `released_by` int(11) DEFAULT NULL,
  `release_date` timestamp NULL DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `senior_target_sectors`
--

CREATE TABLE `senior_target_sectors` (
  `id` int(11) NOT NULL,
  `senior_id` int(11) NOT NULL,
  `sector_id` int(11) NOT NULL,
  `other_specification` varchar(255) DEFAULT NULL,
  `enrollment_date` date NOT NULL,
  `is_active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('m19MuxFWh7ABJuDaVEmcFKQn4tqgUMHz3zZ2yNSZ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibjRtY0FtcHdURjFoN2hETlBkaUdFdmhvRm9rd2ZKQWM3VVJjTFRKQiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1769687103),
('XZjY0ZEpIgSPS4JhSxmrWd2ePu5N6mb4wUg07rbT', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNTgwM0lQNmR4SUFDcklKamU5RElEU1lld1NHcXlmZFlQRThJSzN3bCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1769686762);

-- --------------------------------------------------------

--
-- Table structure for table `socioeconomic_statuses`
--

CREATE TABLE `socioeconomic_statuses` (
  `id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `income_range` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `socioeconomic_statuses`
--

INSERT INTO `socioeconomic_statuses` (`id`, `category`, `description`, `income_range`) VALUES
(1, 'Low Income', 'Low income household', 'Below ?10,000/month'),
(2, 'Middle Income', 'Middle income household', '?10,000 - ?50,000/month'),
(3, 'High Income', 'High income household', 'Above ?50,000/month'),
(4, 'No Income', 'No regular income', 'N/A');

-- --------------------------------------------------------

--
-- Table structure for table `target_sectors`
--

CREATE TABLE `target_sectors` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `benefits` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `target_sectors`
--

INSERT INTO `target_sectors` (`id`, `code`, `name`, `description`, `benefits`) VALUES
(1, 'PNGNA', 'PNGNA', 'Member of national senior citizens organization', NULL),
(2, 'WEPC', 'WEPC', 'Female senior citizens in empowerment programs', NULL),
(3, 'PWD', 'PWD', 'Senior with recognized disability', NULL),
(4, 'YNSP', 'YNSP', 'Special care program', NULL),
(5, 'PASP', 'PASP', 'Hope and support program members', NULL),
(6, 'KIA/WIA', 'KIA/WIA', 'Killed in Action/Wounded in Action', NULL),
(7, 'SOLO-PARENT', 'Solo Parents', 'Senior citizen raising children alone', NULL),
(8, 'IP', 'Indigenous Person', 'Member of indigenous community', NULL),
(9, 'RPUD', 'Recovering Person', 'Recovering from substance use', NULL),
(10, '4PS', '4P\'s DSWD Beneficiary', 'Pantawid Pamilyang Pilipino Program beneficiary', NULL),
(11, 'STREET', 'Street Dwellers', 'Homeless or street dwelling', NULL),
(12, 'PSYCHO', 'Psychosocial Disability', 'Mental or learning disability', NULL),
(13, 'STATELESS', 'Stateless Person', 'Stateless or asylum seeker', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_permissions`
--

CREATE TABLE `user_permissions` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `module` varchar(100) NOT NULL,
  `can_view` tinyint(1) DEFAULT 0,
  `can_create` tinyint(1) DEFAULT 0,
  `can_edit` tinyint(1) DEFAULT 0,
  `can_delete` tinyint(1) DEFAULT 0,
  `can_export` tinyint(1) DEFAULT 0,
  `can_print` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_permissions`
--

INSERT INTO `user_permissions` (`id`, `role_id`, `module`, `can_view`, `can_create`, `can_edit`, `can_delete`, `can_export`, `can_print`) VALUES
(1, 1, 'dashboard', 1, 1, 1, 1, 1, 1),
(2, 1, 'registration', 1, 1, 1, 1, 1, 1),
(3, 1, 'senior_citizens', 1, 1, 1, 1, 1, 1),
(4, 1, 'applications', 1, 1, 1, 1, 1, 1),
(5, 1, 'complaints', 1, 1, 1, 1, 1, 1),
(6, 1, 'id_printing', 1, 1, 1, 1, 1, 1),
(7, 1, 'announcements', 1, 1, 1, 1, 1, 0),
(8, 1, 'accounts', 1, 1, 1, 1, 1, 0),
(9, 1, 'archives', 1, 1, 1, 1, 1, 1),
(10, 1, 'reports', 1, 1, 1, 1, 1, 1),
(11, 1, 'heatmap', 1, 1, 1, 1, 1, 1),
(12, 2, 'dashboard', 1, 0, 0, 0, 1, 0),
(13, 2, 'registration', 1, 1, 1, 0, 1, 1),
(14, 2, 'senior_citizens', 1, 1, 1, 0, 1, 1),
(15, 2, 'applications', 1, 1, 1, 0, 1, 1),
(16, 2, 'complaints', 1, 1, 1, 0, 1, 1),
(17, 2, 'id_printing', 1, 0, 0, 0, 0, 1),
(18, 2, 'announcements', 1, 1, 1, 0, 1, 0),
(19, 2, 'accounts', 1, 0, 0, 0, 0, 0),
(20, 2, 'archives', 1, 0, 0, 0, 1, 0),
(21, 2, 'reports', 1, 1, 0, 0, 1, 1),
(22, 2, 'heatmap', 1, 0, 0, 0, 0, 0),
(23, 3, 'dashboard', 1, 0, 0, 0, 1, 0),
(24, 3, 'registration', 1, 1, 1, 0, 1, 0),
(25, 3, 'senior_citizens', 1, 1, 1, 0, 1, 0),
(26, 3, 'applications', 1, 1, 0, 0, 1, 0),
(27, 3, 'complaints', 1, 1, 0, 0, 1, 0),
(28, 3, 'id_printing', 0, 0, 0, 0, 0, 0),
(29, 3, 'announcements', 1, 0, 0, 0, 0, 0),
(30, 3, 'accounts', 0, 0, 0, 0, 0, 0),
(31, 3, 'archives', 1, 0, 0, 0, 1, 0),
(32, 3, 'reports', 1, 0, 0, 0, 1, 0),
(33, 3, 'heatmap', 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `level` int(11) NOT NULL COMMENT '1=Main Admin, 2=Branch Admin, 3=Barangay Admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `name`, `description`, `level`) VALUES
(1, 'Main Admin', 'Full system access - can manage all branches and barangays', 1),
(2, 'Branch Admin', 'Access to assigned branch and its barangays', 2),
(3, 'Barangay Admin', 'Access to specific barangay only', 3);

-- --------------------------------------------------------

--
-- Structure for view `archives_expanded`
--
DROP TABLE IF EXISTS `archives_expanded`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `archives_expanded`  AS SELECT `a`.`id` AS `id`, `a`.`archive_type` AS `archive_type`, `a`.`reference_id` AS `reference_id`, `a`.`archive_data` AS `archive_data`, `a`.`archive_reason` AS `archive_reason`, `a`.`archive_notes` AS `archive_notes`, `a`.`original_created_at` AS `original_created_at`, `a`.`original_updated_at` AS `original_updated_at`, `a`.`deceased_date` AS `deceased_date`, `a`.`archived_by` AS `archived_by`, concat(`au`.`first_name`,' ',`au`.`last_name`) AS `archived_by_name`, `a`.`archived_at` AS `archived_at`, json_unquote(json_extract(`a`.`archive_data`,'$.osca_id')) AS `osca_id`, json_unquote(json_extract(`a`.`archive_data`,'$.first_name')) AS `first_name`, json_unquote(json_extract(`a`.`archive_data`,'$.last_name')) AS `last_name`, json_unquote(json_extract(`a`.`archive_data`,'$.username')) AS `username`, json_unquote(json_extract(`a`.`archive_data`,'$.employee_id')) AS `employee_id` FROM (`archives` `a` left join `admin_users` `au` on(`a`.`archived_by` = `au`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `senior_citizens_with_benefits`
--
DROP TABLE IF EXISTS `senior_citizens_with_benefits`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `senior_citizens_with_benefits`  AS SELECT `sc`.`id` AS `id`, `sc`.`osca_id` AS `osca_id`, `sc`.`first_name` AS `first_name`, `sc`.`middle_name` AS `middle_name`, `sc`.`last_name` AS `last_name`, `sc`.`extension` AS `extension`, `sc`.`birthdate` AS `birthdate`, timestampdiff(YEAR,`sc`.`birthdate`,curdate()) AS `age`, `sc`.`gender_id` AS `gender_id`, `g`.`name` AS `gender`, `sc`.`barangay_id` AS `barangay_id`, `b`.`name` AS `barangay`, `sc`.`branch_id` AS `branch_id`, `br`.`name` AS `branch`, `sc`.`registration_date` AS `registration_date`, `sc`.`registration_status_id` AS `registration_status_id`, `rs`.`name` AS `registration_status`, `sc`.`is_active` AS `is_active`, `sc`.`is_deceased` AS `is_deceased`, group_concat(distinct `ben`.`name` order by `ben`.`name` ASC separator ', ') AS `eligible_benefits`, count(distinct `ben`.`id`) AS `benefit_count`, sum(case when `ben`.`type` = 'pension' and `ben`.`frequency` = 'monthly' then `ben`.`amount` else 0 end) AS `monthly_pension_amount` FROM (((((`senior_citizens` `sc` left join `genders` `g` on(`sc`.`gender_id` = `g`.`id`)) left join `barangays` `b` on(`sc`.`barangay_id` = `b`.`id`)) left join `branches` `br` on(`sc`.`branch_id` = `br`.`id`)) left join `registration_statuses` `rs` on(`sc`.`registration_status_id` = `rs`.`id`)) left join `benefits` `ben` on(`ben`.`age_requirement` <= timestampdiff(YEAR,`sc`.`birthdate`,curdate()) and (`ben`.`max_age` is null or `ben`.`max_age` >= timestampdiff(YEAR,`sc`.`birthdate`,curdate())) and (`ben`.`is_barangay_specific` = 0 or `ben`.`barangay_id` = `sc`.`barangay_id`) and `ben`.`is_active` = 1)) GROUP BY `sc`.`id`, `sc`.`osca_id`, `sc`.`first_name`, `sc`.`middle_name`, `sc`.`last_name`, `sc`.`extension`, `sc`.`birthdate`, `sc`.`gender_id`, `g`.`name`, `sc`.`barangay_id`, `b`.`name`, `sc`.`branch_id`, `br`.`name`, `sc`.`registration_date`, `sc`.`registration_status_id`, `rs`.`name`, `sc`.`is_active`, `sc`.`is_deceased` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_logs`
--
ALTER TABLE `access_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_timestamp` (`user_id`,`timestamp`),
  ADD KEY `idx_timestamp` (`timestamp`);

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_module` (`user_id`,`module`),
  ADD KEY `idx_timestamp` (`timestamp`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_id` (`employee_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `gender_id` (`gender_id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `branch_id` (`branch_id`),
  ADD KEY `barangay_id` (`barangay_id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `idx_event_date` (`event_date`),
  ADD KEY `idx_published` (`is_published`),
  ADD KEY `idx_event_date_published` (`event_date`,`is_published`);

--
-- Indexes for table `announcement_media`
--
ALTER TABLE `announcement_media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `announcement_id` (`announcement_id`);

--
-- Indexes for table `announcement_types`
--
ALTER TABLE `announcement_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `application_number` (`application_number`),
  ADD KEY `application_type_id` (`application_type_id`),
  ADD KEY `submitted_by` (`submitted_by`),
  ADD KEY `verified_by` (`verified_by`),
  ADD KEY `approved_by` (`approved_by`),
  ADD KEY `printed_by` (`printed_by`),
  ADD KEY `claimed_by` (`claimed_by`),
  ADD KEY `idx_application_number` (`application_number`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_senior` (`senior_id`),
  ADD KEY `idx_application_senior_status` (`senior_id`,`status`),
  ADD KEY `idx_app_senior_created` (`senior_id`,`created_at`);

--
-- Indexes for table `application_documents`
--
ALTER TABLE `application_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `application_id` (`application_id`),
  ADD KEY `document_type_id` (`document_type_id`),
  ADD KEY `uploaded_by` (`uploaded_by`);

--
-- Indexes for table `application_types`
--
ALTER TABLE `application_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `archives`
--
ALTER TABLE `archives`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_archive_type` (`archive_type`),
  ADD KEY `idx_reference_id` (`reference_id`),
  ADD KEY `idx_archived_by` (`archived_by`),
  ADD KEY `idx_archive_type_reason` (`archive_type`,`archive_reason`),
  ADD KEY `idx_deceased_date` (`deceased_date`),
  ADD KEY `idx_archived_at` (`archived_at`),
  ADD KEY `idx_archive_reason` (`archive_reason`);

--
-- Indexes for table `barangays`
--
ALTER TABLE `barangays`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `benefits`
--
ALTER TABLE `benefits`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `barangay_id` (`barangay_id`),
  ADD KEY `idx_benefit_active` (`is_active`,`type`);

--
-- Indexes for table `benefit_history`
--
ALTER TABLE `benefit_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `benefit_id` (`benefit_id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `idx_senior_benefit_history` (`senior_id`,`benefit_id`),
  ADD KEY `idx_next_eligible` (`next_eligible_date`);

--
-- Indexes for table `benefit_transactions`
--
ALTER TABLE `benefit_transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transaction_number` (`transaction_number`),
  ADD KEY `benefit_id` (`benefit_id`),
  ADD KEY `processed_by` (`processed_by`),
  ADD KEY `idx_senior_benefit` (`senior_id`,`benefit_id`),
  ADD KEY `idx_transaction_date` (`transaction_date`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_transaction_senior_date` (`senior_id`,`transaction_date`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `branch_barangays`
--
ALTER TABLE `branch_barangays`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_branch_barangay` (`branch_id`,`barangay_id`),
  ADD KEY `barangay_id` (`barangay_id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `complaint_number` (`complaint_number`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `filed_by` (`filed_by`),
  ADD KEY `assigned_to` (`assigned_to`),
  ADD KEY `idx_complaint_number` (`complaint_number`),
  ADD KEY `idx_complainant` (`complainant_id`),
  ADD KEY `idx_status` (`status_id`),
  ADD KEY `idx_complaint_status_date` (`status_id`,`filed_date`);

--
-- Indexes for table `complaint_categories`
--
ALTER TABLE `complaint_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `complaint_documents`
--
ALTER TABLE `complaint_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `complaint_id` (`complaint_id`),
  ADD KEY `uploaded_by` (`uploaded_by`);

--
-- Indexes for table `complaint_statuses`
--
ALTER TABLE `complaint_statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `barangay_id` (`barangay_id`),
  ADD KEY `idx_contact_lookup` (`id`);

--
-- Indexes for table `document_types`
--
ALTER TABLE `document_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `educational_attainment`
--
ALTER TABLE `educational_attainment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_participants`
--
ALTER TABLE `event_participants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_announcement_senior` (`announcement_id`,`senior_id`),
  ADD KEY `senior_id` (`senior_id`),
  ADD KEY `claimed_by_admin` (`claimed_by_admin`);

--
-- Indexes for table `family_members`
--
ALTER TABLE `family_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_id` (`contact_id`),
  ADD KEY `idx_family_senior` (`senior_id`,`contact_id`);

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `id_printing_queue`
--
ALTER TABLE `id_printing_queue`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `queue_number` (`queue_number`),
  ADD KEY `idx_senior_id` (`senior_id`),
  ADD KEY `idx_application_id` (`application_id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_priority` (`priority`),
  ADD KEY `idx_requested_date` (`requested_date`),
  ADD KEY `idx_status_priority` (`status`,`priority`),
  ADD KEY `idx_requested_date_status` (`requested_date`,`status`),
  ADD KEY `requested_by` (`requested_by`),
  ADD KEY `assigned_to` (`assigned_to`),
  ADD KEY `printed_by` (`printed_by`),
  ADD KEY `claimed_by` (`claimed_by`);

--
-- Indexes for table `id_statuses`
--
ALTER TABLE `id_statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobility_levels`
--
ALTER TABLE `mobility_levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `registration_statuses`
--
ALTER TABLE `registration_statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `senior_citizens`
--
ALTER TABLE `senior_citizens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `osca_id` (`osca_id`),
  ADD KEY `gender_id` (`gender_id`),
  ADD KEY `contact_id` (`contact_id`),
  ADD KEY `educational_attainment_id` (`educational_attainment_id`),
  ADD KEY `socioeconomic_status_id` (`socioeconomic_status_id`),
  ADD KEY `mobility_level_id` (`mobility_level_id`),
  ADD KEY `registered_by` (`registered_by`),
  ADD KEY `idx_osca_id` (`osca_id`),
  ADD KEY `idx_barangay` (`barangay_id`),
  ADD KEY `idx_branch` (`branch_id`),
  ADD KEY `idx_status` (`registration_status_id`),
  ADD KEY `idx_name` (`last_name`,`first_name`),
  ADD KEY `idx_senior_barangay_status` (`barangay_id`,`registration_status_id`),
  ADD KEY `idx_senior_branch_status` (`branch_id`,`registration_status_id`),
  ADD KEY `idx_senior_lookup` (`id`,`barangay_id`,`registration_status_id`);

--
-- Indexes for table `senior_eligible_benefits`
--
ALTER TABLE `senior_eligible_benefits`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_senior_benefit` (`senior_id`,`benefit_id`),
  ADD KEY `benefit_id` (`benefit_id`),
  ADD KEY `idx_eligibility_dates` (`eligible_from`,`eligible_until`);

--
-- Indexes for table `senior_ids`
--
ALTER TABLE `senior_ids`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_number` (`id_number`),
  ADD KEY `application_id` (`application_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `printed_by` (`printed_by`),
  ADD KEY `released_by` (`released_by`),
  ADD KEY `idx_id_number` (`id_number`),
  ADD KEY `idx_senior` (`senior_id`),
  ADD KEY `idx_senior_id_lookup` (`senior_id`,`issue_date`,`status_id`);

--
-- Indexes for table `senior_target_sectors`
--
ALTER TABLE `senior_target_sectors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_senior_sector` (`senior_id`,`sector_id`),
  ADD KEY `sector_id` (`sector_id`),
  ADD KEY `idx_sector_senior_active` (`senior_id`,`is_active`,`sector_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `socioeconomic_statuses`
--
ALTER TABLE `socioeconomic_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `target_sectors`
--
ALTER TABLE `target_sectors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_role_module` (`role_id`,`module`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_logs`
--
ALTER TABLE `access_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4388;

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `announcement_media`
--
ALTER TABLE `announcement_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `announcement_types`
--
ALTER TABLE `announcement_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `application_documents`
--
ALTER TABLE `application_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `application_types`
--
ALTER TABLE `application_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `archives`
--
ALTER TABLE `archives`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `barangays`
--
ALTER TABLE `barangays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `benefits`
--
ALTER TABLE `benefits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `benefit_history`
--
ALTER TABLE `benefit_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `benefit_transactions`
--
ALTER TABLE `benefit_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `branch_barangays`
--
ALTER TABLE `branch_barangays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `complaint_categories`
--
ALTER TABLE `complaint_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `complaint_documents`
--
ALTER TABLE `complaint_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complaint_statuses`
--
ALTER TABLE `complaint_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `document_types`
--
ALTER TABLE `document_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `educational_attainment`
--
ALTER TABLE `educational_attainment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `event_participants`
--
ALTER TABLE `event_participants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `family_members`
--
ALTER TABLE `family_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `id_printing_queue`
--
ALTER TABLE `id_printing_queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `id_statuses`
--
ALTER TABLE `id_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mobility_levels`
--
ALTER TABLE `mobility_levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `registration_statuses`
--
ALTER TABLE `registration_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `senior_citizens`
--
ALTER TABLE `senior_citizens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `senior_eligible_benefits`
--
ALTER TABLE `senior_eligible_benefits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `senior_ids`
--
ALTER TABLE `senior_ids`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `senior_target_sectors`
--
ALTER TABLE `senior_target_sectors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `socioeconomic_statuses`
--
ALTER TABLE `socioeconomic_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `target_sectors`
--
ALTER TABLE `target_sectors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_permissions`
--
ALTER TABLE `user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `access_logs`
--
ALTER TABLE `access_logs`
  ADD CONSTRAINT `access_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD CONSTRAINT `activity_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD CONSTRAINT `admin_users_ibfk_1` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`),
  ADD CONSTRAINT `admin_users_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `user_roles` (`id`),
  ADD CONSTRAINT `admin_users_ibfk_3` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `admin_users_ibfk_4` FOREIGN KEY (`barangay_id`) REFERENCES `barangays` (`id`);

--
-- Constraints for table `announcements`
--
ALTER TABLE `announcements`
  ADD CONSTRAINT `announcements_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `announcement_types` (`id`),
  ADD CONSTRAINT `announcements_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `admin_users` (`id`);

--
-- Constraints for table `announcement_media`
--
ALTER TABLE `announcement_media`
  ADD CONSTRAINT `announcement_media_ibfk_1` FOREIGN KEY (`announcement_id`) REFERENCES `announcements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `applications`
--
ALTER TABLE `applications`
  ADD CONSTRAINT `applications_ibfk_1` FOREIGN KEY (`senior_id`) REFERENCES `senior_citizens` (`id`),
  ADD CONSTRAINT `applications_ibfk_2` FOREIGN KEY (`application_type_id`) REFERENCES `application_types` (`id`),
  ADD CONSTRAINT `applications_ibfk_3` FOREIGN KEY (`submitted_by`) REFERENCES `admin_users` (`id`),
  ADD CONSTRAINT `applications_ibfk_4` FOREIGN KEY (`verified_by`) REFERENCES `admin_users` (`id`),
  ADD CONSTRAINT `applications_ibfk_5` FOREIGN KEY (`approved_by`) REFERENCES `admin_users` (`id`),
  ADD CONSTRAINT `applications_ibfk_6` FOREIGN KEY (`printed_by`) REFERENCES `admin_users` (`id`),
  ADD CONSTRAINT `applications_ibfk_7` FOREIGN KEY (`claimed_by`) REFERENCES `admin_users` (`id`);

--
-- Constraints for table `application_documents`
--
ALTER TABLE `application_documents`
  ADD CONSTRAINT `application_documents_ibfk_1` FOREIGN KEY (`application_id`) REFERENCES `applications` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `application_documents_ibfk_2` FOREIGN KEY (`document_type_id`) REFERENCES `document_types` (`id`),
  ADD CONSTRAINT `application_documents_ibfk_3` FOREIGN KEY (`uploaded_by`) REFERENCES `admin_users` (`id`);

--
-- Constraints for table `archives`
--
ALTER TABLE `archives`
  ADD CONSTRAINT `archives_ibfk_1` FOREIGN KEY (`archived_by`) REFERENCES `admin_users` (`id`);

--
-- Constraints for table `benefits`
--
ALTER TABLE `benefits`
  ADD CONSTRAINT `benefits_ibfk_1` FOREIGN KEY (`barangay_id`) REFERENCES `barangays` (`id`);

--
-- Constraints for table `benefit_history`
--
ALTER TABLE `benefit_history`
  ADD CONSTRAINT `benefit_history_ibfk_1` FOREIGN KEY (`senior_id`) REFERENCES `senior_citizens` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `benefit_history_ibfk_2` FOREIGN KEY (`benefit_id`) REFERENCES `benefits` (`id`),
  ADD CONSTRAINT `benefit_history_ibfk_3` FOREIGN KEY (`transaction_id`) REFERENCES `benefit_transactions` (`id`);

--
-- Constraints for table `benefit_transactions`
--
ALTER TABLE `benefit_transactions`
  ADD CONSTRAINT `benefit_transactions_ibfk_1` FOREIGN KEY (`senior_id`) REFERENCES `senior_citizens` (`id`),
  ADD CONSTRAINT `benefit_transactions_ibfk_2` FOREIGN KEY (`benefit_id`) REFERENCES `benefits` (`id`),
  ADD CONSTRAINT `benefit_transactions_ibfk_3` FOREIGN KEY (`processed_by`) REFERENCES `admin_users` (`id`);

--
-- Constraints for table `branch_barangays`
--
ALTER TABLE `branch_barangays`
  ADD CONSTRAINT `branch_barangays_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `branch_barangays_ibfk_2` FOREIGN KEY (`barangay_id`) REFERENCES `barangays` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `complaints`
--
ALTER TABLE `complaints`
  ADD CONSTRAINT `complaints_ibfk_1` FOREIGN KEY (`complainant_id`) REFERENCES `senior_citizens` (`id`),
  ADD CONSTRAINT `complaints_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `complaint_categories` (`id`),
  ADD CONSTRAINT `complaints_ibfk_3` FOREIGN KEY (`status_id`) REFERENCES `complaint_statuses` (`id`),
  ADD CONSTRAINT `complaints_ibfk_4` FOREIGN KEY (`filed_by`) REFERENCES `admin_users` (`id`),
  ADD CONSTRAINT `complaints_ibfk_5` FOREIGN KEY (`assigned_to`) REFERENCES `admin_users` (`id`);

--
-- Constraints for table `complaint_documents`
--
ALTER TABLE `complaint_documents`
  ADD CONSTRAINT `complaint_documents_ibfk_1` FOREIGN KEY (`complaint_id`) REFERENCES `complaints` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `complaint_documents_ibfk_2` FOREIGN KEY (`uploaded_by`) REFERENCES `admin_users` (`id`);

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_ibfk_1` FOREIGN KEY (`barangay_id`) REFERENCES `barangays` (`id`);

--
-- Constraints for table `event_participants`
--
ALTER TABLE `event_participants`
  ADD CONSTRAINT `event_participants_ibfk_1` FOREIGN KEY (`announcement_id`) REFERENCES `announcements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `event_participants_ibfk_2` FOREIGN KEY (`senior_id`) REFERENCES `senior_citizens` (`id`),
  ADD CONSTRAINT `event_participants_ibfk_3` FOREIGN KEY (`claimed_by_admin`) REFERENCES `admin_users` (`id`);

--
-- Constraints for table `family_members`
--
ALTER TABLE `family_members`
  ADD CONSTRAINT `family_members_ibfk_1` FOREIGN KEY (`senior_id`) REFERENCES `senior_citizens` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `family_members_ibfk_2` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`);

--
-- Constraints for table `id_printing_queue`
--
ALTER TABLE `id_printing_queue`
  ADD CONSTRAINT `id_printing_queue_ibfk_1` FOREIGN KEY (`senior_id`) REFERENCES `senior_citizens` (`id`),
  ADD CONSTRAINT `id_printing_queue_ibfk_2` FOREIGN KEY (`application_id`) REFERENCES `applications` (`id`),
  ADD CONSTRAINT `id_printing_queue_ibfk_3` FOREIGN KEY (`requested_by`) REFERENCES `admin_users` (`id`),
  ADD CONSTRAINT `id_printing_queue_ibfk_4` FOREIGN KEY (`assigned_to`) REFERENCES `admin_users` (`id`),
  ADD CONSTRAINT `id_printing_queue_ibfk_5` FOREIGN KEY (`printed_by`) REFERENCES `admin_users` (`id`),
  ADD CONSTRAINT `id_printing_queue_ibfk_6` FOREIGN KEY (`claimed_by`) REFERENCES `admin_users` (`id`);

--
-- Constraints for table `senior_citizens`
--
ALTER TABLE `senior_citizens`
  ADD CONSTRAINT `senior_citizens_ibfk_1` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`),
  ADD CONSTRAINT `senior_citizens_ibfk_2` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`),
  ADD CONSTRAINT `senior_citizens_ibfk_3` FOREIGN KEY (`educational_attainment_id`) REFERENCES `educational_attainment` (`id`),
  ADD CONSTRAINT `senior_citizens_ibfk_4` FOREIGN KEY (`socioeconomic_status_id`) REFERENCES `socioeconomic_statuses` (`id`),
  ADD CONSTRAINT `senior_citizens_ibfk_5` FOREIGN KEY (`mobility_level_id`) REFERENCES `mobility_levels` (`id`),
  ADD CONSTRAINT `senior_citizens_ibfk_6` FOREIGN KEY (`barangay_id`) REFERENCES `barangays` (`id`),
  ADD CONSTRAINT `senior_citizens_ibfk_7` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `senior_citizens_ibfk_8` FOREIGN KEY (`registration_status_id`) REFERENCES `registration_statuses` (`id`),
  ADD CONSTRAINT `senior_citizens_ibfk_9` FOREIGN KEY (`registered_by`) REFERENCES `admin_users` (`id`);

--
-- Constraints for table `senior_eligible_benefits`
--
ALTER TABLE `senior_eligible_benefits`
  ADD CONSTRAINT `senior_eligible_benefits_ibfk_1` FOREIGN KEY (`senior_id`) REFERENCES `senior_citizens` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `senior_eligible_benefits_ibfk_2` FOREIGN KEY (`benefit_id`) REFERENCES `benefits` (`id`);

--
-- Constraints for table `senior_ids`
--
ALTER TABLE `senior_ids`
  ADD CONSTRAINT `senior_ids_ibfk_1` FOREIGN KEY (`senior_id`) REFERENCES `senior_citizens` (`id`),
  ADD CONSTRAINT `senior_ids_ibfk_2` FOREIGN KEY (`application_id`) REFERENCES `applications` (`id`),
  ADD CONSTRAINT `senior_ids_ibfk_3` FOREIGN KEY (`status_id`) REFERENCES `id_statuses` (`id`),
  ADD CONSTRAINT `senior_ids_ibfk_4` FOREIGN KEY (`printed_by`) REFERENCES `admin_users` (`id`),
  ADD CONSTRAINT `senior_ids_ibfk_5` FOREIGN KEY (`released_by`) REFERENCES `admin_users` (`id`);

--
-- Constraints for table `senior_target_sectors`
--
ALTER TABLE `senior_target_sectors`
  ADD CONSTRAINT `senior_target_sectors_ibfk_1` FOREIGN KEY (`senior_id`) REFERENCES `senior_citizens` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `senior_target_sectors_ibfk_2` FOREIGN KEY (`sector_id`) REFERENCES `target_sectors` (`id`);

--
-- Constraints for table `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD CONSTRAINT `user_permissions_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `user_roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
