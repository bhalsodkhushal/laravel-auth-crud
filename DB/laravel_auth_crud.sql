-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2020 at 06:43 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_auth_crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`department_id`, `department_name`) VALUES
(1, 'HR'),
(2, 'Engineering'),
(3, 'Marketing'),
(4, 'Planning'),
(5, 'Sales');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `employee_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(8, '2019_08_19_000000_create_failed_jobs_table', 1);

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
('0b7c89e17a1c073f7fd8614bf0812df95a213673f0f89f87f3933bb1ab7d1363aaa716fe9fe2244c', 5, 1, 'Personal Access Token', '[]', 0, '2020-05-09 00:11:45', '2020-05-09 00:11:45', '2020-05-16 05:41:48'),
('104b59962b7ebb7c56a8827781e5703dc4128ce3c4e2e305ce305f422c588db3494bc86ec544e285', 11, 1, 'Personal Access Token', '[]', 0, '2020-05-09 04:02:17', '2020-05-09 04:02:17', '2020-05-16 09:32:19'),
('15930a87b116610260e406b7e8faf86b8399205b1b0ed888fc9d25084c227d4b1e8f0e74dfbd0b7c', 11, 1, 'Personal Access Token', '[]', 0, '2020-05-10 00:31:18', '2020-05-10 00:31:18', '2020-05-17 06:01:19'),
('1f282a3e0e38915c415e7eab71bba7e34781ffc7d072bd95bec0de694bac72036ee9fc50d70c9871', 1, 1, 'Personal Access Token', '[]', 0, '2020-05-07 11:05:40', '2020-05-07 11:05:40', '2020-05-14 16:35:42'),
('270d7ef99f8e2d5d4af0ab4763a07cf4e39c1331b598582e769bc01e6f1e5e3694bfe1abb909869c', 1, 1, 'Personal Access Token', '[]', 0, '2020-05-07 11:45:06', '2020-05-07 11:45:06', '2020-05-14 17:15:07'),
('34244e8fe290a6d194a8519098568db4600647cb2da7c042d8b6b958fb4e62cfc861fad8fd7c9d9e', 1, 1, 'Personal Access Token', '[]', 0, '2020-05-07 11:14:03', '2020-05-07 11:14:03', '2020-05-14 16:44:03'),
('37f72555e2b7c52e83c3ad8088a1b334d1a486bac3c0079c51a413619c5667ca9aa63d41d94b88d1', 1, 1, 'Personal Access Token', '[]', 1, '2020-05-07 01:55:06', '2020-05-07 01:55:06', '2020-05-14 07:25:07'),
('383337155af2c7905b958f9e85953c45197a6658d2190f0e69e24e1b6c97ad5df95f228a27535d83', 1, 1, 'Personal Access Token', '[]', 0, '2020-05-07 11:12:02', '2020-05-07 11:12:02', '2020-05-14 16:42:02'),
('416ae88ecf4de070876753a1db0b19c1faf0621a5f3e92a78796c09c99de0f58f6d9b7ba0294530b', 11, 1, 'Personal Access Token', '[]', 0, '2020-05-10 00:40:17', '2020-05-10 00:40:17', '2020-05-17 06:10:17'),
('4d05edaea04cad7cd5c627aa4a5ae43e9bfbd74e3459774e12039f70cc5513065422bd6388ddd4b4', 1, 1, 'Personal Access Token', '[]', 0, '2020-05-07 12:35:51', '2020-05-07 12:35:51', '2020-05-14 18:05:51'),
('50617ccca0dd5a6d5a94931faf0e44216a81d922846daf0efde19fc61edbc6527c9334a2f7d6be5a', 11, 1, 'Personal Access Token', '[]', 0, '2020-05-10 06:41:49', '2020-05-10 06:41:49', '2020-05-17 12:11:49'),
('618e1431a8f7166b77c04aafbcfcaccb3614a04fda0b22a499a0c30086f56b83c95f9c86b60689e2', 11, 1, 'Personal Access Token', '[]', 0, '2020-05-09 04:03:32', '2020-05-09 04:03:32', '2020-05-16 09:33:33'),
('651bd51cab1b80b3e6bf24c349bb48d6136e7d91ee04b6b01c2a18c7bcbd9ab5cd15d22a5cfa1696', 11, 1, 'Personal Access Token', '[]', 1, '2020-05-10 00:43:16', '2020-05-10 00:43:16', '2020-05-17 06:13:17'),
('75249775b317729f939279aca1ea1c7fb55e8cf5e655be552796df4bd3cb0cd78a2a29f04611957f', 11, 1, 'Personal Access Token', '[]', 0, '2020-05-09 04:18:30', '2020-05-09 04:18:30', '2020-05-16 09:48:30'),
('7ce454e62b3d350102390c8af8671212dfe95dd089770bd69efa0bcce833a0d482246fbf36f0070f', 1, 1, 'Personal Access Token', '[]', 0, '2020-05-07 12:35:32', '2020-05-07 12:35:32', '2020-05-14 18:05:34'),
('7f08dfa7b1f3481696520baf8b4f90d18f39ff5b9437af64b6034c9837e0ec16492d1f31071b76be', 5, 1, 'Personal Access Token', '[]', 0, '2020-05-08 04:57:08', '2020-05-08 04:57:08', '2020-05-15 10:27:10'),
('9cdd56e6ab6f90a42278270ec4f09ff87444287d3a8c51f1df5fba5fe959f9c658f3c7715237e74a', 2, 1, 'Personal Access Token', '[]', 0, '2020-05-07 02:02:46', '2020-05-07 02:02:46', '2020-05-14 07:32:47'),
('9d231231ac5d44934c62acaa24edeb72524e6994f713f17c98c2261bb67c5b7fb50f402c76a304fe', 1, 1, 'Personal Access Token', '[]', 1, '2020-05-07 01:58:39', '2020-05-07 01:58:39', '2020-05-14 07:28:40'),
('a9853aea5c6cca147c518beda272caf4d7deb861245808b2c4c81cc3bcdf3a085d0a617d266889c6', 5, 1, 'Personal Access Token', '[]', 0, '2020-05-08 09:51:07', '2020-05-08 09:51:07', '2020-05-15 15:21:09'),
('b5572ae05fd98b3ce8fbdf1f197b8cc9e4df1b8c50e5b05a39ca7c3312991f9928c3cc7cb1f909b2', 1, 1, 'Personal Access Token', '[]', 0, '2020-05-07 11:22:29', '2020-05-07 11:22:29', '2020-05-14 16:52:29'),
('b76f81985df1626c6e0fe598cf0d414485c870a55615dcc4bbf6a41acb7190228ae6b01ed9485ad3', 5, 1, 'Personal Access Token', '[]', 0, '2020-05-08 12:00:40', '2020-05-08 12:00:40', '2020-05-15 17:30:41'),
('b97f6ae7cad2f6d20d8ec703bc21accd20f7e834d583ce8671014130ae4c1bf7ddccbbd66832bd16', 5, 1, 'Personal Access Token', '[]', 0, '2020-05-08 05:02:06', '2020-05-08 05:02:06', '2020-05-15 10:32:06'),
('be6018de05978c0bdb93077f1a54670d2dc5b183479053d3119888bb5b4fec30a37d9b2647f3628b', 11, 1, 'Personal Access Token', '[]', 0, '2020-05-09 04:17:57', '2020-05-09 04:17:57', '2020-05-16 09:47:57'),
('ccd42c03525141871fde491f8c609e3a7243242a7711586c465aea3145c6f0498afe49c05d9f7a3a', 5, 1, 'Personal Access Token', '[]', 0, '2020-05-08 12:19:05', '2020-05-08 12:19:05', '2020-05-15 17:49:05'),
('d2da83f64c200c5275323cfd8667dc10782170f8f71f44997248b34d9007fa4521c50b14c861dad8', 1, 1, 'Personal Access Token', '[]', 0, '2020-05-08 00:59:08', '2020-05-08 00:59:08', '2020-05-15 06:29:09'),
('d6135b1d4c010c09b93d0289fe28bf701713cad4dc96ab77e2a4cbe2338ca970a98bc27a697450fd', 5, 1, 'Personal Access Token', '[]', 0, '2020-05-08 12:17:25', '2020-05-08 12:17:25', '2020-05-15 17:47:25'),
('d7e0a956ff482adfdd025d2409b9d247d6686b51329cb58d4d8e7998aa10bdd3d77653d47855d13d', 1, 1, 'Personal Access Token', '[]', 0, '2020-05-08 11:08:04', '2020-05-08 11:08:04', '2020-05-15 16:38:07'),
('dd840487183b069802fca5aaab504e3ca2554bd1ca111f86a5bf65de1627b6d8cc9759546e9a27b6', 9, 1, 'Personal Access Token', '[]', 0, '2020-05-09 09:32:20', '2020-05-09 09:32:20', '2020-05-16 15:02:22'),
('eb064167328fe9e5b724a6840620df08f3eae446630a11994dda79b4898fbf0ed64595caad6451e3', 1, 1, 'Personal Access Token', '[]', 0, '2020-05-08 02:59:02', '2020-05-08 02:59:02', '2020-05-15 08:29:04'),
('f61f20f3872e60ec06b49e88a4fec45475e522da9520a139d9878b47f02f6e1eee2361b9f676474c', 5, 1, 'Personal Access Token', '[]', 0, '2020-05-08 12:15:06', '2020-05-08 12:15:06', '2020-05-15 17:45:07'),
('fcbb4733347b27806f541f1323da035a5cb58fb23d0f5059e7ae83c40d6dc31f73693f02eb94df51', 11, 1, 'Personal Access Token', '[]', 0, '2020-05-10 00:49:07', '2020-05-10 00:49:07', '2020-05-17 06:19:08'),
('fd946d1c770f4f2edcf8537dadab6e9efd6647e7086e16f8ff0c7e2e451f7f397848c5d3221f85ef', 1, 1, 'Personal Access Token', '[]', 0, '2020-05-08 00:56:56', '2020-05-08 00:56:56', '2020-05-15 06:26:57');

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
(1, NULL, 'Laravel Personal Access Client', 'ddLLHvfNMMEVhcGIBc6b2a81vjeuvXFhnNNOl8dl', NULL, 'http://localhost', 1, 0, 0, '2020-05-07 01:18:22', '2020-05-07 01:18:22'),
(2, NULL, 'Laravel Password Grant Client', 'lyi1eWuEGc8aXCLSqhQRZoSMgVYvy12J10Q6O2EL', 'users', 'http://localhost', 0, 1, 0, '2020-05-07 01:18:22', '2020-05-07 01:18:22');

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
(1, 1, '2020-05-07 01:18:22', '2020-05-07 01:18:22');

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'khushal@gmail.com', 'khushal@gmail.com', NULL, '$2y$10$6UC.aoRc1HlTfuv0A1OGVOZVUdpUk0F0xIO.VkoYkj1Mpq3iK3YcW', NULL, '2020-05-09 03:59:07', '2020-05-09 03:59:07'),
(2, 'sumit@gmail.com', 'sumit@gmail.com', NULL, '$2y$10$.GhczLNfN.pv/JpYgz5WROtt6PUW/Edyq4WZpd8Nzk72Ym3yI5WS2', NULL, '2020-05-09 03:37:24', '2020-05-09 03:37:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employee_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
