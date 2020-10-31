-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 31, 2020 at 05:39 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatify`
--

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
CREATE TABLE IF NOT EXISTS `favorites` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `favorite_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` bigint(20) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_id` bigint(20) NOT NULL,
  `to_id` bigint(20) NOT NULL,
  `body` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `type`, `from_id`, `to_id`, `body`, `attachment`, `seen`, `created_at`, `updated_at`) VALUES
(1812062014, 'user', 1, 2, 'سلام لالا', NULL, 1, '2020-10-31 01:01:31', '2020-10-31 01:01:32'),
(1913433765, 'user', 2, 1, 'hi romal', NULL, 1, '2020-10-31 01:00:14', '2020-10-31 01:01:22'),
(1929013285, 'user', 2, 1, 'سلام', NULL, 1, '2020-10-31 01:01:39', '2020-10-31 01:01:39'),
(2217193542, 'user', 1, 2, 'جی حال داری', NULL, 1, '2020-10-31 01:01:50', '2020-10-31 01:01:51'),
(2190284639, 'user', 1, 2, 'koja hasti', NULL, 1, '2020-10-31 01:02:55', '2020-10-31 01:03:56'),
(1745344240, 'user', 1, 2, 'az bacha chabar dari?', NULL, 1, '2020-10-31 01:03:10', '2020-10-31 01:03:56'),
(1741832550, 'user', 1, 2, '', NULL, 1, '2020-10-31 01:03:50', '2020-10-31 01:03:56'),
(2528826817, 'user', 2, 1, '', '88901566-578a-4055-ba06-e3599d6a4e16.png,a.png', 1, '2020-10-31 01:05:04', '2020-10-31 01:05:05'),
(1734910854, 'user', 3, 2, 'Hello', NULL, 1, '2020-10-31 01:06:38', '2020-10-31 01:08:50'),
(1629535875, 'user', 3, 1, 'Hiiiii', NULL, 1, '2020-10-31 01:07:08', '2020-10-31 01:07:30'),
(2443420344, 'user', 3, 1, 'dddddddd', NULL, 1, '2020-10-31 01:07:45', '2020-10-31 01:07:50');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_09_22_192348_create_messages_table', 1),
(4, '2019_10_16_211433_create_favorites_table', 1),
(5, '2019_10_18_223259_add_avatar_to_users', 1),
(6, '2019_10_20_211056_add_messenger_color_to_users', 1),
(7, '2019_10_22_000539_add_dark_mode_to_users', 1),
(8, '2019_10_25_214038_add_active_status_to_users', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT '0',
  `dark_mode` tinyint(1) NOT NULL DEFAULT '0',
  `messenger_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#2180f3',
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'avatar.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `active_status`, `dark_mode`, `messenger_color`, `avatar`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Romal Faizyar', 'romal.faizyar@gmail.com', 0, 1, '#2180f3', '36c4d2c0-c46f-4d76-bb0a-ab12e5a81006.png', NULL, '$2y$10$QqYlpPX5fLyAPHFtY1kEwOZZ1cyDoufT14AstRHjgFcxQizv4bJ32', NULL, '2020-10-31 00:55:22', '2020-10-31 01:09:20'),
(2, 'Ali Hashimi', 'ali@gmail.com', 1, 0, '#2180f3', 'avatar.png', NULL, '$2y$10$OugQJrTL/xobP0uRrZUt1.Xbhlik8uUjXgDULH8YWasz/y5Hb7dtu', NULL, '2020-10-31 00:59:55', '2020-10-31 01:08:43'),
(3, 'Aboozar Afzali', 'amaf@gmail.com', 0, 0, '#2180f3', 'avatar.png', NULL, '$2y$10$OugQJrTL/xobP0uRrZUt1.Xbhlik8uUjXgDULH8YWasz/y5Hb7dtu', NULL, '2020-10-31 00:59:55', '2020-10-31 01:08:25');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
