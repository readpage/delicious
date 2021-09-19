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

 Date: 20/09/2021 00:28:30
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
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of foods
-- ----------------------------
INSERT INTO `foods` VALUES (1, '香酥鱼条', '/api/upload/root/20210909163116442224666411321699.jpg', 10.30, NULL, NULL, '2021-09-19 17:08:01', 7);
INSERT INTO `foods` VALUES (2, '时蔬烧五花肉', '/api/upload/root/2021090916311585919298197577.jpg', 22.30, NULL, NULL, '2021-09-19 17:07:44', 10);
INSERT INTO `foods` VALUES (3, '糯米粉红薯丸子', '/api/upload/root/2021091116313690648841958079.jpg', 15.44, NULL, NULL, '2021-09-17 17:16:19', 3);
INSERT INTO `foods` VALUES (4, '青瓜胡萝卜炒牛肉', '/api/upload/root/2021091116313517169521958079.jpg', 16.33, NULL, NULL, '2021-09-17 17:16:29', 2);
INSERT INTO `foods` VALUES (5, '蒜香豆腐', '/api/upload/root/2021091116313687379571958079.jpg', 22.40, NULL, NULL, '2021-09-17 17:16:43', 2);
INSERT INTO `foods` VALUES (6, '韭菜炒豆腐', '/api/upload/root/2021091116313683606001958079.jpg', 19.33, NULL, NULL, '2021-09-17 17:16:54', 2);

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
) ENGINE = InnoDB AUTO_INCREMENT = 6552 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_info
-- ----------------------------
INSERT INTO `log_info` VALUES (6275, 'root', 'DELETE', 'com.example.controller.LogInfoController.clearAll', '/log-info/clearAll', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '删除成功!😉', NULL, '2021-09-19 17:06:04');
INSERT INTO `log_info` VALUES (6276, 'root', 'GET', 'com.example.controller.LogInfoController.page', '/log-info/page/68/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:06:05');
INSERT INTO `log_info` VALUES (6277, 'root', 'GET', 'com.example.controller.LogInfoController.page', '/log-info/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:06:06');
INSERT INTO `log_info` VALUES (6278, 'root', 'POST', 'com.example.controller.FileController.upload', '/file/upload', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '上传成功!', NULL, '2021-09-19 17:07:42');
INSERT INTO `log_info` VALUES (6279, 'root', 'PUT', 'com.example.controller.FoodsController.update', '/foods/update', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '更新成功!😏', NULL, '2021-09-19 17:07:44');
INSERT INTO `log_info` VALUES (6280, 'root', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:07:46');
INSERT INTO `log_info` VALUES (6281, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:07:55');
INSERT INTO `log_info` VALUES (6282, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:07:55');
INSERT INTO `log_info` VALUES (6283, 'root', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:07:56');
INSERT INTO `log_info` VALUES (6284, 'root', 'PUT', 'com.example.controller.FoodsController.update', '/foods/update', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '更新成功!😏', NULL, '2021-09-19 17:08:01');
INSERT INTO `log_info` VALUES (6285, 'root', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:08:02');
INSERT INTO `log_info` VALUES (6286, 'root', 'GET', 'com.example.controller.RoleController.selectAll', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:08:07');
INSERT INTO `log_info` VALUES (6287, 'root', 'GET', 'com.example.controller.UserController.selectPage', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:08:08');
INSERT INTO `log_info` VALUES (6288, 'root', 'GET', 'com.example.controller.UserController.selectPage', '/user/page/3/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:08:11');
INSERT INTO `log_info` VALUES (6289, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:08:35');
INSERT INTO `log_info` VALUES (6290, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:08:35');
INSERT INTO `log_info` VALUES (6291, 'user', 'GET', 'com.example.controller.FoodsController.getById', '/foods/getById/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:08:36');
INSERT INTO `log_info` VALUES (6292, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:08:44');
INSERT INTO `log_info` VALUES (6293, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:08:44');
INSERT INTO `log_info` VALUES (6294, 'user', 'GET', 'com.example.controller.FoodsController.getById', '/foods/getById/1', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:08:45');
INSERT INTO `log_info` VALUES (6295, 'user', 'GET', 'com.example.controller.FoodsController.getById', '/foods/getById/1', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:09:07');
INSERT INTO `log_info` VALUES (6296, 'user', 'GET', 'com.example.controller.FoodsController.getById', '/foods/getById/1', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:09:10');
INSERT INTO `log_info` VALUES (6297, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:09:29');
INSERT INTO `log_info` VALUES (6298, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:09:29');
INSERT INTO `log_info` VALUES (6299, 'user', 'GET', 'com.example.controller.FoodsController.getById', '/foods/getById/6', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:09:29');
INSERT INTO `log_info` VALUES (6300, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:09:44');
INSERT INTO `log_info` VALUES (6301, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:09:44');
INSERT INTO `log_info` VALUES (6302, 'user', 'GET', 'com.example.controller.FoodsController.getById', '/foods/getById/4', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:09:44');
INSERT INTO `log_info` VALUES (6303, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:09:54');
INSERT INTO `log_info` VALUES (6304, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:09:54');
INSERT INTO `log_info` VALUES (6305, 'user', 'GET', 'com.example.controller.FoodsController.getById', '/foods/getById/4', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:09:54');
INSERT INTO `log_info` VALUES (6306, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:10:03');
INSERT INTO `log_info` VALUES (6307, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:10:03');
INSERT INTO `log_info` VALUES (6308, 'user', 'GET', 'com.example.controller.FoodsController.getById', '/foods/getById/3', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:10:03');
INSERT INTO `log_info` VALUES (6309, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:10:20');
INSERT INTO `log_info` VALUES (6310, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:10:20');
INSERT INTO `log_info` VALUES (6311, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:10:24');
INSERT INTO `log_info` VALUES (6312, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:10:25');
INSERT INTO `log_info` VALUES (6313, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:10:31');
INSERT INTO `log_info` VALUES (6314, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:10:31');
INSERT INTO `log_info` VALUES (6315, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:10:35');
INSERT INTO `log_info` VALUES (6316, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:10:35');
INSERT INTO `log_info` VALUES (6317, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:10:40');
INSERT INTO `log_info` VALUES (6318, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:10:41');
INSERT INTO `log_info` VALUES (6319, 'user', 'GET', 'com.example.controller.FoodsController.getById', '/foods/getById/6', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:10:41');
INSERT INTO `log_info` VALUES (6320, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:10:47');
INSERT INTO `log_info` VALUES (6321, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:10:47');
INSERT INTO `log_info` VALUES (6322, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:10:53');
INSERT INTO `log_info` VALUES (6323, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:10:53');
INSERT INTO `log_info` VALUES (6324, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:10:57');
INSERT INTO `log_info` VALUES (6325, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:10:57');
INSERT INTO `log_info` VALUES (6326, 'user', 'GET', 'com.example.controller.FoodsController.getById', '/foods/getById/6', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:10:57');
INSERT INTO `log_info` VALUES (6327, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:11:01');
INSERT INTO `log_info` VALUES (6328, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:11:01');
INSERT INTO `log_info` VALUES (6329, 'user', 'GET', 'com.example.controller.FoodsController.getById', '/foods/getById/5', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:11:01');
INSERT INTO `log_info` VALUES (6330, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:11:05');
INSERT INTO `log_info` VALUES (6331, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:11:05');
INSERT INTO `log_info` VALUES (6332, 'user', 'GET', 'com.example.controller.FoodsController.getById', '/foods/getById/3', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:11:06');
INSERT INTO `log_info` VALUES (6333, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:11:10');
INSERT INTO `log_info` VALUES (6334, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:11:11');
INSERT INTO `log_info` VALUES (6335, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:11:13');
INSERT INTO `log_info` VALUES (6336, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:11:13');
INSERT INTO `log_info` VALUES (6337, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:11:19');
INSERT INTO `log_info` VALUES (6338, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:11:19');
INSERT INTO `log_info` VALUES (6339, 'user', 'GET', 'com.example.controller.FoodsController.getById', '/foods/getById/1', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:11:20');
INSERT INTO `log_info` VALUES (6340, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:11:24');
INSERT INTO `log_info` VALUES (6341, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:11:24');
INSERT INTO `log_info` VALUES (6342, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:12:03');
INSERT INTO `log_info` VALUES (6343, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:12:03');
INSERT INTO `log_info` VALUES (6344, 'anonymousUser', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:12:04');
INSERT INTO `log_info` VALUES (6345, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:12:10');
INSERT INTO `log_info` VALUES (6346, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:12:10');
INSERT INTO `log_info` VALUES (6347, 'anonymousUser', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:12:15');
INSERT INTO `log_info` VALUES (6348, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:12:19');
INSERT INTO `log_info` VALUES (6349, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:12:19');
INSERT INTO `log_info` VALUES (6350, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:12:20');
INSERT INTO `log_info` VALUES (6351, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:12:20');
INSERT INTO `log_info` VALUES (6352, 'user', 'GET', 'com.example.controller.FoodsController.getById', '/foods/getById/1', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:12:22');
INSERT INTO `log_info` VALUES (6353, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:13:30');
INSERT INTO `log_info` VALUES (6354, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:13:31');
INSERT INTO `log_info` VALUES (6355, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:13:40');
INSERT INTO `log_info` VALUES (6356, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:13:40');
INSERT INTO `log_info` VALUES (6357, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:14:33');
INSERT INTO `log_info` VALUES (6358, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:14:33');
INSERT INTO `log_info` VALUES (6359, 'user', 'GET', 'com.example.controller.FoodsController.getById', '/foods/getById/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:14:34');
INSERT INTO `log_info` VALUES (6360, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:14:43');
INSERT INTO `log_info` VALUES (6361, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:14:43');
INSERT INTO `log_info` VALUES (6362, 'user', 'GET', 'com.example.controller.FoodsController.getById', '/foods/getById/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:14:43');
INSERT INTO `log_info` VALUES (6363, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:15:08');
INSERT INTO `log_info` VALUES (6364, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:15:08');
INSERT INTO `log_info` VALUES (6365, 'user', 'GET', 'com.example.controller.FoodsController.getById', '/foods/getById/4', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:15:09');
INSERT INTO `log_info` VALUES (6366, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:15:15');
INSERT INTO `log_info` VALUES (6367, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:15:15');
INSERT INTO `log_info` VALUES (6368, 'user', 'GET', 'com.example.controller.FoodsController.getById', '/foods/getById/4', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:15:16');
INSERT INTO `log_info` VALUES (6369, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:15:31');
INSERT INTO `log_info` VALUES (6370, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:15:31');
INSERT INTO `log_info` VALUES (6371, 'root', 'GET', 'com.example.controller.UserController.selectPage', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:15:38');
INSERT INTO `log_info` VALUES (6372, 'root', 'GET', 'com.example.controller.UserController.selectPage', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:15:38');
INSERT INTO `log_info` VALUES (6373, 'root', 'GET', 'com.example.controller.MenuController.selectAll', '/menu/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:15:40');
INSERT INTO `log_info` VALUES (6374, 'root', 'GET', 'com.example.controller.MenuController.selectAll', '/menu/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:15:41');
INSERT INTO `log_info` VALUES (6375, 'root', 'GET', 'com.example.controller.MenuController.selectAll', '/menu/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:15:43');
INSERT INTO `log_info` VALUES (6376, 'root', 'GET', 'com.example.controller.LogInfoController.page', '/log-info/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:15:48');
INSERT INTO `log_info` VALUES (6377, 'root', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:15:54');
INSERT INTO `log_info` VALUES (6378, 'root', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:16:07');
INSERT INTO `log_info` VALUES (6379, 'root', 'GET', 'com.example.controller.RoleController.selectById', '/role/selectByRid/1', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:16:28');
INSERT INTO `log_info` VALUES (6380, 'root', 'GET', 'com.example.controller.RoleController.selectPage', '/role/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:16:32');
INSERT INTO `log_info` VALUES (6381, 'root', 'GET', 'com.example.controller.RoleController.selectPage', '/role/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:16:32');
INSERT INTO `log_info` VALUES (6382, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:16:58');
INSERT INTO `log_info` VALUES (6383, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:16:58');
INSERT INTO `log_info` VALUES (6384, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:18:04');
INSERT INTO `log_info` VALUES (6385, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:18:05');
INSERT INTO `log_info` VALUES (6386, 'root', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:18:07');
INSERT INTO `log_info` VALUES (6387, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:18:11');
INSERT INTO `log_info` VALUES (6388, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:18:11');
INSERT INTO `log_info` VALUES (6389, 'root', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:18:17');
INSERT INTO `log_info` VALUES (6390, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:18:19');
INSERT INTO `log_info` VALUES (6391, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:18:19');
INSERT INTO `log_info` VALUES (6392, 'root', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:18:20');
INSERT INTO `log_info` VALUES (6393, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:18:27');
INSERT INTO `log_info` VALUES (6394, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:18:27');
INSERT INTO `log_info` VALUES (6395, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:18:31');
INSERT INTO `log_info` VALUES (6396, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:18:31');
INSERT INTO `log_info` VALUES (6397, 'user', 'GET', 'com.example.controller.FoodsController.getById', '/foods/getById/4', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:18:31');
INSERT INTO `log_info` VALUES (6398, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:18:38');
INSERT INTO `log_info` VALUES (6399, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:18:38');
INSERT INTO `log_info` VALUES (6400, 'user', 'GET', 'com.example.controller.FoodsController.getById', '/foods/getById/5', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:18:38');
INSERT INTO `log_info` VALUES (6401, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:18:42');
INSERT INTO `log_info` VALUES (6402, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:18:42');
INSERT INTO `log_info` VALUES (6403, 'user', 'GET', 'com.example.controller.FoodsController.getById', '/foods/getById/4', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:18:43');
INSERT INTO `log_info` VALUES (6404, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:18:52');
INSERT INTO `log_info` VALUES (6405, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:18:52');
INSERT INTO `log_info` VALUES (6406, 'user', 'GET', 'com.example.controller.FoodsController.getById', '/foods/getById/6', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:18:52');
INSERT INTO `log_info` VALUES (6407, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:18:57');
INSERT INTO `log_info` VALUES (6408, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:18:57');
INSERT INTO `log_info` VALUES (6409, 'user', 'GET', 'com.example.controller.FoodsController.getById', '/foods/getById/4', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:18:58');
INSERT INTO `log_info` VALUES (6410, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:19:02');
INSERT INTO `log_info` VALUES (6411, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:19:02');
INSERT INTO `log_info` VALUES (6412, 'user', 'GET', 'com.example.controller.FoodsController.getById', '/foods/getById/6', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:19:02');
INSERT INTO `log_info` VALUES (6413, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:19:06');
INSERT INTO `log_info` VALUES (6414, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:19:06');
INSERT INTO `log_info` VALUES (6415, 'user', 'GET', 'com.example.controller.FoodsController.getById', '/foods/getById/5', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:19:06');
INSERT INTO `log_info` VALUES (6416, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:19:14');
INSERT INTO `log_info` VALUES (6417, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:19:14');
INSERT INTO `log_info` VALUES (6418, 'user', 'GET', 'com.example.controller.FoodsController.getById', '/foods/getById/3', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:19:14');
INSERT INTO `log_info` VALUES (6419, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:19:30');
INSERT INTO `log_info` VALUES (6420, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:19:30');
INSERT INTO `log_info` VALUES (6421, 'user', 'GET', 'com.example.controller.FoodsController.getById', '/foods/getById/3', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:19:30');
INSERT INTO `log_info` VALUES (6422, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:19:34');
INSERT INTO `log_info` VALUES (6423, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:19:34');
INSERT INTO `log_info` VALUES (6424, 'user', 'GET', 'com.example.controller.FoodsController.getById', '/foods/getById/5', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:19:34');
INSERT INTO `log_info` VALUES (6425, 'anonymousUser', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome Mobile', 'Android 1.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:20:20');
INSERT INTO `log_info` VALUES (6426, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:21:01');
INSERT INTO `log_info` VALUES (6427, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:21:01');
INSERT INTO `log_info` VALUES (6428, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:22:20');
INSERT INTO `log_info` VALUES (6429, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:22:21');
INSERT INTO `log_info` VALUES (6430, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome Mobile', 'Android 6.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:23:16');
INSERT INTO `log_info` VALUES (6431, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome Mobile', 'Android 6.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:23:16');
INSERT INTO `log_info` VALUES (6432, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome Mobile', 'Android 6.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:23:36');
INSERT INTO `log_info` VALUES (6433, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome Mobile', 'Android 6.x', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:23:36');
INSERT INTO `log_info` VALUES (6434, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Mobile Safari', 'Mac OS X (iPhone)', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:24:39');
INSERT INTO `log_info` VALUES (6435, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Mobile Safari', 'Mac OS X (iPhone)', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:24:39');
INSERT INTO `log_info` VALUES (6436, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:24:49');
INSERT INTO `log_info` VALUES (6437, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:24:49');
INSERT INTO `log_info` VALUES (6438, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:24:56');
INSERT INTO `log_info` VALUES (6439, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:24:56');
INSERT INTO `log_info` VALUES (6440, 'user', 'GET', 'com.example.controller.FoodsController.getById', '/foods/getById/4', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:24:58');
INSERT INTO `log_info` VALUES (6441, 'user', 'GET', 'com.example.controller.FoodsController.getById', '/foods/getById/4', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:25:04');
INSERT INTO `log_info` VALUES (6442, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:25:09');
INSERT INTO `log_info` VALUES (6443, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:25:09');
INSERT INTO `log_info` VALUES (6444, 'user', 'GET', 'com.example.controller.FoodsController.getById', '/foods/getById/1', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:25:09');
INSERT INTO `log_info` VALUES (6445, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:25:30');
INSERT INTO `log_info` VALUES (6446, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:25:30');
INSERT INTO `log_info` VALUES (6447, 'user', 'GET', 'com.example.controller.FoodsController.getById', '/foods/getById/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:25:31');
INSERT INTO `log_info` VALUES (6448, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:25:40');
INSERT INTO `log_info` VALUES (6449, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:25:40');
INSERT INTO `log_info` VALUES (6450, 'user', 'GET', 'com.example.controller.FoodsController.getById', '/foods/getById/1', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:25:41');
INSERT INTO `log_info` VALUES (6451, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:26:32');
INSERT INTO `log_info` VALUES (6452, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:26:33');
INSERT INTO `log_info` VALUES (6453, 'user', 'GET', 'com.example.controller.FoodsController.getById', '/foods/getById/3', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:26:36');
INSERT INTO `log_info` VALUES (6454, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:40:28');
INSERT INTO `log_info` VALUES (6455, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:40:30');
INSERT INTO `log_info` VALUES (6456, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:40:31');
INSERT INTO `log_info` VALUES (6457, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:40:32');
INSERT INTO `log_info` VALUES (6458, 'user', 'GET', 'com.example.controller.FoodsController.getById', '/foods/getById/3', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:40:33');
INSERT INTO `log_info` VALUES (6459, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:40:34');
INSERT INTO `log_info` VALUES (6460, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:42:32');
INSERT INTO `log_info` VALUES (6461, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:42:33');
INSERT INTO `log_info` VALUES (6462, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:42:38');
INSERT INTO `log_info` VALUES (6463, 'user', 'GET', 'com.example.controller.FoodsController.getById', '/foods/getById/1', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:42:39');
INSERT INTO `log_info` VALUES (6464, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Mobile Safari', 'Mac OS X (iPhone)', 'Mobile', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:42:49');
INSERT INTO `log_info` VALUES (6465, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:42:57');
INSERT INTO `log_info` VALUES (6466, 'user', 'GET', 'com.example.controller.FoodsController.getById', '/foods/getById/1', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:42:57');
INSERT INTO `log_info` VALUES (6467, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:42:59');
INSERT INTO `log_info` VALUES (6468, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:43:03');
INSERT INTO `log_info` VALUES (6469, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:43:06');
INSERT INTO `log_info` VALUES (6470, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:43:27');
INSERT INTO `log_info` VALUES (6471, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:43:37');
INSERT INTO `log_info` VALUES (6472, 'user', 'GET', 'com.example.controller.FoodsController.getById', '/foods/getById/1', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:43:37');
INSERT INTO `log_info` VALUES (6473, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:43:40');
INSERT INTO `log_info` VALUES (6474, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:43:43');
INSERT INTO `log_info` VALUES (6475, 'user', 'GET', 'com.example.controller.FoodsController.getById', '/foods/getById/6', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:43:43');
INSERT INTO `log_info` VALUES (6476, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:43:47');
INSERT INTO `log_info` VALUES (6477, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:43:51');
INSERT INTO `log_info` VALUES (6478, 'user', 'GET', 'com.example.controller.FoodsController.getById', '/foods/getById/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:43:51');
INSERT INTO `log_info` VALUES (6479, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:43:58');
INSERT INTO `log_info` VALUES (6480, 'user', 'GET', 'com.example.controller.FoodsController.getById', '/foods/getById/1', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:43:58');
INSERT INTO `log_info` VALUES (6481, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:44:02');
INSERT INTO `log_info` VALUES (6482, 'user', 'GET', 'com.example.controller.FoodsController.getById', '/foods/getById/2', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:44:02');
INSERT INTO `log_info` VALUES (6483, 'user', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/10', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:44:05');
INSERT INTO `log_info` VALUES (6484, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:44:18');
INSERT INTO `log_info` VALUES (6485, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:44:25');
INSERT INTO `log_info` VALUES (6486, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:49:47');
INSERT INTO `log_info` VALUES (6487, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:49:47');
INSERT INTO `log_info` VALUES (6488, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:49:47');
INSERT INTO `log_info` VALUES (6489, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:49:47');
INSERT INTO `log_info` VALUES (6490, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:50:00');
INSERT INTO `log_info` VALUES (6491, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:50:00');
INSERT INTO `log_info` VALUES (6492, 'user', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:50:00');
INSERT INTO `log_info` VALUES (6493, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:50:01');
INSERT INTO `log_info` VALUES (6494, 'user', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:51:01');
INSERT INTO `log_info` VALUES (6495, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:51:01');
INSERT INTO `log_info` VALUES (6496, 'user', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:51:09');
INSERT INTO `log_info` VALUES (6497, 'user', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:51:09');
INSERT INTO `log_info` VALUES (6498, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:53:18');
INSERT INTO `log_info` VALUES (6499, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:53:18');
INSERT INTO `log_info` VALUES (6500, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:53:43');
INSERT INTO `log_info` VALUES (6501, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:53:43');
INSERT INTO `log_info` VALUES (6502, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:55:13');
INSERT INTO `log_info` VALUES (6503, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:55:13');
INSERT INTO `log_info` VALUES (6504, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:55:29');
INSERT INTO `log_info` VALUES (6505, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 17:55:29');
INSERT INTO `log_info` VALUES (6506, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 18:03:18');
INSERT INTO `log_info` VALUES (6507, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 18:03:18');
INSERT INTO `log_info` VALUES (6508, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 18:04:06');
INSERT INTO `log_info` VALUES (6509, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 18:04:06');
INSERT INTO `log_info` VALUES (6510, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 18:04:59');
INSERT INTO `log_info` VALUES (6511, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 18:04:59');
INSERT INTO `log_info` VALUES (6512, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 18:07:16');
INSERT INTO `log_info` VALUES (6513, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 18:07:16');
INSERT INTO `log_info` VALUES (6514, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 18:07:32');
INSERT INTO `log_info` VALUES (6515, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 18:07:33');
INSERT INTO `log_info` VALUES (6516, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 18:08:22');
INSERT INTO `log_info` VALUES (6517, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 18:08:22');
INSERT INTO `log_info` VALUES (6518, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 18:09:30');
INSERT INTO `log_info` VALUES (6519, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 18:09:30');
INSERT INTO `log_info` VALUES (6520, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 18:09:44');
INSERT INTO `log_info` VALUES (6521, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 18:09:44');
INSERT INTO `log_info` VALUES (6522, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 18:11:03');
INSERT INTO `log_info` VALUES (6523, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 18:11:03');
INSERT INTO `log_info` VALUES (6524, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 18:11:43');
INSERT INTO `log_info` VALUES (6525, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 18:11:43');
INSERT INTO `log_info` VALUES (6526, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 18:13:22');
INSERT INTO `log_info` VALUES (6527, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 18:13:22');
INSERT INTO `log_info` VALUES (6528, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 18:13:41');
INSERT INTO `log_info` VALUES (6529, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 18:13:43');
INSERT INTO `log_info` VALUES (6530, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 18:14:51');
INSERT INTO `log_info` VALUES (6531, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 18:14:51');
INSERT INTO `log_info` VALUES (6532, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 18:15:23');
INSERT INTO `log_info` VALUES (6533, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 18:15:23');
INSERT INTO `log_info` VALUES (6534, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 18:16:17');
INSERT INTO `log_info` VALUES (6535, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 18:16:18');
INSERT INTO `log_info` VALUES (6536, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 18:17:29');
INSERT INTO `log_info` VALUES (6537, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 18:17:29');
INSERT INTO `log_info` VALUES (6538, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 18:17:40');
INSERT INTO `log_info` VALUES (6539, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 18:17:40');
INSERT INTO `log_info` VALUES (6540, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 18:18:21');
INSERT INTO `log_info` VALUES (6541, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 18:18:22');
INSERT INTO `log_info` VALUES (6542, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 18:20:17');
INSERT INTO `log_info` VALUES (6543, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 18:20:17');
INSERT INTO `log_info` VALUES (6544, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 18:20:49');
INSERT INTO `log_info` VALUES (6545, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 18:20:49');
INSERT INTO `log_info` VALUES (6546, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 18:22:44');
INSERT INTO `log_info` VALUES (6547, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 18:22:44');
INSERT INTO `log_info` VALUES (6548, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 18:23:07');
INSERT INTO `log_info` VALUES (6549, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 18:23:07');
INSERT INTO `log_info` VALUES (6550, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 18:23:25');
INSERT INTO `log_info` VALUES (6551, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 18:23:25');
INSERT INTO `log_info` VALUES (6552, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 21:42:21');
INSERT INTO `log_info` VALUES (6553, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 21:42:21');
INSERT INTO `log_info` VALUES (6554, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 21:42:58');
INSERT INTO `log_info` VALUES (6555, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 21:42:58');
INSERT INTO `log_info` VALUES (6556, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 21:43:39');
INSERT INTO `log_info` VALUES (6557, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 21:43:45');
INSERT INTO `log_info` VALUES (6558, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 21:44:25');
INSERT INTO `log_info` VALUES (6559, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 21:44:25');
INSERT INTO `log_info` VALUES (6560, 'anonymousUser', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '0:0:0:0:0:0:0:1', NULL, '查询成功!😍', NULL, '2021-09-19 21:48:24');
INSERT INTO `log_info` VALUES (6561, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 21:48:42');
INSERT INTO `log_info` VALUES (6562, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 21:48:42');
INSERT INTO `log_info` VALUES (6563, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 21:48:54');
INSERT INTO `log_info` VALUES (6564, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 21:48:54');
INSERT INTO `log_info` VALUES (6565, 'root', 'GET', 'com.example.controller.MenuController.selectAll', '/menu/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 21:49:27');
INSERT INTO `log_info` VALUES (6566, 'root', 'POST', 'com.example.controller.MenuController.save', '/menu/save', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '添加成功!😎', NULL, '2021-09-19 21:50:44');
INSERT INTO `log_info` VALUES (6567, 'root', 'GET', 'com.example.controller.MenuController.selectAll', '/menu/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 21:50:45');
INSERT INTO `log_info` VALUES (6568, 'root', 'PUT', 'com.example.controller.MenuController.updateById', '/menu/update', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '更新成功!😏', NULL, '2021-09-19 21:51:00');
INSERT INTO `log_info` VALUES (6569, 'root', 'GET', 'com.example.controller.MenuController.selectAll', '/menu/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 21:51:02');
INSERT INTO `log_info` VALUES (6570, 'root', 'PUT', 'com.example.controller.MenuController.updateById', '/menu/update', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '更新成功!😏', NULL, '2021-09-19 21:51:09');
INSERT INTO `log_info` VALUES (6571, 'root', 'GET', 'com.example.controller.MenuController.selectAll', '/menu/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 21:51:11');
INSERT INTO `log_info` VALUES (6572, 'root', 'POST', 'com.example.controller.MenuController.save', '/menu/save', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '添加成功!😎', NULL, '2021-09-19 21:52:04');
INSERT INTO `log_info` VALUES (6573, 'root', 'GET', 'com.example.controller.MenuController.selectAll', '/menu/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 21:52:05');
INSERT INTO `log_info` VALUES (6574, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 21:52:23');
INSERT INTO `log_info` VALUES (6575, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 21:52:23');
INSERT INTO `log_info` VALUES (6576, 'root', 'GET', 'com.example.controller.MenuController.selectAll', '/menu/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 21:53:40');
INSERT INTO `log_info` VALUES (6577, 'root', 'PUT', 'com.example.controller.MenuController.updateById', '/menu/update', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '更新成功!😏', NULL, '2021-09-19 21:53:56');
INSERT INTO `log_info` VALUES (6578, 'root', 'GET', 'com.example.controller.MenuController.selectAll', '/menu/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 21:53:58');
INSERT INTO `log_info` VALUES (6579, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 21:54:26');
INSERT INTO `log_info` VALUES (6580, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 21:54:26');
INSERT INTO `log_info` VALUES (6581, 'root', 'GET', 'com.example.controller.MenuController.selectAll', '/menu/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 21:54:31');
INSERT INTO `log_info` VALUES (6582, 'root', 'GET', 'com.example.controller.RoleController.selectPage', '/role/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 21:54:51');
INSERT INTO `log_info` VALUES (6583, 'root', 'GET', 'com.example.controller.RoleController.selectPage', '/role/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 21:54:52');
INSERT INTO `log_info` VALUES (6584, 'root', 'GET', 'com.example.controller.RoleController.selectAll', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 21:54:56');
INSERT INTO `log_info` VALUES (6585, 'root', 'GET', 'com.example.controller.RoleController.selectAll', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 21:54:56');
INSERT INTO `log_info` VALUES (6586, 'root', 'GET', 'com.example.controller.RoleController.selectById', '/role/selectByRid/1', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 21:55:05');
INSERT INTO `log_info` VALUES (6587, 'root', 'PUT', 'com.example.controller.RoleController.updateById', '/role/update/24,25,26,2,3,4,5,6,28,33,30,50,54,12,13,16,17,19,18,29,7,8,9,10,21,31,36,58,49,34,71,69,67,68,64,35,70,65,66,47,63,62,72,73', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '更新成功!😏', NULL, '2021-09-19 21:55:11');
INSERT INTO `log_info` VALUES (6588, 'root', 'GET', 'com.example.controller.RoleController.selectPage', '/role/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 21:55:13');
INSERT INTO `log_info` VALUES (6589, 'root', 'GET', 'com.example.controller.RoleController.selectPage', '/role/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 21:55:13');
INSERT INTO `log_info` VALUES (6590, 'root', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 21:57:22');
INSERT INTO `log_info` VALUES (6591, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 21:57:37');
INSERT INTO `log_info` VALUES (6592, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 21:57:37');
INSERT INTO `log_info` VALUES (6593, 'root', 'GET', 'com.example.controller.RoleController.selectAll', '/role/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 21:58:00');
INSERT INTO `log_info` VALUES (6594, 'root', 'GET', 'com.example.controller.UserController.selectPage', '/user/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 21:58:01');
INSERT INTO `log_info` VALUES (6595, 'root', 'GET', 'com.example.controller.MenuController.selectAll', '/menu/list', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 21:58:12');
INSERT INTO `log_info` VALUES (6596, 'root', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 21:59:00');
INSERT INTO `log_info` VALUES (6597, 'root', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/2/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 21:59:20');
INSERT INTO `log_info` VALUES (6598, 'root', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 21:59:23');
INSERT INTO `log_info` VALUES (6599, 'root', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/2/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 21:59:30');
INSERT INTO `log_info` VALUES (6600, 'root', 'GET', 'com.example.controller.FoodsController.selectPage', '/foods/page/1/5', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 21:59:34');
INSERT INTO `log_info` VALUES (6601, 'root', 'GET', 'com.example.controller.StatisController.week', '/statis/week', 'Chrome 9', 'Windows 10', 'Computer', '0:0:0:0:0:0:0:1', NULL, '查询成功!😍', NULL, '2021-09-19 22:00:19');
INSERT INTO `log_info` VALUES (6602, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:02:22');
INSERT INTO `log_info` VALUES (6603, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:02:22');
INSERT INTO `log_info` VALUES (6604, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:02:23');
INSERT INTO `log_info` VALUES (6605, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:02:23');
INSERT INTO `log_info` VALUES (6606, 'root', 'GET', 'com.example.controller.StatisController.week', '/statis/week', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:10:47');
INSERT INTO `log_info` VALUES (6607, 'root', 'GET', 'com.example.controller.StatisController.week', '/statis/week', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:10:47');
INSERT INTO `log_info` VALUES (6608, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:11:16');
INSERT INTO `log_info` VALUES (6609, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:11:16');
INSERT INTO `log_info` VALUES (6610, 'root', 'GET', 'com.example.controller.StatisController.week', '/statis/week', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:11:20');
INSERT INTO `log_info` VALUES (6611, 'root', 'GET', 'com.example.controller.StatisController.week', '/statis/week', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:12:05');
INSERT INTO `log_info` VALUES (6612, 'root', 'GET', 'com.example.controller.StatisController.week', '/statis/week', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:12:14');
INSERT INTO `log_info` VALUES (6613, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:12:16');
INSERT INTO `log_info` VALUES (6614, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:12:16');
INSERT INTO `log_info` VALUES (6615, 'root', 'GET', 'com.example.controller.StatisController.week', '/statis/week', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:12:19');
INSERT INTO `log_info` VALUES (6616, 'root', 'GET', 'com.example.controller.StatisController.week', '/statis/week', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:12:45');
INSERT INTO `log_info` VALUES (6617, 'root', 'GET', 'com.example.controller.StatisController.week', '/statis/week', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:12:45');
INSERT INTO `log_info` VALUES (6618, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:12:51');
INSERT INTO `log_info` VALUES (6619, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:12:51');
INSERT INTO `log_info` VALUES (6620, 'root', 'GET', 'com.example.controller.StatisController.week', '/statis/week', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:12:54');
INSERT INTO `log_info` VALUES (6621, 'root', 'GET', 'com.example.controller.StatisController.week', '/statis/week', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:15:46');
INSERT INTO `log_info` VALUES (6622, 'root', 'GET', 'com.example.controller.StatisController.week', '/statis/week', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:15:47');
INSERT INTO `log_info` VALUES (6623, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:32:53');
INSERT INTO `log_info` VALUES (6624, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:32:53');
INSERT INTO `log_info` VALUES (6625, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:33:32');
INSERT INTO `log_info` VALUES (6626, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:33:32');
INSERT INTO `log_info` VALUES (6627, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:43:26');
INSERT INTO `log_info` VALUES (6628, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:43:26');
INSERT INTO `log_info` VALUES (6629, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:47:10');
INSERT INTO `log_info` VALUES (6630, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:47:10');
INSERT INTO `log_info` VALUES (6631, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:47:11');
INSERT INTO `log_info` VALUES (6632, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:47:12');
INSERT INTO `log_info` VALUES (6633, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:53:47');
INSERT INTO `log_info` VALUES (6634, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:53:48');
INSERT INTO `log_info` VALUES (6635, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:53:54');
INSERT INTO `log_info` VALUES (6636, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:53:54');
INSERT INTO `log_info` VALUES (6637, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:55:06');
INSERT INTO `log_info` VALUES (6638, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:55:06');
INSERT INTO `log_info` VALUES (6639, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:55:47');
INSERT INTO `log_info` VALUES (6640, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:55:47');
INSERT INTO `log_info` VALUES (6641, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:56:24');
INSERT INTO `log_info` VALUES (6642, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:56:24');
INSERT INTO `log_info` VALUES (6643, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:57:11');
INSERT INTO `log_info` VALUES (6644, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:57:11');
INSERT INTO `log_info` VALUES (6645, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:58:12');
INSERT INTO `log_info` VALUES (6646, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:58:12');
INSERT INTO `log_info` VALUES (6647, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:58:41');
INSERT INTO `log_info` VALUES (6648, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:58:41');
INSERT INTO `log_info` VALUES (6649, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:59:07');
INSERT INTO `log_info` VALUES (6650, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 22:59:07');
INSERT INTO `log_info` VALUES (6651, 'root', 'GET', 'com.example.controller.StatisController.week', '/statis/week', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:01:09');
INSERT INTO `log_info` VALUES (6652, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:04:53');
INSERT INTO `log_info` VALUES (6653, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:04:59');
INSERT INTO `log_info` VALUES (6654, 'root', 'GET', 'com.example.controller.StatisController.week', '/statis/week', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:05:06');
INSERT INTO `log_info` VALUES (6655, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:07:19');
INSERT INTO `log_info` VALUES (6656, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:07:19');
INSERT INTO `log_info` VALUES (6657, 'root', 'GET', 'com.example.controller.StatisController.week', '/statis/week', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:07:26');
INSERT INTO `log_info` VALUES (6658, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:12:37');
INSERT INTO `log_info` VALUES (6659, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:12:37');
INSERT INTO `log_info` VALUES (6660, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:12:38');
INSERT INTO `log_info` VALUES (6661, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:12:38');
INSERT INTO `log_info` VALUES (6662, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:14:19');
INSERT INTO `log_info` VALUES (6663, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:14:19');
INSERT INTO `log_info` VALUES (6664, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:14:53');
INSERT INTO `log_info` VALUES (6665, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:14:53');
INSERT INTO `log_info` VALUES (6666, 'root', 'GET', 'com.example.controller.StatisController.week', '/statis/week', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:17:08');
INSERT INTO `log_info` VALUES (6667, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:17:15');
INSERT INTO `log_info` VALUES (6668, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:17:15');
INSERT INTO `log_info` VALUES (6669, 'root', 'GET', 'com.example.controller.StatisController.week', '/statis/week', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:17:18');
INSERT INTO `log_info` VALUES (6670, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:18:41');
INSERT INTO `log_info` VALUES (6671, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:18:41');
INSERT INTO `log_info` VALUES (6672, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:19:15');
INSERT INTO `log_info` VALUES (6673, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:19:15');
INSERT INTO `log_info` VALUES (6674, 'root', 'GET', 'com.example.controller.StatisController.week', '/statis/week', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:19:23');
INSERT INTO `log_info` VALUES (6675, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:20:20');
INSERT INTO `log_info` VALUES (6676, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:20:24');
INSERT INTO `log_info` VALUES (6677, 'root', 'GET', 'com.example.controller.StatisController.week', '/statis/week', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:20:26');
INSERT INTO `log_info` VALUES (6678, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:22:04');
INSERT INTO `log_info` VALUES (6679, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:22:10');
INSERT INTO `log_info` VALUES (6680, 'root', 'GET', 'com.example.controller.StatisController.week', '/statis/week', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:22:13');
INSERT INTO `log_info` VALUES (6681, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:45:25');
INSERT INTO `log_info` VALUES (6682, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:45:25');
INSERT INTO `log_info` VALUES (6683, 'root', 'GET', 'com.example.controller.StatisController.week', '/statis/week', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:45:31');
INSERT INTO `log_info` VALUES (6684, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:46:32');
INSERT INTO `log_info` VALUES (6685, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:46:32');
INSERT INTO `log_info` VALUES (6686, 'root', 'GET', 'com.example.controller.StatisController.week', '/statis/week', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:46:38');
INSERT INTO `log_info` VALUES (6687, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:47:57');
INSERT INTO `log_info` VALUES (6688, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:48:02');
INSERT INTO `log_info` VALUES (6689, 'root', 'GET', 'com.example.controller.StatisController.week', '/statis/week', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:48:05');
INSERT INTO `log_info` VALUES (6690, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:48:30');
INSERT INTO `log_info` VALUES (6691, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:48:30');
INSERT INTO `log_info` VALUES (6692, 'root', 'GET', 'com.example.controller.StatisController.week', '/statis/week', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:48:33');
INSERT INTO `log_info` VALUES (6693, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:51:42');
INSERT INTO `log_info` VALUES (6694, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:51:44');
INSERT INTO `log_info` VALUES (6695, 'root', 'GET', 'com.example.controller.StatisController.week', '/statis/week', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:51:46');
INSERT INTO `log_info` VALUES (6696, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:55:13');
INSERT INTO `log_info` VALUES (6697, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:55:13');
INSERT INTO `log_info` VALUES (6698, 'root', 'GET', 'com.example.controller.StatisController.week', '/statis/week', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:55:19');
INSERT INTO `log_info` VALUES (6699, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:56:39');
INSERT INTO `log_info` VALUES (6700, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:56:39');
INSERT INTO `log_info` VALUES (6701, 'root', 'GET', 'com.example.controller.StatisController.week', '/statis/week', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:56:44');
INSERT INTO `log_info` VALUES (6702, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:57:21');
INSERT INTO `log_info` VALUES (6703, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:57:21');
INSERT INTO `log_info` VALUES (6704, 'root', 'GET', 'com.example.controller.StatisController.week', '/statis/week', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:57:26');
INSERT INTO `log_info` VALUES (6705, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:59:35');
INSERT INTO `log_info` VALUES (6706, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:59:35');
INSERT INTO `log_info` VALUES (6707, 'root', 'GET', 'com.example.controller.StatisController.week', '/statis/week', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-19 23:59:41');
INSERT INTO `log_info` VALUES (6708, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-20 00:05:09');
INSERT INTO `log_info` VALUES (6709, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-20 00:05:09');
INSERT INTO `log_info` VALUES (6710, 'root', 'GET', 'com.example.controller.StatisController.week', '/statis/week', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-20 00:05:13');
INSERT INTO `log_info` VALUES (6711, 'root', 'GET', 'com.example.controller.UserController.info', '/user/info', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-20 00:06:38');
INSERT INTO `log_info` VALUES (6712, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-20 00:06:38');
INSERT INTO `log_info` VALUES (6713, 'root', 'GET', 'com.example.controller.StatisController.week', '/statis/week', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-20 00:06:44');
INSERT INTO `log_info` VALUES (6714, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-20 00:21:20');
INSERT INTO `log_info` VALUES (6715, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-20 00:21:20');
INSERT INTO `log_info` VALUES (6716, 'root', 'GET', 'com.example.controller.MenuController.selectPermMenu', '/menu/permMenu', 'Chrome 9', 'Windows 10', 'Computer', '127.0.0.1', NULL, '查询成功!😍', NULL, '2021-09-20 00:21:20');

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
) ENGINE = InnoDB AUTO_INCREMENT = 72 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `menu` VALUES (63, '/a', 6, NULL, 0, NULL, '', '自定义', 'el-icon-platform-eleme', '2021-09-05 23:07:15', '2021-09-19 21:51:09', 2);
INSERT INTO `menu` VALUES (64, '/foods/page', 1, NULL, 2, 34, '', '分页查询餐品', '', '2021-09-13 10:06:55', '2021-09-13 10:06:55', 1);
INSERT INTO `menu` VALUES (65, '/file', 5, NULL, 0, NULL, '', '文件管理', 'el-icon-folder', '2021-09-13 18:15:10', '2021-09-19 21:53:56', 2);
INSERT INTO `menu` VALUES (66, '/file/upload', 0, NULL, 2, 65, '', '上传文件', '', '2021-09-13 18:16:34', '2021-09-13 18:16:34', 1);
INSERT INTO `menu` VALUES (67, '/foods/save', 0, NULL, 2, 34, '', '添加餐品', '', '2021-09-14 21:00:58', '2021-09-14 21:02:26', 1);
INSERT INTO `menu` VALUES (68, '/foods/update', 0, NULL, 2, 34, '', '修改餐品', '', '2021-09-14 21:16:20', '2021-09-14 21:16:20', 1);
INSERT INTO `menu` VALUES (69, '/foods/remove', 0, NULL, 2, 34, '', '删除餐品', '', '2021-09-15 09:58:39', '2021-09-15 09:58:39', 1);
INSERT INTO `menu` VALUES (70, '/orders/remove', 0, NULL, 2, 35, '', '删除订单', '', '2021-09-15 10:01:49', '2021-09-15 10:01:49', 1);
INSERT INTO `menu` VALUES (71, '/foods/getById', 0, NULL, 2, 34, '', 'id查询商品', '', '2021-09-19 15:56:48', '2021-09-19 15:56:48', 1);
INSERT INTO `menu` VALUES (72, '/', 7, NULL, 0, NULL, '', '数据统计', 'el-icon-s-data', '2021-09-19 21:50:44', '2021-09-19 21:51:00', 2);
INSERT INTO `menu` VALUES (73, '/statis/recent', 0, NULL, 2, 72, '', '最近7天数据', '', '2021-09-19 21:52:04', '2021-09-19 21:52:04', 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 876 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu_role
-- ----------------------------
INSERT INTO `menu_role` VALUES (726, 49, 8);
INSERT INTO `menu_role` VALUES (727, 68, 8);
INSERT INTO `menu_role` VALUES (728, 67, 8);
INSERT INTO `menu_role` VALUES (729, 24, 8);
INSERT INTO `menu_role` VALUES (730, 31, 8);
INSERT INTO `menu_role` VALUES (731, 36, 8);
INSERT INTO `menu_role` VALUES (732, 34, 8);
INSERT INTO `menu_role` VALUES (841, 21, 4);
INSERT INTO `menu_role` VALUES (842, 71, 4);
INSERT INTO `menu_role` VALUES (843, 64, 4);
INSERT INTO `menu_role` VALUES (844, 47, 4);
INSERT INTO `menu_role` VALUES (845, 24, 4);
INSERT INTO `menu_role` VALUES (846, 25, 4);
INSERT INTO `menu_role` VALUES (847, 29, 4);
INSERT INTO `menu_role` VALUES (848, 34, 4);
INSERT INTO `menu_role` VALUES (849, 65, 4);
INSERT INTO `menu_role` VALUES (850, 3, 3);
INSERT INTO `menu_role` VALUES (851, 33, 3);
INSERT INTO `menu_role` VALUES (852, 50, 3);
INSERT INTO `menu_role` VALUES (853, 17, 3);
INSERT INTO `menu_role` VALUES (854, 8, 3);
INSERT INTO `menu_role` VALUES (855, 21, 3);
INSERT INTO `menu_role` VALUES (856, 49, 3);
INSERT INTO `menu_role` VALUES (857, 34, 3);
INSERT INTO `menu_role` VALUES (858, 71, 3);
INSERT INTO `menu_role` VALUES (859, 69, 3);
INSERT INTO `menu_role` VALUES (860, 68, 3);
INSERT INTO `menu_role` VALUES (861, 67, 3);
INSERT INTO `menu_role` VALUES (862, 64, 3);
INSERT INTO `menu_role` VALUES (863, 35, 3);
INSERT INTO `menu_role` VALUES (864, 70, 3);
INSERT INTO `menu_role` VALUES (865, 47, 3);
INSERT INTO `menu_role` VALUES (866, 63, 3);
INSERT INTO `menu_role` VALUES (867, 62, 3);
INSERT INTO `menu_role` VALUES (868, 24, 3);
INSERT INTO `menu_role` VALUES (869, 25, 3);
INSERT INTO `menu_role` VALUES (870, 26, 3);
INSERT INTO `menu_role` VALUES (871, 30, 3);
INSERT INTO `menu_role` VALUES (872, 29, 3);
INSERT INTO `menu_role` VALUES (873, 31, 3);
INSERT INTO `menu_role` VALUES (874, 36, 3);
INSERT INTO `menu_role` VALUES (875, 65, 3);
INSERT INTO `menu_role` VALUES (876, 24, 1);
INSERT INTO `menu_role` VALUES (877, 25, 1);
INSERT INTO `menu_role` VALUES (878, 26, 1);
INSERT INTO `menu_role` VALUES (879, 2, 1);
INSERT INTO `menu_role` VALUES (880, 3, 1);
INSERT INTO `menu_role` VALUES (881, 4, 1);
INSERT INTO `menu_role` VALUES (882, 5, 1);
INSERT INTO `menu_role` VALUES (883, 6, 1);
INSERT INTO `menu_role` VALUES (884, 28, 1);
INSERT INTO `menu_role` VALUES (885, 33, 1);
INSERT INTO `menu_role` VALUES (886, 30, 1);
INSERT INTO `menu_role` VALUES (887, 50, 1);
INSERT INTO `menu_role` VALUES (888, 54, 1);
INSERT INTO `menu_role` VALUES (889, 12, 1);
INSERT INTO `menu_role` VALUES (890, 13, 1);
INSERT INTO `menu_role` VALUES (891, 16, 1);
INSERT INTO `menu_role` VALUES (892, 17, 1);
INSERT INTO `menu_role` VALUES (893, 19, 1);
INSERT INTO `menu_role` VALUES (894, 18, 1);
INSERT INTO `menu_role` VALUES (895, 29, 1);
INSERT INTO `menu_role` VALUES (896, 7, 1);
INSERT INTO `menu_role` VALUES (897, 8, 1);
INSERT INTO `menu_role` VALUES (898, 9, 1);
INSERT INTO `menu_role` VALUES (899, 10, 1);
INSERT INTO `menu_role` VALUES (900, 21, 1);
INSERT INTO `menu_role` VALUES (901, 31, 1);
INSERT INTO `menu_role` VALUES (902, 36, 1);
INSERT INTO `menu_role` VALUES (903, 58, 1);
INSERT INTO `menu_role` VALUES (904, 49, 1);
INSERT INTO `menu_role` VALUES (905, 34, 1);
INSERT INTO `menu_role` VALUES (906, 71, 1);
INSERT INTO `menu_role` VALUES (907, 69, 1);
INSERT INTO `menu_role` VALUES (908, 67, 1);
INSERT INTO `menu_role` VALUES (909, 68, 1);
INSERT INTO `menu_role` VALUES (910, 64, 1);
INSERT INTO `menu_role` VALUES (911, 35, 1);
INSERT INTO `menu_role` VALUES (912, 70, 1);
INSERT INTO `menu_role` VALUES (913, 65, 1);
INSERT INTO `menu_role` VALUES (914, 66, 1);
INSERT INTO `menu_role` VALUES (915, 47, 1);
INSERT INTO `menu_role` VALUES (916, 63, 1);
INSERT INTO `menu_role` VALUES (917, 62, 1);
INSERT INTO `menu_role` VALUES (918, 72, 1);
INSERT INTO `menu_role` VALUES (919, 73, 1);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'root', '超级管理员', NULL, '2021-09-19 21:55:10', 17);
INSERT INTO `role` VALUES (2, 'admin', '管理员', NULL, '2021-09-07 16:27:21', 2);
INSERT INTO `role` VALUES (3, 'user', '用户', NULL, '2021-09-19 16:07:17', 8);
INSERT INTO `role` VALUES (4, 'tourist', '游客', NULL, '2021-09-19 16:07:00', 8);
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
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of statis
-- ----------------------------
INSERT INTO `statis` VALUES (12, 10, 15, NULL, 6, '2021-09-15 18:03:30');
INSERT INTO `statis` VALUES (13, 2, 15, NULL, 6, '2021-09-16 16:00:00');
INSERT INTO `statis` VALUES (14, 5, 15, NULL, 6, '2021-09-17 18:00:00');
INSERT INTO `statis` VALUES (15, 4, 15, NULL, 6, '2021-09-18 00:00:00');
INSERT INTO `statis` VALUES (16, 2, 15, NULL, 6, '2021-09-19 13:13:01');
INSERT INTO `statis` VALUES (17, 1, 15, NULL, 6, '2021-09-20 00:00:00');
INSERT INTO `statis` VALUES (18, 2, 15, NULL, 6, '2021-09-21 00:00:00');

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
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Redundant;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'user', '木灵鱼儿', '$2a$10$UfzfgbVxCAXoiyaCw7IXiuHiFqMMVbhbb3ox6nkxbAJLGTWjJ7Ciq', 'c753ff10-25f2-4588-b779-754918fd5e95', NULL, '15885326305', 'user@qq.com', 1, '2021-07-29 02:14:10', '2021-09-19 17:44:25', 2);
INSERT INTO `user` VALUES (2, 'admin', '初之音', '$2a$10$vnvYyOdeQr9EUAc..Zjh4ed73t3JQf74tFgwg/XpQYTQHL3cfEtn2', 'eedea5a5-6365-4db8-9910-2e2f7911fcd8', NULL, '113', 'root', 1, '2021-07-29 13:11:51', '2021-09-19 13:44:37', 12);
INSERT INTO `user` VALUES (3, 'root', '保罗的小宇宙', '$2a$10$eFWwgadiCeSOQnSH3FaJT.EJhCE77x8yIQk3/JlgQAmX39qejXBrm', 'a37462d8-7990-408a-996c-4b922057943a', NULL, '15885326300', 'root@qq.com', 1, '2021-07-29 13:12:04', '2021-09-19 17:44:17', 4);
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
) ENGINE = InnoDB AUTO_INCREMENT = 77 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
