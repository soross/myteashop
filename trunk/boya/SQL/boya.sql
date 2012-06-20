/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : boya

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2012-06-20 16:23:10
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of boya_admin_menu
-- ----------------------------
INSERT INTO `boya_admin_menu` VALUES ('1', '系统用户管理', '-1', '-4', '7');
INSERT INTO `boya_admin_menu` VALUES ('2', '管理员列表', '1', 'userlist.php', '1');
INSERT INTO `boya_admin_menu` VALUES ('3', '新增管理员', '1', 'adduser.php', '2');
INSERT INTO `boya_admin_menu` VALUES ('4', '权限列表', '1', 'powerlist.php', '3');
INSERT INTO `boya_admin_menu` VALUES ('5', '新增权限', '1', 'addpower.php', '4');
INSERT INTO `boya_admin_menu` VALUES ('6', '在线报名管理', '-1', '-1', '1');
INSERT INTO `boya_admin_menu` VALUES ('7', '在线报名列表', '6', 'reguserlist.php', '6');
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

-- ----------------------------
-- Table structure for `boya_admin_user`
-- ----------------------------
DROP TABLE IF EXISTS `boya_admin_user`;
CREATE TABLE `boya_admin_user` (
  `id` int(11) NOT NULL auto_increment,
  `adminname` varchar(20) default NULL COMMENT '帐号',
  `password` varchar(50) default NULL COMMENT '密码',
  `username` varchar(20) default NULL COMMENT '真实姓名',
  `create_date` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of boya_admin_user
-- ----------------------------
INSERT INTO `boya_admin_user` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'adminaaa', '2012-06-04 20:56:38');

-- ----------------------------
-- Table structure for `boya_admin_user_menu`
-- ----------------------------
DROP TABLE IF EXISTS `boya_admin_user_menu`;
CREATE TABLE `boya_admin_user_menu` (
  `id` int(11) NOT NULL auto_increment,
  `userid` int(11) default NULL,
  `menuid` int(11) unsigned zerofill default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of boya_admin_user_menu
-- ----------------------------
INSERT INTO `boya_admin_user_menu` VALUES ('123', '1', '00000000006');
INSERT INTO `boya_admin_user_menu` VALUES ('124', '1', '00000000007');
INSERT INTO `boya_admin_user_menu` VALUES ('125', '1', '00000000008');
INSERT INTO `boya_admin_user_menu` VALUES ('126', '1', '00000000009');
INSERT INTO `boya_admin_user_menu` VALUES ('127', '1', '00000000010');
INSERT INTO `boya_admin_user_menu` VALUES ('128', '1', '00000000011');
INSERT INTO `boya_admin_user_menu` VALUES ('129', '1', '00000000012');
INSERT INTO `boya_admin_user_menu` VALUES ('130', '1', '00000000013');
INSERT INTO `boya_admin_user_menu` VALUES ('131', '1', '00000000014');
INSERT INTO `boya_admin_user_menu` VALUES ('132', '1', '00000000015');
INSERT INTO `boya_admin_user_menu` VALUES ('133', '1', '00000000016');
INSERT INTO `boya_admin_user_menu` VALUES ('134', '1', '00000000017');
INSERT INTO `boya_admin_user_menu` VALUES ('135', '1', '00000000018');
INSERT INTO `boya_admin_user_menu` VALUES ('136', '1', '00000000019');
INSERT INTO `boya_admin_user_menu` VALUES ('137', '1', '00000000020');
INSERT INTO `boya_admin_user_menu` VALUES ('138', '1', '00000000021');
INSERT INTO `boya_admin_user_menu` VALUES ('139', '1', '00000000022');
INSERT INTO `boya_admin_user_menu` VALUES ('140', '1', '00000000001');
INSERT INTO `boya_admin_user_menu` VALUES ('141', '1', '00000000002');
INSERT INTO `boya_admin_user_menu` VALUES ('142', '1', '00000000003');
INSERT INTO `boya_admin_user_menu` VALUES ('143', '1', '00000000004');
INSERT INTO `boya_admin_user_menu` VALUES ('144', '1', '00000000005');

-- ----------------------------
-- Table structure for `boya_config`
-- ----------------------------
DROP TABLE IF EXISTS `boya_config`;
CREATE TABLE `boya_config` (
  `id` int(11) NOT NULL auto_increment,
  `comm_type` varchar(20) default NULL,
  `comm_code` varchar(255) default NULL,
  `comm_value` longtext,
  `comm_flag` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of boya_config
-- ----------------------------
INSERT INTO `boya_config` VALUES ('1', 'Logo', 'images/logo.jpg', null, 'logo');
INSERT INTO `boya_config` VALUES ('2', 'Slogan', '提升个人职业能力，人生因教育而博雅', null, '口号');
INSERT INTO `boya_config` VALUES ('3', 'Goal', '立志成为福建第一培训机构', null, '目标');
INSERT INTO `boya_config` VALUES ('4', 'SEO_Title', '福州博雅教育', null, 'Title');
INSERT INTO `boya_config` VALUES ('5', 'SEO_Keyword', '福州博雅教育', null, 'Keyword');
INSERT INTO `boya_config` VALUES ('6', 'SEO_Desc', '福州博雅教育', null, 'Desc');
INSERT INTO `boya_config` VALUES ('7', 'Im_Account', '12345678', null, '点击我在线咨询8');
INSERT INTO `boya_config` VALUES ('8', 'Im_Account', '1234567', null, '点击我在线咨询');
INSERT INTO `boya_config` VALUES ('9', 'Im_Account', '1234567', null, '点击我在线咨询');
INSERT INTO `boya_config` VALUES ('10', 'Im_Account', '1234567', null, '点击我在线咨询');
INSERT INTO `boya_config` VALUES ('14', 'ContactUs', null, '<p>\r\n	电话：0591-87612118 <br />\r\n传真：0591-87536477 <br />\r\nE-mail：<a href=\"mailto:by@fzby.com\">by@fzby.com</a> <br />\r\n地址：福州市六一北路92号实发大厦十楼 <br />\r\n邮编：350000 <br />\r\n网址：<a href=\"http://www.fzboya.com\">http://www.fzboya.com</a> \r\n</p>', null);
INSERT INTO `boya_config` VALUES ('15', 'Buttom', null, '<p align=\"center\">地址：福州市六一北路92号实发大厦十楼&nbsp;&nbsp;邮编：3500013&nbsp;&nbsp;传真：0591-87509602</p>\r\n			<p align=\"center\">版权所有&nbsp;&copy;&nbsp;博雅教育办公电话：0591-87612118 87615166</p>\r\n			<p align=\"center\"><a href=\"http://www.miibeian.gov.cn/\" target=\"_blank\">闽ICP备05020866号</a></p>', null);
INSERT INTO `boya_config` VALUES ('16', 'Contact', null, '<p>\r\n	电话：0591-87612118\r\n</p>\r\n<p>\r\n	传真：0591-87536477\r\n</p>\r\n<p>\r\n	E-mail：<a href=\"mailto:by@fzby.com\">by@fzby.com</a>\r\n</p>\r\n<p>\r\n	地址：福州市六一北路92号实发大厦十楼\r\n</p>\r\n<p>\r\n	邮编：350000\r\n</p>\r\n<p>\r\n	网址：<a href=\"http://www.fzboya.com\">http://www.fzboya.com\r\n</p>\r\n<p>\r\n	<img alt=\"\" src=\"/boya/js/kindeditor/attached/image/20120619/20120619134710_48718.jpg\" /> \r\n</p>\r\n</a>', null);
INSERT INTO `boya_config` VALUES ('17', 'Intro', null, 'boya', null);
INSERT INTO `boya_config` VALUES ('19', 'AboutBoya', null, '<p>\r\n	博雅的办学理念是以实用为主，兼顾理论基础培养，学以致用，以提高学员的就业竞争力为己任，为社会培养有用人材！\r\n</p>\r\n<p>\r\n	当今世界，只有不断充实自己，才能在激烈的竞争中长立于不败之地，这已经成为大家的共识。\r\n</p>\r\n<p>\r\n	博雅的办学目标是培育适应社会发展需要的实用型人才，本着以学生为主体，一切从社会实际需求出发，以学员真正学到能派上用场的实用技能为最终目的。\r\n</p>\r\n<p>\r\n	博雅认为：人才善于解决问题。博雅致力于培养能解决问题的人，我们以此为出发点，通过有丰富社会经验老师的教授、实际的案例来培训学员具有这种解决问题的能力。在培训过程中，我们形成了一种共识——“深入实际，学以致用——“深入实际”要求博雅的讲师能真正地深入到社会需求里面去，我们的学员能真正地掌握有用技能；“学以致用”指导我们在了解市场所需人才类型后，安排出最适合的课程设计，以使学员们的所学可以得到用人单位的赞许与欢迎。\r\n</p>\r\n<p>\r\n	成功的教育，亦在于培养受教育者以积极向上的态度，面对人生的前程，从容自信地应对责任与挑战，实现自已的人生理想。\r\n</p>', null);
INSERT INTO `boya_config` VALUES ('20', 'Map', 'images/20120620054142558.jpg', null, null);
INSERT INTO `boya_config` VALUES ('22', 'AD_Images', 'images/banner04.jpg', null, null);
INSERT INTO `boya_config` VALUES ('23', 'AD_Images', 'images/banner03.jpg', null, null);
INSERT INTO `boya_config` VALUES ('24', 'AD_Images', 'images/banner01.jpg', null, null);

-- ----------------------------
-- Table structure for `boya_course`
-- ----------------------------
DROP TABLE IF EXISTS `boya_course`;
CREATE TABLE `boya_course` (
  `id` int(11) NOT NULL auto_increment,
  `type_id` int(11) default NULL,
  `class_name` varchar(50) default NULL COMMENT '课程类别\\学历类别',
  `open_time` varchar(20) default NULL COMMENT '开课时间',
  `course_name` varchar(50) default NULL COMMENT '开始课程\\专业',
  `class_hour` varchar(20) default NULL COMMENT '课时\\学制',
  `fee` double(10,2) default NULL COMMENT '课程费用',
  `path` varchar(50) default NULL COMMENT '招生简直word路径',
  `content_type` int(2) default '2' COMMENT '2内容 1word文件',
  `content` longtext COMMENT '招生简章',
  `isselect` int(1) default '1' COMMENT '是否可报名：1报名可选0不可选',
  `create_date` datetime default NULL,
  `open_level` varchar(20) default NULL COMMENT '开设层次',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of boya_course
-- ----------------------------
INSERT INTO `boya_course` VALUES ('1', '5', '人力资源', '2012-06-11', '档案管理', '10', '300.22', null, '2', 'sd', '0', '2012-06-01 12:33:10', null);
INSERT INTO `boya_course` VALUES ('2', '6', '开发教育', '本科', '计科', '业余三年', '8000.00', null, '2', 'dd', '1', null, '');
INSERT INTO `boya_course` VALUES ('3', '5', '2222222', '2012-07-04', '22222', '22222', '2222.00', '', '2', '22222222sss', '1', '2012-06-06 13:14:55', null);
INSERT INTO `boya_course` VALUES ('6', '7', 'fdsafds', '2012-06-05', 'safds', 'fads', '0.00', 'file/20120606070916774.txt', '1', '滚动条样式表.txt', '-1', '2012-06-06 15:09:16', null);
INSERT INTO `boya_course` VALUES ('7', '7', 'fdsafds', '2012-06-13', 'safds', 'fads', '0.00', 'file/20120606070916774.txt', '1', '滚动条样式表.txt', '1', '2012-06-06 15:24:44', null);

-- ----------------------------
-- Table structure for `boya_news`
-- ----------------------------
DROP TABLE IF EXISTS `boya_news`;
CREATE TABLE `boya_news` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(50) default NULL,
  `path` varchar(50) default NULL,
  `content` longtext,
  `create_date` datetime default NULL,
  `url` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of boya_news
-- ----------------------------
INSERT INTO `boya_news` VALUES ('1', '答复', 'images/picture/20120620073006151.jpg', '答复', '2012-06-20 14:54:01', 'info.php?id=6');
INSERT INTO `boya_news` VALUES ('2', 'dsafdsfdafdf发达省份', 'images/picture/20120620073022184.jpg', 'dsafdsf发的说法大赛', '2012-06-20 14:54:04', 'info.php?id=6');
INSERT INTO `boya_news` VALUES ('3', 'dasdfds', 'images/picture/show03.jpg', null, '2012-06-20 14:54:06', 'info.php?id=6');
INSERT INTO `boya_news` VALUES ('4', 'dasfdsfds', 'images/picture/show04.jpg', null, '2012-06-20 14:54:08', 'info.php?id=6');
INSERT INTO `boya_news` VALUES ('5', 'dsafdsf', 'images/picture/show05.jpg', null, '2012-06-20 14:54:10', 'info.php?id=6');
INSERT INTO `boya_news` VALUES ('8', 'fadfdsf', 'images/picture/20120620071132593.jpg', 'fadsfdsf', '2012-06-20 15:11:32', 'info.php?id=8');

-- ----------------------------
-- Table structure for `boya_reg_user`
-- ----------------------------
DROP TABLE IF EXISTS `boya_reg_user`;
CREATE TABLE `boya_reg_user` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(20) NOT NULL COMMENT '姓名',
  `gender` varchar(1) NOT NULL default '' COMMENT '性别：男，女',
  `college` varchar(10) default NULL COMMENT '学历：1初中2高中3大专4本科5研究生6博士',
  `work_unit` varchar(50) default NULL COMMENT '工作单位',
  `mobile` varchar(20) NOT NULL COMMENT '手机号',
  `telephone` varchar(20) default NULL COMMENT '电话',
  `qq` varchar(15) default NULL,
  `email` varchar(30) default NULL COMMENT '课程-关联课程表',
  `course` int(11) NOT NULL,
  `cnt` int(11) NOT NULL,
  `create_date` datetime default NULL,
  `money` double(10,2) default '0.00',
  `pay_date` datetime default NULL,
  `input_user` int(11) default NULL,
  `remark` longtext COMMENT '备注',
  `class_no` varchar(20) default NULL COMMENT '班级',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of boya_reg_user
-- ----------------------------
INSERT INTO `boya_reg_user` VALUES ('1', 'abc', '男', '大专', '博雅', '13456789023', '67890543', '23456789', 'abc@abc.abc', '1', '2', '2012-06-01 12:20:12', '0.00', null, null, null, null);
INSERT INTO `boya_reg_user` VALUES ('2', 'efg', '女', '本科', '博雅', '13456789023', '67890543', '23456789', 'abc@abc.abc', '2', '1', '2012-06-01 12:20:42', '200.22', '2012-06-01 12:20:50', '1', null, null);
INSERT INTO `boya_reg_user` VALUES ('3', 'sdfsafd', '女', '本科', '博雅', '11111111111', '67890543', '23456789', 'abc@abc.abc', '2', '11', '2012-06-20 15:50:27', '4234.00', '2012-06-20 15:41:20', '1', 'dfadsf', null);
INSERT INTO `boya_reg_user` VALUES ('4', 'fdasf', '男', '本科', '博雅', '13456789023', '67890543', '23456789', 'abc@abc.abc', '3', '2', '2012-06-20 15:50:29', '0.00', null, null, '', null);
INSERT INTO `boya_reg_user` VALUES ('5', 'dasfds', '男', '本科', '博雅', '13456789023', '67890543', '23456789', 'abc@abc.abc', '1', '2', '2012-06-20 15:50:31', '0.00', null, null, '', null);

-- ----------------------------
-- Table structure for `boya_type`
-- ----------------------------
DROP TABLE IF EXISTS `boya_type`;
CREATE TABLE `boya_type` (
  `id` int(11) NOT NULL auto_increment,
  `type_name` varchar(30) default NULL COMMENT '名称',
  `pid` int(11) default '-1',
  `url` varchar(50) default NULL,
  `seq` int(2) default '99' COMMENT '排序',
  `indexshow` int(1) default '0' COMMENT '0不显示1显示  是否首页tab页面显示',
  `index_url` varchar(50) default NULL COMMENT '首页课程的url',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of boya_type
-- ----------------------------
INSERT INTO `boya_type` VALUES ('1', '首页', '-1', 'index.php', '1', '0', null);
INSERT INTO `boya_type` VALUES ('2', '培训中心', '-1', 'pxzx.php', '3', '0', null);
INSERT INTO `boya_type` VALUES ('3', '网上报名', '-1', 'wsbm.php', '4', '0', null);
INSERT INTO `boya_type` VALUES ('4', '联系我们', '-1', 'lxwm.php', '5', '0', null);
INSERT INTO `boya_type` VALUES ('5', '能力提升', '2', 'pxzx.php?typeid=5', '1', '1', 'index.php?typeid=5');
INSERT INTO `boya_type` VALUES ('6', '职业认证', '2', 'pxzx.php?typeid=6', '2', '1', 'index.php?typeid=6');
INSERT INTO `boya_type` VALUES ('7', '国学讲堂', '2', 'pxzx.php?typeid=7', '3', '0', 'index.php?typeid=7');
INSERT INTO `boya_type` VALUES ('8', '学历教育', '2', 'pxzx.php?typeid=8', '4', '1', 'index.php?typeid=8');
INSERT INTO `boya_type` VALUES ('9', '免费培训', '2', 'pxzx.php?typeid=9', '5', '0', 'index.php?typeid=9');
INSERT INTO `boya_type` VALUES ('10', '在线报名', '3', 'wsbm.php?typeid=10', '1', '0', null);
INSERT INTO `boya_type` VALUES ('11', '现场报名', '3', 'xcbm.php?typeid=11', '2', '0', null);
INSERT INTO `boya_type` VALUES ('12', '博雅简介', '14', 'jj.php', '1', '0', null);
INSERT INTO `boya_type` VALUES ('13', '图片展示', '14', 'tpzs.php', '2', '0', null);
INSERT INTO `boya_type` VALUES ('14', '关于我们', '-1', 'jj.php', '2', '0', null);
