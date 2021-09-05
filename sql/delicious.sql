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

 Date: 05/09/2021 23:37:03
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
) ENGINE = InnoDB AUTO_INCREMENT = 1140 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_info
-- ----------------------------
INSERT INTO `log_info` VALUES (1937, 'root', 'DELETE', 'com.example.controller.LogInfoController.clearAll', '/log-info/clearAll', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '删除成功!😉', NULL, '2021-09-05 23:34:30');
INSERT INTO `log_info` VALUES (1938, 'root', 'GET', 'com.example.controller.LogInfoController.page', '/log-info/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-05 23:34:31');

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
  `version` int(10) UNSIGNED ZEROFILL NULL DEFAULT 0000000000 COMMENT '乐观锁',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (2, '/user/save', 1, '', 2, 26, NULL, '添加用户', NULL, NULL, NULL, 0000000001);
INSERT INTO `menu` VALUES (3, '/user/page', 2, '', 2, 26, NULL, '分页查询用户', NULL, NULL, '2021-07-29 16:41:40', 0000000001);
INSERT INTO `menu` VALUES (4, '/user/update', 3, NULL, 2, 26, NULL, '修改用户', NULL, NULL, NULL, 0000000001);
INSERT INTO `menu` VALUES (5, '/user/remove', 4, NULL, 2, 26, NULL, '删除用户', NULL, NULL, NULL, 0000000001);
INSERT INTO `menu` VALUES (6, '/user/removeByIds', 5, NULL, 2, 26, NULL, '批量删除用户', NULL, NULL, NULL, 0000000001);
INSERT INTO `menu` VALUES (7, '/menu/save', 1, NULL, 2, 29, NULL, '添加菜单', NULL, NULL, NULL, 0000000001);
INSERT INTO `menu` VALUES (8, '/menu/list', 2, NULL, 2, 29, NULL, '查询全部菜单\r\n', NULL, '2021-07-29 16:21:07', '2021-07-29 16:41:53', 0000000001);
INSERT INTO `menu` VALUES (9, '/menu/update', 3, NULL, 2, 29, NULL, '修改菜单', NULL, '2021-07-29 16:25:51', '2021-07-29 16:25:51', 0000000001);
INSERT INTO `menu` VALUES (10, '/menu/remove', 4, NULL, 2, 29, NULL, '删除菜单', NULL, '2021-07-29 16:33:12', '2021-07-29 16:33:12', 0000000001);
INSERT INTO `menu` VALUES (12, '/role/add', 1, NULL, 2, 30, '', '添加角色', NULL, '2021-07-29 16:57:56', '2021-07-29 16:57:56', 0000000001);
INSERT INTO `menu` VALUES (13, '/role/addAuth', 2, NULL, 2, 30, '', '添加权限\r\n', NULL, '2021-07-29 17:54:05', '2021-07-29 17:54:05', 0000000001);
INSERT INTO `menu` VALUES (16, '/role/update', 4, NULL, 2, 30, NULL, '更新角色', NULL, '2021-07-29 20:48:29', '2021-07-29 20:48:29', 0000000001);
INSERT INTO `menu` VALUES (17, '/role/page', 5, NULL, 2, 30, NULL, '分页查询角色', NULL, '2021-07-29 21:08:23', '2021-07-29 21:08:23', 0000000001);
INSERT INTO `menu` VALUES (18, '/role/remove', 6, NULL, 2, 30, NULL, '删除角色', NULL, '2021-07-29 21:26:18', '2021-07-29 21:26:18', 0000000001);
INSERT INTO `menu` VALUES (19, '/user/addRole', 6, NULL, 2, 30, NULL, '添加角色', NULL, '2021-07-29 23:08:00', '2021-07-29 23:08:00', 0000000001);
INSERT INTO `menu` VALUES (21, '/menu/permMenu', 5, '', 2, 29, '', '当前用户菜单', NULL, NULL, NULL, 0000000001);
INSERT INTO `menu` VALUES (24, '/system', 2, 'system', 0, NULL, 'system', '系统管理', 'el-icon-setting', NULL, NULL, 0000000001);
INSERT INTO `menu` VALUES (25, '/system/', 1, 'auth', 0, 24, '', '权限管理', 'el-icon-unlock', NULL, NULL, 0000000001);
INSERT INTO `menu` VALUES (26, '/system/user', 1, 'user', 1, 25, '/src/views/system/user/index.vue', '用户管理', 'el-icon-user-solid', NULL, NULL, 0000000001);
INSERT INTO `menu` VALUES (28, '/user/selectIsUser', 7, NULL, 2, 26, NULL, '用户是否存在', NULL, NULL, NULL, 0000000001);
INSERT INTO `menu` VALUES (29, '/system/menu', 3, 'menu', 1, 25, '/src/views/system/menu/index.vue', '菜单管理', 'el-icon-menu', NULL, NULL, 0000000001);
INSERT INTO `menu` VALUES (30, '/system/role', 2, 'role', 1, 25, '/src/views/system/role/index.vue', '角色管理', 'el-icon-s-help', NULL, NULL, 0000000001);
INSERT INTO `menu` VALUES (31, '/system/monitor', 2, 'monitor', 0, 24, NULL, '监控管理', 'el-icon-monitor', NULL, NULL, 0000000001);
INSERT INTO `menu` VALUES (33, '/user/info', 8, '', 2, 26, '', '用户信息', '', NULL, NULL, 0000000001);
INSERT INTO `menu` VALUES (34, '/foods', 3, '', 1, NULL, '/src/views/foods/index.vue', '餐品管理', 'el-icon-s-goods', NULL, NULL, 0000000001);
INSERT INTO `menu` VALUES (35, '/orders', 4, 'orders', 1, NULL, '/src/views/orders/index.vue', '订单管理', 'el-icon-s-order', NULL, NULL, 0000000001);
INSERT INTO `menu` VALUES (36, '/system/monitor/log', 1, 'log', 1, 31, '/src/views/system/monitor/log/index.vue', '操作日志', 'el-icon-document', NULL, NULL, 0000000001);
INSERT INTO `menu` VALUES (47, '/avatar', 2, NULL, 2, NULL, NULL, '图片资源', NULL, NULL, NULL, 0000000001);
INSERT INTO `menu` VALUES (49, '/log-info/page', 1, NULL, 2, 36, NULL, '请求日志', NULL, NULL, NULL, 0000000001);
INSERT INTO `menu` VALUES (50, '/role/list', NULL, NULL, 2, 30, NULL, '查询所有角色', NULL, NULL, NULL, 0000000001);
INSERT INTO `menu` VALUES (54, '/role/selectByRid', 1, NULL, 2, 30, '', '查询权限', '', '2021-09-03 10:12:30', '2021-09-03 10:12:30', 0000000001);
INSERT INTO `menu` VALUES (58, '/log-info/clearAll', 0, NULL, 2, 36, '', '清空日志', '', '2021-09-05 22:09:34', '2021-09-05 22:09:34', 0000000002);
INSERT INTO `menu` VALUES (62, '/f/foods', 0, NULL, 1, 63, '/src/views/foods/index.vue', 'foods', 'el-icon-platform-eleme', '2021-09-05 23:05:47', '2021-09-05 23:09:07', 0000000001);
INSERT INTO `menu` VALUES (63, '/a', 8, NULL, 0, NULL, '', 'a', 'el-icon-platform-eleme', '2021-09-05 23:07:15', '2021-09-05 23:07:15', 0000000000);

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
) ENGINE = InnoDB AUTO_INCREMENT = 192 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu_role
-- ----------------------------
INSERT INTO `menu_role` VALUES (152, 31, 8);
INSERT INTO `menu_role` VALUES (153, 36, 8);
INSERT INTO `menu_role` VALUES (154, 49, 8);
INSERT INTO `menu_role` VALUES (155, 34, 8);
INSERT INTO `menu_role` VALUES (157, 24, 8);
INSERT INTO `menu_role` VALUES (370, 47, 4);
INSERT INTO `menu_role` VALUES (371, 21, 4);
INSERT INTO `menu_role` VALUES (372, 24, 4);
INSERT INTO `menu_role` VALUES (373, 25, 4);
INSERT INTO `menu_role` VALUES (374, 29, 4);
INSERT INTO `menu_role` VALUES (470, 47, 3);
INSERT INTO `menu_role` VALUES (471, 3, 3);
INSERT INTO `menu_role` VALUES (472, 33, 3);
INSERT INTO `menu_role` VALUES (473, 50, 3);
INSERT INTO `menu_role` VALUES (474, 17, 3);
INSERT INTO `menu_role` VALUES (475, 8, 3);
INSERT INTO `menu_role` VALUES (476, 21, 3);
INSERT INTO `menu_role` VALUES (477, 49, 3);
INSERT INTO `menu_role` VALUES (478, 34, 3);
INSERT INTO `menu_role` VALUES (479, 35, 3);
INSERT INTO `menu_role` VALUES (480, 63, 3);
INSERT INTO `menu_role` VALUES (481, 62, 3);
INSERT INTO `menu_role` VALUES (482, 24, 3);
INSERT INTO `menu_role` VALUES (483, 25, 3);
INSERT INTO `menu_role` VALUES (484, 26, 3);
INSERT INTO `menu_role` VALUES (485, 30, 3);
INSERT INTO `menu_role` VALUES (486, 29, 3);
INSERT INTO `menu_role` VALUES (487, 31, 3);
INSERT INTO `menu_role` VALUES (488, 36, 3);
INSERT INTO `menu_role` VALUES (489, 47, 1);
INSERT INTO `menu_role` VALUES (490, 24, 1);
INSERT INTO `menu_role` VALUES (491, 25, 1);
INSERT INTO `menu_role` VALUES (492, 26, 1);
INSERT INTO `menu_role` VALUES (493, 2, 1);
INSERT INTO `menu_role` VALUES (494, 3, 1);
INSERT INTO `menu_role` VALUES (495, 4, 1);
INSERT INTO `menu_role` VALUES (496, 5, 1);
INSERT INTO `menu_role` VALUES (497, 6, 1);
INSERT INTO `menu_role` VALUES (498, 28, 1);
INSERT INTO `menu_role` VALUES (499, 33, 1);
INSERT INTO `menu_role` VALUES (500, 30, 1);
INSERT INTO `menu_role` VALUES (501, 50, 1);
INSERT INTO `menu_role` VALUES (502, 12, 1);
INSERT INTO `menu_role` VALUES (503, 54, 1);
INSERT INTO `menu_role` VALUES (504, 13, 1);
INSERT INTO `menu_role` VALUES (505, 16, 1);
INSERT INTO `menu_role` VALUES (506, 17, 1);
INSERT INTO `menu_role` VALUES (507, 18, 1);
INSERT INTO `menu_role` VALUES (508, 19, 1);
INSERT INTO `menu_role` VALUES (509, 29, 1);
INSERT INTO `menu_role` VALUES (510, 7, 1);
INSERT INTO `menu_role` VALUES (511, 8, 1);
INSERT INTO `menu_role` VALUES (512, 9, 1);
INSERT INTO `menu_role` VALUES (513, 10, 1);
INSERT INTO `menu_role` VALUES (514, 21, 1);
INSERT INTO `menu_role` VALUES (515, 31, 1);
INSERT INTO `menu_role` VALUES (516, 36, 1);
INSERT INTO `menu_role` VALUES (517, 58, 1);
INSERT INTO `menu_role` VALUES (518, 49, 1);
INSERT INTO `menu_role` VALUES (519, 34, 1);
INSERT INTO `menu_role` VALUES (520, 35, 1);
INSERT INTO `menu_role` VALUES (521, 63, 1);
INSERT INTO `menu_role` VALUES (522, 62, 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'root', '超级管理员', NULL, '2021-09-05 23:33:38', 9);
INSERT INTO `role` VALUES (2, 'admin', '管理员', NULL, NULL, 1);
INSERT INTO `role` VALUES (3, 'user', '用户', NULL, '2021-09-05 23:09:36', 6);
INSERT INTO `role` VALUES (4, 'tourist', '游客', NULL, '2021-09-05 14:12:38', 6);
INSERT INTO `role` VALUES (8, 'a', 'a', '2021-08-29 19:10:27', '2021-09-05 12:15:11', 9);

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
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Redundant;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'user', '木灵鱼儿', '$2a$10$UfzfgbVxCAXoiyaCw7IXiuHiFqMMVbhbb3ox6nkxbAJLGTWjJ7Ciq', '9721fe18-278f-494d-b685-3a524a1b3d12', NULL, '15885326305', 'user@qq.com', 1, '2021-07-29 02:14:10', '2021-09-05 14:12:54', 2);
INSERT INTO `user` VALUES (2, 'admin', '初之音', '', 'fc9c5bfc-7a39-4210-a8c2-07086af33f55', NULL, '113', '1134', 1, '2021-07-29 13:11:51', '2021-09-02 18:38:02', 6);
INSERT INTO `user` VALUES (3, 'root', '保罗的小宇宙', '$2a$10$HNE.jbPNNUVJudVHxInAt.szHOak/D/AnLwKh6KveSCfbou8gRVDm', '3180b38d-a16d-42e4-9537-94174f5c55f5', NULL, NULL, NULL, 1, '2021-07-29 13:12:04', '2021-09-05 14:13:33', 1);
INSERT INTO `user` VALUES (4, 'jack', '梦回少年', '$2a$10$FSJNe2Ezpyu6piw/VnfMru1S.DlCifpwwdzsklDrwEDEHzrKD0Z0i', NULL, NULL, NULL, NULL, 1, '2021-07-29 13:12:13', '2021-07-29 13:12:13', 1);
INSERT INTO `user` VALUES (5, 'july', '夏和帆', '$2a$10$eOmN/XhXFxok4L0z06EWD.M/C2KdgUHaz5PsjCcCpP/l1NXHI73E.', NULL, NULL, NULL, NULL, 0, '2021-07-29 23:44:20', '2021-09-03 19:07:49', 4);
INSERT INTO `user` VALUES (6, 'hello', '樱花庄的白猫', '$2a$10$p0HMOn4c9W4VHESI1kbmp.MySrgM84bkw/actZ.4SlI83mQjDkccG', NULL, NULL, NULL, NULL, 0, '2021-07-30 00:33:03', '2021-07-30 00:33:03', 1);
INSERT INTO `user` VALUES (7, 'book', '浮云', '$2a$10$m9t79txLw2QtMwH3.pVyWu7zBHcWDeVFYAMoafr7fKXnRjowW6jga', NULL, NULL, NULL, NULL, 0, '2021-08-05 22:37:00', '2021-08-05 22:37:00', 1);
INSERT INTO `user` VALUES (12, 'a', 'a', '$2a$10$hecfHb6ZvoLZFkUQZoo9E.8EArgrXbMkyy8sxIeY2wi8ktUvYr.wO', NULL, NULL, '', '', 1, '2021-08-28 10:46:42', '2021-08-28 10:46:42', 1);
INSERT INTO `user` VALUES (13, 'b', 'b', '$2a$10$oBb4DQfqGHX81KTaEWnRhuFVOHkH6ThaB5aaIgAlMQpZKdOHy2vw2', NULL, NULL, '', '', 0, '2021-08-28 10:47:21', '2021-08-28 10:47:21', 1);
INSERT INTO `user` VALUES (14, 'c', 'c', '$2a$10$hAs7pOOzT9q5328hU9d/iOP4SnfV/.cNZ.LpSDwVqpA.TB1PaBsrK', NULL, NULL, 'ac', 'abc', 1, '2021-08-28 10:58:37', '2021-09-02 23:02:37', 4);
INSERT INTO `user` VALUES (15, 'd', 'd', '$2a$10$tWhfA0odxWMs.0QGeAW19uWlEyFen.1ksx0dTuKBIs5mxER9478im', NULL, NULL, '', '', 1, '2021-08-28 10:59:23', '2021-08-28 10:59:23', 1);
INSERT INTO `user` VALUES (16, 'f', 'f', '$2a$10$U0X79bHdbZUmbJ9QCroQQOSL876I1ccERaeFgqqsAPVqsiYg0/Lv.', NULL, NULL, '', '', 0, '2021-08-28 11:00:31', '2021-08-28 11:00:31', 1);
INSERT INTO `user` VALUES (17, 'e', 'e', '$2a$10$2XCcvs9j.tzsh65Yl.7N1uPKjAP0NMC7PB0aCevRjhkXjBvC4ITbi', NULL, NULL, '', '', 1, '2021-08-28 11:28:45', '2021-08-28 11:28:45', 1);
INSERT INTO `user` VALUES (18, 'j', 'j', '$2a$10$v/Ve1UhT73bjV9.RPHeoKuJ.umC5Jhpv.ECWtT76vzC.HW6UW2pnW', NULL, NULL, '', '', 0, '2021-08-28 11:29:25', '2021-08-28 11:29:25', 1);
INSERT INTO `user` VALUES (27, 'h', 'a', '$2a$10$IO2RjlY17.jzYYtgQUUkIeVDD3YOBsgr2G0Is2WSRLj/3AGjxwBIa', NULL, NULL, '1', '1', 1, '2021-09-02 22:45:12', '2021-09-02 22:45:12', 1);
INSERT INTO `user` VALUES (30, 'z', 'z', '$2a$10$uO1T77g4pgYfIk.0Yh4mVeKHsgpxU7j9FUOjvMObmSlwPjcdvmAc2', NULL, NULL, 'z', 'z', 1, '2021-09-02 22:59:25', '2021-09-02 22:59:25', 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (11, 3, 1);
INSERT INTO `user_role` VALUES (17, 4, 3);
INSERT INTO `user_role` VALUES (19, 6, 3);
INSERT INTO `user_role` VALUES (20, 7, 3);
INSERT INTO `user_role` VALUES (22, 12, 4);
INSERT INTO `user_role` VALUES (23, 12, 3);
INSERT INTO `user_role` VALUES (24, 13, 3);
INSERT INTO `user_role` VALUES (25, 13, 1);
INSERT INTO `user_role` VALUES (27, 15, 2);
INSERT INTO `user_role` VALUES (28, 15, 3);
INSERT INTO `user_role` VALUES (29, 16, 3);
INSERT INTO `user_role` VALUES (30, 17, 3);
INSERT INTO `user_role` VALUES (31, 18, 1);
INSERT INTO `user_role` VALUES (43, 2, 1);
INSERT INTO `user_role` VALUES (44, 2, 3);
INSERT INTO `user_role` VALUES (45, 27, 8);
INSERT INTO `user_role` VALUES (55, 30, 8);
INSERT INTO `user_role` VALUES (58, 14, 2);
INSERT INTO `user_role` VALUES (61, 5, 3);
INSERT INTO `user_role` VALUES (62, 1, 3);

SET FOREIGN_KEY_CHECKS = 1;
