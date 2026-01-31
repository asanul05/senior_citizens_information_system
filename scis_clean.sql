-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2026 at 03:57 PM
-- Server version: 11.4.5-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


SET NAMES utf8mb4;

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
(1, 'OSCA-ADMIN-001', 'mainadmin', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Main', NULL, 'Administrator', NULL, 'System Administrator', 1, '09171234567', 'admin@osca.gov.ph', 1, NULL, NULL, 1, '2026-01-30 01:38:03', '2025-12-15 01:34:10', '2026-01-30 01:38:03'),
(2, 'OSCA-BRANCH-001', 'branch1admin', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Branch', NULL, 'Admin One', NULL, 'Field Office Manager', 1, '09171234568', 'field1@osca.gov.ph', 2, 2, NULL, 1, '2025-12-16 18:05:09', '2025-12-15 01:34:10', '2025-12-16 18:05:09'),
(3, 'OSCA-BRANCH-002', 'branch2admin', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Branch', NULL, 'Admin Two', NULL, 'Field Office Manager', 2, '09171234569', 'field2@osca.gov.ph', 2, 3, NULL, 1, NULL, '2025-12-15 01:34:10', '2025-12-15 01:34:10'),
(4, 'OSCA-BRGY-001', 'tetuan.admin', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Tetuan', NULL, 'Admin', NULL, 'Barangay OSCA Coordinator', 1, '09171234570', 'tetuan@osca.gov.ph', 3, 2, 79, 1, NULL, '2025-12-15 01:34:10', '2025-12-15 01:34:10'),
(5, 'OSCA-BRGY-002', 'santamaria.admin', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Santa Maria', NULL, 'Admin', NULL, 'Barangay OSCA Coordinator', 2, '09171234571', 'santamaria@osca.gov.ph', 3, 2, 68, 1, NULL, '2025-12-15 01:34:10', '2025-12-15 01:34:10'),
(6, 'OSCA-BRGY-003', 'guiwan.admin', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Guiwan', NULL, 'Admin', NULL, 'Barangay OSCA Coordinator', 1, '09171234572', 'guiwan@osca.gov.ph', 3, 6, 26, 1, NULL, '2025-12-15 01:34:10', '2025-12-15 01:34:10'),
(7, 'OSCA-ADMIN-999', 'admin', '$2y$10$KQ8NHMt5LVbuyjYuW3p1zuzZOeJ7.1q3FSRnWb/Zkqr03YMR7GQxe', 'System', NULL, 'Administrator', NULL, 'Main Administrator', 1, '09999999999', 'admin@osca.local', 1, NULL, NULL, 1, '2025-12-18 08:42:26', '2025-12-16 18:26:07', '2025-12-18 08:42:26'),
(8, 'EMP101', 'foadmin1', '$2y$12$./Xl5WTssOBkuXx4aqea7eyiJPv9uT8o9dDVTf3AkyBu9/iZKWh3K', 'Field Office', NULL, 'Admin One', NULL, 'FO Admin', NULL, NULL, 'foadmin1@osca.gov.ph', 2, 1, NULL, 1, '2026-01-29 23:41:40', '2026-01-29 21:48:48', '2026-01-29 23:41:40'),
(9, 'EMP102', 'foadmin2', '$2y$12$uIiLCw994T9YeaEQdnT6rOepsFg9s1W3RkF9oeWnvwZVVcVwvfMLO', 'Field Office', NULL, 'Admin Two', NULL, 'FO Admin', NULL, NULL, 'foadmin2@osca.gov.ph', 2, 2, NULL, 1, NULL, '2026-01-29 21:48:49', '2026-01-29 21:48:49'),
(10, 'BRGY001', 'barangay_tetuan', '$2y$12$dRU5H80rrs3Hc/XndMLGZ.ncHC97a6w/tHwCXqwae8LEjJiSYbgMu', 'Barangay', NULL, 'Tetuan Admin', NULL, 'Barangay Staff', NULL, NULL, 'tetuan@osca.gov.ph', 3, 1, 1, 1, '2026-01-29 23:41:02', '2026-01-29 21:48:49', '2026-01-29 23:41:02'),
(11, 'BRGY002', 'barangay_ayala', '$2y$12$lBv1C1yvsUH6XfDC0VqJfO7ULxuVAIaab2btDWcsUovsW25ir8ZFW', 'Barangay', NULL, 'Ayala Admin', NULL, 'Barangay Staff', NULL, NULL, 'ayala@osca.gov.ph', 3, 1, 2, 1, NULL, '2026-01-29 21:48:49', '2026-01-29 21:48:49'),
(12, 'BRGY003', 'barangay_calarian', '$2y$12$yc02dmlHz3sYxlSM4kcEjO5LeD0XXkV2ZXEMer4l9c8ZsljZJqkbu', 'Barangay', NULL, 'Calarian Admin', NULL, 'Barangay Staff', NULL, NULL, 'calarian@osca.gov.ph', 3, 1, 3, 1, NULL, '2026-01-29 21:48:49', '2026-01-29 21:48:49');

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
  `applicant_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`applicant_data`)),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `application_number`, `senior_id`, `application_type_id`, `status`, `submitted_by`, `submission_date`, `verified_by`, `verification_date`, `approved_by`, `approval_date`, `printed_by`, `print_date`, `claimed_by`, `claim_date`, `notes`, `applicant_data`, `created_at`, `updated_at`) VALUES
(6, 'APP-2025-000027', 26, 1, 'Claimed', 1, '2025-12-18 13:21:26', NULL, NULL, 1, '2025-12-18 13:36:34', 1, '2025-12-19 02:34:43', 1, '2025-12-19 02:34:50', '\n2025-12-18 21:36:34 - Status changed to Approved by user 1', NULL, '2025-12-18 11:08:17', '2025-12-19 02:34:50'),
(18, 'APP-2025-000033', 31, 1, 'Claimed', 1, '2025-12-18 08:59:48', NULL, NULL, 1, '2025-12-18 08:59:58', 1, '2025-12-19 00:10:07', 1, '2025-12-19 00:10:09', '\n[APPLICANT_PAYLOAD]{\"personal_info\":{\"first_name\":\"cali\",\"middle_name\":\"the\",\"last_name\":\"cat\",\"extension\":\"da\",\"birthdate\":\"0124-12-31\",\"gender_id\":2,\"barangay_id\":19,\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"contact_info\":{\"mobile_number\":null,\"telephone_number\":null,\"house_number\":\"dsa\",\"street\":\"das\",\"email\":null},\"family_members\":null,\"target_sectors\":null,\"photo_path\":null}\n2025-12-18 16:59:58 - Status changed to Approved by user 1', NULL, '2025-12-18 15:59:48', '2025-12-19 00:10:09'),
(19, 'APP-2025-000034', 32, 1, 'Approved', 1, '2025-12-18 09:10:57', NULL, NULL, 1, '2025-12-18 09:50:45', NULL, NULL, NULL, NULL, '\n[APPLICANT_PAYLOAD]{\"personal_info\":{\"first_name\":\"dog \",\"middle_name\":\"d \",\"last_name\":\"dog\",\"extension\":null,\"birthdate\":\"0032-12-24\",\"gender_id\":2,\"barangay_id\":17,\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"contact_info\":{\"mobile_number\":null,\"telephone_number\":null,\"house_number\":\"dsa\",\"street\":\"d\",\"email\":null},\"family_members\":null,\"target_sectors\":null,\"photo_path\":null}\n2025-12-18 17:50:45 - Status changed to Approved by user 1', NULL, '2025-12-18 16:10:57', '2025-12-18 16:50:45'),
(27, 'APP-2025-000035', 33, 1, 'Approved', 1, '2025-12-18 13:18:29', NULL, NULL, 1, '2025-12-18 13:19:25', NULL, NULL, NULL, NULL, '\n[APPLICANT_PAYLOAD]{\"personal_info\":{\"first_name\":\"Ace\",\"middle_name\":null,\"last_name\":\"Nieva\",\"extension\":\"fas\",\"birthdate\":\"0343-04-04\",\"gender_id\":1,\"barangay_id\":15,\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"contact_info\":{\"mobile_number\":null,\"telephone_number\":null,\"house_number\":\"as\",\"street\":\"da\",\"email\":null},\"family_members\":null,\"target_sectors\":null,\"photo_path\":null}\n2025-12-18 21:19:25 - Status changed to Approved by user 1', NULL, '2025-12-18 20:18:29', '2025-12-18 20:19:25'),
(33, 'APP-2025-000037', NULL, 1, 'For Verification', 1, '2025-12-18 14:34:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\n[APPLICANT_PAYLOAD]{\"personal_info\":{\"first_name\":\"gor\",\"middle_name\":null,\"last_name\":\"illa\",\"extension\":null,\"birthdate\":\"0323-02-23\",\"gender_id\":2,\"barangay_id\":4,\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"contact_info\":{\"mobile_number\":null,\"telephone_number\":null,\"house_number\":\"24\",\"street\":\"42\",\"email\":null},\"family_members\":null,\"target_sectors\":null,\"photo_path\":null}', NULL, '2025-12-18 20:58:28', '2025-12-18 21:34:42'),
(34, 'APP-2025-000038', 35, 1, 'Printed', 1, '2025-12-18 14:21:55', NULL, NULL, 1, '2025-12-18 14:22:04', 1, '2025-12-19 00:10:25', 1, '2025-12-19 00:09:53', '\n[APPLICANT_PAYLOAD]{\"personal_info\":{\"first_name\":\"edit\",\"middle_name\":null,\"last_name\":\"pls\",\"extension\":null,\"birthdate\":\"0323-02-23\",\"gender_id\":2,\"barangay_id\":17,\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"contact_info\":{\"mobile_number\":null,\"telephone_number\":null,\"house_number\":\"dsa\",\"street\":\"dsa\",\"email\":null},\"family_members\":null,\"target_sectors\":null,\"photo_path\":null}\n2025-12-18 22:22:04 - Status changed to Approved by user 1', NULL, '2025-12-18 20:59:38', '2025-12-19 00:10:25'),
(35, 'APP-2025-000039', NULL, 1, 'For Verification', 1, '2025-12-18 15:19:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\n[APPLICANT_PAYLOAD]{\"personal_info\":{\"first_name\":\"Loniel\",\"middle_name\":null,\"last_name\":\"Gapol\",\"extension\":null,\"birthdate\":\"1945-12-31\",\"gender_id\":1,\"barangay_id\":16,\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"contact_info\":{\"mobile_number\":null,\"telephone_number\":null,\"house_number\":\"23\",\"street\":\"32\",\"email\":null},\"family_members\":null,\"target_sectors\":[\"WEPC\"],\"photo_path\":null}', NULL, '2025-12-18 22:19:53', '2025-12-18 22:19:53'),
(37, 'APP-2025-000040', 36, 1, 'Printed', 1, '2025-12-18 18:54:57', NULL, NULL, 1, '2025-12-18 18:55:33', 1, '2025-12-19 02:34:33', 1, '2025-12-19 02:34:30', '\n[APPLICANT_PAYLOAD]{\"personal_info\":{\"first_name\":\"Fatima\",\"middle_name\":null,\"last_name\":\"Abubakar\",\"extension\":null,\"birthdate\":\"1940-12-02\",\"gender_id\":2,\"barangay_id\":15,\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"contact_info\":{\"mobile_number\":null,\"telephone_number\":null,\"house_number\":\"123\",\"street\":\"123\",\"email\":null},\"family_members\":null,\"target_sectors\":null,\"photo_path\":null}\n2025-12-19 02:55:33 - Status changed to Approved by user 1', NULL, '2025-12-19 01:54:57', '2025-12-19 02:34:33'),
(38, 'APP-2026-00001', 37, 1, 'Draft', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-29 15:00:50', '2026-01-29 15:00:50'),
(39, 'APP-2026-00002', 38, 1, 'For Verification', 1, '2026-01-29 15:02:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-29 15:02:48', '2026-01-29 15:02:48'),
(40, 'APP-2026-00003', 39, 1, 'Approved', 1, '2026-01-29 15:50:58', NULL, NULL, 1, '2026-01-29 15:51:38', NULL, NULL, NULL, NULL, NULL, '{\"personal_info\":{\"first_name\":\"Seven\",\"middle_name\":null,\"last_name\":\"terty five\",\"extension\":null,\"birthdate\":\"1945-05-02\",\"gender_id\":2,\"barangay_id\":5},\"contact_info\":{\"house_number\":\"dsa\",\"street\":\"dwa\",\"mobile_number\":null,\"telephone_number\":null},\"background_info\":{\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}', '2026-01-29 15:25:45', '2026-01-29 15:51:38'),
(41, 'APP-2026-00004', 40, 1, 'Approved', 1, '2026-01-29 15:54:21', NULL, NULL, 1, '2026-01-29 15:54:59', NULL, NULL, NULL, NULL, NULL, '{\"personal_info\":{\"first_name\":\"Seven\",\"middle_name\":null,\"last_name\":\"Fifty two\",\"extension\":null,\"birthdate\":\"1945-05-02\",\"gender_id\":1,\"barangay_id\":5},\"contact_info\":{\"house_number\":\"das\",\"street\":\"sad\",\"mobile_number\":null,\"telephone_number\":null},\"background_info\":{\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}', '2026-01-29 15:53:20', '2026-01-29 15:54:59'),
(42, 'APP-2026-00005', NULL, 1, 'Draft', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"personal_info\":{\"first_name\":\"Fatima\",\"middle_name\":null,\"last_name\":\"Abubakar\",\"extension\":null,\"birthdate\":\"1940-03-05\",\"gender_id\":1,\"barangay_id\":4},\"contact_info\":{\"house_number\":\"dasd\",\"street\":\"sad\",\"mobile_number\":null,\"telephone_number\":null},\"background_info\":{\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}', '2026-01-29 20:39:17', '2026-01-29 20:39:17'),
(43, 'APP-2026-00006', NULL, 1, 'Draft', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"personal_info\":{\"first_name\":\"twelve\",\"middle_name\":null,\"last_name\":\"forty two\",\"extension\":null,\"birthdate\":\"1945-05-02\",\"gender_id\":1,\"barangay_id\":31},\"contact_info\":{\"house_number\":\"dsa\",\"street\":\"dsa\",\"mobile_number\":null,\"telephone_number\":null},\"background_info\":{\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}', '2026-01-29 20:42:56', '2026-01-29 20:42:56'),
(44, 'APP-2026-00007', 42, 1, 'Approved', 1, '2026-01-29 22:08:57', NULL, NULL, 1, '2026-01-29 22:11:12', NULL, NULL, NULL, NULL, NULL, '{\"personal_info\":{\"first_name\":\"Asanul\",\"middle_name\":null,\"last_name\":\"Asanul\",\"extension\":null,\"birthdate\":\"1945-05-02\",\"gender_id\":1,\"barangay_id\":1},\"contact_info\":{\"house_number\":\"123\",\"street\":\"Secret\",\"mobile_number\":null,\"telephone_number\":null},\"background_info\":{\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}', '2026-01-29 22:08:43', '2026-01-29 22:11:12'),
(45, 'APP-2026-00008', 41, 1, 'Approved', 1, '2026-01-29 22:10:33', NULL, NULL, 1, '2026-01-29 22:11:08', NULL, NULL, NULL, NULL, NULL, '{\"personal_info\":{\"first_name\":\"Asanul\",\"middle_name\":null,\"last_name\":\"Asanul\",\"extension\":null,\"birthdate\":\"1945-05-02\",\"gender_id\":1,\"barangay_id\":79},\"contact_info\":{\"house_number\":\"dsa\",\"street\":\"dwa\",\"mobile_number\":\"09661572185\",\"telephone_number\":null},\"background_info\":{\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}', '2026-01-29 22:10:19', '2026-01-29 22:11:08'),
(46, 'APP-2026-00009', 43, 1, 'Approved', 1, '2026-01-29 22:23:53', NULL, NULL, 1, '2026-01-29 22:24:05', NULL, NULL, NULL, NULL, NULL, '{\"personal_info\":{\"first_name\":\"Asanul\",\"middle_name\":null,\"last_name\":\"Asanul\",\"extension\":null,\"birthdate\":\"1945-05-02\",\"gender_id\":1,\"barangay_id\":2},\"contact_info\":{\"house_number\":\"asd\",\"street\":\"das\",\"mobile_number\":null,\"telephone_number\":null},\"background_info\":{\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}', '2026-01-29 22:23:44', '2026-01-29 22:24:05'),
(47, 'APP-2026-00010', 44, 1, 'Approved', 8, '2026-01-29 23:07:34', NULL, NULL, 8, '2026-01-29 23:08:09', NULL, NULL, NULL, NULL, NULL, '{\"personal_info\":{\"first_name\":\"FO\",\"middle_name\":null,\"last_name\":\"Regis\",\"extension\":null,\"birthdate\":\"1932-05-02\",\"gender_id\":1,\"barangay_id\":1},\"contact_info\":{\"house_number\":\"412\",\"street\":\"frew\",\"mobile_number\":null,\"telephone_number\":null},\"background_info\":{\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}', '2026-01-29 23:07:21', '2026-01-29 23:08:09'),
(48, 'APP-2026-00011', 45, 1, 'Approved', 8, '2026-01-29 23:36:05', NULL, NULL, 1, '2026-01-29 23:36:52', NULL, NULL, NULL, NULL, NULL, '{\"personal_info\":{\"first_name\":\"FO New\",\"middle_name\":null,\"last_name\":\"Regis\",\"extension\":null,\"birthdate\":\"1923-05-02\",\"gender_id\":2,\"barangay_id\":1},\"contact_info\":{\"house_number\":\"dsa\",\"street\":\"da\",\"mobile_number\":null,\"telephone_number\":null},\"background_info\":{\"educational_attainment_id\":null,\"monthly_salary\":null,\"occupation\":null,\"other_skills\":null},\"family_members\":[],\"target_sectors\":[],\"sub_categories\":[]}', '2026-01-29 23:34:38', '2026-01-29 23:36:52');

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
(114, 37, 3, 'uploads/applications/1766109297_6742159a.jpg', 'senior_photo.jpg', 14746, 1, '2025-12-19 01:54:57'),
(120, 40, 1, 'uploads/applications/40/1769730345_697bf1290ac01.jpg', 'proof of age.jpg', 53247, 1, '2026-01-29 15:45:45'),
(121, 40, 2, 'uploads/applications/40/1769730348_697bf12c7cd8a.png', 'barangay cert.png', 619105, 1, '2026-01-29 15:45:48'),
(122, 40, 4, 'uploads/applications/40/1769730352_697bf13060036.png', 'sample profile.png', 5599, 1, '2026-01-29 15:45:52'),
(123, 41, 1, 'uploads/applications/41/1769730801_697bf2f181e6d.jpg', 'proof of age.jpg', 53247, 1, '2026-01-29 15:53:21'),
(125, 41, 4, 'uploads/applications/41/1769730812_697bf2fc80c47.png', 'sample profile.png', 5599, 1, '2026-01-29 15:53:32'),
(126, 41, 2, 'uploads/applications/41/1769730816_697bf300c8314.png', 'barangay cert.png', 619105, 1, '2026-01-29 15:53:36'),
(127, 44, 1, 'uploads/applications/44/1769753324_697c4aece376e.jpg', 'proof of age.jpg', 53247, 1, '2026-01-29 22:08:45'),
(128, 44, 2, 'uploads/applications/44/1769753326_697c4aeeaf770.png', 'barangay cert.png', 619105, 1, '2026-01-29 22:08:46'),
(129, 44, 4, 'uploads/applications/44/1769753329_697c4af1ee212.jpg', '471227600_2046694792506644_4958639581521235393_n.jpg', 179569, 1, '2026-01-29 22:08:49'),
(130, 44, 3, 'uploads/applications/44/1769753332_697c4af438418.jpg', 'gorz1.jpg', 27583, 1, '2026-01-29 22:08:52'),
(131, 45, 1, 'uploads/applications/45/1769753420_697c4b4c08131.jpg', 'proof of age.jpg', 53247, 1, '2026-01-29 22:10:20'),
(132, 45, 2, 'uploads/applications/45/1769753421_697c4b4dbd78f.png', 'barangay cert.png', 619105, 1, '2026-01-29 22:10:21'),
(133, 45, 4, 'uploads/applications/45/1769753424_697c4b50e2f8c.jpg', '471227600_2046694792506644_4958639581521235393_n.jpg', 179569, 1, '2026-01-29 22:10:24'),
(134, 45, 3, 'uploads/applications/45/1769753428_697c4b54a9e4e.jpg', 'dog.jpg', 14746, 1, '2026-01-29 22:10:28'),
(135, 46, 1, 'uploads/applications/46/1769754224_697c4e70aa741.jpg', 'dog.jpg', 14746, 1, '2026-01-29 22:23:44'),
(136, 46, 2, 'uploads/applications/46/1769754226_697c4e7273bc8.jpg', 'dog.jpg', 14746, 1, '2026-01-29 22:23:46'),
(137, 46, 4, 'uploads/applications/46/1769754230_697c4e7668264.jpg', 'dog.jpg', 14746, 1, '2026-01-29 22:23:50'),
(138, 47, 1, 'uploads/applications/47/1769756842_697c58aa03551.jpg', 'proof of age.jpg', 53247, 8, '2026-01-29 23:07:22'),
(139, 47, 2, 'uploads/applications/47/1769756846_697c58ae0acde.png', 'barangay cert.png', 619105, 8, '2026-01-29 23:07:26'),
(140, 47, 4, 'uploads/applications/47/1769756849_697c58b176310.png', 'sample profile.png', 5599, 8, '2026-01-29 23:07:29'),
(141, 48, 1, 'uploads/applications/48/1769758557_697c5f5dcc87e.jpg', 'search.jpg', 9541, 8, '2026-01-29 23:35:57'),
(142, 48, 2, 'uploads/applications/48/1769758560_697c5f606e468.jpg', 'search.jpg', 9541, 8, '2026-01-29 23:36:00'),
(143, 48, 4, 'uploads/applications/48/1769758562_697c5f62a8e9b.jpg', 'search.jpg', 9541, 8, '2026-01-29 23:36:02');

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
-- Table structure for table `benefit_claims`
--

CREATE TABLE `benefit_claims` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `senior_id` bigint(20) UNSIGNED NOT NULL,
  `benefit_type_id` bigint(20) UNSIGNED NOT NULL,
  `claim_year` year(4) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `status` enum('pending','approved','released','rejected') NOT NULL DEFAULT 'pending',
  `released_at` timestamp NULL DEFAULT NULL,
  `processed_by` bigint(20) UNSIGNED DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `benefit_claims`
--

INSERT INTO `benefit_claims` (`id`, `senior_id`, `benefit_type_id`, `claim_year`, `amount`, `status`, `released_at`, `processed_by`, `notes`, `created_at`, `updated_at`) VALUES
(1, 36, 3, '2026', 10000.00, 'released', '2026-01-30 01:39:07', 1, NULL, '2026-01-30 01:38:45', '2026-01-30 01:39:07');

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
-- Table structure for table `benefit_types`
--

CREATE TABLE `benefit_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `min_age` int(11) NOT NULL,
  `max_age` int(11) DEFAULT NULL,
  `amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `is_one_time` tinyint(1) NOT NULL DEFAULT 1,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `benefit_types`
--

INSERT INTO `benefit_types` (`id`, `name`, `description`, `min_age`, `max_age`, `amount`, `is_one_time`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Sexagenarian', 'Senior citizens aged 60-69 years old', 60, 69, 0.00, 1, 1, '2026-01-30 01:15:43', '2026-01-30 01:15:43'),
(2, 'Septuagenarian', 'Senior citizens aged 70-79 years old', 70, 79, 0.00, 1, 1, '2026-01-30 01:15:43', '2026-01-30 01:15:43'),
(3, 'Octogenarian', 'Senior citizens aged 80-89 years old. Entitled to ₱10,000 cash benefit.', 80, 89, 10000.00, 1, 1, '2026-01-30 01:15:43', '2026-01-30 01:15:43'),
(4, 'Nonagenarian', 'Senior citizens aged 90-99 years old. Entitled to ₱10,000 cash benefit.', 90, 99, 10000.00, 1, 1, '2026-01-30 01:15:43', '2026-01-30 01:15:43'),
(5, 'Centenarian', 'Senior citizens aged 100 years and above. Entitled to ₱100,000 cash benefit under RA 11982 (Expanded Centenarian Act).', 100, NULL, 100000.00, 1, 1, '2026-01-30 01:15:43', '2026-01-30 01:15:43');

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
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(67, NULL, NULL, NULL, '123', '123', 15, 'Zamboanga City', '7000', '2025-12-19 01:55:33', '2025-12-19 01:55:33'),
(80, NULL, NULL, NULL, '1742', NULL, 79, 'Zamboanga City', '7000', '2026-01-29 15:00:50', '2026-01-29 15:00:50'),
(81, NULL, NULL, NULL, '41241', '412', 84, 'Zamboanga City', '7000', '2026-01-29 15:02:48', '2026-01-29 15:02:48'),
(82, NULL, NULL, NULL, 'dsa', 'dwa', 5, 'Zamboanga City', '7000', '2026-01-29 15:51:38', '2026-01-29 15:51:38'),
(83, NULL, NULL, NULL, 'das', 'sad', 5, 'Zamboanga City', '7000', '2026-01-29 15:54:59', '2026-01-29 15:54:59'),
(84, '09661572185', NULL, NULL, 'dsa', 'dwa', 79, 'Zamboanga City', '7000', '2026-01-29 22:11:08', '2026-01-29 22:11:08'),
(85, NULL, NULL, NULL, '123', 'Secret', 1, 'Zamboanga City', '7000', '2026-01-29 22:11:12', '2026-01-29 22:11:12'),
(86, NULL, NULL, NULL, 'asd', 'das', 2, 'Zamboanga City', '7000', '2026-01-29 22:24:05', '2026-01-29 22:24:05'),
(87, NULL, NULL, NULL, '412', 'frew', 1, 'Zamboanga City', '7000', '2026-01-29 23:08:09', '2026-01-29 23:08:09'),
(88, NULL, NULL, NULL, 'dsa', 'da', 1, 'Zamboanga City', '7000', '2026-01-29 23:36:52', '2026-01-29 23:36:52');

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
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, 3, NULL, 'PRINT-2025-003', 'urgent', 'printed', 'new', 6, '2025-01-16 20:00:00', NULL, NULL, 1, '2026-01-29 22:48:11', NULL, NULL, 'printed', '2025-12-16 15:28:57', '2026-01-29 22:48:11'),
(4, 36, NULL, 'QN-20260130-0001', 'normal', 'claimed', 'renewal', 1, '2026-01-29 20:56:55', NULL, NULL, 1, '2026-01-29 20:58:39', 1, '2026-01-29 20:58:49', NULL, '2026-01-29 20:56:55', '2026-01-29 20:58:49'),
(5, 40, NULL, 'QN-20260130-0002', 'normal', 'pending', 'new', 1, '2026-01-29 21:00:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-29 21:00:14', '2026-01-29 21:00:14');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(3, '0001_01_01_000001_create_cache_table', 3),
(4, '0001_01_01_000002_create_jobs_table', 3),
(5, '2026_01_29_112303_create_personal_access_tokens_table', 4),
(6, '2026_01_30_053646_create_pre_registrations_table', 4),
(7, '2026_01_30_140000_create_senior_accounts_table', 5),
(8, '2026_01_30_160000_create_benefit_types_table', 6);

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

-- --------------------------------------------------------

--
-- Table structure for table `pre_registrations`
--

CREATE TABLE `pre_registrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reference_number` varchar(20) NOT NULL,
  `applicant_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`applicant_data`)),
  `barangay_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'pending',
  `fo_reviewed_by` bigint(20) UNSIGNED DEFAULT NULL,
  `fo_reviewed_at` timestamp NULL DEFAULT NULL,
  `main_reviewed_by` bigint(20) UNSIGNED DEFAULT NULL,
  `main_reviewed_at` timestamp NULL DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `rejection_reason` text DEFAULT NULL,
  `application_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pre_registrations`
--

INSERT INTO `pre_registrations` (`id`, `reference_number`, `applicant_data`, `barangay_id`, `status`, `fo_reviewed_by`, `fo_reviewed_at`, `main_reviewed_by`, `main_reviewed_at`, `notes`, `rejection_reason`, `application_id`, `created_at`, `updated_at`) VALUES
(1, 'PRE-20260130-4832', '{\"first_name\":\"Asanul\",\"middle_name\":null,\"last_name\":\"Asanul\",\"suffix\":null,\"birthdate\":\"1954-06-23\",\"sex\":\"male\",\"civil_status\":\"single\",\"contact_number\":\"09661572185\",\"email\":null,\"address\":\"41\",\"emergency_contact_name\":null,\"emergency_contact_number\":null}', 4, 'approved', 8, '2026-01-29 22:59:52', 1, '2026-01-29 23:01:23', NULL, NULL, NULL, '2026-01-29 22:27:44', '2026-01-29 23:01:23'),
(2, 'PRE-20260130-3001', '{\"first_name\":\"Online\",\"middle_name\":null,\"last_name\":\"Apply\",\"suffix\":null,\"birthdate\":\"1963-01-30\",\"sex\":\"male\",\"civil_status\":\"single\",\"contact_number\":\"09661572185\",\"email\":null,\"address\":\"da\",\"emergency_contact_name\":null,\"emergency_contact_number\":null}', 1, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-29 23:04:06', '2026-01-29 23:04:06');

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
-- Table structure for table `senior_accounts`
--

CREATE TABLE `senior_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `senior_id` bigint(20) UNSIGNED NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `pin_hash` varchar(255) DEFAULT NULL,
  `otp_code` varchar(6) DEFAULT NULL,
  `otp_expires_at` timestamp NULL DEFAULT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
  `last_login` timestamp NULL DEFAULT NULL,
  `failed_attempts` int(11) NOT NULL DEFAULT 0,
  `locked_until` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `senior_accounts`
--

INSERT INTO `senior_accounts` (`id`, `senior_id`, `phone_number`, `pin_hash`, `otp_code`, `otp_expires_at`, `is_verified`, `last_login`, `failed_attempts`, `locked_until`, `created_at`, `updated_at`) VALUES
(1, 42, '09564510535', '$2y$12$J2CJoS8Kq68gmYsCmE8w7uEYLGSYBbK89EiD7yKRKO83cLSh.0aq.', NULL, NULL, 1, '2026-01-29 22:46:52', 0, NULL, '2026-01-29 22:14:30', '2026-01-29 22:46:52'),
(2, 35, '09661572185', '$2y$12$EGIguzrZm.DiZiEn1SYs2.kGdfd23VYJo3eiEtcQvCe10yhiO43si', NULL, NULL, 1, '2026-01-30 03:22:20', 0, NULL, '2026-01-30 01:35:42', '2026-01-30 03:22:20'),
(3, 36, '09661572185', '$2y$12$PSNGNAJyBtbP73ae0g9tQOqJtpelveCE.J1CL.xxxqETeu6xIzKyu', NULL, NULL, 1, '2026-01-30 03:22:52', 0, NULL, '2026-01-30 01:42:08', '2026-01-30 03:22:52');

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
(36, 'ZC-2025-001016', 'Fatima', '', 'Abubakar', NULL, '1940-12-02', 2, 67, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, '2025-12-19', 1, 1, NULL, 0, 1, 0, NULL, '2025-12-19 01:55:33', '2025-12-19 02:39:21', NULL),
(37, 'ZC-2026-001001', 'Draft', NULL, 'Test', NULL, '1945-05-02', 1, 80, NULL, NULL, NULL, NULL, NULL, NULL, 79, 7, '2026-01-29', 1, 1, NULL, 0, 0, 0, NULL, '2026-01-29 15:00:50', '2026-01-29 15:00:50', NULL),
(38, 'ZC-2026-001002', 'Php', NULL, 'Lara', NULL, '1945-05-02', 1, 81, NULL, NULL, NULL, NULL, NULL, NULL, 84, 7, '2026-01-29', 1, 1, NULL, 0, 0, 0, NULL, '2026-01-29 15:02:48', '2026-01-29 15:02:48', NULL),
(39, 'ZC-2026-001003', 'Seven', NULL, 'terty five', NULL, '1945-05-02', 2, 82, NULL, 0.00, NULL, NULL, NULL, NULL, 5, 2, '2026-01-29', 2, 1, NULL, 0, 1, 0, NULL, '2026-01-29 15:51:38', '2026-01-29 15:51:38', NULL),
(40, 'ZC-2026-001004', 'Seven', NULL, 'Fifty two', NULL, '1945-05-02', 1, 83, NULL, 0.00, NULL, NULL, NULL, NULL, 5, 2, '2026-01-29', 2, 1, NULL, 0, 1, 0, NULL, '2026-01-29 15:54:59', '2026-01-29 15:54:59', NULL),
(41, 'ZC-2026-001005', 'Asanul', NULL, 'Asanul', NULL, '1945-05-02', 1, 84, NULL, 0.00, NULL, NULL, NULL, NULL, 79, 7, '2026-01-30', 2, 1, NULL, 0, 1, 0, NULL, '2026-01-29 22:11:08', '2026-01-29 22:11:08', NULL),
(42, 'ZC-2026-001006', 'Asanul', NULL, 'Asanul', NULL, '1945-05-02', 1, 85, NULL, 0.00, NULL, NULL, NULL, NULL, 1, 2, '2026-01-30', 2, 1, NULL, 0, 1, 0, NULL, '2026-01-29 22:11:12', '2026-01-29 22:11:12', NULL),
(43, 'ZC-2026-001007', 'Asanul', NULL, 'Asanul', NULL, '1945-05-02', 1, 86, NULL, 0.00, NULL, NULL, NULL, NULL, 2, 2, '2026-01-30', 2, 1, NULL, 0, 1, 0, NULL, '2026-01-29 22:24:05', '2026-01-29 22:24:05', NULL),
(44, 'ZC-2026-001008', 'FO', NULL, 'Regis', NULL, '1932-05-02', 1, 87, NULL, 0.00, NULL, NULL, NULL, NULL, 1, 2, '2026-01-30', 2, 8, NULL, 0, 1, 0, NULL, '2026-01-29 23:08:09', '2026-01-29 23:08:09', NULL),
(45, 'ZC-2026-001009', 'FO New', NULL, 'Regis', NULL, '1923-05-02', 2, 88, NULL, 0.00, NULL, NULL, NULL, NULL, 1, 2, '2026-01-30', 2, 1, NULL, 0, 1, 0, NULL, '2026-01-29 23:36:52', '2026-01-29 23:36:52', NULL);

-- --------------------------------------------------------

-- Stand-in structure for view `senior_citizens_with_benefits` REMOVED
-- (MySQL 8 does not allow CURDATE() in generated columns/views)

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

-- Structure for view `senior_citizens_with_benefits` REMOVED
-- (MySQL 8 does not allow CURDATE() in view definitions)

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
-- Indexes for table `benefit_claims`
--
ALTER TABLE `benefit_claims`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `benefit_types`
--
ALTER TABLE `benefit_types`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

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
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `pre_registrations`
--
ALTER TABLE `pre_registrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pre_registrations_reference_number_unique` (`reference_number`),
  ADD KEY `pre_registrations_status_barangay_id_index` (`status`,`barangay_id`),
  ADD KEY `pre_registrations_created_at_index` (`created_at`);

--
-- Indexes for table `registration_statuses`
--
ALTER TABLE `registration_statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `senior_accounts`
--
ALTER TABLE `senior_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `senior_accounts_senior_id_unique` (`senior_id`),
  ADD KEY `senior_accounts_phone_number_index` (`phone_number`),
  ADD KEY `senior_accounts_senior_id_index` (`senior_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `application_documents`
--
ALTER TABLE `application_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

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
-- AUTO_INCREMENT for table `benefit_claims`
--
ALTER TABLE `benefit_claims`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `benefit_types`
--
ALTER TABLE `benefit_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `id_statuses`
--
ALTER TABLE `id_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mobility_levels`
--
ALTER TABLE `mobility_levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pre_registrations`
--
ALTER TABLE `pre_registrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `registration_statuses`
--
ALTER TABLE `registration_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `senior_accounts`
--
ALTER TABLE `senior_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `senior_citizens`
--
ALTER TABLE `senior_citizens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

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

-- Import complete
