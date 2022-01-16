-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2022 at 04:15 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cvis_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `batch_uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(1, 'user account', 'User Account have been created', 'Angelu Merry Tomboc Ilagan', 'created', 1, 'registered', NULL, '{\"attributes\":{\"name\":\"Angelu Merry Tomboc Ilagan\",\"email\":\"angelumerry@gmail.com\",\"password\":\"$2y$10$dtbABG0Y5zWcQxpj4SqAc.poxgkCY84ljEQF9m\\/heVpwazEcrrW0K\"}}', NULL, '2022-01-05 21:17:52', '2022-01-05 21:17:52'),
(2, 'user account', 'User Account have been created', 'Ilagan, Angelu Merry T.', 'created', 2, 'Angelu Merry Tomboc Ilagan', 1, '{\"attributes\":{\"name\":\"Ilagan, Angelu Merry T.\",\"email\":\"mamtilagan@tip.edu.ph\",\"password\":\"$2y$10$csJA96dYACVDUe...qreGO.B9DTLK5SZtuVCvR5NZqWbk\\/A7TG7je\"}}', NULL, '2022-01-05 22:50:43', '2022-01-05 22:50:43'),
(3, 'user account', 'User Account have been created', 'Angelou Ilagan', 'created', 3, 'Angelu Merry Tomboc Ilagan', 1, '{\"attributes\":{\"name\":\"Angelou Ilagan\",\"email\":\"n2012242@dlszobel.edu.ph\",\"password\":\"$2y$10$WL2bv0b0J7CrRZ5danLC7OYBmiHvRBbzNBsKkVPBMZns\\/BViCZqwG\"}}', NULL, '2022-01-05 22:58:49', '2022-01-05 22:58:49'),
(4, 'user account', 'User Account have been created', 'Angelou Ilagan', 'created', 4, 'Angelu Merry Tomboc Ilagan', 1, '{\"attributes\":{\"name\":\"Angelou Ilagan\",\"email\":\"n2012242@dlszobel.edu.ph\",\"password\":\"$2y$10$K38oNZ\\/jBJ3wq5EoVogfNeEMbFfZJxV37MMHu0djqQydOfTtAcj5u\"}}', NULL, '2022-01-06 05:13:31', '2022-01-06 05:13:31'),
(5, 'user account', 'User Account have been deleted', 'Angelou Ilagan', 'deleted', 4, 'Angelu Merry Tomboc Ilagan', 1, '{\"old\":{\"name\":\"Angelou Ilagan\",\"email\":\"n2012242@dlszobel.edu.ph\",\"password\":\"$2y$10$K38oNZ\\/jBJ3wq5EoVogfNeEMbFfZJxV37MMHu0djqQydOfTtAcj5u\"}}', NULL, '2022-01-06 05:15:31', '2022-01-06 05:15:31'),
(6, 'user account', 'User Account have been created', 'Angelou Ilagan', 'created', 5, 'Angelu Merry Tomboc Ilagan', 1, '{\"attributes\":{\"name\":\"Angelou Ilagan\",\"email\":\"n2012242@dlszobel.edu.ph\",\"password\":\"$2y$10$1t5pHDw4lbrifWn8dncyZeZF9YU2V9vEv028Haa9O9ijvzp\\/UGKgC\"}}', NULL, '2022-01-06 05:15:54', '2022-01-06 05:15:54'),
(7, 'user account', 'User Account have been deleted', 'Angelou Ilagan', 'deleted', 5, 'Angelu Merry Tomboc Ilagan', 1, '{\"old\":{\"name\":\"Angelou Ilagan\",\"email\":\"n2012242@dlszobel.edu.ph\",\"password\":\"$2y$10$1t5pHDw4lbrifWn8dncyZeZF9YU2V9vEv028Haa9O9ijvzp\\/UGKgC\"}}', NULL, '2022-01-06 05:17:00', '2022-01-06 05:17:00'),
(8, 'user account', 'User Account have been created', 'Angelou Ilagan', 'created', 6, 'Angelu Merry Tomboc Ilagan', 1, '{\"attributes\":{\"name\":\"Angelou Ilagan\",\"email\":\"n2012242@dlszobel.edu.ph\",\"password\":\"$2y$10$qE\\/NTqqJvDjLvl9OmyRB1O50DxzCSMx30APcrrM4D8Nc8GgD4iNUa\"}}', NULL, '2022-01-06 05:17:44', '2022-01-06 05:17:44'),
(9, 'user account', 'User Account have been deleted', 'Angelou Ilagan', 'deleted', 6, 'Angelu Merry Tomboc Ilagan', 1, '{\"old\":{\"name\":\"Angelou Ilagan\",\"email\":\"n2012242@dlszobel.edu.ph\",\"password\":\"$2y$10$qE\\/NTqqJvDjLvl9OmyRB1O50DxzCSMx30APcrrM4D8Nc8GgD4iNUa\"}}', NULL, '2022-01-06 05:20:06', '2022-01-06 05:20:06'),
(10, 'user account', 'User Account have been created', 'Angelou Ilagan', 'created', 7, 'Angelu Merry Tomboc Ilagan', 1, '{\"attributes\":{\"name\":\"Angelou Ilagan\",\"email\":\"n2012242@dlszobel.edu.ph\",\"password\":\"$2y$10$Mj6y93pEjlu0NDXMi8IXbu3XFZThEHpQz\\/NW4IijmXBIeWPFLIRJG\"}}', NULL, '2022-01-06 05:20:30', '2022-01-06 05:20:30'),
(11, 'user account', 'User Account have been deleted', 'Angelou Ilagan', 'deleted', 7, 'Angelu Merry Tomboc Ilagan', 1, '{\"old\":{\"name\":\"Angelou Ilagan\",\"email\":\"n2012242@dlszobel.edu.ph\",\"password\":\"$2y$10$Mj6y93pEjlu0NDXMi8IXbu3XFZThEHpQz\\/NW4IijmXBIeWPFLIRJG\"}}', NULL, '2022-01-06 05:23:34', '2022-01-06 05:23:34'),
(12, 'user account', 'User Account have been created', 'Angelou Ilagan', 'created', 8, 'Angelu Merry Tomboc Ilagan', 1, '{\"attributes\":{\"name\":\"Angelou Ilagan\",\"email\":\"n2012242@dlszobel.edu.ph\",\"password\":\"$2y$10$KF8PbiZafC3ApjUZ1bWoqOMKaRToO7vQ\\/rMBRh44YLyuS6SVE6UWK\"}}', NULL, '2022-01-06 05:23:59', '2022-01-06 05:23:59'),
(13, 'user account', 'User Account have been deleted', 'Angelou Ilagan', 'deleted', 8, 'Angelu Merry Tomboc Ilagan', 1, '{\"old\":{\"name\":\"Angelou Ilagan\",\"email\":\"n2012242@dlszobel.edu.ph\",\"password\":\"$2y$10$KF8PbiZafC3ApjUZ1bWoqOMKaRToO7vQ\\/rMBRh44YLyuS6SVE6UWK\"}}', NULL, '2022-01-06 06:07:56', '2022-01-06 06:07:56'),
(14, 'user account', 'User Account have been created', 'Angelou Ilagan', 'created', 9, 'Angelu Merry Tomboc Ilagan', 1, '{\"attributes\":{\"name\":\"Angelou Ilagan\",\"email\":\"n2012242@dlszobel.edu.ph\",\"password\":\"$2y$10$8Ks3.O3yWz6RvnINXswZd.D22pNKEoCGdvUi59a.6n29MEqomBUyS\"}}', NULL, '2022-01-06 06:08:16', '2022-01-06 06:08:16'),
(15, 'user account', 'User Account have been deleted', 'Angelou Ilagan', 'deleted', 9, 'Angelu Merry Tomboc Ilagan', 1, '{\"old\":{\"name\":\"Angelou Ilagan\",\"email\":\"n2012242@dlszobel.edu.ph\",\"password\":\"$2y$10$8Ks3.O3yWz6RvnINXswZd.D22pNKEoCGdvUi59a.6n29MEqomBUyS\"}}', NULL, '2022-01-06 06:10:37', '2022-01-06 06:10:37'),
(16, 'user account', 'User Account have been created', 'Angelou Ilagan', 'created', 10, 'Angelu Merry Tomboc Ilagan', 1, '{\"attributes\":{\"name\":\"Angelou Ilagan\",\"email\":\"n2012242@dlszobel.edu.ph\",\"password\":\"$2y$10$H7COPBWnZTb1ZNuzekwZ1u54pANpNgyxlQz29pciP8Hn.xTm5KXpW\"}}', NULL, '2022-01-06 06:11:21', '2022-01-06 06:11:21'),
(17, 'user account', 'User Account have been updated', 'Ilagan, Angelu Merry T.', 'updated', 2, 'Angelu Merry Tomboc Ilagan', 1, '{\"attributes\":{\"name\":\"Ilagan, Angelu Merry T.\",\"email\":\"mamtilagan@tip.edu.ph\",\"password\":\"$2y$10$r9lwTf9j6vcgljnyVHHC\\/ONCFLspvphpdW6u2BwBuqnqs7wXW\\/rbK\"},\"old\":{\"name\":\"Ilagan, Angelu Merry T.\",\"email\":\"mamtilagan@tip.edu.ph\",\"password\":\"$2y$10$csJA96dYACVDUe...qreGO.B9DTLK5SZtuVCvR5NZqWbk\\/A7TG7je\"}}', NULL, '2022-01-06 06:38:03', '2022-01-06 06:38:03'),
(18, 'user account', 'User Account have been updated', 'Ilagan, Angelu Merry T.', 'updated', 2, 'Angelu Merry Tomboc Ilagan', 1, '{\"attributes\":{\"name\":\"Ilagan, Angelu Merry T.\",\"email\":\"mamtilagan@tip.edu.ph\",\"password\":\"$2y$10$XTv8MN66D\\/C8ZAhRTmA4oe9eIF1fsoADzxsdzURP4NpIkHYboiII.\"},\"old\":{\"name\":\"Ilagan, Angelu Merry T.\",\"email\":\"mamtilagan@tip.edu.ph\",\"password\":\"$2y$10$r9lwTf9j6vcgljnyVHHC\\/ONCFLspvphpdW6u2BwBuqnqs7wXW\\/rbK\"}}', NULL, '2022-01-06 06:41:40', '2022-01-06 06:41:40'),
(19, 'user account', 'User Account have been updated', 'Ilagan, Angelu Merry T.', 'updated', 2, 'Angelu Merry Tomboc Ilagan', 1, '{\"attributes\":{\"name\":\"Ilagan, Angelu Merry T.\",\"email\":\"mamtilagan@tip.edu.ph\",\"password\":\"$2y$10$cbdjabjMpEanYu14gxWJAegJk\\/bj3vugjkTds.AOsFFpgVAOCSO0W\"},\"old\":{\"name\":\"Ilagan, Angelu Merry T.\",\"email\":\"mamtilagan@tip.edu.ph\",\"password\":\"$2y$10$XTv8MN66D\\/C8ZAhRTmA4oe9eIF1fsoADzxsdzURP4NpIkHYboiII.\"}}', NULL, '2022-01-06 06:43:13', '2022-01-06 06:43:13'),
(20, 'user account', 'User Account have been updated', 'Angelu Merry Tomboc Ilagan', 'updated', 1, 'Angelu Merry Tomboc Ilagan', 1, '{\"attributes\":{\"name\":\"Angelu Merry Tomboc Ilagan\",\"email\":\"angelumerry@gmail.com\",\"password\":\"$2y$10$5.CER3yc.sqPEDaU8SEdquffOD6KnJR310PzdWLquFr.ttJr2s\\/qO\"},\"old\":{\"name\":\"Angelu Merry Tomboc Ilagan\",\"email\":\"angelumerry@gmail.com\",\"password\":\"$2y$10$dtbABG0Y5zWcQxpj4SqAc.poxgkCY84ljEQF9m\\/heVpwazEcrrW0K\"}}', NULL, '2022-01-06 06:44:15', '2022-01-06 06:44:15'),
(21, 'user account', 'User Account have been updated', 'Ilagan, Angelu Merry T.', 'updated', 2, 'Angelu Merry Tomboc Ilagan', 1, '{\"attributes\":{\"name\":\"Ilagan, Angelu Merry T.\",\"email\":\"mamtilagan@tip.edu.ph\",\"password\":\"$2y$10$ysC2zkiujgY6nv8LQyBNxev.3QueNzFBEyxx\\/8y.7KYI4oOXwHTKq\"},\"old\":{\"name\":\"Ilagan, Angelu Merry T.\",\"email\":\"mamtilagan@tip.edu.ph\",\"password\":\"$2y$10$cbdjabjMpEanYu14gxWJAegJk\\/bj3vugjkTds.AOsFFpgVAOCSO0W\"}}', NULL, '2022-01-06 06:45:24', '2022-01-06 06:45:24');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(20, '2014_10_12_000000_create_users_table', 1),
(21, '2014_10_12_100000_create_password_resets_table', 1),
(22, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2021_03_24_070007_create_sessions_table', 1),
(26, '2021_03_24_083508_create_categories_table', 1),
(27, '2021_03_24_110258_create_brands_table', 1),
(28, '2021_03_25_135702_create_products_table', 1),
(29, '2021_03_27_130653_create_sizes_table', 1),
(30, '2021_03_27_180733_create_product_size_stocks_table', 1),
(31, '2021_03_29_125301_create_product_stocks_table', 1),
(32, '2021_03_29_143554_create_return_products_table', 1),
(33, '2021_03_31_050905_create_sold_products_table', 1),
(34, '2021_04_16_023906_create_product_requests_table', 1),
(35, '2021_04_16_103424_create_product_size_requests_table', 1),
(36, '2021_06_10_083540_create_activity_log_table', 1),
(37, '2021_06_10_083541_add_event_column_to_activity_log_table', 1),
(38, '2021_06_10_083542_add_batch_uuid_column_to_activity_log_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost_price` decimal(8,2) NOT NULL,
  `expiration_date` date NOT NULL,
  `year` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_requests`
--

CREATE TABLE `product_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `size_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'in',
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MCV' COMMENT 'ADM for Admin, MCV for Mobile Center, and CHV for City Hall',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_size_requests`
--

CREATE TABLE `product_size_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `size_id` bigint(20) UNSIGNED DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_size_stocks`
--

CREATE TABLE `product_size_stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `size_id` bigint(20) UNSIGNED DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_stocks`
--

CREATE TABLE `product_stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `size_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'in',
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MCV' COMMENT 'ADM for Admin, MCV for Mobile Center, and CHV for City Hall',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `return_products`
--

CREATE TABLE `return_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `size_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MCV' COMMENT 'ADM for Admin, MCV for Mobile Center, and CHV for City Hall'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0Xt7EgiZjbe7z4BfChQyikS38DptoiePCKdfIp0G', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 Edg/96.0.1054.62', 'YTo3OntzOjM6InVybCI7YTowOnt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjY6Il90b2tlbiI7czo0MDoiMUVXdjhHdVhJVzBnSXc4UE5xb1I4UmhEZ0R5RFlSOHllbDUzS2E5aSI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJDUuQ0VSM3ljLnNxUEVEYVU4U0VkcXVmZk9ENktuSlIzMTBQemRXTHF1RnIudHRKcjJzL3FPIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCQ1LkNFUjN5Yy5zcVBFRGFVOFNFZHF1ZmZPRDZLbkpSMzEwUHpkV0xxdUZyLnR0SnIycy9xTyI7fQ==', 1641482081);

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `size` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sold_products`
--

CREATE TABLE `sold_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `size_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MCV' COMMENT 'ADM for Admin, MCV for Mobile Center, and CHV for City Hall'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MCV' COMMENT 'ADM for Admin, MCV for Mobile Center, and CHV for City Hall',
  `resume` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `utype`, `resume`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Angelu Merry Tomboc Ilagan', 'angelumerry@gmail.com', 'ADM', 'axNkD6cXqiR82nsPKEfWXkEMHfbCGNBFvQiEkjt3fyYmFZVVjhueQM4YSNyh.pdf', '2022-01-06 05:18:12', '$2y$10$5.CER3yc.sqPEDaU8SEdquffOD6KnJR310PzdWLquFr.ttJr2s/qO', NULL, NULL, NULL, NULL, NULL, '2022-01-05 21:17:52', '2022-01-06 06:44:15'),
(2, 'Ilagan, Angelu Merry T.', 'mamtilagan@tip.edu.ph', 'CHV', '2E7lMcnsjz9CMYqFizqljdXMaV2sCHz2DysQ4GGZP2MELIgSy1kNXDmbiCuy.pdf', NULL, '$2y$10$ysC2zkiujgY6nv8LQyBNxev.3QueNzFBEyxx/8y.7KYI4oOXwHTKq', NULL, NULL, NULL, NULL, NULL, '2022-01-05 22:50:43', '2022-01-06 06:45:23'),
(10, 'Angelou Ilagan', 'n2012242@dlszobel.edu.ph', 'MCV', 'S69oXB0gg70k0by28YMbkiT4hiBobDBDyXMhA00SWjBCYCYz1QbFcaG2sU2c.pdf', NULL, '$2y$10$H7COPBWnZTb1ZNuzekwZ1u54pANpNgyxlQz29pciP8Hn.xTm5KXpW', NULL, NULL, NULL, NULL, NULL, '2022-01-06 06:11:21', '2022-01-06 06:11:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_foreign` (`user_id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `product_requests`
--
ALTER TABLE `product_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_requests_product_id_foreign` (`product_id`),
  ADD KEY `product_requests_size_id_foreign` (`size_id`);

--
-- Indexes for table `product_size_requests`
--
ALTER TABLE `product_size_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_size_requests_product_id_foreign` (`product_id`),
  ADD KEY `product_size_requests_size_id_foreign` (`size_id`);

--
-- Indexes for table `product_size_stocks`
--
ALTER TABLE `product_size_stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_size_stocks_product_id_foreign` (`product_id`),
  ADD KEY `product_size_stocks_size_id_foreign` (`size_id`);

--
-- Indexes for table `product_stocks`
--
ALTER TABLE `product_stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_stocks_product_id_foreign` (`product_id`),
  ADD KEY `product_stocks_size_id_foreign` (`size_id`);

--
-- Indexes for table `return_products`
--
ALTER TABLE `return_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `return_products_product_id_foreign` (`product_id`),
  ADD KEY `return_products_size_id_foreign` (`size_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sold_products`
--
ALTER TABLE `sold_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sold_products_product_id_foreign` (`product_id`),
  ADD KEY `sold_products_size_id_foreign` (`size_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_requests`
--
ALTER TABLE `product_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_size_requests`
--
ALTER TABLE `product_size_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_size_stocks`
--
ALTER TABLE `product_size_stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_stocks`
--
ALTER TABLE `product_stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `return_products`
--
ALTER TABLE `return_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sold_products`
--
ALTER TABLE `sold_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_requests`
--
ALTER TABLE `product_requests`
  ADD CONSTRAINT `product_requests_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `product_requests_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_size_requests`
--
ALTER TABLE `product_size_requests`
  ADD CONSTRAINT `product_size_requests_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_size_requests_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_size_stocks`
--
ALTER TABLE `product_size_stocks`
  ADD CONSTRAINT `product_size_stocks_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_size_stocks_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_stocks`
--
ALTER TABLE `product_stocks`
  ADD CONSTRAINT `product_stocks_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `product_stocks_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `return_products`
--
ALTER TABLE `return_products`
  ADD CONSTRAINT `return_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `return_products_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `sold_products`
--
ALTER TABLE `sold_products`
  ADD CONSTRAINT `sold_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `sold_products_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
