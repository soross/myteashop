# MySQL-Front 5.1  (Build 3.57)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


# Host: localhost    Database: test
# ------------------------------------------------------
# Server version 5.0.88-community-nt

#
# Source for table fb_admin
#

DROP TABLE IF EXISTS `fb_admin`;
CREATE TABLE `fb_admin` (
  `A_UserId` varchar(36) NOT NULL default '' COMMENT '用户名ID',
  `A_UserName` varchar(20) default NULL COMMENT '用户名',
  `A_PassWord` varchar(16) default NULL COMMENT '密码'
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='管理表';

#
# Dumping data for table fb_admin
#
LOCK TABLES `fb_admin` WRITE;
/*!40000 ALTER TABLE `fb_admin` DISABLE KEYS */;

INSERT INTO `fb_admin` VALUES ('F798A943-ABA8-44D7-A0CC-085A06851D12','admin','1234');
/*!40000 ALTER TABLE `fb_admin` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table fb_admin_role
#

DROP TABLE IF EXISTS `fb_admin_role`;
CREATE TABLE `fb_admin_role` (
  `AR_AdminId` varchar(36) NOT NULL default '' COMMENT '管理员ID',
  `AR_RoleId` varchar(36) NOT NULL default '' COMMENT '角色ID',
  PRIMARY KEY  (`AR_AdminId`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='管理员与角色关系表';

#
# Dumping data for table fb_admin_role
#
LOCK TABLES `fb_admin_role` WRITE;
/*!40000 ALTER TABLE `fb_admin_role` DISABLE KEYS */;

INSERT INTO `fb_admin_role` VALUES ('F798A943-ABA8-44D7-A0CC-085A06851D12','C2BFB2E1-A23A-47F2-A8E3-06D498C94F01');
/*!40000 ALTER TABLE `fb_admin_role` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table fb_menu
#

DROP TABLE IF EXISTS `fb_menu`;
CREATE TABLE `fb_menu` (
  `M_MenuId` varchar(36) NOT NULL default '' COMMENT '菜单ID',
  `M_MenuName` varchar(20) default NULL COMMENT '菜单名称',
  `M_MenuNumber` varchar(20) default NULL COMMENT '菜单编号',
  `M_MenuParent` varchar(36) default NULL COMMENT '菜单父类',
  `M_MenuUrl` varchar(100) default NULL COMMENT '菜单url',
  `M_MenuType` int(2) default NULL COMMENT '菜单类型',
  `M_MenuIsDel` int(1) default NULL COMMENT '菜单伪删除'
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='菜单表';

#
# Dumping data for table fb_menu
#
LOCK TABLES `fb_menu` WRITE;
/*!40000 ALTER TABLE `fb_menu` DISABLE KEYS */;

INSERT INTO `fb_menu` VALUES ('77DA6ECB-F935-46FD-AD91-067B32354C66','系统管理',NULL,NULL,NULL,0,0);
INSERT INTO `fb_menu` VALUES ('BE399019-992C-41EF-BA49-53374AEE363A','菜单配置',NULL,'77DA6ECB-F935-46FD-AD91-067B32354C66',NULL,0,0);
INSERT INTO `fb_menu` VALUES ('FD5B487B-4630-41DB-9694-A4CFEA8FB1B0','用户列表',NULL,'77DA6ECB-F935-46FD-AD91-067B32354C66',NULL,0,0);
/*!40000 ALTER TABLE `fb_menu` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table fb_menu_role
#

DROP TABLE IF EXISTS `fb_menu_role`;
CREATE TABLE `fb_menu_role` (
  `MR_MenuId` varchar(36) NOT NULL default '' COMMENT '菜单ID',
  `MR_RoleId` varchar(36) NOT NULL default '' COMMENT '角色ID',
  PRIMARY KEY  (`MR_MenuId`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='菜单与角色关系表';

#
# Dumping data for table fb_menu_role
#
LOCK TABLES `fb_menu_role` WRITE;
/*!40000 ALTER TABLE `fb_menu_role` DISABLE KEYS */;

INSERT INTO `fb_menu_role` VALUES ('77DA6ECB-F935-46FD-AD91-067B32354C66','C2BFB2E1-A23A-47F2-A8E3-06D498C94F01');
INSERT INTO `fb_menu_role` VALUES ('BE399019-992C-41EF-BA49-53374AEE363A','C2BFB2E1-A23A-47F2-A8E3-06D498C94F01');
INSERT INTO `fb_menu_role` VALUES ('FD5B487B-4630-41DB-9694-A4CFEA8FB1B0','C2BFB2E1-A23A-47F2-A8E3-06D498C94F01');
/*!40000 ALTER TABLE `fb_menu_role` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table fb_newbase
#

DROP TABLE IF EXISTS `fb_newbase`;
CREATE TABLE `fb_newbase` (
  `NB_Id` int(8) NOT NULL auto_increment COMMENT '新闻基本表ID',
  `NB_CId` int(2) NOT NULL default '0' COMMENT '分类ID',
  `NB_Title` varchar(100) default NULL COMMENT '标题',
  `NB_Author` varchar(20) default NULL COMMENT '作者',
  `NB_Updatetim` date default NULL COMMENT '新闻时间',
  PRIMARY KEY  (`NB_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='新闻基本表';

#
# Dumping data for table fb_newbase
#
LOCK TABLES `fb_newbase` WRITE;
/*!40000 ALTER TABLE `fb_newbase` DISABLE KEYS */;

/*!40000 ALTER TABLE `fb_newbase` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table fb_newclass
#

DROP TABLE IF EXISTS `fb_newclass`;
CREATE TABLE `fb_newclass` (
  `NC_Id` int(8) NOT NULL auto_increment COMMENT '新闻分类ID',
  `NC_FId` int(2) NOT NULL default '0' COMMENT '父ID',
  `NC_Name` varchar(50) default NULL COMMENT '新闻分类名称',
  `NC_Keywrod` varchar(100) default NULL COMMENT '新闻分类的关键字',
  `NC_Remark` varchar(100) default NULL COMMENT '备注',
  PRIMARY KEY  (`NC_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='新闻分类表';

#
# Dumping data for table fb_newclass
#
LOCK TABLES `fb_newclass` WRITE;
/*!40000 ALTER TABLE `fb_newclass` DISABLE KEYS */;

/*!40000 ALTER TABLE `fb_newclass` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table fb_newscontent
#

DROP TABLE IF EXISTS `fb_newscontent`;
CREATE TABLE `fb_newscontent` (
  `NS_NId` int(8) NOT NULL auto_increment COMMENT '新闻基本表ID',
  `NS_KeyWrod` varchar(50) default NULL COMMENT '关键字（说明文档）',
  `NS_Content` longtext COMMENT '内容',
  `NS_Remark` varchar(50) default NULL COMMENT '备注',
  PRIMARY KEY  (`NS_NId`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='新闻内容表';

#
# Dumping data for table fb_newscontent
#
LOCK TABLES `fb_newscontent` WRITE;
/*!40000 ALTER TABLE `fb_newscontent` DISABLE KEYS */;

/*!40000 ALTER TABLE `fb_newscontent` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table fb_role
#

DROP TABLE IF EXISTS `fb_role`;
CREATE TABLE `fb_role` (
  `R_RoleId` varchar(36) NOT NULL default '' COMMENT '角色ID',
  `R_RoleName` varchar(20) default NULL COMMENT '角色名称'
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='角色表';

#
# Dumping data for table fb_role
#
LOCK TABLES `fb_role` WRITE;
/*!40000 ALTER TABLE `fb_role` DISABLE KEYS */;

INSERT INTO `fb_role` VALUES ('C2BFB2E1-A23A-47F2-A8E3-06D498C94F01','管理员');
/*!40000 ALTER TABLE `fb_role` ENABLE KEYS */;
UNLOCK TABLES;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
