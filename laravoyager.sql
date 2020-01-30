-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for laravoyager
CREATE DATABASE IF NOT EXISTS `laravoyager` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `laravoyager`;

-- Dumping structure for table laravoyager.data_rows
CREATE TABLE IF NOT EXISTS `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
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
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravoyager.data_rows: ~34 rows (approximately)
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
	(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
	(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
	(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
	(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
	(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
	(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
	(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
	(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
	(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{"model":"TCG\\\\Voyager\\\\Models\\\\Role","table":"roles","type":"belongsTo","column":"role_id","key":"id","label":"display_name","pivot_table":"roles","pivot":0}', 10),
	(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{"model":"TCG\\\\Voyager\\\\Models\\\\Role","table":"roles","type":"belongsToMany","column":"id","key":"id","label":"display_name","pivot_table":"user_roles","pivot":"1","taggable":"0"}', 11),
	(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
	(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
	(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
	(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
	(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
	(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
	(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
	(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
	(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
	(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
	(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
	(22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
	(23, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
	(24, 4, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
	(25, 7, 'id', 'hidden', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
	(26, 7, 'body', 'text', 'Body', 0, 1, 1, 1, 1, 1, '{}', 2),
	(27, 7, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
	(28, 7, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 4),
	(29, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
	(30, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
	(31, 8, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
	(32, 8, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 4),
	(33, 8, 'progression', 'text', 'Progression', 1, 1, 1, 1, 1, 1, '{}', 5),
	(34, 8, 'emaginproject_id', 'number', 'Emaginproject Id', 0, 1, 1, 1, 1, 1, '{}', 3),
	(35, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
	(36, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
	(37, 8, 'projectmodule_belongsto_emaginproject_relationship', 'relationship', 'emaginprojects', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Emaginproject","table":"emaginprojects","type":"belongsTo","column":"emaginproject_id","key":"id","label":"name","pivot_table":"data_rows","pivot":"0","taggable":"0"}', 2),
	(38, 7, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{}', 7);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;

-- Dumping structure for table laravoyager.data_types
CREATE TABLE IF NOT EXISTS `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravoyager.data_types: ~5 rows (approximately)
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
	(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2019-10-29 11:10:01', '2019-10-29 11:10:01'),
	(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-10-29 11:10:01', '2019-10-29 11:10:01'),
	(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-10-29 11:10:01', '2019-10-29 11:10:01'),
	(4, 'projects', '/projects', 'Project', 'Projects', NULL, 'App\\Project', NULL, NULL, 'projects table', 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"desc","default_search_key":null}', '2019-11-07 12:24:23', '2019-11-07 12:24:23'),
	(7, 'emaginprojects', 'emaginprojects', 'Emaginproject', 'Emaginprojects', NULL, 'App\\Emaginproject', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}', '2019-11-07 12:31:19', '2019-11-07 14:40:24'),
	(8, 'projectmodules', 'projectmodules', 'Projectmodule', 'Projectmodules', NULL, 'App\\Projectmodule', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}', '2019-11-07 12:48:52', '2019-11-07 13:07:33');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;

-- Dumping structure for table laravoyager.emaginprojects
CREATE TABLE IF NOT EXISTS `emaginprojects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `body` text COLLATE utf8mb4_unicode_ci,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravoyager.emaginprojects: ~9 rows (approximately)
/*!40000 ALTER TABLE `emaginprojects` DISABLE KEYS */;
INSERT INTO `emaginprojects` (`id`, `body`, `name`, `image`, `created_at`, `updated_at`, `link`) VALUES
	(1, 'Sofa laravel project', 'SOFA', 'emaginprojects\\November2019\\aqVdgVEYmhUji1blufCy.jpg', '2019-11-07 12:41:00', '2019-11-07 16:22:17', 'http://sofa.ma/'),
	(2, 'Showing progression of current emagin projects', 'eMAGIN-Projects', 'emaginprojects\\November2019\\uubLd8q4lp9gZNBA27u6.jpg', '2019-11-07 13:09:35', '2019-11-07 13:09:35', NULL),
	(3, 'Koonoozy', 'Koonoozy', 'emaginprojects\\November2019\\BMPegMa3MkOt7C1vxska.jpg', '2019-11-07 13:29:00', '2019-11-07 14:41:23', 'http://koonoozy.com/fr'),
	(4, 'Mouvizy site de demenagement en ligne', 'Mouvizy', 'emaginprojects\\November2019\\BJZykIu4m08NG33i1fys.jpg', '2019-11-07 14:44:00', '2019-11-07 16:22:32', 'http://mouvizy.ma/'),
	(5, 'Pralu', 'Pralu', 'emaginprojects\\November2019\\ewwY9mUCJHjzi1e0wEVi.jpg', '2019-11-07 16:58:00', '2019-11-08 12:23:17', 'Pralu.ma'),
	(6, 'Bareagroup', 'Bareagroup', NULL, '2019-11-07 17:08:14', '2019-11-07 17:08:14', 'Bareagroup.ma'),
	(7, 'Nextpower', 'Nextpower', NULL, '2019-11-07 17:08:31', '2019-11-07 17:08:31', 'Nextpower.ma'),
	(8, 'Caiseazy', 'Caiseazy', NULL, '2019-11-07 17:08:46', '2019-11-07 17:08:46', 'Caiseazy.ma'),
	(9, 'Caisseazy', 'Caisseazy', NULL, '2019-11-07 17:08:57', '2019-11-07 17:08:57', 'Caisseazy.ma'),
	(10, 'Sansooraty', 'Sansooraty', 'emaginprojects\\November2019\\YXtX0Ah9E5iDT8cPWTA5.jpg', '2019-11-07 17:10:02', '2019-11-07 17:10:02', 'http://site.sansooraty.com/fr/');
/*!40000 ALTER TABLE `emaginprojects` ENABLE KEYS */;

-- Dumping structure for table laravoyager.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravoyager.failed_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table laravoyager.menus
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravoyager.menus: ~0 rows (approximately)
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'admin', '2019-10-29 11:10:01', '2019-10-29 11:10:01');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;

-- Dumping structure for table laravoyager.menu_items
CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravoyager.menu_items: ~13 rows (approximately)
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
	(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-10-29 11:10:01', '2019-10-29 11:10:01', 'voyager.dashboard', NULL),
	(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2019-10-29 11:10:01', '2019-10-29 11:21:42', 'voyager.media.index', NULL),
	(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2019-10-29 11:10:01', '2019-10-29 11:10:01', 'voyager.users.index', NULL),
	(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2019-10-29 11:10:01', '2019-10-29 11:10:01', 'voyager.roles.index', NULL),
	(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 5, '2019-10-29 11:10:01', '2019-10-29 11:21:42', NULL, NULL),
	(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2019-10-29 11:10:01', '2019-10-29 11:22:14', 'voyager.menus.index', NULL),
	(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2019-10-29 11:10:01', '2019-10-29 11:22:14', 'voyager.database.index', NULL),
	(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2019-10-29 11:10:01', '2019-10-29 11:21:45', 'voyager.compass.index', NULL),
	(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2019-10-29 11:10:01', '2019-10-29 11:21:45', 'voyager.bread.index', NULL),
	(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 6, '2019-10-29 11:10:01', '2019-10-29 11:21:42', 'voyager.settings.index', NULL),
	(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2019-10-29 11:10:01', '2019-10-29 11:21:45', 'voyager.hooks', NULL),
	(13, 1, 'Emaginprojects', '', '_self', NULL, NULL, NULL, 8, '2019-11-07 12:31:19', '2019-11-07 12:31:19', 'voyager.emaginprojects.index', NULL),
	(15, 1, 'Projectmodules', '', '_self', NULL, NULL, NULL, 9, '2019-11-07 12:48:52', '2019-11-07 12:48:52', 'voyager.projectmodules.index', NULL);
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;

-- Dumping structure for table laravoyager.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravoyager.migrations: ~23 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2016_01_01_000000_add_voyager_user_fields', 1),
	(4, '2016_01_01_000000_create_data_types_table', 1),
	(5, '2016_05_19_173453_create_menu_table', 1),
	(6, '2016_10_21_190000_create_roles_table', 1),
	(7, '2016_10_21_190000_create_settings_table', 1),
	(8, '2016_11_30_135954_create_permission_table', 1),
	(9, '2016_11_30_141208_create_permission_role_table', 1),
	(10, '2016_12_26_201236_data_types__add__server_side', 1),
	(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
	(12, '2017_01_14_005015_create_translations_table', 1),
	(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
	(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
	(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
	(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
	(17, '2017_08_05_000000_add_group_to_settings_table', 1),
	(18, '2017_11_26_013050_add_user_role_relationship', 1),
	(19, '2017_11_26_015000_create_user_roles_table', 1),
	(20, '2018_03_11_000000_add_user_settings', 1),
	(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
	(22, '2018_03_16_000000_make_settings_value_nullable', 1),
	(23, '2019_08_19_000000_create_failed_jobs_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table laravoyager.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravoyager.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table laravoyager.permissions
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravoyager.permissions: ~36 rows (approximately)
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
	(1, 'browse_admin', NULL, '2019-10-29 11:10:01', '2019-10-29 11:10:01'),
	(2, 'browse_bread', NULL, '2019-10-29 11:10:01', '2019-10-29 11:10:01'),
	(3, 'browse_database', NULL, '2019-10-29 11:10:01', '2019-10-29 11:10:01'),
	(4, 'browse_media', NULL, '2019-10-29 11:10:01', '2019-10-29 11:10:01'),
	(5, 'browse_compass', NULL, '2019-10-29 11:10:01', '2019-10-29 11:10:01'),
	(6, 'browse_menus', 'menus', '2019-10-29 11:10:01', '2019-10-29 11:10:01'),
	(7, 'read_menus', 'menus', '2019-10-29 11:10:01', '2019-10-29 11:10:01'),
	(8, 'edit_menus', 'menus', '2019-10-29 11:10:01', '2019-10-29 11:10:01'),
	(9, 'add_menus', 'menus', '2019-10-29 11:10:01', '2019-10-29 11:10:01'),
	(10, 'delete_menus', 'menus', '2019-10-29 11:10:01', '2019-10-29 11:10:01'),
	(11, 'browse_roles', 'roles', '2019-10-29 11:10:01', '2019-10-29 11:10:01'),
	(12, 'read_roles', 'roles', '2019-10-29 11:10:01', '2019-10-29 11:10:01'),
	(13, 'edit_roles', 'roles', '2019-10-29 11:10:01', '2019-10-29 11:10:01'),
	(14, 'add_roles', 'roles', '2019-10-29 11:10:01', '2019-10-29 11:10:01'),
	(15, 'delete_roles', 'roles', '2019-10-29 11:10:01', '2019-10-29 11:10:01'),
	(16, 'browse_users', 'users', '2019-10-29 11:10:01', '2019-10-29 11:10:01'),
	(17, 'read_users', 'users', '2019-10-29 11:10:01', '2019-10-29 11:10:01'),
	(18, 'edit_users', 'users', '2019-10-29 11:10:01', '2019-10-29 11:10:01'),
	(19, 'add_users', 'users', '2019-10-29 11:10:01', '2019-10-29 11:10:01'),
	(20, 'delete_users', 'users', '2019-10-29 11:10:01', '2019-10-29 11:10:01'),
	(21, 'browse_settings', 'settings', '2019-10-29 11:10:01', '2019-10-29 11:10:01'),
	(22, 'read_settings', 'settings', '2019-10-29 11:10:01', '2019-10-29 11:10:01'),
	(23, 'edit_settings', 'settings', '2019-10-29 11:10:01', '2019-10-29 11:10:01'),
	(24, 'add_settings', 'settings', '2019-10-29 11:10:01', '2019-10-29 11:10:01'),
	(25, 'delete_settings', 'settings', '2019-10-29 11:10:01', '2019-10-29 11:10:01'),
	(26, 'browse_hooks', NULL, '2019-10-29 11:10:01', '2019-10-29 11:10:01'),
	(27, 'browse_projects', 'projects', '2019-11-07 12:24:23', '2019-11-07 12:24:23'),
	(28, 'read_projects', 'projects', '2019-11-07 12:24:23', '2019-11-07 12:24:23'),
	(29, 'edit_projects', 'projects', '2019-11-07 12:24:23', '2019-11-07 12:24:23'),
	(30, 'add_projects', 'projects', '2019-11-07 12:24:23', '2019-11-07 12:24:23'),
	(31, 'delete_projects', 'projects', '2019-11-07 12:24:23', '2019-11-07 12:24:23'),
	(32, 'browse_emaginprojects', 'emaginprojects', '2019-11-07 12:31:19', '2019-11-07 12:31:19'),
	(33, 'read_emaginprojects', 'emaginprojects', '2019-11-07 12:31:19', '2019-11-07 12:31:19'),
	(34, 'edit_emaginprojects', 'emaginprojects', '2019-11-07 12:31:19', '2019-11-07 12:31:19'),
	(35, 'add_emaginprojects', 'emaginprojects', '2019-11-07 12:31:19', '2019-11-07 12:31:19'),
	(36, 'delete_emaginprojects', 'emaginprojects', '2019-11-07 12:31:19', '2019-11-07 12:31:19'),
	(37, 'browse_projectmodules', 'projectmodules', '2019-11-07 12:48:52', '2019-11-07 12:48:52'),
	(38, 'read_projectmodules', 'projectmodules', '2019-11-07 12:48:52', '2019-11-07 12:48:52'),
	(39, 'edit_projectmodules', 'projectmodules', '2019-11-07 12:48:52', '2019-11-07 12:48:52'),
	(40, 'add_projectmodules', 'projectmodules', '2019-11-07 12:48:52', '2019-11-07 12:48:52'),
	(41, 'delete_projectmodules', 'projectmodules', '2019-11-07 12:48:52', '2019-11-07 12:48:52');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- Dumping structure for table laravoyager.permission_role
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravoyager.permission_role: ~36 rows (approximately)
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
	(1, 1),
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
	(17, 1),
	(18, 1),
	(19, 1),
	(20, 1),
	(21, 1),
	(22, 1),
	(23, 1),
	(24, 1),
	(25, 1),
	(26, 1),
	(27, 1),
	(28, 1),
	(29, 1),
	(30, 1),
	(31, 1),
	(32, 1),
	(33, 1),
	(34, 1),
	(35, 1),
	(36, 1),
	(37, 1),
	(38, 1),
	(39, 1),
	(40, 1),
	(41, 1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;

-- Dumping structure for table laravoyager.projectmodules
CREATE TABLE IF NOT EXISTS `projectmodules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `progression` int(11) NOT NULL,
  `emaginproject_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravoyager.projectmodules: ~21 rows (approximately)
/*!40000 ALTER TABLE `projectmodules` DISABLE KEYS */;
INSERT INTO `projectmodules` (`id`, `name`, `progression`, `emaginproject_id`, `created_at`, `updated_at`) VALUES
	(1, 'Design', 80, 1, '2019-11-07 12:50:00', '2019-11-07 16:23:44'),
	(2, 'Developpement', 65, 1, '2019-11-07 12:53:26', '2019-11-07 12:53:26'),
	(3, 'Developpement', 10, 2, '2019-11-07 13:10:04', '2019-11-07 13:10:04'),
	(4, 'Design', 10, 2, '2019-11-07 13:28:00', '2019-11-07 16:23:36'),
	(5, 'Developpement', 85, 3, '2019-11-07 16:22:59', '2019-11-07 16:22:59'),
	(6, 'Design', 89, 3, '2019-11-07 16:23:16', '2019-11-07 16:23:16'),
	(7, 'Design', 95, 4, '2019-11-07 16:24:03', '2019-11-07 16:24:03'),
	(8, 'Developpement', 78, 4, '2019-11-07 16:24:22', '2019-11-07 16:24:22'),
	(9, 'Design', 98, 10, '2019-11-07 17:18:04', '2019-11-07 17:18:04'),
	(10, 'Developpement', 77, 10, '2019-11-07 17:18:19', '2019-11-07 17:18:19'),
	(11, 'Design', 89, 9, '2019-11-07 17:18:30', '2019-11-07 17:18:30'),
	(12, 'Developpement', 100, 9, '2019-11-07 17:18:40', '2019-11-07 17:18:40'),
	(13, 'Design', 50, 8, '2019-11-07 17:18:49', '2019-11-07 17:18:49'),
	(14, 'Developpement', 50, 8, '2019-11-07 17:18:58', '2019-11-07 17:18:58'),
	(15, 'Design', 10, 7, '2019-11-07 17:19:14', '2019-11-07 17:19:14'),
	(16, 'Developpement', 56, 7, '2019-11-07 17:19:24', '2019-11-07 17:19:24'),
	(17, 'Design', 100, 6, '2019-11-07 17:19:33', '2019-11-07 17:19:33'),
	(18, 'Developpement', 100, 6, '2019-11-07 17:19:43', '2019-11-07 17:19:43'),
	(19, 'Conception', 89, 5, '2019-11-07 17:20:01', '2019-11-07 17:20:01'),
	(20, 'Design', 30, 5, '2019-11-07 17:20:14', '2019-11-07 17:20:14'),
	(22, 'Conception', 100, 10, '2019-11-07 17:21:00', '2019-11-07 17:21:51');
/*!40000 ALTER TABLE `projectmodules` ENABLE KEYS */;

-- Dumping structure for table laravoyager.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravoyager.roles: ~2 rows (approximately)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'Administrator', '2019-10-29 11:10:01', '2019-10-29 11:10:01'),
	(2, 'user', 'Normal User', '2019-10-29 11:10:01', '2019-10-29 11:10:01');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Dumping structure for table laravoyager.settings
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravoyager.settings: ~10 rows (approximately)
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
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
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

-- Dumping structure for table laravoyager.translations
CREATE TABLE IF NOT EXISTS `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravoyager.translations: ~0 rows (approximately)
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;

-- Dumping structure for table laravoyager.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravoyager.users: ~2 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Imad LASRI', 'imadlasri@hotmail.Fr', 'users/default.png', NULL, '$2y$10$iwLjBPCV29C.0euXScs4d.KBsXh0vDXWTB9ag1yQ/SKTu/1oMFNHO', 'snnfxn0CynThH6HciRxtJlnuAZ6vA5VRh5jLCYKNQkbUw8gzx0Q0oXxeOviP', NULL, '2019-10-29 11:11:15', '2019-10-29 11:11:36'),
	(2, 2, 'user', 'user@emagin.ma', 'users/default.png', NULL, '$2y$10$0zTa4SwTOy9.kZYPcJekK.XvZXR6Qqcuf4yHJYQ7FdGyZzuC.b8ZK', NULL, NULL, '2019-11-07 14:24:16', '2019-11-07 14:24:16');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table laravoyager.user_roles
CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravoyager.user_roles: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
