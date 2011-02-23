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
# Server version 5.1.53-community

#
# Source for table fb_admin
#

CREATE TABLE `fb_admin` (
  `A_UserId` varchar(36) NOT NULL DEFAULT '' COMMENT '用户名ID',
  `A_UserName` varchar(20) DEFAULT NULL COMMENT '用户名',
  `A_PassWord` varchar(16) DEFAULT NULL COMMENT '密码'
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='管理表';

#
# Dumping data for table fb_admin
#
LOCK TABLES `fb_admin` WRITE;
/*!40000 ALTER TABLE `fb_admin` DISABLE KEYS */;

/*!40000 ALTER TABLE `fb_admin` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table fb_admin_role
#

CREATE TABLE `fb_admin_role` (
  `AR_AdminId` varchar(36) NOT NULL DEFAULT '' COMMENT '管理员ID',
  `AR_RoleId` varchar(36) NOT NULL DEFAULT '' COMMENT '角色ID',
  PRIMARY KEY (`AR_AdminId`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='管理员与角色关系表';

#
# Dumping data for table fb_admin_role
#
LOCK TABLES `fb_admin_role` WRITE;
/*!40000 ALTER TABLE `fb_admin_role` DISABLE KEYS */;

/*!40000 ALTER TABLE `fb_admin_role` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table fb_menu
#

CREATE TABLE `fb_menu` (
  `M_MenuId` varchar(36) NOT NULL DEFAULT '' COMMENT '菜单ID',
  `M_MenuName` varchar(20) DEFAULT NULL COMMENT '菜单名称',
  `M_MenuNumber` varchar(20) DEFAULT NULL COMMENT '菜单编号',
  `M_MenuParent` varchar(2) DEFAULT NULL COMMENT '菜单父类',
  `M_MenuUrl` varchar(50) DEFAULT NULL COMMENT '菜单url',
  `M_MenuType` int(2) DEFAULT NULL COMMENT '菜单类型',
  `M_MenuIsDel` int(1) DEFAULT NULL COMMENT '菜单伪删除'
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='菜单表';

#
# Dumping data for table fb_menu
#
LOCK TABLES `fb_menu` WRITE;
/*!40000 ALTER TABLE `fb_menu` DISABLE KEYS */;

/*!40000 ALTER TABLE `fb_menu` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table fb_menu_role
#

CREATE TABLE `fb_menu_role` (
  `MR_MenuId` varchar(36) NOT NULL DEFAULT '' COMMENT '菜单ID',
  `MR_RoleId` varchar(36) NOT NULL DEFAULT '' COMMENT '角色ID',
  PRIMARY KEY (`MR_MenuId`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='菜单与角色关系表';

#
# Dumping data for table fb_menu_role
#
LOCK TABLES `fb_menu_role` WRITE;
/*!40000 ALTER TABLE `fb_menu_role` DISABLE KEYS */;

/*!40000 ALTER TABLE `fb_menu_role` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table fb_newbase
#

CREATE TABLE `fb_newbase` (
  `NB_Id` int(8) NOT NULL AUTO_INCREMENT PRIMARY KEY, COMMENT '新闻基本表ID',
  `NB_CId` int(2) NOT NULL DEFAULT '0' COMMENT '分类ID',
  `NB_Title` varchar(100) DEFAULT NULL COMMENT '标题',
  `NB_Author` varchar(20) DEFAULT NULL COMMENT '作者',
  `NB_Updatetim` date DEFAULT NULL COMMENT '新闻时间',
  PRIMARY KEY (`NB_Id`)
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

CREATE TABLE `fb_newclass` (
  `NC_Id` int(8) NOT NULL AUTO_INCREMENT PRIMARY KEY, COMMENT '新闻分类ID',
  `NC_FId` int(2) NOT NULL DEFAULT '0' COMMENT '父ID',
  `NC_Name` varchar(50) DEFAULT NULL COMMENT '新闻分类名称',
  `NC_Keywrod` varchar(100) DEFAULT NULL COMMENT '新闻分类的关键字',
  `NC_Remark` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`NC_Id`)
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

CREATE TABLE `fb_newscontent` (
  `NS_NId` int(8) NOT NULL AUTO_INCREMENT COMMENT '新闻基本表ID',
  `NS_KeyWrod` varchar(50) DEFAULT NULL COMMENT '关键字（说明文档）',
  `NS_Content` longtext COMMENT '内容',
  `NS_Remark` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`NS_NId`)
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

CREATE TABLE `fb_role` (
  `R_RoleId` varchar(36) NOT NULL DEFAULT '' COMMENT '角色ID',
  `R_RoleName` varchar(20) DEFAULT NULL COMMENT '角色名称'
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='角色表';

#
# Dumping data for table fb_role
#
LOCK TABLES `fb_role` WRITE;
/*!40000 ALTER TABLE `fb_role` DISABLE KEYS */;

/*!40000 ALTER TABLE `fb_role` ENABLE KEYS */;
UNLOCK TABLES;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
