-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 07, 2022 at 01:02 PM
-- Server version: 10.3.28-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `estplerpdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `actionlogs`
--

CREATE TABLE `actionlogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `update_status` int(11) NOT NULL,
  `assign_details_id` int(10) UNSIGNED NOT NULL,
  `assignment_id` int(11) NOT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` double(15,8) NOT NULL,
  `long` double(15,8) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `actionlogs`
--

INSERT INTO `actionlogs` (`id`, `update_status`, `assign_details_id`, `assignment_id`, `comments`, `image`, `lat`, `long`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 1, 'camera is dead', NULL, 1477.58000000, 8874.44000000, '2022-07-16 04:56:43', '2022-07-16 04:56:43'),
(2, 1, 5, 1, 'Road is very bad could not reach on spot', NULL, 120.11000000, 211.11000000, '2022-07-18 00:20:03', '2022-07-18 00:20:03'),
(3, 1, 2, 1, 'No Person on location', NULL, 1477.58000000, 8874.44000000, '2022-07-18 00:21:43', '2022-07-18 00:21:43'),
(4, 1, 2, 1, 'No Person on location', NULL, 120.11000000, 211.11000000, '2022-07-18 00:24:04', '2022-07-18 00:24:04'),
(5, 2, 5, 1, 'Camera Installed in good condition, Job done', NULL, 120.11000000, 211.11000000, '2022-07-18 00:34:49', '2022-07-18 00:34:49'),
(6, 1, 1, 1, 'multple images upload from postman', NULL, 101.33000000, 154.22000000, '2022-07-19 00:54:06', '2022-07-19 00:54:06');

-- --------------------------------------------------------

--
-- Table structure for table `action_images`
--

CREATE TABLE `action_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_task_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `action_images`
--

INSERT INTO `action_images` (`id`, `service_task_id`, `image`, `created_at`, `updated_at`) VALUES
(3, 5, 'Ornatte-home-banner-mobile1.jpg', '2022-07-18 00:20:03', '2022-07-18 00:20:03'),
(4, 5, 'ornatte-pink.png', '2022-07-18 00:20:03', '2022-07-18 00:20:03'),
(5, 5, 'download.png', '2022-07-18 00:20:03', '2022-07-18 00:20:03'),
(8, 2, 'OF-12220-banner (1).png', '2022-07-18 00:24:04', '2022-07-18 00:24:04'),
(9, 2, 'TPSODL_1500x480.jpg', '2022-07-18 00:24:04', '2022-07-18 00:24:04'),
(10, 5, 'images-48-497x616.jpeg', '2022-07-18 00:34:49', '2022-07-18 00:34:49'),
(11, 5, '11.jpg', '2022-07-18 00:34:49', '2022-07-18 00:34:49'),
(12, 5, 'Untitled.png', '2022-07-18 00:34:49', '2022-07-18 00:34:49'),
(13, 1, 'MicrosoftTeams-image (22).png', '2022-07-19 00:54:06', '2022-07-19 00:54:06'),
(14, 1, 'screencapture-erp-estpl-net-assignments-7-action-start-2022-05-12-15_53_02.png', '2022-07-19 00:54:06', '2022-07-19 00:54:06');

-- --------------------------------------------------------

--
-- Table structure for table `action_takens`
--

CREATE TABLE `action_takens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `update_status` int(11) NOT NULL,
  `assign_details_id` int(10) UNSIGNED NOT NULL,
  `assignment_id` int(11) DEFAULT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` double(15,8) NOT NULL,
  `long` double(15,8) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `action_takens`
--

INSERT INTO `action_takens` (`id`, `update_status`, `assign_details_id`, `assignment_id`, `comments`, `image`, `lat`, `long`, `created_at`, `updated_at`) VALUES
(1, 2, 5, 1, 'Camera Installed in good condition, Job done', NULL, 1477.58000000, 8874.44000000, '2022-07-16 04:56:43', '2022-07-18 00:34:49'),
(2, 1, 2, 1, 'No Person on location', NULL, 1477.58000000, 8874.44000000, '2022-07-18 00:21:43', '2022-07-18 00:21:43'),
(3, 1, 1, 1, 'multple images upload from postman', NULL, 101.33000000, 154.22000000, '2022-07-19 00:52:44', '2022-07-19 00:52:44'),
(4, 1, 1, 1, 'multple images upload from postman', NULL, 101.33000000, 154.22000000, '2022-07-19 00:53:08', '2022-07-19 00:53:08'),
(5, 1, 1, 1, 'multple images upload from postman', NULL, 101.33000000, 154.22000000, '2022-07-19 00:54:06', '2022-07-19 00:54:06');

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `block_id` int(10) UNSIGNED NOT NULL,
  `organisation_id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`id`, `subject`, `district_id`, `block_id`, `organisation_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sikharchandi School installation', 5, 12, 2, 1, '2022-06-28 06:42:18', '2022-06-28 06:42:18'),
(2, 'OCAC Tower Installation', 5, 12, 2, 1, '2022-07-05 01:55:57', '2022-07-05 01:55:57');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_details`
--

CREATE TABLE `assignment_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assignment_id` int(10) UNSIGNED NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organisation_location_id` int(11) NOT NULL,
  `distributor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `war_issued_at` date DEFAULT NULL,
  `war_expires_at` date DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assignment_details`
--

INSERT INTO `assignment_details` (`id`, `assignment_id`, `product_id`, `model`, `organisation_location_id`, `distributor`, `serial_number`, `war_issued_at`, `war_expires_at`, `status`, `created_at`, `updated_at`) VALUES
(64, 1, 1, 'DM-23-4333771', 1, 'll', 'SLN-776', '2022-07-14', '2023-07-14', 1, '2022-07-04 12:02:24', '2022-07-04 12:02:24'),
(65, 1, 3, 'vv', 2, 'frfr', 'veve', '2022-07-08', '2024-07-08', 1, '2022-07-04 12:07:42', '2022-07-04 12:07:42'),
(66, 1, 7, 'DM-23-4333771', 1, '434', 'SLN-776', '2022-07-14', '2023-07-14', 1, '2022-07-04 12:09:04', '2022-07-04 12:09:04'),
(67, 1, 5, 'faaf', 1, 'gdg', 'SLN-776', '2022-07-06', '2023-07-06', 1, '2022-07-04 12:12:29', '2022-07-04 12:12:29'),
(68, 1, 6, 'ff', 1, 'ssg', 'czczc', '2022-07-05', '2023-07-05', 1, '2022-07-04 12:14:43', '2022-07-04 12:14:43'),
(69, 2, 5, 'DM-23-4333771', 2, 'samuel', 'SLN-776', '2022-07-04', '2023-07-04', 1, '2022-07-05 01:56:39', '2022-07-05 01:56:39'),
(70, 2, 6, 'DM-23-4333798', 1, 'Ghazni', 'SLN-776', '2022-07-04', '2025-07-04', 1, '2022-07-05 01:57:21', '2022-07-05 01:57:21'),
(71, 2, 1, '55-S', 2, 'Chahuan', 'SLN-776', '2022-07-04', '2023-07-04', 1, '2022-07-05 01:58:09', '2022-07-05 01:58:09'),
(72, 1, 1, '332-44', 2, 'Test user1', 'Orn-127', '2022-07-05', '2024-07-05', 1, '2022-07-06 23:34:29', '2022-07-06 23:34:29'),
(73, 1, 6, 'Dll-122', 2, 'E Square', 'SLN-776', '2022-07-12', '2024-07-12', 1, '2022-07-09 00:05:36', '2022-07-09 00:05:36'),
(74, 1, 7, 'LXE-311', 1, 'CSM', 'SLN-776', '2022-07-13', '2025-07-13', 1, '2022-07-09 00:06:23', '2022-07-09 00:06:23'),
(75, 1, 5, 'HKV-121', 2, 'Ajatus', 'SA-66', '2022-07-10', '2023-07-10', 1, '2022-07-09 00:07:51', '2022-07-09 00:07:51');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_images`
--

CREATE TABLE `assignment_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assignment_details_id` int(10) UNSIGNED NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `id` int(11) NOT NULL,
  `dist_id` int(255) NOT NULL,
  `block` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` (`id`, `dist_id`, `block`) VALUES
(1, 1, 'Bhandaripokhari'),
(2, 1, 'Bhadrak'),
(3, 1, 'Dhamnagar'),
(4, 2, 'Bolangir'),
(5, 2, 'Titlagarh'),
(6, 3, 'Barang'),
(7, 3, 'Niali'),
(8, 3, 'Tigiria'),
(9, 4, 'Kendrapara'),
(10, 4, 'Mahakalpada'),
(11, 4, 'Bhuban'),
(12, 5, 'Bhubaneswar'),
(13, 5, 'Jatani'),
(14, 5, 'Tangi'),
(15, 5, 'Balianta');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT 1,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `menu` tinyint(1) NOT NULL DEFAULT 1,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `parent_id`, `featured`, `menu`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Root', 'root', 'This is the root category, don\'t delete this one', NULL, 0, 0, NULL, '2022-04-04 06:49:28', '2022-04-04 06:49:28'),
(14, 'Keyboards', 'keyboards', 'This is keyboard', 1, 0, 0, 'categories/loPyaziGqTNCDlW6iWNctIfUW.jpg', '2022-04-05 01:44:25', '2022-04-05 04:59:26'),
(16, 'Dell Laptops New', 'dell-laptops-new', 'Dell laptops', 20, 0, 0, 'categories/SkgeJ5CS3nW6aJ3ZR7ik8U2jd.jpg', '2022-04-05 04:44:07', '2022-06-27 00:56:45'),
(17, 'Softwares', 'softwares', 'This is Software Category.', 1, 0, 0, NULL, '2022-04-05 05:00:28', '2022-04-05 05:00:28'),
(18, 'Windows 10 Premium Software', 'windows-10-premium-software', 'windows 10', 17, 0, 0, 'categories/FkWnMwQLC5pfeTXhqdAkTfD26.jpg', '2022-04-05 05:05:41', '2022-04-05 05:06:42'),
(19, 'Avast Antivirus', 'avast-antivirus', 'This is anti viru', 17, 0, 0, NULL, '2022-04-05 05:09:00', '2022-04-05 05:11:10'),
(20, 'Hardwares', 'hardwares', 'Hardware category', 1, 0, 0, 'C:\\xampp\\tmp\\php87F7.tmp', '2022-04-05 07:11:29', '2022-04-18 06:14:37'),
(21, 'Monitors', 'monitors', 'This is Monitors list submited by Team ESTPL DLF BBSR', 20, 0, 0, 'categories/IeWJRNZudsePBfOfQ5daOagrr.jpg', '2022-04-05 07:12:03', '2022-04-18 06:30:30'),
(24, 'Monitors Large', 'monitors-large', 'kacha', 21, 0, 0, NULL, '2022-07-06 01:32:17', '2022-07-06 01:32:17');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `block_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `client_name`, `district_id`, `block_id`, `email`, `phone`, `contact_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sikharchandi Primary School', 5, 12, 'pravat@gmail.com', '8055474557', 'Pravat kumar samal', 1, '2022-04-21 00:03:23', '2022-04-21 00:03:23'),
(2, 'Srusti Institute', 5, 12, 'srusti@gmail.com', '7978855858', 'Laxminarayan patra', 1, '2022-04-21 00:21:15', '2022-04-21 00:21:15'),
(3, 'Saraswati Sisu mandir', 3, 6, 'sarah@example.com', '8887459841', 'Pravasini samal', 1, '2022-04-21 00:22:16', '2022-04-21 00:22:16'),
(4, 'Bhadrak High School', 1, 1, 'rakesh@gmail.com', '8887459841', 'Rakesh Swain', 1, '2022-04-21 00:23:25', '2022-04-21 00:23:25'),
(5, 'Kendrapara Primary School', 4, 10, 'manoj_sahoo@gmail.com', '8877845744', 'Manoj Sahoo', 1, '2022-04-21 00:25:14', '2022-04-21 00:25:14'),
(7, 'Soumyajit Giri', 3, 7, 'soumya@estpl.net', '8874754722', '', 1, '2022-04-25 04:46:26', '2022-04-25 04:46:26'),
(8, 'DLF Cybercity', 5, 12, 'cybercity@dlf.com', '8877457477', 'Robert Vadra', 1, '2022-04-29 00:52:32', '2022-04-29 00:52:32'),
(9, 'Eat Street', 5, 12, 'eat@gmail.com', '3321432211', 'Kanhu', 1, '2022-05-04 06:45:58', '2022-05-04 06:45:58');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(11) NOT NULL,
  `district` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `district`) VALUES
(1, 'Bhadrak'),
(2, 'Bolangir'),
(3, 'Cuttack'),
(4, 'Kendrapara'),
(5, 'Khurda');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2021_03_18_071053_create_posts_table', 1),
(10, '2021_03_18_130711_create_permission_tables', 1),
(11, '2021_03_30_110505_create_proposed_projects_table', 1),
(12, '2022_04_04_072729_create_categories_table', 2),
(13, '2022_04_08_060209_create_vendors_table', 3),
(14, '2022_04_16_052501_create_products_table', 4),
(15, '2022_04_19_115747_create_clients_table', 5),
(16, '2022_04_22_123724_create_assignments_table', 6),
(17, '2022_04_26_073219_create_assignment_details_table', 7),
(18, '2022_04_30_094244_create_action_takens_table', 8),
(19, '2022_05_18_064107_create_assignment_images_table', 9),
(20, '2022_06_03_053853_create_services_tasks_table', 10),
(21, '2022_07_12_131147_create_actionlogs_table', 11),
(22, '2022_07_15_092931_create_action_images_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(0, 'App\\User', 3),
(1, 'App\\User', 2),
(2, 'App\\User', 3),
(2, 'App\\User', 4),
(2, 'App\\User', 5),
(3, 'App\\User', 6);

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
('00b33bc29dc91389da06b86122ff88a696975ff5b8498d41d93a302fbc793d1bf937625fd9302e86', 3, 3, 'MyApp', '[]', 0, '2022-04-06 00:50:21', '2022-04-06 00:50:21', '2023-04-06 06:20:21'),
('05fdf516a1f3ef44ec257185f954a7a5cf18a14d21b4264b1d839bf2c1fb41cbaa2893fab16fbe89', 3, 3, 'MyApp', '[]', 0, '2022-04-07 02:08:11', '2022-04-07 02:08:11', '2023-04-07 07:38:11'),
('06f7506f927a0dec9cdeea304bb1118cdbbb31e9c04219d2216878f6f1ec3ce38619b886b8429243', 3, 3, 'MyApp', '[]', 0, '2022-04-07 05:56:02', '2022-04-07 05:56:02', '2023-04-07 11:26:02'),
('0c23c9297f9c8906983649f021c96526df6861fa8550c7edb2ee84d57666989ed9ed3d9e34079c52', 3, 3, 'MyApp', '[]', 0, '2022-04-06 08:05:45', '2022-04-06 08:05:45', '2023-04-06 13:35:45'),
('1394aa4c5e126427d88ad71c03d72697a27df5dfa88ca56f306f117a28b6cc1a5a058416387671af', 3, 3, 'MyApp', '[]', 0, '2022-04-07 07:39:32', '2022-04-07 07:39:32', '2023-04-07 13:09:32'),
('14a8730be7400186216bfd3090f93c73d817a4dcbe8bc9db7e99d5ad589197ede0e55ee0a54242c6', 3, 3, 'MyApp', '[]', 0, '2022-04-06 23:47:26', '2022-04-06 23:47:26', '2023-04-07 05:17:26'),
('14ac0aa1e3233c9612d59de1d02e53661eac91f47febe50006914f7758f00fb179a2ddef0b41b694', 3, 3, 'MyApp', '[]', 0, '2022-04-06 06:26:38', '2022-04-06 06:26:38', '2023-04-06 11:56:38'),
('1745a768a467edcdb08a48a9998da7787172fff7a02d983fa28531f8e8c72b87524358b2ebd226b8', 3, 3, 'MyApp', '[]', 0, '2022-04-07 01:40:03', '2022-04-07 01:40:03', '2023-04-07 07:10:03'),
('1adbac2d1dc2a6a9382185f2959a758830cf06904b6ddd5b82f3aa277f56207ce00517e7444dd431', 3, 3, 'MyApp', '[]', 0, '2022-04-07 03:56:16', '2022-04-07 03:56:16', '2023-04-07 09:26:16'),
('1af5581a8853ce706af4ca53a5ab9d7e5a6063fc1084394a8842a5a551a224b1b85905bf7a8c7b2f', 3, 3, 'MyApp', '[]', 0, '2022-04-06 08:04:06', '2022-04-06 08:04:06', '2023-04-06 13:34:06'),
('1f9841acd64cfd0276309bf6ab5ddb8105d32c71189adf024969646df97c5a56fd2aee5bf7f78881', 3, 3, 'MyApp', '[]', 0, '2022-04-07 01:23:13', '2022-04-07 01:23:13', '2023-04-07 06:53:13'),
('1fa5f8e2b88188b9ce54e39997ba2bf1aef9f58576550eb77f298507570ec19273666abb2b6c9dfd', 3, 3, 'MyApp', '[]', 0, '2022-05-06 01:04:07', '2022-05-06 01:04:07', '2023-05-06 06:34:07'),
('276c67ce6553768e6221d90117ea6d6aac3f2f8d4358635c87c0f7d8638e6e61b9afbdeb6ef6912e', 3, 3, 'MyApp', '[]', 0, '2022-04-07 01:40:51', '2022-04-07 01:40:51', '2023-04-07 07:10:51'),
('2d2af1fe4309afe25ef842bd7a5b9dd46f9c40eb2f56e296fcf4959b8262a797315abdf1bbbb0a50', 3, 3, 'MyApp', '[]', 0, '2022-04-07 06:20:30', '2022-04-07 06:20:30', '2023-04-07 11:50:30'),
('2e2bf71999a132c7b07014d5c4129590132ed857226e8e16f6a54949f692893dd1287139bf32fb43', 3, 3, 'MyApp', '[]', 0, '2022-04-06 05:49:29', '2022-04-06 05:49:29', '2023-04-06 11:19:29'),
('2f1e4f75c6d0fecfb1e1087055c6ca4884ad116ff2ea4048fa0709ed1d2db22019608dbcacb2df44', 3, 3, 'MyApp', '[]', 0, '2022-05-30 01:12:32', '2022-05-30 01:12:32', '2023-05-30 06:42:32'),
('2f9764a390ac6d55a2fc40094ae4d4c3b5ff54523847d05e11f7db0c31e6183fc9927e972d191839', 3, 3, 'MyApp', '[]', 0, '2022-04-06 06:38:58', '2022-04-06 06:38:58', '2023-04-06 12:08:58'),
('2fbc546e66c7b9b23ef2090bd6e9d9ac113ad69aa94506a32bc08bccb00934e4183a3bf8530a1ce7', 3, 3, 'MyApp', '[]', 0, '2022-04-06 06:18:22', '2022-04-06 06:18:22', '2023-04-06 11:48:22'),
('3152d2752cb16d8d553fda3a8ad2d66886f5ed2bcf51ffdaef77a70e0f79d3d19b29cea5e5cf6fa7', 3, 3, 'MyApp', '[]', 0, '2022-05-02 07:46:01', '2022-05-02 07:46:01', '2023-05-02 13:16:01'),
('330c1cc58060249419eca02b85f4ae9b7255a3b465b97b649f70243b0cec466c0deb0bc5e6a87314', 3, 3, 'MyApp', '[]', 0, '2022-03-22 04:25:27', '2022-03-22 04:25:27', '2023-03-22 09:55:27'),
('33c04470413c3646a5c9a5031059f311f00ad43f6adda50cb87131d4e434c25b52330649bc772fa3', 3, 3, 'MyApp', '[]', 0, '2022-04-07 01:43:14', '2022-04-07 01:43:14', '2023-04-07 07:13:14'),
('3536fb1772f96d7f3aa2fb1c1aaeba8c90f114be92c55d152c83f8b5b9aaeecf2e89dbf449de177c', 3, 3, 'MyApp', '[]', 0, '2022-04-06 01:37:31', '2022-04-06 01:37:31', '2023-04-06 07:07:31'),
('393c67f162b63bce82bd00fe8ccc9bca3a67ad1d1450c6bf8d773591096193f9d9b6aea2483e3096', 3, 3, 'MyApp', '[]', 0, '2022-04-07 03:48:08', '2022-04-07 03:48:08', '2023-04-07 09:18:08'),
('39b28cb60adc763ecf5034f1ecf4b076c142f9f8ceeec138326dffb6e40321be2a977a0bc4603e62', 3, 3, 'MyApp', '[]', 0, '2022-03-26 00:47:22', '2022-03-26 00:47:22', '2023-03-26 06:17:22'),
('3b7fa3f1a0b05c452661de556f2ae9abfbb10f18ae6be46f2786e99e3fe073cf0dbabd3316a1b6f2', 3, 3, 'MyApp', '[]', 0, '2022-04-06 06:38:01', '2022-04-06 06:38:01', '2023-04-06 12:08:01'),
('3c07b1f3284799c4aca523a7eea7f0dc0a9f9d8a80b2216fce4c6cffeca1ec1579b57ea517b0a5a9', 3, 3, 'MyApp', '[]', 0, '2022-03-26 06:47:32', '2022-03-26 06:47:32', '2023-03-26 12:17:32'),
('3d7f76e4f51936a086306e573a0dd45ae6102495a3247414c6308d242d25438d9c0cb66ca747eac8', 3, 3, 'MyApp', '[]', 0, '2022-07-01 05:53:01', '2022-07-01 05:53:01', '2023-07-01 11:23:01'),
('4046b7a8bd87b9f2dae46bbc6f81dc7056544a3e4a833a7617ee11ea8b7f9390dcb6f5d860096cb0', 5, 3, 'MyApp', '[]', 0, '2022-05-06 01:04:48', '2022-05-06 01:04:48', '2023-05-06 06:34:48'),
('40598b29ad242fb684b857b559894bbfa32aff9a30e6fa258812a88dfd8d80c19e3f5741d4ab42c5', 3, 3, 'MyApp', '[]', 0, '2022-04-07 01:38:24', '2022-04-07 01:38:24', '2023-04-07 07:08:24'),
('4069b4579c027e7e1bef1d50b0e639554ebccb6c0a8d3b08657fcdebdcaa950cc64747874aea0ad9', 3, 3, 'MyApp', '[]', 0, '2022-06-10 03:41:24', '2022-06-10 03:41:24', '2023-06-10 09:11:24'),
('40b2e7301dce501730c3c8e576a4a2437ae3ac8721f591ba306bb91160680738c12da71d2fa2c7a1', 3, 3, 'MyApp', '[]', 0, '2022-04-07 07:39:49', '2022-04-07 07:39:49', '2023-04-07 13:09:49'),
('429a5dd49597b299625957d86a39e264632fb020f448291aa1a65415a8a610470c4d9c78f40b78dc', 3, 3, 'MyApp', '[]', 0, '2022-04-07 03:46:41', '2022-04-07 03:46:41', '2023-04-07 09:16:41'),
('4458d424e341d243143336717608a2ccdeebf18cce86299e65f5023128b6a6be9d6663c6d8c5935e', 3, 3, 'MyApp', '[]', 0, '2022-03-28 07:43:16', '2022-03-28 07:43:16', '2023-03-28 13:13:16'),
('4763ff2cc36d20f40644096f3c65d91bc08e87f841ca8a41d0a935b64a06bbbefa41e708b55761c1', 2, 3, 'MyApp', '[]', 0, '2022-03-22 02:10:46', '2022-03-22 02:10:46', '2023-03-22 07:40:46'),
('483532afc0207a2a5d7486562e1d7d8074c923184039bc25703a58df58b38d3e2ca412ceab58e495', 3, 3, 'MyApp', '[]', 0, '2022-04-07 02:17:59', '2022-04-07 02:17:59', '2023-04-07 07:47:59'),
('4850f591454f0838794faaa13e4e20fec3ae9f6ae25be0101148079019ea721455089c1489752f89', 3, 3, 'MyApp', '[]', 0, '2022-04-07 05:57:36', '2022-04-07 05:57:36', '2023-04-07 11:27:36'),
('4c32f7c439727c2bdd3ec35453f71a95399f4204779909392b8f7f0a73dd92a40b01af5f210c5dc5', 3, 3, 'MyApp', '[]', 0, '2022-04-07 01:58:45', '2022-04-07 01:58:45', '2023-04-07 07:28:45'),
('4f048348d161cddf8a638154ae92bf5f28ff66adf2be72f8991cae00f650d4ce56f323c852f11020', 3, 3, 'MyApp', '[]', 0, '2022-04-07 02:17:30', '2022-04-07 02:17:30', '2023-04-07 07:47:30'),
('534a109dd2b87b1a95afe70faab1163d07a8ac98b464f01b2f8a29fc6ce410516c199d0fcea0b768', 3, 3, 'MyApp', '[]', 0, '2022-05-02 01:47:03', '2022-05-02 01:47:03', '2023-05-02 07:17:03'),
('5434d1cf5ad87440c82b84b91cf2e7f6ea9431b1a9953b17d1f4e16e98de78eb6480d8a5cc2e7b96', 3, 3, 'MyApp', '[]', 0, '2022-05-28 00:23:48', '2022-05-28 00:23:48', '2023-05-28 05:53:48'),
('5ab5cf2638bcbecc8945ab6718c94663791023def4a3382efcdbd6c058990926e3d396df36d061bf', 3, 3, 'MyApp', '[]', 0, '2022-07-06 06:47:31', '2022-07-06 06:47:31', '2023-07-06 12:17:31'),
('66ccafd060c80f77c9911bde91fc57a9efb3399eb725379e0db801b1fd20d8c2c73002fea633e201', 3, 3, 'MyApp', '[]', 0, '2022-04-08 08:11:16', '2022-04-08 08:11:16', '2023-04-08 13:41:16'),
('67e838626f8d6c21b998fcbf264543f53ee1e20e96103af817a03406ddea9ca68c2b28004843bb70', 3, 3, 'MyApp', '[]', 0, '2022-03-28 05:53:36', '2022-03-28 05:53:36', '2023-03-28 11:23:36'),
('691bb6bc4076b961cecbe5263053c419a66715178f8bb19eecfee6d4f8284b0f0f5979d0b845d38c', 3, 3, 'MyApp', '[]', 0, '2022-04-06 06:17:25', '2022-04-06 06:17:25', '2023-04-06 11:47:25'),
('69d38210f0c4f605108973950395e5be7e15dd6a57a3b955aaada62ee675c5ccf0b002dc6458ec9d', 4, 3, 'MyApp', '[]', 0, '2022-05-12 05:15:24', '2022-05-12 05:15:24', '2023-05-12 10:45:24'),
('6b464d2d50fe9db79317fe1ac77dd67b4a66ae63ddf78550d6fa037a0660baf4531928900c99252d', 3, 3, 'MyApp', '[]', 0, '2022-04-07 02:10:49', '2022-04-07 02:10:49', '2023-04-07 07:40:49'),
('6deba628232f3b4636ec1c2ad894874e9ced00739af99cb6f4ca8c1c43f11f6e5f72969ad7dab4e0', 3, 3, 'MyApp', '[]', 0, '2022-03-28 05:51:24', '2022-03-28 05:51:24', '2023-03-28 11:21:24'),
('6e3b7dd29ed1d098a9114026c20b760bca3eef7012f4a3b20218a76288d097554214464f0205fc52', 3, 3, 'MyApp', '[]', 0, '2022-04-07 05:53:23', '2022-04-07 05:53:23', '2023-04-07 11:23:23'),
('6ef35a25573f7e863387898bd5ddf8ac3c2b49b6ae81fc1c097ed78857ab8036c03437cb77579463', 3, 3, 'MyApp', '[]', 0, '2022-04-07 01:25:14', '2022-04-07 01:25:14', '2023-04-07 06:55:14'),
('6f523a57421f4db9906b67c94b2af0897579547fe6cbf96c7d8d369a3fa32985a88cb284d3d7a874', 3, 3, 'MyApp', '[]', 0, '2022-04-06 07:03:10', '2022-04-06 07:03:10', '2023-04-06 12:33:10'),
('7a42c35b6961877d89b84f4bff89eefab00c884a50101362d3b7bc7fdc9f42028010702c81459cdd', 3, 3, 'MyApp', '[]', 0, '2022-04-06 06:11:17', '2022-04-06 06:11:17', '2023-04-06 11:41:17'),
('7f901be0ce2f56d25ba8b0363e53c155005c5ed20ff2de6c6f9d54adde60ebc73efbfd6593448844', 3, 3, 'MyApp', '[]', 0, '2022-03-28 07:37:20', '2022-03-28 07:37:20', '2023-03-28 13:07:20'),
('815ffe58046562d58a8f71af2435f42aa2e94de3b5520961e9e3469dc1443063b8b3d25b07ec78d0', 3, 3, 'MyApp', '[]', 0, '2022-04-06 23:49:47', '2022-04-06 23:49:47', '2023-04-07 05:19:47'),
('846bf29feeb92ef05648ed471d52f983ae37576e8cf59c8fcabac79eb5db89e02e1fcc8ac28d9c87', 3, 3, 'MyApp', '[]', 0, '2022-04-06 07:42:18', '2022-04-06 07:42:18', '2023-04-06 13:12:18'),
('858bb7666423cfe730e3cbac0e8342ad545c16b40a518a631a9022f939c353ba0e0fd885895c255f', 3, 3, 'MyApp', '[]', 0, '2022-03-28 05:50:46', '2022-03-28 05:50:46', '2023-03-28 11:20:46'),
('8914b3da294164fdc50eed65ef302ea202e81155820256d68c79ad2a3917ade5284d3d05238cc932', 3, 3, 'MyApp', '[]', 0, '2022-04-06 01:45:18', '2022-04-06 01:45:18', '2023-04-06 07:15:18'),
('8b738444c945ff8074b79bf74d13de99f9a79b4f777a27c203c507b1f5006ab30629288342fff64d', 3, 3, 'MyApp', '[]', 0, '2022-04-06 06:22:09', '2022-04-06 06:22:09', '2023-04-06 11:52:09'),
('8e3d1eff9193aa0fd7e73492bcc363c81d0d999bdb68b50f4c00138f73b5924153a187b31d620f1d', 3, 3, 'MyApp', '[]', 0, '2022-03-28 23:55:08', '2022-03-28 23:55:08', '2023-03-29 05:25:08'),
('8e6d8a7225333dad739c23d7f312f6008fe91ff37e9b6a539e903d281eb05bb8d8d211e0317ee4a2', 3, 3, 'MyApp', '[]', 0, '2022-05-09 03:43:48', '2022-05-09 03:43:48', '2023-05-09 09:13:48'),
('8f9a302d72acd5672265ed47c8cfa32d5470ff10869bbd2afa81df411f2cec01bcb0bbcba779f584', 3, 3, 'MyApp', '[]', 0, '2022-04-20 00:09:41', '2022-04-20 00:09:41', '2023-04-20 05:39:41'),
('8fa35965153a0342e09460c3d03602f18be75f88da7ba9b7cb53247d93c25a6b1658345a1ac7baa5', 3, 3, 'MyApp', '[]', 0, '2022-04-06 01:44:14', '2022-04-06 01:44:14', '2023-04-06 07:14:14'),
('949762dea52416a9683ba3da0716beb773684fc099b4386dcbf138b4c2f0353e527c83a8db45cd47', 3, 3, 'MyApp', '[]', 0, '2022-03-28 07:49:17', '2022-03-28 07:49:17', '2023-03-28 13:19:17'),
('9aeeaf3f5d2fd06afcc89363b1fbead1e11ce1f1e8773b0a648a6ced2ef21d26515df4bf26fd3b91', 3, 3, 'MyApp', '[]', 0, '2022-04-06 06:31:27', '2022-04-06 06:31:27', '2023-04-06 12:01:27'),
('9b75e6f6d2cf73414f3e62bf8a3e3ab5afe8ac7d27ef63a355f6393c1df3086b6e75218903f9fa54', 2, 3, 'MyApp', '[]', 0, '2022-04-25 04:33:22', '2022-04-25 04:33:22', '2023-04-25 10:03:22'),
('9e8cc7f8a433037cfe83380b3bc0c3cf6cd15d9b56a0a0aad57ba330ebc70ecba4a43dade61ed678', 3, 3, 'MyApp', '[]', 0, '2022-04-06 07:07:57', '2022-04-06 07:07:57', '2023-04-06 12:37:57'),
('9f2003cb909f5972c4426f68997cc41e780b5ad67fe347a2a55bae4811e42ea7abca57e5e15a1203', 3, 3, 'MyApp', '[]', 0, '2022-06-22 23:35:31', '2022-06-22 23:35:31', '2023-06-23 05:05:31'),
('9f4531c14613589460f1442b17839cb21d102d3d807a228a3853e7786276d3b327076e73e7c354cd', 3, 3, 'MyApp', '[]', 0, '2022-04-06 07:01:35', '2022-04-06 07:01:35', '2023-04-06 12:31:35'),
('a7e46f081bcab14ff735a6976da82652999a9d75b1ea35c7e6beeeaa99f705ba7512119a19a45e20', 3, 3, 'MyApp', '[]', 0, '2022-04-07 05:53:32', '2022-04-07 05:53:32', '2023-04-07 11:23:32'),
('a9adc48356ae8ffb5c9c471be97f2fb6e5a51e02f1b2dfb978447dc62a92c0ade27748d738acebaa', 3, 3, 'MyApp', '[]', 0, '2022-04-30 06:59:21', '2022-04-30 06:59:21', '2023-04-30 12:29:21'),
('aa3dc34118f34ed4775629d46a6465a9047477d053fdf87d60a60673958152b7e218f17321191f00', 3, 3, 'MyApp', '[]', 0, '2022-05-30 02:04:02', '2022-05-30 02:04:02', '2023-05-30 07:34:02'),
('ab666296b986ccabe45e89fe13546a5f5d251772fd570c13ad36ed79415ef648a9493d9ac2eb3cbc', 3, 3, 'MyApp', '[]', 0, '2022-04-06 07:39:53', '2022-04-06 07:39:53', '2023-04-06 13:09:53'),
('ab94c23896a229b5bd405c7a4bdf69bc0dfe7f0ba96bfecf6937b8456b2415ad3ca88fb3bb5b8981', 3, 3, 'MyApp', '[]', 0, '2022-04-06 06:09:20', '2022-04-06 06:09:20', '2023-04-06 11:39:20'),
('b467b15bc4f08ed1e8426933b2dba38ad1520950b3337e709ca319fa2fdc328d9dd98a24bb2a7365', 3, 3, 'MyApp', '[]', 0, '2022-04-06 06:41:14', '2022-04-06 06:41:14', '2023-04-06 12:11:14'),
('b54157e613ea234fc613529512f423d7d4a6e3a860ae18713d742001dec1c7926d2a37addf191f47', 3, 3, 'MyApp', '[]', 0, '2022-04-07 01:44:02', '2022-04-07 01:44:02', '2023-04-07 07:14:02'),
('b6ee82a1bd346aa2e42facf6aaa80bfaa0463f0715203d2a27922a4c42889e551e52b3dd59cc93e5', 3, 3, 'MyApp', '[]', 0, '2022-04-08 00:14:47', '2022-04-08 00:14:47', '2023-04-08 05:44:47'),
('ba77aa0aefb73f4e9db41064070d91908132ecb7353510634f5332e3d7cc09833cbedf620626ea26', 3, 3, 'MyApp', '[]', 0, '2022-04-06 06:24:11', '2022-04-06 06:24:11', '2023-04-06 11:54:11'),
('c50f81b0c67da2108c9f0c67799bdae4da9f9781e603e5bc54ce2a79ad3b369ffdeeb1e3f455bfe3', 3, 3, 'MyApp', '[]', 0, '2022-03-28 05:42:00', '2022-03-28 05:42:00', '2023-03-28 11:12:00'),
('c52fef934b10f035ab19912f2c995d9f16db0cf0c130dd69de7e03b327077218169afdead618374d', 3, 3, 'MyApp', '[]', 0, '2022-04-06 23:49:09', '2022-04-06 23:49:09', '2023-04-07 05:19:09'),
('c6cfe38ef84e6b960e09968a1def24dc018d414791e8072cd9702cfff99ad0e352d1dd9f11d2433d', 3, 3, 'MyApp', '[]', 0, '2022-04-06 06:39:24', '2022-04-06 06:39:24', '2023-04-06 12:09:24'),
('cfb5ddcb482f540e68a5bcca640ab755517e9ff8bb91dfb66930897ae84df29ca6b089a126c3d857', 3, 3, 'MyApp', '[]', 0, '2022-04-06 06:05:06', '2022-04-06 06:05:06', '2023-04-06 11:35:06'),
('d499964322bd9fb6e32a8093955f9b7725ac44351c761ad7160273029128a46c515fa98af46adc53', 3, 3, 'MyApp', '[]', 0, '2022-05-12 00:19:11', '2022-05-12 00:19:11', '2023-05-12 05:49:11'),
('d4d5b25e5defc38104e05252e8dde8f179b30db50c4bf3385b94e7efb04f70e23c6b31c8534c2a85', 3, 3, 'MyApp', '[]', 0, '2022-04-06 23:57:35', '2022-04-06 23:57:35', '2023-04-07 05:27:35'),
('d70880ba453943e6abf9aca254a9c944eaa03ad3fd6420fa85526af2ce51b8e522fb0baf5311cd15', 3, 3, 'MyApp', '[]', 0, '2022-05-09 03:44:54', '2022-05-09 03:44:54', '2023-05-09 09:14:54'),
('d8bf33df31f039a3d1189bfe8387be46e3e8297ba0227c5e79aca5551846b69da6f2cd2caa89ccf5', 2, 3, 'MyApp', '[]', 0, '2022-03-26 00:45:12', '2022-03-26 00:45:12', '2023-03-26 06:15:12'),
('d8d0d1f501857ec9aadb7f62f97b52117382da8d9a69d518366c8af4f18ed54e4af3945b7cbb2f2c', 3, 3, 'MyApp', '[]', 0, '2022-04-07 00:03:35', '2022-04-07 00:03:35', '2023-04-07 05:33:35'),
('de41a4e7d37904b6abed3a26325fd1eaf5bf1bf79182278e7f72d1a55d384a34b6ca5e39e88d88c1', 3, 3, 'MyApp', '[]', 0, '2022-05-29 23:30:47', '2022-05-29 23:30:47', '2023-05-30 05:00:47'),
('e0770b78c1547e5e49df7f876ab00e0c275d8ac7b206af8f6874327a0d32dffa7b496ab4d06d41a0', 3, 3, 'MyApp', '[]', 0, '2022-04-07 00:18:46', '2022-04-07 00:18:46', '2023-04-07 05:48:46'),
('e90936ab16b338bf10db5e00ead3192706db1ab8be5abaa0200ea01a2fcfd8762a89bb618e7e860c', 3, 3, 'MyApp', '[]', 0, '2022-04-06 01:46:25', '2022-04-06 01:46:25', '2023-04-06 07:16:25'),
('eb9f6d6963fd2c5fdc32ca861901d4288339cfe150387d1a866408d1da2407d04a5cbf81b2443772', 3, 3, 'MyApp', '[]', 0, '2022-06-11 00:41:08', '2022-06-11 00:41:08', '2023-06-11 06:11:08'),
('ec3b093456974cbf2fa30df5eb80560ccd7c561c9b155147a2d9784e0236143bfeda56e0ddbe011d', 3, 3, 'MyApp', '[]', 0, '2022-04-07 06:20:01', '2022-04-07 06:20:01', '2023-04-07 11:50:01'),
('ed5ebd3fa5b5a3825a6ed5464bf438ec184f201a311ef0db3d3e3932da1e169ad57c1d52c0cc6a0a', 3, 3, 'MyApp', '[]', 0, '2022-04-20 00:00:41', '2022-04-20 00:00:41', '2023-04-20 05:30:41'),
('ef67edc0b5cf475dde01fd2c3d091c5ca63a8f01fa74216d695ad89403cd21f59dff8ab3731b4970', 3, 3, 'MyApp', '[]', 0, '2022-06-09 23:36:44', '2022-06-09 23:36:44', '2023-06-10 05:06:44'),
('f24ef2cb68bdb8ba225349a26bda5b3789eb85ac38ca9259c930d4f5ddb78ffc7b7a2ffc9a90465f', 3, 3, 'MyApp', '[]', 0, '2022-04-07 01:17:02', '2022-04-07 01:17:02', '2023-04-07 06:47:02'),
('f2ebba42cc3a4999ed27cc88f2fc999284b2d1930cc09b2d011916e856acef6ac8eee97f2e50a392', 3, 3, 'MyApp', '[]', 0, '2022-04-07 01:28:31', '2022-04-07 01:28:31', '2023-04-07 06:58:31'),
('f56fcf8cba9e13f3b078e0ace98c5178705a7017adea591318d7dd4f4781819246c36cea869b4847', 3, 3, 'MyApp', '[]', 0, '2022-04-06 07:43:52', '2022-04-06 07:43:52', '2023-04-06 13:13:52'),
('fb757ab6b257f468bcd0ab374d6023b2d60df59c4de5061291546a4ec01c4854d436a204e9f8be83', 3, 3, 'MyApp', '[]', 0, '2022-04-20 00:09:57', '2022-04-20 00:09:57', '2023-04-20 05:39:57');

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
(1, NULL, 'Project Monitoring Information System. Personal Access Client', 'lAEtNDbJ1th9fCcUWBFRGq38ILevL4r3uTUYvyN8', NULL, 'http://localhost', 1, 0, 0, '2022-03-12 05:44:50', '2022-03-12 05:44:50'),
(2, NULL, 'Project Monitoring Information System. Password Grant Client', 'zU1Qo5jx9bJ6zJn0x8HdrFVOTMzG6onIygqUkE9H', 'users', 'http://localhost', 0, 1, 0, '2022-03-12 05:44:50', '2022-03-12 05:44:50'),
(3, NULL, 'Project Monitoring Information System. Personal Access Client', 'dmYvHcD0W3vZHaAu0ZPhSLU9A2nyq1WE2cODDqLQ', NULL, 'http://localhost', 1, 0, 0, '2022-03-12 05:45:15', '2022-03-12 05:45:15'),
(4, NULL, 'Project Monitoring Information System. Password Grant Client', 'YDFw1qRVbfrsMO1iY6sJlOAxYbGgNJkbDlQ3xreY', 'users', 'http://localhost', 0, 1, 0, '2022-03-12 05:45:15', '2022-03-12 05:45:15'),
(5, NULL, 'Laravel Personal Access Client', 'SubQrTu8gDvmLH821V2TFKPu0C7lbxCungbOUcSI', NULL, 'http://localhost', 1, 0, 0, '2022-03-22 01:04:02', '2022-03-22 01:04:02'),
(6, NULL, 'Laravel Personal Access Client', 'miIxJrdUU3f8lNHQJ6PQdubtoiUrZtThKldI1Tnc', NULL, 'http://localhost', 1, 0, 0, '2022-03-22 01:07:28', '2022-03-22 01:07:28'),
(7, NULL, 'Laravel Password Grant Client', '10UWN6wtXmV7lQsIwuDBfu8U9HOjGgXrKSuxgxd9', 'users', 'http://localhost', 0, 1, 0, '2022-03-22 01:07:28', '2022-03-22 01:07:28'),
(8, NULL, 'Laravel Personal Access Client', 'iT2cpavB9B2UtQBht8IXyK9DJQ86E05PrHTjNf4Y', NULL, 'http://localhost', 1, 0, 0, '2022-03-22 01:07:59', '2022-03-22 01:07:59'),
(9, 1, 'Surya', '9HGBpG5WYdI96ciMwR9O0SKxhmUcLJ3JkXnEIyWf', NULL, 'home', 0, 0, 0, '2022-03-26 00:59:24', '2022-03-26 00:59:24');

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
(0, 6, '2022-03-22 01:07:28', '2022-03-22 01:07:28'),
(1, 1, '2022-03-12 05:44:50', '2022-03-12 05:44:50'),
(2, 3, '2022-03-12 05:45:15', '2022-03-12 05:45:15');

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
-- Table structure for table `organisations`
--

CREATE TABLE `organisations` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_parent_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office_pin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mailing_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mailing_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mailing_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mailing_pin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_contact_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_contact_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Primary_contact_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Primary_contactalt_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Primary_contaddr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entered_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `organisations`
--

INSERT INTO `organisations` (`id`, `company_name`, `company_parent_name`, `office_city`, `office_state`, `office_pin`, `mailing_address`, `mailing_city`, `mailing_state`, `mailing_pin`, `fax`, `primary_contact_name`, `primary_contact_email`, `Primary_contact_phone`, `Primary_contactalt_phone`, `Primary_contaddr`, `entered_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 'OCAC', '0', 'Bhubaneswar', 'Odisha', '751024', 'sdsd', 'Puri', 'Odisha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-28 06:40:50', '2022-06-28 06:40:50'),
(2, 'Misson Sakti', '1', 'dadad', 'Odisha', '3323211', 'dlf cybercity', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-28 06:41:20', '2022-06-28 06:41:20');

-- --------------------------------------------------------

--
-- Table structure for table `organisation_contact_infos`
--

CREATE TABLE `organisation_contact_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organisation_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organisation_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organisation_contact_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organisation_contact_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organisation_contact_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organisation_contact_altphone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organisation_contact_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entered_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `organisation_locations`
--

CREATE TABLE `organisation_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organisation_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organisation_location_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organisation_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organisation_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organisation_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organisation_pin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entered_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `organisation_locations`
--

INSERT INTO `organisation_locations` (`id`, `organisation_name`, `organisation_location_name`, `organisation_address`, `organisation_city`, `organisation_state`, `organisation_pin`, `entered_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, '2', 'Acharya Vihar', 'sdsd', 'Bhubaneswar', 'Odisha', '752110', NULL, NULL, '2022-06-28 06:41:58', '2022-06-28 06:41:58'),
(2, '2', 'Infocity', 'Patia', 'Bhubaneswar', 'Odisha', '752122', NULL, NULL, '2022-06-29 01:42:39', '2022-06-29 01:42:39');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', '2022-03-12 06:01:02', '2022-03-12 06:01:02'),
(2, 'role-create', 'web', '2022-03-12 06:01:02', '2022-03-12 06:01:02'),
(3, 'role-edit', 'web', '2022-03-12 06:01:02', '2022-03-12 06:01:02'),
(4, 'role-delete', 'web', '2022-03-12 06:01:02', '2022-03-12 06:01:02'),
(5, 'product-list', 'web', '2022-03-12 06:01:02', '2022-03-12 06:01:02'),
(6, 'product-create', 'web', '2022-03-12 06:01:02', '2022-03-12 06:01:02'),
(7, 'product-edit', 'web', '2022-03-12 06:01:02', '2022-03-12 06:01:02'),
(8, 'product-delete', 'web', '2022-03-12 06:01:02', '2022-03-12 06:01:02');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `vendor_id`, `category_id`, `sku`, `name`, `slug`, `image`, `description`, `quantity`, `price`, `status`, `created_at`, `updated_at`) VALUES
(1, 14, 21, 'ESTPL-033', 'ornatte new', 'ornatte-new', 'products/DM6qA4YGGM8ql4eDuuQJR1nk8.png', 'fdfdfdf', 5, '6020.00', 1, '2022-04-16 06:16:46', '2022-04-18 07:02:37'),
(2, 14, 12, 'ESTPL-577', 'demo product', 'demo-product', 'products/KXYrjs7oN3GtfqUFAU1uRlYhO.jpg', 'cccczzc', 5, '11999.00', 1, '2022-04-18 00:05:08', '2022-04-18 07:03:00'),
(3, 9, 14, 'ESTPL-011', 'Test ESTPL', 'test-estpl', 'products/AnIJiaI59pkN5vKLQvA0BSqdC.png', 'sasas', 5, '10999.00', 1, '2022-04-18 00:38:58', '2022-04-18 07:03:29'),
(4, 9, 18, 'ESTPL-05', 'Avast Antivirus Plus', 'avast-antivirus-plus', 'products/Yj1fTcjcVzwf3k67c9lo1y0M8.jpg', 'fdfdf', 5, '6007.00', 1, '2022-04-18 05:45:21', '2022-04-18 06:02:22'),
(5, 9, 20, 'ESTPL-023', 'Hikvision CCTV Camera', 'hikvision-cctv-camera', 'products/U4Mwxvcw9RDU9vz9ljnZ3aEgC.png', 'adadad', 100, '10999.00', 1, '2022-04-29 01:07:54', '2022-04-29 01:07:54'),
(6, 10, 21, 'ESTPL-043', 'Dell Monitors', 'dell-monitors', 'products/OLfhVlnSZd9jyaCbX70W88j2X.jpg', 'dd', 100, '12999.00', 1, '2022-04-29 01:09:45', '2022-04-29 01:09:45'),
(7, 9, 20, 'ESTPL-22', 'Hi Luxe', 'hi-luxe', 'products/JSnrD9QDAo9h8xONY3WRP20HM.png', 'fsfds', 15, '499.00', 1, '2022-06-21 07:12:23', '2022-06-27 00:03:46'),
(8, 9, 20, '212-wdw', 'test prods', 'test-prods', 'products/JIqtzEO75DOALNG5TKomrKZQV.png', 'fcc', 77, '6001.00', 1, '2022-06-24 00:19:20', '2022-06-27 00:47:43');

-- --------------------------------------------------------

--
-- Table structure for table `proposed_projects`
--

CREATE TABLE `proposed_projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `est_project_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheme` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_depart` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `circle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `divison` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_division` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `approval_submission` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2022-03-12 06:03:12', '2022-03-12 06:03:12'),
(2, 'Support Manager', 'web', '2022-03-14 23:43:33', '2022-03-14 23:43:33'),
(3, 'Data Entry', 'web', '2022-06-26 23:36:02', '2022-06-26 23:36:02'),
(4, 'data operator', 'web', '2022-06-27 07:32:43', '2022-06-27 07:32:43'),
(5, 'Customers', 'web', '2022-07-26 01:59:51', '2022-07-26 02:09:19');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 0),
(3, 1),
(4, 1),
(5, 0),
(5, 1),
(5, 3),
(5, 5),
(6, 1),
(6, 2),
(6, 3),
(6, 5),
(7, 1),
(7, 3),
(7, 5),
(8, 0),
(8, 1),
(8, 3),
(8, 4),
(8, 5);

-- --------------------------------------------------------

--
-- Table structure for table `services_tasks`
--

CREATE TABLE `services_tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `assignmnt_item_id` int(11) DEFAULT NULL,
  `assignment_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services_tasks`
--

INSERT INTO `services_tasks` (`id`, `product_id`, `assignmnt_item_id`, `assignment_id`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 64, 1, 3, 1, '2022-07-15 01:36:29', '2022-07-15 01:36:29'),
(2, 7, 66, 1, 3, 1, '2022-07-15 01:36:29', '2022-07-15 01:36:29'),
(3, 6, 68, 1, 3, 1, '2022-07-15 01:36:29', '2022-07-15 01:36:29'),
(4, 6, 73, 1, 3, 1, '2022-07-15 01:42:38', '2022-07-15 01:42:38'),
(5, 5, 75, 1, 3, 1, '2022-07-15 01:42:38', '2022-07-15 01:42:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Hardik Savani', NULL, 'admin@gmail.com', NULL, '$2y$10$.nRTA.JF2A5ejqTNpVAIIOOuKjBqkSywbMWxVmHr0f8voIGk.f1K6', NULL, '2022-03-12 06:03:12', '2022-03-12 06:03:12'),
(3, 'Soumyajit', NULL, 'soumya@estpl.net', NULL, '$2y$10$4F9GwnFLRA0I53ImnRhcFOxxmGafngKxHQjvXhU/YBlgwy5ADrVwC', NULL, '2022-03-14 23:57:50', '2022-06-27 00:15:47'),
(4, 'Arpita', NULL, 'arpita@gmail.com', NULL, '$2y$10$RiK4eonxTHzD9Ps.dLI4guEWybS1Qcs3XjwocXOIA2PdTuQrZEwPK', NULL, '2022-03-15 00:06:00', '2022-03-15 00:06:00'),
(5, 'Ibrahim', NULL, 'ibrahim@estpl.net', NULL, '$2y$10$99UpTZ.kLrl9mgxWva/ELuWDlPJpzLVXWcaFCcwn7jvBjMPUUAhf6', NULL, '2022-03-16 01:28:43', '2022-03-16 01:28:43'),
(6, 'barsharani', NULL, 'barsha@gmail.com', NULL, '$2y$10$7BwVroeE7yqohyLzVHvu9Ox7TRkIF.eMJFViKnOQXDfSnXTmP2iTe', NULL, '2022-06-28 02:08:25', '2022-06-28 02:08:25');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `name`, `slug`, `logo`, `created_at`, `updated_at`) VALUES
(8, 'Project Approver team', 'project-approver-team', 'vendors/fmFQMrXEae8Ml5rsVajch2anF.png', '2022-04-15 06:40:02', '2022-06-27 00:33:15'),
(9, 'Hikvision Best', 'hikvision-best', 'vendors/e4QwkD6ejM3UYRS452RSKWCC7.png', '2022-04-15 06:41:35', '2022-06-27 00:35:16'),
(10, 'HODd', 'hodd', 'vendors/1JdEKehLmk9AEc9JhdWesEFzi.png', '2022-04-15 06:55:21', '2022-06-27 00:37:28'),
(11, 'adadadassa', 'adadadassa', 'vendors/wAojc8dtXyYHTUhRTNFFw2NcH.png', '2022-04-15 07:04:39', '2022-06-27 00:36:33'),
(13, 'ree', 'ree', 'vendors/bTlEIKJZr9EICVqDk8SXKwwO0.jpeg', '2022-04-15 07:10:13', '2022-06-27 00:29:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actionlogs`
--
ALTER TABLE `actionlogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `actionlogs_assign_details_id_index` (`assign_details_id`);

--
-- Indexes for table `action_images`
--
ALTER TABLE `action_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `action_images_service_task_id_index` (`service_task_id`);

--
-- Indexes for table `action_takens`
--
ALTER TABLE `action_takens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `action_takens_assign_details_id_index` (`assign_details_id`);

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assignments_district_id_index` (`district_id`),
  ADD KEY `assignments_block_id_index` (`block_id`),
  ADD KEY `assignments_client_id_index` (`organisation_id`);

--
-- Indexes for table `assignment_details`
--
ALTER TABLE `assignment_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assignment_details_assignment_id_index` (`assignment_id`);

--
-- Indexes for table `assignment_images`
--
ALTER TABLE `assignment_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assignment_images_assignment_details_id_index` (`assignment_details_id`);

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clients_district_id_index` (`district_id`),
  ADD KEY `clients_block_id_index` (`block_id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organisations`
--
ALTER TABLE `organisations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organisation_contact_infos`
--
ALTER TABLE `organisation_contact_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organisation_locations`
--
ALTER TABLE `organisation_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_vendor_id_index` (`vendor_id`),
  ADD KEY `products_category_id_index` (`category_id`);

--
-- Indexes for table `proposed_projects`
--
ALTER TABLE `proposed_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `services_tasks`
--
ALTER TABLE `services_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_tasks_item_details_id_index` (`product_id`),
  ADD KEY `services_tasks_po_id_index` (`assignment_id`),
  ADD KEY `services_tasks_user_id_index` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actionlogs`
--
ALTER TABLE `actionlogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `action_images`
--
ALTER TABLE `action_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `action_takens`
--
ALTER TABLE `action_takens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `assignment_details`
--
ALTER TABLE `assignment_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `assignment_images`
--
ALTER TABLE `assignment_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blocks`
--
ALTER TABLE `blocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `organisations`
--
ALTER TABLE `organisations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `organisation_contact_infos`
--
ALTER TABLE `organisation_contact_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `organisation_locations`
--
ALTER TABLE `organisation_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `services_tasks`
--
ALTER TABLE `services_tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
