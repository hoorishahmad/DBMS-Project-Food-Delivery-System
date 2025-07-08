-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 08, 2025 at 08:56 AM
-- Server version: 10.11.10-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u773711032_laravelfood`
--

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `price` double NOT NULL,
  `description` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `picture` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `name`, `price`, `description`, `type`, `picture`) VALUES
(1, 'Fresh Salad Bowl', 590, 'Mixed greens, cherry tomatoes, cucumber, and dressing', 'salad', 'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80'),
(2, 'Pepperoni Pizza', 1290, 'Classic pizza with mozzarella and spicy pepperoni', 'pizza', 'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80'),
(3, 'Birria Tacos', 790, 'Juicy beef patty with cheese, lettuce and special sauce', 'taco', 'https://images.unsplash.com/photo-1551504734-5ee1c4a1479b?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80'),
(4, 'Dumplings Platter', 1690, 'Assorted fresh sushi with wasabi and soy sauce', 'dumplings', 'https://images.unsplash.com/photo-1563245372-f21724e3856d?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80'),
(5, 'Creamy Pasta', 890, 'Pasta Salad with creamy mushroom sauce and parmesan', 'pasta', 'https://images.unsplash.com/photo-1518779578993-ec3579fee39f?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80'),
(6, 'Steamed Dumplings', 790, 'Japanese ramen with spicy broth and chashu pork', 'dumplings', 'https://images.unsplash.com/photo-1563245372-f21724e3856d?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80'),
(7, 'Icecream Shake', 690, 'Traditional Chinese dumplings with pork filling', 'shake', 'https://images.unsplash.com/photo-1563805042-7684c019e1cb?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80'),
(8, 'Double Cheeseburger', 990, 'Double beef patties with double cheese', 'burger', 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80');

-- --------------------------------------------------------

--
-- Table structure for table `food_order`
--

CREATE TABLE `food_order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `food_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food_order`
--

INSERT INTO `food_order` (`id`, `order_id`, `food_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(2, 9, 2, 1, 1290.00, NULL, NULL),
(3, 9, 6, 1, 790.00, NULL, NULL),
(4, 9, 3, 1, 790.00, NULL, NULL),
(5, 10, 2, 1, 1290.00, NULL, NULL),
(6, 10, 6, 1, 790.00, NULL, NULL),
(7, 11, 3, 1, 790.00, NULL, NULL),
(8, 12, 7, 1, 690.00, NULL, NULL),
(9, 12, 3, 1, 790.00, NULL, NULL),
(10, 13, 2, 1, 1290.00, NULL, NULL),
(11, 14, 3, 1, 790.00, NULL, NULL),
(12, 15, 3, 1, 790.00, NULL, NULL),
(13, 15, 6, 1, 790.00, NULL, NULL),
(14, 16, 2, 1, 1290.00, NULL, NULL),
(15, 17, 3, 1, 790.00, NULL, NULL),
(16, 18, 7, 1, 690.00, NULL, NULL),
(17, 19, 2, 1, 1290.00, NULL, NULL),
(18, 20, 3, 2, 790.00, NULL, NULL),
(19, 21, 6, 1, 790.00, NULL, NULL),
(20, 22, 1, 1, 590.00, NULL, NULL),
(21, 23, 1, 1, 590.00, NULL, NULL),
(22, 23, 2, 1, 1290.00, NULL, NULL),
(23, 23, 3, 1, 790.00, NULL, NULL),
(24, 24, 4, 2, 1690.00, NULL, NULL),
(25, 24, 3, 1, 790.00, NULL, NULL),
(26, 25, 3, 1, 790.00, NULL, NULL),
(27, 26, 2, 1, 1290.00, NULL, NULL),
(28, 27, 6, 1, 790.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_27_193758_food', 1),
(6, '2022_02_27_202353_order', 1),
(7, '2022_02_27_204135_food_order', 1),
(8, '2022_04_05_055944_change_picture_column', 1),
(9, '2022_04_05_061005_change_food_name_unique', 1),
(10, '2022_04_07_194813_change_delivery_address_column_to_nullable_in_order_table', 1),
(11, '2022_04_10_060818_add_primary_key_to_food_order', 1),
(12, '2022_04_10_175159_change_food_price_to_double', 1),
(13, '2025_06_16_233744_make_delivery_address_nullable_in_order_table', 1),
(14, '2025_06_19_153945_create_order_items_table', 1),
(15, '2025_06_19_183548_add_food_id_to_food_order_table', 2),
(16, '2025_06_19_183934_drop_product_id_from_food_order_table', 3),
(17, '2025_06_19_191737_add_status_to_orders_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) NOT NULL,
  `deliveryAddress` varchar(191) DEFAULT NULL,
  `total` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'pending',
  `receipt_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `type`, `deliveryAddress`, `total`, `created_at`, `updated_at`, `status`, `receipt_image`) VALUES
(1, 1, 'delivery', 'h1 strt 1', 2870.00, NULL, NULL, 'completed', NULL),
(2, 1, 'delivery', 'h1 strt 1', 2870.00, NULL, NULL, 'completed', NULL),
(3, 1, 'delivery', 'h1 strt 1', 2870.00, NULL, NULL, 'completed', NULL),
(4, 1, 'delivery', 'h1 strt 1', 2870.00, NULL, NULL, 'completed', NULL),
(5, 1, 'delivery', 'h1 strt 1', 2870.00, NULL, NULL, 'completed', NULL),
(6, 1, 'delivery', 'h1 strt 1', 2870.00, NULL, NULL, 'completed', NULL),
(7, 1, 'delivery', 'h1 strt 1', 2870.00, NULL, NULL, 'completed', NULL),
(8, 1, 'delivery', 'h1 strt 1', 2870.00, NULL, NULL, 'completed', NULL),
(9, 1, 'delivery', 'h1 strt 1', 2870.00, NULL, NULL, 'completed', NULL),
(10, 1, 'delivery', 'h1 strt 1', 2080.00, NULL, NULL, 'completed', NULL),
(11, 1, 'pickup', '', 790.00, NULL, NULL, 'completed', NULL),
(12, 1, 'delivery', 'h1 strt 1', 1480.00, NULL, NULL, 'completed', NULL),
(13, 1, 'delivery', 'h1 strt 1', 1290.00, NULL, NULL, 'completed', NULL),
(14, 1, 'delivery', 'h1 strt 1', 790.00, NULL, NULL, 'completed', NULL),
(15, 2, 'delivery', 'strt 3 houses 4', 1580.00, NULL, NULL, 'completed', NULL),
(16, 2, 'delivery', 'strt 3 houses 4', 1290.00, NULL, NULL, 'completed', NULL),
(17, 2, 'delivery', 'strt 3 houses 4', 790.00, NULL, NULL, 'completed', NULL),
(18, 3, 'pickup', '', 690.00, NULL, NULL, 'preparing', NULL),
(19, 4, 'delivery', 'house 1 strt 3', 1290.00, NULL, NULL, 'completed', NULL),
(20, 5, 'delivery', 'Peshawar University House No#f7\r\nPeshawar', 1580.00, NULL, NULL, 'completed', NULL),
(21, 5, 'pickup', '', 790.00, NULL, NULL, 'completed', NULL),
(22, 5, 'pickup', '', 590.00, NULL, NULL, 'completed', NULL),
(23, 3, 'delivery', 'house 430', 2670.00, NULL, NULL, 'preparing', NULL),
(24, 6, 'delivery', 'Near University of Malakand,\r\nChakdara, \r\nKhyber Pakhtunkhwa, Pakistan.', 4170.00, NULL, NULL, 'completed', NULL),
(25, 8, 'pickup', '', 790.00, NULL, NULL, 'cancelled', NULL),
(26, 10, 'delivery', 'mohammadia clinic, opp assia gate, city circular road\r\nhouse 6, street no 1', 1290.00, NULL, NULL, 'completed', NULL),
(27, 10, 'delivery', 'mohammadia clinic, opp assia gate, city circular road\r\nhouse 6, street no 1', 790.00, NULL, NULL, 'completed', 'receipts/686cd1f53e3b8.png');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(191) NOT NULL,
  `address` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `isAdmin`, `password`, `address`, `remember_token`) VALUES
(1, 'Hoorish Ahmad', 'hoorish4@gmail.com', NULL, 0, '$2y$10$lqwvn4EM7w8Oma9Tjif40eCPnaYRsrMDB5AlGCGwCm7M6zWR.e80W', 'h1 strt 1', NULL),
(2, 'Tuba Ahmad', 'tuba32@gmail.com', NULL, 0, '$2y$10$HBof0jPoT.7FvV526q2hsu7rBMj9u8kjA1J1eZWRas8/B8VxdojDu', 'strt 3 houses 4', NULL),
(3, 'afreen', 'reen@gmail.com', NULL, 0, '$2y$10$bWg.g/3ZMCiN507naHYOzOjhlU4aR/PML152rLQACp9NzmYV5tyHS', 'house 430', NULL),
(4, 'Hoor Ahmad', 'hoorish2@gmail.com', NULL, 0, '$2y$10$5WDjqhKONjt7Oh0hNHztc.yzWi/XBhuX4MAV.Y/ZXUI7oecPoRaR2', 'house 1 strt 3', NULL),
(5, 'muhammad kamil khan', 'ghatkhanjee@gmail.com', NULL, 0, '$2y$10$0mI7kZyM8NDT0oxlouyOs.OUJkKmVLB.1SgZvZoMJf88nIC9Uv5na', 'Peshawar University House No#f7\r\nPeshawar', NULL),
(6, 'Naveed ahmad', 'naveed2k04@gmail.com', NULL, 0, '$2y$10$r6tm2iYZanET9IbTSGg4pOHw1KWP0JWwLGc8LCN/epn/XgkoLMGiG', 'Near University of Malakand,\r\nChakdara, \r\nKhyber Pakhtunkhwa, Pakistan.', NULL),
(7, 'Ehzaz Khan', 'ehzazkhan964@gmail.com', NULL, 0, '$2y$10$nvKxmLiqAFlrha0KfetrZORt9bL9xHiFmH6T/Rp2r4.lglnH4Annm', 'hostel 8 uet peshawar', NULL),
(8, 'biz', 'biz@gmail.com', NULL, 0, '$2y$10$1RX9.SmHdfWKDfZa/vYKuup4Nd7Ff0DHsaB1Yfo4VTUo63.ocBZzW', 'abc13', NULL),
(9, 'hi', 'hi@gmail.com', NULL, 0, '$2y$10$A04wlGMzN/EhwQ8JgoKLg.cI0XyZkXYL1QUAwAG1aX0Y7Oazi3Zxm', 'hi', NULL),
(10, 'mam sumayyea', 'hoorish499@gmail.com', NULL, 0, '$2y$10$Ov6qMOU7C7CwA9z/8ZotbO2bOnjrGivPNR19UW49CeP5nVV1GWl36', 'mohammadia clinic, opp assia gate, city circular road\r\nhouse 6, street no 1', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `food_name_unique` (`name`);

--
-- Indexes for table `food_order`
--
ALTER TABLE `food_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `food_id` (`food_id`);

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
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `food_order`
--
ALTER TABLE `food_order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- Constraints for table `food_order`
--
ALTER TABLE `food_order`
  ADD CONSTRAINT `food_order_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `food_order_ibfk_2` FOREIGN KEY (`food_id`) REFERENCES `food` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
