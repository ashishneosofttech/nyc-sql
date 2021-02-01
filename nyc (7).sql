-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 01, 2021 at 05:55 PM
-- Server version: 8.0.22-0ubuntu0.20.04.3
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nyc`
--

-- --------------------------------------------------------

--
-- Table structure for table `cutting_type`
--

CREATE TABLE `cutting_type` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cutting_type`
--

INSERT INTO `cutting_type` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'NO CUTTING', '2021-01-29 04:58:20', '2021-01-29 04:58:20'),
(2, '1X CUTTING', '2021-01-29 04:58:32', '2021-01-29 04:58:32'),
(3, '1.5X CUTTING', '2021-01-29 04:58:46', '2021-01-29 04:58:46');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int UNSIGNED NOT NULL,
  `data_type_id` int UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 2),
(4, 1, 'password', 'password', 'Password', 0, 0, 0, 1, 1, 0, '{}', 5),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 6),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 17),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 0, 0, 0, 0, 0, '{}', 9),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 1, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 0, 0, 0, 0, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 15),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 18),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, '{}', 11),
(22, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 5, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(24, 5, 'code', 'text', 'Code', 1, 1, 1, 1, 1, 1, '{}', 3),
(25, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"option1\",\"options\":{\"ACTIVE\":\"ACTIVE\",\"INACTIVE\":\"INACTIVE\"}}', 4),
(26, 5, 'rate', 'hidden', 'Rate', 1, 0, 0, 1, 1, 0, '{\"default\":0}', 5),
(27, 5, 'lot_size', 'number', 'Lot Size', 1, 1, 1, 1, 1, 1, '{}', 6),
(28, 5, 'is_expirable', 'checkbox', 'Is Expirable', 1, 1, 1, 1, 1, 1, '{}', 7),
(29, 5, 'expiry_date', 'date', 'Expiry Date', 0, 1, 1, 1, 1, 1, '{}', 8),
(30, 5, 'parent_id', 'text', 'Parent Id', 1, 0, 0, 0, 0, 0, '{}', 9),
(31, 5, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 12),
(32, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 10),
(33, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(34, 1, 'first_name', 'text', 'First Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(35, 1, 'last_name', 'text', 'Last Name', 0, 1, 1, 1, 1, 1, '{}', 4),
(36, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 0, 0, 0, 0, 0, '{}', 8),
(37, 1, 'code', 'text', 'Code', 0, 1, 1, 1, 0, 1, '{}', 10),
(38, 1, 'category', 'text', 'Category', 1, 1, 1, 1, 1, 1, '{}', 13),
(39, 1, 'account_type', 'select_dropdown', 'Account Type', 1, 1, 1, 1, 1, 1, '{\"default\":\"CUSTOMER\",\"options\":{\"CUSTOMER\":\"CUSTOMER\",\"BROKER\":\"BROKER\",\"DEALER\":\"DEALER\",\"RECONCILIATION-STAFF\":\"RECONCILIATION STAFF\"}}', 16),
(40, 1, 'account_status', 'select_dropdown', 'Account Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"ACTIVE\",\"options\":{\"ACTIVE\":\"ACTIVE\",\"INACTIVE\":\"INACTIVE\"}}', 19),
(41, 1, 'cutting_type', 'text', 'Cutting Type', 0, 1, 1, 1, 1, 1, '{}', 20),
(42, 1, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 1, 0, 0, 0, '{}', 22),
(47, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(48, 9, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(49, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(50, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(52, 1, 'user_hasone_cutting_type_relationship', 'relationship', 'Cutting Type', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\CuttingType\",\"table\":\"cutting_type\",\"type\":\"belongsTo\",\"column\":\"cutting_type\",\"key\":\"name\",\"label\":\"name\",\"pivot_table\":\"cutting_type\",\"pivot\":\"0\",\"taggable\":\"0\"}', 21),
(53, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(54, 10, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(55, 10, 'code', 'text', 'Code', 1, 1, 1, 1, 1, 1, '{}', 3),
(56, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(57, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(58, 1, 'user_belongsto_user_category_relationship', 'relationship', 'Category', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\UserCategory\",\"table\":\"user_category\",\"type\":\"belongsTo\",\"column\":\"category\",\"key\":\"code\",\"label\":\"name\",\"pivot_table\":\"cutting_type\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(59, 5, 'scrip_hasmany_scrip_metum_relationship', 'relationship', 'scrip_meta', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\ScripMeta\",\"table\":\"scrip_meta\",\"type\":\"hasMany\",\"column\":\"scrip_id\",\"key\":\"meta_value\",\"label\":\"meta_key\",\"pivot_table\":\"cutting_type\",\"pivot\":\"0\",\"taggable\":null}', 13),
(60, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(61, 12, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(62, 12, 'max_lot_limit', 'text', 'Max Lot Limit', 1, 1, 1, 1, 1, 1, '{}', 4),
(63, 12, 'max_scrip_limit', 'text', 'Max Scrip Limit', 1, 1, 1, 1, 1, 1, '{}', 5),
(64, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(65, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(66, 12, 'user_scrip_limit_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"fullname\",\"pivot_table\":\"cutting_type\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(67, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(68, 14, 'customer_id', 'text', 'Customer Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(69, 14, 'broker_id', 'text', 'Broker Id', 1, 1, 1, 1, 1, 1, '{}', 4),
(70, 14, 'transaction_type', 'select_dropdown', 'Transaction Type', 1, 1, 1, 1, 1, 1, '{\"default\":1,\"options\":{\"1\":\"BUY\",\"2\":\"SELL\"}}', 6),
(71, 14, 'order_index', 'number', 'Order Index', 1, 1, 1, 1, 1, 1, '{\"default\":\"0\"}', 7),
(72, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(73, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(74, 14, 'preferred_broker_belongsto_user_relationship', 'relationship', 'Customer', 0, 1, 1, 1, 1, 1, '{\"scope\":\"customer\",\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"customer_id\",\"key\":\"id\",\"label\":\"fullname\",\"pivot_table\":\"cutting_type\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(75, 14, 'preferred_broker_belongsto_user_relationship_1', 'relationship', 'Broker', 0, 1, 1, 1, 1, 1, '{\"scope\":\"broker\",\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"broker_id\",\"key\":\"id\",\"label\":\"fullname\",\"pivot_table\":\"cutting_type\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(76, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(77, 17, 'customer_id', 'text', 'Customer Id', 1, 0, 0, 0, 0, 0, '{}', 2),
(78, 17, 'dealer_id', 'text', 'Dealer Id', 1, 1, 1, 1, 1, 1, '{}', 20),
(79, 17, 'customer_code', 'text', 'Customer Code', 1, 1, 1, 1, 1, 1, '{}', 3),
(80, 17, 'scrip_id', 'text', 'Scrip Id', 1, 0, 0, 0, 0, 0, '{}', 13),
(81, 17, 'lot_count', 'text', 'Lot Count', 1, 1, 1, 1, 1, 1, '{}', 5),
(82, 17, 'quantity', 'text', 'Quantity', 1, 1, 1, 1, 1, 1, '{}', 6),
(83, 17, 'note', 'text', 'Note', 0, 1, 1, 1, 1, 1, '{}', 7),
(84, 17, 'status', 'text', 'Status', 1, 1, 1, 1, 1, 1, '{}', 8),
(85, 17, 'cutting_type', 'text', 'Cutting Type', 1, 1, 1, 1, 1, 1, '{}', 9),
(86, 17, 'order_type', 'text', 'Order Type', 1, 1, 1, 1, 1, 1, '{}', 15),
(87, 17, 'transaction_type', 'text', 'Transaction Type', 1, 1, 1, 1, 1, 1, '{}', 10),
(88, 17, 'real_time_position', 'text', 'Real Time Position', 1, 1, 1, 1, 1, 1, '{}', 11),
(89, 17, 'rate', 'text', 'Rate', 1, 1, 1, 1, 1, 1, '{}', 12),
(90, 17, 'parent_id', 'text', 'Parent Id', 0, 1, 1, 1, 1, 1, '{}', 16),
(91, 17, 'scrip_code', 'text', 'Scrip Code', 1, 1, 1, 1, 1, 1, '{}', 4),
(92, 17, 'lot_size', 'text', 'Lot Size', 1, 1, 1, 1, 1, 1, '{}', 14),
(93, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 17),
(94, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 18),
(95, 17, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 19),
(96, 17, 'created_by', 'text', 'Created By', 0, 1, 1, 1, 1, 1, '{}', 21),
(97, 17, 'updated_by', 'text', 'Updated By', 0, 1, 1, 1, 1, 1, '{}', 22),
(98, 17, 'deleted_by', 'text', 'Deleted By', 0, 1, 1, 1, 1, 1, '{}', 23),
(99, 17, 'user_order_belongsto_user_relationship', 'relationship', 'Dealer', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"dealer_id\",\"key\":\"id\",\"label\":\"code\",\"pivot_table\":\"cutting_type\",\"pivot\":\"0\",\"taggable\":\"0\"}', 24),
(100, 17, 'user_order_belongsto_user_relationship_1', 'relationship', 'Created By', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"created_by\",\"key\":\"id\",\"label\":\"code\",\"pivot_table\":\"cutting_type\",\"pivot\":\"0\",\"taggable\":\"0\"}', 25),
(101, 17, 'user_order_belongsto_user_relationship_2', 'relationship', 'Updated By', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"updated_by\",\"key\":\"id\",\"label\":\"code\",\"pivot_table\":\"cutting_type\",\"pivot\":\"0\",\"taggable\":\"0\"}', 26);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'App\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-01-28 08:28:48', '2021-02-01 06:01:22'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-01-28 08:28:48', '2021-01-28 08:28:48'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-01-28 08:28:48', '2021-01-28 08:28:48'),
(5, 'scrips', 'scrips', 'Scrip', 'Scrips', 'voyager-folder', 'App\\Models\\Scrip', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-01-28 09:06:19', '2021-01-29 06:24:24'),
(9, 'cutting_type', 'cutting-type', 'Cutting Type', 'Cutting Types', NULL, 'App\\Models\\CuttingType', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-01-29 04:58:07', '2021-01-29 04:58:07'),
(10, 'user_category', 'user-category', 'User Category', 'User Categories', NULL, 'App\\Models\\UserCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-01-29 05:46:11', '2021-01-29 05:46:11'),
(12, 'user_scrip_limit', 'user-scrip-limit', 'User Scrip Limit', 'User Scrip Limits', NULL, 'App\\Models\\UserScripLimit', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-01-29 07:06:01', '2021-01-29 07:12:17'),
(14, 'preferred_broker', 'preferred-broker', 'Preferred Broker', 'Preferred Brokers', 'voyager-folder', 'App\\Models\\PreferredBroker', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-01-29 07:17:00', '2021-02-01 05:42:05'),
(17, 'user_order', 'user-order', 'User Order', 'User Orders', NULL, 'App\\Models\\CustomerOrder', NULL, '\\App\\Http\\Controllers\\VoyagerCustomerOrderController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":\"id\",\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-02-01 06:15:17', '2021-02-01 06:44:06');

-- --------------------------------------------------------

--
-- Table structure for table `db_orders`
--

CREATE TABLE `db_orders` (
  `A/C CODE` varchar(4) DEFAULT NULL,
  `CATEGORY` varchar(4) DEFAULT NULL,
  `TYPE` varchar(6) DEFAULT NULL,
  `DEALER` varchar(8) DEFAULT NULL,
  `STRAIGHT` varchar(4) DEFAULT NULL,
  ` STRAIGHT %` varchar(4) DEFAULT NULL,
  `OPPOSITE` varchar(4) DEFAULT NULL,
  `OPP %` varchar(4) DEFAULT NULL,
  `CUTTING STATUS` varchar(13) DEFAULT NULL,
  `CUTTING %` varchar(4) DEFAULT NULL,
  `TRADE STATUS` varchar(7) DEFAULT NULL,
  `CLIENT TYPE` varchar(6) DEFAULT NULL,
  `BROKER 1` varchar(4) DEFAULT NULL,
  `BROKER 2` varchar(4) DEFAULT NULL,
  `SCP WISE LIMIT` varchar(2) DEFAULT NULL,
  `OVERALL LIMIT` varchar(4) DEFAULT NULL,
  `SCRIP` varchar(15) DEFAULT NULL,
  `LOT SIZE` int DEFAULT NULL,
  `NAME` varchar(16) DEFAULT NULL,
  `NUMBER` varchar(10) DEFAULT NULL,
  `BAN` varchar(10) DEFAULT NULL,
  `R` varchar(10) DEFAULT NULL,
  `REVERSE` varchar(4) DEFAULT NULL,
  `SCRIP_ALL` varchar(15) DEFAULT NULL,
  `SCRIP_NAME` varchar(10) DEFAULT NULL,
  `EXP` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_orders`
--

INSERT INTO `db_orders` (`A/C CODE`, `CATEGORY`, `TYPE`, `DEALER`, `STRAIGHT`, ` STRAIGHT %`, `OPPOSITE`, `OPP %`, `CUTTING STATUS`, `CUTTING %`, `TRADE STATUS`, `CLIENT TYPE`, `BROKER 1`, `BROKER 2`, `SCP WISE LIMIT`, `OVERALL LIMIT`, `SCRIP`, `LOT SIZE`, `NAME`, `NUMBER`, `BAN`, `R`, `REVERSE`, `SCRIP_ALL`, `SCRIP_NAME`, `EXP`) VALUES
('A005', 'X008', 'CLIENT', 'HARSHITA', '', '', '', '', 'NO CUTTING', '', 'BLOCKED', 'RETAIL', '', '', '', '2', 'ACCSEP2020', 500, 'AVISHA', '7678095070', 'BHEL', 'AMARAJABAT', 'B017', 'ACCOCT2020', 'ACC', 'OCT'),
('A009', 'X001', 'CLIENT', '', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'ADANIENSEP2020', 4000, '', '', 'CANBK', 'APOLLOHOSP', 'G005', 'ADANIENOCT2020', 'ADANIENT', 'OCT'),
('A019', 'X001', 'CLIENT', 'HARSHITA', '', '', 'V021', '10%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'ADANIPORSEP2020', 2500, 'DEEPESH', '9820256003', 'MINDTREE', 'BAJAJFINSV', 'G006', 'ADANIPOROCT2020', 'ADANIPORTS', 'OCT'),
('A022', 'X001', 'CLIENT', '', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'AMARAJASEP2020', 1000, '', '', 'PNB', 'BALKRISIND', 'H010', 'AMARAJAOCT2020', 'AMARAJABAT', 'OCT'),
('A023', 'X001', 'CLIENT', 'YUVRAJ', '', '', 'V021', '30%', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '150', 'AMBUJACSEP2020', 3000, 'SUNIT', '9820375603', 'NATIONALUM', 'BANDHANBNK', 'R027', 'AMBUJACOCT2020', 'AMBUJACEM', 'OCT'),
('A024', 'X001', 'CLIENT', '', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'APOLLOHSEP2020', 500, '', '', '', 'BERGEPAINT', 'R028', 'APOLLOHOCT2020', 'APOLLOHOSP', 'OCT'),
('A025', 'X001', 'CLIENT', 'BHAVESH', 'A006', '200%', '', '', '2x CUTTING', '200%', 'ACTIVE', 'HNI', '', '', '', '150', 'APOLLOTSEP2020', 5000, '', '', '', 'BOSCHLTD', 'V056', 'APOLLOTOCT2020', 'APOLLOTYRE', 'OCT'),
('A026', 'X001', 'CLIENT', 'YUVRAJ', '', '', 'V021', '59%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'ASHOKLESEP2020', 9000, 'ABHISHEK', '9820366616', '', 'BRITANNIA', 'R109', 'ASHOKLEOCT2020', 'ASHOKLEY', 'OCT'),
('A027', 'X001', 'CLIENT', '', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'ASIANPASEP2020', 300, '', '', '', 'CESC', 'R045', 'ASIANPAOCT2020', 'ASIANPAINT', 'OCT'),
('A032', 'X008', 'CLIENT', '', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'AUROPHASEP2020', 1300, 'KAMESH', '9967006044', '', 'CHOLAFIN', '', 'AUROPHAOCT2020', 'AUROPHARMA', 'OCT'),
('A033', 'X001', 'CLIENT', 'YUVRAJ', '', '', 'V021', '50%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'AXISBANSEP2020', 1200, '', '', '', 'CONCOR', '', 'AXISBANOCT2020', 'AXISBANK', 'OCT'),
('A034', 'X001', 'CLIENT', '', '', '', 'V021', '59%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'BAJAJ-ASEP2020', 250, 'ABHISHEK', '9820366616', '', 'CUMMINSIND', '', 'BAJAJ-AOCT2020', 'BAJAJ-AUTO', 'OCT'),
('A036', 'X001', 'CLIENT', '', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'BAJAJFISEP2020', 125, '', '', '', 'EICHERMOT', '', 'BAJAJFIOCT2020', 'BAJAJFINSV', 'OCT'),
('B017', 'X008', 'CLIENT', 'AMIT', 'A041', '100%', '', '', 'REVERSE 100%', '100%', 'ACTIVE', 'RETAIL', 'X081', '', '', '150', 'BAJFINASEP2020', 250, 'BHAVIN', '9833200287', '', 'FEDERALBNK', '', 'BAJFINAOCT2020', 'BAJFINANCE', 'OCT'),
('B024', 'X001', 'CLIENT', 'HARSHITA', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '150', 'BALKRISSEP2020', 800, 'BHAVIN', '', '', 'EQUITAS', '', 'BALKRISOCT2020', 'BALKRISIND', 'OCT'),
('B031', 'X001', 'CLIENT', 'BHAVESH', 'A006', '200%', '', '', '2x CUTTING', '200%', 'ACTIVE', 'HNI', 'X111', 'X068', '', '150', 'BANDHANSEP2020', 1800, '', '', '', 'GMRINFRA', '', 'BANDHANOCT2020', 'BANDHANBNK', 'OCT'),
('B035', 'X008', 'CLIENT', '', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'BANKBARSEP2020', 8200, 'VAIBHAV', '9819834482', '', 'GODREJCP', '', 'BANKNIFOCT2020', 'BANKNIFTY', 'OCT'),
('B036', 'X008', 'CLIENT', 'AMIT', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'HNI', 'X081', '', '', '150', 'BANKNIFSEP2020', 25, 'VAIBHAV', '9819834482', '', 'GODREJPROP', '', 'BANKBAROCT2020', 'BANKBARODA', 'OCT'),
('B037', 'X001', 'CLIENT', '', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'BATAINDSEP2020', 550, '', '', '', 'HDFCLIFE', '', 'BATAINDOCT2020', 'BATAINDIA', 'OCT'),
('B038', 'X001', 'CLIENT', '', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'BELSEP2020', 7600, '', '', '', 'IDEA', '', 'BELOCT2020', 'BEL', 'OCT'),
('B040', 'X001', 'CLIENT', '', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'BERGEPASEP2020', 1100, '', '', '', 'IDFCFIRSTB', '', 'BERGEPAOCT2020', 'BERGEPAINT', 'OCT'),
('B041', 'X008', 'CLIENT', '', '', '', 'V022', '50%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'BHARATFOSEP2020', 1500, '', '', '', 'MANAPPURAM', '', 'BHARATFOOCT2020', 'BHARATFORG', 'OCT'),
('B042', 'X008', 'CLIENT', '', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'BHARTIASEP2020', 1851, '', '', '', 'MARICO', '', 'BHARTIAOCT2020', 'BHARTIARTL', 'OCT'),
('B043', 'X001', 'CLIENT', 'AMIT', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '150', 'BHELSEP2020', 21000, '', '', '', 'MFSL', '', 'BHELOCT2020', 'BHEL', 'OCT'),
('B044', 'X001', 'CLIENT', '', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'BIOCONSEP2020', 2300, 'KARTIK', '9821560069', '', 'MGL', '', 'BIOCONOCT2020', 'BIOCON', 'OCT'),
('B045', 'X008', 'CLIENT', 'AMIT', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'BOSCHLTSEP2020', 50, '', '9820004930', '', 'MINDTREE', '', 'BOSCHLTOCT2020', 'BOSCHLTD', 'OCT'),
('B087', 'X001', 'CLIENT', '', 'A006', '100%', '', '', '1x CUTTING', '100%', 'ACTIVE', 'HNI', 'X111', 'X068', '', '150', 'BPCLSEP2020', 1800, 'PIYUSH SIR', '', '', 'MRF', '', 'BPCLOCT2020', 'BPCL', 'OCT'),
('B088', 'X008', 'CLIENT', 'AMIT', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '150', 'BRITANNSEP2020', 200, 'JIMESH', '8097763634', '', 'MUTHOOTFIN', '', 'BRITANNOCT2020', 'BRITANNIA', 'OCT'),
('B089', 'X001', 'CLIENT', '', '', '', '', '100%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'CADILAHSEP2020', 2200, '', '', '', 'NAUKRI', '', 'CADILAHOCT2020', 'CADILAHC', 'OCT'),
('C035', 'X008', 'CLIENT', '', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'CANBKSEP2020', 5000, '', '', '', 'NESTLEIND', '', 'CANBKOCT2020', 'CANBK', 'OCT'),
('C036', 'X008', 'CLIENT', '', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'CHOLAFISEP2020', 2500, '', '', '', 'NIITTECH', '', 'CHOLAFIOCT2020', 'CHOLAFIN', 'OCT'),
('D001', 'X008', 'CLIENT', 'JIMESH', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'CIPLASEP2020', 1300, '', '', '', 'PAGEIND', '', 'CIPLAOCT2020', 'CIPLA', 'OCT'),
('D005', 'X001', 'CLIENT', '', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'COALINDSEP2020', 3700, '', '', '', 'PEL', '', 'COALINDOCT2020', 'COALINDIA', 'OCT'),
('D012', 'X008', 'CLIENT', 'JIMESH', '', '', '', '', 'NO CUTTING', '', 'BLOCKED', 'RETAIL', '', '', '', '150', 'COLPALSEP2020', 700, '', '', '', 'PETRONET', '', 'COFORGEOCT2020', 'COFORGE', 'OCT'),
('D021', 'X008', 'CLIENT', 'JIMESH', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'CONCORSEP2020', 1563, '', '', '', 'PFC', '', 'COLPALOCT2020', 'COLPAL', 'OCT'),
('D022', 'X008', 'CLIENT', 'JIMESH', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'CUMMINSSEP2020', 1200, '', '', '', 'PIDILITIND', '', 'CONCOROCT2020', 'CONCOR', 'OCT'),
('E001', 'X008', 'CLIENT', '', '', '', 'V022', '55%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'DABURSEP2020', 1250, '', '', '', 'PVR', '', 'CUMMINSOCT2020', 'CUMMINSIND', 'OCT'),
('E002', 'X008', 'CLIENT', '', '', '', 'V022', '50%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'DIVISLASEP2020', 400, '', '', '', 'RAMCOCEM', '', 'DABUROCT2020', 'DABUR', 'OCT'),
('E003', 'X008', 'CLIENT', '', '', '', 'V022', '50%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'DLFSEP2020', 3300, '', '', '', 'RECLTD', '', 'DIVISLAOCT2020', 'DIVISLAB', 'OCT'),
('E004', 'X008', 'CLIENT', '', '', '', 'V022', '50%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'DRREDDYSEP2020', 250, '', '', '', 'SBILIFE', '', 'DLFOCT2020', 'DLF', 'OCT'),
('E005', 'X008', 'CLIENT', '', '', '', 'V022', '50%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'EICHERMSEP2020', 350, '', '', '', 'SHREECEM', '', 'DRREDDYOCT2020', 'DRREDDY', 'OCT'),
('E006', 'X001', 'CLIENT', '', '', '', 'V021', '55%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'ESCORTSSEP2020', 1100, '', '', '', 'SRF', '', 'EICHERMOCT2020', 'EICHERMOT', 'OCT'),
('E007', 'X001', 'CLIENT', '', '', '', 'V021', '50%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'EXIDEINSEP2020', 3600, '', '', '', 'TORNTPHARM', '', 'ESCORTSOCT2020', 'ESCORTS', 'OCT'),
('E008', 'X008', 'CLIENT', '', '', '', 'V022', '50%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'FEDERALSEP2020', 8500, '', '', '', 'TORNTPOWER', '', 'EXIDEINOCT2020', 'EXIDEIND', 'OCT'),
('E009', 'X008', 'CLIENT', '', '', '', 'V022', '50%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'GAILSEP2020', 6100, '', '', '', 'MRF', '', 'FEDERALOCT2020', 'FEDERALBNK', 'OCT'),
('G005', 'X008', 'CLIENT', 'AMIT', 'A041', '20%', '', '', 'REVERSE 20%', '20%', 'ACTIVE', 'HNI', 'X081', '', '', '150', 'GLENMARSEP2020', 2300, 'GAURAV', '9820077988', '', 'SHREECEM', '', 'GAILOCT2020', 'GAIL', 'OCT'),
('G006', 'X008', 'CLIENT', 'AMIT', 'A041', '20%', '', '', 'REVERSE 20%', '20%', 'ACTIVE', 'HNI', 'X081', '', '', '150', 'GMRINFRSEP2020', 45000, 'MEETA', '7738335435', '', 'PAGEIND', '', 'GLENMAROCT2020', 'GLENMARK', 'OCT'),
('G007', 'X008', 'CLIENT', 'AMIT', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '150', 'GODREJCSEP2020', 1000, '', '', '', 'NESTLEIND', '', 'GMRINFROCT2020', 'GMRINFRA', 'OCT'),
('H001', 'X001', 'CLIENT', 'BHAVESH', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'GODREJPSEP2020', 650, '', '', '', 'BOSCHLTD', '', 'GODREJCOCT2020', 'GODREJCP', 'OCT'),
('H007', 'X001', 'CLIENT', 'BHAVESH', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'GRASIMSEP2020', 950, '', '', '', '', '', 'GODREJPOCT2020', 'GODREJPROP', 'OCT'),
('H010', 'X008', 'CLIENT', '', 'A041', '20%', 'V022', '10%', 'REVERSE 20%', '20%', 'ACTIVE', 'RETAIL', 'X081', '', '', '150', 'HAVELLSSEP2020', 1000, '', '', '', '', '', 'GRASIMOCT2020', 'GRASIM', 'OCT'),
('H011', 'X008', 'CLIENT', 'BHAVESH', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '150', 'HCLTECHSEP2020', 1400, '', '', '', '', '', 'HAVELLSOCT2020', 'HAVELLS', 'OCT'),
('H012', 'X008', 'CLIENT', '', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'HDFCSEP2020', 300, '', '', '', '', '', 'HCLTECHOCT2020', 'HCLTECH', 'OCT'),
('H015', 'X008', 'CLIENT', '', '', '', 'V022', '15%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'HDFCBANSEP2020', 550, '', '', '', '', '', 'HDFCBANOCT2020', 'HDFCBANK', 'OCT'),
('H017', 'X008', 'CLIENT', '', '', '', 'V022', '10%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'HDFCLIFSEP2020', 1100, '', '', '', '', '', 'HDFCLIFOCT2020', 'HDFCLIFE', 'OCT'),
('H019', 'X001', 'CLIENT', 'HARSHITA', '', '', 'V021', '15%', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '150', 'HEROMOTSEP2020', 300, '', '', '', '', '', 'HDFCOCT2020', 'HDFC', 'OCT'),
('H020', 'X008', 'CLIENT', 'BHAVESH', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '150', 'HINDALCSEP2020', 4300, '', '', '', '', '', 'HEROMOTOCT2020', 'HEROMOTOCO', 'OCT'),
('H021', 'X008', 'CLIENT', 'BHAVESH', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'HINDPETSEP2020', 2700, '', '', '', '', '', 'HINDALCOCT2020', 'HINDALCO', 'OCT'),
('H022', 'X008', 'CLIENT', 'HARSHITA', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '150', 'HINDUNISEP2020', 300, '', '', '', '', '', 'HINDPETOCT2020', 'HINDPETRO', 'OCT'),
('H032', 'X005', 'CLIENT', '', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'IBULHSGSEP2020', 3100, '', '', '', '', '', 'HINDUNIOCT2020', 'HINDUNILVR', 'OCT'),
('B021', 'X008', 'CLIENT', 'JIMESH', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'ICICIBASEP2020', 1375, '', '', '', '', '', 'IBULHSGOCT2020', 'IBULHSGFIN', 'OCT'),
('J008', 'X008', 'CLIENT', '', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'ICICIPRSEP2020', 1500, '', '', '', '', '', 'ICICIBAOCT2020', 'ICICIBANK', 'OCT'),
('K008', 'X008', 'CLIENT', 'BHAVESH', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'IDEASEP2020', 140000, '', '', '', '', '', 'ICICIPROCT2020', 'ICICIPRULI', 'OCT'),
('K014', 'X008', 'CLIENT', '', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'IDFCFIRSEP2020', 19000, '', '', '', '', '', 'IDEAOCT2020', 'IDEA', 'OCT'),
('K017', 'X001', 'CLIENT', '', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'IGLSEP2020', 1375, '', '', '', '', '', 'IDFCFIROCT2020', 'IDFCFIRSTB', 'OCT'),
('L002', 'X008', 'CLIENT', '', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'INDIGOSEP2020', 500, '', '', '', '', '', 'IGLOCT2020', 'IGL', 'OCT'),
('M003', 'X001', 'CLIENT', 'BHAVESH', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'INDUSINSEP2020', 800, '', '', '', '', '', 'INDIGOOCT2020', 'INDIGO', 'OCT'),
('M016', 'X001', 'CLIENT', '', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'INFRATESEP2020', 2800, '', '', '', '', '', 'INDUSINOCT2020', 'INDUSINDBK', 'OCT'),
('M020', 'X001', 'CLIENT', '', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'INFYSEP2020', 1200, '', '', '', '', '', 'INFRATEOCT2020', 'INFRATEL', 'OCT'),
('M021', 'X001', 'CLIENT', '', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'IOCSEP2020', 5700, '', '', '', '', '', 'INFYOCT2020', 'INFY', 'OCT'),
('M022', 'X001', 'CLIENT', '', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'ITCSEP2020', 3200, '', '', '', '', '', 'IOCOCT2020', 'IOC', 'OCT'),
('M023', 'X001', 'CLIENT', 'YUVRAJ', 'A006', '100%', '', '', '1x CUTTING', '100%', 'ACTIVE', 'HNI', 'X111', 'X068', '', '150', 'JINDALSSEP2020', 5000, '', '', '', '', '', 'ITCOCT2020', 'ITC', 'OCT'),
('N027', 'X001', 'CLIENT', 'HARSHITA', 'A006', '100%', '', '', '1x CUTTING', '100%', 'ACTIVE', 'HNI', 'X111', 'X068', '', '500', 'JSWSTEESEP2020', 2700, '', '', '', '', '', 'JINDALSOCT2020', 'JINDALSTEL', 'OCT'),
('N028', 'X008', 'CLIENT', 'JIMESH', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'JUBLFOOSEP2020', 500, '', '', '', '', '', 'JSWSTEEOCT2020', 'JSWSTEEL', 'OCT'),
('N029', 'X001', 'CLIENT', '', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'KOTAKBASEP2020', 400, '', '', '', '', '', 'JUBLFOOOCT2020', 'JUBLFOOD', 'OCT'),
('N031', 'X001', 'CLIENT', '', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'L&TFHSEP2020', 6800, '', '', '', '', '', 'KOTAKBAOCT2020', 'KOTAKBANK', 'OCT'),
('N038', 'X008', 'CLIENT', 'JIMESH', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'LICHSGFSEP2020', 2000, '', '', '', '', '', 'L&TFHOCT2020', 'L&TFH', 'OCT'),
('P006', 'X008', 'CLIENT', '', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'LTSEP2020', 550, '', '', '', '', '', 'LICHSGFOCT2020', 'LICHSGFIN', 'OCT'),
('P007', 'X008', 'CLIENT', '', '', '', 'V022', '10%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'LUPINSEP2020', 850, '', '', '', '', '', 'LTOCT2020', 'LT', 'OCT'),
('P008', 'X008', 'CLIENT', '', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'M&MSEP2020', 1400, '', '', '', '', '', 'LUPINOCT2020', 'LUPIN', 'OCT'),
('P009', 'X001', 'CLIENT', 'YUVRAJ', 'A006', '125%', '', '', '1.25x CUTTING', '125%', 'ACTIVE', 'HNI', 'X068', 'X111', '', '150', 'M&MFINSEP2020', 3444, '', '', '', '', '', 'M&MOCT2020', 'M&M', 'OCT'),
('P010', 'X001', 'CLIENT', 'YUVRAJ', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'MANAPPUSEP2020', 6000, '', '', '', '', '', 'M&MFINOCT2020', 'M&MFIN', 'OCT'),
('P013', 'X008', 'CLIENT', '', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'MARICOSEP2020', 2000, '', '', '', '', '', 'MANAPPUOCT2020', 'MANAPPURAM', 'OCT'),
('P019', 'X001', 'CLIENT', 'YUVRAJ', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '150', 'MARUTISEP2020', 100, '', '', '', '', '', 'MARUTIOCT2020', 'MARUTI', 'OCT'),
('P023', 'X008', 'CLIENT', 'AMIT', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '150', 'MCDOWELSEP2020', 1250, '', '', '', '', '', 'MARICOOCT2020', 'MARICO', 'OCT'),
('P026', 'X008', 'CLIENT', '', '', '', 'V022', '30%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'MFSLSEP2020', 1300, '', '', '', '', '', 'MCDOWELOCT2020', 'MCDOWELL-N', 'OCT'),
('P031', 'X001', 'CLIENT', 'YUVRAJ', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'MGLSEP2020', 600, '', '', '', '', '', 'MFSLOCT2020', 'MFSL', 'OCT'),
('P032', 'X001', 'CLIENT', 'YUVRAJ', '', '', 'V021', '40%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'MINDTRESEP2020', 800, '', '', '', '', '', 'MGLOCT2020', 'MGL', 'OCT'),
('P034', 'X001', 'CLIENT', 'YUVRAJ', '', '', 'V021', '10%', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '150', 'MOTHERSSEP2020', 7000, '', '', '', '', '', 'MINDTREOCT2020', 'MINDTREE', 'OCT'),
('P035', 'X001', 'CLIENT', '', '', '', 'V021', '10%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'MRFSEP2020', 10, '', '', '', '', '', 'MOTHERSOCT2020', 'MOTHERSUMI', 'OCT'),
('P036', 'X001', 'CLIENT', '', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'MUTHOOTSEP2020', 750, '', '', '', '', '', 'MRFOCT2020', 'MRF', 'OCT'),
('P037', 'X008', 'CLIENT', 'AMIT', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '150', 'NATIONASEP2020', 17000, 'PURSHOTTAM', '9320987350', '', '', '', 'MUTHOOTOCT2020', 'MUTHOOTFIN', 'OCT'),
('P042', 'X001', 'CLIENT', '', '', '', 'V021', '40%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'NAUKRISEP2020', 250, '', '', '', '', '', 'NATIONAOCT2020', 'NATIONALUM', 'OCT'),
('P043', 'X001', 'CLIENT', 'YUVRAJ', '', '', 'V021', '40%', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '150', 'NESTLEISEP2020', 50, '', '9970302674', '', '', '', 'NAUKRIOCT2020', 'NAUKRI', 'OCT'),
('P045', 'X008', 'CLIENT', 'AMIT', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'NIFTYSEP2020', 75, 'RAUNAK', '9930335715', '', '', '', 'NESTLEIOCT2020', 'NESTLEIND', 'OCT'),
('R020', 'X001', 'CLIENT', '', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'COFORGESEP2020', 375, '', '', '', '', '', 'NIFTYOCT2020', 'NIFTY', 'OCT'),
('R022', 'X001', 'CLIENT', '', '', '', 'V021', '58%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'NMDCSEP2020', 6700, '', '', '', '', '', 'NMDCOCT2020', 'NMDC', 'OCT'),
('R023', 'X008', 'CLIENT', 'JIMESH', '', '', 'V022', '67%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'NTPCSEP2020', 5700, 'RAJ SIR', '9819930835', '', '', '', 'NTPCOCT2020', 'NTPC', 'OCT'),
('R024', 'X008', 'CLIENT', 'HARSHITA', '', '', 'V022', '59%', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '150', 'ONGCSEP2020', 7700, '', '', '', '', '', 'ONGCOCT2020', 'ONGC', 'OCT'),
('R026', 'X008', 'CLIENT', 'JIMESH', '', '', 'V022', '67%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'PAGEINDSEP2020', 30, 'UMANG', '7738330210', '', '', '', 'PAGEINDOCT2020', 'PAGEIND', 'OCT'),
('R027', 'X008', 'CLIENT', 'JIMESH', 'A041', '', 'V022', '67%', 'REVERSE 20%', '20%', 'BLOCKED', 'RETAIL', 'X081', '', '', '150', 'PELSEP2020', 550, 'HEMAL', '9820360362', '', '', '', 'PELOCT2020', 'PEL', 'OCT'),
('R028', 'X008', 'CLIENT', 'BHAVESH', 'A041', '100%', '', '', 'REVERSE 100%', '100%', 'ACTIVE', 'RETAIL', 'X081', '', '', '150', 'PETRONESEP2020', 3000, '', '', '', '', '', 'PETRONEOCT2020', 'PETRONET', 'OCT'),
('R029', 'X008', 'CLIENT', '', '', '', 'V022', '67%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'PFCSEP2020', 6200, '', '', '', '', '', 'PFCOCT2020', 'PFC', 'OCT'),
('R030', 'X001', 'CLIENT', '', '', '', 'V021', '50%', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '150', 'PIDILITSEP2020', 500, '', '', '', '', '', 'PIDILITOCT2020', 'PIDILITIND', 'OCT'),
('R031', 'X008', 'CLIENT', '', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'PNBSEP2020', 14000, '', '', '', '', '', 'PNBOCT2020', 'PNB', 'OCT'),
('R032', 'X008', 'CLIENT', 'AMIT', '', '', 'V022', '76%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'POWERGRSEP2020', 4000, 'RATANLAL', '9448366040', '', '', '', 'POWERGROCT2020', 'POWERGRID', 'OCT'),
('R033', 'X008', 'CLIENT', 'JIMESH', '', '', 'V022', '78%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'PVRSEP2020', 407, '', '', '', '', '', 'PVROCT2020', 'PVR', 'OCT'),
('R034', 'X008', 'CLIENT', 'AMIT', '', '', 'V022', '78%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'RAMCOCESEP2020', 850, '', '9414120986', '', '', '', 'RAMCOCEOCT2020', 'RAMCOCEM', 'OCT'),
('R035', 'X008', 'CLIENT', 'JIMESH', '', '', 'V022', '78%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'RBLBANKSEP2020', 2600, 'RAMESH', '9460818158', '', '', '', 'RBLBANKOCT2020', 'RBLBANK', 'OCT'),
('R036', 'X008', 'CLIENT', 'AMIT', '', '', 'V022', '76%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'RECLTDSEP2020', 6000, '', '9414325694', '', '', '', 'RELIANCOCT2020', 'RELIANCE', 'OCT'),
('R040', 'X008', 'CLIENT', 'AMIT', '', '', 'V022', '50%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'RELIANCSEP2020', 505, '', '8657339551', '', '', '', 'RECLTDOCT2020', 'RECLTD', 'OCT'),
('R100', 'X008', 'CLIENT', 'JIMESH', '', '', 'V022', '67%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'SAILSEP2020', 19000, '', '', '', '', '', 'SAILOCT2020', 'SAIL', 'OCT'),
('R101', 'X008', 'CLIENT', 'AMIT', '', '', 'V022', '67%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'SBILIFESEP2020', 750, '', '', '', '', '', 'SBINOCT2020', 'SBIN', 'OCT'),
('R102', 'X008', 'CLIENT', 'JIMESH', '', '', 'V022', '67%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'SBINSEP2020', 3000, '', '7786975786', '', '', '', 'SBILIFEOCT2020', 'SBILIFE', 'OCT'),
('R104', 'X008', 'CLIENT', 'AMIT', '', '', 'V022', '67%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'SHREECESEP2020', 50, '', '', '', '', '', 'SHREECEOCT2020', 'SHREECEM', 'OCT'),
('R105', 'X008', 'CLIENT', 'JIMESH', '', '', 'V022', '67%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'SIEMENSSEP2020', 550, '', '9821821535', '', '', '', 'SIEMENSOCT2020', 'SIEMENS', 'OCT'),
('R106', 'X008', 'CLIENT', 'AMIT', '', '', 'V022', '67%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'SRFSEP2020', 250, '', '9819814773', '', '', '', 'SRFOCT2020', 'SRF', 'OCT'),
('R107', 'X008', 'CLIENT', 'JIMESH', '', '', 'V022', '67%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'SRTRANSSEP2020', 667, '', '9920365367', '', '', '', 'SRTRANSOCT2020', 'SRTRANSFIN', 'OCT'),
('S006', 'X008', 'CLIENT', 'JIMESH', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'SUNPHARSEP2020', 1400, '', '', '', '', '', 'SUNPHAROCT2020', 'SUNPHARMA', 'OCT'),
('S008', 'X001', 'CLIENT', 'BHAVESH', 'A006', '200%', '', '', '2x CUTTING', '200%', 'ACTIVE', 'HNI', 'X092', '', '', '500', 'SUNTVSEP2020', 1500, '', '', '', '', '', 'SUNTVOCT2020', 'SUNTV', 'OCT'),
('S009', 'X001', 'CLIENT', 'YUVRAJ', 'A006', '100%', '', '', '1x CUTTING', '100%', 'ACTIVE', 'HNI', 'X068', 'X111', '', '500', 'TATACHESEP2020', 2000, '', '', '', '', '', 'TATACHEOCT2020', 'TATACHEM', 'OCT'),
('S011', 'X001', 'CLIENT', 'HARSHITA', '', '', 'V021', '20%', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '150', 'TATACONSEP2020', 2700, 'paras', '', '', '', '', 'TATACONOCT2020', 'TATACONSUM', 'OCT'),
('S012', 'X001', 'CLIENT', 'HARSHITA', '', '', 'V021', '20%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'TATAMOTSEP2020', 5700, 'rushabh', '', '', '', '', 'TATAMOTOCT2020', 'TATAMOTORS', 'OCT'),
('S013', 'X001', 'CLIENT', 'HARSHITA', '', '', 'V021', '20%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'TATAPOWSEP2020', 13500, '', '', '', '', '', 'TATAPOWOCT2020', 'TATAPOWER', 'OCT'),
('S014', 'X001', 'CLIENT', 'HARSHITA', '', '', 'V021', '20%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'TATASTESEP2020', 1700, 'pankaj', '', '', '', '', 'TATASTEOCT2020', 'TATASTEEL', 'OCT'),
('S015', 'X001', 'CLIENT', 'HARSHITA', '', '', 'V021', '20%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'TCSSEP2020', 300, '', '', '', '', '', 'TCSOCT2020', 'TCS', 'OCT'),
('S016', 'X001', 'CLIENT', 'HARSHITA', '', '', 'V021', '20%', 'NO CUTTING', '', 'BLOCKED', 'HNI', '', '', '', '150', 'TECHMSEP2020', 1200, '', '', '', '', '', 'TECHMOCT2020', 'TECHM', 'OCT'),
('S018', 'X001', 'CLIENT', 'HARSHITA', '', '', 'V021', '50%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'TITANSEP2020', 750, '', '', '', '', '', 'TITANOCT2020', 'TITAN', 'OCT'),
('S019', 'X001', 'CLIENT', 'HARSHITA', '', '', 'V021', '20%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'TORNTPHSEP2020', 500, 'infy', '', '', '', '', 'TORNTPHOCT2020', 'TORNTPHARM', 'OCT'),
('S027', 'X001', 'CLIENT', 'HARSHITA', '', '', 'V021', '20%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'TORNTPOSEP2020', 3000, '', '', '', '', '', 'TORNTPOOCT2020', 'TORNTPOWER', 'OCT'),
('S028', 'X001', 'CLIENT', 'HARSHITA', '', '', 'V021', '20%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'TVSMOTOSEP2020', 1400, '', '', '', '', '', 'TVSMOTOOCT2020', 'TVSMOTOR', 'OCT'),
('S029', 'X001', 'CLIENT', 'HARSHITA', '', '', 'V021', '20%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'UBLSEP2020', 700, '', '', '', '', '', 'UBLOCT2020', 'UBL', 'OCT'),
('S030', 'X001', 'CLIENT', 'HARSHITA', 'A006', '125%', '', '', '1.25x CUTTING', '125%', 'ACTIVE', 'HNI', 'X111', 'X068', '', '150', 'ULTRACESEP2020', 200, '', '', '', '', '', 'ULTRACEOCT2020', 'ULTRACEMCO', 'OCT'),
('S031', 'X001', 'CLIENT', 'HARSHITA', '', '', 'V021', '20%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'UPLSEP2020', 1300, '', '', '', '', '', 'UPLOCT2020', 'UPL', 'OCT'),
('V005', 'X008', 'CLIENT', '', '', '', 'V022', '30%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'VEDLSEP2020', 6200, '', '', '', '', '', 'VEDLOCT2020', 'VEDL', 'OCT'),
('V007', 'X008', 'CLIENT', 'YUVRAJ', '', '', 'V022', '30%', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '150', 'VOLTASSEP2020', 1000, 'VISHAL', '7021710658', '', '', '', 'VOLTASOCT2020', 'VOLTAS', 'OCT'),
('V008', 'X008', 'CLIENT', '', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'WIPROSEP2020', 3200, '', '', '', '', '', 'WIPROOCT2020', 'WIPRO', 'OCT'),
('V013', 'X008', 'CLIENT', '', '', '', 'V022', '10%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'ZEELSEP2020', 3000, '', '', '', '', '', 'ZEELOCT2020', 'ZEEL', 'OCT'),
('V015', 'X008', 'CLIENT', '', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'ACCOCT2020', 500, '', '', '', '', '', '', '', ''),
('V016', 'X008', 'CLIENT', '', '', '', 'V022', '10%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'ADANIENOCT2020', 4000, '', '', '', '', '', '', '', ''),
('V017', 'X001', 'CLIENT', '', '', '', 'V021', '25%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'ADANIPOROCT2020', 2500, '', '', '', '', '', '', '', ''),
('V018', 'X001', 'CLIENT', 'HARSHITA', '', '', 'V021', '45%', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '150', 'AMARAJAOCT2020', 1000, '', '', '', '', '', '', '', ''),
('V019', 'X001', 'CLIENT', 'HARSHITA', '', '', 'V021', '15%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'AMBUJACOCT2020', 3000, '', '', '', '', '', '', '', ''),
('V020', 'X008', 'CLIENT', 'YUVRAJ', '', '', 'V022', '30%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'APOLLOHOCT2020', 500, '', '', '', '', '', '', '', ''),
('V021', 'X001', 'CLIENT', '', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '150', 'APOLLOTOCT2020', 5000, '', '', '', '', '', '', '', ''),
('V022', 'X008', 'CLIENT', '', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '150', 'ASHOKLEOCT2020', 9000, '', '', '', '', '', '', '', ''),
('V023', 'X008', 'CLIENT', '', '', '', 'V022', '30%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'ASIANPAOCT2020', 300, '', '', '', '', '', '', '', ''),
('V028', 'X008', 'CLIENT', '', '', '', 'V022', '19%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'AUROPHAOCT2020', 1300, '', '', '', '', '', '', '', ''),
('V029', 'X001', 'CLIENT', '', '', '', 'V021', '10%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'AXISBANOCT2020', 1200, '', '', '', '', '', '', '', ''),
('V030', 'X001', 'CLIENT', '', '', '', 'V021', '72%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'BAJAJ-AOCT2020', 250, '', '', '', '', '', '', '', ''),
('V031', 'X008', 'CLIENT', '', '', '', 'V022', '50%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'BAJAJFIOCT2020', 125, '', '', '', '', '', '', '', ''),
('V032', 'X001', 'CLIENT', '', '', '', 'V021', '10%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'BAJFINAOCT2020', 250, '', '', '', '', '', '', '', ''),
('V033', 'X008', 'CLIENT', 'YUVRAJ', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'BALKRISOCT2020', 800, '', '9819988965', '', '', '', '', '', ''),
('V034', 'X001', 'CLIENT', '', '', '', 'V021', '15%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'BANDHANOCT2020', 1800, '', '', '', '', '', '', '', ''),
('V035', 'X008', 'CLIENT', '', '', '', 'V022', '15%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'BANKBAROCT2020', 8200, '', '', '', '', '', '', '', ''),
('V036', 'X001', 'CLIENT', '', '', '', 'V021', '25%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'BANKNIFOCT2020', 25, '', '', '', '', '', '', '', ''),
('V037', 'X008', 'CLIENT', '', '', '', 'V022', '15%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'BATAINDOCT2020', 550, '', '', '', '', '', '', '', ''),
('V038', 'X001', 'CLIENT', '', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'BELOCT2020', 7600, '', '', '', '', '', '', '', ''),
('V040', 'X001', 'CLIENT', '', '', '', 'V021', '25%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'BERGEPAOCT2020', 1100, '', '', '', '', '', '', '', ''),
('V041', 'X001', 'CLIENT', 'YUVRAJ', '', '', 'V021', '15%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'BHARATFOOCT2020', 1500, '', '', '', '', '', '', '', ''),
('V044', 'X008', 'CLIENT', 'YUVRAJ', '', '', 'V021', '40%', 'NO CUTTING', '', 'BLOCKED', 'RETAIL', '', '', '', '150', 'BHARTIAOCT2020', 1851, '', '', '', '', '', '', '', ''),
('V046', 'X001', 'CLIENT', '', '', '', 'V021', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'BHELOCT2020', 21000, '', '', '', '', '', '', '', ''),
('V051', 'X008', 'CLIENT', 'JIMESH', '', '', 'V022', '40%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'BIOCONOCT2020', 2300, '', '', '', '', '', '', '', ''),
('V052', 'X008', 'CLIENT', 'JIMESH', '', '', 'V022', '40%', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '150', 'BOSCHLTOCT2020', 50, '', '7977052299', '', '', '', '', '', ''),
('V054', 'X008', 'CLIENT', 'JIMESH', '', '', 'V022', '77%', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '150', 'BPCLOCT2020', 1800, 'NILESH', '9892181775', '', '', '', '', '', ''),
('V055', 'X008', 'CLIENT', 'AMIT', '', '', 'V022', '40%', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '150', 'BRITANNOCT2020', 200, '', '9136634444', '', '', '', '', '', ''),
('V056', 'X008', 'CLIENT', 'AMIT', 'A041', '', 'V022', '77%', 'REVERSE 100%', '100%', 'ACTIVE', 'HNI', 'X081', '', '', '150', 'CADILAHOCT2020', 2200, '', '', '', '', '', '', '', ''),
('V057', 'X008', 'CLIENT', 'AMIT', '', '', 'V022', '77%', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '150', 'CANBKOCT2020', 5000, '', '', '', '', '', '', '', ''),
('V061', 'X008', 'CLIENT', 'AMIT', '', '', 'V022', '40%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'CHOLAFIOCT2020', 2500, '', '', '', '', '', '', '', ''),
('X001', 'X001', 'BROKER', '', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '1000', 'CIPLAOCT2020', 1300, '', '', '', '', '', '', '', ''),
('X008', 'X008', 'BROKER', '', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '1000', 'COALINDOCT2020', 3700, '', '', '', '', '', '', '', ''),
('X026', 'X001', 'BROKER', '', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '1000', 'COLPALOCT2020', 700, '', '', '', '', '', '', '', ''),
('X049', 'X001', 'BROKER', 'BHAVESH', 'X101', '100%', '', '', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '1000', 'CONCOROCT2020', 1563, '', '', '', '', '', '', '', ''),
('X053', 'X001', 'BROKER', 'BHAVESH', 'X101', '100%', '', '', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '1000', 'CUMMINSOCT2020', 1200, '', '', '', '', '', '', '', ''),
('X057', 'X001', 'BROKER', 'BHAVESH', 'X101', '100%', '', '', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '1000', 'DABUROCT2020', 1250, '', '', '', '', '', '', '', ''),
('X058', 'X001', 'BROKER', 'BHAVESH', 'X101', '100%', '', '', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '1000', 'DIVISLAOCT2020', 400, '', '', '', '', '', '', '', ''),
('X059', 'X001', 'BROKER', 'VANDANA', 'X101', '100%', '', '', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '1000', 'DLFOCT2020', 3300, '', '', '', '', '', '', '', ''),
('X060', 'X001', 'BROKER', 'BHAVESH', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '1000', 'DRREDDYOCT2020', 250, '', '', '', '', '', '', '', ''),
('X066', 'X001', 'BROKER', 'BHAVESH', 'X101', '100%', '', '', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '1000', 'EICHERMOCT2020', 350, '', '', '', '', '', '', '', ''),
('X068', 'X001', 'BROKER', 'BHAVESH', 'X101', '100%', '', '', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '1000', 'ESCORTSOCT2020', 1100, '', '', '', '', '', '', '', ''),
('X078', 'X001', 'BROKER', 'BHAVESH', 'X101', '100%', '', '', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '1000', 'EXIDEINOCT2020', 3600, '', '', '', '', '', '', '', ''),
('X080', 'X001', 'BROKER', 'VANDANA', 'X101', '100%', '', '', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '1000', 'FEDERALOCT2020', 8500, '', '', '', '', '', '', '', ''),
('X083', 'X001', 'BROKER', 'BHAVESH', 'X101', '100%', '', '', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '1000', 'GAILOCT2020', 6100, '', '', '', '', '', '', '', ''),
('X084', 'X001', 'BROKER', 'VANDANA', 'X101', '100%', '', '', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '1000', 'GLENMAROCT2020', 2300, '', '', '', '', '', '', '', ''),
('X088', 'X001', 'BROKER', 'HARSHITA', 'X101', '100%', '', '', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '1000', 'GMRINFROCT2020', 45000, '', '', '', '', '', '', '', ''),
('X089', 'X001', 'BROKER', 'BHAVESH', 'X101', '100%', '', '', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '1000', 'GODREJCOCT2020', 1000, '', '', '', '', '', '', '', ''),
('X093', 'X001', 'BROKER', 'BHAVESH', 'X101', '100%', '', '', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '1000', 'GODREJPOCT2020', 650, '', '', '', '', '', '', '', ''),
('X094', 'X001', 'BROKER', 'BHAVESH', 'X101', '100%', '', '', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '1000', 'GRASIMOCT2020', 950, '', '', '', '', '', '', '', ''),
('X095', 'X001', 'BROKER', 'BHAVESH', 'X101', '100%', '', '', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '1000', 'HAVELLSOCT2020', 1000, '', '', '', '', '', '', '', ''),
('X096', 'X001', 'BROKER', 'BHAVESH', 'X101', '100%', '', '', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '1000', 'HCLTECHOCT2020', 1400, '', '', '', '', '', '', '', ''),
('X097', 'X001', 'BROKER', 'BHAVESH', 'X101', '100%', '', '', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '1000', 'HDFCOCT2020', 300, '', '', '', '', '', '', '', ''),
('X098', 'X001', 'BROKER', 'HARSHITA', 'X101', '100%', '', '', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '1000', 'HDFCBANOCT2020', 550, '', '', '', '', '', '', '', ''),
('X090', 'X001', 'BROKER', 'BHAVESH', 'X101', '100%', '', '', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '1000', 'HDFCLIFOCT2020', 1100, '', '', '', '', '', '', '', ''),
('X100', 'X001', 'BROKER', 'BHAVESH', 'X101', '100%', '', '', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '1000', 'HEROMOTOCT2020', 300, '', '', '', '', '', '', '', ''),
('X108', 'X001', 'BROKER', 'BHAVESH', 'X101', '100%', '', '', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '1000', 'HINDALCOCT2020', 4300, '', '', '', '', '', '', '', ''),
('Y063', 'X001', 'CLIENT', 'YUVRAJ', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'HINDPETOCT2020', 2700, '', '', '', '', '', '', '', ''),
('Z001', 'X008', 'CLIENT', 'YUVRAJ', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'HINDUNIOCT2020', 300, '', '', '', '', '', '', '', ''),
('R044', 'X001', 'CLIENT', 'HARSHITA', '', '', '', '', '', '', 'ACTIVE', 'HNI', '', '', '', '150', 'IBULHSGOCT2020', 3100, '', '', '', '', '', '', '', ''),
('R109', 'X008', 'CLIENT', 'AMIT', 'A041', '', 'V022', '67%', 'REVERSE 20%', '20%', 'BLOCKED', 'RETAIL', 'X081', '', '', '150', 'ICICIBAOCT2020', 1375, '', '', '', '', '', '', '', ''),
('X109', 'X001', 'BROKER', 'BHAVESH', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '10', '1000', 'ICICIPROCT2020', 1500, '', '', '', '', '', '', '', ''),
('G008', 'X008', 'CLIENT', 'JIMESH', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'IDEAOCT2020', 140000, '', '', '', '', '', '', '', ''),
('A040', 'X008', 'CLIENT', 'JIMESH', '', '', 'V022', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'IDFCFIROCT2020', 19000, 'RK', '7350094444', '', '', '', '', '', ''),
('B022', 'X008', 'CLIENT', 'JIMESH', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', 'X081', '', '', '150', 'IGLOCT2020', 1375, 'DEEPAK', '8169235377', '', '', '', '', '', ''),
('P033', 'X008', 'CLIENT', 'BHAVESH', '', '', 'V022', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'INDIGOOCT2020', 500, '', '', '', '', '', '', '', ''),
('A039', 'X001', 'CLIENT', 'YUVRAJ', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'INDUSINOCT2020', 800, '', '', '', '', '', '', '', ''),
('P048', 'X008', 'CLIENT', 'YUVRAJ', '', '', '', '', 'NO CUTTING', '', 'BLOCKED', 'RETAIL', '', '', '', '150', 'INFRATEOCT2020', 2800, '', '', '', '', '', '', '', ''),
('A006', 'X005', 'CLIENT', 'BHAVESH', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'INFYOCT2020', 1200, '', '', '', '', '', '', '', ''),
('X101', 'X005', 'BROKER', 'BHAVESH', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '1000', 'IOCOCT2020', 5700, '', '', '', '', '', '', '', ''),
('P047', 'X008', 'CLIENT', 'JIMESH', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'ITCOCT2020', 3200, '', '', '', '', '', '', '', ''),
('R043', 'X001', 'CLIENT', 'BHAVESH', '', '', '', '75%', 'NO CUTTING', '', 'BLOCKED', 'RETAIL', '', '', '5', '150', 'JINDALSOCT2020', 5000, '', '', '', '', '', '', '', ''),
('V062', 'X008', 'CLIENT', 'JIMESH', '', '', 'V022', '60%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'JSWSTEEOCT2020', 2700, '', '', '', '', '', '', '', ''),
('P049', 'X008', 'CLIENT', 'JIMESH', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'JUBLFOOOCT2020', 500, '', '', '', '', '', '', '', ''),
('R110', 'X008', 'CLIENT', 'AMIT', '', '', 'V022', '50%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'KOTAKBAOCT2020', 400, 'RISHI (Ref-R023)', '', '', '', '', '', '', ''),
('R045', 'X008', 'CLIENT', 'AMIT', 'A041', '', 'V022', '0%', 'REVERSE 20%', '20%', 'ACTIVE', 'RETAIL', 'X081', '', '', '150', 'L&TFHOCT2020', 6800, 'JAYESH', '9821054800', '', '', '', '', '', ''),
('X050', 'X001', 'BROKER', 'VANDANA', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '1000', 'LICHSGFOCT2020', 2000, '', '', '', '', '', '', '', ''),
('V064', 'X008', 'CLIENT', 'AMIT', '', '', '', '40%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'LTOCT2020', 550, '', '', '', '', '', '', '', ''),
('V065', 'X008', 'CLIENT', 'AMIT', '', '', '', '83%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'LUPINOCT2020', 850, '', '', '', '', '', '', '', ''),
('X005', 'X005', '', '', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '1000', 'M&MOCT2020', 1400, '', '', '', '', '', '', '', ''),
('P048', 'X008', 'CLIENT', 'AMIT', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'M&MFINOCT2020', 3444, '', '9987416999', '', '', '', '', '', ''),
('X111', 'X001', 'BROKER', 'BHAVESH', 'X101', '100%', '', '', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '1000', 'MANAPPUOCT2020', 6000, '', '', '', '', '', '', '', ''),
('P051', 'X001', 'CLIENT', 'YUVRAJ', '', '', '', '', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'MARICOOCT2020', 2000, '', '', '', '', '', '', '', ''),
('X092', 'X001', 'BROKER', 'BHAVESH', 'X101', '100%', '', '', 'NO CUTTING', '', 'ACTIVE', 'HNI', '', '', '', '1000', 'MARUTIOCT2020', 100, '', '', '', '', '', '', '', ''),
('P052', 'X008', 'CLIENT', '', '', '', '', '15%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', '', '', '', '150', 'MCDOWELOCT2020', 1250, '', '', '', '', '', '', '', ''),
('R046', 'X008', 'CLIENT', '', '', '', '', '65%', 'NO CUTTING', '', 'ACTIVE', 'RETAIL', 'X081', '', '', '150', 'MFSLOCT2020', 1300, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '150', 'MGLOCT2020', 600, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '150', 'MINDTREOCT2020', 800, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '150', 'MOTHERSOCT2020', 7000, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '150', 'MRFOCT2020', 10, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '150', 'MUTHOOTOCT2020', 750, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '150', 'NATIONAOCT2020', 17000, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '150', 'NAUKRIOCT2020', 250, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '150', 'NESTLEIOCT2020', 50, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '150', 'NIFTYOCT2020', 75, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '150', 'COFORGEOCT2020', 375, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '150', 'NMDCOCT2020', 6700, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '150', 'NTPCOCT2020', 5700, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '150', 'ONGCOCT2020', 7700, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '150', 'PAGEINDOCT2020', 30, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '150', 'PELOCT2020', 550, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '150', 'PETRONEOCT2020', 3000, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '150', 'PFCOCT2020', 6200, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '150', 'PIDILITOCT2020', 500, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '150', 'PNBOCT2020', 14000, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '150', 'POWERGROCT2020', 4000, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '150', 'PVROCT2020', 407, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '150', 'RAMCOCEOCT2020', 850, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '150', 'RBLBANKOCT2020', 2600, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '150', 'RECLTDOCT2020', 6000, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '150', 'RELIANCOCT2020', 505, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '150', 'SAILOCT2020', 19000, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '150', 'SBILIFEOCT2020', 750, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'SBINOCT2020', 3000, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'SHREECEOCT2020', 50, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'SIEMENSOCT2020', 550, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'SRFOCT2020', 250, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'SRTRANSOCT2020', 667, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'SUNPHAROCT2020', 1400, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'SUNTVOCT2020', 1500, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'TATACHEOCT2020', 2000, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'TATACONOCT2020', 2700, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'TATAMOTOCT2020', 5700, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'TATAPOWOCT2020', 13500, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'TATASTEOCT2020', 1700, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'TCSOCT2020', 300, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'TECHMOCT2020', 1200, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'TITANOCT2020', 750, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'TORNTPHOCT2020', 500, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'TORNTPOOCT2020', 3000, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'TVSMOTOOCT2020', 1400, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'UBLOCT2020', 700, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ULTRACEOCT2020', 200, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'UPLOCT2020', 1300, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'VEDLOCT2020', 6200, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'VOLTASOCT2020', 1000, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'WIPROOCT2020', 3200, '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ZEELOCT2020', 3000, '', '', '', '', '', '', '', '');

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
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-01-28 08:28:49', '2021-01-28 08:28:49');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int UNSIGNED NOT NULL,
  `menu_id` int UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-01-28 08:28:49', '2021-01-28 08:28:49', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2021-01-28 08:28:49', '2021-01-28 08:28:49', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2021-01-28 08:28:49', '2021-01-28 08:28:49', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2021-01-28 08:28:49', '2021-01-28 08:28:49', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2021-01-28 08:28:49', '2021-01-28 08:28:49', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2021-01-28 08:28:49', '2021-01-28 08:28:49', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2021-01-28 08:28:49', '2021-01-28 08:28:49', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2021-01-28 08:28:49', '2021-01-28 08:28:49', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2021-01-28 08:28:49', '2021-01-28 08:28:49', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2021-01-28 08:28:49', '2021-01-28 08:28:49', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2021-01-28 08:28:50', '2021-01-28 08:28:50', 'voyager.hooks', NULL),
(12, 1, 'Scrips', '', '_self', 'voyager-bread', '#000000', NULL, 15, '2021-01-28 09:06:19', '2021-01-29 05:47:24', 'voyager.scrips.index', 'null'),
(14, 1, 'Cutting Types', '', '_self', 'voyager-bread', '#000000', NULL, 16, '2021-01-29 04:58:07', '2021-01-29 05:47:36', 'voyager.cutting-type.index', 'null'),
(15, 1, 'User Categories', '', '_self', 'voyager-bread', '#000000', NULL, 17, '2021-01-29 05:46:11', '2021-01-29 05:47:46', 'voyager.user-category.index', 'null'),
(16, 1, 'User Scrip Limits', '', '_self', 'voyager-bread', '#000000', NULL, 18, '2021-01-29 07:06:01', '2021-01-29 07:42:24', 'voyager.user-scrip-limit.index', 'null'),
(17, 1, 'Preferred Brokers', '', '_self', 'voyager-folder', NULL, NULL, 19, '2021-01-29 07:17:00', '2021-01-29 07:17:00', 'voyager.preferred-broker.index', NULL),
(18, 1, 'User Orders', '', '_self', NULL, NULL, NULL, 20, '2021-02-01 06:15:17', '2021-02-01 06:15:17', 'voyager.user-order.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2020_12_28_051632_create_scrip_table', 1),
(5, '2020_12_28_054310_create_user_script_limit_table', 1),
(6, '2020_12_28_054552_create_preferred_broker_table', 1),
(7, '2020_12_28_055820_create_scrip_meta_table', 1),
(8, '2020_12_28_060233_create_notification_table', 1),
(9, '2020_12_28_061204_create_notification_reply_table', 1),
(10, '2020_12_28_061933_create_scrip_broker_stock_table', 1),
(11, '2020_12_28_062419_create_customer_order_table', 1),
(12, '2020_12_28_063242_create_customer_order_broker_table', 1),
(13, '2021_01_07_085539_create_user_stock_table', 2),
(14, '2021_01_08_071621_create_setting_table', 3),
(15, '2021_01_11_130356_create_user_order_broker_table', 4),
(16, '2021_01_21_090212_create_user_order_version_table', 5),
(17, '2021_01_21_093844_add_updated_by_to_user_order', 6),
(18, '2021_01_21_094321_add_updated_by_to_user_order_version', 6),
(19, '2021_01_22_075203_create_user_order_partner_table', 7),
(20, '2021_01_22_084039_update_lot_count_column_type_in_user_order_table', 8),
(21, '2021_01_22_084046_update_lot_count_column_type_in_user_order_table_version', 8),
(22, '2021_01_22_090623_update_user_order_partner_table', 9),
(23, '2014_10_12_100000_create_password_resets_table', 10),
(24, '2016_01_01_000000_add_voyager_user_fields', 10),
(25, '2016_01_01_000000_create_data_types_table', 10),
(26, '2016_05_19_173453_create_menu_table', 10),
(27, '2016_10_21_190000_create_roles_table', 10),
(28, '2016_10_21_190000_create_settings_table', 10),
(29, '2016_11_30_135954_create_permission_table', 10),
(30, '2016_11_30_141208_create_permission_role_table', 10),
(31, '2016_12_26_201236_data_types__add__server_side', 10),
(32, '2017_01_13_000000_add_route_to_menu_items_table', 10),
(33, '2017_01_14_005015_create_translations_table', 10),
(34, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 10),
(35, '2017_03_06_000000_add_controller_to_data_types_table', 10),
(36, '2017_04_21_000000_add_order_to_data_rows_table', 10),
(37, '2017_07_05_210000_add_policyname_to_data_types_table', 10),
(38, '2017_08_05_000000_add_group_to_settings_table', 10),
(39, '2017_11_26_013050_add_user_role_relationship', 10),
(40, '2017_11_26_015000_create_user_roles_table', 10),
(41, '2018_03_11_000000_add_user_settings', 10),
(42, '2018_03_14_000000_add_details_to_data_types_table', 10),
(43, '2018_03_16_000000_make_settings_value_nullable', 10),
(44, '2019_08_19_000000_create_failed_jobs_table', 10),
(45, '2021_01_29_102221_create_cutting_type_table', 11),
(46, '2021_01_29_111414_create_user_category_table', 12),
(47, '2021_01_29_115711_update_scrip_default_table', 13),
(48, '2021_02_01_113458_update_user_category_nullable', 14);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification_reply`
--

CREATE TABLE `notification_reply` (
  `id` bigint UNSIGNED NOT NULL,
  `notification_id` bigint UNSIGNED NOT NULL,
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_user_id` bigint UNSIGNED DEFAULT NULL,
  `to_user_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2021-01-28 08:28:49', '2021-01-28 08:28:49'),
(2, 'browse_bread', NULL, '2021-01-28 08:28:49', '2021-01-28 08:28:49'),
(3, 'browse_database', NULL, '2021-01-28 08:28:49', '2021-01-28 08:28:49'),
(4, 'browse_media', NULL, '2021-01-28 08:28:49', '2021-01-28 08:28:49'),
(5, 'browse_compass', NULL, '2021-01-28 08:28:49', '2021-01-28 08:28:49'),
(6, 'browse_menus', 'menus', '2021-01-28 08:28:49', '2021-01-28 08:28:49'),
(7, 'read_menus', 'menus', '2021-01-28 08:28:49', '2021-01-28 08:28:49'),
(8, 'edit_menus', 'menus', '2021-01-28 08:28:49', '2021-01-28 08:28:49'),
(9, 'add_menus', 'menus', '2021-01-28 08:28:49', '2021-01-28 08:28:49'),
(10, 'delete_menus', 'menus', '2021-01-28 08:28:49', '2021-01-28 08:28:49'),
(11, 'browse_roles', 'roles', '2021-01-28 08:28:49', '2021-01-28 08:28:49'),
(12, 'read_roles', 'roles', '2021-01-28 08:28:49', '2021-01-28 08:28:49'),
(13, 'edit_roles', 'roles', '2021-01-28 08:28:49', '2021-01-28 08:28:49'),
(14, 'add_roles', 'roles', '2021-01-28 08:28:49', '2021-01-28 08:28:49'),
(15, 'delete_roles', 'roles', '2021-01-28 08:28:49', '2021-01-28 08:28:49'),
(16, 'browse_users', 'users', '2021-01-28 08:28:49', '2021-01-28 08:28:49'),
(17, 'read_users', 'users', '2021-01-28 08:28:49', '2021-01-28 08:28:49'),
(18, 'edit_users', 'users', '2021-01-28 08:28:49', '2021-01-28 08:28:49'),
(19, 'add_users', 'users', '2021-01-28 08:28:49', '2021-01-28 08:28:49'),
(20, 'delete_users', 'users', '2021-01-28 08:28:49', '2021-01-28 08:28:49'),
(21, 'browse_settings', 'settings', '2021-01-28 08:28:49', '2021-01-28 08:28:49'),
(22, 'read_settings', 'settings', '2021-01-28 08:28:49', '2021-01-28 08:28:49'),
(23, 'edit_settings', 'settings', '2021-01-28 08:28:49', '2021-01-28 08:28:49'),
(24, 'add_settings', 'settings', '2021-01-28 08:28:49', '2021-01-28 08:28:49'),
(25, 'delete_settings', 'settings', '2021-01-28 08:28:49', '2021-01-28 08:28:49'),
(26, 'browse_hooks', NULL, '2021-01-28 08:28:50', '2021-01-28 08:28:50'),
(27, 'browse_scrips', 'scrips', '2021-01-28 09:06:19', '2021-01-28 09:06:19'),
(28, 'read_scrips', 'scrips', '2021-01-28 09:06:19', '2021-01-28 09:06:19'),
(29, 'edit_scrips', 'scrips', '2021-01-28 09:06:19', '2021-01-28 09:06:19'),
(30, 'add_scrips', 'scrips', '2021-01-28 09:06:19', '2021-01-28 09:06:19'),
(31, 'delete_scrips', 'scrips', '2021-01-28 09:06:19', '2021-01-28 09:06:19'),
(37, 'browse_cutting_type', 'cutting_type', '2021-01-29 04:58:07', '2021-01-29 04:58:07'),
(38, 'read_cutting_type', 'cutting_type', '2021-01-29 04:58:07', '2021-01-29 04:58:07'),
(39, 'edit_cutting_type', 'cutting_type', '2021-01-29 04:58:07', '2021-01-29 04:58:07'),
(40, 'add_cutting_type', 'cutting_type', '2021-01-29 04:58:07', '2021-01-29 04:58:07'),
(41, 'delete_cutting_type', 'cutting_type', '2021-01-29 04:58:07', '2021-01-29 04:58:07'),
(42, 'browse_user_category', 'user_category', '2021-01-29 05:46:11', '2021-01-29 05:46:11'),
(43, 'read_user_category', 'user_category', '2021-01-29 05:46:11', '2021-01-29 05:46:11'),
(44, 'edit_user_category', 'user_category', '2021-01-29 05:46:11', '2021-01-29 05:46:11'),
(45, 'add_user_category', 'user_category', '2021-01-29 05:46:11', '2021-01-29 05:46:11'),
(46, 'delete_user_category', 'user_category', '2021-01-29 05:46:11', '2021-01-29 05:46:11'),
(47, 'browse_user_scrip_limit', 'user_scrip_limit', '2021-01-29 07:06:01', '2021-01-29 07:06:01'),
(48, 'read_user_scrip_limit', 'user_scrip_limit', '2021-01-29 07:06:01', '2021-01-29 07:06:01'),
(49, 'edit_user_scrip_limit', 'user_scrip_limit', '2021-01-29 07:06:01', '2021-01-29 07:06:01'),
(50, 'add_user_scrip_limit', 'user_scrip_limit', '2021-01-29 07:06:01', '2021-01-29 07:06:01'),
(51, 'delete_user_scrip_limit', 'user_scrip_limit', '2021-01-29 07:06:01', '2021-01-29 07:06:01'),
(52, 'browse_preferred_broker', 'preferred_broker', '2021-01-29 07:17:00', '2021-01-29 07:17:00'),
(53, 'read_preferred_broker', 'preferred_broker', '2021-01-29 07:17:00', '2021-01-29 07:17:00'),
(54, 'edit_preferred_broker', 'preferred_broker', '2021-01-29 07:17:00', '2021-01-29 07:17:00'),
(55, 'add_preferred_broker', 'preferred_broker', '2021-01-29 07:17:00', '2021-01-29 07:17:00'),
(56, 'delete_preferred_broker', 'preferred_broker', '2021-01-29 07:17:00', '2021-01-29 07:17:00'),
(57, 'browse_user_order', 'user_order', '2021-02-01 06:15:17', '2021-02-01 06:15:17'),
(58, 'read_user_order', 'user_order', '2021-02-01 06:15:17', '2021-02-01 06:15:17'),
(59, 'edit_user_order', 'user_order', '2021-02-01 06:15:17', '2021-02-01 06:15:17'),
(60, 'add_user_order', 'user_order', '2021-02-01 06:15:17', '2021-02-01 06:15:17'),
(61, 'delete_user_order', 'user_order', '2021-02-01 06:15:17', '2021-02-01 06:15:17');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(16, 3),
(17, 1),
(17, 3),
(18, 1),
(18, 3),
(19, 1),
(19, 3),
(20, 1),
(20, 3),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(27, 3),
(28, 1),
(28, 3),
(29, 1),
(29, 3),
(30, 1),
(30, 3),
(31, 1),
(31, 3),
(37, 1),
(37, 3),
(38, 1),
(38, 3),
(39, 1),
(39, 3),
(40, 1),
(40, 3),
(41, 1),
(41, 3),
(42, 1),
(42, 3),
(43, 1),
(43, 3),
(44, 1),
(44, 3),
(45, 1),
(45, 3),
(46, 1),
(46, 3),
(47, 1),
(47, 3),
(48, 1),
(48, 3),
(49, 1),
(49, 3),
(50, 1),
(50, 3),
(51, 1),
(51, 3),
(52, 1),
(52, 3),
(53, 1),
(53, 3),
(54, 1),
(54, 3),
(55, 1),
(55, 3),
(56, 1),
(56, 3),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1);

-- --------------------------------------------------------

--
-- Table structure for table `preferred_broker`
--

CREATE TABLE `preferred_broker` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `broker_id` bigint UNSIGNED NOT NULL,
  `transaction_type` int NOT NULL,
  `order_index` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `preferred_broker`
--

INSERT INTO `preferred_broker` (`id`, `customer_id`, `broker_id`, `transaction_type`, `order_index`, `created_at`, `updated_at`) VALUES
(2, 8, 9, 2, 1, '2020-12-30 10:46:26', '2020-12-30 10:53:49'),
(3, 8, 10, 2, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2021-01-28 08:28:49', '2021-01-28 08:28:49'),
(2, 'user', 'Normal User', '2021-01-28 08:28:49', '2021-01-28 08:28:49'),
(3, 'SubAdmin', 'Sub Admin', '2021-02-01 06:00:05', '2021-02-01 06:00:05');

-- --------------------------------------------------------

--
-- Table structure for table `scrips`
--

CREATE TABLE `scrips` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double NOT NULL DEFAULT '0',
  `lot_size` int NOT NULL,
  `is_expirable` tinyint(1) NOT NULL,
  `expiry_date` date DEFAULT NULL,
  `parent_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `scrips`
--

INSERT INTO `scrips` (`id`, `name`, `code`, `status`, `rate`, `lot_size`, `is_expirable`, `expiry_date`, `parent_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'AXISBANK', 'AXISBANKDEC20', 'ACTIVE', 400.23, 10, 1, '2020-12-31', 0, NULL, NULL, NULL),
(6, 'UNIONBANK', 'UNIONBANKJAN21', 'ACTIVE', 30, 100, 1, '2021-01-31', 0, NULL, '2021-01-07 10:54:33', '2021-01-07 10:54:33'),
(7, 'YESBANK', 'YESBANKJAN21', 'ACTIVE', 12, 1000, 1, '2021-01-31', 0, NULL, '2021-01-07 10:54:57', '2021-01-07 10:54:57'),
(8, 'LT', 'LTJAN21', 'ACTIVE', 1300, 1000, 1, '2021-01-31', 0, NULL, '2021-01-07 10:55:19', '2021-01-07 10:55:19'),
(9, 'AXISBANK', 'AXISBANKJAN21', 'ACTIVE', 400, 100, 1, '2021-01-31', 0, NULL, '2021-01-07 11:01:10', '2021-01-07 11:01:10'),
(10, 'UNIONBANK', 'UNIONBANKJAN21', 'ACTIVE', 0, 500, 1, '2021-01-01', 0, NULL, '2021-01-29 06:34:05', '2021-01-29 06:34:05'),
(11, 'YESBANK', 'YESBANK', 'ACTIVE', 0, 980, 0, '2021-01-01', 0, '2021-01-29 06:35:04', '2021-01-29 06:34:49', '2021-01-29 06:35:04'),
(12, 'UTI', 'UTIF21', 'ACTIVE', 0, 1000, 1, '2021-01-01', 0, NULL, '2021-01-29 06:35:24', '2021-01-29 06:35:24'),
(13, 'SUZLON', 'SUZLON0121', 'ACTIVE', 0, 1000, 1, '2021-01-01', 0, NULL, '2021-01-29 06:36:51', '2021-01-29 06:36:51'),
(14, 'ICICI', 'ICICI', 'ACTIVE', 0, 1000, 0, '2021-01-01', 0, '2021-01-29 06:38:04', '2021-01-29 06:37:42', '2021-01-29 06:38:04'),
(15, 'ICICI', 'ICICIJAN21', 'ACTIVE', 0, 1000, 1, '2021-01-01', 0, NULL, '2021-01-29 06:38:23', '2021-01-29 06:38:23'),
(16, 'ACC', 'ACCOCT20', 'ACTIVE', 0, 500, 1, '2020-10-21', 0, NULL, NULL, NULL),
(17, 'ADANIENT', 'ADANIENOCT20', 'ACTIVE', 0, 4000, 1, '2020-10-21', 0, NULL, NULL, NULL),
(18, 'ADANIPORTS', 'ADANIPOROCT20', 'ACTIVE', 0, 2500, 1, '2020-10-21', 0, NULL, NULL, NULL),
(19, 'AMARAJABAT', 'AMARAJAOCT20', 'ACTIVE', 0, 1000, 1, '2020-10-21', 0, NULL, NULL, NULL),
(20, 'AMBUJACEM', 'AMBUJACOCT20', 'ACTIVE', 0, 3000, 1, '2020-10-21', 0, NULL, NULL, NULL),
(21, 'APOLLOHOSP', 'APOLLOHOCT20', 'ACTIVE', 0, 500, 1, '2020-10-21', 0, NULL, NULL, NULL),
(22, 'APOLLOTYRE', 'APOLLOTOCT20', 'ACTIVE', 0, 5000, 1, '2020-10-21', 0, NULL, NULL, NULL),
(23, 'ASHOKLEY', 'ASHOKLEOCT20', 'ACTIVE', 0, 9000, 1, '2020-10-21', 0, NULL, NULL, NULL),
(24, 'ASIANPAINT', 'ASIANPAOCT20', 'ACTIVE', 0, 300, 1, '2020-10-21', 0, NULL, NULL, NULL),
(25, 'AUROPHARMA', 'AUROPHAOCT20', 'ACTIVE', 0, 1300, 1, '2020-10-21', 0, NULL, NULL, NULL),
(26, 'AXISBANK', 'AXISBANOCT20', 'ACTIVE', 0, 1200, 1, '2020-10-21', 0, NULL, NULL, NULL),
(27, 'BAJAJ-AUTO', 'BAJAJ-AOCT20', 'ACTIVE', 0, 250, 1, '2020-10-21', 0, NULL, NULL, NULL),
(28, 'BAJAJFINSV', 'BAJAJFIOCT20', 'ACTIVE', 0, 125, 1, '2020-10-21', 0, NULL, NULL, NULL),
(29, 'BAJFINANCE', 'BAJFINAOCT20', 'ACTIVE', 0, 250, 1, '2020-10-21', 0, NULL, NULL, NULL),
(30, 'BALKRISIND', 'BALKRISOCT20', 'ACTIVE', 0, 800, 1, '2020-10-21', 0, NULL, NULL, NULL),
(31, 'BANDHANBNK', 'BANDHANOCT20', 'ACTIVE', 0, 1800, 1, '2020-10-21', 0, NULL, NULL, NULL),
(32, 'BANKNIFTY', 'BANKNIFOCT20', 'ACTIVE', 0, 8200, 1, '2020-10-21', 0, NULL, NULL, NULL),
(33, 'BANKBARODA', 'BANKBAROCT20', 'ACTIVE', 0, 25, 1, '2020-10-21', 0, NULL, NULL, NULL),
(34, 'BATAINDIA', 'BATAINDOCT20', 'ACTIVE', 0, 550, 1, '2020-10-21', 0, NULL, NULL, NULL),
(35, 'BEL', 'BELOCT20', 'ACTIVE', 0, 7600, 1, '2020-10-21', 0, NULL, NULL, NULL),
(36, 'BERGEPAINT', 'BERGEPAOCT20', 'ACTIVE', 0, 1100, 1, '2020-10-21', 0, NULL, NULL, NULL),
(37, 'BHARATFORG', 'BHARATFOOCT20', 'ACTIVE', 0, 1500, 1, '2020-10-21', 0, NULL, NULL, NULL),
(38, 'BHARTIARTL', 'BHARTIAOCT20', 'ACTIVE', 0, 1851, 1, '2020-10-21', 0, NULL, NULL, NULL),
(39, 'BHEL', 'BHELOCT20', 'ACTIVE', 0, 21000, 1, '2020-10-21', 0, NULL, NULL, NULL),
(40, 'BIOCON', 'BIOCONOCT20', 'ACTIVE', 0, 2300, 1, '2020-10-21', 0, NULL, NULL, NULL),
(41, 'BOSCHLTD', 'BOSCHLTOCT20', 'ACTIVE', 0, 50, 1, '2020-10-21', 0, NULL, NULL, NULL),
(42, 'BPCL', 'BPCLOCT20', 'ACTIVE', 0, 1800, 1, '2020-10-21', 0, NULL, NULL, NULL),
(43, 'BRITANNIA', 'BRITANNOCT20', 'ACTIVE', 0, 200, 1, '2020-10-21', 0, NULL, NULL, NULL),
(44, 'CADILAHC', 'CADILAHOCT20', 'ACTIVE', 0, 2200, 1, '2020-10-21', 0, NULL, NULL, NULL),
(45, 'CANBK', 'CANBKOCT20', 'ACTIVE', 0, 5000, 1, '2020-10-21', 0, NULL, NULL, NULL),
(46, 'CHOLAFIN', 'CHOLAFIOCT20', 'ACTIVE', 0, 2500, 1, '2020-10-21', 0, NULL, NULL, NULL),
(47, 'CIPLA', 'CIPLAOCT20', 'ACTIVE', 0, 1300, 1, '2020-10-21', 0, NULL, NULL, NULL),
(48, 'COALINDIA', 'COALINDOCT20', 'ACTIVE', 0, 3700, 1, '2020-10-21', 0, NULL, NULL, NULL),
(49, 'COFORGE', 'COFORGEOCT20', 'ACTIVE', 0, 700, 1, '2020-10-21', 0, NULL, NULL, NULL),
(50, 'COLPAL', 'COLPALOCT20', 'ACTIVE', 0, 1563, 1, '2020-10-21', 0, NULL, NULL, NULL),
(51, 'CONCOR', 'CONCOROCT20', 'ACTIVE', 0, 1200, 1, '2020-10-21', 0, NULL, NULL, NULL),
(52, 'CUMMINSIND', 'CUMMINSOCT20', 'ACTIVE', 0, 1250, 1, '2020-10-21', 0, NULL, NULL, NULL),
(53, 'DABUR', 'DABUROCT20', 'ACTIVE', 0, 400, 1, '2020-10-21', 0, NULL, NULL, NULL),
(54, 'DIVISLAB', 'DIVISLAOCT20', 'ACTIVE', 0, 3300, 1, '2020-10-21', 0, NULL, NULL, NULL),
(55, 'DLF', 'DLFOCT20', 'ACTIVE', 0, 250, 1, '2020-10-21', 0, NULL, NULL, NULL),
(56, 'DRREDDY', 'DRREDDYOCT20', 'ACTIVE', 0, 350, 1, '2020-10-21', 0, NULL, NULL, NULL),
(57, 'EICHERMOT', 'EICHERMOCT20', 'ACTIVE', 0, 1100, 1, '2020-10-21', 0, NULL, NULL, NULL),
(58, 'ESCORTS', 'ESCORTSOCT20', 'ACTIVE', 0, 3600, 1, '2020-10-21', 0, NULL, NULL, NULL),
(59, 'EXIDEIND', 'EXIDEINOCT20', 'ACTIVE', 0, 8500, 1, '2020-10-21', 0, NULL, NULL, NULL),
(60, 'FEDERALBNK', 'FEDERALOCT20', 'ACTIVE', 0, 6100, 1, '2020-10-21', 0, NULL, NULL, NULL),
(61, 'GAIL', 'GAILOCT20', 'ACTIVE', 0, 2300, 1, '2020-10-21', 0, NULL, NULL, NULL),
(62, 'GLENMARK', 'GLENMAROCT20', 'ACTIVE', 0, 45000, 1, '2020-10-21', 0, NULL, NULL, NULL),
(63, 'GMRINFRA', 'GMRINFROCT20', 'ACTIVE', 0, 1000, 1, '2020-10-21', 0, NULL, NULL, NULL),
(64, 'GODREJCP', 'GODREJCOCT20', 'ACTIVE', 0, 650, 1, '2020-10-21', 0, NULL, NULL, NULL),
(65, 'GODREJPROP', 'GODREJPOCT20', 'ACTIVE', 0, 950, 1, '2020-10-21', 0, NULL, NULL, NULL),
(66, 'GRASIM', 'GRASIMOCT20', 'ACTIVE', 0, 1000, 1, '2020-10-21', 0, NULL, NULL, NULL),
(67, 'HAVELLS', 'HAVELLSOCT20', 'ACTIVE', 0, 1400, 1, '2020-10-21', 0, NULL, NULL, NULL),
(68, 'HCLTECH', 'HCLTECHOCT20', 'ACTIVE', 0, 300, 1, '2020-10-21', 0, NULL, NULL, NULL),
(69, 'HDFCBANK', 'HDFCBANOCT20', 'ACTIVE', 0, 550, 1, '2020-10-21', 0, NULL, NULL, NULL),
(70, 'HDFCLIFE', 'HDFCLIFOCT20', 'ACTIVE', 0, 1100, 1, '2020-10-21', 0, NULL, NULL, NULL),
(71, 'HDFC', 'HDFCOCT20', 'ACTIVE', 0, 300, 1, '2020-10-21', 0, NULL, NULL, NULL),
(72, 'HEROMOTOCO', 'HEROMOTOCT20', 'ACTIVE', 0, 4300, 1, '2020-10-21', 0, NULL, NULL, NULL),
(73, 'HINDALCO', 'HINDALCOCT20', 'ACTIVE', 0, 2700, 1, '2020-10-21', 0, NULL, NULL, NULL),
(74, 'HINDPETRO', 'HINDPETOCT20', 'ACTIVE', 0, 300, 1, '2020-10-21', 0, NULL, NULL, NULL),
(75, 'HINDUNILVR', 'HINDUNIOCT20', 'ACTIVE', 0, 3100, 1, '2020-10-21', 0, NULL, NULL, NULL),
(76, 'IBULHSGFIN', 'IBULHSGOCT20', 'ACTIVE', 0, 1375, 1, '2020-10-21', 0, NULL, NULL, NULL),
(77, 'ICICIBANK', 'ICICIBAOCT20', 'ACTIVE', 0, 1500, 1, '2020-10-21', 0, NULL, NULL, NULL),
(78, 'ICICIPRULI', 'ICICIPROCT20', 'ACTIVE', 0, 140000, 1, '2020-10-21', 0, NULL, NULL, NULL),
(79, 'IDEA', 'IDEAOCT20', 'ACTIVE', 0, 19000, 1, '2020-10-21', 0, NULL, NULL, NULL),
(80, 'IDFCFIRSTB', 'IDFCFIROCT20', 'ACTIVE', 0, 1375, 1, '2020-10-21', 0, NULL, NULL, NULL),
(81, 'IGL', 'IGLOCT20', 'ACTIVE', 0, 500, 1, '2020-10-21', 0, NULL, NULL, NULL),
(82, 'INDIGO', 'INDIGOOCT20', 'ACTIVE', 0, 800, 1, '2020-10-21', 0, NULL, NULL, NULL),
(83, 'INDUSINDBK', 'INDUSINOCT20', 'ACTIVE', 0, 2800, 1, '2020-10-21', 0, NULL, NULL, NULL),
(84, 'INFRATEL', 'INFRATEOCT20', 'ACTIVE', 0, 1200, 1, '2020-10-21', 0, NULL, NULL, NULL),
(85, 'INFY', 'INFYOCT20', 'ACTIVE', 0, 5700, 1, '2020-10-21', 0, NULL, NULL, NULL),
(86, 'IOC', 'IOCOCT20', 'ACTIVE', 0, 3200, 1, '2020-10-21', 0, NULL, NULL, NULL),
(87, 'ITC', 'ITCOCT20', 'ACTIVE', 0, 5000, 1, '2020-10-21', 0, NULL, NULL, NULL),
(88, 'JINDALSTEL', 'JINDALSOCT20', 'ACTIVE', 0, 2700, 1, '2020-10-21', 0, NULL, NULL, NULL),
(89, 'JSWSTEEL', 'JSWSTEEOCT20', 'ACTIVE', 0, 500, 1, '2020-10-21', 0, NULL, NULL, NULL),
(90, 'JUBLFOOD', 'JUBLFOOOCT20', 'ACTIVE', 0, 400, 1, '2020-10-21', 0, NULL, NULL, NULL),
(91, 'KOTAKBANK', 'KOTAKBAOCT20', 'ACTIVE', 0, 6800, 1, '2020-10-21', 0, NULL, NULL, NULL),
(92, 'L&TFH', 'L&TFHOCT20', 'ACTIVE', 0, 2000, 1, '2020-10-21', 0, NULL, NULL, NULL),
(93, 'LICHSGFIN', 'LICHSGFOCT20', 'ACTIVE', 0, 550, 1, '2020-10-21', 0, NULL, NULL, NULL),
(94, 'LT', 'LTOCT20', 'ACTIVE', 0, 850, 1, '2020-10-21', 0, NULL, NULL, NULL),
(95, 'LUPIN', 'LUPINOCT20', 'ACTIVE', 0, 1400, 1, '2020-10-21', 0, NULL, NULL, NULL),
(96, 'M&M', 'M&MOCT20', 'ACTIVE', 0, 3444, 1, '2020-10-21', 0, NULL, NULL, NULL),
(97, 'M&MFIN', 'M&MFINOCT20', 'ACTIVE', 0, 6000, 1, '2020-10-21', 0, NULL, NULL, NULL),
(98, 'MANAPPURAM', 'MANAPPUOCT20', 'ACTIVE', 0, 2000, 1, '2020-10-21', 0, NULL, NULL, NULL),
(99, 'MARUTI', 'MARUTIOCT20', 'ACTIVE', 0, 100, 1, '2020-10-21', 0, NULL, NULL, NULL),
(100, 'MARICO', 'MARICOOCT20', 'ACTIVE', 0, 1250, 1, '2020-10-21', 0, NULL, NULL, NULL),
(101, 'MCDOWELL-N', 'MCDOWELOCT20', 'ACTIVE', 0, 1300, 1, '2020-10-21', 0, NULL, NULL, NULL),
(102, 'MFSL', 'MFSLOCT20', 'ACTIVE', 0, 600, 1, '2020-10-21', 0, NULL, NULL, NULL),
(103, 'MGL', 'MGLOCT20', 'ACTIVE', 0, 800, 1, '2020-10-21', 0, NULL, NULL, NULL),
(104, 'MINDTREE', 'MINDTREOCT20', 'ACTIVE', 0, 7000, 1, '2020-10-21', 0, NULL, NULL, NULL),
(105, 'MOTHERSUMI', 'MOTHERSOCT20', 'ACTIVE', 0, 10, 1, '2020-10-21', 0, NULL, NULL, NULL),
(106, 'MRF', 'MRFOCT20', 'ACTIVE', 0, 750, 1, '2020-10-21', 0, NULL, NULL, NULL),
(107, 'MUTHOOTFIN', 'MUTHOOTOCT20', 'ACTIVE', 0, 17000, 1, '2020-10-21', 0, NULL, NULL, NULL),
(108, 'NATIONALUM', 'NATIONAOCT20', 'ACTIVE', 0, 250, 1, '2020-10-21', 0, NULL, NULL, NULL),
(109, 'NAUKRI', 'NAUKRIOCT20', 'ACTIVE', 0, 50, 1, '2020-10-21', 0, NULL, NULL, NULL),
(110, 'NESTLEIND', 'NESTLEIOCT20', 'ACTIVE', 0, 75, 1, '2020-10-21', 0, NULL, NULL, NULL),
(111, 'NIFTY', 'NIFTYOCT20', 'ACTIVE', 0, 375, 1, '2020-10-21', 0, NULL, NULL, NULL),
(112, 'NMDC', 'NMDCOCT20', 'ACTIVE', 0, 6700, 1, '2020-10-21', 0, NULL, NULL, NULL),
(113, 'NTPC', 'NTPCOCT20', 'ACTIVE', 0, 5700, 1, '2020-10-21', 0, NULL, NULL, NULL),
(114, 'ONGC', 'ONGCOCT20', 'ACTIVE', 0, 7700, 1, '2020-10-21', 0, NULL, NULL, NULL),
(115, 'PAGEIND', 'PAGEINDOCT20', 'ACTIVE', 0, 30, 1, '2020-10-21', 0, NULL, NULL, NULL),
(116, 'PEL', 'PELOCT20', 'ACTIVE', 0, 550, 1, '2020-10-21', 0, NULL, NULL, NULL),
(117, 'PETRONET', 'PETRONEOCT20', 'ACTIVE', 0, 3000, 1, '2020-10-21', 0, NULL, NULL, NULL),
(118, 'PFC', 'PFCOCT20', 'ACTIVE', 0, 6200, 1, '2020-10-21', 0, NULL, NULL, NULL),
(119, 'PIDILITIND', 'PIDILITOCT20', 'ACTIVE', 0, 500, 1, '2020-10-21', 0, NULL, NULL, NULL),
(120, 'PNB', 'PNBOCT20', 'ACTIVE', 0, 14000, 1, '2020-10-21', 0, NULL, NULL, NULL),
(121, 'POWERGRID', 'POWERGROCT20', 'ACTIVE', 0, 4000, 1, '2020-10-21', 0, NULL, NULL, NULL),
(122, 'PVR', 'PVROCT20', 'ACTIVE', 0, 407, 1, '2020-10-21', 0, NULL, NULL, NULL),
(123, 'RAMCOCEM', 'RAMCOCEOCT20', 'ACTIVE', 0, 850, 1, '2020-10-21', 0, NULL, NULL, NULL),
(124, 'RBLBANK', 'RBLBANKOCT20', 'ACTIVE', 0, 2600, 1, '2020-10-21', 0, NULL, NULL, NULL),
(125, 'RELIANCE', 'RELIANCOCT20', 'ACTIVE', 0, 6000, 1, '2020-10-21', 0, NULL, NULL, NULL),
(126, 'RECLTD', 'RECLTDOCT20', 'ACTIVE', 0, 505, 1, '2020-10-21', 0, NULL, NULL, NULL),
(127, 'SAIL', 'SAILOCT20', 'ACTIVE', 0, 19000, 1, '2020-10-21', 0, NULL, NULL, NULL),
(128, 'SBIN', 'SBINOCT20', 'ACTIVE', 0, 750, 1, '2020-10-21', 0, NULL, NULL, NULL),
(129, 'SBILIFE', 'SBILIFEOCT20', 'ACTIVE', 0, 3000, 1, '2020-10-21', 0, NULL, NULL, NULL),
(130, 'SHREECEM', 'SHREECEOCT20', 'ACTIVE', 0, 50, 1, '2020-10-21', 0, NULL, NULL, NULL),
(131, 'SIEMENS', 'SIEMENSOCT20', 'ACTIVE', 0, 550, 1, '2020-10-21', 0, NULL, NULL, NULL),
(132, 'SRF', 'SRFOCT20', 'ACTIVE', 0, 250, 1, '2020-10-21', 0, NULL, NULL, NULL),
(133, 'SRTRANSFIN', 'SRTRANSOCT20', 'ACTIVE', 0, 667, 1, '2020-10-21', 0, NULL, NULL, NULL),
(134, 'SUNPHARMA', 'SUNPHAROCT20', 'ACTIVE', 0, 1400, 1, '2020-10-21', 0, NULL, NULL, NULL),
(135, 'SUNTV', 'SUNTVOCT20', 'ACTIVE', 0, 1500, 1, '2020-10-21', 0, NULL, NULL, NULL),
(136, 'TATACHEM', 'TATACHEOCT20', 'ACTIVE', 0, 2000, 1, '2020-10-21', 0, NULL, NULL, NULL),
(137, 'TATACONSUM', 'TATACONOCT20', 'ACTIVE', 0, 2700, 1, '2020-10-21', 0, NULL, NULL, NULL),
(138, 'TATAMOTORS', 'TATAMOTOCT20', 'ACTIVE', 0, 5700, 1, '2020-10-21', 0, NULL, NULL, NULL),
(139, 'TATAPOWER', 'TATAPOWOCT20', 'ACTIVE', 0, 13500, 1, '2020-10-21', 0, NULL, NULL, NULL),
(140, 'TATASTEEL', 'TATASTEOCT20', 'ACTIVE', 0, 1700, 1, '2020-10-21', 0, NULL, NULL, NULL),
(141, 'TCS', 'TCSOCT20', 'ACTIVE', 0, 300, 1, '2020-10-21', 0, NULL, NULL, NULL),
(142, 'TECHM', 'TECHMOCT20', 'ACTIVE', 0, 1200, 1, '2020-10-21', 0, NULL, NULL, NULL),
(143, 'TITAN', 'TITANOCT20', 'ACTIVE', 0, 750, 1, '2020-10-21', 0, NULL, NULL, NULL),
(144, 'TORNTPHARM', 'TORNTPHOCT20', 'ACTIVE', 0, 500, 1, '2020-10-21', 0, NULL, NULL, NULL),
(145, 'TORNTPOWER', 'TORNTPOOCT20', 'ACTIVE', 0, 3000, 1, '2020-10-21', 0, NULL, NULL, NULL),
(146, 'TVSMOTOR', 'TVSMOTOOCT20', 'ACTIVE', 0, 1400, 1, '2020-10-21', 0, NULL, NULL, NULL),
(147, 'UBL', 'UBLOCT20', 'ACTIVE', 0, 700, 1, '2020-10-21', 0, NULL, NULL, NULL),
(148, 'ULTRACEMCO', 'ULTRACEOCT20', 'ACTIVE', 0, 200, 1, '2020-10-21', 0, NULL, NULL, NULL),
(149, 'UPL', 'UPLOCT20', 'ACTIVE', 0, 1300, 1, '2020-10-21', 0, NULL, NULL, NULL),
(150, 'VEDL', 'VEDLOCT20', 'ACTIVE', 0, 6200, 1, '2020-10-21', 0, NULL, NULL, NULL),
(151, 'VOLTAS', 'VOLTASOCT20', 'ACTIVE', 0, 1000, 1, '2020-10-21', 0, NULL, NULL, NULL),
(152, 'WIPRO', 'WIPROOCT20', 'ACTIVE', 0, 3200, 1, '2020-10-21', 0, NULL, NULL, NULL),
(153, 'ZEEL', 'ZEELOCT20', 'ACTIVE', 0, 3000, 1, '2020-10-21', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `scrip_meta`
--

CREATE TABLE `scrip_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `scrip_id` bigint UNSIGNED NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `scrip_meta`
--

INSERT INTO `scrip_meta` (`id`, `scrip_id`, `meta_key`, `meta_value`, `created_at`, `updated_at`) VALUES
(1, 1, 'high', '10', '2020-12-30 07:29:52', '2020-12-30 07:29:52'),
(2, 1, 'low', '5', '2020-12-30 07:29:52', '2020-12-30 07:29:52'),
(3, 6, 'high', '10', '2021-01-07 10:54:33', '2021-01-07 10:54:33'),
(4, 6, 'low', '5', '2021-01-07 10:54:33', '2021-01-07 10:54:33'),
(5, 7, 'high', '10', '2021-01-07 10:54:57', '2021-01-07 10:54:57'),
(6, 7, 'low', '5', '2021-01-07 10:54:57', '2021-01-07 10:54:57'),
(7, 8, 'high', '10', '2021-01-07 10:55:19', '2021-01-07 10:55:19'),
(8, 8, 'low', '5', '2021-01-07 10:55:19', '2021-01-07 10:55:19'),
(9, 9, 'high', '10', '2021-01-07 11:01:10', '2021-01-07 11:01:10'),
(10, 9, 'low', '5', '2021-01-07 11:01:10', '2021-01-07 11:01:10');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `meta_key`, `meta_value`, `created_at`, `updated_at`) VALUES
(1, 'lot_quantity_threshold', '20', NULL, NULL),
(2, 'save_order_timeout_delay', '5', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `account_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cutting_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `first_name`, `last_name`, `email`, `avatar`, `email_verified_at`, `password`, `code`, `category`, `account_type`, `account_status`, `cutting_type`, `remember_token`, `settings`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 1, 'ashish2', 'ADMIN', 'ashish.maurya@neosoftmail.com', 'users/default.png', NULL, '$2y$10$PdKOM.sutaFnsDwniVYyEOkOrDVNpnh6HskXeMSRKo2ebq/No0yP6', 'D1', 'OK', 'ADMIN', 'ACTIVE', NULL, NULL, NULL, NULL, '2020-12-28 09:37:48', '2021-01-28 08:57:35'),
(4, NULL, 'ashish', 'DEALER', 'ashish.maurya@neosoftmail.com1', 'users/default.png', NULL, '$2y$10$82oU8AFmKL53Zwhf8azLL.WBlaWTwFRU7lnpaqXFkHlh9Q1C/CMHy', NULL, 'OK', 'DEALER', 'ACTIVE', NULL, NULL, NULL, NULL, '2020-12-28 11:09:12', '2020-12-28 11:09:12'),
(8, NULL, 'ashish', 'CUSTOMER', 'ashish.maurya@neosoftmail.comcusomer', 'users/default.png', NULL, '$2y$10$eoEUA54O.B5lHvI/azFKteGEFYJfCeTe1IjNZk67ItFVt/kj9QkCu', 'S009', 'X0001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, '2020-12-30 09:30:43', '2020-12-30 09:30:43'),
(9, NULL, 'ashish', 'BROKER', 'ashish.maurya@neosoftmail.combroker', 'users/default.png', NULL, '$2y$10$EQyM.esYTiFdYkU3awwwruqdNu/eontdwxys0V0BfyIwCgGL3NNFi', 'X00009', 'OK', 'BROKER', 'ACTIVE', NULL, NULL, NULL, NULL, '2020-12-30 13:41:29', '2020-12-30 13:41:29'),
(10, NULL, 'ashish', 'Broker 2', 'ashish.maurya@neosoftmail.combroker2', 'users/default.png', NULL, '$2y$10$Y6/CZlq6Bf1cXi5lfdRS8eUioz.OC/zqVU9TH/.OYKT65diTxXwPS', 'X00010', 'OK', 'BROKER', 'ACTIVE', NULL, NULL, NULL, NULL, '2021-01-12 07:04:08', '2021-01-12 07:04:08'),
(11, NULL, 'ashish', 'Broker 3', 'ashish.maurya@neosoftmail.com.broker3', 'users/default.png', NULL, '$2y$10$Cin5lbUdvU5UnoENLZMLaeJ75glP9I2PFnhbi9WSdG.Kz4JLwcVYq', 'X00011', 'OK', 'BROKER', 'ACTIVE', NULL, NULL, NULL, NULL, '2021-01-15 08:36:17', '2021-01-15 08:36:17'),
(12, NULL, 'Siddharth', 'Test', 'siddharth.iyer@nymphaeatech.in.test', 'users/default.png', NULL, '$2y$10$sjkrW1.TEynC4UYg6JT6iOdAe./slUk3UQ8urHtLWUB7rFm6N0uxW', NULL, 'OK', 'ADMIN', 'ACTIVE', NULL, NULL, NULL, NULL, '2021-01-15 12:50:40', '2021-01-15 12:50:40'),
(13, NULL, 'ashish', 'Broker 3', 'ashish.maurya@neosoftmail.com.brokertest', 'users/default.png', NULL, '$2y$10$sjkrW1.TEynC4UYg6JT6iOdAe./slUk3UQ8urHtLWUB7rFm6N0uxW', 'X00013', 'OK', 'BROKER', 'ACTIVE', NULL, NULL, NULL, NULL, '2021-01-15 12:52:27', '2021-01-15 12:52:27'),
(14, NULL, 'Siddharth', 'Iyer', 'siddharth.iyer@nymphaeatech.in.broker', 'users/default.png', NULL, '$2y$10$oG/M2fC1xhDWBEDiEDykSuBvfbOh8c/hV3TQQruFgW90EzVoGlEbe', 'X00014', 'OK', 'ADMIN', 'ACTIVE', NULL, NULL, NULL, NULL, '2021-01-15 12:54:14', '2021-01-15 12:54:14'),
(15, 3, 'Siddharth', 'Iyer', 'siddharth.iyer@nymphaeatech.in', 'users/default.png', NULL, '$2y$10$GrsAeXtZCefJ0aUNyrrIjeAXjNI4t2CLNfCY4S3K5U69TFie2rGIe', 'S001', NULL, 'CUSTOMER', 'ACTIVE', NULL, NULL, NULL, NULL, '2021-01-15 13:00:31', '2021-02-01 06:08:57'),
(16, NULL, 'ashish', 'CUSTOMER 2', 'ashish.maurya@neosoftmail.comcusomer2', 'users/default.png', NULL, '$2y$10$xFxaK1C4Shp.eWiJbdsMqOSAEY0MBNgBjBXcPMtCNJUGVtFUfiS5S', 'C00016', 'OK', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, '2021-01-25 08:07:25', '2021-01-25 08:07:25'),
(17, 2, 'Ashish', 'maurya', 'admin@example.com', 'users/default.png', NULL, '$2y$10$6jCvIWfk7oOujXxekhD2fObZIyeNjTLuEULXaILEpUMI0ZV8mZOle', 'X17', 'OK', 'BROKER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, '2021-01-29 04:30:22', '2021-01-29 04:30:22'),
(19, 2, 'Ashish', 'Maurya', 'admin@example.com.test', 'users/default.png', NULL, '$2y$10$iW6Mym3oyipNTX6eq222Uezjz.jacwk1ApAjNHNqZFI2Cps2HMSiS', 'C00018', 'OK', 'CUSTOMER', 'ACTIVE', NULL, NULL, NULL, NULL, '2021-01-29 05:38:02', '2021-01-29 05:38:02'),
(20, 2, 'Ashish', 'maurya', 'admin@example.com.rel', 'users/default.png', NULL, '$2y$10$TXhaUwOX/FgqJ/3iIr6pQ.NKXPgXN09/6tZ8jZetKwRjMECg8CGtW', 'C00020', 'X0001', 'CUSTOMER', 'ACTIVE', NULL, NULL, NULL, NULL, '2021-01-29 05:42:22', '2021-01-29 06:01:37'),
(21, 2, 'Ashish', 'maurya', 'admin@example.com.23', 'users/default.png', NULL, '$2y$10$acGsoYeb8KLmwQM7ob2aZ.WPphzCddpRuCYBiwFsPFMA2LtEdT/c.', 'C00021', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, '2021-01-29 06:06:55', '2021-02-01 06:08:35'),
(277, NULL, 'A005', '', 'A005@example.com', 'users/default.png', NULL, 'A005', 'A005', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(278, NULL, 'A009', '', 'A009@example.com', 'users/default.png', NULL, 'A009', 'A009', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(279, NULL, 'A019', '', 'A019@example.com', 'users/default.png', NULL, 'A019', 'A019', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(280, NULL, 'A022', '', 'A022@example.com', 'users/default.png', NULL, 'A022', 'A022', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(281, NULL, 'A023', '', 'A023@example.com', 'users/default.png', NULL, 'A023', 'A023', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(282, NULL, 'A024', '', 'A024@example.com', 'users/default.png', NULL, 'A024', 'A024', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(283, NULL, 'A025', '', 'A025@example.com', 'users/default.png', NULL, 'A025', 'A025', 'X001', 'CUSTOMER', 'ACTIVE', '2x CUTTING', NULL, NULL, NULL, NULL, NULL),
(284, NULL, 'A026', '', 'A026@example.com', 'users/default.png', NULL, 'A026', 'A026', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(285, NULL, 'A027', '', 'A027@example.com', 'users/default.png', NULL, 'A027', 'A027', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(286, NULL, 'A032', '', 'A032@example.com', 'users/default.png', NULL, 'A032', 'A032', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(287, NULL, 'A033', '', 'A033@example.com', 'users/default.png', NULL, 'A033', 'A033', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(288, NULL, 'A034', '', 'A034@example.com', 'users/default.png', NULL, 'A034', 'A034', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(289, NULL, 'A036', '', 'A036@example.com', 'users/default.png', NULL, 'A036', 'A036', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(290, NULL, 'B017', '', 'B017@example.com', 'users/default.png', NULL, 'B017', 'B017', 'X008', 'CUSTOMER', 'ACTIVE', 'REVERSE 100%', NULL, NULL, NULL, NULL, NULL),
(291, NULL, 'B024', '', 'B024@example.com', 'users/default.png', NULL, 'B024', 'B024', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(292, NULL, 'B031', '', 'B031@example.com', 'users/default.png', NULL, 'B031', 'B031', 'X001', 'CUSTOMER', 'ACTIVE', '2x CUTTING', NULL, NULL, NULL, NULL, NULL),
(293, NULL, 'B035', '', 'B035@example.com', 'users/default.png', NULL, 'B035', 'B035', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(294, NULL, 'B036', '', 'B036@example.com', 'users/default.png', NULL, 'B036', 'B036', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(295, NULL, 'B037', '', 'B037@example.com', 'users/default.png', NULL, 'B037', 'B037', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(296, NULL, 'B038', '', 'B038@example.com', 'users/default.png', NULL, 'B038', 'B038', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(297, NULL, 'B040', '', 'B040@example.com', 'users/default.png', NULL, 'B040', 'B040', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(298, NULL, 'B041', '', 'B041@example.com', 'users/default.png', NULL, 'B041', 'B041', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(299, NULL, 'B042', '', 'B042@example.com', 'users/default.png', NULL, 'B042', 'B042', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(300, NULL, 'B043', '', 'B043@example.com', 'users/default.png', NULL, 'B043', 'B043', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(301, NULL, 'B044', '', 'B044@example.com', 'users/default.png', NULL, 'B044', 'B044', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(302, NULL, 'B045', '', 'B045@example.com', 'users/default.png', NULL, 'B045', 'B045', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(303, NULL, 'B087', '', 'B087@example.com', 'users/default.png', NULL, 'B087', 'B087', 'X001', 'CUSTOMER', 'ACTIVE', '1x CUTTING', NULL, NULL, NULL, NULL, NULL),
(304, NULL, 'B088', '', 'B088@example.com', 'users/default.png', NULL, 'B088', 'B088', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(305, NULL, 'B089', '', 'B089@example.com', 'users/default.png', NULL, 'B089', 'B089', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(306, NULL, 'C035', '', 'C035@example.com', 'users/default.png', NULL, 'C035', 'C035', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(307, NULL, 'C036', '', 'C036@example.com', 'users/default.png', NULL, 'C036', 'C036', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(308, NULL, 'D001', '', 'D001@example.com', 'users/default.png', NULL, 'D001', 'D001', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(309, NULL, 'D005', '', 'D005@example.com', 'users/default.png', NULL, 'D005', 'D005', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(310, NULL, 'D012', '', 'D012@example.com', 'users/default.png', NULL, 'D012', 'D012', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(311, NULL, 'D021', '', 'D021@example.com', 'users/default.png', NULL, 'D021', 'D021', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(312, NULL, 'D022', '', 'D022@example.com', 'users/default.png', NULL, 'D022', 'D022', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(313, NULL, 'E001', '', 'E001@example.com', 'users/default.png', NULL, 'E001', 'E001', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(314, NULL, 'E002', '', 'E002@example.com', 'users/default.png', NULL, 'E002', 'E002', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(315, NULL, 'E003', '', 'E003@example.com', 'users/default.png', NULL, 'E003', 'E003', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(316, NULL, 'E004', '', 'E004@example.com', 'users/default.png', NULL, 'E004', 'E004', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(317, NULL, 'E005', '', 'E005@example.com', 'users/default.png', NULL, 'E005', 'E005', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(318, NULL, 'E006', '', 'E006@example.com', 'users/default.png', NULL, 'E006', 'E006', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(319, NULL, 'E007', '', 'E007@example.com', 'users/default.png', NULL, 'E007', 'E007', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(320, NULL, 'E008', '', 'E008@example.com', 'users/default.png', NULL, 'E008', 'E008', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(321, NULL, 'E009', '', 'E009@example.com', 'users/default.png', NULL, 'E009', 'E009', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(322, NULL, 'G005', '', 'G005@example.com', 'users/default.png', NULL, 'G005', 'G005', 'X008', 'CUSTOMER', 'ACTIVE', 'REVERSE 20%', NULL, NULL, NULL, NULL, NULL),
(323, NULL, 'G006', '', 'G006@example.com', 'users/default.png', NULL, 'G006', 'G006', 'X008', 'CUSTOMER', 'ACTIVE', 'REVERSE 20%', NULL, NULL, NULL, NULL, NULL),
(324, NULL, 'G007', '', 'G007@example.com', 'users/default.png', NULL, 'G007', 'G007', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(325, NULL, 'H001', '', 'H001@example.com', 'users/default.png', NULL, 'H001', 'H001', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(326, NULL, 'H007', '', 'H007@example.com', 'users/default.png', NULL, 'H007', 'H007', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(327, NULL, 'H010', '', 'H010@example.com', 'users/default.png', NULL, 'H010', 'H010', 'X008', 'CUSTOMER', 'ACTIVE', 'REVERSE 20%', NULL, NULL, NULL, NULL, NULL),
(328, NULL, 'H011', '', 'H011@example.com', 'users/default.png', NULL, 'H011', 'H011', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(329, NULL, 'H012', '', 'H012@example.com', 'users/default.png', NULL, 'H012', 'H012', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(330, NULL, 'H015', '', 'H015@example.com', 'users/default.png', NULL, 'H015', 'H015', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(331, NULL, 'H017', '', 'H017@example.com', 'users/default.png', NULL, 'H017', 'H017', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(332, NULL, 'H019', '', 'H019@example.com', 'users/default.png', NULL, 'H019', 'H019', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(333, NULL, 'H020', '', 'H020@example.com', 'users/default.png', NULL, 'H020', 'H020', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(334, NULL, 'H021', '', 'H021@example.com', 'users/default.png', NULL, 'H021', 'H021', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(335, NULL, 'H022', '', 'H022@example.com', 'users/default.png', NULL, 'H022', 'H022', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(336, NULL, 'H032', '', 'H032@example.com', 'users/default.png', NULL, 'H032', 'H032', 'X005', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(337, NULL, 'B021', '', 'B021@example.com', 'users/default.png', NULL, 'B021', 'B021', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(338, NULL, 'J008', '', 'J008@example.com', 'users/default.png', NULL, 'J008', 'J008', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(339, NULL, 'K008', '', 'K008@example.com', 'users/default.png', NULL, 'K008', 'K008', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(340, NULL, 'K014', '', 'K014@example.com', 'users/default.png', NULL, 'K014', 'K014', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(341, NULL, 'K017', '', 'K017@example.com', 'users/default.png', NULL, 'K017', 'K017', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(342, NULL, 'L002', '', 'L002@example.com', 'users/default.png', NULL, 'L002', 'L002', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(343, NULL, 'M003', '', 'M003@example.com', 'users/default.png', NULL, 'M003', 'M003', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(344, NULL, 'M016', '', 'M016@example.com', 'users/default.png', NULL, 'M016', 'M016', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(345, NULL, 'M020', '', 'M020@example.com', 'users/default.png', NULL, 'M020', 'M020', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(346, NULL, 'M021', '', 'M021@example.com', 'users/default.png', NULL, 'M021', 'M021', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(347, NULL, 'M022', '', 'M022@example.com', 'users/default.png', NULL, 'M022', 'M022', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(348, NULL, 'M023', '', 'M023@example.com', 'users/default.png', NULL, 'M023', 'M023', 'X001', 'CUSTOMER', 'ACTIVE', '1x CUTTING', NULL, NULL, NULL, NULL, NULL),
(349, NULL, 'N027', '', 'N027@example.com', 'users/default.png', NULL, 'N027', 'N027', 'X001', 'CUSTOMER', 'ACTIVE', '1x CUTTING', NULL, NULL, NULL, NULL, NULL),
(350, NULL, 'N028', '', 'N028@example.com', 'users/default.png', NULL, 'N028', 'N028', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(351, NULL, 'N029', '', 'N029@example.com', 'users/default.png', NULL, 'N029', 'N029', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(352, NULL, 'N031', '', 'N031@example.com', 'users/default.png', NULL, 'N031', 'N031', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(353, NULL, 'N038', '', 'N038@example.com', 'users/default.png', NULL, 'N038', 'N038', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(354, NULL, 'P006', '', 'P006@example.com', 'users/default.png', NULL, 'P006', 'P006', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(355, NULL, 'P007', '', 'P007@example.com', 'users/default.png', NULL, 'P007', 'P007', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(356, NULL, 'P008', '', 'P008@example.com', 'users/default.png', NULL, 'P008', 'P008', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(357, NULL, 'P009', '', 'P009@example.com', 'users/default.png', NULL, 'P009', 'P009', 'X001', 'CUSTOMER', 'ACTIVE', '1.25x CUTTING', NULL, NULL, NULL, NULL, NULL),
(358, NULL, 'P010', '', 'P010@example.com', 'users/default.png', NULL, 'P010', 'P010', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(359, NULL, 'P013', '', 'P013@example.com', 'users/default.png', NULL, 'P013', 'P013', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(360, NULL, 'P019', '', 'P019@example.com', 'users/default.png', NULL, 'P019', 'P019', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(361, NULL, 'P023', '', 'P023@example.com', 'users/default.png', NULL, 'P023', 'P023', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(362, NULL, 'P026', '', 'P026@example.com', 'users/default.png', NULL, 'P026', 'P026', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(363, NULL, 'P031', '', 'P031@example.com', 'users/default.png', NULL, 'P031', 'P031', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(364, NULL, 'P032', '', 'P032@example.com', 'users/default.png', NULL, 'P032', 'P032', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(365, NULL, 'P034', '', 'P034@example.com', 'users/default.png', NULL, 'P034', 'P034', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(366, NULL, 'P035', '', 'P035@example.com', 'users/default.png', NULL, 'P035', 'P035', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(367, NULL, 'P036', '', 'P036@example.com', 'users/default.png', NULL, 'P036', 'P036', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(368, NULL, 'P037', '', 'P037@example.com', 'users/default.png', NULL, 'P037', 'P037', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(369, NULL, 'P042', '', 'P042@example.com', 'users/default.png', NULL, 'P042', 'P042', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(370, NULL, 'P043', '', 'P043@example.com', 'users/default.png', NULL, 'P043', 'P043', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(371, NULL, 'P045', '', 'P045@example.com', 'users/default.png', NULL, 'P045', 'P045', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(372, NULL, 'R020', '', 'R020@example.com', 'users/default.png', NULL, 'R020', 'R020', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(373, NULL, 'R022', '', 'R022@example.com', 'users/default.png', NULL, 'R022', 'R022', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(374, NULL, 'R023', '', 'R023@example.com', 'users/default.png', NULL, 'R023', 'R023', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(375, NULL, 'R024', '', 'R024@example.com', 'users/default.png', NULL, 'R024', 'R024', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(376, NULL, 'R026', '', 'R026@example.com', 'users/default.png', NULL, 'R026', 'R026', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(377, NULL, 'R027', '', 'R027@example.com', 'users/default.png', NULL, 'R027', 'R027', 'X008', 'CUSTOMER', 'ACTIVE', 'REVERSE 20%', NULL, NULL, NULL, NULL, NULL),
(378, NULL, 'R028', '', 'R028@example.com', 'users/default.png', NULL, 'R028', 'R028', 'X008', 'CUSTOMER', 'ACTIVE', 'REVERSE 100%', NULL, NULL, NULL, NULL, NULL),
(379, NULL, 'R029', '', 'R029@example.com', 'users/default.png', NULL, 'R029', 'R029', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(380, NULL, 'R030', '', 'R030@example.com', 'users/default.png', NULL, 'R030', 'R030', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(381, NULL, 'R031', '', 'R031@example.com', 'users/default.png', NULL, 'R031', 'R031', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(382, NULL, 'R032', '', 'R032@example.com', 'users/default.png', NULL, 'R032', 'R032', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(383, NULL, 'R033', '', 'R033@example.com', 'users/default.png', NULL, 'R033', 'R033', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(384, NULL, 'R034', '', 'R034@example.com', 'users/default.png', NULL, 'R034', 'R034', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(385, NULL, 'R035', '', 'R035@example.com', 'users/default.png', NULL, 'R035', 'R035', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(386, NULL, 'R036', '', 'R036@example.com', 'users/default.png', NULL, 'R036', 'R036', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(387, NULL, 'R040', '', 'R040@example.com', 'users/default.png', NULL, 'R040', 'R040', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(388, NULL, 'R100', '', 'R100@example.com', 'users/default.png', NULL, 'R100', 'R100', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(389, NULL, 'R101', '', 'R101@example.com', 'users/default.png', NULL, 'R101', 'R101', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(390, NULL, 'R102', '', 'R102@example.com', 'users/default.png', NULL, 'R102', 'R102', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(391, NULL, 'R104', '', 'R104@example.com', 'users/default.png', NULL, 'R104', 'R104', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(392, NULL, 'R105', '', 'R105@example.com', 'users/default.png', NULL, 'R105', 'R105', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(393, NULL, 'R106', '', 'R106@example.com', 'users/default.png', NULL, 'R106', 'R106', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(394, NULL, 'R107', '', 'R107@example.com', 'users/default.png', NULL, 'R107', 'R107', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(395, NULL, 'S006', '', 'S006@example.com', 'users/default.png', NULL, 'S006', 'S006', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(396, NULL, 'S008', '', 'S008@example.com', 'users/default.png', NULL, 'S008', 'S008', 'X001', 'CUSTOMER', 'ACTIVE', '2x CUTTING', NULL, NULL, NULL, NULL, NULL),
(397, NULL, 'S009', '', 'S009@example.com', 'users/default.png', NULL, 'S009', 'S009', 'X001', 'CUSTOMER', 'ACTIVE', '1x CUTTING', NULL, NULL, NULL, NULL, NULL),
(398, NULL, 'S011', '', 'S011@example.com', 'users/default.png', NULL, 'S011', 'S011', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(399, NULL, 'S012', '', 'S012@example.com', 'users/default.png', NULL, 'S012', 'S012', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(400, NULL, 'S013', '', 'S013@example.com', 'users/default.png', NULL, 'S013', 'S013', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(401, NULL, 'S014', '', 'S014@example.com', 'users/default.png', NULL, 'S014', 'S014', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(402, NULL, 'S015', '', 'S015@example.com', 'users/default.png', NULL, 'S015', 'S015', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(403, NULL, 'S016', '', 'S016@example.com', 'users/default.png', NULL, 'S016', 'S016', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(404, NULL, 'S018', '', 'S018@example.com', 'users/default.png', NULL, 'S018', 'S018', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(405, NULL, 'S019', '', 'S019@example.com', 'users/default.png', NULL, 'S019', 'S019', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(406, NULL, 'S027', '', 'S027@example.com', 'users/default.png', NULL, 'S027', 'S027', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(407, NULL, 'S028', '', 'S028@example.com', 'users/default.png', NULL, 'S028', 'S028', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(408, NULL, 'S029', '', 'S029@example.com', 'users/default.png', NULL, 'S029', 'S029', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(409, NULL, 'S030', '', 'S030@example.com', 'users/default.png', NULL, 'S030', 'S030', 'X001', 'CUSTOMER', 'ACTIVE', '1.25x CUTTING', NULL, NULL, NULL, NULL, NULL),
(410, NULL, 'S031', '', 'S031@example.com', 'users/default.png', NULL, 'S031', 'S031', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(411, NULL, 'V005', '', 'V005@example.com', 'users/default.png', NULL, 'V005', 'V005', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(412, NULL, 'V007', '', 'V007@example.com', 'users/default.png', NULL, 'V007', 'V007', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(413, NULL, 'V008', '', 'V008@example.com', 'users/default.png', NULL, 'V008', 'V008', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(414, NULL, 'V013', '', 'V013@example.com', 'users/default.png', NULL, 'V013', 'V013', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(415, NULL, 'V015', '', 'V015@example.com', 'users/default.png', NULL, 'V015', 'V015', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(416, NULL, 'V016', '', 'V016@example.com', 'users/default.png', NULL, 'V016', 'V016', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(417, NULL, 'V017', '', 'V017@example.com', 'users/default.png', NULL, 'V017', 'V017', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(418, NULL, 'V018', '', 'V018@example.com', 'users/default.png', NULL, 'V018', 'V018', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(419, NULL, 'V019', '', 'V019@example.com', 'users/default.png', NULL, 'V019', 'V019', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(420, NULL, 'V020', '', 'V020@example.com', 'users/default.png', NULL, 'V020', 'V020', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(421, NULL, 'V021', '', 'V021@example.com', 'users/default.png', NULL, 'V021', 'V021', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(422, NULL, 'V022', '', 'V022@example.com', 'users/default.png', NULL, 'V022', 'V022', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(423, NULL, 'V023', '', 'V023@example.com', 'users/default.png', NULL, 'V023', 'V023', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(424, NULL, 'V028', '', 'V028@example.com', 'users/default.png', NULL, 'V028', 'V028', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(425, NULL, 'V029', '', 'V029@example.com', 'users/default.png', NULL, 'V029', 'V029', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(426, NULL, 'V030', '', 'V030@example.com', 'users/default.png', NULL, 'V030', 'V030', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(427, NULL, 'V031', '', 'V031@example.com', 'users/default.png', NULL, 'V031', 'V031', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(428, NULL, 'V032', '', 'V032@example.com', 'users/default.png', NULL, 'V032', 'V032', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(429, NULL, 'V033', '', 'V033@example.com', 'users/default.png', NULL, 'V033', 'V033', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(430, NULL, 'V034', '', 'V034@example.com', 'users/default.png', NULL, 'V034', 'V034', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(431, NULL, 'V035', '', 'V035@example.com', 'users/default.png', NULL, 'V035', 'V035', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(432, NULL, 'V036', '', 'V036@example.com', 'users/default.png', NULL, 'V036', 'V036', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(433, NULL, 'V037', '', 'V037@example.com', 'users/default.png', NULL, 'V037', 'V037', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(434, NULL, 'V038', '', 'V038@example.com', 'users/default.png', NULL, 'V038', 'V038', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(435, NULL, 'V040', '', 'V040@example.com', 'users/default.png', NULL, 'V040', 'V040', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(436, NULL, 'V041', '', 'V041@example.com', 'users/default.png', NULL, 'V041', 'V041', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(437, NULL, 'V044', '', 'V044@example.com', 'users/default.png', NULL, 'V044', 'V044', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(438, NULL, 'V046', '', 'V046@example.com', 'users/default.png', NULL, 'V046', 'V046', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(439, NULL, 'V051', '', 'V051@example.com', 'users/default.png', NULL, 'V051', 'V051', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(440, NULL, 'V052', '', 'V052@example.com', 'users/default.png', NULL, 'V052', 'V052', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(441, NULL, 'V054', '', 'V054@example.com', 'users/default.png', NULL, 'V054', 'V054', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(442, NULL, 'V055', '', 'V055@example.com', 'users/default.png', NULL, 'V055', 'V055', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(443, NULL, 'V056', '', 'V056@example.com', 'users/default.png', NULL, 'V056', 'V056', 'X008', 'CUSTOMER', 'ACTIVE', 'REVERSE 100%', NULL, NULL, NULL, NULL, NULL),
(444, NULL, 'V057', '', 'V057@example.com', 'users/default.png', NULL, 'V057', 'V057', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(445, NULL, 'V061', '', 'V061@example.com', 'users/default.png', NULL, 'V061', 'V061', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(446, NULL, 'X001', '', 'X001@example.com', 'users/default.png', NULL, 'X001', 'X001', 'X001', 'BROKER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(447, NULL, 'X008', '', 'X008@example.com', 'users/default.png', NULL, 'X008', 'X008', 'X008', 'BROKER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(448, NULL, 'X026', '', 'X026@example.com', 'users/default.png', NULL, 'X026', 'X026', 'X001', 'BROKER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(449, NULL, 'X049', '', 'X049@example.com', 'users/default.png', NULL, 'X049', 'X049', 'X001', 'BROKER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(450, NULL, 'X053', '', 'X053@example.com', 'users/default.png', NULL, 'X053', 'X053', 'X001', 'BROKER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(451, NULL, 'X057', '', 'X057@example.com', 'users/default.png', NULL, 'X057', 'X057', 'X001', 'BROKER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(452, NULL, 'X058', '', 'X058@example.com', 'users/default.png', NULL, 'X058', 'X058', 'X001', 'BROKER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(453, NULL, 'X059', '', 'X059@example.com', 'users/default.png', NULL, 'X059', 'X059', 'X001', 'BROKER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(454, NULL, 'X060', '', 'X060@example.com', 'users/default.png', NULL, 'X060', 'X060', 'X001', 'BROKER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(455, NULL, 'X066', '', 'X066@example.com', 'users/default.png', NULL, 'X066', 'X066', 'X001', 'BROKER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(456, NULL, 'X068', '', 'X068@example.com', 'users/default.png', NULL, 'X068', 'X068', 'X001', 'BROKER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(457, NULL, 'X078', '', 'X078@example.com', 'users/default.png', NULL, 'X078', 'X078', 'X001', 'BROKER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(458, NULL, 'X080', '', 'X080@example.com', 'users/default.png', NULL, 'X080', 'X080', 'X001', 'BROKER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(459, NULL, 'X083', '', 'X083@example.com', 'users/default.png', NULL, 'X083', 'X083', 'X001', 'BROKER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(460, NULL, 'X084', '', 'X084@example.com', 'users/default.png', NULL, 'X084', 'X084', 'X001', 'BROKER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(461, NULL, 'X088', '', 'X088@example.com', 'users/default.png', NULL, 'X088', 'X088', 'X001', 'BROKER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(462, NULL, 'X089', '', 'X089@example.com', 'users/default.png', NULL, 'X089', 'X089', 'X001', 'BROKER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(463, NULL, 'X093', '', 'X093@example.com', 'users/default.png', NULL, 'X093', 'X093', 'X001', 'BROKER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(464, NULL, 'X094', '', 'X094@example.com', 'users/default.png', NULL, 'X094', 'X094', 'X001', 'BROKER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(465, NULL, 'X095', '', 'X095@example.com', 'users/default.png', NULL, 'X095', 'X095', 'X001', 'BROKER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(466, NULL, 'X096', '', 'X096@example.com', 'users/default.png', NULL, 'X096', 'X096', 'X001', 'BROKER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(467, NULL, 'X097', '', 'X097@example.com', 'users/default.png', NULL, 'X097', 'X097', 'X001', 'BROKER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(468, NULL, 'X098', '', 'X098@example.com', 'users/default.png', NULL, 'X098', 'X098', 'X001', 'BROKER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(469, NULL, 'X090', '', 'X090@example.com', 'users/default.png', NULL, 'X090', 'X090', 'X001', 'BROKER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(470, NULL, 'X100', '', 'X100@example.com', 'users/default.png', NULL, 'X100', 'X100', 'X001', 'BROKER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(471, NULL, 'X108', '', 'X108@example.com', 'users/default.png', NULL, 'X108', 'X108', 'X001', 'BROKER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(472, NULL, 'Y063', '', 'Y063@example.com', 'users/default.png', NULL, 'Y063', 'Y063', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(473, NULL, 'Z001', '', 'Z001@example.com', 'users/default.png', NULL, 'Z001', 'Z001', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(474, NULL, 'R044', '', 'R044@example.com', 'users/default.png', NULL, 'R044', 'R044', 'X001', 'CUSTOMER', 'ACTIVE', '', NULL, NULL, NULL, NULL, NULL),
(475, NULL, 'R109', '', 'R109@example.com', 'users/default.png', NULL, 'R109', 'R109', 'X008', 'CUSTOMER', 'ACTIVE', 'REVERSE 20%', NULL, NULL, NULL, NULL, NULL),
(476, NULL, 'X109', '', 'X109@example.com', 'users/default.png', NULL, 'X109', 'X109', 'X001', 'BROKER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(477, NULL, 'G008', '', 'G008@example.com', 'users/default.png', NULL, 'G008', 'G008', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(478, NULL, 'A040', '', 'A040@example.com', 'users/default.png', NULL, 'A040', 'A040', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(479, NULL, 'B022', '', 'B022@example.com', 'users/default.png', NULL, 'B022', 'B022', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(480, NULL, 'P033', '', 'P033@example.com', 'users/default.png', NULL, 'P033', 'P033', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(481, NULL, 'A039', '', 'A039@example.com', 'users/default.png', NULL, 'A039', 'A039', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(482, NULL, 'P048', '', 'P048@example.com', 'users/default.png', NULL, 'P048', 'P048', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(483, NULL, 'A006', '', 'A006@example.com', 'users/default.png', NULL, 'A006', 'A006', 'X005', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(484, NULL, 'X101', '', 'X101@example.com', 'users/default.png', NULL, 'X101', 'X101', 'X005', 'BROKER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(485, NULL, 'P047', '', 'P047@example.com', 'users/default.png', NULL, 'P047', 'P047', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(486, NULL, 'R043', '', 'R043@example.com', 'users/default.png', NULL, 'R043', 'R043', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(487, NULL, 'V062', '', 'V062@example.com', 'users/default.png', NULL, 'V062', 'V062', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(488, NULL, 'P049', '', 'P049@example.com', 'users/default.png', NULL, 'P049', 'P049', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(489, NULL, 'R110', '', 'R110@example.com', 'users/default.png', NULL, 'R110', 'R110', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(490, NULL, 'R045', '', 'R045@example.com', 'users/default.png', NULL, 'R045', 'R045', 'X008', 'CUSTOMER', 'ACTIVE', 'REVERSE 20%', NULL, NULL, NULL, NULL, NULL),
(491, NULL, 'X050', '', 'X050@example.com', 'users/default.png', NULL, 'X050', 'X050', 'X001', 'BROKER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(492, NULL, 'V064', '', 'V064@example.com', 'users/default.png', NULL, 'V064', 'V064', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(493, NULL, 'V065', '', 'V065@example.com', 'users/default.png', NULL, 'V065', 'V065', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(494, NULL, 'X005', '', 'X005@example.com', 'users/default.png', NULL, 'X005', 'X005', 'X005', '', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(495, NULL, 'X111', '', 'X111@example.com', 'users/default.png', NULL, 'X111', 'X111', 'X001', 'BROKER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(496, NULL, 'P051', '', 'P051@example.com', 'users/default.png', NULL, 'P051', 'P051', 'X001', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(497, NULL, 'X092', '', 'X092@example.com', 'users/default.png', NULL, 'X092', 'X092', 'X001', 'BROKER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(498, NULL, 'P052', '', 'P052@example.com', 'users/default.png', NULL, 'P052', 'P052', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(499, NULL, 'R046', '', 'R046@example.com', 'users/default.png', NULL, 'R046', 'R046', 'X008', 'CUSTOMER', 'ACTIVE', 'NO CUTTING', NULL, NULL, NULL, NULL, NULL),
(500, NULL, '', '', '@example.com', 'users/default.png', NULL, '', '', '', '', 'ACTIVE', '', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_category`
--

CREATE TABLE `user_category` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_category`
--

INSERT INTO `user_category` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'X0001', 'X0001', '2021-01-29 05:48:08', '2021-01-29 05:48:08'),
(2, 'X001', 'X001', '2021-02-01 05:56:43', '2021-02-01 05:56:43'),
(3, 'X005', 'X005', '2021-02-01 05:57:04', '2021-02-01 05:57:04'),
(4, 'X008', 'X008', '2021-02-01 05:57:17', '2021-02-01 05:57:17');

-- --------------------------------------------------------

--
-- Table structure for table `user_order`
--

CREATE TABLE `user_order` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `dealer_id` bigint UNSIGNED NOT NULL,
  `customer_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `scrip_id` bigint UNSIGNED NOT NULL,
  `lot_count` double NOT NULL DEFAULT '0',
  `quantity` int NOT NULL DEFAULT '0',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL,
  `cutting_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_type` int NOT NULL,
  `real_time_position` int NOT NULL,
  `rate` double(8,2) NOT NULL,
  `parent_id` int DEFAULT NULL,
  `scrip_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lot_size` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_by` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_order`
--

INSERT INTO `user_order` (`id`, `customer_id`, `dealer_id`, `customer_code`, `scrip_id`, `lot_count`, `quantity`, `note`, `status`, `cutting_type`, `order_type`, `transaction_type`, `real_time_position`, `rate`, `parent_id`, `scrip_code`, `lot_size`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 9, 4, 'S009', 1, 1, 1000, NULL, 1, 'NO CUTTING', '1', 1, 0, 12.12, NULL, '', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 9, 4, 'S009', 1, 1, 2000, NULL, 1, 'NO CUTTING', '1', 2, 1000, 12.12, NULL, '', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 8, 3, 'S009', 1, 8, 80, 'asadhggg', 1, 'NO CUTTING', '1', 2, 100, 18.00, NULL, 'AXISBANKDEC20', 1, '2021-01-08 13:12:20', '2021-01-08 13:12:20', NULL, NULL, NULL, NULL),
(4, 8, 3, 'S009', 1, 2, 20, '', 1, 'NO CUTTING', '1', 2, 20, 12.00, NULL, 'AXISBANKDEC20', 1, '2021-01-12 08:00:51', '2021-01-12 08:00:51', NULL, NULL, NULL, NULL),
(5, 8, 3, 'S009', 1, 3, 30, '', 1, 'NO CUTTING', '1', 2, 20, 12.00, NULL, 'AXISBANKDEC20', 1, '2021-01-12 08:02:38', '2021-01-12 08:02:38', NULL, NULL, NULL, NULL),
(6, 8, 3, 'S009', 1, 4, 40, '', 1, 'NO CUTTING', '1', 2, 20, 12.00, NULL, 'AXISBANKDEC20', 1, '2021-01-12 08:05:04', '2021-01-12 08:05:04', NULL, NULL, NULL, NULL),
(7, 8, 3, 'S009', 1, 2, 20, '', 1, 'NO CUTTING', '1', 2, 20, 12.00, NULL, 'AXISBANKDEC20', 1, '2021-01-12 08:06:15', '2021-01-12 08:06:15', NULL, NULL, NULL, NULL),
(8, 8, 3, 'S009', 1, 20, 200, '', 1, 'NO CUTTING', '1', 2, 20, 12.00, NULL, 'AXISBANKDEC20', 1, '2021-01-12 08:24:40', '2021-01-12 08:24:40', NULL, NULL, NULL, NULL),
(9, 8, 3, 'S009', 1, 4, 40, '', 1, 'NO CUTTING', '1', 2, 20, 123.00, NULL, 'AXISBANKDEC20', 1, '2021-01-12 11:45:54', '2021-01-12 11:45:54', NULL, NULL, NULL, NULL),
(10, 8, 3, 'S009', 1, 20, 200, 'Asdas', 2, 'NO CUTTING', '3', 2, 20, 12.00, NULL, 'AXISBANKDEC20', 1, '2021-01-13 09:30:02', '2021-01-13 09:30:02', NULL, NULL, NULL, NULL),
(11, 8, 3, 'S009', 6, 1, 100, '', 2, 'NO CUTTING', '2', 2, 2000, 12.00, NULL, 'UNIONBANKJAN21', 1, '2021-01-13 11:55:20', '2021-01-13 11:55:20', NULL, NULL, NULL, NULL),
(12, 8, 3, 'S009', 1, 12, 120, '', 1, 'NO CUTTING', '1', 2, 20, 100.00, NULL, 'AXISBANKDEC20', 1, '2021-01-13 13:31:14', '2021-01-13 13:31:14', NULL, NULL, NULL, NULL),
(13, 8, 3, 'S009', 6, 4, 400, 'Noasas', 2, 'NO CUTTING', '3', 2, 2000, 90.00, NULL, 'UNIONBANKJAN21', 1, '2021-01-13 13:32:41', '2021-01-13 13:32:41', NULL, NULL, NULL, NULL),
(14, 8, 3, 'S009', 1, 12, 120, '', 2, 'NO CUTTING', '3', 1, 20, 12.12, NULL, 'AXISBANKDEC20', 1, '2021-01-14 06:58:56', '2021-01-14 06:58:56', NULL, NULL, NULL, NULL),
(15, 8, 3, 'S009', 1, 12, 120, 'asdasd', 1, 'NO CUTTING', '1', 1, 20, 560.00, NULL, 'AXISBANKDEC20', 1, '2021-01-14 11:40:30', '2021-01-14 11:40:30', NULL, NULL, NULL, NULL),
(16, 8, 3, 'S009', 6, 2, 200, '', 2, 'NO CUTTING', 'SELL LIMIT', 1, 2000, 12.00, NULL, 'UNIONBANKJAN21', 1, '2021-01-14 11:50:45', '2021-01-14 11:50:45', NULL, NULL, NULL, NULL),
(17, 8, 3, 'S009', 1, 1, 10, '', 2, 'NO CUTTING', '3', 1, 20, 12.00, NULL, 'AXISBANKDEC20', 1, '2021-01-15 07:45:58', '2021-01-15 07:45:58', NULL, NULL, NULL, NULL),
(18, 8, 3, 'S009', 1, 2, 20, '', 2, '1X CUTTING', '1', 1, 20, 12.00, NULL, 'AXISBANKDEC20', 10, '2021-01-15 07:52:24', '2021-01-15 07:52:24', NULL, NULL, NULL, NULL),
(19, 8, 3, 'S009', 1, 10, 100, '', 1, 'NO CUTTING', '1', 1, 20, 100.00, NULL, 'AXISBANKDEC20', 1, '2021-01-15 10:38:53', '2021-01-15 10:38:53', NULL, NULL, NULL, NULL),
(20, 8, 3, 'S009', 1, 0, 5000, '', 1, 'NO CUTTING', '1', 1, 50, 50.00, NULL, 'AXISBANKDEC20', 1, '2021-01-15 12:04:52', '2021-01-15 12:04:52', NULL, NULL, NULL, NULL),
(21, 8, 3, 'S009', 1, 100, 1000, '', 1, 'NO CUTTING', '1', 2, 50, 14.00, NULL, 'AXISBANKDEC20', 1, '2021-01-15 12:17:34', '2021-01-15 12:17:34', NULL, NULL, NULL, NULL),
(22, 8, 3, 'S009', 1, 100, 1000, '', 1, 'NO CUTTING', '1', 2, 50, 16.00, NULL, 'AXISBANKDEC20', 1, '2021-01-15 12:18:45', '2021-01-15 12:18:45', NULL, NULL, NULL, NULL),
(23, 8, 3, 'S009', 1, 10, 100, 'asdasda', 1, 'NO CUTTING', '1', 1, 50, 123.00, NULL, 'AXISBANKDEC20', 1, '2021-01-15 12:22:23', '2021-01-15 12:22:23', NULL, NULL, NULL, NULL),
(24, 8, 3, 'S009', 1, 10, 100, 'asdasda', 1, 'NO CUTTING', '1', 1, 50, 123.00, NULL, 'AXISBANKDEC20', 1, '2021-01-15 12:22:34', '2021-01-15 12:22:34', NULL, NULL, NULL, NULL),
(25, 8, 3, 'S009', 1, 10, 100, 'asdasda', 1, 'NO CUTTING', '1', 1, 50, 123.00, NULL, 'AXISBANKDEC20', 1, '2021-01-15 12:23:01', '2021-01-15 12:23:01', NULL, NULL, NULL, NULL),
(26, 9, 3, 'X00009', 1, 12, 120, '', 2, '', '1', 1, 10000, 123.00, NULL, 'AXISBANKDEC20', 1, '2021-01-15 12:33:39', '2021-01-15 12:33:39', NULL, NULL, NULL, NULL),
(27, 8, 3, 'S009', 1, 1, 10, '', 1, 'NO CUTTING', '1', 1, 150, 34.00, NULL, 'AXISBANKDEC20', 1, '2021-01-15 12:42:25', '2021-01-15 12:42:25', NULL, NULL, NULL, NULL),
(28, 8, 3, 'S009', 1, 2, 20, '', 1, 'NO CUTTING', '1', 2, 160, 1200.00, NULL, 'AXISBANKDEC20', 1, '2021-01-15 12:42:36', '2021-01-20 09:25:01', NULL, NULL, NULL, NULL),
(29, 8, 3, 'S009', 8, 2, 2, '', 1, 'NO CUTTING', '1', 1, 100, 1400.00, NULL, 'LTJAN21', 1, '2021-01-20 08:11:01', '2021-01-20 08:52:40', NULL, NULL, NULL, NULL),
(30, 8, 3, 'S009', 8, 1, 1000, '', 1, 'NO CUTTING', '1', 1, 1100, 1300.00, NULL, 'LTJAN21', 1, '2021-01-20 08:13:05', '2021-01-20 08:13:05', NULL, NULL, NULL, NULL),
(31, 8, 3, 'S009', 8, 1, 1000, '', 1, 'NO CUTTING', '1', 1, 2100, 1300.00, NULL, 'LTJAN21', 1000, '2021-01-20 08:13:59', '2021-01-20 08:13:59', NULL, NULL, NULL, NULL),
(32, 8, 3, 'S009', 8, 1, 1000, 'A', 1, 'NO CUTTING', '1', 1, 3100, 1000.00, NULL, 'LTJAN21', 1000, '2021-01-21 10:04:30', '2021-01-21 10:11:30', NULL, 3, 3, NULL),
(33, 8, 3, 'S009', 1, 10, 100, '', 1, 'NO CUTTING', '1', 1, 140, 340.00, NULL, 'AXISBANKDEC20', 10, '2021-01-22 09:10:16', '2021-01-22 09:10:16', NULL, 3, NULL, NULL),
(34, 8, 3, 'S009', 1, 10, 100, '', 1, 'NO CUTTING', '1', 1, 240, 12.00, NULL, 'AXISBANKDEC20', 10, '2021-01-22 09:13:50', '2021-01-22 09:13:50', NULL, 3, NULL, NULL),
(35, 8, 3, 'S009', 1, 10, 100, '', 1, 'NO CUTTING', '1', 1, 340, 12.00, NULL, 'AXISBANKDEC20', 10, '2021-01-22 09:19:30', '2021-01-22 09:19:30', NULL, 3, NULL, NULL),
(36, 8, 3, 'S009', 1, 10, 100, '', 1, 'NO CUTTING', '1', 1, 440, 12.00, NULL, 'AXISBANKDEC20', 10, '2021-01-22 09:20:09', '2021-01-22 09:20:09', NULL, 3, NULL, NULL),
(37, 8, 3, 'S009', 1, 10, 100, '', 1, 'NO CUTTING', '1', 1, 540, 12.00, NULL, 'AXISBANKDEC20', 10, '2021-01-22 09:22:14', '2021-01-22 09:22:14', NULL, 3, NULL, NULL),
(38, 8, 3, 'S009', 1, 10, 100, '', 1, 'NO CUTTING', '1', 1, 640, 12.00, NULL, 'AXISBANKDEC20', 10, '2021-01-22 09:22:36', '2021-01-22 09:22:36', NULL, 3, NULL, NULL),
(39, 8, 3, 'S009', 1, 10, 100, '', 1, 'NO CUTTING', '1', 1, 740, 12.00, NULL, 'AXISBANKDEC20', 10, '2021-01-22 09:23:11', '2021-01-22 09:23:11', NULL, 3, NULL, NULL),
(40, 8, 3, 'S009', 1, 0, 100, '', 1, 'NO CUTTING', '1', 1, 840, 12.00, NULL, 'AXISBANKDEC20', 10, '2021-01-22 09:23:37', '2021-01-22 09:23:37', NULL, 3, NULL, NULL),
(41, 8, 3, 'S009', 1, 0, 100, '', 1, 'NO CUTTING', '1', 1, 940, 12.00, NULL, 'AXISBANKDEC20', 10, '2021-01-22 09:24:56', '2021-01-22 09:24:56', NULL, 3, NULL, NULL),
(42, 8, 3, 'S009', 1, 0, 100, '', 1, 'NO CUTTING', '1', 1, 1040, 12.00, NULL, 'AXISBANKDEC20', 10, '2021-01-22 09:26:00', '2021-01-22 09:26:00', NULL, 3, NULL, NULL),
(43, 8, 3, 'S009', 1, 0, 100, '', 1, 'NO CUTTING', '1', 1, 1140, 12.00, NULL, 'AXISBANKDEC20', 10, '2021-01-22 09:26:53', '2021-01-22 09:26:53', NULL, 3, NULL, NULL),
(44, 8, 3, 'S009', 1, 0, 100, '', 1, 'NO CUTTING', '1', 1, 1240, 12.00, NULL, 'AXISBANKDEC20', 10, '2021-01-22 09:27:17', '2021-01-22 09:27:17', NULL, 3, NULL, NULL),
(45, 8, 3, 'S009', 1, 0, 100, '', 1, 'NO CUTTING', '1', 1, 1340, 12.00, NULL, 'AXISBANKDEC20', 10, '2021-01-22 09:28:59', '2021-01-22 09:28:59', NULL, 3, NULL, NULL),
(46, 8, 3, 'S009', 1, 0, 100, '', 1, 'NO CUTTING', '1', 1, 1440, 12.00, NULL, 'AXISBANKDEC20', 10, '2021-01-22 09:30:16', '2021-01-22 09:30:16', NULL, 3, NULL, NULL),
(47, 8, 3, 'S009', 1, 0, 100, '', 1, 'NO CUTTING', '1', 1, 1440, 12.00, NULL, 'AXISBANKDEC20', 10, '2021-01-22 09:31:54', '2021-01-22 09:31:54', NULL, 3, NULL, NULL),
(48, 8, 3, 'S009', 1, 0, 100, '', 1, 'NO CUTTING', '1', 1, 1440, 12.00, NULL, 'AXISBANKDEC20', 10, '2021-01-22 09:32:16', '2021-01-22 09:32:16', NULL, 3, NULL, NULL),
(49, 13, 3, 'X00013', 1, 0, 50, NULL, 6, '', '1', 1, 0, 12.00, 48, 'AXISBANKDEC20', 10, '2021-01-22 09:32:16', '2021-01-22 09:32:16', NULL, 3, NULL, NULL),
(50, 8, 3, 'S009', 1, 2, 26, '', 1, 'NO CUTTING', '1', 1, 1540, 12.00, NULL, 'AXISBANKDEC20', 10, '2021-01-22 09:47:46', '2021-01-22 09:47:46', NULL, 3, NULL, NULL),
(51, 13, 3, 'X00013', 1, 1, 13, NULL, 6, '', '1', 1, 50, 12.00, 50, 'AXISBANKDEC20', 10, '2021-01-22 09:47:46', '2021-01-22 09:47:46', NULL, 3, NULL, NULL),
(52, 8, 3, 'S009', 1, 4, 40, '', 1, 'NO CUTTING', '1', 1, 1566, 13.00, NULL, 'AXISBANKDEC20', 10, '2021-01-22 09:50:04', '2021-01-22 11:48:29', NULL, 3, 3, NULL),
(53, 13, 3, 'X00013', 1, 2, 20, NULL, 6, '', '1', 1, 63, 13.00, 52, 'AXISBANKDEC20', 10, '2021-01-22 09:50:04', '2021-01-22 11:48:29', NULL, 3, NULL, NULL),
(54, 8, 3, 'S009', 8, 1, 1000, '', 1, 'NO CUTTING', '1', 1, 4100, 121.00, NULL, 'LTJAN21', 1000, '2021-01-25 08:31:19', '2021-01-25 08:31:19', NULL, 3, NULL, NULL),
(55, 13, 3, 'X00013', 8, 0.5, 500, NULL, 6, '', '1', 1, 0, 121.00, 54, 'LTJAN21', 1000, '2021-01-25 08:31:19', '2021-01-25 08:31:19', NULL, 3, NULL, NULL),
(56, 8, 3, 'S009', 8, 1, 1000, '', 1, 'NO CUTTING', '1', 1, 5100, 1200.00, NULL, 'LTJAN21', 1000, '2021-01-27 14:17:45', '2021-01-27 14:17:45', NULL, 3, NULL, NULL),
(57, 13, 3, 'X00013', 8, 0.5, 500, NULL, 1, '', '1', 1, 500, 1200.00, 56, 'LTJAN21', 1000, '2021-01-27 14:17:45', '2021-01-27 14:17:45', NULL, 3, NULL, NULL),
(58, 8, 3, 'S009', 8, 7, 7000, '', 1, 'NO CUTTING', '1', 2, 6100, 1000.00, NULL, 'LTJAN21', 1000, '2021-01-28 09:00:26', '2021-01-28 09:00:26', NULL, 3, NULL, NULL),
(59, 13, 3, 'X00013', 8, 3.5, 3500, NULL, 1, '', '1', 2, 1000, 1000.00, 58, 'LTJAN21', 1000, '2021-01-28 09:00:26', '2021-01-28 09:00:26', NULL, 3, NULL, NULL),
(60, 8, 3, 'S009', 8, 25, 25000, '', 4, 'NO CUTTING', '1', 1, -900, 1000.00, NULL, 'LTJAN21', 1000, '2021-01-28 09:26:02', '2021-02-01 06:53:39', '2021-02-01 06:53:39', 3, NULL, NULL),
(61, 13, 3, 'X00013', 8, 12.5, 12500, NULL, 4, '', '1', 1, -2500, 1000.00, 60, 'LTJAN21', 1000, '2021-01-28 09:26:02', '2021-02-01 06:53:39', '2021-02-01 06:53:39', 3, NULL, NULL),
(62, 8, 3, 'S009', 8, 1, 1000, '1', 4, 'NO CUTTING', '1', 1, 24100, 1000.00, NULL, 'LTJAN21', 1000, '2021-01-28 09:34:35', '2021-02-01 06:52:17', '2021-02-01 06:52:17', 3, NULL, NULL),
(63, 13, 3, 'X00013', 8, 0.5, 500, NULL, 1, '', '1', 1, 10000, 1000.00, 62, 'LTJAN21', 1000, '2021-01-28 09:34:35', '2021-01-28 09:34:35', NULL, 3, NULL, NULL),
(64, 8, 3, 'S009', 8, 1, 1000, '', 4, 'NO CUTTING', '1', 1, 25100, 1100.00, NULL, 'LTJAN21', 1000, '2021-01-28 09:55:55', '2021-02-01 06:50:57', '2021-02-01 06:50:57', 3, NULL, NULL),
(65, 13, 3, 'X00013', 8, 0.5, 500, NULL, 1, '', '1', 1, 10500, 1100.00, 64, 'LTJAN21', 1000, '2021-01-28 09:55:55', '2021-01-28 09:55:55', NULL, 3, NULL, NULL),
(66, 8, 3, 'S009', 8, 1, 1000, '', 4, 'NO CUTTING', '1', 1, 26100, 800.00, NULL, 'LTJAN21', 1000, '2021-01-28 10:13:40', '2021-02-01 06:46:29', '2021-02-01 06:46:29', 3, NULL, NULL),
(67, 13, 3, 'X00013', 8, 0.5, 500, NULL, 4, '', '1', 1, 11000, 800.00, 66, 'LTJAN21', 1000, '2021-01-28 10:13:40', '2021-02-01 06:46:29', '2021-02-01 06:46:29', 3, NULL, NULL),
(68, 8, 3, 'S009', 23, 1, 9000, 'ooiuu', 4, 'NO CUTTING', '1', 1, 0, 8000.00, NULL, 'ASHOKLEOCT20', 9000, '2021-02-01 11:07:22', '2021-02-01 06:45:00', '2021-02-01 06:45:00', 3, NULL, NULL),
(69, 13, 3, 'X00013', 23, 0.5, 4500, NULL, 1, '', '1', 1, 0, 8000.00, 68, 'ASHOKLEOCT20', 9000, '2021-02-01 11:07:22', '2021-02-01 11:07:22', NULL, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_order_broker`
--

CREATE TABLE `user_order_broker` (
  `id` bigint UNSIGNED NOT NULL,
  `broker_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `broker_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL,
  `trade_type` int NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_order_broker`
--

INSERT INTO `user_order_broker` (`id`, `broker_id`, `order_id`, `broker_code`, `quantity`, `trade_type`, `created_at`, `updated_at`) VALUES
(1, 9, 7, 'X00009', 20, 2, '2021-01-12 08:06:15', '2021-01-12 08:06:15'),
(2, 9, 8, 'X00009', 200, 2, '2021-01-12 08:24:40', '2021-01-12 08:24:40'),
(3, 9, 9, 'X00009', 40, 2, '2021-01-12 11:45:54', '2021-01-12 11:45:54'),
(4, 9, 10, 'X00009', 100, 2, '2021-01-13 09:30:02', '2021-01-13 09:30:02'),
(5, 10, 10, 'X00010', 100, 2, '2021-01-12 18:30:00', '2021-01-12 18:30:00'),
(6, 10, 11, 'X00010', 100, 2, '2021-01-13 11:55:20', '2021-01-13 11:55:20'),
(7, 9, 12, 'X00009', 120, 2, '2021-01-13 13:31:14', '2021-01-13 13:31:14'),
(8, 10, 13, 'X00010', 400, 2, '2021-01-13 13:32:41', '2021-01-13 13:32:41'),
(9, 9, 14, 'X00009', 120, 2, '2021-01-14 06:58:56', '2021-01-14 06:58:56'),
(10, 9, 15, 'X00009', 120, 2, '2021-01-14 11:40:30', '2021-01-14 11:40:30'),
(11, 10, 16, 'X00010', 200, 2, '2021-01-14 11:50:45', '2021-01-14 11:50:45'),
(12, 9, 17, 'X00009', 10, 2, '2021-01-15 07:45:58', '2021-01-15 07:45:58'),
(13, 9, 18, 'X00009', 20, 2, '2021-01-15 07:52:24', '2021-01-15 07:52:24'),
(14, 9, 19, 'X00009', 100, 2, '2021-01-15 10:38:53', '2021-01-15 10:38:53'),
(15, 9, 20, 'X00009', 4000, 2, '2021-01-15 12:04:52', '2021-01-15 12:04:52'),
(16, 10, 20, 'X00010', 1000, 2, '2021-01-15 12:04:52', '2021-01-15 12:04:52'),
(17, 9, 21, 'X00009', 50, 2, '2021-01-15 12:17:34', '2021-01-15 12:17:34'),
(18, 9, 21, 'X00009', 950, 2, '2021-01-15 12:17:34', '2021-01-15 12:17:34'),
(19, 9, 22, 'X00009', 50, 1, '2021-01-15 12:18:45', '2021-01-15 12:18:45'),
(20, 9, 22, 'X00009', 950, 2, '2021-01-15 12:18:45', '2021-01-15 12:18:45'),
(21, 9, 25, 'X00009', 100, 2, '2021-01-15 12:23:01', '2021-01-15 12:23:01'),
(22, 10, 26, 'X00010', 120, 2, '2021-01-15 12:33:39', '2021-01-15 12:33:39'),
(23, 9, 27, 'X00009', 10, 2, '2021-01-15 12:42:25', '2021-01-15 12:42:25'),
(24, 9, 28, 'X00009', 20, 1, '2021-01-15 12:42:36', '2021-01-15 12:42:36'),
(25, 11, 29, 'X00011', 1000, 2, '2021-01-20 08:11:01', '2021-01-20 08:11:01'),
(26, 11, 30, 'X00011', 1000, 2, '2021-01-20 08:13:05', '2021-01-20 08:13:05'),
(27, 11, 31, 'X00011', 1000, 2, '2021-01-20 08:13:59', '2021-01-20 08:13:59'),
(28, 11, 32, 'X00011', 1000, 2, '2021-01-21 10:04:30', '2021-01-21 10:04:30'),
(29, 9, 33, 'X00009', 100, 2, '2021-01-22 09:10:16', '2021-01-22 09:10:16'),
(30, 9, 34, 'X00009', 100, 2, '2021-01-22 09:13:50', '2021-01-22 09:13:50'),
(31, 9, 35, 'X00009', 100, 2, '2021-01-22 09:19:30', '2021-01-22 09:19:30'),
(32, 9, 36, 'X00009', 100, 2, '2021-01-22 09:20:09', '2021-01-22 09:20:09'),
(33, 9, 37, 'X00009', 100, 2, '2021-01-22 09:22:14', '2021-01-22 09:22:14'),
(34, 9, 38, 'X00009', 100, 2, '2021-01-22 09:22:36', '2021-01-22 09:22:36'),
(35, 9, 39, 'X00009', 100, 2, '2021-01-22 09:23:11', '2021-01-22 09:23:11'),
(36, 9, 40, 'X00009', 100, 2, '2021-01-22 09:23:37', '2021-01-22 09:23:37'),
(37, 9, 41, 'X00009', 100, 2, '2021-01-22 09:24:56', '2021-01-22 09:24:56'),
(38, 9, 42, 'X00009', 100, 2, '2021-01-22 09:26:00', '2021-01-22 09:26:00'),
(39, 9, 43, 'X00009', 100, 2, '2021-01-22 09:26:53', '2021-01-22 09:26:53'),
(40, 9, 44, 'X00009', 100, 2, '2021-01-22 09:27:17', '2021-01-22 09:27:17'),
(41, 9, 45, 'X00009', 100, 2, '2021-01-22 09:28:59', '2021-01-22 09:28:59'),
(42, 9, 48, 'X00009', 100, 2, '2021-01-22 09:32:16', '2021-01-22 09:32:16'),
(43, 9, 50, 'X00009', 26, 2, '2021-01-22 09:47:46', '2021-01-22 09:47:46'),
(44, 9, 52, 'X00009', 25, 2, '2021-01-22 09:50:04', '2021-01-22 09:50:04'),
(45, 11, 54, 'X00011', 1000, 2, '2021-01-25 08:31:19', '2021-01-25 08:31:19');

-- --------------------------------------------------------

--
-- Table structure for table `user_order_partner`
--

CREATE TABLE `user_order_partner` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `straight` bigint UNSIGNED DEFAULT NULL,
  `opposite` bigint UNSIGNED DEFAULT NULL,
  `straight_percentage` int NOT NULL DEFAULT '0',
  `opposite_percentage` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_order_partner`
--

INSERT INTO `user_order_partner` (`id`, `user_id`, `straight`, `opposite`, `straight_percentage`, `opposite_percentage`, `created_at`, `updated_at`) VALUES
(1, 8, 13, NULL, 50, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_order_version`
--

CREATE TABLE `user_order_version` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `dealer_id` bigint UNSIGNED NOT NULL,
  `customer_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `scrip_id` bigint UNSIGNED NOT NULL,
  `scrip_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lot_count` double NOT NULL DEFAULT '0',
  `quantity` int NOT NULL DEFAULT '0',
  `lot_size` int NOT NULL DEFAULT '1',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_type` int NOT NULL,
  `status` int NOT NULL,
  `cutting_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `real_time_position` int NOT NULL,
  `rate` double(8,2) NOT NULL,
  `parent_id` int NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_order_version`
--

INSERT INTO `user_order_version` (`id`, `customer_id`, `dealer_id`, `customer_code`, `scrip_id`, `scrip_code`, `lot_count`, `quantity`, `lot_size`, `note`, `transaction_type`, `status`, `cutting_type`, `order_type`, `real_time_position`, `rate`, `parent_id`, `deleted_at`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 8, 3, 'S009', 8, 'LTJAN21', 1, 1000, 1000, '', 1, 1, 'NO CUTTING', '1', 3100, 1000.00, 32, NULL, '2021-01-21 10:11:30', '2021-01-21 10:11:30', 3, NULL),
(2, 8, 3, 'S009', 1, 'AXISBANKDEC20', 2.5, 25, 10, '', 1, 1, 'NO CUTTING', '1', 1566, 13.00, 52, NULL, '2021-01-22 11:22:48', '2021-01-22 11:22:48', 3, NULL),
(3, 8, 3, 'S009', 1, 'AXISBANKDEC20', 3, 30, 10, '', 1, 1, 'NO CUTTING', '1', 1566, 13.00, 52, NULL, '2021-01-22 11:48:29', '2021-01-22 11:48:29', 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_scrip_limit`
--

CREATE TABLE `user_scrip_limit` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `max_lot_limit` int NOT NULL DEFAULT '100',
  `max_scrip_limit` int NOT NULL DEFAULT '20',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_scrip_limit`
--

INSERT INTO `user_scrip_limit` (`id`, `user_id`, `max_lot_limit`, `max_scrip_limit`, `created_at`, `updated_at`) VALUES
(2, 8, 100, 20, NULL, NULL),
(258, 277, 2, 20, NULL, NULL),
(259, 278, 150, 20, NULL, NULL),
(260, 279, 150, 20, NULL, NULL),
(261, 280, 150, 20, NULL, NULL),
(262, 281, 150, 20, NULL, NULL),
(263, 282, 150, 20, NULL, NULL),
(264, 283, 150, 20, NULL, NULL),
(265, 284, 150, 20, NULL, NULL),
(266, 285, 150, 20, NULL, NULL),
(267, 286, 150, 20, NULL, NULL),
(268, 287, 150, 20, NULL, NULL),
(269, 288, 150, 20, NULL, NULL),
(270, 289, 150, 20, NULL, NULL),
(271, 290, 150, 20, NULL, NULL),
(272, 291, 150, 20, NULL, NULL),
(273, 292, 150, 20, NULL, NULL),
(274, 293, 150, 20, NULL, NULL),
(275, 294, 150, 20, NULL, NULL),
(276, 295, 150, 20, NULL, NULL),
(277, 296, 150, 20, NULL, NULL),
(278, 297, 150, 20, NULL, NULL),
(279, 298, 150, 20, NULL, NULL),
(280, 299, 150, 20, NULL, NULL),
(281, 300, 150, 20, NULL, NULL),
(282, 301, 150, 20, NULL, NULL),
(283, 302, 150, 20, NULL, NULL),
(284, 303, 150, 20, NULL, NULL),
(285, 304, 150, 20, NULL, NULL),
(286, 305, 150, 20, NULL, NULL),
(287, 306, 150, 20, NULL, NULL),
(288, 307, 150, 20, NULL, NULL),
(289, 308, 150, 20, NULL, NULL),
(290, 309, 150, 20, NULL, NULL),
(291, 310, 150, 20, NULL, NULL),
(292, 311, 150, 20, NULL, NULL),
(293, 312, 150, 20, NULL, NULL),
(294, 313, 150, 20, NULL, NULL),
(295, 314, 150, 20, NULL, NULL),
(296, 315, 150, 20, NULL, NULL),
(297, 316, 150, 20, NULL, NULL),
(298, 317, 150, 20, NULL, NULL),
(299, 318, 150, 20, NULL, NULL),
(300, 319, 150, 20, NULL, NULL),
(301, 320, 150, 20, NULL, NULL),
(302, 321, 150, 20, NULL, NULL),
(303, 322, 150, 20, NULL, NULL),
(304, 323, 150, 20, NULL, NULL),
(305, 324, 150, 20, NULL, NULL),
(306, 325, 150, 20, NULL, NULL),
(307, 326, 150, 20, NULL, NULL),
(308, 327, 150, 20, NULL, NULL),
(309, 328, 150, 20, NULL, NULL),
(310, 329, 150, 20, NULL, NULL),
(311, 330, 150, 20, NULL, NULL),
(312, 331, 150, 20, NULL, NULL),
(313, 332, 150, 20, NULL, NULL),
(314, 333, 150, 20, NULL, NULL),
(315, 334, 150, 20, NULL, NULL),
(316, 335, 150, 20, NULL, NULL),
(317, 336, 150, 20, NULL, NULL),
(318, 337, 150, 20, NULL, NULL),
(319, 338, 150, 20, NULL, NULL),
(320, 339, 150, 20, NULL, NULL),
(321, 340, 150, 20, NULL, NULL),
(322, 341, 150, 20, NULL, NULL),
(323, 342, 150, 20, NULL, NULL),
(324, 343, 150, 20, NULL, NULL),
(325, 344, 150, 20, NULL, NULL),
(326, 345, 150, 20, NULL, NULL),
(327, 346, 150, 20, NULL, NULL),
(328, 347, 150, 20, NULL, NULL),
(329, 348, 150, 20, NULL, NULL),
(330, 349, 500, 20, NULL, NULL),
(331, 350, 150, 20, NULL, NULL),
(332, 351, 150, 20, NULL, NULL),
(333, 352, 150, 20, NULL, NULL),
(334, 353, 150, 20, NULL, NULL),
(335, 354, 150, 20, NULL, NULL),
(336, 355, 150, 20, NULL, NULL),
(337, 356, 150, 20, NULL, NULL),
(338, 357, 150, 20, NULL, NULL),
(339, 358, 150, 20, NULL, NULL),
(340, 359, 150, 20, NULL, NULL),
(341, 360, 150, 20, NULL, NULL),
(342, 361, 150, 20, NULL, NULL),
(343, 362, 150, 20, NULL, NULL),
(344, 363, 150, 20, NULL, NULL),
(345, 364, 150, 20, NULL, NULL),
(346, 365, 150, 20, NULL, NULL),
(347, 366, 150, 20, NULL, NULL),
(348, 367, 150, 20, NULL, NULL),
(349, 368, 150, 20, NULL, NULL),
(350, 369, 150, 20, NULL, NULL),
(351, 370, 150, 20, NULL, NULL),
(352, 371, 150, 20, NULL, NULL),
(353, 372, 150, 20, NULL, NULL),
(354, 373, 150, 20, NULL, NULL),
(355, 374, 150, 20, NULL, NULL),
(356, 375, 150, 20, NULL, NULL),
(357, 376, 150, 20, NULL, NULL),
(358, 377, 150, 20, NULL, NULL),
(359, 378, 150, 20, NULL, NULL),
(360, 379, 150, 20, NULL, NULL),
(361, 380, 150, 20, NULL, NULL),
(362, 381, 150, 20, NULL, NULL),
(363, 382, 150, 20, NULL, NULL),
(364, 383, 150, 20, NULL, NULL),
(365, 384, 150, 20, NULL, NULL),
(366, 385, 150, 20, NULL, NULL),
(367, 386, 150, 20, NULL, NULL),
(368, 387, 150, 20, NULL, NULL),
(369, 388, 150, 20, NULL, NULL),
(370, 389, 150, 20, NULL, NULL),
(371, 390, 150, 20, NULL, NULL),
(372, 391, 150, 20, NULL, NULL),
(373, 392, 150, 20, NULL, NULL),
(374, 393, 150, 20, NULL, NULL),
(375, 394, 150, 20, NULL, NULL),
(376, 395, 150, 20, NULL, NULL),
(377, 396, 500, 20, NULL, NULL),
(378, 397, 500, 20, NULL, NULL),
(379, 8, 500, 20, NULL, NULL),
(380, 398, 150, 20, NULL, NULL),
(381, 399, 150, 20, NULL, NULL),
(382, 400, 150, 20, NULL, NULL),
(383, 401, 150, 20, NULL, NULL),
(384, 402, 150, 20, NULL, NULL),
(385, 403, 150, 20, NULL, NULL),
(386, 404, 150, 20, NULL, NULL),
(387, 405, 150, 20, NULL, NULL),
(388, 406, 150, 20, NULL, NULL),
(389, 407, 150, 20, NULL, NULL),
(390, 408, 150, 20, NULL, NULL),
(391, 409, 150, 20, NULL, NULL),
(392, 410, 150, 20, NULL, NULL),
(393, 411, 150, 20, NULL, NULL),
(394, 412, 150, 20, NULL, NULL),
(395, 413, 150, 20, NULL, NULL),
(396, 414, 150, 20, NULL, NULL),
(397, 415, 150, 20, NULL, NULL),
(398, 416, 150, 20, NULL, NULL),
(399, 417, 150, 20, NULL, NULL),
(400, 418, 150, 20, NULL, NULL),
(401, 419, 150, 20, NULL, NULL),
(402, 420, 150, 20, NULL, NULL),
(403, 421, 150, 20, NULL, NULL),
(404, 422, 150, 20, NULL, NULL),
(405, 423, 150, 20, NULL, NULL),
(406, 424, 150, 20, NULL, NULL),
(407, 425, 150, 20, NULL, NULL),
(408, 426, 150, 20, NULL, NULL),
(409, 427, 150, 20, NULL, NULL),
(410, 428, 150, 20, NULL, NULL),
(411, 429, 150, 20, NULL, NULL),
(412, 430, 150, 20, NULL, NULL),
(413, 431, 150, 20, NULL, NULL),
(414, 432, 150, 20, NULL, NULL),
(415, 433, 150, 20, NULL, NULL),
(416, 434, 150, 20, NULL, NULL),
(417, 435, 150, 20, NULL, NULL),
(418, 436, 150, 20, NULL, NULL),
(419, 437, 150, 20, NULL, NULL),
(420, 438, 150, 20, NULL, NULL),
(421, 439, 150, 20, NULL, NULL),
(422, 440, 150, 20, NULL, NULL),
(423, 441, 150, 20, NULL, NULL),
(424, 442, 150, 20, NULL, NULL),
(425, 443, 150, 20, NULL, NULL),
(426, 444, 150, 20, NULL, NULL),
(427, 445, 150, 20, NULL, NULL),
(428, 446, 1000, 20, NULL, NULL),
(429, 447, 1000, 20, NULL, NULL),
(430, 448, 1000, 20, NULL, NULL),
(431, 449, 1000, 20, NULL, NULL),
(432, 450, 1000, 20, NULL, NULL),
(433, 451, 1000, 20, NULL, NULL),
(434, 452, 1000, 20, NULL, NULL),
(435, 453, 1000, 20, NULL, NULL),
(436, 454, 1000, 20, NULL, NULL),
(437, 455, 1000, 20, NULL, NULL),
(438, 456, 1000, 20, NULL, NULL),
(439, 457, 1000, 20, NULL, NULL),
(440, 458, 1000, 20, NULL, NULL),
(441, 459, 1000, 20, NULL, NULL),
(442, 460, 1000, 20, NULL, NULL),
(443, 461, 1000, 20, NULL, NULL),
(444, 462, 1000, 20, NULL, NULL),
(445, 463, 1000, 20, NULL, NULL),
(446, 464, 1000, 20, NULL, NULL),
(447, 465, 1000, 20, NULL, NULL),
(448, 466, 1000, 20, NULL, NULL),
(449, 467, 1000, 20, NULL, NULL),
(450, 468, 1000, 20, NULL, NULL),
(451, 469, 1000, 20, NULL, NULL),
(452, 470, 1000, 20, NULL, NULL),
(453, 471, 1000, 20, NULL, NULL),
(454, 472, 150, 20, NULL, NULL),
(455, 473, 150, 20, NULL, NULL),
(456, 474, 150, 20, NULL, NULL),
(457, 475, 150, 20, NULL, NULL),
(458, 476, 1000, 20, NULL, NULL),
(459, 477, 150, 20, NULL, NULL),
(460, 478, 150, 20, NULL, NULL),
(461, 479, 150, 20, NULL, NULL),
(462, 480, 150, 20, NULL, NULL),
(463, 481, 150, 20, NULL, NULL),
(464, 482, 150, 20, NULL, NULL),
(465, 483, 150, 20, NULL, NULL),
(466, 484, 1000, 20, NULL, NULL),
(467, 485, 150, 20, NULL, NULL),
(468, 486, 150, 20, NULL, NULL),
(469, 487, 150, 20, NULL, NULL),
(470, 488, 150, 20, NULL, NULL),
(471, 489, 150, 20, NULL, NULL),
(472, 490, 150, 20, NULL, NULL),
(473, 491, 1000, 20, NULL, NULL),
(474, 492, 150, 20, NULL, NULL),
(475, 493, 150, 20, NULL, NULL),
(476, 494, 1000, 20, NULL, NULL),
(477, 482, 150, 20, NULL, NULL),
(478, 495, 1000, 20, NULL, NULL),
(479, 496, 150, 20, NULL, NULL),
(480, 497, 1000, 20, NULL, NULL),
(481, 498, 150, 20, NULL, NULL),
(482, 499, 150, 20, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_stock`
--

CREATE TABLE `user_stock` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `scrip_id` bigint UNSIGNED NOT NULL,
  `quantity` int NOT NULL,
  `is_banned` tinyint(1) NOT NULL,
  `max_buy` int NOT NULL DEFAULT '0',
  `max_sell` int NOT NULL DEFAULT '0',
  `available_buy` int NOT NULL DEFAULT '0',
  `available_sell` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_stock`
--

INSERT INTO `user_stock` (`id`, `user_id`, `scrip_id`, `quantity`, `is_banned`, `max_buy`, `max_sell`, `available_buy`, `available_sell`, `created_at`, `updated_at`) VALUES
(1, 8, 1, 1591, 0, 0, 0, 1461, 20, NULL, '2021-01-22 09:50:04'),
(2, 8, 8, 27100, 0, 0, 0, 34000, 7000, NULL, '2021-01-28 10:13:40'),
(3, 8, 6, 2000, 0, 0, 0, 0, 0, NULL, NULL),
(4, 8, 7, 300, 0, 0, 0, 0, 0, NULL, NULL),
(5, 8, 9, 1000, 0, 0, 0, 0, 0, NULL, NULL),
(6, 9, 1, 10120, 0, 5000, 5000, 4000, 4000, NULL, '2021-01-15 12:33:39'),
(7, 10, 1, 5000, 0, 2500, 2500, 2000, 1500, NULL, NULL),
(8, 10, 6, 10000, 0, 5000, 5000, 5000, 5000, '2021-01-12 18:30:00', '2021-01-12 18:30:00'),
(9, 11, 8, 10000, 0, 7500, 2500, 7500, 2500, NULL, NULL),
(10, 13, 1, 76, 0, 0, 0, 0, 0, '2021-01-22 09:30:16', '2021-01-22 09:50:04'),
(11, 13, 8, 11500, 0, 0, 0, 0, 0, '2021-01-25 08:31:19', '2021-01-28 10:13:40'),
(12, 8, 23, 9000, 0, 0, 0, 9000, 0, '2021-02-01 11:07:22', '2021-02-01 11:07:22'),
(13, 13, 23, 4500, 0, 0, 0, 0, 0, '2021-02-01 11:07:22', '2021-02-01 11:07:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cutting_type`
--
ALTER TABLE `cutting_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_reply`
--
ALTER TABLE `notification_reply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notification_reply_notification_id_foreign` (`notification_id`),
  ADD KEY `notification_reply_from_user_id_foreign` (`from_user_id`),
  ADD KEY `notification_reply_to_user_id_foreign` (`to_user_id`);

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
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `preferred_broker`
--
ALTER TABLE `preferred_broker`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scrip_preferred_broker_broker_id_foreign` (`broker_id`),
  ADD KEY `scrip_preferred_broker_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `scrips`
--
ALTER TABLE `scrips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scrip_meta`
--
ALTER TABLE `scrip_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scrip_meta_scrip_id_foreign` (`scrip_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_category`
--
ALTER TABLE `user_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_order`
--
ALTER TABLE `user_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_order_scrip_id_foreign` (`scrip_id`),
  ADD KEY `customer_order_customer_id_foreign` (`customer_id`),
  ADD KEY `customer_order_dealer_id_foreign` (`dealer_id`);

--
-- Indexes for table `user_order_broker`
--
ALTER TABLE `user_order_broker`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_order_broker_broker_id_foreign` (`broker_id`),
  ADD KEY `user_order_broker_order_id_foreign` (`order_id`);

--
-- Indexes for table `user_order_partner`
--
ALTER TABLE `user_order_partner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_order_partner_user_id_foreign` (`user_id`),
  ADD KEY `user_order_partner_straight_foreign` (`straight`),
  ADD KEY `user_order_partner_opposite_foreign` (`opposite`);

--
-- Indexes for table `user_order_version`
--
ALTER TABLE `user_order_version`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_order_version_scrip_id_foreign` (`scrip_id`),
  ADD KEY `user_order_version_customer_id_foreign` (`customer_id`),
  ADD KEY `user_order_version_dealer_id_foreign` (`dealer_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Indexes for table `user_scrip_limit`
--
ALTER TABLE `user_scrip_limit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_scrip_limit_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_stock`
--
ALTER TABLE `user_stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_stock_user_id_foreign` (`user_id`),
  ADD KEY `user_stock_scrip_id_foreign` (`scrip_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cutting_type`
--
ALTER TABLE `cutting_type`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification_reply`
--
ALTER TABLE `notification_reply`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `preferred_broker`
--
ALTER TABLE `preferred_broker`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `scrips`
--
ALTER TABLE `scrips`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT for table `scrip_meta`
--
ALTER TABLE `scrip_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=532;

--
-- AUTO_INCREMENT for table `user_category`
--
ALTER TABLE `user_category`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_order`
--
ALTER TABLE `user_order`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `user_order_broker`
--
ALTER TABLE `user_order_broker`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `user_order_partner`
--
ALTER TABLE `user_order_partner`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_order_version`
--
ALTER TABLE `user_order_version`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_scrip_limit`
--
ALTER TABLE `user_scrip_limit`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=513;

--
-- AUTO_INCREMENT for table `user_stock`
--
ALTER TABLE `user_stock`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notification_reply`
--
ALTER TABLE `notification_reply`
  ADD CONSTRAINT `notification_reply_from_user_id_foreign` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `notification_reply_notification_id_foreign` FOREIGN KEY (`notification_id`) REFERENCES `notification` (`id`),
  ADD CONSTRAINT `notification_reply_to_user_id_foreign` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `preferred_broker`
--
ALTER TABLE `preferred_broker`
  ADD CONSTRAINT `scrip_preferred_broker_broker_id_foreign` FOREIGN KEY (`broker_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `scrip_preferred_broker_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `scrip_meta`
--
ALTER TABLE `scrip_meta`
  ADD CONSTRAINT `scrip_meta_scrip_id_foreign` FOREIGN KEY (`scrip_id`) REFERENCES `scrips` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_order`
--
ALTER TABLE `user_order`
  ADD CONSTRAINT `customer_order_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `customer_order_dealer_id_foreign` FOREIGN KEY (`dealer_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `customer_order_scrip_id_foreign` FOREIGN KEY (`scrip_id`) REFERENCES `scrips` (`id`);

--
-- Constraints for table `user_order_broker`
--
ALTER TABLE `user_order_broker`
  ADD CONSTRAINT `user_order_broker_broker_id_foreign` FOREIGN KEY (`broker_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_order_broker_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `user_order` (`id`);

--
-- Constraints for table `user_order_partner`
--
ALTER TABLE `user_order_partner`
  ADD CONSTRAINT `user_order_partner_opposite_foreign` FOREIGN KEY (`opposite`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_order_partner_straight_foreign` FOREIGN KEY (`straight`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_order_partner_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_order_version`
--
ALTER TABLE `user_order_version`
  ADD CONSTRAINT `user_order_version_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_order_version_dealer_id_foreign` FOREIGN KEY (`dealer_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_order_version_scrip_id_foreign` FOREIGN KEY (`scrip_id`) REFERENCES `scrips` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_scrip_limit`
--
ALTER TABLE `user_scrip_limit`
  ADD CONSTRAINT `user_scrip_limit_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_stock`
--
ALTER TABLE `user_stock`
  ADD CONSTRAINT `user_stock_scrip_id_foreign` FOREIGN KEY (`scrip_id`) REFERENCES `scrips` (`id`),
  ADD CONSTRAINT `user_stock_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
