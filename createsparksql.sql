/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : test_project

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2019-07-09 22:51:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for session_aggr_stat
-- ----------------------------
DROP TABLE IF EXISTS `session_aggr_stat`;
CREATE TABLE `session_aggr_stat` (
  `id` bigint(20) NOT NULL,
  `session_count` bigint(20) DEFAULT NULL,
  `10_30` double DEFAULT NULL,
  `1_3` double DEFAULT NULL,
  `30_60` double DEFAULT NULL,
  `4_6` double DEFAULT NULL,
  `60_` double DEFAULT NULL,
  `7_9` double DEFAULT NULL,
  `task_id` bigint(20) DEFAULT NULL,
  `10m_30m` double DEFAULT NULL,
  `10s_30s` double DEFAULT NULL,
  `1m_3m` double DEFAULT NULL,
  `1s_3s` double DEFAULT NULL,
  `30m` double DEFAULT NULL,
  `30s_60s` double DEFAULT NULL,
  `3m_10m` double DEFAULT NULL,
  `4s_6s` double DEFAULT NULL,
  `7s_9s` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of session_aggr_stat
-- ----------------------------

-- ----------------------------
-- Table structure for session_detail
-- ----------------------------
DROP TABLE IF EXISTS `session_detail`;
CREATE TABLE `session_detail` (
  `id` bigint(20) NOT NULL,
  `action_time` varchar(255) DEFAULT NULL,
  `click_category_id` bigint(20) DEFAULT NULL,
  `click_product_id` bigint(20) DEFAULT NULL,
  `order_category_ids` varchar(255) DEFAULT NULL,
  `order_product_ids` varchar(255) DEFAULT NULL,
  `page_id` bigint(20) DEFAULT NULL,
  `pay_category_ids` varchar(255) DEFAULT NULL,
  `pay_product_ids` varchar(255) DEFAULT NULL,
  `search_keyword` varchar(255) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `task_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of session_detail
-- ----------------------------
INSERT INTO `session_detail` VALUES ('1044', '2019-07-08 14:10:04', '0', '0', null, null, '2', null, null, '重庆辣子鸡', 'c380da9350ac4282b2feb05cd01eb6d1', '2', '25');
INSERT INTO `session_detail` VALUES ('1045', '2019-07-08 14:43:20', '0', '0', null, null, '3', null, null, '火锅', 'c380da9350ac4282b2feb05cd01eb6d1', '2', '25');
INSERT INTO `session_detail` VALUES ('1046', '2019-07-08 14:55:11', '0', '0', '88', '76', '3', null, null, null, 'c380da9350ac4282b2feb05cd01eb6d1', '2', '25');
INSERT INTO `session_detail` VALUES ('1047', '2019-07-08 14:07:58', '0', '0', null, null, '5', '80', '68', null, 'c380da9350ac4282b2feb05cd01eb6d1', '2', '25');
INSERT INTO `session_detail` VALUES ('1048', '2019-07-08 14:25:46', '14', '73', null, null, '3', null, null, null, 'c380da9350ac4282b2feb05cd01eb6d1', '2', '25');
INSERT INTO `session_detail` VALUES ('1049', '2019-07-08 14:42:14', '0', '0', null, null, '8', null, null, '呷哺呷哺', 'c380da9350ac4282b2feb05cd01eb6d1', '2', '25');
INSERT INTO `session_detail` VALUES ('1050', '2019-07-08 14:16:47', '0', '0', null, null, '5', null, null, '太古商场', 'c380da9350ac4282b2feb05cd01eb6d1', '2', '25');
INSERT INTO `session_detail` VALUES ('1051', '2019-07-08 14:07:27', '0', '0', '91', '80', '9', null, null, null, 'c380da9350ac4282b2feb05cd01eb6d1', '2', '25');
INSERT INTO `session_detail` VALUES ('1052', '2019-07-08 14:26:42', '0', '0', null, null, '3', '77', '53', null, '8e63c0de09c84211bd35b7a14c49c01c', '2', '38');
INSERT INTO `session_detail` VALUES ('1053', '2019-07-08 14:08:15', '0', '0', '24', '56', '4', null, null, null, '8e63c0de09c84211bd35b7a14c49c01c', '2', '38');
INSERT INTO `session_detail` VALUES ('1054', '2019-07-08 14:25:07', '0', '0', null, null, '1', null, null, '日本料理', '8e63c0de09c84211bd35b7a14c49c01c', '2', '38');
INSERT INTO `session_detail` VALUES ('1055', '2019-07-08 14:48:05', '85', '17', null, null, '6', null, null, null, '8e63c0de09c84211bd35b7a14c49c01c', '2', '38');
INSERT INTO `session_detail` VALUES ('1056', '2019-07-08 14:27:34', '48', '10', null, null, '4', null, null, null, '8e63c0de09c84211bd35b7a14c49c01c', '2', '38');
INSERT INTO `session_detail` VALUES ('1057', '2019-07-08 14:25:44', '53', '40', null, null, '6', null, null, null, '8e63c0de09c84211bd35b7a14c49c01c', '2', '38');
INSERT INTO `session_detail` VALUES ('1058', '2019-07-08 14:32:27', '98', '59', null, null, '7', null, null, null, '8e63c0de09c84211bd35b7a14c49c01c', '2', '38');
INSERT INTO `session_detail` VALUES ('1059', '2019-07-08 14:02:25', '65', '7', null, null, '6', null, null, null, '8e63c0de09c84211bd35b7a14c49c01c', '2', '38');
INSERT INTO `session_detail` VALUES ('1060', '2019-07-08 14:57:12', '0', '0', null, null, '4', '78', '93', null, '8e63c0de09c84211bd35b7a14c49c01c', '2', '38');
INSERT INTO `session_detail` VALUES ('1061', '2019-07-08 14:09:13', '0', '0', null, null, '2', null, null, '日本料理', '8e63c0de09c84211bd35b7a14c49c01c', '2', '38');
INSERT INTO `session_detail` VALUES ('1062', '2019-07-08 14:33:27', '2', '99', null, null, '5', null, null, null, '8e63c0de09c84211bd35b7a14c49c01c', '2', '38');
INSERT INTO `session_detail` VALUES ('1063', '2019-07-08 14:35:43', '0', '0', '39', '99', '7', null, null, null, '8e63c0de09c84211bd35b7a14c49c01c', '2', '38');
INSERT INTO `session_detail` VALUES ('1064', '2019-07-08 14:50:49', '0', '0', '43', '17', '3', null, null, null, '8e63c0de09c84211bd35b7a14c49c01c', '2', '38');
INSERT INTO `session_detail` VALUES ('1065', '2019-07-08 14:21:44', '0', '0', '42', '7', '1', null, null, null, '8e63c0de09c84211bd35b7a14c49c01c', '2', '38');
INSERT INTO `session_detail` VALUES ('1066', '2019-07-08 14:44:18', '0', '0', null, null, '4', '30', '74', null, '8e63c0de09c84211bd35b7a14c49c01c', '2', '38');
INSERT INTO `session_detail` VALUES ('1067', '2019-07-08 14:41:58', '85', '75', null, null, '5', null, null, null, '8e63c0de09c84211bd35b7a14c49c01c', '2', '38');
INSERT INTO `session_detail` VALUES ('1068', '2019-07-08 14:44:09', '0', '0', null, null, '3', '24', '74', null, '8e63c0de09c84211bd35b7a14c49c01c', '2', '38');
INSERT INTO `session_detail` VALUES ('1069', '2019-07-08 14:25:26', '0', '0', null, null, '5', null, null, '呷哺呷哺', '8e63c0de09c84211bd35b7a14c49c01c', '2', '38');
INSERT INTO `session_detail` VALUES ('1070', '2019-07-08 14:15:15', '0', '0', '16', '20', '4', null, null, null, '8e63c0de09c84211bd35b7a14c49c01c', '2', '38');
INSERT INTO `session_detail` VALUES ('1071', '2019-07-08 14:46:20', '88', '74', null, null, '0', null, null, null, '8e63c0de09c84211bd35b7a14c49c01c', '2', '38');
INSERT INTO `session_detail` VALUES ('1072', '2019-07-08 14:44:03', '0', '0', null, null, '9', '42', '97', null, '8e63c0de09c84211bd35b7a14c49c01c', '2', '38');
INSERT INTO `session_detail` VALUES ('1073', '2019-07-08 14:01:41', '0', '0', '54', '15', '9', null, null, null, '8e63c0de09c84211bd35b7a14c49c01c', '2', '38');
INSERT INTO `session_detail` VALUES ('1074', '2019-07-08 14:38:25', '0', '0', null, null, '9', null, null, '国贸大厦', '8e63c0de09c84211bd35b7a14c49c01c', '2', '38');
INSERT INTO `session_detail` VALUES ('1075', '2019-07-08 14:49:04', '0', '0', null, null, '8', null, null, '温泉', '8e63c0de09c84211bd35b7a14c49c01c', '2', '38');
INSERT INTO `session_detail` VALUES ('1077', '2019-07-08 13:36:01', '0', '0', null, null, '0', '55', '37', null, '445998ce06aa4f02b7fd0ce428323945', '2', '59');
INSERT INTO `session_detail` VALUES ('1078', '2019-07-08 13:25:51', '0', '0', '47', '31', '9', null, null, null, '445998ce06aa4f02b7fd0ce428323945', '2', '59');
INSERT INTO `session_detail` VALUES ('1079', '2019-07-08 13:43:54', '0', '0', '7', '9', '0', null, null, null, '445998ce06aa4f02b7fd0ce428323945', '2', '59');
INSERT INTO `session_detail` VALUES ('1080', '2019-07-08 13:02:31', '33', '65', null, null, '3', null, null, null, '445998ce06aa4f02b7fd0ce428323945', '2', '59');
INSERT INTO `session_detail` VALUES ('1081', '2019-07-08 13:40:39', '0', '0', null, null, '3', null, null, '温泉', '445998ce06aa4f02b7fd0ce428323945', '2', '59');
INSERT INTO `session_detail` VALUES ('1082', '2019-07-08 13:02:32', '10', '49', null, null, '0', null, null, null, '445998ce06aa4f02b7fd0ce428323945', '2', '59');
INSERT INTO `session_detail` VALUES ('1083', '2019-07-08 13:23:38', '0', '0', null, null, '2', '48', '60', null, '445998ce06aa4f02b7fd0ce428323945', '2', '59');
INSERT INTO `session_detail` VALUES ('1084', '2019-07-08 13:07:22', '0', '0', null, null, '9', null, null, '火锅', '445998ce06aa4f02b7fd0ce428323945', '2', '59');
INSERT INTO `session_detail` VALUES ('1085', '2019-07-08 13:47:14', '0', '0', null, null, '0', '7', '57', null, '445998ce06aa4f02b7fd0ce428323945', '2', '59');
INSERT INTO `session_detail` VALUES ('1086', '2019-07-08 13:33:22', '0', '0', null, null, '4', '68', '86', null, '445998ce06aa4f02b7fd0ce428323945', '2', '59');
INSERT INTO `session_detail` VALUES ('1087', '2019-07-08 9:01:02', '0', '0', '48', '36', '3', null, null, null, '516b1fa65de14b17b5a7f23ad40bf197', '2', '67');
INSERT INTO `session_detail` VALUES ('1088', '2019-07-08 9:12:54', '0', '0', '63', '87', '6', null, null, null, '516b1fa65de14b17b5a7f23ad40bf197', '2', '67');
INSERT INTO `session_detail` VALUES ('1089', '2019-07-08 9:27:04', '19', '74', null, null, '9', null, null, null, '516b1fa65de14b17b5a7f23ad40bf197', '2', '67');
INSERT INTO `session_detail` VALUES ('1090', '2019-07-08 9:18:35', '0', '0', '88', '21', '5', null, null, null, '516b1fa65de14b17b5a7f23ad40bf197', '2', '67');
INSERT INTO `session_detail` VALUES ('1091', '2019-07-08 9:33:39', '0', '0', null, null, '8', null, null, '重庆小面', '516b1fa65de14b17b5a7f23ad40bf197', '2', '67');
INSERT INTO `session_detail` VALUES ('1092', '2019-07-08 9:49:07', '0', '0', '80', '76', '0', null, null, null, '516b1fa65de14b17b5a7f23ad40bf197', '2', '67');
INSERT INTO `session_detail` VALUES ('1093', '2019-07-08 9:50:52', '0', '0', null, null, '1', '71', '2', null, '516b1fa65de14b17b5a7f23ad40bf197', '2', '67');
INSERT INTO `session_detail` VALUES ('1094', '2019-07-08 9:32:57', '98', '6', null, null, '3', null, null, null, '516b1fa65de14b17b5a7f23ad40bf197', '2', '67');
INSERT INTO `session_detail` VALUES ('1095', '2019-07-08 9:56:47', '0', '0', null, null, '4', '58', '20', null, '516b1fa65de14b17b5a7f23ad40bf197', '2', '67');
INSERT INTO `session_detail` VALUES ('1096', '2019-07-08 9:31:26', '0', '0', null, null, '6', null, null, '国贸大厦', '516b1fa65de14b17b5a7f23ad40bf197', '2', '67');
INSERT INTO `session_detail` VALUES ('1097', '2019-07-08 9:23:04', '0', '0', null, null, '8', null, null, '重庆小面', '516b1fa65de14b17b5a7f23ad40bf197', '2', '67');
INSERT INTO `session_detail` VALUES ('1098', '2019-07-08 9:40:20', '24', '64', null, null, '9', null, null, null, '516b1fa65de14b17b5a7f23ad40bf197', '2', '67');
INSERT INTO `session_detail` VALUES ('1099', '2019-07-08 9:50:12', '0', '0', '13', '67', '1', null, null, null, '516b1fa65de14b17b5a7f23ad40bf197', '2', '67');
INSERT INTO `session_detail` VALUES ('1100', '2019-07-08 9:31:39', '0', '0', '90', '64', '9', null, null, null, '516b1fa65de14b17b5a7f23ad40bf197', '2', '67');
INSERT INTO `session_detail` VALUES ('1101', '2019-07-08 9:43:55', '0', '0', '76', '83', '3', null, null, null, '516b1fa65de14b17b5a7f23ad40bf197', '2', '67');
INSERT INTO `session_detail` VALUES ('1102', '2019-07-08 9:25:37', '62', '9', null, null, '0', null, null, null, '516b1fa65de14b17b5a7f23ad40bf197', '2', '67');
INSERT INTO `session_detail` VALUES ('1103', '2019-07-08 9:07:11', '0', '0', null, null, '8', '46', '27', null, '516b1fa65de14b17b5a7f23ad40bf197', '2', '67');
INSERT INTO `session_detail` VALUES ('1104', '2019-07-08 9:43:07', '0', '0', null, null, '7', null, null, '火锅', '516b1fa65de14b17b5a7f23ad40bf197', '2', '67');
INSERT INTO `session_detail` VALUES ('1105', '2019-07-08 9:03:24', '0', '0', null, null, '9', '27', '97', null, '516b1fa65de14b17b5a7f23ad40bf197', '2', '67');
INSERT INTO `session_detail` VALUES ('1106', '2019-07-08 9:44:03', '0', '0', null, null, '5', '59', '57', null, '516b1fa65de14b17b5a7f23ad40bf197', '2', '67');
INSERT INTO `session_detail` VALUES ('1107', '2019-07-08 9:23:56', '0', '0', null, null, '2', null, null, '国贸大厦', '516b1fa65de14b17b5a7f23ad40bf197', '2', '67');
INSERT INTO `session_detail` VALUES ('1108', '2019-07-08 9:56:33', '0', '0', null, null, '0', null, null, '火锅', '516b1fa65de14b17b5a7f23ad40bf197', '2', '67');
INSERT INTO `session_detail` VALUES ('1109', '2019-07-08 9:54:16', '0', '0', null, null, '5', '35', '88', null, '516b1fa65de14b17b5a7f23ad40bf197', '2', '67');
INSERT INTO `session_detail` VALUES ('1110', '2019-07-08 18:26:35', '62', '86', null, null, '1', null, null, null, 'bc8135ea45874483a288470195c7c502', '2', '51');
INSERT INTO `session_detail` VALUES ('1111', '2019-07-08 18:39:43', '80', '79', null, null, '1', null, null, null, 'bc8135ea45874483a288470195c7c502', '2', '51');
INSERT INTO `session_detail` VALUES ('1112', '2019-07-08 18:09:16', '0', '0', null, null, '6', '63', '40', null, 'bc8135ea45874483a288470195c7c502', '2', '51');
INSERT INTO `session_detail` VALUES ('1113', '2019-07-08 18:17:58', '0', '0', null, null, '2', null, null, '重庆辣子鸡', 'bc8135ea45874483a288470195c7c502', '2', '51');
INSERT INTO `session_detail` VALUES ('1114', '2019-07-08 18:42:07', '0', '0', null, null, '2', null, null, '新辣道鱼火锅', 'bc8135ea45874483a288470195c7c502', '2', '51');
INSERT INTO `session_detail` VALUES ('1115', '2019-07-08 18:23:20', '47', '86', null, null, '8', null, null, null, 'bc8135ea45874483a288470195c7c502', '2', '51');
INSERT INTO `session_detail` VALUES ('1116', '2019-07-08 18:47:27', '0', '0', '8', '8', '5', null, null, null, 'bc8135ea45874483a288470195c7c502', '2', '51');
INSERT INTO `session_detail` VALUES ('1117', '2019-07-08 18:52:40', '74', '75', null, null, '3', null, null, null, 'bc8135ea45874483a288470195c7c502', '2', '51');
INSERT INTO `session_detail` VALUES ('1118', '2019-07-08 18:24:15', '0', '0', '56', '93', '9', null, null, null, 'bc8135ea45874483a288470195c7c502', '2', '51');
INSERT INTO `session_detail` VALUES ('1119', '2019-07-08 18:37:55', '59', '45', null, null, '4', null, null, null, 'bc8135ea45874483a288470195c7c502', '2', '51');
INSERT INTO `session_detail` VALUES ('1120', '2019-07-08 18:04:39', '0', '0', '84', '50', '5', null, null, null, 'bc8135ea45874483a288470195c7c502', '2', '51');
INSERT INTO `session_detail` VALUES ('1121', '2019-07-08 18:56:56', '0', '0', null, null, '9', '5', '67', null, 'bc8135ea45874483a288470195c7c502', '2', '51');
INSERT INTO `session_detail` VALUES ('1122', '2019-07-08 18:50:16', '0', '0', null, null, '7', '78', '83', null, 'bc8135ea45874483a288470195c7c502', '2', '51');
INSERT INTO `session_detail` VALUES ('1123', '2019-07-08 18:45:34', '0', '0', '75', '96', '2', null, null, null, 'bc8135ea45874483a288470195c7c502', '2', '51');
INSERT INTO `session_detail` VALUES ('1124', '2019-07-08 18:50:10', '0', '0', '50', '1', '0', null, null, null, 'bc8135ea45874483a288470195c7c502', '2', '51');
INSERT INTO `session_detail` VALUES ('1125', '2019-07-08 22:48:20', '59', '75', null, null, '5', null, null, null, '7a265c22b3d3445781ebca3c00bc4dc5', '2', '3');
INSERT INTO `session_detail` VALUES ('1126', '2019-07-08 22:50:38', '7', '86', null, null, '9', null, null, null, '7a265c22b3d3445781ebca3c00bc4dc5', '2', '3');
INSERT INTO `session_detail` VALUES ('1127', '2019-07-08 22:53:06', '0', '0', null, null, '4', '72', '54', null, '7a265c22b3d3445781ebca3c00bc4dc5', '2', '3');
INSERT INTO `session_detail` VALUES ('1128', '2019-07-08 22:07:19', '0', '0', '26', '27', '2', null, null, null, '7a265c22b3d3445781ebca3c00bc4dc5', '2', '3');
INSERT INTO `session_detail` VALUES ('1129', '2019-07-08 22:26:13', '0', '0', null, null, '2', '17', '91', null, '7a265c22b3d3445781ebca3c00bc4dc5', '2', '3');
INSERT INTO `session_detail` VALUES ('1130', '2019-07-08 22:16:33', '67', '6', null, null, '7', null, null, null, '7a265c22b3d3445781ebca3c00bc4dc5', '2', '3');
INSERT INTO `session_detail` VALUES ('1131', '2019-07-08 9:53:38', '0', '0', '26', '64', '3', null, null, null, 'e1fc0cca6e5647e4a55fa842fc326e72', '2', '36');
INSERT INTO `session_detail` VALUES ('1132', '2019-07-08 9:52:36', '0', '0', null, null, '5', null, null, '重庆辣子鸡', 'e1fc0cca6e5647e4a55fa842fc326e72', '2', '36');
INSERT INTO `session_detail` VALUES ('1133', '2019-07-08 9:15:54', '0', '0', null, null, '7', '82', '36', null, 'e1fc0cca6e5647e4a55fa842fc326e72', '2', '36');
INSERT INTO `session_detail` VALUES ('1134', '2019-07-08 9:13:22', '0', '0', null, null, '3', null, null, '太古商场', 'e1fc0cca6e5647e4a55fa842fc326e72', '2', '36');
INSERT INTO `session_detail` VALUES ('1135', '2019-07-08 9:48:55', '0', '0', null, null, '2', '72', '55', null, 'e1fc0cca6e5647e4a55fa842fc326e72', '2', '36');
INSERT INTO `session_detail` VALUES ('1136', '2019-07-08 9:52:01', '0', '0', null, null, '0', null, null, '国贸大厦', 'e1fc0cca6e5647e4a55fa842fc326e72', '2', '36');
INSERT INTO `session_detail` VALUES ('1137', '2019-07-08 9:38:02', '0', '0', '98', '15', '6', null, null, null, 'e1fc0cca6e5647e4a55fa842fc326e72', '2', '36');
INSERT INTO `session_detail` VALUES ('1138', '2019-07-08 9:25:04', '0', '0', '68', '43', '1', null, null, null, 'e1fc0cca6e5647e4a55fa842fc326e72', '2', '36');
INSERT INTO `session_detail` VALUES ('1139', '2019-07-08 9:16:01', '7', '79', null, null, '1', null, null, null, 'e1fc0cca6e5647e4a55fa842fc326e72', '2', '36');
INSERT INTO `session_detail` VALUES ('1140', '2019-07-08 9:37:19', '0', '0', null, null, '0', null, null, '火锅', 'e1fc0cca6e5647e4a55fa842fc326e72', '2', '36');
INSERT INTO `session_detail` VALUES ('1141', '2019-07-08 9:10:54', '0', '0', null, null, '4', '83', '8', null, 'e1fc0cca6e5647e4a55fa842fc326e72', '2', '36');
INSERT INTO `session_detail` VALUES ('1142', '2019-07-08 9:38:22', '0', '0', null, null, '2', '61', '2', null, 'e1fc0cca6e5647e4a55fa842fc326e72', '2', '36');
INSERT INTO `session_detail` VALUES ('1143', '2019-07-08 9:09:09', '0', '0', '97', '10', '1', null, null, null, 'e1fc0cca6e5647e4a55fa842fc326e72', '2', '36');
INSERT INTO `session_detail` VALUES ('1144', '2019-07-08 9:18:20', '0', '0', null, null, '4', '4', '12', null, 'e1fc0cca6e5647e4a55fa842fc326e72', '2', '36');
INSERT INTO `session_detail` VALUES ('1145', '2019-07-08 9:20:50', '0', '0', null, null, '5', '73', '94', null, 'e1fc0cca6e5647e4a55fa842fc326e72', '2', '36');
INSERT INTO `session_detail` VALUES ('1146', '2019-07-08 5:08:24', '63', '19', null, null, '4', null, null, null, '1aaf51eb7e834a06847cc8c2d6053dd3', '2', '11');
INSERT INTO `session_detail` VALUES ('1147', '2019-07-08 5:06:33', '24', '22', null, null, '7', null, null, null, '1aaf51eb7e834a06847cc8c2d6053dd3', '2', '11');
INSERT INTO `session_detail` VALUES ('1148', '2019-07-08 20:23:15', '0', '0', null, null, '0', null, null, '温泉', 'e3f11b52a143453fa395c77e21e39935', '2', '83');
INSERT INTO `session_detail` VALUES ('1149', '2019-07-08 20:05:43', '0', '0', null, null, '6', null, null, '蛋糕', 'e3f11b52a143453fa395c77e21e39935', '2', '83');
INSERT INTO `session_detail` VALUES ('1150', '2019-07-08 20:08:17', '0', '0', null, null, '0', null, null, '重庆小面', 'e3f11b52a143453fa395c77e21e39935', '2', '83');
INSERT INTO `session_detail` VALUES ('1151', '2019-07-08 20:15:05', '0', '0', null, null, '6', '51', '52', null, 'e3f11b52a143453fa395c77e21e39935', '2', '83');
INSERT INTO `session_detail` VALUES ('1152', '2019-07-08 20:34:22', '0', '0', null, null, '1', '38', '42', null, 'e3f11b52a143453fa395c77e21e39935', '2', '83');
INSERT INTO `session_detail` VALUES ('1153', '2019-07-08 20:57:42', '27', '20', null, null, '6', null, null, null, 'e3f11b52a143453fa395c77e21e39935', '2', '83');
INSERT INTO `session_detail` VALUES ('1154', '2019-07-08 20:04:15', '0', '0', null, null, '9', '93', '55', null, 'e3f11b52a143453fa395c77e21e39935', '2', '83');
INSERT INTO `session_detail` VALUES ('1155', '2019-07-08 20:33:50', '0', '0', '44', '78', '6', null, null, null, 'e3f11b52a143453fa395c77e21e39935', '2', '83');
INSERT INTO `session_detail` VALUES ('1156', '2019-07-08 20:38:37', '0', '0', '21', '41', '4', null, null, null, 'e3f11b52a143453fa395c77e21e39935', '2', '83');
INSERT INTO `session_detail` VALUES ('1157', '2019-07-08 20:43:02', '0', '0', '77', '4', '9', null, null, null, 'e3f11b52a143453fa395c77e21e39935', '2', '83');
INSERT INTO `session_detail` VALUES ('1158', '2019-07-08 20:04:52', '61', '20', null, null, '5', null, null, null, 'e3f11b52a143453fa395c77e21e39935', '2', '83');
INSERT INTO `session_detail` VALUES ('1159', '2019-07-08 20:32:19', '0', '0', '36', '37', '6', null, null, null, 'e3f11b52a143453fa395c77e21e39935', '2', '83');
INSERT INTO `session_detail` VALUES ('1160', '2019-07-08 20:41:14', '0', '0', '41', '54', '8', null, null, null, 'e3f11b52a143453fa395c77e21e39935', '2', '83');
INSERT INTO `session_detail` VALUES ('1161', '2019-07-08 20:51:02', '0', '0', '32', '55', '3', null, null, null, 'e3f11b52a143453fa395c77e21e39935', '2', '83');
INSERT INTO `session_detail` VALUES ('1162', '2019-07-08 20:40:57', '0', '0', null, null, '0', '57', '58', null, 'e3f11b52a143453fa395c77e21e39935', '2', '83');
INSERT INTO `session_detail` VALUES ('1163', '2019-07-08 20:52:30', '0', '0', null, null, '4', null, null, '太古商场', 'e3f11b52a143453fa395c77e21e39935', '2', '83');
INSERT INTO `session_detail` VALUES ('1164', '2019-07-08 12:25:15', '81', '89', null, null, '3', null, null, null, 'c026021fa1d54f40a130423fdb7947d9', '2', '86');
INSERT INTO `session_detail` VALUES ('1165', '2019-07-08 12:14:45', '94', '41', null, null, '7', null, null, null, 'c026021fa1d54f40a130423fdb7947d9', '2', '86');
INSERT INTO `session_detail` VALUES ('1166', '2019-07-08 12:36:38', '76', '39', null, null, '9', null, null, null, 'c026021fa1d54f40a130423fdb7947d9', '2', '86');
INSERT INTO `session_detail` VALUES ('1167', '2019-07-08 12:43:16', '0', '0', '45', '25', '0', null, null, null, 'c026021fa1d54f40a130423fdb7947d9', '2', '86');
INSERT INTO `session_detail` VALUES ('1168', '2019-07-08 12:06:42', '50', '29', null, null, '5', null, null, null, 'c026021fa1d54f40a130423fdb7947d9', '2', '86');
INSERT INTO `session_detail` VALUES ('1169', '2019-07-08 12:21:03', '0', '0', null, null, '6', null, null, '呷哺呷哺', 'c026021fa1d54f40a130423fdb7947d9', '2', '86');
INSERT INTO `session_detail` VALUES ('1170', '2019-07-08 12:52:57', '88', '80', null, null, '7', null, null, null, 'c026021fa1d54f40a130423fdb7947d9', '2', '86');
INSERT INTO `session_detail` VALUES ('1171', '2019-07-08 12:51:47', '0', '0', null, null, '2', null, null, '重庆辣子鸡', 'c026021fa1d54f40a130423fdb7947d9', '2', '86');
INSERT INTO `session_detail` VALUES ('1172', '2019-07-08 12:54:34', '0', '0', '63', '16', '0', null, null, null, 'c026021fa1d54f40a130423fdb7947d9', '2', '86');
INSERT INTO `session_detail` VALUES ('1173', '2019-07-08 18:55:20', '40', '90', null, null, '0', null, null, null, 'efc4df0b95d1422c8b9f042d5252b28c', '2', '60');
INSERT INTO `session_detail` VALUES ('1174', '2019-07-08 18:38:55', '36', '59', null, null, '3', null, null, null, 'efc4df0b95d1422c8b9f042d5252b28c', '2', '60');
INSERT INTO `session_detail` VALUES ('1175', '2019-07-08 18:30:35', '0', '0', null, null, '6', null, null, '国贸大厦', 'efc4df0b95d1422c8b9f042d5252b28c', '2', '60');
INSERT INTO `session_detail` VALUES ('1176', '2019-07-08 18:20:48', '0', '0', null, null, '8', '55', '77', null, 'efc4df0b95d1422c8b9f042d5252b28c', '2', '60');
INSERT INTO `session_detail` VALUES ('1177', '2019-07-08 18:40:57', '0', '0', '44', '39', '3', null, null, null, 'efc4df0b95d1422c8b9f042d5252b28c', '2', '60');
INSERT INTO `session_detail` VALUES ('1178', '2019-07-08 18:15:14', '0', '0', null, null, '6', null, null, '火锅', 'efc4df0b95d1422c8b9f042d5252b28c', '2', '60');
INSERT INTO `session_detail` VALUES ('1179', '2019-07-08 18:48:03', '0', '0', null, null, '2', '3', '74', null, 'efc4df0b95d1422c8b9f042d5252b28c', '2', '60');
INSERT INTO `session_detail` VALUES ('1180', '2019-07-08 18:25:15', '0', '0', null, null, '8', null, null, '重庆辣子鸡', 'efc4df0b95d1422c8b9f042d5252b28c', '2', '60');
INSERT INTO `session_detail` VALUES ('1181', '2019-07-08 18:30:15', '14', '57', null, null, '3', null, null, null, 'efc4df0b95d1422c8b9f042d5252b28c', '2', '60');
INSERT INTO `session_detail` VALUES ('1182', '2019-07-08 18:26:05', '0', '0', '28', '40', '1', null, null, null, 'efc4df0b95d1422c8b9f042d5252b28c', '2', '60');
INSERT INTO `session_detail` VALUES ('1183', '2019-07-08 18:19:07', '0', '0', null, null, '3', null, null, '蛋糕', 'efc4df0b95d1422c8b9f042d5252b28c', '2', '60');
INSERT INTO `session_detail` VALUES ('1184', '2019-07-08 18:40:35', '94', '93', null, null, '5', null, null, null, 'efc4df0b95d1422c8b9f042d5252b28c', '2', '60');
INSERT INTO `session_detail` VALUES ('1185', '2019-07-08 18:05:25', '0', '0', null, null, '1', '90', '62', null, 'efc4df0b95d1422c8b9f042d5252b28c', '2', '60');
INSERT INTO `session_detail` VALUES ('1186', '2019-07-08 18:52:03', '0', '0', null, null, '8', null, null, '新辣道鱼火锅', 'efc4df0b95d1422c8b9f042d5252b28c', '2', '60');
INSERT INTO `session_detail` VALUES ('1187', '2019-07-08 18:05:22', '0', '0', null, null, '1', null, null, '呷哺呷哺', 'efc4df0b95d1422c8b9f042d5252b28c', '2', '60');
INSERT INTO `session_detail` VALUES ('1188', '2019-07-08 9:48:01', '0', '0', null, null, '1', null, null, '重庆辣子鸡', 'e2bcf5566d464263ac05fe6899fe8a07', '2', '52');
INSERT INTO `session_detail` VALUES ('1189', '2019-07-08 9:53:09', '56', '1', null, null, '2', null, null, null, 'e2bcf5566d464263ac05fe6899fe8a07', '2', '52');
INSERT INTO `session_detail` VALUES ('1190', '2019-07-08 9:55:53', '95', '8', null, null, '2', null, null, null, 'e2bcf5566d464263ac05fe6899fe8a07', '2', '52');
INSERT INTO `session_detail` VALUES ('1191', '2019-07-08 9:23:09', '77', '87', null, null, '2', null, null, null, 'e2bcf5566d464263ac05fe6899fe8a07', '2', '52');
INSERT INTO `session_detail` VALUES ('1192', '2019-07-08 9:39:05', '48', '83', null, null, '4', null, null, null, 'e2bcf5566d464263ac05fe6899fe8a07', '2', '52');
INSERT INTO `session_detail` VALUES ('1193', '2019-07-08 9:01:15', '0', '0', null, null, '0', null, null, '国贸大厦', 'e2bcf5566d464263ac05fe6899fe8a07', '2', '52');
INSERT INTO `session_detail` VALUES ('1194', '2019-07-08 9:56:48', '0', '0', null, null, '3', '55', '16', null, 'e2bcf5566d464263ac05fe6899fe8a07', '2', '52');
INSERT INTO `session_detail` VALUES ('1195', '2019-07-08 9:16:12', '13', '32', null, null, '6', null, null, null, 'e2bcf5566d464263ac05fe6899fe8a07', '2', '52');
INSERT INTO `session_detail` VALUES ('1196', '2019-07-08 9:34:45', '0', '0', null, null, '4', '71', '14', null, 'e2bcf5566d464263ac05fe6899fe8a07', '2', '52');
INSERT INTO `session_detail` VALUES ('1197', '2019-07-08 9:57:40', '0', '0', null, null, '6', null, null, '火锅', 'e2bcf5566d464263ac05fe6899fe8a07', '2', '52');
INSERT INTO `session_detail` VALUES ('1198', '2019-07-08 9:03:31', '21', '51', null, null, '5', null, null, null, 'e2bcf5566d464263ac05fe6899fe8a07', '2', '52');
INSERT INTO `session_detail` VALUES ('1199', '2019-07-08 9:24:27', '0', '0', null, null, '1', null, null, '呷哺呷哺', 'e2bcf5566d464263ac05fe6899fe8a07', '2', '52');
INSERT INTO `session_detail` VALUES ('1200', '2019-07-08 9:00:51', '0', '0', null, null, '2', null, null, '重庆辣子鸡', 'e2bcf5566d464263ac05fe6899fe8a07', '2', '52');
INSERT INTO `session_detail` VALUES ('1201', '2019-07-08 9:31:47', '60', '51', null, null, '6', null, null, null, 'e2bcf5566d464263ac05fe6899fe8a07', '2', '52');
INSERT INTO `session_detail` VALUES ('1202', '2019-07-08 9:52:09', '30', '42', null, null, '2', null, null, null, 'e2bcf5566d464263ac05fe6899fe8a07', '2', '52');
INSERT INTO `session_detail` VALUES ('1203', '2019-07-08 9:18:20', '0', '0', null, null, '1', null, null, '重庆小面', 'e2bcf5566d464263ac05fe6899fe8a07', '2', '52');
INSERT INTO `session_detail` VALUES ('1204', '2019-07-08 9:12:44', '0', '0', null, null, '1', null, null, '呷哺呷哺', 'e2bcf5566d464263ac05fe6899fe8a07', '2', '52');
INSERT INTO `session_detail` VALUES ('1205', '2019-07-08 9:47:31', '0', '0', null, null, '1', null, null, '蛋糕', 'e2bcf5566d464263ac05fe6899fe8a07', '2', '52');
INSERT INTO `session_detail` VALUES ('1206', '2019-07-08 9:33:36', '0', '0', null, null, '2', '0', '59', null, 'e2bcf5566d464263ac05fe6899fe8a07', '2', '52');
INSERT INTO `session_detail` VALUES ('1207', '2019-07-08 9:58:34', '0', '0', null, null, '2', null, null, '温泉', 'e2bcf5566d464263ac05fe6899fe8a07', '2', '52');
INSERT INTO `session_detail` VALUES ('1208', '2019-07-08 9:43:43', '0', '0', '80', '71', '3', null, null, null, 'e2bcf5566d464263ac05fe6899fe8a07', '2', '52');
INSERT INTO `session_detail` VALUES ('1209', '2019-07-08 9:18:05', '0', '0', null, null, '3', null, null, '呷哺呷哺', 'e2bcf5566d464263ac05fe6899fe8a07', '2', '52');
INSERT INTO `session_detail` VALUES ('1210', '2019-07-08 9:29:03', '90', '79', null, null, '2', null, null, null, 'e2bcf5566d464263ac05fe6899fe8a07', '2', '52');
INSERT INTO `session_detail` VALUES ('1211', '2019-07-08 9:18:08', '0', '0', null, null, '7', null, null, '太古商场', 'e2bcf5566d464263ac05fe6899fe8a07', '2', '52');
INSERT INTO `session_detail` VALUES ('1212', '2019-07-08 9:51:30', '0', '0', null, null, '6', null, null, '温泉', 'e2bcf5566d464263ac05fe6899fe8a07', '2', '52');
INSERT INTO `session_detail` VALUES ('1213', '2019-07-08 9:00:38', '76', '14', null, null, '7', null, null, null, 'e2bcf5566d464263ac05fe6899fe8a07', '2', '52');
INSERT INTO `session_detail` VALUES ('1214', '2019-07-08 9:03:43', '68', '83', null, null, '4', null, null, null, 'e2bcf5566d464263ac05fe6899fe8a07', '2', '52');
INSERT INTO `session_detail` VALUES ('1215', '2019-07-08 2:00:05', '0', '0', null, null, '4', '45', '81', null, '0daa1d0d707748529939d01a1191b31b', '2', '43');
INSERT INTO `session_detail` VALUES ('1216', '2019-07-08 2:54:27', '39', '89', null, null, '3', null, null, null, '0daa1d0d707748529939d01a1191b31b', '2', '43');
INSERT INTO `session_detail` VALUES ('1217', '2019-07-08 2:33:46', '26', '43', null, null, '0', null, null, null, '0daa1d0d707748529939d01a1191b31b', '2', '43');
INSERT INTO `session_detail` VALUES ('1218', '2019-07-08 2:12:20', '40', '83', null, null, '4', null, null, null, '0daa1d0d707748529939d01a1191b31b', '2', '43');
INSERT INTO `session_detail` VALUES ('1219', '2019-07-08 2:16:18', '37', '6', null, null, '2', null, null, null, '0daa1d0d707748529939d01a1191b31b', '2', '43');
INSERT INTO `session_detail` VALUES ('1220', '2019-07-08 2:18:21', '2', '4', null, null, '8', null, null, null, '0daa1d0d707748529939d01a1191b31b', '2', '43');
INSERT INTO `session_detail` VALUES ('1221', '2019-07-08 2:28:02', '0', '0', null, null, '1', '4', '82', null, '0daa1d0d707748529939d01a1191b31b', '2', '43');
INSERT INTO `session_detail` VALUES ('1222', '2019-07-08 2:57:46', '34', '96', null, null, '7', null, null, null, '0daa1d0d707748529939d01a1191b31b', '2', '43');
INSERT INTO `session_detail` VALUES ('1223', '2019-07-08 2:25:41', '0', '0', null, null, '6', '12', '74', null, '0daa1d0d707748529939d01a1191b31b', '2', '43');
INSERT INTO `session_detail` VALUES ('1224', '2019-07-08 11:18:45', '0', '0', '15', '67', '2', null, null, null, '55f37c439d32458ba99d1d064a99b5f3', '2', '90');
INSERT INTO `session_detail` VALUES ('1225', '2019-07-08 11:32:22', '67', '68', null, null, '1', null, null, null, '55f37c439d32458ba99d1d064a99b5f3', '2', '90');
INSERT INTO `session_detail` VALUES ('1226', '2019-07-08 11:43:47', '0', '0', null, null, '8', '42', '45', null, '55f37c439d32458ba99d1d064a99b5f3', '2', '90');
INSERT INTO `session_detail` VALUES ('1227', '2019-07-08 11:31:20', '0', '0', null, null, '8', '38', '37', null, '55f37c439d32458ba99d1d064a99b5f3', '2', '90');
INSERT INTO `session_detail` VALUES ('1228', '2019-07-08 11:39:46', '0', '0', null, null, '2', null, null, '重庆辣子鸡', '55f37c439d32458ba99d1d064a99b5f3', '2', '90');
INSERT INTO `session_detail` VALUES ('1229', '2019-07-08 11:18:13', '0', '0', '72', '91', '6', null, null, null, '55f37c439d32458ba99d1d064a99b5f3', '2', '90');
INSERT INTO `session_detail` VALUES ('1230', '2019-07-08 11:25:42', '0', '0', '78', '18', '2', null, null, null, '55f37c439d32458ba99d1d064a99b5f3', '2', '90');
INSERT INTO `session_detail` VALUES ('1231', '2019-07-08 11:34:33', '0', '0', '33', '99', '0', null, null, null, '55f37c439d32458ba99d1d064a99b5f3', '2', '90');
INSERT INTO `session_detail` VALUES ('1232', '2019-07-08 11:03:42', '0', '0', '31', '25', '1', null, null, null, '55f37c439d32458ba99d1d064a99b5f3', '2', '90');
INSERT INTO `session_detail` VALUES ('1233', '2019-07-08 11:40:51', '0', '0', null, null, '8', '81', '65', null, '55f37c439d32458ba99d1d064a99b5f3', '2', '90');
INSERT INTO `session_detail` VALUES ('1234', '2019-07-08 11:37:09', '0', '0', '53', '86', '5', null, null, null, '55f37c439d32458ba99d1d064a99b5f3', '2', '90');
INSERT INTO `session_detail` VALUES ('1235', '2019-07-08 11:31:44', '0', '0', '74', '51', '9', null, null, null, '55f37c439d32458ba99d1d064a99b5f3', '2', '90');
INSERT INTO `session_detail` VALUES ('1236', '2019-07-08 11:24:23', '0', '0', '80', '65', '5', null, null, null, '55f37c439d32458ba99d1d064a99b5f3', '2', '90');
INSERT INTO `session_detail` VALUES ('1237', '2019-07-08 11:04:29', '0', '0', null, null, '0', null, null, '重庆小面', '55f37c439d32458ba99d1d064a99b5f3', '2', '90');
INSERT INTO `session_detail` VALUES ('1238', '2019-07-08 11:01:01', '0', '0', null, null, '2', '89', '59', null, '55f37c439d32458ba99d1d064a99b5f3', '2', '90');
INSERT INTO `session_detail` VALUES ('1239', '2019-07-08 19:01:58', '9', '10', null, null, '7', null, null, null, '475782f2966a41cb89876735446ad726', '2', '87');
INSERT INTO `session_detail` VALUES ('1240', '2019-07-08 19:38:30', '40', '70', null, null, '6', null, null, null, '475782f2966a41cb89876735446ad726', '2', '87');
INSERT INTO `session_detail` VALUES ('1241', '2019-07-08 19:08:13', '0', '0', null, null, '3', '77', '97', null, '475782f2966a41cb89876735446ad726', '2', '87');
INSERT INTO `session_detail` VALUES ('1242', '2019-07-08 19:26:33', '0', '0', null, null, '8', '92', '53', null, '475782f2966a41cb89876735446ad726', '2', '87');
INSERT INTO `session_detail` VALUES ('1243', '2019-07-08 19:09:03', '0', '0', null, null, '2', null, null, '火锅', '475782f2966a41cb89876735446ad726', '2', '87');
INSERT INTO `session_detail` VALUES ('1244', '2019-07-08 16:48:18', '3', '64', null, null, '0', null, null, null, 'a87325e0eaba4daebffe86f5a5178312', '2', '36');
INSERT INTO `session_detail` VALUES ('1245', '2019-07-08 16:11:45', '86', '3', null, null, '8', null, null, null, 'a87325e0eaba4daebffe86f5a5178312', '2', '36');
INSERT INTO `session_detail` VALUES ('1246', '2019-07-08 16:36:20', '0', '0', null, null, '2', null, null, '国贸大厦', 'a87325e0eaba4daebffe86f5a5178312', '2', '36');
INSERT INTO `session_detail` VALUES ('1247', '2019-07-08 16:29:50', '0', '0', null, null, '6', null, null, '新辣道鱼火锅', 'a87325e0eaba4daebffe86f5a5178312', '2', '36');
INSERT INTO `session_detail` VALUES ('1248', '2019-07-08 16:08:20', '0', '0', null, null, '2', '79', '63', null, 'a87325e0eaba4daebffe86f5a5178312', '2', '36');
INSERT INTO `session_detail` VALUES ('1249', '2019-07-08 16:16:43', '0', '0', '0', '14', '8', null, null, null, 'a87325e0eaba4daebffe86f5a5178312', '2', '36');
INSERT INTO `session_detail` VALUES ('1250', '2019-07-08 16:25:30', '0', '0', '40', '13', '2', null, null, null, 'a87325e0eaba4daebffe86f5a5178312', '2', '36');
INSERT INTO `session_detail` VALUES ('1251', '2019-07-08 16:07:31', '0', '0', null, null, '9', null, null, '温泉', 'a87325e0eaba4daebffe86f5a5178312', '2', '36');
INSERT INTO `session_detail` VALUES ('1252', '2019-07-08 16:43:02', '59', '0', null, null, '4', null, null, null, 'a87325e0eaba4daebffe86f5a5178312', '2', '36');
INSERT INTO `session_detail` VALUES ('1253', '2019-07-08 8:52:34', '0', '0', null, null, '8', null, null, '呷哺呷哺', 'fdba8a4d4dff4cab8b110563f455651b', '2', '90');
INSERT INTO `session_detail` VALUES ('1254', '2019-07-08 8:05:05', '7', '12', null, null, '6', null, null, null, 'fdba8a4d4dff4cab8b110563f455651b', '2', '90');
INSERT INTO `session_detail` VALUES ('1255', '2019-07-08 8:08:01', '0', '0', null, null, '3', null, null, '重庆小面', 'fdba8a4d4dff4cab8b110563f455651b', '2', '90');
INSERT INTO `session_detail` VALUES ('1256', '2019-07-08 8:57:46', '0', '0', null, null, '6', '95', '37', null, 'fdba8a4d4dff4cab8b110563f455651b', '2', '90');
INSERT INTO `session_detail` VALUES ('1257', '2019-07-08 8:50:12', '0', '0', null, null, '5', '82', '5', null, 'fdba8a4d4dff4cab8b110563f455651b', '2', '90');
INSERT INTO `session_detail` VALUES ('1258', '2019-07-08 8:32:04', '0', '0', null, null, '6', null, null, '国贸大厦', 'fdba8a4d4dff4cab8b110563f455651b', '2', '90');
INSERT INTO `session_detail` VALUES ('1259', '2019-07-08 17:34:30', '0', '0', null, null, '0', '65', '97', null, 'b8cf110a1fa14bd9a7f2ce5b5a95844a', '2', '87');
INSERT INTO `session_detail` VALUES ('1260', '2019-07-08 17:38:24', '0', '0', null, null, '9', '9', '25', null, 'b8cf110a1fa14bd9a7f2ce5b5a95844a', '2', '87');
INSERT INTO `session_detail` VALUES ('1261', '2019-07-08 17:19:50', '0', '0', null, null, '7', '59', '82', null, 'b8cf110a1fa14bd9a7f2ce5b5a95844a', '2', '87');
INSERT INTO `session_detail` VALUES ('1262', '2019-07-08 17:16:18', '0', '0', null, null, '7', null, null, '火锅', 'b8cf110a1fa14bd9a7f2ce5b5a95844a', '2', '87');
INSERT INTO `session_detail` VALUES ('1263', '2019-07-08 17:39:11', '0', '0', null, null, '7', '67', '1', null, 'b8cf110a1fa14bd9a7f2ce5b5a95844a', '2', '87');
INSERT INTO `session_detail` VALUES ('1264', '2019-07-08 17:14:41', '49', '6', null, null, '7', null, null, null, 'b8cf110a1fa14bd9a7f2ce5b5a95844a', '2', '87');
INSERT INTO `session_detail` VALUES ('1265', '2019-07-08 17:14:51', '99', '4', null, null, '9', null, null, null, 'b8cf110a1fa14bd9a7f2ce5b5a95844a', '2', '87');
INSERT INTO `session_detail` VALUES ('1266', '2019-07-08 17:44:29', '0', '0', null, null, '7', '45', '50', null, 'b8cf110a1fa14bd9a7f2ce5b5a95844a', '2', '87');
INSERT INTO `session_detail` VALUES ('1267', '2019-07-08 17:29:43', '0', '0', null, null, '2', '79', '65', null, 'b8cf110a1fa14bd9a7f2ce5b5a95844a', '2', '87');
INSERT INTO `session_detail` VALUES ('1268', '2019-07-08 17:41:31', '0', '0', null, null, '9', null, null, '蛋糕', 'b8cf110a1fa14bd9a7f2ce5b5a95844a', '2', '87');
INSERT INTO `session_detail` VALUES ('1269', '2019-07-08 17:41:31', '14', '89', null, null, '4', null, null, null, 'b8cf110a1fa14bd9a7f2ce5b5a95844a', '2', '87');
INSERT INTO `session_detail` VALUES ('1270', '2019-07-08 17:42:18', '0', '0', null, null, '5', null, null, '温泉', 'b8cf110a1fa14bd9a7f2ce5b5a95844a', '2', '87');
INSERT INTO `session_detail` VALUES ('1271', '2019-07-08 17:34:16', '0', '0', null, null, '3', '31', '5', null, 'b8cf110a1fa14bd9a7f2ce5b5a95844a', '2', '87');
INSERT INTO `session_detail` VALUES ('1272', '2019-07-08 21:21:57', '0', '0', null, null, '2', '80', '19', null, 'ef5aecf9fac54395a0d59e20fe9c81b4', '2', '86');
INSERT INTO `session_detail` VALUES ('1273', '2019-07-08 21:15:10', '70', '7', null, null, '5', null, null, null, 'ef5aecf9fac54395a0d59e20fe9c81b4', '2', '86');
INSERT INTO `session_detail` VALUES ('1274', '2019-07-08 21:29:18', '0', '0', null, null, '5', '82', '47', null, 'ef5aecf9fac54395a0d59e20fe9c81b4', '2', '86');
INSERT INTO `session_detail` VALUES ('1275', '2019-07-08 21:49:52', '0', '0', null, null, '6', null, null, '呷哺呷哺', 'ef5aecf9fac54395a0d59e20fe9c81b4', '2', '86');
INSERT INTO `session_detail` VALUES ('1276', '2019-07-08 21:16:01', '0', '0', null, null, '9', '61', '34', null, 'ef5aecf9fac54395a0d59e20fe9c81b4', '2', '86');
INSERT INTO `session_detail` VALUES ('1277', '2019-07-08 21:34:23', '0', '0', null, null, '1', '9', '55', null, 'ef5aecf9fac54395a0d59e20fe9c81b4', '2', '86');
INSERT INTO `session_detail` VALUES ('1278', '2019-07-08 21:55:20', '66', '81', null, null, '3', null, null, null, 'ef5aecf9fac54395a0d59e20fe9c81b4', '2', '86');
INSERT INTO `session_detail` VALUES ('1279', '2019-07-08 13:28:48', '0', '0', null, null, '6', null, null, '日本料理', '2db771ef85974160bdb06a4183a9a18f', '2', '42');
INSERT INTO `session_detail` VALUES ('1280', '2019-07-08 13:16:47', '0', '0', null, null, '7', '9', '69', null, '2db771ef85974160bdb06a4183a9a18f', '2', '42');
INSERT INTO `session_detail` VALUES ('1281', '2019-07-08 13:34:58', '0', '0', null, null, '0', '44', '5', null, '2db771ef85974160bdb06a4183a9a18f', '2', '42');
INSERT INTO `session_detail` VALUES ('1282', '2019-07-08 13:51:32', '0', '0', null, null, '3', '58', '68', null, '2db771ef85974160bdb06a4183a9a18f', '2', '42');
INSERT INTO `session_detail` VALUES ('1283', '2019-07-08 13:52:40', '0', '0', null, null, '7', null, null, '重庆辣子鸡', '2db771ef85974160bdb06a4183a9a18f', '2', '42');
INSERT INTO `session_detail` VALUES ('1284', '2019-07-08 13:27:38', '0', '0', null, null, '3', '65', '13', null, '2db771ef85974160bdb06a4183a9a18f', '2', '42');
INSERT INTO `session_detail` VALUES ('1285', '2019-07-08 13:02:46', '0', '0', '99', '96', '4', null, null, null, '2db771ef85974160bdb06a4183a9a18f', '2', '42');
INSERT INTO `session_detail` VALUES ('1286', '2019-07-08 13:06:25', '0', '0', null, null, '7', null, null, '火锅', '2db771ef85974160bdb06a4183a9a18f', '2', '42');
INSERT INTO `session_detail` VALUES ('1287', '2019-07-08 13:19:42', '19', '55', null, null, '9', null, null, null, '2db771ef85974160bdb06a4183a9a18f', '2', '42');
INSERT INTO `session_detail` VALUES ('1288', '2019-07-08 13:37:55', '0', '0', '33', '96', '3', null, null, null, '2db771ef85974160bdb06a4183a9a18f', '2', '42');
INSERT INTO `session_detail` VALUES ('1289', '2019-07-08 13:32:30', '0', '0', null, null, '1', '38', '73', null, '2db771ef85974160bdb06a4183a9a18f', '2', '42');
INSERT INTO `session_detail` VALUES ('1290', '2019-07-08 13:36:37', '95', '93', null, null, '0', null, null, null, '2db771ef85974160bdb06a4183a9a18f', '2', '42');
INSERT INTO `session_detail` VALUES ('1291', '2019-07-08 13:23:13', '0', '0', null, null, '5', null, null, '太古商场', '2db771ef85974160bdb06a4183a9a18f', '2', '42');
INSERT INTO `session_detail` VALUES ('1292', '2019-07-08 19:37:55', '19', '52', null, null, '8', null, null, null, 'f1162884b0e948738804f1c8fef7b0d8', '2', '66');
INSERT INTO `session_detail` VALUES ('1293', '2019-07-08 19:06:14', '19', '37', null, null, '0', null, null, null, 'f1162884b0e948738804f1c8fef7b0d8', '2', '66');
INSERT INTO `session_detail` VALUES ('1294', '2019-07-08 19:05:24', '0', '0', null, null, '6', null, null, '国贸大厦', 'f1162884b0e948738804f1c8fef7b0d8', '2', '66');
INSERT INTO `session_detail` VALUES ('1295', '2019-07-08 19:26:14', '0', '0', '55', '81', '8', null, null, null, 'f1162884b0e948738804f1c8fef7b0d8', '2', '66');
INSERT INTO `session_detail` VALUES ('1296', '2019-07-08 10:45:11', '0', '0', null, null, '5', null, null, '太古商场', 'd1bc17af0da94f41a4d4626c89d24105', '2', '89');
INSERT INTO `session_detail` VALUES ('1297', '2019-07-08 10:11:31', '19', '43', null, null, '6', null, null, null, 'd1bc17af0da94f41a4d4626c89d24105', '2', '89');
INSERT INTO `session_detail` VALUES ('1298', '2019-07-08 10:29:44', '7', '3', null, null, '6', null, null, null, 'd1bc17af0da94f41a4d4626c89d24105', '2', '89');
INSERT INTO `session_detail` VALUES ('1299', '2019-07-08 10:52:01', '0', '0', null, null, '4', null, null, '呷哺呷哺', 'd1bc17af0da94f41a4d4626c89d24105', '2', '89');
INSERT INTO `session_detail` VALUES ('1300', '2019-07-08 10:47:16', '0', '0', null, null, '9', '61', '92', null, 'd1bc17af0da94f41a4d4626c89d24105', '2', '89');
INSERT INTO `session_detail` VALUES ('1301', '2019-07-08 10:15:37', '0', '0', '80', '75', '7', null, null, null, 'd1bc17af0da94f41a4d4626c89d24105', '2', '89');
INSERT INTO `session_detail` VALUES ('1302', '2019-07-08 10:04:51', '0', '0', '69', '77', '3', null, null, null, 'd1bc17af0da94f41a4d4626c89d24105', '2', '89');
INSERT INTO `session_detail` VALUES ('1303', '2019-07-08 10:08:54', '0', '0', null, null, '0', '10', '50', null, 'd1bc17af0da94f41a4d4626c89d24105', '2', '89');
INSERT INTO `session_detail` VALUES ('1304', '2019-07-08 10:45:07', '76', '77', null, null, '8', null, null, null, 'd1bc17af0da94f41a4d4626c89d24105', '2', '89');
INSERT INTO `session_detail` VALUES ('1305', '2019-07-08 10:25:52', '0', '0', '85', '79', '7', null, null, null, 'd1bc17af0da94f41a4d4626c89d24105', '2', '89');
INSERT INTO `session_detail` VALUES ('1306', '2019-07-08 2:34:47', '19', '53', null, null, '0', null, null, null, 'da3a9b5e6c7547dfbbaa24ecbb97fab1', '2', '51');
INSERT INTO `session_detail` VALUES ('1307', '2019-07-08 2:16:27', '0', '0', '85', '49', '7', null, null, null, 'da3a9b5e6c7547dfbbaa24ecbb97fab1', '2', '51');
INSERT INTO `session_detail` VALUES ('1308', '2019-07-08 2:55:08', '0', '0', null, null, '5', null, null, '日本料理', 'da3a9b5e6c7547dfbbaa24ecbb97fab1', '2', '51');
INSERT INTO `session_detail` VALUES ('1309', '2019-07-08 2:03:11', '0', '0', '15', '97', '8', null, null, null, 'da3a9b5e6c7547dfbbaa24ecbb97fab1', '2', '51');
INSERT INTO `session_detail` VALUES ('1310', '2019-07-08 2:02:09', '0', '0', '66', '70', '2', null, null, null, 'da3a9b5e6c7547dfbbaa24ecbb97fab1', '2', '51');
INSERT INTO `session_detail` VALUES ('1311', '2019-07-08 2:56:01', '0', '0', null, null, '3', null, null, '呷哺呷哺', 'da3a9b5e6c7547dfbbaa24ecbb97fab1', '2', '51');
INSERT INTO `session_detail` VALUES ('1312', '2019-07-08 2:32:02', '0', '0', '68', '8', '2', null, null, null, 'da3a9b5e6c7547dfbbaa24ecbb97fab1', '2', '51');
INSERT INTO `session_detail` VALUES ('1313', '2019-07-08 2:08:05', '84', '28', null, null, '9', null, null, null, 'da3a9b5e6c7547dfbbaa24ecbb97fab1', '2', '51');
INSERT INTO `session_detail` VALUES ('1314', '2019-07-08 2:37:49', '0', '0', '55', '58', '3', null, null, null, 'da3a9b5e6c7547dfbbaa24ecbb97fab1', '2', '51');
INSERT INTO `session_detail` VALUES ('1315', '2019-07-08 2:29:09', '0', '0', null, null, '5', null, null, '火锅', 'da3a9b5e6c7547dfbbaa24ecbb97fab1', '2', '51');
INSERT INTO `session_detail` VALUES ('1316', '2019-07-08 2:16:17', '0', '0', '88', '36', '4', null, null, null, 'da3a9b5e6c7547dfbbaa24ecbb97fab1', '2', '51');
INSERT INTO `session_detail` VALUES ('1317', '2019-07-08 2:36:46', '38', '24', null, null, '1', null, null, null, 'da3a9b5e6c7547dfbbaa24ecbb97fab1', '2', '51');
INSERT INTO `session_detail` VALUES ('1318', '2019-07-08 2:15:39', '0', '0', null, null, '2', null, null, '太古商场', 'da3a9b5e6c7547dfbbaa24ecbb97fab1', '2', '51');
INSERT INTO `session_detail` VALUES ('1319', '2019-07-08 2:25:58', '0', '0', null, null, '2', null, null, '国贸大厦', 'da3a9b5e6c7547dfbbaa24ecbb97fab1', '2', '51');
INSERT INTO `session_detail` VALUES ('1320', '2019-07-08 2:07:58', '0', '0', null, null, '2', null, null, '国贸大厦', 'da3a9b5e6c7547dfbbaa24ecbb97fab1', '2', '51');
INSERT INTO `session_detail` VALUES ('1321', '2019-07-08 2:39:27', '21', '62', null, null, '3', null, null, null, 'da3a9b5e6c7547dfbbaa24ecbb97fab1', '2', '51');
INSERT INTO `session_detail` VALUES ('1322', '2019-07-08 2:54:23', '64', '77', null, null, '0', null, null, null, 'da3a9b5e6c7547dfbbaa24ecbb97fab1', '2', '51');
INSERT INTO `session_detail` VALUES ('1323', '2019-07-08 2:08:54', '70', '35', null, null, '8', null, null, null, 'da3a9b5e6c7547dfbbaa24ecbb97fab1', '2', '51');
INSERT INTO `session_detail` VALUES ('1324', '2019-07-08 2:38:24', '0', '0', null, null, '0', '60', '82', null, 'da3a9b5e6c7547dfbbaa24ecbb97fab1', '2', '51');
INSERT INTO `session_detail` VALUES ('1325', '2019-07-08 2:35:39', '0', '0', '18', '34', '5', null, null, null, 'da3a9b5e6c7547dfbbaa24ecbb97fab1', '2', '51');
INSERT INTO `session_detail` VALUES ('1326', '2019-07-08 2:55:50', '0', '0', null, null, '5', '54', '96', null, 'da3a9b5e6c7547dfbbaa24ecbb97fab1', '2', '51');
INSERT INTO `session_detail` VALUES ('1327', '2019-07-08 2:27:38', '0', '0', null, null, '5', null, null, '新辣道鱼火锅', 'da3a9b5e6c7547dfbbaa24ecbb97fab1', '2', '51');
INSERT INTO `session_detail` VALUES ('1328', '2019-07-08 2:12:19', '0', '0', null, null, '4', null, null, '国贸大厦', 'da3a9b5e6c7547dfbbaa24ecbb97fab1', '2', '51');
INSERT INTO `session_detail` VALUES ('1329', '2019-07-08 2:05:02', '0', '0', null, null, '7', null, null, '重庆小面', 'da3a9b5e6c7547dfbbaa24ecbb97fab1', '2', '51');
INSERT INTO `session_detail` VALUES ('1330', '2019-07-08 2:34:32', '0', '0', null, null, '0', '73', '64', null, 'da3a9b5e6c7547dfbbaa24ecbb97fab1', '2', '51');
INSERT INTO `session_detail` VALUES ('1331', '2019-07-08 2:09:42', '0', '0', null, null, '1', '8', '73', null, 'da3a9b5e6c7547dfbbaa24ecbb97fab1', '2', '51');
INSERT INTO `session_detail` VALUES ('1332', '2019-07-08 2:50:35', '97', '97', null, null, '9', null, null, null, 'da3a9b5e6c7547dfbbaa24ecbb97fab1', '2', '51');
INSERT INTO `session_detail` VALUES ('1333', '2019-07-08 2:32:11', '0', '0', null, null, '6', null, null, '呷哺呷哺', 'da3a9b5e6c7547dfbbaa24ecbb97fab1', '2', '51');
INSERT INTO `session_detail` VALUES ('1334', '2019-07-08 0:10:00', '0', '0', null, null, '9', null, null, '新辣道鱼火锅', 'f211ab4bafb641a4aa8f0452f12743f8', '2', '5');
INSERT INTO `session_detail` VALUES ('1335', '2019-07-08 0:31:25', '0', '0', null, null, '5', '80', '19', null, 'f211ab4bafb641a4aa8f0452f12743f8', '2', '5');
INSERT INTO `session_detail` VALUES ('1336', '2019-07-08 0:49:07', '0', '0', '48', '7', '3', null, null, null, 'f211ab4bafb641a4aa8f0452f12743f8', '2', '5');
INSERT INTO `session_detail` VALUES ('1337', '2019-07-08 0:20:48', '0', '0', null, null, '3', '23', '76', null, 'f211ab4bafb641a4aa8f0452f12743f8', '2', '5');
INSERT INTO `session_detail` VALUES ('1338', '2019-07-08 0:44:04', '0', '0', null, null, '5', '52', '43', null, 'f211ab4bafb641a4aa8f0452f12743f8', '2', '5');
INSERT INTO `session_detail` VALUES ('1339', '2019-07-08 0:28:06', '0', '0', null, null, '2', '49', '59', null, 'f211ab4bafb641a4aa8f0452f12743f8', '2', '5');
INSERT INTO `session_detail` VALUES ('1340', '2019-07-08 0:11:12', '55', '10', null, null, '7', null, null, null, 'f211ab4bafb641a4aa8f0452f12743f8', '2', '5');
INSERT INTO `session_detail` VALUES ('1341', '2019-07-08 0:51:30', '0', '0', '76', '30', '8', null, null, null, 'f211ab4bafb641a4aa8f0452f12743f8', '2', '5');
INSERT INTO `session_detail` VALUES ('1342', '2019-07-08 0:06:56', '0', '0', '60', '96', '4', null, null, null, 'f211ab4bafb641a4aa8f0452f12743f8', '2', '5');
INSERT INTO `session_detail` VALUES ('1343', '2019-07-08 0:58:50', '0', '0', null, null, '6', '3', '56', null, 'f211ab4bafb641a4aa8f0452f12743f8', '2', '5');
INSERT INTO `session_detail` VALUES ('1344', '2019-07-08 0:20:43', '0', '0', null, null, '6', '96', '99', null, 'f211ab4bafb641a4aa8f0452f12743f8', '2', '5');
INSERT INTO `session_detail` VALUES ('1345', '2019-07-08 0:42:05', '0', '0', null, null, '4', null, null, '日本料理', 'f211ab4bafb641a4aa8f0452f12743f8', '2', '5');
INSERT INTO `session_detail` VALUES ('1346', '2019-07-08 0:53:07', '0', '0', null, null, '3', null, null, '日本料理', 'f211ab4bafb641a4aa8f0452f12743f8', '2', '5');
INSERT INTO `session_detail` VALUES ('1347', '2019-07-08 10:46:27', '62', '84', null, null, '4', null, null, null, '15337ddb60134e7dbece3edef47541e4', '2', '72');
INSERT INTO `session_detail` VALUES ('1348', '2019-07-08 10:52:20', '0', '0', '28', '73', '3', null, null, null, '15337ddb60134e7dbece3edef47541e4', '2', '72');
INSERT INTO `session_detail` VALUES ('1349', '2019-07-08 0:14:25', '0', '0', '61', '69', '3', null, null, null, '9d2fc43ea92b458ab5ab12af317aa2a7', '2', '24');
INSERT INTO `session_detail` VALUES ('1350', '2019-07-08 0:51:11', '99', '75', null, null, '8', null, null, null, '9d2fc43ea92b458ab5ab12af317aa2a7', '2', '24');
INSERT INTO `session_detail` VALUES ('1351', '2019-07-08 0:50:03', '0', '0', '55', '32', '5', null, null, null, '9d2fc43ea92b458ab5ab12af317aa2a7', '2', '24');
INSERT INTO `session_detail` VALUES ('1352', '2019-07-08 0:17:39', '0', '0', null, null, '9', '42', '56', null, '9d2fc43ea92b458ab5ab12af317aa2a7', '2', '24');
INSERT INTO `session_detail` VALUES ('1353', '2019-07-08 0:58:27', '42', '42', null, null, '9', null, null, null, '9d2fc43ea92b458ab5ab12af317aa2a7', '2', '24');
INSERT INTO `session_detail` VALUES ('1354', '2019-07-08 0:31:49', '74', '49', null, null, '8', null, null, null, '9d2fc43ea92b458ab5ab12af317aa2a7', '2', '24');
INSERT INTO `session_detail` VALUES ('1355', '2019-07-08 1:36:10', '0', '0', null, null, '2', '61', '87', null, 'b327fcb7fd39478c88e801beedee78cf', '2', '27');
INSERT INTO `session_detail` VALUES ('1356', '2019-07-08 1:26:57', '0', '0', null, null, '5', '74', '5', null, 'b327fcb7fd39478c88e801beedee78cf', '2', '27');
INSERT INTO `session_detail` VALUES ('1357', '2019-07-08 1:09:06', '0', '0', null, null, '9', '31', '58', null, 'b327fcb7fd39478c88e801beedee78cf', '2', '27');
INSERT INTO `session_detail` VALUES ('1358', '2019-07-08 1:25:54', '0', '0', null, null, '8', null, null, '温泉', 'b327fcb7fd39478c88e801beedee78cf', '2', '27');
INSERT INTO `session_detail` VALUES ('1359', '2019-07-08 1:49:35', '0', '0', '56', '88', '3', null, null, null, 'b327fcb7fd39478c88e801beedee78cf', '2', '27');
INSERT INTO `session_detail` VALUES ('1360', '2019-07-08 1:33:26', '7', '81', null, null, '3', null, null, null, 'b327fcb7fd39478c88e801beedee78cf', '2', '27');
INSERT INTO `session_detail` VALUES ('1361', '2019-07-08 1:40:47', '0', '0', null, null, '4', '64', '62', null, 'b327fcb7fd39478c88e801beedee78cf', '2', '27');
INSERT INTO `session_detail` VALUES ('1362', '2019-07-08 1:41:36', '0', '0', null, null, '7', '94', '66', null, 'b327fcb7fd39478c88e801beedee78cf', '2', '27');
INSERT INTO `session_detail` VALUES ('1363', '2019-07-08 1:37:34', '0', '0', '26', '51', '8', null, null, null, 'b327fcb7fd39478c88e801beedee78cf', '2', '27');
INSERT INTO `session_detail` VALUES ('1364', '2019-07-08 13:38:18', '0', '0', null, null, '2', null, null, '国贸大厦', '5cfb4967a1754aab9b6f740e7959cca0', '2', '59');
INSERT INTO `session_detail` VALUES ('1365', '2019-07-08 13:23:52', '0', '0', null, null, '1', null, null, '温泉', '5cfb4967a1754aab9b6f740e7959cca0', '2', '59');
INSERT INTO `session_detail` VALUES ('1366', '2019-07-08 13:14:17', '0', '0', null, null, '9', null, null, '火锅', '5cfb4967a1754aab9b6f740e7959cca0', '2', '59');
INSERT INTO `session_detail` VALUES ('1367', '2019-07-08 13:31:58', '0', '0', null, null, '9', null, null, '国贸大厦', '5cfb4967a1754aab9b6f740e7959cca0', '2', '59');
INSERT INTO `session_detail` VALUES ('1368', '2019-07-08 13:09:21', '0', '0', null, null, '9', '24', '52', null, '5cfb4967a1754aab9b6f740e7959cca0', '2', '59');
INSERT INTO `session_detail` VALUES ('1369', '2019-07-08 13:58:52', '0', '0', '86', '47', '1', null, null, null, '5cfb4967a1754aab9b6f740e7959cca0', '2', '59');
INSERT INTO `session_detail` VALUES ('1370', '2019-07-08 13:00:53', '0', '0', '64', '43', '5', null, null, null, '5cfb4967a1754aab9b6f740e7959cca0', '2', '59');
INSERT INTO `session_detail` VALUES ('1371', '2019-07-08 13:00:35', '0', '0', null, null, '7', '43', '34', null, '5cfb4967a1754aab9b6f740e7959cca0', '2', '59');
INSERT INTO `session_detail` VALUES ('1372', '2019-07-08 13:07:03', '0', '0', null, null, '8', '48', '38', null, '5cfb4967a1754aab9b6f740e7959cca0', '2', '59');
INSERT INTO `session_detail` VALUES ('1373', '2019-07-08 13:23:00', '0', '0', null, null, '6', null, null, '新辣道鱼火锅', '5cfb4967a1754aab9b6f740e7959cca0', '2', '59');
INSERT INTO `session_detail` VALUES ('1374', '2019-07-08 13:53:32', '0', '0', null, null, '6', '96', '60', null, '5cfb4967a1754aab9b6f740e7959cca0', '2', '59');
INSERT INTO `session_detail` VALUES ('1375', '2019-07-08 13:22:17', '0', '0', '29', '13', '5', null, null, null, '5cfb4967a1754aab9b6f740e7959cca0', '2', '59');
INSERT INTO `session_detail` VALUES ('1376', '2019-07-08 6:01:53', '0', '0', null, null, '2', '54', '9', null, 'b61b3fed13ad4c6a89be2e8e1bb738fc', '2', '90');
INSERT INTO `session_detail` VALUES ('1377', '2019-07-08 6:01:22', '0', '0', null, null, '0', null, null, '温泉', 'b61b3fed13ad4c6a89be2e8e1bb738fc', '2', '90');
INSERT INTO `session_detail` VALUES ('1378', '2019-07-08 6:34:29', '86', '41', null, null, '2', null, null, null, 'b61b3fed13ad4c6a89be2e8e1bb738fc', '2', '90');
INSERT INTO `session_detail` VALUES ('1379', '2019-07-08 6:13:04', '0', '0', '58', '87', '7', null, null, null, 'b61b3fed13ad4c6a89be2e8e1bb738fc', '2', '90');
INSERT INTO `session_detail` VALUES ('1380', '2019-07-08 6:36:22', '36', '22', null, null, '6', null, null, null, 'b61b3fed13ad4c6a89be2e8e1bb738fc', '2', '90');
INSERT INTO `session_detail` VALUES ('1381', '2019-07-08 6:54:30', '0', '0', null, null, '2', '89', '25', null, 'b61b3fed13ad4c6a89be2e8e1bb738fc', '2', '90');
INSERT INTO `session_detail` VALUES ('1382', '2019-07-08 17:42:10', '71', '6', null, null, '0', null, null, null, '2b35e3da16634d8eab8798251df5dfcf', '2', '7');
INSERT INTO `session_detail` VALUES ('1383', '2019-07-08 17:08:54', '0', '0', null, null, '8', null, null, '蛋糕', '2b35e3da16634d8eab8798251df5dfcf', '2', '7');
INSERT INTO `session_detail` VALUES ('1384', '2019-07-08 17:46:39', '92', '28', null, null, '4', null, null, null, '2b35e3da16634d8eab8798251df5dfcf', '2', '7');
INSERT INTO `session_detail` VALUES ('1385', '2019-07-08 17:19:57', '0', '0', null, null, '0', null, null, '新辣道鱼火锅', '2b35e3da16634d8eab8798251df5dfcf', '2', '7');
INSERT INTO `session_detail` VALUES ('1386', '2019-07-08 17:13:45', '0', '0', null, null, '0', '63', '74', null, '2b35e3da16634d8eab8798251df5dfcf', '2', '7');
INSERT INTO `session_detail` VALUES ('1387', '2019-07-08 17:45:42', '62', '12', null, null, '7', null, null, null, '2b35e3da16634d8eab8798251df5dfcf', '2', '7');
INSERT INTO `session_detail` VALUES ('1388', '2019-07-08 17:45:37', '94', '23', null, null, '5', null, null, null, '2b35e3da16634d8eab8798251df5dfcf', '2', '7');
INSERT INTO `session_detail` VALUES ('1389', '2019-07-08 17:50:23', '0', '0', null, null, '8', null, null, '重庆小面', '2b35e3da16634d8eab8798251df5dfcf', '2', '7');
INSERT INTO `session_detail` VALUES ('1390', '2019-07-08 17:41:16', '0', '0', null, null, '9', '19', '58', null, '2b35e3da16634d8eab8798251df5dfcf', '2', '7');
INSERT INTO `session_detail` VALUES ('1391', '2019-07-08 17:31:15', '0', '0', null, null, '0', '48', '19', null, '2b35e3da16634d8eab8798251df5dfcf', '2', '7');
INSERT INTO `session_detail` VALUES ('1392', '2019-07-08 17:37:54', '0', '0', null, null, '0', '33', '48', null, '2b35e3da16634d8eab8798251df5dfcf', '2', '7');
INSERT INTO `session_detail` VALUES ('1393', '2019-07-08 17:31:36', '0', '0', '50', '68', '1', null, null, null, '2b35e3da16634d8eab8798251df5dfcf', '2', '7');
INSERT INTO `session_detail` VALUES ('1394', '2019-07-08 17:22:57', '0', '0', null, null, '6', null, null, '蛋糕', '2b35e3da16634d8eab8798251df5dfcf', '2', '7');
INSERT INTO `session_detail` VALUES ('1395', '2019-07-08 17:27:36', '0', '0', null, null, '4', null, null, '新辣道鱼火锅', '2b35e3da16634d8eab8798251df5dfcf', '2', '7');
INSERT INTO `session_detail` VALUES ('1396', '2019-07-08 17:41:24', '55', '45', null, null, '9', null, null, null, '2b35e3da16634d8eab8798251df5dfcf', '2', '7');
INSERT INTO `session_detail` VALUES ('1397', '2019-07-08 17:30:19', '0', '0', '46', '71', '8', null, null, null, '2b35e3da16634d8eab8798251df5dfcf', '2', '7');
INSERT INTO `session_detail` VALUES ('1398', '2019-07-08 17:18:00', '0', '0', null, null, '2', '50', '18', null, '2b35e3da16634d8eab8798251df5dfcf', '2', '7');
INSERT INTO `session_detail` VALUES ('1399', '2019-07-08 17:07:36', '0', '0', null, null, '7', null, null, '呷哺呷哺', '2b35e3da16634d8eab8798251df5dfcf', '2', '7');
INSERT INTO `session_detail` VALUES ('1400', '2019-07-08 17:55:01', '0', '0', null, null, '0', '75', '19', null, '2b35e3da16634d8eab8798251df5dfcf', '2', '7');
INSERT INTO `session_detail` VALUES ('1401', '2019-07-08 17:20:45', '0', '0', null, null, '6', null, null, '蛋糕', '2b35e3da16634d8eab8798251df5dfcf', '2', '7');
INSERT INTO `session_detail` VALUES ('1402', '2019-07-08 17:07:31', '0', '0', null, null, '6', null, null, '国贸大厦', '2b35e3da16634d8eab8798251df5dfcf', '2', '7');
INSERT INTO `session_detail` VALUES ('1403', '2019-07-08 17:17:13', '0', '0', '62', '14', '2', null, null, null, '2b35e3da16634d8eab8798251df5dfcf', '2', '7');
INSERT INTO `session_detail` VALUES ('1404', '2019-07-08 17:46:16', '87', '95', null, null, '4', null, null, null, '2b35e3da16634d8eab8798251df5dfcf', '2', '7');
INSERT INTO `session_detail` VALUES ('1405', '2019-07-08 17:20:57', '0', '0', null, null, '8', null, null, '温泉', '2b35e3da16634d8eab8798251df5dfcf', '2', '7');
INSERT INTO `session_detail` VALUES ('1406', '2019-07-08 17:07:01', '0', '0', '77', '44', '9', null, null, null, '2b35e3da16634d8eab8798251df5dfcf', '2', '7');
INSERT INTO `session_detail` VALUES ('1407', '2019-07-08 17:18:34', '0', '0', null, null, '3', null, null, '蛋糕', '2b35e3da16634d8eab8798251df5dfcf', '2', '7');
INSERT INTO `session_detail` VALUES ('1408', '2019-07-08 17:11:45', '0', '0', null, null, '0', '58', '27', null, '2b35e3da16634d8eab8798251df5dfcf', '2', '7');
INSERT INTO `session_detail` VALUES ('1409', '2019-07-08 8:43:48', '0', '0', null, null, '3', '45', '39', null, '1dc1a706081e4fd1b2be4f11257b3dd7', '2', '52');
INSERT INTO `session_detail` VALUES ('1410', '2019-07-08 8:50:18', '0', '0', null, null, '1', null, null, '新辣道鱼火锅', '1dc1a706081e4fd1b2be4f11257b3dd7', '2', '52');
INSERT INTO `session_detail` VALUES ('1411', '2019-07-08 8:40:34', '0', '0', '34', '97', '6', null, null, null, '1dc1a706081e4fd1b2be4f11257b3dd7', '2', '52');
INSERT INTO `session_detail` VALUES ('1412', '2019-07-08 8:19:52', '0', '0', null, null, '5', '57', '9', null, '1dc1a706081e4fd1b2be4f11257b3dd7', '2', '52');
INSERT INTO `session_detail` VALUES ('1413', '2019-07-08 8:27:24', '0', '0', null, null, '3', '91', '66', null, '1dc1a706081e4fd1b2be4f11257b3dd7', '2', '52');
INSERT INTO `session_detail` VALUES ('1414', '2019-07-08 8:30:18', '0', '0', null, null, '5', '51', '91', null, '1dc1a706081e4fd1b2be4f11257b3dd7', '2', '52');
INSERT INTO `session_detail` VALUES ('1415', '2019-07-08 8:18:54', '0', '0', '85', '3', '0', null, null, null, '1dc1a706081e4fd1b2be4f11257b3dd7', '2', '52');
INSERT INTO `session_detail` VALUES ('1416', '2019-07-08 8:36:09', '97', '69', null, null, '9', null, null, null, '1dc1a706081e4fd1b2be4f11257b3dd7', '2', '52');
INSERT INTO `session_detail` VALUES ('1417', '2019-07-08 8:11:41', '0', '0', null, null, '5', null, null, '火锅', '1dc1a706081e4fd1b2be4f11257b3dd7', '2', '52');
INSERT INTO `session_detail` VALUES ('1418', '2019-07-08 8:46:08', '33', '86', null, null, '5', null, null, null, '1dc1a706081e4fd1b2be4f11257b3dd7', '2', '52');
INSERT INTO `session_detail` VALUES ('1419', '2019-07-08 1:54:03', '0', '0', null, null, '4', '96', '31', null, 'eaa4e122725a457d9347ceab2370e24b', '2', '90');
INSERT INTO `session_detail` VALUES ('1420', '2019-07-08 1:28:49', '0', '0', '99', '55', '5', null, null, null, 'eaa4e122725a457d9347ceab2370e24b', '2', '90');
INSERT INTO `session_detail` VALUES ('1421', '2019-07-08 22:03:08', '0', '0', '4', '82', '6', null, null, null, '0433b761044d48c79ebeeb741b6b49b2', '2', '67');
INSERT INTO `session_detail` VALUES ('1422', '2019-07-08 22:47:58', '0', '0', '61', '11', '1', null, null, null, '0433b761044d48c79ebeeb741b6b49b2', '2', '67');
INSERT INTO `session_detail` VALUES ('1423', '2019-07-08 5:28:05', '68', '84', null, null, '9', null, null, null, '0cb37cb491d947df850eeadeaaf0ec9b', '2', '90');
INSERT INTO `session_detail` VALUES ('1424', '2019-07-08 5:38:51', '0', '0', '74', '31', '1', null, null, null, '0cb37cb491d947df850eeadeaaf0ec9b', '2', '90');
INSERT INTO `session_detail` VALUES ('1425', '2019-07-08 5:28:43', '0', '0', '2', '34', '0', null, null, null, '0cb37cb491d947df850eeadeaaf0ec9b', '2', '90');
INSERT INTO `session_detail` VALUES ('1426', '2019-07-08 5:21:10', '0', '0', '9', '70', '1', null, null, null, '0cb37cb491d947df850eeadeaaf0ec9b', '2', '90');
INSERT INTO `session_detail` VALUES ('1427', '2019-07-08 5:50:20', '62', '60', null, null, '9', null, null, null, '0cb37cb491d947df850eeadeaaf0ec9b', '2', '90');
INSERT INTO `session_detail` VALUES ('1428', '2019-07-08 5:33:28', '92', '36', null, null, '5', null, null, null, '0cb37cb491d947df850eeadeaaf0ec9b', '2', '90');
INSERT INTO `session_detail` VALUES ('1429', '2019-07-08 5:57:29', '34', '66', null, null, '7', null, null, null, '0cb37cb491d947df850eeadeaaf0ec9b', '2', '90');
INSERT INTO `session_detail` VALUES ('1430', '2019-07-08 5:22:22', '0', '0', null, null, '5', '75', '15', null, '0cb37cb491d947df850eeadeaaf0ec9b', '2', '90');
INSERT INTO `session_detail` VALUES ('1431', '2019-07-08 5:55:00', '0', '0', null, null, '6', null, null, '日本料理', '0cb37cb491d947df850eeadeaaf0ec9b', '2', '90');
INSERT INTO `session_detail` VALUES ('1432', '2019-07-08 5:57:16', '89', '7', null, null, '2', null, null, null, '0cb37cb491d947df850eeadeaaf0ec9b', '2', '90');
INSERT INTO `session_detail` VALUES ('1433', '2019-07-08 5:19:18', '0', '0', '21', '7', '5', null, null, null, '0cb37cb491d947df850eeadeaaf0ec9b', '2', '90');
INSERT INTO `session_detail` VALUES ('1434', '2019-07-08 5:12:49', '32', '24', null, null, '3', null, null, null, '0cb37cb491d947df850eeadeaaf0ec9b', '2', '90');
INSERT INTO `session_detail` VALUES ('1435', '2019-07-08 19:48:41', '0', '0', '90', '43', '3', null, null, null, 'becfb6c6e89d420a916f236cc69c9e82', '2', '19');
INSERT INTO `session_detail` VALUES ('1436', '2019-07-08 19:18:39', '18', '60', null, null, '4', null, null, null, 'becfb6c6e89d420a916f236cc69c9e82', '2', '19');
INSERT INTO `session_detail` VALUES ('1437', '2019-07-08 19:26:38', '1', '11', null, null, '7', null, null, null, 'becfb6c6e89d420a916f236cc69c9e82', '2', '19');
INSERT INTO `session_detail` VALUES ('1438', '2019-07-08 19:09:39', '0', '0', null, null, '3', null, null, '重庆辣子鸡', 'becfb6c6e89d420a916f236cc69c9e82', '2', '19');
INSERT INTO `session_detail` VALUES ('1439', '2019-07-08 19:14:01', '59', '92', null, null, '9', null, null, null, 'becfb6c6e89d420a916f236cc69c9e82', '2', '19');
INSERT INTO `session_detail` VALUES ('1440', '2019-07-08 19:27:33', '0', '0', null, null, '6', '74', '37', null, 'becfb6c6e89d420a916f236cc69c9e82', '2', '19');
INSERT INTO `session_detail` VALUES ('1441', '2019-07-08 19:56:52', '0', '0', null, null, '9', null, null, '温泉', 'becfb6c6e89d420a916f236cc69c9e82', '2', '19');
INSERT INTO `session_detail` VALUES ('1442', '2019-07-08 19:45:49', '0', '0', '20', '9', '5', null, null, null, 'becfb6c6e89d420a916f236cc69c9e82', '2', '19');
INSERT INTO `session_detail` VALUES ('1443', '2019-07-08 19:18:11', '0', '0', null, null, '4', null, null, '国贸大厦', 'becfb6c6e89d420a916f236cc69c9e82', '2', '19');
INSERT INTO `session_detail` VALUES ('1444', '2019-07-08 19:10:02', '0', '0', null, null, '0', '20', '54', null, 'becfb6c6e89d420a916f236cc69c9e82', '2', '19');
INSERT INTO `session_detail` VALUES ('1445', '2019-07-08 19:13:25', '72', '88', null, null, '2', null, null, null, 'becfb6c6e89d420a916f236cc69c9e82', '2', '19');
INSERT INTO `session_detail` VALUES ('1446', '2019-07-08 19:27:08', '0', '0', '75', '43', '5', null, null, null, 'becfb6c6e89d420a916f236cc69c9e82', '2', '19');
INSERT INTO `session_detail` VALUES ('1447', '2019-07-08 19:26:30', '97', '50', null, null, '6', null, null, null, 'becfb6c6e89d420a916f236cc69c9e82', '2', '19');
INSERT INTO `session_detail` VALUES ('1448', '2019-07-08 19:32:58', '0', '0', '55', '4', '3', null, null, null, 'becfb6c6e89d420a916f236cc69c9e82', '2', '19');
INSERT INTO `session_detail` VALUES ('1449', '2019-07-08 19:45:42', '0', '0', '85', '8', '2', null, null, null, 'becfb6c6e89d420a916f236cc69c9e82', '2', '19');
INSERT INTO `session_detail` VALUES ('1450', '2019-07-08 19:01:03', '0', '0', null, null, '2', null, null, '新辣道鱼火锅', 'becfb6c6e89d420a916f236cc69c9e82', '2', '19');
INSERT INTO `session_detail` VALUES ('1451', '2019-07-08 19:15:39', '0', '0', null, null, '3', null, null, '太古商场', 'becfb6c6e89d420a916f236cc69c9e82', '2', '19');
INSERT INTO `session_detail` VALUES ('1452', '2019-07-08 19:33:01', '38', '50', null, null, '3', null, null, null, 'becfb6c6e89d420a916f236cc69c9e82', '2', '19');
INSERT INTO `session_detail` VALUES ('1453', '2019-07-08 19:39:44', '77', '80', null, null, '6', null, null, null, 'becfb6c6e89d420a916f236cc69c9e82', '2', '19');
INSERT INTO `session_detail` VALUES ('1454', '2019-07-08 19:53:28', '0', '0', null, null, '0', null, null, '太古商场', 'becfb6c6e89d420a916f236cc69c9e82', '2', '19');
INSERT INTO `session_detail` VALUES ('1455', '2019-07-08 19:20:46', '0', '0', null, null, '3', '91', '62', null, 'becfb6c6e89d420a916f236cc69c9e82', '2', '19');
INSERT INTO `session_detail` VALUES ('1456', '2019-07-08 19:16:34', '0', '0', null, null, '5', null, null, '蛋糕', 'becfb6c6e89d420a916f236cc69c9e82', '2', '19');
INSERT INTO `session_detail` VALUES ('1457', '2019-07-08 19:43:04', '0', '0', null, null, '3', null, null, '火锅', 'becfb6c6e89d420a916f236cc69c9e82', '2', '19');
INSERT INTO `session_detail` VALUES ('1458', '2019-07-08 12:08:30', '0', '0', null, null, '7', null, null, '新辣道鱼火锅', 'a1f2e7052c8b47da8ebaec4897f8ddbd', '2', '66');
INSERT INTO `session_detail` VALUES ('1459', '2019-07-08 12:19:06', '0', '0', null, null, '7', null, null, '温泉', 'a1f2e7052c8b47da8ebaec4897f8ddbd', '2', '66');
INSERT INTO `session_detail` VALUES ('1460', '2019-07-08 12:39:09', '0', '0', '80', '64', '6', null, null, null, 'a1f2e7052c8b47da8ebaec4897f8ddbd', '2', '66');
INSERT INTO `session_detail` VALUES ('1461', '2019-07-08 12:11:40', '27', '2', null, null, '9', null, null, null, 'a1f2e7052c8b47da8ebaec4897f8ddbd', '2', '66');
INSERT INTO `session_detail` VALUES ('1462', '2019-07-08 12:40:54', '76', '56', null, null, '3', null, null, null, 'a1f2e7052c8b47da8ebaec4897f8ddbd', '2', '66');
INSERT INTO `session_detail` VALUES ('1463', '2019-07-08 12:23:27', '46', '87', null, null, '8', null, null, null, 'a1f2e7052c8b47da8ebaec4897f8ddbd', '2', '66');
INSERT INTO `session_detail` VALUES ('1464', '2019-07-08 12:17:40', '0', '0', null, null, '8', '59', '40', null, 'a1f2e7052c8b47da8ebaec4897f8ddbd', '2', '66');
INSERT INTO `session_detail` VALUES ('1465', '2019-07-08 12:32:50', '88', '87', null, null, '1', null, null, null, 'a1f2e7052c8b47da8ebaec4897f8ddbd', '2', '66');
INSERT INTO `session_detail` VALUES ('1466', '2019-07-08 12:57:38', '16', '85', null, null, '0', null, null, null, 'a1f2e7052c8b47da8ebaec4897f8ddbd', '2', '66');
INSERT INTO `session_detail` VALUES ('1467', '2019-07-08 12:41:47', '0', '0', '85', '36', '7', null, null, null, 'a1f2e7052c8b47da8ebaec4897f8ddbd', '2', '66');
INSERT INTO `session_detail` VALUES ('1468', '2019-07-08 12:04:49', '0', '0', null, null, '0', null, null, '新辣道鱼火锅', 'a1f2e7052c8b47da8ebaec4897f8ddbd', '2', '66');
INSERT INTO `session_detail` VALUES ('1469', '2019-07-08 12:26:04', '58', '44', null, null, '3', null, null, null, 'a1f2e7052c8b47da8ebaec4897f8ddbd', '2', '66');
INSERT INTO `session_detail` VALUES ('1470', '2019-07-08 12:54:11', '0', '0', null, null, '1', null, null, '日本料理', 'a1f2e7052c8b47da8ebaec4897f8ddbd', '2', '66');
INSERT INTO `session_detail` VALUES ('1471', '2019-07-08 12:31:51', '0', '0', null, null, '6', null, null, '火锅', 'a1f2e7052c8b47da8ebaec4897f8ddbd', '2', '66');
INSERT INTO `session_detail` VALUES ('1472', '2019-07-08 18:45:58', '0', '0', null, null, '2', null, null, '重庆小面', 'a01b488fbd2245f79041333c69cf0b89', '2', '67');
INSERT INTO `session_detail` VALUES ('1473', '2019-07-08 18:36:07', '0', '0', null, null, '2', '53', '93', null, 'a01b488fbd2245f79041333c69cf0b89', '2', '67');
INSERT INTO `session_detail` VALUES ('1474', '2019-07-08 18:49:15', '0', '0', null, null, '5', '75', '56', null, 'a01b488fbd2245f79041333c69cf0b89', '2', '67');
INSERT INTO `session_detail` VALUES ('1475', '2019-07-08 18:41:39', '0', '0', null, null, '0', '12', '65', null, 'a01b488fbd2245f79041333c69cf0b89', '2', '67');
INSERT INTO `session_detail` VALUES ('1476', '2019-07-08 18:36:18', '10', '48', null, null, '6', null, null, null, 'a01b488fbd2245f79041333c69cf0b89', '2', '67');
INSERT INTO `session_detail` VALUES ('1477', '2019-07-08 18:37:55', '0', '0', '24', '97', '9', null, null, null, 'a01b488fbd2245f79041333c69cf0b89', '2', '67');
INSERT INTO `session_detail` VALUES ('1478', '2019-07-08 18:31:23', '0', '0', null, null, '4', '28', '68', null, 'a01b488fbd2245f79041333c69cf0b89', '2', '67');
INSERT INTO `session_detail` VALUES ('1479', '2019-07-08 18:01:40', '0', '0', '21', '39', '4', null, null, null, 'a01b488fbd2245f79041333c69cf0b89', '2', '67');
INSERT INTO `session_detail` VALUES ('1480', '2019-07-08 18:04:27', '0', '0', null, null, '8', '48', '80', null, 'a01b488fbd2245f79041333c69cf0b89', '2', '67');
INSERT INTO `session_detail` VALUES ('1481', '2019-07-08 18:23:28', '27', '10', null, null, '2', null, null, null, 'a01b488fbd2245f79041333c69cf0b89', '2', '67');
INSERT INTO `session_detail` VALUES ('1482', '2019-07-08 18:37:29', '0', '0', '33', '51', '2', null, null, null, 'a01b488fbd2245f79041333c69cf0b89', '2', '67');
INSERT INTO `session_detail` VALUES ('1483', '2019-07-08 18:56:14', '0', '0', null, null, '3', '67', '23', null, 'a01b488fbd2245f79041333c69cf0b89', '2', '67');
INSERT INTO `session_detail` VALUES ('1484', '2019-07-08 18:37:38', '0', '0', null, null, '9', '30', '2', null, 'a01b488fbd2245f79041333c69cf0b89', '2', '67');
INSERT INTO `session_detail` VALUES ('1485', '2019-07-08 18:09:32', '0', '0', null, null, '8', null, null, '蛋糕', 'a01b488fbd2245f79041333c69cf0b89', '2', '67');
INSERT INTO `session_detail` VALUES ('1486', '2019-07-08 18:09:50', '0', '0', '23', '88', '9', null, null, null, 'a01b488fbd2245f79041333c69cf0b89', '2', '67');
INSERT INTO `session_detail` VALUES ('1487', '2019-07-08 18:30:53', '0', '0', '31', '74', '4', null, null, null, 'a01b488fbd2245f79041333c69cf0b89', '2', '67');
INSERT INTO `session_detail` VALUES ('1488', '2019-07-08 18:36:27', '0', '0', '45', '14', '4', null, null, null, 'a01b488fbd2245f79041333c69cf0b89', '2', '67');
INSERT INTO `session_detail` VALUES ('1489', '2019-07-08 20:33:24', '82', '50', null, null, '0', null, null, null, 'aa1905ac8bc647218ff78a7aed0e6488', '2', '99');
INSERT INTO `session_detail` VALUES ('1490', '2019-07-08 20:46:09', '0', '0', null, null, '7', null, null, '国贸大厦', 'aa1905ac8bc647218ff78a7aed0e6488', '2', '99');
INSERT INTO `session_detail` VALUES ('1491', '2019-07-08 20:22:49', '15', '18', null, null, '0', null, null, null, 'aa1905ac8bc647218ff78a7aed0e6488', '2', '99');
INSERT INTO `session_detail` VALUES ('1492', '2019-07-08 20:29:58', '0', '0', null, null, '6', '56', '68', null, 'aa1905ac8bc647218ff78a7aed0e6488', '2', '99');
INSERT INTO `session_detail` VALUES ('1493', '2019-07-08 20:33:05', '37', '86', null, null, '4', null, null, null, 'aa1905ac8bc647218ff78a7aed0e6488', '2', '99');
INSERT INTO `session_detail` VALUES ('1494', '2019-07-08 20:17:30', '0', '0', null, null, '7', null, null, '蛋糕', 'aa1905ac8bc647218ff78a7aed0e6488', '2', '99');
INSERT INTO `session_detail` VALUES ('1495', '2019-07-08 20:54:19', '40', '21', null, null, '3', null, null, null, 'aa1905ac8bc647218ff78a7aed0e6488', '2', '99');
INSERT INTO `session_detail` VALUES ('1496', '2019-07-08 20:49:03', '0', '0', '67', '54', '9', null, null, null, 'aa1905ac8bc647218ff78a7aed0e6488', '2', '99');
INSERT INTO `session_detail` VALUES ('1497', '2019-07-08 20:05:22', '2', '34', null, null, '5', null, null, null, 'aa1905ac8bc647218ff78a7aed0e6488', '2', '99');
INSERT INTO `session_detail` VALUES ('1498', '2019-07-08 20:41:26', '55', '44', null, null, '3', null, null, null, 'aa1905ac8bc647218ff78a7aed0e6488', '2', '99');
INSERT INTO `session_detail` VALUES ('1499', '2019-07-08 20:58:41', '0', '0', '94', '10', '2', null, null, null, 'aa1905ac8bc647218ff78a7aed0e6488', '2', '99');
INSERT INTO `session_detail` VALUES ('1500', '2019-07-08 20:08:55', '10', '94', null, null, '5', null, null, null, 'aa1905ac8bc647218ff78a7aed0e6488', '2', '99');
INSERT INTO `session_detail` VALUES ('1501', '2019-07-08 20:20:51', '0', '0', '14', '80', '7', null, null, null, 'aa1905ac8bc647218ff78a7aed0e6488', '2', '99');
INSERT INTO `session_detail` VALUES ('1502', '2019-07-08 20:38:42', '81', '33', null, null, '2', null, null, null, 'aa1905ac8bc647218ff78a7aed0e6488', '2', '99');
INSERT INTO `session_detail` VALUES ('1503', '2019-07-08 20:05:40', '0', '0', null, null, '2', null, null, '火锅', 'aa1905ac8bc647218ff78a7aed0e6488', '2', '99');
INSERT INTO `session_detail` VALUES ('1504', '2019-07-08 4:12:13', '0', '0', null, null, '4', null, null, '国贸大厦', '7731eebc8fb24f83af6ed917a7801e01', '2', '3');
INSERT INTO `session_detail` VALUES ('1505', '2019-07-08 4:55:14', '0', '0', null, null, '9', '35', '82', null, '7731eebc8fb24f83af6ed917a7801e01', '2', '3');
INSERT INTO `session_detail` VALUES ('1506', '2019-07-08 4:54:36', '0', '0', null, null, '4', '88', '6', null, '7731eebc8fb24f83af6ed917a7801e01', '2', '3');
INSERT INTO `session_detail` VALUES ('1507', '2019-07-08 4:25:10', '0', '0', null, null, '9', '21', '39', null, '7731eebc8fb24f83af6ed917a7801e01', '2', '3');
INSERT INTO `session_detail` VALUES ('1508', '2019-07-08 4:45:16', '0', '0', '88', '44', '8', null, null, null, '7731eebc8fb24f83af6ed917a7801e01', '2', '3');
INSERT INTO `session_detail` VALUES ('1509', '2019-07-08 4:43:39', '0', '0', null, null, '3', '26', '31', null, '7731eebc8fb24f83af6ed917a7801e01', '2', '3');
INSERT INTO `session_detail` VALUES ('1510', '2019-07-08 4:51:46', '0', '0', null, null, '1', null, null, '蛋糕', '7731eebc8fb24f83af6ed917a7801e01', '2', '3');
INSERT INTO `session_detail` VALUES ('1511', '2019-07-08 4:33:01', '0', '0', '21', '54', '5', null, null, null, '7731eebc8fb24f83af6ed917a7801e01', '2', '3');
INSERT INTO `session_detail` VALUES ('1512', '2019-07-08 8:40:29', '0', '0', '74', '66', '7', null, null, null, '1f5ca6bf00434894ab0167b5a5510bb3', '2', '85');
INSERT INTO `session_detail` VALUES ('1513', '2019-07-08 8:16:08', '18', '92', null, null, '3', null, null, null, '1f5ca6bf00434894ab0167b5a5510bb3', '2', '85');
INSERT INTO `session_detail` VALUES ('1514', '2019-07-08 8:53:48', '0', '0', null, null, '1', null, null, '新辣道鱼火锅', '1f5ca6bf00434894ab0167b5a5510bb3', '2', '85');
INSERT INTO `session_detail` VALUES ('1515', '2019-07-08 8:32:03', '0', '0', '45', '9', '5', null, null, null, '1f5ca6bf00434894ab0167b5a5510bb3', '2', '85');
INSERT INTO `session_detail` VALUES ('1516', '2019-07-08 8:09:33', '0', '0', null, null, '5', null, null, '新辣道鱼火锅', '1f5ca6bf00434894ab0167b5a5510bb3', '2', '85');
INSERT INTO `session_detail` VALUES ('1517', '2019-07-08 8:49:37', '0', '0', null, null, '4', null, null, '重庆辣子鸡', '1f5ca6bf00434894ab0167b5a5510bb3', '2', '85');
INSERT INTO `session_detail` VALUES ('1518', '2019-07-08 8:46:48', '0', '0', null, null, '6', '21', '62', null, '1f5ca6bf00434894ab0167b5a5510bb3', '2', '85');
INSERT INTO `session_detail` VALUES ('1519', '2019-07-08 4:21:26', '0', '0', null, null, '4', '84', '33', null, '5d21acf6eef741bdb7e7211eef25ff4f', '2', '75');
INSERT INTO `session_detail` VALUES ('1520', '2019-07-08 4:35:28', '0', '0', null, null, '3', null, null, '重庆小面', '5d21acf6eef741bdb7e7211eef25ff4f', '2', '75');
INSERT INTO `session_detail` VALUES ('1521', '2019-07-08 4:13:24', '16', '17', null, null, '5', null, null, null, '5d21acf6eef741bdb7e7211eef25ff4f', '2', '75');
INSERT INTO `session_detail` VALUES ('1522', '2019-07-08 4:43:40', '61', '61', null, null, '4', null, null, null, '5d21acf6eef741bdb7e7211eef25ff4f', '2', '75');
INSERT INTO `session_detail` VALUES ('1523', '2019-07-08 4:42:15', '0', '0', null, null, '9', '96', '17', null, '5d21acf6eef741bdb7e7211eef25ff4f', '2', '75');
INSERT INTO `session_detail` VALUES ('1524', '2019-07-08 4:53:52', '0', '0', '35', '92', '9', null, null, null, '5d21acf6eef741bdb7e7211eef25ff4f', '2', '75');
INSERT INTO `session_detail` VALUES ('1525', '2019-07-08 2:01:51', '0', '0', null, null, '3', null, null, '呷哺呷哺', 'a5c6315eea81432a9c479934e4374fe5', '2', '11');
INSERT INTO `session_detail` VALUES ('1526', '2019-07-08 2:29:43', '28', '43', null, null, '9', null, null, null, 'a5c6315eea81432a9c479934e4374fe5', '2', '11');
INSERT INTO `session_detail` VALUES ('1527', '2019-07-08 2:51:31', '93', '47', null, null, '2', null, null, null, 'a5c6315eea81432a9c479934e4374fe5', '2', '11');
INSERT INTO `session_detail` VALUES ('1528', '2019-07-08 2:43:28', '27', '16', null, null, '4', null, null, null, 'a5c6315eea81432a9c479934e4374fe5', '2', '11');
INSERT INTO `session_detail` VALUES ('1529', '2019-07-08 2:51:46', '0', '0', null, null, '7', null, null, '蛋糕', 'a5c6315eea81432a9c479934e4374fe5', '2', '11');
INSERT INTO `session_detail` VALUES ('1530', '2019-07-08 2:24:10', '77', '59', null, null, '6', null, null, null, 'a5c6315eea81432a9c479934e4374fe5', '2', '11');
INSERT INTO `session_detail` VALUES ('1531', '2019-07-08 2:39:18', '0', '0', '35', '77', '2', null, null, null, 'a5c6315eea81432a9c479934e4374fe5', '2', '11');
INSERT INTO `session_detail` VALUES ('1532', '2019-07-08 2:08:07', '0', '0', null, null, '6', '80', '62', null, 'a5c6315eea81432a9c479934e4374fe5', '2', '11');
INSERT INTO `session_detail` VALUES ('1533', '2019-07-08 2:28:04', '0', '0', '90', '97', '6', null, null, null, 'a5c6315eea81432a9c479934e4374fe5', '2', '11');
INSERT INTO `session_detail` VALUES ('1534', '2019-07-08 2:10:46', '0', '0', '66', '30', '0', null, null, null, 'a5c6315eea81432a9c479934e4374fe5', '2', '11');
INSERT INTO `session_detail` VALUES ('1535', '2019-07-08 2:52:41', '68', '71', null, null, '4', null, null, null, 'a5c6315eea81432a9c479934e4374fe5', '2', '11');
INSERT INTO `session_detail` VALUES ('1536', '2019-07-08 2:45:57', '0', '0', null, null, '9', '74', '88', null, 'a5c6315eea81432a9c479934e4374fe5', '2', '11');
INSERT INTO `session_detail` VALUES ('1537', '2019-07-08 2:36:52', '16', '53', null, null, '5', null, null, null, 'a5c6315eea81432a9c479934e4374fe5', '2', '11');
INSERT INTO `session_detail` VALUES ('1538', '2019-07-08 2:53:23', '57', '45', null, null, '9', null, null, null, 'a5c6315eea81432a9c479934e4374fe5', '2', '11');
INSERT INTO `session_detail` VALUES ('1539', '2019-07-08 2:49:41', '0', '0', null, null, '1', null, null, '重庆辣子鸡', 'a5c6315eea81432a9c479934e4374fe5', '2', '11');
INSERT INTO `session_detail` VALUES ('1540', '2019-07-08 2:50:45', '3', '28', null, null, '0', null, null, null, 'a5c6315eea81432a9c479934e4374fe5', '2', '11');
INSERT INTO `session_detail` VALUES ('1541', '2019-07-08 2:36:48', '7', '37', null, null, '8', null, null, null, 'a5c6315eea81432a9c479934e4374fe5', '2', '11');
INSERT INTO `session_detail` VALUES ('1542', '2019-07-08 2:39:53', '74', '28', null, null, '6', null, null, null, 'a5c6315eea81432a9c479934e4374fe5', '2', '11');
INSERT INTO `session_detail` VALUES ('1543', '2019-07-08 2:18:27', '0', '0', null, null, '8', null, null, '呷哺呷哺', 'a5c6315eea81432a9c479934e4374fe5', '2', '11');
INSERT INTO `session_detail` VALUES ('1544', '2019-07-08 0:55:27', '15', '35', null, null, '3', null, null, null, 'c0123f3ea4914002b380f43afc2c3b7c', '2', '51');
INSERT INTO `session_detail` VALUES ('1545', '2019-07-08 0:00:51', '0', '0', null, null, '6', '66', '87', null, 'c0123f3ea4914002b380f43afc2c3b7c', '2', '51');
INSERT INTO `session_detail` VALUES ('1546', '2019-07-08 0:08:24', '0', '0', null, null, '0', '90', '51', null, 'c0123f3ea4914002b380f43afc2c3b7c', '2', '51');
INSERT INTO `session_detail` VALUES ('1547', '2019-07-08 0:50:01', '0', '0', '64', '37', '6', null, null, null, 'c0123f3ea4914002b380f43afc2c3b7c', '2', '51');
INSERT INTO `session_detail` VALUES ('1548', '2019-07-08 0:02:34', '0', '0', null, null, '5', null, null, '蛋糕', 'c0123f3ea4914002b380f43afc2c3b7c', '2', '51');
INSERT INTO `session_detail` VALUES ('1549', '2019-07-08 0:02:28', '0', '0', null, null, '4', '4', '4', null, 'c0123f3ea4914002b380f43afc2c3b7c', '2', '51');
INSERT INTO `session_detail` VALUES ('1550', '2019-07-08 3:23:13', '12', '88', null, null, '3', null, null, null, '82844c9bf9e14ffdb93be9afcd6f34fe', '2', '75');
INSERT INTO `session_detail` VALUES ('1551', '2019-07-08 3:42:03', '0', '0', null, null, '3', '47', '94', null, '82844c9bf9e14ffdb93be9afcd6f34fe', '2', '75');
INSERT INTO `session_detail` VALUES ('1552', '2019-07-08 3:10:20', '0', '0', '12', '45', '7', null, null, null, '82844c9bf9e14ffdb93be9afcd6f34fe', '2', '75');
INSERT INTO `session_detail` VALUES ('1553', '2019-07-08 3:45:29', '0', '0', null, null, '0', '55', '36', null, '82844c9bf9e14ffdb93be9afcd6f34fe', '2', '75');
INSERT INTO `session_detail` VALUES ('1554', '2019-07-08 3:23:19', '0', '0', null, null, '4', null, null, '新辣道鱼火锅', '82844c9bf9e14ffdb93be9afcd6f34fe', '2', '75');
INSERT INTO `session_detail` VALUES ('1555', '2019-07-08 3:48:56', '73', '24', null, null, '6', null, null, null, '82844c9bf9e14ffdb93be9afcd6f34fe', '2', '75');
INSERT INTO `session_detail` VALUES ('1556', '2019-07-08 3:39:15', '0', '0', null, null, '0', '56', '50', null, '82844c9bf9e14ffdb93be9afcd6f34fe', '2', '75');
INSERT INTO `session_detail` VALUES ('1557', '2019-07-08 3:06:16', '0', '0', '33', '18', '0', null, null, null, '82844c9bf9e14ffdb93be9afcd6f34fe', '2', '75');
INSERT INTO `session_detail` VALUES ('1558', '2019-07-08 3:25:27', '0', '0', null, null, '4', '90', '22', null, '82844c9bf9e14ffdb93be9afcd6f34fe', '2', '75');
INSERT INTO `session_detail` VALUES ('1559', '2019-07-08 3:01:29', '79', '33', null, null, '6', null, null, null, '82844c9bf9e14ffdb93be9afcd6f34fe', '2', '75');
INSERT INTO `session_detail` VALUES ('1560', '2019-07-08 3:17:47', '83', '37', null, null, '4', null, null, null, '82844c9bf9e14ffdb93be9afcd6f34fe', '2', '75');
INSERT INTO `session_detail` VALUES ('1561', '2019-07-08 3:29:27', '0', '0', null, null, '7', '7', '60', null, '82844c9bf9e14ffdb93be9afcd6f34fe', '2', '75');
INSERT INTO `session_detail` VALUES ('1562', '2019-07-08 20:24:24', '36', '44', null, null, '0', null, null, null, '1ad43083e1e2486cb79719cd916b2b8f', '2', '60');
INSERT INTO `session_detail` VALUES ('1563', '2019-07-08 20:33:15', '48', '12', null, null, '4', null, null, null, '1ad43083e1e2486cb79719cd916b2b8f', '2', '60');
INSERT INTO `session_detail` VALUES ('1564', '2019-07-08 20:35:11', '29', '36', null, null, '3', null, null, null, '1ad43083e1e2486cb79719cd916b2b8f', '2', '60');
INSERT INTO `session_detail` VALUES ('1565', '2019-07-08 20:31:11', '99', '27', null, null, '1', null, null, null, '1ad43083e1e2486cb79719cd916b2b8f', '2', '60');
INSERT INTO `session_detail` VALUES ('1566', '2019-07-08 20:22:10', '0', '0', null, null, '7', '85', '68', null, '1ad43083e1e2486cb79719cd916b2b8f', '2', '60');
INSERT INTO `session_detail` VALUES ('1567', '2019-07-08 20:09:46', '0', '0', null, null, '0', null, null, '国贸大厦', '1ad43083e1e2486cb79719cd916b2b8f', '2', '60');
INSERT INTO `session_detail` VALUES ('1568', '2019-07-08 20:57:04', '0', '0', '3', '26', '9', null, null, null, '1ad43083e1e2486cb79719cd916b2b8f', '2', '60');
INSERT INTO `session_detail` VALUES ('1569', '2019-07-08 20:35:56', '0', '0', null, null, '0', '21', '99', null, '1ad43083e1e2486cb79719cd916b2b8f', '2', '60');
INSERT INTO `session_detail` VALUES ('1570', '2019-07-08 20:18:53', '0', '0', null, null, '9', '67', '78', null, '1ad43083e1e2486cb79719cd916b2b8f', '2', '60');
INSERT INTO `session_detail` VALUES ('1571', '2019-07-08 20:43:08', '0', '0', '75', '88', '9', null, null, null, '1ad43083e1e2486cb79719cd916b2b8f', '2', '60');
INSERT INTO `session_detail` VALUES ('1572', '2019-07-08 20:21:04', '11', '68', null, null, '6', null, null, null, '1ad43083e1e2486cb79719cd916b2b8f', '2', '60');
INSERT INTO `session_detail` VALUES ('1573', '2019-07-08 20:51:46', '0', '0', null, null, '5', '26', '33', null, '1ad43083e1e2486cb79719cd916b2b8f', '2', '60');
INSERT INTO `session_detail` VALUES ('1574', '2019-07-08 20:33:42', '33', '65', null, null, '2', null, null, null, '1ad43083e1e2486cb79719cd916b2b8f', '2', '60');
INSERT INTO `session_detail` VALUES ('1575', '2019-07-08 20:00:44', '54', '72', null, null, '8', null, null, null, '1ad43083e1e2486cb79719cd916b2b8f', '2', '60');
INSERT INTO `session_detail` VALUES ('1576', '2019-07-08 20:34:31', '0', '0', null, null, '6', null, null, '新辣道鱼火锅', '1ad43083e1e2486cb79719cd916b2b8f', '2', '60');
INSERT INTO `session_detail` VALUES ('1577', '2019-07-08 20:12:11', '0', '0', null, null, '0', null, null, '国贸大厦', '1ad43083e1e2486cb79719cd916b2b8f', '2', '60');
INSERT INTO `session_detail` VALUES ('1578', '2019-07-08 20:42:32', '13', '14', null, null, '7', null, null, null, '1ad43083e1e2486cb79719cd916b2b8f', '2', '60');
INSERT INTO `session_detail` VALUES ('1579', '2019-07-08 20:37:24', '0', '0', null, null, '9', null, null, '温泉', '1ad43083e1e2486cb79719cd916b2b8f', '2', '60');
INSERT INTO `session_detail` VALUES ('1580', '2019-07-08 20:44:09', '0', '0', null, null, '1', '14', '29', null, '1ad43083e1e2486cb79719cd916b2b8f', '2', '60');
INSERT INTO `session_detail` VALUES ('1581', '2019-07-08 20:03:20', '87', '86', null, null, '6', null, null, null, '1ad43083e1e2486cb79719cd916b2b8f', '2', '60');
INSERT INTO `session_detail` VALUES ('1582', '2019-07-08 20:29:06', '0', '0', '79', '51', '1', null, null, null, '1ad43083e1e2486cb79719cd916b2b8f', '2', '60');
INSERT INTO `session_detail` VALUES ('1583', '2019-07-08 20:42:24', '0', '0', null, null, '4', null, null, '呷哺呷哺', '1ad43083e1e2486cb79719cd916b2b8f', '2', '60');
INSERT INTO `session_detail` VALUES ('1584', '2019-07-08 13:46:58', '44', '69', null, null, '2', null, null, null, 'd964b684df474331a72ffcc534027a9c', '2', '0');
INSERT INTO `session_detail` VALUES ('1585', '2019-07-08 13:05:41', '0', '0', '3', '3', '0', null, null, null, 'd964b684df474331a72ffcc534027a9c', '2', '0');
INSERT INTO `session_detail` VALUES ('1586', '2019-07-08 13:32:01', '0', '0', '85', '47', '9', null, null, null, 'd964b684df474331a72ffcc534027a9c', '2', '0');
INSERT INTO `session_detail` VALUES ('1587', '2019-07-08 13:55:58', '0', '0', null, null, '4', '34', '52', null, 'd964b684df474331a72ffcc534027a9c', '2', '0');
INSERT INTO `session_detail` VALUES ('1588', '2019-07-08 13:56:29', '0', '0', null, null, '3', null, null, '重庆小面', 'd964b684df474331a72ffcc534027a9c', '2', '0');
INSERT INTO `session_detail` VALUES ('1589', '2019-07-08 13:36:33', '0', '0', '58', '94', '6', null, null, null, 'd964b684df474331a72ffcc534027a9c', '2', '0');
INSERT INTO `session_detail` VALUES ('1590', '2019-07-08 13:43:25', '59', '52', null, null, '6', null, null, null, 'd964b684df474331a72ffcc534027a9c', '2', '0');
INSERT INTO `session_detail` VALUES ('1591', '2019-07-08 13:38:31', '0', '0', null, null, '8', '76', '62', null, 'd964b684df474331a72ffcc534027a9c', '2', '0');
INSERT INTO `session_detail` VALUES ('1592', '2019-07-08 13:57:17', '44', '47', null, null, '4', null, null, null, 'd964b684df474331a72ffcc534027a9c', '2', '0');
INSERT INTO `session_detail` VALUES ('1593', '2019-07-08 13:13:23', '0', '0', null, null, '5', '66', '98', null, 'd964b684df474331a72ffcc534027a9c', '2', '0');
INSERT INTO `session_detail` VALUES ('1594', '2019-07-08 11:11:22', '0', '0', '67', '66', '1', null, null, null, '6b6a995eda4147938018753c1cf6911d', '2', '49');
INSERT INTO `session_detail` VALUES ('1595', '2019-07-08 11:56:39', '0', '0', null, null, '1', '8', '31', null, '6b6a995eda4147938018753c1cf6911d', '2', '49');
INSERT INTO `session_detail` VALUES ('1596', '2019-07-08 11:08:44', '0', '0', null, null, '9', null, null, '重庆小面', '6b6a995eda4147938018753c1cf6911d', '2', '49');
INSERT INTO `session_detail` VALUES ('1597', '2019-07-08 11:21:29', '0', '0', null, null, '8', '96', '53', null, '6b6a995eda4147938018753c1cf6911d', '2', '49');
INSERT INTO `session_detail` VALUES ('1598', '2019-07-08 11:37:31', '0', '0', null, null, '1', null, null, '呷哺呷哺', '6b6a995eda4147938018753c1cf6911d', '2', '49');
INSERT INTO `session_detail` VALUES ('1599', '2019-07-08 11:48:03', '76', '44', null, null, '0', null, null, null, '6b6a995eda4147938018753c1cf6911d', '2', '49');
INSERT INTO `session_detail` VALUES ('1600', '2019-07-08 11:44:08', '0', '0', null, null, '3', '7', '18', null, '6b6a995eda4147938018753c1cf6911d', '2', '49');
INSERT INTO `session_detail` VALUES ('1601', '2019-07-08 11:24:19', '0', '0', null, null, '1', null, null, '重庆小面', '6b6a995eda4147938018753c1cf6911d', '2', '49');
INSERT INTO `session_detail` VALUES ('1602', '2019-07-08 11:51:07', '0', '0', null, null, '8', null, null, '温泉', '6b6a995eda4147938018753c1cf6911d', '2', '49');
INSERT INTO `session_detail` VALUES ('1603', '2019-07-08 11:38:30', '21', '69', null, null, '5', null, null, null, '6b6a995eda4147938018753c1cf6911d', '2', '49');
INSERT INTO `session_detail` VALUES ('1604', '2019-07-08 11:43:19', '0', '0', '0', '35', '8', null, null, null, '6b6a995eda4147938018753c1cf6911d', '2', '49');
INSERT INTO `session_detail` VALUES ('1605', '2019-07-08 11:51:47', '40', '99', null, null, '7', null, null, null, '6b6a995eda4147938018753c1cf6911d', '2', '49');
INSERT INTO `session_detail` VALUES ('1606', '2019-07-08 11:25:39', '21', '55', null, null, '2', null, null, null, '1b3b804937b34f19b629a3046c5a1b05', '2', '36');
INSERT INTO `session_detail` VALUES ('1607', '2019-07-08 11:55:48', '69', '86', null, null, '2', null, null, null, '1b3b804937b34f19b629a3046c5a1b05', '2', '36');
INSERT INTO `session_detail` VALUES ('1608', '2019-07-08 11:15:27', '0', '0', null, null, '5', null, null, '温泉', '1b3b804937b34f19b629a3046c5a1b05', '2', '36');
INSERT INTO `session_detail` VALUES ('1609', '2019-07-08 11:09:20', '61', '1', null, null, '7', null, null, null, '1b3b804937b34f19b629a3046c5a1b05', '2', '36');
INSERT INTO `session_detail` VALUES ('1610', '2019-07-08 11:17:20', '0', '0', null, null, '4', '63', '69', null, '1b3b804937b34f19b629a3046c5a1b05', '2', '36');
INSERT INTO `session_detail` VALUES ('1611', '2019-07-08 11:23:37', '0', '0', null, null, '8', '3', '79', null, '1b3b804937b34f19b629a3046c5a1b05', '2', '36');
INSERT INTO `session_detail` VALUES ('1612', '2019-07-08 11:44:06', '0', '0', null, null, '9', null, null, '日本料理', '1b3b804937b34f19b629a3046c5a1b05', '2', '36');
INSERT INTO `session_detail` VALUES ('1613', '2019-07-08 11:55:19', '0', '0', null, null, '8', null, null, '太古商场', '1b3b804937b34f19b629a3046c5a1b05', '2', '36');
INSERT INTO `session_detail` VALUES ('1614', '2019-07-08 11:33:54', '0', '0', '25', '55', '9', null, null, null, '1b3b804937b34f19b629a3046c5a1b05', '2', '36');
INSERT INTO `session_detail` VALUES ('1615', '2019-07-08 11:31:45', '0', '0', null, null, '6', null, null, '重庆辣子鸡', '1b3b804937b34f19b629a3046c5a1b05', '2', '36');
INSERT INTO `session_detail` VALUES ('1616', '2019-07-08 11:05:50', '0', '0', '76', '88', '4', null, null, null, '1b3b804937b34f19b629a3046c5a1b05', '2', '36');
INSERT INTO `session_detail` VALUES ('1617', '2019-07-08 21:32:07', '0', '0', '15', '65', '4', null, null, null, 'cd37fcf0cfff47e5950f9757be643941', '2', '20');
INSERT INTO `session_detail` VALUES ('1618', '2019-07-08 21:43:55', '2', '8', null, null, '4', null, null, null, 'cd37fcf0cfff47e5950f9757be643941', '2', '20');
INSERT INTO `session_detail` VALUES ('1619', '2019-07-08 21:00:53', '0', '0', null, null, '0', '74', '77', null, 'cd37fcf0cfff47e5950f9757be643941', '2', '20');
INSERT INTO `session_detail` VALUES ('1620', '2019-07-08 21:40:43', '51', '48', null, null, '7', null, null, null, 'cd37fcf0cfff47e5950f9757be643941', '2', '20');
INSERT INTO `session_detail` VALUES ('1621', '2019-07-08 21:01:38', '0', '0', '90', '27', '8', null, null, null, 'cd37fcf0cfff47e5950f9757be643941', '2', '20');
INSERT INTO `session_detail` VALUES ('1622', '2019-07-08 21:05:53', '0', '0', null, null, '9', null, null, '蛋糕', 'cd37fcf0cfff47e5950f9757be643941', '2', '20');
INSERT INTO `session_detail` VALUES ('1623', '2019-07-08 21:26:11', '0', '0', null, null, '6', null, null, '太古商场', 'cd37fcf0cfff47e5950f9757be643941', '2', '20');
INSERT INTO `session_detail` VALUES ('1624', '2019-07-08 21:30:21', '0', '0', '79', '56', '1', null, null, null, 'cd37fcf0cfff47e5950f9757be643941', '2', '20');
INSERT INTO `session_detail` VALUES ('1625', '2019-07-08 21:57:10', '0', '0', null, null, '9', '53', '44', null, 'cd37fcf0cfff47e5950f9757be643941', '2', '20');
INSERT INTO `session_detail` VALUES ('1626', '2019-07-08 21:04:00', '0', '0', '8', '37', '2', null, null, null, 'cd37fcf0cfff47e5950f9757be643941', '2', '20');
INSERT INTO `session_detail` VALUES ('1627', '2019-07-08 14:08:22', '89', '16', null, null, '9', null, null, null, '0a19ef653dfa4c54a3300eaf25a1d231', '2', '67');
INSERT INTO `session_detail` VALUES ('1628', '2019-07-08 14:25:23', '0', '0', '91', '24', '2', null, null, null, '0a19ef653dfa4c54a3300eaf25a1d231', '2', '67');
INSERT INTO `session_detail` VALUES ('1629', '2019-07-08 14:53:36', '46', '56', null, null, '2', null, null, null, '0a19ef653dfa4c54a3300eaf25a1d231', '2', '67');
INSERT INTO `session_detail` VALUES ('1630', '2019-07-08 14:40:09', '0', '0', '52', '97', '7', null, null, null, '0a19ef653dfa4c54a3300eaf25a1d231', '2', '67');
INSERT INTO `session_detail` VALUES ('1631', '2019-07-08 14:23:52', '0', '0', '14', '18', '2', null, null, null, '0a19ef653dfa4c54a3300eaf25a1d231', '2', '67');
INSERT INTO `session_detail` VALUES ('1632', '2019-07-08 14:36:13', '60', '64', null, null, '0', null, null, null, '0a19ef653dfa4c54a3300eaf25a1d231', '2', '67');
INSERT INTO `session_detail` VALUES ('1633', '2019-07-08 14:52:35', '0', '0', null, null, '4', null, null, '蛋糕', '0a19ef653dfa4c54a3300eaf25a1d231', '2', '67');
INSERT INTO `session_detail` VALUES ('1634', '2019-07-08 14:27:32', '0', '0', null, null, '0', null, null, '蛋糕', '0a19ef653dfa4c54a3300eaf25a1d231', '2', '67');
INSERT INTO `session_detail` VALUES ('1635', '2019-07-08 14:24:24', '0', '0', '57', '81', '9', null, null, null, '0a19ef653dfa4c54a3300eaf25a1d231', '2', '67');
INSERT INTO `session_detail` VALUES ('1636', '2019-07-08 15:28:11', '56', '61', null, null, '3', null, null, null, '483ab89b95284cb6b661088ce86dbd81', '2', '7');
INSERT INTO `session_detail` VALUES ('1637', '2019-07-08 15:13:29', '0', '0', null, null, '6', null, null, '新辣道鱼火锅', '483ab89b95284cb6b661088ce86dbd81', '2', '7');
INSERT INTO `session_detail` VALUES ('1638', '2019-07-08 15:07:11', '0', '0', '1', '67', '0', null, null, null, '483ab89b95284cb6b661088ce86dbd81', '2', '7');
INSERT INTO `session_detail` VALUES ('1639', '2019-07-08 15:25:09', '0', '0', null, null, '8', '36', '87', null, '483ab89b95284cb6b661088ce86dbd81', '2', '7');
INSERT INTO `session_detail` VALUES ('1640', '2019-07-08 15:21:05', '68', '50', null, null, '1', null, null, null, '483ab89b95284cb6b661088ce86dbd81', '2', '7');
INSERT INTO `session_detail` VALUES ('1641', '2019-07-08 15:20:57', '0', '0', null, null, '1', '94', '74', null, '483ab89b95284cb6b661088ce86dbd81', '2', '7');
INSERT INTO `session_detail` VALUES ('1642', '2019-07-08 15:57:29', '0', '0', '82', '55', '8', null, null, null, '483ab89b95284cb6b661088ce86dbd81', '2', '7');
INSERT INTO `session_detail` VALUES ('1643', '2019-07-08 15:09:01', '0', '0', null, null, '7', '5', '9', null, '483ab89b95284cb6b661088ce86dbd81', '2', '7');
INSERT INTO `session_detail` VALUES ('1644', '2019-07-08 15:28:05', '0', '0', '61', '33', '9', null, null, null, '483ab89b95284cb6b661088ce86dbd81', '2', '7');
INSERT INTO `session_detail` VALUES ('1645', '2019-07-08 15:57:11', '0', '0', null, null, '7', null, null, '重庆辣子鸡', '483ab89b95284cb6b661088ce86dbd81', '2', '7');
INSERT INTO `session_detail` VALUES ('1646', '2019-07-08 15:50:50', '0', '0', null, null, '7', null, null, '重庆小面', '483ab89b95284cb6b661088ce86dbd81', '2', '7');
INSERT INTO `session_detail` VALUES ('1647', '2019-07-08 15:39:35', '0', '0', null, null, '3', null, null, '国贸大厦', '483ab89b95284cb6b661088ce86dbd81', '2', '7');
INSERT INTO `session_detail` VALUES ('1648', '2019-07-08 15:16:38', '0', '0', null, null, '7', null, null, '日本料理', '483ab89b95284cb6b661088ce86dbd81', '2', '7');
INSERT INTO `session_detail` VALUES ('1649', '2019-07-08 15:15:48', '0', '0', null, null, '4', null, null, '温泉', '483ab89b95284cb6b661088ce86dbd81', '2', '7');
INSERT INTO `session_detail` VALUES ('1650', '2019-07-08 15:23:29', '3', '67', null, null, '1', null, null, null, '483ab89b95284cb6b661088ce86dbd81', '2', '7');
INSERT INTO `session_detail` VALUES ('1651', '2019-07-08 15:40:55', '0', '0', null, null, '0', null, null, '蛋糕', 'f290e1aa12d441589ba0aef42dfd7914', '2', '60');
INSERT INTO `session_detail` VALUES ('1652', '2019-07-08 15:21:34', '0', '0', null, null, '4', null, null, '新辣道鱼火锅', 'f290e1aa12d441589ba0aef42dfd7914', '2', '60');
INSERT INTO `session_detail` VALUES ('1653', '2019-07-08 15:50:55', '0', '0', null, null, '5', null, null, '温泉', 'f290e1aa12d441589ba0aef42dfd7914', '2', '60');
INSERT INTO `session_detail` VALUES ('1654', '2019-07-08 15:47:19', '0', '0', null, null, '1', '73', '66', null, 'f290e1aa12d441589ba0aef42dfd7914', '2', '60');
INSERT INTO `session_detail` VALUES ('1655', '2019-07-08 15:01:54', '0', '0', null, null, '2', null, null, '重庆辣子鸡', 'f290e1aa12d441589ba0aef42dfd7914', '2', '60');
INSERT INTO `session_detail` VALUES ('1656', '2019-07-08 15:06:21', '0', '0', null, null, '0', '55', '47', null, 'f290e1aa12d441589ba0aef42dfd7914', '2', '60');
INSERT INTO `session_detail` VALUES ('1657', '2019-07-08 15:25:48', '0', '80', null, null, '2', null, null, null, 'f290e1aa12d441589ba0aef42dfd7914', '2', '60');
INSERT INTO `session_detail` VALUES ('1658', '2019-07-08 15:23:02', '0', '0', null, null, '3', null, null, '日本料理', 'f290e1aa12d441589ba0aef42dfd7914', '2', '60');
INSERT INTO `session_detail` VALUES ('1659', '2019-07-08 15:11:03', '58', '1', null, null, '7', null, null, null, 'f290e1aa12d441589ba0aef42dfd7914', '2', '60');
INSERT INTO `session_detail` VALUES ('1660', '2019-07-08 15:16:39', '0', '0', '98', '68', '3', null, null, null, 'f290e1aa12d441589ba0aef42dfd7914', '2', '60');
INSERT INTO `session_detail` VALUES ('1661', '2019-07-08 16:07:34', '0', '0', null, null, '2', null, null, '新辣道鱼火锅', 'f0d142dd98514fc0932b03f9da13ea15', '2', '27');
INSERT INTO `session_detail` VALUES ('1662', '2019-07-08 16:38:08', '16', '24', null, null, '7', null, null, null, 'f0d142dd98514fc0932b03f9da13ea15', '2', '27');
INSERT INTO `session_detail` VALUES ('1663', '2019-07-08 16:46:27', '65', '83', null, null, '5', null, null, null, 'f0d142dd98514fc0932b03f9da13ea15', '2', '27');
INSERT INTO `session_detail` VALUES ('1664', '2019-07-08 16:08:04', '0', '0', null, null, '2', '52', '11', null, 'f0d142dd98514fc0932b03f9da13ea15', '2', '27');
INSERT INTO `session_detail` VALUES ('1665', '2019-07-08 16:21:33', '95', '47', null, null, '9', null, null, null, 'f0d142dd98514fc0932b03f9da13ea15', '2', '27');
INSERT INTO `session_detail` VALUES ('1666', '2019-07-08 16:10:15', '0', '0', null, null, '5', null, null, '温泉', 'f0d142dd98514fc0932b03f9da13ea15', '2', '27');
INSERT INTO `session_detail` VALUES ('1667', '2019-07-08 16:02:50', '0', '0', null, null, '7', null, null, '重庆辣子鸡', 'f0d142dd98514fc0932b03f9da13ea15', '2', '27');
INSERT INTO `session_detail` VALUES ('1668', '2019-07-08 16:52:34', '0', '0', null, null, '3', null, null, '呷哺呷哺', 'f0d142dd98514fc0932b03f9da13ea15', '2', '27');
INSERT INTO `session_detail` VALUES ('1669', '2019-07-08 16:18:30', '0', '0', '40', '32', '3', null, null, null, 'f0d142dd98514fc0932b03f9da13ea15', '2', '27');
INSERT INTO `session_detail` VALUES ('1670', '2019-07-08 16:54:48', '0', '0', null, null, '6', '43', '4', null, 'f0d142dd98514fc0932b03f9da13ea15', '2', '27');
INSERT INTO `session_detail` VALUES ('1671', '2019-07-08 16:31:46', '0', '0', '10', '39', '1', null, null, null, 'f0d142dd98514fc0932b03f9da13ea15', '2', '27');
INSERT INTO `session_detail` VALUES ('1672', '2019-07-08 16:52:40', '0', '0', null, null, '1', '29', '31', null, '279184f2557d432bb73da40fa6161a23', '2', '90');
INSERT INTO `session_detail` VALUES ('1673', '2019-07-08 16:19:15', '0', '0', '14', '22', '8', null, null, null, '279184f2557d432bb73da40fa6161a23', '2', '90');
INSERT INTO `session_detail` VALUES ('1674', '2019-07-08 16:47:29', '21', '61', null, null, '0', null, null, null, '279184f2557d432bb73da40fa6161a23', '2', '90');
INSERT INTO `session_detail` VALUES ('1675', '2019-07-08 16:31:21', '0', '0', '38', '79', '0', null, null, null, '279184f2557d432bb73da40fa6161a23', '2', '90');
INSERT INTO `session_detail` VALUES ('1676', '2019-07-08 16:13:11', '0', '0', '81', '51', '2', null, null, null, '279184f2557d432bb73da40fa6161a23', '2', '90');
INSERT INTO `session_detail` VALUES ('1677', '2019-07-08 16:11:57', '0', '0', null, null, '2', null, null, '呷哺呷哺', '279184f2557d432bb73da40fa6161a23', '2', '90');
INSERT INTO `session_detail` VALUES ('1678', '2019-07-08 16:53:47', '0', '0', '76', '61', '7', null, null, null, '279184f2557d432bb73da40fa6161a23', '2', '90');
INSERT INTO `session_detail` VALUES ('1679', '2019-07-08 16:26:33', '0', '0', null, null, '6', null, null, '国贸大厦', '279184f2557d432bb73da40fa6161a23', '2', '90');
INSERT INTO `session_detail` VALUES ('1680', '2019-07-08 16:03:38', '0', '0', '99', '73', '7', null, null, null, '279184f2557d432bb73da40fa6161a23', '2', '90');
INSERT INTO `session_detail` VALUES ('1681', '2019-07-08 16:40:57', '0', '0', null, null, '3', null, null, '新辣道鱼火锅', '279184f2557d432bb73da40fa6161a23', '2', '90');
INSERT INTO `session_detail` VALUES ('1682', '2019-07-08 16:16:00', '0', '0', null, null, '8', '68', '73', null, '279184f2557d432bb73da40fa6161a23', '2', '90');
INSERT INTO `session_detail` VALUES ('1683', '2019-07-08 16:09:40', '11', '33', null, null, '0', null, null, null, '279184f2557d432bb73da40fa6161a23', '2', '90');
INSERT INTO `session_detail` VALUES ('1684', '2019-07-08 16:10:20', '0', '0', null, null, '4', null, null, '国贸大厦', '279184f2557d432bb73da40fa6161a23', '2', '90');
INSERT INTO `session_detail` VALUES ('1685', '2019-07-08 16:48:14', '13', '73', null, null, '4', null, null, null, '279184f2557d432bb73da40fa6161a23', '2', '90');
INSERT INTO `session_detail` VALUES ('1686', '2019-07-08 16:31:54', '0', '0', null, null, '4', '59', '4', null, '279184f2557d432bb73da40fa6161a23', '2', '90');
INSERT INTO `session_detail` VALUES ('1687', '2019-07-08 15:07:30', '0', '0', null, null, '7', '24', '17', null, 'cc070a37417b4bc293b8b3ae49946dbb', '2', '74');
INSERT INTO `session_detail` VALUES ('1688', '2019-07-08 15:40:58', '0', '0', '0', '25', '9', null, null, null, 'cc070a37417b4bc293b8b3ae49946dbb', '2', '74');
INSERT INTO `session_detail` VALUES ('1689', '2019-07-08 15:36:48', '6', '45', null, null, '7', null, null, null, 'cc070a37417b4bc293b8b3ae49946dbb', '2', '74');
INSERT INTO `session_detail` VALUES ('1690', '2019-07-08 15:44:40', '59', '7', null, null, '5', null, null, null, 'cc070a37417b4bc293b8b3ae49946dbb', '2', '74');
INSERT INTO `session_detail` VALUES ('1691', '2019-07-08 12:24:11', '0', '0', '19', '65', '0', null, null, null, '7b60111b33e943d4a29c4a156f854e9b', '2', '60');
INSERT INTO `session_detail` VALUES ('1692', '2019-07-08 12:15:23', '0', '0', null, null, '0', null, null, '温泉', '7b60111b33e943d4a29c4a156f854e9b', '2', '60');
INSERT INTO `session_detail` VALUES ('1693', '2019-07-08 12:57:50', '0', '0', null, null, '7', null, null, '新辣道鱼火锅', '7b60111b33e943d4a29c4a156f854e9b', '2', '60');
INSERT INTO `session_detail` VALUES ('1694', '2019-07-08 12:01:43', '0', '0', null, null, '2', null, null, '新辣道鱼火锅', '7b60111b33e943d4a29c4a156f854e9b', '2', '60');
INSERT INTO `session_detail` VALUES ('1695', '2019-07-08 12:32:49', '0', '0', null, null, '5', '46', '23', null, '7b60111b33e943d4a29c4a156f854e9b', '2', '60');
INSERT INTO `session_detail` VALUES ('1696', '2019-07-08 12:04:27', '93', '88', null, null, '0', null, null, null, '7b60111b33e943d4a29c4a156f854e9b', '2', '60');
INSERT INTO `session_detail` VALUES ('1697', '2019-07-08 12:02:23', '6', '18', null, null, '6', null, null, null, '7b60111b33e943d4a29c4a156f854e9b', '2', '60');
INSERT INTO `session_detail` VALUES ('1698', '2019-07-08 12:45:01', '0', '0', null, null, '3', null, null, '呷哺呷哺', '7b60111b33e943d4a29c4a156f854e9b', '2', '60');
INSERT INTO `session_detail` VALUES ('1699', '2019-07-08 12:44:01', '0', '0', null, null, '4', '90', '66', null, '7b60111b33e943d4a29c4a156f854e9b', '2', '60');
INSERT INTO `session_detail` VALUES ('1700', '2019-07-08 12:28:00', '80', '31', null, null, '6', null, null, null, '7b60111b33e943d4a29c4a156f854e9b', '2', '60');
INSERT INTO `session_detail` VALUES ('1701', '2019-07-08 12:54:27', '0', '0', '18', '73', '2', null, null, null, '7b60111b33e943d4a29c4a156f854e9b', '2', '60');
INSERT INTO `session_detail` VALUES ('1702', '2019-07-08 12:29:10', '0', '0', null, null, '5', null, null, '火锅', '7b60111b33e943d4a29c4a156f854e9b', '2', '60');
INSERT INTO `session_detail` VALUES ('1703', '2019-07-08 12:21:37', '31', '67', null, null, '2', null, null, null, '7b60111b33e943d4a29c4a156f854e9b', '2', '60');
INSERT INTO `session_detail` VALUES ('1704', '2019-07-08 12:37:16', '89', '41', null, null, '6', null, null, null, '7b60111b33e943d4a29c4a156f854e9b', '2', '60');
INSERT INTO `session_detail` VALUES ('1705', '2019-07-08 12:39:31', '0', '0', null, null, '2', '53', '95', null, '7b60111b33e943d4a29c4a156f854e9b', '2', '60');
INSERT INTO `session_detail` VALUES ('1706', '2019-07-08 12:28:07', '0', '0', null, null, '7', '88', '13', null, '7b60111b33e943d4a29c4a156f854e9b', '2', '60');
INSERT INTO `session_detail` VALUES ('1707', '2019-07-08 12:13:44', '0', '0', null, null, '6', '35', '9', null, '7b60111b33e943d4a29c4a156f854e9b', '2', '60');
INSERT INTO `session_detail` VALUES ('1708', '2019-07-08 12:06:06', '0', '0', '12', '51', '8', null, null, null, '7b60111b33e943d4a29c4a156f854e9b', '2', '60');
INSERT INTO `session_detail` VALUES ('1709', '2019-07-08 12:16:31', '36', '74', null, null, '9', null, null, null, '7b60111b33e943d4a29c4a156f854e9b', '2', '60');
INSERT INTO `session_detail` VALUES ('1710', '2019-07-08 12:41:14', '84', '23', null, null, '5', null, null, null, '7b60111b33e943d4a29c4a156f854e9b', '2', '60');
INSERT INTO `session_detail` VALUES ('1711', '2019-07-08 12:17:20', '0', '0', '23', '86', '1', null, null, null, '7b60111b33e943d4a29c4a156f854e9b', '2', '60');
INSERT INTO `session_detail` VALUES ('1712', '2019-07-08 1:37:36', '0', '0', null, null, '2', null, null, '呷哺呷哺', 'e699f917d7fc482fb50435096e0fb6d2', '2', '90');
INSERT INTO `session_detail` VALUES ('1713', '2019-07-08 1:21:24', '0', '0', null, null, '2', null, null, '日本料理', 'e699f917d7fc482fb50435096e0fb6d2', '2', '90');
INSERT INTO `session_detail` VALUES ('1714', '2019-07-08 1:47:01', '0', '0', '23', '16', '1', null, null, null, 'e699f917d7fc482fb50435096e0fb6d2', '2', '90');
INSERT INTO `session_detail` VALUES ('1715', '2019-07-08 1:39:27', '0', '0', '69', '4', '7', null, null, null, 'e699f917d7fc482fb50435096e0fb6d2', '2', '90');
INSERT INTO `session_detail` VALUES ('1716', '2019-07-08 1:27:47', '81', '39', null, null, '2', null, null, null, 'e699f917d7fc482fb50435096e0fb6d2', '2', '90');
INSERT INTO `session_detail` VALUES ('1717', '2019-07-08 1:35:12', '0', '0', null, null, '8', null, null, '太古商场', 'e699f917d7fc482fb50435096e0fb6d2', '2', '90');
INSERT INTO `session_detail` VALUES ('1718', '2019-07-08 1:00:07', '58', '71', null, null, '7', null, null, null, 'e699f917d7fc482fb50435096e0fb6d2', '2', '90');
INSERT INTO `session_detail` VALUES ('1719', '2019-07-08 1:42:53', '26', '30', null, null, '1', null, null, null, 'e699f917d7fc482fb50435096e0fb6d2', '2', '90');
INSERT INTO `session_detail` VALUES ('1720', '2019-07-08 1:27:57', '0', '0', '28', '51', '5', null, null, null, 'e699f917d7fc482fb50435096e0fb6d2', '2', '90');
INSERT INTO `session_detail` VALUES ('1721', '2019-07-08 1:34:32', '0', '0', null, null, '4', '26', '99', null, 'e699f917d7fc482fb50435096e0fb6d2', '2', '90');
INSERT INTO `session_detail` VALUES ('1722', '2019-07-08 1:07:52', '0', '0', '52', '57', '3', null, null, null, 'e699f917d7fc482fb50435096e0fb6d2', '2', '90');
INSERT INTO `session_detail` VALUES ('1723', '2019-07-08 4:41:30', '0', '0', null, null, '0', '74', '73', null, '8caa6ad6640f4dfebd9636ff5f84a9d7', '2', '36');
INSERT INTO `session_detail` VALUES ('1724', '2019-07-08 4:15:17', '0', '0', null, null, '7', null, null, '火锅', '8caa6ad6640f4dfebd9636ff5f84a9d7', '2', '36');
INSERT INTO `session_detail` VALUES ('1725', '2019-07-08 4:24:35', '0', '0', null, null, '2', '83', '16', null, '8caa6ad6640f4dfebd9636ff5f84a9d7', '2', '36');
INSERT INTO `session_detail` VALUES ('1726', '2019-07-08 4:44:04', '0', '0', '50', '60', '1', null, null, null, '8caa6ad6640f4dfebd9636ff5f84a9d7', '2', '36');
INSERT INTO `session_detail` VALUES ('1727', '2019-07-08 4:04:08', '0', '0', null, null, '1', null, null, '太古商场', '8caa6ad6640f4dfebd9636ff5f84a9d7', '2', '36');
INSERT INTO `session_detail` VALUES ('1728', '2019-07-08 4:25:41', '38', '16', null, null, '9', null, null, null, '8caa6ad6640f4dfebd9636ff5f84a9d7', '2', '36');
INSERT INTO `session_detail` VALUES ('1729', '2019-07-08 4:57:33', '0', '0', null, null, '2', '51', '84', null, '8caa6ad6640f4dfebd9636ff5f84a9d7', '2', '36');
INSERT INTO `session_detail` VALUES ('1730', '2019-07-08 4:45:28', '0', '0', null, null, '4', null, null, '国贸大厦', '8caa6ad6640f4dfebd9636ff5f84a9d7', '2', '36');
INSERT INTO `session_detail` VALUES ('1731', '2019-07-08 4:45:57', '0', '0', null, null, '6', '61', '86', null, '8caa6ad6640f4dfebd9636ff5f84a9d7', '2', '36');
INSERT INTO `session_detail` VALUES ('1732', '2019-07-08 4:09:35', '91', '91', null, null, '2', null, null, null, '8caa6ad6640f4dfebd9636ff5f84a9d7', '2', '36');
INSERT INTO `session_detail` VALUES ('1733', '2019-07-08 4:43:00', '0', '0', null, null, '9', '2', '88', null, '8caa6ad6640f4dfebd9636ff5f84a9d7', '2', '36');
INSERT INTO `session_detail` VALUES ('1734', '2019-07-08 4:05:50', '0', '0', null, null, '6', null, null, '国贸大厦', '8caa6ad6640f4dfebd9636ff5f84a9d7', '2', '36');
INSERT INTO `session_detail` VALUES ('1735', '2019-07-08 4:07:46', '0', '0', '40', '8', '2', null, null, null, '8caa6ad6640f4dfebd9636ff5f84a9d7', '2', '36');
INSERT INTO `session_detail` VALUES ('1736', '2019-07-08 4:55:45', '0', '0', null, null, '9', null, null, '重庆小面', '8caa6ad6640f4dfebd9636ff5f84a9d7', '2', '36');
INSERT INTO `session_detail` VALUES ('1737', '2019-07-08 4:55:22', '0', '0', null, null, '4', null, null, '火锅', '8caa6ad6640f4dfebd9636ff5f84a9d7', '2', '36');
INSERT INTO `session_detail` VALUES ('1738', '2019-07-08 4:34:10', '0', '0', null, null, '7', '65', '77', null, '8caa6ad6640f4dfebd9636ff5f84a9d7', '2', '36');
INSERT INTO `session_detail` VALUES ('1739', '2019-07-08 4:08:28', '2', '54', null, null, '4', null, null, null, '8caa6ad6640f4dfebd9636ff5f84a9d7', '2', '36');
INSERT INTO `session_detail` VALUES ('1740', '2019-07-08 7:11:07', '0', '0', '69', '94', '0', null, null, null, 'dd8310f733524c6d8434019a0d56c295', '2', '27');
INSERT INTO `session_detail` VALUES ('1741', '2019-07-08 16:57:16', '0', '0', null, null, '2', '15', '19', null, '1e503cb4bb5a4f9f8e29260ce2541906', '2', '7');
INSERT INTO `session_detail` VALUES ('1742', '2019-07-08 16:50:29', '0', '0', null, null, '7', null, null, '重庆辣子鸡', '1e503cb4bb5a4f9f8e29260ce2541906', '2', '7');
INSERT INTO `session_detail` VALUES ('1743', '2019-07-08 1:56:40', '0', '0', null, null, '9', '37', '34', null, '73b745a28f394b4a95273dfa4c9a0651', '2', '20');
INSERT INTO `session_detail` VALUES ('1744', '2019-07-08 1:24:44', '0', '0', null, null, '8', '75', '13', null, '73b745a28f394b4a95273dfa4c9a0651', '2', '20');
INSERT INTO `session_detail` VALUES ('1745', '2019-07-08 1:01:22', '62', '6', null, null, '0', null, null, null, '73b745a28f394b4a95273dfa4c9a0651', '2', '20');
INSERT INTO `session_detail` VALUES ('1746', '2019-07-08 1:49:43', '31', '6', null, null, '3', null, null, null, '73b745a28f394b4a95273dfa4c9a0651', '2', '20');
INSERT INTO `session_detail` VALUES ('1747', '2019-07-08 12:20:45', '0', '0', null, null, '3', '89', '30', null, '326447b1b11242bf95a74b3985621399', '2', '10');
INSERT INTO `session_detail` VALUES ('1748', '2019-07-08 12:39:11', '0', '0', null, null, '3', null, null, '火锅', '326447b1b11242bf95a74b3985621399', '2', '10');
INSERT INTO `session_detail` VALUES ('1749', '2019-07-08 12:46:15', '0', '0', null, null, '5', '43', '3', null, '326447b1b11242bf95a74b3985621399', '2', '10');
INSERT INTO `session_detail` VALUES ('1750', '2019-07-08 12:43:12', '0', '0', null, null, '0', '60', '21', null, '326447b1b11242bf95a74b3985621399', '2', '10');
INSERT INTO `session_detail` VALUES ('1751', '2019-07-08 12:09:53', '0', '0', null, null, '0', null, null, '温泉', '326447b1b11242bf95a74b3985621399', '2', '10');
INSERT INTO `session_detail` VALUES ('1752', '2019-07-08 12:41:50', '0', '0', null, null, '3', '93', '4', null, '326447b1b11242bf95a74b3985621399', '2', '10');
INSERT INTO `session_detail` VALUES ('1753', '2019-07-08 12:35:16', '0', '0', null, null, '6', '96', '8', null, '326447b1b11242bf95a74b3985621399', '2', '10');
INSERT INTO `session_detail` VALUES ('1754', '2019-07-08 12:58:18', '0', '0', null, null, '7', null, null, '日本料理', '326447b1b11242bf95a74b3985621399', '2', '10');
INSERT INTO `session_detail` VALUES ('1755', '2019-07-08 12:41:28', '25', '43', null, null, '0', null, null, null, '326447b1b11242bf95a74b3985621399', '2', '10');
INSERT INTO `session_detail` VALUES ('1756', '2019-07-08 12:39:20', '0', '0', '57', '9', '6', null, null, null, '326447b1b11242bf95a74b3985621399', '2', '10');
INSERT INTO `session_detail` VALUES ('1757', '2019-07-08 12:02:56', '0', '0', null, null, '1', null, null, '新辣道鱼火锅', '326447b1b11242bf95a74b3985621399', '2', '10');
INSERT INTO `session_detail` VALUES ('1758', '2019-07-08 12:00:40', '0', '0', null, null, '8', '18', '60', null, '326447b1b11242bf95a74b3985621399', '2', '10');
INSERT INTO `session_detail` VALUES ('1759', '2019-07-08 12:54:51', '0', '0', null, null, '6', null, null, '日本料理', '326447b1b11242bf95a74b3985621399', '2', '10');
INSERT INTO `session_detail` VALUES ('1760', '2019-07-08 12:23:00', '0', '0', '79', '83', '2', null, null, null, '326447b1b11242bf95a74b3985621399', '2', '10');
INSERT INTO `session_detail` VALUES ('1761', '2019-07-08 12:51:09', '0', '0', null, null, '8', '70', '94', null, '326447b1b11242bf95a74b3985621399', '2', '10');
INSERT INTO `session_detail` VALUES ('1762', '2019-07-08 12:06:57', '0', '0', null, null, '3', '1', '83', null, '326447b1b11242bf95a74b3985621399', '2', '10');
INSERT INTO `session_detail` VALUES ('1763', '2019-07-08 12:01:52', '33', '6', null, null, '2', null, null, null, '326447b1b11242bf95a74b3985621399', '2', '10');
INSERT INTO `session_detail` VALUES ('1764', '2019-07-08 0:03:30', '0', '0', '2', '16', '3', null, null, null, 'f91043093cb8430e9a9130436699d009', '2', '51');
INSERT INTO `session_detail` VALUES ('1765', '2019-07-08 0:43:26', '45', '62', null, null, '6', null, null, null, 'f91043093cb8430e9a9130436699d009', '2', '51');
INSERT INTO `session_detail` VALUES ('1766', '2019-07-08 0:35:44', '82', '75', null, null, '8', null, null, null, 'f91043093cb8430e9a9130436699d009', '2', '51');
INSERT INTO `session_detail` VALUES ('1767', '2019-07-08 0:23:21', '0', '0', null, null, '7', null, null, '呷哺呷哺', '5994c1d09c9f439ebeefda1150c00273', '2', '83');
INSERT INTO `session_detail` VALUES ('1768', '2019-07-08 0:48:45', '0', '0', null, null, '5', null, null, '太古商场', '5994c1d09c9f439ebeefda1150c00273', '2', '83');
INSERT INTO `session_detail` VALUES ('1769', '2019-07-08 0:19:25', '0', '0', null, null, '8', null, null, '重庆小面', '5994c1d09c9f439ebeefda1150c00273', '2', '83');
INSERT INTO `session_detail` VALUES ('1770', '2019-07-08 0:45:03', '34', '32', null, null, '1', null, null, null, '5994c1d09c9f439ebeefda1150c00273', '2', '83');
INSERT INTO `session_detail` VALUES ('1771', '2019-07-08 0:41:17', '0', '0', '70', '9', '6', null, null, null, '5994c1d09c9f439ebeefda1150c00273', '2', '83');
INSERT INTO `session_detail` VALUES ('1772', '2019-07-08 0:35:46', '0', '0', '28', '50', '5', null, null, null, '5994c1d09c9f439ebeefda1150c00273', '2', '83');
INSERT INTO `session_detail` VALUES ('1773', '2019-07-08 0:58:25', '0', '0', null, null, '0', '93', '69', null, '5994c1d09c9f439ebeefda1150c00273', '2', '83');
INSERT INTO `session_detail` VALUES ('1774', '2019-07-08 0:08:39', '0', '0', null, null, '2', null, null, '重庆辣子鸡', '5994c1d09c9f439ebeefda1150c00273', '2', '83');
INSERT INTO `session_detail` VALUES ('1775', '2019-07-08 0:03:50', '0', '0', null, null, '0', null, null, '重庆辣子鸡', '5994c1d09c9f439ebeefda1150c00273', '2', '83');
INSERT INTO `session_detail` VALUES ('1776', '2019-07-08 0:20:30', '0', '0', null, null, '2', null, null, '温泉', '5994c1d09c9f439ebeefda1150c00273', '2', '83');
INSERT INTO `session_detail` VALUES ('1777', '2019-07-08 0:38:33', '0', '0', null, null, '6', '44', '26', null, '5994c1d09c9f439ebeefda1150c00273', '2', '83');
INSERT INTO `session_detail` VALUES ('1778', '2019-07-08 14:50:47', '0', '0', null, null, '8', '63', '7', null, 'f68824a4355a4c11b2ebb2106bbfa0d7', '2', '55');
INSERT INTO `session_detail` VALUES ('1779', '2019-07-08 14:20:55', '7', '52', null, null, '8', null, null, null, 'f68824a4355a4c11b2ebb2106bbfa0d7', '2', '55');
INSERT INTO `session_detail` VALUES ('1780', '2019-07-08 14:51:33', '0', '0', '86', '92', '8', null, null, null, 'f68824a4355a4c11b2ebb2106bbfa0d7', '2', '55');
INSERT INTO `session_detail` VALUES ('1781', '2019-07-08 14:34:19', '0', '0', null, null, '9', null, null, '重庆辣子鸡', 'f68824a4355a4c11b2ebb2106bbfa0d7', '2', '55');
INSERT INTO `session_detail` VALUES ('1782', '2019-07-08 14:08:20', '0', '0', null, null, '9', null, null, '重庆辣子鸡', 'f68824a4355a4c11b2ebb2106bbfa0d7', '2', '55');
INSERT INTO `session_detail` VALUES ('1783', '2019-07-08 14:26:09', '0', '0', '20', '48', '0', null, null, null, 'f68824a4355a4c11b2ebb2106bbfa0d7', '2', '55');
INSERT INTO `session_detail` VALUES ('1784', '2019-07-08 14:55:28', '0', '0', null, null, '5', null, null, '太古商场', 'f68824a4355a4c11b2ebb2106bbfa0d7', '2', '55');
INSERT INTO `session_detail` VALUES ('1785', '2019-07-08 14:01:18', '0', '0', null, null, '7', '51', '33', null, 'f68824a4355a4c11b2ebb2106bbfa0d7', '2', '55');
INSERT INTO `session_detail` VALUES ('1786', '2019-07-08 14:17:18', '0', '0', null, null, '5', '23', '50', null, 'f68824a4355a4c11b2ebb2106bbfa0d7', '2', '55');
INSERT INTO `session_detail` VALUES ('1787', '2019-07-08 14:04:16', '0', '0', null, null, '7', null, null, '日本料理', 'f68824a4355a4c11b2ebb2106bbfa0d7', '2', '55');
INSERT INTO `session_detail` VALUES ('1788', '2019-07-08 14:03:52', '0', '0', null, null, '3', null, null, '温泉', 'f68824a4355a4c11b2ebb2106bbfa0d7', '2', '55');
INSERT INTO `session_detail` VALUES ('1789', '2019-07-08 14:20:06', '0', '0', null, null, '2', null, null, '火锅', 'f68824a4355a4c11b2ebb2106bbfa0d7', '2', '55');
INSERT INTO `session_detail` VALUES ('1790', '2019-07-08 14:39:45', '0', '0', null, null, '7', null, null, '火锅', 'f68824a4355a4c11b2ebb2106bbfa0d7', '2', '55');
INSERT INTO `session_detail` VALUES ('1791', '2019-07-08 14:03:20', '0', '0', null, null, '0', null, null, '蛋糕', 'f68824a4355a4c11b2ebb2106bbfa0d7', '2', '55');
INSERT INTO `session_detail` VALUES ('1792', '2019-07-08 14:48:51', '0', '0', '21', '8', '9', null, null, null, 'f68824a4355a4c11b2ebb2106bbfa0d7', '2', '55');
INSERT INTO `session_detail` VALUES ('1793', '2019-07-08 6:56:33', '46', '91', null, null, '6', null, null, null, 'fcf621cf701744039f07bc7df8d012bc', '2', '75');
INSERT INTO `session_detail` VALUES ('1794', '2019-07-08 6:51:30', '97', '22', null, null, '0', null, null, null, 'fcf621cf701744039f07bc7df8d012bc', '2', '75');
INSERT INTO `session_detail` VALUES ('1795', '2019-07-08 6:45:40', '0', '0', '94', '79', '4', null, null, null, 'fcf621cf701744039f07bc7df8d012bc', '2', '75');
INSERT INTO `session_detail` VALUES ('1796', '2019-07-08 6:47:24', '0', '0', null, null, '9', '34', '84', null, 'fcf621cf701744039f07bc7df8d012bc', '2', '75');
INSERT INTO `session_detail` VALUES ('1797', '2019-07-08 6:35:44', '97', '92', null, null, '2', null, null, null, 'fcf621cf701744039f07bc7df8d012bc', '2', '75');
INSERT INTO `session_detail` VALUES ('1798', '2019-07-08 6:48:40', '48', '2', null, null, '6', null, null, null, 'fcf621cf701744039f07bc7df8d012bc', '2', '75');
INSERT INTO `session_detail` VALUES ('1799', '2019-07-08 6:46:17', '61', '5', null, null, '8', null, null, null, 'fcf621cf701744039f07bc7df8d012bc', '2', '75');
INSERT INTO `session_detail` VALUES ('1800', '2019-07-08 6:04:24', '0', '0', '42', '33', '6', null, null, null, 'fcf621cf701744039f07bc7df8d012bc', '2', '75');
INSERT INTO `session_detail` VALUES ('1801', '2019-07-08 6:30:09', '0', '0', '52', '0', '9', null, null, null, 'fcf621cf701744039f07bc7df8d012bc', '2', '75');
INSERT INTO `session_detail` VALUES ('1802', '2019-07-08 6:57:54', '0', '0', null, null, '8', '53', '0', null, 'fcf621cf701744039f07bc7df8d012bc', '2', '75');
INSERT INTO `session_detail` VALUES ('1803', '2019-07-08 6:42:49', '0', '0', null, null, '3', null, null, '太古商场', 'fcf621cf701744039f07bc7df8d012bc', '2', '75');
INSERT INTO `session_detail` VALUES ('1804', '2019-07-08 3:52:48', '7', '0', null, null, '3', null, null, null, 'a0219b41067445848614dc689ba8747f', '2', '27');
INSERT INTO `session_detail` VALUES ('1805', '2019-07-08 3:49:32', '70', '71', null, null, '9', null, null, null, 'a0219b41067445848614dc689ba8747f', '2', '27');
INSERT INTO `session_detail` VALUES ('1806', '2019-07-08 3:01:25', '0', '0', null, null, '3', '89', '96', null, 'a0219b41067445848614dc689ba8747f', '2', '27');
INSERT INTO `session_detail` VALUES ('1807', '2019-07-08 3:49:16', '0', '0', '38', '20', '1', null, null, null, 'a0219b41067445848614dc689ba8747f', '2', '27');
INSERT INTO `session_detail` VALUES ('1808', '2019-07-08 3:42:19', '0', '0', null, null, '1', null, null, '新辣道鱼火锅', 'a0219b41067445848614dc689ba8747f', '2', '27');
INSERT INTO `session_detail` VALUES ('1809', '2019-07-08 3:15:13', '48', '8', null, null, '0', null, null, null, 'a0219b41067445848614dc689ba8747f', '2', '27');
INSERT INTO `session_detail` VALUES ('1810', '2019-07-08 3:08:03', '0', '0', null, null, '3', null, null, '呷哺呷哺', 'a0219b41067445848614dc689ba8747f', '2', '27');
INSERT INTO `session_detail` VALUES ('1811', '2019-07-08 3:23:31', '99', '42', null, null, '5', null, null, null, 'a0219b41067445848614dc689ba8747f', '2', '27');
INSERT INTO `session_detail` VALUES ('1812', '2019-07-08 3:57:08', '70', '48', null, null, '4', null, null, null, 'a0219b41067445848614dc689ba8747f', '2', '27');
INSERT INTO `session_detail` VALUES ('1813', '2019-07-08 3:24:50', '0', '0', null, null, '4', null, null, '国贸大厦', 'a0219b41067445848614dc689ba8747f', '2', '27');
INSERT INTO `session_detail` VALUES ('1814', '2019-07-08 21:42:38', '0', '0', '17', '57', '7', null, null, null, 'cb5e0cc88feb489d8bad6283b2a17683', '2', '60');
INSERT INTO `session_detail` VALUES ('1815', '2019-07-08 21:51:43', '98', '43', null, null, '8', null, null, null, 'cb5e0cc88feb489d8bad6283b2a17683', '2', '60');
INSERT INTO `session_detail` VALUES ('1816', '2019-07-08 21:41:25', '0', '0', '0', '98', '9', null, null, null, 'cb5e0cc88feb489d8bad6283b2a17683', '2', '60');
INSERT INTO `session_detail` VALUES ('1817', '2019-07-08 21:45:42', '0', '0', '4', '53', '8', null, null, null, 'cb5e0cc88feb489d8bad6283b2a17683', '2', '60');
INSERT INTO `session_detail` VALUES ('1818', '2019-07-08 21:51:41', '7', '73', null, null, '0', null, null, null, 'cb5e0cc88feb489d8bad6283b2a17683', '2', '60');
INSERT INTO `session_detail` VALUES ('1819', '2019-07-08 21:49:44', '0', '0', null, null, '1', null, null, '新辣道鱼火锅', 'cb5e0cc88feb489d8bad6283b2a17683', '2', '60');
INSERT INTO `session_detail` VALUES ('1820', '2019-07-08 21:45:18', '0', '0', '68', '70', '1', null, null, null, 'cb5e0cc88feb489d8bad6283b2a17683', '2', '60');
INSERT INTO `session_detail` VALUES ('1821', '2019-07-08 21:11:44', '41', '40', null, null, '6', null, null, null, 'cb5e0cc88feb489d8bad6283b2a17683', '2', '60');
INSERT INTO `session_detail` VALUES ('1822', '2019-07-08 21:41:40', '0', '0', null, null, '1', '88', '89', null, 'cb5e0cc88feb489d8bad6283b2a17683', '2', '60');
INSERT INTO `session_detail` VALUES ('1823', '2019-07-08 21:54:54', '0', '0', '87', '59', '4', null, null, null, 'cb5e0cc88feb489d8bad6283b2a17683', '2', '60');
INSERT INTO `session_detail` VALUES ('1824', '2019-07-08 6:01:36', '63', '78', null, null, '3', null, null, null, 'c22105c452244fe0a54d04d58971b496', '2', '85');
INSERT INTO `session_detail` VALUES ('1825', '2019-07-08 6:28:26', '0', '0', null, null, '1', null, null, '蛋糕', 'c22105c452244fe0a54d04d58971b496', '2', '85');
INSERT INTO `session_detail` VALUES ('1826', '2019-07-08 6:41:27', '0', '0', null, null, '2', '12', '7', null, 'c22105c452244fe0a54d04d58971b496', '2', '85');
INSERT INTO `session_detail` VALUES ('1827', '2019-07-08 6:48:09', '0', '0', null, null, '5', null, null, '火锅', 'c22105c452244fe0a54d04d58971b496', '2', '85');
INSERT INTO `session_detail` VALUES ('1828', '2019-07-08 6:55:24', '0', '0', null, null, '3', null, null, '重庆小面', 'c22105c452244fe0a54d04d58971b496', '2', '85');
INSERT INTO `session_detail` VALUES ('1829', '2019-07-08 6:17:10', '0', '0', '20', '38', '9', null, null, null, 'c22105c452244fe0a54d04d58971b496', '2', '85');
INSERT INTO `session_detail` VALUES ('1830', '2019-07-08 17:08:09', '0', '0', null, null, '2', '37', '84', null, '52c6d3e568bd4b2a8a46e28dd9aba0ae', '2', '7');
INSERT INTO `session_detail` VALUES ('1831', '2019-07-08 17:36:14', '0', '0', '1', '61', '7', null, null, null, '52c6d3e568bd4b2a8a46e28dd9aba0ae', '2', '7');
INSERT INTO `session_detail` VALUES ('1832', '2019-07-08 17:36:50', '0', '0', null, null, '2', '13', '20', null, '52c6d3e568bd4b2a8a46e28dd9aba0ae', '2', '7');
INSERT INTO `session_detail` VALUES ('1833', '2019-07-08 17:57:22', '0', '0', '20', '72', '9', null, null, null, '52c6d3e568bd4b2a8a46e28dd9aba0ae', '2', '7');
INSERT INTO `session_detail` VALUES ('1834', '2019-07-08 17:22:13', '0', '0', '46', '93', '6', null, null, null, '52c6d3e568bd4b2a8a46e28dd9aba0ae', '2', '7');
INSERT INTO `session_detail` VALUES ('1835', '2019-07-08 17:38:37', '0', '0', null, null, '9', '30', '73', null, '52c6d3e568bd4b2a8a46e28dd9aba0ae', '2', '7');
INSERT INTO `session_detail` VALUES ('1836', '2019-07-08 17:46:16', '0', '0', null, null, '8', '78', '87', null, '52c6d3e568bd4b2a8a46e28dd9aba0ae', '2', '7');
INSERT INTO `session_detail` VALUES ('1837', '2019-07-08 17:15:52', '0', '0', null, null, '2', null, null, '蛋糕', '52c6d3e568bd4b2a8a46e28dd9aba0ae', '2', '7');
INSERT INTO `session_detail` VALUES ('1838', '2019-07-08 17:29:23', '0', '0', null, null, '4', '95', '27', null, '52c6d3e568bd4b2a8a46e28dd9aba0ae', '2', '7');
INSERT INTO `session_detail` VALUES ('1839', '2019-07-08 17:31:46', '0', '0', null, null, '1', null, null, '呷哺呷哺', '52c6d3e568bd4b2a8a46e28dd9aba0ae', '2', '7');
INSERT INTO `session_detail` VALUES ('1840', '2019-07-08 17:40:25', '0', '0', '38', '23', '1', null, null, null, '52c6d3e568bd4b2a8a46e28dd9aba0ae', '2', '7');
INSERT INTO `session_detail` VALUES ('1841', '2019-07-08 17:48:47', '35', '26', null, null, '3', null, null, null, '52c6d3e568bd4b2a8a46e28dd9aba0ae', '2', '7');
INSERT INTO `session_detail` VALUES ('1842', '2019-07-08 17:32:20', '0', '0', '90', '69', '6', null, null, null, '52c6d3e568bd4b2a8a46e28dd9aba0ae', '2', '7');
INSERT INTO `session_detail` VALUES ('1843', '2019-07-08 17:40:10', '0', '0', null, null, '3', '31', '64', null, '52c6d3e568bd4b2a8a46e28dd9aba0ae', '2', '7');
INSERT INTO `session_detail` VALUES ('1844', '2019-07-08 7:02:29', '94', '71', null, null, '8', null, null, null, '8985982ae7a34911ab887ca1d0cd6940', '2', '59');
INSERT INTO `session_detail` VALUES ('1845', '2019-07-08 7:46:57', '0', '0', null, null, '9', null, null, '重庆辣子鸡', '8985982ae7a34911ab887ca1d0cd6940', '2', '59');
INSERT INTO `session_detail` VALUES ('1846', '2019-07-08 7:57:31', '22', '68', null, null, '5', null, null, null, '8985982ae7a34911ab887ca1d0cd6940', '2', '59');
INSERT INTO `session_detail` VALUES ('1847', '2019-07-08 7:04:23', '49', '92', null, null, '5', null, null, null, '8985982ae7a34911ab887ca1d0cd6940', '2', '59');
INSERT INTO `session_detail` VALUES ('1848', '2019-07-08 7:28:38', '2', '57', null, null, '2', null, null, null, '8985982ae7a34911ab887ca1d0cd6940', '2', '59');
INSERT INTO `session_detail` VALUES ('1849', '2019-07-08 19:39:11', '49', '13', null, null, '4', null, null, null, 'ce8a3aff460a4320b4c7f3c6abc4caee', '2', '89');
INSERT INTO `session_detail` VALUES ('1850', '2019-07-08 19:49:56', '46', '36', null, null, '5', null, null, null, 'ce8a3aff460a4320b4c7f3c6abc4caee', '2', '89');
INSERT INTO `session_detail` VALUES ('1851', '2019-07-08 5:07:05', '0', '0', null, null, '3', null, null, '火锅', '8b987f06ea1d4695a206b8a6b350a0f4', '2', '60');
INSERT INTO `session_detail` VALUES ('1852', '2019-07-08 5:22:07', '91', '0', null, null, '2', null, null, null, '8b987f06ea1d4695a206b8a6b350a0f4', '2', '60');
INSERT INTO `session_detail` VALUES ('1853', '2019-07-08 5:35:23', '0', '0', '37', '15', '5', null, null, null, '8b987f06ea1d4695a206b8a6b350a0f4', '2', '60');
INSERT INTO `session_detail` VALUES ('1854', '2019-07-08 5:12:36', '0', '0', null, null, '2', null, null, '重庆小面', '8b987f06ea1d4695a206b8a6b350a0f4', '2', '60');
INSERT INTO `session_detail` VALUES ('1855', '2019-07-08 5:47:19', '0', '0', null, null, '4', '69', '63', null, '8b987f06ea1d4695a206b8a6b350a0f4', '2', '60');
INSERT INTO `session_detail` VALUES ('1856', '2019-07-08 5:28:52', '0', '0', '0', '61', '3', null, null, null, '8b987f06ea1d4695a206b8a6b350a0f4', '2', '60');
INSERT INTO `session_detail` VALUES ('1857', '2019-07-08 5:21:19', '0', '0', '31', '38', '8', null, null, null, '8b987f06ea1d4695a206b8a6b350a0f4', '2', '60');
INSERT INTO `session_detail` VALUES ('1858', '2019-07-08 5:39:07', '0', '0', '58', '93', '2', null, null, null, '8b987f06ea1d4695a206b8a6b350a0f4', '2', '60');
INSERT INTO `session_detail` VALUES ('1859', '2019-07-08 5:47:57', '8', '9', null, null, '4', null, null, null, '8b987f06ea1d4695a206b8a6b350a0f4', '2', '60');
INSERT INTO `session_detail` VALUES ('1860', '2019-07-08 5:58:40', '52', '8', null, null, '9', null, null, null, '8b987f06ea1d4695a206b8a6b350a0f4', '2', '60');
INSERT INTO `session_detail` VALUES ('1861', '2019-07-08 5:26:48', '0', '0', '34', '80', '3', null, null, null, '8b987f06ea1d4695a206b8a6b350a0f4', '2', '60');
INSERT INTO `session_detail` VALUES ('1862', '2019-07-08 5:10:28', '0', '0', null, null, '0', null, null, '日本料理', '8b987f06ea1d4695a206b8a6b350a0f4', '2', '60');
INSERT INTO `session_detail` VALUES ('1863', '2019-07-08 14:44:24', '0', '0', null, null, '3', '20', '8', null, 'ae2b3c6133cb46c19a43b3b981082e62', '2', '59');
INSERT INTO `session_detail` VALUES ('1864', '2019-07-08 14:34:46', '0', '0', '22', '92', '8', null, null, null, 'ae2b3c6133cb46c19a43b3b981082e62', '2', '59');
INSERT INTO `session_detail` VALUES ('1865', '2019-07-08 14:04:52', '0', '0', '58', '68', '5', null, null, null, 'ae2b3c6133cb46c19a43b3b981082e62', '2', '59');
INSERT INTO `session_detail` VALUES ('1866', '2019-07-08 4:08:39', '0', '0', '9', '33', '7', null, null, null, '39e19ee3820740539eefab67df161455', '2', '77');
INSERT INTO `session_detail` VALUES ('1867', '2019-07-08 4:34:50', '34', '70', null, null, '4', null, null, null, '39e19ee3820740539eefab67df161455', '2', '77');
INSERT INTO `session_detail` VALUES ('1868', '2019-07-08 4:36:44', '48', '97', null, null, '1', null, null, null, '39e19ee3820740539eefab67df161455', '2', '77');
INSERT INTO `session_detail` VALUES ('1869', '2019-07-08 4:26:18', '0', '0', null, null, '9', null, null, '蛋糕', '39e19ee3820740539eefab67df161455', '2', '77');
INSERT INTO `session_detail` VALUES ('1870', '2019-07-08 4:09:52', '0', '0', null, null, '4', null, null, '呷哺呷哺', '39e19ee3820740539eefab67df161455', '2', '77');
INSERT INTO `session_detail` VALUES ('1871', '2019-07-08 4:13:03', '84', '94', null, null, '4', null, null, null, '39e19ee3820740539eefab67df161455', '2', '77');
INSERT INTO `session_detail` VALUES ('1872', '2019-07-08 4:55:30', '0', '0', null, null, '4', '48', '61', null, '39e19ee3820740539eefab67df161455', '2', '77');
INSERT INTO `session_detail` VALUES ('1873', '2019-07-08 4:24:16', '65', '41', null, null, '2', null, null, null, '39e19ee3820740539eefab67df161455', '2', '77');
INSERT INTO `session_detail` VALUES ('1874', '2019-07-08 4:52:28', '75', '79', null, null, '2', null, null, null, '39e19ee3820740539eefab67df161455', '2', '77');
INSERT INTO `session_detail` VALUES ('1875', '2019-07-08 4:21:02', '0', '0', null, null, '4', null, null, '太古商场', '39e19ee3820740539eefab67df161455', '2', '77');
INSERT INTO `session_detail` VALUES ('1876', '2019-07-08 4:27:35', '70', '60', null, null, '9', null, null, null, '39e19ee3820740539eefab67df161455', '2', '77');
INSERT INTO `session_detail` VALUES ('1877', '2019-07-08 4:54:22', '0', '0', '22', '76', '3', null, null, null, '39e19ee3820740539eefab67df161455', '2', '77');
INSERT INTO `session_detail` VALUES ('1878', '2019-07-08 4:17:33', '0', '0', null, null, '0', '68', '97', null, '39e19ee3820740539eefab67df161455', '2', '77');
INSERT INTO `session_detail` VALUES ('1879', '2019-07-08 4:15:19', '72', '97', null, null, '9', null, null, null, '39e19ee3820740539eefab67df161455', '2', '77');
INSERT INTO `session_detail` VALUES ('1880', '2019-07-08 4:42:26', '0', '0', null, null, '6', null, null, '火锅', '39e19ee3820740539eefab67df161455', '2', '77');
INSERT INTO `session_detail` VALUES ('1881', '2019-07-08 4:42:57', '0', '0', '81', '99', '5', null, null, null, '39e19ee3820740539eefab67df161455', '2', '77');
INSERT INTO `session_detail` VALUES ('1882', '2019-07-08 4:33:52', '0', '0', null, null, '9', '35', '64', null, '39e19ee3820740539eefab67df161455', '2', '77');
INSERT INTO `session_detail` VALUES ('1883', '2019-07-08 11:36:06', '0', '0', null, null, '3', '72', '77', null, '7803464660374b5795682a30d02e0c1c', '2', '87');
INSERT INTO `session_detail` VALUES ('1884', '2019-07-08 11:50:02', '0', '0', '55', '92', '4', null, null, null, '7803464660374b5795682a30d02e0c1c', '2', '87');
INSERT INTO `session_detail` VALUES ('1885', '2019-07-08 11:05:57', '0', '0', null, null, '7', null, null, '太古商场', '7803464660374b5795682a30d02e0c1c', '2', '87');
INSERT INTO `session_detail` VALUES ('1886', '2019-07-08 11:03:49', '60', '59', null, null, '1', null, null, null, '7803464660374b5795682a30d02e0c1c', '2', '87');
INSERT INTO `session_detail` VALUES ('1887', '2019-07-08 11:41:53', '0', '0', null, null, '9', '12', '67', null, '7803464660374b5795682a30d02e0c1c', '2', '87');
INSERT INTO `session_detail` VALUES ('1888', '2019-07-08 11:52:20', '0', '0', null, null, '1', '97', '38', null, '7803464660374b5795682a30d02e0c1c', '2', '87');
INSERT INTO `session_detail` VALUES ('1889', '2019-07-08 11:14:40', '0', '0', null, null, '6', '71', '30', null, '7803464660374b5795682a30d02e0c1c', '2', '87');
INSERT INTO `session_detail` VALUES ('1890', '2019-07-08 11:30:49', '0', '0', null, null, '0', '74', '61', null, '7803464660374b5795682a30d02e0c1c', '2', '87');
INSERT INTO `session_detail` VALUES ('1891', '2019-07-08 11:56:51', '0', '0', '79', '54', '6', null, null, null, '7803464660374b5795682a30d02e0c1c', '2', '87');
INSERT INTO `session_detail` VALUES ('1892', '2019-07-08 11:33:42', '97', '79', null, null, '7', null, null, null, '7803464660374b5795682a30d02e0c1c', '2', '87');
INSERT INTO `session_detail` VALUES ('1893', '2019-07-08 11:41:52', '58', '14', null, null, '7', null, null, null, '7803464660374b5795682a30d02e0c1c', '2', '87');
INSERT INTO `session_detail` VALUES ('1894', '2019-07-08 11:18:21', '90', '9', null, null, '6', null, null, null, '7803464660374b5795682a30d02e0c1c', '2', '87');
INSERT INTO `session_detail` VALUES ('1895', '2019-07-08 11:23:42', '0', '0', null, null, '7', '2', '47', null, '7803464660374b5795682a30d02e0c1c', '2', '87');
INSERT INTO `session_detail` VALUES ('1896', '2019-07-08 11:35:30', '0', '0', '8', '43', '4', null, null, null, '7803464660374b5795682a30d02e0c1c', '2', '87');
INSERT INTO `session_detail` VALUES ('1897', '2019-07-08 11:40:28', '0', '0', '81', '32', '5', null, null, null, '7803464660374b5795682a30d02e0c1c', '2', '87');
INSERT INTO `session_detail` VALUES ('1898', '2019-07-08 11:06:42', '0', '0', '37', '90', '6', null, null, null, '7803464660374b5795682a30d02e0c1c', '2', '87');
INSERT INTO `session_detail` VALUES ('1899', '2019-07-08 11:20:02', '65', '54', null, null, '0', null, null, null, '7803464660374b5795682a30d02e0c1c', '2', '87');
INSERT INTO `session_detail` VALUES ('1900', '2019-07-08 11:35:56', '0', '0', null, null, '3', null, null, '日本料理', '7803464660374b5795682a30d02e0c1c', '2', '87');
INSERT INTO `session_detail` VALUES ('1901', '2019-07-08 11:24:29', '0', '0', '87', '26', '7', null, null, null, '7803464660374b5795682a30d02e0c1c', '2', '87');
INSERT INTO `session_detail` VALUES ('1902', '2019-07-08 11:23:32', '0', '0', null, null, '9', '90', '49', null, '7803464660374b5795682a30d02e0c1c', '2', '87');
INSERT INTO `session_detail` VALUES ('1903', '2019-07-08 11:37:35', '0', '0', '23', '83', '8', null, null, null, '7803464660374b5795682a30d02e0c1c', '2', '87');
INSERT INTO `session_detail` VALUES ('1904', '2019-07-08 11:48:41', '0', '0', null, null, '6', '74', '31', null, '7803464660374b5795682a30d02e0c1c', '2', '87');
INSERT INTO `session_detail` VALUES ('1905', '2019-07-08 19:04:06', '0', '0', '75', '14', '4', null, null, null, '147411ce4ad5401b9a3377784d709093', '2', '16');
INSERT INTO `session_detail` VALUES ('1906', '2019-07-08 19:38:05', '0', '0', null, null, '8', '59', '24', null, '147411ce4ad5401b9a3377784d709093', '2', '16');
INSERT INTO `session_detail` VALUES ('1907', '2019-07-08 19:01:21', '0', '0', null, null, '4', '88', '23', null, '147411ce4ad5401b9a3377784d709093', '2', '16');
INSERT INTO `session_detail` VALUES ('1908', '2019-07-08 19:44:01', '0', '0', '6', '44', '3', null, null, null, '147411ce4ad5401b9a3377784d709093', '2', '16');
INSERT INTO `session_detail` VALUES ('1909', '2019-07-08 19:24:33', '0', '0', '83', '87', '9', null, null, null, '147411ce4ad5401b9a3377784d709093', '2', '16');
INSERT INTO `session_detail` VALUES ('1910', '2019-07-08 19:39:00', '96', '90', null, null, '3', null, null, null, '147411ce4ad5401b9a3377784d709093', '2', '16');
INSERT INTO `session_detail` VALUES ('1911', '2019-07-08 19:19:56', '0', '0', '6', '11', '5', null, null, null, '147411ce4ad5401b9a3377784d709093', '2', '16');
INSERT INTO `session_detail` VALUES ('1912', '2019-07-08 19:43:48', '47', '91', null, null, '6', null, null, null, '147411ce4ad5401b9a3377784d709093', '2', '16');
INSERT INTO `session_detail` VALUES ('1913', '2019-07-08 19:01:27', '0', '0', null, null, '2', '29', '34', null, '147411ce4ad5401b9a3377784d709093', '2', '16');
INSERT INTO `session_detail` VALUES ('1914', '2019-07-08 19:35:08', '0', '0', null, null, '1', '5', '15', null, '147411ce4ad5401b9a3377784d709093', '2', '16');
INSERT INTO `session_detail` VALUES ('1915', '2019-07-08 5:15:07', '0', '0', null, null, '0', null, null, '呷哺呷哺', 'e006fb241ee34765be57fc3b5920e26b', '2', '0');
INSERT INTO `session_detail` VALUES ('1916', '2019-07-08 5:29:05', '44', '14', null, null, '4', null, null, null, 'e006fb241ee34765be57fc3b5920e26b', '2', '0');
INSERT INTO `session_detail` VALUES ('1917', '2019-07-08 5:43:39', '0', '0', null, null, '3', null, null, '重庆辣子鸡', 'e006fb241ee34765be57fc3b5920e26b', '2', '0');
INSERT INTO `session_detail` VALUES ('1918', '2019-07-08 5:23:34', '0', '0', null, null, '3', '95', '68', null, 'e006fb241ee34765be57fc3b5920e26b', '2', '0');
INSERT INTO `session_detail` VALUES ('1919', '2019-07-08 5:21:32', '0', '0', null, null, '4', null, null, '火锅', 'e006fb241ee34765be57fc3b5920e26b', '2', '0');
INSERT INTO `session_detail` VALUES ('1920', '2019-07-08 5:48:56', '0', '0', null, null, '0', '19', '41', null, 'e006fb241ee34765be57fc3b5920e26b', '2', '0');
INSERT INTO `session_detail` VALUES ('1921', '2019-07-08 5:33:58', '0', '0', null, null, '6', '27', '58', null, 'e006fb241ee34765be57fc3b5920e26b', '2', '0');
INSERT INTO `session_detail` VALUES ('1922', '2019-07-08 5:53:11', '0', '0', null, null, '0', null, null, '国贸大厦', 'e006fb241ee34765be57fc3b5920e26b', '2', '0');
INSERT INTO `session_detail` VALUES ('1923', '2019-07-08 5:06:46', '0', '0', null, null, '1', null, null, '重庆辣子鸡', 'e006fb241ee34765be57fc3b5920e26b', '2', '0');
INSERT INTO `session_detail` VALUES ('1924', '2019-07-08 5:54:41', '0', '0', null, null, '3', '22', '18', null, 'e006fb241ee34765be57fc3b5920e26b', '2', '0');
INSERT INTO `session_detail` VALUES ('1925', '2019-07-08 5:08:08', '0', '0', null, null, '2', null, null, '重庆小面', 'e006fb241ee34765be57fc3b5920e26b', '2', '0');
INSERT INTO `session_detail` VALUES ('1926', '2019-07-08 5:15:02', '38', '78', null, null, '9', null, null, null, 'e006fb241ee34765be57fc3b5920e26b', '2', '0');
INSERT INTO `session_detail` VALUES ('1927', '2019-07-08 5:55:18', '0', '0', '78', '12', '8', null, null, null, 'e006fb241ee34765be57fc3b5920e26b', '2', '0');
INSERT INTO `session_detail` VALUES ('1928', '2019-07-08 5:00:13', '43', '23', null, null, '9', null, null, null, 'e006fb241ee34765be57fc3b5920e26b', '2', '0');
INSERT INTO `session_detail` VALUES ('1929', '2019-07-08 5:34:53', '0', '0', null, null, '8', '93', '74', null, 'e006fb241ee34765be57fc3b5920e26b', '2', '0');
INSERT INTO `session_detail` VALUES ('1930', '2019-07-08 8:15:42', '0', '0', '23', '77', '8', null, null, null, 'db44365ea645455da1179eb6308c446c', '2', '66');
INSERT INTO `session_detail` VALUES ('1931', '2019-07-08 8:53:25', '90', '88', null, null, '8', null, null, null, 'db44365ea645455da1179eb6308c446c', '2', '66');
INSERT INTO `session_detail` VALUES ('1932', '2019-07-08 8:29:11', '97', '66', null, null, '5', null, null, null, 'db44365ea645455da1179eb6308c446c', '2', '66');
INSERT INTO `session_detail` VALUES ('1933', '2019-07-08 8:28:08', '0', '0', null, null, '1', '67', '8', null, 'db44365ea645455da1179eb6308c446c', '2', '66');
INSERT INTO `session_detail` VALUES ('1934', '2019-07-08 8:34:37', '87', '80', null, null, '4', null, null, null, 'db44365ea645455da1179eb6308c446c', '2', '66');
INSERT INTO `session_detail` VALUES ('1935', '2019-07-08 8:44:30', '86', '0', null, null, '8', null, null, null, 'db44365ea645455da1179eb6308c446c', '2', '66');
INSERT INTO `session_detail` VALUES ('1936', '2019-07-08 8:13:33', '0', '0', '89', '70', '3', null, null, null, 'db44365ea645455da1179eb6308c446c', '2', '66');
INSERT INTO `session_detail` VALUES ('1937', '2019-07-08 8:29:43', '0', '0', null, null, '1', null, null, '新辣道鱼火锅', 'db44365ea645455da1179eb6308c446c', '2', '66');
INSERT INTO `session_detail` VALUES ('1938', '2019-07-08 4:31:28', '0', '0', null, null, '2', null, null, '重庆小面', 'b0cc698e956043bb8be189eb9d6dd0da', '2', '2');
INSERT INTO `session_detail` VALUES ('1939', '2019-07-08 4:49:08', '0', '0', null, null, '3', '46', '41', null, 'b0cc698e956043bb8be189eb9d6dd0da', '2', '2');
INSERT INTO `session_detail` VALUES ('1940', '2019-07-08 4:28:15', '0', '0', null, null, '2', null, null, '呷哺呷哺', 'b0cc698e956043bb8be189eb9d6dd0da', '2', '2');
INSERT INTO `session_detail` VALUES ('1941', '2019-07-08 4:37:37', '0', '0', null, null, '9', null, null, '国贸大厦', 'b0cc698e956043bb8be189eb9d6dd0da', '2', '2');
INSERT INTO `session_detail` VALUES ('1942', '2019-07-08 4:29:35', '0', '0', '75', '14', '2', null, null, null, 'b0cc698e956043bb8be189eb9d6dd0da', '2', '2');
INSERT INTO `session_detail` VALUES ('1943', '2019-07-08 4:26:25', '0', '0', '60', '38', '8', null, null, null, 'b0cc698e956043bb8be189eb9d6dd0da', '2', '2');
INSERT INTO `session_detail` VALUES ('1944', '2019-07-08 4:18:22', '0', '0', null, null, '7', '4', '67', null, 'b0cc698e956043bb8be189eb9d6dd0da', '2', '2');
INSERT INTO `session_detail` VALUES ('1945', '2019-07-08 4:15:26', '24', '97', null, null, '2', null, null, null, 'b0cc698e956043bb8be189eb9d6dd0da', '2', '2');
INSERT INTO `session_detail` VALUES ('1946', '2019-07-08 4:19:33', '0', '0', '15', '48', '6', null, null, null, 'b0cc698e956043bb8be189eb9d6dd0da', '2', '2');
INSERT INTO `session_detail` VALUES ('1947', '2019-07-08 4:43:17', '0', '0', null, null, '1', '50', '50', null, 'b0cc698e956043bb8be189eb9d6dd0da', '2', '2');
INSERT INTO `session_detail` VALUES ('1948', '2019-07-08 4:38:38', '99', '25', null, null, '3', null, null, null, 'b0cc698e956043bb8be189eb9d6dd0da', '2', '2');
INSERT INTO `session_detail` VALUES ('1949', '2019-07-08 4:27:53', '0', '0', '23', '69', '3', null, null, null, 'b0cc698e956043bb8be189eb9d6dd0da', '2', '2');
INSERT INTO `session_detail` VALUES ('1950', '2019-07-08 4:06:19', '0', '0', '22', '54', '0', null, null, null, 'b0cc698e956043bb8be189eb9d6dd0da', '2', '2');
INSERT INTO `session_detail` VALUES ('1951', '2019-07-08 4:31:18', '0', '0', null, null, '6', null, null, '蛋糕', 'b0cc698e956043bb8be189eb9d6dd0da', '2', '2');
INSERT INTO `session_detail` VALUES ('1952', '2019-07-08 12:28:12', '0', '0', null, null, '0', null, null, '火锅', 'd208ad97702b4ace9cee4920a9320019', '2', '27');
INSERT INTO `session_detail` VALUES ('1953', '2019-07-08 12:55:07', '0', '0', null, null, '1', null, null, '呷哺呷哺', 'd208ad97702b4ace9cee4920a9320019', '2', '27');
INSERT INTO `session_detail` VALUES ('1954', '2019-07-08 12:18:56', '0', '0', '93', '16', '7', null, null, null, 'd208ad97702b4ace9cee4920a9320019', '2', '27');
INSERT INTO `session_detail` VALUES ('1955', '2019-07-08 12:04:36', '0', '0', null, null, '1', null, null, '日本料理', 'd208ad97702b4ace9cee4920a9320019', '2', '27');
INSERT INTO `session_detail` VALUES ('1956', '2019-07-08 12:23:23', '0', '0', '48', '66', '9', null, null, null, 'd208ad97702b4ace9cee4920a9320019', '2', '27');
INSERT INTO `session_detail` VALUES ('1957', '2019-07-08 12:21:58', '0', '0', null, null, '4', '65', '63', null, 'd208ad97702b4ace9cee4920a9320019', '2', '27');
INSERT INTO `session_detail` VALUES ('1958', '2019-07-08 12:56:51', '0', '0', '86', '30', '3', null, null, null, 'd208ad97702b4ace9cee4920a9320019', '2', '27');
INSERT INTO `session_detail` VALUES ('1959', '2019-07-08 12:15:55', '0', '0', null, null, '1', null, null, '太古商场', 'd208ad97702b4ace9cee4920a9320019', '2', '27');
INSERT INTO `session_detail` VALUES ('1960', '2019-07-08 12:21:06', '0', '0', '93', '17', '7', null, null, null, 'd208ad97702b4ace9cee4920a9320019', '2', '27');
INSERT INTO `session_detail` VALUES ('1961', '2019-07-08 3:35:04', '43', '51', null, null, '0', null, null, null, '751e43cee4e745be950e732c724d70b3', '2', '42');
INSERT INTO `session_detail` VALUES ('1962', '2019-07-08 3:08:19', '0', '0', null, null, '1', null, null, '重庆辣子鸡', '751e43cee4e745be950e732c724d70b3', '2', '42');
INSERT INTO `session_detail` VALUES ('1963', '2019-07-08 3:08:47', '0', '0', null, null, '5', '9', '65', null, '751e43cee4e745be950e732c724d70b3', '2', '42');
INSERT INTO `session_detail` VALUES ('1964', '2019-07-08 3:42:49', '60', '88', null, null, '7', null, null, null, '751e43cee4e745be950e732c724d70b3', '2', '42');
INSERT INTO `session_detail` VALUES ('1965', '2019-07-08 20:25:41', '0', '0', null, null, '1', '73', '11', null, 'f58c2992a90e48ac942711f459cc0985', '2', '55');
INSERT INTO `session_detail` VALUES ('1966', '2019-07-08 20:11:14', '0', '0', '94', '42', '8', null, null, null, 'f58c2992a90e48ac942711f459cc0985', '2', '55');
INSERT INTO `session_detail` VALUES ('1967', '2019-07-08 20:33:34', '0', '0', null, null, '4', '39', '60', null, 'f58c2992a90e48ac942711f459cc0985', '2', '55');
INSERT INTO `session_detail` VALUES ('1968', '2019-07-08 20:58:15', '0', '0', '89', '89', '2', null, null, null, 'f58c2992a90e48ac942711f459cc0985', '2', '55');
INSERT INTO `session_detail` VALUES ('1969', '2019-07-08 20:08:12', '0', '0', '30', '10', '4', null, null, null, 'f58c2992a90e48ac942711f459cc0985', '2', '55');
INSERT INTO `session_detail` VALUES ('1970', '2019-07-08 20:04:16', '89', '13', null, null, '8', null, null, null, 'f58c2992a90e48ac942711f459cc0985', '2', '55');
INSERT INTO `session_detail` VALUES ('1971', '2019-07-08 20:19:13', '0', '0', null, null, '0', '39', '21', null, 'f58c2992a90e48ac942711f459cc0985', '2', '55');
INSERT INTO `session_detail` VALUES ('1972', '2019-07-08 20:22:54', '8', '68', null, null, '8', null, null, null, 'f58c2992a90e48ac942711f459cc0985', '2', '55');
INSERT INTO `session_detail` VALUES ('1973', '2019-07-08 20:32:41', '45', '66', null, null, '1', null, null, null, 'f58c2992a90e48ac942711f459cc0985', '2', '55');
INSERT INTO `session_detail` VALUES ('1974', '2019-07-08 20:35:54', '0', '0', '51', '99', '1', null, null, null, 'f58c2992a90e48ac942711f459cc0985', '2', '55');
INSERT INTO `session_detail` VALUES ('1975', '2019-07-08 20:42:07', '0', '0', null, null, '9', null, null, '呷哺呷哺', 'f58c2992a90e48ac942711f459cc0985', '2', '55');
INSERT INTO `session_detail` VALUES ('1976', '2019-07-08 20:47:41', '71', '84', null, null, '5', null, null, null, 'f58c2992a90e48ac942711f459cc0985', '2', '55');
INSERT INTO `session_detail` VALUES ('1977', '2019-07-08 20:12:36', '0', '0', null, null, '4', null, null, '日本料理', 'f58c2992a90e48ac942711f459cc0985', '2', '55');
INSERT INTO `session_detail` VALUES ('1978', '2019-07-08 20:57:42', '23', '6', null, null, '1', null, null, null, 'f58c2992a90e48ac942711f459cc0985', '2', '55');
INSERT INTO `session_detail` VALUES ('1979', '2019-07-08 21:41:47', '0', '0', null, null, '9', null, null, '温泉', 'e09a5e2963ee48d885d2c88e9f70afe6', '2', '47');
INSERT INTO `session_detail` VALUES ('1980', '2019-07-08 21:31:42', '0', '0', '8', '98', '1', null, null, null, 'e09a5e2963ee48d885d2c88e9f70afe6', '2', '47');
INSERT INTO `session_detail` VALUES ('1981', '2019-07-08 21:50:25', '0', '0', '86', '24', '6', null, null, null, 'e09a5e2963ee48d885d2c88e9f70afe6', '2', '47');
INSERT INTO `session_detail` VALUES ('1982', '2019-07-08 21:19:10', '0', '0', null, null, '5', '99', '61', null, 'e09a5e2963ee48d885d2c88e9f70afe6', '2', '47');
INSERT INTO `session_detail` VALUES ('1983', '2019-07-08 21:42:15', '0', '0', '66', '28', '5', null, null, null, 'e09a5e2963ee48d885d2c88e9f70afe6', '2', '47');
INSERT INTO `session_detail` VALUES ('1984', '2019-07-08 21:39:17', '0', '0', null, null, '9', '0', '16', null, 'e09a5e2963ee48d885d2c88e9f70afe6', '2', '47');
INSERT INTO `session_detail` VALUES ('1985', '2019-07-08 21:25:38', '0', '0', null, null, '8', null, null, '火锅', 'e09a5e2963ee48d885d2c88e9f70afe6', '2', '47');
INSERT INTO `session_detail` VALUES ('1986', '2019-07-08 22:01:54', '0', '0', null, null, '1', '23', '74', null, '409f2961325044e2be79877aeab64d1c', '2', '35');
INSERT INTO `session_detail` VALUES ('1987', '2019-07-08 22:54:24', '0', '0', '59', '47', '8', null, null, null, '409f2961325044e2be79877aeab64d1c', '2', '35');
INSERT INTO `session_detail` VALUES ('1988', '2019-07-08 22:21:11', '0', '0', '2', '59', '2', null, null, null, '409f2961325044e2be79877aeab64d1c', '2', '35');
INSERT INTO `session_detail` VALUES ('1989', '2019-07-08 22:57:35', '96', '34', null, null, '7', null, null, null, '409f2961325044e2be79877aeab64d1c', '2', '35');
INSERT INTO `session_detail` VALUES ('1990', '2019-07-08 22:28:14', '23', '99', null, null, '5', null, null, null, '409f2961325044e2be79877aeab64d1c', '2', '35');
INSERT INTO `session_detail` VALUES ('1991', '2019-07-08 22:21:33', '0', '0', null, null, '3', '23', '54', null, '409f2961325044e2be79877aeab64d1c', '2', '35');
INSERT INTO `session_detail` VALUES ('1992', '2019-07-08 22:42:44', '0', '0', null, null, '9', '62', '68', null, '409f2961325044e2be79877aeab64d1c', '2', '35');
INSERT INTO `session_detail` VALUES ('1993', '2019-07-08 22:37:23', '0', '0', '12', '50', '1', null, null, null, '409f2961325044e2be79877aeab64d1c', '2', '35');
INSERT INTO `session_detail` VALUES ('1994', '2019-07-08 22:49:57', '0', '0', null, null, '5', '66', '78', null, '409f2961325044e2be79877aeab64d1c', '2', '35');
INSERT INTO `session_detail` VALUES ('1995', '2019-07-08 22:54:07', '0', '0', null, null, '5', null, null, '火锅', '409f2961325044e2be79877aeab64d1c', '2', '35');
INSERT INTO `session_detail` VALUES ('1996', '2019-07-08 22:24:24', '14', '59', null, null, '9', null, null, null, '409f2961325044e2be79877aeab64d1c', '2', '35');
INSERT INTO `session_detail` VALUES ('1997', '2019-07-08 22:39:34', '0', '0', '26', '53', '9', null, null, null, '409f2961325044e2be79877aeab64d1c', '2', '35');
INSERT INTO `session_detail` VALUES ('1998', '2019-07-08 22:25:04', '0', '0', '28', '16', '9', null, null, null, '409f2961325044e2be79877aeab64d1c', '2', '35');
INSERT INTO `session_detail` VALUES ('1999', '2019-07-08 22:01:12', '90', '22', null, null, '1', null, null, null, '409f2961325044e2be79877aeab64d1c', '2', '35');
INSERT INTO `session_detail` VALUES ('2000', '2019-07-08 22:34:40', '0', '0', null, null, '5', null, null, '重庆小面', '409f2961325044e2be79877aeab64d1c', '2', '35');
INSERT INTO `session_detail` VALUES ('2001', '2019-07-08 22:27:42', '83', '65', null, null, '4', null, null, null, '409f2961325044e2be79877aeab64d1c', '2', '35');
INSERT INTO `session_detail` VALUES ('2002', '2019-07-08 22:36:56', '0', '0', null, null, '6', '95', '28', null, '409f2961325044e2be79877aeab64d1c', '2', '35');
INSERT INTO `session_detail` VALUES ('2003', '2019-07-08 22:33:05', '49', '91', null, null, '7', null, null, null, '409f2961325044e2be79877aeab64d1c', '2', '35');
INSERT INTO `session_detail` VALUES ('2004', '2019-07-08 22:52:21', '0', '0', '28', '29', '9', null, null, null, '409f2961325044e2be79877aeab64d1c', '2', '35');
INSERT INTO `session_detail` VALUES ('2005', '2019-07-08 7:33:44', '37', '87', null, null, '5', null, null, null, '8e1acf6ba73f4f08b7ca89c5da77d53b', '2', '22');
INSERT INTO `session_detail` VALUES ('2006', '2019-07-08 7:47:50', '0', '0', null, null, '9', null, null, '太古商场', '8e1acf6ba73f4f08b7ca89c5da77d53b', '2', '22');
INSERT INTO `session_detail` VALUES ('2007', '2019-07-08 7:14:31', '0', '0', '40', '15', '6', null, null, null, '8e1acf6ba73f4f08b7ca89c5da77d53b', '2', '22');
INSERT INTO `session_detail` VALUES ('2008', '2019-07-08 7:50:19', '0', '0', '88', '47', '4', null, null, null, '8e1acf6ba73f4f08b7ca89c5da77d53b', '2', '22');
INSERT INTO `session_detail` VALUES ('2009', '2019-07-08 7:40:40', '0', '0', null, null, '1', '3', '64', null, '8e1acf6ba73f4f08b7ca89c5da77d53b', '2', '22');
INSERT INTO `session_detail` VALUES ('2010', '2019-07-08 7:36:46', '65', '12', null, null, '9', null, null, null, '8e1acf6ba73f4f08b7ca89c5da77d53b', '2', '22');
INSERT INTO `session_detail` VALUES ('2011', '2019-07-08 7:11:29', '0', '0', '64', '99', '2', null, null, null, '8e1acf6ba73f4f08b7ca89c5da77d53b', '2', '22');
INSERT INTO `session_detail` VALUES ('2012', '2019-07-08 7:57:32', '7', '46', null, null, '7', null, null, null, '8e1acf6ba73f4f08b7ca89c5da77d53b', '2', '22');
INSERT INTO `session_detail` VALUES ('2013', '2019-07-08 7:31:08', '0', '0', null, null, '7', null, null, '火锅', '8e1acf6ba73f4f08b7ca89c5da77d53b', '2', '22');
INSERT INTO `session_detail` VALUES ('2014', '2019-07-08 7:43:22', '64', '29', null, null, '4', null, null, null, '8e1acf6ba73f4f08b7ca89c5da77d53b', '2', '22');
INSERT INTO `session_detail` VALUES ('2015', '2019-07-08 7:51:00', '0', '0', null, null, '7', '50', '43', null, '8e1acf6ba73f4f08b7ca89c5da77d53b', '2', '22');
INSERT INTO `session_detail` VALUES ('2016', '2019-07-08 13:15:01', '75', '93', null, null, '8', null, null, null, '22bc37272a314ee0b63ad18993cf21eb', '2', '83');
INSERT INTO `session_detail` VALUES ('2017', '2019-07-08 13:45:28', '0', '0', '11', '86', '7', null, null, null, '22bc37272a314ee0b63ad18993cf21eb', '2', '83');
INSERT INTO `session_detail` VALUES ('2018', '2019-07-08 13:35:14', '0', '0', null, null, '1', '43', '6', null, '22bc37272a314ee0b63ad18993cf21eb', '2', '83');
INSERT INTO `session_detail` VALUES ('2019', '2019-07-08 13:56:27', '50', '54', null, null, '2', null, null, null, '22bc37272a314ee0b63ad18993cf21eb', '2', '83');
INSERT INTO `session_detail` VALUES ('2020', '2019-07-08 13:14:15', '45', '29', null, null, '6', null, null, null, '22bc37272a314ee0b63ad18993cf21eb', '2', '83');
INSERT INTO `session_detail` VALUES ('2021', '2019-07-08 13:19:27', '0', '0', null, null, '7', null, null, '太古商场', '22bc37272a314ee0b63ad18993cf21eb', '2', '83');
INSERT INTO `session_detail` VALUES ('2022', '2019-07-08 13:25:07', '0', '0', '46', '72', '8', null, null, null, '22bc37272a314ee0b63ad18993cf21eb', '2', '83');
INSERT INTO `session_detail` VALUES ('2023', '2019-07-08 13:36:32', '0', '0', null, null, '6', '20', '64', null, '22bc37272a314ee0b63ad18993cf21eb', '2', '83');
INSERT INTO `session_detail` VALUES ('2024', '2019-07-08 13:28:22', '0', '0', null, null, '3', null, null, '国贸大厦', '22bc37272a314ee0b63ad18993cf21eb', '2', '83');
INSERT INTO `session_detail` VALUES ('2025', '2019-07-08 9:10:11', '0', '0', '24', '6', '9', null, null, null, '87a141e3b55f4fda80635d6d823bcdc0', '2', '59');
INSERT INTO `session_detail` VALUES ('2026', '2019-07-08 9:48:15', '0', '0', null, null, '9', '72', '30', null, '87a141e3b55f4fda80635d6d823bcdc0', '2', '59');
INSERT INTO `session_detail` VALUES ('2027', '2019-07-08 9:13:43', '75', '32', null, null, '0', null, null, null, '87a141e3b55f4fda80635d6d823bcdc0', '2', '59');
INSERT INTO `session_detail` VALUES ('2028', '2019-07-08 9:17:22', '0', '0', null, null, '9', '25', '29', null, '87a141e3b55f4fda80635d6d823bcdc0', '2', '59');
INSERT INTO `session_detail` VALUES ('2029', '2019-07-08 9:45:25', '0', '0', '63', '77', '8', null, null, null, '87a141e3b55f4fda80635d6d823bcdc0', '2', '59');
INSERT INTO `session_detail` VALUES ('2030', '2019-07-08 9:16:43', '68', '73', null, null, '0', null, null, null, '87a141e3b55f4fda80635d6d823bcdc0', '2', '59');
INSERT INTO `session_detail` VALUES ('2031', '2019-07-08 9:44:30', '0', '0', null, null, '4', null, null, '火锅', '87a141e3b55f4fda80635d6d823bcdc0', '2', '59');
INSERT INTO `session_detail` VALUES ('2032', '2019-07-08 9:09:51', '0', '0', null, null, '3', null, null, '日本料理', '87a141e3b55f4fda80635d6d823bcdc0', '2', '59');
INSERT INTO `session_detail` VALUES ('2033', '2019-07-08 10:06:51', '0', '0', null, null, '2', '74', '63', null, '5004406ff2cd429d86a3c9b56f7f30b0', '2', '2');
INSERT INTO `session_detail` VALUES ('2034', '2019-07-08 10:08:15', '21', '24', null, null, '0', null, null, null, '5004406ff2cd429d86a3c9b56f7f30b0', '2', '2');
INSERT INTO `session_detail` VALUES ('2035', '2019-07-08 10:33:53', '0', '0', '46', '92', '0', null, null, null, '5004406ff2cd429d86a3c9b56f7f30b0', '2', '2');
INSERT INTO `session_detail` VALUES ('2036', '2019-07-08 10:28:56', '0', '0', null, null, '4', '51', '0', null, '5004406ff2cd429d86a3c9b56f7f30b0', '2', '2');
INSERT INTO `session_detail` VALUES ('2037', '2019-07-08 10:06:58', '0', '0', null, null, '7', '78', '20', null, '5004406ff2cd429d86a3c9b56f7f30b0', '2', '2');
INSERT INTO `session_detail` VALUES ('2038', '2019-07-08 10:16:12', '0', '0', null, null, '7', '11', '52', null, '5004406ff2cd429d86a3c9b56f7f30b0', '2', '2');
INSERT INTO `session_detail` VALUES ('2039', '2019-07-08 10:58:10', '0', '0', '99', '18', '6', null, null, null, '5004406ff2cd429d86a3c9b56f7f30b0', '2', '2');
INSERT INTO `session_detail` VALUES ('2040', '2019-07-08 10:01:39', '63', '59', null, null, '0', null, null, null, '5004406ff2cd429d86a3c9b56f7f30b0', '2', '2');
INSERT INTO `session_detail` VALUES ('2041', '2019-07-08 10:18:39', '0', '0', '36', '39', '5', null, null, null, '5004406ff2cd429d86a3c9b56f7f30b0', '2', '2');
INSERT INTO `session_detail` VALUES ('2042', '2019-07-08 10:56:31', '18', '75', null, null, '9', null, null, null, '5004406ff2cd429d86a3c9b56f7f30b0', '2', '2');
INSERT INTO `session_detail` VALUES ('2043', '2019-07-08 14:53:25', '0', '0', null, null, '9', null, null, '太古商场', '286a6987e2ef47c28cee948572c25369', '2', '51');
INSERT INTO `session_detail` VALUES ('2044', '2019-07-08 14:05:37', '30', '77', null, null, '4', null, null, null, '286a6987e2ef47c28cee948572c25369', '2', '51');
INSERT INTO `session_detail` VALUES ('2045', '2019-07-08 14:27:08', '0', '0', '49', '7', '8', null, null, null, '286a6987e2ef47c28cee948572c25369', '2', '51');
INSERT INTO `session_detail` VALUES ('2046', '2019-07-08 14:44:31', '0', '0', null, null, '6', '72', '4', null, '286a6987e2ef47c28cee948572c25369', '2', '51');
INSERT INTO `session_detail` VALUES ('2047', '2019-07-08 14:32:00', '0', '0', null, null, '2', '56', '91', null, '286a6987e2ef47c28cee948572c25369', '2', '51');
INSERT INTO `session_detail` VALUES ('2048', '2019-07-08 14:36:55', '76', '5', null, null, '7', null, null, null, '286a6987e2ef47c28cee948572c25369', '2', '51');
INSERT INTO `session_detail` VALUES ('2049', '2019-07-08 14:55:37', '0', '0', '37', '92', '7', null, null, null, '286a6987e2ef47c28cee948572c25369', '2', '51');
INSERT INTO `session_detail` VALUES ('2050', '2019-07-08 14:25:54', '0', '0', null, null, '7', '96', '29', null, '286a6987e2ef47c28cee948572c25369', '2', '51');
INSERT INTO `session_detail` VALUES ('2051', '2019-07-08 14:13:18', '0', '0', null, null, '6', '72', '12', null, '286a6987e2ef47c28cee948572c25369', '2', '51');
INSERT INTO `session_detail` VALUES ('2052', '2019-07-08 14:35:54', '4', '56', null, null, '4', null, null, null, '286a6987e2ef47c28cee948572c25369', '2', '51');
INSERT INTO `session_detail` VALUES ('2053', '2019-07-08 14:20:24', '0', '0', null, null, '3', '82', '94', null, '286a6987e2ef47c28cee948572c25369', '2', '51');
INSERT INTO `session_detail` VALUES ('2054', '2019-07-08 14:29:24', '0', '0', null, null, '6', null, null, '国贸大厦', '286a6987e2ef47c28cee948572c25369', '2', '51');
INSERT INTO `session_detail` VALUES ('2055', '2019-07-08 14:20:21', '19', '75', null, null, '9', null, null, null, '286a6987e2ef47c28cee948572c25369', '2', '51');
INSERT INTO `session_detail` VALUES ('2102', '2019-07-09 0:37:48', '0', '0', null, null, '5', '43', '45', null, '7eead909e3474c7e99909ec9e0e12760', '2', '24');
INSERT INTO `session_detail` VALUES ('2103', '2019-07-09 0:33:21', '17', '57', null, null, '8', null, null, null, '7eead909e3474c7e99909ec9e0e12760', '2', '24');
INSERT INTO `session_detail` VALUES ('2104', '2019-07-09 0:26:26', '0', '0', null, null, '6', null, null, '新辣道鱼火锅', '7eead909e3474c7e99909ec9e0e12760', '2', '24');
INSERT INTO `session_detail` VALUES ('2105', '2019-07-09 0:41:52', '0', '0', null, null, '4', null, null, '新辣道鱼火锅', '7eead909e3474c7e99909ec9e0e12760', '2', '24');
INSERT INTO `session_detail` VALUES ('2106', '2019-07-09 0:51:45', '0', '0', null, null, '1', '82', '38', null, '7eead909e3474c7e99909ec9e0e12760', '2', '24');
INSERT INTO `session_detail` VALUES ('2107', '2019-07-09 0:46:40', '0', '0', null, null, '7', null, null, '重庆辣子鸡', '7eead909e3474c7e99909ec9e0e12760', '2', '24');
INSERT INTO `session_detail` VALUES ('2108', '2019-07-09 0:57:11', '0', '0', null, null, '5', null, null, '重庆辣子鸡', '7eead909e3474c7e99909ec9e0e12760', '2', '24');
INSERT INTO `session_detail` VALUES ('2109', '2019-07-09 0:46:20', '87', '61', null, null, '5', null, null, null, '7eead909e3474c7e99909ec9e0e12760', '2', '24');
INSERT INTO `session_detail` VALUES ('2110', '2019-07-09 0:42:53', '9', '84', null, null, '7', null, null, null, '7eead909e3474c7e99909ec9e0e12760', '2', '24');
INSERT INTO `session_detail` VALUES ('2111', '2019-07-09 0:38:50', '0', '0', '24', '55', '9', null, null, null, '7eead909e3474c7e99909ec9e0e12760', '2', '24');
INSERT INTO `session_detail` VALUES ('2112', '2019-07-09 0:41:17', '0', '0', '19', '7', '8', null, null, null, '7eead909e3474c7e99909ec9e0e12760', '2', '24');
INSERT INTO `session_detail` VALUES ('2113', '2019-07-09 0:10:07', '0', '0', '34', '61', '0', null, null, null, '7eead909e3474c7e99909ec9e0e12760', '2', '24');
INSERT INTO `session_detail` VALUES ('2114', '2019-07-09 0:03:06', '0', '0', null, null, '0', null, null, '火锅', '7eead909e3474c7e99909ec9e0e12760', '2', '24');
INSERT INTO `session_detail` VALUES ('2115', '2019-07-09 0:19:56', '0', '0', null, null, '2', null, null, '太古商场', '7eead909e3474c7e99909ec9e0e12760', '2', '24');
INSERT INTO `session_detail` VALUES ('2116', '2019-07-09 17:07:40', '0', '0', null, null, '8', null, null, '重庆小面', '7a932c6a490e4e718841ed0b4a05fb97', '2', '3');
INSERT INTO `session_detail` VALUES ('2117', '2019-07-09 17:55:30', '0', '0', null, null, '0', null, null, '太古商场', '7a932c6a490e4e718841ed0b4a05fb97', '2', '3');
INSERT INTO `session_detail` VALUES ('2118', '2019-07-09 17:45:18', '17', '63', null, null, '3', null, null, null, '7a932c6a490e4e718841ed0b4a05fb97', '2', '3');
INSERT INTO `session_detail` VALUES ('2119', '2019-07-09 17:22:33', '0', '0', null, null, '0', null, null, '日本料理', '7a932c6a490e4e718841ed0b4a05fb97', '2', '3');
INSERT INTO `session_detail` VALUES ('2120', '2019-07-09 17:26:32', '0', '0', null, null, '1', null, null, '重庆辣子鸡', '7a932c6a490e4e718841ed0b4a05fb97', '2', '3');
INSERT INTO `session_detail` VALUES ('2121', '2019-07-09 17:02:21', '0', '0', '41', '28', '4', null, null, null, '7a932c6a490e4e718841ed0b4a05fb97', '2', '3');
INSERT INTO `session_detail` VALUES ('2122', '2019-07-09 17:39:01', '97', '72', null, null, '2', null, null, null, '7a932c6a490e4e718841ed0b4a05fb97', '2', '3');
INSERT INTO `session_detail` VALUES ('2123', '2019-07-09 17:56:03', '26', '19', null, null, '6', null, null, null, '7a932c6a490e4e718841ed0b4a05fb97', '2', '3');
INSERT INTO `session_detail` VALUES ('2124', '2019-07-09 17:58:02', '20', '93', null, null, '7', null, null, null, '7a932c6a490e4e718841ed0b4a05fb97', '2', '3');
INSERT INTO `session_detail` VALUES ('2125', '2019-07-09 17:49:29', '0', '0', null, null, '4', '75', '87', null, '7a932c6a490e4e718841ed0b4a05fb97', '2', '3');
INSERT INTO `session_detail` VALUES ('2126', '2019-07-09 17:27:29', '73', '26', null, null, '2', null, null, null, '7a932c6a490e4e718841ed0b4a05fb97', '2', '3');
INSERT INTO `session_detail` VALUES ('2127', '2019-07-09 17:13:54', '59', '57', null, null, '1', null, null, null, '7a932c6a490e4e718841ed0b4a05fb97', '2', '3');
INSERT INTO `session_detail` VALUES ('2128', '2019-07-09 17:29:44', '0', '0', null, null, '8', '26', '51', null, '7a932c6a490e4e718841ed0b4a05fb97', '2', '3');
INSERT INTO `session_detail` VALUES ('2129', '2019-07-09 17:44:45', '78', '58', null, null, '7', null, null, null, '7a932c6a490e4e718841ed0b4a05fb97', '2', '3');
INSERT INTO `session_detail` VALUES ('2130', '2019-07-09 17:06:47', '0', '0', '80', '83', '8', null, null, null, '7a932c6a490e4e718841ed0b4a05fb97', '2', '3');
INSERT INTO `session_detail` VALUES ('2131', '2019-07-09 7:00:24', '0', '0', null, null, '9', null, null, '蛋糕', '287171d692e0424f8433d2c1485a156c', '2', '30');
INSERT INTO `session_detail` VALUES ('2132', '2019-07-09 7:42:32', '0', '0', null, null, '1', '45', '84', null, '287171d692e0424f8433d2c1485a156c', '2', '30');
INSERT INTO `session_detail` VALUES ('2133', '2019-07-09 7:44:57', '0', '0', null, null, '8', '92', '64', null, '287171d692e0424f8433d2c1485a156c', '2', '30');
INSERT INTO `session_detail` VALUES ('2134', '2019-07-09 7:05:08', '17', '57', null, null, '8', null, null, null, '287171d692e0424f8433d2c1485a156c', '2', '30');
INSERT INTO `session_detail` VALUES ('2135', '2019-07-09 7:51:56', '0', '70', null, null, '2', null, null, null, '287171d692e0424f8433d2c1485a156c', '2', '30');
INSERT INTO `session_detail` VALUES ('2136', '2019-07-09 7:53:14', '0', '0', null, null, '6', '5', '80', null, '287171d692e0424f8433d2c1485a156c', '2', '30');
INSERT INTO `session_detail` VALUES ('2137', '2019-07-09 7:16:23', '0', '0', null, null, '6', null, null, '日本料理', '287171d692e0424f8433d2c1485a156c', '2', '30');
INSERT INTO `session_detail` VALUES ('2138', '2019-07-09 7:54:21', '0', '0', null, null, '8', '44', '10', null, '287171d692e0424f8433d2c1485a156c', '2', '30');
INSERT INTO `session_detail` VALUES ('2139', '2019-07-09 7:15:48', '0', '0', '60', '31', '2', null, null, null, '287171d692e0424f8433d2c1485a156c', '2', '30');
INSERT INTO `session_detail` VALUES ('2140', '2019-07-09 7:17:32', '0', '0', null, null, '9', null, null, '温泉', '287171d692e0424f8433d2c1485a156c', '2', '30');
INSERT INTO `session_detail` VALUES ('2141', '2019-07-09 7:22:48', '0', '0', null, null, '4', '57', '24', null, '287171d692e0424f8433d2c1485a156c', '2', '30');
INSERT INTO `session_detail` VALUES ('2142', '2019-07-09 7:45:39', '0', '0', null, null, '0', null, null, '重庆辣子鸡', '287171d692e0424f8433d2c1485a156c', '2', '30');
INSERT INTO `session_detail` VALUES ('2143', '2019-07-09 7:34:29', '0', '0', null, null, '3', '76', '40', null, '287171d692e0424f8433d2c1485a156c', '2', '30');
INSERT INTO `session_detail` VALUES ('2144', '2019-07-09 7:55:51', '48', '4', null, null, '0', null, null, null, '287171d692e0424f8433d2c1485a156c', '2', '30');
INSERT INTO `session_detail` VALUES ('2145', '2019-07-09 7:30:37', '0', '0', '80', '66', '7', null, null, null, '287171d692e0424f8433d2c1485a156c', '2', '30');
INSERT INTO `session_detail` VALUES ('2146', '2019-07-09 7:05:51', '57', '22', null, null, '0', null, null, null, '287171d692e0424f8433d2c1485a156c', '2', '30');
INSERT INTO `session_detail` VALUES ('2147', '2019-07-09 7:50:55', '0', '0', null, null, '3', '46', '62', null, '287171d692e0424f8433d2c1485a156c', '2', '30');
INSERT INTO `session_detail` VALUES ('2148', '2019-07-09 7:50:33', '0', '0', '59', '24', '9', null, null, null, '287171d692e0424f8433d2c1485a156c', '2', '30');
INSERT INTO `session_detail` VALUES ('2149', '2019-07-09 7:06:44', '0', '0', '83', '27', '2', null, null, null, '287171d692e0424f8433d2c1485a156c', '2', '30');
INSERT INTO `session_detail` VALUES ('2150', '2019-07-09 20:35:48', '0', '0', null, null, '3', '62', '84', null, '70c0ef1f1b10484bbe0856c51edf0bf0', '2', '89');
INSERT INTO `session_detail` VALUES ('2151', '2019-07-09 20:26:15', '0', '0', '35', '56', '0', null, null, null, '70c0ef1f1b10484bbe0856c51edf0bf0', '2', '89');
INSERT INTO `session_detail` VALUES ('2152', '2019-07-09 20:24:52', '17', '9', null, null, '6', null, null, null, '70c0ef1f1b10484bbe0856c51edf0bf0', '2', '89');
INSERT INTO `session_detail` VALUES ('2153', '2019-07-09 20:22:23', '0', '0', null, null, '1', null, null, '火锅', '70c0ef1f1b10484bbe0856c51edf0bf0', '2', '89');
INSERT INTO `session_detail` VALUES ('2154', '2019-07-09 20:43:35', '77', '14', null, null, '7', null, null, null, '70c0ef1f1b10484bbe0856c51edf0bf0', '2', '89');
INSERT INTO `session_detail` VALUES ('2155', '2019-07-09 20:42:00', '0', '0', '39', '35', '6', null, null, null, '70c0ef1f1b10484bbe0856c51edf0bf0', '2', '89');
INSERT INTO `session_detail` VALUES ('2156', '2019-07-09 20:10:55', '0', '0', null, null, '4', '71', '60', null, '70c0ef1f1b10484bbe0856c51edf0bf0', '2', '89');
INSERT INTO `session_detail` VALUES ('2157', '2019-07-09 20:19:54', '0', '0', '68', '7', '9', null, null, null, '70c0ef1f1b10484bbe0856c51edf0bf0', '2', '89');
INSERT INTO `session_detail` VALUES ('2158', '2019-07-09 20:58:15', '0', '0', '84', '46', '8', null, null, null, '70c0ef1f1b10484bbe0856c51edf0bf0', '2', '89');
INSERT INTO `session_detail` VALUES ('2159', '2019-07-09 20:51:54', '0', '0', null, null, '1', null, null, '重庆小面', '70c0ef1f1b10484bbe0856c51edf0bf0', '2', '89');
INSERT INTO `session_detail` VALUES ('2160', '2019-07-09 20:02:01', '0', '0', null, null, '3', '81', '52', null, '70c0ef1f1b10484bbe0856c51edf0bf0', '2', '89');
INSERT INTO `session_detail` VALUES ('2161', '2019-07-09 20:13:26', '0', '0', '78', '23', '7', null, null, null, '70c0ef1f1b10484bbe0856c51edf0bf0', '2', '89');
INSERT INTO `session_detail` VALUES ('2162', '2019-07-09 20:14:19', '0', '0', null, null, '4', null, null, '火锅', '70c0ef1f1b10484bbe0856c51edf0bf0', '2', '89');
INSERT INTO `session_detail` VALUES ('2163', '2019-07-09 20:11:14', '0', '0', '6', '18', '3', null, null, null, '70c0ef1f1b10484bbe0856c51edf0bf0', '2', '89');
INSERT INTO `session_detail` VALUES ('2164', '2019-07-09 20:05:14', '0', '0', '42', '46', '2', null, null, null, '70c0ef1f1b10484bbe0856c51edf0bf0', '2', '89');
INSERT INTO `session_detail` VALUES ('2165', '2019-07-09 20:35:22', '56', '98', null, null, '0', null, null, null, '70c0ef1f1b10484bbe0856c51edf0bf0', '2', '89');
INSERT INTO `session_detail` VALUES ('2166', '2019-07-09 20:13:37', '0', '0', null, null, '2', null, null, '重庆辣子鸡', '70c0ef1f1b10484bbe0856c51edf0bf0', '2', '89');
INSERT INTO `session_detail` VALUES ('2167', '2019-07-09 5:00:05', '0', '0', null, null, '0', '98', '98', null, '2e98546a815a4cf8861be2a51f2fb2de', '2', '26');
INSERT INTO `session_detail` VALUES ('2168', '2019-07-09 5:07:14', '0', '0', '20', '50', '8', null, null, null, '2e98546a815a4cf8861be2a51f2fb2de', '2', '26');
INSERT INTO `session_detail` VALUES ('2169', '2019-07-09 5:11:09', '0', '0', null, null, '2', '53', '6', null, '2e98546a815a4cf8861be2a51f2fb2de', '2', '26');
INSERT INTO `session_detail` VALUES ('2170', '2019-07-09 5:23:05', '17', '3', null, null, '4', null, null, null, '2e98546a815a4cf8861be2a51f2fb2de', '2', '26');
INSERT INTO `session_detail` VALUES ('2171', '2019-07-09 5:48:21', '0', '0', '9', '3', '9', null, null, null, '2e98546a815a4cf8861be2a51f2fb2de', '2', '26');
INSERT INTO `session_detail` VALUES ('2172', '2019-07-09 1:13:15', '0', '0', '80', '6', '5', null, null, null, 'f02e0f3844a243b696773a35f912dec0', '2', '46');
INSERT INTO `session_detail` VALUES ('2173', '2019-07-09 1:21:48', '0', '0', null, null, '0', '48', '80', null, 'f02e0f3844a243b696773a35f912dec0', '2', '46');
INSERT INTO `session_detail` VALUES ('2174', '2019-07-09 1:53:21', '0', '0', null, null, '1', '52', '67', null, 'f02e0f3844a243b696773a35f912dec0', '2', '46');
INSERT INTO `session_detail` VALUES ('2175', '2019-07-09 1:37:46', '74', '36', null, null, '1', null, null, null, 'f02e0f3844a243b696773a35f912dec0', '2', '46');
INSERT INTO `session_detail` VALUES ('2176', '2019-07-09 1:04:38', '0', '0', '84', '26', '2', null, null, null, 'f02e0f3844a243b696773a35f912dec0', '2', '46');
INSERT INTO `session_detail` VALUES ('2177', '2019-07-09 1:04:51', '0', '0', null, null, '5', '94', '75', null, 'f02e0f3844a243b696773a35f912dec0', '2', '46');
INSERT INTO `session_detail` VALUES ('2178', '2019-07-09 1:25:14', '0', '0', null, null, '4', '90', '81', null, 'f02e0f3844a243b696773a35f912dec0', '2', '46');
INSERT INTO `session_detail` VALUES ('2179', '2019-07-09 1:57:38', '0', '0', null, null, '0', null, null, '重庆辣子鸡', 'f02e0f3844a243b696773a35f912dec0', '2', '46');
INSERT INTO `session_detail` VALUES ('2180', '2019-07-09 1:08:07', '0', '0', null, null, '7', '30', '47', null, 'f02e0f3844a243b696773a35f912dec0', '2', '46');
INSERT INTO `session_detail` VALUES ('2181', '2019-07-09 1:18:06', '0', '0', null, null, '3', '67', '67', null, 'f02e0f3844a243b696773a35f912dec0', '2', '46');
INSERT INTO `session_detail` VALUES ('2182', '2019-07-09 1:10:52', '0', '0', null, null, '8', null, null, '国贸大厦', 'f02e0f3844a243b696773a35f912dec0', '2', '46');
INSERT INTO `session_detail` VALUES ('2183', '2019-07-09 1:31:01', '0', '0', null, null, '2', null, null, '呷哺呷哺', 'f02e0f3844a243b696773a35f912dec0', '2', '46');
INSERT INTO `session_detail` VALUES ('2184', '2019-07-09 1:03:01', '0', '0', null, null, '6', '73', '17', null, 'f02e0f3844a243b696773a35f912dec0', '2', '46');
INSERT INTO `session_detail` VALUES ('2185', '2019-07-09 1:03:21', '11', '94', null, null, '1', null, null, null, 'f02e0f3844a243b696773a35f912dec0', '2', '46');
INSERT INTO `session_detail` VALUES ('2186', '2019-07-09 1:56:03', '99', '11', null, null, '2', null, null, null, 'f02e0f3844a243b696773a35f912dec0', '2', '46');
INSERT INTO `session_detail` VALUES ('2187', '2019-07-09 1:45:15', '0', '0', null, null, '9', null, null, '温泉', 'f02e0f3844a243b696773a35f912dec0', '2', '46');
INSERT INTO `session_detail` VALUES ('2188', '2019-07-09 1:08:21', '0', '0', '28', '14', '0', null, null, null, 'f02e0f3844a243b696773a35f912dec0', '2', '46');
INSERT INTO `session_detail` VALUES ('2189', '2019-07-09 1:53:26', '0', '0', '1', '84', '4', null, null, null, 'f02e0f3844a243b696773a35f912dec0', '2', '46');
INSERT INTO `session_detail` VALUES ('2190', '2019-07-09 1:01:07', '0', '0', null, null, '4', null, null, '重庆辣子鸡', 'f02e0f3844a243b696773a35f912dec0', '2', '46');
INSERT INTO `session_detail` VALUES ('2191', '2019-07-09 1:51:15', '0', '0', null, null, '6', '93', '94', null, 'f02e0f3844a243b696773a35f912dec0', '2', '46');
INSERT INTO `session_detail` VALUES ('2192', '2019-07-09 1:06:46', '0', '0', null, null, '4', '39', '16', null, 'f02e0f3844a243b696773a35f912dec0', '2', '46');
INSERT INTO `session_detail` VALUES ('2193', '2019-07-09 1:52:00', '17', '17', null, null, '8', null, null, null, 'f02e0f3844a243b696773a35f912dec0', '2', '46');
INSERT INTO `session_detail` VALUES ('2194', '2019-07-09 1:44:28', '0', '0', null, null, '6', null, null, '呷哺呷哺', 'f02e0f3844a243b696773a35f912dec0', '2', '46');
INSERT INTO `session_detail` VALUES ('2195', '2019-07-09 1:17:29', '0', '0', null, null, '0', '81', '19', null, 'f02e0f3844a243b696773a35f912dec0', '2', '46');
INSERT INTO `session_detail` VALUES ('2196', '2019-07-09 4:17:11', '0', '0', '50', '67', '5', null, null, null, 'e241c0c17500445083958956b15d234d', '2', '62');
INSERT INTO `session_detail` VALUES ('2197', '2019-07-09 4:45:02', '0', '0', null, null, '8', null, null, '重庆辣子鸡', 'e241c0c17500445083958956b15d234d', '2', '62');
INSERT INTO `session_detail` VALUES ('2198', '2019-07-09 4:26:42', '0', '0', null, null, '7', '36', '3', null, 'e241c0c17500445083958956b15d234d', '2', '62');
INSERT INTO `session_detail` VALUES ('2199', '2019-07-09 4:52:17', '0', '0', '9', '72', '8', null, null, null, 'e241c0c17500445083958956b15d234d', '2', '62');
INSERT INTO `session_detail` VALUES ('2200', '2019-07-09 4:16:05', '0', '0', null, null, '3', '68', '63', null, 'e241c0c17500445083958956b15d234d', '2', '62');
INSERT INTO `session_detail` VALUES ('2201', '2019-07-09 4:53:15', '0', '0', null, null, '7', null, null, '呷哺呷哺', 'e241c0c17500445083958956b15d234d', '2', '62');
INSERT INTO `session_detail` VALUES ('2202', '2019-07-09 4:46:46', '79', '2', null, null, '0', null, null, null, 'e241c0c17500445083958956b15d234d', '2', '62');
INSERT INTO `session_detail` VALUES ('2203', '2019-07-09 4:16:37', '0', '0', null, null, '1', '31', '36', null, 'e241c0c17500445083958956b15d234d', '2', '62');
INSERT INTO `session_detail` VALUES ('2204', '2019-07-09 4:24:33', '0', '0', null, null, '6', '36', '79', null, 'e241c0c17500445083958956b15d234d', '2', '62');
INSERT INTO `session_detail` VALUES ('2205', '2019-07-09 4:06:04', '43', '33', null, null, '9', null, null, null, 'e241c0c17500445083958956b15d234d', '2', '62');
INSERT INTO `session_detail` VALUES ('2206', '2019-07-09 4:08:18', '17', '19', null, null, '2', null, null, null, 'e241c0c17500445083958956b15d234d', '2', '62');
INSERT INTO `session_detail` VALUES ('2207', '2019-07-09 4:21:36', '0', '0', '19', '23', '6', null, null, null, 'e241c0c17500445083958956b15d234d', '2', '62');
INSERT INTO `session_detail` VALUES ('2208', '2019-07-09 15:04:24', '0', '0', null, null, '5', '32', '83', null, 'c63de7b2e83445be9159b600dae908b4', '2', '24');
INSERT INTO `session_detail` VALUES ('2209', '2019-07-09 15:43:09', '28', '95', null, null, '4', null, null, null, 'c63de7b2e83445be9159b600dae908b4', '2', '24');
INSERT INTO `session_detail` VALUES ('2210', '2019-07-09 15:51:43', '93', '9', null, null, '5', null, null, null, 'c63de7b2e83445be9159b600dae908b4', '2', '24');
INSERT INTO `session_detail` VALUES ('2211', '2019-07-09 15:53:19', '88', '15', null, null, '0', null, null, null, 'c63de7b2e83445be9159b600dae908b4', '2', '24');
INSERT INTO `session_detail` VALUES ('2212', '2019-07-09 15:45:33', '0', '0', null, null, '1', '85', '69', null, 'c63de7b2e83445be9159b600dae908b4', '2', '24');
INSERT INTO `session_detail` VALUES ('2213', '2019-07-09 15:08:02', '17', '14', null, null, '4', null, null, null, 'c63de7b2e83445be9159b600dae908b4', '2', '24');
INSERT INTO `session_detail` VALUES ('2214', '2019-07-09 15:05:23', '0', '0', null, null, '1', '42', '73', null, 'c63de7b2e83445be9159b600dae908b4', '2', '24');
INSERT INTO `session_detail` VALUES ('2215', '2019-07-09 15:51:29', '0', '0', null, null, '9', '51', '16', null, 'c63de7b2e83445be9159b600dae908b4', '2', '24');
INSERT INTO `session_detail` VALUES ('2216', '2019-07-09 15:17:54', '0', '0', null, null, '5', '92', '35', null, 'c63de7b2e83445be9159b600dae908b4', '2', '24');
INSERT INTO `session_detail` VALUES ('2217', '2019-07-09 15:06:15', '57', '73', null, null, '2', null, null, null, 'c63de7b2e83445be9159b600dae908b4', '2', '24');
INSERT INTO `session_detail` VALUES ('2218', '2019-07-09 15:45:58', '0', '0', null, null, '9', null, null, '国贸大厦', 'c63de7b2e83445be9159b600dae908b4', '2', '24');
INSERT INTO `session_detail` VALUES ('2219', '2019-07-09 15:14:24', '49', '1', null, null, '2', null, null, null, 'c63de7b2e83445be9159b600dae908b4', '2', '24');
INSERT INTO `session_detail` VALUES ('2220', '2019-07-09 2:00:53', '0', '0', null, null, '1', '99', '8', null, '969f88668fd34e2a90b9fda9f55e0170', '2', '59');
INSERT INTO `session_detail` VALUES ('2221', '2019-07-09 2:21:10', '0', '0', '22', '70', '4', null, null, null, '969f88668fd34e2a90b9fda9f55e0170', '2', '59');
INSERT INTO `session_detail` VALUES ('2222', '2019-07-09 2:52:30', '17', '46', null, null, '4', null, null, null, '969f88668fd34e2a90b9fda9f55e0170', '2', '59');
INSERT INTO `session_detail` VALUES ('2223', '2019-07-09 2:34:01', '0', '0', '70', '41', '3', null, null, null, '969f88668fd34e2a90b9fda9f55e0170', '2', '59');
INSERT INTO `session_detail` VALUES ('2224', '2019-07-09 2:10:49', '0', '0', '32', '49', '6', null, null, null, '969f88668fd34e2a90b9fda9f55e0170', '2', '59');
INSERT INTO `session_detail` VALUES ('2225', '2019-07-09 2:53:33', '0', '0', '39', '64', '7', null, null, null, '969f88668fd34e2a90b9fda9f55e0170', '2', '59');
INSERT INTO `session_detail` VALUES ('2226', '2019-07-09 2:02:55', '0', '0', null, null, '2', null, null, '太古商场', '969f88668fd34e2a90b9fda9f55e0170', '2', '59');
INSERT INTO `session_detail` VALUES ('2227', '2019-07-09 2:53:10', '0', '0', null, null, '4', '57', '22', null, '969f88668fd34e2a90b9fda9f55e0170', '2', '59');
INSERT INTO `session_detail` VALUES ('2228', '2019-07-09 2:25:47', '0', '0', '58', '71', '6', null, null, null, '969f88668fd34e2a90b9fda9f55e0170', '2', '59');
INSERT INTO `session_detail` VALUES ('2229', '2019-07-09 2:21:39', '0', '0', null, null, '1', '69', '58', null, '969f88668fd34e2a90b9fda9f55e0170', '2', '59');
INSERT INTO `session_detail` VALUES ('2230', '2019-07-09 2:48:39', '0', '0', '12', '24', '8', null, null, null, '969f88668fd34e2a90b9fda9f55e0170', '2', '59');
INSERT INTO `session_detail` VALUES ('2231', '2019-07-09 2:50:36', '0', '0', null, null, '0', null, null, '呷哺呷哺', '969f88668fd34e2a90b9fda9f55e0170', '2', '59');
INSERT INTO `session_detail` VALUES ('2232', '2019-07-09 2:24:52', '0', '0', '13', '96', '7', null, null, null, '969f88668fd34e2a90b9fda9f55e0170', '2', '59');
INSERT INTO `session_detail` VALUES ('2233', '2019-07-09 2:10:46', '0', '0', '53', '81', '9', null, null, null, '969f88668fd34e2a90b9fda9f55e0170', '2', '59');
INSERT INTO `session_detail` VALUES ('2234', '2019-07-09 22:03:39', '0', '0', null, null, '9', '69', '46', null, '7f05edc6a42e422caee4e96a7ff92686', '2', '35');
INSERT INTO `session_detail` VALUES ('2235', '2019-07-09 22:29:32', '0', '0', null, null, '9', null, null, '国贸大厦', '7f05edc6a42e422caee4e96a7ff92686', '2', '35');
INSERT INTO `session_detail` VALUES ('2236', '2019-07-09 22:26:54', '42', '95', null, null, '9', null, null, null, '7f05edc6a42e422caee4e96a7ff92686', '2', '35');
INSERT INTO `session_detail` VALUES ('2237', '2019-07-09 22:23:37', '12', '9', null, null, '6', null, null, null, '7f05edc6a42e422caee4e96a7ff92686', '2', '35');
INSERT INTO `session_detail` VALUES ('2238', '2019-07-09 22:23:24', '13', '27', null, null, '7', null, null, null, '7f05edc6a42e422caee4e96a7ff92686', '2', '35');
INSERT INTO `session_detail` VALUES ('2239', '2019-07-09 22:48:47', '0', '0', null, null, '5', '22', '43', null, '7f05edc6a42e422caee4e96a7ff92686', '2', '35');
INSERT INTO `session_detail` VALUES ('2240', '2019-07-09 22:18:47', '0', '0', null, null, '8', '99', '57', null, '7f05edc6a42e422caee4e96a7ff92686', '2', '35');
INSERT INTO `session_detail` VALUES ('2241', '2019-07-09 22:26:47', '82', '56', null, null, '5', null, null, null, '7f05edc6a42e422caee4e96a7ff92686', '2', '35');
INSERT INTO `session_detail` VALUES ('2242', '2019-07-09 22:29:56', '0', '0', null, null, '5', null, null, '重庆小面', '7f05edc6a42e422caee4e96a7ff92686', '2', '35');
INSERT INTO `session_detail` VALUES ('2243', '2019-07-09 22:03:01', '0', '0', null, null, '0', null, null, '呷哺呷哺', '7f05edc6a42e422caee4e96a7ff92686', '2', '35');
INSERT INTO `session_detail` VALUES ('2244', '2019-07-09 22:11:00', '0', '0', null, null, '4', '37', '13', null, '7f05edc6a42e422caee4e96a7ff92686', '2', '35');
INSERT INTO `session_detail` VALUES ('2245', '2019-07-09 22:33:39', '0', '0', null, null, '6', null, null, '呷哺呷哺', '7f05edc6a42e422caee4e96a7ff92686', '2', '35');
INSERT INTO `session_detail` VALUES ('2246', '2019-07-09 22:56:46', '0', '0', null, null, '6', '50', '20', null, '7f05edc6a42e422caee4e96a7ff92686', '2', '35');
INSERT INTO `session_detail` VALUES ('2247', '2019-07-09 22:16:41', '0', '0', null, null, '0', null, null, '温泉', '7f05edc6a42e422caee4e96a7ff92686', '2', '35');
INSERT INTO `session_detail` VALUES ('2248', '2019-07-09 22:56:19', '17', '64', null, null, '8', null, null, null, '7f05edc6a42e422caee4e96a7ff92686', '2', '35');
INSERT INTO `session_detail` VALUES ('2249', '2019-07-09 22:25:38', '0', '0', null, null, '4', null, null, '火锅', '7f05edc6a42e422caee4e96a7ff92686', '2', '35');
INSERT INTO `session_detail` VALUES ('2250', '2019-07-09 22:24:10', '0', '0', null, null, '6', null, null, '太古商场', '7f05edc6a42e422caee4e96a7ff92686', '2', '35');
INSERT INTO `session_detail` VALUES ('2251', '2019-07-09 22:22:44', '0', '0', null, null, '2', null, null, '太古商场', '7f05edc6a42e422caee4e96a7ff92686', '2', '35');
INSERT INTO `session_detail` VALUES ('2252', '2019-07-09 22:23:41', '0', '0', '61', '84', '7', null, null, null, '7f05edc6a42e422caee4e96a7ff92686', '2', '35');
INSERT INTO `session_detail` VALUES ('2253', '2019-07-09 22:48:16', '0', '0', null, null, '6', '63', '24', null, '7f05edc6a42e422caee4e96a7ff92686', '2', '35');
INSERT INTO `session_detail` VALUES ('2254', '2019-07-09 22:24:22', '0', '0', null, null, '4', null, null, '重庆辣子鸡', '7f05edc6a42e422caee4e96a7ff92686', '2', '35');
INSERT INTO `session_detail` VALUES ('2255', '2019-07-09 22:55:15', '67', '50', null, null, '3', null, null, null, '7f05edc6a42e422caee4e96a7ff92686', '2', '35');

-- ----------------------------
-- Table structure for session_random_extract
-- ----------------------------
DROP TABLE IF EXISTS `session_random_extract`;
CREATE TABLE `session_random_extract` (
  `id` bigint(20) NOT NULL,
  `click_category_ids` varchar(255) DEFAULT NULL,
  `search_keywords` varchar(255) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `task_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of session_random_extract
-- ----------------------------

-- ----------------------------
-- Table structure for task
-- ----------------------------
DROP TABLE IF EXISTS `task`;
CREATE TABLE `task` (
  `id` bigint(20) NOT NULL,
  `create_time` varchar(255) DEFAULT NULL,
  `finish_time` varchar(255) DEFAULT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `task_name` varchar(255) DEFAULT NULL,
  `task_param` varchar(255) DEFAULT NULL,
  `task_status` varchar(255) DEFAULT NULL,
  `task_type` varchar(255) DEFAULT NULL,
  `task_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of task
-- ----------------------------
INSERT INTO `task` VALUES ('2', null, null, null, '测试', '{\"startAge\":[\"10\"],\"endAge\":[\"50\"],\"startDate\":[\"2019-07-09\"],\"endDate\":[\"2019-07-09\"]}', null, null, '2');

-- ----------------------------
-- Table structure for top10_category
-- ----------------------------
DROP TABLE IF EXISTS `top10_category`;
CREATE TABLE `top10_category` (
  `id` bigint(20) NOT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `click_count` bigint(20) DEFAULT NULL,
  `order_count` bigint(20) DEFAULT NULL,
  `pay_count` bigint(20) DEFAULT NULL,
  `task_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of top10_category
-- ----------------------------

-- ----------------------------
-- Table structure for top10_session
-- ----------------------------
DROP TABLE IF EXISTS `top10_session`;
CREATE TABLE `top10_session` (
  `id` bigint(20) NOT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `click_count` bigint(20) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `task_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of top10_session
-- ----------------------------
