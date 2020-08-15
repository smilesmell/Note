/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1_3306
Source Server Version : 50505
Source Host           : 127.0.0.1:3306
Source Database       : auth

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-08-15 17:14:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `failed_jobs`
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `user_id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `type` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `department` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `date` date DEFAULT NULL,
  `reason` varchar(255) CHARACTER SET utf8 DEFAULT '',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', '123', '123', '123', '2001-01-20', '11');
INSERT INTO `message` VALUES ('2', 'echo', '', '程序部', null, '无');
INSERT INTO `message` VALUES ('3', 'echo', '', '程序部', null, '无');

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2016_06_01_000001_create_oauth_auth_codes_table', '1');
INSERT INTO `migrations` VALUES ('4', '2016_06_01_000002_create_oauth_access_tokens_table', '1');
INSERT INTO `migrations` VALUES ('5', '2016_06_01_000003_create_oauth_refresh_tokens_table', '1');
INSERT INTO `migrations` VALUES ('6', '2016_06_01_000004_create_oauth_clients_table', '1');
INSERT INTO `migrations` VALUES ('7', '2016_06_01_000005_create_oauth_personal_access_clients_table', '1');
INSERT INTO `migrations` VALUES ('8', '2019_08_19_000000_create_failed_jobs_table', '1');

-- ----------------------------
-- Table structure for `oauth_access_tokens`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `name` varchar(199) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------
INSERT INTO `oauth_access_tokens` VALUES ('563b21b095e81e495b9b9e686a91c6e77dd1ac7c143c76bd3d5f91ff8851c0cb15e51d59bfc139ac', '2', '1', 'MyApp', '[]', '0', '2020-08-11 11:57:59', '2020-08-11 11:57:59', '2021-08-11 11:57:59');
INSERT INTO `oauth_access_tokens` VALUES ('c39a112ba6785890c48008977756db9b74ed5bb2c7986190f01b43fc878f481c10a51798a7a8af4d', '3', '1', 'MyApp', '[]', '0', '2020-08-11 12:25:31', '2020-08-11 12:25:31', '2021-08-11 12:25:31');
INSERT INTO `oauth_access_tokens` VALUES ('81035a7c5f8feb43047ddf3b431fc96e8120158a7dbd91e72ea90613a094dc875da07b9b2087d3db', '4', '1', 'MyApp', '[]', '0', '2020-08-15 06:41:44', '2020-08-15 06:41:44', '2021-08-15 06:41:44');
INSERT INTO `oauth_access_tokens` VALUES ('ad986643690726608ea11818f6e2b519830afa8d4d9d40e809813c29cd494e23922a6bcde52c7976', '4', '1', 'API', '[]', '0', '2020-08-15 06:42:52', '2020-08-15 06:42:52', '2021-08-15 06:42:52');
INSERT INTO `oauth_access_tokens` VALUES ('6c790794bc127b5a0652b2231a879e8eb67ca88fc06000aeb17b675fde10220f8bee8d249e639887', '4', '1', 'API', '[]', '0', '2020-08-15 06:44:11', '2020-08-15 06:44:11', '2021-08-15 06:44:11');
INSERT INTO `oauth_access_tokens` VALUES ('90fbe17c49330f3e2a01a941105cfcce63b7b0e0651e77a944f88001626f50bebd69af89ce256e46', '4', '1', 'API', '[]', '0', '2020-08-15 06:45:25', '2020-08-15 06:45:25', '2021-08-15 06:45:25');
INSERT INTO `oauth_access_tokens` VALUES ('aa0034d636accc72051195785bbaeea2a98dbf7396d0f234711efe2f64438952ca681b2da7dbd29b', '4', '1', 'API', '[]', '0', '2020-08-15 06:46:51', '2020-08-15 06:46:51', '2021-08-15 06:46:51');
INSERT INTO `oauth_access_tokens` VALUES ('9fcedfb61f76e1a56d81b595e544af76e02ef2895ab8b03d50d567945a926e1044cd4fc6b4af9050', '4', '1', 'API', '[]', '0', '2020-08-15 06:47:45', '2020-08-15 06:47:45', '2021-08-15 06:47:45');
INSERT INTO `oauth_access_tokens` VALUES ('9384b66d782102a2408c399cea6193075fa6d1165a197c072c7198deaabda9ef3e8dfbc128efe8e8', '4', '1', 'API', '[]', '0', '2020-08-15 06:48:11', '2020-08-15 06:48:11', '2021-08-15 06:48:11');

-- ----------------------------
-- Table structure for `oauth_auth_codes`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_auth_codes
-- ----------------------------

-- ----------------------------
-- Table structure for `oauth_clients`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------
INSERT INTO `oauth_clients` VALUES ('1', null, 'Laravel Personal Access Client', 'vTMFT5bNiphOftKcilVdcm9Wvh20qYwKXaU9tPl8', 'http://localhost', '1', '0', '0', '2020-08-11 11:54:06', '2020-08-11 11:54:06');
INSERT INTO `oauth_clients` VALUES ('2', null, 'Laravel Password Grant Client', 'KWR5dBQLVUY1z2cfuMxWk2MZ6F3VFUwlX89vT3YP', 'http://localhost', '0', '1', '0', '2020-08-11 11:54:06', '2020-08-11 11:54:06');

-- ----------------------------
-- Table structure for `oauth_personal_access_clients`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------
INSERT INTO `oauth_personal_access_clients` VALUES ('1', '1', '2020-08-11 11:54:06', '2020-08-11 11:54:06');

-- ----------------------------
-- Table structure for `oauth_refresh_tokens`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_refresh_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for `password_resets`
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Echo', '$2y$10$AJtV0rSi8XinfY7D0xCrKOe3DHSmvmdgHf7yXnnsiQlA/g4YBF4py', null, '2020-08-11 11:52:54', '2020-08-11 11:52:54', '0');
INSERT INTO `users` VALUES ('2', 'hh', '$2y$10$q.fN1OMHwndh5p0Yygyu1O6ee2jjVJBI2dVXZYnznXfYHgggnfxZW', null, '2020-08-11 11:57:59', '2020-08-11 11:57:59', '0');
INSERT INTO `users` VALUES ('3', 'user', '$2y$10$ztx4DwmSWCFco/WY0FRGLemYlbWzhMfSiuKctrgxfKOP.jRT4pzDa', null, '2020-08-11 12:25:31', '2020-08-11 12:25:31', '0');
INSERT INTO `users` VALUES ('4', '123', '$2y$10$L1PJTaeuVYInDWl5NTE3oOgvFQvirIKeZOMxWwSGrCWl2x0lZ.BFK', null, '2020-08-15 06:41:44', '2020-08-15 06:41:44', '1');
