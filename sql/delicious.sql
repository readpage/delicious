/*
 Navicat MySQL Data Transfer

 Source Server         : navigate
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : delicious

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 27/08/2021 16:41:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for log_info
-- ----------------------------
DROP TABLE IF EXISTS `log_info`;
CREATE TABLE `log_info`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名',
  `request_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '请求方式',
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '操作方法',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '请求地址',
  `browser` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '浏览器',
  `os` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '操作系统',
  `device_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '设备类型',
  `ip_addr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地理位置',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '操作信息',
  `error` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '异常信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 829 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_info
-- ----------------------------
INSERT INTO `log_info` VALUES (6, 'user', 'GET', 'com.example.controller.MenuController.selectAll()', '/menu/list', 'Chrome 9', 'Windows 10', 'Computer', '117.189.210.28', '贵州省六盘水市', '查询成功!😍', NULL, '2021-08-21 21:34:41');
INSERT INTO `log_info` VALUES (7, 'user', 'GET', 'com.example.controller.LogInfoController.selectPage(int,int)', '/log-info/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '0:0:0:0:0:0:0:1', '', '成功!🙂', NULL, '2021-08-21 21:56:52');
INSERT INTO `log_info` VALUES (8, 'admin', 'GET', 'com.example.controller.MenuController.selectPermMenu()', '/menu/permMenu', 'Chrome Mobile', 'Android 1.x', 'Mobile', '117.189.210.28', '贵州省六盘水市', '查询成功!😍', NULL, '2021-08-21 21:58:08');
INSERT INTO `log_info` VALUES (9, 'admin', 'GET', 'com.example.controller.UserController.info()', '/user/info', 'Chrome Mobile', 'Android 1.x', 'Mobile', '117.189.210.28', '贵州省六盘水市', '查询成功!😍', NULL, '2021-08-21 21:58:08');
INSERT INTO `log_info` VALUES (10, 'admin', 'GET', 'com.example.controller.MenuController.selectPermMenu()', '/menu/permMenu', 'Chrome Mobile', 'Android 1.x', 'Mobile', '220.197.208.78', '贵州省', '查询成功!😍', NULL, '2021-08-21 21:58:36');
INSERT INTO `log_info` VALUES (11, 'admin', 'GET', 'com.example.controller.UserController.info()', '/user/info', 'Chrome Mobile', 'Android 1.x', 'Mobile', '220.197.208.78', '贵州省', '查询成功!😍', NULL, '2021-08-21 21:58:37');
INSERT INTO `log_info` VALUES (12, 'admin', 'GET', 'com.example.controller.MenuController.selectPermMenu()', '/menu/permMenu', 'Chrome Mobile', 'Android 1.x', 'Mobile', '39.144.41.95', '贵州省', '查询成功!😍', NULL, '2021-08-21 21:59:11');
INSERT INTO `log_info` VALUES (13, 'admin', 'GET', 'com.example.controller.UserController.info()', '/user/info', 'Chrome Mobile', 'Android 1.x', 'Mobile', '39.144.41.95', '贵州省', '查询成功!😍', NULL, '2021-08-21 21:59:16');
INSERT INTO `log_info` VALUES (14, 'user', 'GET', 'Result com.example.controller.RoleController.selectPage(int,int)', '/role/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '117.189.210.28', '贵州省六盘水市', '查询成功!😍', NULL, '2021-08-21 22:31:34');
INSERT INTO `log_info` VALUES (15, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '117.189.210.28', '贵州省六盘水市', '查询成功!😍', NULL, '2021-08-21 22:36:46');
INSERT INTO `log_info` VALUES (16, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/2/5', 'Chrome 9', 'Windows 10', 'Computer', '117.189.210.28', '贵州省六盘水市', '查询成功!😍', NULL, '2021-08-21 22:38:44');
INSERT INTO `log_info` VALUES (17, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:26:51');
INSERT INTO `log_info` VALUES (18, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:26:51');
INSERT INTO `log_info` VALUES (19, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:27:03');
INSERT INTO `log_info` VALUES (20, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:27:18');
INSERT INTO `log_info` VALUES (21, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:27:19');
INSERT INTO `log_info` VALUES (22, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:27:31');
INSERT INTO `log_info` VALUES (23, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:38:09');
INSERT INTO `log_info` VALUES (24, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:39:01');
INSERT INTO `log_info` VALUES (25, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:39:02');
INSERT INTO `log_info` VALUES (26, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:39:04');
INSERT INTO `log_info` VALUES (27, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/4/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:39:31');
INSERT INTO `log_info` VALUES (28, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/5/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:39:41');
INSERT INTO `log_info` VALUES (29, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:39:46');
INSERT INTO `log_info` VALUES (30, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:42:41');
INSERT INTO `log_info` VALUES (31, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:45:18');
INSERT INTO `log_info` VALUES (32, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:45:19');
INSERT INTO `log_info` VALUES (33, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:45:22');
INSERT INTO `log_info` VALUES (34, 'anonymousUser', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:46:08');
INSERT INTO `log_info` VALUES (35, 'anonymousUser', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:46:09');
INSERT INTO `log_info` VALUES (36, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:46:15');
INSERT INTO `log_info` VALUES (37, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:46:16');
INSERT INTO `log_info` VALUES (38, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:46:31');
INSERT INTO `log_info` VALUES (39, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:46:31');
INSERT INTO `log_info` VALUES (40, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:46:42');
INSERT INTO `log_info` VALUES (41, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:46:46');
INSERT INTO `log_info` VALUES (42, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/7/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:46:49');
INSERT INTO `log_info` VALUES (43, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:46:54');
INSERT INTO `log_info` VALUES (44, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:47:09');
INSERT INTO `log_info` VALUES (45, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:47:13');
INSERT INTO `log_info` VALUES (46, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:47:14');
INSERT INTO `log_info` VALUES (47, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:47:15');
INSERT INTO `log_info` VALUES (48, 'anonymousUser', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:47:48');
INSERT INTO `log_info` VALUES (49, 'anonymousUser', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:47:48');
INSERT INTO `log_info` VALUES (50, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:47:54');
INSERT INTO `log_info` VALUES (51, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:47:56');
INSERT INTO `log_info` VALUES (52, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:49:39');
INSERT INTO `log_info` VALUES (53, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:49:39');
INSERT INTO `log_info` VALUES (54, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:49:51');
INSERT INTO `log_info` VALUES (55, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:49:52');
INSERT INTO `log_info` VALUES (56, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:50:30');
INSERT INTO `log_info` VALUES (57, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:50:31');
INSERT INTO `log_info` VALUES (58, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:51:17');
INSERT INTO `log_info` VALUES (59, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:51:18');
INSERT INTO `log_info` VALUES (60, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:51:46');
INSERT INTO `log_info` VALUES (61, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:51:46');
INSERT INTO `log_info` VALUES (62, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:51:58');
INSERT INTO `log_info` VALUES (63, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:52:28');
INSERT INTO `log_info` VALUES (64, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:52:28');
INSERT INTO `log_info` VALUES (65, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:52:39');
INSERT INTO `log_info` VALUES (66, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:53:03');
INSERT INTO `log_info` VALUES (67, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:53:06');
INSERT INTO `log_info` VALUES (68, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:53:06');
INSERT INTO `log_info` VALUES (69, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:53:07');
INSERT INTO `log_info` VALUES (70, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:54:14');
INSERT INTO `log_info` VALUES (71, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:54:14');
INSERT INTO `log_info` VALUES (72, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:54:16');
INSERT INTO `log_info` VALUES (73, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:56:04');
INSERT INTO `log_info` VALUES (74, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:56:05');
INSERT INTO `log_info` VALUES (75, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:56:07');
INSERT INTO `log_info` VALUES (76, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:57:18');
INSERT INTO `log_info` VALUES (77, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:57:19');
INSERT INTO `log_info` VALUES (78, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:57:21');
INSERT INTO `log_info` VALUES (79, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:58:03');
INSERT INTO `log_info` VALUES (80, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:58:04');
INSERT INTO `log_info` VALUES (81, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:58:06');
INSERT INTO `log_info` VALUES (82, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:58:21');
INSERT INTO `log_info` VALUES (83, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:58:22');
INSERT INTO `log_info` VALUES (84, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 12:58:23');
INSERT INTO `log_info` VALUES (85, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:00:38');
INSERT INTO `log_info` VALUES (86, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:00:39');
INSERT INTO `log_info` VALUES (87, 'user', 'GET', 'Result com.example.controller.RoleController.selectPage(int,int)', '/role/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:00:40');
INSERT INTO `log_info` VALUES (88, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:00:44');
INSERT INTO `log_info` VALUES (89, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:01:48');
INSERT INTO `log_info` VALUES (90, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:01:49');
INSERT INTO `log_info` VALUES (91, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:01:51');
INSERT INTO `log_info` VALUES (92, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:01:56');
INSERT INTO `log_info` VALUES (93, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:02:50');
INSERT INTO `log_info` VALUES (94, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:02:51');
INSERT INTO `log_info` VALUES (95, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:02:53');
INSERT INTO `log_info` VALUES (96, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:03:43');
INSERT INTO `log_info` VALUES (97, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:03:44');
INSERT INTO `log_info` VALUES (98, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:03:46');
INSERT INTO `log_info` VALUES (99, 'user', 'GET', 'Result com.example.controller.MenuController.selectAll()', '/menu/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:03:57');
INSERT INTO `log_info` VALUES (100, 'user', 'GET', 'Result com.example.controller.RoleController.selectPage(int,int)', '/role/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:04:01');
INSERT INTO `log_info` VALUES (101, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:04:06');
INSERT INTO `log_info` VALUES (102, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/40', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:04:20');
INSERT INTO `log_info` VALUES (103, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:04:34');
INSERT INTO `log_info` VALUES (104, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/20/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:09:07');
INSERT INTO `log_info` VALUES (105, 'anonymousUser', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:10:28');
INSERT INTO `log_info` VALUES (106, 'anonymousUser', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:10:28');
INSERT INTO `log_info` VALUES (107, 'admin', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:10:39');
INSERT INTO `log_info` VALUES (108, 'admin', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:10:40');
INSERT INTO `log_info` VALUES (109, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/20/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:10:50');
INSERT INTO `log_info` VALUES (110, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/21/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:10:54');
INSERT INTO `log_info` VALUES (111, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/18/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:12:29');
INSERT INTO `log_info` VALUES (112, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:12:31');
INSERT INTO `log_info` VALUES (113, 'admin', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:13:04');
INSERT INTO `log_info` VALUES (114, 'admin', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/6/5', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:13:11');
INSERT INTO `log_info` VALUES (115, 'admin', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/7/5', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:13:13');
INSERT INTO `log_info` VALUES (116, 'admin', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/22/5', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:13:15');
INSERT INTO `log_info` VALUES (117, 'admin', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:13:26');
INSERT INTO `log_info` VALUES (118, 'admin', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/23/5', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:13:32');
INSERT INTO `log_info` VALUES (119, 'admin', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:27:30');
INSERT INTO `log_info` VALUES (120, 'admin', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:27:30');
INSERT INTO `log_info` VALUES (121, 'admin', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:27:31');
INSERT INTO `log_info` VALUES (122, 'admin', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:28:24');
INSERT INTO `log_info` VALUES (123, 'admin', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:28:44');
INSERT INTO `log_info` VALUES (124, 'admin', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/24/5', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:28:57');
INSERT INTO `log_info` VALUES (125, 'admin', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:32:33');
INSERT INTO `log_info` VALUES (126, 'admin', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:32:34');
INSERT INTO `log_info` VALUES (127, 'admin', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:32:41');
INSERT INTO `log_info` VALUES (128, 'admin', 'GET', 'Result com.example.controller.RoleController.selectPage(int,int)', '/role/page/1/5', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:32:57');
INSERT INTO `log_info` VALUES (129, 'admin', 'GET', 'Result com.example.controller.MenuController.selectAll()', '/menu/list', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:33:05');
INSERT INTO `log_info` VALUES (130, 'admin', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:34:12');
INSERT INTO `log_info` VALUES (131, 'admin', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/25/5', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 13:34:25');
INSERT INTO `log_info` VALUES (132, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 15:35:05');
INSERT INTO `log_info` VALUES (133, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 15:35:06');
INSERT INTO `log_info` VALUES (134, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 15:35:07');
INSERT INTO `log_info` VALUES (135, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 15:38:42');
INSERT INTO `log_info` VALUES (136, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 15:38:43');
INSERT INTO `log_info` VALUES (137, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 15:38:45');
INSERT INTO `log_info` VALUES (138, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 15:42:58');
INSERT INTO `log_info` VALUES (139, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 15:42:59');
INSERT INTO `log_info` VALUES (140, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 15:43:00');
INSERT INTO `log_info` VALUES (141, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 15:57:37');
INSERT INTO `log_info` VALUES (142, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 15:57:38');
INSERT INTO `log_info` VALUES (143, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 15:57:40');
INSERT INTO `log_info` VALUES (144, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 15:58:35');
INSERT INTO `log_info` VALUES (145, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 15:58:36');
INSERT INTO `log_info` VALUES (146, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 15:58:37');
INSERT INTO `log_info` VALUES (147, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 16:13:42');
INSERT INTO `log_info` VALUES (148, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 16:13:43');
INSERT INTO `log_info` VALUES (149, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 16:13:45');
INSERT INTO `log_info` VALUES (150, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 16:15:38');
INSERT INTO `log_info` VALUES (151, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 16:15:39');
INSERT INTO `log_info` VALUES (152, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 16:15:43');
INSERT INTO `log_info` VALUES (153, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 16:17:22');
INSERT INTO `log_info` VALUES (154, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 16:17:26');
INSERT INTO `log_info` VALUES (155, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 16:17:27');
INSERT INTO `log_info` VALUES (156, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 16:18:14');
INSERT INTO `log_info` VALUES (157, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 16:18:15');
INSERT INTO `log_info` VALUES (158, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 16:18:17');
INSERT INTO `log_info` VALUES (159, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 16:22:07');
INSERT INTO `log_info` VALUES (160, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 16:22:08');
INSERT INTO `log_info` VALUES (161, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 16:22:10');
INSERT INTO `log_info` VALUES (162, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 16:25:16');
INSERT INTO `log_info` VALUES (163, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 16:25:17');
INSERT INTO `log_info` VALUES (164, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 16:25:20');
INSERT INTO `log_info` VALUES (165, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 16:29:23');
INSERT INTO `log_info` VALUES (166, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 16:29:24');
INSERT INTO `log_info` VALUES (167, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 16:29:25');
INSERT INTO `log_info` VALUES (168, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 16:31:07');
INSERT INTO `log_info` VALUES (169, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 16:31:08');
INSERT INTO `log_info` VALUES (170, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 16:31:09');
INSERT INTO `log_info` VALUES (171, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 16:32:41');
INSERT INTO `log_info` VALUES (172, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 16:32:41');
INSERT INTO `log_info` VALUES (173, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 16:32:43');
INSERT INTO `log_info` VALUES (174, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 16:32:58');
INSERT INTO `log_info` VALUES (175, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/34/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 16:33:01');
INSERT INTO `log_info` VALUES (176, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 16:33:13');
INSERT INTO `log_info` VALUES (177, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/6/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 16:33:25');
INSERT INTO `log_info` VALUES (178, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/5/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 16:33:28');
INSERT INTO `log_info` VALUES (179, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/35/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 16:33:30');
INSERT INTO `log_info` VALUES (180, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 16:33:38');
INSERT INTO `log_info` VALUES (181, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 16:34:59');
INSERT INTO `log_info` VALUES (182, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '0:0:0:0:0:0:0:1', '', '查询成功!😍', NULL, '2021-08-22 16:48:08');
INSERT INTO `log_info` VALUES (183, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 16:49:38');
INSERT INTO `log_info` VALUES (184, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 16:49:39');
INSERT INTO `log_info` VALUES (185, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 16:49:40');
INSERT INTO `log_info` VALUES (186, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 16:59:45');
INSERT INTO `log_info` VALUES (187, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:00:13');
INSERT INTO `log_info` VALUES (188, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:00:14');
INSERT INTO `log_info` VALUES (189, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:00:16');
INSERT INTO `log_info` VALUES (190, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:00:16');
INSERT INTO `log_info` VALUES (191, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:07:04');
INSERT INTO `log_info` VALUES (192, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:18:32');
INSERT INTO `log_info` VALUES (193, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:19:11');
INSERT INTO `log_info` VALUES (194, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:27:20');
INSERT INTO `log_info` VALUES (195, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:27:21');
INSERT INTO `log_info` VALUES (196, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:27:23');
INSERT INTO `log_info` VALUES (197, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:27:23');
INSERT INTO `log_info` VALUES (198, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:27:25');
INSERT INTO `log_info` VALUES (199, 'user', 'GET', 'Result com.example.controller.UserController.selectIsUser(String)', '/user/selectIsUser', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '成功!🙂', NULL, '2021-08-22 17:27:29');
INSERT INTO `log_info` VALUES (200, 'user', 'GET', 'Result com.example.controller.UserController.selectIsUser(String)', '/user/selectIsUser', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:28:02');
INSERT INTO `log_info` VALUES (201, 'user', 'GET', 'Result com.example.controller.UserController.selectIsUser(String)', '/user/selectIsUser', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:28:05');
INSERT INTO `log_info` VALUES (202, 'user', 'GET', 'Result com.example.controller.UserController.selectIsUser(String)', '/user/selectIsUser', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:28:14');
INSERT INTO `log_info` VALUES (203, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:35:21');
INSERT INTO `log_info` VALUES (204, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:38:28');
INSERT INTO `log_info` VALUES (205, 'user', 'GET', 'Result com.example.controller.UserController.selectIsUser(String)', '/user/selectIsUser', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:38:33');
INSERT INTO `log_info` VALUES (206, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:40:34');
INSERT INTO `log_info` VALUES (207, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:40:35');
INSERT INTO `log_info` VALUES (208, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:40:36');
INSERT INTO `log_info` VALUES (209, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:40:36');
INSERT INTO `log_info` VALUES (210, 'user', 'GET', 'Result com.example.controller.UserController.selectIsUser(String)', '/user/selectIsUser', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:40:47');
INSERT INTO `log_info` VALUES (211, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:43:32');
INSERT INTO `log_info` VALUES (212, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:43:33');
INSERT INTO `log_info` VALUES (213, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:43:36');
INSERT INTO `log_info` VALUES (214, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:43:36');
INSERT INTO `log_info` VALUES (215, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:44:09');
INSERT INTO `log_info` VALUES (216, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:44:09');
INSERT INTO `log_info` VALUES (217, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:44:11');
INSERT INTO `log_info` VALUES (218, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:44:12');
INSERT INTO `log_info` VALUES (219, 'user', 'GET', 'Result com.example.controller.UserController.selectIsUser(String)', '/user/selectIsUser', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:46:25');
INSERT INTO `log_info` VALUES (220, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:50:08');
INSERT INTO `log_info` VALUES (221, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:50:09');
INSERT INTO `log_info` VALUES (222, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:50:11');
INSERT INTO `log_info` VALUES (223, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:50:11');
INSERT INTO `log_info` VALUES (224, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:50:20');
INSERT INTO `log_info` VALUES (225, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:50:21');
INSERT INTO `log_info` VALUES (226, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:50:22');
INSERT INTO `log_info` VALUES (227, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:50:22');
INSERT INTO `log_info` VALUES (228, 'admin', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:51:24');
INSERT INTO `log_info` VALUES (229, 'admin', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:51:25');
INSERT INTO `log_info` VALUES (230, 'admin', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:51:26');
INSERT INTO `log_info` VALUES (231, 'admin', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:51:40');
INSERT INTO `log_info` VALUES (232, 'admin', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:51:40');
INSERT INTO `log_info` VALUES (233, 'admin', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/45/5', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:52:31');
INSERT INTO `log_info` VALUES (234, 'admin', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:58:21');
INSERT INTO `log_info` VALUES (235, 'admin', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:58:22');
INSERT INTO `log_info` VALUES (236, 'admin', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:58:23');
INSERT INTO `log_info` VALUES (237, 'admin', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:58:29');
INSERT INTO `log_info` VALUES (238, 'admin', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:58:29');
INSERT INTO `log_info` VALUES (239, 'admin', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:58:30');
INSERT INTO `log_info` VALUES (240, 'admin', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:59:02');
INSERT INTO `log_info` VALUES (241, 'admin', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:59:02');
INSERT INTO `log_info` VALUES (242, 'admin', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:59:03');
INSERT INTO `log_info` VALUES (243, 'admin', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:59:30');
INSERT INTO `log_info` VALUES (244, 'admin', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 17:59:31');
INSERT INTO `log_info` VALUES (245, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:16:43');
INSERT INTO `log_info` VALUES (246, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:16:43');
INSERT INTO `log_info` VALUES (247, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:16:45');
INSERT INTO `log_info` VALUES (248, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:16:45');
INSERT INTO `log_info` VALUES (249, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:27:01');
INSERT INTO `log_info` VALUES (250, 'user', 'GET', 'Result com.example.controller.UserController.selectIsUser(String)', '/user/selectIsUser', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:27:04');
INSERT INTO `log_info` VALUES (251, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:27:59');
INSERT INTO `log_info` VALUES (252, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:28:00');
INSERT INTO `log_info` VALUES (253, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:28:02');
INSERT INTO `log_info` VALUES (254, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:28:04');
INSERT INTO `log_info` VALUES (255, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:28:42');
INSERT INTO `log_info` VALUES (256, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:28:43');
INSERT INTO `log_info` VALUES (257, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:28:45');
INSERT INTO `log_info` VALUES (258, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:28:48');
INSERT INTO `log_info` VALUES (259, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:29:16');
INSERT INTO `log_info` VALUES (260, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:29:17');
INSERT INTO `log_info` VALUES (261, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:29:18');
INSERT INTO `log_info` VALUES (262, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:29:25');
INSERT INTO `log_info` VALUES (263, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:33:36');
INSERT INTO `log_info` VALUES (264, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:33:37');
INSERT INTO `log_info` VALUES (265, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:33:39');
INSERT INTO `log_info` VALUES (266, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:33:41');
INSERT INTO `log_info` VALUES (267, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:36:44');
INSERT INTO `log_info` VALUES (268, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:36:45');
INSERT INTO `log_info` VALUES (269, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:36:47');
INSERT INTO `log_info` VALUES (270, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:36:50');
INSERT INTO `log_info` VALUES (271, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:36:52');
INSERT INTO `log_info` VALUES (272, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:36:54');
INSERT INTO `log_info` VALUES (273, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:37:07');
INSERT INTO `log_info` VALUES (274, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:40:59');
INSERT INTO `log_info` VALUES (275, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:41:00');
INSERT INTO `log_info` VALUES (276, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:41:02');
INSERT INTO `log_info` VALUES (277, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:41:04');
INSERT INTO `log_info` VALUES (278, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:42:34');
INSERT INTO `log_info` VALUES (279, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:44:18');
INSERT INTO `log_info` VALUES (280, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:44:18');
INSERT INTO `log_info` VALUES (281, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:44:21');
INSERT INTO `log_info` VALUES (282, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:44:24');
INSERT INTO `log_info` VALUES (283, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:45:02');
INSERT INTO `log_info` VALUES (284, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:45:03');
INSERT INTO `log_info` VALUES (285, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:45:05');
INSERT INTO `log_info` VALUES (286, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:45:09');
INSERT INTO `log_info` VALUES (287, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:46:50');
INSERT INTO `log_info` VALUES (288, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:46:50');
INSERT INTO `log_info` VALUES (289, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:46:54');
INSERT INTO `log_info` VALUES (290, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:46:56');
INSERT INTO `log_info` VALUES (291, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:48:22');
INSERT INTO `log_info` VALUES (292, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:48:23');
INSERT INTO `log_info` VALUES (293, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:48:25');
INSERT INTO `log_info` VALUES (294, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:55:19');
INSERT INTO `log_info` VALUES (295, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:55:34');
INSERT INTO `log_info` VALUES (296, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:55:36');
INSERT INTO `log_info` VALUES (297, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:55:39');
INSERT INTO `log_info` VALUES (298, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:55:49');
INSERT INTO `log_info` VALUES (299, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:56:31');
INSERT INTO `log_info` VALUES (300, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:56:35');
INSERT INTO `log_info` VALUES (301, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:56:39');
INSERT INTO `log_info` VALUES (302, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:56:42');
INSERT INTO `log_info` VALUES (303, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:56:44');
INSERT INTO `log_info` VALUES (304, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:56:53');
INSERT INTO `log_info` VALUES (305, 'admin', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:58:05');
INSERT INTO `log_info` VALUES (306, 'admin', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 18:58:06');
INSERT INTO `log_info` VALUES (307, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-22 19:07:33');
INSERT INTO `log_info` VALUES (308, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 14:13:07');
INSERT INTO `log_info` VALUES (309, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 14:13:08');
INSERT INTO `log_info` VALUES (310, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 14:13:22');
INSERT INTO `log_info` VALUES (311, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 14:13:25');
INSERT INTO `log_info` VALUES (312, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 14:13:29');
INSERT INTO `log_info` VALUES (313, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 14:13:44');
INSERT INTO `log_info` VALUES (314, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 14:13:56');
INSERT INTO `log_info` VALUES (315, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 14:13:59');
INSERT INTO `log_info` VALUES (316, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 14:14:14');
INSERT INTO `log_info` VALUES (317, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 14:14:20');
INSERT INTO `log_info` VALUES (318, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 14:14:24');
INSERT INTO `log_info` VALUES (319, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 14:35:54');
INSERT INTO `log_info` VALUES (320, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 14:47:20');
INSERT INTO `log_info` VALUES (321, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 14:47:21');
INSERT INTO `log_info` VALUES (322, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 14:47:24');
INSERT INTO `log_info` VALUES (323, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 14:47:30');
INSERT INTO `log_info` VALUES (324, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 14:48:21');
INSERT INTO `log_info` VALUES (325, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 14:48:38');
INSERT INTO `log_info` VALUES (326, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 14:48:50');
INSERT INTO `log_info` VALUES (327, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 14:49:00');
INSERT INTO `log_info` VALUES (328, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/2/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 14:50:10');
INSERT INTO `log_info` VALUES (329, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 14:50:12');
INSERT INTO `log_info` VALUES (330, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 14:50:38');
INSERT INTO `log_info` VALUES (331, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 14:50:39');
INSERT INTO `log_info` VALUES (332, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 14:50:40');
INSERT INTO `log_info` VALUES (333, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/66/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 14:50:47');
INSERT INTO `log_info` VALUES (334, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/65/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 14:50:53');
INSERT INTO `log_info` VALUES (335, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/63/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 14:51:01');
INSERT INTO `log_info` VALUES (336, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 14:51:32');
INSERT INTO `log_info` VALUES (337, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 14:51:41');
INSERT INTO `log_info` VALUES (338, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 14:51:46');
INSERT INTO `log_info` VALUES (339, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 14:57:21');
INSERT INTO `log_info` VALUES (340, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 14:57:22');
INSERT INTO `log_info` VALUES (341, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 14:57:25');
INSERT INTO `log_info` VALUES (342, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 14:57:55');
INSERT INTO `log_info` VALUES (343, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:00:46');
INSERT INTO `log_info` VALUES (344, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:00:47');
INSERT INTO `log_info` VALUES (345, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:00:49');
INSERT INTO `log_info` VALUES (346, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:00:54');
INSERT INTO `log_info` VALUES (347, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:00:57');
INSERT INTO `log_info` VALUES (348, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:01:03');
INSERT INTO `log_info` VALUES (349, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:01:17');
INSERT INTO `log_info` VALUES (350, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:08:45');
INSERT INTO `log_info` VALUES (351, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:08:46');
INSERT INTO `log_info` VALUES (352, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:08:48');
INSERT INTO `log_info` VALUES (353, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:09:27');
INSERT INTO `log_info` VALUES (354, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:09:28');
INSERT INTO `log_info` VALUES (355, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:09:34');
INSERT INTO `log_info` VALUES (356, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:09:34');
INSERT INTO `log_info` VALUES (357, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:15:27');
INSERT INTO `log_info` VALUES (358, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:15:28');
INSERT INTO `log_info` VALUES (359, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:15:30');
INSERT INTO `log_info` VALUES (360, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:15:31');
INSERT INTO `log_info` VALUES (361, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/2/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:15:46');
INSERT INTO `log_info` VALUES (362, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:15:52');
INSERT INTO `log_info` VALUES (363, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:16:29');
INSERT INTO `log_info` VALUES (364, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:16:30');
INSERT INTO `log_info` VALUES (365, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:16:33');
INSERT INTO `log_info` VALUES (366, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:16:33');
INSERT INTO `log_info` VALUES (367, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/2/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:16:47');
INSERT INTO `log_info` VALUES (368, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:16:56');
INSERT INTO `log_info` VALUES (369, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/2/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:16:59');
INSERT INTO `log_info` VALUES (370, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:17:03');
INSERT INTO `log_info` VALUES (371, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/2/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:17:11');
INSERT INTO `log_info` VALUES (372, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:17:17');
INSERT INTO `log_info` VALUES (373, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/2/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:17:21');
INSERT INTO `log_info` VALUES (374, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:17:23');
INSERT INTO `log_info` VALUES (375, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:20:14');
INSERT INTO `log_info` VALUES (376, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:20:14');
INSERT INTO `log_info` VALUES (377, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:20:58');
INSERT INTO `log_info` VALUES (378, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:20:58');
INSERT INTO `log_info` VALUES (379, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/2/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:23:58');
INSERT INTO `log_info` VALUES (380, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:24:01');
INSERT INTO `log_info` VALUES (381, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/2/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:24:26');
INSERT INTO `log_info` VALUES (382, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:24:29');
INSERT INTO `log_info` VALUES (383, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/2/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:24:32');
INSERT INTO `log_info` VALUES (384, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:28:57');
INSERT INTO `log_info` VALUES (385, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:28:58');
INSERT INTO `log_info` VALUES (386, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:29:04');
INSERT INTO `log_info` VALUES (387, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:29:04');
INSERT INTO `log_info` VALUES (388, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:33:31');
INSERT INTO `log_info` VALUES (389, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:33:31');
INSERT INTO `log_info` VALUES (390, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:33:35');
INSERT INTO `log_info` VALUES (391, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:33:35');
INSERT INTO `log_info` VALUES (392, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:36:44');
INSERT INTO `log_info` VALUES (393, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:36:45');
INSERT INTO `log_info` VALUES (394, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:37:13');
INSERT INTO `log_info` VALUES (395, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:37:14');
INSERT INTO `log_info` VALUES (396, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:37:18');
INSERT INTO `log_info` VALUES (397, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:37:18');
INSERT INTO `log_info` VALUES (398, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/2/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:37:37');
INSERT INTO `log_info` VALUES (399, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:37:39');
INSERT INTO `log_info` VALUES (400, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/2/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:37:45');
INSERT INTO `log_info` VALUES (401, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:37:47');
INSERT INTO `log_info` VALUES (402, 'user', 'GET', 'Result com.example.controller.RoleController.selectPage(int,int)', '/role/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:37:55');
INSERT INTO `log_info` VALUES (403, 'user', 'GET', 'Result com.example.controller.MenuController.selectAll()', '/menu/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:38:10');
INSERT INTO `log_info` VALUES (404, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:45:07');
INSERT INTO `log_info` VALUES (405, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:45:08');
INSERT INTO `log_info` VALUES (406, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:45:11');
INSERT INTO `log_info` VALUES (407, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:45:11');
INSERT INTO `log_info` VALUES (408, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:45:36');
INSERT INTO `log_info` VALUES (409, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:45:44');
INSERT INTO `log_info` VALUES (410, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:45:45');
INSERT INTO `log_info` VALUES (411, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:45:46');
INSERT INTO `log_info` VALUES (412, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:45:46');
INSERT INTO `log_info` VALUES (413, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:47:02');
INSERT INTO `log_info` VALUES (414, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:47:03');
INSERT INTO `log_info` VALUES (415, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:47:05');
INSERT INTO `log_info` VALUES (416, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:47:05');
INSERT INTO `log_info` VALUES (417, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:48:20');
INSERT INTO `log_info` VALUES (418, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:48:21');
INSERT INTO `log_info` VALUES (419, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:48:23');
INSERT INTO `log_info` VALUES (420, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 15:48:23');
INSERT INTO `log_info` VALUES (421, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 16:08:18');
INSERT INTO `log_info` VALUES (422, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 16:08:19');
INSERT INTO `log_info` VALUES (423, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 16:08:23');
INSERT INTO `log_info` VALUES (424, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 16:08:29');
INSERT INTO `log_info` VALUES (425, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 16:13:19');
INSERT INTO `log_info` VALUES (426, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 16:13:20');
INSERT INTO `log_info` VALUES (427, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 16:13:21');
INSERT INTO `log_info` VALUES (428, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 16:13:21');
INSERT INTO `log_info` VALUES (429, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 16:21:27');
INSERT INTO `log_info` VALUES (430, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 16:21:27');
INSERT INTO `log_info` VALUES (431, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 16:21:30');
INSERT INTO `log_info` VALUES (432, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 16:21:30');
INSERT INTO `log_info` VALUES (433, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 16:22:58');
INSERT INTO `log_info` VALUES (434, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 16:22:59');
INSERT INTO `log_info` VALUES (435, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 16:23:01');
INSERT INTO `log_info` VALUES (436, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 16:23:02');
INSERT INTO `log_info` VALUES (437, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 16:26:02');
INSERT INTO `log_info` VALUES (438, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 16:26:03');
INSERT INTO `log_info` VALUES (439, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 16:26:05');
INSERT INTO `log_info` VALUES (440, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 16:26:05');
INSERT INTO `log_info` VALUES (441, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 16:32:34');
INSERT INTO `log_info` VALUES (442, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 16:32:35');
INSERT INTO `log_info` VALUES (443, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 16:32:37');
INSERT INTO `log_info` VALUES (444, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 16:32:37');
INSERT INTO `log_info` VALUES (445, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 16:39:28');
INSERT INTO `log_info` VALUES (446, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 16:39:29');
INSERT INTO `log_info` VALUES (447, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 16:39:30');
INSERT INTO `log_info` VALUES (448, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 16:39:30');
INSERT INTO `log_info` VALUES (449, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 16:40:32');
INSERT INTO `log_info` VALUES (450, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 16:40:33');
INSERT INTO `log_info` VALUES (451, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 16:40:35');
INSERT INTO `log_info` VALUES (452, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 16:40:35');
INSERT INTO `log_info` VALUES (453, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 16:55:51');
INSERT INTO `log_info` VALUES (454, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 16:55:52');
INSERT INTO `log_info` VALUES (455, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 16:55:54');
INSERT INTO `log_info` VALUES (456, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 16:55:54');
INSERT INTO `log_info` VALUES (457, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 16:57:15');
INSERT INTO `log_info` VALUES (458, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 16:57:16');
INSERT INTO `log_info` VALUES (459, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 16:57:19');
INSERT INTO `log_info` VALUES (460, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 16:57:19');
INSERT INTO `log_info` VALUES (461, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 16:58:26');
INSERT INTO `log_info` VALUES (462, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 16:58:27');
INSERT INTO `log_info` VALUES (463, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 16:58:29');
INSERT INTO `log_info` VALUES (464, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 16:58:29');
INSERT INTO `log_info` VALUES (465, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:03:00');
INSERT INTO `log_info` VALUES (466, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:03:00');
INSERT INTO `log_info` VALUES (467, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:03:02');
INSERT INTO `log_info` VALUES (468, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:03:03');
INSERT INTO `log_info` VALUES (469, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:23:59');
INSERT INTO `log_info` VALUES (470, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:23:59');
INSERT INTO `log_info` VALUES (471, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:24:01');
INSERT INTO `log_info` VALUES (472, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:24:01');
INSERT INTO `log_info` VALUES (473, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:25:50');
INSERT INTO `log_info` VALUES (474, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:25:51');
INSERT INTO `log_info` VALUES (475, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:25:53');
INSERT INTO `log_info` VALUES (476, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:25:53');
INSERT INTO `log_info` VALUES (477, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:30:03');
INSERT INTO `log_info` VALUES (478, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:30:03');
INSERT INTO `log_info` VALUES (479, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:30:05');
INSERT INTO `log_info` VALUES (480, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:30:05');
INSERT INTO `log_info` VALUES (481, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:34:14');
INSERT INTO `log_info` VALUES (482, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:34:15');
INSERT INTO `log_info` VALUES (483, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:34:18');
INSERT INTO `log_info` VALUES (484, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:34:18');
INSERT INTO `log_info` VALUES (485, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:35:09');
INSERT INTO `log_info` VALUES (486, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:35:10');
INSERT INTO `log_info` VALUES (487, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:35:11');
INSERT INTO `log_info` VALUES (488, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:35:11');
INSERT INTO `log_info` VALUES (489, 'user', 'GET', 'Result com.example.controller.UserController.selectIsUser(String)', '/user/selectIsUser', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:35:38');
INSERT INTO `log_info` VALUES (490, 'user', 'GET', 'Result com.example.controller.UserController.selectIsUser(String)', '/user/selectIsUser', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:36:50');
INSERT INTO `log_info` VALUES (491, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:41:14');
INSERT INTO `log_info` VALUES (492, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:41:14');
INSERT INTO `log_info` VALUES (493, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:41:16');
INSERT INTO `log_info` VALUES (494, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:41:17');
INSERT INTO `log_info` VALUES (495, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:44:01');
INSERT INTO `log_info` VALUES (496, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:44:02');
INSERT INTO `log_info` VALUES (497, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:44:04');
INSERT INTO `log_info` VALUES (498, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:44:05');
INSERT INTO `log_info` VALUES (499, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:44:34');
INSERT INTO `log_info` VALUES (500, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:44:35');
INSERT INTO `log_info` VALUES (501, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:44:37');
INSERT INTO `log_info` VALUES (502, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:44:37');
INSERT INTO `log_info` VALUES (503, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:45:32');
INSERT INTO `log_info` VALUES (504, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:45:33');
INSERT INTO `log_info` VALUES (505, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:45:36');
INSERT INTO `log_info` VALUES (506, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:45:36');
INSERT INTO `log_info` VALUES (507, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:47:12');
INSERT INTO `log_info` VALUES (508, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:47:13');
INSERT INTO `log_info` VALUES (509, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:47:28');
INSERT INTO `log_info` VALUES (510, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:47:29');
INSERT INTO `log_info` VALUES (511, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:47:31');
INSERT INTO `log_info` VALUES (512, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:47:31');
INSERT INTO `log_info` VALUES (513, 'user', 'GET', 'Result com.example.controller.UserController.selectIsUser(String)', '/user/selectIsUser', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:47:52');
INSERT INTO `log_info` VALUES (514, 'user', 'GET', 'Result com.example.controller.UserController.selectIsUser(String)', '/user/selectIsUser', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:48:00');
INSERT INTO `log_info` VALUES (515, 'user', 'GET', 'Result com.example.controller.UserController.selectIsUser(String)', '/user/selectIsUser', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:48:04');
INSERT INTO `log_info` VALUES (516, 'user', 'GET', 'Result com.example.controller.UserController.selectIsUser(String)', '/user/selectIsUser', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:48:14');
INSERT INTO `log_info` VALUES (517, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:50:05');
INSERT INTO `log_info` VALUES (518, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:50:06');
INSERT INTO `log_info` VALUES (519, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:50:08');
INSERT INTO `log_info` VALUES (520, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:50:09');
INSERT INTO `log_info` VALUES (521, 'user', 'GET', 'Result com.example.controller.UserController.selectIsUser(String)', '/user/selectIsUser', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:50:13');
INSERT INTO `log_info` VALUES (522, 'user', 'GET', 'Result com.example.controller.UserController.selectIsUser(String)', '/user/selectIsUser', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:50:16');
INSERT INTO `log_info` VALUES (523, 'user', 'GET', 'Result com.example.controller.UserController.selectIsUser(String)', '/user/selectIsUser', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 17:50:19');
INSERT INTO `log_info` VALUES (524, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '117.189.210.28', '贵州省六盘水市', '查询成功!😍', NULL, '2021-08-23 17:59:45');
INSERT INTO `log_info` VALUES (525, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '117.189.210.28', '贵州省六盘水市', '查询成功!😍', NULL, '2021-08-23 17:59:46');
INSERT INTO `log_info` VALUES (526, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '117.189.210.28', '贵州省六盘水市', '查询成功!😍', NULL, '2021-08-23 17:59:56');
INSERT INTO `log_info` VALUES (527, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/104/5', 'Chrome 9', 'Windows 10', 'Computer', '117.189.210.28', '贵州省六盘水市', '查询成功!😍', NULL, '2021-08-23 17:59:59');
INSERT INTO `log_info` VALUES (528, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '117.189.210.28', '贵州省六盘水市', '查询成功!😍', NULL, '2021-08-23 18:00:09');
INSERT INTO `log_info` VALUES (529, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '117.189.210.28', '贵州省六盘水市', '查询成功!😍', NULL, '2021-08-23 18:00:09');
INSERT INTO `log_info` VALUES (530, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 18:04:33');
INSERT INTO `log_info` VALUES (531, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 18:04:33');
INSERT INTO `log_info` VALUES (532, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 18:04:38');
INSERT INTO `log_info` VALUES (533, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 18:04:39');
INSERT INTO `log_info` VALUES (534, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 18:04:46');
INSERT INTO `log_info` VALUES (535, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 18:04:46');
INSERT INTO `log_info` VALUES (536, 'anonymousUser', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 18:04:50');
INSERT INTO `log_info` VALUES (537, 'anonymousUser', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 18:05:11');
INSERT INTO `log_info` VALUES (538, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 18:05:30');
INSERT INTO `log_info` VALUES (539, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 18:05:31');
INSERT INTO `log_info` VALUES (540, 'anonymousUser', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 18:05:44');
INSERT INTO `log_info` VALUES (541, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 18:05:53');
INSERT INTO `log_info` VALUES (542, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 18:05:54');
INSERT INTO `log_info` VALUES (543, 'anonymousUser', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 18:06:38');
INSERT INTO `log_info` VALUES (544, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 18:06:45');
INSERT INTO `log_info` VALUES (545, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 18:06:46');
INSERT INTO `log_info` VALUES (546, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 18:07:01');
INSERT INTO `log_info` VALUES (547, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 18:07:02');
INSERT INTO `log_info` VALUES (548, 'anonymousUser', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 18:07:14');
INSERT INTO `log_info` VALUES (549, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 18:07:22');
INSERT INTO `log_info` VALUES (550, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 18:07:23');
INSERT INTO `log_info` VALUES (551, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 18:07:41');
INSERT INTO `log_info` VALUES (552, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 18:07:41');
INSERT INTO `log_info` VALUES (553, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/2/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 18:07:46');
INSERT INTO `log_info` VALUES (554, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 18:07:49');
INSERT INTO `log_info` VALUES (555, 'user', 'GET', 'Result com.example.controller.RoleController.selectPage(int,int)', '/role/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 18:07:53');
INSERT INTO `log_info` VALUES (556, 'user', 'GET', 'Result com.example.controller.MenuController.selectAll()', '/menu/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 18:07:58');
INSERT INTO `log_info` VALUES (557, 'user', 'GET', 'Result com.example.controller.UserController.selectIsUser(String)', '/user/selectIsUser', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 18:09:17');
INSERT INTO `log_info` VALUES (558, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/2/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 18:09:37');
INSERT INTO `log_info` VALUES (559, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 18:09:40');
INSERT INTO `log_info` VALUES (560, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/2/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 18:09:48');
INSERT INTO `log_info` VALUES (561, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-23 18:09:50');
INSERT INTO `log_info` VALUES (562, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-25 15:16:36');
INSERT INTO `log_info` VALUES (563, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-25 15:16:37');
INSERT INTO `log_info` VALUES (564, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-25 15:16:45');
INSERT INTO `log_info` VALUES (565, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-25 15:16:45');
INSERT INTO `log_info` VALUES (566, 'user', 'GET', 'Result com.example.controller.RoleController.selectPage(int,int)', '/role/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-25 15:16:59');
INSERT INTO `log_info` VALUES (567, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-25 15:17:06');
INSERT INTO `log_info` VALUES (568, 'user', 'GET', 'Result com.example.controller.MenuController.selectAll()', '/menu/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-25 15:17:16');
INSERT INTO `log_info` VALUES (569, 'anonymousUser', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-25 15:20:11');
INSERT INTO `log_info` VALUES (570, 'admin', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-25 15:20:27');
INSERT INTO `log_info` VALUES (571, 'admin', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-25 15:20:27');
INSERT INTO `log_info` VALUES (572, 'admin', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-25 15:20:33');
INSERT INTO `log_info` VALUES (573, 'admin', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-25 15:20:34');
INSERT INTO `log_info` VALUES (574, 'admin', 'GET', 'Result com.example.controller.MenuController.selectAll()', '/menu/list', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-25 15:20:43');
INSERT INTO `log_info` VALUES (575, 'admin', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-25 15:20:50');
INSERT INTO `log_info` VALUES (576, 'admin', 'GET', 'Result com.example.controller.RoleController.selectPage(int,int)', '/role/page/1/5', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-25 15:21:14');
INSERT INTO `log_info` VALUES (577, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-25 15:22:39');
INSERT INTO `log_info` VALUES (578, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-25 15:22:40');
INSERT INTO `log_info` VALUES (579, 'admin', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-25 15:22:43');
INSERT INTO `log_info` VALUES (580, 'admin', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-25 15:22:44');
INSERT INTO `log_info` VALUES (581, 'admin', 'GET', 'Result com.example.controller.RoleController.selectPage(int,int)', '/role/page/1/5', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-25 15:22:51');
INSERT INTO `log_info` VALUES (582, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-25 15:22:56');
INSERT INTO `log_info` VALUES (583, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-25 15:22:56');
INSERT INTO `log_info` VALUES (584, 'user', 'GET', 'Result com.example.controller.RoleController.selectPage(int,int)', '/role/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-25 15:23:00');
INSERT INTO `log_info` VALUES (585, 'user', 'GET', 'Result com.example.controller.MenuController.selectAll()', '/menu/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-25 15:23:04');
INSERT INTO `log_info` VALUES (586, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 15:44:45');
INSERT INTO `log_info` VALUES (587, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 15:44:46');
INSERT INTO `log_info` VALUES (588, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 15:44:54');
INSERT INTO `log_info` VALUES (589, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 15:44:55');
INSERT INTO `log_info` VALUES (590, 'user', 'GET', 'Result com.example.controller.RoleController.selectPage(int,int)', '/role/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 15:44:58');
INSERT INTO `log_info` VALUES (591, 'user', 'GET', 'Result com.example.controller.MenuController.selectAll()', '/menu/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 15:45:01');
INSERT INTO `log_info` VALUES (592, 'user', 'GET', 'Result com.example.controller.UserController.selectIsUser(String)', '/user/selectIsUser', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 16:01:34');
INSERT INTO `log_info` VALUES (593, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 16:10:57');
INSERT INTO `log_info` VALUES (594, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 16:10:59');
INSERT INTO `log_info` VALUES (595, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 16:11:04');
INSERT INTO `log_info` VALUES (596, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 16:11:05');
INSERT INTO `log_info` VALUES (597, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 16:41:20');
INSERT INTO `log_info` VALUES (598, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 16:41:21');
INSERT INTO `log_info` VALUES (599, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 16:42:15');
INSERT INTO `log_info` VALUES (600, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 16:42:16');
INSERT INTO `log_info` VALUES (601, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 16:42:22');
INSERT INTO `log_info` VALUES (602, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 16:42:22');
INSERT INTO `log_info` VALUES (603, 'user', 'GET', 'Result com.example.controller.UserController.selectIsUser(String)', '/user/selectIsUser', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 16:43:22');
INSERT INTO `log_info` VALUES (604, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:02:19');
INSERT INTO `log_info` VALUES (605, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:02:20');
INSERT INTO `log_info` VALUES (606, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:02:22');
INSERT INTO `log_info` VALUES (607, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:02:22');
INSERT INTO `log_info` VALUES (608, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:03:50');
INSERT INTO `log_info` VALUES (609, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:03:51');
INSERT INTO `log_info` VALUES (610, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:03:54');
INSERT INTO `log_info` VALUES (611, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:03:54');
INSERT INTO `log_info` VALUES (612, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:07:37');
INSERT INTO `log_info` VALUES (613, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:07:38');
INSERT INTO `log_info` VALUES (614, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:07:40');
INSERT INTO `log_info` VALUES (615, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:07:41');
INSERT INTO `log_info` VALUES (616, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:08:57');
INSERT INTO `log_info` VALUES (617, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:08:57');
INSERT INTO `log_info` VALUES (618, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:09:00');
INSERT INTO `log_info` VALUES (619, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:09:00');
INSERT INTO `log_info` VALUES (620, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:13:30');
INSERT INTO `log_info` VALUES (621, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:13:31');
INSERT INTO `log_info` VALUES (622, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:13:32');
INSERT INTO `log_info` VALUES (623, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:13:33');
INSERT INTO `log_info` VALUES (624, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:16:30');
INSERT INTO `log_info` VALUES (625, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:16:31');
INSERT INTO `log_info` VALUES (626, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:16:33');
INSERT INTO `log_info` VALUES (627, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:16:33');
INSERT INTO `log_info` VALUES (628, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:16:37');
INSERT INTO `log_info` VALUES (629, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/2/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:16:42');
INSERT INTO `log_info` VALUES (630, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:30:20');
INSERT INTO `log_info` VALUES (631, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:30:21');
INSERT INTO `log_info` VALUES (632, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:30:23');
INSERT INTO `log_info` VALUES (633, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:30:23');
INSERT INTO `log_info` VALUES (634, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:32:20');
INSERT INTO `log_info` VALUES (635, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:32:21');
INSERT INTO `log_info` VALUES (636, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:32:23');
INSERT INTO `log_info` VALUES (637, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:32:23');
INSERT INTO `log_info` VALUES (638, 'user', 'GET', 'Result com.example.controller.RoleController.selectPage(int,int)', '/role/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:32:27');
INSERT INTO `log_info` VALUES (639, 'user', 'GET', 'Result com.example.controller.MenuController.selectAll()', '/menu/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:32:30');
INSERT INTO `log_info` VALUES (640, 'admin', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:32:53');
INSERT INTO `log_info` VALUES (641, 'admin', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:32:54');
INSERT INTO `log_info` VALUES (642, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:33:01');
INSERT INTO `log_info` VALUES (643, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:33:02');
INSERT INTO `log_info` VALUES (644, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:33:12');
INSERT INTO `log_info` VALUES (645, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:33:12');
INSERT INTO `log_info` VALUES (646, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:33:25');
INSERT INTO `log_info` VALUES (647, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/2/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:33:29');
INSERT INTO `log_info` VALUES (648, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:33:32');
INSERT INTO `log_info` VALUES (649, 'user', 'GET', 'Result com.example.controller.RoleController.selectPage(int,int)', '/role/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:34:05');
INSERT INTO `log_info` VALUES (650, 'admin', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:35:51');
INSERT INTO `log_info` VALUES (651, 'admin', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:35:52');
INSERT INTO `log_info` VALUES (652, 'admin', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:36:01');
INSERT INTO `log_info` VALUES (653, 'admin', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:36:01');
INSERT INTO `log_info` VALUES (654, 'admin', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:36:12');
INSERT INTO `log_info` VALUES (655, 'admin', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:36:13');
INSERT INTO `log_info` VALUES (656, 'admin', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:36:27');
INSERT INTO `log_info` VALUES (657, 'admin', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:36:27');
INSERT INTO `log_info` VALUES (658, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:44:36');
INSERT INTO `log_info` VALUES (659, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:44:37');
INSERT INTO `log_info` VALUES (660, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:44:40');
INSERT INTO `log_info` VALUES (661, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:44:40');
INSERT INTO `log_info` VALUES (662, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:45:14');
INSERT INTO `log_info` VALUES (663, 'user', 'GET', 'Result com.example.controller.UserController.selectIsUser(String)', '/user/selectIsUser', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:45:25');
INSERT INTO `log_info` VALUES (664, 'user', 'GET', 'Result com.example.controller.UserController.selectIsUser(String)', '/user/selectIsUser', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:45:30');
INSERT INTO `log_info` VALUES (665, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:45:44');
INSERT INTO `log_info` VALUES (666, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:45:45');
INSERT INTO `log_info` VALUES (667, 'admin', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:45:53');
INSERT INTO `log_info` VALUES (668, 'admin', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:45:53');
INSERT INTO `log_info` VALUES (669, 'admin', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:46:02');
INSERT INTO `log_info` VALUES (670, 'admin', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:46:02');
INSERT INTO `log_info` VALUES (671, 'admin', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:50:15');
INSERT INTO `log_info` VALUES (672, 'admin', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:50:16');
INSERT INTO `log_info` VALUES (673, 'admin', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:50:21');
INSERT INTO `log_info` VALUES (674, 'admin', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:50:21');
INSERT INTO `log_info` VALUES (675, 'admin', 'GET', 'Result com.example.controller.MenuController.selectAll()', '/menu/list', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:50:26');
INSERT INTO `log_info` VALUES (676, 'admin', 'GET', 'Result com.example.controller.RoleController.selectPage(int,int)', '/role/page/1/5', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:50:35');
INSERT INTO `log_info` VALUES (677, 'admin', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:50:43');
INSERT INTO `log_info` VALUES (678, 'admin', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/135/5', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:50:49');
INSERT INTO `log_info` VALUES (679, 'admin', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/135/40', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:50:59');
INSERT INTO `log_info` VALUES (680, 'admin', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/17/40', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:50:59');
INSERT INTO `log_info` VALUES (681, 'admin', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/17/5', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:51:14');
INSERT INTO `log_info` VALUES (682, 'admin', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/135/5', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:51:21');
INSERT INTO `log_info` VALUES (683, 'admin', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/136/5', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:51:25');
INSERT INTO `log_info` VALUES (684, 'admin', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/136/40', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:51:30');
INSERT INTO `log_info` VALUES (685, 'admin', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/17/40', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-26 17:51:30');
INSERT INTO `log_info` VALUES (686, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 14:31:48');
INSERT INTO `log_info` VALUES (687, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 14:31:49');
INSERT INTO `log_info` VALUES (688, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 14:31:56');
INSERT INTO `log_info` VALUES (689, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 14:31:57');
INSERT INTO `log_info` VALUES (690, 'user', 'GET', 'Result com.example.controller.RoleController.selectPage(int,int)', '/role/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 14:32:00');
INSERT INTO `log_info` VALUES (691, 'user', 'GET', 'Result com.example.controller.MenuController.selectAll()', '/menu/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 14:32:03');
INSERT INTO `log_info` VALUES (692, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 14:32:26');
INSERT INTO `log_info` VALUES (693, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/138/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 14:32:31');
INSERT INTO `log_info` VALUES (694, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 14:32:34');
INSERT INTO `log_info` VALUES (695, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/2/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 14:32:57');
INSERT INTO `log_info` VALUES (696, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 14:33:00');
INSERT INTO `log_info` VALUES (697, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/2/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 14:33:03');
INSERT INTO `log_info` VALUES (698, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 14:33:05');
INSERT INTO `log_info` VALUES (699, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 14:33:40');
INSERT INTO `log_info` VALUES (700, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 14:33:40');
INSERT INTO `log_info` VALUES (701, 'user', 'GET', 'Result com.example.controller.RoleController.selectPage(int,int)', '/role/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 14:33:44');
INSERT INTO `log_info` VALUES (702, 'user', 'GET', 'Result com.example.controller.MenuController.selectAll()', '/menu/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 14:33:46');
INSERT INTO `log_info` VALUES (703, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/2/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 14:33:58');
INSERT INTO `log_info` VALUES (704, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 14:34:00');
INSERT INTO `log_info` VALUES (705, 'user', 'GET', 'Result com.example.controller.RoleController.selectPage(int,int)', '/role/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 14:34:05');
INSERT INTO `log_info` VALUES (706, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/2/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 14:34:11');
INSERT INTO `log_info` VALUES (707, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 14:37:43');
INSERT INTO `log_info` VALUES (708, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 14:46:59');
INSERT INTO `log_info` VALUES (709, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 14:47:00');
INSERT INTO `log_info` VALUES (710, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 14:47:02');
INSERT INTO `log_info` VALUES (711, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 14:47:02');
INSERT INTO `log_info` VALUES (712, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 14:47:28');
INSERT INTO `log_info` VALUES (713, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 14:47:29');
INSERT INTO `log_info` VALUES (714, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 14:47:31');
INSERT INTO `log_info` VALUES (715, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 14:47:31');
INSERT INTO `log_info` VALUES (716, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 14:47:59');
INSERT INTO `log_info` VALUES (717, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 14:48:00');
INSERT INTO `log_info` VALUES (718, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 14:48:01');
INSERT INTO `log_info` VALUES (719, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 14:48:02');
INSERT INTO `log_info` VALUES (720, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 14:49:02');
INSERT INTO `log_info` VALUES (721, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 14:49:03');
INSERT INTO `log_info` VALUES (722, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 14:49:04');
INSERT INTO `log_info` VALUES (723, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 14:49:05');
INSERT INTO `log_info` VALUES (724, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:04:42');
INSERT INTO `log_info` VALUES (725, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:04:43');
INSERT INTO `log_info` VALUES (726, 'user', 'GET', 'Result com.example.controller.RoleController.selectPage(int,int)', '/role/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:04:45');
INSERT INTO `log_info` VALUES (727, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:04:49');
INSERT INTO `log_info` VALUES (728, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:04:49');
INSERT INTO `log_info` VALUES (729, 'user', 'GET', 'Result com.example.controller.MenuController.selectAll()', '/menu/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:04:53');
INSERT INTO `log_info` VALUES (730, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:05:33');
INSERT INTO `log_info` VALUES (731, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/2/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:05:37');
INSERT INTO `log_info` VALUES (732, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:05:40');
INSERT INTO `log_info` VALUES (733, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/146/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:05:42');
INSERT INTO `log_info` VALUES (734, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:05:47');
INSERT INTO `log_info` VALUES (735, 'user', 'GET', 'Result com.example.controller.UserController.selectIsUser(String)', '/user/selectIsUser', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:07:55');
INSERT INTO `log_info` VALUES (736, 'user', 'GET', 'Result com.example.controller.UserController.selectIsUser(String)', '/user/selectIsUser', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:08:14');
INSERT INTO `log_info` VALUES (737, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:08:18');
INSERT INTO `log_info` VALUES (738, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:08:19');
INSERT INTO `log_info` VALUES (739, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:08:21');
INSERT INTO `log_info` VALUES (740, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:08:21');
INSERT INTO `log_info` VALUES (741, 'user', 'GET', 'Result com.example.controller.UserController.selectIsUser(String)', '/user/selectIsUser', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:08:28');
INSERT INTO `log_info` VALUES (742, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:08:43');
INSERT INTO `log_info` VALUES (743, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:08:44');
INSERT INTO `log_info` VALUES (744, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:08:45');
INSERT INTO `log_info` VALUES (745, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:08:45');
INSERT INTO `log_info` VALUES (746, 'user', 'GET', 'Result com.example.controller.UserController.selectIsUser(String)', '/user/selectIsUser', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:08:51');
INSERT INTO `log_info` VALUES (747, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:19:51');
INSERT INTO `log_info` VALUES (748, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:19:52');
INSERT INTO `log_info` VALUES (749, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:19:54');
INSERT INTO `log_info` VALUES (750, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:19:54');
INSERT INTO `log_info` VALUES (751, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:21:27');
INSERT INTO `log_info` VALUES (752, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:21:27');
INSERT INTO `log_info` VALUES (753, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:21:29');
INSERT INTO `log_info` VALUES (754, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:21:30');
INSERT INTO `log_info` VALUES (755, 'user', 'GET', 'Result com.example.controller.UserController.selectIsUser(String)', '/user/selectIsUser', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:22:17');
INSERT INTO `log_info` VALUES (756, 'user', 'GET', 'Result com.example.controller.UserController.selectIsUser(String)', '/user/selectIsUser', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:22:42');
INSERT INTO `log_info` VALUES (757, 'user', 'GET', 'Result com.example.controller.UserController.selectIsUser(String)', '/user/selectIsUser', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:22:46');
INSERT INTO `log_info` VALUES (758, 'user', 'GET', 'Result com.example.controller.UserController.selectIsUser(String)', '/user/selectIsUser', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:23:44');
INSERT INTO `log_info` VALUES (759, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:23:50');
INSERT INTO `log_info` VALUES (760, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:23:50');
INSERT INTO `log_info` VALUES (761, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:23:53');
INSERT INTO `log_info` VALUES (762, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:23:53');
INSERT INTO `log_info` VALUES (763, 'user', 'GET', 'Result com.example.controller.UserController.selectIsUser(String)', '/user/selectIsUser', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:23:58');
INSERT INTO `log_info` VALUES (764, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:24:21');
INSERT INTO `log_info` VALUES (765, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:24:22');
INSERT INTO `log_info` VALUES (766, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:24:24');
INSERT INTO `log_info` VALUES (767, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:24:25');
INSERT INTO `log_info` VALUES (768, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:24:55');
INSERT INTO `log_info` VALUES (769, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:24:56');
INSERT INTO `log_info` VALUES (770, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:24:59');
INSERT INTO `log_info` VALUES (771, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:24:59');
INSERT INTO `log_info` VALUES (772, 'user', 'GET', 'Result com.example.controller.UserController.selectIsUser(String)', '/user/selectIsUser', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:25:08');
INSERT INTO `log_info` VALUES (773, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:25:38');
INSERT INTO `log_info` VALUES (774, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:25:38');
INSERT INTO `log_info` VALUES (775, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:25:40');
INSERT INTO `log_info` VALUES (776, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:25:41');
INSERT INTO `log_info` VALUES (777, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:26:01');
INSERT INTO `log_info` VALUES (778, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:26:02');
INSERT INTO `log_info` VALUES (779, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:26:06');
INSERT INTO `log_info` VALUES (780, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:26:06');
INSERT INTO `log_info` VALUES (781, 'user', 'GET', 'Result com.example.controller.UserController.selectIsUser(String)', '/user/selectIsUser', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:26:14');
INSERT INTO `log_info` VALUES (782, 'user', 'GET', 'Result com.example.controller.UserController.selectIsUser(String)', '/user/selectIsUser', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:26:18');
INSERT INTO `log_info` VALUES (783, 'user', 'GET', 'Result com.example.controller.UserController.selectIsUser(String)', '/user/selectIsUser', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:26:28');
INSERT INTO `log_info` VALUES (784, 'user', 'GET', 'Result com.example.controller.UserController.selectIsUser(String)', '/user/selectIsUser', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:26:41');
INSERT INTO `log_info` VALUES (785, 'user', 'GET', 'Result com.example.controller.UserController.selectIsUser(String)', '/user/selectIsUser', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:26:52');
INSERT INTO `log_info` VALUES (786, 'user', 'GET', 'Result com.example.controller.UserController.selectIsUser(String)', '/user/selectIsUser', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:27:48');
INSERT INTO `log_info` VALUES (787, 'user', 'GET', 'Result com.example.controller.UserController.selectIsUser(String)', '/user/selectIsUser', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:27:51');
INSERT INTO `log_info` VALUES (788, 'user', 'GET', 'Result com.example.controller.UserController.selectIsUser(String)', '/user/selectIsUser', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:28:01');
INSERT INTO `log_info` VALUES (789, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:29:43');
INSERT INTO `log_info` VALUES (790, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:29:45');
INSERT INTO `log_info` VALUES (791, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:29:46');
INSERT INTO `log_info` VALUES (792, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:29:46');
INSERT INTO `log_info` VALUES (793, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:33:21');
INSERT INTO `log_info` VALUES (794, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:33:22');
INSERT INTO `log_info` VALUES (795, 'user', 'GET', 'Result com.example.controller.RoleController.selectPage(int,int)', '/role/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:33:23');
INSERT INTO `log_info` VALUES (796, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:33:27');
INSERT INTO `log_info` VALUES (797, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 15:33:27');
INSERT INTO `log_info` VALUES (798, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 16:01:06');
INSERT INTO `log_info` VALUES (799, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 16:01:07');
INSERT INTO `log_info` VALUES (800, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 16:01:10');
INSERT INTO `log_info` VALUES (801, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 16:01:10');
INSERT INTO `log_info` VALUES (802, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 16:04:00');
INSERT INTO `log_info` VALUES (803, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 16:04:01');
INSERT INTO `log_info` VALUES (804, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 16:06:23');
INSERT INTO `log_info` VALUES (805, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 16:06:23');
INSERT INTO `log_info` VALUES (806, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 16:06:25');
INSERT INTO `log_info` VALUES (807, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 16:06:25');
INSERT INTO `log_info` VALUES (808, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 16:18:22');
INSERT INTO `log_info` VALUES (809, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 16:18:23');
INSERT INTO `log_info` VALUES (810, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 16:18:25');
INSERT INTO `log_info` VALUES (811, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 16:18:26');
INSERT INTO `log_info` VALUES (812, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 16:36:51');
INSERT INTO `log_info` VALUES (813, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 16:36:52');
INSERT INTO `log_info` VALUES (814, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 16:38:58');
INSERT INTO `log_info` VALUES (815, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 16:38:59');
INSERT INTO `log_info` VALUES (816, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 16:39:02');
INSERT INTO `log_info` VALUES (817, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 16:39:02');
INSERT INTO `log_info` VALUES (818, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/2/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 16:39:08');
INSERT INTO `log_info` VALUES (819, 'user', 'GET', 'Result com.example.controller.RoleController.selectPage(int,int)', '/role/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 16:39:11');
INSERT INTO `log_info` VALUES (820, 'user', 'GET', 'Result com.example.controller.MenuController.selectAll()', '/menu/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 16:39:14');
INSERT INTO `log_info` VALUES (821, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 16:39:20');
INSERT INTO `log_info` VALUES (822, 'user', 'GET', 'Result com.example.controller.MenuController.selectPermMenu(HttpServletRequest)', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 16:39:30');
INSERT INTO `log_info` VALUES (823, 'user', 'GET', 'Result com.example.controller.UserController.info()', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 16:39:31');
INSERT INTO `log_info` VALUES (824, 'user', 'GET', 'Result com.example.controller.UserController.selectPage(int,int)', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 16:39:37');
INSERT INTO `log_info` VALUES (825, 'user', 'GET', 'Result com.example.controller.RoleController.selectAll()', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 16:39:37');
INSERT INTO `log_info` VALUES (826, 'user', 'GET', 'Result com.example.controller.RoleController.selectPage(int,int)', '/role/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 16:39:40');
INSERT INTO `log_info` VALUES (827, 'user', 'GET', 'Result com.example.controller.MenuController.selectAll()', '/menu/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 16:39:44');
INSERT INTO `log_info` VALUES (828, 'user', 'GET', 'Result com.example.controller.LogInfoController.page(int,int)', '/log-info/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', '', '查询成功!😍', NULL, '2021-08-27 16:39:48');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '路由',
  `order_num` int(0) NULL DEFAULT NULL COMMENT '排序',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '名称',
  `type` int(0) NULL DEFAULT NULL COMMENT '类型',
  `parent_id` int(0) NULL DEFAULT NULL COMMENT '父节点',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '组件',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标题',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图标',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `version` int(0) NULL DEFAULT 1 COMMENT '乐观锁',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (2, '/user/save', 1, '', 2, 26, NULL, '添加用户', NULL, NULL, NULL, 1);
INSERT INTO `menu` VALUES (3, '/user/page', 2, '', 2, 26, NULL, '分页查询用户', NULL, NULL, '2021-07-29 16:41:40', 1);
INSERT INTO `menu` VALUES (4, '/user/update', 3, NULL, 2, 26, NULL, '修改用户', NULL, NULL, NULL, 1);
INSERT INTO `menu` VALUES (5, '/user/remove', 4, NULL, 2, 26, NULL, '删除用户', NULL, NULL, NULL, 1);
INSERT INTO `menu` VALUES (6, '/user/removeByIds', 5, NULL, 2, 26, NULL, '批量删除用户', NULL, NULL, NULL, 1);
INSERT INTO `menu` VALUES (7, '/menu/save', 1, NULL, 2, 29, NULL, '添加菜单', NULL, NULL, NULL, 1);
INSERT INTO `menu` VALUES (8, '/menu/list', 2, NULL, 2, 29, NULL, '查询全部菜单\r\n', NULL, '2021-07-29 16:21:07', '2021-07-29 16:41:53', 1);
INSERT INTO `menu` VALUES (9, '/menu/update', 3, NULL, 2, 29, NULL, '修改菜单', NULL, '2021-07-29 16:25:51', '2021-07-29 16:25:51', 1);
INSERT INTO `menu` VALUES (10, '/menu/remove', 4, NULL, 2, 29, NULL, '删除菜单', NULL, '2021-07-29 16:33:12', '2021-07-29 16:33:12', 1);
INSERT INTO `menu` VALUES (12, '/role/save', 1, NULL, 2, 30, '', '添加角色', NULL, '2021-07-29 16:57:56', '2021-07-29 16:57:56', 1);
INSERT INTO `menu` VALUES (13, '/role/addAuth', 2, NULL, 2, 30, '', '添加权限\r\n', NULL, '2021-07-29 17:54:05', '2021-07-29 17:54:05', 1);
INSERT INTO `menu` VALUES (14, '/role/removeAuth', 3, NULL, 2, 30, NULL, '删除权限\r\n', NULL, '2021-07-29 19:27:35', '2021-07-29 19:27:35', 1);
INSERT INTO `menu` VALUES (16, '/role/update', 4, NULL, 2, 30, NULL, '更新角色', NULL, '2021-07-29 20:48:29', '2021-07-29 20:48:29', 1);
INSERT INTO `menu` VALUES (17, '/role/page', 5, NULL, 2, 30, NULL, '分页查询角色', NULL, '2021-07-29 21:08:23', '2021-07-29 21:08:23', 1);
INSERT INTO `menu` VALUES (18, '/role/remove', 6, NULL, 2, 30, NULL, '删除角色', NULL, '2021-07-29 21:26:18', '2021-07-29 21:26:18', 1);
INSERT INTO `menu` VALUES (19, '/user/addRole', 6, NULL, 2, 30, NULL, '添加角色', NULL, '2021-07-29 23:08:00', '2021-07-29 23:08:00', 1);
INSERT INTO `menu` VALUES (21, '/menu/permMenu', 5, '', 2, 29, '', '当前用户菜单', NULL, NULL, NULL, 1);
INSERT INTO `menu` VALUES (24, '/system', 2, 'system', 0, NULL, 'system', '系统管理', 'el-icon-setting', NULL, NULL, 1);
INSERT INTO `menu` VALUES (25, '/system/', 1, 'auth', 0, 24, '', '权限管理', 'el-icon-unlock', NULL, NULL, 1);
INSERT INTO `menu` VALUES (26, '/system/user', 1, 'user', 1, 25, 'system/user', '用户管理', 'el-icon-user-solid', NULL, NULL, 1);
INSERT INTO `menu` VALUES (28, '/user/selectIsUser', 7, NULL, 2, 28, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `menu` VALUES (29, '/system/menu', 3, 'menu', 1, 25, 'system/menu', '菜单管理', 'el-icon-menu', NULL, NULL, 1);
INSERT INTO `menu` VALUES (30, '/system/role', 2, 'role', 1, 25, 'system/role', '角色管理', 'el-icon-s-help', NULL, NULL, 1);
INSERT INTO `menu` VALUES (31, '/system/monitor', 2, 'monitor', 0, 24, NULL, '监控管理', 'el-icon-monitor', NULL, NULL, 1);
INSERT INTO `menu` VALUES (33, '/user/info', 8, '', 2, 28, '', '用户信息', '', NULL, NULL, 1);
INSERT INTO `menu` VALUES (34, '/goods', 3, 'goods', 1, NULL, 'goods', '商品管理', 'el-icon-s-goods', NULL, NULL, 1);
INSERT INTO `menu` VALUES (35, '/orders', 4, 'orders', 1, NULL, 'orders', '订单管理', 'el-icon-s-order', NULL, NULL, 1);
INSERT INTO `menu` VALUES (36, '/system/monitor/log', 1, 'log', 1, 31, 'system/monitor/log', '操作日志', 'el-icon-document', NULL, NULL, 1);
INSERT INTO `menu` VALUES (47, '/avatar', 2, NULL, 2, NULL, NULL, '图片资源', NULL, NULL, NULL, 1);
INSERT INTO `menu` VALUES (49, '/log-info/page', 1, NULL, 2, 36, NULL, '请求日志', NULL, NULL, NULL, 1);
INSERT INTO `menu` VALUES (50, '/role/list', NULL, NULL, 2, 30, NULL, '查询所有角色', NULL, NULL, NULL, 1);

-- ----------------------------
-- Table structure for menu_role
-- ----------------------------
DROP TABLE IF EXISTS `menu_role`;
CREATE TABLE `menu_role`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `mid` int(0) NULL DEFAULT NULL COMMENT '菜单ID',
  `rid` int(0) NULL DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `mid`(`mid`) USING BTREE,
  INDEX `rid`(`rid`) USING BTREE,
  CONSTRAINT `menu_role_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `menu_role_ibfk_2` FOREIGN KEY (`rid`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu_role
-- ----------------------------
INSERT INTO `menu_role` VALUES (3, 2, 3);
INSERT INTO `menu_role` VALUES (4, 3, 3);
INSERT INTO `menu_role` VALUES (5, 4, 3);
INSERT INTO `menu_role` VALUES (6, 5, 3);
INSERT INTO `menu_role` VALUES (7, 6, 3);
INSERT INTO `menu_role` VALUES (8, 7, 3);
INSERT INTO `menu_role` VALUES (9, 10, 3);
INSERT INTO `menu_role` VALUES (10, 9, 3);
INSERT INTO `menu_role` VALUES (11, 8, 3);
INSERT INTO `menu_role` VALUES (12, 12, 3);
INSERT INTO `menu_role` VALUES (13, 13, 3);
INSERT INTO `menu_role` VALUES (16, 14, 3);
INSERT INTO `menu_role` VALUES (18, 16, 3);
INSERT INTO `menu_role` VALUES (19, 17, 3);
INSERT INTO `menu_role` VALUES (22, 18, 3);
INSERT INTO `menu_role` VALUES (23, 19, 3);
INSERT INTO `menu_role` VALUES (26, 21, 4);
INSERT INTO `menu_role` VALUES (31, 26, 3);
INSERT INTO `menu_role` VALUES (33, 28, 3);
INSERT INTO `menu_role` VALUES (34, 29, 3);
INSERT INTO `menu_role` VALUES (35, 30, 3);
INSERT INTO `menu_role` VALUES (36, 24, 3);
INSERT INTO `menu_role` VALUES (38, 31, 3);
INSERT INTO `menu_role` VALUES (39, 33, 3);
INSERT INTO `menu_role` VALUES (40, 34, 3);
INSERT INTO `menu_role` VALUES (41, 35, 3);
INSERT INTO `menu_role` VALUES (42, 36, 3);
INSERT INTO `menu_role` VALUES (48, 25, 3);
INSERT INTO `menu_role` VALUES (50, 47, 4);
INSERT INTO `menu_role` VALUES (52, 49, 3);
INSERT INTO `menu_role` VALUES (53, 50, 3);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `version` int(0) NULL DEFAULT 1 COMMENT '乐观锁',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'root', '超级管理员', NULL, NULL, 1);
INSERT INTO `role` VALUES (2, 'admin', '管理员', NULL, NULL, 1);
INSERT INTO `role` VALUES (3, 'user', '用户', NULL, NULL, 1);
INSERT INTO `role` VALUES (4, 'tourist', '游客', NULL, NULL, 1);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名',
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '昵称',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '密码',
  `access_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '授权令牌',
  `head_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` int(0) NULL DEFAULT NULL COMMENT '状态',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `version` int(0) NULL DEFAULT 1 COMMENT '乐观锁',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Redundant;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'user', '木灵鱼儿', '$2a$10$UfzfgbVxCAXoiyaCw7IXiuHiFqMMVbhbb3ox6nkxbAJLGTWjJ7Ciq', '232f125c-a150-4764-be34-18747f6ecb29', NULL, '15885326305', 'user@qq.com', 1, '2021-07-29 02:14:10', '2021-08-27 16:39:29', 1);
INSERT INTO `user` VALUES (2, 'admin', '初之音', '$2a$10$3amz9BqQJUsU1P.rJ6zIyeDEWeewOubtPCBSyl/huWSc.MQTJzxZu', 'ecc013f8-a8d4-4746-a4c1-dcf9dee803ff', NULL, NULL, NULL, 1, '2021-07-29 13:11:51', '2021-08-26 17:46:01', 1);
INSERT INTO `user` VALUES (3, 'root', '保罗的小宇宙', '$2a$10$HNE.jbPNNUVJudVHxInAt.szHOak/D/AnLwKh6KveSCfbou8gRVDm', 'a8f35641-4ebc-41d7-b9a0-3cd6d576cf1d', NULL, NULL, NULL, 1, '2021-07-29 13:12:04', '2021-08-16 21:50:00', 1);
INSERT INTO `user` VALUES (4, 'jack', '梦回少年', '$2a$10$FSJNe2Ezpyu6piw/VnfMru1S.DlCifpwwdzsklDrwEDEHzrKD0Z0i', NULL, NULL, NULL, NULL, 1, '2021-07-29 13:12:13', '2021-07-29 13:12:13', 1);
INSERT INTO `user` VALUES (5, 'july', '夏和帆', '$2a$10$eOmN/XhXFxok4L0z06EWD.M/C2KdgUHaz5PsjCcCpP/l1NXHI73E.', NULL, NULL, NULL, NULL, 0, '2021-07-29 23:44:20', '2021-07-29 23:44:20', 1);
INSERT INTO `user` VALUES (6, 'hello', '樱花庄的白猫', '$2a$10$p0HMOn4c9W4VHESI1kbmp.MySrgM84bkw/actZ.4SlI83mQjDkccG', NULL, NULL, NULL, NULL, 0, '2021-07-30 00:33:03', '2021-07-30 00:33:03', 1);
INSERT INTO `user` VALUES (7, 'book', '浮云', '$2a$10$m9t79txLw2QtMwH3.pVyWu7zBHcWDeVFYAMoafr7fKXnRjowW6jga', NULL, NULL, NULL, NULL, 0, '2021-08-05 22:37:00', '2021-08-05 22:37:00', 1);

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `uid` int(0) NULL DEFAULT NULL COMMENT '用户ID',
  `rid` int(0) NULL DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `rid`(`rid`) USING BTREE,
  CONSTRAINT `user_role_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_role_ibfk_2` FOREIGN KEY (`rid`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (9, 1, 3);
INSERT INTO `user_role` VALUES (10, 2, 3);
INSERT INTO `user_role` VALUES (11, 3, 1);
INSERT INTO `user_role` VALUES (17, 4, 3);
INSERT INTO `user_role` VALUES (18, 5, 3);
INSERT INTO `user_role` VALUES (19, 6, 3);
INSERT INTO `user_role` VALUES (20, 7, 3);
INSERT INTO `user_role` VALUES (21, 2, 1);

SET FOREIGN_KEY_CHECKS = 1;
