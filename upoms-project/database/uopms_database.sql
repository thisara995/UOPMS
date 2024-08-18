-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2024 at 09:32 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uopms_database`
--

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
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(11, '2024_08_18_180134_create_orders_table', 1),
(12, '2024_08_18_180134_create_payments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` enum('pending','completed','cancelled') NOT NULL DEFAULT 'pending',
  `total_amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `order_date`, `status`, `total_amount`, `created_at`, `updated_at`) VALUES
(1, 4, '2024-07-09 18:33:48', 'pending', 237.46, '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(2, 4, '2024-04-27 15:15:10', 'completed', 417.32, '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(3, 4, '2024-07-07 23:31:37', 'completed', 183.42, '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(4, 1, '2024-07-20 13:09:13', 'cancelled', 476.10, '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(5, 1, '2024-05-01 07:46:48', 'cancelled', 336.48, '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(6, 1, '2024-03-08 05:39:51', 'pending', 135.16, '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(7, 3, '2024-04-11 17:28:53', 'cancelled', 351.27, '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(8, 3, '2024-05-31 01:19:33', 'cancelled', 289.19, '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(9, 3, '2024-07-08 22:03:17', 'pending', 194.36, '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(10, 10, '2024-08-09 05:54:36', 'pending', 201.32, '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(11, 10, '2024-06-21 15:39:20', 'pending', 474.16, '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(12, 10, '2024-05-06 19:26:40', 'pending', 139.58, '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(13, 7, '2024-06-21 22:39:12', 'completed', 283.31, '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(14, 7, '2024-05-09 20:50:16', 'cancelled', 111.07, '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(15, 7, '2024-06-05 03:19:34', 'completed', 421.70, '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(16, 6, '2024-07-13 01:52:54', 'completed', 315.36, '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(17, 6, '2024-04-08 16:11:06', 'cancelled', 192.01, '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(18, 6, '2024-04-06 22:41:41', 'cancelled', 330.38, '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(19, 5, '2024-05-12 02:21:30', 'pending', 304.64, '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(20, 5, '2024-06-11 06:42:04', 'cancelled', 324.79, '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(21, 5, '2024-05-20 03:04:02', 'pending', 257.23, '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(22, 2, '2024-03-10 20:49:36', 'pending', 297.32, '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(23, 2, '2024-05-07 13:15:10', 'pending', 66.53, '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(24, 2, '2024-01-15 05:08:49', 'cancelled', 263.32, '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(25, 9, '2024-01-21 06:08:38', 'completed', 290.84, '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(26, 9, '2024-01-02 01:40:36', 'completed', 382.39, '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(27, 9, '2024-06-07 12:09:32', 'completed', 486.02, '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(28, 8, '2024-02-22 06:47:57', 'cancelled', 135.08, '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(29, 8, '2024-04-01 23:49:06', 'cancelled', 269.41, '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(30, 8, '2024-07-05 05:00:33', 'pending', 338.65, '2024-08-18 12:51:04', '2024-08-18 12:51:04');

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method` enum('credit_card','paypal','bank_transfer','cash') NOT NULL,
  `payment_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `amount`, `payment_method`, `payment_date`, `created_at`, `updated_at`) VALUES
(1, 4, 28.21, 'bank_transfer', '2024-05-17 14:33:17', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(2, 4, 50.55, 'cash', '2024-05-16 15:45:06', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(3, 4, 21.19, 'credit_card', '2024-05-13 10:53:59', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(4, 5, 65.00, 'paypal', '2024-05-30 13:47:57', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(5, 5, 62.77, 'credit_card', '2024-02-04 07:21:49', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(6, 6, 72.91, 'paypal', '2024-07-17 20:12:21', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(7, 22, 90.27, 'paypal', '2024-06-02 05:39:04', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(8, 22, 30.24, 'cash', '2024-04-27 13:18:44', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(9, 23, 98.97, 'paypal', '2024-05-26 09:52:10', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(10, 23, 87.00, 'credit_card', '2024-02-11 08:17:06', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(11, 23, 44.32, 'bank_transfer', '2024-02-06 05:12:11', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(12, 24, 86.74, 'bank_transfer', '2024-07-19 00:17:52', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(13, 7, 41.09, 'bank_transfer', '2024-02-14 15:56:35', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(14, 7, 13.14, 'paypal', '2024-06-25 06:20:51', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(15, 7, 61.71, 'cash', '2024-06-23 23:27:39', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(16, 8, 56.81, 'bank_transfer', '2024-03-02 21:06:14', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(17, 9, 44.83, 'paypal', '2024-01-26 23:51:20', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(18, 9, 16.49, 'cash', '2024-04-15 23:13:39', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(19, 9, 25.65, 'bank_transfer', '2024-01-31 06:12:10', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(20, 1, 42.04, 'cash', '2024-01-30 03:05:15', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(21, 1, 72.52, 'credit_card', '2024-01-11 22:20:33', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(22, 2, 28.95, 'paypal', '2024-08-10 00:14:51', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(23, 2, 20.89, 'bank_transfer', '2024-02-13 18:40:22', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(24, 2, 20.72, 'cash', '2024-05-04 03:00:47', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(25, 3, 26.41, 'credit_card', '2024-03-29 22:59:49', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(26, 19, 52.51, 'paypal', '2024-01-08 11:47:48', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(27, 20, 35.29, 'paypal', '2024-05-04 21:02:16', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(28, 20, 30.48, 'bank_transfer', '2024-07-01 19:30:08', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(29, 21, 84.18, 'credit_card', '2024-04-25 12:18:58', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(30, 16, 33.22, 'paypal', '2024-01-25 15:15:28', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(31, 17, 84.47, 'credit_card', '2024-01-12 10:09:28', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(32, 18, 85.07, 'credit_card', '2024-05-13 04:31:53', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(33, 18, 58.09, 'paypal', '2024-05-19 12:37:38', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(34, 18, 92.54, 'cash', '2024-06-11 13:12:44', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(35, 13, 40.98, 'credit_card', '2024-05-08 19:58:35', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(36, 14, 98.41, 'paypal', '2024-08-16 06:47:30', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(37, 14, 61.11, 'cash', '2024-07-13 13:03:09', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(38, 15, 58.04, 'bank_transfer', '2024-06-13 10:07:53', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(39, 28, 22.90, 'paypal', '2024-05-11 08:55:39', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(40, 28, 70.57, 'bank_transfer', '2024-04-14 10:48:29', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(41, 28, 79.64, 'credit_card', '2024-06-25 13:09:26', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(42, 29, 93.99, 'paypal', '2024-04-17 18:32:20', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(43, 30, 49.70, 'credit_card', '2024-08-03 23:09:44', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(44, 25, 88.11, 'bank_transfer', '2024-05-30 11:30:06', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(45, 25, 93.81, 'bank_transfer', '2024-04-05 01:21:07', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(46, 25, 25.80, 'paypal', '2024-07-25 19:30:02', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(47, 26, 64.02, 'bank_transfer', '2024-04-04 03:03:47', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(48, 27, 83.80, 'bank_transfer', '2024-04-30 07:32:29', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(49, 10, 16.86, 'bank_transfer', '2024-08-12 07:06:26', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(50, 10, 54.76, 'credit_card', '2024-04-24 09:56:16', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(51, 10, 95.23, 'cash', '2024-06-03 04:12:23', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(52, 11, 48.32, 'bank_transfer', '2024-07-14 02:41:17', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(53, 12, 51.51, 'credit_card', '2024-03-09 23:11:40', '2024-08-18 12:51:04', '2024-08-18 12:51:04');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Cullen Fritsch', 'bennett.kemmer@example.net', '$2y$12$d1AsygF3Fd4XISxbYfr3t.kjt.Stgn70tTk1HP3uF8Kx1Wv15AkCG', '2024-08-18 12:51:01', '2024-08-18 12:51:01'),
(2, 'Cruz Lueilwitz', 'voconner@example.org', '$2y$12$G1xhgSmVFimHEpp2vvu0i.c7haJjxqNvVakwCa3DlC8bCJYXWSNGq', '2024-08-18 12:51:02', '2024-08-18 12:51:02'),
(3, 'Dayana Brakus DVM', 'geovany.senger@example.org', '$2y$12$XVoF1mRufqPU0U20lCZqM.jml7VFH3s2rsei77yIjCsLKz9MNnqoK', '2024-08-18 12:51:02', '2024-08-18 12:51:02'),
(4, 'Miss Hilma Rolfson Sr.', 'angela13@example.com', '$2y$12$rUW7QCG/6/jIO64BfH/RTe2Hi2joPHrg/e7DCdrn1RD20Y0P2AiJq', '2024-08-18 12:51:02', '2024-08-18 12:51:02'),
(5, 'Everett Kilback', 'thaddeus.johnson@example.org', '$2y$12$EQSsAoGvscr2V7GKgXftLOBmq0Y8GGIwWH0Cesoscv.e2wYJuLSza', '2024-08-18 12:51:03', '2024-08-18 12:51:03'),
(6, 'Mallie Kovacek', 'mueller.adeline@example.org', '$2y$12$i93pzkushvYRt8et.I4TGOwGAJgQoIvoPWeV/D9.kMbGt.sSAAd6W', '2024-08-18 12:51:03', '2024-08-18 12:51:03'),
(7, 'Prof. Nikko Jacobi', 'johnston.oran@example.org', '$2y$12$VyaNGwdqjm9J.jTsyLI6ner0T3XcYM2oZa8mwReMAZKdOZhKr8jKu', '2024-08-18 12:51:03', '2024-08-18 12:51:03'),
(8, 'Miss Roxane Mertz DVM', 'zetta60@example.org', '$2y$12$F9K/vVoAyjbrLZfxctmaYOg6gA6FvCaL3u0ykUeNiKTANDLNApYia', '2024-08-18 12:51:03', '2024-08-18 12:51:03'),
(9, 'Chadrick Stiedemann', 'ward.myron@example.com', '$2y$12$YTNb9bo3whHA7SPxapLVxuS5BH1MOg6uUTZceyeYJOsr4ndn6jld2', '2024-08-18 12:51:04', '2024-08-18 12:51:04'),
(10, 'Camden Hodkiewicz', 'green.roberto@example.com', '$2y$12$51Y/y.iKWueMO2zUkajqmOsFlN9FVLB4SCLhBzg3LM6WtE7e/eHIO', '2024-08-18 12:51:04', '2024-08-18 12:51:04');

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_order_id_foreign` (`order_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
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
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
