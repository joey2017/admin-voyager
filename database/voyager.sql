/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : 127.0.0.1
 Source Database       : voyager

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : utf-8

 Date: 11/13/2019 00:38:06 AM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `browse_histories`
-- ----------------------------
DROP TABLE IF EXISTS `browse_histories`;
CREATE TABLE `browse_histories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `browse_histories_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
--  Records of `browse_histories`
-- ----------------------------
BEGIN;
INSERT INTO `browse_histories` VALUES ('1', '1', '1', '0', '2019-11-12 21:17:18', '2019-11-12 21:17:18');
COMMIT;

-- ----------------------------
--  Table structure for `data_rows`
-- ----------------------------
DROP TABLE IF EXISTS `data_rows`;
CREATE TABLE `data_rows` (
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
--  Records of `data_rows`
-- ----------------------------
BEGIN;
INSERT INTO `data_rows` VALUES ('1', '1', 'id', 'number', 'ID', '1', '0', '0', '0', '0', '0', null, '1'), ('2', '1', 'name', 'text', '名称', '1', '1', '1', '1', '1', '1', null, '2'), ('3', '1', 'email', 'text', 'Email', '1', '1', '1', '1', '1', '1', null, '3'), ('4', '1', 'password', 'password', '密码', '1', '0', '0', '1', '1', '0', null, '4'), ('5', '1', 'remember_token', 'text', '记住登录', '0', '0', '0', '0', '0', '0', null, '5'), ('6', '1', 'created_at', 'timestamp', '创建于', '0', '1', '1', '0', '0', '0', null, '6'), ('7', '1', 'updated_at', 'timestamp', '创建于', '0', '0', '0', '0', '0', '0', null, '7'), ('8', '1', 'avatar', 'image', '头像', '0', '1', '1', '1', '1', '1', null, '8'), ('9', '1', 'user_belongsto_role_relationship', 'relationship', '角色', '0', '1', '1', '1', '1', '0', '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', '10'), ('10', '1', 'user_belongstomany_role_relationship', 'relationship', 'Roles', '0', '1', '1', '1', '1', '0', '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', '11'), ('11', '1', 'settings', 'hidden', 'Settings', '0', '0', '0', '0', '0', '0', null, '12'), ('12', '2', 'id', 'number', 'ID', '1', '0', '0', '0', '0', '0', null, '1'), ('13', '2', 'name', 'text', '名称', '1', '1', '1', '1', '1', '1', null, '2'), ('14', '2', 'created_at', 'timestamp', '创建于', '0', '0', '0', '0', '0', '0', null, '3'), ('15', '2', 'updated_at', 'timestamp', '创建于', '0', '0', '0', '0', '0', '0', null, '4'), ('16', '3', 'id', 'number', 'ID', '1', '0', '0', '0', '0', '0', null, '1'), ('17', '3', 'name', 'text', '名称', '1', '1', '1', '1', '1', '1', null, '2'), ('18', '3', 'created_at', 'timestamp', '创建于', '0', '0', '0', '0', '0', '0', null, '3'), ('19', '3', 'updated_at', 'timestamp', '创建于', '0', '0', '0', '0', '0', '0', null, '4'), ('20', '3', 'display_name', 'text', '显示名称', '1', '1', '1', '1', '1', '1', null, '5'), ('21', '1', 'role_id', 'text', '角色', '1', '1', '1', '1', '1', '1', null, '9'), ('22', '5', 'id', 'text', 'Id', '1', '1', '1', '1', '0', '1', '{}', '1'), ('23', '5', 'user_id', 'number', '用户id', '0', '1', '1', '1', '1', '1', '{}', '2'), ('24', '5', 'article_id', 'number', '文章id', '0', '1', '1', '1', '1', '1', '{}', '3'), ('25', '5', 'status', 'number', '状态', '1', '1', '1', '1', '1', '1', '{}', '4'), ('26', '5', 'created_at', 'timestamp', '创建时间', '0', '1', '1', '1', '0', '1', '{}', '5'), ('27', '5', 'updated_at', 'timestamp', '更新时间', '0', '0', '0', '0', '0', '0', '{}', '6'), ('28', '5', 'browse_history_belongsto_user_relationship', 'relationship', 'users', '0', '1', '1', '1', '1', '1', '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"browse_histories\",\"pivot\":\"0\",\"taggable\":\"0\"}', '7');
COMMIT;

-- ----------------------------
--  Table structure for `data_types`
-- ----------------------------
DROP TABLE IF EXISTS `data_types`;
CREATE TABLE `data_types` (
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
--  Records of `data_types`
-- ----------------------------
BEGIN;
INSERT INTO `data_types` VALUES ('1', 'users', 'users', '用户', '用户', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', '1', '0', null, '2019-11-12 20:53:29', '2019-11-12 20:53:29'), ('2', 'menus', 'menus', '菜单', '菜单', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', null, '', '', '1', '0', null, '2019-11-12 20:53:30', '2019-11-12 20:53:30'), ('3', 'roles', 'roles', '角色', '角色', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', null, '', '', '1', '0', null, '2019-11-12 20:53:30', '2019-11-12 20:53:30'), ('4', 'browse_history', 'browse-history', 'Browse History', 'Browse Histories', 'voyager-browser', 'App\\BrowseHistory', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-11-12 21:05:01', '2019-11-12 21:09:34'), ('5', 'browse_histories', 'browse-histories', '浏览记录', '浏览记录', 'voyager-browser', 'App\\BrowseHistory', null, null, null, '1', '1', '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-11-12 21:11:46', '2019-11-12 21:45:14');
COMMIT;

-- ----------------------------
--  Table structure for `failed_jobs`
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
--  Table structure for `menu_items`
-- ----------------------------
DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE `menu_items` (
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
--  Records of `menu_items`
-- ----------------------------
BEGIN;
INSERT INTO `menu_items` VALUES ('1', '1', '控制面板', '', '_self', 'voyager-boat', null, null, '1', '2019-11-12 20:53:30', '2019-11-12 20:53:30', 'voyager.dashboard', null), ('2', '1', '媒体', '', '_self', 'voyager-images', null, null, '5', '2019-11-12 20:53:30', '2019-11-12 20:53:30', 'voyager.media.index', null), ('3', '1', '用户', '', '_self', 'voyager-person', null, null, '3', '2019-11-12 20:53:30', '2019-11-12 20:53:30', 'voyager.users.index', null), ('4', '1', '角色', '', '_self', 'voyager-lock', null, null, '2', '2019-11-12 20:53:30', '2019-11-12 20:53:30', 'voyager.roles.index', null), ('5', '1', '工具', '', '_self', 'voyager-tools', null, null, '9', '2019-11-12 20:53:30', '2019-11-12 20:53:30', null, null), ('6', '1', '菜单管理', '', '_self', 'voyager-list', null, '5', '10', '2019-11-12 20:53:30', '2019-11-12 20:53:30', 'voyager.menus.index', null), ('7', '1', '数据库', '', '_self', 'voyager-data', null, '5', '11', '2019-11-12 20:53:30', '2019-11-12 20:53:30', 'voyager.database.index', null), ('8', '1', '指南针', '', '_self', 'voyager-compass', null, '5', '12', '2019-11-12 20:53:30', '2019-11-12 20:53:30', 'voyager.compass.index', null), ('9', '1', 'bread', '', '_self', 'voyager-bread', null, '5', '13', '2019-11-12 20:53:30', '2019-11-12 20:53:30', 'voyager.bread.index', null), ('10', '1', '设置', '', '_self', 'voyager-settings', null, null, '14', '2019-11-12 20:53:30', '2019-11-12 20:53:30', 'voyager.settings.index', null), ('11', '1', 'Hooks', '', '_self', 'voyager-hook', null, null, '13', '2019-11-12 20:53:30', '2019-11-12 20:53:30', 'voyager.hooks', null), ('13', '1', '浏览记录', '', '_self', 'voyager-browser', '#000000', null, '16', '2019-11-12 21:11:46', '2019-11-12 21:16:07', 'voyager.browse-histories.index', 'null');
COMMIT;

-- ----------------------------
--  Table structure for `menus`
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
--  Records of `menus`
-- ----------------------------
BEGIN;
INSERT INTO `menus` VALUES ('1', 'admin', '2019-11-12 20:53:30', '2019-11-12 20:53:30');
COMMIT;

-- ----------------------------
--  Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
--  Records of `migrations`
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1'), ('2', '2014_10_12_100000_create_password_resets_table', '1'), ('3', '2016_01_01_000000_add_voyager_user_fields', '1'), ('4', '2016_01_01_000000_create_data_types_table', '1'), ('5', '2016_05_19_173453_create_menu_table', '1'), ('6', '2016_10_21_190000_create_roles_table', '1'), ('7', '2016_10_21_190000_create_settings_table', '1'), ('8', '2016_11_30_135954_create_permission_table', '1'), ('9', '2016_11_30_141208_create_permission_role_table', '1'), ('10', '2016_12_26_201236_data_types__add__server_side', '1'), ('11', '2017_01_13_000000_add_route_to_menu_items_table', '1'), ('12', '2017_01_14_005015_create_translations_table', '1'), ('13', '2017_01_15_000000_make_table_name_nullable_in_permissions_table', '1'), ('14', '2017_03_06_000000_add_controller_to_data_types_table', '1'), ('15', '2017_04_21_000000_add_order_to_data_rows_table', '1'), ('16', '2017_07_05_210000_add_policyname_to_data_types_table', '1'), ('17', '2017_08_05_000000_add_group_to_settings_table', '1'), ('18', '2017_11_26_013050_add_user_role_relationship', '1'), ('19', '2017_11_26_015000_create_user_roles_table', '1'), ('20', '2018_03_11_000000_add_user_settings', '1'), ('21', '2018_03_14_000000_add_details_to_data_types_table', '1'), ('22', '2018_03_16_000000_make_settings_value_nullable', '1'), ('23', '2019_08_19_000000_create_failed_jobs_table', '1');
COMMIT;

-- ----------------------------
--  Table structure for `password_resets`
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
--  Table structure for `permission_role`
-- ----------------------------
DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
--  Records of `permission_role`
-- ----------------------------
BEGIN;
INSERT INTO `permission_role` VALUES ('1', '1'), ('2', '1'), ('3', '1'), ('4', '1'), ('5', '1'), ('6', '1'), ('7', '1'), ('8', '1'), ('9', '1'), ('10', '1'), ('11', '1'), ('12', '1'), ('13', '1'), ('14', '1'), ('15', '1'), ('16', '1'), ('17', '1'), ('18', '1'), ('19', '1'), ('20', '1'), ('21', '1'), ('22', '1'), ('23', '1'), ('24', '1'), ('25', '1'), ('26', '1'), ('27', '1'), ('28', '1'), ('29', '1'), ('30', '1'), ('31', '1'), ('32', '1'), ('33', '1'), ('34', '1'), ('35', '1'), ('36', '1');
COMMIT;

-- ----------------------------
--  Table structure for `permissions`
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
--  Records of `permissions`
-- ----------------------------
BEGIN;
INSERT INTO `permissions` VALUES ('1', 'browse_admin', null, '2019-11-12 20:53:30', '2019-11-12 20:53:30'), ('2', 'browse_bread', null, '2019-11-12 20:53:30', '2019-11-12 20:53:30'), ('3', 'browse_database', null, '2019-11-12 20:53:30', '2019-11-12 20:53:30'), ('4', 'browse_media', null, '2019-11-12 20:53:30', '2019-11-12 20:53:30'), ('5', 'browse_compass', null, '2019-11-12 20:53:30', '2019-11-12 20:53:30'), ('6', 'browse_menus', 'menus', '2019-11-12 20:53:30', '2019-11-12 20:53:30'), ('7', 'read_menus', 'menus', '2019-11-12 20:53:30', '2019-11-12 20:53:30'), ('8', 'edit_menus', 'menus', '2019-11-12 20:53:30', '2019-11-12 20:53:30'), ('9', 'add_menus', 'menus', '2019-11-12 20:53:30', '2019-11-12 20:53:30'), ('10', 'delete_menus', 'menus', '2019-11-12 20:53:30', '2019-11-12 20:53:30'), ('11', 'browse_roles', 'roles', '2019-11-12 20:53:30', '2019-11-12 20:53:30'), ('12', 'read_roles', 'roles', '2019-11-12 20:53:30', '2019-11-12 20:53:30'), ('13', 'edit_roles', 'roles', '2019-11-12 20:53:30', '2019-11-12 20:53:30'), ('14', 'add_roles', 'roles', '2019-11-12 20:53:30', '2019-11-12 20:53:30'), ('15', 'delete_roles', 'roles', '2019-11-12 20:53:30', '2019-11-12 20:53:30'), ('16', 'browse_users', 'users', '2019-11-12 20:53:30', '2019-11-12 20:53:30'), ('17', 'read_users', 'users', '2019-11-12 20:53:30', '2019-11-12 20:53:30'), ('18', 'edit_users', 'users', '2019-11-12 20:53:30', '2019-11-12 20:53:30'), ('19', 'add_users', 'users', '2019-11-12 20:53:30', '2019-11-12 20:53:30'), ('20', 'delete_users', 'users', '2019-11-12 20:53:30', '2019-11-12 20:53:30'), ('21', 'browse_settings', 'settings', '2019-11-12 20:53:30', '2019-11-12 20:53:30'), ('22', 'read_settings', 'settings', '2019-11-12 20:53:30', '2019-11-12 20:53:30'), ('23', 'edit_settings', 'settings', '2019-11-12 20:53:30', '2019-11-12 20:53:30'), ('24', 'add_settings', 'settings', '2019-11-12 20:53:30', '2019-11-12 20:53:30'), ('25', 'delete_settings', 'settings', '2019-11-12 20:53:30', '2019-11-12 20:53:30'), ('26', 'browse_hooks', null, '2019-11-12 20:53:30', '2019-11-12 20:53:30'), ('27', 'browse_browse_history', 'browse_history', '2019-11-12 21:05:01', '2019-11-12 21:05:01'), ('28', 'read_browse_history', 'browse_history', '2019-11-12 21:05:01', '2019-11-12 21:05:01'), ('29', 'edit_browse_history', 'browse_history', '2019-11-12 21:05:01', '2019-11-12 21:05:01'), ('30', 'add_browse_history', 'browse_history', '2019-11-12 21:05:01', '2019-11-12 21:05:01'), ('31', 'delete_browse_history', 'browse_history', '2019-11-12 21:05:01', '2019-11-12 21:05:01'), ('32', 'browse_browse_histories', 'browse_histories', '2019-11-12 21:11:46', '2019-11-12 21:11:46'), ('33', 'read_browse_histories', 'browse_histories', '2019-11-12 21:11:46', '2019-11-12 21:11:46'), ('34', 'edit_browse_histories', 'browse_histories', '2019-11-12 21:11:46', '2019-11-12 21:11:46'), ('35', 'add_browse_histories', 'browse_histories', '2019-11-12 21:11:46', '2019-11-12 21:11:46'), ('36', 'delete_browse_histories', 'browse_histories', '2019-11-12 21:11:46', '2019-11-12 21:11:46');
COMMIT;

-- ----------------------------
--  Table structure for `roles`
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
--  Records of `roles`
-- ----------------------------
BEGIN;
INSERT INTO `roles` VALUES ('1', 'admin', '管理员', '2019-11-12 20:53:30', '2019-11-12 20:53:30'), ('2', 'user', '普通用户', '2019-11-12 20:53:30', '2019-11-12 20:53:30');
COMMIT;

-- ----------------------------
--  Table structure for `settings`
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
--  Records of `settings`
-- ----------------------------
BEGIN;
INSERT INTO `settings` VALUES ('1', 'site.title', '站点标题', '站点标题', '', 'text', '1', 'Site'), ('2', 'site.description', '站点描述', '站点描述', '', 'text', '2', 'Site'), ('3', 'site.logo', '站点 Logo', '', '', 'image', '3', 'Site'), ('4', 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', '4', 'Site'), ('5', 'admin.bg_image', '后台背景图像', '', '', 'image', '5', 'Admin'), ('6', 'admin.title', '后台页面标题', 'Voyager', '', 'text', '1', 'Admin'), ('7', 'admin.description', '后台描述', '欢迎使用 Voyager - 不可错过的 Laravel 后台管理框架', '', 'text', '2', 'Admin'), ('8', 'admin.loader', '后台加载动画', '', '', 'image', '3', 'Admin'), ('9', 'admin.icon_image', '后台图标', '', '', 'image', '4', 'Admin'), ('10', 'admin.google_analytics_client_id', 'Google Analytics Client ID （于后台控制面板使用）', '', '', 'text', '1', 'Admin');
COMMIT;

-- ----------------------------
--  Table structure for `translations`
-- ----------------------------
DROP TABLE IF EXISTS `translations`;
CREATE TABLE `translations` (
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

-- ----------------------------
--  Table structure for `user_roles`
-- ----------------------------
DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
--  Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
--  Records of `users`
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES ('1', '1', 'admin', 'admin@admin.com', 'users/November2019/hf8YkosPIZRMXzBiY9EF.jpg', null, '$2y$10$R9dkaY3v./0fQFM99937he4khO84xN/OT47X.dRH4TbNatuDmloDi', 'idmsHNAfA8a6W2ICxcRPcvphlR9v6D1Y25zLgcFRE3Ic1r08FpGHuRhS3jlo', '{\"locale\":\"zh_CN\"}', '2019-11-12 20:57:52', '2019-11-12 20:58:29');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
