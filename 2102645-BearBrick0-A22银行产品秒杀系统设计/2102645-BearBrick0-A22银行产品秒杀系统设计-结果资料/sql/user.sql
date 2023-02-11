/*
 Navicat Premium Data Transfer

 Source Server         : 123.57.3.25
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : 123.57.3.25:3306
 Source Schema         : bank_kill

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 18/04/2022 11:51:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_name` varchar(20) DEFAULT NULL,
  `user_card` int NOT NULL COMMENT '用户身份证',
  `user_password` varchar(64) DEFAULT NULL COMMENT '密码',
  `user_age` int NOT NULL DEFAULT '0',
  `is_Employment` varchar(20) NOT NULL,
  PRIMARY KEY (`user_card`),
  UNIQUE KEY `user_user_card_uindex` (`user_card`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户登录信息';

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES ('admin', 1234567, '7EBCE4EBE6CDC39A203463117F4F7A07BB80B6085AEFD9BE651B95FCE0D94E30', 20, '就业');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
