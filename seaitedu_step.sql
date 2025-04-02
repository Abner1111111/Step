-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2025 at 10:09 AM
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
-- Database: `seaitedu_step`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_year`
--

CREATE TABLE `academic_year` (
  `id` int(11) NOT NULL,
  `acad_year` varchar(255) NOT NULL,
  `semester` varchar(100) NOT NULL,
  `evaluation_status` int(11) NOT NULL,
  `added` datetime NOT NULL DEFAULT current_timestamp(),
  `evaluation_start_date` date DEFAULT NULL,
  `evaluation_end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `academic_year`
--

INSERT INTO `academic_year` (`id`, `acad_year`, `semester`, `evaluation_status`, `added`, `evaluation_start_date`, `evaluation_end_date`) VALUES
(9, '2024-2025', '1st Semester', 0, '2025-03-23 11:29:02', '2025-03-23', '2025-03-27'),
(10, '2024-2025', 'Second Semester', 0, '2025-03-29 12:52:55', NULL, NULL),
(11, '2025-2026', 'First Semester', 1, '2025-03-29 13:37:18', '2025-03-27', '2025-04-05');

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `details` text DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `description` varchar(123) NOT NULL,
  `module` varchar(123) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `user_id`, `user_name`, `action`, `details`, `ip_address`, `timestamp`, `description`, `module`) VALUES
(78, 2, '', 'Logout', NULL, '::1', '2025-03-20 02:46:37', 'User logged out successfully', 'Authentication'),
(79, 0, '', 'Failed Login', NULL, '::1', '2025-03-20 02:46:43', 'Failed login attempt for email: Admin@admin.com', 'Authentication'),
(80, 2, '', 'Login', NULL, '::1', '2025-03-20 02:46:53', 'User logged in successfully', 'Authentication'),
(81, 2, '', 'Logout', NULL, '::1', '2025-03-20 02:51:16', 'User logged out successfully', 'Authentication'),
(82, 2, '', 'Login', NULL, '::1', '2025-03-20 02:51:29', 'User logged in successfully', 'Authentication'),
(83, 2, '', 'Logout', NULL, '::1', '2025-03-20 02:51:50', 'User logged out successfully', 'Authentication'),
(84, 2, '', 'Login', NULL, '::1', '2025-03-20 02:51:55', 'User logged in successfully', 'Authentication'),
(85, 2, '', 'Logout', NULL, '::1', '2025-03-20 02:53:45', 'User logged out successfully', 'Authentication'),
(86, 14, '', 'Login', NULL, '::1', '2025-03-20 02:53:57', 'User logged in successfully', 'Authentication'),
(87, 14, '', 'Logout', NULL, '::1', '2025-03-20 02:54:09', 'User logged out successfully', 'Authentication'),
(88, 0, '', 'Failed Login', NULL, '::1', '2025-03-20 02:54:17', 'Failed login attempt for email: Admin@admin.com', 'Authentication'),
(89, 2, '', 'Login', NULL, '::1', '2025-03-20 02:54:30', 'User logged in successfully', 'Authentication'),
(90, 2, '', 'Add Department', NULL, '::1', '2025-03-20 02:54:59', 'Added new department: College of Engineering ', 'Department Management'),
(91, 2, 'Admin User', 'Add Department', 'Added department: College of Engineering ', '::1', '2025-03-20 09:54:59', '', ''),
(92, 2, 'Admin User', 'Add Question', 'Added question: Add', '::1', '2025-03-20 09:57:36', '', ''),
(93, 2, 'Admin User', 'Add User', 'Added Guidance Office user: 12 12', '::1', '2025-03-20 09:59:07', '', ''),
(94, 2, 'Admin User', 'Delete User', 'Deleted user: Doe John (Email: 2022-123456) - ID: 130', '::1', '2025-03-20 09:59:24', '', ''),
(95, 2, 'Admin User', 'Delete User', 'Deleted user: Rano JM (Email: 2021-00770) - ID: 129', '::1', '2025-03-20 09:59:27', '', ''),
(96, 2, '', 'Logout', NULL, '::1', '2025-03-20 03:00:05', 'User logged out successfully', 'Authentication'),
(97, 0, '', 'Failed Login', NULL, '::1', '2025-03-20 03:00:11', 'Failed login attempt for email: Admin@admin.com', 'Authentication'),
(98, 2, '', 'Login', NULL, '::1', '2025-03-20 03:00:17', 'User logged in successfully', 'Authentication'),
(99, 2, 'Admin User', 'CSV Import Summary', 'Imported users from CSV: 3 added, 0 skipped', '::1', '2025-03-20 10:00:32', '', ''),
(100, 2, '', 'Logout', NULL, '::1', '2025-03-20 03:01:11', 'User logged out successfully', 'Authentication'),
(101, 0, '', 'Failed Login', NULL, '::1', '2025-03-20 03:01:15', 'Failed login attempt for email: 2022-123456', 'Authentication'),
(102, 0, '', 'Failed Login', NULL, '::1', '2025-03-20 03:01:22', 'Failed login attempt for email: 2022-123456', 'Authentication'),
(103, 0, '', 'Failed Login', NULL, '::1', '2025-03-20 03:01:35', 'Failed login attempt for email: 2022-123456', 'Authentication'),
(104, 0, '', 'Failed Login', NULL, '::1', '2025-03-20 03:03:27', 'Failed login attempt for email: 2021-00770', 'Authentication'),
(105, 2, '', 'Login', NULL, '::1', '2025-03-20 03:05:10', 'User logged in successfully', 'Authentication'),
(106, 2, '', 'Reset Password', NULL, '::1', '2025-03-20 03:05:17', 'Admin Admin User reset password for student: Doe John (ID: 134)', 'User Management'),
(107, 2, '', 'Reset Password', NULL, '::1', '2025-03-20 03:05:20', 'Admin Admin User reset password for student: Rano JM (ID: 133)', 'User Management'),
(108, 2, '', 'Logout', NULL, '::1', '2025-03-20 03:05:27', 'User logged out successfully', 'Authentication'),
(109, 133, '', 'Login', NULL, '::1', '2025-03-20 03:05:31', 'User logged in successfully', 'Authentication'),
(110, 133, '', 'Join Class', NULL, '::1', '2025-03-20 03:08:05', 'Student Rano JM joined class: Unknown Subject with instructor: Unknown Teacher using code: RDYDV8', 'Student Management'),
(111, 133, '', 'Join Class', NULL, '::1', '2025-03-20 03:08:28', 'Student Rano JM joined class: Unknown Subject with instructor: Unknown Teacher using code: XW4N2O', 'Student Management'),
(112, 133, '', 'Join Class Failed', NULL, '::1', '2025-03-20 03:08:37', 'Student Rano JM attempted to join already joined class: Unknown Subject with instructor: Unknown Teacher using code: XW4N2O', 'Student Management'),
(113, 133, '', 'Join Class Failed', NULL, '::1', '2025-03-20 03:08:40', 'Student Rano JM attempted to join already joined class: Unknown Subject with instructor: Unknown Teacher using code: XW4N2O', 'Student Management'),
(114, 133, '', 'Join Class Failed', NULL, '::1', '2025-03-20 03:10:00', 'Student Rano JM attempted to join already joined class:  - COMPUTER PROGRAMMING 1 with instructor: seve usero using code: X', 'Student Management'),
(115, 133, '', 'Join Class Failed', NULL, '::1', '2025-03-20 03:10:07', 'Student Rano JM attempted to join already joined class:  - COMPUTER PROGRAMMING 1 with instructor: seve usero using code: X', 'Student Management'),
(116, 133, '', 'Join Class Failed', NULL, '::1', '2025-03-20 03:10:24', 'Student Rano JM attempted to join already joined class: IT 122 - COMPUTER PROGRAMMING 1 with instructor: seve usero using c', 'Student Management'),
(117, 133, '', 'Join Class', NULL, '::1', '2025-03-20 03:10:32', 'Student Rano JM joined class: IT 327 - APPLICATION DEVELOPMENT with instructor: seve usero using code: NAJHCR', 'Student Management'),
(118, 133, '', 'Logout', NULL, '::1', '2025-03-20 03:11:50', 'User logged out successfully', 'Authentication'),
(119, 2, '', 'Login', NULL, '::1', '2025-03-20 03:11:58', 'User logged in successfully', 'Authentication'),
(120, 2, '', 'Logout', NULL, '::1', '2025-03-20 03:12:34', 'User logged out successfully', 'Authentication'),
(121, 14, '', 'Login', NULL, '::1', '2025-03-20 03:12:41', 'User logged in successfully', 'Authentication'),
(122, 14, '', 'Logout', NULL, '::1', '2025-03-20 03:13:12', 'User logged out successfully', 'Authentication'),
(123, 0, '', 'Failed Login', NULL, '::1', '2025-03-20 03:13:19', 'Failed login attempt for email: usero@gmail.com', 'Authentication'),
(124, 3, '', 'Login', NULL, '::1', '2025-03-20 03:13:27', 'Instructor logged in successfully', 'Authentication'),
(125, 3, '', 'Add Subject Load', NULL, '::1', '2025-03-20 03:15:03', 'Added subject load: ACCTG 111 - ACCOUNTING FUNDAMENTALS for Year/Block: 1 BLOCK 2, Academic Year: 7, Join Code: H61OQ5', 'Subject Load Management'),
(126, 3, '', 'Add Subject Load Failed', NULL, '::1', '2025-03-20 03:15:12', 'Failed to add subject load: ACCTG 111 - ACCOUNTING FUNDAMENTALS for Year/Block: 1 BLOCK 2. Subject load already exists for ', 'Subject Load Management'),
(127, 3, '', 'Add Subject Load', NULL, '::1', '2025-03-20 03:15:22', 'Added subject load: IT 327 - APPLICATION DEVELOPMENT for Year/Block: 1 BLOCK 2, Academic Year: 7, Join Code: SQ0Z8R', 'Subject Load Management'),
(128, 3, '', 'Logout', NULL, '::1', '2025-03-20 03:15:28', 'User logged out successfully', 'Authentication'),
(129, 133, '', 'Login', NULL, '::1', '2025-03-20 03:16:03', 'User logged in successfully', 'Authentication'),
(130, 133, '', 'Join Class', NULL, '::1', '2025-03-20 03:16:09', 'Student Rano JM joined class: IT 327 - APPLICATION DEVELOPMENT with instructor: Rose Usero using code: SQ0Z8R', 'Student Management'),
(131, 133, '', 'Logout', NULL, '::1', '2025-03-20 03:16:26', 'User logged out successfully', 'Authentication'),
(132, 14, '', 'Login', NULL, '::1', '2025-03-20 03:26:00', 'User logged in successfully', 'Authentication'),
(133, 14, '', 'Logout', NULL, '::1', '2025-03-20 03:29:58', 'User logged out successfully', 'Authentication'),
(134, 2, '', 'Login', NULL, '::1', '2025-03-20 03:30:05', 'User logged in successfully', 'Authentication'),
(135, 2, '', 'Logout', NULL, '::1', '2025-03-20 03:40:32', 'User logged out successfully', 'Authentication'),
(136, 133, '', 'Login', NULL, '::1', '2025-03-20 03:40:36', 'User logged in successfully', 'Authentication'),
(137, 133, '', 'Logout', NULL, '::1', '2025-03-20 03:48:24', 'User logged out successfully', 'Authentication'),
(138, 14, '', 'Login', NULL, '::1', '2025-03-20 03:48:47', 'User logged in successfully', 'Authentication'),
(139, 14, '', 'Logout', NULL, '::1', '2025-03-20 03:51:20', 'User logged out successfully', 'Authentication'),
(140, 2, '', 'Login', NULL, '::1', '2025-03-20 03:51:25', 'Instructor logged in successfully', 'Authentication'),
(141, 2, '', 'Logout', NULL, '::1', '2025-03-20 03:53:52', 'User logged out successfully', 'Authentication'),
(142, 14, '', 'Login', NULL, '::1', '2025-03-20 03:54:00', 'User logged in successfully', 'Authentication'),
(143, 14, '', 'Logout', NULL, '::1', '2025-03-20 03:55:06', 'User logged out successfully', 'Authentication'),
(144, 2, '', 'Login', NULL, '::1', '2025-03-20 03:55:14', 'User logged in successfully', 'Authentication'),
(145, 2, '', 'Logout', NULL, '::1', '2025-03-20 04:08:42', 'User logged out successfully', 'Authentication'),
(146, 2, '', 'Login', NULL, '::1', '2025-03-20 04:08:47', 'User logged in successfully', 'Authentication'),
(147, 0, '', 'Add Employee', NULL, '::1', '2025-03-20 04:24:32', 'Added new employee: john Abner Garzon (ID: 5)', 'Employee Management'),
(148, 2, '', 'Login', NULL, '::1', '2025-03-21 06:06:32', 'User logged in successfully', 'Authentication'),
(149, 2, '', 'Delete Department', NULL, '::1', '2025-03-21 06:06:38', 'User Admin User deleted department: College of Engineering  (ID: 13)', 'Department Management'),
(150, 2, '', 'Delete Department', NULL, '::1', '2025-03-21 06:06:40', 'User Admin User deleted department: College of Information and Communication Technology (ID: 5)', 'Department Management'),
(151, 2, '', 'Login', NULL, '::1', '2025-03-21 17:24:30', 'User logged in successfully', 'Authentication'),
(152, 2, '', 'Logout', NULL, '::1', '2025-03-21 17:25:07', 'User logged out successfully', 'Authentication'),
(153, 2, '', 'Login', NULL, '::1', '2025-03-21 17:25:26', 'User logged in successfully', 'Authentication'),
(154, 2, '', 'Add Department', NULL, '::1', '2025-03-21 17:35:07', 'Added new department: College of Engineering ', 'Department Management'),
(155, 2, 'Admin User', 'Add Department', 'Added department: College of Engineering ', '::1', '2025-03-22 00:35:07', '', ''),
(156, 2, '', 'Login', NULL, '::1', '2025-03-21 19:41:38', 'User logged in successfully', 'Authentication'),
(157, 2, '', 'Login', NULL, '::1', '2025-03-21 19:42:31', 'User logged in successfully', 'Authentication'),
(158, 2, '', 'Login', NULL, '::1', '2025-03-21 19:45:11', 'User logged in successfully', 'Authentication'),
(159, 2, '', 'Logout', NULL, '::1', '2025-03-21 20:48:50', 'User logged out successfully', 'Authentication'),
(160, 2, '', 'Login', NULL, '::1', '2025-03-21 20:49:01', 'User logged in successfully', 'Authentication'),
(161, 2, 'Admin User', 'CSV Import Summary', 'Imported users from CSV: 0 added, 3 skipped', '::1', '2025-03-22 03:56:10', '', ''),
(162, 2, 'Admin User', 'CSV Import Summary', 'Imported users from CSV: 101 added, 0 skipped', '::1', '2025-03-22 04:01:22', '', ''),
(163, 2, 'Admin User', 'CSV Import Summary', 'Imported students from CSV: 0 added, 0 skipped', '::1', '2025-03-22 04:03:14', '', ''),
(164, 2, 'Admin User', 'CSV Import Summary', 'Imported students from CSV: 0 added, 100 skipped', '::1', '2025-03-22 04:07:24', '', ''),
(165, 2, 'Admin User', 'CSV Import Summary', 'Imported students from CSV: 16 added, 1 skipped', '::1', '2025-03-22 04:35:58', '', ''),
(166, 2, 'Admin User', 'Delete All Students', 'Removed all student accounts (16 in total)', '::1', '2025-03-22 04:43:33', '', ''),
(167, 2, 'Admin User', 'CSV Import Summary', 'Imported students from CSV: 16 added, 1 skipped', '::1', '2025-03-22 04:43:46', '', ''),
(168, 2, 'Admin User', 'Delete All Students', 'Removed all student accounts (16 in total)', '::1', '2025-03-22 04:49:17', '', ''),
(169, 2, 'Admin User', 'CSV Import Summary', 'Imported students from CSV: 16 added, 1 skipped', '::1', '2025-03-22 04:50:48', '', ''),
(170, 2, 'Admin User', 'Delete All Students', 'Removed all student accounts (16 in total)', '::1', '2025-03-22 04:56:19', '', ''),
(171, 2, 'Admin User', 'CSV Import Summary', 'Imported students from CSV: 16 added, 1 skipped', '::1', '2025-03-22 04:56:30', '', ''),
(172, 2, 'Admin User', 'Reset Student Password', 'Reset password for student: Amanda Taylor (School ID: 2023019)', '::1', '2025-03-22 04:56:56', '', ''),
(173, 2, '', 'Logout', NULL, '::1', '2025-03-21 21:57:09', 'User logged out successfully', 'Authentication'),
(174, 0, '', 'Failed Login', NULL, '::1', '2025-03-21 21:57:20', 'Failed login attempt for email: 2023019', 'Authentication'),
(175, 0, '', 'Failed Login', NULL, '::1', '2025-03-21 21:57:27', 'Failed login attempt for email: 2023016', 'Authentication'),
(176, 0, '', 'Failed Login', NULL, '::1', '2025-03-21 21:57:37', 'Failed login attempt for email: 2023-016', 'Authentication'),
(177, 2, '', 'Login', NULL, '::1', '2025-03-21 21:57:48', 'User logged in successfully', 'Authentication'),
(178, 2, '', 'Add Department Failed', NULL, '::1', '2025-03-21 22:33:36', 'Attempted to add department without parameters', 'Department Management'),
(179, 2, '', 'Add Department Failed', NULL, '::1', '2025-03-21 22:33:44', 'Attempted to add department without parameters', 'Department Management'),
(180, 2, '', 'Add Department', NULL, '::1', '2025-03-21 22:37:04', 'Added new department: College of  Information Technology', 'Department Management'),
(181, 2, 'Admin User', 'Add Department', 'Added department: College of  Information Technology', '::1', '2025-03-22 05:37:04', '', ''),
(182, 2, '', 'Add Employee', NULL, '::1', '2025-03-21 22:41:56', 'Added new employee: Test1 Test1 Test1 (ID: 6)', 'Employee Management'),
(183, 2, '', 'Logout', NULL, '::1', '2025-03-21 23:05:47', 'User logged out successfully', 'Authentication'),
(184, 0, '', 'Failed Login', NULL, '::1', '2025-03-21 23:05:52', 'Failed login attempt for email: 2023019', 'Authentication'),
(185, 0, '', 'Failed Login', NULL, '::1', '2025-03-21 23:09:19', 'Failed login attempt for email: 2023019', 'Authentication'),
(186, 2, '', 'Login', NULL, '::1', '2025-03-21 23:09:40', 'User logged in successfully', 'Authentication'),
(187, 2, 'Admin User', 'Reset Student Password', 'Reset password for student: Amanda Taylor (School ID: 2023019)', '::1', '2025-03-22 06:09:49', '', ''),
(188, 2, '', 'Logout', NULL, '::1', '2025-03-21 23:09:55', 'User logged out successfully', 'Authentication'),
(189, 0, '', 'Failed Login', NULL, '::1', '2025-03-21 23:10:01', 'Failed login attempt for email: 2023019', 'Authentication'),
(190, 2, '', 'Login', NULL, '::1', '2025-03-21 23:13:07', 'User logged in successfully', 'Authentication'),
(191, 2, 'Admin User', 'Delete All Students', 'Removed all student accounts (16 in total)', '::1', '2025-03-22 06:13:24', '', ''),
(192, 2, 'Admin User', 'CSV Import Summary', 'Imported students from CSV: 14 added, 0 skipped', '::1', '2025-03-22 06:14:02', '', ''),
(193, 2, 'Admin User', 'Delete All Students', 'Removed all student accounts (0 in total)', '::1', '2025-03-22 06:15:01', '', ''),
(194, 2, 'Admin User', 'Delete All Students', 'Removed all student accounts (0 in total)', '::1', '2025-03-22 06:15:08', '', ''),
(195, 2, 'Admin User', 'Delete All Students', 'Removed all student accounts (118 in total)', '::1', '2025-03-22 06:16:49', '', ''),
(196, 2, 'Admin User', 'CSV Import Summary', 'Imported students from CSV: 14 added, 0 skipped', '::1', '2025-03-22 06:17:02', '', ''),
(197, 2, 'Admin User', 'Reset Student Password', 'Reset password for student: Amanda Taylor (School ID: 2023019)', '::1', '2025-03-22 06:17:15', '', ''),
(198, 2, '', 'Logout', NULL, '::1', '2025-03-21 23:17:19', 'User logged out successfully', 'Authentication'),
(199, 0, '', 'Failed Login', NULL, '::1', '2025-03-21 23:17:27', 'Failed login attempt for email: 2023019', 'Authentication'),
(200, 0, '', 'Failed Login', NULL, '::1', '2025-03-21 23:17:36', 'Failed login attempt for email: 2023019', 'Authentication'),
(201, 14, '', 'Login', NULL, '::1', '2025-03-21 23:17:47', 'User logged in successfully', 'Authentication'),
(202, 14, '', 'Logout', NULL, '::1', '2025-03-21 23:19:28', 'User logged out successfully', 'Authentication'),
(203, 2, '', 'Login', NULL, '::1', '2025-03-21 23:19:37', 'User logged in successfully', 'Authentication'),
(204, 2, '', 'Logout', NULL, '::1', '2025-03-21 23:20:54', 'User logged out successfully', 'Authentication'),
(205, 0, '', 'Failed Login', NULL, '::1', '2025-03-21 23:20:59', 'Failed login attempt for email: 2023019', 'Authentication'),
(206, 2, '', 'Login', NULL, '::1', '2025-03-21 23:21:28', 'User logged in successfully', 'Authentication'),
(207, 2, '', 'Reset Password', NULL, '::1', '2025-03-21 23:57:13', 'Admin reset password for student: Emily Williams (ID: 2023011)', 'User Management'),
(208, 2, '', 'Reset Password', NULL, '::1', '2025-03-21 23:57:13', 'Admin reset password for student: David Brown (ID: 2023012)', 'User Management'),
(209, 2, '', 'Reset Password', NULL, '::1', '2025-03-21 23:57:13', 'Admin reset password for student: Sarah Jones (ID: 2023013)', 'User Management'),
(210, 2, '', 'Reset Password', NULL, '::1', '2025-03-21 23:57:13', 'Admin reset password for student: Robert Miller (ID: 2023014)', 'User Management'),
(211, 2, '', 'Reset Password', NULL, '::1', '2025-03-21 23:57:13', 'Admin reset password for student: Jennifer Davis (ID: 2023015)', 'User Management'),
(212, 2, '', 'Reset Password', NULL, '::1', '2025-03-21 23:57:13', 'Admin reset password for student: Christopher Wilson (ID: 2023016)', 'User Management'),
(213, 2, '', 'Reset Password', NULL, '::1', '2025-03-21 23:57:13', 'Admin reset password for student: Jessica Martinez (ID: 2023017)', 'User Management'),
(214, 2, '', 'Reset Password', NULL, '::1', '2025-03-21 23:57:13', 'Admin reset password for student: Matthew Anderson (ID: 2023018)', 'User Management'),
(215, 2, '', 'Reset Password', NULL, '::1', '2025-03-21 23:57:13', 'Admin reset password for student: Amanda Taylor (ID: 2023019)', 'User Management'),
(216, 2, '', 'Reset Password', NULL, '::1', '2025-03-21 23:57:13', 'Admin reset password for student: Daniel Thomas (ID: 2023020)', 'User Management'),
(217, 2, '', 'Reset Password', NULL, '::1', '2025-03-21 23:57:13', 'Admin reset password for student: Stephanie Hernandez (ID: 2023021)', 'User Management'),
(218, 2, '', 'Reset Password', NULL, '::1', '2025-03-21 23:57:13', 'Admin reset password for student: Andrew Moore (ID: 2023022)', 'User Management'),
(219, 2, '', 'Reset Password', NULL, '::1', '2025-03-21 23:57:13', 'Admin reset password for student: Lauren Martin (ID: 2023023)', 'User Management'),
(220, 2, '', 'Reset Password', NULL, '::1', '2025-03-21 23:57:13', 'Admin reset password for student: Ryan Jackson (ID: 2023024)', 'User Management'),
(221, 2, '', 'Mass Password Reset', NULL, '::1', '2025-03-21 23:57:13', 'Reset passwords for all students: 14 successful, 0 failed, 0 skipped (no ID)', 'User Management'),
(222, 2, '', 'Logout', NULL, '::1', '2025-03-21 23:57:28', 'User logged out successfully', 'Authentication'),
(223, 0, '', 'Failed Login', NULL, '::1', '2025-03-21 23:57:32', 'Failed login attempt for email: 2023019', 'Authentication'),
(224, 0, '', 'Failed Login', NULL, '::1', '2025-03-22 00:00:40', 'Failed login attempt for email/ID: 2023016', 'Authentication'),
(225, 319, '', 'Login', NULL, '::1', '2025-03-22 00:00:55', 'User logged in successfully', 'Authentication'),
(226, 319, '', 'Logout', NULL, '::1', '2025-03-22 00:01:23', 'User logged out successfully', 'Authentication'),
(227, 319, '', 'Login', NULL, '::1', '2025-03-22 00:01:39', 'User logged in successfully', 'Authentication'),
(228, 2, '', 'Login', NULL, '::1', '2025-03-22 00:16:52', 'User logged in successfully', 'Authentication'),
(229, 2, '', 'Logout', NULL, '::1', '2025-03-22 00:18:41', 'User logged out successfully', 'Authentication'),
(230, 319, '', 'Login', NULL, '::1', '2025-03-22 00:18:47', 'User logged in successfully', 'Authentication'),
(231, 319, '', 'Login', NULL, '::1', '2025-03-22 00:31:30', 'User logged in successfully', 'Authentication'),
(232, 319, '', 'Logout', NULL, '::1', '2025-03-22 00:31:36', 'User logged out successfully', 'Authentication'),
(233, 2, '', 'Login', NULL, '::1', '2025-03-22 00:31:46', 'User logged in successfully', 'Authentication'),
(234, 2, '', 'Logout', NULL, '::1', '2025-03-22 00:33:44', 'User logged out successfully', 'Authentication'),
(235, 319, '', 'Login', NULL, '::1', '2025-03-22 00:33:48', 'User logged in successfully', 'Authentication'),
(236, 319, '', 'Logout', NULL, '::1', '2025-03-22 00:33:52', 'User logged out successfully', 'Authentication'),
(237, 319, '', 'Login', NULL, '::1', '2025-03-22 00:33:56', 'User logged in successfully', 'Authentication'),
(238, 319, '', 'Logout', NULL, '::1', '2025-03-22 00:34:00', 'User logged out successfully', 'Authentication'),
(239, 2, '', 'Login', NULL, '::1', '2025-03-22 00:34:11', 'User logged in successfully', 'Authentication'),
(240, 2, '', 'Logout', NULL, '::1', '2025-03-22 00:34:15', 'User logged out successfully', 'Authentication'),
(241, 2, '', 'Login', NULL, '::1', '2025-03-22 00:34:33', 'User logged in successfully', 'Authentication'),
(242, 14, '', 'Login', NULL, '::1', '2025-03-22 00:36:50', 'User logged in successfully', 'Authentication'),
(243, 14, '', 'Logout', NULL, '::1', '2025-03-22 00:37:04', 'User logged out successfully', 'Authentication'),
(244, 4, '', 'Login', NULL, '::1', '2025-03-22 00:37:09', 'Instructor logged in successfully', 'Authentication'),
(245, 4, '', 'Add Subject Load', NULL, '::1', '2025-03-22 00:37:21', 'Added subject load: ACCTG 111 - ACCOUNTING FUNDAMENTALS for Year/Block: 1 BLOCK 2, Academic Year: 7, Join Code: LKLEXM', 'Subject Load Management'),
(246, 4, '', 'Logout', NULL, '::1', '2025-03-22 00:37:40', 'User logged out successfully', 'Authentication'),
(247, 0, '', 'Failed Login', NULL, '::1', '2025-03-22 00:38:06', 'Failed login attempt for email/ID: 2023024`', 'Authentication'),
(248, 327, '', 'Login', NULL, '::1', '2025-03-22 00:38:12', 'User logged in successfully', 'Authentication'),
(249, 327, '', 'Join Class', NULL, '::1', '2025-03-22 00:38:21', 'Student Ryan Jackson joined class: ACCTG 111 - ACCOUNTING FUNDAMENTALS with instructor: test test using code: LKLEXM', 'Student Management'),
(250, 2, '', 'Login', NULL, '::1', '2025-03-22 17:15:49', 'User logged in successfully', 'Authentication'),
(251, 2, '', 'Delete Department', NULL, '::1', '2025-03-22 17:16:02', 'User Admin User deleted department: College of Engineering  (ID: 14)', 'Department Management'),
(252, 2, '', 'Add Department', NULL, '::1', '2025-03-22 17:16:22', 'Added new department: College of Engineering ', 'Department Management'),
(253, 2, 'Admin User', 'Add Department', 'Added department: College of Engineering ', '::1', '2025-03-23 00:16:22', '', ''),
(254, 2, '', 'Add Category', NULL, '::1', '2025-03-22 17:16:35', 'Added new category: CLASSROOM MANAGEMENTsss', 'Category Management'),
(255, 2, '', 'Delete Category', NULL, '::1', '2025-03-22 17:17:06', 'Deleted category: CLASSROOM MANAGEMENTsss (ID: 6)', 'Category Management'),
(256, 2, '', 'Delete Category', NULL, '::1', '2025-03-22 17:17:10', 'Deleted category: CLASSROOM MANAGEMENTss (ID: 5)', 'Category Management'),
(257, 2, 'Admin User', 'Add Question', 'Added question: qwer\r\n', '::1', '2025-03-23 00:17:28', '', ''),
(258, 2, '', 'Edit Question', NULL, '::1', '2025-03-22 17:17:53', 'Updated question ID: 24 from \'qwer\r\n\' to \'qwers\r\n\r\n\'', 'Questionnaire Management'),
(259, 2, '', 'Delete Question', NULL, '::1', '2025-03-22 17:18:02', 'Deleted question ID: 24 with description: \'qwers\r\n\r\n\'', 'Questionnaire Management'),
(260, 2, 'Admin User', 'Add Category', 'Added category: CLASSROOM MANAGEMENTs', '::1', '2025-03-23 00:18:19', '', ''),
(261, 2, 'Admin User', 'Delete P2P Category', 'Deleted P2P category:  (ID: 14)', '::1', '2025-03-23 00:18:34', '', ''),
(262, 2, 'Admin User', 'Add Question', 'Added question: asfas', '::1', '2025-03-23 00:18:51', '', ''),
(263, 0, '', 'Evaluation Start Notification', NULL, '::1', '2025-03-22 17:28:40', 'System sent notification about evaluation start for 2025-2026 - First Semester', 'Notification System'),
(264, 0, '', 'Evaluation Start Notification', NULL, '::1', '2025-03-22 17:28:45', 'System sent notification about evaluation start for 2025-2026 - Second Semester', 'Notification System'),
(265, 2, '', 'Logout', NULL, '::1', '2025-03-22 17:57:18', 'User logged out successfully', 'Authentication'),
(266, 0, '', 'Empty username or password', NULL, '::1', '2025-03-22 18:07:02', 'System', '0'),
(267, 0, '', 'Empty username or password', NULL, '::1', '2025-03-22 18:07:18', 'System', '0'),
(268, 0, '', 'Empty username or password', NULL, '::1', '2025-03-22 18:07:55', 'System', '0'),
(269, 2, '', 'Login', NULL, '::1', '2025-03-22 18:11:21', 'User logged in successfully', 'Authentication'),
(270, 2, '', 'Logout', NULL, '::1', '2025-03-22 18:11:37', 'User logged out successfully', 'Authentication'),
(271, 0, '', 'Failed Login', NULL, '::1', '2025-03-22 18:11:46', 'Failed login attempt for email/ID: hr@gmail.com', 'Authentication'),
(272, 14, '', 'Login', NULL, '::1', '2025-03-22 18:11:59', 'User logged in successfully', 'Authentication'),
(273, 14, '', 'Logout', NULL, '::1', '2025-03-22 18:12:18', 'User logged out successfully', 'Authentication'),
(274, 2, '', 'Login', NULL, '::1', '2025-03-22 18:21:00', 'User logged in successfully', 'Authentication'),
(275, 2, '', 'Login', NULL, '::1', '2025-03-22 18:24:08', 'User logged in successfully', 'Authentication'),
(276, 2, '', 'Logout', NULL, '::1', '2025-03-22 18:34:04', 'User logged out successfully', 'Authentication'),
(277, 14, '', 'Login', NULL, '::1', '2025-03-22 18:34:13', 'User logged in successfully', 'Authentication'),
(278, 14, '', 'Login', NULL, '::1', '2025-03-22 20:21:40', 'User logged in successfully', 'Authentication'),
(279, 14, '', 'Logout', NULL, '::1', '2025-03-22 20:27:03', 'User logged out successfully', 'Authentication'),
(280, 2, '', 'Login', NULL, '::1', '2025-03-22 20:27:44', 'User logged in successfully', 'Authentication'),
(281, 0, '', 'Evaluation Start Notification', NULL, '::1', '2025-03-22 20:29:07', 'System sent notification about evaluation start for 2024-2025 - 1st Semester', 'Notification System'),
(282, 0, '', 'Evaluation Start Notification', NULL, '::1', '2025-03-22 20:30:13', 'System sent notification about evaluation start for 2024-2025 - 1st Semester', 'Notification System'),
(283, 2, '', 'Database Update', NULL, '::1', '2025-03-22 20:48:31', 'Added evaluation_start_date column to academic_year table', 'System'),
(284, 2, '', 'Database Update', NULL, '::1', '2025-03-22 20:48:31', 'Added evaluation_end_date column to academic_year table', 'System'),
(285, 2, '', 'Update Evaluation Dates', NULL, '::1', '2025-03-22 20:48:31', 'Updated evaluation dates for 2024-2025 - 1st Semester, Start: 2025-03-23, End: 2025-03-24', 'Evaluation Management'),
(286, 2, '', 'Update Evaluation Dates', NULL, '::1', '2025-03-22 20:48:33', 'Updated evaluation dates for 2024-2025 - 1st Semester, Start: 2025-03-23, End: 2025-03-24', 'Evaluation Management'),
(287, 2, '', 'Update Evaluation Dates', NULL, '::1', '2025-03-22 20:50:17', 'Updated evaluation dates for 2024-2025 - 1st Semester, Start: 2025-03-23, End: 2025-03-24', 'Evaluation Management'),
(288, 2, '', 'Logout', NULL, '::1', '2025-03-22 20:51:27', 'User logged out successfully', 'Authentication'),
(289, 2, '', 'Login', NULL, '::1', '2025-03-22 20:52:09', 'User logged in successfully', 'Authentication'),
(290, 2, '', 'Logout', NULL, '::1', '2025-03-22 20:52:15', 'User logged out successfully', 'Authentication'),
(291, 14, '', 'Login', NULL, '::1', '2025-03-22 20:52:44', 'User logged in successfully', 'Authentication'),
(292, 14, '', 'Logout', NULL, '::1', '2025-03-22 21:16:04', 'User logged out successfully', 'Authentication'),
(293, 14, '', 'Login', NULL, '::1', '2025-03-22 21:16:16', 'User logged in successfully', 'Authentication'),
(294, 14, '', 'Logout', NULL, '::1', '2025-03-22 21:16:30', 'User logged out successfully', 'Authentication'),
(295, 4, '', 'Login', NULL, '::1', '2025-03-22 21:16:35', 'Instructor logged in successfully', 'Authentication'),
(296, 4, '', 'Add Subject Load', NULL, '::1', '2025-03-22 21:16:54', 'Added subject load: AGR 201 - WEED MANAGEMENT for Year/Block: 1 BLOCK 2, Academic Year: 9, Join Code: J8QYNR', 'Subject Load Management'),
(297, 4, '', 'Logout', NULL, '::1', '2025-03-22 21:17:03', 'User logged out successfully', 'Authentication'),
(298, 14, '', 'Login', NULL, '::1', '2025-03-22 21:17:17', 'User logged in successfully', 'Authentication'),
(299, 14, '', 'Logout', NULL, '::1', '2025-03-22 21:17:38', 'User logged out successfully', 'Authentication'),
(300, 327, '', 'Login', NULL, '::1', '2025-03-22 21:18:15', 'User logged in successfully', 'Authentication'),
(301, 327, '', 'Join Class Failed', NULL, '::1', '2025-03-22 21:18:18', 'Student Ryan Jackson attempted to join class with invalid code: ', 'Student Management'),
(302, 327, '', 'Join Class', NULL, '::1', '2025-03-22 21:18:35', 'Student Ryan Jackson joined class: ACCTG 111 - ACCOUNTING FUNDAMENTALS with instructor: test test using code: LKLEXM', 'Student Management'),
(303, 327, '', 'Submit Evaluation', NULL, '::1', '2025-03-22 21:20:07', 'Student Ryan Jackson submitted evaluation for teacher: test test (ID: 4) on subject: Unknown Subject (ID: 0)', 'Evaluation'),
(304, 327, '', 'Logout', NULL, '::1', '2025-03-22 21:20:15', 'User logged out successfully', 'Authentication'),
(305, 14, '', 'Login', NULL, '::1', '2025-03-22 21:20:25', 'User logged in successfully', 'Authentication'),
(306, 14, '', 'Logout', NULL, '::1', '2025-03-22 21:20:38', 'User logged out successfully', 'Authentication'),
(307, 4, '', 'Login', NULL, '::1', '2025-03-22 21:20:45', 'Instructor logged in successfully', 'Authentication'),
(308, 4, '', 'Logout', NULL, '::1', '2025-03-22 21:21:08', 'User logged out successfully', 'Authentication'),
(309, 4, '', 'Login', NULL, '::1', '2025-03-22 21:21:14', 'Instructor logged in successfully', 'Authentication'),
(310, 2, '', 'Login', NULL, '::1', '2025-03-22 22:50:39', 'User logged in successfully', 'Authentication'),
(311, 2, '', 'Logout', NULL, '::1', '2025-03-22 22:51:15', 'User logged out successfully', 'Authentication'),
(312, 14, '', 'Login', NULL, '::1', '2025-03-22 22:52:21', 'User logged in successfully', 'Authentication'),
(313, 14, '', 'Logout', NULL, '::1', '2025-03-22 22:52:45', 'User logged out successfully', 'Authentication'),
(314, 4, '', 'Login', NULL, '::1', '2025-03-22 22:52:54', 'Instructor logged in successfully', 'Authentication'),
(315, 4, '', 'Logout', NULL, '::1', '2025-03-22 22:59:34', 'User logged out successfully', 'Authentication'),
(316, 2, '', 'Login', NULL, '::1', '2025-03-22 22:59:43', 'User logged in successfully', 'Authentication'),
(317, 2, '', 'Logout', NULL, '::1', '2025-03-22 23:01:26', 'User logged out successfully', 'Authentication'),
(318, 4, '', 'Login', NULL, '::1', '2025-03-22 23:02:36', 'Instructor logged in successfully', 'Authentication'),
(319, 4, '', 'Register Subject', NULL, '::1', '2025-03-23 00:49:28', 'User Unknown User registered new subject: IT101 - INTRODUCTION TO COMPUTING ', 'Subject Management'),
(320, 4, '', 'Add Subject Load', NULL, '::1', '2025-03-23 00:49:49', 'Added subject load: IT 122 - COMPUTER PROGRAMMING 1 for Year/Block: 1 BLOCK 2, Academic Year: 9, Join Code: 566YND', 'Subject Load Management'),
(321, 4, '', 'Register Subject Failed', NULL, '::1', '2025-03-23 00:50:29', 'User Unknown User attempted to register existing subject: 566YND - COMPUTER PROGRAMMING 1', 'Subject Management'),
(322, 2, '', 'Login', NULL, '::1', '2025-03-23 00:56:06', 'User logged in successfully', 'Authentication'),
(323, 4, '', 'Logout', NULL, '::1', '2025-03-23 03:35:22', 'User logged out successfully', 'Authentication'),
(324, 14, '', 'Login', NULL, '::1', '2025-03-23 03:35:34', 'User logged in successfully', 'Authentication'),
(325, 14, '', 'Logout', NULL, '::1', '2025-03-23 03:35:51', 'User logged out successfully', 'Authentication'),
(326, 2, '', 'Login', NULL, '::1', '2025-03-23 03:48:03', 'User logged in successfully', 'Authentication'),
(327, 2, '', 'Logout', NULL, '::1', '2025-03-23 03:48:37', 'User logged out successfully', 'Authentication'),
(328, 322, '', 'Login', NULL, '::1', '2025-03-23 03:48:40', 'User logged in successfully', 'Authentication'),
(329, 2, '', 'Login', NULL, '::1', '2025-03-23 20:29:37', 'User logged in successfully', 'Authentication'),
(330, 2, '', 'Logout', NULL, '::1', '2025-03-23 20:31:19', 'User logged out successfully', 'Authentication'),
(331, 14, '', 'Login', NULL, '::1', '2025-03-23 20:31:35', 'User logged in successfully', 'Authentication'),
(332, 14, '', 'Logout', NULL, '::1', '2025-03-23 20:32:15', 'User logged out successfully', 'Authentication'),
(333, 2, '', 'Login', NULL, '::1', '2025-03-23 20:33:21', 'User logged in successfully', 'Authentication'),
(334, 2, '', 'Logout', NULL, '::1', '2025-03-23 20:35:41', 'User logged out successfully', 'Authentication'),
(335, 323, '', 'Login', NULL, '::1', '2025-03-23 20:36:06', 'User logged in successfully', 'Authentication'),
(336, 323, '', 'Logout', NULL, '::1', '2025-03-23 20:37:11', 'User logged out successfully', 'Authentication'),
(337, 2, '', 'Login', NULL, '::1', '2025-03-23 20:37:26', 'User logged in successfully', 'Authentication'),
(338, 2, '', 'Logout', NULL, '::1', '2025-03-23 20:50:22', 'User logged out successfully', 'Authentication'),
(339, 323, '', 'Login', NULL, '::1', '2025-03-23 20:50:26', 'User logged in successfully', 'Authentication'),
(340, 323, '', 'Logout', NULL, '::1', '2025-03-23 20:54:00', 'User logged out successfully', 'Authentication'),
(341, 2, '', 'Login', NULL, '::1', '2025-03-23 20:54:07', 'User logged in successfully', 'Authentication'),
(342, 327, '', 'Login', NULL, '::1', '2025-03-23 21:05:16', 'User logged in successfully', 'Authentication'),
(343, 0, '', 'Evaluation Start Notification', NULL, '::1', '2025-03-23 21:09:47', 'System sent notification about evaluation start for 2024-2025 - 1st Semester', 'Notification System'),
(344, 327, '', 'Login', NULL, '::1', '2025-03-23 21:10:03', 'User logged in successfully', 'Authentication'),
(345, 327, '', 'Login', NULL, '::1', '2025-03-23 21:14:26', 'User logged in successfully', 'Authentication'),
(346, 327, '', 'Login', NULL, '::1', '2025-03-23 21:17:15', 'User logged in successfully', 'Authentication'),
(347, 0, '', 'Evaluation Start Notification', NULL, '::1', '2025-03-23 21:17:49', 'System sent notification about evaluation start for 2024-2025 - 1st Semester', 'Notification System'),
(348, 0, '', 'Evaluation Start Notification', NULL, '::1', '2025-03-23 21:17:50', 'System sent notification about evaluation start for 2024-2025 - 1st Semester', 'Notification System'),
(349, 0, '', 'Evaluation Start Notification', NULL, '::1', '2025-03-23 21:17:52', 'System sent notification about evaluation start for 2024-2025 - 1st Semester', 'Notification System'),
(350, 2, '', 'Logout', NULL, '::1', '2025-03-23 21:29:47', 'User logged out successfully', 'Authentication'),
(351, 2, '', 'Login', NULL, '::1', '2025-03-23 21:32:37', 'User logged in successfully', 'Authentication'),
(352, 2, '', 'Login', NULL, '::1', '2025-03-23 22:48:58', 'User logged in successfully', 'Authentication'),
(353, 327, '', 'Login', NULL, '::1', '2025-03-23 22:51:01', 'User logged in successfully', 'Authentication'),
(354, 2, '', 'Login', NULL, '::1', '2025-03-23 23:10:47', 'User logged in successfully', 'Authentication'),
(355, 327, '', 'Login', NULL, '::1', '2025-03-23 23:16:09', 'User logged in successfully', 'Authentication'),
(356, 2, '', 'Login', NULL, '::1', '2025-03-23 23:19:44', 'User logged in successfully', 'Authentication'),
(357, 14, '', 'Login', NULL, '::1', '2025-03-23 23:22:10', 'User logged in successfully', 'Authentication'),
(358, 2, '', 'Logout', NULL, '::1', '2025-03-24 00:07:40', 'User logged out successfully', 'Authentication'),
(359, 2, '', 'Login', NULL, '::1', '2025-03-24 00:07:50', 'User logged in successfully', 'Authentication'),
(360, 2, '', 'Add Employee', NULL, '::1', '2025-03-24 00:11:49', 'Added new employee: Test2 Test2 Test2 (ID: 7)', 'Employee Management'),
(361, 6, '', 'Login', NULL, '::1', '2025-03-24 00:17:08', 'Instructor logged in successfully', 'Authentication'),
(362, 6, '', 'Add Subject Load', NULL, '::1', '2025-03-24 00:17:27', 'Added subject load: IT 123 - PROGRAM for Year/Block: BSIT2 -7, Academic Year: 9, Join Code: DUSAQV', 'Subject Load Management'),
(363, 322, '', 'Login', NULL, '::1', '2025-03-24 00:18:27', 'User logged in successfully', 'Authentication'),
(364, 322, '', 'Join Class', NULL, '::1', '2025-03-24 00:18:46', 'Student Amanda Taylor joined class: IT 123 - PROGRAM with instructor: Test1 Test1 using code: DUSAQV', 'Student Management'),
(365, 322, '', 'Join Class', NULL, '::1', '2025-03-24 00:19:00', 'Student Amanda Taylor joined class: ACCTG 111 - ACCOUNTING FUNDAMENTALS with instructor: Unknown Teacher using code: LKLEXM', 'Student Management'),
(366, 322, '', 'Submit Evaluation', NULL, '::1', '2025-03-24 00:32:35', 'Student Amanda Taylor submitted evaluation for teacher: Test1 Test1 (ID: 6) on subject: IT 123 - PROGRAM (ID: 6)', 'Evaluation'),
(367, 2, '', 'Add Employee', NULL, '::1', '2025-03-24 00:40:46', 'Added new employee: test3 test3 test3 (ID: 8)', 'Employee Management'),
(368, 322, '', 'Join Class Failed', NULL, '::1', '2025-03-24 01:05:15', 'Student Amanda Taylor attempted to join already joined class: IT 123 - PROGRAM with instructor: Test1 Test1 using code: DUS', 'Student Management'),
(369, 2, '', 'Update Evaluation Dates', NULL, '::1', '2025-03-24 01:14:49', 'Updated evaluation dates for 2024-2025 - 1st Semester, Start: 2025-03-23, End: 2025-03-26', 'Evaluation Management'),
(370, 2, '', 'Update Evaluation Dates', NULL, '::1', '2025-03-24 01:15:24', 'Updated evaluation dates for 2024-2025 - 1st Semester, Start: 2025-03-23, End: 2025-03-23', 'Evaluation Management'),
(371, 2, '', 'Update Evaluation Dates', NULL, '::1', '2025-03-24 01:15:49', 'Updated evaluation dates for 2024-2025 - 1st Semester, Start: 2025-03-23, End: 2025-03-27', 'Evaluation Management'),
(372, 322, '', 'Logout', NULL, '::1', '2025-03-24 01:26:43', 'User logged out successfully', 'Authentication'),
(373, 8, '', 'Login', NULL, '::1', '2025-03-24 01:27:12', 'Instructor logged in successfully', 'Authentication'),
(374, 1, '', 'Logout', NULL, '::1', '2025-03-24 01:27:35', 'User logged out successfully', 'Authentication'),
(375, 8, '', 'Login', NULL, '::1', '2025-03-24 01:27:44', 'Instructor logged in successfully', 'Authentication'),
(376, 2, '', 'Login', NULL, '::1', '2025-03-24 03:53:48', 'User logged in successfully', 'Authentication'),
(377, 2, '', 'Login', NULL, '::1', '2025-03-24 18:40:04', 'User logged in successfully', 'Authentication'),
(378, 14, '', 'Login', NULL, '::1', '2025-03-24 18:44:07', 'User logged in successfully', 'Authentication'),
(379, 0, '', 'Failed Login', NULL, '::1', '2025-03-24 18:54:38', 'Failed login attempt for email/ID: instructor.Test3@seait.edu', 'Authentication'),
(380, 8, '', 'Login', NULL, '::1', '2025-03-24 18:55:07', 'Instructor logged in successfully', 'Authentication'),
(381, 8, '', 'Add Subject Load', NULL, '::1', '2025-03-24 18:58:17', 'Added subject load: IT101 - INTRODUCTION TO COMPUTING  for Year/Block: BSIT2 -7, Academic Year: 9, Join Code: UHSUCA', 'Subject Load Management'),
(382, 322, '', 'Login', NULL, '::1', '2025-03-24 20:14:00', 'User logged in successfully', 'Authentication'),
(383, 8, '', 'Login', NULL, '::1', '2025-03-24 20:38:17', 'Instructor logged in successfully', 'Authentication'),
(384, 0, '', 'Failed Login', NULL, '::1', '2025-03-24 21:35:36', 'Failed login attempt for email/ID: insructor.test3@seait-edu.ph', 'Authentication'),
(385, 8, '', 'Login', NULL, '::1', '2025-03-24 21:35:49', 'Instructor logged in successfully', 'Authentication'),
(386, 8, '', 'Logout', NULL, '::1', '2025-03-24 22:15:56', 'User logged out successfully', 'Authentication'),
(387, 14, '', 'Login', NULL, '::1', '2025-03-24 22:16:15', 'User logged in successfully', 'Authentication'),
(388, 6, '', 'Login', NULL, '::1', '2025-03-24 22:16:29', 'Instructor logged in successfully', 'Authentication'),
(389, 14, '', 'Login', NULL, '::1', '2025-03-24 22:41:15', 'User logged in successfully', 'Authentication'),
(390, 2, '', 'Add Employee', NULL, '::1', '2025-03-24 23:06:09', 'Added new employee: Test4 Test4 Test4 (ID: 9)', 'Employee Management'),
(391, 6, '', 'Logout', NULL, '::1', '2025-03-24 23:06:30', 'User logged out successfully', 'Authentication'),
(392, 8, '', 'Login', NULL, '::1', '2025-03-24 23:06:47', 'Instructor logged in successfully', 'Authentication'),
(393, 8, '', 'Logout', NULL, '::1', '2025-03-24 23:07:04', 'User logged out successfully', 'Authentication'),
(394, 8, '', 'Logout', NULL, '::1', '2025-03-24 23:07:04', 'User logged out successfully', 'Authentication'),
(395, 9, '', 'Login', NULL, '::1', '2025-03-24 23:07:29', 'Instructor logged in successfully', 'Authentication'),
(396, 9, '', 'Add Subject Load', NULL, '::1', '2025-03-24 23:07:39', 'Added subject load: AGR 201 - WEED MANAGEMENT for Year/Block: BSIT2 -7, Academic Year: 9, Join Code: 7UVGYD', 'Subject Load Management'),
(397, 322, '', 'Login', NULL, '::1', '2025-03-24 23:08:23', 'User logged in successfully', 'Authentication'),
(398, 322, '', 'Join Class Failed', NULL, '::1', '2025-03-24 23:08:30', 'Student Amanda Taylor attempted to join class with invalid code: 2023019', 'Student Management'),
(399, 322, '', 'Join Class', NULL, '::1', '2025-03-24 23:08:41', 'Student Amanda Taylor joined class: AGR 201 - WEED MANAGEMENT with instructor: Test4 Test4 using code: 7UVGYD', 'Student Management'),
(400, 322, '', 'Submit Evaluation', NULL, '::1', '2025-03-24 23:09:33', 'Student Amanda Taylor submitted evaluation for teacher: Test4 Test4 (ID: 9) on subject: AGR 201 - WEED MANAGEMENT (ID: 5)', 'Evaluation'),
(401, 322, '', 'Logout', NULL, '::1', '2025-03-24 23:20:54', 'User logged out successfully', 'Authentication'),
(402, 321, '', 'Login', NULL, '::1', '2025-03-24 23:20:59', 'User logged in successfully', 'Authentication'),
(403, 321, '', 'Join Class', NULL, '::1', '2025-03-24 23:21:19', 'Student Matthew Anderson joined class: AGR 201 - WEED MANAGEMENT with instructor: Test4 Test4 using code: 7UVGYD', 'Student Management'),
(404, 321, '', 'Submit Evaluation', NULL, '::1', '2025-03-24 23:22:03', 'Student Matthew Anderson submitted evaluation for teacher: Test4 Test4 (ID: 9) on subject: AGR 201 - WEED MANAGEMENT (ID: 5', 'Evaluation'),
(405, 9, '', 'Add Subject Load', NULL, '::1', '2025-03-24 23:27:35', 'Added subject load: IT 327 - APPLICATION DEVELOPMENT for Year/Block: BSIT2 -7, Academic Year: 9, Join Code: 0FTUNH', 'Subject Load Management'),
(406, 321, '', 'Join Class', NULL, '::1', '2025-03-24 23:27:46', 'Student Matthew Anderson joined class: IT 327 - APPLICATION DEVELOPMENT with instructor: Test4 Test4 using code: 0FTUNH', 'Student Management'),
(407, 321, '', 'Logout', NULL, '::1', '2025-03-24 23:30:28', 'User logged out successfully', 'Authentication'),
(408, 321, '', 'Login', NULL, '::1', '2025-03-24 23:31:18', 'User logged in successfully', 'Authentication'),
(409, 321, '', 'Logout', NULL, '::1', '2025-03-24 23:40:51', 'User logged out successfully', 'Authentication'),
(410, 314, '', 'Login', NULL, '::1', '2025-03-24 23:40:56', 'User logged in successfully', 'Authentication'),
(411, 314, '', 'Join Class', NULL, '::1', '2025-03-24 23:41:12', 'Student Emily Williams joined class: AGR 201 - WEED MANAGEMENT with instructor: Test4 Test4 using code: 7UVGYD', 'Student Management'),
(412, 9, '', 'Logout', NULL, '::1', '2025-03-24 23:41:21', 'User logged out successfully', 'Authentication'),
(413, 9, '', 'Login', NULL, '::1', '2025-03-24 23:42:26', 'Instructor logged in successfully', 'Authentication'),
(414, 2, '', 'Add Employee', NULL, '::1', '2025-03-24 23:44:11', 'Added new employee: Test5 Test5 Test5 (ID: 10)', 'Employee Management'),
(415, 9, '', 'Logout', NULL, '::1', '2025-03-24 23:44:16', 'User logged out successfully', 'Authentication'),
(416, 0, '', 'Failed Login', NULL, '::1', '2025-03-24 23:44:39', 'Failed login attempt for email/ID: instructor.Tes5@seait-edu.ph', 'Authentication'),
(417, 10, '', 'Login', NULL, '::1', '2025-03-24 23:44:57', 'Instructor logged in successfully', 'Authentication'),
(418, 10, '', 'Add Subject Load', NULL, '::1', '2025-03-24 23:45:17', 'Added subject load: IT101 - INTRODUCTION TO COMPUTING  for Year/Block: BSIT2 -7, Academic Year: 9, Join Code: UCJVRO', 'Subject Load Management'),
(419, 314, '', 'Join Class', NULL, '::1', '2025-03-24 23:45:29', 'Student Emily Williams joined class: IT101 - INTRODUCTION TO COMPUTING  with instructor: Test5 Test5 using code: UCJVRO', 'Student Management'),
(420, 314, '', 'Submit Evaluation', NULL, '::1', '2025-03-24 23:46:50', 'Student Emily Williams submitted evaluation for teacher: Test4 Test4 (ID: 9) on subject: AGR 201 - WEED MANAGEMENT (ID: 5)', 'Evaluation'),
(421, 314, '', 'Submit Evaluation', NULL, '::1', '2025-03-24 23:47:35', 'Student Emily Williams submitted evaluation for teacher: Test5 Test5 (ID: 10) on subject: IT101 - INTRODUCTION TO COMPUTING', 'Evaluation'),
(422, 314, '', 'Logout', NULL, '::1', '2025-03-24 23:48:07', 'User logged out successfully', 'Authentication'),
(423, 316, '', 'Login', NULL, '::1', '2025-03-24 23:48:12', 'User logged in successfully', 'Authentication'),
(424, 316, '', 'Join Class', NULL, '::1', '2025-03-24 23:48:33', 'Student Sarah Jones joined class: IT101 - INTRODUCTION TO COMPUTING  with instructor: Test5 Test5 using code: UCJVRO', 'Student Management'),
(425, 316, '', 'Submit Evaluation', NULL, '::1', '2025-03-24 23:49:02', 'Student Sarah Jones submitted evaluation for teacher: Test5 Test5 (ID: 10) on subject: IT101 - INTRODUCTION TO COMPUTING  (', 'Evaluation'),
(426, 2, '', 'Login', NULL, '::1', '2025-03-25 20:29:08', 'User logged in successfully', 'Authentication'),
(427, 322, '', 'Login', NULL, '::1', '2025-03-25 20:30:34', 'User logged in successfully', 'Authentication'),
(428, 322, '', 'Logout', NULL, '::1', '2025-03-25 20:32:31', 'User logged out successfully', 'Authentication'),
(429, 8, '', 'Login', NULL, '::1', '2025-03-25 20:37:33', 'Instructor logged in successfully', 'Authentication'),
(430, 8, '', 'Logout', NULL, '::1', '2025-03-26 01:53:21', 'User logged out successfully', 'Authentication'),
(431, 8, '', 'Logout', NULL, '::1', '2025-03-26 01:53:21', 'User logged out successfully', 'Authentication'),
(432, 316, '', 'Login', NULL, '::1', '2025-03-26 01:53:25', 'User logged in successfully', 'Authentication'),
(433, 316, '', 'Logout', NULL, '::1', '2025-03-26 01:55:34', 'User logged out successfully', 'Authentication'),
(434, 8, '', 'Login', NULL, '::1', '2025-03-26 01:55:53', 'Instructor logged in successfully', 'Authentication'),
(435, 8, '', 'Logout', NULL, '::1', '2025-03-26 01:56:07', 'User logged out successfully', 'Authentication'),
(436, 8, '', 'Logout', NULL, '::1', '2025-03-26 01:56:07', 'User logged out successfully', 'Authentication'),
(437, 14, '', 'Login', NULL, '::1', '2025-03-26 01:56:16', 'User logged in successfully', 'Authentication'),
(438, 14, '', 'Logout', NULL, '::1', '2025-03-26 01:57:35', 'User logged out successfully', 'Authentication'),
(439, 2, '', 'Login', NULL, '::1', '2025-03-26 01:57:48', 'User logged in successfully', 'Authentication'),
(440, 2, '', 'Logout', NULL, '::1', '2025-03-26 02:00:48', 'User logged out successfully', 'Authentication'),
(441, 2, '', 'Login', NULL, '::1', '2025-03-26 21:58:49', 'User logged in successfully', 'Authentication'),
(442, 0, '', 'Failed Login', NULL, '::1', '2025-03-26 21:59:35', 'Failed login attempt for email/ID: hr@gmail.com', 'Authentication'),
(443, 14, '', 'Login', NULL, '::1', '2025-03-26 22:00:04', 'User logged in successfully', 'Authentication'),
(444, 0, '', 'Failed Login', NULL, '::1', '2025-03-27 00:31:33', 'Failed login attempt for email/ID: instructor.test3@gmail.com', 'Authentication'),
(445, 0, '', 'Failed Login', NULL, '::1', '2025-03-27 00:31:57', 'Failed login attempt for email/ID: Instructor.Test3@gmail.com', 'Authentication'),
(446, 0, '', 'Failed Login', NULL, '::1', '2025-03-27 00:33:04', 'Failed login attempt for email/ID: instructor.test5@seait-edu.ph (Attempt 1)', 'Authentication'),
(447, 0, '', 'Failed Login', NULL, '::1', '2025-03-27 00:33:12', 'Failed login attempt for email/ID: instructor.test5@seait-edu.ph (Attempt 1)', 'Authentication'),
(448, 0, '', 'Failed Login', NULL, '::1', '2025-03-27 00:33:28', 'Failed login attempt for email/ID: instructor.test5@seait-edu.ph (Attempt 1)', 'Authentication'),
(449, 2, '', 'Login', NULL, '::1', '2025-03-27 00:33:51', 'User logged in successfully', 'Authentication'),
(450, 322, '', 'Login', NULL, '::1', '2025-03-27 00:34:06', 'User logged in successfully', 'Authentication'),
(451, 0, '', 'Failed Login', NULL, '::1', '2025-03-27 01:19:58', 'Failed login attempt for email/ID: seait@seait-edu.ph (Attempt 1)', 'Authentication'),
(452, 0, '', 'Failed Login', NULL, '::1', '2025-03-27 01:20:20', 'Failed login attempt for email/ID: instructor.test3t@seait-edu.ph (Attempt 1)', 'Authentication'),
(453, 322, '', 'Logout', NULL, '::1', '2025-03-27 01:36:48', 'User logged out successfully', 'Authentication'),
(454, 0, '', 'Failed Login', NULL, '::1', '2025-03-27 01:43:36', 'Failed login attempt for email/ID: instructor.test3@seait-edu.ph (Attempt 1)', 'Authentication'),
(455, 0, '', 'Failed Login', NULL, '::1', '2025-03-27 01:44:13', 'Failed login attempt for email/ID: Instructor.test3@seait-edu.ph (Attempt 1)', 'Authentication'),
(456, 2, '', 'Login', NULL, '::1', '2025-03-27 01:44:29', 'User logged in successfully', 'Authentication'),
(457, 0, '', 'Failed Login', NULL, '::1', '2025-03-27 01:45:02', 'Failed login attempt for email/ID: instructor.test5@seait-edu.ph (Attempt 1)', 'Authentication'),
(458, 0, '', 'Failed Login', NULL, '::1', '2025-03-27 01:48:29', 'Failed login attempt for email/ID: instructor.test5@seait-edu.ph (Attempt 1)', 'Authentication'),
(459, 0, '', 'Failed Login', NULL, '::1', '2025-03-27 01:48:36', 'Failed login attempt for email/ID: instructor.test5@seait-edu.ph (Attempt 1)', 'Authentication');
INSERT INTO `activity_logs` (`id`, `user_id`, `user_name`, `action`, `details`, `ip_address`, `timestamp`, `description`, `module`) VALUES
(460, 0, '', 'Failed Login', NULL, '::1', '2025-03-27 01:49:49', 'Failed login attempt for email/ID: instructor.test5@seait-edu.ph (Attempt 1)', 'Authentication'),
(461, 2, '', 'Login', NULL, '::1', '2025-03-27 01:50:01', 'User logged in successfully', 'Authentication'),
(462, 2, '', 'Logout', NULL, '::1', '2025-03-27 01:50:04', 'User logged out successfully', 'Authentication'),
(463, 14, '', 'Login', NULL, '::1', '2025-03-27 01:50:12', 'User logged in successfully', 'Authentication'),
(464, 14, '', 'Logout', NULL, '::1', '2025-03-27 01:50:14', 'User logged out successfully', 'Authentication'),
(465, 0, '', 'Failed Login', NULL, '::1', '2025-03-27 01:51:30', 'Failed login attempt for email/ID: instructor.test4@seait-edu.ph (Attempt 1)', 'Authentication'),
(466, 9, '', 'Login', NULL, '::1', '2025-03-27 01:58:13', 'Instructor logged in successfully', 'Authentication'),
(467, 9, '', 'Login', NULL, '::1', '2025-03-27 01:58:24', 'Instructor logged in successfully', 'Authentication'),
(468, 2, '', 'Login', NULL, '::1', '2025-03-27 01:58:37', 'User logged in successfully', 'Authentication'),
(469, 2, '', 'Logout', NULL, '::1', '2025-03-27 01:58:42', 'User logged out successfully', 'Authentication'),
(470, 14, '', 'Login', NULL, '::1', '2025-03-27 01:59:16', 'User logged in successfully', 'Authentication'),
(471, 14, '', 'Logout', NULL, '::1', '2025-03-27 01:59:36', 'User logged out successfully', 'Authentication'),
(472, 10, '', 'Login', NULL, '::1', '2025-03-27 01:59:44', 'Instructor logged in successfully', 'Authentication'),
(473, 2, '', 'Login', NULL, '::1', '2025-03-27 02:00:21', 'User logged in successfully', 'Authentication'),
(474, 2, '', 'Logout', NULL, '::1', '2025-03-27 02:00:26', 'User logged out successfully', 'Authentication'),
(475, 2, '', 'Add Employee', NULL, '::1', '2025-03-27 02:03:07', 'Added new employee: Test6 Test6 Test6 (ID: 11)', 'Employee Management'),
(476, 2, '', 'Login', NULL, '::1', '2025-03-27 16:47:22', 'User logged in successfully', 'Authentication'),
(477, 14, '', 'Login', NULL, '::1', '2025-03-27 16:47:38', 'User logged in successfully', 'Authentication'),
(478, 2, '', 'Login', NULL, '::1', '2025-03-28 02:00:23', 'User logged in successfully', 'Authentication'),
(479, 2, '', 'Login', NULL, '::1', '2025-03-28 13:48:35', 'User logged in successfully', 'Authentication'),
(480, 2, '', 'Add Subject', 'Added new subject: 566YND - ask alsga', NULL, '2025-03-28 13:54:14', '', ''),
(481, 10, '', 'Add Subject Load', NULL, '::1', '2025-03-28 13:54:59', 'Added subject load: 566YND - ask alsga for Year/Block: BSIT2 - 7, Academic Year: 9, Join Code: ECONDQ', 'Subject Load Management'),
(482, 2, '', 'Edit Subject', 'Updated subject: 566YND - ask alsgas', NULL, '2025-03-28 13:55:54', '', ''),
(483, 10, '', 'Logout', NULL, '::1', '2025-03-28 14:01:05', 'User logged out successfully', 'Authentication'),
(484, 10, '', 'Logout', NULL, '::1', '2025-03-28 14:01:05', 'User logged out successfully', 'Authentication'),
(485, 10, '', 'Remove Student', NULL, '::1', '2025-03-28 14:22:01', 'Instructor Unknown Instructor removed student: Emily Williams (ID: 314) from subject: IT101 - INTRODUCTION TO COMPUTING ', 'Student Management'),
(486, 10, '', 'Remove Student', NULL, '::1', '2025-03-28 14:22:08', 'Instructor Unknown Instructor removed student: Sarah Jones (ID: 316) from subject: IT101 - INTRODUCTION TO COMPUTING ', 'Student Management'),
(487, 322, '', 'Login', NULL, '::1', '2025-03-28 14:25:15', 'User logged in successfully', 'Authentication'),
(488, 2, '', 'Update Evaluation Dates', NULL, '::1', '2025-03-28 14:25:38', 'Updated evaluation dates for 2024-2025 - 1st Semester, Start: 2025-03-23, End: 2025-03-30', 'Evaluation Management'),
(489, 322, '', 'Login', NULL, '::1', '2025-03-28 14:25:44', 'User logged in successfully', 'Authentication'),
(490, 322, '', 'Logout', NULL, '::1', '2025-03-28 14:25:51', 'User logged out successfully', 'Authentication'),
(491, 2, '', 'Update Evaluation Dates', NULL, '::1', '2025-03-28 14:25:58', 'Updated evaluation dates for 2024-2025 - 1st Semester, Start: 2025-03-23, End: 2025-03-27', 'Evaluation Management'),
(492, 322, '', 'Login', NULL, '::1', '2025-03-28 14:26:05', 'User logged in successfully', 'Authentication'),
(493, 2, '', 'Login', NULL, '::1', '2025-03-28 14:26:29', 'User logged in successfully', 'Authentication'),
(494, 2, '', 'Logout', NULL, '::1', '2025-03-28 14:26:32', 'User logged out successfully', 'Authentication'),
(495, 14, '', 'Login', NULL, '::1', '2025-03-28 14:30:17', 'User logged in successfully', 'Authentication'),
(496, 92, '', 'Login', NULL, '::1', '2025-03-28 16:01:08', 'User logged in successfully', 'Authentication'),
(497, 92, '', 'Login', NULL, '::1', '2025-03-28 16:04:54', 'User logged in successfully', 'Authentication'),
(498, 92, '', 'Login', NULL, '::1', '2025-03-28 16:06:57', 'User logged in successfully', 'Authentication'),
(499, 92, '', 'Login', NULL, '::1', '2025-03-28 16:14:09', 'User logged in successfully', 'Authentication'),
(500, 92, '', 'Login', NULL, '::1', '2025-03-28 16:15:53', 'User logged in successfully', 'Authentication'),
(501, 14, '', 'Login', NULL, '::1', '2025-03-28 16:30:38', 'User logged in successfully', 'Authentication'),
(502, 92, '', 'Login', NULL, '::1', '2025-03-28 16:38:10', 'User logged in successfully', 'Authentication'),
(503, 92, '', 'Login', NULL, '::1', '2025-03-28 16:38:25', 'User logged in successfully', 'Authentication'),
(504, 92, '', 'Login', NULL, '::1', '2025-03-28 16:44:11', 'User logged in successfully', 'Authentication'),
(505, 2, 'Admin User', 'Add User', 'Added Department Head user: info head for department: 15', '::1', '2025-03-28 23:51:43', '', ''),
(506, 92, '', 'Logout', NULL, '::1', '2025-03-28 16:51:57', 'User logged out successfully', 'Authentication'),
(507, 328, '', 'Login', NULL, '::1', '2025-03-28 16:52:24', 'User logged in successfully', 'Authentication'),
(508, 1, '', 'Add Subject', 'Added new subject: safasf12312 - qnskafas', NULL, '2025-03-28 19:25:04', '', ''),
(509, 14, '', 'Logout', NULL, '::1', '2025-03-28 19:25:17', 'User logged out successfully', 'Authentication'),
(510, 10, '', 'Logout', NULL, '::1', '2025-03-28 19:28:42', 'User logged out successfully', 'Authentication'),
(511, 322, '', 'Login', NULL, '::1', '2025-03-28 19:28:53', 'User logged in successfully', 'Authentication'),
(512, 1, '', 'Update Evaluation Dates', NULL, '::1', '2025-03-28 19:29:09', 'Updated evaluation dates for 2024-2025 - 1st Semester, Start: 2025-03-23, End: 2025-03-30', 'Evaluation Management'),
(513, 322, '', 'Login', NULL, '::1', '2025-03-28 19:29:14', 'User logged in successfully', 'Authentication'),
(514, 2, '', 'Login', NULL, '::1', '2025-03-28 20:23:29', 'User logged in successfully', 'Authentication'),
(515, 328, '', 'Login', NULL, '::1', '2025-03-28 20:23:46', 'User logged in successfully', 'Authentication'),
(516, 328, '', 'Submit H2F Evaluation', NULL, '::1', '2025-03-28 20:27:27', 'Head info head submitted head-to-faculty evaluation for faculty: Test6 Test6 (ID: 11)', 'Evaluation'),
(517, 328, '', 'Submit H2F Evaluation', NULL, '::1', '2025-03-28 20:52:41', 'Head info head submitted head-to-faculty evaluation for faculty: Test5 Test5 (ID: 10)', 'Evaluation'),
(518, 328, 'info head', '', 'Changed academic year to: 2024-2025 - 1st Semester (ID: 9)', '::1', '2025-03-29 04:51:23', '', ''),
(519, 328, 'info head', 'Add Academic Year', 'Added academic year: 2024-2025, semester: Second Semester', '::1', '2025-03-29 04:52:55', '', ''),
(520, 0, '', 'Evaluation Reminder', NULL, '::1', '2025-03-28 22:09:40', 'System sent reminder about evaluation ending in 0 day(s) for 2024-2025 - 1st Semester', 'Notification System'),
(521, 0, '', 'Evaluation Start Notification', NULL, '::1', '2025-03-28 22:09:40', 'System sent notification about evaluation start for 2024-2025 - 1st Semester', 'Notification System'),
(522, 0, '', 'Evaluation Start Notification', NULL, '::1', '2025-03-28 22:11:16', 'System sent notification about evaluation start for 2024-2025 - Second Semester', 'Notification System'),
(523, 0, '', 'Evaluation Reminder', NULL, '::1', '2025-03-28 22:26:45', 'System sent reminder about evaluation ending in 0 day(s) for 2024-2025 - 1st Semester', 'Notification System'),
(524, 0, '', 'Evaluation Start Notification', NULL, '::1', '2025-03-28 22:26:45', 'System sent notification about evaluation start for 2024-2025 - 1st Semester', 'Notification System'),
(525, 322, '', 'Login', NULL, '::1', '2025-03-28 22:31:54', 'User logged in successfully', 'Authentication'),
(526, 14, '', 'Login', NULL, '::1', '2025-03-28 22:32:33', 'User logged in successfully', 'Authentication'),
(527, 2, '', 'Update Evaluation Dates', NULL, '::1', '2025-03-28 22:35:39', 'Updated evaluation dates for 2024-2025 - 1st Semester, Start: 2025-03-23, End: 2025-03-27', 'Evaluation Management'),
(528, 0, '', 'Evaluation Notifications', NULL, '::1', '2025-03-28 22:35:39', 'Generated personalized evaluation period notifications for students and faculty', 'Notification System'),
(529, 322, '', 'Login', NULL, '::1', '2025-03-28 22:35:59', 'User logged in successfully', 'Authentication'),
(530, 328, 'info head', 'Add Academic Year', 'Added academic year: 2025-2026, semester: First Semester', '::1', '2025-03-29 05:37:18', '', ''),
(531, 0, '', 'Evaluation Start Notification', NULL, '::1', '2025-03-28 22:37:34', 'System sent notification about evaluation start for 2025-2026 - First Semester', 'Notification System'),
(532, 2, '', 'Update Evaluation Dates', NULL, '::1', '2025-03-28 22:38:07', 'Updated evaluation dates for 2025-2026 - First Semester, Start: 2025-03-27, End: 2025-04-05', 'Evaluation Management'),
(533, 11, '', 'Logout', NULL, '::1', '2025-03-28 22:41:51', 'User logged out successfully', 'Authentication'),
(534, 322, '', 'Login', NULL, '::1', '2025-03-28 22:46:53', 'User logged in successfully', 'Authentication'),
(535, 322, '', 'Join Class', NULL, '::1', '2025-03-28 22:49:00', 'Student Amanda Taylor joined class: 566YND - ask alsgas with instructor: Test5 Test5 using code: ECONDQ', 'Student Management'),
(536, 328, '', 'Submit H2F Evaluation', NULL, '::1', '2025-03-28 23:06:34', 'Head info head submitted head-to-faculty evaluation for faculty: Test4 Test4 (ID: 9)', 'Evaluation'),
(537, 10, '', 'Logout', NULL, '::1', '2025-03-28 23:06:46', 'User logged out successfully', 'Authentication'),
(538, 2, '', 'Login', NULL, '::1', '2025-03-29 22:56:59', 'User logged in successfully', 'Authentication'),
(539, 328, '', 'Login', NULL, '::1', '2025-03-29 22:57:55', 'User logged in successfully', 'Authentication'),
(540, 2, '', 'Add Subject', 'Added new subject: 566YNDwsa - asfasafs', NULL, '2025-03-29 23:17:38', '', ''),
(541, 2, '', 'Add Subject', 'Added new subject: asgas gasg - asfas', NULL, '2025-03-29 23:27:46', '', ''),
(542, 2, '', 'Add Subject', 'Added new subject: edgagaga - sdgag', NULL, '2025-03-29 23:38:34', '', ''),
(543, 2, '', 'Add Subject', 'Added new subject: salkgbaslgk a - agasg', NULL, '2025-03-29 23:40:36', '', ''),
(544, 2, '', 'Add Subject', 'Added new subject: IT10112 - ev', NULL, '2025-03-29 23:41:55', '', ''),
(545, 2, '', 'Login', NULL, '::1', '2025-03-30 23:33:00', 'User logged in successfully', 'Authentication'),
(546, 10, '', 'Logout', NULL, '::1', '2025-03-30 23:38:29', 'User logged out successfully', 'Authentication'),
(547, 2, '', 'Add Department', NULL, '::1', '2025-03-30 23:43:16', 'Added new department: College of Social Works', 'Department Management'),
(548, 2, 'Admin User', 'Add Department', 'Added department: College of Social Works', '::1', '2025-03-31 05:43:16', '', ''),
(549, 2, '', 'Add Employee', NULL, '::1', '2025-03-30 23:43:46', 'Added new employee: Test7 Test7 Test7 (ID: 12)', 'Employee Management'),
(550, 2, '', 'Add Employee', NULL, '::1', '2025-03-30 23:44:10', 'Added new employee: Test8 Test8 Test8 (ID: 13)', 'Employee Management'),
(551, 11, '', 'Logout', NULL, '::1', '2025-03-30 23:44:16', 'User logged out successfully', 'Authentication'),
(552, 2, '', 'Add Employee', NULL, '::1', '2025-03-30 23:48:34', 'Added new employee: Test9 Test9 Test9 (ID: 14)', 'Employee Management'),
(553, 2, '', 'Add Employee', NULL, '::1', '2025-03-31 00:25:38', 'Added new employee: Test10 Test10 Test10 (ID: 15)', 'Employee Management'),
(554, 2, '', 'Logout', NULL, '::1', '2025-03-31 00:40:22', 'User logged out successfully', 'Authentication'),
(555, 14, '', 'Login', NULL, '::1', '2025-03-31 00:40:31', 'User logged in successfully', 'Authentication'),
(556, 14, '', 'Logout', NULL, '::1', '2025-03-31 00:40:57', 'User logged out successfully', 'Authentication'),
(557, 328, '', 'Login', NULL, '::1', '2025-03-31 00:42:15', 'User logged in successfully', 'Authentication'),
(558, 10, '', 'Submit P2P Evaluation', NULL, '::1', '2025-03-31 01:06:22', 'User Unknown Evaluator submitted peer-to-peer evaluation for teacher: Test7 Test7 (ID: 12)', 'Evaluation'),
(559, 14, '', 'Login', NULL, '::1', '2025-03-31 01:07:29', 'User logged in successfully', 'Authentication'),
(560, 14, '', 'Login', NULL, '::1', '2025-03-31 01:11:18', 'User logged in successfully', 'Authentication'),
(561, 14, '', 'Login', NULL, '::1', '2025-03-31 01:14:09', 'User logged in successfully', 'Authentication'),
(562, 14, '', 'Login', NULL, '::1', '2025-03-31 01:19:38', 'User logged in successfully', 'Authentication'),
(563, 14, '', 'Login', NULL, '::1', '2025-03-31 01:22:41', 'User logged in successfully', 'Authentication'),
(564, 14, '', 'Login', NULL, '::1', '2025-03-31 01:23:22', 'User logged in successfully', 'Authentication'),
(565, 10, '', 'Logout', NULL, '::1', '2025-03-31 01:33:44', 'User logged out successfully', 'Authentication'),
(566, 328, '', 'Logout', NULL, '::1', '2025-03-31 01:34:06', 'User logged out successfully', 'Authentication'),
(567, 2, '', 'Login', NULL, '::1', '2025-03-31 01:34:13', 'User logged in successfully', 'Authentication'),
(568, 11, '', 'Logout', NULL, '::1', '2025-03-31 01:34:37', 'User logged out successfully', 'Authentication'),
(569, 9, '', 'Logout', NULL, '::1', '2025-03-31 01:35:12', 'User logged out successfully', 'Authentication'),
(570, 9, '', 'Logout', NULL, '::1', '2025-03-31 01:35:12', 'User logged out successfully', 'Authentication'),
(571, 322, '', 'Login', NULL, '::1', '2025-03-31 01:37:03', 'User logged in successfully', 'Authentication'),
(572, 322, '', 'Join Class Failed', NULL, '::1', '2025-03-31 01:37:17', 'Student Amanda Taylor attempted to join already joined class: Unknown Subject with instructor: Test5 Test5 using code: ECON', 'Student Management'),
(573, 322, '', 'Join Class', NULL, '::1', '2025-03-31 01:37:54', 'Student Amanda Taylor joined class: IT101 - INTRODUCTION TO COMPUTING  with instructor: Test5 Test5 using code: UCJVRO', 'Student Management'),
(574, 322, '', 'Submit Evaluation', NULL, '::1', '2025-03-31 01:38:48', 'Student Amanda Taylor submitted evaluation for teacher: Test5 Test5 (ID: 10) on subject: IT101 - INTRODUCTION TO COMPUTING ', 'Evaluation'),
(575, 328, '', 'Login', NULL, '::1', '2025-04-01 00:41:04', 'User logged in successfully', 'Authentication'),
(576, 14, '', 'Login', NULL, '::1', '2025-04-01 00:41:56', 'User logged in successfully', 'Authentication'),
(577, 14, '', 'Login', NULL, '::1', '2025-04-01 00:42:31', 'User logged in successfully', 'Authentication'),
(578, 2, 'Admin User', 'Delete All Students', 'Removed all student accounts (14 in total)', '::1', '2025-04-01 06:44:13', '', ''),
(579, 2, '', 'Delete User', NULL, '::1', '2025-04-01 00:44:20', 'Deleted user: 1 1 (ID: 96)', 'User Management'),
(580, 2, '', 'Delete User', NULL, '::1', '2025-04-01 00:44:32', 'Deleted user: 111 111 (ID: 105)', 'User Management'),
(581, 2, '', 'Delete User', NULL, '::1', '2025-04-01 00:44:35', 'Deleted user: 12 12 (ID: 131)', 'User Management'),
(582, 2, '', 'Delete User', NULL, '::1', '2025-04-01 00:44:38', 'Deleted user: 2 2 (ID: 97)', 'User Management'),
(583, 2, '', 'Delete User', NULL, '::1', '2025-04-01 00:44:41', 'Deleted user: 22 22 (ID: 106)', 'User Management'),
(584, 2, '', 'Delete User', NULL, '::1', '2025-04-01 00:44:46', 'Deleted user: 3 3 (ID: 98)', 'User Management'),
(585, 2, '', 'Delete User', NULL, '::1', '2025-04-01 00:44:49', 'Deleted user: 4 4 (ID: 99)', 'User Management'),
(586, 2, '', 'Delete User', NULL, '::1', '2025-04-01 00:44:52', 'Deleted user: 5 5 (ID: 100)', 'User Management'),
(587, 2, '', 'Delete User', NULL, '::1', '2025-04-01 00:44:55', 'Deleted user: 6 6 (ID: 101)', 'User Management'),
(588, 2, '', 'Delete User', NULL, '::1', '2025-04-01 00:44:58', 'Deleted user: 7 7 (ID: 102)', 'User Management'),
(589, 2, '', 'Delete User', NULL, '::1', '2025-04-01 00:45:01', 'Deleted user: 8 8 (ID: 103)', 'User Management'),
(590, 2, '', 'Delete User', NULL, '::1', '2025-04-01 00:45:05', 'Deleted user: 9 9 (ID: 104)', 'User Management'),
(591, 2, '', 'Delete User', NULL, '::1', '2025-04-01 00:45:08', 'Deleted user: john Abner (ID: 95)', 'User Management'),
(592, 2, '', 'Delete User', NULL, '::1', '2025-04-01 00:45:11', 'Deleted user: doe doe (ID: 72)', 'User Management'),
(593, 2, '', 'Delete User', NULL, '::1', '2025-04-01 00:45:14', 'Deleted user: College Engineering (ID: 28)', 'User Management'),
(594, 2, '', 'Delete User', NULL, '::1', '2025-04-01 00:45:18', 'Deleted user: john garzon (ID: 94)', 'User Management'),
(595, 2, '', 'Delete User', NULL, '::1', '2025-04-01 00:45:23', 'Deleted user: user1 user1 (ID: 91)', 'User Management'),
(596, 2, '', 'Delete User', NULL, '::1', '2025-04-01 00:45:29', 'Deleted user: user2 user2 (ID: 92)', 'User Management'),
(597, 2, '', 'Delete User', NULL, '::1', '2025-04-01 00:45:36', 'Deleted user: test123 test123 (ID: 71)', 'User Management'),
(598, 2, '', 'Delete User', NULL, '::1', '2025-04-01 00:45:43', 'Deleted user: Renz Student (ID: 26)', 'User Management'),
(599, 2, '', 'Delete User', NULL, '::1', '2025-04-01 00:45:46', 'Deleted user: Reginald Prudente (ID: 15)', 'User Management'),
(600, 2, '', 'Delete User', NULL, '::1', '2025-04-01 00:45:49', 'Deleted user: Guidance Office I (ID: 12)', 'User Management'),
(601, 2, '', 'Delete User', NULL, '::1', '2025-04-01 00:45:52', 'Deleted user: Renz Lastimosa (ID: 30)', 'User Management'),
(602, 2, '', 'Delete User', NULL, '::1', '2025-04-01 00:45:55', 'Deleted user: info head (ID: 328)', 'User Management'),
(603, 2, '', 'Delete Faculty', NULL, '::1', '2025-04-01 00:46:31', 'Deleted faculty member: Test1 Test1 Test1 (ID: 6)', 'Employee Management'),
(604, 2, '', 'Delete Faculty', NULL, '::1', '2025-04-01 00:46:34', 'Deleted faculty member: Test2 Test2 Test2 (ID: 7)', 'Employee Management'),
(605, 2, '', 'Delete Faculty', NULL, '::1', '2025-04-01 00:46:38', 'Deleted faculty member: Test4 Test4 Test4 (ID: 9)', 'Employee Management'),
(606, 2, '', 'Delete Faculty', NULL, '::1', '2025-04-01 00:46:41', 'Deleted faculty member: Test5 Test5 Test5 (ID: 10)', 'Employee Management'),
(607, 2, '', 'Delete Faculty', NULL, '::1', '2025-04-01 00:46:44', 'Deleted faculty member: Test6 Test6 Test6 (ID: 11)', 'Employee Management'),
(608, 2, '', 'Delete Faculty', NULL, '::1', '2025-04-01 00:46:54', 'Deleted faculty member: test3 test3 test3 (ID: 8)', 'Employee Management'),
(609, 2, '', 'Delete Faculty', NULL, '::1', '2025-04-01 00:47:04', 'Deleted faculty member: Test10 Test10 Test10 (ID: 15)', 'Employee Management'),
(610, 2, '', 'Delete Faculty', NULL, '::1', '2025-04-01 00:47:07', 'Deleted faculty member: Test7 Test7 Test7 (ID: 12)', 'Employee Management'),
(611, 2, '', 'Delete Faculty', NULL, '::1', '2025-04-01 00:47:11', 'Deleted faculty member: Test8 Test8 Test8 (ID: 13)', 'Employee Management'),
(612, 2, '', 'Delete Faculty', NULL, '::1', '2025-04-01 00:47:13', 'Deleted faculty member: Test9 Test9 Test9 (ID: 14)', 'Employee Management'),
(613, 2, '', 'Deleted subject: 566YND - ask alsgas', NULL, NULL, '2025-04-01 01:01:28', '', ''),
(614, 2, '', 'Deleted subject: 566YNDwsa - asfasafs', NULL, NULL, '2025-04-01 01:01:35', '', ''),
(615, 2, '', 'Deleted subject: ACCTG 111 - ACCOUNTING FUNDAMENTALS', NULL, NULL, '2025-04-01 01:02:41', '', ''),
(616, 2, '', 'Deleted subject: AGR 201 - WEED MANAGEMENT', NULL, NULL, '2025-04-01 01:03:31', '', ''),
(617, 2, '', 'Deleted subject: asgas gasg - asfas', NULL, NULL, '2025-04-01 01:03:37', '', ''),
(618, 2, '', 'Deleted subject: edgagaga - sdgag', NULL, NULL, '2025-04-01 01:04:18', '', ''),
(619, 2, '', 'Deleted subject: IT 122 - COMPUTER PROGRAMMING 1', NULL, NULL, '2025-04-01 01:04:29', '', ''),
(620, 2, '', 'Deleted subject: IT 123 - PROGRAM', NULL, NULL, '2025-04-01 01:05:40', '', ''),
(621, 2, '', 'Deleted subject: IT 327 - APPLICATION DEVELOPMENT', NULL, NULL, '2025-04-01 01:05:45', '', ''),
(622, 2, '', 'Deleted subject: IT ELEC 4 - SYSTEM ARCHITECTURE AND INTEGRATION 2', NULL, NULL, '2025-04-01 01:05:50', '', ''),
(623, 2, '', 'Deleted subject: IT101 - INTRODUCTION TO COMPUTING ', NULL, NULL, '2025-04-01 01:05:57', '', ''),
(624, 2, '', 'Deleted subject: IT10112 - ev', NULL, NULL, '2025-04-01 01:06:02', '', ''),
(625, 2, '', 'Deleted subject: safasf12312 - qnskafas', NULL, NULL, '2025-04-01 01:06:07', '', ''),
(626, 2, '', 'Deleted subject: salkgbaslgk a - agasg', NULL, NULL, '2025-04-01 01:06:13', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `basic_info`
--

CREATE TABLE `basic_info` (
  `id` int(11) NOT NULL,
  `school_id` varchar(100) DEFAULT NULL,
  `dept_id` int(11) NOT NULL,
  `lastname` varchar(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `birthdate` varchar(255) NOT NULL,
  `photo_location` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL,
  `position` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL,
  `added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cat_name`, `added`) VALUES
(1, 'PLANNING AND LESSON IMPLEMENTATION', '2024-02-26 04:50:59'),
(2, 'CLASSROOM MANAGEMENT', '2024-02-26 04:51:59'),
(3, 'INTERPERSONAL SKILLS', '2024-02-26 04:52:59');

-- --------------------------------------------------------

--
-- Table structure for table `contact_information`
--

CREATE TABLE `contact_information` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile_number` varchar(255) NOT NULL,
  `address1` mediumtext NOT NULL,
  `address2` mediumtext NOT NULL,
  `municipality` mediumtext NOT NULL,
  `province` mediumtext NOT NULL,
  `zipcode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_information`
--

INSERT INTO `contact_information` (`id`, `email`, `mobile_number`, `address1`, `address2`, `municipality`, `province`, `zipcode`) VALUES
(1, 'laykusero@gmail.com', 'A', 'A', 'A', 'A', 'A', 123),
(2, 'gomez@gmail.com', 'A', 'A', 'A', 'A', 'A', 123),
(3, 'usero@gmail.com', 'A', 'A', 'A', 'A', 'A', 123),
(4, 'seait@seait-edu.ph', 'A', 'A', 'A', 'A', 'A', 123),
(5, 'seait@seait-edu.ph', 'A', 'A', 'A', 'A', 'A', 123);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `dept_name` varchar(255) NOT NULL,
  `added_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `dept_name`, `added_by`) VALUES
(15, 'College of  Information Technology', 2),
(16, 'College of Engineering ', 2),
(17, 'College of Social Works', 2);

-- --------------------------------------------------------

--
-- Table structure for table `employment_informations`
--

CREATE TABLE `employment_informations` (
  `id` int(11) NOT NULL,
  `date_of_hire` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `department` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employment_informations`
--

INSERT INTO `employment_informations` (`id`, `date_of_hire`, `position`, `department`) VALUES
(1, 'A', 'Faculty', 1),
(2, 'A', 'Faculty', 1),
(3, 'A', 'Faculty', 1),
(4, 'A', 'Faculty', 5),
(5, 'A', 'Faculty', 5);

-- --------------------------------------------------------

--
-- Table structure for table `emp_report`
--

CREATE TABLE `emp_report` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `date_of_report` varchar(255) NOT NULL,
  `details` mediumtext NOT NULL,
  `action` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `h2f_category`
--

CREATE TABLE `h2f_category` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL,
  `added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `h2f_category`
--

INSERT INTO `h2f_category` (`id`, `cat_name`, `added`) VALUES
(3, 'Quality of Work', '2024-04-16 14:47:29'),
(4, 'Attendance/Punctuality', '2024-04-16 14:47:52'),
(5, 'Interpersonal Relationship', '2024-04-16 14:48:33'),
(6, 'Attitude Towards Work', '2024-04-16 14:48:49');

-- --------------------------------------------------------

--
-- Table structure for table `h2f_evaluation`
--

CREATE TABLE `h2f_evaluation` (
  `id` int(11) NOT NULL,
  `acad_year` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `comment_course` mediumtext NOT NULL,
  `comment_instructor` mediumtext NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `evaluator_id` int(11) NOT NULL,
  `added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `h2f_evaluation`
--

INSERT INTO `h2f_evaluation` (`id`, `acad_year`, `subject_id`, `question_id`, `score`, `comment_course`, `comment_instructor`, `teacher_id`, `evaluator_id`, `added`) VALUES
(1, 3, 0, 3, 4, '-', 'None', 1, 15, '2024-04-17 13:04:14'),
(2, 3, 0, 4, 4, '-', 'None', 1, 15, '2024-04-17 13:04:14'),
(3, 3, 0, 5, 4, '-', 'None', 1, 15, '2024-04-17 13:04:14'),
(4, 3, 0, 6, 4, '-', 'None', 1, 15, '2024-04-17 13:04:14'),
(5, 3, 0, 7, 4, '-', 'None', 1, 15, '2024-04-17 13:04:14'),
(6, 3, 0, 8, 4, '-', 'None', 1, 15, '2024-04-17 13:04:14'),
(7, 3, 0, 9, 1, '-', 'None', 1, 15, '2024-04-17 13:04:14'),
(8, 3, 0, 10, 4, '-', 'None', 1, 15, '2024-04-17 13:04:14'),
(9, 3, 0, 11, 3, '-', 'None', 1, 15, '2024-04-17 13:04:14'),
(10, 3, 0, 12, 2, '-', 'None', 1, 15, '2024-04-17 13:04:14'),
(11, 3, 0, 13, 3, '-', 'None', 1, 15, '2024-04-17 13:04:14'),
(12, 3, 0, 14, 3, '-', 'None', 1, 15, '2024-04-17 13:04:14'),
(13, 3, 0, 15, 4, '-', 'None', 1, 15, '2024-04-17 13:04:14'),
(14, 3, 0, 16, 4, '-', 'None', 1, 15, '2024-04-17 13:04:14'),
(15, 3, 0, 17, 3, '-', 'None', 1, 15, '2024-04-17 13:04:14'),
(16, 3, 0, 18, 4, '-', 'None', 1, 15, '2024-04-17 13:04:14'),
(17, 3, 0, 19, 3, '-', 'None', 1, 15, '2024-04-17 13:04:14'),
(18, 3, 0, 20, 5, '-', 'None', 1, 15, '2024-04-17 13:04:14'),
(19, 3, 0, 21, 4, '-', 'None', 1, 15, '2024-04-17 13:04:14'),
(20, 3, 0, 22, 3, '-', 'None', 1, 15, '2024-04-17 13:04:14'),
(21, 3, 0, 23, 4, '-', 'None', 1, 15, '2024-04-17 13:04:14'),
(22, 3, 0, 24, 3, '-', 'None', 1, 15, '2024-04-17 13:04:14'),
(23, 3, 0, 26, 3, '-', 'None', 1, 15, '2024-04-17 13:04:14'),
(24, 9, 0, 3, 3, '-', 'askfnoasfqasfasf', 11, 328, '2025-03-29 11:27:27'),
(25, 9, 0, 4, 3, '-', 'askfnoasfqasfasf', 11, 328, '2025-03-29 11:27:27'),
(26, 9, 0, 5, 3, '-', 'askfnoasfqasfasf', 11, 328, '2025-03-29 11:27:27'),
(27, 9, 0, 6, 3, '-', 'askfnoasfqasfasf', 11, 328, '2025-03-29 11:27:27'),
(28, 9, 0, 7, 3, '-', 'askfnoasfqasfasf', 11, 328, '2025-03-29 11:27:27'),
(29, 9, 0, 8, 3, '-', 'askfnoasfqasfasf', 11, 328, '2025-03-29 11:27:27'),
(30, 9, 0, 9, 3, '-', 'askfnoasfqasfasf', 11, 328, '2025-03-29 11:27:27'),
(31, 9, 0, 10, 3, '-', 'askfnoasfqasfasf', 11, 328, '2025-03-29 11:27:27'),
(32, 9, 0, 11, 3, '-', 'askfnoasfqasfasf', 11, 328, '2025-03-29 11:27:27'),
(33, 9, 0, 12, 3, '-', 'askfnoasfqasfasf', 11, 328, '2025-03-29 11:27:27'),
(34, 9, 0, 13, 3, '-', 'askfnoasfqasfasf', 11, 328, '2025-03-29 11:27:27'),
(35, 9, 0, 14, 3, '-', 'askfnoasfqasfasf', 11, 328, '2025-03-29 11:27:27'),
(36, 9, 0, 15, 3, '-', 'askfnoasfqasfasf', 11, 328, '2025-03-29 11:27:27'),
(37, 9, 0, 16, 3, '-', 'askfnoasfqasfasf', 11, 328, '2025-03-29 11:27:27'),
(38, 9, 0, 17, 3, '-', 'askfnoasfqasfasf', 11, 328, '2025-03-29 11:27:27'),
(39, 9, 0, 18, 3, '-', 'askfnoasfqasfasf', 11, 328, '2025-03-29 11:27:27'),
(40, 9, 0, 19, 3, '-', 'askfnoasfqasfasf', 11, 328, '2025-03-29 11:27:27'),
(41, 9, 0, 20, 3, '-', 'askfnoasfqasfasf', 11, 328, '2025-03-29 11:27:27'),
(42, 9, 0, 21, 3, '-', 'askfnoasfqasfasf', 11, 328, '2025-03-29 11:27:27'),
(43, 9, 0, 23, 0, '-', 'askfnoasfqasfasf', 11, 328, '2025-03-29 11:27:27'),
(44, 9, 0, 24, 0, '-', 'askfnoasfqasfasf', 11, 328, '2025-03-29 11:27:27'),
(45, 9, 0, 26, 0, '-', 'askfnoasfqasfasf', 11, 328, '2025-03-29 11:27:27'),
(46, 9, 0, 3, 1, '-', 'asgagasag', 10, 328, '2025-03-29 11:52:41'),
(47, 9, 0, 4, 2, '-', 'asgagasag', 10, 328, '2025-03-29 11:52:41'),
(48, 9, 0, 5, 3, '-', 'asgagasag', 10, 328, '2025-03-29 11:52:41'),
(49, 9, 0, 6, 4, '-', 'asgagasag', 10, 328, '2025-03-29 11:52:41'),
(50, 9, 0, 7, 3, '-', 'asgagasag', 10, 328, '2025-03-29 11:52:41'),
(51, 9, 0, 8, 2, '-', 'asgagasag', 10, 328, '2025-03-29 11:52:41'),
(52, 9, 0, 9, 3, '-', 'asgagasag', 10, 328, '2025-03-29 11:52:41'),
(53, 9, 0, 10, 3, '-', 'asgagasag', 10, 328, '2025-03-29 11:52:41'),
(54, 9, 0, 11, 2, '-', 'asgagasag', 10, 328, '2025-03-29 11:52:41'),
(55, 9, 0, 12, 4, '-', 'asgagasag', 10, 328, '2025-03-29 11:52:41'),
(56, 9, 0, 13, 2, '-', 'asgagasag', 10, 328, '2025-03-29 11:52:41'),
(57, 9, 0, 14, 3, '-', 'asgagasag', 10, 328, '2025-03-29 11:52:41'),
(58, 9, 0, 15, 3, '-', 'asgagasag', 10, 328, '2025-03-29 11:52:41'),
(59, 9, 0, 16, 4, '-', 'asgagasag', 10, 328, '2025-03-29 11:52:41'),
(60, 9, 0, 17, 2, '-', 'asgagasag', 10, 328, '2025-03-29 11:52:41'),
(61, 9, 0, 18, 1, '-', 'asgagasag', 10, 328, '2025-03-29 11:52:41'),
(62, 9, 0, 19, 3, '-', 'asgagasag', 10, 328, '2025-03-29 11:52:41'),
(63, 9, 0, 20, 1, '-', 'asgagasag', 10, 328, '2025-03-29 11:52:41'),
(64, 9, 0, 21, 4, '-', 'asgagasag', 10, 328, '2025-03-29 11:52:41'),
(65, 9, 0, 23, 0, '-', 'asgagasag', 10, 328, '2025-03-29 11:52:41'),
(66, 9, 0, 24, 0, '-', 'asgagasag', 10, 328, '2025-03-29 11:52:41'),
(67, 9, 0, 26, 0, '-', 'asgagasag', 10, 328, '2025-03-29 11:52:41'),
(68, 9, 0, 3, 1, '-', 'apoasfa', 9, 328, '2025-03-29 14:06:33'),
(69, 9, 0, 4, 2, '-', 'apoasfa', 9, 328, '2025-03-29 14:06:33'),
(70, 9, 0, 5, 3, '-', 'apoasfa', 9, 328, '2025-03-29 14:06:33'),
(71, 9, 0, 6, 5, '-', 'apoasfa', 9, 328, '2025-03-29 14:06:33'),
(72, 9, 0, 7, 4, '-', 'apoasfa', 9, 328, '2025-03-29 14:06:33'),
(73, 9, 0, 8, 3, '-', 'apoasfa', 9, 328, '2025-03-29 14:06:33'),
(74, 9, 0, 9, 2, '-', 'apoasfa', 9, 328, '2025-03-29 14:06:33'),
(75, 9, 0, 10, 1, '-', 'apoasfa', 9, 328, '2025-03-29 14:06:33'),
(76, 9, 0, 11, 2, '-', 'apoasfa', 9, 328, '2025-03-29 14:06:33'),
(77, 9, 0, 12, 3, '-', 'apoasfa', 9, 328, '2025-03-29 14:06:33'),
(78, 9, 0, 13, 4, '-', 'apoasfa', 9, 328, '2025-03-29 14:06:33'),
(79, 9, 0, 14, 5, '-', 'apoasfa', 9, 328, '2025-03-29 14:06:33'),
(80, 9, 0, 15, 4, '-', 'apoasfa', 9, 328, '2025-03-29 14:06:33'),
(81, 9, 0, 16, 3, '-', 'apoasfa', 9, 328, '2025-03-29 14:06:33'),
(82, 9, 0, 17, 2, '-', 'apoasfa', 9, 328, '2025-03-29 14:06:33'),
(83, 9, 0, 18, 1, '-', 'apoasfa', 9, 328, '2025-03-29 14:06:33'),
(84, 9, 0, 19, 2, '-', 'apoasfa', 9, 328, '2025-03-29 14:06:33'),
(85, 9, 0, 20, 3, '-', 'apoasfa', 9, 328, '2025-03-29 14:06:33'),
(86, 9, 0, 21, 4, '-', 'apoasfa', 9, 328, '2025-03-29 14:06:34'),
(87, 9, 0, 23, 0, '-', 'apoasfa', 9, 328, '2025-03-29 14:06:34'),
(88, 9, 0, 24, 0, '-', 'apoasfa', 9, 328, '2025-03-29 14:06:34'),
(89, 9, 0, 26, 0, '-', 'apoasfa', 9, 328, '2025-03-29 14:06:34');

-- --------------------------------------------------------

--
-- Table structure for table `h2f_questionaires`
--

CREATE TABLE `h2f_questionaires` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `added` datetime NOT NULL DEFAULT current_timestamp(),
  `added_by` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `h2f_questionaires`
--

INSERT INTO `h2f_questionaires` (`id`, `cat_id`, `description`, `added`, `added_by`) VALUES
(3, 3, 'Works thoroughly and accurately.', '2024-04-16 22:50:00', 0),
(4, 3, 'Follow Instructions.', '2024-04-16 22:50:14', 0),
(5, 3, 'Shows Initiative.', '2024-04-16 22:50:27', 0),
(6, 3, 'Works with minimal supervision.', '2024-04-16 22:50:45', 0),
(7, 3, 'Finishes assigned tasks as scheduled.', '2024-04-16 22:51:10', 0),
(8, 3, 'Willing to perform extra assignment.', '2024-04-16 22:51:28', 0),
(9, 4, 'Reports to work on time.', '2024-04-16 22:52:12', 0),
(10, 4, 'Seldom incur tardiness.', '2024-04-16 22:52:29', 0),
(11, 4, 'Seldom incur absences.', '2024-04-16 22:52:48', 0),
(12, 4, 'Attends company activities.', '2024-04-16 22:53:06', 0),
(13, 5, 'Maintains harmonious relationship with colleagues.', '2024-04-16 22:53:48', 0),
(14, 5, 'Tolerates individual differences.', '2024-04-16 22:54:20', 0),
(15, 5, 'Relates well with colleagues.', '2024-04-16 22:54:39', 0),
(16, 6, 'Maintains healthy disposition while doing office duties.', '2024-04-16 22:55:12', 0),
(17, 6, 'Shows loyalty to the company.', '2024-04-16 22:55:31', 0),
(18, 6, 'Shoes dedication to the job.', '2024-04-16 22:55:58', 0),
(19, 6, 'Reports to work in appropriate attire.', '2024-04-16 22:56:41', 0),
(20, 6, 'Speaks and behaves according to discipline standards of propriety.', '2024-04-16 22:57:15', 0),
(21, 6, 'Maintains composure at all times.', '2024-04-16 22:57:33', 0),
(23, 0, 'Knowledge of the subject.', '2024-04-17 11:52:44', 15),
(24, 0, 'Preparation and Lesson Planning', '2024-04-17 11:53:23', 15),
(26, 0, 'Instructional Techniques', '2024-04-17 12:49:42', 15);

-- --------------------------------------------------------

--
-- Table structure for table `identifications`
--

CREATE TABLE `identifications` (
  `id` int(11) NOT NULL,
  `sss` varchar(255) NOT NULL,
  `phic` varchar(255) NOT NULL,
  `hdmf` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `identifications`
--

INSERT INTO `identifications` (`id`, `sss`, `phic`, `hdmf`) VALUES
(1, 'A', 'A', 'A'),
(2, 'A', 'A', 'A'),
(3, 'A', 'A', 'A'),
(4, 'A', 'A', 'A'),
(5, 'A', 'A', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `message` text NOT NULL,
  `added_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `status` enum('unread','read') DEFAULT 'unread'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `message`, `added_by`, `created_at`, `status`) VALUES
(1, '\'Admin User\' deleted student \'Juan Dela cruz\' from the system.', 'Admin User', '2024-11-29 23:45:58', 'read'),
(2, '\'Admin User\' added a new student \'John Smith\' to the system.', 'Admin User', '2024-11-29 23:46:33', 'read'),
(3, '\'Admin User\' added a new student \'Juan Dela cruz\' to the system.', 'Admin User', '2024-11-29 23:46:33', 'read'),
(4, '\'Admin User\' deleted student \'Juan Dela cruz\' from the system.', 'Admin User', '2024-11-29 23:46:38', 'read'),
(5, '\'Admin User\' deleted student \'John Smith\' from the system.', 'Admin User', '2024-11-29 23:46:41', 'read'),
(6, '\'Admin User\' added a new student \'John Smith\' to the system.', 'Admin User', '2024-11-29 23:46:54', 'read'),
(7, '\'Admin User\' added a new student \'Juan Dela cruz\' to the system.', 'Admin User', '2024-11-29 23:46:54', 'read'),
(8, 'A new Department Head user \'user1 user1\' has been added.', NULL, '2025-03-08 04:19:12', 'read'),
(9, 'A new Department Head user \'user2 user2\' has been added.', NULL, '2025-03-08 05:33:15', 'read'),
(10, 'A new Department Head user \'john john\' has been added.', NULL, '2025-03-08 05:34:20', 'read'),
(11, 'The evaluation period for 2025-2026 - First Semester has started. You can now submit your evaluations.', 'System', '2025-03-23 00:28:40', 'read'),
(12, 'The evaluation period for 2025-2026 - Second Semester has started. You can now submit your evaluations.', 'System', '2025-03-23 00:28:45', 'read'),
(13, 'The evaluation period for 2024-2025 - 1st Semester has started. You can now submit your evaluations.', 'System', '2025-03-23 03:29:07', 'read'),
(14, 'The evaluation period for 2024-2025 - 1st Semester has started. You can now submit your evaluations.', 'System', '2025-03-23 03:30:13', 'read'),
(15, 'The evaluation period for 2024-2025 - 1st Semester has started. You can now submit your evaluations.', 'System', '2025-03-24 04:09:47', 'read'),
(16, 'The evaluation period for 2024-2025 - 1st Semester has started. You can now submit your evaluations.', 'System', '2025-03-24 04:17:49', 'read'),
(17, 'The evaluation period for 2024-2025 - 1st Semester has started. You can now submit your evaluations.', 'System', '2025-03-24 04:17:50', 'read'),
(18, 'The evaluation period for 2024-2025 - 1st Semester has started. You can now submit your evaluations.', 'System', '2025-03-24 04:17:52', 'read'),
(19, 'REMINDER: The evaluation period for 2024-2025 - 1st Semester will end in 0 day(s). Please complete your evaluations.', 'System', '2025-03-29 05:09:40', 'read'),
(20, 'The evaluation period for 2024-2025 - 1st Semester has started. You can now submit your evaluations.', 'System', '2025-03-29 05:09:40', 'read'),
(21, 'The evaluation period for 2024-2025 - Second Semester has started. You can now submit your evaluations.', 'System', '2025-03-29 05:11:16', 'read'),
(22, 'REMINDER: The evaluation period for 2024-2025 - 1st Semester will end in 0 day(s). Please complete your evaluations.', 'System', '2025-03-29 05:26:45', 'read'),
(23, 'The evaluation period for 2024-2025 - 1st Semester has started. You can now submit your evaluations.', 'System', '2025-03-29 05:26:45', 'read'),
(24, 'The evaluation period for 2025-2026 - First Semester has started. You can now submit your evaluations.', 'System', '2025-03-29 05:37:34', 'read');

-- --------------------------------------------------------

--
-- Table structure for table `p2p_answers`
--

CREATE TABLE `p2p_answers` (
  `id` int(11) NOT NULL,
  `evaluation_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `answer_value` decimal(3,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `p2p_category`
--

CREATE TABLE `p2p_category` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL,
  `added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p2p_category`
--

INSERT INTO `p2p_category` (`id`, `cat_name`, `added`) VALUES
(9, 'COURSE', '2024-03-04 04:35:30'),
(11, 'CLASSROOM MANAGEMENT', '2025-03-14 08:08:18');

-- --------------------------------------------------------

--
-- Table structure for table `p2p_evaluation`
--

CREATE TABLE `p2p_evaluation` (
  `id` int(11) NOT NULL,
  `acad_year` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `comment_course` mediumtext NOT NULL,
  `comment_instructor` mediumtext NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `evaluator_id` int(11) NOT NULL,
  `added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p2p_evaluation`
--

INSERT INTO `p2p_evaluation` (`id`, `acad_year`, `subject_id`, `question_id`, `score`, `comment_course`, `comment_instructor`, `teacher_id`, `evaluator_id`, `added`) VALUES
(1, 3, 2, 22, 4, 'mango ka', 'mga mango', 2, 1, '2024-05-08 15:58:08'),
(2, 3, 2, 23, 3, 'mango ka', 'mga mango', 2, 1, '2024-05-08 15:58:08'),
(3, 3, 2, 24, 2, 'mango ka', 'mga mango', 2, 1, '2024-05-08 15:58:08'),
(4, 3, 2, 25, 2, 'mango ka', 'mga mango', 2, 1, '2024-05-08 15:58:08'),
(5, 3, 2, 26, 2, 'mango ka', 'mga mango', 2, 1, '2024-05-08 15:58:08'),
(6, 3, 2, 27, 2, 'mango ka', 'mga mango', 2, 1, '2024-05-08 15:58:08'),
(7, 3, 2, 28, 2, 'mango ka', 'mga mango', 2, 1, '2024-05-08 15:58:08'),
(8, 3, 2, 29, 2, 'mango ka', 'mga mango', 2, 1, '2024-05-08 15:58:08'),
(9, 3, 2, 30, 2, 'mango ka', 'mga mango', 2, 1, '2024-05-08 15:58:08'),
(10, 3, 2, 31, 2, 'mango ka', 'mga mango', 2, 1, '2024-05-08 15:58:08'),
(11, 3, 2, 32, 2, 'mango ka', 'mga mango', 2, 1, '2024-05-08 15:58:08'),
(12, 3, 2, 33, 2, 'mango ka', 'mga mango', 2, 1, '2024-05-08 15:58:08'),
(13, 3, 2, 34, 2, 'mango ka', 'mga mango', 2, 1, '2024-05-08 15:58:08'),
(14, 3, 2, 35, 3, 'mango ka', 'mga mango', 2, 1, '2024-05-08 15:58:08'),
(15, 3, 2, 36, 3, 'mango ka', 'mga mango', 2, 1, '2024-05-08 15:58:08'),
(16, 3, 2, 37, 3, 'mango ka', 'mga mango', 2, 1, '2024-05-08 15:58:08'),
(17, 3, 2, 38, 3, 'mango ka', 'mga mango', 2, 1, '2024-05-08 15:58:08'),
(18, 3, 2, 39, 3, 'mango ka', 'mga mango', 2, 1, '2024-05-08 15:58:08'),
(19, 11, 0, 22, 0, 'wsfasf', '', 12, 10, '2025-03-31 15:06:22'),
(20, 11, 0, 23, 0, 'wsfasf', '', 12, 10, '2025-03-31 15:06:22'),
(21, 11, 0, 24, 0, 'wsfasf', '', 12, 10, '2025-03-31 15:06:22'),
(22, 11, 0, 25, 0, 'wsfasf', '', 12, 10, '2025-03-31 15:06:22'),
(23, 11, 0, 26, 0, 'wsfasf', '', 12, 10, '2025-03-31 15:06:22'),
(24, 11, 0, 27, 0, 'wsfasf', '', 12, 10, '2025-03-31 15:06:22'),
(25, 11, 0, 28, 0, 'wsfasf', '', 12, 10, '2025-03-31 15:06:22'),
(26, 11, 0, 29, 0, 'wsfasf', '', 12, 10, '2025-03-31 15:06:22'),
(27, 11, 0, 30, 0, 'wsfasf', '', 12, 10, '2025-03-31 15:06:22'),
(28, 11, 0, 31, 0, 'wsfasf', '', 12, 10, '2025-03-31 15:06:22'),
(29, 11, 0, 32, 0, 'wsfasf', '', 12, 10, '2025-03-31 15:06:22'),
(30, 11, 0, 33, 0, 'wsfasf', '', 12, 10, '2025-03-31 15:06:22'),
(31, 11, 0, 34, 0, 'wsfasf', '', 12, 10, '2025-03-31 15:06:22'),
(32, 11, 0, 35, 1, 'wsfasf', '', 12, 10, '2025-03-31 15:06:22'),
(33, 11, 0, 36, 2, 'wsfasf', '', 12, 10, '2025-03-31 15:06:22'),
(34, 11, 0, 37, 3, 'wsfasf', '', 12, 10, '2025-03-31 15:06:22'),
(35, 11, 0, 38, 3, 'wsfasf', '', 12, 10, '2025-03-31 15:06:22'),
(36, 11, 0, 39, 4, 'wsfasf', '', 12, 10, '2025-03-31 15:06:22'),
(37, 11, 0, 40, 0, 'wsfasf', '', 12, 10, '2025-03-31 15:06:22'),
(38, 11, 0, 41, 0, 'wsfasf', '', 12, 10, '2025-03-31 15:06:22'),
(39, 11, 0, 42, 2, 'wsfasf', '', 12, 10, '2025-03-31 15:06:22'),
(40, 11, 0, 43, 3, 'wsfasf', '', 12, 10, '2025-03-31 15:06:22'),
(41, 11, 0, 44, 0, 'wsfasf', '', 12, 10, '2025-03-31 15:06:22'),
(42, 11, 0, 45, 3, 'wsfasf', '', 12, 10, '2025-03-31 15:06:22'),
(43, 11, 0, 46, 4, 'wsfasf', '', 12, 10, '2025-03-31 15:06:22'),
(44, 11, 0, 47, 4, 'wsfasf', '', 12, 10, '2025-03-31 15:06:22'),
(45, 11, 0, 48, 5, 'wsfasf', '', 12, 10, '2025-03-31 15:06:22'),
(46, 11, 0, 50, 0, 'wsfasf', '', 12, 10, '2025-03-31 15:06:22'),
(47, 11, 0, 51, 0, 'wsfasf', '', 12, 10, '2025-03-31 15:06:22'),
(48, 11, 0, 52, 0, 'wsfasf', '', 12, 10, '2025-03-31 15:06:22');

-- --------------------------------------------------------

--
-- Table structure for table `p2p_evaluation_result`
--

CREATE TABLE `p2p_evaluation_result` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `evaluator_id` int(11) NOT NULL,
  `evaluation_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `p2p_questionaires`
--

CREATE TABLE `p2p_questionaires` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p2p_questionaires`
--

INSERT INTO `p2p_questionaires` (`id`, `cat_id`, `description`, `added`) VALUES
(22, 10, 'The instructor is prepared for each class.', '2024-03-04 12:35:51'),
(23, 10, 'The instructor demonstrate knowledge of the subject.', '2024-03-04 12:36:22'),
(24, 10, 'The instructor has completed the whole course.', '2024-03-04 12:36:47'),
(25, 10, 'The instructor provides additional material apart from textbook.', '2024-03-04 12:37:31'),
(26, 10, 'The instructor gives citations regarding current situations.', '2024-03-04 12:38:16'),
(27, 10, 'The instructor communicates the subject matter effectively.', '2024-03-04 12:38:57'),
(28, 10, 'The instructor shows respect towards students and encourages class participation.', '2024-03-04 12:39:35'),
(29, 10, 'The instructor maintains an environment that is conductive to learning.', '2024-03-04 12:40:31'),
(30, 10, 'The instructor arrives on time.', '2024-03-04 12:41:01'),
(31, 10, 'The instructor leaves on time.', '2024-03-04 12:41:23'),
(32, 10, 'The instructor is fair in examination.\r\n', '2024-03-04 12:41:53'),
(33, 10, 'The instructor returns the quizzes, examinations, etc. in a reasonable amount of time.', '2024-03-04 12:43:07'),
(34, 10, 'The instructor was available during the specified office hours for consultations.', '2024-03-04 12:43:51'),
(35, 9, 'The subject matter presented in the course has increased your knowledge of the subject.', '2024-03-04 12:44:46'),
(36, 9, 'The syllabus clearly states course objectives, requirements, procedures and grading criteria.', '2024-03-04 12:46:25'),
(37, 9, 'The course integrates theoretical course concepts with real-world applications.', '2024-03-04 12:47:34'),
(38, 9, 'The assignments and exams covered the materials presented in the course.', '2024-03-04 12:48:18'),
(39, 9, 'The course material is modern and updated.', '2024-03-04 12:48:50'),
(40, 10, '124o1rjfqaoi', '2025-03-14 11:35:02'),
(41, 10, 'safknqeobvqoav', '2025-03-14 16:06:50'),
(42, 11, 'aslfjhkawhvscakscv', '2025-03-14 16:14:44'),
(43, 11, 'qkwnflasm\';qasl\'f;asf', '2025-03-14 16:53:24'),
(44, 10, 'egdavknlkanZCa\r\n', '2025-03-14 16:54:50'),
(45, 9, 'asfnaslknca;\r\n', '2025-03-14 16:55:37'),
(46, 9, 'asfbn;asnca;s', '2025-03-14 16:57:59'),
(47, 9, ';ekna;cm\'casfc', '2025-03-14 16:59:55'),
(48, 9, 'knflanfasnf;amfas\r\n', '2025-03-16 08:40:51'),
(50, 0, 'aklsnfalsf', '2025-03-16 08:45:48'),
(51, 0, 'alknfalsf', '2025-03-16 08:49:55'),
(52, 0, 'asfas', '2025-03-23 08:18:51');

-- --------------------------------------------------------

--
-- Table structure for table `questionaires`
--

CREATE TABLE `questionaires` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questionaires`
--

INSERT INTO `questionaires` (`id`, `cat_id`, `description`, `added`) VALUES
(1, 1, 'The course objectives were explained clearly at the beginning of the course.  ', '2024-02-26 12:55:04'),
(2, 1, 'The instructor organized course material effectively.', '2024-02-26 12:59:01'),
(3, 2, 'The instructor starts the class on time and ends on time.', '2024-02-26 12:59:39'),
(4, 1, 'The grading criteria were explained clearly at the beginning of the course.', '2024-03-01 09:32:31'),
(5, 1, 'The instructor explains exactly what is expected from students-this includes modules, quizzes, exams, and class participation.', '2024-03-01 09:33:32'),
(6, 1, 'The instructor provided appropriate feedback about your output throughout the course.', '2024-03-01 09:34:45'),
(7, 1, 'The instructor gives additional references to understand the topics discussed in class.', '2024-03-01 09:35:33'),
(8, 1, 'The instructor maximizes student involvement and constructive interaction are apparent throughout the period.', '2024-03-01 09:36:48'),
(9, 2, 'The instructor demonstrated interest and enthusiasm in the subject.', '2024-03-03 10:07:50'),
(10, 2, 'The instructor encourages students to analyze ideas and to think critically.', '2024-03-03 10:09:19'),
(11, 2, 'The instructor encouraged questions and discussion when appropriate.', '2024-03-03 10:11:07'),
(13, 2, 'The instructor advises students as to how to prepare for the exams or quizzes.', '2024-03-03 10:13:52'),
(14, 2, 'The instructor reminds students of test dates and assignment deadlines.', '2024-03-03 10:15:07'),
(15, 2, 'The instructor announce availability for consultation.', '2024-03-03 10:16:49'),
(16, 2, 'The instructor offers to help students with their problems regarding their subjects.', '2024-03-03 10:18:46'),
(17, 2, 'The instructor responds appropriately to student inquiries.', '2024-03-03 10:20:15'),
(18, 3, 'The instructor projects genuine concern, and interest in the needs of students.', '2024-03-03 10:22:00'),
(19, 3, 'The instructor displays maturity and humility in dealing with one is shortcoming and indifference towards the students.', '2024-03-03 10:27:44'),
(20, 3, 'The instructor provides encouragement and proper motivation.', '2024-03-03 10:28:42'),
(21, 3, 'The instructor projects confidence at all times.', '2024-03-03 10:29:30'),
(22, 2, 'Works thoroughly and accurately.', '2024-04-16 22:35:17'),
(23, 1, 'Add', '2025-03-20 17:57:36');

-- --------------------------------------------------------

--
-- Table structure for table `step_users`
--

CREATE TABLE `step_users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `school_id` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `usertype` int(11) DEFAULT NULL,
  `dept` int(11) DEFAULT 0,
  `added` datetime NOT NULL DEFAULT current_timestamp(),
  `year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `step_users`
--

INSERT INTO `step_users` (`id`, `email`, `password`, `school_id`, `lastname`, `firstname`, `usertype`, `dept`, `added`, `year`) VALUES
(2, 'admin@admin.com', 'f8894d2c589ac837633c4ade8665980a', '1234', 'User', 'Admin', 1, 0, '2024-02-28 00:37:55', 0),
(14, 'hr@gmail.com', 'f8894d2c589ac837633c4ade8665980a', '0001', 'H ', 'Mario', 2, 0, '2024-03-05 17:54:16', 0);

-- --------------------------------------------------------

--
-- Table structure for table `student_evaluation`
--

CREATE TABLE `student_evaluation` (
  `id` int(11) NOT NULL,
  `acad_year` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `comment` mediumtext NOT NULL,
  `subject_load_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_evaluation`
--

INSERT INTO `student_evaluation` (`id`, `acad_year`, `question_id`, `score`, `comment`, `subject_load_id`, `teacher_id`, `student_id`, `subject_id`, `added`) VALUES
(1, 3, 1, 1, 'asdasdasdasd', 0, 4, 36, 0, '2024-05-09 15:33:24'),
(2, 3, 2, 1, 'asdasdasdasd', 0, 4, 36, 0, '2024-05-09 15:33:24'),
(3, 3, 3, 1, 'asdasdasdasd', 0, 4, 36, 0, '2024-05-09 15:33:24'),
(4, 3, 4, 1, 'asdasdasdasd', 0, 4, 36, 0, '2024-05-09 15:33:24'),
(5, 3, 5, 1, 'asdasdasdasd', 0, 4, 36, 0, '2024-05-09 15:33:24'),
(6, 3, 6, 1, 'asdasdasdasd', 0, 4, 36, 0, '2024-05-09 15:33:24'),
(7, 3, 7, 1, 'asdasdasdasd', 0, 4, 36, 0, '2024-05-09 15:33:24'),
(8, 3, 8, 1, 'asdasdasdasd', 0, 4, 36, 0, '2024-05-09 15:33:24'),
(9, 3, 9, 1, 'asdasdasdasd', 0, 4, 36, 0, '2024-05-09 15:33:24'),
(10, 3, 10, 1, 'asdasdasdasd', 0, 4, 36, 0, '2024-05-09 15:33:24'),
(11, 3, 11, 1, 'asdasdasdasd', 0, 4, 36, 0, '2024-05-09 15:33:24'),
(12, 3, 13, 1, 'asdasdasdasd', 0, 4, 36, 0, '2024-05-09 15:33:24'),
(13, 3, 14, 1, 'asdasdasdasd', 0, 4, 36, 0, '2024-05-09 15:33:24'),
(14, 3, 15, 1, 'asdasdasdasd', 0, 4, 36, 0, '2024-05-09 15:33:24'),
(15, 3, 16, 1, 'asdasdasdasd', 0, 4, 36, 0, '2024-05-09 15:33:24'),
(16, 3, 17, 1, 'asdasdasdasd', 0, 4, 36, 0, '2024-05-09 15:33:24'),
(17, 3, 18, 1, 'asdasdasdasd', 0, 4, 36, 0, '2024-05-09 15:33:24'),
(18, 3, 19, 1, 'asdasdasdasd', 0, 4, 36, 0, '2024-05-09 15:33:24'),
(19, 3, 20, 1, 'asdasdasdasd', 0, 4, 36, 0, '2024-05-09 15:33:24'),
(20, 3, 21, 1, 'asdasdasdasd', 0, 4, 36, 0, '2024-05-09 15:33:24'),
(21, 3, 22, 1, 'asdasdasdasd', 0, 4, 36, 0, '2024-05-09 15:33:24'),
(22, 3, 1, 2, 'agayka', 0, 4, 37, 0, '2024-05-09 15:37:50'),
(23, 3, 2, 3, 'agayka', 0, 4, 37, 0, '2024-05-09 15:37:50'),
(24, 3, 3, 2, 'agayka', 0, 4, 37, 0, '2024-05-09 15:37:50'),
(25, 3, 4, 3, 'agayka', 0, 4, 37, 0, '2024-05-09 15:37:50'),
(26, 3, 5, 3, 'agayka', 0, 4, 37, 0, '2024-05-09 15:37:50'),
(27, 3, 6, 3, 'agayka', 0, 4, 37, 0, '2024-05-09 15:37:50'),
(28, 3, 7, 3, 'agayka', 0, 4, 37, 0, '2024-05-09 15:37:50'),
(29, 3, 8, 3, 'agayka', 0, 4, 37, 0, '2024-05-09 15:37:50'),
(30, 3, 9, 3, 'agayka', 0, 4, 37, 0, '2024-05-09 15:37:50'),
(31, 3, 10, 3, 'agayka', 0, 4, 37, 0, '2024-05-09 15:37:50'),
(32, 3, 11, 3, 'agayka', 0, 4, 37, 0, '2024-05-09 15:37:50'),
(33, 3, 13, 2, 'agayka', 0, 4, 37, 0, '2024-05-09 15:37:50'),
(34, 3, 14, 2, 'agayka', 0, 4, 37, 0, '2024-05-09 15:37:50'),
(35, 3, 15, 2, 'agayka', 0, 4, 37, 0, '2024-05-09 15:37:50'),
(36, 3, 16, 3, 'agayka', 0, 4, 37, 0, '2024-05-09 15:37:50'),
(37, 3, 17, 3, 'agayka', 0, 4, 37, 0, '2024-05-09 15:37:50'),
(38, 3, 18, 2, 'agayka', 0, 4, 37, 0, '2024-05-09 15:37:50'),
(39, 3, 19, 2, 'agayka', 0, 4, 37, 0, '2024-05-09 15:37:50'),
(40, 3, 20, 3, 'agayka', 0, 4, 37, 0, '2024-05-09 15:37:50'),
(41, 3, 21, 3, 'agayka', 0, 4, 37, 0, '2024-05-09 15:37:50'),
(42, 3, 22, 3, 'agayka', 0, 4, 37, 0, '2024-05-09 15:37:50'),
(43, 3, 1, 1, 'student commentsdasd', 0, 4, 38, 0, '2024-05-09 15:41:38'),
(44, 3, 2, 2, 'student commentsdasd', 0, 4, 38, 0, '2024-05-09 15:41:38'),
(45, 3, 3, 4, 'student commentsdasd', 0, 4, 38, 0, '2024-05-09 15:41:38'),
(46, 3, 4, 2, 'student commentsdasd', 0, 4, 38, 0, '2024-05-09 15:41:38'),
(47, 3, 5, 2, 'student commentsdasd', 0, 4, 38, 0, '2024-05-09 15:41:38'),
(48, 3, 6, 2, 'student commentsdasd', 0, 4, 38, 0, '2024-05-09 15:41:38'),
(49, 3, 7, 2, 'student commentsdasd', 0, 4, 38, 0, '2024-05-09 15:41:38'),
(50, 3, 8, 3, 'student commentsdasd', 0, 4, 38, 0, '2024-05-09 15:41:38'),
(51, 3, 9, 4, 'student commentsdasd', 0, 4, 38, 0, '2024-05-09 15:41:38'),
(52, 3, 10, 4, 'student commentsdasd', 0, 4, 38, 0, '2024-05-09 15:41:38'),
(53, 3, 11, 3, 'student commentsdasd', 0, 4, 38, 0, '2024-05-09 15:41:38'),
(54, 3, 13, 3, 'student commentsdasd', 0, 4, 38, 0, '2024-05-09 15:41:38'),
(55, 3, 14, 3, 'student commentsdasd', 0, 4, 38, 0, '2024-05-09 15:41:38'),
(56, 3, 15, 3, 'student commentsdasd', 0, 4, 38, 0, '2024-05-09 15:41:38'),
(57, 3, 16, 2, 'student commentsdasd', 0, 4, 38, 0, '2024-05-09 15:41:38'),
(58, 3, 17, 1, 'student commentsdasd', 0, 4, 38, 0, '2024-05-09 15:41:38'),
(59, 3, 18, 1, 'student commentsdasd', 0, 4, 38, 0, '2024-05-09 15:41:38'),
(60, 3, 19, 1, 'student commentsdasd', 0, 4, 38, 0, '2024-05-09 15:41:38'),
(61, 3, 20, 2, 'student commentsdasd', 0, 4, 38, 0, '2024-05-09 15:41:38'),
(62, 3, 21, 2, 'student commentsdasd', 0, 4, 38, 0, '2024-05-09 15:41:38'),
(63, 3, 22, 1, 'student commentsdasd', 0, 4, 38, 0, '2024-05-09 15:41:38'),
(64, 3, 1, 1, 'asdgvgfgtwsgfyugfdyuad!!!!!!!!!!', 0, 4, 40, 0, '2024-06-10 17:13:36'),
(65, 3, 2, 1, 'asdgvgfgtwsgfyugfdyuad!!!!!!!!!!', 0, 4, 40, 0, '2024-06-10 17:13:36'),
(66, 3, 3, 1, 'asdgvgfgtwsgfyugfdyuad!!!!!!!!!!', 0, 4, 40, 0, '2024-06-10 17:13:36'),
(67, 3, 4, 1, 'asdgvgfgtwsgfyugfdyuad!!!!!!!!!!', 0, 4, 40, 0, '2024-06-10 17:13:36'),
(68, 3, 5, 1, 'asdgvgfgtwsgfyugfdyuad!!!!!!!!!!', 0, 4, 40, 0, '2024-06-10 17:13:36'),
(69, 3, 6, 1, 'asdgvgfgtwsgfyugfdyuad!!!!!!!!!!', 0, 4, 40, 0, '2024-06-10 17:13:36'),
(70, 3, 7, 1, 'asdgvgfgtwsgfyugfdyuad!!!!!!!!!!', 0, 4, 40, 0, '2024-06-10 17:13:36'),
(71, 3, 8, 1, 'asdgvgfgtwsgfyugfdyuad!!!!!!!!!!', 0, 4, 40, 0, '2024-06-10 17:13:36'),
(72, 3, 9, 1, 'asdgvgfgtwsgfyugfdyuad!!!!!!!!!!', 0, 4, 40, 0, '2024-06-10 17:13:36'),
(73, 3, 10, 1, 'asdgvgfgtwsgfyugfdyuad!!!!!!!!!!', 0, 4, 40, 0, '2024-06-10 17:13:36'),
(74, 3, 11, 1, 'asdgvgfgtwsgfyugfdyuad!!!!!!!!!!', 0, 4, 40, 0, '2024-06-10 17:13:36'),
(75, 3, 13, 1, 'asdgvgfgtwsgfyugfdyuad!!!!!!!!!!', 0, 4, 40, 0, '2024-06-10 17:13:36'),
(76, 3, 14, 1, 'asdgvgfgtwsgfyugfdyuad!!!!!!!!!!', 0, 4, 40, 0, '2024-06-10 17:13:36'),
(77, 3, 15, 1, 'asdgvgfgtwsgfyugfdyuad!!!!!!!!!!', 0, 4, 40, 0, '2024-06-10 17:13:36'),
(78, 3, 16, 1, 'asdgvgfgtwsgfyugfdyuad!!!!!!!!!!', 0, 4, 40, 0, '2024-06-10 17:13:36'),
(79, 3, 17, 1, 'asdgvgfgtwsgfyugfdyuad!!!!!!!!!!', 0, 4, 40, 0, '2024-06-10 17:13:36'),
(80, 3, 18, 1, 'asdgvgfgtwsgfyugfdyuad!!!!!!!!!!', 0, 4, 40, 0, '2024-06-10 17:13:36'),
(81, 3, 19, 1, 'asdgvgfgtwsgfyugfdyuad!!!!!!!!!!', 0, 4, 40, 0, '2024-06-10 17:13:36'),
(82, 3, 20, 1, 'asdgvgfgtwsgfyugfdyuad!!!!!!!!!!', 0, 4, 40, 0, '2024-06-10 17:13:36'),
(83, 3, 21, 1, 'asdgvgfgtwsgfyugfdyuad!!!!!!!!!!', 0, 4, 40, 0, '2024-06-10 17:13:36'),
(84, 3, 22, 1, 'asdgvgfgtwsgfyugfdyuad!!!!!!!!!!', 0, 4, 40, 0, '2024-06-10 17:13:36'),
(85, 7, 1, 2, 'wlk;masca', 0, 4, 39, 0, '2025-03-16 09:23:26'),
(86, 7, 2, 3, 'wlk;masca', 0, 4, 39, 0, '2025-03-16 09:23:26'),
(87, 7, 3, 1, 'wlk;masca', 0, 4, 39, 0, '2025-03-16 09:23:26'),
(88, 7, 4, 1, 'wlk;masca', 0, 4, 39, 0, '2025-03-16 09:23:26'),
(89, 7, 5, 1, 'wlk;masca', 0, 4, 39, 0, '2025-03-16 09:23:26'),
(90, 7, 6, 1, 'wlk;masca', 0, 4, 39, 0, '2025-03-16 09:23:26'),
(91, 7, 7, 3, 'wlk;masca', 0, 4, 39, 0, '2025-03-16 09:23:26'),
(92, 7, 8, 1, 'wlk;masca', 0, 4, 39, 0, '2025-03-16 09:23:26'),
(93, 7, 9, 3, 'wlk;masca', 0, 4, 39, 0, '2025-03-16 09:23:26'),
(94, 7, 10, 1, 'wlk;masca', 0, 4, 39, 0, '2025-03-16 09:23:26'),
(95, 7, 11, 1, 'wlk;masca', 0, 4, 39, 0, '2025-03-16 09:23:26'),
(96, 7, 13, 1, 'wlk;masca', 0, 4, 39, 0, '2025-03-16 09:23:26'),
(97, 7, 14, 1, 'wlk;masca', 0, 4, 39, 0, '2025-03-16 09:23:26'),
(98, 7, 15, 1, 'wlk;masca', 0, 4, 39, 0, '2025-03-16 09:23:26'),
(99, 7, 16, 1, 'wlk;masca', 0, 4, 39, 0, '2025-03-16 09:23:26'),
(100, 7, 17, 1, 'wlk;masca', 0, 4, 39, 0, '2025-03-16 09:23:26'),
(101, 7, 18, 1, 'wlk;masca', 0, 4, 39, 0, '2025-03-16 09:23:26'),
(102, 7, 19, 1, 'wlk;masca', 0, 4, 39, 0, '2025-03-16 09:23:26'),
(103, 7, 20, 1, 'wlk;masca', 0, 4, 39, 0, '2025-03-16 09:23:26'),
(104, 7, 21, 1, 'wlk;masca', 0, 4, 39, 0, '2025-03-16 09:23:26'),
(105, 7, 22, 1, 'wlk;masca', 0, 4, 39, 0, '2025-03-16 09:23:26'),
(106, 9, 1, 1, 'asgasg', 0, 4, 327, 0, '2025-03-23 12:20:07'),
(107, 9, 2, 3, 'asgasg', 0, 4, 327, 0, '2025-03-23 12:20:07'),
(108, 9, 3, 3, 'asgasg', 0, 4, 327, 0, '2025-03-23 12:20:07'),
(109, 9, 4, 2, 'asgasg', 0, 4, 327, 0, '2025-03-23 12:20:07'),
(110, 9, 5, 4, 'asgasg', 0, 4, 327, 0, '2025-03-23 12:20:07'),
(111, 9, 6, 3, 'asgasg', 0, 4, 327, 0, '2025-03-23 12:20:07'),
(112, 9, 7, 2, 'asgasg', 0, 4, 327, 0, '2025-03-23 12:20:07'),
(113, 9, 8, 2, 'asgasg', 0, 4, 327, 0, '2025-03-23 12:20:07'),
(114, 9, 9, 2, 'asgasg', 0, 4, 327, 0, '2025-03-23 12:20:07'),
(115, 9, 10, 3, 'asgasg', 0, 4, 327, 0, '2025-03-23 12:20:07'),
(116, 9, 11, 2, 'asgasg', 0, 4, 327, 0, '2025-03-23 12:20:07'),
(117, 9, 13, 3, 'asgasg', 0, 4, 327, 0, '2025-03-23 12:20:07'),
(118, 9, 14, 2, 'asgasg', 0, 4, 327, 0, '2025-03-23 12:20:07'),
(119, 9, 15, 3, 'asgasg', 0, 4, 327, 0, '2025-03-23 12:20:07'),
(120, 9, 16, 2, 'asgasg', 0, 4, 327, 0, '2025-03-23 12:20:07'),
(121, 9, 17, 3, 'asgasg', 0, 4, 327, 0, '2025-03-23 12:20:07'),
(122, 9, 18, 2, 'asgasg', 0, 4, 327, 0, '2025-03-23 12:20:07'),
(123, 9, 19, 2, 'asgasg', 0, 4, 327, 0, '2025-03-23 12:20:07'),
(124, 9, 20, 3, 'asgasg', 0, 4, 327, 0, '2025-03-23 12:20:07'),
(125, 9, 21, 2, 'asgasg', 0, 4, 327, 0, '2025-03-23 12:20:07'),
(126, 9, 22, 2, 'asgasg', 0, 4, 327, 0, '2025-03-23 12:20:07'),
(127, 9, 23, 2, 'asgasg', 0, 4, 327, 0, '2025-03-23 12:20:07'),
(128, 9, 1, 1, 'wasflaosnkflamsfas', 9, 6, 322, 6, '2025-03-24 15:32:35'),
(129, 9, 2, 2, 'wasflaosnkflamsfas', 9, 6, 322, 6, '2025-03-24 15:32:35'),
(130, 9, 3, 3, 'wasflaosnkflamsfas', 9, 6, 322, 6, '2025-03-24 15:32:35'),
(131, 9, 4, 3, 'wasflaosnkflamsfas', 9, 6, 322, 6, '2025-03-24 15:32:35'),
(132, 9, 5, 3, 'wasflaosnkflamsfas', 9, 6, 322, 6, '2025-03-24 15:32:35'),
(133, 9, 6, 3, 'wasflaosnkflamsfas', 9, 6, 322, 6, '2025-03-24 15:32:35'),
(134, 9, 7, 3, 'wasflaosnkflamsfas', 9, 6, 322, 6, '2025-03-24 15:32:35'),
(135, 9, 8, 1, 'wasflaosnkflamsfas', 9, 6, 322, 6, '2025-03-24 15:32:35'),
(136, 9, 9, 3, 'wasflaosnkflamsfas', 9, 6, 322, 6, '2025-03-24 15:32:35'),
(137, 9, 10, 4, 'wasflaosnkflamsfas', 9, 6, 322, 6, '2025-03-24 15:32:35'),
(138, 9, 11, 3, 'wasflaosnkflamsfas', 9, 6, 322, 6, '2025-03-24 15:32:35'),
(139, 9, 13, 2, 'wasflaosnkflamsfas', 9, 6, 322, 6, '2025-03-24 15:32:35'),
(140, 9, 14, 4, 'wasflaosnkflamsfas', 9, 6, 322, 6, '2025-03-24 15:32:35'),
(141, 9, 15, 2, 'wasflaosnkflamsfas', 9, 6, 322, 6, '2025-03-24 15:32:35'),
(142, 9, 16, 4, 'wasflaosnkflamsfas', 9, 6, 322, 6, '2025-03-24 15:32:35'),
(143, 9, 17, 1, 'wasflaosnkflamsfas', 9, 6, 322, 6, '2025-03-24 15:32:35'),
(144, 9, 18, 4, 'wasflaosnkflamsfas', 9, 6, 322, 6, '2025-03-24 15:32:35'),
(145, 9, 19, 2, 'wasflaosnkflamsfas', 9, 6, 322, 6, '2025-03-24 15:32:35'),
(146, 9, 20, 2, 'wasflaosnkflamsfas', 9, 6, 322, 6, '2025-03-24 15:32:35'),
(147, 9, 21, 1, 'wasflaosnkflamsfas', 9, 6, 322, 6, '2025-03-24 15:32:35'),
(148, 9, 22, 2, 'wasflaosnkflamsfas', 9, 6, 322, 6, '2025-03-24 15:32:35'),
(149, 9, 23, 3, 'wasflaosnkflamsfas', 9, 6, 322, 6, '2025-03-24 15:32:35'),
(150, 9, 1, 1, 'TEST4', 11, 9, 322, 5, '2025-03-25 14:09:33'),
(151, 9, 2, 3, 'TEST4', 11, 9, 322, 5, '2025-03-25 14:09:33'),
(152, 9, 3, 2, 'TEST4', 11, 9, 322, 5, '2025-03-25 14:09:33'),
(153, 9, 4, 2, 'TEST4', 11, 9, 322, 5, '2025-03-25 14:09:33'),
(154, 9, 5, 4, 'TEST4', 11, 9, 322, 5, '2025-03-25 14:09:33'),
(155, 9, 6, 3, 'TEST4', 11, 9, 322, 5, '2025-03-25 14:09:33'),
(156, 9, 7, 1, 'TEST4', 11, 9, 322, 5, '2025-03-25 14:09:33'),
(157, 9, 8, 3, 'TEST4', 11, 9, 322, 5, '2025-03-25 14:09:33'),
(158, 9, 9, 1, 'TEST4', 11, 9, 322, 5, '2025-03-25 14:09:33'),
(159, 9, 10, 1, 'TEST4', 11, 9, 322, 5, '2025-03-25 14:09:33'),
(160, 9, 11, 2, 'TEST4', 11, 9, 322, 5, '2025-03-25 14:09:33'),
(161, 9, 13, 1, 'TEST4', 11, 9, 322, 5, '2025-03-25 14:09:33'),
(162, 9, 14, 1, 'TEST4', 11, 9, 322, 5, '2025-03-25 14:09:33'),
(163, 9, 15, 1, 'TEST4', 11, 9, 322, 5, '2025-03-25 14:09:33'),
(164, 9, 16, 1, 'TEST4', 11, 9, 322, 5, '2025-03-25 14:09:33'),
(165, 9, 17, 1, 'TEST4', 11, 9, 322, 5, '2025-03-25 14:09:33'),
(166, 9, 18, 2, 'TEST4', 11, 9, 322, 5, '2025-03-25 14:09:33'),
(167, 9, 19, 3, 'TEST4', 11, 9, 322, 5, '2025-03-25 14:09:33'),
(168, 9, 20, 1, 'TEST4', 11, 9, 322, 5, '2025-03-25 14:09:33'),
(169, 9, 21, 2, 'TEST4', 11, 9, 322, 5, '2025-03-25 14:09:33'),
(170, 9, 22, 2, 'TEST4', 11, 9, 322, 5, '2025-03-25 14:09:33'),
(171, 9, 23, 1, 'TEST4', 11, 9, 322, 5, '2025-03-25 14:09:33'),
(172, 9, 1, 1, 'TEST4', 11, 9, 321, 5, '2025-03-25 14:22:03'),
(173, 9, 2, 2, 'TEST4', 11, 9, 321, 5, '2025-03-25 14:22:03'),
(174, 9, 3, 3, 'TEST4', 11, 9, 321, 5, '2025-03-25 14:22:03'),
(175, 9, 4, 2, 'TEST4', 11, 9, 321, 5, '2025-03-25 14:22:03'),
(176, 9, 5, 1, 'TEST4', 11, 9, 321, 5, '2025-03-25 14:22:03'),
(177, 9, 6, 2, 'TEST4', 11, 9, 321, 5, '2025-03-25 14:22:03'),
(178, 9, 7, 3, 'TEST4', 11, 9, 321, 5, '2025-03-25 14:22:03'),
(179, 9, 8, 2, 'TEST4', 11, 9, 321, 5, '2025-03-25 14:22:03'),
(180, 9, 9, 1, 'TEST4', 11, 9, 321, 5, '2025-03-25 14:22:03'),
(181, 9, 10, 2, 'TEST4', 11, 9, 321, 5, '2025-03-25 14:22:03'),
(182, 9, 11, 3, 'TEST4', 11, 9, 321, 5, '2025-03-25 14:22:03'),
(183, 9, 13, 2, 'TEST4', 11, 9, 321, 5, '2025-03-25 14:22:03'),
(184, 9, 14, 3, 'TEST4', 11, 9, 321, 5, '2025-03-25 14:22:03'),
(185, 9, 15, 2, 'TEST4', 11, 9, 321, 5, '2025-03-25 14:22:03'),
(186, 9, 16, 2, 'TEST4', 11, 9, 321, 5, '2025-03-25 14:22:03'),
(187, 9, 17, 2, 'TEST4', 11, 9, 321, 5, '2025-03-25 14:22:03'),
(188, 9, 18, 2, 'TEST4', 11, 9, 321, 5, '2025-03-25 14:22:03'),
(189, 9, 19, 3, 'TEST4', 11, 9, 321, 5, '2025-03-25 14:22:03'),
(190, 9, 20, 2, 'TEST4', 11, 9, 321, 5, '2025-03-25 14:22:03'),
(191, 9, 21, 2, 'TEST4', 11, 9, 321, 5, '2025-03-25 14:22:03'),
(192, 9, 22, 2, 'TEST4', 11, 9, 321, 5, '2025-03-25 14:22:03'),
(193, 9, 23, 1, 'TEST4', 11, 9, 321, 5, '2025-03-25 14:22:03'),
(194, 9, 1, 1, 'Test5', 11, 9, 314, 5, '2025-03-25 14:46:49'),
(195, 9, 2, 1, 'Test5', 11, 9, 314, 5, '2025-03-25 14:46:49'),
(196, 9, 3, 2, 'Test5', 11, 9, 314, 5, '2025-03-25 14:46:49'),
(197, 9, 4, 1, 'Test5', 11, 9, 314, 5, '2025-03-25 14:46:49'),
(198, 9, 5, 2, 'Test5', 11, 9, 314, 5, '2025-03-25 14:46:49'),
(199, 9, 6, 2, 'Test5', 11, 9, 314, 5, '2025-03-25 14:46:49'),
(200, 9, 7, 1, 'Test5', 11, 9, 314, 5, '2025-03-25 14:46:49'),
(201, 9, 8, 2, 'Test5', 11, 9, 314, 5, '2025-03-25 14:46:49'),
(202, 9, 9, 2, 'Test5', 11, 9, 314, 5, '2025-03-25 14:46:49'),
(203, 9, 10, 2, 'Test5', 11, 9, 314, 5, '2025-03-25 14:46:49'),
(204, 9, 11, 2, 'Test5', 11, 9, 314, 5, '2025-03-25 14:46:49'),
(205, 9, 13, 2, 'Test5', 11, 9, 314, 5, '2025-03-25 14:46:49'),
(206, 9, 14, 2, 'Test5', 11, 9, 314, 5, '2025-03-25 14:46:49'),
(207, 9, 15, 2, 'Test5', 11, 9, 314, 5, '2025-03-25 14:46:49'),
(208, 9, 16, 2, 'Test5', 11, 9, 314, 5, '2025-03-25 14:46:49'),
(209, 9, 17, 2, 'Test5', 11, 9, 314, 5, '2025-03-25 14:46:50'),
(210, 9, 18, 2, 'Test5', 11, 9, 314, 5, '2025-03-25 14:46:50'),
(211, 9, 19, 2, 'Test5', 11, 9, 314, 5, '2025-03-25 14:46:50'),
(212, 9, 20, 2, 'Test5', 11, 9, 314, 5, '2025-03-25 14:46:50'),
(213, 9, 21, 2, 'Test5', 11, 9, 314, 5, '2025-03-25 14:46:50'),
(214, 9, 22, 2, 'Test5', 11, 9, 314, 5, '2025-03-25 14:46:50'),
(215, 9, 23, 2, 'Test5', 11, 9, 314, 5, '2025-03-25 14:46:50'),
(216, 9, 1, 1, 'qsafa\r\n', 13, 10, 314, 7, '2025-03-25 14:47:35'),
(217, 9, 2, 2, 'qsafa\r\n', 13, 10, 314, 7, '2025-03-25 14:47:35'),
(218, 9, 3, 2, 'qsafa\r\n', 13, 10, 314, 7, '2025-03-25 14:47:35'),
(219, 9, 4, 2, 'qsafa\r\n', 13, 10, 314, 7, '2025-03-25 14:47:35'),
(220, 9, 5, 2, 'qsafa\r\n', 13, 10, 314, 7, '2025-03-25 14:47:35'),
(221, 9, 6, 2, 'qsafa\r\n', 13, 10, 314, 7, '2025-03-25 14:47:35'),
(222, 9, 7, 2, 'qsafa\r\n', 13, 10, 314, 7, '2025-03-25 14:47:35'),
(223, 9, 8, 2, 'qsafa\r\n', 13, 10, 314, 7, '2025-03-25 14:47:35'),
(224, 9, 9, 2, 'qsafa\r\n', 13, 10, 314, 7, '2025-03-25 14:47:35'),
(225, 9, 10, 2, 'qsafa\r\n', 13, 10, 314, 7, '2025-03-25 14:47:35'),
(226, 9, 11, 2, 'qsafa\r\n', 13, 10, 314, 7, '2025-03-25 14:47:35'),
(227, 9, 13, 2, 'qsafa\r\n', 13, 10, 314, 7, '2025-03-25 14:47:35'),
(228, 9, 14, 2, 'qsafa\r\n', 13, 10, 314, 7, '2025-03-25 14:47:35'),
(229, 9, 15, 2, 'qsafa\r\n', 13, 10, 314, 7, '2025-03-25 14:47:35'),
(230, 9, 16, 2, 'qsafa\r\n', 13, 10, 314, 7, '2025-03-25 14:47:35'),
(231, 9, 17, 2, 'qsafa\r\n', 13, 10, 314, 7, '2025-03-25 14:47:35'),
(232, 9, 18, 2, 'qsafa\r\n', 13, 10, 314, 7, '2025-03-25 14:47:35'),
(233, 9, 19, 2, 'qsafa\r\n', 13, 10, 314, 7, '2025-03-25 14:47:35'),
(234, 9, 20, 2, 'qsafa\r\n', 13, 10, 314, 7, '2025-03-25 14:47:35'),
(235, 9, 21, 2, 'qsafa\r\n', 13, 10, 314, 7, '2025-03-25 14:47:35'),
(236, 9, 22, 2, 'qsafa\r\n', 13, 10, 314, 7, '2025-03-25 14:47:35'),
(237, 9, 23, 2, 'qsafa\r\n', 13, 10, 314, 7, '2025-03-25 14:47:35'),
(238, 9, 1, 1, 'Tes5', 13, 10, 316, 7, '2025-03-25 14:49:02'),
(239, 9, 2, 1, 'Tes5', 13, 10, 316, 7, '2025-03-25 14:49:02'),
(240, 9, 3, 2, 'Tes5', 13, 10, 316, 7, '2025-03-25 14:49:02'),
(241, 9, 4, 4, 'Tes5', 13, 10, 316, 7, '2025-03-25 14:49:02'),
(242, 9, 5, 2, 'Tes5', 13, 10, 316, 7, '2025-03-25 14:49:02'),
(243, 9, 6, 2, 'Tes5', 13, 10, 316, 7, '2025-03-25 14:49:02'),
(244, 9, 7, 2, 'Tes5', 13, 10, 316, 7, '2025-03-25 14:49:02'),
(245, 9, 8, 2, 'Tes5', 13, 10, 316, 7, '2025-03-25 14:49:02'),
(246, 9, 9, 2, 'Tes5', 13, 10, 316, 7, '2025-03-25 14:49:02'),
(247, 9, 10, 2, 'Tes5', 13, 10, 316, 7, '2025-03-25 14:49:02'),
(248, 9, 11, 2, 'Tes5', 13, 10, 316, 7, '2025-03-25 14:49:02'),
(249, 9, 13, 2, 'Tes5', 13, 10, 316, 7, '2025-03-25 14:49:02'),
(250, 9, 14, 2, 'Tes5', 13, 10, 316, 7, '2025-03-25 14:49:02'),
(251, 9, 15, 2, 'Tes5', 13, 10, 316, 7, '2025-03-25 14:49:02'),
(252, 9, 16, 2, 'Tes5', 13, 10, 316, 7, '2025-03-25 14:49:02'),
(253, 9, 17, 2, 'Tes5', 13, 10, 316, 7, '2025-03-25 14:49:02'),
(254, 9, 18, 2, 'Tes5', 13, 10, 316, 7, '2025-03-25 14:49:02'),
(255, 9, 19, 2, 'Tes5', 13, 10, 316, 7, '2025-03-25 14:49:02'),
(256, 9, 20, 2, 'Tes5', 13, 10, 316, 7, '2025-03-25 14:49:02'),
(257, 9, 21, 2, 'Tes5', 13, 10, 316, 7, '2025-03-25 14:49:02'),
(258, 9, 22, 3, 'Tes5', 13, 10, 316, 7, '2025-03-25 14:49:02'),
(259, 9, 23, 2, 'Tes5', 13, 10, 316, 7, '2025-03-25 14:49:02'),
(260, 11, 1, 1, 'asjf asflaisbfa', 13, 10, 322, 7, '2025-03-31 15:38:48'),
(261, 11, 2, 2, 'asjf asflaisbfa', 13, 10, 322, 7, '2025-03-31 15:38:48'),
(262, 11, 3, 2, 'asjf asflaisbfa', 13, 10, 322, 7, '2025-03-31 15:38:48'),
(263, 11, 4, 4, 'asjf asflaisbfa', 13, 10, 322, 7, '2025-03-31 15:38:48'),
(264, 11, 5, 2, 'asjf asflaisbfa', 13, 10, 322, 7, '2025-03-31 15:38:48'),
(265, 11, 6, 3, 'asjf asflaisbfa', 13, 10, 322, 7, '2025-03-31 15:38:48'),
(266, 11, 7, 2, 'asjf asflaisbfa', 13, 10, 322, 7, '2025-03-31 15:38:48'),
(267, 11, 8, 2, 'asjf asflaisbfa', 13, 10, 322, 7, '2025-03-31 15:38:48'),
(268, 11, 9, 2, 'asjf asflaisbfa', 13, 10, 322, 7, '2025-03-31 15:38:48'),
(269, 11, 10, 2, 'asjf asflaisbfa', 13, 10, 322, 7, '2025-03-31 15:38:48'),
(270, 11, 11, 3, 'asjf asflaisbfa', 13, 10, 322, 7, '2025-03-31 15:38:48'),
(271, 11, 13, 1, 'asjf asflaisbfa', 13, 10, 322, 7, '2025-03-31 15:38:48'),
(272, 11, 14, 3, 'asjf asflaisbfa', 13, 10, 322, 7, '2025-03-31 15:38:48'),
(273, 11, 15, 2, 'asjf asflaisbfa', 13, 10, 322, 7, '2025-03-31 15:38:48'),
(274, 11, 16, 3, 'asjf asflaisbfa', 13, 10, 322, 7, '2025-03-31 15:38:48'),
(275, 11, 17, 1, 'asjf asflaisbfa', 13, 10, 322, 7, '2025-03-31 15:38:48'),
(276, 11, 18, 4, 'asjf asflaisbfa', 13, 10, 322, 7, '2025-03-31 15:38:48'),
(277, 11, 19, 1, 'asjf asflaisbfa', 13, 10, 322, 7, '2025-03-31 15:38:48'),
(278, 11, 20, 3, 'asjf asflaisbfa', 13, 10, 322, 7, '2025-03-31 15:38:48'),
(279, 11, 21, 4, 'asjf asflaisbfa', 13, 10, 322, 7, '2025-03-31 15:38:48'),
(280, 11, 22, 2, 'asjf asflaisbfa', 13, 10, 322, 7, '2025-03-31 15:38:48'),
(281, 11, 23, 3, 'asjf asflaisbfa', 13, 10, 322, 7, '2025-03-31 15:38:48');

-- --------------------------------------------------------

--
-- Table structure for table `student_subjects`
--

CREATE TABLE `student_subjects` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject_load_id` int(11) NOT NULL,
  `acad_year` int(11) NOT NULL,
  `added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_subjects`
--

INSERT INTO `student_subjects` (`id`, `student_id`, `subject_load_id`, `acad_year`, `added`) VALUES
(1, 19, 1, 3, '2024-05-08 15:32:09'),
(2, 19, 2, 3, '2024-05-08 15:47:10'),
(3, 20, 2, 3, '2024-05-08 15:48:53'),
(4, 19, 3, 3, '2024-05-08 17:06:55'),
(5, 133, 2, 7, '2025-03-20 18:08:05'),
(6, 133, 1, 7, '2025-03-20 18:08:28'),
(7, 133, 3, 7, '2025-03-20 18:10:32'),
(8, 133, 5, 7, '2025-03-20 18:16:09'),
(9, 327, 6, 7, '2025-03-22 15:38:21'),
(10, 327, 6, 9, '2025-03-23 12:18:35'),
(11, 322, 9, 9, '2025-03-24 15:18:46'),
(12, 322, 6, 9, '2025-03-24 15:19:00'),
(13, 322, 11, 9, '2025-03-25 14:08:41'),
(14, 321, 11, 9, '2025-03-25 14:21:19'),
(15, 321, 12, 9, '2025-03-25 14:27:46'),
(16, 314, 11, 9, '2025-03-25 14:41:12'),
(19, 322, 14, 11, '2025-03-29 13:49:00'),
(20, 322, 13, 11, '2025-03-31 15:37:54');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `added` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(123) NOT NULL,
  `dept` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subject_loads`
--

CREATE TABLE `subject_loads` (
  `id` int(11) NOT NULL,
  `acad_year` int(11) NOT NULL,
  `teacher` int(11) NOT NULL,
  `subject` int(11) NOT NULL,
  `year_block` varchar(255) NOT NULL,
  `join_code` varchar(255) NOT NULL,
  `added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject_loads`
--

INSERT INTO `subject_loads` (`id`, `acad_year`, `teacher`, `subject`, `year_block`, `join_code`, `added`) VALUES
(1, 3, 1, 1, '1', 'XW4N2O', '2024-05-08 15:32:02'),
(2, 3, 2, 2, '1', 'RDYDV8', '2024-05-08 15:47:02'),
(3, 3, 1, 2, 'BSIT 4 BLOCK 1', 'NAJHCR', '2024-05-08 17:06:41'),
(4, 7, 3, 3, '1 BLOCK 2', 'H61OQ5', '2025-03-20 18:15:03'),
(5, 7, 3, 2, '1 BLOCK 2', 'SQ0Z8R', '2025-03-20 18:15:22'),
(6, 7, 4, 3, '1 BLOCK 2', 'LKLEXM', '2025-03-22 15:37:21'),
(7, 9, 4, 5, '1 BLOCK 2', 'J8QYNR', '2025-03-23 12:16:54'),
(8, 9, 4, 1, '1 BLOCK 2', '566YND', '2025-03-23 15:49:49'),
(9, 9, 6, 6, 'BSIT2 -7', 'DUSAQV', '2025-03-24 15:17:27'),
(10, 9, 8, 7, 'BSIT2 -7', 'UHSUCA', '2025-03-25 09:58:17'),
(11, 9, 9, 5, 'BSIT2 -7', '7UVGYD', '2025-03-25 14:07:39'),
(12, 9, 9, 2, 'BSIT2 -7', '0FTUNH', '2025-03-25 14:27:35'),
(13, 9, 10, 7, 'BSIT2 -7', 'UCJVRO', '2025-03-25 14:45:17'),
(14, 9, 10, 8, 'BSIT2 - 7', 'ECONDQ', '2025-03-29 04:54:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_year`
--
ALTER TABLE `academic_year`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basic_info`
--
ALTER TABLE `basic_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_information`
--
ALTER TABLE `contact_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employment_informations`
--
ALTER TABLE `employment_informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_report`
--
ALTER TABLE `emp_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `h2f_category`
--
ALTER TABLE `h2f_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `h2f_evaluation`
--
ALTER TABLE `h2f_evaluation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `h2f_questionaires`
--
ALTER TABLE `h2f_questionaires`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `identifications`
--
ALTER TABLE `identifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p2p_answers`
--
ALTER TABLE `p2p_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `evaluation_id` (`evaluation_id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `p2p_category`
--
ALTER TABLE `p2p_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p2p_evaluation`
--
ALTER TABLE `p2p_evaluation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p2p_evaluation_result`
--
ALTER TABLE `p2p_evaluation_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p2p_questionaires`
--
ALTER TABLE `p2p_questionaires`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questionaires`
--
ALTER TABLE `questionaires`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `step_users`
--
ALTER TABLE `step_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_evaluation`
--
ALTER TABLE `student_evaluation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_subjects`
--
ALTER TABLE `student_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject_loads`
--
ALTER TABLE `subject_loads`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_year`
--
ALTER TABLE `academic_year`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=627;

--
-- AUTO_INCREMENT for table `basic_info`
--
ALTER TABLE `basic_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `emp_report`
--
ALTER TABLE `emp_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `h2f_category`
--
ALTER TABLE `h2f_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `h2f_evaluation`
--
ALTER TABLE `h2f_evaluation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `h2f_questionaires`
--
ALTER TABLE `h2f_questionaires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `p2p_answers`
--
ALTER TABLE `p2p_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `p2p_category`
--
ALTER TABLE `p2p_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `p2p_evaluation`
--
ALTER TABLE `p2p_evaluation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `p2p_evaluation_result`
--
ALTER TABLE `p2p_evaluation_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `p2p_questionaires`
--
ALTER TABLE `p2p_questionaires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `questionaires`
--
ALTER TABLE `questionaires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `step_users`
--
ALTER TABLE `step_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=329;

--
-- AUTO_INCREMENT for table `student_evaluation`
--
ALTER TABLE `student_evaluation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=282;

--
-- AUTO_INCREMENT for table `student_subjects`
--
ALTER TABLE `student_subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `subject_loads`
--
ALTER TABLE `subject_loads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `p2p_answers`
--
ALTER TABLE `p2p_answers`
  ADD CONSTRAINT `p2p_answers_ibfk_1` FOREIGN KEY (`evaluation_id`) REFERENCES `p2p_evaluation_result` (`id`),
  ADD CONSTRAINT `p2p_answers_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `p2p_questionaires` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
