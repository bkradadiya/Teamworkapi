-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2023 at 06:00 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teamwork`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `friend` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `time` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `receiver` int(11) NOT NULL,
  `storage_a` int(11) NOT NULL,
  `storage_b` int(11) NOT NULL,
  `Project_id` int(255) NOT NULL,
  `status` varchar(6) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `message`, `time`, `user_id`, `receiver`, `storage_a`, `storage_b`, `Project_id`, `status`) VALUES
(1, 'hello', 1601289111, 1, 3, 1, 3, 0, 'read');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `milestones`
--

CREATE TABLE `milestones` (
  `id` int(255) NOT NULL,
  `p_id` int(255) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deadline` date NOT NULL,
  `releaseDate` date DEFAULT NULL,
  `budget` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('01b0fca7349422b98ff1de6a70483910efb28f114c67a64d3a5e8737854cd6372949d7a25d87ab56', 36, 1, 'teamwork', '[]', 0, '2020-10-12 03:16:54', '2020-10-12 03:16:54', '2021-10-12 08:46:54'),
('0e90bcb744deb33dd0fd7c381c6d1c63f9639a2c7359f8e1f90e2c4f315a87b150be8a0cd884a06a', 31, 1, NULL, '[]', 0, '2020-10-09 02:56:45', '2020-10-09 02:56:45', '2021-10-09 08:26:45'),
('179d2ef12f7fc4c7191ecb24d0e45af19b1d58323602485f0a051912c839bada20575d2f27539af7', 29, 1, 'teamwork', '[]', 0, '2020-10-12 02:30:53', '2020-10-12 02:30:53', '2021-10-12 08:00:53'),
('212a56126e762c76e1182f67b5254d729d50978c87355bfd8bbd2a28220822f619f52f9fe0f77779', 36, 1, 'teamwork', '[]', 0, '2020-10-12 02:56:09', '2020-10-12 02:56:09', '2021-10-12 08:26:09'),
('36aac3c6807c0cc7c97530ee1b56188beca13438bfe77cd191a2cb56f2f5620a114e3a910b0f6591', 36, 1, 'teamwork', '[]', 0, '2020-10-14 03:52:42', '2020-10-14 03:52:42', '2021-10-14 09:22:42'),
('3c1293f4f2ba3ae55b2965035833e5cfc78c599c39e859848b9aa1b1eb64cf625868b187417e0749', 29, 1, 'teamwork', '[]', 0, '2020-10-12 02:56:21', '2020-10-12 02:56:21', '2021-10-12 08:26:21'),
('48373a957043049fd7fc938076948f8e72ea9bac6f3fc029f5274efab97bcc30859716a73c9b654f', 36, 1, 'teamwork', '[]', 0, '2020-10-12 03:57:16', '2020-10-12 03:57:16', '2021-10-12 09:27:16'),
('48c8c4103ff04cffbe4e88f9fbe467fb44c70a4eb5245b43876c136f9dddf3aa3a9d60e0b376c25d', 36, 1, 'teamwork', '[]', 0, '2020-10-12 02:56:36', '2020-10-12 02:56:36', '2021-10-12 08:26:36'),
('569b146040e3276aa1fadc3f5a273ab0c0c78c33eed3d9f4c9a88f6c0bc4938d77bc6d22391061e4', 29, 1, 'teamwork', '[]', 0, '2020-10-12 04:18:49', '2020-10-12 04:18:49', '2021-10-12 09:48:49'),
('663a6137d2316bd6fa64fe440fc310b6302d8e438468e961d8695272270906cf94db01043edca773', 31, 1, 'teamwork', '[]', 0, '2020-10-09 02:57:17', '2020-10-09 02:57:17', '2021-10-09 08:27:17'),
('77fc484540b3ac4deeebc5a43d83f4fe8dff01ed15a9f5ecc4ab4d22da3ee9814a4272b4a41181aa', 31, 1, 'teamwork', '[]', 0, '2020-10-10 04:31:11', '2020-10-10 04:31:11', '2021-10-10 10:01:11'),
('7b33fad59033fd22769285d6323186e229b3fa9656dda7f8a524f16b5ec99810244a5c90f0739f1a', 31, 1, 'teamwork', '[]', 0, '2020-10-09 04:33:41', '2020-10-09 04:33:41', '2021-10-09 10:03:41'),
('7d582258c5c2b208dd486554556d11fe43986a8ad7a98c809fa6ba0bda64d598c991747f104b8646', 29, 1, 'teamwork', '[]', 0, '2020-10-12 03:17:20', '2020-10-12 03:17:20', '2021-10-12 08:47:20'),
('9468245a7a4d7dd97e988869d4e33008017993aae4b5ec6d8cda48b53d02ec1530613c070dbfa0cf', 36, 1, 'teamwork', '[]', 0, '2020-10-13 03:47:12', '2020-10-13 03:47:12', '2021-10-13 09:17:12'),
('988066f9f98670be0767c443ff2a950873c93c28e2c3cbdf73040730fd4e60f00309e15db4809aaa', 38, 1, 'teamwork', '[]', 0, '2020-10-13 03:59:57', '2020-10-13 03:59:57', '2021-10-13 09:29:57'),
('a1d2e08bdac9b4ee87293ba769ee28bf147de72a827708628bebe2e71c23f86875d7f98bac5018f3', 36, 1, 'teamwork', '[]', 0, '2020-10-12 02:33:35', '2020-10-12 02:33:35', '2021-10-12 08:03:35'),
('a447be03bea29a3e05e43b49202e92be44cfc6515cc68e7ad966c2c9947344fdf441cafb55b642ec', 38, 1, 'teamwork', '[]', 0, '2020-10-13 03:16:43', '2020-10-13 03:16:43', '2021-10-13 08:46:43'),
('d20825697dcf7ef515e98a2464db691494c1ef62715d3e453519b1e5672d307a2d128c60e63e3fe8', 38, 1, 'teamwork', '[]', 0, '2020-10-14 03:53:28', '2020-10-14 03:53:28', '2021-10-14 09:23:28'),
('de8fd535022ba0245542c2320509c1a598000be712854b4e8a475653420dc5a636bf94241e8f8db9', 36, 1, 'teamwork', '[]', 0, '2020-10-12 02:03:57', '2020-10-12 02:03:57', '2021-10-12 07:33:57'),
('dee1b0a5ca322cb3f04048c3fc0f0f02d173c033e6623cc5dfdcb14e83a3df46469654d9b1008c96', 36, 1, 'teamwork', '[]', 0, '2020-10-14 03:48:37', '2020-10-14 03:48:37', '2021-10-14 09:18:37'),
('e612de7be22dcb70f356a5d5304984d3d024990a826932098c7cb87881b80a6d58ca7ae1ca50cca0', 36, 1, 'teamwork', '[]', 0, '2020-10-12 01:45:25', '2020-10-12 01:45:25', '2021-10-12 07:15:25'),
('e643a7754c945ecff0a324c1d4f46199ca4cd937b4c759afbc0b6b7aa36fded9688998d43d8d2ed9', 31, 1, 'teamwork', '[]', 0, '2020-10-10 02:49:22', '2020-10-10 02:49:22', '2021-10-10 08:19:22'),
('feb8a8f7df050fd7beb3151220b615a935d919f52695b81ab51e42361d6eb4db0ff560301b2cc9cd', 38, 1, 'teamwork', '[]', 0, '2020-10-14 03:00:48', '2020-10-14 03:00:48', '2021-10-14 08:30:48');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'TWfG4qZgFl3xXIGnvteQgkiwn2SFTBUu8o1ij9OU', NULL, 'http://localhost', 1, 0, 0, '2020-09-30 03:07:19', '2020-09-30 03:07:19'),
(2, NULL, 'Laravel Password Grant Client', '8qGEVfBSJ47BC8L1xHBNoEHRhLVgiG606ialCwO7', 'users', 'http://localhost', 0, 1, 0, '2020-09-30 03:07:19', '2020-09-30 03:07:19');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-09-30 03:07:19', '2020-09-30 03:07:19');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profile_pics`
--

CREATE TABLE `profile_pics` (
  `id` int(11) NOT NULL,
  `fkUserId` int(11) NOT NULL,
  `filename` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `createdDate` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `profile_pics`
--

INSERT INTO `profile_pics` (`id`, `fkUserId`, `filename`, `type`, `size`, `createdDate`, `updated_at`) VALUES
(2, 1, '1670924723.8991.jpg', 'image/jpeg', '177389', '2020-09-28 17:36:23', NULL),
(9, 39, '1605180557.6563.jpg', 'image/jpeg', '161020', '2020-11-12 16:20:06', NULL),
(10, 40, '1673905149.0252.jpeg', 'image/jpeg', '40812', '2023-01-17 02:39:09', NULL),
(11, 43, '1673964447.0956.jpg', 'image/jpeg', '1942956', '2023-01-17 19:07:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `p_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `s_ids` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `project_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `project_desc` varchar(1200) COLLATE utf8_unicode_ci NOT NULL,
  `budget` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `archive` int(10) NOT NULL,
  `trash` int(10) NOT NULL,
  `start_time` date NOT NULL,
  `end_time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`p_id`, `c_id`, `s_ids`, `project_title`, `project_desc`, `budget`, `status`, `archive`, `trash`, `start_time`, `end_time`) VALUES
(12, 39, '1,39,41', 'Demo', 'Task Assign Project', '5', '1', 0, 0, '2023-01-16', '2023-01-17'),
(14, 43, '1,43,44,41,37', 'Demo Project', 'This is for demo', '500', '0', 0, 0, '2023-01-17', '2023-01-31');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `syatem_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `login_page_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `copy_rights` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `system_currency` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `time_zone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `favicon_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `login_page_logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile_logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stripe_sk` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `stripe_pk` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `paypal_email` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `checkout_id` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `checkout_pk` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `system_email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `forget_email` text COLLATE utf8_unicode_ci NOT NULL,
  `create_account_email` text COLLATE utf8_unicode_ci NOT NULL,
  `project_assign_email` text COLLATE utf8_unicode_ci NOT NULL,
  `assign_staff_email` text COLLATE utf8_unicode_ci NOT NULL,
  `project_update_email` text COLLATE utf8_unicode_ci NOT NULL,
  `system_language` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `purchase_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `url`, `company_name`, `syatem_title`, `login_page_title`, `copy_rights`, `system_currency`, `time_zone`, `favicon_image`, `login_page_logo`, `logo`, `mobile_logo`, `stripe_sk`, `stripe_pk`, `paypal_email`, `checkout_id`, `checkout_pk`, `system_email`, `forget_email`, `create_account_email`, `project_assign_email`, `assign_staff_email`, `project_update_email`, `system_language`, `version`, `purchase_code`) VALUES
(1, 'http://localhost/Teamwork/', 'TeamWork', 'TeamWork', 'Hello and welcome, <br/>Please Login', '© Copyright 2019 by Teameyo.<br/> All Rights Reserved', 'USD,$', 'Asia/Karachi', '', '1604591141_login_Group-29.png', '1604592562_logo_Untitled-2.jpg', '', '', '', '', '', '', 'no-reply@teameyo.com', '<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" bgcolor=\"#f3f2f0\" align=\"center\">\r\n<tbody><tr><td height=\"40\"> </td></tr>\r\n<tr><td height=\"20\"> </td></tr>\r\n  <tr>\r\n    <td>\r\n  <table style=\"margin:0 auto\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" bgcolor=\"#FFFFFF\" align=\"center\">\r\n  <tbody><tr>\r\n    <td>\r\n    <table style=\"margin:0 auto\" width=\"400\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"center\">\r\n   <tbody><tr>\r\n    <td height=\"60\"></td>\r\n  </tr>\r\n  <tr>\r\n    <td><font size=\"3\" face=\"Arial, Helvetica, sans-serif\" color=\"#000000\">Hi, {USER_NAME} </font></td>\r\n  </tr>\r\n  <tr>\r\n    <td height=\"30\"></td>\r\n  </tr>\r\n  <tr>\r\n    <td><font size=\"6\" face=\"Arial, Helvetica, sans-serif\" color=\"#5fbaff\"><b>You requested your Teameyo password be reset.</b></font></td>\r\n  </tr>\r\n  <tr>\r\n    <td height=\"40\"></td>\r\n  </tr>\r\n  <tr>\r\n    <td> <table width=\"450\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\r\n  <tbody><tr>\r\n<td width=\"200\" height=\"40\" bgcolor=\"#5fbaff\" align=\"center\">\r\n    <a href=\"{RESET_URL}\"><font size=\"3\" face=\"Arial, Helvetica, sans-serif\" color=\"#FFFFFF\" style=\"text-decoration:none;\"><b>Reset your password</b></font></a> \r\n    </td><td width=\"200\">&nbsp;</td>  </tr>\r\n</tbody></table>\r\n</td>\r\n  </tr>\r\n  <tr>\r\n    <td height=\"30\"></td>\r\n  </tr>\r\n    <tr>\r\n    <td><font size=\"3\" face=\"Arial, Helvetica, sans-serif\" color=\"#000000\">You will then be able to log into your account and change your password.</font></td>\r\n  </tr>\r\n    <tr>\r\n  <td height=\"30\"></td>\r\n  </tr>\r\n      <tr>\r\n    <td><font size=\"3\" face=\"Arial, Helvetica, sans-serif\" color=\"#000000\">If you <b> did not request your password be reset</b> then ignore this email.</font></td>\r\n  </tr>\r\n    <tr>\r\n  <td height=\"30\"></td>\r\n  </tr>\r\n  <tr>\r\n    <td><font size=\"3\" face=\"Arial, Helvetica, sans-serif\" color=\"#000000\">Kind Regards,<br>{SIGNATURE}</font></td>\r\n  </tr>\r\n  <tr>\r\n  <td height=\"60\"></td>\r\n  </tr>\r\n</tbody></table>\r\n    </td>\r\n  </tr>\r\n</tbody></table>\r\n    </td></tr><tr><td height=\"50\"> </td></tr>\r\n</tbody></table>', '<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#f3f2f0\" align=\"center\">\r\n<tbody><tr><td height=\"40\"> </td></tr>\r\n<tr><td height=\"20\"> </td></tr>\r\n  <tr>\r\n    <td>\r\n  <table style=\"margin:0 auto\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" bgcolor=\"#FFFFFF\" align=\"center\">\r\n  <tbody><tr>\r\n    <td>\r\n    <table style=\"margin:0 auto\" width=\"400\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"center\">\r\n   <tbody><tr>\r\n    <td height=\"60\"></td>\r\n  </tr>\r\n  <tr>\r\n    <td><font size=\"6\" face=\"Arial, Helvetica, sans-serif\" color=\"#5fbaff\"><b>Welcome to the Teameyo community!</b></font></td>\r\n  </tr>\r\n  <tr>\r\n    <td height=\"40\"></td>\r\n  </tr>\r\n  <tr>\r\n    <td><font size=\"3\" face=\"Arial, Helvetica, sans-serif\" color=\"#000000\">Hi {USER_NAME},</font></td>\r\n  </tr>\r\n  <tr>\r\n    <td height=\"20\"></td>\r\n  </tr>\r\n  <tr>\r\n    <td><font size=\"3\" face=\"Arial, Helvetica, sans-serif\" color=\"#000000\">You are free to login with followed details</font></td>\r\n  </tr>\r\n  <tr>\r\n    <td height=\"30\"></td>\r\n  </tr>\r\n   <tr>\r\n    <td><table width=\"400\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\r\n  <tbody><tr>\r\n<td width=\"100\" height=\"40\" bgcolor=\"#5fbaff\" align=\"center\">\r\n    <a href=\"{DASHBOARD_URL}\"><font size=\"3\" face=\"Arial, Helvetica, sans-serif\" color=\"#FFFFFF\" style=\"text-decoration:none;\"><b>Login</b></font></a> \r\n    </td><td width=\"300\">&nbsp;</td>  </tr>\r\n</tbody></table></td>\r\n  </tr>\r\n   <tr>\r\n    <td height=\"30\"></td>\r\n  </tr>\r\n  <tr>\r\n      <td><font size=\"3\" face=\"Arial, Helvetica, sans-serif\" color=\"#000000\">\r\nEmail : {USER_LOGIN_EMAIL}<br>\r\n Password: {USER_LOGIN_PASSWORD}</font></td>\r\n  </tr>\r\n  <tr>\r\n    <td height=\"30\"></td>\r\n  </tr>\r\n  <tr>\r\n    <td><font size=\"3\" face=\"Arial, Helvetica, sans-serif\" color=\"#000000\">Kind Regards,<br>\r\n{SIGNATURE}</font></td>\r\n  </tr>\r\n  <tr>\r\n  <td height=\"60\"></td>\r\n  </tr>\r\n</tbody></table>\r\n    </td>\r\n  </tr>\r\n</tbody></table>\r\n    </td></tr><tr><td height=\"60\"> </td></tr>\r\n</tbody></table>', '<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" bgcolor=\"#f3f2f0\" align=\"center\">\r\n<tbody><tr><td height=\"40\"> </td></tr>\r\n<tr><td height=\"20\"> </td></tr>\r\n  <tr>\r\n    <td>\r\n  <table style=\"margin:0 auto\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" bgcolor=\"#FFFFFF\" align=\"center\">\r\n  <tbody><tr>\r\n    <td>\r\n    <table style=\"margin:0 auto\" width=\"400\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"center\">\r\n   <tbody><tr>\r\n    <td height=\"60\"></td>\r\n  </tr>\r\n  <tr>\r\n    <td><font size=\"6\" face=\"Arial, Helvetica, sans-serif\" color=\"#5fbaff\"><b>A new project has been created in the Teameyo community!</b></font></td>\r\n  </tr>\r\n  <tr>\r\n    <td height=\"40\"></td>\r\n  </tr>\r\n    <tr>\r\n    <td><font size=\"3\" face=\"Arial, Helvetica, sans-serif\" color=\"#000000\">Hi, {USER_NAME}</font></td>\r\n  </tr>\r\n    <tr>\r\n  <td height=\"30\"></td>\r\n  </tr>\r\n      <tr>\r\n    <td><font size=\"3\" face=\"Arial, Helvetica, sans-serif\" color=\"#000000\">Project name: {PROJECT_NAME}</font></td>\r\n  </tr>\r\n   <tr>\r\n  <td height=\"20\"></td>\r\n  </tr>\r\n      <tr>\r\n    <td><font size=\"3\" face=\"Arial, Helvetica, sans-serif\" color=\"#000000\">Please login your account to view status and updates of the project.</font></td>\r\n  </tr>\r\n  <tr>\r\n  <td height=\"20\"></td>\r\n  </tr>\r\n    <tr>\r\n  <td><table width=\"400\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\r\n  <tbody><tr>\r\n<td width=\"100\" height=\"40\" bgcolor=\"#5fbaff\" align=\"center\">\r\n    <a href=\"{DASHBOARD_URL}\"><font size=\"3\" face=\"Arial, Helvetica, sans-serif\" color=\"#FFFFFF\" style=\"text-decoration:none;\"><b>Login</b></font></a> \r\n    </td><td width=\"300\">&nbsp;</td>  </tr>\r\n</tbody></table></td>\r\n  </tr>\r\n    <tr>\r\n  <td height=\"30\"></td>\r\n  </tr>\r\n  <tr>\r\n    <td><font size=\"3\" face=\"Arial, Helvetica, sans-serif\" color=\"#000000\">Kind Regards,<br>{SIGNATURE}</font></td>\r\n  </tr>\r\n  <tr>\r\n  <td height=\"60\"></td>\r\n  </tr>\r\n</tbody></table>\r\n    </td>\r\n  </tr>\r\n</tbody></table>\r\n    </td></tr><tr><td height=\"50\"> </td></tr>\r\n</tbody></table>', '<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" bgcolor=\"#f3f2f0\" align=\"center\">\r\n<tbody><tr><td height=\"40\"> </td></tr>\r\n<tr><td height=\"20\"> </td></tr>\r\n  <tr>\r\n    <td>\r\n  <table style=\"margin:0 auto\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" bgcolor=\"#FFFFFF\" align=\"center\">\r\n  <tbody><tr>\r\n    <td>\r\n    <table style=\"margin:0 auto\" width=\"400\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"center\">\r\n   <tbody><tr>\r\n    <td height=\"60\"></td>\r\n  </tr>\r\n  <tr>\r\n    <td><font size=\"6\" face=\"Arial, Helvetica, sans-serif\" color=\"#5fbaff\"><b>Admin assigned you in a project</b></font></td>\r\n  </tr>\r\n  <tr>\r\n    <td height=\"40\"></td>\r\n  </tr>\r\n    <tr>\r\n    <td><font size=\"3\" face=\"Arial, Helvetica, sans-serif\" color=\"#000000\">Hi, {USER_NAME}</font></td>\r\n  </tr>\r\n    <tr>\r\n  <td height=\"30\"></td>\r\n  </tr>\r\n      <tr>\r\n    <td><font size=\"3\" face=\"Arial, Helvetica, sans-serif\" color=\"#000000\">Project name: {PROJECT_NAME}</font></td>\r\n  </tr>\r\n   <tr>\r\n  <td height=\"20\"></td>\r\n  </tr>\r\n      <tr>\r\n    <td><font size=\"3\" face=\"Arial, Helvetica, sans-serif\" color=\"#000000\">Please login your account to view status and updates of the project.</font></td>\r\n  </tr>\r\n  <tr>\r\n  <td height=\"20\"></td>\r\n  </tr>\r\n    <tr>\r\n  <td><table width=\"400\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\r\n  <tbody><tr>\r\n<td width=\"100\" height=\"40\" bgcolor=\"#5fbaff\" align=\"center\">\r\n    <a href=\"{DASHBOARD_URL}\"><font style=\"text-decoration:none;\" size=\"3\" face=\"Arial, Helvetica, sans-serif\" color=\"#FFFFFF\"><b>Login</b></font></a> \r\n    </td><td width=\"300\">Â </td>  </tr>\r\n</tbody></table></td>\r\n  </tr>\r\n    <tr>\r\n  <td height=\"30\"></td>\r\n  </tr>\r\n  <tr>\r\n    <td><font size=\"3\" face=\"Arial, Helvetica, sans-serif\" color=\"#000000\">Kind Regards,<br>{SIGNATURE}</font></td>\r\n  </tr>\r\n  <tr>\r\n  <td height=\"60\"></td>\r\n  </tr>\r\n</tbody></table>\r\n    </td>\r\n  </tr>\r\n</tbody></table>\r\n    </td></tr><tr><td height=\"50\"> </td></tr>\r\n</tbody></table>', '<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" bgcolor=\"#f3f2f0\" align=\"center\">\r\n<tbody><tr><td height=\"40\"> </td></tr>\r\n<tr><td height=\"20\"> </td></tr>\r\n  <tr>\r\n    <td>\r\n  <table style=\"margin:0 auto\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" bgcolor=\"#FFFFFF\" align=\"center\">\r\n  <tbody><tr>\r\n    <td>\r\n    <table style=\"margin:0 auto\" width=\"400\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"center\">\r\n   <tbody><tr>\r\n    <td height=\"60\"></td>\r\n  </tr>\r\n  <tr>\r\n    <td><font size=\"6\" face=\"Arial, Helvetica, sans-serif\" color=\"#5fbaff\"><b>Admin update the project information <br></b></font></td>\r\n  </tr>\r\n  <tr>\r\n    <td height=\"40\"></td>\r\n  </tr>\r\n    <tr>\r\n    <td><font size=\"3\" face=\"Arial, Helvetica, sans-serif\" color=\"#000000\">Hi, {USER_NAME}</font></td>\r\n  </tr>\r\n    <tr>\r\n  <td height=\"30\"></td>\r\n  </tr>\r\n      <tr>\r\n    <td><font size=\"3\" face=\"Arial, Helvetica, sans-serif\" color=\"#000000\">Project name: {PROJECT_NAME}</font></td>\r\n  </tr>\r\n   <tr>\r\n  <td height=\"20\"></td>\r\n  </tr>\r\n      <tr>\r\n    <td><font size=\"3\" face=\"Arial, Helvetica, sans-serif\" color=\"#000000\">Please login your account to view status and updates of the project.</font></td>\r\n  </tr>\r\n  <tr>\r\n  <td height=\"20\"></td>\r\n  </tr>\r\n    <tr>\r\n  <td><table width=\"400\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\r\n  <tbody><tr>\r\n<td width=\"100\" height=\"40\" bgcolor=\"#5fbaff\" align=\"center\">\r\n    <a href=\"{DASHBOARD_URL}\"><font style=\"text-decoration:none;\" size=\"3\" face=\"Arial, Helvetica, sans-serif\" color=\"#FFFFFF\"><b>Login</b></font></a> \r\n    </td><td width=\"300\">&nbsp;</td>  </tr>\r\n</tbody></table></td>\r\n  </tr>\r\n    <tr>\r\n  <td height=\"30\"></td>\r\n  </tr>\r\n  <tr>\r\n    <td><font size=\"3\" face=\"Arial, Helvetica, sans-serif\" color=\"#000000\">Kind Regards,<br>{SIGNATURE}</font></td>\r\n  </tr>\r\n  <tr>\r\n  <td height=\"60\"></td>\r\n  </tr>\r\n</tbody></table>\r\n    </td>\r\n  </tr>\r\n</tbody></table>\r\n    </td></tr><tr><td height=\"50\"> </td></tr>\r\n</tbody></table>', 'en', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(9) NOT NULL,
  `p_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` tinyint(1) NOT NULL,
  `firstName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `regDate` datetime NOT NULL,
  `type_status` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `last_seen` int(255) NOT NULL,
  `session_status` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(10) NOT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `zip` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_language` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `p_id`, `password`, `email`, `role_id`, `firstName`, `title`, `phone`, `regDate`, `type_status`, `last_seen`, `session_status`, `status`, `city`, `state`, `zip`, `user_language`, `country`, `created_at`, `updated_at`) VALUES
(1, '', '$2y$10$MFC61v7AkVNfLoHNw/bFF.81/e83DfgCfLEN/5I1rzf/IQt7m.bAW', 'bk@gmail.com', 1, 'Bk', 'Web Developer', '', '2020-09-24 06:14:53', 'stopped', 1675443617, 'online', 0, '', '', '', 'en', '', NULL, NULL),
(37, '', '$1$6a7TJGdr$1oSrcI8sGK0cfugCM9NBZ0', 'digpal@gmail.com', 3, 'Digpal', 'Web Developer', '9427023027', '2020-10-12 16:10:23', '', 1604995406, 'offline', 0, '', '', '', '', '', NULL, NULL),
(38, '', '$1$nZjVQyDi$3lmUaavbW6lRxLHjoD8/0.', 'axit@gmail.com', 3, 'axit', 'Web Developer', '9427023027', '2020-10-12 16:11:00', '', 1603713735, 'offline', 0, '', '', '', '', '', NULL, NULL),
(39, '', '', 'bhautik51@gmail.com', 2, 'Bhautik', '', '9427023027', '2020-11-06 07:59:27', '', 1604631567, 'offline', 0, 'surat', 'gujarat', '395004', '', 'India', NULL, NULL),
(40, '', '', 'harsh@gmail.com', 2, 'Harsh', '', '9427023027', '2020-11-06 08:02:32', '', 1604631752, 'offline', 0, 'surat', 'Gujarat', '395004', '', 'India', NULL, NULL),
(41, '', '$1$OMbQ.iuw$p3iHhIIe86gsL/exQIbwe.', 'darshit@gmail.com', 3, 'darshit', 'Web Developer', '9565235232', '2020-11-06 08:03:49', '', 1604631829, 'offline', 0, '', '', '', '', '', NULL, NULL),
(42, '', '*0', 'kishan@gmail.com', 3, 'Bhautik', 'Developer', '123456789', '2023-01-17 02:37:01', '', 1673905021, 'offline', 0, '', '', '', '', '', NULL, NULL),
(43, '', '', 'test@gmail.com', 2, 'Test1', '', '123456789', '2023-01-17 19:07:27', '', 1673964447, 'offline', 0, 'abc', 'abc', '123', '', 'India', NULL, NULL),
(44, '', '*0', 'staff@gmail.com', 3, 'staff', 'Developer', '12344567890', '2023-01-17 19:08:46', '', 1673964526, 'offline', 0, '', '', '', '', '', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `milestones`
--
ALTER TABLE `milestones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p_id` (`p_id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `profile_pics`
--
ALTER TABLE `profile_pics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkUserId` (`fkUserId`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `c_id` (`c_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `milestones`
--
ALTER TABLE `milestones`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `profile_pics`
--
ALTER TABLE `profile_pics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `milestones`
--
ALTER TABLE `milestones`
  ADD CONSTRAINT `fk_p_id` FOREIGN KEY (`p_id`) REFERENCES `projects` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `profile_pics`
--
ALTER TABLE `profile_pics`
  ADD CONSTRAINT `profile_pics_ibfk_1` FOREIGN KEY (`fkUserId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `fkClientId` FOREIGN KEY (`c_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
