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

 Date: 30/08/2021 00:05:44
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
  `error` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '异常信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 285 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_info
-- ----------------------------
INSERT INTO `log_info` VALUES (3, 'user', 'GET', 'Result com.example.controller.MenuController.selectAll()', '/menu/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-08-30 00:05:32');
INSERT INTO `log_info` VALUES (4, 'user', 'GET', 'Result com.example.controller.MenuController.selectAll()', '/menu/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-08-30 00:05:32');

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
INSERT INTO `menu` VALUES (2, '/user/add', 1, '', 2, 26, NULL, '添加用户', NULL, NULL, NULL, 1);
INSERT INTO `menu` VALUES (3, '/user/page', 2, '', 2, 26, NULL, '分页查询用户', NULL, NULL, '2021-07-29 16:41:40', 1);
INSERT INTO `menu` VALUES (4, '/user/update', 3, NULL, 2, 26, NULL, '修改用户', NULL, NULL, NULL, 1);
INSERT INTO `menu` VALUES (5, '/user/remove', 4, NULL, 2, 26, NULL, '删除用户', NULL, NULL, NULL, 1);
INSERT INTO `menu` VALUES (6, '/user/removeByIds', 5, NULL, 2, 26, NULL, '批量删除用户', NULL, NULL, NULL, 1);
INSERT INTO `menu` VALUES (7, '/menu/save', 1, NULL, 2, 29, NULL, '添加菜单', NULL, NULL, NULL, 1);
INSERT INTO `menu` VALUES (8, '/menu/list', 2, NULL, 2, 29, NULL, '查询全部菜单\r\n', NULL, '2021-07-29 16:21:07', '2021-07-29 16:41:53', 1);
INSERT INTO `menu` VALUES (9, '/menu/update', 3, NULL, 2, 29, NULL, '修改菜单', NULL, '2021-07-29 16:25:51', '2021-07-29 16:25:51', 1);
INSERT INTO `menu` VALUES (10, '/menu/remove', 4, NULL, 2, 29, NULL, '删除菜单', NULL, '2021-07-29 16:33:12', '2021-07-29 16:33:12', 1);
INSERT INTO `menu` VALUES (12, '/role/add', 1, NULL, 2, 30, '', '添加角色', NULL, '2021-07-29 16:57:56', '2021-07-29 16:57:56', 1);
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
INSERT INTO `menu` VALUES (34, '/foods', 3, 'foods', 1, NULL, 'foods', '餐品管理', 'el-icon-s-goods', NULL, NULL, 1);
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
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `menu_role` VALUES (54, 34, 8);

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
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'root', '超级管理员', NULL, NULL, 1);
INSERT INTO `role` VALUES (2, 'admin', '管理员', NULL, NULL, 1);
INSERT INTO `role` VALUES (3, 'user', '用户', NULL, NULL, 1);
INSERT INTO `role` VALUES (4, 'tourist', '游客', NULL, NULL, 1);
INSERT INTO `role` VALUES (8, 'a', 'a', '2021-08-29 19:10:27', '2021-08-29 19:10:27', 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Redundant;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'user', '木灵鱼儿', '$2a$10$UfzfgbVxCAXoiyaCw7IXiuHiFqMMVbhbb3ox6nkxbAJLGTWjJ7Ciq', '3239fd0a-7d6a-4986-bc87-fb93338f30bb', NULL, '15885326305', 'user@qq.com', 1, '2021-07-29 02:14:10', '2021-08-29 22:54:39', 1);
INSERT INTO `user` VALUES (2, 'admin', '初之音', '$2a$10$3amz9BqQJUsU1P.rJ6zIyeDEWeewOubtPCBSyl/huWSc.MQTJzxZu', 'b729132a-dc3e-4c87-8650-98040d3543d0', NULL, NULL, NULL, 1, '2021-07-29 13:11:51', '2021-08-28 14:11:14', 1);
INSERT INTO `user` VALUES (3, 'root', '保罗的小宇宙', '$2a$10$HNE.jbPNNUVJudVHxInAt.szHOak/D/AnLwKh6KveSCfbou8gRVDm', 'a8f35641-4ebc-41d7-b9a0-3cd6d576cf1d', NULL, NULL, NULL, 1, '2021-07-29 13:12:04', '2021-08-16 21:50:00', 1);
INSERT INTO `user` VALUES (4, 'jack', '梦回少年', '$2a$10$FSJNe2Ezpyu6piw/VnfMru1S.DlCifpwwdzsklDrwEDEHzrKD0Z0i', NULL, NULL, NULL, NULL, 1, '2021-07-29 13:12:13', '2021-07-29 13:12:13', 1);
INSERT INTO `user` VALUES (5, 'july', '夏和帆', '$2a$10$eOmN/XhXFxok4L0z06EWD.M/C2KdgUHaz5PsjCcCpP/l1NXHI73E.', NULL, NULL, NULL, NULL, 0, '2021-07-29 23:44:20', '2021-07-29 23:44:20', 1);
INSERT INTO `user` VALUES (6, 'hello', '樱花庄的白猫', '$2a$10$p0HMOn4c9W4VHESI1kbmp.MySrgM84bkw/actZ.4SlI83mQjDkccG', NULL, NULL, NULL, NULL, 0, '2021-07-30 00:33:03', '2021-07-30 00:33:03', 1);
INSERT INTO `user` VALUES (7, 'book', '浮云', '$2a$10$m9t79txLw2QtMwH3.pVyWu7zBHcWDeVFYAMoafr7fKXnRjowW6jga', NULL, NULL, NULL, NULL, 0, '2021-08-05 22:37:00', '2021-08-05 22:37:00', 1);
INSERT INTO `user` VALUES (12, 'a', 'a', '$2a$10$hecfHb6ZvoLZFkUQZoo9E.8EArgrXbMkyy8sxIeY2wi8ktUvYr.wO', NULL, NULL, '', '', 1, '2021-08-28 10:46:42', '2021-08-28 10:46:42', 1);
INSERT INTO `user` VALUES (13, 'b', 'b', '$2a$10$oBb4DQfqGHX81KTaEWnRhuFVOHkH6ThaB5aaIgAlMQpZKdOHy2vw2', NULL, NULL, '', '', 0, '2021-08-28 10:47:21', '2021-08-28 10:47:21', 1);
INSERT INTO `user` VALUES (14, 'c', 'c', '$2a$10$hAs7pOOzT9q5328hU9d/iOP4SnfV/.cNZ.LpSDwVqpA.TB1PaBsrK', NULL, NULL, 'a', '', 1, '2021-08-28 10:58:37', '2021-08-28 10:58:37', 1);
INSERT INTO `user` VALUES (15, 'd', 'd', '$2a$10$tWhfA0odxWMs.0QGeAW19uWlEyFen.1ksx0dTuKBIs5mxER9478im', NULL, NULL, '', '', 1, '2021-08-28 10:59:23', '2021-08-28 10:59:23', 1);
INSERT INTO `user` VALUES (16, 'f', 'f', '$2a$10$U0X79bHdbZUmbJ9QCroQQOSL876I1ccERaeFgqqsAPVqsiYg0/Lv.', NULL, NULL, '', '', 0, '2021-08-28 11:00:31', '2021-08-28 11:00:31', 1);
INSERT INTO `user` VALUES (17, 'e', 'e', '$2a$10$2XCcvs9j.tzsh65Yl.7N1uPKjAP0NMC7PB0aCevRjhkXjBvC4ITbi', NULL, NULL, '', '', 1, '2021-08-28 11:28:45', '2021-08-28 11:28:45', 1);
INSERT INTO `user` VALUES (18, 'j', 'j', '$2a$10$v/Ve1UhT73bjV9.RPHeoKuJ.umC5Jhpv.ECWtT76vzC.HW6UW2pnW', NULL, NULL, '', '', 0, '2021-08-28 11:29:25', '2021-08-28 11:29:25', 1);
INSERT INTO `user` VALUES (19, 'g', 'g', '$2a$10$AlCUm5r37G2YLfGJwy2zFumuIGxIuak1tw8x6IXyHtBfegeT4gb56', NULL, NULL, '', '', 0, '2021-08-28 18:59:34', '2021-08-28 18:59:34', 1);
INSERT INTO `user` VALUES (20, 'h', 'h', '$2a$10$XhTq1Hx36.SIkkeBkfHhPeP0sMfgnkKXAKse3eGGSont5JoB0VA8q', 'e0eb685d-bc66-4939-ae1c-4ece6451d505', NULL, '', '', 1, '2021-08-29 19:28:26', '2021-08-29 19:28:40', 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `user_role` VALUES (22, 12, 4);
INSERT INTO `user_role` VALUES (23, 12, 3);
INSERT INTO `user_role` VALUES (24, 13, 3);
INSERT INTO `user_role` VALUES (25, 13, 1);
INSERT INTO `user_role` VALUES (26, 14, 2);
INSERT INTO `user_role` VALUES (27, 15, 2);
INSERT INTO `user_role` VALUES (28, 15, 3);
INSERT INTO `user_role` VALUES (29, 16, 3);
INSERT INTO `user_role` VALUES (30, 17, 3);
INSERT INTO `user_role` VALUES (31, 18, 1);
INSERT INTO `user_role` VALUES (32, 19, 3);
INSERT INTO `user_role` VALUES (33, 20, 8);

SET FOREIGN_KEY_CHECKS = 1;
