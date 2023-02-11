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

 Date: 18/04/2022 11:52:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for good_order
-- ----------------------------
DROP TABLE IF EXISTS `good_order`;
CREATE TABLE `good_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `user_id` int NOT NULL COMMENT '用户id',
  `good_id` int NOT NULL COMMENT '商品id',
  `good_name` varchar(255) NOT NULL COMMENT '商品名称',
  `good_count` int DEFAULT '0' COMMENT '商品数量\r\n',
  `good_price` decimal(10,2) DEFAULT '0.00' COMMENT '商品单价',
  `status` int DEFAULT '0' COMMENT '0=新建未支付  1=已支付  2=已退款 3=已发货 4=已收货 5=已完成',
  `create_date` datetime DEFAULT NULL COMMENT '订单的创建时间',
  `pay_date` datetime DEFAULT NULL COMMENT '支付时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `seKill_uid_gid` (`user_id`,`good_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='订单表';

-- ----------------------------
-- Records of good_order
-- ----------------------------
BEGIN;
INSERT INTO `good_order` VALUES (1, 12345678, 1, '人寿保险', 1, 10000.00, 0, '2022-04-07 12:58:37', NULL);
INSERT INTO `good_order` VALUES (2, 123, 1, '人寿保险', 1, 10000.00, 0, '2022-04-08 14:42:57', NULL);
INSERT INTO `good_order` VALUES (3, 132, 1, '人寿保险', 1, 10000.00, 0, '2022-04-08 14:44:26', NULL);
INSERT INTO `good_order` VALUES (4, 1234, 1, '人寿保险', 1, 10000.00, 0, '2022-04-08 15:42:22', NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
