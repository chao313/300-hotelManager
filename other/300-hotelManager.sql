/*
 Navicat Premium Data Transfer

 Source Server         : mysql_local
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost:3306
 Source Schema         : 300-hotelManager

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 09/05/2021 14:48:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_book
-- ----------------------------
DROP TABLE IF EXISTS `t_book`;
CREATE TABLE `t_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookTime` datetime DEFAULT NULL,
  `leaveTime` datetime DEFAULT NULL,
  `reachTime` datetime DEFAULT NULL,
  `roomNumber` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_7spxgv73vpux225dqa7nqovwt` (`user_id`),
  KEY `FK_37934xq4d4lw188xmsd6vtj1s` (`room_id`),
  CONSTRAINT `FK_37934xq4d4lw188xmsd6vtj1s` FOREIGN KEY (`room_id`) REFERENCES `t_room` (`id`),
  CONSTRAINT `FK_7spxgv73vpux225dqa7nqovwt` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_book
-- ----------------------------
BEGIN;
INSERT INTO `t_book` VALUES (2, '2016-10-12 00:08:46', '2016-10-28 00:08:51', '2016-10-16 00:08:59', 1, 0, 3, 9);
INSERT INTO `t_book` VALUES (3, '2016-10-13 21:56:55', '2016-10-16 21:56:58', '2016-10-15 21:57:01', 1, 0, 1, 1);
INSERT INTO `t_book` VALUES (4, '2016-10-16 12:12:57', '2016-10-20 12:13:01', '2016-10-18 12:13:05', 1, 2, 4, 13);
INSERT INTO `t_book` VALUES (5, '2016-10-17 20:45:35', '2016-10-20 20:45:40', '2016-10-19 20:45:43', 1, 0, 5, 11);
INSERT INTO `t_book` VALUES (7, '2016-10-20 20:47:42', '2016-10-23 20:47:46', '2016-10-22 20:47:50', 1, 0, 7, 14);
INSERT INTO `t_book` VALUES (8, '2016-10-22 22:06:59', '2016-10-24 22:07:04', '2016-10-23 22:07:08', 1, 0, 9, 25);
INSERT INTO `t_book` VALUES (16, '2016-10-26 18:47:39', '2016-10-29 00:00:00', '2016-10-26 00:00:00', 1, 0, 10, 13);
INSERT INTO `t_book` VALUES (17, '2016-11-06 20:48:15', '2016-11-10 00:00:00', '2016-11-07 00:00:00', 1, 0, 11, 33);
INSERT INTO `t_book` VALUES (18, '2021-05-09 10:42:19', '2021-05-10 00:00:00', '2021-05-09 00:00:00', 1, 0, 12, 2);
INSERT INTO `t_book` VALUES (20, '2021-05-09 14:08:59', '2021-05-09 00:00:00', '2021-04-27 00:00:00', 1, 2, 12, 1);
INSERT INTO `t_book` VALUES (21, '2021-05-09 14:11:18', '2021-05-09 00:00:00', '2021-05-09 00:00:00', 1, 2, 12, 2);
INSERT INTO `t_book` VALUES (22, '2021-05-09 14:17:04', '2021-05-20 00:00:00', '2021-05-09 00:00:00', 1, 2, 12, 1);
INSERT INTO `t_book` VALUES (23, '2021-05-09 14:25:11', '2021-05-09 00:00:00', '2021-05-09 00:00:00', 1, 2, 12, 1);
INSERT INTO `t_book` VALUES (24, '2021-05-09 14:28:22', '2021-05-09 00:00:00', '2021-05-09 00:00:00', 1, 2, 12, 1);
COMMIT;

-- ----------------------------
-- Table structure for t_buy
-- ----------------------------
DROP TABLE IF EXISTS `t_buy`;
CREATE TABLE `t_buy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_buy
-- ----------------------------
BEGIN;
INSERT INTO `t_buy` VALUES (1, '床单', 100, '', 11);
INSERT INTO `t_buy` VALUES (2, '被褥', 200, '', 10);
INSERT INTO `t_buy` VALUES (3, '空调遥控', 20, '', 10);
INSERT INTO `t_buy` VALUES (4, '热水器', 3000, '', 10);
INSERT INTO `t_buy` VALUES (5, '拖鞋', 20, '', 10);
INSERT INTO `t_buy` VALUES (6, '水杯', 10, '', 10);
COMMIT;

-- ----------------------------
-- Table structure for t_item
-- ----------------------------
DROP TABLE IF EXISTS `t_item`;
CREATE TABLE `t_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `itemName` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_8v8wb6o7w0g7jvtgpbghypqcd` (`cid`),
  KEY `FK_jirt7y31irafkx63ns3b1ar27` (`user_id`),
  CONSTRAINT `FK_8v8wb6o7w0g7jvtgpbghypqcd` FOREIGN KEY (`cid`) REFERENCES `t_item_cat` (`cid`),
  CONSTRAINT `FK_jirt7y31irafkx63ns3b1ar27` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_item
-- ----------------------------
BEGIN;
INSERT INTO `t_item` VALUES (1, '\\upload\\1403db50b08811eb6673577612501f99264cf45129e1f234c62342da1ccc5502.jpeg', '雪碧', '雪碧', 1, NULL);
INSERT INTO `t_item` VALUES (2, '\\upload\\25ec0e00b08811eb6673577612501f99fb5859d6c880c47a2876e731abc14a93.jpeg', '可乐', '可乐', 1, NULL);
INSERT INTO `t_item` VALUES (3, '\\upload\\41900350b08811eb6673577612501f99e86bfaa349e0d5c66ab6c909677ee46e.jpeg', '衬衣', '衬衣', 2, NULL);
INSERT INTO `t_item` VALUES (4, '\\upload\\508275a0b08811eb6673577612501f995f47d9057af0df864b491e3c7d61d38b.jpeg', '裤子', '裤子', 2, NULL);
INSERT INTO `t_item` VALUES (5, '\\upload\\6ee5d910b08811eb6673577612501f9934828a1a1af15a01adc1f3ccaf290393.jpeg', '猕猴桃', '猕猴桃', 6, NULL);
INSERT INTO `t_item` VALUES (6, '\\upload\\80738fb0b08811eb6673577612501f99799017abdd91a3ee8f0ec0ffeb46d179.jpeg', '苹果', '苹果', 6, NULL);
INSERT INTO `t_item` VALUES (7, '\\upload\\9a1154c0b08811eb6673577612501f999318593887cf933593ea532f63598083.jpeg', '辛巴克杯子', '辛巴克杯子', 3, NULL);
INSERT INTO `t_item` VALUES (8, '\\upload\\aa069110b08811eb6673577612501f99fca2b6133e3a1f824d4bb6e574db0351.jpeg', '保温杯', '保温杯', 3, NULL);
INSERT INTO `t_item` VALUES (9, '\\upload\\c5246670b08811eb6673577612501f996686b3cfeb5262e8500c1acf834e4708.jpeg', '青岛啤酒', '青岛啤酒', 4, NULL);
INSERT INTO `t_item` VALUES (10, '\\upload\\d7793da0b08811eb6673577612501f99f33e832623f04e060719093b4133c360.jpeg', '雪花啤酒', '雪花啤酒', 4, NULL);
INSERT INTO `t_item` VALUES (11, '\\upload\\f91eacb0b08811eb6673577612501f99f26d64e137fba1c17e4bd059a286ae43.jpeg', '新石器烤肉', '新石器烤肉', 5, NULL);
INSERT INTO `t_item` VALUES (12, '\\upload\\09d1e1d0b08911eb6673577612501f9915ebbc66175f2e45e70b0919e3f15db2.jpeg', '土耳其烤肉饭', '土耳其烤肉饭', 5, NULL);
INSERT INTO `t_item` VALUES (13, '\\upload\\38fcecc0b08911eb6673577612501f99d1f8cc83654c8b8b5247ff9cfcd00976.jpeg', '中华香烟', '中华香烟', 7, NULL);
INSERT INTO `t_item` VALUES (14, '\\upload\\4820f660b08911eb6673577612501f99087abef8602aa8d28154d3fa0d423fb0.jpeg', '利群香烟', '利群香烟', 7, NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_item_cat
-- ----------------------------
DROP TABLE IF EXISTS `t_item_cat`;
CREATE TABLE `t_item_cat` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `num` int(11) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_item_cat
-- ----------------------------
BEGIN;
INSERT INTO `t_item_cat` VALUES (1, '饮料', '\\upload\\cb238bb0b08711eb6673577612501f99u=3847718234,3682256387&fm=26&gp=0.jpeg', 7, 130);
INSERT INTO `t_item_cat` VALUES (2, '衣服', '\\upload\\d65106c0b08711eb6673577612501f99下载.jpeg', 9, 20);
INSERT INTO `t_item_cat` VALUES (3, '杯子', '\\upload\\ded2e9d0b08711eb6673577612501f99杯子.jpeg', 10, 10);
INSERT INTO `t_item_cat` VALUES (4, '啤酒', '\\upload\\e6511880b08711eb6673577612501f99啤酒.jpeg', 14, 123);
INSERT INTO `t_item_cat` VALUES (5, '烧烤', '\\upload\\eb95f900b08711eb6673577612501f99烧烤.jpeg', 12, 15);
INSERT INTO `t_item_cat` VALUES (6, '水果', '\\upload\\f267e220b08711eb6673577612501f99水果.jpeg', 11, 200);
INSERT INTO `t_item_cat` VALUES (7, '香烟', '\\upload\\f84d4860b08711eb6673577612501f99香烟.jpeg', 4, 300);
COMMIT;

-- ----------------------------
-- Table structure for t_log
-- ----------------------------
DROP TABLE IF EXISTS `t_log`;
CREATE TABLE `t_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `manage_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_3mfe856ak8t6quyqx6arjm6if` (`user_id`),
  KEY `FK_g8qn8o4rp2vfmsdtfsrxkwlcv` (`manage_id`),
  CONSTRAINT `FK_3mfe856ak8t6quyqx6arjm6if` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`),
  CONSTRAINT `FK_g8qn8o4rp2vfmsdtfsrxkwlcv` FOREIGN KEY (`manage_id`) REFERENCES `t_manage` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=283 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_log
-- ----------------------------
BEGIN;
INSERT INTO `t_log` VALUES (3, '新增管理员', '2016-10-15 20:08:34', NULL, 1);
INSERT INTO `t_log` VALUES (4, '删除用户', '2016-10-15 20:19:31', NULL, 1);
INSERT INTO `t_log` VALUES (9, '新增客房', '2016-10-15 20:22:14', NULL, 1);
INSERT INTO `t_log` VALUES (10, '删除客房', '2016-10-15 20:23:19', NULL, 1);
INSERT INTO `t_log` VALUES (11, '修改客房', '2016-10-15 20:23:37', NULL, 1);
INSERT INTO `t_log` VALUES (12, '修改客房类型', '2016-10-15 20:24:05', NULL, 1);
INSERT INTO `t_log` VALUES (13, '新增客房类型', '2016-10-15 20:25:14', NULL, 1);
INSERT INTO `t_log` VALUES (16, '删除日志', '2016-10-15 21:39:17', NULL, 4);
INSERT INTO `t_log` VALUES (17, '删除日志', '2016-10-15 22:21:59', NULL, 1);
INSERT INTO `t_log` VALUES (19, '新增日志', '2016-10-15 22:42:50', NULL, 1);
INSERT INTO `t_log` VALUES (23, '删除日志', '2016-10-15 23:12:23', NULL, 1);
INSERT INTO `t_log` VALUES (24, '修改日志', '2016-10-15 23:46:30', NULL, 6);
INSERT INTO `t_log` VALUES (25, '修改日志', '2016-10-15 23:44:14', NULL, 1);
INSERT INTO `t_log` VALUES (26, '修改日志', '2016-10-15 23:46:38', NULL, 13);
INSERT INTO `t_log` VALUES (27, '修改日志', '2016-10-15 23:55:57', NULL, 1);
INSERT INTO `t_log` VALUES (28, '修改日志', '2016-10-15 23:46:44', NULL, 1);
INSERT INTO `t_log` VALUES (30, '修改日志', '2016-10-15 23:55:57', NULL, 1);
INSERT INTO `t_log` VALUES (31, '新增管理员', '2016-10-15 23:59:48', NULL, 1);
INSERT INTO `t_log` VALUES (33, '新增客房', '2016-10-16 00:03:11', NULL, 1);
INSERT INTO `t_log` VALUES (36, '新增日志', '2016-10-16 09:23:20', NULL, 1);
INSERT INTO `t_log` VALUES (38, '新增日志', '2016-10-16 09:25:33', NULL, 1);
INSERT INTO `t_log` VALUES (39, '修改客房', '2016-10-16 09:33:01', NULL, 1);
INSERT INTO `t_log` VALUES (40, '新增客房', '2016-10-16 09:33:28', NULL, 1);
INSERT INTO `t_log` VALUES (41, '王企鹅', '2016-10-16 09:40:20', NULL, 8);
INSERT INTO `t_log` VALUES (42, '新增日志', '2016-10-16 09:40:13', NULL, 1);
INSERT INTO `t_log` VALUES (43, '修改日志', '2016-10-16 09:40:20', NULL, 1);
INSERT INTO `t_log` VALUES (44, '删除日志', '2016-10-16 09:40:24', NULL, 1);
INSERT INTO `t_log` VALUES (45, '删除日志', '2016-10-16 09:40:26', NULL, 1);
INSERT INTO `t_log` VALUES (46, '测试', '2016-10-16 09:40:35', NULL, 4);
INSERT INTO `t_log` VALUES (47, '新增日志', '2016-10-16 09:40:35', NULL, 1);
INSERT INTO `t_log` VALUES (48, '取消预定', '2016-10-16 12:01:42', NULL, 1);
INSERT INTO `t_log` VALUES (49, '办理入住', '2016-10-16 12:15:30', NULL, 1);
INSERT INTO `t_log` VALUES (50, '新增商品类型', '2016-10-16 13:34:50', NULL, 1);
INSERT INTO `t_log` VALUES (51, '修改客房类型', '2016-10-16 13:43:33', NULL, 1);
INSERT INTO `t_log` VALUES (52, '新增商品类型', '2016-10-16 13:47:34', NULL, 1);
INSERT INTO `t_log` VALUES (53, '新增商品', '2016-10-16 14:48:22', NULL, 1);
INSERT INTO `t_log` VALUES (54, '新增商品', '2016-10-16 14:54:45', NULL, 1);
INSERT INTO `t_log` VALUES (55, '新增商品', '2016-10-16 14:59:54', NULL, 1);
INSERT INTO `t_log` VALUES (56, '新增商品', '2016-10-16 15:00:07', NULL, 1);
INSERT INTO `t_log` VALUES (57, '新增商品', '2016-10-16 15:07:09', NULL, 1);
INSERT INTO `t_log` VALUES (58, '删除商品', '2016-10-16 15:07:26', NULL, 1);
INSERT INTO `t_log` VALUES (59, '删除商品', '2016-10-16 15:07:52', NULL, 1);
INSERT INTO `t_log` VALUES (60, '新增商品', '2016-10-16 15:08:18', NULL, 1);
INSERT INTO `t_log` VALUES (61, '新增商品', '2016-10-16 15:08:31', NULL, 1);
INSERT INTO `t_log` VALUES (62, '新增商品', '2016-10-16 15:08:43', NULL, 1);
INSERT INTO `t_log` VALUES (63, '新增客房', '2016-10-16 15:37:29', NULL, 1);
INSERT INTO `t_log` VALUES (64, '新增客房', '2016-10-16 15:38:35', NULL, 1);
INSERT INTO `t_log` VALUES (65, '删除客房', '2016-10-16 15:41:12', NULL, 1);
INSERT INTO `t_log` VALUES (66, '删除客房', '2016-10-16 15:41:15', NULL, 1);
INSERT INTO `t_log` VALUES (67, '修改客房', '2016-10-16 15:41:22', NULL, 1);
INSERT INTO `t_log` VALUES (68, '修改客房', '2016-10-16 15:41:30', NULL, 1);
INSERT INTO `t_log` VALUES (69, '修改客房', '2016-10-16 15:41:38', NULL, 1);
INSERT INTO `t_log` VALUES (70, '新增商品', '2016-10-16 15:42:23', NULL, 1);
INSERT INTO `t_log` VALUES (71, '修改商品', '2016-10-16 15:51:55', NULL, 1);
INSERT INTO `t_log` VALUES (72, '新增客房类型', '2016-10-16 16:37:40', NULL, 1);
INSERT INTO `t_log` VALUES (73, '新增客房类型', '2016-10-16 16:38:30', NULL, 1);
INSERT INTO `t_log` VALUES (74, '修改客房类型', '2016-10-16 17:01:22', NULL, 1);
INSERT INTO `t_log` VALUES (75, '修改客房类型', '2016-10-16 18:37:27', NULL, 1);
INSERT INTO `t_log` VALUES (76, '新增物品采购', '2016-10-17 14:09:11', NULL, 1);
INSERT INTO `t_log` VALUES (77, '新增物品采购', '2016-10-17 14:10:12', NULL, 1);
INSERT INTO `t_log` VALUES (78, '新增物品采购', '2016-10-17 14:10:23', NULL, 1);
INSERT INTO `t_log` VALUES (79, '新增物品采购', '2016-10-17 14:10:33', NULL, 1);
INSERT INTO `t_log` VALUES (80, '新增物品采购', '2016-10-17 14:10:51', NULL, 1);
INSERT INTO `t_log` VALUES (81, '新增物品采购', '2016-10-17 14:11:03', NULL, 1);
INSERT INTO `t_log` VALUES (82, '新增需求', '2016-10-17 14:20:49', NULL, 1);
INSERT INTO `t_log` VALUES (83, '新增需求', '2016-10-17 14:21:17', NULL, 1);
INSERT INTO `t_log` VALUES (84, '新增需求', '2016-10-17 14:21:25', NULL, 1);
INSERT INTO `t_log` VALUES (85, '新增异常', '2016-10-17 14:48:50', NULL, 1);
INSERT INTO `t_log` VALUES (86, '新增异常', '2016-10-17 14:49:08', NULL, 1);
INSERT INTO `t_log` VALUES (87, '新增异常', '2016-10-17 14:49:17', NULL, 1);
INSERT INTO `t_log` VALUES (88, '新增异常', '2016-10-17 14:49:27', NULL, 1);
INSERT INTO `t_log` VALUES (89, '新增异常', '2016-10-17 14:49:37', NULL, 1);
INSERT INTO `t_log` VALUES (90, '新增异常', '2016-10-17 14:49:47', NULL, 1);
INSERT INTO `t_log` VALUES (91, '删除异常', '2016-10-17 14:50:05', NULL, 1);
INSERT INTO `t_log` VALUES (92, '修改异常', '2016-10-17 14:54:26', NULL, 1);
INSERT INTO `t_log` VALUES (93, '修改异常', '2016-10-17 14:54:31', NULL, 1);
INSERT INTO `t_log` VALUES (94, '删除需求', '2016-10-17 14:57:16', NULL, 1);
INSERT INTO `t_log` VALUES (95, '新增需求', '2016-10-17 14:57:21', NULL, 1);
INSERT INTO `t_log` VALUES (96, '修改物品采购', '2016-10-17 14:59:56', NULL, 1);
INSERT INTO `t_log` VALUES (97, '修改物品采购', '2016-10-17 15:00:00', NULL, 1);
INSERT INTO `t_log` VALUES (98, '修改需求', '2016-10-17 15:02:37', NULL, 1);
INSERT INTO `t_log` VALUES (99, '修改需求', '2016-10-17 15:02:43', NULL, 1);
INSERT INTO `t_log` VALUES (100, '异常维修', '2016-10-17 15:11:35', NULL, 1);
INSERT INTO `t_log` VALUES (101, '新增异常', '2016-10-17 15:11:47', NULL, 1);
INSERT INTO `t_log` VALUES (102, '更换房间', '2016-10-17 22:36:30', NULL, 1);
INSERT INTO `t_log` VALUES (103, '更换房间', '2016-10-17 22:41:01', NULL, 1);
INSERT INTO `t_log` VALUES (104, '更换房间', '2016-10-17 22:46:17', NULL, 1);
INSERT INTO `t_log` VALUES (105, '更换房间', '2016-10-17 22:47:42', NULL, 1);
INSERT INTO `t_log` VALUES (106, '更换房间', '2016-10-17 22:47:57', NULL, 1);
INSERT INTO `t_log` VALUES (107, '更换房间', '2016-10-17 22:48:03', NULL, 1);
INSERT INTO `t_log` VALUES (108, '更换房间', '2016-10-17 22:48:09', NULL, 1);
INSERT INTO `t_log` VALUES (109, '更换房间', '2016-10-18 12:32:47', NULL, 1);
INSERT INTO `t_log` VALUES (110, '更换房间', '2016-10-18 13:13:53', NULL, 1);
INSERT INTO `t_log` VALUES (111, '新增商品类型', '2016-10-18 13:58:39', NULL, 1);
INSERT INTO `t_log` VALUES (112, '新增商品类型', '2016-10-18 14:02:05', NULL, 1);
INSERT INTO `t_log` VALUES (113, '修改物品采购', '2016-10-18 16:48:25', NULL, 1);
INSERT INTO `t_log` VALUES (114, '办理入住', '2016-10-18 16:49:40', NULL, 1);
INSERT INTO `t_log` VALUES (115, '修改物品采购', '2016-10-18 19:50:37', NULL, 1);
INSERT INTO `t_log` VALUES (116, '删除商品', '2016-10-18 22:05:51', NULL, 1);
INSERT INTO `t_log` VALUES (117, '新增客房', '2016-10-18 23:18:07', NULL, 1);
INSERT INTO `t_log` VALUES (118, '新增客房', '2016-10-18 23:21:11', NULL, 1);
INSERT INTO `t_log` VALUES (119, '新增客房', '2016-10-18 23:21:56', NULL, 1);
INSERT INTO `t_log` VALUES (120, '新增客房', '2016-10-18 23:22:20', NULL, 1);
INSERT INTO `t_log` VALUES (121, '新增客房', '2016-10-18 23:22:44', NULL, 1);
INSERT INTO `t_log` VALUES (122, '新增客房', '2016-10-18 23:23:19', NULL, 1);
INSERT INTO `t_log` VALUES (123, '新增客房', '2016-10-18 23:23:44', NULL, 1);
INSERT INTO `t_log` VALUES (124, '新增客房', '2016-10-18 23:24:22', NULL, 1);
INSERT INTO `t_log` VALUES (125, '新增客房', '2016-10-18 23:25:09', NULL, 1);
INSERT INTO `t_log` VALUES (126, '新增客房', '2016-10-18 23:26:04', NULL, 1);
INSERT INTO `t_log` VALUES (127, '删除用户', '2016-10-21 20:33:56', NULL, 1);
INSERT INTO `t_log` VALUES (128, '新增客房', '2016-10-21 20:35:54', NULL, 1);
INSERT INTO `t_log` VALUES (129, '删除用户', '2016-10-21 21:13:24', NULL, 1);
INSERT INTO `t_log` VALUES (130, '删除用户', '2016-10-21 21:13:29', NULL, 1);
INSERT INTO `t_log` VALUES (131, '删除用户', '2016-10-21 21:13:39', NULL, 1);
INSERT INTO `t_log` VALUES (132, '办理入住', '2016-10-21 22:04:15', NULL, 1);
INSERT INTO `t_log` VALUES (133, '新增客房', '2016-10-22 21:23:24', NULL, 1);
INSERT INTO `t_log` VALUES (134, '办理入住', '2016-10-22 22:09:15', NULL, 1);
INSERT INTO `t_log` VALUES (135, '办理入住', '2016-10-22 23:18:41', NULL, 1);
INSERT INTO `t_log` VALUES (136, '办理入住', '2016-10-22 23:23:25', NULL, 1);
INSERT INTO `t_log` VALUES (137, '办理入住', '2016-10-26 18:48:28', NULL, 1);
INSERT INTO `t_log` VALUES (138, '新增管理员', '2016-11-06 20:31:02', NULL, 1);
INSERT INTO `t_log` VALUES (139, '新增客房', '2016-11-06 20:31:57', NULL, 1);
INSERT INTO `t_log` VALUES (140, '新增商品', '2016-11-06 20:42:38', NULL, 1);
INSERT INTO `t_log` VALUES (141, '新增管理员', '2016-11-06 20:45:48', NULL, 1);
INSERT INTO `t_log` VALUES (142, '新增客房', '2016-11-06 20:46:40', NULL, 1);
INSERT INTO `t_log` VALUES (143, '新增商品', '2016-11-06 20:47:28', NULL, 1);
INSERT INTO `t_log` VALUES (144, '办理入住', '2016-11-06 20:48:45', NULL, 1);
INSERT INTO `t_log` VALUES (145, '新增异常', '2016-11-06 20:50:20', NULL, 1);
INSERT INTO `t_log` VALUES (146, '新增需求', '2016-11-06 20:50:38', NULL, 1);
INSERT INTO `t_log` VALUES (147, '????', '2021-05-09 11:25:02', NULL, 1);
INSERT INTO `t_log` VALUES (148, '????', '2021-05-09 11:25:21', NULL, 1);
INSERT INTO `t_log` VALUES (149, '????', '2021-05-09 11:25:30', NULL, 1);
INSERT INTO `t_log` VALUES (150, '????', '2021-05-09 11:25:35', NULL, 1);
INSERT INTO `t_log` VALUES (151, '????', '2021-05-09 11:25:45', NULL, 1);
INSERT INTO `t_log` VALUES (152, '????', '2021-05-09 11:25:55', NULL, 1);
INSERT INTO `t_log` VALUES (153, '????', '2021-05-09 11:26:07', NULL, 1);
INSERT INTO `t_log` VALUES (154, '????', '2021-05-09 11:27:07', NULL, 1);
INSERT INTO `t_log` VALUES (155, '????', '2021-05-09 11:27:19', NULL, 1);
INSERT INTO `t_log` VALUES (156, '????', '2021-05-09 11:27:30', NULL, 1);
INSERT INTO `t_log` VALUES (157, '????', '2021-05-09 11:27:40', NULL, 1);
INSERT INTO `t_log` VALUES (158, '????', '2021-05-09 11:27:54', NULL, 1);
INSERT INTO `t_log` VALUES (159, '????', '2021-05-09 11:28:17', NULL, 1);
INSERT INTO `t_log` VALUES (160, '????', '2021-05-09 11:28:28', NULL, 1);
INSERT INTO `t_log` VALUES (161, '????', '2021-05-09 11:29:32', NULL, 1);
INSERT INTO `t_log` VALUES (162, '????', '2021-05-09 11:29:47', NULL, 1);
INSERT INTO `t_log` VALUES (163, '????', '2021-05-09 11:29:58', NULL, 1);
INSERT INTO `t_log` VALUES (164, '????', '2021-05-09 11:30:16', NULL, 1);
INSERT INTO `t_log` VALUES (165, '????', '2021-05-09 11:30:25', NULL, 1);
INSERT INTO `t_log` VALUES (166, '????', '2021-05-09 11:30:34', NULL, 1);
INSERT INTO `t_log` VALUES (167, '????', '2021-05-09 11:31:57', NULL, 1);
INSERT INTO `t_log` VALUES (168, '修改客房', '2021-05-09 11:34:32', NULL, 1);
INSERT INTO `t_log` VALUES (169, '修改客房', '2021-05-09 11:34:42', NULL, 1);
INSERT INTO `t_log` VALUES (170, '修改客房', '2021-05-09 11:34:46', NULL, 1);
INSERT INTO `t_log` VALUES (171, '修改客房', '2021-05-09 11:34:52', NULL, 1);
INSERT INTO `t_log` VALUES (172, '修改客房', '2021-05-09 11:34:59', NULL, 1);
INSERT INTO `t_log` VALUES (173, '修改客房', '2021-05-09 11:35:06', NULL, 1);
INSERT INTO `t_log` VALUES (174, '修改客房', '2021-05-09 11:37:03', NULL, 1);
INSERT INTO `t_log` VALUES (175, '修改客房', '2021-05-09 11:37:15', NULL, 1);
INSERT INTO `t_log` VALUES (176, '修改客房', '2021-05-09 11:37:27', NULL, 1);
INSERT INTO `t_log` VALUES (177, '修改客房', '2021-05-09 11:37:51', NULL, 1);
INSERT INTO `t_log` VALUES (178, '删除客房', '2021-05-09 11:38:00', NULL, 1);
INSERT INTO `t_log` VALUES (179, '删除客房', '2021-05-09 11:38:06', NULL, 1);
INSERT INTO `t_log` VALUES (180, '删除客房', '2021-05-09 11:38:10', NULL, 1);
INSERT INTO `t_log` VALUES (181, '删除客房', '2021-05-09 11:38:16', NULL, 1);
INSERT INTO `t_log` VALUES (182, '修改商品类型', '2021-05-09 11:42:34', NULL, 1);
INSERT INTO `t_log` VALUES (183, '修改商品类型', '2021-05-09 11:42:50', NULL, 1);
INSERT INTO `t_log` VALUES (184, '修改商品类型', '2021-05-09 11:42:57', NULL, 1);
INSERT INTO `t_log` VALUES (185, '修改商品类型', '2021-05-09 11:43:03', NULL, 1);
INSERT INTO `t_log` VALUES (186, '修改商品类型', '2021-05-09 11:57:08', NULL, 1);
INSERT INTO `t_log` VALUES (187, '修改商品类型', '2021-05-09 11:57:23', NULL, 1);
INSERT INTO `t_log` VALUES (188, '修改商品类型', '2021-05-09 12:01:48', NULL, 1);
INSERT INTO `t_log` VALUES (189, '修改商品类型', '2021-05-09 12:02:37', NULL, 1);
INSERT INTO `t_log` VALUES (190, '修改客房类型', '2021-05-09 12:11:40', NULL, 1);
INSERT INTO `t_log` VALUES (191, '修改客房类型', '2021-05-09 12:11:46', NULL, 1);
INSERT INTO `t_log` VALUES (192, '修改客房类型', '2021-05-09 12:11:52', NULL, 1);
INSERT INTO `t_log` VALUES (193, '修改客房类型', '2021-05-09 12:11:58', NULL, 1);
INSERT INTO `t_log` VALUES (194, '修改客房类型', '2021-05-09 12:12:07', NULL, 1);
INSERT INTO `t_log` VALUES (195, '修改客房类型', '2021-05-09 12:12:14', NULL, 1);
INSERT INTO `t_log` VALUES (196, '修改客房类型', '2021-05-09 12:12:21', NULL, 1);
INSERT INTO `t_log` VALUES (197, '修改客房类型', '2021-05-09 12:12:28', NULL, 1);
INSERT INTO `t_log` VALUES (198, '修改商品类型', '2021-05-09 12:12:40', NULL, 1);
INSERT INTO `t_log` VALUES (199, '修改客房类型', '2021-05-09 12:17:22', NULL, 1);
INSERT INTO `t_log` VALUES (200, '修改商品类型', '2021-05-09 12:17:32', NULL, 1);
INSERT INTO `t_log` VALUES (201, '修改商品', '2021-05-09 12:19:13', NULL, 1);
INSERT INTO `t_log` VALUES (202, '修改商品', '2021-05-09 12:44:56', NULL, 1);
INSERT INTO `t_log` VALUES (203, '修改商品', '2021-05-09 12:45:17', NULL, 1);
INSERT INTO `t_log` VALUES (204, '修改商品', '2021-05-09 12:48:57', NULL, 1);
INSERT INTO `t_log` VALUES (205, '修改商品', '2021-05-09 12:49:07', NULL, 1);
INSERT INTO `t_log` VALUES (206, '修改商品', '2021-05-09 12:49:29', NULL, 1);
INSERT INTO `t_log` VALUES (207, '修改商品', '2021-05-09 12:50:16', NULL, 1);
INSERT INTO `t_log` VALUES (208, '修改商品', '2021-05-09 12:50:32', NULL, 1);
INSERT INTO `t_log` VALUES (209, '修改商品', '2021-05-09 12:50:59', NULL, 1);
INSERT INTO `t_log` VALUES (210, '删除用户', '2021-05-09 12:56:41', NULL, 1);
INSERT INTO `t_log` VALUES (211, '删除用户', '2021-05-09 12:56:43', NULL, 1);
INSERT INTO `t_log` VALUES (212, '删除用户', '2021-05-09 12:56:45', NULL, 1);
INSERT INTO `t_log` VALUES (213, '删除用户', '2021-05-09 12:56:52', NULL, 1);
INSERT INTO `t_log` VALUES (214, '删除用户', '2021-05-09 12:56:53', NULL, 1);
INSERT INTO `t_log` VALUES (215, '删除用户', '2021-05-09 12:56:55', NULL, 1);
INSERT INTO `t_log` VALUES (216, '删除用户', '2021-05-09 12:57:04', NULL, 1);
INSERT INTO `t_log` VALUES (217, '删除用户', '2021-05-09 12:57:17', NULL, 1);
INSERT INTO `t_log` VALUES (218, '更换房间', '2021-05-09 12:57:52', NULL, 1);
INSERT INTO `t_log` VALUES (219, '更换房间', '2021-05-09 12:59:57', NULL, 1);
INSERT INTO `t_log` VALUES (220, '删除客房', '2021-05-09 13:00:05', NULL, 1);
INSERT INTO `t_log` VALUES (221, '修改客房类型', '2021-05-09 13:01:00', NULL, 1);
INSERT INTO `t_log` VALUES (222, '修改商品类型', '2021-05-09 13:01:17', NULL, 1);
INSERT INTO `t_log` VALUES (223, '修改商品类型', '2021-05-09 13:01:25', NULL, 1);
INSERT INTO `t_log` VALUES (224, '修改商品类型', '2021-05-09 13:04:23', NULL, 1);
INSERT INTO `t_log` VALUES (225, '修改商品类型', '2021-05-09 13:06:16', NULL, 1);
INSERT INTO `t_log` VALUES (226, '修改商品类型', '2021-05-09 13:07:12', NULL, 1);
INSERT INTO `t_log` VALUES (227, '修改客房类型', '2021-05-09 13:20:28', NULL, 1);
INSERT INTO `t_log` VALUES (228, '修改客房类型', '2021-05-09 13:20:34', NULL, 1);
INSERT INTO `t_log` VALUES (229, '修改客房类型', '2021-05-09 13:20:40', NULL, 1);
INSERT INTO `t_log` VALUES (230, '修改客房类型', '2021-05-09 13:20:47', NULL, 1);
INSERT INTO `t_log` VALUES (231, '修改客房类型', '2021-05-09 13:20:53', NULL, 1);
INSERT INTO `t_log` VALUES (232, '修改客房类型', '2021-05-09 13:21:02', NULL, 1);
INSERT INTO `t_log` VALUES (233, '修改客房类型', '2021-05-09 13:21:10', NULL, 1);
INSERT INTO `t_log` VALUES (234, '修改客房类型', '2021-05-09 13:21:17', NULL, 1);
INSERT INTO `t_log` VALUES (235, '修改客房类型', '2021-05-09 13:21:23', NULL, 1);
INSERT INTO `t_log` VALUES (236, '修改商品类型', '2021-05-09 13:31:24', NULL, 1);
INSERT INTO `t_log` VALUES (237, '修改商品类型', '2021-05-09 13:31:42', NULL, 1);
INSERT INTO `t_log` VALUES (238, '修改商品类型', '2021-05-09 13:31:57', NULL, 1);
INSERT INTO `t_log` VALUES (239, '修改商品类型', '2021-05-09 13:32:09', NULL, 1);
INSERT INTO `t_log` VALUES (240, '修改商品类型', '2021-05-09 13:32:18', NULL, 1);
INSERT INTO `t_log` VALUES (241, '修改商品类型', '2021-05-09 13:32:29', NULL, 1);
INSERT INTO `t_log` VALUES (242, '修改商品类型', '2021-05-09 13:32:39', NULL, 1);
INSERT INTO `t_log` VALUES (243, '修改商品', '2021-05-09 13:33:26', NULL, 1);
INSERT INTO `t_log` VALUES (244, '修改商品', '2021-05-09 13:33:56', NULL, 1);
INSERT INTO `t_log` VALUES (245, '修改商品', '2021-05-09 13:34:27', NULL, 1);
INSERT INTO `t_log` VALUES (246, '修改商品', '2021-05-09 13:34:42', NULL, 1);
INSERT INTO `t_log` VALUES (247, '修改商品', '2021-05-09 13:35:07', NULL, 1);
INSERT INTO `t_log` VALUES (248, '修改商品', '2021-05-09 13:35:58', NULL, 1);
INSERT INTO `t_log` VALUES (249, '修改商品', '2021-05-09 13:36:28', NULL, 1);
INSERT INTO `t_log` VALUES (250, '新增商品', '2021-05-09 13:37:11', NULL, 1);
INSERT INTO `t_log` VALUES (251, '新增商品', '2021-05-09 13:37:37', NULL, 1);
INSERT INTO `t_log` VALUES (252, '新增商品', '2021-05-09 13:38:23', NULL, 1);
INSERT INTO `t_log` VALUES (253, '新增商品', '2021-05-09 13:38:54', NULL, 1);
INSERT INTO `t_log` VALUES (254, '新增商品', '2021-05-09 13:39:50', NULL, 1);
INSERT INTO `t_log` VALUES (255, '新增商品', '2021-05-09 13:40:18', NULL, 1);
INSERT INTO `t_log` VALUES (256, '新增商品', '2021-05-09 13:41:37', NULL, 1);
INSERT INTO `t_log` VALUES (257, '新增商品', '2021-05-09 13:42:03', NULL, 1);
INSERT INTO `t_log` VALUES (258, '修改客房', '2021-05-09 13:42:30', NULL, 1);
INSERT INTO `t_log` VALUES (259, '修改客房', '2021-05-09 13:42:51', NULL, 1);
INSERT INTO `t_log` VALUES (260, '修改客房', '2021-05-09 13:43:08', NULL, 1);
INSERT INTO `t_log` VALUES (261, '修改客房', '2021-05-09 13:43:25', NULL, 1);
INSERT INTO `t_log` VALUES (262, '修改客房', '2021-05-09 13:43:45', NULL, 1);
INSERT INTO `t_log` VALUES (263, '修改客房', '2021-05-09 13:43:58', NULL, 1);
INSERT INTO `t_log` VALUES (264, '修改客房', '2021-05-09 13:44:15', NULL, 1);
INSERT INTO `t_log` VALUES (265, '修改客房', '2021-05-09 13:44:38', NULL, 1);
INSERT INTO `t_log` VALUES (266, '修改客房', '2021-05-09 13:44:56', NULL, 1);
INSERT INTO `t_log` VALUES (267, '修改客房', '2021-05-09 13:45:12', NULL, 1);
INSERT INTO `t_log` VALUES (268, '修改客房', '2021-05-09 13:45:30', NULL, 1);
INSERT INTO `t_log` VALUES (269, '修改客房', '2021-05-09 13:45:46', NULL, 1);
INSERT INTO `t_log` VALUES (270, '修改客房', '2021-05-09 13:45:58', NULL, 1);
INSERT INTO `t_log` VALUES (271, '修改客房', '2021-05-09 13:46:09', NULL, 1);
INSERT INTO `t_log` VALUES (272, '修改客房', '2021-05-09 13:46:17', NULL, 1);
INSERT INTO `t_log` VALUES (273, '修改客房', '2021-05-09 13:46:27', NULL, 1);
INSERT INTO `t_log` VALUES (274, '修改客房', '2021-05-09 13:46:43', NULL, 1);
INSERT INTO `t_log` VALUES (275, '修改客房', '2021-05-09 13:46:57', NULL, 1);
INSERT INTO `t_log` VALUES (276, '修改客房', '2021-05-09 13:47:11', NULL, 1);
INSERT INTO `t_log` VALUES (277, '取消预定', '2021-05-09 13:58:23', NULL, 1);
INSERT INTO `t_log` VALUES (278, '修改客房', '2021-05-09 14:11:57', NULL, 1);
INSERT INTO `t_log` VALUES (279, '修改商品类型', '2021-05-09 14:13:20', NULL, 1);
INSERT INTO `t_log` VALUES (280, '办理入住', '2021-05-09 14:17:28', NULL, 1);
INSERT INTO `t_log` VALUES (281, '办理入住', '2021-05-09 14:18:04', NULL, 1);
INSERT INTO `t_log` VALUES (282, '办理入住', '2021-05-09 14:24:14', NULL, 1);
COMMIT;

-- ----------------------------
-- Table structure for t_manage
-- ----------------------------
DROP TABLE IF EXISTS `t_manage`;
CREATE TABLE `t_manage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createTime` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `idCard` varchar(255) DEFAULT NULL,
  `isDelete` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `passWord` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `sex` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_manage
-- ----------------------------
BEGIN;
INSERT INTO `t_manage` VALUES (1, '2016-10-15 08:03:04', '122@qq.com', '32012345674252', 2, 'admin', 'admin', '15812345697', 1, 1);
INSERT INTO `t_manage` VALUES (2, '2016-10-12 10:00:26', '122@qq.com', '32012345674252', 2, 'admin1', 'admin', '15812345697', 1, 0);
INSERT INTO `t_manage` VALUES (3, '2016-10-13 10:00:26', '122@qq.com', '32012345674252', 2, 'admin2', 'admin', '15812345697', 2, 0);
INSERT INTO `t_manage` VALUES (4, '2016-10-13 10:00:26', '122@qq.com', '32012345674252', 2, 'admin3', 'admin', '15812345697', 1, 0);
INSERT INTO `t_manage` VALUES (5, '2016-10-14 10:00:26', '122@qq.com', '32012345674252', 2, 'admin4', 'admin', '15812345697', 1, 0);
INSERT INTO `t_manage` VALUES (6, '2016-10-14 10:03:36', '122@qq.com', '32012345674252', 2, 'admin5', 'admin', '15812345612', 2, 0);
INSERT INTO `t_manage` VALUES (7, '2016-10-11 10:00:26', '122@qq.com', '32012345674252', 2, 'admin6', 'admin', '15812345697', 1, 0);
INSERT INTO `t_manage` VALUES (8, '2016-10-13 10:00:26', '122@qq.com', '32012345674252', 2, 'admin7', 'admin', '15812345697', 1, 0);
INSERT INTO `t_manage` VALUES (9, '2016-10-15 19:54:14', '12312@qq.com', '32234242423423432', 2, 'admin10', '123', '13212321123', 1, 0);
INSERT INTO `t_manage` VALUES (10, '2016-10-15 19:55:23', '1232123@11.com', '12322432432423432', 2, 'admin10', '123', '123123123', 1, 0);
INSERT INTO `t_manage` VALUES (11, '2016-10-15 19:55:54', '122906@qq.com', '12322432432423432', 2, 'admin10', '123', '13212321123', 1, 0);
INSERT INTO `t_manage` VALUES (12, '2016-10-15 19:57:09', '122906@qq.com', '32234242423423432', 2, 'admin12123', 'admin213', '13212312312', 2, 0);
INSERT INTO `t_manage` VALUES (13, '2016-10-15 19:59:03', '1232123@11.com', '320321312123212312', 2, 'admin12123', '112121', '13212321123', 1, 0);
INSERT INTO `t_manage` VALUES (14, '2016-10-15 20:05:15', '1232123@11.com', '320321312123212312', 2, 'admin10', '112121', '123123123', 2, 0);
INSERT INTO `t_manage` VALUES (15, '2016-10-15 20:08:03', '122906@qq.com', '12322432432423432', 2, 'admin12123', '112121', '13212312312', 2, 0);
INSERT INTO `t_manage` VALUES (16, '2016-10-15 20:08:34', '1232123@11.com', '320321312123212312', 2, 'admin112', '112121', '13212321123', 2, 0);
INSERT INTO `t_manage` VALUES (17, '2016-10-15 23:59:48', '122906@qq.com', '320789456125576354', 2, '12312', '123', '13888888888', 2, 0);
INSERT INTO `t_manage` VALUES (18, '2016-11-06 20:31:02', '1232123@11.com', '12322432432423432', 2, '测试7', '123', '13212312312', 2, 0);
INSERT INTO `t_manage` VALUES (19, '2016-11-06 20:45:48', '12312@qq.com', '320321312123212312', 2, 'admin8', '123', '13212321123', 1, 0);
COMMIT;

-- ----------------------------
-- Table structure for t_mistake
-- ----------------------------
DROP TABLE IF EXISTS `t_mistake`;
CREATE TABLE `t_mistake` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detail` varchar(255) DEFAULT NULL,
  `isRepair` int(11) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_mistake
-- ----------------------------
BEGIN;
INSERT INTO `t_mistake` VALUES (1, '暂无', 0, '', '下水道堵塞');
INSERT INTO `t_mistake` VALUES (2, '暂无', 0, '', '热水器故障');
INSERT INTO `t_mistake` VALUES (3, '暂无', 0, '', '床故障');
INSERT INTO `t_mistake` VALUES (4, '暂无', 0, '', '空调故障');
INSERT INTO `t_mistake` VALUES (7, '暂无', 0, '', '遥控器丢失');
INSERT INTO `t_mistake` VALUES (8, '就是坏了呗', 0, '', '东西坏了');
COMMIT;

-- ----------------------------
-- Table structure for t_need
-- ----------------------------
DROP TABLE IF EXISTS `t_need`;
CREATE TABLE `t_need` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detail` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `type` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_need
-- ----------------------------
BEGIN;
INSERT INTO `t_need` VALUES (1, '暂无', '', '加床');
INSERT INTO `t_need` VALUES (2, '暂无', '', '更换被褥被套');
INSERT INTO `t_need` VALUES (4, '暂无', '', '其他');
INSERT INTO `t_need` VALUES (5, '暂无', '', '添加拖鞋');
COMMIT;

-- ----------------------------
-- Table structure for t_room
-- ----------------------------
DROP TABLE IF EXISTS `t_room`;
CREATE TABLE `t_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `isLive` int(11) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `roomName` varchar(255) DEFAULT NULL,
  `room_cat_id` int(11) DEFAULT NULL,
  `floor` int(11) NOT NULL,
  `isClean` int(11) NOT NULL DEFAULT '0',
  `isPay` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_b5fuerjpm3v5514otxl6a7uxf` (`room_cat_id`),
  CONSTRAINT `FK_b5fuerjpm3v5514otxl6a7uxf` FOREIGN KEY (`room_cat_id`) REFERENCES `t_room_cat` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_room
-- ----------------------------
BEGIN;
INSERT INTO `t_room` VALUES (1, '\\upload\\58793a40b08911eb6673577612501f991d951b067c5b6ef7b6b225a6662cb786.jpeg', 1, '杭州溪上云间酒店隐逸在国家5A级景区西溪国家湿地公园内，酒店占地2400平方米，树木与水的覆盖率高达95%，是一个生态氧吧。酒店距离西溪湿地北门约1公里，距离西湖风景区约11公里，出行便捷。酒店以苏轼的“人生十六大乐事”为文化内引，规划出【行舟】、【闲行】、【知音】、【茗香】四个主题住宿体验区，共有二十余间亲水客房。同时酒店还配套有【时节】餐厅、【夜话】会议室、【午倦】庭院书屋休闲配套功能区，构建起一副完整的溪上云间享乐之旅。', '1001', 1, 1, 0, 1);
INSERT INTO `t_room` VALUES (2, '\\upload\\6ee9b430b08911eb6673577612501f995d904761bd061718a85893ba33f6245b.jpeg', 1, '杭州溪上云间酒店隐逸在国家5A级景区西溪国家湿地公园内，酒店占地2400平方米，树木与水的覆盖率高达95%，是一个生态氧吧。酒店距离西溪湿地北门约1公里，距离西湖风景区约11公里，出行便捷。酒店以苏轼的“人生十六大乐事”为文化内引，规划出【行舟】、【闲行】、【知音】、【茗香】四个主题住宿体验区，共有二十余间亲水客房。同时酒店还配套有【时节】餐厅、【夜话】会议室、【午倦】庭院书屋休闲配套功能区，构建起一副完整的溪上云间享乐之旅。', '1002', 1, 1, 0, 1);
INSERT INTO `t_room` VALUES (9, '\\upload\\794c3e20b08911eb6673577612501f9905e00a9e832e29488d73dc2dcc1c1d6c.jpg', 1, '杭州溪上云间酒店隐逸在国家5A级景区西溪国家湿地公园内，酒店占地2400平方米，树木与水的覆盖率高达95%，是一个生态氧吧。酒店距离西溪湿地北门约1公里，距离西湖风景区约11公里，出行便捷。酒店以苏轼的“人生十六大乐事”为文化内引，规划出【行舟】、【闲行】、【知音】、【茗香】四个主题住宿体验区，共有二十余间亲水客房。同时酒店还配套有【时节】餐厅、【夜话】会议室、【午倦】庭院书屋休闲配套功能区，构建起一副完整的溪上云间享乐之旅。', '1006', 3, 1, 0, 1);
INSERT INTO `t_room` VALUES (11, '\\upload\\852d78d0b08911eb6673577612501f997b9a6b1376f349988fb44a19664a1430.jpeg', 1, '杭州溪上云间酒店隐逸在国家5A级景区西溪国家湿地公园内，酒店占地2400平方米，树木与水的覆盖率高达95%，是一个生态氧吧。酒店距离西溪湿地北门约1公里，距离西湖风景区约11公里，出行便捷。酒店以苏轼的“人生十六大乐事”为文化内引，规划出【行舟】、【闲行】、【知音】、【茗香】四个主题住宿体验区，共有二十余间亲水客房。同时酒店还配套有【时节】餐厅、【夜话】会议室、【午倦】庭院书屋休闲配套功能区，构建起一副完整的溪上云间享乐之旅。', '1007', 3, 1, 0, 1);
INSERT INTO `t_room` VALUES (12, '\\upload\\8d1bce70b08911eb6673577612501f9941ac7aef6535f65c349236b3f6f132a7.jpeg', 1, '杭州溪上云间酒店隐逸在国家5A级景区西溪国家湿地公园内，酒店占地2400平方米，树木与水的覆盖率高达95%，是一个生态氧吧。酒店距离西溪湿地北门约1公里，距离西湖风景区约11公里，出行便捷。酒店以苏轼的“人生十六大乐事”为文化内引，规划出【行舟】、【闲行】、【知音】、【茗香】四个主题住宿体验区，共有二十余间亲水客房。同时酒店还配套有【时节】餐厅、【夜话】会议室、【午倦】庭院书屋休闲配套功能区，构建起一副完整的溪上云间享乐之旅。', '1008', 4, 1, 0, 0);
INSERT INTO `t_room` VALUES (13, '\\upload\\96f5a060b08911eb6673577612501f99224e7433237e026f456847440f378636.jpeg', 1, '杭州溪上云间酒店隐逸在国家5A级景区西溪国家湿地公园内，酒店占地2400平方米，树木与水的覆盖率高达95%，是一个生态氧吧。酒店距离西溪湿地北门约1公里，距离西湖风景区约11公里，出行便捷。酒店以苏轼的“人生十六大乐事”为文化内引，规划出【行舟】、【闲行】、【知音】、【茗香】四个主题住宿体验区，共有二十余间亲水客房。同时酒店还配套有【时节】餐厅、【夜话】会议室、【午倦】庭院书屋休闲配套功能区，构建起一副完整的溪上云间享乐之旅。', '1009', 4, 1, 0, 1);
INSERT INTO `t_room` VALUES (14, '\\upload\\a4c9f880b08911eb6673577612501f99f8ddf0237382c859938c0f043f8943e4.jpeg', 1, '杭州溪上云间酒店隐逸在国家5A级景区西溪国家湿地公园内，酒店占地2400平方米，树木与水的覆盖率高达95%，是一个生态氧吧。酒店距离西溪湿地北门约1公里，距离西湖风景区约11公里，出行便捷。酒店以苏轼的“人生十六大乐事”为文化内引，规划出【行舟】、【闲行】、【知音】、【茗香】四个主题住宿体验区，共有二十余间亲水客房。同时酒店还配套有【时节】餐厅、【夜话】会议室、【午倦】庭院书屋休闲配套功能区，构建起一副完整的溪上云间享乐之旅。', '1010', 5, 1, 0, 1);
INSERT INTO `t_room` VALUES (19, '\\upload\\af30ef40b08911eb6673577612501f99e0d97af1fdf4826773c626e8e11e2a69.jpeg', 1, '杭州溪上云间酒店隐逸在国家5A级景区西溪国家湿地公园内，酒店占地2400平方米，树木与水的覆盖率高达95%，是一个生态氧吧。酒店距离西溪湿地北门约1公里，距离西湖风景区约11公里，出行便捷。酒店以苏轼的“人生十六大乐事”为文化内引，规划出【行舟】、【闲行】、【知音】、【茗香】四个主题住宿体验区，共有二十余间亲水客房。同时酒店还配套有【时节】餐厅、【夜话】会议室、【午倦】庭院书屋休闲配套功能区，构建起一副完整的溪上云间享乐之旅。', '1011', 5, 1, 0, 0);
INSERT INTO `t_room` VALUES (20, '\\upload\\b921cba0b08911eb6673577612501f99bedbfa2308f6fa180e8f3632221d6b5e.jpeg', 1, '杭州溪上云间酒店隐逸在国家5A级景区西溪国家湿地公园内，酒店占地2400平方米，树木与水的覆盖率高达95%，是一个生态氧吧。酒店距离西溪湿地北门约1公里，距离西湖风景区约11公里，出行便捷。酒店以苏轼的“人生十六大乐事”为文化内引，规划出【行舟】、【闲行】、【知音】、【茗香】四个主题住宿体验区，共有二十余间亲水客房。同时酒店还配套有【时节】餐厅、【夜话】会议室、【午倦】庭院书屋休闲配套功能区，构建起一副完整的溪上云间享乐之旅。', '1012', 6, 1, 0, 0);
INSERT INTO `t_room` VALUES (21, '\\upload\\c3b7c1a0b08911eb6673577612501f99a71ddf18e3a7a574e923cf6060666024.jpeg', 1, '杭州溪上云间酒店隐逸在国家5A级景区西溪国家湿地公园内，酒店占地2400平方米，树木与水的覆盖率高达95%，是一个生态氧吧。酒店距离西溪湿地北门约1公里，距离西湖风景区约11公里，出行便捷。酒店以苏轼的“人生十六大乐事”为文化内引，规划出【行舟】、【闲行】、【知音】、【茗香】四个主题住宿体验区，共有二十余间亲水客房。同时酒店还配套有【时节】餐厅、【夜话】会议室、【午倦】庭院书屋休闲配套功能区，构建起一副完整的溪上云间享乐之旅。', '1013', 6, 1, 0, 0);
INSERT INTO `t_room` VALUES (22, '\\upload\\cd53ee50b08911eb6673577612501f99f6fb0f0961cb5398dcf61db4bdfe91db1099762.jpeg', 1, '杭州溪上云间酒店隐逸在国家5A级景区西溪国家湿地公园内，酒店占地2400平方米，树木与水的覆盖率高达95%，是一个生态氧吧。酒店距离西溪湿地北门约1公里，距离西湖风景区约11公里，出行便捷。酒店以苏轼的“人生十六大乐事”为文化内引，规划出【行舟】、【闲行】、【知音】、【茗香】四个主题住宿体验区，共有二十余间亲水客房。同时酒店还配套有【时节】餐厅、【夜话】会议室、【午倦】庭院书屋休闲配套功能区，构建起一副完整的溪上云间享乐之旅。', '1014', 7, 1, 0, 0);
INSERT INTO `t_room` VALUES (23, '\\upload\\d42191b0b08911eb6673577612501f994d1b7ae5bf5a213b7da5c800dff9b8903502647.jpeg', 1, '杭州溪上云间酒店隐逸在国家5A级景区西溪国家湿地公园内，酒店占地2400平方米，树木与水的覆盖率高达95%，是一个生态氧吧。酒店距离西溪湿地北门约1公里，距离西湖风景区约11公里，出行便捷。酒店以苏轼的“人生十六大乐事”为文化内引，规划出【行舟】、【闲行】、【知音】、【茗香】四个主题住宿体验区，共有二十余间亲水客房。同时酒店还配套有【时节】餐厅、【夜话】会议室、【午倦】庭院书屋休闲配套功能区，构建起一副完整的溪上云间享乐之旅。', '1015', 7, 1, 0, 0);
INSERT INTO `t_room` VALUES (24, '\\upload\\daa9c7a0b08911eb6673577612501f99872d045756a9723882eae3a6218e7a7469090.jpeg', 1, '杭州溪上云间酒店隐逸在国家5A级景区西溪国家湿地公园内，酒店占地2400平方米，树木与水的覆盖率高达95%，是一个生态氧吧。酒店距离西溪湿地北门约1公里，距离西湖风景区约11公里，出行便捷。酒店以苏轼的“人生十六大乐事”为文化内引，规划出【行舟】、【闲行】、【知音】、【茗香】四个主题住宿体验区，共有二十余间亲水客房。同时酒店还配套有【时节】餐厅、【夜话】会议室、【午倦】庭院书屋休闲配套功能区，构建起一副完整的溪上云间享乐之旅。', '1016', 8, 1, 0, 0);
INSERT INTO `t_room` VALUES (25, '\\upload\\df84c2c0b08911eb6673577612501f9905414ac408185441b8fa1de3200ee70f151574.jpeg', 1, '杭州溪上云间酒店隐逸在国家5A级景区西溪国家湿地公园内，酒店占地2400平方米，树木与水的覆盖率高达95%，是一个生态氧吧。酒店距离西溪湿地北门约1公里，距离西湖风景区约11公里，出行便捷。酒店以苏轼的“人生十六大乐事”为文化内引，规划出【行舟】、【闲行】、【知音】、【茗香】四个主题住宿体验区，共有二十余间亲水客房。同时酒店还配套有【时节】餐厅、【夜话】会议室、【午倦】庭院书屋休闲配套功能区，构建起一副完整的溪上云间享乐之旅。', '1017', 8, 1, 0, 1);
INSERT INTO `t_room` VALUES (26, '\\upload\\e587ea30b08911eb6673577612501f9923299e74b34d6f9f472029fce87affd7755654.jpeg', 1, '杭州溪上云间酒店隐逸在国家5A级景区西溪国家湿地公园内，酒店占地2400平方米，树木与水的覆盖率高达95%，是一个生态氧吧。酒店距离西溪湿地北门约1公里，距离西湖风景区约11公里，出行便捷。酒店以苏轼的“人生十六大乐事”为文化内引，规划出【行舟】、【闲行】、【知音】、【茗香】四个主题住宿体验区，共有二十余间亲水客房。同时酒店还配套有【时节】餐厅、【夜话】会议室、【午倦】庭院书屋休闲配套功能区，构建起一副完整的溪上云间享乐之旅。', '1018', 2, 1, 0, 0);
INSERT INTO `t_room` VALUES (31, '\\upload\\eeeb53a0b08911eb6673577612501f992654409724803084160b8b169e78b87454312.jpeg', 1, '杭州溪上云间酒店隐逸在国家5A级景区西溪国家湿地公园内，酒店占地2400平方米，树木与水的覆盖率高达95%，是一个生态氧吧。酒店距离西溪湿地北门约1公里，距离西湖风景区约11公里，出行便捷。酒店以苏轼的“人生十六大乐事”为文化内引，规划出【行舟】、【闲行】、【知音】、【茗香】四个主题住宿体验区，共有二十余间亲水客房。同时酒店还配套有【时节】餐厅、【夜话】会议室、【午倦】庭院书屋休闲配套功能区，构建起一副完整的溪上云间享乐之旅。', '1023', 1, 1, 0, 0);
INSERT INTO `t_room` VALUES (32, '\\upload\\f77b1960b08911eb6673577612501f99bc71570d19a1e8480475b7b596da4a2d6024371.jpeg', 1, '杭州溪上云间酒店隐逸在国家5A级景区西溪国家湿地公园内，酒店占地2400平方米，树木与水的覆盖率高达95%，是一个生态氧吧。酒店距离西溪湿地北门约1公里，距离西湖风景区约11公里，出行便捷。酒店以苏轼的“人生十六大乐事”为文化内引，规划出【行舟】、【闲行】、【知音】、【茗香】四个主题住宿体验区，共有二十余间亲水客房。同时酒店还配套有【时节】餐厅、【夜话】会议室、【午倦】庭院书屋休闲配套功能区，构建起一副完整的溪上云间享乐之旅。', '1024', 2, 1, 0, 0);
INSERT INTO `t_room` VALUES (33, '\\upload\\ffd5ec70b08911eb6673577612501f99c235137567dd6ebb3119401e59f1941d1280829.jpeg', 1, '杭州溪上云间酒店隐逸在国家5A级景区西溪国家湿地公园内，酒店占地2400平方米，树木与水的覆盖率高达95%，是一个生态氧吧。酒店距离西溪湿地北门约1公里，距离西湖风景区约11公里，出行便捷。酒店以苏轼的“人生十六大乐事”为文化内引，规划出【行舟】、【闲行】、【知音】、【茗香】四个主题住宿体验区，共有二十余间亲水客房。同时酒店还配套有【时节】餐厅、【夜话】会议室、【午倦】庭院书屋休闲配套功能区，构建起一副完整的溪上云间享乐之旅。', '1028', 3, 1, 0, 1);
COMMIT;

-- ----------------------------
-- Table structure for t_room_cat
-- ----------------------------
DROP TABLE IF EXISTS `t_room_cat`;
CREATE TABLE `t_room_cat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `num` int(11) NOT NULL,
  `price` double NOT NULL,
  `type` int(11) NOT NULL,
  `roomCatName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_room_cat
-- ----------------------------
BEGIN;
INSERT INTO `t_room_cat` VALUES (1, '\\upload\\4431c230b08611eb6673577612501f9903e48e7c3e31289ff7eaa7ca51208dbf429741.jpeg', 9, 120, 1, '特价房');
INSERT INTO `t_room_cat` VALUES (2, '\\upload\\47f6e080b08611eb6673577612501f994d1b7ae5bf5a213b7da5c800dff9b8903502647.jpeg', 8, 150, 2, '双人床');
INSERT INTO `t_room_cat` VALUES (3, '\\upload\\4b6fb390b08611eb6673577612501f99872d045756a9723882eae3a6218e7a7469090.jpeg', 14, 180, 3, '样板房');
INSERT INTO `t_room_cat` VALUES (4, '\\upload\\4f7d9ab0b08611eb6673577612501f9905414ac408185441b8fa1de3200ee70f151574.jpeg', 13, 160, 4, '标准间');
INSERT INTO `t_room_cat` VALUES (5, '\\upload\\534b92a0b08611eb6673577612501f9923299e74b34d6f9f472029fce87affd7755654.jpeg', 11, 200, 5, '大床房');
INSERT INTO `t_room_cat` VALUES (6, '\\upload\\5d5cef50b08611eb6673577612501f99f6fb0f0961cb5398dcf61db4bdfe91db1099762.jpeg', 10, 300, 6, '总统套间');
INSERT INTO `t_room_cat` VALUES (7, '\\upload\\6161d5c0b08611eb6673577612501f99edc7cc66fc9eef4c5c714d986a0d5d391156117.jpeg', 12, 60, 7, '钟点房');
INSERT INTO `t_room_cat` VALUES (8, '\\upload\\65762580b08611eb6673577612501f99eb6529356885c52458854e7d731492ae834155.jpeg', 11, 150, 8, '情侣套间');
COMMIT;

-- ----------------------------
-- Table structure for t_suggest
-- ----------------------------
DROP TABLE IF EXISTS `t_suggest`;
CREATE TABLE `t_suggest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_43c8329v3b20ecp7no9do4gbu` (`user_id`),
  CONSTRAINT `FK_43c8329v3b20ecp7no9do4gbu` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_suggest
-- ----------------------------
BEGIN;
INSERT INTO `t_suggest` VALUES (1, '测试1', '2016-10-16 21:04:32', 2);
INSERT INTO `t_suggest` VALUES (2, '测试2', '2016-10-16 21:07:29', 2);
INSERT INTO `t_suggest` VALUES (3, '测试3', '2016-10-16 21:08:18', 2);
INSERT INTO `t_suggest` VALUES (4, '测试4', '2016-10-16 21:10:00', 2);
INSERT INTO `t_suggest` VALUES (5, 'test123', '2016-10-16 22:11:05', 2);
INSERT INTO `t_suggest` VALUES (6, '你们这个酒店需要改革啊', '2016-11-06 20:49:44', 11);
COMMIT;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createTime` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `idCard` varchar(255) DEFAULT NULL,
  `isDelete` int(11) NOT NULL,
  `isVip` int(11) NOT NULL,
  `passWord` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `sex` int(11) NOT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `cardType` int(11) NOT NULL,
  `jifen` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
BEGIN;
INSERT INTO `t_user` VALUES (1, '2016-10-14 21:49:43', '1232123@11.com', '320321312123212312', 2, 0, '123', '13512456789', 1, 'zhangsan', 0, 10);
INSERT INTO `t_user` VALUES (2, '2016-10-14 21:50:07', '1229012@qq.com', '3241312354355234354', 2, 1, '123', '13212321123', 1, 'zs', 0, 200);
INSERT INTO `t_user` VALUES (3, '2016-10-14 21:50:31', '11@11.com', '32121312312', 1, 0, '123', '13212312312', 2, 'qwer', 0, 10);
INSERT INTO `t_user` VALUES (4, '2016-10-14 21:49:43', '1232123@11.com', '320321312123212312', 2, 0, '123', '13512456789', 1, 'zhangsan12', 0, 10);
INSERT INTO `t_user` VALUES (5, '2016-10-14 21:50:07', '1229012@qq.com', '3241312354355234354', 2, 1, '123', '13212321123', 1, 'zs12', 0, 200);
INSERT INTO `t_user` VALUES (6, '2016-10-14 21:50:31', '11@11.com', '32121312312', 1, 0, '123', '13212312312', 2, 'qwer12', 0, 10);
INSERT INTO `t_user` VALUES (7, '2016-10-15 08:31:26', '1232123@11.com', '3241312354355234354', 2, 0, '123', '1354678954', 1, 'haha', 0, 10);
INSERT INTO `t_user` VALUES (8, '2016-10-18 21:34:10', '122906@qq.com', '320321312123212312', 2, 0, '123', '13612345656', 2, 'huangjinhui', 1, 0);
INSERT INTO `t_user` VALUES (9, '2016-10-22 22:05:52', '123321312@qq.com', '3241312354355234354', 2, 0, '123', '13912668376', 2, 'linxiaoqian', 0, 0);
INSERT INTO `t_user` VALUES (10, '2016-10-26 18:47:05', '12222@qq.com', '320321312123212312', 2, 0, '123', '13912668376', 2, 'xiaoqian', 0, 0);
INSERT INTO `t_user` VALUES (11, '2016-11-06 20:44:42', '123321312@qq.com', '320321312123212312', 2, 0, '123', '13912668376', 1, 'test8', 1, 0);
INSERT INTO `t_user` VALUES (12, '2021-05-09 10:26:09', 'm18888106873@163.com', '321322199401256658', 2, 0, 'Ys20140913', '15618622161', 1, 'chao313', 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for t_user_item
-- ----------------------------
DROP TABLE IF EXISTS `t_user_item`;
CREATE TABLE `t_user_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_1mqc67vvnrl61nf6t41eh20ur` (`item_id`),
  KEY `FK_9gb852iwi3l41a3u9tsmm6fp3` (`user_id`),
  CONSTRAINT `FK_1mqc67vvnrl61nf6t41eh20ur` FOREIGN KEY (`item_id`) REFERENCES `t_item` (`id`),
  CONSTRAINT `FK_9gb852iwi3l41a3u9tsmm6fp3` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_item
-- ----------------------------
BEGIN;
INSERT INTO `t_user_item` VALUES (1, 1, 1);
INSERT INTO `t_user_item` VALUES (2, 2, 2);
INSERT INTO `t_user_item` VALUES (5, 3, 5);
INSERT INTO `t_user_item` VALUES (6, 2, 4);
INSERT INTO `t_user_item` VALUES (7, 4, 10);
INSERT INTO `t_user_item` VALUES (8, 6, 11);
INSERT INTO `t_user_item` VALUES (9, 5, 2);
INSERT INTO `t_user_item` VALUES (10, 1, 12);
INSERT INTO `t_user_item` VALUES (11, 6, 12);
INSERT INTO `t_user_item` VALUES (12, 4, 12);
INSERT INTO `t_user_item` VALUES (13, 1, 12);
INSERT INTO `t_user_item` VALUES (14, 1, 12);
COMMIT;

-- ----------------------------
-- Table structure for t_user_room
-- ----------------------------
DROP TABLE IF EXISTS `t_user_room`;
CREATE TABLE `t_user_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_mcpajqwffxh1sgw5sutfsdip5` (`room_id`),
  KEY `FK_1d67bfqe5llnofppcdf1epcwi` (`user_id`),
  CONSTRAINT `FK_1d67bfqe5llnofppcdf1epcwi` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`),
  CONSTRAINT `FK_mcpajqwffxh1sgw5sutfsdip5` FOREIGN KEY (`room_id`) REFERENCES `t_room` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_room
-- ----------------------------
BEGIN;
INSERT INTO `t_user_room` VALUES (5, 9, 3);
INSERT INTO `t_user_room` VALUES (6, 11, 5);
INSERT INTO `t_user_room` VALUES (7, 12, 6);
INSERT INTO `t_user_room` VALUES (8, 14, 7);
INSERT INTO `t_user_room` VALUES (9, 25, 9);
INSERT INTO `t_user_room` VALUES (17, 13, 10);
INSERT INTO `t_user_room` VALUES (18, 33, 11);
INSERT INTO `t_user_room` VALUES (19, 2, 12);
INSERT INTO `t_user_room` VALUES (20, 1, 1);
INSERT INTO `t_user_room` VALUES (21, 13, 4);
INSERT INTO `t_user_room` VALUES (22, 1, 12);
INSERT INTO `t_user_room` VALUES (23, 1, 12);
INSERT INTO `t_user_room` VALUES (24, 2, 12);
INSERT INTO `t_user_room` VALUES (25, 1, 12);
INSERT INTO `t_user_room` VALUES (26, 1, 12);
INSERT INTO `t_user_room` VALUES (27, 1, 12);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
