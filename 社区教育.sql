/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 50648
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 50648
 File Encoding         : 65001

 Date: 21/04/2021 11:10:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for community education activities
-- ----------------------------
DROP TABLE IF EXISTS `community education activities`;
CREATE TABLE `community education activities`  (
  `id` int(11) NOT NULL,
  `Activiteid` int(11) NULL DEFAULT NULL,
  `Style` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of community education activities
-- ----------------------------
INSERT INTO `community education activities` VALUES (100001, 1, 'photography show');
INSERT INTO `community education activities` VALUES (100002, 2, 'recital contest');
INSERT INTO `community education activities` VALUES (100003, 3, 'poetry contest');
INSERT INTO `community education activities` VALUES (100004, 4, 'singing contest');
INSERT INTO `community education activities` VALUES (100005, 5, 'tradition culture knowledge contest');

-- ----------------------------
-- Table structure for community education resources
-- ----------------------------
DROP TABLE IF EXISTS `community education resources`;
CREATE TABLE `community education resources`  (
  `id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ResourceId` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Style` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of community education resources
-- ----------------------------
INSERT INTO `community education resources` VALUES ('200001', '1', 'vocational skills');
INSERT INTO `community education resources` VALUES ('200002', '2', 'literary leisure');
INSERT INTO `community education resources` VALUES ('200003', '3', 'digital books');
INSERT INTO `community education resources` VALUES ('200004', '4', 'film and television');
INSERT INTO `community education resources` VALUES ('200005', '5', 'animated show');

-- ----------------------------
-- Table structure for personal information
-- ----------------------------
DROP TABLE IF EXISTS `personal information`;
CREATE TABLE `personal information`  (
  `id` int(11) NOT NULL,
  `Name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Personal Type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of personal information
-- ----------------------------
INSERT INTO `personal information` VALUES (123001, 'Tom', 'community manager');
INSERT INTO `personal information` VALUES (123002, 'Jiom', 'community volunteer');
INSERT INTO `personal information` VALUES (123003, 'Luse', 'community activity manager');
INSERT INTO `personal information` VALUES (123004, 'Tina', 'community security');

SET FOREIGN_KEY_CHECKS = 1;
