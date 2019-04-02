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

 Date: 02/04/2019 09:42:05
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
  `
PictureUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '歌曲封面',
  PRIMARY KEY (`MusicId`) USING BTREE,
  INDEX `TypeId`(`TypeId`) USING BTREE,
  CONSTRAINT `musicxinxi_ibfk_1` FOREIGN KEY (`TypeId`) REFERENCES `musictype` (`TypeId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of musicxinxi
-- ----------------------------
INSERT INTO `musicxinxi` VALUES (1, '牵丝戏', 'Aki阿杰,银临', 'qiansixi.mp3', 1, 'qiansixi.jpg');
INSERT INTO `musicxinxi` VALUES (2, '眉间雪', 'HITA', 'meijianxue.mp3', 1, '');
INSERT INTO `musicxinxi` VALUES (3, '故梦', '橙翼', 'gumeng.mp3', 1, '');
INSERT INTO `musicxinxi` VALUES (4, '眉心妆', '甘璐', 'meixinzhuang.mp3', 1, '');
INSERT INTO `musicxinxi` VALUES (5, '半壶纱', '刘珂矣', 'banhusha.mp3', 1, '');
INSERT INTO `musicxinxi` VALUES (6, '可念不可说', '伦桑,萧忆情Alex,满汉全席 ', 'kenianbukeshuo.mp3', 1, '');
INSERT INTO `musicxinxi` VALUES (8, '唐人', '五音Jw ', 'tangren.mp3', 1, '');
INSERT INTO `musicxinxi` VALUES (9, '萧忆情Alex,伦桑 ', '红颜旧', 'hongyanjiu.mp3', 1, '');
INSERT INTO `musicxinxi` VALUES (12, '新鸳鸯蝴蝶梦', '黄安', 'xinyuanyanghudiemeng.mp3', 2, 'xinyuanyanghudiemeng.jpg');
INSERT INTO `musicxinxi` VALUES (13, '军中绿花', '小曾', 'junzhonglvhua.mp3', 2, '');
INSERT INTO `musicxinxi` VALUES (14, '我相信', '杨培安', 'woxiangxin.mp3', 2, '');
INSERT INTO `musicxinxi` VALUES (15, '心雨', '杨钰莹,毛宁', 'xiaoyu.mp3', 2, '');
INSERT INTO `musicxinxi` VALUES (16, '不老梦', '银临', 'bulaomeng.mp3', 2, '');
INSERT INTO `musicxinxi` VALUES (17, '认真地老去', '张希,曹方', 'renzhendelaoqu.mp3', 2, '');
INSERT INTO `musicxinxi` VALUES (18, '大海', '张雨生', 'dahai.ncm', 2, '');
INSERT INTO `musicxinxi` VALUES (19, '飞云之下', '韩红,林俊杰', 'feiyunzhixia.mp3', 3, 'feiyunzhixia.jpg');
INSERT INTO `musicxinxi` VALUES (20, '离开我你快乐吗', '虎二 ', 'likaiwonikuailema.mp3', 3, '');
INSERT INTO `musicxinxi` VALUES (21, '出山', '花粥,胜娚（王胜男）', 'chushan.mp3', 3, '');
INSERT INTO `musicxinxi` VALUES (23, '形容', '沈以诚', 'xingrong.mp3', 3, '');
INSERT INTO `musicxinxi` VALUES (24, '恋曲2018', '王贰浪', 'lianqu2018.mp3', 3, '');
INSERT INTO `musicxinxi` VALUES (25, '白羊', '徐秉龙,沈以诚 ', 'baiyang.mp3', 3, '');
INSERT INTO `musicxinxi` VALUES (26, '光辉岁月', 'Beyond', 'guanghuisuiyue.ncm', 4, '');
INSERT INTO `musicxinxi` VALUES (27, '爱的隧道', '汪峰', 'aidesuidao.mp3', 4, '');
INSERT INTO `musicxinxi` VALUES (28, '花火', '汪峰', 'huahuo.ncm', 4, '');
INSERT INTO `musicxinxi` VALUES (29, '迷鹿', '汪峰', 'milu.mp3', 4, '');
INSERT INTO `musicxinxi` VALUES (30, '像梦一样自由', '汪峰', 'xiangmengyiyangziyou.mp3', 4, '');
INSERT INTO `musicxinxi` VALUES (31, '永远的感动', '汪峰', 'yongyuandegandong.mp3', 4, '');
INSERT INTO `musicxinxi` VALUES (32, '小半', '陈粒', 'xiaoban.mp3', 5, '');
INSERT INTO `musicxinxi` VALUES (33, '我在黑暗中发现的一束光', '豆花', 'wozaiheianzhongfaxiandeyishuguang.mp3', 5, '');
INSERT INTO `musicxinxi` VALUES (34, '往往', '房东的猫', 'wangwang.mp3', 5, '');
INSERT INTO `musicxinxi` VALUES (35, '纸短情长', '花粥', 'zhiduanqingchang.mp3', 5, '');
INSERT INTO `musicxinxi` VALUES (36, '出山', '花粥,胜娚（王胜男）', 'chushan.mp3', 5, '');
INSERT INTO `musicxinxi` VALUES (37, '可能否', '木小雅', 'kenengfou.mp3', 5, '');
INSERT INTO `musicxinxi` VALUES (38, '度日', '唐宁', 'duri.mp3', 5, '');
INSERT INTO `musicxinxi` VALUES (39, '往后余生', '王贰浪', 'wanghouyusheng.mp3', 5, '');
INSERT INTO `musicxinxi` VALUES (40, '理想', '赵雷', 'lixiang.mp3', 5, '');
INSERT INTO `musicxinxi` VALUES (42, '红玫瑰', '陈奕迅', 'red.mp3', 2, '');

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
