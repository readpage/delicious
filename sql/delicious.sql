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

 Date: 14/08/2021 19:08:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路由',
  `order_num` int(0) NULL DEFAULT NULL COMMENT '排序',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `type` int(0) NULL DEFAULT NULL COMMENT '类型',
  `parent_id` int(0) NULL DEFAULT NULL COMMENT '父节点',
  `parent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父路由',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `version` int(0) NULL DEFAULT 1 COMMENT '乐观锁',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (2, '/user/save', 1, '', 2, 26, NULL, NULL, '添加用户', NULL, NULL, NULL, 1);
INSERT INTO `menu` VALUES (3, '/user/page', 2, '', 2, 26, NULL, NULL, '分页查询用户', NULL, NULL, '2021-07-29 16:41:40', 1);
INSERT INTO `menu` VALUES (4, '/user/update', 3, NULL, 2, 26, NULL, NULL, '修改用户', NULL, NULL, NULL, 1);
INSERT INTO `menu` VALUES (5, '/user/remove', 4, NULL, 2, 26, NULL, NULL, '删除用户', NULL, NULL, NULL, 1);
INSERT INTO `menu` VALUES (6, '/user/removeByIds', 5, NULL, 2, 26, NULL, NULL, '批量删除用户', NULL, NULL, NULL, 1);
INSERT INTO `menu` VALUES (7, '/menu/save', 1, NULL, 2, 29, NULL, NULL, '添加菜单', NULL, NULL, NULL, 1);
INSERT INTO `menu` VALUES (8, '/menu/list', 2, NULL, 2, 29, NULL, NULL, '查询全部菜单\r\n', NULL, '2021-07-29 16:21:07', '2021-07-29 16:41:53', 1);
INSERT INTO `menu` VALUES (9, '/menu/update', 3, NULL, 2, 29, NULL, NULL, '修改菜单', NULL, '2021-07-29 16:25:51', '2021-07-29 16:25:51', 1);
INSERT INTO `menu` VALUES (10, '/menu/remove', 4, NULL, 2, 29, NULL, NULL, '删除菜单', NULL, '2021-07-29 16:33:12', '2021-07-29 16:33:12', 1);
INSERT INTO `menu` VALUES (12, '/role/save', 1, NULL, 2, 30, NULL, '', '添加角色', NULL, '2021-07-29 16:57:56', '2021-07-29 16:57:56', 1);
INSERT INTO `menu` VALUES (13, '/role/addAuth', 2, NULL, 2, 30, NULL, '', '添加权限\r\n', NULL, '2021-07-29 17:54:05', '2021-07-29 17:54:05', 1);
INSERT INTO `menu` VALUES (14, '/role/removeAuth', 3, NULL, 2, 30, NULL, NULL, '删除权限\r\n', NULL, '2021-07-29 19:27:35', '2021-07-29 19:27:35', 1);
INSERT INTO `menu` VALUES (16, '/role/update', 4, NULL, 2, 30, NULL, NULL, '更新角色', NULL, '2021-07-29 20:48:29', '2021-07-29 20:48:29', 1);
INSERT INTO `menu` VALUES (17, '/role/page', 5, NULL, 2, 30, NULL, NULL, '分页查询角色', NULL, '2021-07-29 21:08:23', '2021-07-29 21:08:23', 1);
INSERT INTO `menu` VALUES (18, '/role/remove', 6, NULL, 2, 30, NULL, NULL, '删除角色', NULL, '2021-07-29 21:26:18', '2021-07-29 21:26:18', 1);
INSERT INTO `menu` VALUES (19, '/user/addRole', 6, NULL, 2, 30, NULL, NULL, '添加角色', NULL, '2021-07-29 23:08:00', '2021-07-29 23:08:00', 1);
INSERT INTO `menu` VALUES (21, '/menu/permMenu', 5, '', 2, 29, NULL, '', '当前用户菜单', NULL, NULL, NULL, 1);
INSERT INTO `menu` VALUES (22, '/oauth/refresh', 6, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `menu` VALUES (23, '/data', 1, 'data', 1, NULL, 'back', 'data', '数统统计', 'el-icon-s-home', NULL, NULL, 1);
INSERT INTO `menu` VALUES (24, '/system', 2, 'system', 0, NULL, NULL, 'system', '系统管理', 'el-icon-setting', NULL, NULL, 1);
INSERT INTO `menu` VALUES (25, '/system/', 1, 'auth', 0, 24, '', '', '权限管理', 'el-icon-unlock', NULL, NULL, 1);
INSERT INTO `menu` VALUES (26, '/system/user', 1, 'user', 1, 25, 'back', 'system/user', '用户管理', 'el-icon-user-solid', NULL, NULL, 1);
INSERT INTO `menu` VALUES (27, '/sign', 5, 'sign', 1, NULL, NULL, 'sign', '登录/注册', NULL, NULL, NULL, 1);
INSERT INTO `menu` VALUES (28, '/user/selectIsUser', 7, NULL, 2, 28, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `menu` VALUES (29, '/system/menu', 3, 'menu', 1, 25, 'back', 'system/menu', '菜单管理', 'el-icon-menu', NULL, NULL, 1);
INSERT INTO `menu` VALUES (30, '/system/role', 2, 'role', 1, 25, 'back', 'system/role', '角色管理', 'el-icon-s-help', NULL, NULL, 1);
INSERT INTO `menu` VALUES (31, '/system/monitor', 2, 'monitor', 0, 24, NULL, NULL, '监控管理', 'el-icon-monitor', NULL, NULL, 1);
INSERT INTO `menu` VALUES (33, '/user/info', 8, '', 2, 28, '', '', '用户信息', '', NULL, NULL, 1);
INSERT INTO `menu` VALUES (34, '/goods', 3, 'goods', 1, NULL, 'back', 'goods', '商品管理', 'el-icon-s-goods', NULL, NULL, 1);
INSERT INTO `menu` VALUES (35, '/orders', 4, 'orders', 1, NULL, 'back', 'orders', '订单管理', 'el-icon-s-order', NULL, NULL, 1);
INSERT INTO `menu` VALUES (36, '/system/monitor/log', 1, 'log', 1, 31, 'back', 'system/log', '日志管理', 'el-icon-document', NULL, NULL, 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `menu_role` VALUES (27, 22, 4);
INSERT INTO `menu_role` VALUES (28, 23, 3);
INSERT INTO `menu_role` VALUES (31, 26, 3);
INSERT INTO `menu_role` VALUES (32, 27, 4);
INSERT INTO `menu_role` VALUES (33, 28, 3);
INSERT INTO `menu_role` VALUES (34, 29, 3);
INSERT INTO `menu_role` VALUES (35, 30, 3);
INSERT INTO `menu_role` VALUES (36, 24, 3);
INSERT INTO `menu_role` VALUES (37, 25, 3);
INSERT INTO `menu_role` VALUES (38, 31, 3);
INSERT INTO `menu_role` VALUES (39, 33, 3);
INSERT INTO `menu_role` VALUES (40, 34, 3);
INSERT INTO `menu_role` VALUES (41, 35, 3);
INSERT INTO `menu_role` VALUES (42, 36, 3);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `version` int(0) NULL DEFAULT 1 COMMENT '乐观锁',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `access_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '授权令牌',
  `head_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` int(0) NULL DEFAULT NULL COMMENT '状态',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `version` int(0) NULL DEFAULT 1 COMMENT '乐观锁',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Redundant;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'user', '木灵鱼儿', '$2a$10$UfzfgbVxCAXoiyaCw7IXiuHiFqMMVbhbb3ox6nkxbAJLGTWjJ7Ciq', '7489fc35-edc3-4f84-b496-b924d3060ed0', NULL, '15885326305', 'user@qq.com', 1, '2021-07-29 02:14:10', '2021-08-14 19:08:07', 1);
INSERT INTO `user` VALUES (2, 'admin', '初之音', '$2a$10$3amz9BqQJUsU1P.rJ6zIyeDEWeewOubtPCBSyl/huWSc.MQTJzxZu', NULL, NULL, NULL, NULL, 1, '2021-07-29 13:11:51', '2021-07-29 13:11:51', 1);
INSERT INTO `user` VALUES (3, 'root', '保罗的小宇宙', '$2a$10$HNE.jbPNNUVJudVHxInAt.szHOak/D/AnLwKh6KveSCfbou8gRVDm', NULL, NULL, NULL, NULL, 1, '2021-07-29 13:12:04', '2021-07-29 13:12:04', 1);
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
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (9, 1, 3);
INSERT INTO `user_role` VALUES (10, 2, 3);
INSERT INTO `user_role` VALUES (11, 3, 3);
INSERT INTO `user_role` VALUES (17, 4, 3);
INSERT INTO `user_role` VALUES (18, 5, 3);
INSERT INTO `user_role` VALUES (19, 6, 3);
INSERT INTO `user_role` VALUES (20, 7, 3);
INSERT INTO `user_role` VALUES (21, 2, 1);

SET FOREIGN_KEY_CHECKS = 1;
