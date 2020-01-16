-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 21, 2019 at 05:25 AM
-- Server version: 5.7.26-0ubuntu0.18.04.1
-- PHP Version: 5.6.40-8+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hsrts`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `activity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_read` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `user_id`, `activity`, `is_read`, `created_at`, `updated_at`) VALUES
(54, 1, 'You have added 30  Macbook Pro', '0', '2019-06-20 10:00:18', '2019-06-20 10:00:18'),
(55, 1, 'You have added 50  Macbook Air', '0', '2019-06-20 10:00:55', '2019-06-20 10:00:55'),
(56, 1, 'You have added 10  Macbook Pro to ZexoIT', '0', '2019-06-20 10:02:03', '2019-06-20 10:02:03'),
(57, 1, 'You have added 20  Macbook Air to ZexoIT', '0', '2019-06-20 10:02:19', '2019-06-20 10:02:19'),
(58, 1, 'You have added 10  Macbook Pro to Foresight Computers', '0', '2019-06-20 10:02:26', '2019-06-20 10:02:26'),
(59, 1, 'You have added 20  Macbook Air to Foresight Computers', '0', '2019-06-20 10:02:34', '2019-06-20 10:02:34'),
(60, 1, 'You have deleted Graphics Card  category', '0', '2019-06-20 11:46:46', '2019-06-20 11:46:46');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `user_id`, `created_at`, `updated_at`) VALUES
(5, 'Apple', '1', '2019-06-20 09:23:51', '2019-06-20 09:23:51'),
(6, 'Samsung', '1', '2019-06-20 09:23:57', '2019-06-20 09:23:57'),
(7, 'Lenevo', '1', '2019-06-20 09:24:10', '2019-06-20 09:24:10');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `user_id`, `created_at`, `updated_at`) VALUES
(10, 'SmartPhone', 1, '2019-06-20 09:22:08', '2019-06-20 09:22:08'),
(11, 'Tab', 1, '2019-06-20 09:22:17', '2019-06-20 09:22:17'),
(12, 'Battery', 1, '2019-06-20 09:22:23', '2019-06-20 09:22:23'),
(13, 'Laptop', 1, '2019-06-20 09:22:28', '2019-06-20 09:22:28');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `shop_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `invoice_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total_price` decimal(12,2) NOT NULL,
  `customer_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `shop_id`, `user_id`, `invoice_id`, `total_price`, `customer_name`, `customer_email`, `customer_phone`, `customer_address`, `created_at`, `updated_at`) VALUES
(5, 3, 1, 'J5QMM4ID5NX8', '210000.00', 'Demo Customer1', 'demo1@email.com', '466464644646', 'Dhanmondi, Dhaka', '2019-05-07 10:05:08', '2019-05-07 10:05:08'),
(6, 4, 1, 'YHLRMI2W9KIF', '115000.00', 'Demo Customer2', 'demo2@email.com', '466464644646', 'Uttara, Dhaka', '2019-06-20 10:06:11', '2019-06-20 10:06:11');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `unit_price` decimal(12,2) NOT NULL,
  `unit_price_total` decimal(12,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `invoice_id`, `product_id`, `qty`, `unit_price`, `unit_price_total`, `created_at`, `updated_at`) VALUES
(5, 5, 3, 1, '210000.00', '210000.00', '2019-06-20 10:05:08', '2019-06-20 10:05:08'),
(6, 6, 4, 1, '115000.00', '115000.00', '2019-06-20 10:06:11', '2019-06-20 10:06:11');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `is_read` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `message_for` enum('shop','admin','user') COLLATE utf8_unicode_ci NOT NULL,
  `from` enum('shop','admin','user') COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_11_02_143908_create_sessions_table', 1),
('2015_11_04_172203_create_shops_table', 1),
('2015_11_06_152543_create_shop_user_table', 1),
('2015_11_09_181633_create_activity_table', 1),
('2015_11_11_172835_create_options_table', 1),
('2015_11_24_141639_create_messages_table', 1),
('2015_12_02_132602_create_category_table', 1),
('2015_12_02_145655_create_brands_table', 1),
('2015_12_02_155107_create_products_table', 1),
('2015_12_03_140616_create_product_attribute_table', 1),
('2015_12_03_184311_create_stocks__table', 1),
('2015_12_04_125420_create_invoice_table', 1),
('2015_12_04_125722_create_invoice_items_table', 1),
('2016_01_02_131635_create_repair_invoice', 1),
('2016_01_02_133919_create_repair_invoice_items', 1);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(10) UNSIGNED NOT NULL,
  `option_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `option_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `option_key`, `option_value`) VALUES
(1, 'company_name', 'HSRTS'),
(2, 'invoice_footer_note', 'Sold item can\'t be returned');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `brand_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `unite_price` decimal(12,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `product_name`, `product_model`, `description`, `brand_id`, `category_id`, `unite_price`, `created_at`, `updated_at`) VALUES
(3, 1, 'Macbook Pro', '2018', '  The description goes here', '5', '13', '210000.00', '2019-06-20 09:54:34', '2019-06-20 09:54:34'),
(4, 1, 'Macbook Air', '2019', 'The description goes here  ', '5', '13', '115000.00', '2019-06-20 09:56:32', '2019-06-20 09:56:32');

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `attribute_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `attribute_value` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `c_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `product_id`, `attribute_name`, `attribute_value`, `c_order`) VALUES
(7, 3, 'Display', '13 inch', 7),
(8, 3, 'Processor', 'Core i7', 8),
(9, 3, 'Ram', '8GB', 9),
(10, 3, 'Storage', '256GB SSD', 10),
(11, 4, 'Display', '12.6 inch', 11),
(12, 4, 'Processor', 'Core i5', 12),
(13, 4, 'Ram', '4GB', 13),
(14, 4, 'Storage', '128GB SSD', 14);

-- --------------------------------------------------------

--
-- Table structure for table `repair_invoices`
--

CREATE TABLE `repair_invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `shop_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `invoice_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total_price` decimal(12,2) NOT NULL,
  `customer_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('waiting','in_process','completed') COLLATE utf8_unicode_ci NOT NULL,
  `special_note` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `repair_invoices`
--

INSERT INTO `repair_invoices` (`id`, `shop_id`, `user_id`, `invoice_id`, `total_price`, `customer_name`, `customer_email`, `customer_phone`, `customer_address`, `status`, `special_note`, `delivery_date`, `created_at`, `updated_at`) VALUES
(6, 0, 1, 'TPXGOT4JSX5T', '20000.00', 'Demo Customer1', 'demo1@email.com', '466464644646', 'Dhanmondi, Dhaka', 'completed', 'The display needs to be repaired', '2019-06-28 18:00:00', '2019-06-20 10:10:50', '2019-06-20 12:42:27'),
(7, 0, 1, 'QXBWKANX5DUN', '4000.00', 'Demo Customer2', 'demo2@email.com', '466464644646', 'Uttara, Dhaka', 'completed', 'The ram needs to be changed', '2019-06-27 18:00:00', '2019-06-20 10:12:16', '2019-06-20 10:46:39');

-- --------------------------------------------------------

--
-- Table structure for table `repair_invoice_items`
--

CREATE TABLE `repair_invoice_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `unit_price` decimal(12,2) NOT NULL,
  `unit_price_total` decimal(12,2) NOT NULL,
  `status` enum('waiting','in_process','completed') COLLATE utf8_unicode_ci NOT NULL,
  `engineer_note` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `repair_invoice_items`
--

INSERT INTO `repair_invoice_items` (`id`, `invoice_id`, `product_id`, `qty`, `unit_price`, `unit_price_total`, `status`, `engineer_note`, `created_at`, `updated_at`) VALUES
(7, 6, 3, 1, '20000.00', '20000.00', 'waiting', 'Demo Note', '2019-06-20 10:10:50', '2019-06-20 12:42:49'),
(8, 7, 4, 1, '4000.00', '4000.00', 'waiting', 'sdfsdfdsfsdf', '2019-06-20 10:12:16', '2019-06-20 10:46:13');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `payload`, `last_activity`) VALUES
('333d29df7d177d72bce83bf44417ef55f547e863', 'YTo3OntzOjU6ImZsYXNoIjthOjI6e3M6MzoibmV3IjthOjA6e31zOjM6Im9sZCI7YTowOnt9fXM6NjoiX3Rva2VuIjtzOjQwOiJEWUVLUUNGN01hT2FIYmJsSHA2OHM1Mnl4TWRmQUNoR2dic3FMTWNoIjtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo2MToiaHR0cDovL2hzcnRzLnh5ejo4MzgzL2FkbWluaXN0cmF0b3Ivc2hvcC9zYWxlcy82L3ZpZXctaW52b2ljZSI7fXM6Mzg6ImxvZ2luXzgyZTVkMmM1NmJkZDA4MTEzMThmMGNmMDc4Yjc4YmZjIjtpOjE7czo0OiJjYXJ0IjthOjE6e3M6NDoibWFpbiI7TzozODoiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydENvbGxlY3Rpb24iOjE6e3M6ODoiACoAaXRlbXMiO2E6MTp7czozMjoiYTc3NWJhYzljZmY3ZGVjMmI5ODRlMDIzYjk1MjA2YWEiO086NDE6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRSb3dDb2xsZWN0aW9uIjozOntzOjE4OiIAKgBhc3NvY2lhdGVkTW9kZWwiO047czoyNzoiACoAYXNzb2NpYXRlZE1vZGVsTmFtZXNwYWNlIjtOO3M6ODoiACoAaXRlbXMiO2E6Nzp7czo1OiJyb3dpZCI7czozMjoiYTc3NWJhYzljZmY3ZGVjMmI5ODRlMDIzYjk1MjA2YWEiO3M6MjoiaWQiO2k6MztzOjQ6Im5hbWUiO3M6MTE6Ik1hY2Jvb2sgUHJvIjtzOjM6InF0eSI7czoxOiIxIjtzOjU6InByaWNlIjtzOjU6IjIwMDAwIjtzOjc6Im9wdGlvbnMiO086NDg6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRSb3dPcHRpb25zQ29sbGVjdGlvbiI6MTp7czo4OiIAKgBpdGVtcyI7YTowOnt9fXM6ODoic3VidG90YWwiO2k6MjAwMDA7fX19fX1zOjIyOiJQSFBERUJVR0JBUl9TVEFDS19EQVRBIjthOjA6e31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTU2MTA1NjQ5MjtzOjE6ImMiO2k6MTU2MTA0NjM2NjtzOjE6ImwiO3M6MToiMCI7fX0=', 1561056493),
('5a0fd9192b35926e3a983c3c1091829adabd1369', 'YTo2OntzOjU6ImZsYXNoIjthOjI6e3M6MzoibmV3IjthOjA6e31zOjM6Im9sZCI7YTowOnt9fXM6NjoiX3Rva2VuIjtzOjQwOiJwUDdsb0FSVjhtTzhRNlVJVWVJR3NXclh0eDRUZzJJcVY2S3ZNdndsIjtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo2MToiaHR0cDovL2hzcnRzLnh5ejo4MzgzL19kZWJ1Z2Jhci9hc3NldHMvc3R5bGVzaGVldHM/MTQ2NjQ4NTg3MSI7fXM6Mzg6ImxvZ2luXzgyZTVkMmM1NmJkZDA4MTEzMThmMGNmMDc4Yjc4YmZjIjtpOjQ7czoyMjoiUEhQREVCVUdCQVJfU1RBQ0tfREFUQSI7YTowOnt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE1NjEwNTUyOTU7czoxOiJjIjtpOjE1NjEwNDk1NzM7czoxOiJsIjtzOjE6IjAiO319', 1561055295);

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `bank_details` text COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('0','1','2','3','4') COLLATE utf8_unicode_ci NOT NULL,
  `plan` enum('monthly','yearly') COLLATE utf8_unicode_ci NOT NULL,
  `commission_type` enum('fixed','percent') COLLATE utf8_unicode_ci NOT NULL,
  `commission_amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_method` enum('bank_transfer','store_credit','both') COLLATE utf8_unicode_ci NOT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `subscription_ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `user_id`, `name`, `slug`, `email`, `description`, `address`, `bank_details`, `logo`, `status`, `plan`, `commission_type`, `commission_amount`, `payment_method`, `trial_ends_at`, `subscription_ends_at`, `created_at`, `updated_at`) VALUES
(3, 1, 'ZexoIT', 'zexoit', 'support@zexoit.com', '', 'Multiplan Center, Elephant Road, Dhaka', '', '', '1', 'monthly', 'fixed', '', 'bank_transfer', NULL, NULL, '2019-06-20 09:35:19', '2019-06-20 09:35:19'),
(4, 1, 'Foresight Computers', 'foresight-computers', 'support@foresight.com', '', 'ECS Computer City, Agargaon, Dhaka', '', '', '1', 'monthly', 'fixed', '', 'bank_transfer', NULL, NULL, '2019-06-20 09:38:30', '2019-06-20 09:38:30');

-- --------------------------------------------------------

--
-- Table structure for table `shop_user`
--

CREATE TABLE `shop_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `user_type` enum('shop_admin','agent') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `shop_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `unite_price` decimal(12,2) NOT NULL,
  `total_product` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `shop_id`, `product_id`, `unite_price`, `total_product`, `user_id`, `created_at`, `updated_at`) VALUES
(5, 0, 3, '210000.00', 30, 1, '2019-06-20 10:00:18', '2019-06-20 10:00:18'),
(6, 0, 4, '115000.00', 50, 1, '2019-06-20 10:00:55', '2019-06-20 10:00:55'),
(7, 3, 3, '0.00', 10, 1, '2019-06-20 10:02:03', '2019-06-20 10:02:03'),
(8, 3, 4, '0.00', 20, 1, '2019-06-20 10:02:19', '2019-06-20 10:02:19'),
(9, 4, 3, '0.00', 10, 1, '2019-06-20 10:02:26', '2019-06-20 10:02:26'),
(10, 4, 4, '0.00', 20, 1, '2019-06-20 10:02:34', '2019-06-20 10:02:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int(11) NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` enum('user','super_admin','sub_admin','shop_admin') COLLATE utf8_unicode_ci NOT NULL,
  `active_status` enum('0','1','2') COLLATE utf8_unicode_ci NOT NULL,
  `is_email_verified` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `activation_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_online` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `shop_id` int(11) NOT NULL,
  `referral_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `referred_by` int(11) NOT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `user_name`, `email`, `password`, `country_id`, `mobile`, `address`, `website`, `phone`, `photo`, `user_type`, `active_status`, `is_email_verified`, `activation_code`, `is_online`, `shop_id`, `referral_id`, `referred_by`, `last_login`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Demo', 'Admin', NULL, 'admin@demo.com', '$2y$10$esWuFLq.HfgbmjkRGpc.Keb51LxeqTeL2g0swccccJREU0fHIErqS', 0, '', '', '', '', '', 'super_admin', '1', '0', '', '0', 0, '', 0, NULL, 'WSIWMv17CkD4cUME9CX717K69HDebBRK4MnMIBfpTO9zyXkYpXO9VuWdSddk', '2016-05-05 09:10:16', '2019-06-19 05:56:34'),
(4, 'Aldrin', 'Artho', NULL, 'aldrin@zexoit.com', '$2y$10$88AbnjcAPHYkgryXLx.r4u6.2XT1K06ZweXnG7Za5F3XuOxu7viiK', 0, '01723987654', '', '', '', '', 'shop_admin', '1', '0', '', '0', 3, '6FHAN3', 0, NULL, NULL, '2019-06-20 09:46:18', '2019-06-20 09:46:18'),
(5, 'Rahim', 'Khan', NULL, 'rahim@zexoit.com', '$2y$10$sJK94nWNCczxlnRRwf6GaehAKSNwasdF9d4uv7OdVGz2as5e5wR8u', 0, '01723765432', '', '', '', '', 'user', '1', '0', '', '0', 3, 'J2YN4T', 0, NULL, NULL, '2019-06-20 09:47:18', '2019-06-20 09:47:18'),
(6, 'Fahim', 'Chowdhury', NULL, 'fahim@foresight.com', '$2y$10$KNdtljpIfq.vVTyjo8BqKuQ9RGCRQ4Upw8.apMmTJmx8m4VRSApL6', 0, '01912123456', '', '', '', '', 'shop_admin', '1', '0', '', '0', 4, 'QWZDEX', 0, NULL, NULL, '2019-06-20 09:48:15', '2019-06-20 09:48:15'),
(7, 'Sujon', 'Roy', NULL, 'sujon@foresight.com', '$2y$10$Eb.cHlrLoEBizbARP5AN0O58SabgATIy5aY43DJpIy.LySH1pJMhG', 0, '01913089123', '', '', '', '', 'user', '1', '0', '', '0', 4, '61FXIH', 0, NULL, NULL, '2019-06-20 09:50:03', '2019-06-20 09:50:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `repair_invoices`
--
ALTER TABLE `repair_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `repair_invoice_items`
--
ALTER TABLE `repair_invoice_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_user`
--
ALTER TABLE `shop_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
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
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `repair_invoices`
--
ALTER TABLE `repair_invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `repair_invoice_items`
--
ALTER TABLE `repair_invoice_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shop_user`
--
ALTER TABLE `shop_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
