/*
 Navicat MySQL Data Transfer

 Source Server         : Mysql
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : payment_demo

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 26/03/2022 17:36:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_order_info
-- ----------------------------
DROP TABLE IF EXISTS `t_order_info`;
CREATE TABLE `t_order_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `title` varchar(256) DEFAULT NULL COMMENT '订单标题',
  `order_no` varchar(50) DEFAULT NULL COMMENT '商户订单编号',
  `user_id` bigint DEFAULT NULL COMMENT '用户id',
  `pay_ment` varchar(255) DEFAULT NULL COMMENT '支付方式',
  `product_id` bigint DEFAULT NULL COMMENT '支付产品id',
  `total_fee` int DEFAULT NULL COMMENT '订单金额(分)',
  `code_url` varchar(50) DEFAULT NULL COMMENT '订单二维码连接',
  `order_status` varchar(10) DEFAULT NULL COMMENT '订单状态',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_order_info
-- ----------------------------
BEGIN;
INSERT INTO `t_order_info` VALUES (182, '前端课程', 'ORDER_20220326121640836', NULL, '支付宝', 3, 1, 'https://qr.alipay.com/bax04546o6ifuymrv1xf0064', '已退款', '2022-03-26 12:16:40', '2022-03-26 12:24:39');
INSERT INTO `t_order_info` VALUES (183, 'Java课程', 'ORDER_20220326122613511', NULL, '支付宝', 1, 1, 'https://qr.alipay.com/bax01271evynp8ldi2mc00da', '已退款', '2022-03-26 12:26:13', '2022-03-26 12:26:32');
INSERT INTO `t_order_info` VALUES (184, 'UI课程', 'ORDER_20220326122904340', NULL, '支付宝', 4, 1, 'https://qr.alipay.com/bax038385ooo6bruu5ab00c3', '支付成功', '2022-03-26 12:29:04', '2022-03-26 12:55:01');
INSERT INTO `t_order_info` VALUES (185, '前端课程', 'ORDER_20220326122927018', NULL, '支付宝', 3, 1, 'https://qr.alipay.com/bax03663tbhpqqb83bbd004f', '已退款', '2022-03-26 12:29:27', '2022-03-26 13:01:09');
INSERT INTO `t_order_info` VALUES (186, '大数据课程', 'ORDER_20220326122940065', NULL, '支付宝', 2, 1, 'https://qr.alipay.com/bax082018chofqzvcptp00f2', '已退款', '2022-03-26 12:29:40', '2022-03-26 12:58:53');
INSERT INTO `t_order_info` VALUES (187, 'Java课程', 'ORDER_20220326122956289', NULL, '支付宝', 1, 1, 'https://qr.alipay.com/bax02313ulsc5tgufgrn002a', '已退款', '2022-03-26 12:29:56', '2022-03-26 12:55:29');
INSERT INTO `t_order_info` VALUES (188, 'Java课程', 'ORDER_20220326131046569', NULL, '支付宝', 1, 1, 'https://qr.alipay.com/bax06738zospljqwsw7f006e', '未支付', '2022-03-26 13:10:46', '2022-03-26 13:23:24');
INSERT INTO `t_order_info` VALUES (189, '前端课程', 'ORDER_20220326131748456', NULL, '支付宝', 3, 1, 'https://qr.alipay.com/bax02283obwt3hdpm0th0030', '未支付', '2022-03-26 13:17:48', '2022-03-26 13:17:49');
INSERT INTO `t_order_info` VALUES (190, 'Java课程', 'ORDER_20220326132008388', NULL, '微信', 1, 1, 'weixin://wxpay/bizpayurl?pr=aIRXpftzz', '超时已关闭', '2022-03-26 13:20:08', '2022-03-26 13:23:31');
INSERT INTO `t_order_info` VALUES (191, 'UI课程', 'ORDER_20220326132244930', NULL, '微信', 4, 1, 'weixin://wxpay/bizpayurl?pr=crppCl2zz', '超时已关闭', '2022-03-26 13:22:44', '2022-03-26 13:26:05');
INSERT INTO `t_order_info` VALUES (192, 'Java课程', 'ORDER_20220326132630194', NULL, '微信', 1, 1, 'weixin://wxpay/bizpayurl?pr=Y3JAj5Ezz', '超时已关闭', '2022-03-26 13:26:30', '2022-03-26 13:29:32');
INSERT INTO `t_order_info` VALUES (193, 'Java课程', 'ORDER_20220326133137952', NULL, '微信', 1, 1, 'weixin://wxpay/bizpayurl?pr=xF28M48zz', '超时已关闭', '2022-03-26 13:31:37', '2022-03-26 13:41:09');
INSERT INTO `t_order_info` VALUES (194, 'Java课程', 'ORDER_20220326151229105', NULL, '微信', 1, 1, 'weixin://wxpay/bizpayurl?pr=lUvtCkAzz', '超时已关闭', '2022-03-26 15:12:29', '2022-03-26 15:15:32');
INSERT INTO `t_order_info` VALUES (195, 'Java课程', 'ORDER_20220326151855170', NULL, '微信', 1, 1, 'weixin://wxpay/bizpayurl?pr=TAZE5KAzz', '超时已关闭', '2022-03-26 15:18:55', '2022-03-26 15:22:01');
INSERT INTO `t_order_info` VALUES (196, 'Java课程', 'ORDER_20220326152321978', NULL, '微信', 1, 1, 'weixin://wxpay/bizpayurl?pr=AGiVCXzzz', '超时已关闭', '2022-03-26 15:23:21', '2022-03-26 15:26:32');
INSERT INTO `t_order_info` VALUES (197, 'Java课程', 'ORDER_20220326152658417', NULL, '微信', 1, 1, 'weixin://wxpay/bizpayurl?pr=xvNszBmzz', '超时已关闭', '2022-03-26 15:26:58', '2022-03-26 15:30:01');
INSERT INTO `t_order_info` VALUES (198, 'Java课程', 'ORDER_20220326153126186', NULL, '微信', 1, 1, 'weixin://wxpay/bizpayurl?pr=y2Jcz90zz', '超时已关闭', '2022-03-26 15:31:26', '2022-03-26 15:34:31');
INSERT INTO `t_order_info` VALUES (199, 'Java课程', 'ORDER_20220326153543687', NULL, '微信', 1, 1, 'weixin://wxpay/bizpayurl?pr=XaIfuB7zz', '超时已关闭', '2022-03-26 15:35:43', '2022-03-26 15:39:01');
INSERT INTO `t_order_info` VALUES (200, 'Java课程', 'ORDER_20220326154216419', NULL, '微信', 1, 1, 'weixin://wxpay/bizpayurl?pr=bBqjcQezz', '超时已关闭', '2022-03-26 15:42:16', '2022-03-26 15:45:32');
INSERT INTO `t_order_info` VALUES (201, 'Java课程', 'ORDER_20220326154603087', NULL, '微信', 1, 1, 'weixin://wxpay/bizpayurl?pr=EY6CpQAzz', '超时已关闭', '2022-03-26 15:46:03', '2022-03-26 15:49:31');
INSERT INTO `t_order_info` VALUES (202, 'Java课程', 'ORDER_20220326155206327', NULL, '微信', 1, 1, 'weixin://wxpay/bizpayurl?pr=s5AJPDFzz', '超时已关闭', '2022-03-26 15:52:06', '2022-03-26 15:55:32');
INSERT INTO `t_order_info` VALUES (203, 'Java课程', 'ORDER_20220326155550179', NULL, '微信', 1, 1, 'weixin://wxpay/bizpayurl?pr=3OZ9u2ozz', '超时已关闭', '2022-03-26 15:55:50', '2022-03-26 15:59:01');
INSERT INTO `t_order_info` VALUES (204, 'Java课程', 'ORDER_20220326160003234', NULL, '微信', 1, 1, 'weixin://wxpay/bizpayurl?pr=cTE32REzz', '超时已关闭', '2022-03-26 16:00:03', '2022-03-26 16:03:32');
INSERT INTO `t_order_info` VALUES (205, 'Java课程', 'ORDER_20220326160337107', NULL, '微信', 1, 1, 'weixin://wxpay/bizpayurl?pr=a8TlJjXzz', '超时已关闭', '2022-03-26 16:03:37', '2022-03-26 16:07:02');
INSERT INTO `t_order_info` VALUES (206, 'Java课程', 'ORDER_20220326160956284', NULL, '微信', 1, 1, 'weixin://wxpay/bizpayurl?pr=MIjznEIzz', '超时已关闭', '2022-03-26 16:09:56', '2022-03-26 16:13:01');
INSERT INTO `t_order_info` VALUES (207, 'Java课程', 'ORDER_20220326161621564', NULL, '微信', 1, 1, 'weixin://wxpay/bizpayurl?pr=BjtKoQ4zz', '超时已关闭', '2022-03-26 16:16:21', '2022-03-26 16:19:39');
INSERT INTO `t_order_info` VALUES (208, 'Java课程', 'ORDER_20220326163858485', NULL, '微信', 1, 1, 'weixin://wxpay/bizpayurl?pr=OwPjTcmzz', '超时已关闭', '2022-03-26 16:38:58', '2022-03-26 16:42:02');
INSERT INTO `t_order_info` VALUES (209, 'Java课程', 'ORDER_20220326164207626', NULL, '微信', 1, 1, 'weixin://wxpay/bizpayurl?pr=P52qXlTzz', '超时已关闭', '2022-03-26 16:42:07', '2022-03-26 16:45:31');
INSERT INTO `t_order_info` VALUES (210, 'Java课程', 'ORDER_20220326164848628', NULL, '微信', 1, 1, 'weixin://wxpay/bizpayurl?pr=1Ian3I2zz', '超时已关闭', '2022-03-26 16:48:48', '2022-03-26 16:52:02');
INSERT INTO `t_order_info` VALUES (211, '大数据课程', 'ORDER_20220326164905088', NULL, '支付宝', 2, 1, 'https://qr.alipay.com/bax00480c7pd0fzq34ky00a8', '支付成功', '2022-03-26 16:49:05', '2022-03-26 16:49:39');
INSERT INTO `t_order_info` VALUES (212, 'Java课程', 'ORDER_20220326165343136', NULL, '微信', 1, 1, 'weixin://wxpay/bizpayurl?pr=H7qcaOuzz', '超时已关闭', '2022-03-26 16:53:43', '2022-03-26 16:57:02');
INSERT INTO `t_order_info` VALUES (213, 'Java课程', 'ORDER_20220326165708055', NULL, '微信', 1, 1, 'weixin://wxpay/bizpayurl?pr=sBKEWV7zz', '超时已关闭', '2022-03-26 16:57:08', '2022-03-26 17:00:34');
INSERT INTO `t_order_info` VALUES (214, 'Java课程', 'ORDER_20220326170048689', NULL, '微信', 1, 1, 'weixin://wxpay/bizpayurl?pr=LtWqXY0zz', '超时已关闭', '2022-03-26 17:00:48', '2022-03-26 17:04:01');
INSERT INTO `t_order_info` VALUES (215, 'Java课程', 'ORDER_20220326170419724', NULL, '微信', 1, 1, 'weixin://wxpay/bizpayurl?pr=KIP2h9Qzz', '超时已关闭', '2022-03-26 17:04:19', '2022-03-26 17:07:32');
INSERT INTO `t_order_info` VALUES (216, 'Java课程', 'ORDER_20220326171027967', NULL, '微信', 1, 1, 'weixin://wxpay/bizpayurl?pr=PidjEUIzz', '超时已关闭', '2022-03-26 17:10:27', '2022-03-26 17:13:32');
INSERT INTO `t_order_info` VALUES (217, 'Java课程', 'ORDER_20220326171409363', NULL, '微信', 1, 1, 'weixin://wxpay/bizpayurl?pr=8o1U4rLzz', '超时已关闭', '2022-03-26 17:14:09', '2022-03-26 17:17:32');
INSERT INTO `t_order_info` VALUES (218, 'Java课程', 'ORDER_20220326171851224', NULL, '微信', 1, 1, 'weixin://wxpay/bizpayurl?pr=nsZlU0uzz', '超时已关闭', '2022-03-26 17:18:51', '2022-03-26 17:22:02');
COMMIT;

-- ----------------------------
-- Table structure for t_payment_info
-- ----------------------------
DROP TABLE IF EXISTS `t_payment_info`;
CREATE TABLE `t_payment_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '支付记录id',
  `order_no` varchar(50) DEFAULT NULL COMMENT '商户订单编号',
  `transaction_id` varchar(50) DEFAULT NULL COMMENT '支付系统交易编号',
  `payment_type` varchar(20) DEFAULT NULL COMMENT '支付类型',
  `trade_type` varchar(20) DEFAULT NULL COMMENT '交易类型',
  `trade_state` varchar(50) DEFAULT NULL COMMENT '交易状态',
  `payer_total` int DEFAULT NULL COMMENT '支付金额(分)',
  `content` text COMMENT '通知参数',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_payment_info
-- ----------------------------
BEGIN;
INSERT INTO `t_payment_info` VALUES (35, 'ORDER_20220325224920151', '2022032522001497720502344936', '支付宝', 'trade_status_sync', 'TRADE_SUCCESS', 1, 'org.apache.catalina.connector.RequestFacade@4933f547', '2022-03-26 10:34:29', '2022-03-26 10:34:29');
INSERT INTO `t_payment_info` VALUES (36, 'ORDER_20220326104458431', '2022032622001497720502345430', '支付宝', 'trade_status_sync', 'TRADE_SUCCESS', 1, '[{\"amount\":\"0.01\",\"fundChannel\":\"ALIPAYACCOUNT\"}]', '2022-03-26 10:45:19', '2022-03-26 10:45:19');
INSERT INTO `t_payment_info` VALUES (37, 'ORDER_20220326111943127', '4200001320202203269608021724', '微信', 'NATIVE', 'SUCCESS', 1, '{\"mchid\":\"1610742906\",\"appid\":\"wxe8abca8c68efe7c7\",\"out_trade_no\":\"ORDER_20220326111943127\",\"transaction_id\":\"4200001320202203269608021724\",\"trade_type\":\"NATIVE\",\"trade_state\":\"SUCCESS\",\"trade_state_desc\":\"支付成功\",\"bank_type\":\"OTHERS\",\"attach\":\"\",\"success_time\":\"2022-03-26T11:19:58+08:00\",\"payer\":{\"openid\":\"o2ePa5LTprhc-zT9FAcuvq_htqDA\"},\"amount\":{\"total\":1,\"payer_total\":1,\"currency\":\"CNY\",\"payer_currency\":\"CNY\"}}', '2022-03-26 11:20:04', '2022-03-26 11:20:04');
INSERT INTO `t_payment_info` VALUES (38, 'ORDER_20220326112632047', '2022032622001497720502345431', '支付宝', 'trade_status_sync', 'TRADE_SUCCESS', 1, '[{\"amount\":\"0.01\",\"fundChannel\":\"ALIPAYACCOUNT\"}]', '2022-03-26 11:26:46', '2022-03-26 11:26:46');
INSERT INTO `t_payment_info` VALUES (39, 'ORDER_20220326112530575', '2022032622001497720502345303', '支付宝', 'trade_status_sync', 'TRADE_SUCCESS', 1, 'text', '2022-03-26 11:45:19', '2022-03-26 11:45:19');
INSERT INTO `t_payment_info` VALUES (40, 'ORDER_20220326121619970', '2022032622001497720502345190', '支付宝', 'trade_status_sync', 'TRADE_SUCCESS', 1, '[{\"amount\":\"0.01\",\"fundChannel\":\"ALIPAYACCOUNT\"}]', '2022-03-26 12:16:32', '2022-03-26 12:16:32');
INSERT INTO `t_payment_info` VALUES (41, 'ORDER_20220326121640836', '2022032622001497720502345579', '支付宝', 'trade_status_sync', 'TRADE_SUCCESS', 1, '[{\"amount\":\"0.01\",\"fundChannel\":\"ALIPAYACCOUNT\"}]', '2022-03-26 12:16:49', '2022-03-26 12:16:49');
INSERT INTO `t_payment_info` VALUES (42, 'ORDER_20220326122613511', '2022032622001497720502345191', '支付宝', 'trade_status_sync', 'TRADE_SUCCESS', 1, '[{\"amount\":\"0.01\",\"fundChannel\":\"ALIPAYACCOUNT\"}]', '2022-03-26 12:26:24', '2022-03-26 12:26:24');
INSERT INTO `t_payment_info` VALUES (43, 'ORDER_20220326122904340', '2022032622001497720502345580', '支付宝', 'trade_status_sync', 'TRADE_SUCCESS', 1, 'text', '2022-03-26 12:55:01', '2022-03-26 12:55:01');
INSERT INTO `t_payment_info` VALUES (44, 'ORDER_20220326122927018', '2022032622001497720502345581', '支付宝', 'trade_status_sync', 'TRADE_SUCCESS', 1, 'text', '2022-03-26 12:55:01', '2022-03-26 12:55:01');
INSERT INTO `t_payment_info` VALUES (45, 'ORDER_20220326122940065', '2022032622001497720502345582', '支付宝', 'trade_status_sync', 'TRADE_SUCCESS', 1, 'text', '2022-03-26 12:55:01', '2022-03-26 12:55:01');
INSERT INTO `t_payment_info` VALUES (46, 'ORDER_20220326122956289', '2022032622001497720502345583', '支付宝', 'trade_status_sync', 'TRADE_SUCCESS', 1, 'text', '2022-03-26 12:55:02', '2022-03-26 12:55:02');
INSERT INTO `t_payment_info` VALUES (47, 'ORDER_20220326164905088', '2022032622001497720502345756', '支付宝', 'trade_status_sync', 'TRADE_SUCCESS', 1, '[{\"amount\":\"0.01\",\"fundChannel\":\"ALIPAYACCOUNT\"}]', '2022-03-26 16:49:39', '2022-03-26 16:49:39');
COMMIT;

-- ----------------------------
-- Table structure for t_product
-- ----------------------------
DROP TABLE IF EXISTS `t_product`;
CREATE TABLE `t_product` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `title` varchar(20) DEFAULT NULL COMMENT '商品名称',
  `price` int DEFAULT NULL COMMENT '价格（分）',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_product
-- ----------------------------
BEGIN;
INSERT INTO `t_product` VALUES (1, 'Java课程', 1, '2022-03-21 17:36:28', '2022-03-24 15:12:45');
INSERT INTO `t_product` VALUES (2, '大数据课程', 1, '2022-03-21 17:36:28', '2022-03-21 17:36:28');
INSERT INTO `t_product` VALUES (3, '前端课程', 1, '2022-03-21 17:36:28', '2022-03-21 17:36:28');
INSERT INTO `t_product` VALUES (4, 'UI课程', 1, '2022-03-21 17:36:28', '2022-03-21 17:36:28');
COMMIT;

-- ----------------------------
-- Table structure for t_refund_info
-- ----------------------------
DROP TABLE IF EXISTS `t_refund_info`;
CREATE TABLE `t_refund_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '退款单id',
  `order_no` varchar(50) DEFAULT NULL COMMENT '商户订单编号',
  `refund_no` varchar(50) DEFAULT NULL COMMENT '商户退款单编号',
  `refund_id` varchar(50) DEFAULT NULL COMMENT '支付系统退款单号',
  `total_fee` int DEFAULT NULL COMMENT '原订单金额(分)',
  `refund` int DEFAULT NULL COMMENT '退款金额(分)',
  `reason` varchar(50) DEFAULT NULL COMMENT '退款原因',
  `refund_status` varchar(10) DEFAULT NULL COMMENT '退款状态',
  `content_return` text COMMENT '申请退款返回参数',
  `content_notify` text COMMENT '退款结果通知参数',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_refund_info
-- ----------------------------
BEGIN;
INSERT INTO `t_refund_info` VALUES (27, 'ORDER_20220326122940065', 'REFUND_20220326125851040', '2022032622001497720502345582', 1, 1, '不喜欢', 'SUCCESS', NULL, NULL, '2022-03-26 12:58:51', '2022-03-26 12:58:53');
INSERT INTO `t_refund_info` VALUES (28, 'ORDER_20220326122927018', 'REFUND_20220326130107269', '2022032622001497720502345581', 1, 1, '不喜欢', 'SUCCESS', NULL, NULL, '2022-03-26 13:01:07', '2022-03-26 13:01:09');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
