/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : msg

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2012-05-06 22:44:06
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `cc`
-- ----------------------------
DROP TABLE IF EXISTS `cc`;
CREATE TABLE `cc` (
  `id` int(11) NOT NULL auto_increment,
  `orderid` int(11) default NULL COMMENT '订单id',
  `cctime` datetime default NULL COMMENT '出仓时间',
  `staffid` int(11) default NULL,
  `yhy` varchar(100) default NULL COMMENT '验货员',
  `create_date` datetime default NULL,
  `create_user` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of cc
-- ----------------------------
INSERT INTO `cc` VALUES ('1', '11', '2012-04-29 17:21:55', '11', null, '2012-04-30 17:21:40', null);

-- ----------------------------
-- Table structure for `cl`
-- ----------------------------
DROP TABLE IF EXISTS `cl`;
CREATE TABLE `cl` (
  `id` int(11) NOT NULL auto_increment,
  `clid` varchar(50) default NULL,
  `clname` varchar(100) default NULL COMMENT '材料名称',
  `clgg` varchar(100) default NULL COMMENT '材料规格',
  `unit` varchar(20) default NULL COMMENT '单位',
  `price` double(10,2) default NULL COMMENT '单价',
  `create_date` datetime default NULL COMMENT '创建时间',
  `edit_date` datetime default NULL COMMENT '编辑时间',
  `edit_user` varchar(100) default NULL,
  `create_user` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of cl
-- ----------------------------
INSERT INTO `cl` VALUES ('1', 'JP0147', '圆套', '1X0.8CM', '个', '34.00', '2012-04-15 13:12:04', null, null, null);
INSERT INTO `cl` VALUES ('2', 'JP0482', '亚克力底座', '1.8CM', '片', '324.00', '2012-04-15 13:12:06', null, null, null);
INSERT INTO `cl` VALUES ('3', 'Tx008', '铁线', '8#3.75M', 'KG', '32324.00', '2012-04-15 13:12:09', null, null, null);
INSERT INTO `cl` VALUES ('5', 'TTT', 'bb', 'bb', 'kg', '43.00', '2012-04-15 13:42:49', null, null, null);

-- ----------------------------
-- Table structure for `customer`
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL auto_increment,
  `custid` varchar(50) default NULL,
  `custname` varchar(100) default NULL,
  `linkman` varchar(100) default NULL,
  `tell` varchar(20) default NULL,
  `yhy` varchar(100) default NULL,
  `yhytell` varchar(20) default NULL,
  `bz` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `create_user` varchar(100) default NULL,
  `edit_date` datetime default NULL,
  `edit_user` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('2', 'ww', 'fdasf', 'dasfds', '21', '132', '12', 'safdsf', null, null, null, null);
INSERT INTO `customer` VALUES ('3', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', null, null, null, null);
INSERT INTO `customer` VALUES ('4', 'as', 'asfd', '', 'fdsf', 'dsaf', 'dsfsdaf', 'dsfdsafd', null, null, null, null);
INSERT INTO `customer` VALUES ('6', 'dsafds', 'fdsa', 'fds', 'fdsads', 'fdsaf', 'adsf', 'dsfdsaf', null, null, null, null);

-- ----------------------------
-- Table structure for `gw`
-- ----------------------------
DROP TABLE IF EXISTS `gw`;
CREATE TABLE `gw` (
  `gwid` int(11) NOT NULL auto_increment,
  `gwname` varchar(50) default NULL COMMENT '岗位名称',
  PRIMARY KEY  (`gwid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of gw
-- ----------------------------
INSERT INTO `gw` VALUES ('1', '2222');
INSERT INTO `gw` VALUES ('2', '3333');

-- ----------------------------
-- Table structure for `job`
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job` (
  `id` int(11) NOT NULL auto_increment,
  `jobname` varchar(100) default NULL COMMENT '工种名称',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of job
-- ----------------------------
INSERT INTO `job` VALUES ('1', '手砂');
INSERT INTO `job` VALUES ('2', '定型');
INSERT INTO `job` VALUES ('3', '杂工');
INSERT INTO `job` VALUES ('4', 'test');
INSERT INTO `job` VALUES ('6', 'dsaf');
INSERT INTO `job` VALUES ('7', 'sfads');
INSERT INTO `job` VALUES ('8', 'dsfads');
INSERT INTO `job` VALUES ('9', 'fds');
INSERT INTO `job` VALUES ('10', 'fds');
INSERT INTO `job` VALUES ('11', 'fads');
INSERT INTO `job` VALUES ('12', 'fads');
INSERT INTO `job` VALUES ('13', 'afds');
INSERT INTO `job` VALUES ('14', 'f');
INSERT INTO `job` VALUES ('15', 'sda');
INSERT INTO `job` VALUES ('16', 'fds');

-- ----------------------------
-- Table structure for `jobprice`
-- ----------------------------
DROP TABLE IF EXISTS `jobprice`;
CREATE TABLE `jobprice` (
  `id` int(11) NOT NULL auto_increment,
  `jobid` int(11) default NULL COMMENT '工种id',
  `prodid` int(11) default NULL COMMENT '产品id',
  `jobprice` double(12,2) default NULL COMMENT '工种价格',
  `create_date` datetime default NULL,
  `edit_date` datetime default NULL,
  `edit_user` varchar(100) default NULL,
  `create_user` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of jobprice
-- ----------------------------
INSERT INTO `jobprice` VALUES ('1', '1', '1', '200.00', '2012-04-15 15:01:50', null, null, null);
INSERT INTO `jobprice` VALUES ('3', '2', '1', '100.00', '2012-04-15 15:01:54', null, null, null);
INSERT INTO `jobprice` VALUES ('7', '3', '1', '4324.00', null, null, null, null);
INSERT INTO `jobprice` VALUES ('8', '4', '1', '3423.00', null, null, null, null);
INSERT INTO `jobprice` VALUES ('9', '7', '1', '332.00', null, null, null, null);
INSERT INTO `jobprice` VALUES ('11', '2', '3', '22.00', null, null, null, null);
INSERT INTO `jobprice` VALUES ('20', '2', '5', '44.00', null, null, null, null);

-- ----------------------------
-- Table structure for `orderitem`
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem` (
  `id` int(11) NOT NULL auto_increment,
  `orderid` varchar(50) default NULL COMMENT '订单编号',
  `pddate` datetime default NULL COMMENT '排单生成时间',
  `jcdate` datetime default NULL COMMENT '进仓时间',
  `ccdate` datetime default NULL COMMENT '出仓时间',
  `custid` int(11) default NULL COMMENT '客户id',
  `orderprice` double(12,2) default NULL COMMENT '订单价格',
  `create_date` datetime default NULL,
  `create_user` varchar(100) default NULL,
  `edit_date` datetime default NULL,
  `edit_user` varchar(100) default NULL,
  `edit_reason` varchar(255) default NULL,
  `staffid` int(11) default NULL COMMENT '操作出仓的员工',
  `yhy` varchar(30) default NULL COMMENT '验货员',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of orderitem
-- ----------------------------
INSERT INTO `orderitem` VALUES ('4', '20120416043825140045', '2012-04-17 09:17:47', '2012-04-19 15:31:34', null, '3', '33.00', '2012-04-16 12:38:25', null, null, null, null, '0', '');
INSERT INTO `orderitem` VALUES ('7', '20120418074421761514', null, null, null, '6', '11500.00', '2012-04-18 15:44:21', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `orderlist`
-- ----------------------------
DROP TABLE IF EXISTS `orderlist`;
CREATE TABLE `orderlist` (
  `id` int(11) NOT NULL auto_increment,
  `orderid` int(11) default NULL,
  `prodid` varchar(50) default NULL,
  `cnt` int(11) default NULL COMMENT '订单数量',
  `itemprice` double(12,2) default NULL COMMENT '价格',
  `isfinish` varchar(10) default '0' COMMENT '是否完成0未完成 1完成',
  `finish_date` datetime default NULL COMMENT '完成时间',
  `bz` varchar(255) default NULL,
  `over_date` datetime default NULL COMMENT '在这个时间前完成',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of orderlist
-- ----------------------------
INSERT INTO `orderlist` VALUES ('15', '4', '1', '22', '0.00', '1', '2012-04-19 15:31:21', null, null);
INSERT INTO `orderlist` VALUES ('16', '4', '3', '22', '0.00', '1', '2012-04-19 15:31:25', null, null);
INSERT INTO `orderlist` VALUES ('25', '7', '5', '20', '300.00', '0', null, null, null);
INSERT INTO `orderlist` VALUES ('26', '7', '3', '25', '100.00', '0', null, null, null);
INSERT INTO `orderlist` VALUES ('27', '7', '1', '15', '200.00', '0', null, null, null);

-- ----------------------------
-- Table structure for `pd`
-- ----------------------------
DROP TABLE IF EXISTS `pd`;
CREATE TABLE `pd` (
  `id` int(11) NOT NULL auto_increment,
  `jobpriceid` int(11) default NULL,
  `amount` int(11) default NULL,
  `istime` datetime default NULL,
  `isfinish` varchar(10) default NULL COMMENT '是否完成',
  `create_date` datetime default NULL,
  `create_user` varchar(100) default NULL,
  `edit_date` datetime default NULL,
  `edit_user` varchar(100) default NULL,
  `finishamount` int(11) default NULL COMMENT '完成数量',
  `reason` varchar(255) default NULL COMMENT '原因',
  `orderid` int(11) default NULL COMMENT '订单id',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of pd
-- ----------------------------

-- ----------------------------
-- Table structure for `prod`
-- ----------------------------
DROP TABLE IF EXISTS `prod`;
CREATE TABLE `prod` (
  `id` int(11) NOT NULL auto_increment,
  `prodid` varchar(50) collate utf8_unicode_ci default NULL,
  `picname` varchar(50) collate utf8_unicode_ci default NULL,
  `picpath` varchar(150) collate utf8_unicode_ci default NULL,
  `picsize` varchar(12) collate utf8_unicode_ci default NULL,
  `bz` varchar(150) collate utf8_unicode_ci default NULL,
  `create_date` datetime default NULL,
  `edit_user` varchar(100) collate utf8_unicode_ci default NULL,
  `edit_date` datetime default NULL,
  `create_user` varchar(100) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of prod
-- ----------------------------
INSERT INTO `prod` VALUES ('1', '$$$$$', '工艺品1', 'images/prod/a.gif', null, null, null, null, null, null);
INSERT INTO `prod` VALUES ('3', '9A1003', '工艺品3', 'images/prod/c.gif', '807', null, null, null, null, null);
INSERT INTO `prod` VALUES ('5', 'TEST2', 'TEST2', 'images/prod/20120416061035813.gif', null, null, '2012-04-16 14:10:35', null, null, null);

-- ----------------------------
-- Table structure for `prodjob`
-- ----------------------------
DROP TABLE IF EXISTS `prodjob`;
CREATE TABLE `prodjob` (
  `id` int(11) NOT NULL auto_increment,
  `prodid` int(11) default NULL,
  `jobid` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of prodjob
-- ----------------------------
INSERT INTO `prodjob` VALUES ('5', '5', '2');
INSERT INTO `prodjob` VALUES ('6', '1', '1');
INSERT INTO `prodjob` VALUES ('8', '1', '3');
INSERT INTO `prodjob` VALUES ('11', '1', '4');
INSERT INTO `prodjob` VALUES ('12', '1', '7');
INSERT INTO `prodjob` VALUES ('14', '1', '2');
INSERT INTO `prodjob` VALUES ('16', '3', '2');

-- ----------------------------
-- Table structure for `prodlist`
-- ----------------------------
DROP TABLE IF EXISTS `prodlist`;
CREATE TABLE `prodlist` (
  `id` int(11) NOT NULL auto_increment,
  `prodid` varchar(50) default NULL COMMENT '产品编号',
  `clid` varchar(50) default NULL COMMENT '材料ID',
  `amount` int(11) default NULL COMMENT '总数量',
  `sumprice` double(13,2) default NULL,
  `bz` varchar(255) default NULL COMMENT '备注',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of prodlist
-- ----------------------------
INSERT INTO `prodlist` VALUES ('3', '3', '1', '21504', '342.00', null);
INSERT INTO `prodlist` VALUES ('6', '3', '2', '21504', '4.00', null);
INSERT INTO `prodlist` VALUES ('9', '3', '3', '21504', '423.00', null);
INSERT INTO `prodlist` VALUES ('10', '5', '5', '100', '4300.00', null);
INSERT INTO `prodlist` VALUES ('11', '5', '3', '200', '6464800.00', null);
INSERT INTO `prodlist` VALUES ('13', '1', '3', '22', '33.00', null);
INSERT INTO `prodlist` VALUES ('14', '3', '1', '22', '22.00', null);
INSERT INTO `prodlist` VALUES ('15', '3', '1', '22', '32.00', null);
INSERT INTO `prodlist` VALUES ('16', '3', '3', '2', '33.00', null);
INSERT INTO `prodlist` VALUES ('17', '3', '2', '2', '33.00', null);

-- ----------------------------
-- Table structure for `sal`
-- ----------------------------
DROP TABLE IF EXISTS `sal`;
CREATE TABLE `sal` (
  `id` int(11) NOT NULL auto_increment,
  `staffid` int(11) default NULL COMMENT '员工id',
  `sal` double(12,2) default NULL COMMENT '工资',
  `m_sal` varchar(2) default NULL COMMENT '工资月份',
  `y_sal` varchar(4) default NULL COMMENT '工资年份',
  `ispay` varchar(10) default NULL COMMENT '是否支付',
  `create_date` datetime default NULL,
  `create_user` varchar(100) default NULL,
  `edit_date` datetime default NULL,
  `edit_user` varchar(100) default NULL,
  `edit_reason` varchar(255) default NULL COMMENT '修改原因',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of sal
-- ----------------------------
INSERT INTO `sal` VALUES ('12', '1', '14244510.00', '3', '2012', '0', '2012-04-19 17:58:32', null, null, null, null);
INSERT INTO `sal` VALUES ('13', '2', '22809.00', '3', '2012', '0', '2012-04-19 17:58:32', null, null, null, null);
INSERT INTO `sal` VALUES ('14', '3', '144815.00', '3', '2012', '0', '2012-04-19 17:58:32', null, null, null, null);
INSERT INTO `sal` VALUES ('15', '1', '220.00', '4', '2012', '0', '2012-05-03 16:16:20', null, null, null, null);
INSERT INTO `sal` VALUES ('16', '2', '528.00', '4', '2012', '0', '2012-05-03 16:16:20', null, null, null, null);
INSERT INTO `sal` VALUES ('17', '3', '132.00', '4', '2012', '0', '2012-05-03 16:16:20', null, null, null, null);

-- ----------------------------
-- Table structure for `staff`
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `id` int(11) NOT NULL auto_increment,
  `staffid` varchar(30) default NULL COMMENT '员工编号',
  `staffname` varchar(30) default NULL COMMENT '员工名称',
  `gwid` int(11) default NULL COMMENT '岗位ID',
  `tell` varchar(20) default NULL COMMENT '联系电话',
  `bz` varchar(255) default NULL COMMENT '备注',
  `create_date` datetime default NULL,
  `edit_date` datetime default NULL,
  `create_user` varchar(100) default NULL,
  `edit_user` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of staff
-- ----------------------------
INSERT INTO `staff` VALUES ('1', 'LL', '男找4', '1', '234', '32432', null, null, null, null);
INSERT INTO `staff` VALUES ('2', 'TT', '3都是', '2', '324', '工', null, null, null, null);
INSERT INTO `staff` VALUES ('3', 'fad', 'dsafds', '1', 'fadsf', 'dsfa', '2012-04-15 15:26:48', null, null, null);

-- ----------------------------
-- Table structure for `staffjob`
-- ----------------------------
DROP TABLE IF EXISTS `staffjob`;
CREATE TABLE `staffjob` (
  `id` int(11) NOT NULL auto_increment,
  `staffid` int(11) default NULL COMMENT '员工id',
  `jobpriceid` double(11,2) default NULL COMMENT '工种价格',
  `prodid` int(11) default NULL,
  `orderid` int(11) default NULL,
  `orderlistid` int(11) default NULL,
  `jobid` int(11) default NULL,
  `amount` int(11) default NULL COMMENT '数量',
  `issal` varchar(10) default '0' COMMENT '是否结算工资',
  `isfinish` varchar(10) default '0',
  `unit` varchar(10) default NULL COMMENT '单位',
  `m_job` varchar(2) default NULL COMMENT '作业月份',
  `y_job` varchar(4) default NULL COMMENT '作业年份',
  `create_date` datetime default NULL,
  `create_user` varchar(100) default NULL,
  `edit_date` datetime default NULL,
  `edit_user` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of staffjob
-- ----------------------------
INSERT INTO `staffjob` VALUES ('1', '1', '1312321.00', '5', '4', '18', '2', '10', '1', '0', null, '3', '2012', null, null, null, null);
INSERT INTO `staffjob` VALUES ('2', '1', '11213.00', '3', '4', '18', '2', '100', '1', '0', null, '3', '2012', null, null, null, null);
INSERT INTO `staffjob` VALUES ('3', '1', '3213213.00', '1', '4', '18', '1', '1', '0', '1', null, '3', '2012', null, null, null, null);
INSERT INTO `staffjob` VALUES ('4', '2', '2021.00', '5', '4', '18', '2', '11', '1', '0', null, '3', '2012', null, null, null, null);
INSERT INTO `staffjob` VALUES ('5', '2', '11321.00', '3', '4', '18', '2', '10', '0', '1', null, '3', '2012', null, null, null, null);
INSERT INTO `staffjob` VALUES ('6', '2', '113.00', '3', '4', '22', '2', '11', '0', '1', null, '4', '2012', '2012-04-18 15:16:39', null, null, null);
INSERT INTO `staffjob` VALUES ('7', '3', '11213.99', '3', '4', '22', '2', '11', '1', '0', null, '4', '2012', '2012-04-18 15:16:39', null, null, null);
INSERT INTO `staffjob` VALUES ('8', '3', '112.00', '1', '4', '24', '1', '11', '1', '0', null, '4', '2012', '2012-04-18 15:17:29', null, null, null);
INSERT INTO `staffjob` VALUES ('9', '1', '1312.00', '1', '7', '24', '1', '10', '0', '1', null, '4', '2012', '2012-04-18 15:17:29', null, null, null);
INSERT INTO `staffjob` VALUES ('10', '2', '13.00', '1', '7', '24', '1', '1', '1', '0', null, '4', '2012', '2012-04-18 15:17:29', null, null, null);
INSERT INTO `staffjob` VALUES ('11', '3', '7213.00', '1', '7', '24', '3', '22', '0', '1', null, '4', '2012', '2012-04-18 15:17:43', null, null, null);
INSERT INTO `staffjob` VALUES ('12', '3', '8.66', '1', '7', '24', '4', '22', '1', '0', null, '4', '2012', '2012-04-18 15:17:53', null, null, null);
INSERT INTO `staffjob` VALUES ('13', '3', '912.00', '1', '7', '24', '7', '22', '1', '0', null, '4', '2012', '2012-04-18 15:18:01', null, null, null);
INSERT INTO `staffjob` VALUES ('14', '3', '332.00', '1', '7', '24', '2', '22', '0', '1', null, '4', '2012', '2012-04-18 15:18:08', null, null, null);
INSERT INTO `staffjob` VALUES ('15', '2', '113.00', '1', '7', '18', '1', '5', '1', '0', null, '4', '2012', '2012-04-18 15:53:32', null, null, null);
INSERT INTO `staffjob` VALUES ('16', '3', '121.00', '1', '7', '18', '1', '5', '0', '1', null, '4', '2012', '2012-04-18 15:53:32', null, null, null);
INSERT INTO `staffjob` VALUES ('17', '2', '44.00', '5', '7', '25', '2', '10', '1', '0', null, '05', '2012', '2012-05-03 09:13:55', null, null, null);
INSERT INTO `staffjob` VALUES ('20', '1', '44.00', '5', '7', '25', '2', '5', '1', '0', null, '05', '2012', '2012-05-03 10:07:59', null, null, null);
INSERT INTO `staffjob` VALUES ('21', '2', '44.00', '5', '7', '25', '2', '2', '1', '0', null, '05', '2012', '2012-05-03 10:11:44', null, null, null);
INSERT INTO `staffjob` VALUES ('22', '3', '44.00', '5', '7', '25', '2', '3', '1', '0', null, '05', '2012', '2012-05-03 10:11:44', null, null, null);

-- ----------------------------
-- Table structure for `sys_code`
-- ----------------------------
DROP TABLE IF EXISTS `sys_code`;
CREATE TABLE `sys_code` (
  `id` int(11) NOT NULL auto_increment,
  `sys_code` varchar(20) default NULL,
  `sys_desc` varchar(255) default NULL,
  `sys_value` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_sys_code_unique` (`sys_code`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of sys_code
-- ----------------------------
INSERT INTO `sys_code` VALUES ('1', 'CAP01001', '新增产品', '产品');
INSERT INTO `sys_code` VALUES ('2', 'CAP01002', '删除产品', '产品');
INSERT INTO `sys_code` VALUES ('3', 'CAP01003', '删除产品材料属性', '产品');
INSERT INTO `sys_code` VALUES ('4', 'CAP01004', '删除产品工种属性', '产品');
INSERT INTO `sys_code` VALUES ('5', 'CAP02001', '新增材料', '材料');
INSERT INTO `sys_code` VALUES ('6', 'CAP02002', '删除材料', '材料');
INSERT INTO `sys_code` VALUES ('7', 'CAP02003', '修改材料', '材料');
INSERT INTO `sys_code` VALUES ('8', 'CAP03001', '新增工种', '工种');
INSERT INTO `sys_code` VALUES ('9', 'CAP03002', '删除工种', '工种');
INSERT INTO `sys_code` VALUES ('10', 'CAP03003', '修改工种', '工种');
INSERT INTO `sys_code` VALUES ('11', 'CAP04001', '新增订单', '订单');
INSERT INTO `sys_code` VALUES ('12', 'CAP04002', '删除订单', '订单');
INSERT INTO `sys_code` VALUES ('13', 'CAP04003', '删除订单明细', '订单');
INSERT INTO `sys_code` VALUES ('14', 'CAP04004', '订单进仓', '订单');
INSERT INTO `sys_code` VALUES ('15', 'CAP04005', '订单明细竣工', '订单');
INSERT INTO `sys_code` VALUES ('16', 'CAP04006', '订单排单', '订单');
INSERT INTO `sys_code` VALUES ('17', 'CAP04007', '订单出仓', '订单');
INSERT INTO `sys_code` VALUES ('18', 'CAP05001', '新增员工', '员工');
INSERT INTO `sys_code` VALUES ('19', 'CAP05002', '删除员工', '员工');
INSERT INTO `sys_code` VALUES ('20', 'CAP05003', '修改员工', '员工');
INSERT INTO `sys_code` VALUES ('21', 'CAP05004', '删除员工作业', '员工');
INSERT INTO `sys_code` VALUES ('22', 'CAP06001', '新增岗位', '岗位');
INSERT INTO `sys_code` VALUES ('23', 'CAP06002', '删除岗位', '岗位');
INSERT INTO `sys_code` VALUES ('24', 'CAP06003', '修改岗位', '岗位');
INSERT INTO `sys_code` VALUES ('25', 'CAP07001', '新增工种', '工种');
INSERT INTO `sys_code` VALUES ('26', 'CAP07002', '删除工种', '工种');
INSERT INTO `sys_code` VALUES ('27', 'CAP07003', '修改工种', '工种');
INSERT INTO `sys_code` VALUES ('28', 'CAP08001', '新增预支工资', '工资');
INSERT INTO `sys_code` VALUES ('29', 'CAP08003', '工资打印', '工资');
INSERT INTO `sys_code` VALUES ('30', 'CAP04008', '订单密码验证', '订单');
INSERT INTO `sys_code` VALUES ('31', 'CAP08002', '删除预支工资', '工资');
INSERT INTO `sys_code` VALUES ('32', 'CAP09001', '新增客户', '客户');
INSERT INTO `sys_code` VALUES ('33', 'CAP09002', '删除客户', '客户');
INSERT INTO `sys_code` VALUES ('34', 'CAP09003', '修改客户', '客户');
INSERT INTO `sys_code` VALUES ('35', 'CAP10001', '新增系统用户', '系统用户');
INSERT INTO `sys_code` VALUES ('36', 'CAP10002', '删除系统用户', '系统用户');
INSERT INTO `sys_code` VALUES ('37', 'CAP10003', '修改系统用户', '系统用户');
INSERT INTO `sys_code` VALUES ('38', 'CAP11001', '系统登录', '系统登录');
INSERT INTO `sys_code` VALUES ('39', 'CAP11002', '订单登录', '订单登录');
INSERT INTO `sys_code` VALUES ('40', 'CAP12001', '新增工种价格', '工种价格');
INSERT INTO `sys_code` VALUES ('41', 'CAP12002', '删除工种价格', '工种价格');
INSERT INTO `sys_code` VALUES ('42', 'CAP12003', '修改工种价格', '工种价格');
INSERT INTO `sys_code` VALUES ('43', 'CAP13001', '新增预支', '预支');
INSERT INTO `sys_code` VALUES ('44', 'CAP13002', '删除预支', '预支');
INSERT INTO `sys_code` VALUES ('45', 'CAP13003', '修改预支', '预支');
INSERT INTO `sys_code` VALUES ('46', 'CAP14001', '新增员工作业', '员工作业');
INSERT INTO `sys_code` VALUES ('47', 'CAP14002', '删除员工作业', '员工作业');
INSERT INTO `sys_code` VALUES ('48', 'CAP14003', '修改员工作业', '员工作业');
INSERT INTO `sys_code` VALUES ('49', 'CAP08004', '生成上一月工资', '工资');
INSERT INTO `sys_code` VALUES ('50', 'CAP04009', '订单派单时间', '订单');

-- ----------------------------
-- Table structure for `sys_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` int(11) NOT NULL auto_increment,
  `sys_code` varchar(20) default NULL,
  `sys_user` varchar(20) default NULL,
  `create_date` datetime default NULL,
  `result` varchar(20) default NULL,
  `sys_desc` varchar(255) default NULL,
  `remark` longtext,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('1', 'CAP11002', '1', '2012-04-18 09:51:18', '成功', '订单登录', '订单登录成功!');
INSERT INTO `sys_log` VALUES ('2', 'CAP11001', '', '2012-04-18 10:03:31', '成功', '系统登录', '系统登录成功!');
INSERT INTO `sys_log` VALUES ('3', 'CAP11001', '1', '2012-04-18 10:03:54', '成功', '系统登录', '系统登录成功!');
INSERT INTO `sys_log` VALUES ('4', 'CAP11002', '1', '2012-04-18 10:04:04', '成功', '订单登录', '订单登录成功!');
INSERT INTO `sys_log` VALUES ('5', 'CAP11001', '', '2012-04-18 10:04:25', '成功', '系统登录', '系统登录成功!');
INSERT INTO `sys_log` VALUES ('6', 'CAP11001', '', '2012-04-18 10:04:25', '成功', '系统登录', '系统登录成功!');
INSERT INTO `sys_log` VALUES ('7', 'CAP11001', '1', '2012-04-18 10:04:32', '成功', '系统登录', '系统登录成功!');
INSERT INTO `sys_log` VALUES ('8', 'CAP11001', '', '2012-04-18 11:24:42', '成功', '系统登录', '系统登录成功!');
INSERT INTO `sys_log` VALUES ('9', 'CAP11001', '1', '2012-04-18 11:24:48', '成功', '系统登录', '系统登录成功!');
INSERT INTO `sys_log` VALUES ('10', 'CAP11002', '1', '2012-04-18 11:24:55', '成功', '订单登录', '订单登录成功!');
INSERT INTO `sys_log` VALUES ('11', 'CAP11001', '', '2012-04-18 12:40:47', '成功', '系统登录', '系统登录成功!');
INSERT INTO `sys_log` VALUES ('12', 'CAP11001', '', '2012-04-18 12:40:50', '成功', '系统登录', '系统登录成功!');
INSERT INTO `sys_log` VALUES ('13', 'CAP11001', '1', '2012-04-18 12:40:56', '成功', '系统登录', '系统登录成功!');
INSERT INTO `sys_log` VALUES ('14', 'CAP11002', '1', '2012-04-18 12:41:04', '成功', '订单登录', '订单登录成功!');
INSERT INTO `sys_log` VALUES ('15', 'CAP02003', '1', '2012-04-18 15:12:09', '失败', '修改材料', '操作失败!');
INSERT INTO `sys_log` VALUES ('16', 'CAP02003', '1', '2012-04-18 15:12:16', '失败', '修改材料', '操作失败!');
INSERT INTO `sys_log` VALUES ('17', 'CAP04006', '1', '2012-04-18 15:16:39', '成功', '订单排单', '订单排单成功！');
INSERT INTO `sys_log` VALUES ('18', 'CAP04006', '1', '2012-04-18 15:17:29', '成功', '订单排单', '订单排单成功！');
INSERT INTO `sys_log` VALUES ('19', 'CAP04006', '1', '2012-04-18 15:17:43', '成功', '订单排单', '订单排单成功！');
INSERT INTO `sys_log` VALUES ('20', 'CAP04006', '1', '2012-04-18 15:17:53', '成功', '订单排单', '订单排单成功！');
INSERT INTO `sys_log` VALUES ('21', 'CAP04006', '1', '2012-04-18 15:18:01', '成功', '订单排单', '订单排单成功！');
INSERT INTO `sys_log` VALUES ('22', 'CAP04006', '1', '2012-04-18 15:18:08', '成功', '订单排单', '订单排单成功！');
INSERT INTO `sys_log` VALUES ('23', 'CAP04006', '1', '2012-04-18 15:24:35', '成功', '订单排单', '订单排单全部完成！');
INSERT INTO `sys_log` VALUES ('24', 'CAP11001', '', '2012-04-18 15:42:54', '成功', '系统登录', '系统登录成功!');
INSERT INTO `sys_log` VALUES ('25', 'CAP11001', '', '2012-04-18 15:42:58', '成功', '系统登录', '系统登录成功!');
INSERT INTO `sys_log` VALUES ('26', 'CAP11001', '1', '2012-04-18 15:43:03', '成功', '系统登录', '系统登录成功!');
INSERT INTO `sys_log` VALUES ('27', 'CAP11002', '1', '2012-04-18 15:43:31', '成功', '订单登录', '订单登录成功!');
INSERT INTO `sys_log` VALUES ('28', 'CAP04001', '1', '2012-04-18 15:44:21', '成功', '新增订单', '请选择客户!');
INSERT INTO `sys_log` VALUES ('29', 'CAP04006', '1', '2012-04-18 15:53:32', '成功', '订单排单', '订单排单成功！');
INSERT INTO `sys_log` VALUES ('30', 'CAP11001', '', '2012-04-19 09:15:10', '成功', '系统登录', '系统登录成功!');
INSERT INTO `sys_log` VALUES ('31', 'CAP11001', '1', '2012-04-19 09:18:42', '成功', '系统登录', '系统登录成功!');
INSERT INTO `sys_log` VALUES ('32', 'CAP11001', '', '2012-04-19 10:20:42', '成功', '系统登录', '系统登录成功!');
INSERT INTO `sys_log` VALUES ('33', 'CAP11001', '1', '2012-04-19 10:20:51', '成功', '系统登录', '系统登录成功!');
INSERT INTO `sys_log` VALUES ('34', 'CAP11001', '', '2012-04-19 12:59:25', '成功', '系统登录', '系统登录成功!');
INSERT INTO `sys_log` VALUES ('35', 'CAP11001', '1', '2012-04-19 12:59:31', '成功', '系统登录', '系统登录成功!');
INSERT INTO `sys_log` VALUES ('36', 'CAP14003', '1', '2012-04-19 13:27:47', '失败', '修改员工作业', '批量完成作业操作失败!0');
INSERT INTO `sys_log` VALUES ('37', 'CAP14003', '1', '2012-04-19 13:28:43', '成功', '修改员工作业', '批量完成作业操作成功!');
INSERT INTO `sys_log` VALUES ('38', 'CAP14003', '1', '2012-04-19 13:30:16', '成功', '修改员工作业', '批量完成作业操作成功!');
INSERT INTO `sys_log` VALUES ('39', 'CAP14003', '1', '2012-04-19 13:30:20', '成功', '修改员工作业', '批量完成作业操作成功!');
INSERT INTO `sys_log` VALUES ('40', 'CAP11001', '', '2012-04-19 15:05:23', '成功', '系统登录', '系统登录成功!');
INSERT INTO `sys_log` VALUES ('41', 'CAP11001', '', '2012-04-19 15:05:27', '成功', '系统登录', '系统登录成功!');
INSERT INTO `sys_log` VALUES ('42', 'CAP11001', '', '2012-04-19 15:05:29', '成功', '系统登录', '系统登录成功!');
INSERT INTO `sys_log` VALUES ('43', 'CAP11001', '', '2012-04-19 15:05:33', '成功', '系统登录', '系统登录成功!');
INSERT INTO `sys_log` VALUES ('44', 'CAP11001', '1', '2012-04-19 15:05:40', '成功', '系统登录', '系统登录成功!');
INSERT INTO `sys_log` VALUES ('45', 'CAP11002', '1', '2012-04-19 15:21:43', '成功', '订单登录', '订单登录成功!');
INSERT INTO `sys_log` VALUES ('46', 'CAP04007', '1', '2012-04-19 15:30:19', '失败', '出仓', '订单明细未全部竣工,出仓失败!');
INSERT INTO `sys_log` VALUES ('47', 'CAP04007', '1', '2012-04-19 15:31:11', '失败', '出仓', '订单明细未全部竣工,出仓失败!');
INSERT INTO `sys_log` VALUES ('48', 'CAP04005', '1', '2012-04-19 15:31:21', '失败', '新增订单明细竣工', '订单明细已竣工!');
INSERT INTO `sys_log` VALUES ('49', 'CAP04005', '1', '2012-04-19 15:31:25', '失败', '新增订单明细竣工', '订单明细已竣工!');
INSERT INTO `sys_log` VALUES ('50', 'CAP04004', '1', '2012-04-19 15:31:34', '成功', '进仓', '订单已成功进仓!');
INSERT INTO `sys_log` VALUES ('51', 'CAP04007', '1', '2012-04-19 15:31:42', '成功', '出仓', '订单已成功出仓!');
INSERT INTO `sys_log` VALUES ('52', 'CAP04002', '1', '2012-04-19 15:37:47', '成功', '删除订单', '订单已成功删除!');
INSERT INTO `sys_log` VALUES ('53', 'CAP04002', '1', '2012-04-19 15:39:06', '失败', '删除订单', '删除订单失败!');
INSERT INTO `sys_log` VALUES ('54', 'CAP04003', '1', '2012-04-19 15:44:14', '失败', '删除订单明细', '删除订单明细失败!');
INSERT INTO `sys_log` VALUES ('55', 'CAP04005', '1', '2012-04-19 15:44:21', '失败', '新增订单明细竣工', '订单明细已竣工!');
INSERT INTO `sys_log` VALUES ('56', 'CAP04003', '1', '2012-04-19 15:44:26', '成功', '删除订单明细', '订单明细已成功删除!');
INSERT INTO `sys_log` VALUES ('57', 'CAP04003', '1', '2012-04-19 15:47:04', '成功', '删除订单明细', '订单明细已成功删除!');
INSERT INTO `sys_log` VALUES ('58', 'CAP04005', '1', '2012-04-19 15:47:43', '失败', '新增订单明细竣工', '订单明细已竣工!');
INSERT INTO `sys_log` VALUES ('59', 'CAP04003', '1', '2012-04-19 15:47:47', '失败', '删除订单明细', '删除订单明细失败,该明细已经竣工!');
INSERT INTO `sys_log` VALUES ('60', 'CAP04005', '1', '2012-04-19 15:51:57', '失败', '订单明细竣工', '订单明细已竣工失败!');
INSERT INTO `sys_log` VALUES ('61', 'CAP04002', '1', '2012-04-19 15:52:05', '成功', '删除订单', '订单已成功删除!');
INSERT INTO `sys_log` VALUES ('62', 'CAP11001', '', '2012-04-19 16:31:03', '成功', '系统登录', '系统登录成功!');
INSERT INTO `sys_log` VALUES ('63', 'CAP11001', '', '2012-04-19 16:31:06', '成功', '系统登录', '系统登录成功!');
INSERT INTO `sys_log` VALUES ('64', 'CAP11001', '', '2012-04-19 16:31:33', '成功', '系统登录', '系统登录成功!');
INSERT INTO `sys_log` VALUES ('65', 'CAP11001', '1', '2012-04-19 16:31:40', '成功', '系统登录', '系统登录成功!');
INSERT INTO `sys_log` VALUES ('66', 'CAP11002', '1', '2012-04-19 16:31:52', '成功', '订单登录', '订单登录成功!');
INSERT INTO `sys_log` VALUES ('67', 'CAP08004', '', '2012-04-19 17:57:36', '失败', '生成上一月工资', '工资生成失败!');
INSERT INTO `sys_log` VALUES ('68', 'CAP08004', '', '2012-04-19 17:58:01', '失败', '生成上一月工资', '工资生成失败!');
INSERT INTO `sys_log` VALUES ('69', 'CAP08004', '', '2012-04-19 17:58:10', '失败', '生成上一月工资', '工资生成失败!');
INSERT INTO `sys_log` VALUES ('70', 'CAP08004', '', '2012-04-19 17:58:32', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('71', 'CAP11001', '', '2012-05-01 08:01:00', '成功', '系统登录', '系统登录成功!');
INSERT INTO `sys_log` VALUES ('72', 'CAP11001', '1', '2012-05-01 08:01:10', '成功', '系统登录', '系统登录成功!');
INSERT INTO `sys_log` VALUES ('73', 'CAP11001', '1', '2012-05-01 08:53:44', '成功', '系统登录', '系统登录成功!');
INSERT INTO `sys_log` VALUES ('74', 'CAP08004', '', '2012-05-01 22:42:41', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('75', 'CAP11001', '1', '2012-05-02 08:39:05', '成功', '系统登录', '系统登录成功!');
INSERT INTO `sys_log` VALUES ('76', 'CAP08004', '', '2012-05-02 08:55:14', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('77', 'CAP08004', '', '2012-05-02 08:55:54', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('78', 'CAP08004', '', '2012-05-02 08:56:20', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('79', 'CAP08004', '', '2012-05-02 08:56:40', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('80', 'CAP08004', '', '2012-05-02 08:56:43', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('81', 'CAP08004', '', '2012-05-02 08:57:36', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('82', 'CAP08004', '', '2012-05-02 08:57:50', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('83', 'CAP08004', '', '2012-05-02 08:57:51', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('84', 'CAP08004', '', '2012-05-02 08:57:51', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('85', 'CAP08004', '', '2012-05-02 08:57:52', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('86', 'CAP08004', '', '2012-05-02 08:57:52', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('87', 'CAP08004', '', '2012-05-02 08:57:52', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('88', 'CAP08004', '', '2012-05-02 08:57:53', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('89', 'CAP08004', '', '2012-05-02 08:57:58', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('90', 'CAP08004', '', '2012-05-02 08:59:48', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('91', 'CAP08004', '', '2012-05-02 09:03:50', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('92', 'CAP08004', '', '2012-05-02 09:04:32', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('93', 'CAP08004', '', '2012-05-02 09:04:55', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('94', 'CAP08004', '', '2012-05-02 09:05:00', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('95', 'CAP08004', '', '2012-05-02 09:05:02', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('96', 'CAP08004', '', '2012-05-02 09:05:02', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('97', 'CAP08004', '', '2012-05-02 09:05:03', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('98', 'CAP08004', '', '2012-05-02 09:05:15', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('99', 'CAP08004', '', '2012-05-02 09:06:36', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('100', 'CAP08004', '', '2012-05-02 09:06:46', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('101', 'CAP08004', '', '2012-05-02 09:06:54', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('102', 'CAP08004', '', '2012-05-02 09:07:06', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('103', 'CAP08004', '', '2012-05-02 09:07:19', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('104', 'CAP08004', '', '2012-05-02 09:07:21', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('105', 'CAP08004', '', '2012-05-02 09:07:22', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('106', 'CAP08004', '', '2012-05-02 09:07:23', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('107', 'CAP08004', '', '2012-05-02 09:07:26', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('108', 'CAP08004', '', '2012-05-02 09:07:29', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('109', 'CAP08004', '', '2012-05-02 09:07:58', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('110', 'CAP08004', '', '2012-05-02 09:08:03', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('111', 'CAP08004', '', '2012-05-02 09:08:18', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('112', 'CAP08004', '', '2012-05-02 09:09:46', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('113', 'CAP08004', '', '2012-05-02 09:09:49', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('114', 'CAP08004', '', '2012-05-02 09:09:51', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('115', 'CAP08004', '', '2012-05-02 09:09:54', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('116', 'CAP08004', '', '2012-05-02 09:09:57', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('117', 'CAP08004', '', '2012-05-02 09:10:00', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('118', 'CAP08004', '', '2012-05-02 09:10:15', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('119', 'CAP08004', '', '2012-05-02 09:13:19', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('120', 'CAP08004', '', '2012-05-02 09:14:32', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('121', 'CAP11002', '1', '2012-05-02 09:15:23', '成功', '订单登录', '订单登录成功!');
INSERT INTO `sys_log` VALUES ('122', 'CAP11001', '1', '2012-05-02 09:37:34', '成功', '系统登录', '系统登录成功!');
INSERT INTO `sys_log` VALUES ('123', 'CAP11002', '1', '2012-05-02 09:37:41', '成功', '订单登录', '订单登录成功!');
INSERT INTO `sys_log` VALUES ('124', 'CAP04007', '1', '2012-05-02 09:38:09', '成功', '出仓', '订单已成功出仓!');
INSERT INTO `sys_log` VALUES ('125', 'CAP11001', '1', '2012-05-02 11:55:17', '成功', '系统登录', '系统登录成功!');
INSERT INTO `sys_log` VALUES ('126', 'CAP11002', '1', '2012-05-02 11:55:26', '成功', '订单登录', '订单登录成功!');
INSERT INTO `sys_log` VALUES ('127', 'CAP11001', '1', '2012-05-02 12:07:37', '成功', '系统登录', '系统登录成功!');
INSERT INTO `sys_log` VALUES ('128', 'CAP11002', '1', '2012-05-02 12:07:43', '成功', '订单登录', '订单登录成功!');
INSERT INTO `sys_log` VALUES ('129', 'CAP04004', '1', '2012-05-02 12:57:37', '失败', '进仓', '非法操作!');
INSERT INTO `sys_log` VALUES ('130', 'CAP04004', '1', '2012-05-02 12:58:40', '失败', '进仓', '非法操作!');
INSERT INTO `sys_log` VALUES ('131', 'CAP11001', '1', '2012-05-02 13:01:22', '成功', '系统登录', '系统登录成功!');
INSERT INTO `sys_log` VALUES ('132', 'CAP11002', '1', '2012-05-02 13:01:29', '成功', '订单登录', '订单登录成功!');
INSERT INTO `sys_log` VALUES ('133', 'CAP11001', '1', '2012-05-02 13:08:10', '成功', '系统登录', '系统登录成功!');
INSERT INTO `sys_log` VALUES ('134', 'CAP11002', '1', '2012-05-02 13:08:16', '成功', '订单登录', '订单登录成功!');
INSERT INTO `sys_log` VALUES ('135', 'CAP04004', '1', '2012-05-02 13:08:25', '失败', '进仓', '订单明细未全部竣工,进仓失败!');
INSERT INTO `sys_log` VALUES ('136', 'CAP04004', '1', '2012-05-02 13:08:53', '失败', '进仓', '订单明细未全部竣工,进仓失败!');
INSERT INTO `sys_log` VALUES ('137', 'CAP11001', '1', '2012-05-02 13:10:28', '成功', '系统登录', '系统登录成功!');
INSERT INTO `sys_log` VALUES ('138', 'CAP11002', '1', '2012-05-02 13:10:35', '成功', '订单登录', '订单登录成功!');
INSERT INTO `sys_log` VALUES ('139', 'CAP04004', '1', '2012-05-02 13:13:58', '失败', '进仓', '订单明细未全部竣工,进仓失败!');
INSERT INTO `sys_log` VALUES ('140', 'CAP04004', '1', '2012-05-02 13:25:46', '失败', '进仓', '订单明细未全部竣工,进仓失败!');
INSERT INTO `sys_log` VALUES ('141', 'CAP04004', '1', '2012-05-02 13:31:25', '失败', '进仓', '订单明细未全部竣工,进仓失败!');
INSERT INTO `sys_log` VALUES ('142', 'CAP11001', '1', '2012-05-02 13:32:17', '成功', '系统登录', '系统登录成功!');
INSERT INTO `sys_log` VALUES ('143', 'CAP11002', '1', '2012-05-02 13:32:25', '成功', '订单登录', '订单登录成功!');
INSERT INTO `sys_log` VALUES ('144', 'CAP04009', '1', '2012-05-02 13:32:32', '成功', '订单排单时间', '订单排单时间录入成功！');
INSERT INTO `sys_log` VALUES ('145', 'CAP04009', '1', '2012-05-02 13:37:09', '成功', '订单排单时间', '订单排单时间录入成功！');
INSERT INTO `sys_log` VALUES ('146', 'CAP04009', '1', '2012-05-02 13:39:09', '成功', '订单排单时间', '订单排单时间录入成功！');
INSERT INTO `sys_log` VALUES ('147', 'CAP04009', '1', '2012-05-02 13:40:14', '成功', '订单排单时间', '订单排单时间录入成功！');
INSERT INTO `sys_log` VALUES ('148', 'CAP04006', '1', '2012-05-03 09:13:55', '成功', '订单排单', '订单排单成功！');
INSERT INTO `sys_log` VALUES ('149', 'CAP14003', '1', '2012-05-03 10:07:59', '成功', '修改员工作业', '修改员工作业成功！');
INSERT INTO `sys_log` VALUES ('150', 'CAP14003', '1', '2012-05-03 10:11:45', '成功', '修改员工作业', '修改员工作业成功！');
INSERT INTO `sys_log` VALUES ('151', 'CAP08004', '', '2012-05-03 16:16:21', '成功', '生成上一月工资', '工资生成成功!');
INSERT INTO `sys_log` VALUES ('152', 'CAP11001', '1', '2012-05-04 13:29:09', '成功', '系统登录', '系统登录成功!');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(30) default '' COMMENT '帐号',
  `password` varchar(60) default NULL COMMENT '密码',
  `realname` varchar(10) default NULL COMMENT '用户名称',
  `create_date` datetime default NULL COMMENT '注册时间',
  `bz` varchar(255) default NULL COMMENT '备注',
  `create_user` varchar(100) default NULL,
  `edit_date` datetime default NULL,
  `edit_user` varchar(100) default NULL,
  `orderpass` varchar(60) default NULL COMMENT '订单密码',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', null, null, null, null, null, '21232f297a57a5a743894a0e4a801fc3');
INSERT INTO `user` VALUES ('2', 'ling', '24c10be286b009f797d53126790fcfd8', 'ling', '2012-04-06 11:10:42', null, null, null, null, null);
INSERT INTO `user` VALUES ('3', '123', '68053af2923e00204c3ca7c6a3150cf7', '123', '2012-04-06 11:10:59', null, null, null, null, '123123');
INSERT INTO `user` VALUES ('4', 'sfadsfds', '594f803b380a41396ed63dca39503542', 'aaaa', '2012-04-15 12:54:57', null, null, null, null, null);
INSERT INTO `user` VALUES ('5', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '2012-04-16 14:03:54', null, null, null, null, null);

-- ----------------------------
-- Table structure for `yz`
-- ----------------------------
DROP TABLE IF EXISTS `yz`;
CREATE TABLE `yz` (
  `id` int(11) NOT NULL auto_increment,
  `staffid` int(11) default NULL COMMENT '员工id',
  `money` double(12,2) default NULL COMMENT '预支钱',
  `m_yz` varchar(2) default NULL COMMENT '预支月份',
  `y_yz` varchar(4) default NULL COMMENT '预支年份',
  `create_date` datetime default NULL,
  `create_user` varchar(100) default NULL,
  `edit_date` datetime default NULL,
  `edit_user` varchar(100) default NULL,
  `edit_reason` varchar(255) default NULL COMMENT '修改原因',
  `bob_staffid` int(11) default NULL COMMENT '负责人',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of yz
-- ----------------------------
INSERT INTO `yz` VALUES ('2', '2', '0.00', '03', '2012', '2012-04-15 12:53:34', null, null, null, null, null);
INSERT INTO `yz` VALUES ('3', '1', '0.00', '02', '2012', '2012-04-15 12:53:45', null, null, null, null, null);
INSERT INTO `yz` VALUES ('4', '1', '0.00', '01', '2012', '2012-04-15 14:44:53', null, null, null, null, null);
INSERT INTO `yz` VALUES ('5', '2', '3333.00', '04', '2012', '2012-04-15 14:46:24', null, null, null, null, null);
