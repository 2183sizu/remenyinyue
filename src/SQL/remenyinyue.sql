/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50710
 Source Host           : localhost:3306
 Source Schema         : remenyinyue

 Target Server Type    : MySQL
 Target Server Version : 50710
 File Encoding         : 65001

 Date: 27/02/2019 11:25:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for adminxinxi
-- ----------------------------
DROP TABLE IF EXISTS `adminxinxi`;
CREATE TABLE `adminxinxi`  (
  `admin` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `Password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of adminxinxi
-- ----------------------------
INSERT INTO `adminxinxi` VALUES ('123456', '123456');

-- ----------------------------
-- Table structure for musictype
-- ----------------------------
DROP TABLE IF EXISTS `musictype`;
CREATE TABLE `musictype`  (
  `TypeId` int(11) NOT NULL AUTO_INCREMENT COMMENT '类型ID',
  `Typename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '歌曲类型',
  PRIMARY KEY (`TypeId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of musictype
-- ----------------------------
INSERT INTO `musictype` VALUES (1, '古风');
INSERT INTO `musictype` VALUES (2, '怀旧');
INSERT INTO `musictype` VALUES (3, '流行');
INSERT INTO `musictype` VALUES (4, '摇滚');
INSERT INTO `musictype` VALUES (5, '治愈');

-- ----------------------------
-- Table structure for musicxinxi
-- ----------------------------
DROP TABLE IF EXISTS `musicxinxi`;
CREATE TABLE `musicxinxi`  (
  `MusicId` int(11) NOT NULL AUTO_INCREMENT COMMENT '歌曲ID',
  `MusicName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '歌曲名字',
  `Singer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '演唱者',
  `MusicUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '歌曲路径',
  `TypeId` int(11) NOT NULL COMMENT '类型Id',
  PRIMARY KEY (`MusicId`) USING BTREE,
  INDEX `TypeId`(`TypeId`) USING BTREE,
  CONSTRAINT `musicxinxi_ibfk_1` FOREIGN KEY (`TypeId`) REFERENCES `musictype` (`TypeId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of musicxinxi
-- ----------------------------
INSERT INTO `musicxinxi` VALUES (1, '牵丝戏', 'Aki阿杰,银临', 'Aki阿杰,银临 - 牵丝戏.mp3', 1);
INSERT INTO `musicxinxi` VALUES (2, '眉间雪', 'HITA', 'HITA - 眉间雪.mp3', 1);
INSERT INTO `musicxinxi` VALUES (3, '故梦', '橙翼', '橙翼 - 故梦.mp3', 1);
INSERT INTO `musicxinxi` VALUES (4, '眉心妆', '甘璐', '甘璐 - 眉心妆.mp3', 1);
INSERT INTO `musicxinxi` VALUES (5, '半壶纱', '刘珂矣', '刘珂矣 - 半壶纱.mp3', 1);
INSERT INTO `musicxinxi` VALUES (6, '可念不可说', '伦桑,萧忆情Alex,满汉全席 ', '伦桑,萧忆情Alex,满汉全席 - 可念不可说.mp3', 1);
INSERT INTO `musicxinxi` VALUES (7, '花间事', '慕寒', '慕寒 - 花间事.mp3', 1);
INSERT INTO `musicxinxi` VALUES (8, '唐人', '五音Jw ', '五音Jw - 唐人.mp3', 1);
INSERT INTO `musicxinxi` VALUES (9, '萧忆情Alex,伦桑 ', '红颜旧', '萧忆情Alex,伦桑 - 红颜旧.mp3', 1);
INSERT INTO `musicxinxi` VALUES (10, '醉雪', '无涯', '醉雪 - 无涯（TV size）.mp3', 1);
INSERT INTO `musicxinxi` VALUES (11, '我只在乎你', '邓丽君', '邓丽君 - 我只在乎你.ncm', 2);
INSERT INTO `musicxinxi` VALUES (12, '新鸳鸯蝴蝶梦', '黄安', '黄安 - 新鸳鸯蝴蝶梦.mp3', 2);
INSERT INTO `musicxinxi` VALUES (13, '军中绿花', '小曾', '小曾 - 军中绿花.mp3', 2);
INSERT INTO `musicxinxi` VALUES (14, '我相信', '杨培安', '杨培安 - 我相信.mp3', 2);
INSERT INTO `musicxinxi` VALUES (15, '心雨', '杨钰莹,毛宁', '杨钰莹,毛宁 - 心雨.mp3', 2);
INSERT INTO `musicxinxi` VALUES (16, '不老梦', '银临', '银临 - 不老梦.mp3', 2);
INSERT INTO `musicxinxi` VALUES (17, '认真地老去', '张希,曹方', '张希,曹方 - 认真地老去.mp3', 2);
INSERT INTO `musicxinxi` VALUES (18, '大海', '张雨生', '张雨生 - 大海.ncm', 2);
INSERT INTO `musicxinxi` VALUES (19, '飞云之下', '韩红,林俊杰', '韩红,林俊杰 - 飞云之下.mp3', 3);
INSERT INTO `musicxinxi` VALUES (20, '离开我你快乐吗', '虎二 ', '虎二 - 离开我你快乐吗.mp3', 3);
INSERT INTO `musicxinxi` VALUES (21, '出山', '花粥,胜娚（王胜男）', '花粥,胜娚（王胜男） - 出山.mp3', 3);
INSERT INTO `musicxinxi` VALUES (22, '默读', '任然', '任然 - 默读.mp3', 3);
INSERT INTO `musicxinxi` VALUES (23, '形容', '沈以诚', '沈以诚 - 形容.mp3', 3);
INSERT INTO `musicxinxi` VALUES (24, '恋曲2018', '王贰浪', '王贰浪 - 恋曲2018.mp3', 3);
INSERT INTO `musicxinxi` VALUES (25, '白羊', '徐秉龙,沈以诚 ', '徐秉龙,沈以诚 - 白羊.mp3', 3);
INSERT INTO `musicxinxi` VALUES (26, '光辉岁月', 'Beyond', 'Beyond - 光辉岁月.ncm', 4);
INSERT INTO `musicxinxi` VALUES (27, '爱的隧道', '汪峰', '汪峰 - 爱的隧道.mp3', 4);
INSERT INTO `musicxinxi` VALUES (28, '花火', '汪峰', '汪峰 - 花火.ncm', 4);
INSERT INTO `musicxinxi` VALUES (29, '迷鹿', '汪峰', '汪峰 - 迷鹿(Live) - live.mp3', 4);
INSERT INTO `musicxinxi` VALUES (30, '像梦一样自由', '汪峰', '汪峰 - 像梦一样自由.mp3', 4);
INSERT INTO `musicxinxi` VALUES (31, '永远的感动', '汪峰', '汪峰 - 永远的感动.mp3', 4);
INSERT INTO `musicxinxi` VALUES (32, '小半', '陈粒', '陈粒 - 小半.mp3', 5);
INSERT INTO `musicxinxi` VALUES (33, '我在黑暗中发现的一束光', '豆花', '豆花 - 我在黑暗中发现的一束光.mp3', 5);
INSERT INTO `musicxinxi` VALUES (34, '往往', '房东的猫', '房东的猫 - 往往.mp3', 5);
INSERT INTO `musicxinxi` VALUES (35, '纸短情长', '花粥', '花粥 - 纸短情长.mp3', 5);
INSERT INTO `musicxinxi` VALUES (36, '出山', '花粥,胜娚（王胜男）', '花粥,胜娚（王胜男） - 出山.mp3', 5);
INSERT INTO `musicxinxi` VALUES (37, '可能否', '木小雅', '木小雅 - 可能否.mp3', 5);
INSERT INTO `musicxinxi` VALUES (38, '度日', '唐宁', '唐宁 - 度日.mp3', 5);
INSERT INTO `musicxinxi` VALUES (39, '往后余生', '王贰浪', '王贰浪 - 往后余生.mp3', 5);
INSERT INTO `musicxinxi` VALUES (40, '理想', '赵雷', '赵雷 - 理想.mp3', 5);

-- ----------------------------
-- Table structure for mvxinxi
-- ----------------------------
DROP TABLE IF EXISTS `mvxinxi`;
CREATE TABLE `mvxinxi`  (
  `FengmianID` int(255) NOT NULL AUTO_INCREMENT COMMENT '封面ID',
  `FengmianUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '封面图片路径',
  `MVUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'MV路径',
  `MVtitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'MV标题',
  `MVtype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'MV分类',
  PRIMARY KEY (`FengmianID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mvxinxi
-- ----------------------------
INSERT INTO `mvxinxi` VALUES (1, 'asd', 'asd', 'asd', 'asd');

-- ----------------------------
-- Table structure for userxinxi
-- ----------------------------
DROP TABLE IF EXISTS `userxinxi`;
CREATE TABLE `userxinxi`  (
  `UserID` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `UserName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `Password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `Sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '性别',
  `Phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机号',
  `Address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地区',
  `Age` int(11) NOT NULL COMMENT '年龄',
  PRIMARY KEY (`UserID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userxinxi
-- ----------------------------
INSERT INTO `userxinxi` VALUES (1, 'admin', '123', '男', '12312312312', '北京', 1);

SET FOREIGN_KEY_CHECKS = 1;
