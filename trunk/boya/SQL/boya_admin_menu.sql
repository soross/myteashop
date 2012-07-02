/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : boya

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2012-07-02 23:07:28
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `boya_admin_menu`
-- ----------------------------
DROP TABLE IF EXISTS `boya_admin_menu`;
CREATE TABLE `boya_admin_menu` (
  `id` int(11) NOT NULL auto_increment,
  `menuname` varchar(30) default NULL,
  `pid` int(11) default NULL,
  `url` varchar(50) default NULL,
  `seq` int(2) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of boya_admin_menu
-- ----------------------------
INSERT INTO `boya_admin_menu` VALUES ('1', '系统用户管理', '-1', '-4', '7');
INSERT INTO `boya_admin_menu` VALUES ('2', '管理员列表', '1', 'userlist.php', '1');
INSERT INTO `boya_admin_menu` VALUES ('3', '新增管理员', '1', 'adduser.php', '2');
INSERT INTO `boya_admin_menu` VALUES ('4', '权限列表', '1', 'powerlist.php', '3');
INSERT INTO `boya_admin_menu` VALUES ('5', '新增权限', '1', 'addpower.php', '4');
INSERT INTO `boya_admin_menu` VALUES ('6', '在线报名管理', '-1', '-1', '1');
INSERT INTO `boya_admin_menu` VALUES ('7', '在线报名列表', '6', 'reguserlist.php', '1');
INSERT INTO `boya_admin_menu` VALUES ('8', '课程管理', '-1', '-2', '2');
INSERT INTO `boya_admin_menu` VALUES ('9', '课程列表', '8', 'classlist.php', '1');
INSERT INTO `boya_admin_menu` VALUES ('10', '新增课程', '8', 'addclass.php', '2');
INSERT INTO `boya_admin_menu` VALUES ('11', '系统配置', '-1', '-3', '3');
INSERT INTO `boya_admin_menu` VALUES ('12', '导航管理', '11', 'menu.php', '1');
INSERT INTO `boya_admin_menu` VALUES ('13', '在线客服配置', '11', 'service.php', '2');
INSERT INTO `boya_admin_menu` VALUES ('14', 'SEO配置', '11', 'seo.php', '3');
INSERT INTO `boya_admin_menu` VALUES ('15', 'AD配置', '11', 'ad.php', '3');
INSERT INTO `boya_admin_menu` VALUES ('16', '联系信息配置', '11', 'contactus.php', '5');
INSERT INTO `boya_admin_menu` VALUES ('17', 'Copy信息配置', '11', 'copy.php', '6');
INSERT INTO `boya_admin_menu` VALUES ('18', '博雅简介配置', '11', 'aboutme.php', '7');
INSERT INTO `boya_admin_menu` VALUES ('19', '地图配置', '11', 'map.php', '8');
INSERT INTO `boya_admin_menu` VALUES ('20', '图片管理', '-1', '-5', '3');
INSERT INTO `boya_admin_menu` VALUES ('21', '图片列表', '20', 'piclist.php', '1');
INSERT INTO `boya_admin_menu` VALUES ('22', '新增图片', '20', 'addpic.php', '2');
INSERT INTO `boya_admin_menu` VALUES ('23', '查询导出班级', '6', 'queryclass.php', '2');

-- ----------------------------
-- Table structure for `boya_admin_user_menu`
-- ----------------------------
DROP TABLE IF EXISTS `boya_admin_user_menu`;
CREATE TABLE `boya_admin_user_menu` (
  `id` int(11) NOT NULL auto_increment,
  `userid` int(11) default NULL,
  `menuid` int(11) unsigned zerofill default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of boya_admin_user_menu
-- ----------------------------
INSERT INTO `boya_admin_user_menu` VALUES ('1', '1', '00000000006');
INSERT INTO `boya_admin_user_menu` VALUES ('2', '1', '00000000007');
INSERT INTO `boya_admin_user_menu` VALUES ('3', '1', '00000000023');
INSERT INTO `boya_admin_user_menu` VALUES ('4', '1', '00000000008');
INSERT INTO `boya_admin_user_menu` VALUES ('5', '1', '00000000009');
INSERT INTO `boya_admin_user_menu` VALUES ('6', '1', '00000000010');
INSERT INTO `boya_admin_user_menu` VALUES ('7', '1', '00000000011');
INSERT INTO `boya_admin_user_menu` VALUES ('8', '1', '00000000012');
INSERT INTO `boya_admin_user_menu` VALUES ('9', '1', '00000000013');
INSERT INTO `boya_admin_user_menu` VALUES ('10', '1', '00000000014');
INSERT INTO `boya_admin_user_menu` VALUES ('11', '1', '00000000015');
INSERT INTO `boya_admin_user_menu` VALUES ('12', '1', '00000000016');
INSERT INTO `boya_admin_user_menu` VALUES ('13', '1', '00000000017');
INSERT INTO `boya_admin_user_menu` VALUES ('14', '1', '00000000018');
INSERT INTO `boya_admin_user_menu` VALUES ('15', '1', '00000000019');
INSERT INTO `boya_admin_user_menu` VALUES ('16', '1', '00000000020');
INSERT INTO `boya_admin_user_menu` VALUES ('17', '1', '00000000021');
INSERT INTO `boya_admin_user_menu` VALUES ('18', '1', '00000000022');
INSERT INTO `boya_admin_user_menu` VALUES ('19', '1', '00000000001');
INSERT INTO `boya_admin_user_menu` VALUES ('20', '1', '00000000002');
INSERT INTO `boya_admin_user_menu` VALUES ('21', '1', '00000000003');
INSERT INTO `boya_admin_user_menu` VALUES ('22', '1', '00000000004');
INSERT INTO `boya_admin_user_menu` VALUES ('23', '1', '00000000005');
