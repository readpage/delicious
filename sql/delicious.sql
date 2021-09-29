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

 Date: 29/09/2021 18:09:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for desk
-- ----------------------------
DROP TABLE IF EXISTS `desk`;
CREATE TABLE `desk`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `number` int(0) NULL DEFAULT NULL COMMENT '桌号',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '二维码',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `version` int(0) NULL DEFAULT 1 COMMENT '版本',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `number`(`number`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of desk
-- ----------------------------
INSERT INTO `desk` VALUES (1, 1, '/api/upload/root/1.png', '2021-09-29 00:39:41', '2021-09-29 00:39:41', 1);
INSERT INTO `desk` VALUES (2, 2, '/api/upload/root/2.png', '2021-09-29 00:40:02', '2021-09-29 00:40:02', 1);
INSERT INTO `desk` VALUES (9, 3, '/api/upload/root/3.png', '2021-09-29 16:19:35', '2021-09-29 16:19:35', 1);
INSERT INTO `desk` VALUES (10, 4, '/api/upload/root/4.png', '2021-09-29 16:20:26', '2021-09-29 16:20:26', 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of foods
-- ----------------------------
INSERT INTO `foods` VALUES (1, '香酥鱼条', '/api/upload/root/20210909163116442224666411321699.jpg', 10.40, NULL, NULL, '2021-09-21 19:00:45', 11);
INSERT INTO `foods` VALUES (2, '时蔬烧五花肉', '/api/upload/root/2021090916311585919298197577.jpg', 22.20, NULL, NULL, '2021-09-22 12:50:02', 20);
INSERT INTO `foods` VALUES (3, '糯米粉红薯丸子', '/api/upload/root/2021091116313690648841958079.jpg', 15.44, NULL, NULL, '2021-09-21 19:00:19', 5);
INSERT INTO `foods` VALUES (4, '青瓜胡萝卜炒牛肉', '/api/upload/root/2021091116313517169521958079.jpg', 16.44, NULL, NULL, '2021-09-21 19:02:15', 8);
INSERT INTO `foods` VALUES (5, '蒜香豆腐', '/api/upload/root/2021091116313687379571958079.jpg', 22.10, NULL, NULL, '2021-09-21 22:20:49', 9);
INSERT INTO `foods` VALUES (6, '韭菜炒豆腐', '/api/upload/root/2021091116313683606001958079.jpg', 19.55, NULL, NULL, '2021-09-22 12:45:59', 4);
INSERT INTO `foods` VALUES (12, 'a', '/api/upload/user/easter_egg_60.png', 2.00, NULL, '2021-09-21 22:22:19', '2021-09-22 12:45:52', 3);

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
) ENGINE = InnoDB AUTO_INCREMENT = 2451 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_info
-- ----------------------------
INSERT INTO `log_info` VALUES (2291, 'root', 'POST', 'com.example.controller.DeskController.save', '/desk/save', 'Chrome 9', 'Windows 10', 'Computer', '0:0:0:0:0:0:0:1', NULL, '添加成功!😎', NULL, '2021-09-29 00:39:41');
INSERT INTO `log_info` VALUES (2292, 'root', 'POST', 'com.example.controller.DeskController.save', '/desk/save', 'Chrome 9', 'Windows 10', 'Computer', '0:0:0:0:0:0:0:1', NULL, '添加成功!😎', NULL, '2021-09-29 00:40:02');
INSERT INTO `log_info` VALUES (2293, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 00:41:33');
INSERT INTO `log_info` VALUES (2294, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 00:41:33');
INSERT INTO `log_info` VALUES (2295, 'root', 'GET', 'com.example.controller.StatisController.recent', '/statis/recent', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 00:41:35');
INSERT INTO `log_info` VALUES (2296, 'root', 'GET', 'com.example.controller.MenuController.selectAll', '/menu/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 00:41:52');
INSERT INTO `log_info` VALUES (2297, 'root', 'PUT', 'com.example.controller.MenuController.updateById', '/menu/update', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '更新成功!😏', NULL, '2021-09-29 00:42:24');
INSERT INTO `log_info` VALUES (2298, 'root', 'GET', 'com.example.controller.MenuController.selectAll', '/menu/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 00:42:25');
INSERT INTO `log_info` VALUES (2299, 'root', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 00:42:44');
INSERT INTO `log_info` VALUES (2300, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 00:42:54');
INSERT INTO `log_info` VALUES (2301, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 00:44:46');
INSERT INTO `log_info` VALUES (2302, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 00:44:46');
INSERT INTO `log_info` VALUES (2303, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 00:44:59');
INSERT INTO `log_info` VALUES (2304, 'root', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 00:45:04');
INSERT INTO `log_info` VALUES (2305, 'root', 'GET', 'com.example.controller.StatisController.recent', '/statis/recent', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 00:45:13');
INSERT INTO `log_info` VALUES (2306, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 00:51:31');
INSERT INTO `log_info` VALUES (2307, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 00:51:31');
INSERT INTO `log_info` VALUES (2308, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 00:51:40');
INSERT INTO `log_info` VALUES (2309, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 00:51:40');
INSERT INTO `log_info` VALUES (2310, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:04:26');
INSERT INTO `log_info` VALUES (2311, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:04:26');
INSERT INTO `log_info` VALUES (2312, 'root', 'GET', 'com.example.controller.StatisController.recent', '/statis/recent', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:04:29');
INSERT INTO `log_info` VALUES (2313, 'root', 'GET', 'com.example.controller.MenuController.selectAll', '/menu/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:04:38');
INSERT INTO `log_info` VALUES (2314, 'root', 'POST', 'com.example.controller.MenuController.save', '/menu/save', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '添加成功!😎', NULL, '2021-09-29 12:05:04');
INSERT INTO `log_info` VALUES (2315, 'root', 'GET', 'com.example.controller.MenuController.selectAll', '/menu/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:05:04');
INSERT INTO `log_info` VALUES (2316, 'root', 'GET', 'com.example.controller.RoleController.selectPage', '/role/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:05:08');
INSERT INTO `log_info` VALUES (2317, 'root', 'GET', 'com.example.controller.RoleController.selectPage', '/role/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:05:08');
INSERT INTO `log_info` VALUES (2318, 'root', 'GET', 'com.example.controller.RoleController.selectById', '/role/selectByRid/1', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:05:11');
INSERT INTO `log_info` VALUES (2319, 'root', 'PUT', 'com.example.controller.RoleController.updateById', '/role/update/72,73,24,25,26,2,3,4,5,6,28,33,30,50,12,54,13,16,17,18,19,29,7,8,9,10,21,31,75,76,36,58,49,34,71,69,68,67,64,35,70,77,79,78,80,81,63,62,65,66', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '更新成功!😏', NULL, '2021-09-29 12:05:16');
INSERT INTO `log_info` VALUES (2320, 'root', 'GET', 'com.example.controller.RoleController.selectPage', '/role/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:05:17');
INSERT INTO `log_info` VALUES (2321, 'root', 'GET', 'com.example.controller.MenuController.selectAll', '/menu/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:05:17');
INSERT INTO `log_info` VALUES (2322, 'root', 'GET', 'com.example.controller.DeskController.page', '/desk/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '0:0:0:0:0:0:0:1', NULL, '查询成功!😍', NULL, '2021-09-29 12:05:21');
INSERT INTO `log_info` VALUES (2323, 'root', 'GET', 'com.example.controller.DeskController.page', '/desk/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '0:0:0:0:0:0:0:1', NULL, '查询成功!😍', NULL, '2021-09-29 12:05:28');
INSERT INTO `log_info` VALUES (2324, 'root', 'GET', 'com.example.controller.UserController.selectPage', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:07:34');
INSERT INTO `log_info` VALUES (2325, 'root', 'GET', 'com.example.controller.UserController.selectPage', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:07:34');
INSERT INTO `log_info` VALUES (2326, 'root', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:07:38');
INSERT INTO `log_info` VALUES (2327, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:07:40');
INSERT INTO `log_info` VALUES (2328, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:12:45');
INSERT INTO `log_info` VALUES (2329, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:12:50');
INSERT INTO `log_info` VALUES (2330, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:12:52');
INSERT INTO `log_info` VALUES (2331, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:19:45');
INSERT INTO `log_info` VALUES (2332, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:22:23');
INSERT INTO `log_info` VALUES (2333, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:22:23');
INSERT INTO `log_info` VALUES (2334, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:24:00');
INSERT INTO `log_info` VALUES (2335, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:24:00');
INSERT INTO `log_info` VALUES (2336, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:25:36');
INSERT INTO `log_info` VALUES (2337, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:25:36');
INSERT INTO `log_info` VALUES (2338, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:25:39');
INSERT INTO `log_info` VALUES (2339, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:25:40');
INSERT INTO `log_info` VALUES (2340, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:25:43');
INSERT INTO `log_info` VALUES (2341, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:25:44');
INSERT INTO `log_info` VALUES (2342, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:25:48');
INSERT INTO `log_info` VALUES (2343, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:25:51');
INSERT INTO `log_info` VALUES (2344, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:25:52');
INSERT INTO `log_info` VALUES (2345, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:26:04');
INSERT INTO `log_info` VALUES (2346, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:26:04');
INSERT INTO `log_info` VALUES (2347, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:26:06');
INSERT INTO `log_info` VALUES (2348, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:26:16');
INSERT INTO `log_info` VALUES (2349, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:26:18');
INSERT INTO `log_info` VALUES (2350, 'root', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:26:29');
INSERT INTO `log_info` VALUES (2351, 'root', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:26:33');
INSERT INTO `log_info` VALUES (2352, 'root', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:26:36');
INSERT INTO `log_info` VALUES (2353, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:26:51');
INSERT INTO `log_info` VALUES (2354, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:28:57');
INSERT INTO `log_info` VALUES (2355, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:28:59');
INSERT INTO `log_info` VALUES (2356, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:29:02');
INSERT INTO `log_info` VALUES (2357, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:29:04');
INSERT INTO `log_info` VALUES (2358, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:29:05');
INSERT INTO `log_info` VALUES (2359, 'root', 'GET', 'com.example.controller.RoleController.selectAll', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:29:28');
INSERT INTO `log_info` VALUES (2360, 'root', 'GET', 'com.example.controller.RoleController.selectAll', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:29:28');
INSERT INTO `log_info` VALUES (2361, 'root', 'GET', 'com.example.controller.RoleController.selectPage', '/role/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:29:32');
INSERT INTO `log_info` VALUES (2362, 'root', 'GET', 'com.example.controller.RoleController.selectPage', '/role/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:29:32');
INSERT INTO `log_info` VALUES (2363, 'root', 'GET', 'com.example.controller.RoleController.selectPage', '/role/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:29:37');
INSERT INTO `log_info` VALUES (2364, 'root', 'GET', 'com.example.controller.RoleController.selectPage', '/role/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:29:40');
INSERT INTO `log_info` VALUES (2365, 'root', 'GET', 'com.example.controller.RoleController.selectPage', '/role/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:29:40');
INSERT INTO `log_info` VALUES (2366, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:30:24');
INSERT INTO `log_info` VALUES (2367, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:30:24');
INSERT INTO `log_info` VALUES (2368, 'root', 'GET', 'com.example.controller.RoleController.selectPage', '/role/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:30:27');
INSERT INTO `log_info` VALUES (2369, 'root', 'GET', 'com.example.controller.RoleController.selectPage', '/role/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:30:27');
INSERT INTO `log_info` VALUES (2370, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:30:30');
INSERT INTO `log_info` VALUES (2371, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:30:35');
INSERT INTO `log_info` VALUES (2372, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:30:43');
INSERT INTO `log_info` VALUES (2373, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:30:59');
INSERT INTO `log_info` VALUES (2374, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:31:00');
INSERT INTO `log_info` VALUES (2375, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:31:06');
INSERT INTO `log_info` VALUES (2376, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:31:06');
INSERT INTO `log_info` VALUES (2377, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:31:09');
INSERT INTO `log_info` VALUES (2378, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:31:13');
INSERT INTO `log_info` VALUES (2379, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:31:15');
INSERT INTO `log_info` VALUES (2380, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:31:18');
INSERT INTO `log_info` VALUES (2381, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:31:22');
INSERT INTO `log_info` VALUES (2382, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:31:24');
INSERT INTO `log_info` VALUES (2383, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:35:35');
INSERT INTO `log_info` VALUES (2384, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:35:35');
INSERT INTO `log_info` VALUES (2385, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:35:38');
INSERT INTO `log_info` VALUES (2386, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:35:41');
INSERT INTO `log_info` VALUES (2387, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:36:23');
INSERT INTO `log_info` VALUES (2388, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:36:23');
INSERT INTO `log_info` VALUES (2389, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:36:27');
INSERT INTO `log_info` VALUES (2390, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:37:29');
INSERT INTO `log_info` VALUES (2391, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:37:29');
INSERT INTO `log_info` VALUES (2392, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:37:33');
INSERT INTO `log_info` VALUES (2393, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:37:48');
INSERT INTO `log_info` VALUES (2394, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:38:42');
INSERT INTO `log_info` VALUES (2395, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:38:42');
INSERT INTO `log_info` VALUES (2396, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:39:02');
INSERT INTO `log_info` VALUES (2397, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:39:07');
INSERT INTO `log_info` VALUES (2398, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:39:12');
INSERT INTO `log_info` VALUES (2399, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:39:51');
INSERT INTO `log_info` VALUES (2400, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:40:10');
INSERT INTO `log_info` VALUES (2401, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:40:19');
INSERT INTO `log_info` VALUES (2402, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:40:19');
INSERT INTO `log_info` VALUES (2403, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:40:22');
INSERT INTO `log_info` VALUES (2404, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:40:26');
INSERT INTO `log_info` VALUES (2405, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:40:27');
INSERT INTO `log_info` VALUES (2406, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:40:39');
INSERT INTO `log_info` VALUES (2407, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:40:43');
INSERT INTO `log_info` VALUES (2408, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:40:46');
INSERT INTO `log_info` VALUES (2409, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:40:48');
INSERT INTO `log_info` VALUES (2410, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:40:51');
INSERT INTO `log_info` VALUES (2411, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:40:52');
INSERT INTO `log_info` VALUES (2412, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:40:54');
INSERT INTO `log_info` VALUES (2413, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:40:55');
INSERT INTO `log_info` VALUES (2414, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:40:59');
INSERT INTO `log_info` VALUES (2415, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:41:01');
INSERT INTO `log_info` VALUES (2416, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:41:54');
INSERT INTO `log_info` VALUES (2417, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 12:41:55');
INSERT INTO `log_info` VALUES (2418, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 14:07:00');
INSERT INTO `log_info` VALUES (2419, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 14:07:00');
INSERT INTO `log_info` VALUES (2420, 'root', 'GET', 'com.example.controller.StatisController.recent', '/statis/recent', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 14:07:03');
INSERT INTO `log_info` VALUES (2421, 'root', 'GET', 'com.example.controller.DeskController.page', '/desk/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 14:07:16');
INSERT INTO `log_info` VALUES (2422, 'root', 'GET', 'com.example.controller.DeskController.page', '/desk/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 14:07:26');
INSERT INTO `log_info` VALUES (2423, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 14:08:06');
INSERT INTO `log_info` VALUES (2424, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 14:08:06');
INSERT INTO `log_info` VALUES (2425, 'root', 'GET', 'com.example.controller.DeskController.page', '/desk/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 14:08:09');
INSERT INTO `log_info` VALUES (2426, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 14:09:34');
INSERT INTO `log_info` VALUES (2427, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 14:09:34');
INSERT INTO `log_info` VALUES (2428, 'root', 'GET', 'com.example.controller.DeskController.page', '/desk/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 14:09:37');
INSERT INTO `log_info` VALUES (2429, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 14:09:40');
INSERT INTO `log_info` VALUES (2430, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 14:15:54');
INSERT INTO `log_info` VALUES (2431, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 14:15:54');
INSERT INTO `log_info` VALUES (2432, 'root', 'GET', 'com.example.controller.DeskController.page', '/desk/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 14:15:58');
INSERT INTO `log_info` VALUES (2433, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 14:16:18');
INSERT INTO `log_info` VALUES (2434, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 14:16:18');
INSERT INTO `log_info` VALUES (2435, 'root', 'GET', 'com.example.controller.DeskController.page', '/desk/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 14:16:21');
INSERT INTO `log_info` VALUES (2436, 'root', 'GET', 'com.example.controller.UserController.selectPage', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 14:16:38');
INSERT INTO `log_info` VALUES (2437, 'root', 'GET', 'com.example.controller.UserController.selectPage', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 14:16:38');
INSERT INTO `log_info` VALUES (2438, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 14:17:07');
INSERT INTO `log_info` VALUES (2439, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 14:39:16');
INSERT INTO `log_info` VALUES (2440, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 14:39:16');
INSERT INTO `log_info` VALUES (2441, 'root', 'GET', 'com.example.controller.DeskController.page', '/desk/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 14:39:21');
INSERT INTO `log_info` VALUES (2442, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 14:43:43');
INSERT INTO `log_info` VALUES (2443, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 14:43:43');
INSERT INTO `log_info` VALUES (2444, 'root', 'GET', 'com.example.controller.DeskController.page', '/desk/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 14:43:47');
INSERT INTO `log_info` VALUES (2445, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 14:44:18');
INSERT INTO `log_info` VALUES (2446, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 14:44:18');
INSERT INTO `log_info` VALUES (2447, 'root', 'GET', 'com.example.controller.DeskController.page', '/desk/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 14:44:21');
INSERT INTO `log_info` VALUES (2448, 'root', 'GET', 'com.example.controller.OrdersController.page', '/orders/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 14:48:37');
INSERT INTO `log_info` VALUES (2449, 'root', 'GET', 'com.example.controller.RoleController.selectAll', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 14:48:46');
INSERT INTO `log_info` VALUES (2450, 'root', 'GET', 'com.example.controller.UserController.selectPage', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-29 14:48:46');

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
) ENGINE = InnoDB AUTO_INCREMENT = 81 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `menu` VALUES (25, '/system/', 1, 'auth', 0, 24, '', '权限管理', 'el-icon-unlock', NULL, '2021-09-21 04:27:25', 2);
INSERT INTO `menu` VALUES (26, '/system/user', 1, 'user', 1, 25, '/src/views/system/user/index.vue', '用户管理', 'el-icon-user-solid', NULL, NULL, 1);
INSERT INTO `menu` VALUES (28, '/user/selectIsUser', 7, NULL, 2, 26, NULL, '用户是否存在', NULL, NULL, NULL, 1);
INSERT INTO `menu` VALUES (29, '/system/menu', 3, 'menu', 1, 25, '/src/views/system/menu/index.vue', '菜单管理', 'el-icon-menu', NULL, NULL, 1);
INSERT INTO `menu` VALUES (30, '/system/role', 2, 'role', 1, 25, '/src/views/system/role/index.vue', '角色管理', 'el-icon-s-help', NULL, NULL, 1);
INSERT INTO `menu` VALUES (31, '/system/monitor', 2, 'monitor', 0, 24, NULL, '监控管理', 'el-icon-monitor', NULL, NULL, 1);
INSERT INTO `menu` VALUES (33, '/user/info', 8, '', 2, 26, '', '用户信息', '', NULL, NULL, 1);
INSERT INTO `menu` VALUES (34, '/foods', 3, '', 1, NULL, '/src/views/foods/index.vue', '餐品管理', 'el-icon-food', NULL, '2021-09-14 21:27:04', 3);
INSERT INTO `menu` VALUES (35, '/orders', 4, 'orders', 1, NULL, '/src/views/orders/index.vue', '订单管理', 'el-icon-s-order', NULL, '2021-09-13 18:16:00', 2);
INSERT INTO `menu` VALUES (36, '/system/monitor/log', 1, 'log', 1, 31, '/src/views/system/monitor/log/index.vue', '操作日志', 'el-icon-document', NULL, NULL, 1);
INSERT INTO `menu` VALUES (49, '/log-info/page', 1, NULL, 2, 36, NULL, '请求日志', NULL, NULL, NULL, 1);
INSERT INTO `menu` VALUES (50, '/role/list', NULL, NULL, 2, 30, NULL, '查询所有角色', NULL, NULL, NULL, 1);
INSERT INTO `menu` VALUES (54, '/role/selectByRid', 1, NULL, 2, 30, '', '查询权限', '', '2021-09-03 10:12:30', '2021-09-03 10:12:30', 1);
INSERT INTO `menu` VALUES (58, '/log-info/clearAll', 0, NULL, 2, 36, '', '清空日志', '', '2021-09-05 22:09:34', '2021-09-05 22:09:34', 2);
INSERT INTO `menu` VALUES (62, '/f/foods', 0, NULL, 1, 63, '/src/views/foods/index.vue', '美食', 'el-icon-food', '2021-09-05 23:05:47', '2021-09-06 00:01:41', 3);
INSERT INTO `menu` VALUES (63, '/a', 7, NULL, 0, NULL, '', '自定义', 'el-icon-platform-eleme', '2021-09-05 23:07:15', '2021-09-27 17:53:10', 3);
INSERT INTO `menu` VALUES (64, '/foods/page', 1, NULL, 2, 34, '', '分页查询餐品', '', '2021-09-13 10:06:55', '2021-09-21 18:06:31', 2);
INSERT INTO `menu` VALUES (65, '/file', 8, NULL, 0, NULL, '', '文件管理', 'el-icon-folder', '2021-09-13 18:15:10', '2021-09-27 17:53:18', 4);
INSERT INTO `menu` VALUES (66, '/file/upload', 0, NULL, 2, 65, '', '上传文件', '', '2021-09-13 18:16:34', '2021-09-21 22:50:30', 3);
INSERT INTO `menu` VALUES (67, '/foods/save', 0, NULL, 2, 34, '', '添加餐品', '', '2021-09-14 21:00:58', '2021-09-21 18:06:25', 2);
INSERT INTO `menu` VALUES (68, '/foods/update', 0, NULL, 2, 34, '', '修改餐品', '', '2021-09-14 21:16:20', '2021-09-14 21:16:20', 1);
INSERT INTO `menu` VALUES (69, '/foods/remove', 0, NULL, 2, 34, '', '删除餐品', '', '2021-09-15 09:58:39', '2021-09-15 09:58:39', 1);
INSERT INTO `menu` VALUES (70, '/orders/remove', 0, NULL, 2, 35, '', '删除订单', '', '2021-09-15 10:01:49', '2021-09-15 10:01:49', 1);
INSERT INTO `menu` VALUES (71, '/foods/getById', 0, NULL, 2, 34, '', 'id查询商品', '', '2021-09-19 15:56:48', '2021-09-19 15:56:48', 1);
INSERT INTO `menu` VALUES (72, '/', 0, NULL, 0, NULL, '', '数据统计', 'el-icon-s-data', '2021-09-19 21:50:44', '2021-09-21 21:02:46', 4);
INSERT INTO `menu` VALUES (73, '/statis/recent', 0, NULL, 2, 72, '', '最近7天数据', '', '2021-09-19 21:52:04', '2021-09-19 21:52:04', 1);
INSERT INTO `menu` VALUES (75, '/system/monintor/server', 1, NULL, 1, 31, '/src/views/system/monitor/server/index.vue', '服务监控', 'el-icon-date', '2021-09-24 14:03:22', '2021-09-25 12:05:44', 2);
INSERT INTO `menu` VALUES (76, '/statis/server', 0, NULL, 2, 75, '', '查询系统信息', '', '2021-09-24 14:04:38', '2021-09-24 14:04:38', 1);
INSERT INTO `menu` VALUES (77, '/orders/save', 1, NULL, 2, 35, '', '添加订单', '', '2021-09-27 16:54:55', '2021-09-27 16:54:55', 1);
INSERT INTO `menu` VALUES (78, '/desk', 6, NULL, 1, NULL, '/src/views/desk/index.vue', '桌号管理', 'el-icon-knife-fork', '2021-09-27 17:52:42', '2021-09-29 00:42:24', 4);
INSERT INTO `menu` VALUES (79, '/orders/page', 2, NULL, 2, 35, '', '查询订单', '', '2021-09-28 09:57:35', '2021-09-28 09:57:35', 1);
INSERT INTO `menu` VALUES (80, '/desk/save', 0, NULL, 2, 78, '', '添加桌号', '', '2021-09-28 18:00:00', '2021-09-28 18:00:00', 1);
INSERT INTO `menu` VALUES (81, '/desk/page', 2, NULL, 2, 78, '', '查询桌号', '', '2021-09-29 12:05:04', '2021-09-29 12:05:04', 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 1682 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu_role
-- ----------------------------
INSERT INTO `menu_role` VALUES (1081, 21, 4);
INSERT INTO `menu_role` VALUES (1082, 71, 4);
INSERT INTO `menu_role` VALUES (1083, 64, 4);
INSERT INTO `menu_role` VALUES (1084, 24, 4);
INSERT INTO `menu_role` VALUES (1085, 25, 4);
INSERT INTO `menu_role` VALUES (1086, 29, 4);
INSERT INTO `menu_role` VALUES (1087, 34, 4);
INSERT INTO `menu_role` VALUES (1439, 49, 8);
INSERT INTO `menu_role` VALUES (1440, 68, 8);
INSERT INTO `menu_role` VALUES (1441, 67, 8);
INSERT INTO `menu_role` VALUES (1442, 24, 8);
INSERT INTO `menu_role` VALUES (1443, 31, 8);
INSERT INTO `menu_role` VALUES (1444, 36, 8);
INSERT INTO `menu_role` VALUES (1445, 34, 8);
INSERT INTO `menu_role` VALUES (1539, 72, 3);
INSERT INTO `menu_role` VALUES (1540, 73, 3);
INSERT INTO `menu_role` VALUES (1541, 28, 3);
INSERT INTO `menu_role` VALUES (1542, 33, 3);
INSERT INTO `menu_role` VALUES (1543, 21, 3);
INSERT INTO `menu_role` VALUES (1544, 71, 3);
INSERT INTO `menu_role` VALUES (1545, 64, 3);
INSERT INTO `menu_role` VALUES (1546, 77, 3);
INSERT INTO `menu_role` VALUES (1547, 24, 3);
INSERT INTO `menu_role` VALUES (1548, 25, 3);
INSERT INTO `menu_role` VALUES (1549, 26, 3);
INSERT INTO `menu_role` VALUES (1550, 29, 3);
INSERT INTO `menu_role` VALUES (1551, 34, 3);
INSERT INTO `menu_role` VALUES (1552, 35, 3);
INSERT INTO `menu_role` VALUES (1601, 72, 2);
INSERT INTO `menu_role` VALUES (1602, 73, 2);
INSERT INTO `menu_role` VALUES (1603, 3, 2);
INSERT INTO `menu_role` VALUES (1604, 28, 2);
INSERT INTO `menu_role` VALUES (1605, 33, 2);
INSERT INTO `menu_role` VALUES (1606, 50, 2);
INSERT INTO `menu_role` VALUES (1607, 54, 2);
INSERT INTO `menu_role` VALUES (1608, 17, 2);
INSERT INTO `menu_role` VALUES (1609, 8, 2);
INSERT INTO `menu_role` VALUES (1610, 21, 2);
INSERT INTO `menu_role` VALUES (1611, 36, 2);
INSERT INTO `menu_role` VALUES (1612, 58, 2);
INSERT INTO `menu_role` VALUES (1613, 49, 2);
INSERT INTO `menu_role` VALUES (1614, 34, 2);
INSERT INTO `menu_role` VALUES (1615, 71, 2);
INSERT INTO `menu_role` VALUES (1616, 69, 2);
INSERT INTO `menu_role` VALUES (1617, 68, 2);
INSERT INTO `menu_role` VALUES (1618, 67, 2);
INSERT INTO `menu_role` VALUES (1619, 64, 2);
INSERT INTO `menu_role` VALUES (1620, 35, 2);
INSERT INTO `menu_role` VALUES (1621, 70, 2);
INSERT INTO `menu_role` VALUES (1622, 77, 2);
INSERT INTO `menu_role` VALUES (1623, 79, 2);
INSERT INTO `menu_role` VALUES (1624, 78, 2);
INSERT INTO `menu_role` VALUES (1625, 65, 2);
INSERT INTO `menu_role` VALUES (1626, 66, 2);
INSERT INTO `menu_role` VALUES (1627, 24, 2);
INSERT INTO `menu_role` VALUES (1628, 25, 2);
INSERT INTO `menu_role` VALUES (1629, 26, 2);
INSERT INTO `menu_role` VALUES (1630, 30, 2);
INSERT INTO `menu_role` VALUES (1631, 29, 2);
INSERT INTO `menu_role` VALUES (1632, 31, 2);
INSERT INTO `menu_role` VALUES (1682, 72, 1);
INSERT INTO `menu_role` VALUES (1683, 73, 1);
INSERT INTO `menu_role` VALUES (1684, 24, 1);
INSERT INTO `menu_role` VALUES (1685, 25, 1);
INSERT INTO `menu_role` VALUES (1686, 26, 1);
INSERT INTO `menu_role` VALUES (1687, 2, 1);
INSERT INTO `menu_role` VALUES (1688, 3, 1);
INSERT INTO `menu_role` VALUES (1689, 4, 1);
INSERT INTO `menu_role` VALUES (1690, 5, 1);
INSERT INTO `menu_role` VALUES (1691, 6, 1);
INSERT INTO `menu_role` VALUES (1692, 28, 1);
INSERT INTO `menu_role` VALUES (1693, 33, 1);
INSERT INTO `menu_role` VALUES (1694, 30, 1);
INSERT INTO `menu_role` VALUES (1695, 50, 1);
INSERT INTO `menu_role` VALUES (1696, 12, 1);
INSERT INTO `menu_role` VALUES (1697, 54, 1);
INSERT INTO `menu_role` VALUES (1698, 13, 1);
INSERT INTO `menu_role` VALUES (1699, 16, 1);
INSERT INTO `menu_role` VALUES (1700, 17, 1);
INSERT INTO `menu_role` VALUES (1701, 18, 1);
INSERT INTO `menu_role` VALUES (1702, 19, 1);
INSERT INTO `menu_role` VALUES (1703, 29, 1);
INSERT INTO `menu_role` VALUES (1704, 7, 1);
INSERT INTO `menu_role` VALUES (1705, 8, 1);
INSERT INTO `menu_role` VALUES (1706, 9, 1);
INSERT INTO `menu_role` VALUES (1707, 10, 1);
INSERT INTO `menu_role` VALUES (1708, 21, 1);
INSERT INTO `menu_role` VALUES (1709, 31, 1);
INSERT INTO `menu_role` VALUES (1710, 75, 1);
INSERT INTO `menu_role` VALUES (1711, 76, 1);
INSERT INTO `menu_role` VALUES (1712, 36, 1);
INSERT INTO `menu_role` VALUES (1713, 58, 1);
INSERT INTO `menu_role` VALUES (1714, 49, 1);
INSERT INTO `menu_role` VALUES (1715, 34, 1);
INSERT INTO `menu_role` VALUES (1716, 71, 1);
INSERT INTO `menu_role` VALUES (1717, 69, 1);
INSERT INTO `menu_role` VALUES (1718, 68, 1);
INSERT INTO `menu_role` VALUES (1719, 67, 1);
INSERT INTO `menu_role` VALUES (1720, 64, 1);
INSERT INTO `menu_role` VALUES (1721, 35, 1);
INSERT INTO `menu_role` VALUES (1722, 70, 1);
INSERT INTO `menu_role` VALUES (1723, 77, 1);
INSERT INTO `menu_role` VALUES (1724, 79, 1);
INSERT INTO `menu_role` VALUES (1725, 78, 1);
INSERT INTO `menu_role` VALUES (1726, 80, 1);
INSERT INTO `menu_role` VALUES (1727, 81, 1);
INSERT INTO `menu_role` VALUES (1728, 63, 1);
INSERT INTO `menu_role` VALUES (1729, 62, 1);
INSERT INTO `menu_role` VALUES (1730, 65, 1);
INSERT INTO `menu_role` VALUES (1731, 66, 1);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '订单编号',
  `uid` int(0) NULL DEFAULT NULL COMMENT '用户ID',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `version` int(0) NULL DEFAULT 1 COMMENT '版本',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, 'dbb6be3eaf9b42e089a46fec8969c3e8', 1, '2021-09-27 17:41:57', '2021-09-27 17:41:57', 1);
INSERT INTO `orders` VALUES (2, '7b3b9c45bf424c14a334aa8b1019f544', 1, '2021-09-27 17:48:33', '2021-09-27 17:48:33', 1);

-- ----------------------------
-- Table structure for orders_foods
-- ----------------------------
DROP TABLE IF EXISTS `orders_foods`;
CREATE TABLE `orders_foods`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `oid` int(0) NULL DEFAULT NULL COMMENT '订单id',
  `fid` int(0) NULL DEFAULT NULL COMMENT '餐品id',
  `count` int(0) NULL DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oid`(`oid`) USING BTREE,
  INDEX `fid`(`fid`) USING BTREE,
  CONSTRAINT `orders_foods_ibfk_1` FOREIGN KEY (`oid`) REFERENCES `orders` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `orders_foods_ibfk_2` FOREIGN KEY (`fid`) REFERENCES `foods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders_foods
-- ----------------------------
INSERT INTO `orders_foods` VALUES (1, 1, 4, 2);
INSERT INTO `orders_foods` VALUES (2, 2, 4, 7);
INSERT INTO `orders_foods` VALUES (3, 2, 5, 3);

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
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'root', '超级管理员', NULL, '2021-09-29 12:05:16', 25);
INSERT INTO `role` VALUES (2, 'admin', '管理员', NULL, '2021-09-28 09:58:29', 8);
INSERT INTO `role` VALUES (3, 'user', '用户', NULL, '2021-09-27 17:55:19', 20);
INSERT INTO `role` VALUES (4, 'tourist', '游客', NULL, '2021-09-21 23:09:24', 9);
INSERT INTO `role` VALUES (8, 'a', 'a', '2021-08-29 19:10:27', '2021-09-27 17:24:24', 17);

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
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of statis
-- ----------------------------
INSERT INTO `statis` VALUES (12, 10, 15, NULL, 6, '2021-09-15 18:03:30');
INSERT INTO `statis` VALUES (13, 2, 15, NULL, 6, '2021-09-16 16:00:00');
INSERT INTO `statis` VALUES (14, 5, 15, NULL, 6, '2021-09-17 18:00:00');
INSERT INTO `statis` VALUES (15, 4, 15, NULL, 6, '2021-09-18 00:00:00');
INSERT INTO `statis` VALUES (16, 20, 15, NULL, 6, '2021-09-19 13:13:01');
INSERT INTO `statis` VALUES (17, 2, 15, NULL, 6, '2021-09-20 00:00:00');
INSERT INTO `statis` VALUES (18, 3, 18, NULL, 7, '2021-09-21 00:00:00');
INSERT INTO `statis` VALUES (19, 1, 18, NULL, 7, '2021-09-22 13:00:00');
INSERT INTO `statis` VALUES (20, 1, 18, NULL, 7, '2021-09-23 09:00:00');
INSERT INTO `statis` VALUES (21, 1, 18, NULL, 7, '2021-09-24 00:00:00');
INSERT INTO `statis` VALUES (22, 2, 18, NULL, 7, '2021-09-25 00:00:00');
INSERT INTO `statis` VALUES (23, 1, 18, NULL, 7, '2021-09-26 00:00:00');
INSERT INTO `statis` VALUES (24, 2, 18, NULL, 7, '2021-09-27 00:00:00');
INSERT INTO `statis` VALUES (25, 2, 18, NULL, 7, '2021-09-28 10:00:00');
INSERT INTO `statis` VALUES (26, 2, 18, NULL, 7, '2021-09-29 00:00:00');

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
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Redundant;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'user', '木灵鱼儿', '$2a$10$UfzfgbVxCAXoiyaCw7IXiuHiFqMMVbhbb3ox6nkxbAJLGTWjJ7Ciq', 'd16485d9-1f65-4f28-ae94-c98304705617', NULL, '15885326305', 'user@qq.com', 1, '2021-07-29 02:14:10', '2021-09-28 23:02:31', 8);
INSERT INTO `user` VALUES (2, 'admin', '初之音', '$2a$10$vnvYyOdeQr9EUAc..Zjh4ed73t3JQf74tFgwg/XpQYTQHL3cfEtn2', 'ee6ad42c-9137-4f24-982b-ac965915835f', NULL, '113', 'root', 1, '2021-07-29 13:11:51', '2021-09-22 12:49:12', 13);
INSERT INTO `user` VALUES (3, 'root', '保罗的小宇宙', '$2a$10$eFWwgadiCeSOQnSH3FaJT.EJhCE77x8yIQk3/JlgQAmX39qejXBrm', 'c64925f9-1e14-449c-a05c-848900f28876', NULL, '15885326300', 'root@qq.com', 1, '2021-07-29 13:12:04', '2021-09-29 12:04:25', 5);
INSERT INTO `user` VALUES (4, 'jack', '梦回少年', '$2a$10$FSJNe2Ezpyu6piw/VnfMru1S.DlCifpwwdzsklDrwEDEHzrKD0Z0i', NULL, NULL, '12121', NULL, 1, '2021-07-29 13:12:13', '2021-09-27 16:53:06', 4);
INSERT INTO `user` VALUES (5, 'july', '夏和帆', '$2a$10$eOmN/XhXFxok4L0z06EWD.M/C2KdgUHaz5PsjCcCpP/l1NXHI73E.', NULL, NULL, '324', NULL, 0, '2021-07-29 23:44:20', '2021-09-27 16:52:53', 9);
INSERT INTO `user` VALUES (6, 'hello', '樱花庄的白猫', '$2a$10$p0HMOn4c9W4VHESI1kbmp.MySrgM84bkw/actZ.4SlI83mQjDkccG', NULL, NULL, NULL, NULL, 0, '2021-07-30 00:33:03', '2021-09-21 02:13:28', 2);
INSERT INTO `user` VALUES (7, 'book', '浮云', '$2a$10$m9t79txLw2QtMwH3.pVyWu7zBHcWDeVFYAMoafr7fKXnRjowW6jga', NULL, NULL, NULL, NULL, 0, '2021-08-05 22:37:00', '2021-09-21 02:13:32', 2);
INSERT INTO `user` VALUES (12, 'ac', 'ac', '$2a$10$hecfHb6ZvoLZFkUQZoo9E.8EArgrXbMkyy8sxIeY2wi8ktUvYr.wO', NULL, NULL, '1', '1', 1, '2021-08-28 10:46:42', '2021-09-21 02:13:36', 3);
INSERT INTO `user` VALUES (13, 'bc', 'bc', '$2a$10$oBb4DQfqGHX81KTaEWnRhuFVOHkH6ThaB5aaIgAlMQpZKdOHy2vw2', NULL, NULL, '', '', 0, '2021-08-28 10:47:21', '2021-09-21 14:06:59', 2);
INSERT INTO `user` VALUES (14, 'c1', 'c1', '$2a$10$hAs7pOOzT9q5328hU9d/iOP4SnfV/.cNZ.LpSDwVqpA.TB1PaBsrK', NULL, NULL, 'ac', 'abc', 1, '2021-08-28 10:58:37', '2021-09-21 02:08:41', 6);
INSERT INTO `user` VALUES (15, 'd', 'd', '$2a$10$tWhfA0odxWMs.0QGeAW19uWlEyFen.1ksx0dTuKBIs5mxER9478im', NULL, NULL, '', '', 1, '2021-08-28 10:59:23', '2021-09-21 21:02:17', 4);
INSERT INTO `user` VALUES (16, 'f', 'f', '$2a$10$U0X79bHdbZUmbJ9QCroQQOSL876I1ccERaeFgqqsAPVqsiYg0/Lv.', NULL, NULL, '', '', 0, '2021-08-28 11:00:31', '2021-08-28 11:00:31', 1);
INSERT INTO `user` VALUES (17, 'e', 'e', '$2a$10$2XCcvs9j.tzsh65Yl.7N1uPKjAP0NMC7PB0aCevRjhkXjBvC4ITbi', NULL, NULL, '', '', 1, '2021-08-28 11:28:45', '2021-09-21 02:09:07', 2);
INSERT INTO `user` VALUES (18, 'j', 'j', '$2a$10$v/Ve1UhT73bjV9.RPHeoKuJ.umC5Jhpv.ECWtT76vzC.HW6UW2pnW', NULL, NULL, '', '', 0, '2021-08-28 11:29:25', '2021-09-21 21:02:23', 2);
INSERT INTO `user` VALUES (27, 'h', 'a', '$2a$10$IO2RjlY17.jzYYtgQUUkIeVDD3YOBsgr2G0Is2WSRLj/3AGjxwBIa', NULL, NULL, '1', '1', 1, '2021-09-02 22:45:12', '2021-09-21 22:50:47', 6);
INSERT INTO `user` VALUES (31, 'adc', 'adc', '$2a$10$XmQaxZG6zOUGriUWDpQ9nObeuy7bL/z3C4HYLiD4pCZBuNi5ALl4G', NULL, NULL, '1', '1', 1, '2021-09-21 18:08:11', '2021-09-25 12:41:50', 3);
INSERT INTO `user` VALUES (33, 'bbc', 'bbc', '$2a$10$PoNR1cjSAk4K9HTT5mPTfeavNl.QB58xnByrKXeOxSBeTdWDJac1G', NULL, NULL, '22', '22', 1, '2021-09-21 18:10:38', '2021-09-21 18:13:35', 2);
INSERT INTO `user` VALUES (34, 'aaa', 'aaa', '$2a$10$RgZQX9ZzDd.EZXJAlGNcGupW/9x16XmfHDUdLABFr1M5D/ztgEdZO', NULL, NULL, '', '', 1, '2021-09-21 22:36:22', '2021-09-21 22:37:17', 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 127 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (29, 16, 3);
INSERT INTO `user_role` VALUES (81, 14, 2);
INSERT INTO `user_role` VALUES (83, 17, 3);
INSERT INTO `user_role` VALUES (86, 6, 3);
INSERT INTO `user_role` VALUES (87, 7, 3);
INSERT INTO `user_role` VALUES (88, 12, 4);
INSERT INTO `user_role` VALUES (89, 12, 3);
INSERT INTO `user_role` VALUES (91, 2, 2);
INSERT INTO `user_role` VALUES (92, 2, 3);
INSERT INTO `user_role` VALUES (95, 13, 3);
INSERT INTO `user_role` VALUES (96, 13, 1);
INSERT INTO `user_role` VALUES (103, 1, 3);
INSERT INTO `user_role` VALUES (109, 33, 3);
INSERT INTO `user_role` VALUES (113, 15, 2);
INSERT INTO `user_role` VALUES (114, 15, 3);
INSERT INTO `user_role` VALUES (115, 18, 1);
INSERT INTO `user_role` VALUES (120, 34, 3);
INSERT INTO `user_role` VALUES (121, 27, 8);
INSERT INTO `user_role` VALUES (123, 3, 1);
INSERT INTO `user_role` VALUES (124, 31, 3);
INSERT INTO `user_role` VALUES (125, 5, 2);
INSERT INTO `user_role` VALUES (126, 4, 3);

SET FOREIGN_KEY_CHECKS = 1;
