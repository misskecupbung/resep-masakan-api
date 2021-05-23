-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.39-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             9.2.0.4947
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for laravel-react-resep-makanan
CREATE DATABASE IF NOT EXISTS `freedbtech_resepmasakan` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `freedbtech_resepmasakan`;


-- Dumping structure for table laravel-react-resep-makanan.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table laravel-react-resep-makanan.categories: ~2 rows (approximately)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(22, 'Soup', '2020-02-18 13:38:15', '2020-02-18 13:38:15'),
	(23, 'Soto', '2020-02-18 13:55:06', '2020-02-18 13:55:06'),
	(24, 'Nasi Goreng', '2020-02-18 14:06:30', '2020-02-18 14:10:39');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;


-- Dumping structure for table laravel-react-resep-makanan.ingredients
CREATE TABLE IF NOT EXISTS `ingredients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table laravel-react-resep-makanan.ingredients: ~32 rows (approximately)
/*!40000 ALTER TABLE `ingredients` DISABLE KEYS */;
INSERT INTO `ingredients` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'Jahe', '2020-01-14 08:02:05', '2020-02-18 10:04:16'),
	(2, 'Kunyit', '2020-01-14 08:02:18', '2020-02-18 10:04:06'),
	(3, 'Lengkuas', '2020-01-14 08:02:25', '2020-02-18 10:03:59'),
	(4, 'Gula Pasir', '2020-02-18 10:03:44', '2020-02-18 10:03:44'),
	(5, 'Garam', '2020-02-18 10:04:26', '2020-02-18 10:04:26'),
	(6, 'Daun Pandan', '2020-02-18 10:04:40', '2020-02-18 10:04:40'),
	(7, 'Kacang Hijau', '2020-02-18 10:04:54', '2020-02-18 10:04:54'),
	(8, 'Air', '2020-02-18 10:05:15', '2020-02-18 10:05:15'),
	(9, 'Susu', '2020-02-18 10:05:34', '2020-02-18 10:05:34'),
	(10, 'Maizena', '2020-02-18 10:05:46', '2020-02-18 10:05:46'),
	(11, 'Nasi', '2020-02-18 13:14:34', '2020-02-18 13:14:34'),
	(12, 'Serai', '2020-02-18 13:14:59', '2020-02-18 13:14:59'),
	(13, 'Daun Salam', '2020-02-18 13:15:11', '2020-02-18 13:15:11'),
	(14, 'Air', '2020-02-18 13:15:39', '2020-02-18 13:15:39'),
	(15, 'Bawang Merah', '2020-02-18 13:15:58', '2020-02-18 13:15:58'),
	(16, 'Bawang Putih', '2020-02-18 13:16:18', '2020-02-18 13:16:18'),
	(17, 'Kecap Asin', '2020-02-18 13:17:00', '2020-02-18 13:17:00'),
	(18, 'Kecap Manis', '2020-02-18 13:17:09', '2020-02-18 13:17:09'),
	(19, 'Kerupuk', '2020-02-18 13:17:19', '2020-02-18 13:17:19'),
	(20, 'Jagung', '2020-02-18 13:18:28', '2020-02-18 13:18:28'),
	(21, 'Daging Ayam', '2020-02-18 13:18:43', '2020-02-18 13:18:43'),
	(22, 'Santan', '2020-02-18 13:18:51', '2020-02-18 13:18:51'),
	(23, 'Jamur Kancing', '2020-02-18 13:36:45', '2020-02-18 13:36:45'),
	(24, 'Kentang', '2020-02-18 13:36:56', '2020-02-18 13:36:56'),
	(25, 'Brokoli', '2020-02-18 13:37:04', '2020-02-18 13:37:04'),
	(26, 'Cabe Rawit', '2020-02-18 13:37:21', '2020-02-18 13:37:21'),
	(27, 'Seledri', '2020-02-18 13:37:30', '2020-02-18 13:37:30'),
	(28, 'Daun Bawang', '2020-02-18 13:37:41', '2020-02-18 13:37:41'),
	(29, 'Tomat', '2020-02-18 13:37:50', '2020-02-18 13:37:50'),
	(30, 'Telur', '2020-02-18 13:46:40', '2020-02-18 13:46:40'),
	(31, 'Daging Sapi', '2020-02-18 13:51:19', '2020-02-18 13:51:19'),
	(32, 'Terasi Udang', '2020-02-18 14:07:56', '2020-02-18 14:07:56'),
	(33, 'Merica', '2020-02-18 14:08:40', '2020-02-18 14:08:40'),
	(34, 'Cabai', '2020-02-18 14:10:09', '2020-02-18 14:10:09'),
	(35, 'Daun Jeruk', '2020-02-19 04:23:53', '2020-02-19 04:23:53');
/*!40000 ALTER TABLE `ingredients` ENABLE KEYS */;


-- Dumping structure for table laravel-react-resep-makanan.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table laravel-react-resep-makanan.migrations: ~7 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2020_01_13_063657_create_permission_tables', 1),
	(4, '2020_01_13_064639_create_categories_table', 2),
	(5, '2020_01_13_064742_create_ingredients_table', 2),
	(6, '2020_01_13_064804_create_recipes_table', 2),
	(7, '2020_01_14_073618_create_recipe_ingridient_table', 3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;


-- Dumping structure for table laravel-react-resep-makanan.model_has_permissions
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table laravel-react-resep-makanan.model_has_permissions: ~0 rows (approximately)
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;


-- Dumping structure for table laravel-react-resep-makanan.model_has_roles
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table laravel-react-resep-makanan.model_has_roles: ~2 rows (approximately)
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
	(6, 'App\\User', 7),
	(8, 'App\\User', 8);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;


-- Dumping structure for table laravel-react-resep-makanan.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table laravel-react-resep-makanan.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;


-- Dumping structure for table laravel-react-resep-makanan.permissions
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table laravel-react-resep-makanan.permissions: ~4 rows (approximately)
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(2, 'users_manage', 'api', '2020-01-13 08:43:44', '2020-01-13 08:43:44'),
	(3, 'ingridient_manage', 'api', '2020-01-13 08:43:56', '2020-01-13 08:43:56'),
	(4, 'recipe_manage', 'api', '2020-01-13 08:44:23', '2020-01-13 08:44:23'),
	(5, 'category_manage', 'api', '2020-01-13 08:46:57', '2020-01-13 08:46:57');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;


-- Dumping structure for table laravel-react-resep-makanan.recipes
CREATE TABLE IF NOT EXISTS `recipes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `step` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table laravel-react-resep-makanan.recipes: ~9 rows (approximately)
/*!40000 ALTER TABLE `recipes` DISABLE KEYS */;
INSERT INTO `recipes` (`id`, `category_id`, `name`, `image`, `step`, `created_at`, `updated_at`) VALUES
	(32, 22, 'Soup Sum Sum Sapi', '1582033270_sop-sum-sum-sapi-foto-resep-utama.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugiat, eos vel officiis suscipit, asperiores voluptatem recusandae incidunt cumque, autem voluptas adipisci culpa tenetur minus nemo quasi. Inventore quos qui laborum, hic minima ipsa ex. Ea repellendus maiores labore eius officia cum necessitatibus culpa dicta hic asperiores minima numquam cumque magni dolorem, doloremque placeat vero, reprehenderit fuga porro doloribus unde praesentium facere dolores aliquid! Totam unde eos aut a aliquam rerum eligendi hic amet, reiciendis, expedita quidem blanditiis nam animi facere ea tempore laboriosam ex, deserunt ad vero, quaerat voluptates doloribus fuga. Eos libero labore dignissimos quo repellendus, nesciunt accusantium pariatur voluptatum atque voluptates laboriosam. Error quaerat, dolorum repellendus cum reiciendis consequatur fugit explicabo earum sit. Dolores maiores nemo, delectus debitis, accusamus placeat consequatur. Eligendi eum deserunt id, sed officia nulla iusto placeat atque. Vel facere maxime accusantium labore est veniam.', '2020-02-18 13:41:10', '2020-02-18 13:41:10'),
	(33, 22, 'Soup Makaroni Ayam', '1582033433_116-sup-makaroni-ayam-foto-resep-utama.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugiat, eos vel officiis suscipit, asperiores voluptatem recusandae incidunt cumque, autem voluptas adipisci culpa tenetur minus nemo quasi. Inventore quos qui laborum, hic minima ipsa ex. Ea repellendus maiores labore eius officia cum necessitatibus culpa dicta hic asperiores minima numquam cumque magni dolorem, doloremque placeat vero, reprehenderit fuga porro doloribus unde praesentium facere dolores aliquid! Totam unde eos aut a aliquam rerum eligendi hic amet, reiciendis, expedita quidem blanditiis nam animi facere ea tempore laboriosam ex, deserunt ad vero, quaerat voluptates doloribus fuga. Eos libero labore dignissimos quo repellendus, nesciunt accusantium pariatur voluptatum atque voluptates laboriosam. Error quaerat, dolorum repellendus cum reiciendis consequatur fugit explicabo earum sit. Dolores maiores nemo, delectus debitis, accusamus placeat consequatur. Eligendi eum deserunt id, sed officia nulla iusto placeat atque. Vel facere maxime accusantium labore est veniam.', '2020-02-18 13:43:53', '2020-02-18 13:43:53'),
	(34, 22, 'Sup Telur Tomat', '1582033739_sup-telur-tomat-foto-resep-utama.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugiat, eos vel officiis suscipit, asperiores voluptatem recusandae incidunt cumque, autem voluptas adipisci culpa tenetur minus nemo quasi. Inventore quos qui laborum, hic minima ipsa ex. Ea repellendus maiores labore eius officia cum necessitatibus culpa dicta hic asperiores minima numquam cumque magni dolorem, doloremque placeat vero, reprehenderit fuga porro doloribus unde praesentium facere dolores aliquid! Totam unde eos aut a aliquam rerum eligendi hic amet, reiciendis, expedita quidem blanditiis nam animi facere ea tempore laboriosam ex, deserunt ad vero, quaerat voluptates doloribus fuga. Eos libero labore dignissimos quo repellendus, nesciunt accusantium pariatur voluptatum atque voluptates laboriosam. Error quaerat, dolorum repellendus cum reiciendis consequatur fugit explicabo earum sit. Dolores maiores nemo, delectus debitis, accusamus placeat consequatur. Eligendi eum deserunt id, sed officia nulla iusto placeat atque. Vel facere maxime accusantium labore est veniam.', '2020-02-18 13:49:00', '2020-02-18 13:49:00'),
	(35, 23, 'Soto Daging', '1582034297_soto-daging-foto-resep-utama.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugiat, eos vel officiis suscipit, asperiores voluptatem recusandae incidunt cumque, autem voluptas adipisci culpa tenetur minus nemo quasi. Inventore quos qui laborum, hic minima ipsa ex. Ea repellendus maiores labore eius officia cum necessitatibus culpa dicta hic asperiores minima numquam cumque magni dolorem, doloremque placeat vero, reprehenderit fuga porro doloribus unde praesentium facere dolores aliquid! Totam unde eos aut a aliquam rerum eligendi hic amet, reiciendis, expedita quidem blanditiis nam animi facere ea tempore laboriosam ex, deserunt ad vero, quaerat voluptates doloribus fuga. Eos libero labore dignissimos quo repellendus, nesciunt accusantium pariatur voluptatum atque voluptates laboriosam. Error quaerat, dolorum repellendus cum reiciendis consequatur fugit explicabo earum sit. Dolores maiores nemo, delectus debitis, accusamus placeat consequatur. Eligendi eum deserunt id, sed officia nulla iusto placeat atque. Vel facere maxime accusantium labore est veniam.', '2020-02-18 13:58:17', '2020-02-18 13:58:17'),
	(36, 23, 'Soto ayam', '1582034520_soto-ayam-foto-resep-utama.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugiat, eos vel officiis suscipit, asperiores voluptatem recusandae incidunt cumque, autem voluptas adipisci culpa tenetur minus nemo quasi. Inventore quos qui laborum, hic minima ipsa ex. Ea repellendus maiores labore eius officia cum necessitatibus culpa dicta hic asperiores minima numquam cumque magni dolorem, doloremque placeat vero, reprehenderit fuga porro doloribus unde praesentium facere dolores aliquid! Totam unde eos aut a aliquam rerum eligendi hic amet, reiciendis, expedita quidem blanditiis nam animi facere ea tempore laboriosam ex, deserunt ad vero, quaerat voluptates doloribus fuga. Eos libero labore dignissimos quo repellendus, nesciunt accusantium pariatur voluptatum atque voluptates laboriosam. Error quaerat, dolorum repellendus cum reiciendis consequatur fugit explicabo earum sit. Dolores maiores nemo, delectus debitis, accusamus placeat consequatur. Eligendi eum deserunt id, sed officia nulla iusto placeat atque. Vel facere maxime accusantium labore est veniam.', '2020-02-18 14:02:00', '2020-02-18 14:02:00'),
	(37, 23, 'Soto mie bogor', '1582034699_soto-mie-bogor-foto-resep-utama.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugiat, eos vel officiis suscipit, asperiores voluptatem recusandae incidunt cumque, autem voluptas adipisci culpa tenetur minus nemo quasi. Inventore quos qui laborum, hic minima ipsa ex. Ea repellendus maiores labore eius officia cum necessitatibus culpa dicta hic asperiores minima numquam cumque magni dolorem, doloremque placeat vero, reprehenderit fuga porro doloribus unde praesentium facere dolores aliquid! Totam unde eos aut a aliquam rerum eligendi hic amet, reiciendis, expedita quidem blanditiis nam animi facere ea tempore laboriosam ex, deserunt ad vero, quaerat voluptates doloribus fuga. Eos libero labore dignissimos quo repellendus, nesciunt accusantium pariatur voluptatum atque voluptates laboriosam. Error quaerat, dolorum repellendus cum reiciendis consequatur fugit explicabo earum sit. Dolores maiores nemo, delectus debitis, accusamus placeat consequatur. Eligendi eum deserunt id, sed officia nulla iusto placeat atque. Vel facere maxime accusantium labore est veniam.', '2020-02-18 14:04:59', '2020-02-18 14:04:59'),
	(38, 24, 'Nasi Goreng Terasi', '1582035135_nasi-goreng-terasi-foto-resep-utama.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugiat, eos vel officiis suscipit, asperiores voluptatem recusandae incidunt cumque, autem voluptas adipisci culpa tenetur minus nemo quasi. Inventore quos qui laborum, hic minima ipsa ex. Ea repellendus maiores labore eius officia cum necessitatibus culpa dicta hic asperiores minima numquam cumque magni dolorem, doloremque placeat vero, reprehenderit fuga porro doloribus unde praesentium facere dolores aliquid! Totam unde eos aut a aliquam rerum eligendi hic amet, reiciendis, expedita quidem blanditiis nam animi facere ea tempore laboriosam ex, deserunt ad vero, quaerat voluptates doloribus fuga. Eos libero labore dignissimos quo repellendus, nesciunt accusantium pariatur voluptatum atque voluptates laboriosam. Error quaerat, dolorum repellendus cum reiciendis consequatur fugit explicabo earum sit. Dolores maiores nemo, delectus debitis, accusamus placeat consequatur. Eligendi eum deserunt id, sed officia nulla iusto placeat atque. Vel facere maxime accusantium labore est veniam.', '2020-02-18 14:12:15', '2020-02-18 14:12:15'),
	(39, 24, 'Nasi Goreng Daun Jeruk', '1582086347_nasi-goreng-daun-jeruk-foto-resep-utama.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugiat, eos vel officiis suscipit, asperiores voluptatem recusandae incidunt cumque, autem voluptas adipisci culpa tenetur minus nemo quasi. Inventore quos qui laborum, hic minima ipsa ex. Ea repellendus maiores labore eius officia cum necessitatibus culpa dicta hic asperiores minima numquam cumque magni dolorem, doloremque placeat vero, reprehenderit fuga porro doloribus unde praesentium facere dolores aliquid! Totam unde eos aut a aliquam rerum eligendi hic amet, reiciendis, expedita quidem blanditiis nam animi facere ea tempore laboriosam ex, deserunt ad vero, quaerat voluptates doloribus fuga. Eos libero labore dignissimos quo repellendus, nesciunt accusantium pariatur voluptatum atque voluptates laboriosam. Error quaerat, dolorum repellendus cum reiciendis consequatur fugit explicabo earum sit. Dolores maiores nemo, delectus debitis, accusamus placeat consequatur. Eligendi eum deserunt id, sed officia nulla iusto placeat atque. Vel facere maxime accusantium labore est veniam.', '2020-02-19 04:25:48', '2020-02-19 04:25:48'),
	(40, 24, 'Nasi goreng kuning', '1582086472_nasi-goreng-kuning-foto-resep-utama.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugiat, eos vel officiis suscipit, asperiores voluptatem recusandae incidunt cumque, autem voluptas adipisci culpa tenetur minus nemo quasi. Inventore quos qui laborum, hic minima ipsa ex. Ea repellendus maiores labore eius officia cum necessitatibus culpa dicta hic asperiores minima numquam cumque magni dolorem, doloremque placeat vero, reprehenderit fuga porro doloribus unde praesentium facere dolores aliquid! Totam unde eos aut a aliquam rerum eligendi hic amet, reiciendis, expedita quidem blanditiis nam animi facere ea tempore laboriosam ex, deserunt ad vero, quaerat voluptates doloribus fuga. Eos libero labore dignissimos quo repellendus, nesciunt accusantium pariatur voluptatum atque voluptates laboriosam. Error quaerat, dolorum repellendus cum reiciendis consequatur fugit explicabo earum sit. Dolores maiores nemo, delectus debitis, accusamus placeat consequatur. Eligendi eum deserunt id, sed officia nulla iusto placeat atque. Vel facere maxime accusantium labore est veniam.', '2020-02-19 04:27:52', '2020-02-19 04:27:52');
/*!40000 ALTER TABLE `recipes` ENABLE KEYS */;


-- Dumping structure for table laravel-react-resep-makanan.recipe_ingredient
CREATE TABLE IF NOT EXISTS `recipe_ingredient` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `recipe_id` int(10) unsigned NOT NULL,
  `ingredient_id` int(10) unsigned NOT NULL,
  `quantity` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table laravel-react-resep-makanan.recipe_ingredient: ~36 rows (approximately)
/*!40000 ALTER TABLE `recipe_ingredient` DISABLE KEYS */;
INSERT INTO `recipe_ingredient` (`id`, `recipe_id`, `ingredient_id`, `quantity`, `created_at`, `updated_at`) VALUES
	(45, 32, 23, '3 Buah', '2020-02-18 13:41:10', '2020-02-18 13:41:10'),
	(46, 32, 25, '2 Buah', '2020-02-18 13:41:10', '2020-02-18 13:41:10'),
	(47, 32, 24, '4 Buah', '2020-02-18 13:41:10', '2020-02-18 13:41:10'),
	(48, 32, 29, '3 Buah', '2020-02-18 13:41:10', '2020-02-18 13:41:10'),
	(49, 33, 21, '500 gr', '2020-02-18 13:43:53', '2020-02-18 13:43:53'),
	(50, 33, 14, '1 Panci', '2020-02-18 13:43:53', '2020-02-18 13:43:53'),
	(51, 33, 16, '7 Siung', '2020-02-18 13:43:53', '2020-02-18 13:43:53'),
	(52, 33, 24, '2 Buah', '2020-02-18 13:43:53', '2020-02-18 13:43:53'),
	(53, 34, 30, '2 Buah', '2020-02-18 13:49:00', '2020-02-18 13:49:00'),
	(54, 34, 29, '1 Buah', '2020-02-18 13:49:00', '2020-02-18 13:49:00'),
	(55, 34, 15, '3 Buah', '2020-02-18 13:49:00', '2020-02-18 13:49:00'),
	(56, 34, 5, '1/2 Sendok', '2020-02-18 13:49:00', '2020-02-18 13:49:00'),
	(57, 35, 31, '1 Kg ', '2020-02-18 13:58:17', '2020-02-18 13:58:17'),
	(58, 35, 1, '3 Ruas', '2020-02-18 13:58:17', '2020-02-18 13:58:17'),
	(59, 35, 13, '4', '2020-02-18 13:58:17', '2020-02-18 13:58:17'),
	(60, 35, 12, '2 Buah ', '2020-02-18 13:58:17', '2020-02-18 13:58:17'),
	(61, 35, 14, '1 Panci', '2020-02-18 13:58:17', '2020-02-18 13:58:17'),
	(62, 36, 14, '4 Liter', '2020-02-18 14:02:00', '2020-02-18 14:02:00'),
	(63, 36, 21, '500 Gram', '2020-02-18 14:02:00', '2020-02-18 14:02:00'),
	(64, 36, 5, 'Secukupnya', '2020-02-18 14:02:00', '2020-02-18 14:02:00'),
	(65, 36, 2, '2 cm', '2020-02-18 14:02:00', '2020-02-18 14:02:00'),
	(66, 37, 31, '1/2 Kg', '2020-02-18 14:04:59', '2020-02-18 14:04:59'),
	(67, 37, 14, '1 Liter', '2020-02-18 14:05:00', '2020-02-18 14:05:00'),
	(68, 37, 29, '2 Buah', '2020-02-18 14:05:00', '2020-02-18 14:05:00'),
	(69, 37, 19, 'Secukupnya', '2020-02-18 14:05:00', '2020-02-18 14:05:00'),
	(70, 38, 11, '2 Piring', '2020-02-18 14:12:15', '2020-02-18 14:12:15'),
	(71, 38, 15, '4 Siung', '2020-02-18 14:12:15', '2020-02-18 14:12:15'),
	(72, 38, 30, '2 Buah', '2020-02-18 14:12:15', '2020-02-18 14:12:15'),
	(73, 38, 19, 'Secukupnya', '2020-02-18 14:12:15', '2020-02-18 14:12:15'),
	(74, 39, 11, '1 Piring', '2020-02-19 04:25:48', '2020-02-19 04:25:48'),
	(75, 39, 30, '1 Butir', '2020-02-19 04:25:48', '2020-02-19 04:25:48'),
	(76, 39, 35, '2 Lembar', '2020-02-19 04:25:48', '2020-02-19 04:25:48'),
	(77, 40, 15, '3 Siung', '2020-02-19 04:27:52', '2020-02-19 04:27:52'),
	(78, 40, 11, 'Secukupnya', '2020-02-19 04:27:52', '2020-02-19 04:27:52'),
	(79, 40, 16, '2 Siung', '2020-02-19 04:27:53', '2020-02-19 04:27:53'),
	(80, 40, 5, 'Secukupnya', '2020-02-19 04:27:53', '2020-02-19 04:27:53');
/*!40000 ALTER TABLE `recipe_ingredient` ENABLE KEYS */;


-- Dumping structure for table laravel-react-resep-makanan.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table laravel-react-resep-makanan.roles: ~2 rows (approximately)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(6, 'admin', 'api', '2020-01-13 09:49:15', '2020-01-13 09:49:15'),
	(8, 'staff', 'api', '2020-01-13 09:52:01', '2020-01-13 09:52:01');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;


-- Dumping structure for table laravel-react-resep-makanan.role_has_permissions
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table laravel-react-resep-makanan.role_has_permissions: ~5 rows (approximately)
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(2, 6),
	(3, 6),
	(4, 6),
	(4, 8),
	(5, 6);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;


-- Dumping structure for table laravel-react-resep-makanan.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table laravel-react-resep-makanan.users: ~2 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(7, 'admin', 'admin@email.com', '$2y$10$6pFzXpFvJ7NWN2kjtaNdg.AT8h1eRaXc6YB10Pv4o98kJrmYeqw0K', NULL, '2020-01-13 13:03:31', '2020-02-19 07:02:06'),
	(8, 'staff', 'staff@email.com', '$2y$10$5zsIl60ln.zBC6URqlMTnu/axSDjiII20xjSZE7JKAnK3ZskkxnYm', NULL, '2020-01-13 13:04:09', '2020-02-19 07:02:24');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
