/*
MySQL Data Transfer
Source Host: localhost
Source Database: msg
Target Host: localhost
Target Database: msg
Date: 2012-4-18 9:19:05
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for cc
-- ----------------------------
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
-- Table structure for cl
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for customer
-- ----------------------------
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
-- Table structure for gw
-- ----------------------------
CREATE TABLE `gw` (
  `gwid` int(11) NOT NULL auto_increment,
  `gwname` varchar(50) default NULL COMMENT '岗位名称',
  PRIMARY KEY  (`gwid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for job
-- ----------------------------
CREATE TABLE `job` (
  `id` int(11) NOT NULL auto_increment,
  `jobname` varchar(100) default NULL COMMENT '工种名称',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for jobprice
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for orderitem
-- ----------------------------
CREATE TABLE `orderitem` (
  `id` int(11) NOT NULL auto_increment,
  `orderid` varchar(50) default NULL COMMENT '订单编号',
  `pddate` datetime default NULL COMMENT '排单生成时间',
  `jcdate` datetime default NULL COMMENT '进仓时间',
  `custid` int(11) default NULL COMMENT '客户id',
  `orderprice` double(12,2) default NULL COMMENT '订单价格',
  `create_date` datetime default NULL,
  `create_user` varchar(100) default NULL,
  `edit_date` datetime default NULL,
  `edit_user` varchar(100) default NULL,
  `edit_reason` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for orderlist
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for pd
-- ----------------------------
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
-- Table structure for prod
-- ----------------------------
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
-- Table structure for prodjob
-- ----------------------------
CREATE TABLE `prodjob` (
  `id` int(11) NOT NULL auto_increment,
  `prodid` int(11) default NULL,
  `jobid` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for prodlist
-- ----------------------------
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
-- Table structure for sal
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for staff
-- ----------------------------
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
-- Table structure for staffjob
-- ----------------------------
CREATE TABLE `staffjob` (
  `id` int(11) NOT NULL auto_increment,
  `staffid` int(11) default NULL COMMENT '员工id',
  `jobpriceid` int(11) default NULL COMMENT '工种价格',
  `amount` int(11) default NULL COMMENT '数量',
  `unit` varchar(10) default NULL COMMENT '单位',
  `m_job` varchar(2) default NULL COMMENT '作业月份',
  `y_job` varchar(4) default NULL COMMENT '作业年份',
  `create_date` datetime default NULL,
  `create_user` varchar(100) default NULL,
  `edit_date` datetime default NULL,
  `edit_user` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for sys_code
-- ----------------------------
CREATE TABLE `sys_code` (
  `id` int(11) NOT NULL auto_increment,
  `sys_code` varchar(20) default NULL,
  `sys_desc` varchar(255) default NULL,
  `sys_value` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
CREATE TABLE `sys_log` (
  `id` int(11) NOT NULL auto_increment,
  `sys_code` varchar(20) default NULL,
  `sys_user` varchar(20) default NULL,
  `create_date` datetime default NULL,
  `result` varchar(20) default NULL,
  `sys_desc` varchar(255) default NULL,
  `remark` longtext,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for user
-- ----------------------------
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
-- Table structure for yz
-- ----------------------------
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
-- Records 
-- ----------------------------
INSERT INTO `cc` VALUES ('1', '11', '2012-04-29 17:21:55', '11', null, '2012-04-30 17:21:40', null);
INSERT INTO `cl` VALUES ('1', 'JP0147', '圆套', '1X0.8CM', '个', '34.00', '2012-04-15 13:12:04', null, null, null);
INSERT INTO `cl` VALUES ('2', 'JP0482', '亚克力底座', '1.8CM', '片', '324.00', '2012-04-15 13:12:06', null, null, null);
INSERT INTO `cl` VALUES ('3', 'Tx008', '铁线', '8#3.75M', 'KG', '32324.00', '2012-04-15 13:12:09', null, null, null);
INSERT INTO `cl` VALUES ('5', 'TTT', 'bb', 'bb', 'kg', '43.00', '2012-04-15 13:42:49', null, null, null);
INSERT INTO `cl` VALUES ('6', 'dd', 'dd', 'dd', 'dd', '0.00', '2012-04-18 09:10:18', null, null, null);
INSERT INTO `cl` VALUES ('7', 'sewe', 'we', 'e', 'we', '0.00', '2012-04-18 09:10:47', null, null, null);
INSERT INTO `customer` VALUES ('2', 'ww', 'fdasf', 'dasfds', '21', '132', '12', 'safdsf', null, null, null, null);
INSERT INTO `customer` VALUES ('3', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', null, null, null, null);
INSERT INTO `customer` VALUES ('4', 'as', 'asfd', '', 'fdsf', 'dsaf', 'dsfsdaf', 'dsfdsafd', null, null, null, null);
INSERT INTO `customer` VALUES ('6', 'dsafds', 'fdsa', 'fds', 'fdsads', 'fdsaf', 'adsf', 'dsfdsaf', null, null, null, null);
INSERT INTO `gw` VALUES ('1', '2222');
INSERT INTO `gw` VALUES ('2', '3333');
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
INSERT INTO `jobprice` VALUES ('1', '1', '1', '200.00', '2012-04-15 15:01:50', null, null, null);
INSERT INTO `jobprice` VALUES ('3', '2', '1', '100.00', '2012-04-15 15:01:54', null, null, null);
INSERT INTO `jobprice` VALUES ('4', '1', '3', '111.00', null, null, null, null);
INSERT INTO `jobprice` VALUES ('5', '2', '3', '3232.00', null, null, null, null);
INSERT INTO `orderitem` VALUES ('4', '20120416043825140045', '2012-04-17 09:17:47', null, '3', '33.00', '2012-04-16 12:38:25', null, null, null, null);
INSERT INTO `orderitem` VALUES ('5', '20120416044859720837', null, null, '3', '400.00', '2012-04-16 12:48:59', null, null, null, null);
INSERT INTO `orderitem` VALUES ('6', '20120416045027891592', null, '2012-04-16 13:08:54', '4', '2420.00', '2012-04-16 12:50:27', null, null, null, null);
INSERT INTO `orderlist` VALUES ('15', '4', '1', '22', '0.00', '0', null, null, null);
INSERT INTO `orderlist` VALUES ('16', '4', '3', '22', '0.00', '0', null, null, null);
INSERT INTO `orderlist` VALUES ('18', '5', '1', '10', '10.00', '0', null, null, null);
INSERT INTO `orderlist` VALUES ('19', '5', '3', '10', '20.00', '0', null, null, null);
INSERT INTO `orderlist` VALUES ('21', '6', '1', '22', '22.00', '1', '2012-04-16 13:10:45', null, null);
INSERT INTO `orderlist` VALUES ('22', '6', '3', '22', '22.00', '1', '2012-04-16 13:12:35', null, null);
INSERT INTO `orderlist` VALUES ('24', '6', '1', '22', '22.00', '1', '2012-04-16 13:12:42', null, null);
INSERT INTO `prod` VALUES ('1', '$$$$$', '工艺品1', 'images/prod/a.gif', null, null, null, null, null, null);
INSERT INTO `prod` VALUES ('3', '9A1003', '工艺品3', 'images/prod/c.gif', '807', null, null, null, null, null);
INSERT INTO `prod` VALUES ('5', 'TEST2', 'TEST2', 'images/prod/20120416061035813.gif', null, null, '2012-04-16 14:10:35', null, null, null);
INSERT INTO `prodjob` VALUES ('5', '5', '2');
INSERT INTO `prodjob` VALUES ('6', '1', '1');
INSERT INTO `prodjob` VALUES ('7', '1', '2');
INSERT INTO `prodjob` VALUES ('8', '1', '3');
INSERT INTO `prodjob` VALUES ('10', '1', '3');
INSERT INTO `prodjob` VALUES ('11', '1', '4');
INSERT INTO `prodjob` VALUES ('12', '1', '7');
INSERT INTO `prodjob` VALUES ('14', '1', '2');
INSERT INTO `prodjob` VALUES ('16', '3', '2');
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
INSERT INTO `sal` VALUES ('1', '1', '2100.00', '3', '2012', '0', '2012-04-15 16:03:51', null, null, null, null);
INSERT INTO `sal` VALUES ('2', '2', '2000.00', '3', '2012', '0', '2012-04-15 16:03:51', null, null, null, null);
INSERT INTO `staff` VALUES ('1', 'LL', '男找4', '1', '234', '32432', null, null, null, null);
INSERT INTO `staff` VALUES ('2', 'TT', '3都是', '2', '324', '工', null, null, null, null);
INSERT INTO `staff` VALUES ('3', 'fad', 'dsafds', '1', 'fadsf', 'dsfa', '2012-04-15 15:26:48', null, null, null);
INSERT INTO `staffjob` VALUES ('1', '1', '1', '10', null, '3', '2012', null, null, null, null);
INSERT INTO `staffjob` VALUES ('2', '1', '2', '100', null, '3', '2012', null, null, null, null);
INSERT INTO `staffjob` VALUES ('3', '1', '3', '1', null, '3', '2012', null, null, null, null);
INSERT INTO `staffjob` VALUES ('4', '2', '2', '11', null, '3', '2012', null, null, null, null);
INSERT INTO `staffjob` VALUES ('5', '2', '1', '10', null, '3', '2012', null, null, null, null);
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
INSERT INTO `sys_code` VALUES ('52', 'CAP04008', '新增订单明细', '订单');
INSERT INTO `sys_log` VALUES ('1', 'CAP02001', '1', '2012-04-18 09:10:18', '失败', '新增材料', '材料新增成功!');
INSERT INTO `sys_log` VALUES ('2', 'CAP02001', '1', '2012-04-18 09:10:47', '失败', '新增材料', '材料新增成功!');
INSERT INTO `user` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', null, null, null, null, null, '21232f297a57a5a743894a0e4a801fc3');
INSERT INTO `user` VALUES ('2', 'ling', '24c10be286b009f797d53126790fcfd8', 'ling', '2012-04-06 11:10:42', null, null, null, null, null);
INSERT INTO `user` VALUES ('3', '123', '68053af2923e00204c3ca7c6a3150cf7', '123', '2012-04-06 11:10:59', null, null, null, null, '123123');
INSERT INTO `user` VALUES ('4', 'sfadsfds', '594f803b380a41396ed63dca39503542', 'aaaa', '2012-04-15 12:54:57', null, null, null, null, null);
INSERT INTO `user` VALUES ('5', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '2012-04-16 14:03:54', null, null, null, null, null);
INSERT INTO `yz` VALUES ('2', '2', '0.00', '03', '2012', '2012-04-15 12:53:34', null, null, null, null, null);
INSERT INTO `yz` VALUES ('3', '1', '0.00', '02', '2012', '2012-04-15 12:53:45', null, null, null, null, null);
INSERT INTO `yz` VALUES ('4', '1', '0.00', '01', '2012', '2012-04-15 14:44:53', null, null, null, null, null);
INSERT INTO `yz` VALUES ('5', '2', '3333.00', '04', '2012', '2012-04-15 14:46:24', null, null, null, null, null);
