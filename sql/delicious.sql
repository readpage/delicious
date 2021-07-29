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

 Date: 30/07/2021 00:50:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `pattern` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'url地址',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `version` int(0) NULL DEFAULT 1 COMMENT '乐观锁',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, '/test/hello', NULL, NULL, 1);
INSERT INTO `menu` VALUES (2, '/user/save/**', NULL, NULL, 1);
INSERT INTO `menu` VALUES (3, '/user/page/**', NULL, '2021-07-29 16:41:40', 1);
INSERT INTO `menu` VALUES (4, '/user/update/**', NULL, NULL, 1);
INSERT INTO `menu` VALUES (5, '/user/remove/*', NULL, NULL, 1);
INSERT INTO `menu` VALUES (6, '/user/removeByIds/*', NULL, NULL, 1);
INSERT INTO `menu` VALUES (7, '/menu/save/**', NULL, NULL, 1);
INSERT INTO `menu` VALUES (8, '/menu/page/**', '2021-07-29 16:21:07', '2021-07-29 16:41:53', 1);
INSERT INTO `menu` VALUES (9, '/menu/update/**', '2021-07-29 16:25:51', '2021-07-29 16:25:51', 1);
INSERT INTO `menu` VALUES (10, '/menu/remove/*', '2021-07-29 16:33:12', '2021-07-29 16:33:12', 1);
INSERT INTO `menu` VALUES (12, '/role/save/**', '2021-07-29 16:57:56', '2021-07-29 16:57:56', 1);
INSERT INTO `menu` VALUES (13, '/role/addAuth/**', '2021-07-29 17:54:05', '2021-07-29 17:54:05', 1);
INSERT INTO `menu` VALUES (14, '/role/removeAuth/**', '2021-07-29 19:27:35', '2021-07-29 19:27:35', 1);
INSERT INTO `menu` VALUES (16, '/role/update/**', '2021-07-29 20:48:29', '2021-07-29 20:48:29', 1);
INSERT INTO `menu` VALUES (17, '/role/page/**', '2021-07-29 21:08:23', '2021-07-29 21:08:23', 1);
INSERT INTO `menu` VALUES (18, '/role/remove/*', '2021-07-29 21:26:18', '2021-07-29 21:26:18', 1);
INSERT INTO `menu` VALUES (19, '/user/addRole/**', '2021-07-29 23:08:00', '2021-07-29 23:08:00', 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu_role
-- ----------------------------
INSERT INTO `menu_role` VALUES (1, 1, 3);
INSERT INTO `menu_role` VALUES (2, 1, 4);
INSERT INTO `menu_role` VALUES (3, 2, 4);
INSERT INTO `menu_role` VALUES (4, 3, 4);
INSERT INTO `menu_role` VALUES (5, 4, 4);
INSERT INTO `menu_role` VALUES (6, 5, 4);
INSERT INTO `menu_role` VALUES (7, 6, 4);
INSERT INTO `menu_role` VALUES (8, 7, 4);
INSERT INTO `menu_role` VALUES (9, 10, 4);
INSERT INTO `menu_role` VALUES (10, 9, 4);
INSERT INTO `menu_role` VALUES (11, 8, 4);
INSERT INTO `menu_role` VALUES (12, 12, 4);
INSERT INTO `menu_role` VALUES (13, 13, 4);
INSERT INTO `menu_role` VALUES (16, 14, 4);
INSERT INTO `menu_role` VALUES (18, 16, 4);
INSERT INTO `menu_role` VALUES (19, 17, 4);
INSERT INTO `menu_role` VALUES (22, 18, 4);
INSERT INTO `menu_role` VALUES (23, 19, 4);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `version` int(0) NULL DEFAULT 1 COMMENT '乐观锁',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'root', NULL, NULL, 1);
INSERT INTO `role` VALUES (2, 'admin', NULL, NULL, 1);
INSERT INTO `role` VALUES (3, 'user', NULL, NULL, 1);
INSERT INTO `role` VALUES (4, 'tourist', NULL, NULL, 1);
INSERT INTO `role` VALUES (7, 'cc', '2021-07-30 00:35:25', '2021-07-30 00:35:25', 1);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `version` int(0) NULL DEFAULT 1 COMMENT '乐观锁',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Redundant;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'user', '$2a$10$UfzfgbVxCAXoiyaCw7IXiuHiFqMMVbhbb3ox6nkxbAJLGTWjJ7Ciq', '2021-07-29 02:14:10', '2021-07-29 02:14:10', 1);
INSERT INTO `user` VALUES (2, 'admin', '$2a$10$3amz9BqQJUsU1P.rJ6zIyeDEWeewOubtPCBSyl/huWSc.MQTJzxZu', '2021-07-29 13:11:51', '2021-07-29 13:11:51', 1);
INSERT INTO `user` VALUES (3, 'root', '$2a$10$HNE.jbPNNUVJudVHxInAt.szHOak/D/AnLwKh6KveSCfbou8gRVDm', '2021-07-29 13:12:04', '2021-07-29 13:12:04', 1);
INSERT INTO `user` VALUES (4, 'jack', '$2a$10$FSJNe2Ezpyu6piw/VnfMru1S.DlCifpwwdzsklDrwEDEHzrKD0Z0i', '2021-07-29 13:12:13', '2021-07-29 13:12:13', 1);
INSERT INTO `user` VALUES (8, 'july', '$2a$10$eOmN/XhXFxok4L0z06EWD.M/C2KdgUHaz5PsjCcCpP/l1NXHI73E.', '2021-07-29 23:44:20', '2021-07-29 23:44:20', 1);
INSERT INTO `user` VALUES (9, 'hello', '$2a$10$p0HMOn4c9W4VHESI1kbmp.MySrgM84bkw/actZ.4SlI83mQjDkccG', '2021-07-30 00:33:03', '2021-07-30 00:33:03', 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (3, 9, 7);
INSERT INTO `user_role` VALUES (4, 9, 1);
INSERT INTO `user_role` VALUES (5, 8, 1);
INSERT INTO `user_role` VALUES (6, 4, 1);

SET FOREIGN_KEY_CHECKS = 1;
