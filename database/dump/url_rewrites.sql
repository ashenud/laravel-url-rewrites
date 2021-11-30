-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: 192.168.0.110
-- Generation Time: Nov 30, 2021 at 02:02 PM
-- Server version: 8.0.27-0ubuntu0.20.04.1
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `url_rewrites`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Apple', 0, '2021-11-30 00:27:14', '2021-11-30 00:27:14'),
(2, 'Philips', 0, '2021-11-30 00:27:14', '2021-11-30 00:27:14'),
(3, 'Sonos', 0, '2021-11-30 00:27:14', '2021-11-30 00:27:14');

-- --------------------------------------------------------

--
-- Table structure for table `category_products`
--

CREATE TABLE `category_products` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` int NOT NULL,
  `product_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_products`
--

INSERT INTO `category_products` (`id`, `category_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL),
(3, 1, 3, NULL, NULL),
(4, 1, 4, NULL, NULL),
(5, 2, 5, NULL, NULL),
(6, 2, 6, NULL, NULL),
(7, 3, 7, NULL, NULL),
(8, 3, 8, NULL, NULL),
(9, 3, 9, NULL, NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_03_08_092546_create_url_rewrites_table', 1),
(4, '2019_03_08_092838_create_products_table', 1),
(5, '2019_03_08_094009_create_categories_table', 1),
(6, '2019_03_08_094035_create_category_products_table', 1);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Apple iPad 128GB WiFi Space Gray', 'Apple iPad 128GB WiFi Space Gray is actually just like a computer, but it only weighs 469 grams.', '/img/ipad.jpeg', '429.95', NULL, NULL),
(2, 'Apple AirPods', 'Apple AirPods allow you to listen to the music of your iPhone, iPad, Mac, or Apple Watch wirelessly. The earbuds work via Bluetooth and have a 5-hour battery life.', '/img/airpods.jpeg', '178.95', NULL, NULL),
(3, 'Apple MacBook Air 13.3 inches', 'This Macbook allows you to surf the web for up to 12 hours without having to recharge.', '/img/macbook-air.jpeg', '999.99', NULL, NULL),
(4, 'Apple iPhone 7 32GB Black', 'Do you like taking pictures with your smartphone? Then the iPhone 7 comes highly recommended.', '/img/iphone.jpeg', '999.99', NULL, NULL),
(5, 'Philips HUE Starter Pack White with Dimmer switch', 'Discover the possibilities of smart lighting with the Philips Hue White Starter Pack with Dimmer.', '/img/philips-hue-starter-pack-white-with-dimmer-switch.jpg', '89.95', NULL, NULL),
(6, 'Philips 65OLED803 - Ambilight', 'With the Philips 65OLED803 you can view sharp images with a lifelike contrast.', '/img/philips-tv.jpeg', '89.95', NULL, NULL),
(7, 'SONOS One Black', 'Listen to your favorite music wirelessly with the SONOS One.', '/img/sonos.jpeg', '229.95', NULL, NULL),
(8, 'SONOS Sub Black', 'With the Sonos Sub, the bass of your Sonos system sounds extra deep.', '/img/sonos-sub.jpeg', '691.95', NULL, NULL),
(9, 'Sonos Play:5 Wit', 'Are you looking for a powerful wireless speaker? Then the Sonos Play: 5 is the speaker for you.', '/img/sonos-play5.jpeg', '691.95', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `url_rewrites`
--

CREATE TABLE `url_rewrites` (
  `id` int UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_attributes` json DEFAULT NULL,
  `request_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect_type` smallint NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `url_rewrites`
--

INSERT INTO `url_rewrites` (`id`, `type`, `type_attributes`, `request_path`, `target_path`, `redirect_type`, `description`, `created_at`, `updated_at`) VALUES
(1, 'category', '{\"id\": 1}', 'apple', '/category/1', 0, '1', '2021-11-30 00:27:14', '2021-11-30 00:27:14'),
(2, 'category', '{\"id\": 2}', 'philips', '/category/2', 0, '1', '2021-11-30 00:27:14', '2021-11-30 00:27:14'),
(3, 'category', '{\"id\": 3}', 'sonos', '/category/3', 0, '1', '2021-11-30 00:27:14', '2021-11-30 00:27:14'),
(4, 'product', '{\"id\": 1}', 'ipad', '/product/1', 0, '1', '2021-11-30 00:27:14', '2021-11-30 00:27:14'),
(5, 'product', '{\"id\": 2}', 'airpod', '/product/2', 0, '1', '2021-11-30 00:27:14', '2021-11-30 00:27:14'),
(6, 'product', '{\"id\": 3}', 'macbook', '/product/3', 0, '1', '2021-11-30 00:27:14', '2021-11-30 00:27:14'),
(7, 'product', '{\"id\": 4}', 'iphone', '/product/4', 0, '1', '2021-11-30 00:27:14', '2021-11-30 00:27:14'),
(8, 'product', '{\"id\": 5}', 'dimmer', '/product/5', 0, '1', '2021-11-30 00:27:14', '2021-11-30 00:27:14'),
(9, 'product', '{\"id\": 6}', 'ambilight', '/product/6', 0, '1', '2021-11-30 00:27:14', '2021-11-30 00:27:14'),
(10, 'product', '{\"id\": 7}', 'oneblack', '/product/7', 0, '1', '2021-11-30 00:27:14', '2021-11-30 00:27:14'),
(11, 'product', '{\"id\": 8}', 'subblack', '/product/8', 0, '1', '2021-11-30 00:27:14', '2021-11-30 00:27:14'),
(12, 'product', '{\"id\": 9}', 'playwit', '/product/9', 0, '1', '2021-11-30 00:27:14', '2021-11-30 00:27:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_products`
--
ALTER TABLE `category_products`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `url_rewrites`
--
ALTER TABLE `url_rewrites`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category_products`
--
ALTER TABLE `category_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `url_rewrites`
--
ALTER TABLE `url_rewrites`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
