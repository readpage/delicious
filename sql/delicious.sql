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

 Date: 17/09/2021 16:35:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for foods
-- ----------------------------
DROP TABLE IF EXISTS `foods`;
CREATE TABLE `foods`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '美食ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '餐品名称',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '餐品图片',
  `price` double(10, 2) NULL DEFAULT NULL COMMENT '餐品价格',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '餐品类型',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `version` int(0) NULL DEFAULT 1 COMMENT '版本',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of foods
-- ----------------------------
INSERT INTO `foods` VALUES (1, '香酥鱼条', '/api/upload/root/20210909163116442224666411321699.jpg', 10.30, NULL, NULL, '2021-09-15 10:12:09', 6);
INSERT INTO `foods` VALUES (2, '时蔬烧五花肉', '/api/upload/root/xinkong.png', 22.30, NULL, NULL, '2021-09-16 12:13:26', 6);
INSERT INTO `foods` VALUES (3, '糯米粉红薯丸子', '/api/upload/root/dude-newsletter.svg', 15.44, NULL, NULL, '2021-09-15 09:08:00', 2);
INSERT INTO `foods` VALUES (4, '青瓜胡萝卜炒牛肉', NULL, 16.33, NULL, NULL, NULL, 1);
INSERT INTO `foods` VALUES (5, '蒜香豆腐', NULL, 22.40, NULL, NULL, NULL, 1);
INSERT INTO `foods` VALUES (6, '韭菜炒豆腐', NULL, 19.33, NULL, NULL, NULL, 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 4641 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_info
-- ----------------------------
INSERT INTO `log_info` VALUES (4576, 'root', 'DELETE', 'com.example.controller.LogInfoController.clearAll', '/log-info/clearAll', 'Chrome Mobile', 'Android 1.x', 'Mobile', '117.189.210.87', NULL, '删除成功!😉', NULL, '2021-09-16 14:40:14');
INSERT INTO `log_info` VALUES (4577, 'root', 'GET', 'com.example.controller.LogInfoController.page', '/log-info/page/1/5', 'Chrome Mobile', 'Android 1.x', 'Mobile', '117.189.210.87', NULL, '查询成功!😍', NULL, '2021-09-16 14:40:15');
INSERT INTO `log_info` VALUES (4578, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome Mobile', 'Android 1.x', 'Mobile', '117.189.210.87', NULL, '查询成功!😍', NULL, '2021-09-16 14:40:25');
INSERT INTO `log_info` VALUES (4579, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome Mobile', 'Android 1.x', 'Mobile', '117.189.210.87', NULL, '查询成功!😍', NULL, '2021-09-16 14:40:26');
INSERT INTO `log_info` VALUES (4580, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome Mobile', 'Android 1.x', 'Mobile', '117.189.210.87', NULL, '查询成功!😍', NULL, '2021-09-16 14:40:42');
INSERT INTO `log_info` VALUES (4581, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome Mobile', 'Android 1.x', 'Mobile', '117.189.210.87', NULL, '查询成功!😍', NULL, '2021-09-16 14:40:43');
INSERT INTO `log_info` VALUES (4582, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome Mobile', 'Android 1.x', 'Mobile', '117.189.210.87', NULL, '查询成功!😍', NULL, '2021-09-16 14:40:48');
INSERT INTO `log_info` VALUES (4583, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome Mobile', 'Android 1.x', 'Mobile', '117.189.210.87', NULL, '查询成功!😍', NULL, '2021-09-16 14:40:49');
INSERT INTO `log_info` VALUES (4584, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 14:42:30');
INSERT INTO `log_info` VALUES (4585, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 14:42:31');
INSERT INTO `log_info` VALUES (4586, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 14:46:41');
INSERT INTO `log_info` VALUES (4587, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 14:46:42');
INSERT INTO `log_info` VALUES (4588, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 14:48:05');
INSERT INTO `log_info` VALUES (4589, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 14:48:05');
INSERT INTO `log_info` VALUES (4590, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 14:49:08');
INSERT INTO `log_info` VALUES (4591, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 14:49:08');
INSERT INTO `log_info` VALUES (4592, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 14:49:18');
INSERT INTO `log_info` VALUES (4593, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 14:49:19');
INSERT INTO `log_info` VALUES (4594, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 14:50:04');
INSERT INTO `log_info` VALUES (4595, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 14:50:05');
INSERT INTO `log_info` VALUES (4596, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 14:50:44');
INSERT INTO `log_info` VALUES (4597, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 14:50:45');
INSERT INTO `log_info` VALUES (4598, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 14:51:04');
INSERT INTO `log_info` VALUES (4599, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 14:51:05');
INSERT INTO `log_info` VALUES (4600, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 14:52:06');
INSERT INTO `log_info` VALUES (4601, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 14:52:06');
INSERT INTO `log_info` VALUES (4602, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 14:52:42');
INSERT INTO `log_info` VALUES (4603, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 14:52:43');
INSERT INTO `log_info` VALUES (4604, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 14:55:23');
INSERT INTO `log_info` VALUES (4605, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 14:55:23');
INSERT INTO `log_info` VALUES (4606, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 14:56:13');
INSERT INTO `log_info` VALUES (4607, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 14:56:14');
INSERT INTO `log_info` VALUES (4608, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 14:58:09');
INSERT INTO `log_info` VALUES (4609, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 14:58:10');
INSERT INTO `log_info` VALUES (4610, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 14:58:22');
INSERT INTO `log_info` VALUES (4611, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 14:58:22');
INSERT INTO `log_info` VALUES (4612, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 14:58:46');
INSERT INTO `log_info` VALUES (4613, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 14:58:46');
INSERT INTO `log_info` VALUES (4614, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 14:59:30');
INSERT INTO `log_info` VALUES (4615, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 14:59:31');
INSERT INTO `log_info` VALUES (4616, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 15:02:03');
INSERT INTO `log_info` VALUES (4617, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 15:02:04');
INSERT INTO `log_info` VALUES (4618, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 15:10:11');
INSERT INTO `log_info` VALUES (4619, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 15:10:12');
INSERT INTO `log_info` VALUES (4620, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 15:10:43');
INSERT INTO `log_info` VALUES (4621, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 15:10:44');
INSERT INTO `log_info` VALUES (4622, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 15:16:36');
INSERT INTO `log_info` VALUES (4623, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 15:16:37');
INSERT INTO `log_info` VALUES (4624, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 15:18:30');
INSERT INTO `log_info` VALUES (4625, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 15:18:31');
INSERT INTO `log_info` VALUES (4626, 'root', 'GET', 'com.example.controller.RoleController.selectAll', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 15:19:07');
INSERT INTO `log_info` VALUES (4627, 'root', 'GET', 'com.example.controller.RoleController.selectAll', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 15:19:07');
INSERT INTO `log_info` VALUES (4628, 'root', 'GET', 'com.example.controller.LogInfoController.page', '/log-info/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 15:19:12');
INSERT INTO `log_info` VALUES (4629, 'root', 'GET', 'com.example.controller.LogInfoController.page', '/log-info/page/6/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 15:19:23');
INSERT INTO `log_info` VALUES (4630, 'root', 'GET', 'com.example.controller.LogInfoController.page', '/log-info/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 15:19:26');
INSERT INTO `log_info` VALUES (4631, 'root', 'GET', 'com.example.controller.LogInfoController.page', '/log-info/page/2/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 15:19:30');
INSERT INTO `log_info` VALUES (4632, 'root', 'GET', 'com.example.controller.LogInfoController.page', '/log-info/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 15:19:45');
INSERT INTO `log_info` VALUES (4633, 'root', 'GET', 'com.example.controller.LogInfoController.page', '/log-info/page/12/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 15:26:06');
INSERT INTO `log_info` VALUES (4634, 'root', 'GET', 'com.example.controller.LogInfoController.page', '/log-info/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 15:26:12');
INSERT INTO `log_info` VALUES (4635, 'root', 'GET', 'com.example.controller.LogInfoController.page', '/log-info/page/3/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 15:26:17');
INSERT INTO `log_info` VALUES (4636, 'root', 'GET', 'com.example.controller.LogInfoController.page', '/log-info/page/2/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 15:26:19');
INSERT INTO `log_info` VALUES (4637, 'root', 'GET', 'com.example.controller.LogInfoController.page', '/log-info/page/4/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 15:26:23');
INSERT INTO `log_info` VALUES (4638, 'root', 'GET', 'com.example.controller.LogInfoController.page', '/log-info/page/6/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 15:26:25');
INSERT INTO `log_info` VALUES (4639, 'root', 'GET', 'com.example.controller.LogInfoController.page', '/log-info/page/11/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 15:26:28');
INSERT INTO `log_info` VALUES (4640, 'root', 'GET', 'com.example.controller.MenuController.selectAll', '/menu/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 15:26:37');
INSERT INTO `log_info` VALUES (4641, 'root', 'GET', 'com.example.controller.MenuController.selectAll', '/menu/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-16 15:26:37');

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
  `version` int(0) UNSIGNED NULL DEFAULT 1 COMMENT '乐观锁',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 70 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `menu` VALUES (12, '/role/add', 1, NULL, 2, 30, '', '添加角色', NULL, '2021-07-29 16:57:56', '2021-07-29 16:57:56', 1);
INSERT INTO `menu` VALUES (13, '/role/addAuth', 2, NULL, 2, 30, '', '添加权限\r\n', NULL, '2021-07-29 17:54:05', '2021-07-29 17:54:05', 1);
INSERT INTO `menu` VALUES (16, '/role/update', 4, NULL, 2, 30, NULL, '更新角色', NULL, '2021-07-29 20:48:29', '2021-07-29 20:48:29', 1);
INSERT INTO `menu` VALUES (17, '/role/page', 5, NULL, 2, 30, NULL, '分页查询角色', NULL, '2021-07-29 21:08:23', '2021-07-29 21:08:23', 1);
INSERT INTO `menu` VALUES (18, '/role/remove', 6, NULL, 2, 30, NULL, '删除角色', NULL, '2021-07-29 21:26:18', '2021-07-29 21:26:18', 1);
INSERT INTO `menu` VALUES (19, '/user/addRole', 6, NULL, 2, 30, NULL, '添加角色', NULL, '2021-07-29 23:08:00', '2021-07-29 23:08:00', 1);
INSERT INTO `menu` VALUES (21, '/menu/permMenu', 5, '', 2, 29, '', '当前用户菜单', NULL, NULL, NULL, 1);
INSERT INTO `menu` VALUES (24, '/system', 2, 'system', 0, NULL, 'system', '系统管理', 'el-icon-setting', NULL, NULL, 1);
INSERT INTO `menu` VALUES (25, '/system/', 1, 'auth', 0, 24, '', '权限管理', 'el-icon-unlock', NULL, NULL, 1);
INSERT INTO `menu` VALUES (26, '/system/user', 1, 'user', 1, 25, '/src/views/system/user/index.vue', '用户管理', 'el-icon-user-solid', NULL, NULL, 1);
INSERT INTO `menu` VALUES (28, '/user/selectIsUser', 7, NULL, 2, 26, NULL, '用户是否存在', NULL, NULL, NULL, 1);
INSERT INTO `menu` VALUES (29, '/system/menu', 3, 'menu', 1, 25, '/src/views/system/menu/index.vue', '菜单管理', 'el-icon-menu', NULL, NULL, 1);
INSERT INTO `menu` VALUES (30, '/system/role', 2, 'role', 1, 25, '/src/views/system/role/index.vue', '角色管理', 'el-icon-s-help', NULL, NULL, 1);
INSERT INTO `menu` VALUES (31, '/system/monitor', 2, 'monitor', 0, 24, NULL, '监控管理', 'el-icon-monitor', NULL, NULL, 1);
INSERT INTO `menu` VALUES (33, '/user/info', 8, '', 2, 26, '', '用户信息', '', NULL, NULL, 1);
INSERT INTO `menu` VALUES (34, '/foods', 3, '', 1, NULL, '/src/views/foods/index.vue', '餐品管理', 'el-icon-food', NULL, '2021-09-14 21:27:04', 3);
INSERT INTO `menu` VALUES (35, '/orders', 4, 'orders', 1, NULL, '/src/views/orders/index.vue', '订单管理', 'el-icon-s-order', NULL, '2021-09-13 18:16:00', 2);
INSERT INTO `menu` VALUES (36, '/system/monitor/log', 1, 'log', 1, 31, '/src/views/system/monitor/log/index.vue', '操作日志', 'el-icon-document', NULL, NULL, 1);
INSERT INTO `menu` VALUES (47, '/upload', 2, NULL, 2, 65, NULL, '图片资源', NULL, NULL, NULL, 1);
INSERT INTO `menu` VALUES (49, '/log-info/page', 1, NULL, 2, 36, NULL, '请求日志', NULL, NULL, NULL, 1);
INSERT INTO `menu` VALUES (50, '/role/list', NULL, NULL, 2, 30, NULL, '查询所有角色', NULL, NULL, NULL, 1);
INSERT INTO `menu` VALUES (54, '/role/selectByRid', 1, NULL, 2, 30, '', '查询权限', '', '2021-09-03 10:12:30', '2021-09-03 10:12:30', 1);
INSERT INTO `menu` VALUES (58, '/log-info/clearAll', 0, NULL, 2, 36, '', '清空日志', '', '2021-09-05 22:09:34', '2021-09-05 22:09:34', 2);
INSERT INTO `menu` VALUES (62, '/f/foods', 0, NULL, 1, 63, '/src/views/foods/index.vue', '美食', 'el-icon-food', '2021-09-05 23:05:47', '2021-09-06 00:01:41', 3);
INSERT INTO `menu` VALUES (63, '/a', 8, NULL, 0, NULL, '', '自定义', 'el-icon-platform-eleme', '2021-09-05 23:07:15', '2021-09-05 23:54:40', 1);
INSERT INTO `menu` VALUES (64, '/foods/page', 1, NULL, 2, 34, '', '分页查询餐品', '', '2021-09-13 10:06:55', '2021-09-13 10:06:55', 1);
INSERT INTO `menu` VALUES (65, '/file', 5, NULL, 0, NULL, '', '文件管理', 'el-icon-folder', '2021-09-13 18:15:10', '2021-09-13 20:29:16', 1);
INSERT INTO `menu` VALUES (66, '/file/upload', 0, NULL, 2, 65, '', '上传文件', '', '2021-09-13 18:16:34', '2021-09-13 18:16:34', 1);
INSERT INTO `menu` VALUES (67, '/foods/save', 0, NULL, 2, 34, '', '添加餐品', '', '2021-09-14 21:00:58', '2021-09-14 21:02:26', 1);
INSERT INTO `menu` VALUES (68, '/foods/update', 0, NULL, 2, 34, '', '修改餐品', '', '2021-09-14 21:16:20', '2021-09-14 21:16:20', 1);
INSERT INTO `menu` VALUES (69, '/foods/remove', 0, NULL, 2, 34, '', '删除餐品', '', '2021-09-15 09:58:39', '2021-09-15 09:58:39', 1);
INSERT INTO `menu` VALUES (70, '/orders/remove', 0, NULL, 2, 35, '', '删除订单', '', '2021-09-15 10:01:49', '2021-09-15 10:01:49', 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 798 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu_role
-- ----------------------------
INSERT INTO `menu_role` VALUES (568, 47, 4);
INSERT INTO `menu_role` VALUES (569, 21, 4);
INSERT INTO `menu_role` VALUES (570, 34, 4);
INSERT INTO `menu_role` VALUES (571, 64, 4);
INSERT INTO `menu_role` VALUES (572, 24, 4);
INSERT INTO `menu_role` VALUES (573, 25, 4);
INSERT INTO `menu_role` VALUES (574, 29, 4);
INSERT INTO `menu_role` VALUES (726, 49, 8);
INSERT INTO `menu_role` VALUES (727, 68, 8);
INSERT INTO `menu_role` VALUES (728, 67, 8);
INSERT INTO `menu_role` VALUES (729, 24, 8);
INSERT INTO `menu_role` VALUES (730, 31, 8);
INSERT INTO `menu_role` VALUES (731, 36, 8);
INSERT INTO `menu_role` VALUES (732, 34, 8);
INSERT INTO `menu_role` VALUES (733, 24, 1);
INSERT INTO `menu_role` VALUES (734, 25, 1);
INSERT INTO `menu_role` VALUES (735, 26, 1);
INSERT INTO `menu_role` VALUES (736, 2, 1);
INSERT INTO `menu_role` VALUES (737, 3, 1);
INSERT INTO `menu_role` VALUES (738, 4, 1);
INSERT INTO `menu_role` VALUES (739, 5, 1);
INSERT INTO `menu_role` VALUES (740, 6, 1);
INSERT INTO `menu_role` VALUES (741, 28, 1);
INSERT INTO `menu_role` VALUES (742, 33, 1);
INSERT INTO `menu_role` VALUES (743, 30, 1);
INSERT INTO `menu_role` VALUES (744, 50, 1);
INSERT INTO `menu_role` VALUES (745, 54, 1);
INSERT INTO `menu_role` VALUES (746, 12, 1);
INSERT INTO `menu_role` VALUES (747, 13, 1);
INSERT INTO `menu_role` VALUES (748, 16, 1);
INSERT INTO `menu_role` VALUES (749, 17, 1);
INSERT INTO `menu_role` VALUES (750, 19, 1);
INSERT INTO `menu_role` VALUES (751, 18, 1);
INSERT INTO `menu_role` VALUES (752, 29, 1);
INSERT INTO `menu_role` VALUES (753, 7, 1);
INSERT INTO `menu_role` VALUES (754, 8, 1);
INSERT INTO `menu_role` VALUES (755, 9, 1);
INSERT INTO `menu_role` VALUES (756, 10, 1);
INSERT INTO `menu_role` VALUES (757, 21, 1);
INSERT INTO `menu_role` VALUES (758, 31, 1);
INSERT INTO `menu_role` VALUES (759, 36, 1);
INSERT INTO `menu_role` VALUES (760, 58, 1);
INSERT INTO `menu_role` VALUES (761, 49, 1);
INSERT INTO `menu_role` VALUES (762, 34, 1);
INSERT INTO `menu_role` VALUES (763, 69, 1);
INSERT INTO `menu_role` VALUES (764, 68, 1);
INSERT INTO `menu_role` VALUES (765, 67, 1);
INSERT INTO `menu_role` VALUES (766, 64, 1);
INSERT INTO `menu_role` VALUES (767, 35, 1);
INSERT INTO `menu_role` VALUES (768, 70, 1);
INSERT INTO `menu_role` VALUES (769, 65, 1);
INSERT INTO `menu_role` VALUES (770, 66, 1);
INSERT INTO `menu_role` VALUES (771, 47, 1);
INSERT INTO `menu_role` VALUES (772, 63, 1);
INSERT INTO `menu_role` VALUES (773, 62, 1);
INSERT INTO `menu_role` VALUES (774, 3, 3);
INSERT INTO `menu_role` VALUES (775, 33, 3);
INSERT INTO `menu_role` VALUES (776, 50, 3);
INSERT INTO `menu_role` VALUES (777, 17, 3);
INSERT INTO `menu_role` VALUES (778, 8, 3);
INSERT INTO `menu_role` VALUES (779, 21, 3);
INSERT INTO `menu_role` VALUES (780, 49, 3);
INSERT INTO `menu_role` VALUES (781, 34, 3);
INSERT INTO `menu_role` VALUES (782, 69, 3);
INSERT INTO `menu_role` VALUES (783, 68, 3);
INSERT INTO `menu_role` VALUES (784, 67, 3);
INSERT INTO `menu_role` VALUES (785, 64, 3);
INSERT INTO `menu_role` VALUES (786, 35, 3);
INSERT INTO `menu_role` VALUES (787, 70, 3);
INSERT INTO `menu_role` VALUES (788, 47, 3);
INSERT INTO `menu_role` VALUES (789, 63, 3);
INSERT INTO `menu_role` VALUES (790, 62, 3);
INSERT INTO `menu_role` VALUES (791, 24, 3);
INSERT INTO `menu_role` VALUES (792, 25, 3);
INSERT INTO `menu_role` VALUES (793, 26, 3);
INSERT INTO `menu_role` VALUES (794, 30, 3);
INSERT INTO `menu_role` VALUES (795, 29, 3);
INSERT INTO `menu_role` VALUES (796, 31, 3);
INSERT INTO `menu_role` VALUES (797, 36, 3);
INSERT INTO `menu_role` VALUES (798, 65, 3);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for orders_foods
-- ----------------------------
DROP TABLE IF EXISTS `orders_foods`;
CREATE TABLE `orders_foods`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
  `version` int(0) NULL DEFAULT 0 COMMENT '乐观锁',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'root', '超级管理员', NULL, '2021-09-15 10:03:58', 15);
INSERT INTO `role` VALUES (2, 'admin', '管理员', NULL, '2021-09-07 16:27:21', 2);
INSERT INTO `role` VALUES (3, 'user', '用户', NULL, '2021-09-15 10:17:08', 7);
INSERT INTO `role` VALUES (4, 'tourist', '游客', NULL, '2021-09-13 12:00:33', 7);
INSERT INTO `role` VALUES (8, 'a', 'a', '2021-08-29 19:10:27', '2021-09-15 09:17:11', 12);

-- ----------------------------
-- Table structure for statis
-- ----------------------------
DROP TABLE IF EXISTS `statis`;
CREATE TABLE `statis`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '统计ID',
  `uv` int(0) NULL DEFAULT NULL COMMENT '访问量',
  `user_count` int(0) NULL DEFAULT NULL COMMENT '用户数量',
  `sales_count` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '销售量',
  `foods_count` int(0) NULL DEFAULT NULL COMMENT '餐品数量',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of statis
-- ----------------------------
INSERT INTO `statis` VALUES (12, 10, 15, NULL, 6, '2021-09-15 18:03:30');
INSERT INTO `statis` VALUES (13, 2, 15, NULL, 6, '2021-09-16 16:00:00');

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
  `version` int(0) NULL DEFAULT 0 COMMENT '乐观锁',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Redundant;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'user', '木灵鱼儿', '$2a$10$UfzfgbVxCAXoiyaCw7IXiuHiFqMMVbhbb3ox6nkxbAJLGTWjJ7Ciq', 'f7a6abd9-a516-40b7-be20-683d932da117', NULL, '15885326305', 'user@qq.com', 1, '2021-07-29 02:14:10', '2021-09-15 08:25:44', 2);
INSERT INTO `user` VALUES (2, 'admin', '初之音', '$2a$10$vnvYyOdeQr9EUAc..Zjh4ed73t3JQf74tFgwg/XpQYTQHL3cfEtn2', '0fb78285-9c32-40d1-bae8-96ddd524b9df', NULL, '113', 'root', 1, '2021-07-29 13:11:51', '2021-09-15 08:26:34', 12);
INSERT INTO `user` VALUES (3, 'root', '保罗的小宇宙', '$2a$10$eFWwgadiCeSOQnSH3FaJT.EJhCE77x8yIQk3/JlgQAmX39qejXBrm', '9dbd19e5-7087-4ce6-aee1-d22df1f1cf96', NULL, '15885326300', 'root@qq.com', 1, '2021-07-29 13:12:04', '2021-09-16 12:12:57', 4);
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
) ENGINE = InnoDB AUTO_INCREMENT = 76 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_role
-- ----------------------------
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
INSERT INTO `user_role` VALUES (45, 27, 8);
INSERT INTO `user_role` VALUES (58, 14, 2);
INSERT INTO `user_role` VALUES (61, 5, 3);
INSERT INTO `user_role` VALUES (62, 1, 3);
INSERT INTO `user_role` VALUES (74, 2, 2);
INSERT INTO `user_role` VALUES (75, 2, 3);
INSERT INTO `user_role` VALUES (76, 3, 1);

SET FOREIGN_KEY_CHECKS = 1;
