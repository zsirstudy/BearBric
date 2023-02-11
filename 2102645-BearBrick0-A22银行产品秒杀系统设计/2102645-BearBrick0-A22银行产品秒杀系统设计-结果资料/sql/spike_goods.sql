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

 Date: 18/04/2022 11:52:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for spike_goods
-- ----------------------------
DROP TABLE IF EXISTS `spike_goods`;
CREATE TABLE `spike_goods` (
  `id` int NOT NULL AUTO_INCREMENT,
  `good_name` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `good_num` int DEFAULT NULL COMMENT '商品库存',
  `good_money` decimal(10,2) DEFAULT NULL COMMENT '秒杀价',
  `good_img` varchar(255) DEFAULT NULL COMMENT '商品图片\r\n',
  `good_detail` longtext COMMENT '商品详情',
  `start_date` datetime DEFAULT NULL COMMENT '秒杀开始时间',
  `end_date` datetime DEFAULT NULL COMMENT '秒杀结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='秒杀商品';

-- ----------------------------
-- Records of spike_goods
-- ----------------------------
BEGIN;
INSERT INTO `spike_goods` VALUES (1, '人寿保险', 99997, 10000.00, '/img/lifeInsurance.png', '共有10万份，每人限买一份，秒杀价格为10000元，已支付成功为秒杀标准', '2022-01-21 20:11:55', '2022-09-21 20:11:42');
INSERT INTO `spike_goods` VALUES (2, 'Iphone13', 100000, 6780.00, '/img/iphone.png', '2021年新款iphone', '2022-02-26 21:32:21', '2022-03-26 21:32:39');
INSERT INTO `spike_goods` VALUES (3, '健康保险', 100000, 892.00, '/img/healthy.png', '声明安全', '2023-01-13 21:33:53', '2024-01-25 21:34:02');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
