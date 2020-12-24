/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : laravel

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 24/12/2020 09:56:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `permission` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES (1, 0, 1, '控制台', 'fa-bar-chart', '/', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (2, 0, 2, '权限管理', 'fa-tasks', '', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (3, 2, 3, '管理员管理', 'fa-users', 'auth/users', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (4, 2, 4, '角色管理', 'fa-user', 'auth/roles', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (5, 2, 5, '权限管理', 'fa-ban', 'auth/permissions', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (6, 2, 6, '菜单管理', 'fa-bars', 'auth/menu', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (7, 2, 7, '日志管理', 'fa-history', 'auth/logs', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (8, 0, 0, '用户管理', 'fa-user', 'user#', '*', '2020-12-23 03:13:24', '2020-12-23 03:16:12');
INSERT INTO `admin_menu` VALUES (9, 8, 0, '用户列表', 'fa-align-justify', 'users', '*', '2020-12-23 03:18:55', '2020-12-23 03:18:55');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `admin_operation_log_user_id_index`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 170 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES (1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-19 08:25:01', '2020-12-19 08:25:01');
INSERT INTO `admin_operation_log` VALUES (2, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-19 08:25:08', '2020-12-19 08:25:08');
INSERT INTO `admin_operation_log` VALUES (3, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-19 08:25:11', '2020-12-19 08:25:11');
INSERT INTO `admin_operation_log` VALUES (4, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-19 08:27:17', '2020-12-19 08:27:17');
INSERT INTO `admin_operation_log` VALUES (5, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-19 08:27:17', '2020-12-19 08:27:17');
INSERT INTO `admin_operation_log` VALUES (6, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-19 08:27:18', '2020-12-19 08:27:18');
INSERT INTO `admin_operation_log` VALUES (7, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-19 08:27:19', '2020-12-19 08:27:19');
INSERT INTO `admin_operation_log` VALUES (8, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-19 08:27:20', '2020-12-19 08:27:20');
INSERT INTO `admin_operation_log` VALUES (9, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-19 08:27:22', '2020-12-19 08:27:22');
INSERT INTO `admin_operation_log` VALUES (10, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-19 08:27:23', '2020-12-19 08:27:23');
INSERT INTO `admin_operation_log` VALUES (11, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-19 08:29:03', '2020-12-19 08:29:03');
INSERT INTO `admin_operation_log` VALUES (12, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-19 08:29:20', '2020-12-19 08:29:20');
INSERT INTO `admin_operation_log` VALUES (13, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-19 08:32:46', '2020-12-19 08:32:46');
INSERT INTO `admin_operation_log` VALUES (14, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-19 08:32:47', '2020-12-19 08:32:47');
INSERT INTO `admin_operation_log` VALUES (15, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-19 08:34:16', '2020-12-19 08:34:16');
INSERT INTO `admin_operation_log` VALUES (16, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-12-19 09:52:54', '2020-12-19 09:52:54');
INSERT INTO `admin_operation_log` VALUES (17, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-19 09:52:59', '2020-12-19 09:52:59');
INSERT INTO `admin_operation_log` VALUES (18, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-19 09:53:00', '2020-12-19 09:53:00');
INSERT INTO `admin_operation_log` VALUES (19, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-19 09:53:05', '2020-12-19 09:53:05');
INSERT INTO `admin_operation_log` VALUES (20, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-19 09:53:08', '2020-12-19 09:53:08');
INSERT INTO `admin_operation_log` VALUES (21, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-12-19 09:53:51', '2020-12-19 09:53:51');
INSERT INTO `admin_operation_log` VALUES (22, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-19 09:53:54', '2020-12-19 09:53:54');
INSERT INTO `admin_operation_log` VALUES (23, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-19 09:53:56', '2020-12-19 09:53:56');
INSERT INTO `admin_operation_log` VALUES (24, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-19 09:53:58', '2020-12-19 09:53:58');
INSERT INTO `admin_operation_log` VALUES (25, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-19 09:53:59', '2020-12-19 09:53:59');
INSERT INTO `admin_operation_log` VALUES (26, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-19 09:54:08', '2020-12-19 09:54:08');
INSERT INTO `admin_operation_log` VALUES (27, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-19 09:55:11', '2020-12-19 09:55:11');
INSERT INTO `admin_operation_log` VALUES (28, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-19 09:55:12', '2020-12-19 09:55:12');
INSERT INTO `admin_operation_log` VALUES (29, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-19 09:55:14', '2020-12-19 09:55:14');
INSERT INTO `admin_operation_log` VALUES (30, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-19 09:55:15', '2020-12-19 09:55:15');
INSERT INTO `admin_operation_log` VALUES (31, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-19 09:55:17', '2020-12-19 09:55:17');
INSERT INTO `admin_operation_log` VALUES (32, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-19 09:55:19', '2020-12-19 09:55:19');
INSERT INTO `admin_operation_log` VALUES (33, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-19 09:58:58', '2020-12-19 09:58:58');
INSERT INTO `admin_operation_log` VALUES (34, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-19 09:59:18', '2020-12-19 09:59:18');
INSERT INTO `admin_operation_log` VALUES (35, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-21 01:31:08', '2020-12-21 01:31:08');
INSERT INTO `admin_operation_log` VALUES (36, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-21 01:33:20', '2020-12-21 01:33:20');
INSERT INTO `admin_operation_log` VALUES (37, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-21 01:33:30', '2020-12-21 01:33:30');
INSERT INTO `admin_operation_log` VALUES (38, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-12-21 02:37:17', '2020-12-21 02:37:17');
INSERT INTO `admin_operation_log` VALUES (39, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-12-21 02:37:21', '2020-12-21 02:37:21');
INSERT INTO `admin_operation_log` VALUES (40, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-21 02:37:28', '2020-12-21 02:37:28');
INSERT INTO `admin_operation_log` VALUES (41, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-21 02:37:33', '2020-12-21 02:37:33');
INSERT INTO `admin_operation_log` VALUES (42, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-21 02:37:39', '2020-12-21 02:37:39');
INSERT INTO `admin_operation_log` VALUES (43, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-21 02:37:42', '2020-12-21 02:37:42');
INSERT INTO `admin_operation_log` VALUES (44, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-21 02:38:00', '2020-12-21 02:38:00');
INSERT INTO `admin_operation_log` VALUES (45, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":null,\"name\":null,\"password\":null,\"password_confirmation\":null,\"roles\":[null],\"permissions\":[null],\"_token\":\"Uy2HxtSuwyKf1iILJzz7q0Xq9DbLbGyoWJjQHeee\",\"_previous_\":\"http:\\/\\/www.testlaravel.com\\/index.php\\/admin\\/auth\\/users\"}', '2020-12-21 02:38:18', '2020-12-21 02:38:18');
INSERT INTO `admin_operation_log` VALUES (46, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2020-12-21 02:38:18', '2020-12-21 02:38:18');
INSERT INTO `admin_operation_log` VALUES (47, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-21 02:38:41', '2020-12-21 02:38:41');
INSERT INTO `admin_operation_log` VALUES (48, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":null,\"name\":null,\"password\":null,\"password_confirmation\":null,\"roles\":[null],\"permissions\":[null],\"_token\":\"Uy2HxtSuwyKf1iILJzz7q0Xq9DbLbGyoWJjQHeee\"}', '2020-12-21 02:57:49', '2020-12-21 02:57:49');
INSERT INTO `admin_operation_log` VALUES (49, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2020-12-21 02:57:50', '2020-12-21 02:57:50');
INSERT INTO `admin_operation_log` VALUES (50, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-21 03:01:58', '2020-12-21 03:01:58');
INSERT INTO `admin_operation_log` VALUES (51, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-21 03:54:45', '2020-12-21 03:54:45');
INSERT INTO `admin_operation_log` VALUES (52, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-21 03:54:57', '2020-12-21 03:54:57');
INSERT INTO `admin_operation_log` VALUES (53, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-21 03:54:58', '2020-12-21 03:54:58');
INSERT INTO `admin_operation_log` VALUES (54, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-21 03:55:06', '2020-12-21 03:55:06');
INSERT INTO `admin_operation_log` VALUES (55, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-21 03:55:08', '2020-12-21 03:55:08');
INSERT INTO `admin_operation_log` VALUES (56, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-21 03:55:11', '2020-12-21 03:55:11');
INSERT INTO `admin_operation_log` VALUES (57, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-21 03:55:13', '2020-12-21 03:55:13');
INSERT INTO `admin_operation_log` VALUES (58, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-21 03:55:20', '2020-12-21 03:55:20');
INSERT INTO `admin_operation_log` VALUES (59, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-21 03:55:23', '2020-12-21 03:55:23');
INSERT INTO `admin_operation_log` VALUES (60, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-21 03:55:25', '2020-12-21 03:55:25');
INSERT INTO `admin_operation_log` VALUES (61, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-21 03:55:27', '2020-12-21 03:55:27');
INSERT INTO `admin_operation_log` VALUES (62, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-21 03:55:45', '2020-12-21 03:55:45');
INSERT INTO `admin_operation_log` VALUES (63, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-21 03:55:46', '2020-12-21 03:55:46');
INSERT INTO `admin_operation_log` VALUES (64, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-21 03:55:47', '2020-12-21 03:55:47');
INSERT INTO `admin_operation_log` VALUES (65, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-21 03:55:48', '2020-12-21 03:55:48');
INSERT INTO `admin_operation_log` VALUES (66, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-21 03:55:48', '2020-12-21 03:55:48');
INSERT INTO `admin_operation_log` VALUES (67, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-21 03:55:49', '2020-12-21 03:55:49');
INSERT INTO `admin_operation_log` VALUES (68, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-21 03:55:49', '2020-12-21 03:55:49');
INSERT INTO `admin_operation_log` VALUES (69, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-21 03:55:52', '2020-12-21 03:55:52');
INSERT INTO `admin_operation_log` VALUES (70, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-21 03:55:55', '2020-12-21 03:55:55');
INSERT INTO `admin_operation_log` VALUES (71, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-21 03:57:47', '2020-12-21 03:57:47');
INSERT INTO `admin_operation_log` VALUES (72, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-21 03:57:49', '2020-12-21 03:57:49');
INSERT INTO `admin_operation_log` VALUES (73, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-21 03:57:51', '2020-12-21 03:57:51');
INSERT INTO `admin_operation_log` VALUES (74, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-21 03:57:52', '2020-12-21 03:57:52');
INSERT INTO `admin_operation_log` VALUES (75, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-21 03:57:59', '2020-12-21 03:57:59');
INSERT INTO `admin_operation_log` VALUES (76, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-21 03:58:00', '2020-12-21 03:58:00');
INSERT INTO `admin_operation_log` VALUES (77, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-21 03:58:42', '2020-12-21 03:58:42');
INSERT INTO `admin_operation_log` VALUES (78, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-21 03:58:43', '2020-12-21 03:58:43');
INSERT INTO `admin_operation_log` VALUES (79, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-21 03:58:46', '2020-12-21 03:58:46');
INSERT INTO `admin_operation_log` VALUES (80, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-21 03:58:48', '2020-12-21 03:58:48');
INSERT INTO `admin_operation_log` VALUES (81, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-12-21 03:59:03', '2020-12-21 03:59:03');
INSERT INTO `admin_operation_log` VALUES (82, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-21 03:59:03', '2020-12-21 03:59:03');
INSERT INTO `admin_operation_log` VALUES (83, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-21 03:59:07', '2020-12-21 03:59:07');
INSERT INTO `admin_operation_log` VALUES (84, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-21 03:59:12', '2020-12-21 03:59:12');
INSERT INTO `admin_operation_log` VALUES (85, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-21 03:59:15', '2020-12-21 03:59:15');
INSERT INTO `admin_operation_log` VALUES (86, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-23 01:46:43', '2020-12-23 01:46:43');
INSERT INTO `admin_operation_log` VALUES (87, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-23 01:46:48', '2020-12-23 01:46:48');
INSERT INTO `admin_operation_log` VALUES (88, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 01:46:56', '2020-12-23 01:46:56');
INSERT INTO `admin_operation_log` VALUES (89, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 01:48:06', '2020-12-23 01:48:06');
INSERT INTO `admin_operation_log` VALUES (90, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 01:48:09', '2020-12-23 01:48:09');
INSERT INTO `admin_operation_log` VALUES (91, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 01:48:11', '2020-12-23 01:48:11');
INSERT INTO `admin_operation_log` VALUES (92, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 01:48:11', '2020-12-23 01:48:11');
INSERT INTO `admin_operation_log` VALUES (93, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 01:48:12', '2020-12-23 01:48:12');
INSERT INTO `admin_operation_log` VALUES (94, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 01:48:13', '2020-12-23 01:48:13');
INSERT INTO `admin_operation_log` VALUES (95, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 01:48:16', '2020-12-23 01:48:16');
INSERT INTO `admin_operation_log` VALUES (96, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 01:49:51', '2020-12-23 01:49:51');
INSERT INTO `admin_operation_log` VALUES (97, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 01:49:52', '2020-12-23 01:49:52');
INSERT INTO `admin_operation_log` VALUES (98, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 01:49:54', '2020-12-23 01:49:54');
INSERT INTO `admin_operation_log` VALUES (99, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-23 01:49:56', '2020-12-23 01:49:56');
INSERT INTO `admin_operation_log` VALUES (100, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-23 02:03:58', '2020-12-23 02:03:58');
INSERT INTO `admin_operation_log` VALUES (101, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 02:04:00', '2020-12-23 02:04:00');
INSERT INTO `admin_operation_log` VALUES (102, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-23 02:04:02', '2020-12-23 02:04:02');
INSERT INTO `admin_operation_log` VALUES (103, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 02:04:10', '2020-12-23 02:04:10');
INSERT INTO `admin_operation_log` VALUES (104, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-23 02:04:12', '2020-12-23 02:04:12');
INSERT INTO `admin_operation_log` VALUES (105, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-23 02:13:06', '2020-12-23 02:13:06');
INSERT INTO `admin_operation_log` VALUES (106, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 02:13:11', '2020-12-23 02:13:11');
INSERT INTO `admin_operation_log` VALUES (107, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-23 02:13:23', '2020-12-23 02:13:23');
INSERT INTO `admin_operation_log` VALUES (108, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 02:13:38', '2020-12-23 02:13:38');
INSERT INTO `admin_operation_log` VALUES (109, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 02:13:40', '2020-12-23 02:13:40');
INSERT INTO `admin_operation_log` VALUES (110, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":null,\"name\":null,\"password\":null,\"password_confirmation\":null,\"roles\":[null],\"permissions\":[null],\"_token\":\"ZwAaN8VesgbK1eTIttbmMH86dmR2hDukwMIArDwJ\",\"_previous_\":\"http:\\/\\/www.testlaravel.com\\/index.php\\/admin\\/auth\\/users\"}', '2020-12-23 02:13:45', '2020-12-23 02:13:45');
INSERT INTO `admin_operation_log` VALUES (111, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2020-12-23 02:13:45', '2020-12-23 02:13:45');
INSERT INTO `admin_operation_log` VALUES (112, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2020-12-23 02:14:58', '2020-12-23 02:14:58');
INSERT INTO `admin_operation_log` VALUES (113, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2020-12-23 02:14:59', '2020-12-23 02:14:59');
INSERT INTO `admin_operation_log` VALUES (114, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":null,\"name\":null,\"password\":null,\"password_confirmation\":null,\"roles\":[null],\"permissions\":[null],\"_token\":\"ZwAaN8VesgbK1eTIttbmMH86dmR2hDukwMIArDwJ\"}', '2020-12-23 02:15:03', '2020-12-23 02:15:03');
INSERT INTO `admin_operation_log` VALUES (115, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2020-12-23 02:15:03', '2020-12-23 02:15:03');
INSERT INTO `admin_operation_log` VALUES (116, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2020-12-23 02:15:05', '2020-12-23 02:15:05');
INSERT INTO `admin_operation_log` VALUES (117, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":null,\"name\":null,\"password\":null,\"password_confirmation\":null,\"roles\":[null],\"permissions\":[null],\"_token\":\"ZwAaN8VesgbK1eTIttbmMH86dmR2hDukwMIArDwJ\"}', '2020-12-23 02:15:06', '2020-12-23 02:15:06');
INSERT INTO `admin_operation_log` VALUES (118, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2020-12-23 02:15:07', '2020-12-23 02:15:07');
INSERT INTO `admin_operation_log` VALUES (119, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2020-12-23 02:18:09', '2020-12-23 02:18:09');
INSERT INTO `admin_operation_log` VALUES (120, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2020-12-23 02:18:16', '2020-12-23 02:18:16');
INSERT INTO `admin_operation_log` VALUES (121, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":null,\"name\":null,\"password\":null,\"password_confirmation\":null,\"roles\":[null],\"permissions\":[null],\"_token\":\"ZwAaN8VesgbK1eTIttbmMH86dmR2hDukwMIArDwJ\"}', '2020-12-23 02:18:18', '2020-12-23 02:18:18');
INSERT INTO `admin_operation_log` VALUES (122, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2020-12-23 02:18:19', '2020-12-23 02:18:19');
INSERT INTO `admin_operation_log` VALUES (123, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":null,\"name\":null,\"password\":null,\"password_confirmation\":null,\"roles\":[null],\"permissions\":[null],\"_token\":\"ZwAaN8VesgbK1eTIttbmMH86dmR2hDukwMIArDwJ\"}', '2020-12-23 02:18:23', '2020-12-23 02:18:23');
INSERT INTO `admin_operation_log` VALUES (124, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2020-12-23 02:18:23', '2020-12-23 02:18:23');
INSERT INTO `admin_operation_log` VALUES (125, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2020-12-23 02:18:24', '2020-12-23 02:18:24');
INSERT INTO `admin_operation_log` VALUES (126, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 02:18:29', '2020-12-23 02:18:29');
INSERT INTO `admin_operation_log` VALUES (127, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 02:18:31', '2020-12-23 02:18:31');
INSERT INTO `admin_operation_log` VALUES (128, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 02:18:33', '2020-12-23 02:18:33');
INSERT INTO `admin_operation_log` VALUES (129, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 02:18:37', '2020-12-23 02:18:37');
INSERT INTO `admin_operation_log` VALUES (130, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":null,\"name\":null,\"password\":null,\"password_confirmation\":null,\"roles\":[null],\"permissions\":[null],\"_token\":\"ZwAaN8VesgbK1eTIttbmMH86dmR2hDukwMIArDwJ\",\"_previous_\":\"http:\\/\\/www.testlaravel.com\\/index.php\\/admin\\/auth\\/users\"}', '2020-12-23 02:18:38', '2020-12-23 02:18:38');
INSERT INTO `admin_operation_log` VALUES (131, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2020-12-23 02:18:39', '2020-12-23 02:18:39');
INSERT INTO `admin_operation_log` VALUES (132, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2020-12-23 02:25:03', '2020-12-23 02:25:03');
INSERT INTO `admin_operation_log` VALUES (133, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2020-12-23 02:25:04', '2020-12-23 02:25:04');
INSERT INTO `admin_operation_log` VALUES (134, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2020-12-23 02:25:05', '2020-12-23 02:25:05');
INSERT INTO `admin_operation_log` VALUES (135, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2020-12-23 02:25:05', '2020-12-23 02:25:05');
INSERT INTO `admin_operation_log` VALUES (136, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 02:25:06', '2020-12-23 02:25:06');
INSERT INTO `admin_operation_log` VALUES (137, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":null,\"name\":null,\"password\":null,\"password_confirmation\":null,\"roles\":[null],\"permissions\":[null],\"_token\":\"ZwAaN8VesgbK1eTIttbmMH86dmR2hDukwMIArDwJ\"}', '2020-12-23 02:25:08', '2020-12-23 02:25:08');
INSERT INTO `admin_operation_log` VALUES (138, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2020-12-23 02:25:08', '2020-12-23 02:25:08');
INSERT INTO `admin_operation_log` VALUES (139, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":null,\"name\":null,\"password\":null,\"password_confirmation\":null,\"roles\":[null],\"permissions\":[null],\"_token\":\"ZwAaN8VesgbK1eTIttbmMH86dmR2hDukwMIArDwJ\"}', '2020-12-23 02:25:10', '2020-12-23 02:25:10');
INSERT INTO `admin_operation_log` VALUES (140, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2020-12-23 02:25:10', '2020-12-23 02:25:10');
INSERT INTO `admin_operation_log` VALUES (141, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 02:27:17', '2020-12-23 02:27:17');
INSERT INTO `admin_operation_log` VALUES (142, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-23 02:27:40', '2020-12-23 02:27:40');
INSERT INTO `admin_operation_log` VALUES (143, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-23 02:27:41', '2020-12-23 02:27:41');
INSERT INTO `admin_operation_log` VALUES (144, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-23 02:27:41', '2020-12-23 02:27:41');
INSERT INTO `admin_operation_log` VALUES (145, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-23 02:27:42', '2020-12-23 02:27:42');
INSERT INTO `admin_operation_log` VALUES (146, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-23 02:27:42', '2020-12-23 02:27:42');
INSERT INTO `admin_operation_log` VALUES (147, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 02:27:44', '2020-12-23 02:27:44');
INSERT INTO `admin_operation_log` VALUES (148, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-23 02:27:46', '2020-12-23 02:27:46');
INSERT INTO `admin_operation_log` VALUES (149, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-23 02:27:47', '2020-12-23 02:27:47');
INSERT INTO `admin_operation_log` VALUES (150, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-23 02:27:48', '2020-12-23 02:27:48');
INSERT INTO `admin_operation_log` VALUES (151, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-23 02:27:48', '2020-12-23 02:27:48');
INSERT INTO `admin_operation_log` VALUES (152, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-23 02:27:49', '2020-12-23 02:27:49');
INSERT INTO `admin_operation_log` VALUES (153, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-23 02:28:32', '2020-12-23 02:28:32');
INSERT INTO `admin_operation_log` VALUES (154, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-23 02:28:33', '2020-12-23 02:28:33');
INSERT INTO `admin_operation_log` VALUES (155, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-23 02:28:33', '2020-12-23 02:28:33');
INSERT INTO `admin_operation_log` VALUES (156, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-23 02:28:34', '2020-12-23 02:28:34');
INSERT INTO `admin_operation_log` VALUES (157, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-23 02:28:34', '2020-12-23 02:28:34');
INSERT INTO `admin_operation_log` VALUES (158, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-23 02:28:35', '2020-12-23 02:28:35');
INSERT INTO `admin_operation_log` VALUES (159, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 02:28:35', '2020-12-23 02:28:35');
INSERT INTO `admin_operation_log` VALUES (160, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-23 02:28:36', '2020-12-23 02:28:36');
INSERT INTO `admin_operation_log` VALUES (161, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 02:28:39', '2020-12-23 02:28:39');
INSERT INTO `admin_operation_log` VALUES (162, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-23 02:53:52', '2020-12-23 02:53:52');
INSERT INTO `admin_operation_log` VALUES (163, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 02:53:56', '2020-12-23 02:53:56');
INSERT INTO `admin_operation_log` VALUES (164, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 02:54:02', '2020-12-23 02:54:02');
INSERT INTO `admin_operation_log` VALUES (165, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":null,\"name\":null,\"password\":null,\"password_confirmation\":null,\"roles\":[null],\"permissions\":[null],\"_token\":\"dws5kbct4TzLNdnCk9gl5mRY20bloqXOhkAmn5OD\",\"_previous_\":\"http:\\/\\/www.testlaravel.com\\/index.php\\/admin\\/auth\\/users\"}', '2020-12-23 02:54:04', '2020-12-23 02:54:04');
INSERT INTO `admin_operation_log` VALUES (166, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2020-12-23 02:54:04', '2020-12-23 02:54:04');
INSERT INTO `admin_operation_log` VALUES (167, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 02:54:11', '2020-12-23 02:54:11');
INSERT INTO `admin_operation_log` VALUES (168, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 02:54:12', '2020-12-23 02:54:12');
INSERT INTO `admin_operation_log` VALUES (169, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 02:54:12', '2020-12-23 02:54:12');
INSERT INTO `admin_operation_log` VALUES (170, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-23 03:01:14', '2020-12-23 03:01:14');
INSERT INTO `admin_operation_log` VALUES (171, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-23 03:01:15', '2020-12-23 03:01:15');
INSERT INTO `admin_operation_log` VALUES (172, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-23 03:01:18', '2020-12-23 03:01:18');
INSERT INTO `admin_operation_log` VALUES (173, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:01:20', '2020-12-23 03:01:20');
INSERT INTO `admin_operation_log` VALUES (174, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-23 03:01:52', '2020-12-23 03:01:52');
INSERT INTO `admin_operation_log` VALUES (175, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:01:55', '2020-12-23 03:01:55');
INSERT INTO `admin_operation_log` VALUES (176, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:01:56', '2020-12-23 03:01:56');
INSERT INTO `admin_operation_log` VALUES (177, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:01:57', '2020-12-23 03:01:57');
INSERT INTO `admin_operation_log` VALUES (178, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":null,\"name\":null,\"password\":null,\"password_confirmation\":null,\"roles\":[null],\"permissions\":[null],\"_token\":\"QrZAOtj0nljU0UQ1DNR16HYYlauUszRQ4L7kHIV6\",\"_previous_\":\"http:\\/\\/www.testlaravel.com\\/index.php\\/admin\\/auth\\/users\"}', '2020-12-23 03:01:59', '2020-12-23 03:01:59');
INSERT INTO `admin_operation_log` VALUES (179, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2020-12-23 03:01:59', '2020-12-23 03:01:59');
INSERT INTO `admin_operation_log` VALUES (180, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2020-12-23 03:09:36', '2020-12-23 03:09:36');
INSERT INTO `admin_operation_log` VALUES (181, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:09:50', '2020-12-23 03:09:50');
INSERT INTO `admin_operation_log` VALUES (182, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:09:55', '2020-12-23 03:09:55');
INSERT INTO `admin_operation_log` VALUES (183, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-user\",\"uri\":\"admin\\/user\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"QrZAOtj0nljU0UQ1DNR16HYYlauUszRQ4L7kHIV6\"}', '2020-12-23 03:13:24', '2020-12-23 03:13:24');
INSERT INTO `admin_operation_log` VALUES (184, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-12-23 03:13:24', '2020-12-23 03:13:24');
INSERT INTO `admin_operation_log` VALUES (185, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-12-23 03:13:30', '2020-12-23 03:13:30');
INSERT INTO `admin_operation_log` VALUES (186, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-12-23 03:13:41', '2020-12-23 03:13:41');
INSERT INTO `admin_operation_log` VALUES (187, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:13:43', '2020-12-23 03:13:43');
INSERT INTO `admin_operation_log` VALUES (188, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-23 03:13:51', '2020-12-23 03:13:51');
INSERT INTO `admin_operation_log` VALUES (189, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-23 03:14:15', '2020-12-23 03:14:15');
INSERT INTO `admin_operation_log` VALUES (190, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-23 03:14:17', '2020-12-23 03:14:17');
INSERT INTO `admin_operation_log` VALUES (191, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:14:20', '2020-12-23 03:14:20');
INSERT INTO `admin_operation_log` VALUES (192, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:14:24', '2020-12-23 03:14:24');
INSERT INTO `admin_operation_log` VALUES (193, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:14:27', '2020-12-23 03:14:27');
INSERT INTO `admin_operation_log` VALUES (194, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:14:30', '2020-12-23 03:14:30');
INSERT INTO `admin_operation_log` VALUES (195, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-user\",\"uri\":\"admin\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"QrZAOtj0nljU0UQ1DNR16HYYlauUszRQ4L7kHIV6\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.testlaravel.com\\/index.php\\/admin\\/auth\\/menu\"}', '2020-12-23 03:14:39', '2020-12-23 03:14:39');
INSERT INTO `admin_operation_log` VALUES (196, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-12-23 03:14:39', '2020-12-23 03:14:39');
INSERT INTO `admin_operation_log` VALUES (197, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-12-23 03:14:43', '2020-12-23 03:14:43');
INSERT INTO `admin_operation_log` VALUES (198, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:14:59', '2020-12-23 03:14:59');
INSERT INTO `admin_operation_log` VALUES (199, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:15:05', '2020-12-23 03:15:05');
INSERT INTO `admin_operation_log` VALUES (200, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-user\",\"uri\":\"admin\\/user\\/#\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"QrZAOtj0nljU0UQ1DNR16HYYlauUszRQ4L7kHIV6\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.testlaravel.com\\/index.php\\/admin\\/auth\\/menu\"}', '2020-12-23 03:15:14', '2020-12-23 03:15:14');
INSERT INTO `admin_operation_log` VALUES (201, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-12-23 03:15:14', '2020-12-23 03:15:14');
INSERT INTO `admin_operation_log` VALUES (202, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-12-23 03:15:17', '2020-12-23 03:15:17');
INSERT INTO `admin_operation_log` VALUES (203, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-12-23 03:15:21', '2020-12-23 03:15:21');
INSERT INTO `admin_operation_log` VALUES (204, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:15:31', '2020-12-23 03:15:31');
INSERT INTO `admin_operation_log` VALUES (205, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-user\",\"uri\":\"admin\\/user#\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"QrZAOtj0nljU0UQ1DNR16HYYlauUszRQ4L7kHIV6\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.testlaravel.com\\/index.php\\/admin\\/auth\\/menu\"}', '2020-12-23 03:15:35', '2020-12-23 03:15:35');
INSERT INTO `admin_operation_log` VALUES (206, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-12-23 03:15:36', '2020-12-23 03:15:36');
INSERT INTO `admin_operation_log` VALUES (207, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-12-23 03:15:44', '2020-12-23 03:15:44');
INSERT INTO `admin_operation_log` VALUES (208, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:16:07', '2020-12-23 03:16:07');
INSERT INTO `admin_operation_log` VALUES (209, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-user\",\"uri\":\"user#\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"QrZAOtj0nljU0UQ1DNR16HYYlauUszRQ4L7kHIV6\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.testlaravel.com\\/index.php\\/admin\\/auth\\/menu\"}', '2020-12-23 03:16:12', '2020-12-23 03:16:12');
INSERT INTO `admin_operation_log` VALUES (210, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-12-23 03:16:12', '2020-12-23 03:16:12');
INSERT INTO `admin_operation_log` VALUES (211, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:16:15', '2020-12-23 03:16:15');
INSERT INTO `admin_operation_log` VALUES (212, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-12-23 03:16:21', '2020-12-23 03:16:21');
INSERT INTO `admin_operation_log` VALUES (213, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:16:24', '2020-12-23 03:16:24');
INSERT INTO `admin_operation_log` VALUES (214, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-12-23 03:16:25', '2020-12-23 03:16:25');
INSERT INTO `admin_operation_log` VALUES (215, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-12-23 03:16:25', '2020-12-23 03:16:25');
INSERT INTO `admin_operation_log` VALUES (216, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-12-23 03:16:33', '2020-12-23 03:16:33');
INSERT INTO `admin_operation_log` VALUES (217, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-12-23 03:17:16', '2020-12-23 03:17:16');
INSERT INTO `admin_operation_log` VALUES (218, 1, 'admin/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:17:31', '2020-12-23 03:17:31');
INSERT INTO `admin_operation_log` VALUES (219, 1, 'admin/users', 'POST', '127.0.0.1', '{\"name\":null,\"email\":null,\"email_verified_at\":\"2020-12-23 03:17:31\",\"password\":null,\"remember_token\":null,\"_token\":\"QrZAOtj0nljU0UQ1DNR16HYYlauUszRQ4L7kHIV6\",\"_previous_\":\"http:\\/\\/www.testlaravel.com\\/index.php\\/admin\\/users\"}', '2020-12-23 03:17:40', '2020-12-23 03:17:40');
INSERT INTO `admin_operation_log` VALUES (220, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2020-12-23 03:17:41', '2020-12-23 03:17:41');
INSERT INTO `admin_operation_log` VALUES (221, 1, 'admin/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:17:44', '2020-12-23 03:17:44');
INSERT INTO `admin_operation_log` VALUES (222, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-12-23 03:18:15', '2020-12-23 03:18:15');
INSERT INTO `admin_operation_log` VALUES (223, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:18:26', '2020-12-23 03:18:26');
INSERT INTO `admin_operation_log` VALUES (224, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u7528\\u6237\\u5217\\u8868\",\"icon\":\"fa-align-justify\",\"uri\":\"users\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"QrZAOtj0nljU0UQ1DNR16HYYlauUszRQ4L7kHIV6\"}', '2020-12-23 03:18:55', '2020-12-23 03:18:55');
INSERT INTO `admin_operation_log` VALUES (225, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-12-23 03:18:55', '2020-12-23 03:18:55');
INSERT INTO `admin_operation_log` VALUES (226, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-12-23 03:19:01', '2020-12-23 03:19:01');
INSERT INTO `admin_operation_log` VALUES (227, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:19:05', '2020-12-23 03:19:05');
INSERT INTO `admin_operation_log` VALUES (228, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:19:09', '2020-12-23 03:19:09');
INSERT INTO `admin_operation_log` VALUES (229, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:19:10', '2020-12-23 03:19:10');
INSERT INTO `admin_operation_log` VALUES (230, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:19:11', '2020-12-23 03:19:11');
INSERT INTO `admin_operation_log` VALUES (231, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:19:13', '2020-12-23 03:19:13');
INSERT INTO `admin_operation_log` VALUES (232, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:19:13', '2020-12-23 03:19:13');
INSERT INTO `admin_operation_log` VALUES (233, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:19:14', '2020-12-23 03:19:14');
INSERT INTO `admin_operation_log` VALUES (234, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:19:14', '2020-12-23 03:19:14');
INSERT INTO `admin_operation_log` VALUES (235, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:19:16', '2020-12-23 03:19:16');
INSERT INTO `admin_operation_log` VALUES (236, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:19:18', '2020-12-23 03:19:18');
INSERT INTO `admin_operation_log` VALUES (237, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-12-23 03:21:28', '2020-12-23 03:21:28');
INSERT INTO `admin_operation_log` VALUES (238, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:21:32', '2020-12-23 03:21:32');
INSERT INTO `admin_operation_log` VALUES (239, 1, 'admin/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:25:54', '2020-12-23 03:25:54');
INSERT INTO `admin_operation_log` VALUES (240, 1, 'admin/users', 'POST', '127.0.0.1', '{\"name\":\"zhujinyu\",\"email\":\"763147498@qq.com\",\"email_verified_at\":\"2020-12-23 03:25:54\",\"password\":\"123456\",\"remember_token\":null,\"_token\":\"QrZAOtj0nljU0UQ1DNR16HYYlauUszRQ4L7kHIV6\",\"_previous_\":\"http:\\/\\/www.testlaravel.com\\/index.php\\/admin\\/users\"}', '2020-12-23 03:26:41', '2020-12-23 03:26:41');
INSERT INTO `admin_operation_log` VALUES (241, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-12-23 03:26:41', '2020-12-23 03:26:41');
INSERT INTO `admin_operation_log` VALUES (242, 1, 'admin/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:26:51', '2020-12-23 03:26:51');
INSERT INTO `admin_operation_log` VALUES (243, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:26:55', '2020-12-23 03:26:55');
INSERT INTO `admin_operation_log` VALUES (244, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-12-23 03:29:58', '2020-12-23 03:29:58');
INSERT INTO `admin_operation_log` VALUES (245, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:30:10', '2020-12-23 03:30:10');
INSERT INTO `admin_operation_log` VALUES (246, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-12-23 03:30:12', '2020-12-23 03:30:12');
INSERT INTO `admin_operation_log` VALUES (247, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-12-23 03:30:58', '2020-12-23 03:30:58');
INSERT INTO `admin_operation_log` VALUES (248, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-12-23 03:30:59', '2020-12-23 03:30:59');
INSERT INTO `admin_operation_log` VALUES (249, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-12-23 03:30:59', '2020-12-23 03:30:59');
INSERT INTO `admin_operation_log` VALUES (250, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:31:00', '2020-12-23 03:31:00');
INSERT INTO `admin_operation_log` VALUES (251, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:31:03', '2020-12-23 03:31:03');
INSERT INTO `admin_operation_log` VALUES (252, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-12-23 03:31:05', '2020-12-23 03:31:05');
INSERT INTO `admin_operation_log` VALUES (253, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:31:10', '2020-12-23 03:31:10');
INSERT INTO `admin_operation_log` VALUES (254, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}', '2020-12-23 03:31:13', '2020-12-23 03:31:13');
INSERT INTO `admin_operation_log` VALUES (255, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:31:19', '2020-12-23 03:31:19');
INSERT INTO `admin_operation_log` VALUES (256, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:31:21', '2020-12-23 03:31:21');
INSERT INTO `admin_operation_log` VALUES (257, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:31:23', '2020-12-23 03:31:23');
INSERT INTO `admin_operation_log` VALUES (258, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:31:24', '2020-12-23 03:31:24');
INSERT INTO `admin_operation_log` VALUES (259, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:31:25', '2020-12-23 03:31:25');
INSERT INTO `admin_operation_log` VALUES (260, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:31:29', '2020-12-23 03:31:29');
INSERT INTO `admin_operation_log` VALUES (261, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-12-23 03:32:00', '2020-12-23 03:32:00');
INSERT INTO `admin_operation_log` VALUES (262, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-12-23 03:32:00', '2020-12-23 03:32:00');
INSERT INTO `admin_operation_log` VALUES (263, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-12-23 03:32:01', '2020-12-23 03:32:01');
INSERT INTO `admin_operation_log` VALUES (264, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-12-23 03:32:01', '2020-12-23 03:32:01');
INSERT INTO `admin_operation_log` VALUES (265, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-12-23 03:32:01', '2020-12-23 03:32:01');
INSERT INTO `admin_operation_log` VALUES (266, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-12-23 03:32:01', '2020-12-23 03:32:01');
INSERT INTO `admin_operation_log` VALUES (267, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-12-23 03:33:23', '2020-12-23 03:33:23');
INSERT INTO `admin_operation_log` VALUES (268, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-23 03:34:11', '2020-12-23 03:34:11');
INSERT INTO `admin_operation_log` VALUES (269, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:34:15', '2020-12-23 03:34:15');
INSERT INTO `admin_operation_log` VALUES (270, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-12-23 03:42:00', '2020-12-23 03:42:00');
INSERT INTO `admin_operation_log` VALUES (271, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-12-23 03:46:02', '2020-12-23 03:46:02');
INSERT INTO `admin_operation_log` VALUES (272, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-12-23 03:46:03', '2020-12-23 03:46:03');
INSERT INTO `admin_operation_log` VALUES (273, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-12-23 03:46:03', '2020-12-23 03:46:03');
INSERT INTO `admin_operation_log` VALUES (274, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-12-23 03:46:04', '2020-12-23 03:46:04');
INSERT INTO `admin_operation_log` VALUES (275, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-12-23 03:46:06', '2020-12-23 03:46:06');
INSERT INTO `admin_operation_log` VALUES (276, 1, 'admin/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:46:22', '2020-12-23 03:46:22');
INSERT INTO `admin_operation_log` VALUES (277, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:46:25', '2020-12-23 03:46:25');
INSERT INTO `admin_operation_log` VALUES (278, 1, 'admin/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:46:27', '2020-12-23 03:46:27');
INSERT INTO `admin_operation_log` VALUES (279, 1, 'admin/users', 'POST', '127.0.0.1', '{\"name\":null,\"email\":null,\"email_verified_at\":\"2020-12-23 03:46:27\",\"password\":null,\"remember_token\":null,\"_token\":\"QrZAOtj0nljU0UQ1DNR16HYYlauUszRQ4L7kHIV6\",\"_previous_\":\"http:\\/\\/www.testlaravel.com\\/index.php\\/admin\\/users\"}', '2020-12-23 03:46:30', '2020-12-23 03:46:30');
INSERT INTO `admin_operation_log` VALUES (280, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2020-12-23 03:46:31', '2020-12-23 03:46:31');
INSERT INTO `admin_operation_log` VALUES (281, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2020-12-23 03:47:23', '2020-12-23 03:47:23');
INSERT INTO `admin_operation_log` VALUES (282, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2020-12-23 03:47:24', '2020-12-23 03:47:24');
INSERT INTO `admin_operation_log` VALUES (283, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2020-12-23 03:47:24', '2020-12-23 03:47:24');
INSERT INTO `admin_operation_log` VALUES (284, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2020-12-23 03:47:24', '2020-12-23 03:47:24');
INSERT INTO `admin_operation_log` VALUES (285, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2020-12-23 03:47:24', '2020-12-23 03:47:24');
INSERT INTO `admin_operation_log` VALUES (286, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2020-12-23 03:47:24', '2020-12-23 03:47:24');
INSERT INTO `admin_operation_log` VALUES (287, 1, 'admin/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:47:25', '2020-12-23 03:47:25');
INSERT INTO `admin_operation_log` VALUES (288, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:47:28', '2020-12-23 03:47:28');
INSERT INTO `admin_operation_log` VALUES (289, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-23 03:47:43', '2020-12-23 03:47:43');
INSERT INTO `admin_operation_log` VALUES (290, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:47:47', '2020-12-23 03:47:47');
INSERT INTO `admin_operation_log` VALUES (291, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-12-23 03:47:50', '2020-12-23 03:47:50');
INSERT INTO `admin_operation_log` VALUES (292, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-12-23 03:51:15', '2020-12-23 03:51:15');
INSERT INTO `admin_operation_log` VALUES (293, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-12-23 03:51:15', '2020-12-23 03:51:15');
INSERT INTO `admin_operation_log` VALUES (294, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-12-23 03:51:16', '2020-12-23 03:51:16');
INSERT INTO `admin_operation_log` VALUES (295, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-12-23 03:51:16', '2020-12-23 03:51:16');
INSERT INTO `admin_operation_log` VALUES (296, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-12-23 03:51:16', '2020-12-23 03:51:16');
INSERT INTO `admin_operation_log` VALUES (297, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-12-23 03:51:26', '2020-12-23 03:51:26');
INSERT INTO `admin_operation_log` VALUES (298, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-12-23 03:51:27', '2020-12-23 03:51:27');
INSERT INTO `admin_operation_log` VALUES (299, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-12-23 03:51:28', '2020-12-23 03:51:28');
INSERT INTO `admin_operation_log` VALUES (300, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:51:34', '2020-12-23 03:51:34');
INSERT INTO `admin_operation_log` VALUES (301, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:51:35', '2020-12-23 03:51:35');
INSERT INTO `admin_operation_log` VALUES (302, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:51:35', '2020-12-23 03:51:35');
INSERT INTO `admin_operation_log` VALUES (303, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:51:36', '2020-12-23 03:51:36');
INSERT INTO `admin_operation_log` VALUES (304, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:51:36', '2020-12-23 03:51:36');
INSERT INTO `admin_operation_log` VALUES (305, 1, 'admin/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:51:37', '2020-12-23 03:51:37');
INSERT INTO `admin_operation_log` VALUES (306, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2020-12-23 03:52:05', '2020-12-23 03:52:05');
INSERT INTO `admin_operation_log` VALUES (307, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 03:56:40', '2020-12-23 03:56:40');
INSERT INTO `admin_operation_log` VALUES (308, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-23 04:01:18', '2020-12-23 04:01:18');
INSERT INTO `admin_operation_log` VALUES (309, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 04:01:22', '2020-12-23 04:01:22');
INSERT INTO `admin_operation_log` VALUES (310, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 04:01:41', '2020-12-23 04:01:41');
INSERT INTO `admin_operation_log` VALUES (311, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-23 06:25:46', '2020-12-23 06:25:46');
INSERT INTO `admin_operation_log` VALUES (312, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 06:25:51', '2020-12-23 06:25:51');
INSERT INTO `admin_operation_log` VALUES (313, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 06:26:02', '2020-12-23 06:26:02');
INSERT INTO `admin_operation_log` VALUES (314, 1, 'admin/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 06:26:05', '2020-12-23 06:26:05');
INSERT INTO `admin_operation_log` VALUES (315, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 06:26:07', '2020-12-23 06:26:07');
INSERT INTO `admin_operation_log` VALUES (316, 1, 'admin/users/1', 'PUT', '127.0.0.1', '{\"name\":\"zhujinyu\",\"email\":\"763147498@qq.com\",\"email_verified_at\":\"2020-12-23 03:25:54\",\"password\":null,\"remember_token\":null,\"_token\":\"yVFk3nT9umnEUaD6aPoUcobjO6NODKSae7Phh0hz\",\"after-save\":\"2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.testlaravel.com\\/index.php\\/admin\\/users\\/1\"}', '2020-12-23 06:26:24', '2020-12-23 06:26:24');
INSERT INTO `admin_operation_log` VALUES (317, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '[]', '2020-12-23 06:26:26', '2020-12-23 06:26:26');
INSERT INTO `admin_operation_log` VALUES (318, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 06:26:35', '2020-12-23 06:26:35');
INSERT INTO `admin_operation_log` VALUES (319, 1, 'admin/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 06:26:38', '2020-12-23 06:26:38');
INSERT INTO `admin_operation_log` VALUES (320, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 06:26:41', '2020-12-23 06:26:41');
INSERT INTO `admin_operation_log` VALUES (321, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 06:26:56', '2020-12-23 06:26:56');
INSERT INTO `admin_operation_log` VALUES (322, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 06:26:58', '2020-12-23 06:26:58');
INSERT INTO `admin_operation_log` VALUES (323, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-12-23 06:27:54', '2020-12-23 06:27:54');
INSERT INTO `admin_operation_log` VALUES (324, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 06:28:01', '2020-12-23 06:28:01');
INSERT INTO `admin_operation_log` VALUES (325, 1, 'admin/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 06:29:46', '2020-12-23 06:29:46');
INSERT INTO `admin_operation_log` VALUES (326, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 06:30:08', '2020-12-23 06:30:08');
INSERT INTO `admin_operation_log` VALUES (327, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-12-23 06:30:17', '2020-12-23 06:30:17');
INSERT INTO `admin_operation_log` VALUES (328, 1, 'admin/users', 'GET', '127.0.0.1', '{\"id\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-12-23 06:30:37', '2020-12-23 06:30:37');
INSERT INTO `admin_operation_log` VALUES (329, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":\"1\"}', '2020-12-23 06:30:41', '2020-12-23 06:30:41');
INSERT INTO `admin_operation_log` VALUES (330, 1, 'admin/users', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2020-12-23 06:30:50', '2020-12-23 06:30:50');
INSERT INTO `admin_operation_log` VALUES (331, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 06:30:59', '2020-12-23 06:30:59');
INSERT INTO `admin_operation_log` VALUES (332, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 06:31:50', '2020-12-23 06:31:50');
INSERT INTO `admin_operation_log` VALUES (333, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '[]', '2020-12-23 06:49:50', '2020-12-23 06:49:50');
INSERT INTO `admin_operation_log` VALUES (334, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 06:49:56', '2020-12-23 06:49:56');
INSERT INTO `admin_operation_log` VALUES (335, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 06:50:03', '2020-12-23 06:50:03');
INSERT INTO `admin_operation_log` VALUES (336, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-12-23 06:50:12', '2020-12-23 06:50:12');
INSERT INTO `admin_operation_log` VALUES (337, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 06:50:15', '2020-12-23 06:50:15');
INSERT INTO `admin_operation_log` VALUES (338, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 06:50:19', '2020-12-23 06:50:19');
INSERT INTO `admin_operation_log` VALUES (339, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 06:50:25', '2020-12-23 06:50:25');
INSERT INTO `admin_operation_log` VALUES (340, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 06:50:29', '2020-12-23 06:50:29');
INSERT INTO `admin_operation_log` VALUES (341, 1, 'admin/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 06:51:38', '2020-12-23 06:51:38');
INSERT INTO `admin_operation_log` VALUES (342, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 06:51:43', '2020-12-23 06:51:43');
INSERT INTO `admin_operation_log` VALUES (343, 1, 'admin/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 07:04:24', '2020-12-23 07:04:24');
INSERT INTO `admin_operation_log` VALUES (344, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 07:04:27', '2020-12-23 07:04:27');
INSERT INTO `admin_operation_log` VALUES (345, 1, 'admin/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 07:10:04', '2020-12-23 07:10:04');
INSERT INTO `admin_operation_log` VALUES (346, 1, 'admin/users/1', 'GET', '127.0.0.1', '[]', '2020-12-23 07:10:46', '2020-12-23 07:10:46');
INSERT INTO `admin_operation_log` VALUES (347, 1, 'admin/users/1', 'GET', '127.0.0.1', '[]', '2020-12-23 07:11:31', '2020-12-23 07:11:31');
INSERT INTO `admin_operation_log` VALUES (348, 1, 'admin/users/1', 'GET', '127.0.0.1', '[]', '2020-12-23 07:11:40', '2020-12-23 07:11:40');
INSERT INTO `admin_operation_log` VALUES (349, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 08:28:25', '2020-12-23 08:28:25');
INSERT INTO `admin_operation_log` VALUES (350, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-12-23 09:01:30', '2020-12-23 09:01:30');
INSERT INTO `admin_operation_log` VALUES (351, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-12-23 09:01:31', '2020-12-23 09:01:31');
INSERT INTO `admin_operation_log` VALUES (352, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 09:01:36', '2020-12-23 09:01:36');
INSERT INTO `admin_operation_log` VALUES (353, 1, 'admin/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 09:01:38', '2020-12-23 09:01:38');
INSERT INTO `admin_operation_log` VALUES (354, 1, 'admin/users', 'POST', '127.0.0.1', '{\"name\":null,\"email\":null,\"email_verified_at\":\"2020-12-23 09:01:38\",\"password\":null,\"remember_token\":null,\"_token\":\"yVFk3nT9umnEUaD6aPoUcobjO6NODKSae7Phh0hz\",\"_previous_\":\"http:\\/\\/www.testlaravel.com\\/index.php\\/admin\\/users\"}', '2020-12-23 09:01:43', '2020-12-23 09:01:43');
INSERT INTO `admin_operation_log` VALUES (355, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2020-12-23 09:01:45', '2020-12-23 09:01:45');
INSERT INTO `admin_operation_log` VALUES (356, 1, 'admin/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 09:01:54', '2020-12-23 09:01:54');
INSERT INTO `admin_operation_log` VALUES (357, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 09:01:55', '2020-12-23 09:01:55');
INSERT INTO `admin_operation_log` VALUES (358, 1, 'admin/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 09:01:58', '2020-12-23 09:01:58');
INSERT INTO `admin_operation_log` VALUES (359, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 09:02:00', '2020-12-23 09:02:00');
INSERT INTO `admin_operation_log` VALUES (360, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-12-23 09:28:20', '2020-12-23 09:28:20');
INSERT INTO `admin_operation_log` VALUES (361, 1, 'admin/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 09:28:24', '2020-12-23 09:28:24');
INSERT INTO `admin_operation_log` VALUES (362, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2020-12-23 09:29:03', '2020-12-23 09:29:03');
INSERT INTO `admin_operation_log` VALUES (363, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2020-12-23 09:29:56', '2020-12-23 09:29:56');
INSERT INTO `admin_operation_log` VALUES (364, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2020-12-23 09:30:11', '2020-12-23 09:30:11');
INSERT INTO `admin_operation_log` VALUES (365, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2020-12-23 09:30:13', '2020-12-23 09:30:13');
INSERT INTO `admin_operation_log` VALUES (366, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2020-12-23 09:30:16', '2020-12-23 09:30:16');
INSERT INTO `admin_operation_log` VALUES (367, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2020-12-23 09:30:17', '2020-12-23 09:30:17');
INSERT INTO `admin_operation_log` VALUES (368, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2020-12-23 09:30:17', '2020-12-23 09:30:17');
INSERT INTO `admin_operation_log` VALUES (369, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2020-12-23 09:30:32', '2020-12-23 09:30:32');
INSERT INTO `admin_operation_log` VALUES (370, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2020-12-23 09:30:54', '2020-12-23 09:30:54');
INSERT INTO `admin_operation_log` VALUES (371, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2020-12-23 09:30:57', '2020-12-23 09:30:57');
INSERT INTO `admin_operation_log` VALUES (372, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 09:31:03', '2020-12-23 09:31:03');
INSERT INTO `admin_operation_log` VALUES (373, 1, 'admin/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-23 09:31:05', '2020-12-23 09:31:05');
INSERT INTO `admin_operation_log` VALUES (374, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-12-24 01:25:26', '2020-12-24 01:25:26');
INSERT INTO `admin_operation_log` VALUES (375, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-24 01:25:31', '2020-12-24 01:25:31');
INSERT INTO `admin_operation_log` VALUES (376, 1, 'admin/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-12-24 01:25:33', '2020-12-24 01:25:33');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `http_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_permissions_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `admin_permissions_slug_unique`(`slug`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES (1, 'All permission', '*', '', '*', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu`  (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_menu_role_id_menu_id_index`(`role_id`, `menu_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES (1, 2, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 8, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 9, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions`  (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_permissions_role_id_permission_id_index`(`role_id`, `permission_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES (1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users`  (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_users_role_id_user_id_index`(`role_id`, `user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES (1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_roles_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `admin_roles_slug_unique`(`slug`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES (1, 'Administrator', 'administrator', '2020-12-19 08:22:53', '2020-12-19 08:22:53');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions`  (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_user_permissions_user_id_permission_id_index`(`user_id`, `permission_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of admin_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_users_username_unique`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES (1, 'admin', '$2y$10$wdx9P7QWtGjGBmG2tTROheF8CstUK1LbaX3Gmy8EWZYzBwtS.U2Qi', 'Administrator', NULL, 'zsL2in72G5r0Cv9pXMtF5noSGpcqGvtGe1gCtg6HYAHjNhmEGJLLY1a2glO5', '2020-12-19 08:22:53', '2020-12-19 08:22:53');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_01_04_173148_create_admin_tables', 1);
INSERT INTO `migrations` VALUES (4, '2019_08_19_000000_create_failed_jobs_table', 1);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'zhujinyu', '763147498@qq.com', '2020-12-23 03:25:54', '123456', NULL, '2020-12-23 03:26:41', '2020-12-23 03:26:41');

SET FOREIGN_KEY_CHECKS = 1;
