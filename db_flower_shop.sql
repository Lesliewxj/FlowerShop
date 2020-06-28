/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50560
 Source Host           : localhost:3306
 Source Schema         : db_flower_shop

 Target Server Type    : MySQL
 Target Server Version : 50560
 File Encoding         : 65001

 Date: 10/07/2019 19:18:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for easybuy_comment
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_comment`;
CREATE TABLE `easybuy_comment`  (
  `EC_ID` int(10) NOT NULL AUTO_INCREMENT,
  `EC_CONTENT` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `EC_CREATE_TIME` datetime NOT NULL,
  `EC_REPLY` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `EC_REPLY_TIME` datetime DEFAULT NULL,
  `EC_NICK_NAME` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`EC_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of easybuy_comment
-- ----------------------------
INSERT INTO `easybuy_comment` VALUES (9, '鲜花商城，可以多上点鲜花信息嘛！', '2018-12-19 14:30:42', '', NULL, '董苏醒');
INSERT INTO `easybuy_comment` VALUES (10, '好喜欢多肉！', '2018-12-19 14:31:06', '', NULL, '阿朱');
INSERT INTO `easybuy_comment` VALUES (11, '喜欢对着多肉发呆！', '2018-12-19 14:35:35', '', NULL, '慢慢来');
INSERT INTO `easybuy_comment` VALUES (12, '有人说慢慢来会比较快', '2018-12-19 14:37:54', '', NULL, '慢慢来会比较快');

-- ----------------------------
-- Table structure for easybuy_news
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_news`;
CREATE TABLE `easybuy_news`  (
  `EN_ID` int(10) NOT NULL AUTO_INCREMENT,
  `EN_TITLE` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `EN_CONTENT` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `EN_CREATE_TIME` datetime NOT NULL,
  PRIMARY KEY (`EN_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of easybuy_news
-- ----------------------------
INSERT INTO `easybuy_news` VALUES (6, '会员注册须知', '会员注册须知', '2019-04-27 13:23:47');
INSERT INTO `easybuy_news` VALUES (7, '会员购买须知', '会员购买须知', '2019-04-27 13:24:01');
INSERT INTO `easybuy_news` VALUES (9, '最代码的牛币上线了', 'zuidaima.com的牛币上线了，可以购买，下载最代码的代码', '2019-07-10 19:04:43');

-- ----------------------------
-- Table structure for easybuy_order
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_order`;
CREATE TABLE `easybuy_order`  (
  `EO_ID` int(10) NOT NULL AUTO_INCREMENT,
  `EO_USER_ID` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `EO_USER_NAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `EO_USER_ADDRESS` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `EO_CREATE_TIME` datetime NOT NULL,
  `EO_COST` decimal(10, 2) NOT NULL,
  `EO_STATUS` decimal(6, 0) NOT NULL,
  `EO_TYPE` decimal(6, 0) NOT NULL,
  PRIMARY KEY (`EO_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of easybuy_order
-- ----------------------------
INSERT INTO `easybuy_order` VALUES (8, '董苏醒', '董苏醒', '上海市 浦东新区 猿来入此 站长', '2019-04-27 11:01:00', 16.00, 3, 1);
INSERT INTO `easybuy_order` VALUES (9, 'admin', '管理员', '上海', '2019-07-10 19:10:25', 3876.00, 1, 1);

-- ----------------------------
-- Table structure for easybuy_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_order_detail`;
CREATE TABLE `easybuy_order_detail`  (
  `EOD_ID` int(10) NOT NULL AUTO_INCREMENT,
  `EO_ID` decimal(10, 0) NOT NULL,
  `EP_ID` decimal(10, 0) NOT NULL,
  `EOD_QUANTITY` decimal(6, 0) NOT NULL,
  `EOD_COST` decimal(10, 2) NOT NULL,
  PRIMARY KEY (`EOD_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of easybuy_order_detail
-- ----------------------------
INSERT INTO `easybuy_order_detail` VALUES (11, 8, 20, 1, 16.00);
INSERT INTO `easybuy_order_detail` VALUES (12, 9, 27, 323, 3876.00);

-- ----------------------------
-- Table structure for easybuy_product
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_product`;
CREATE TABLE `easybuy_product`  (
  `EP_ID` int(10) NOT NULL AUTO_INCREMENT,
  `EP_NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `EP_DESCRIPTION` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `EP_PRICE` decimal(10, 2) NOT NULL,
  `EP_STOCK` decimal(10, 0) NOT NULL,
  `EPC_ID` decimal(10, 0) DEFAULT NULL,
  `EPC_CHILD_ID` decimal(10, 0) DEFAULT NULL,
  `EP_FILE_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`EP_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of easybuy_product
-- ----------------------------
INSERT INTO `easybuy_product` VALUES (20, '厄瓜多尔皇家蓝色恋人玫瑰', '厄瓜多尔皇家蓝色恋人玫瑰', 16.00, 18, 16, 20, 'goods1438050944_m.jpg');
INSERT INTO `easybuy_product` VALUES (21, '西伯利亚百合', '西伯利亚百合', 27.00, 22, 16, 21, 'goods13772354821288127790_m.jpg');
INSERT INTO `easybuy_product` VALUES (22, '康乃馨', '康乃馨', 23.00, 45, 16, 22, '201308231504346196_m.jpg');
INSERT INTO `easybuy_product` VALUES (24, '黄乒乓 S 菊花', '黄乒乓 S 菊花', 32.00, 32, 16, 23, 'goods1438591037_m.jpg');
INSERT INTO `easybuy_product` VALUES (25, '泰国鲜切叶热带新鲜的绿叶', '泰国鲜切叶热带新鲜的绿叶', 4.00, 323, 17, 24, 'goods1411022636_m.jpg');
INSERT INTO `easybuy_product` VALUES (26, '八角枫叶', '八角枫叶', 33.00, 32, 17, 25, 'u=4093368452,440755421&fm=27&gp=0.jpg');
INSERT INTO `easybuy_product` VALUES (27, '栀子叶', '栀子叶', 12.00, 0, 17, 26, 'u=189404210,2788192053&fm=27&gp=0.jpg');
INSERT INTO `easybuy_product` VALUES (28, '绿萝吊兰不含盆', '绿萝吊兰不含盆', 32.00, 3223, 18, 27, 'goods13801796061288130653_m.jpg');
INSERT INTO `easybuy_product` VALUES (29, '如水小发财树', '如水小发财树', 8.00, 32, 18, 28, 'u=702189391,3456313470&fm=58.jpg');
INSERT INTO `easybuy_product` VALUES (30, '绿萝吊兰水培盆栽木桶款', '绿萝吊兰水培盆栽木桶款', 44.00, 323, 18, 29, 'u=1921186747,914205630&fm=200&gp=0.jpg');
INSERT INTO `easybuy_product` VALUES (31, '蝴蝶兰黄花', '蝴蝶兰黄花', 33.00, 32, 19, 30, 'u=2313857963,2992583774&fm=58&bpow=650&bpoh=433.jpg');
INSERT INTO `easybuy_product` VALUES (32, '石斛兰石斛兰石斛兰石斛兰', '石斛兰石斛兰石斛兰石斛兰石斛兰', 78.00, 323, 19, 31, 'u=3416364401,1008420908&fm=202&src=781&mola=new&crop=v1.jpg');
INSERT INTO `easybuy_product` VALUES (33, '君子兰君子兰君子兰君子兰', '君子兰君子兰君子兰君子兰君子兰', 323.00, 888, 19, 32, 'u=3893092790,864232993&fm=27&gp=0.jpg');

-- ----------------------------
-- Table structure for easybuy_product_category
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_product_category`;
CREATE TABLE `easybuy_product_category`  (
  `EPC_ID` int(10) NOT NULL AUTO_INCREMENT,
  `EPC_NAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `EPC_PARENT_ID` decimal(10, 0) NOT NULL,
  PRIMARY KEY (`EPC_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of easybuy_product_category
-- ----------------------------
INSERT INTO `easybuy_product_category` VALUES (16, '切花', 0);
INSERT INTO `easybuy_product_category` VALUES (17, '切叶', 0);
INSERT INTO `easybuy_product_category` VALUES (18, '绿植', 0);
INSERT INTO `easybuy_product_category` VALUES (19, '盆花', 0);
INSERT INTO `easybuy_product_category` VALUES (20, '玫瑰', 16);
INSERT INTO `easybuy_product_category` VALUES (21, '百合', 16);
INSERT INTO `easybuy_product_category` VALUES (22, '康乃馨', 16);
INSERT INTO `easybuy_product_category` VALUES (23, '菊花', 16);
INSERT INTO `easybuy_product_category` VALUES (24, '巴西叶', 17);
INSERT INTO `easybuy_product_category` VALUES (25, '八角叶', 17);
INSERT INTO `easybuy_product_category` VALUES (26, '栀子叶', 17);
INSERT INTO `easybuy_product_category` VALUES (27, '绿萝', 18);
INSERT INTO `easybuy_product_category` VALUES (28, '发财树', 18);
INSERT INTO `easybuy_product_category` VALUES (29, '吊兰', 18);
INSERT INTO `easybuy_product_category` VALUES (30, '蝴蝶兰', 19);
INSERT INTO `easybuy_product_category` VALUES (31, '石斛兰', 19);
INSERT INTO `easybuy_product_category` VALUES (32, '君子兰', 19);

-- ----------------------------
-- Table structure for easybuy_shop
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_shop`;
CREATE TABLE `easybuy_shop`  (
  `es_id` int(11) NOT NULL AUTO_INCREMENT,
  `es_ep_file_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `es_ep_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `es_ep_price` decimal(10, 0) DEFAULT NULL,
  `es_eod_quantity` int(11) DEFAULT NULL,
  `es_ep_stock` int(11) DEFAULT NULL,
  `es_ep_id` int(11) DEFAULT NULL,
  `es_eu_user_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `es_valid` int(11) DEFAULT NULL,
  PRIMARY KEY (`es_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of easybuy_shop
-- ----------------------------
INSERT INTO `easybuy_shop` VALUES (12, 'goods1438050944_m.jpg', '厄瓜多尔皇家蓝色恋人玫瑰', 16, 1, 19, 20, '董苏醒', 2);
INSERT INTO `easybuy_shop` VALUES (13, 'goods13772354821288127790_m.jpg', '西伯利亚百合', 27, 1, 22, 21, '董苏醒', 1);
INSERT INTO `easybuy_shop` VALUES (14, 'goods13772354821288127790_m.jpg', '西伯利亚百合', 27, 1, 22, 21, '董苏醒', 1);
INSERT INTO `easybuy_shop` VALUES (16, 'u=189404210,2788192053&fm=27&gp=0.jpg', '栀子叶', 12, 323, 323, 27, 'admin', 2);
INSERT INTO `easybuy_shop` VALUES (17, 'goods1438050944_m.jpg', '厄瓜多尔皇家蓝色恋人玫瑰', 16, 1, 18, 20, 'admin', 1);

-- ----------------------------
-- Table structure for easybuy_user
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_user`;
CREATE TABLE `easybuy_user`  (
  `EU_USER_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `EU_USER_NAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `EU_PASSWORD` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `EU_SEX` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `EU_BIRTHDAY` datetime DEFAULT NULL,
  `EU_IDENTITY_CODE` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `EU_EMAIL` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `EU_MOBILE` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `EU_ADDRESS` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `EU_STATUS` decimal(6, 0) NOT NULL,
  PRIMARY KEY (`EU_USER_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of easybuy_user
-- ----------------------------
INSERT INTO `easybuy_user` VALUES ('admin', '管理员', 'admin', 'T', '2018-04-11 00:00:00', NULL, 'llqqxf@163.com', '13666666666', '上海', 2);
INSERT INTO `easybuy_user` VALUES ('董苏醒', '最代码', '111111', 'T', '2018-12-13 00:00:00', NULL, 'zuidaima@qq.com', '13520109202', 'zuidaima.com网站', 1);

SET FOREIGN_KEY_CHECKS = 1;
