/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : msg

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2012-10-31 15:06:30
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `jobprice`
-- ----------------------------
DROP TABLE IF EXISTS `jobprice`;
CREATE TABLE `jobprice` (
  `id` int(11) NOT NULL auto_increment,
  `jobid` int(11) default NULL COMMENT '工种id',
  `prodid` int(11) default NULL COMMENT '产品id',
  `jobprice` double(12,3) default NULL COMMENT '工种价格',
  `create_date` datetime default NULL,
  `edit_date` datetime default NULL,
  `edit_user` varchar(100) default NULL,
  `create_user` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of jobprice
-- ----------------------------
INSERT INTO `jobprice` VALUES ('1', '1', '1', '200.000', '2012-04-15 15:01:50', null, null, null);
INSERT INTO `jobprice` VALUES ('3', '2', '1', '100.000', '2012-04-15 15:01:54', null, null, null);
INSERT INTO `jobprice` VALUES ('7', '3', '1', '4324.000', null, null, null, null);
INSERT INTO `jobprice` VALUES ('8', '4', '1', '3423.000', null, null, null, null);
INSERT INTO `jobprice` VALUES ('9', '7', '1', '332.000', null, null, null, null);
INSERT INTO `jobprice` VALUES ('20', '2', '5', '44.000', null, null, null, null);
INSERT INTO `jobprice` VALUES ('37', '1', '3', '22.000', '2012-06-25 12:57:45', null, null, null);
INSERT INTO `jobprice` VALUES ('38', '2', '3', '22.000', '2012-06-25 12:57:45', null, null, null);
INSERT INTO `jobprice` VALUES ('39', '6', '3', '22.000', '2012-06-25 12:57:45', null, null, null);
INSERT INTO `jobprice` VALUES ('48', '1', '7', '22.000', '2012-06-25 12:58:04', null, null, null);
INSERT INTO `jobprice` VALUES ('49', '4', '7', '22.000', '2012-06-25 12:58:04', null, null, null);
INSERT INTO `jobprice` VALUES ('50', '6', '7', '22.000', '2012-06-25 12:58:04', null, null, null);
INSERT INTO `jobprice` VALUES ('51', '13', '7', '0.000', '2012-06-25 12:58:04', null, null, null);
INSERT INTO `jobprice` VALUES ('52', '1', '8', '222.000', '2012-06-25 12:58:19', null, null, null);
INSERT INTO `jobprice` VALUES ('53', '2', '8', '222.000', '2012-06-25 12:58:19', null, null, null);
INSERT INTO `jobprice` VALUES ('54', '1', '6', '222.000', '2012-06-25 12:58:35', null, null, null);
INSERT INTO `jobprice` VALUES ('55', '2', '6', '222.000', '2012-06-25 12:58:35', null, null, null);
INSERT INTO `jobprice` VALUES ('56', '3', '6', '222.000', '2012-06-25 12:58:35', null, null, null);
INSERT INTO `jobprice` VALUES ('57', '1', '10', '22.000', '2012-06-25 14:42:26', null, null, null);
INSERT INTO `jobprice` VALUES ('58', '6', '10', '222.000', '2012-06-25 14:42:26', null, null, null);
INSERT INTO `jobprice` VALUES ('59', '1', '11', '0.000', '2012-06-25 14:49:09', null, null, null);
INSERT INTO `jobprice` VALUES ('60', '1', '12', '22.000', '2012-06-25 14:50:23', null, null, null);
INSERT INTO `jobprice` VALUES ('61', '6', '12', '22.000', '2012-06-25 14:50:23', null, null, null);
INSERT INTO `jobprice` VALUES ('62', '1', '13', '0.000', '2012-06-25 14:51:21', null, null, null);
INSERT INTO `jobprice` VALUES ('63', '6', '13', '0.000', '2012-06-25 14:51:21', null, null, null);
INSERT INTO `jobprice` VALUES ('64', '1', '14', '2323.000', '2012-06-25 14:53:20', null, null, null);
INSERT INTO `jobprice` VALUES ('65', '6', '14', '0.000', '2012-06-25 14:53:20', null, null, null);
INSERT INTO `jobprice` VALUES ('66', '1', '15', '22.000', '2012-06-25 14:59:59', null, null, null);
INSERT INTO `jobprice` VALUES ('67', '6', '15', '22.000', '2012-06-25 14:59:59', null, null, null);
INSERT INTO `jobprice` VALUES ('83', '1', '16', '22.000', '2012-06-25 15:06:14', null, null, null);
INSERT INTO `jobprice` VALUES ('84', '6', '16', '22.000', '2012-06-25 15:06:14', null, null, null);
INSERT INTO `jobprice` VALUES ('85', '1', '9', '22.000', '2012-06-25 15:12:30', null, null, null);
INSERT INTO `jobprice` VALUES ('86', '2', '9', '222.000', '2012-06-25 15:12:30', null, null, null);
INSERT INTO `jobprice` VALUES ('87', '6', '9', '22.000', '2012-06-25 15:12:30', null, null, null);
INSERT INTO `jobprice` VALUES ('88', '10', '9', '22.000', '2012-06-25 15:12:30', null, null, null);
INSERT INTO `jobprice` VALUES ('89', '15', '9', '22.000', '2012-06-25 15:12:30', null, null, null);
INSERT INTO `jobprice` VALUES ('90', '1', '17', '234.000', '2012-06-25 16:08:08', null, null, null);
INSERT INTO `jobprice` VALUES ('91', '1', '18', '2.200', '2012-06-25 16:09:17', null, null, null);
INSERT INTO `jobprice` VALUES ('92', '1', '19', '33.330', '2012-10-31 11:37:24', null, null, null);
INSERT INTO `jobprice` VALUES ('93', '1', '20', '4324.000', '2012-10-31 13:10:11', null, null, null);
INSERT INTO `jobprice` VALUES ('94', '11', '20', '23432.000', '2012-10-31 13:10:11', null, null, null);
INSERT INTO `jobprice` VALUES ('95', '1', '21', '22.000', '2012-10-31 14:59:09', null, null, null);
INSERT INTO `jobprice` VALUES ('96', '2', '21', '22.000', '2012-10-31 14:59:09', null, null, null);
INSERT INTO `jobprice` VALUES ('97', '3', '21', '22.000', '2012-10-31 14:59:09', null, null, null);
INSERT INTO `jobprice` VALUES ('98', '1', '22', '2.220', '2012-10-31 15:03:35', null, null, null);
