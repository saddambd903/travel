-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 18, 2023 at 03:22 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel_architect`
--

-- --------------------------------------------------------

--
-- Table structure for table `client_reviews`
--

CREATE TABLE `client_reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `client_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_rating` int NOT NULL,
  `client_description` text COLLATE utf8mb4_unicode_ci,
  `client_image` text COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_reviews`
--

INSERT INTO `client_reviews` (`id`, `client_name`, `client_rating`, `client_description`, `client_image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Client One', 5, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vitae quo illum porro recusandae consequatur dolorem nisi ratione ipsum, dolores doloribus ullam maxime sequi autem, fuga eum non saepe corporis! Tempora rerum autem quos! Earum molestiae dolorum ut inventore non ratione. A laborum quis similique reiciendis, doloremque cumque maxime iste vitae.', 'adminAsset/client-image/575167348.jpg', 1, '2023-11-17 09:01:12', '2023-11-17 13:27:17'),
(2, 'Client Two', 2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vitae quo illum porro recusandae consequatur dolorem nisi ratione ipsum, dolores doloribus ullam maxime sequi autem, fuga eum non saepe corporis! Tempora rerum autem quos! Earum molestiae dolorum ut inventore non ratione. A laborum quis similique reiciendis, doloremque cumque maxime iste vitae.', 'adminAsset/client-image/277918487.jpg', 1, '2023-11-17 09:58:44', '2023-11-17 13:27:24'),
(3, 'Client Three', 4, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vitae quo illum porro recusandae consequatur dolorem nisi ratione ipsum, dolores doloribus ullam maxime sequi autem, fuga eum non saepe corporis! Tempora rerum autem quos! Earum molestiae dolorum ut inventore non ratione. A laborum quis similique reiciendis, doloremque cumque maxime iste vitae.', 'adminAsset/client-image/1303651448.jpg', 1, '2023-11-17 09:58:55', '2023-11-17 13:27:30'),
(4, 'Client Four', 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vitae quo illum porro recusandae consequatur dolorem nisi ratione ipsum, dolores doloribus ullam maxime sequi autem, fuga eum non saepe corporis! Tempora rerum autem quos! Earum molestiae dolorum ut inventore non ratione. A laborum quis similique reiciendis, doloremque cumque maxime iste vitae.', 'adminAsset/client-image/1865246633.jpg', 1, '2023-11-17 09:59:07', '2023-11-17 13:27:35');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `mobile`, `password`, `nid`, `date_of_birth`, `address`, `district`, `image`, `created_at`, `updated_at`) VALUES
(4, 'Arman One', 'arman@one.com', '012345678', '$2y$10$sSO5BPp81szGPeqj3CtRD.OWtddafpQC9LvoeyryBSd0yQorC0Q0q', NULL, NULL, NULL, NULL, NULL, '2023-11-17 12:06:09', '2023-11-17 12:06:09');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint UNSIGNED NOT NULL,
  `tour_id` int DEFAULT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `tour_id`, `question`, `answer`, `status`, `created_at`, `updated_at`) VALUES
(3, 2, 'Some Question', 'Some Answer', 1, '2023-11-17 05:43:50', '2023-11-17 05:43:50'),
(4, 2, 'Some Question 2', 'Some Answer 2', 1, '2023-11-17 05:59:16', '2023-11-17 05:59:16'),
(5, 2, 'Some Question 3', 'Some Answer 3', 1, '2023-11-17 05:59:27', '2023-11-17 05:59:27');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint UNSIGNED NOT NULL,
  `client_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_description` longtext COLLATE utf8mb4_unicode_ci,
  `client_image` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` bigint UNSIGNED NOT NULL,
  `place_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hotel_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hotel_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hotel_location` text COLLATE utf8mb4_unicode_ci,
  `hotel_rating` int DEFAULT NULL,
  `hotel_description` text COLLATE utf8mb4_unicode_ci,
  `hotel_image` text COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `place_name`, `hotel_name`, `hotel_type`, `hotel_location`, `hotel_rating`, `hotel_description`, `hotel_image`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Greece', 'Greece Hotel 1', '1 Star', 'Greece, address one', 4, '<p>Greece, address one</p>', 'adminAsset/hotel-image/359157842.jpg', 1, '2023-11-16 22:48:37', '2023-11-16 22:50:23'),
(3, 'Greece', 'Greece Hotel 2', '2 Star', 'Greece, address two', 2, '<p>Greece, address two</p>', 'adminAsset/hotel-image/1182591136.jpeg', 1, '2023-11-16 22:50:49', '2023-11-16 22:50:49'),
(4, 'Greece', 'Greece Hotel 3', '3 Star', 'Greece, address three', 5, '<p>Greece, address three</p>', 'adminAsset/hotel-image/1080157714.jpeg', 1, '2023-11-16 22:51:27', '2023-11-16 22:51:27');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_categories`
--

CREATE TABLE `hotel_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `hotel_category_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotel_categories`
--

INSERT INTO `hotel_categories` (`id`, `hotel_category_name`, `status`, `created_at`, `updated_at`) VALUES
(1, '1 Star', 1, '2023-11-16 22:28:56', '2023-11-16 22:28:56'),
(2, '2 Star', 1, '2023-11-16 22:29:01', '2023-11-16 22:29:01'),
(3, '3 Star', 1, '2023-11-16 22:29:05', '2023-11-16 22:29:05'),
(4, '4 Star', 1, '2023-11-16 22:29:10', '2023-11-16 22:29:10'),
(5, '5 Star', 1, '2023-11-16 22:29:13', '2023-11-16 22:29:13');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2023_11_17_045536_create_tour_facilities_table', 1),
(2, '2023_11_17_143906_create_client_reviews_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` int NOT NULL,
  `package_id` int NOT NULL,
  `price_id` int NOT NULL,
  `order_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_timestamp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_date` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `package_id`, `price_id`, `order_date`, `order_timestamp`, `order_status`, `payment_status`, `payment_method`, `payment_date`, `created_at`, `updated_at`) VALUES
(9, 4, 2, 67, '2023-11-17', '1700179200', 'Pending', 'Pending', NULL, NULL, '2023-11-17 12:10:04', '2023-11-17 12:10:04');

-- --------------------------------------------------------

--
-- Table structure for table `other_images`
--

CREATE TABLE `other_images` (
  `id` bigint UNSIGNED NOT NULL,
  `package_id` int NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `other_images`
--

INSERT INTO `other_images` (`id`, `package_id`, `image`, `created_at`, `updated_at`) VALUES
(16, 2, 'other-images/1850.jpg', '2023-11-16 23:57:28', '2023-11-16 23:57:28'),
(17, 2, 'other-images/1023.jpeg', '2023-11-16 23:57:28', '2023-11-16 23:57:28'),
(18, 2, 'other-images/1889.jpeg', '2023-11-16 23:57:28', '2023-11-16 23:57:28'),
(19, 3, 'other-images/1127.jpg', '2023-11-17 01:50:46', '2023-11-17 01:50:46'),
(20, 3, 'other-images/1396.jpeg', '2023-11-17 01:50:46', '2023-11-17 01:50:46'),
(21, 3, 'other-images/1255.jpeg', '2023-11-17 01:50:46', '2023-11-17 01:50:46'),
(22, 4, 'other-images/1993.jpg', '2023-11-17 01:52:00', '2023-11-17 01:52:00'),
(23, 4, 'other-images/1584.jpeg', '2023-11-17 01:52:00', '2023-11-17 01:52:00'),
(24, 4, 'other-images/1689.jpeg', '2023-11-17 01:52:00', '2023-11-17 01:52:00'),
(25, 5, 'other-images/1436.jpg', '2023-11-17 01:52:45', '2023-11-17 01:52:45'),
(26, 5, 'other-images/1074.jpeg', '2023-11-17 01:52:45', '2023-11-17 01:52:45'),
(27, 5, 'other-images/1257.jpeg', '2023-11-17 01:52:45', '2023-11-17 01:52:45'),
(28, 6, 'other-images/1914.jpg', '2023-11-17 01:53:32', '2023-11-17 01:53:32'),
(29, 7, 'other-images/1482.jpg', '2023-11-17 01:54:14', '2023-11-17 01:54:14'),
(30, 7, 'other-images/1119.jpeg', '2023-11-17 01:54:14', '2023-11-17 01:54:14'),
(31, 7, 'other-images/1160.jpeg', '2023-11-17 01:54:14', '2023-11-17 01:54:14');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint UNSIGNED NOT NULL,
  `package_category_id` int DEFAULT NULL,
  `place_id` int DEFAULT NULL,
  `tour_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tour_address` text COLLATE utf8mb4_unicode_ci,
  `tour_rating` int DEFAULT NULL,
  `lowest_price` int DEFAULT NULL,
  `facilities` json DEFAULT NULL,
  `tour_start_date` date DEFAULT NULL,
  `tour_end_date` date DEFAULT NULL,
  `overview` longtext COLLATE utf8mb4_unicode_ci,
  `meeting_pickup` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `included_excluded` longtext COLLATE utf8mb4_unicode_ci,
  `expectations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `terms_conditions` longtext COLLATE utf8mb4_unicode_ci,
  `package_image` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `package_category_id`, `place_id`, `tour_title`, `tour_address`, `tour_rating`, `lowest_price`, `facilities`, `tour_start_date`, `tour_end_date`, `overview`, `meeting_pickup`, `included_excluded`, `expectations`, `terms_conditions`, `package_image`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 'Greece Tour 1', 'Greece Tour 1 Full Address | Location One | Location Two', 5, 1000, NULL, '2023-11-01', '2023-11-28', '<p style=\"font-size: 13.4px;\"><span style=\"font-size: 13.4px;\">Greece Tour One<br></span></p><h3 class=\"card-title\" style=\"margin-bottom: 0px; font-family: Poppins, sans-serif;\">Overview</h3>', '<p style=\"font-size: 13.4px;\"><span style=\"font-size: 13.4px;\">Greece Tour One</span></p><h3 class=\"card-title\" style=\"margin-bottom: 0px; font-family: Poppins, sans-serif;\">Price Description</h3>', '<p style=\"font-size: 13.4px;\"><span style=\"font-size: 13.4px;\">Greece Tour One</span></p><h3 class=\"card-title\" style=\"margin-bottom: 0px; font-family: Poppins, sans-serif;\">Included and Excluded</h3>', '<p style=\"font-size: 13.4px;\"><span style=\"font-size: 13.4px;\">Greece Tour One<br></span></p><h3 class=\"card-title\" style=\"margin-bottom: 0px; font-family: Poppins, sans-serif;\">What to Expect</h3>', '<p style=\"font-size: 13.4px;\"><span style=\"font-size: 13.4px;\">Greece Tour One<br></span></p><h3 class=\"card-title\" style=\"margin-bottom: 0px; font-family: Poppins, sans-serif;\">Terms and Conditions</h3>', 'adminAsset/package-image/1100500378.jpg', 1, '2023-11-16 23:30:39', '2023-11-17 07:55:35'),
(3, 2, 1, 'Greece Tour 2', 'Greece Tour 2 Address', 4, 1000, NULL, '2023-11-01', '2023-11-18', '<p>Greece Tour 2<br></p><h3 class=\"card-title\" style=\"margin-bottom: 0px; font-family: Poppins, sans-serif;\">Overview</h3>', '<p style=\"font-size: 13.4px;\">Greece Tour 2<br></p><h3 class=\"card-title\" style=\"margin-bottom: 0px; font-family: Poppins, sans-serif;\">Price Description</h3>', '<p style=\"font-size: 13.4px;\">Greece Tour 2<br></p><h3 class=\"card-title\" style=\"margin-bottom: 0px; font-family: Poppins, sans-serif;\">Included and Excluded</h3>', '<p style=\"font-size: 13.4px;\">Greece Tour 2<br></p><h3 class=\"card-title\" style=\"margin-bottom: 0px; font-family: Poppins, sans-serif;\">What to Expect</h3>', '<p style=\"font-size: 13.4px;\">Greece Tour 2<br></p><h3 class=\"card-title\" style=\"margin-bottom: 0px; font-family: Poppins, sans-serif;\">Terms and Conditions</h3>', 'adminAsset/package-image/651032765.jpg', 1, '2023-11-17 01:50:46', '2023-11-17 07:55:30'),
(4, 1, 1, 'Greece Tour 3', 'Greece Tour 3 Address', 3, 10000, NULL, '2023-11-01', '2023-11-07', '<p style=\"font-size: 13.4px;\">Greece Tour 3<br></p><h3 class=\"card-title\" style=\"margin-bottom: 0px; font-family: Poppins, sans-serif;\">Overview</h3>', '<p style=\"font-size: 13.4px;\">Greece Tour 3<br></p><h3 class=\"card-title\" style=\"margin-bottom: 0px; font-family: Poppins, sans-serif;\">Overview</h3>', '<p style=\"font-size: 13.4px;\">Greece Tour 3<br></p><h3 class=\"card-title\" style=\"margin-bottom: 0px; font-family: Poppins, sans-serif;\">Overview</h3>', '<p style=\"font-size: 13.4px;\">Greece Tour 3<br></p><h3 class=\"card-title\" style=\"margin-bottom: 0px; font-family: Poppins, sans-serif;\">Overview</h3>', '<p style=\"font-size: 13.4px;\">Greece Tour 3<br></p><h3 class=\"card-title\" style=\"margin-bottom: 0px; font-family: Poppins, sans-serif;\">Overview</h3>', 'adminAsset/package-image/1338932239.jpeg', 1, '2023-11-17 01:52:00', '2023-11-17 07:55:23'),
(5, 3, 1, 'Greece Tour 4', 'Greece Tour 4 Address', 2, 10, NULL, '2023-11-01', '2023-11-10', '<p style=\"font-size: 13.4px;\">Greece Tour 4<br></p><h3 class=\"card-title\" style=\"margin-bottom: 0px; font-family: Poppins, sans-serif;\">What to Expect</h3>', '<p style=\"font-size: 13.4px;\">Greece Tour 4<br></p><h3 class=\"card-title\" style=\"margin-bottom: 0px; font-family: Poppins, sans-serif;\">What to Expect</h3>', '<p style=\"font-size: 13.4px;\">Greece Tour 4<br></p><h3 class=\"card-title\" style=\"margin-bottom: 0px; font-family: Poppins, sans-serif;\">What to Expect</h3>', '<p style=\"font-size: 13.4px;\">Greece Tour 4<br></p><h3 class=\"card-title\" style=\"margin-bottom: 0px; font-family: Poppins, sans-serif;\">What to Expect</h3>', '<p style=\"font-size: 13.4px;\">Greece Tour 4<br></p><h3 class=\"card-title\" style=\"margin-bottom: 0px; font-family: Poppins, sans-serif;\">What to Expect</h3>', 'adminAsset/package-image/738381147.jpeg', 1, '2023-11-17 01:52:45', '2023-11-17 07:55:05'),
(6, 2, 1, 'Greece Tour 5', 'Greece Tour 5 Address', 1, 10000, NULL, '2023-11-01', '2023-11-08', '<p style=\"font-size: 13.4px;\">Greece Tour 5<br></p><h3 class=\"card-title\" style=\"margin-bottom: 0px; font-family: Poppins, sans-serif;\">What to Expect</h3>', '<p style=\"font-size: 13.4px;\">Greece Tour 5<br></p><h3 class=\"card-title\" style=\"margin-bottom: 0px; font-family: Poppins, sans-serif;\">What to Expect</h3>', '<p style=\"font-size: 13.4px;\">Greece Tour 5<br></p><h3 class=\"card-title\" style=\"margin-bottom: 0px; font-family: Poppins, sans-serif;\">What to Expect</h3>', '<p style=\"font-size: 13.4px;\">Greece Tour 5<br></p><h3 class=\"card-title\" style=\"margin-bottom: 0px; font-family: Poppins, sans-serif;\">What to Expect</h3>', '<p style=\"font-size: 13.4px;\">Greece Tour 5<br></p><h3 class=\"card-title\" style=\"margin-bottom: 0px; font-family: Poppins, sans-serif;\">What to Expect</h3>', 'adminAsset/package-image/765648785.jpeg', 1, '2023-11-17 01:53:32', '2023-11-17 07:54:59'),
(7, 5, 1, 'Greece Tour 6', 'Greece Tour 6 Address', 2, 100, NULL, '2023-11-01', '2023-11-03', '<p style=\"font-size: 13.4px;\">Greece Tour 6<br></p><h3 class=\"card-title\" style=\"margin-bottom: 0px; font-family: Poppins, sans-serif;\">What to Expect</h3>', '<p style=\"font-size: 13.4px;\">Greece Tour 6<br></p><h3 class=\"card-title\" style=\"margin-bottom: 0px; font-family: Poppins, sans-serif;\">What to Expect</h3>', '<p style=\"font-size: 13.4px;\">Greece Tour 6<br></p><h3 class=\"card-title\" style=\"margin-bottom: 0px; font-family: Poppins, sans-serif;\">What to Expect</h3>', '<p style=\"font-size: 13.4px;\">Greece Tour 6<br></p><h3 class=\"card-title\" style=\"margin-bottom: 0px; font-family: Poppins, sans-serif;\">What to Expect</h3>', '<p style=\"font-size: 13.4px;\">Greece Tour 6<br></p><h3 class=\"card-title\" style=\"margin-bottom: 0px; font-family: Poppins, sans-serif;\">What to Expect</h3>', 'adminAsset/package-image/2023839731.jpeg', 1, '2023-11-17 01:54:14', '2023-11-17 07:54:32');

-- --------------------------------------------------------

--
-- Table structure for table `package_categories`
--

CREATE TABLE `package_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `package_category_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_categories`
--

INSERT INTO `package_categories` (`id`, `package_category_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Nature', 1, '2023-11-16 22:52:35', '2023-11-16 22:52:35'),
(2, 'Adventure', 1, '2023-11-16 22:52:40', '2023-11-16 22:52:40'),
(3, 'Luxury', 1, '2023-11-16 22:52:49', '2023-11-16 22:52:49'),
(4, 'Honeymoon', 1, '2023-11-16 22:52:58', '2023-11-16 22:52:58'),
(5, 'Hiking', 1, '2023-11-16 22:53:08', '2023-11-16 22:53:08');

-- --------------------------------------------------------

--
-- Table structure for table `package_prices`
--

CREATE TABLE `package_prices` (
  `id` bigint UNSIGNED NOT NULL,
  `package_id` int NOT NULL,
  `person` int NOT NULL,
  `hotel_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_prices`
--

INSERT INTO `package_prices` (`id`, `package_id`, `person`, `hotel_type`, `price`, `created_at`, `updated_at`) VALUES
(55, 7, 1, '1 Star', 100, '2023-11-17 07:54:53', '2023-11-17 07:54:53'),
(56, 6, 1, '3 Star', 10000, '2023-11-17 07:54:59', '2023-11-17 07:54:59'),
(57, 5, 1, '1 Star', 10, '2023-11-17 07:55:05', '2023-11-17 07:55:05'),
(58, 4, 1, '4 Star', 2000, '2023-11-17 07:55:23', '2023-11-17 07:55:23'),
(59, 4, 1, '5 Star', 10000, '2023-11-17 07:55:23', '2023-11-17 07:55:23'),
(60, 3, 1, '1 Star', 100, '2023-11-17 07:55:30', '2023-11-17 07:55:30'),
(61, 3, 2, '3 Star', 1000, '2023-11-17 07:55:30', '2023-11-17 07:55:30'),
(62, 2, 1, '1 Star', 100, '2023-11-17 07:55:35', '2023-11-17 07:55:35'),
(63, 2, 2, '1 Star', 200, '2023-11-17 07:55:35', '2023-11-17 07:55:35'),
(64, 2, 3, '1 Star', 400, '2023-11-17 07:55:35', '2023-11-17 07:55:35'),
(65, 2, 1, '3 Star', 400, '2023-11-17 07:55:35', '2023-11-17 07:55:35'),
(66, 2, 2, '3 Star', 500, '2023-11-17 07:55:35', '2023-11-17 07:55:35'),
(67, 2, 1, '5 Star', 1000, '2023-11-17 07:55:35', '2023-11-17 07:55:35');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `id` bigint UNSIGNED NOT NULL,
  `place_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `place_description` longtext COLLATE utf8mb4_unicode_ci,
  `place_image` text COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`id`, `place_name`, `place_description`, `place_image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Greece', '<p><span style=\"font-size: 13.4px;\">Greece has the longest coastline in Europe and is the southernmost country in Europe. The mainland has rugged mountains, forests, and lakes, but the country is well known for the thousands of islands dotting the blue Aegean Sea to the east, the Mediterranean Sea to the south, and the Ionian Sea to the west.ac</span><br></p>', 'adminAsset/place-image/668803421.mp4', 1, '2023-11-16 22:10:28', '2023-11-16 22:25:59'),
(2, 'Australia', '<p>Summary. Australia is a stable, democratic and culturally diverse nation with a highly skilled workforce and one of the strongest performing economies in the world. With spectacular landscapes and a rich ancient culture, Australia is a land like no other.<br></p>', 'adminAsset/place-image/628393627.mp4', 1, '2023-11-16 22:13:56', '2023-11-16 22:13:56'),
(3, 'Egypt', '<p>Located on the northeast corner of Africa, Egypt is home to one of the world\'s earliest and greatest civilizations, with a unified kingdom first surfacing around 3,200 B.C. With a population estimated at more than 99 million, it is the most populous country in the Arab world, and the third-most populous nation in Africa.<br></p>', 'adminAsset/place-image/2146841728.mp4', 1, '2023-11-16 22:21:49', '2023-11-17 01:26:56');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('nQs9BSMNfQJEiS6oIw7RzIdNgnrbHjn2wPCCUtCa', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiTjd0U3NZaHdsM2Y1bWVSd2xJM0dDVjJQUzNYdTh1bTVGcWFPY2F0RiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHA6Ly9sb2NhbGhvc3QvdHJhdmVsX2FyY2hpdGVjdC9wdWJsaWMvaG9tZS9wYWNrYWdlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkbzNwTVA2RVN4R1ZhVk5CMWY0Ri5sdTMxZmtrQUlDMlJFMDM0Rk1TTVMubDJEMHFVMEJxdHkiO30=', 1700250913);

-- --------------------------------------------------------

--
-- Table structure for table `tour_facilities`
--

CREATE TABLE `tour_facilities` (
  `id` bigint UNSIGNED NOT NULL,
  `tour_facility_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tour_facilities`
--

INSERT INTO `tour_facilities` (`id`, `tour_facility_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Wifi', 1, '2023-11-16 23:16:09', '2023-11-16 23:16:09'),
(2, 'Gym', 1, '2023-11-16 23:16:16', '2023-11-16 23:16:16'),
(3, 'Bike', 1, '2023-11-16 23:16:21', '2023-11-16 23:16:21'),
(4, 'Hotel', 1, '2023-11-16 23:16:25', '2023-11-16 23:16:25'),
(5, 'Transport', 1, '2023-11-16 23:16:37', '2023-11-16 23:16:37'),
(6, 'Flight', 1, '2023-11-16 23:16:40', '2023-11-16 23:16:40'),
(7, 'Sightseeing', 1, '2023-11-16 23:16:47', '2023-11-16 23:16:47'),
(8, 'Meals', 1, '2023-11-16 23:16:52', '2023-11-16 23:16:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` tinyint NOT NULL DEFAULT '0',
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `mobile`, `user_type`, `image`, `status`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$o3pMP6ESxGVaVNB1f4F.lu31fkkAIC2RE034FMSMS.l2D0qU0Bqty', NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, '2023-09-01 13:53:05', '2023-09-01 13:53:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client_reviews`
--
ALTER TABLE `client_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `customers_mobile_unique` (`mobile`),
  ADD UNIQUE KEY `customers_password_unique` (`password`),
  ADD UNIQUE KEY `customers_nid_unique` (`nid`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_categories`
--
ALTER TABLE `hotel_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `other_images`
--
ALTER TABLE `other_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_categories`
--
ALTER TABLE `package_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_prices`
--
ALTER TABLE `package_prices`
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
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tour_facilities`
--
ALTER TABLE `tour_facilities`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `client_reviews`
--
ALTER TABLE `client_reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hotel_categories`
--
ALTER TABLE `hotel_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `other_images`
--
ALTER TABLE `other_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `package_categories`
--
ALTER TABLE `package_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `package_prices`
--
ALTER TABLE `package_prices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tour_facilities`
--
ALTER TABLE `tour_facilities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
