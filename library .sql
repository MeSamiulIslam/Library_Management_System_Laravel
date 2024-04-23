-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2024 at 09:02 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `auther_name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `book_img` varchar(255) DEFAULT NULL,
  `author_img` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `auther_name`, `price`, `description`, `quantity`, `book_img`, `author_img`, `category_id`, `created_at`, `updated_at`) VALUES
(16, 'হিমু সমগ্র', 'হুমায়ূন আহমেদ', '1200', 'বাংলা সাহিত্যের এক কিংবদন্তী হুমায়ূন আহমেদ। বিংশ শতাব্দীর বাঙালি লেখকদের মধ্যে তিনি অন্যতম স্থান দখল করে আছেন। একাধারে ঔপন্যাসিক, ছোটগল্পকার ও নাট্যকার এ মানুষটিকে বলা হয় বাংলা সায়েন্স ফিকশনের পথিকৃৎ।', '0', '1713342743.jpeg', '1713342743.jpg', 5, '2024-04-17 02:32:23', '2024-04-17 02:32:23'),
(17, 'Fundamentals of Physics', 'David Halliday', '1000', 'This book is all fundamental thing in physics', '13', '1713342967.png', '1713342967.jpeg', 4, '2024-04-17 02:36:07', '2024-04-22 05:52:43'),
(18, 'Gitanjali', 'Rabindranath tagore', '1500', 'Gitanjali is a collection of poems by the Bengali poet Rabindranath Tagore.', '5', '1713343172.jpeg', '1713343172.jpeg', 5, '2024-04-17 02:39:32', '2024-04-19 00:55:40'),
(19, 'The grapes of wrath', 'John Steinbeck', '1000', 'The Grapes of Wrath is an American realist novel written by John Steinbeck and published in 1939.', '10', '1713343361.jpg', '1713343361.jpg', 1, '2024-04-17 02:42:41', '2024-04-22 05:52:59'),
(21, 'Hands-On Machine Learning', 'Aurelien Geron', '2000', 'Graphics in this book are printed in black and white.', '5', '1713509989.jpg', '1713509989.jpg', 4, '2024-04-19 00:59:49', '2024-04-19 00:59:49'),
(22, 'Natural language processing with python', 'Edward Loper', '1500', 'This book offers a highly accessible introduction to natural language processing.', '10', '1713510190.jpg', '1713510190.jpg', 4, '2024-04-19 01:03:10', '2024-04-19 01:03:45'),
(23, 'Treasure island', 'Robert Louis Stevenson', '1200', 'Treasure Island is an adventure novel by Scottish author Robert Louis Stevenson, telling a story of \"buccaneers and buried gold\".', '10', '1713510468.jpg', '1713510468.jpg', 2, '2024-04-19 01:07:48', '2024-04-19 01:07:48'),
(24, 'The Magic of Thinking Big', 'David J. Schwartz', '1000', 'Google users\r\nThe Magic of Thinking Big, first published in 1959, is a self-help book by David J. Schwartz.', '2000', '1713510642.jpg', '1713510642.jpeg', 3, '2024-04-19 01:10:42', '2024-04-19 01:10:42');

-- --------------------------------------------------------

--
-- Table structure for table `borrows`
--

CREATE TABLE `borrows` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Rejected',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `borrows`
--

INSERT INTO `borrows` (`id`, `book_id`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 17, 1, 'approved', '2024-04-18 16:29:59', '2024-04-22 05:52:43'),
(2, 18, 1, 'returned', '2024-04-18 16:29:59', '2024-04-19 00:52:20'),
(51, 19, 1, 'rejected', '2024-04-18 23:50:22', '2024-04-19 00:45:05'),
(52, 18, 1, 'returned', '2024-04-18 23:53:32', '2024-04-19 00:52:39'),
(53, 17, 1, 'approved', '2024-04-18 23:58:39', '2024-04-19 00:50:17'),
(54, 19, 1, 'returned', '2024-04-19 00:00:14', '2024-04-22 05:52:59'),
(55, 17, 1, 'rejected', '2024-04-19 00:00:50', '2024-04-19 00:48:07'),
(56, 17, 4, 'approved', '2024-04-19 00:54:36', '2024-04-19 00:55:24'),
(57, 18, 4, 'approved', '2024-04-19 00:54:42', '2024-04-19 00:55:40'),
(58, 21, 1, 'Applied', '2024-04-19 04:34:05', '2024-04-19 04:34:05'),
(59, 17, 1, 'Applied', '2024-04-19 12:08:26', '2024-04-19 12:08:26'),
(60, 17, 1, 'returned', '2024-04-20 09:06:35', '2024-04-20 09:12:56'),
(61, 19, 4, 'Applied', '2024-04-22 01:07:17', '2024-04-22 01:07:17'),
(62, 24, 4, 'Applied', '2024-04-22 01:07:24', '2024-04-22 01:07:24');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cat_title`, `created_at`, `updated_at`) VALUES
(1, 'Fiction', '2024-04-15 02:05:48', '2024-04-16 00:08:50'),
(2, 'adventure', '2024-04-15 02:08:05', '2024-04-15 02:08:05'),
(3, 'Motivational', '2024-04-15 02:14:35', '2024-04-15 02:14:35'),
(4, 'Science', '2024-04-15 02:16:42', '2024-04-15 02:16:42'),
(5, 'Story', '2024-04-15 02:20:31', '2024-04-15 02:20:31');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_04_02_150108_create_sessions_table', 1),
(7, '2024_04_15_053752_create_categories_table', 2),
(8, '2024_04_16_061448_create_books_table', 3),
(9, '2024_04_16_120839_modify_books_table', 4),
(10, '2024_04_17_084728_create_borrows_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
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
('7ntVYuNTbCO6uWOs6hms0UPdxZb7UTIviL35P54U', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRVFPdk9QRTVoeURkaVdFRHZMRlFoZHFlZDFhamtpSWN4WHJIUFRmNCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZGRfYm9vayI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7fQ==', 1713791059),
('UBfjK4gFzvGg1Y4vmTBOWWlz5E7WoZrd4qU2qyZs', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiakdrNFBXU3RrVWJUUm5DSGZTTWJBRDNERnpUTURhSWJEeE1RZU9vWCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMDoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2FkZF9ib29rIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1713798360);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT 'user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `usertype`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Md. Samiul Islam', 'mdsamiulislam28@gmail.com', '+8801851570827', 'Tolarbag, Mirpur-1', 'user', NULL, '$2y$10$VHgtZ3RY586DaIQHhFezzuskK.thAxjkUehoilVZLe8WkWNJ4mGl.', NULL, NULL, NULL, 'BYMJiMr5edVxzuJaFyY6Wb5n2UQEDtYrMnMSkZIXIPW3FLEJyvKuyMsDwpoq', NULL, NULL, '2024-04-02 09:18:43', '2024-04-18 06:52:11'),
(3, 'admin', 'admin@gmail.com', '01644472039', 'Tolarbag, Mirpur-1', 'admin', NULL, '$2y$10$0edhtaIGyvsONdLTgcwkwOb94C7rOVCSrn6gvHmQ1h6jiCyOi92EO', NULL, NULL, NULL, 'SGGIAtRhFTouXWKOPhjyjxHmHwoVEaOnuSIZ2fEFcUgVXTf9yvYOoZ3IPBnp', NULL, NULL, '2024-04-14 03:34:46', '2024-04-14 03:34:46'),
(4, 'Samiul', 'samiul.notes@gmail.com', '01644472039', 'Dhaka, Bangladesh', 'user', NULL, '$2y$10$/IF6rdxYPfJ04UzYlWqxlOG41OEzB4mHDqaYmAXKa5Vie/DX/5zIu', NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-18 09:03:53', '2024-04-18 09:03:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_category_id_foreign` (`category_id`);

--
-- Indexes for table `borrows`
--
ALTER TABLE `borrows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `borrows_book_id_foreign` (`book_id`),
  ADD KEY `borrows_user_id_foreign` (`user_id`);

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
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `borrows`
--
ALTER TABLE `borrows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `borrows`
--
ALTER TABLE `borrows`
  ADD CONSTRAINT `borrows_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `borrows_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
