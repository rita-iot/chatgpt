/*
 Navicat Premium Data Transfer

 Source Server         : chatgpt
 Source Server Type    : MySQL
 Source Server Version : 50734 (5.7.34-log)
 Source Host           : 49.232.144.156:3306
 Source Schema         : chatgpt_test

 Target Server Type    : MySQL
 Target Server Version : 50734 (5.7.34-log)
 File Encoding         : 65001

 Date: 30/05/2023 00:03:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` varchar(255) DEFAULT '',
  `remarks` varchar(255) DEFAULT '',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of config
-- ----------------------------
BEGIN;
INSERT INTO `config` (`id`, `name`, `value`, `remarks`, `create_time`, `update_time`) VALUES (1, 'signin_reward', '100', '签到奖励', '2023-05-19 16:21:12', '2023-05-25 11:01:00');
INSERT INTO `config` (`id`, `name`, `value`, `remarks`, `create_time`, `update_time`) VALUES (2, 'register_reward', '100', '注册奖励', '2023-05-19 16:21:49', '2023-05-26 21:49:49');
INSERT INTO `config` (`id`, `name`, `value`, `remarks`, `create_time`, `update_time`) VALUES (3, 'history_message_count', '5', '携带历史聊天数量', '2023-05-21 14:57:37', '2023-05-25 11:00:53');
INSERT INTO `config` (`id`, `name`, `value`, `remarks`, `create_time`, `update_time`) VALUES (4, 'ai3_ratio', '50', '3版本比例 每1积分等于多少token', '2023-05-25 16:40:18', '2023-05-27 00:18:17');
INSERT INTO `config` (`id`, `name`, `value`, `remarks`, `create_time`, `update_time`) VALUES (5, 'ai4_ratio', '0.01', '4版本比例 每1积分等于多少token', '2023-05-25 16:40:20', '2023-05-29 22:49:33');
INSERT INTO `config` (`id`, `name`, `value`, `remarks`, `create_time`, `update_time`) VALUES (6, 'draw_use_price', '[{\"size\":\"256x256\",\"integral\":100},{\"size\":\"512x512\",\"integral\":120},{\"size\":\"1024x1024\",\"integral\":150}]', '绘画价格 ', '2023-05-25 16:58:26', '2023-05-26 21:49:43');
INSERT INTO `config` (`id`, `name`, `value`, `remarks`, `create_time`, `update_time`) VALUES (7, 'shop_introduce', '', '商城介绍', '2023-05-29 11:51:39', '2023-05-29 17:33:15');
INSERT INTO `config` (`id`, `name`, `value`, `remarks`, `create_time`, `update_time`) VALUES (8, 'user_introduce', '', '用户中心介绍', '2023-05-29 11:52:07', '2023-05-29 17:33:16');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
