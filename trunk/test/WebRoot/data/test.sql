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
  `A_UserId` varchar(36) NOT NULL DEFAULT '' COMMENT '�û���ID',
  `A_UserName` varchar(20) DEFAULT NULL COMMENT '�û���',
  `A_PassWord` varchar(16) DEFAULT NULL COMMENT '����'
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='�����';

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
  `AR_AdminId` varchar(36) NOT NULL DEFAULT '' COMMENT '����ԱID',
  `AR_RoleId` varchar(36) NOT NULL DEFAULT '' COMMENT '��ɫID',
  PRIMARY KEY (`AR_AdminId`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='����Ա���ɫ��ϵ��';

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
  `M_MenuId` varchar(36) NOT NULL DEFAULT '' COMMENT '�˵�ID',
  `M_MenuName` varchar(20) DEFAULT NULL COMMENT '�˵�����',
  `M_MenuNumber` varchar(20) DEFAULT NULL COMMENT '�˵����',
  `M_MenuParent` varchar(36) DEFAULT NULL COMMENT '�˵�����',
  `M_MenuUrl` varchar(100) DEFAULT NULL COMMENT '�˵�url',
  `M_MenuType` int(2) DEFAULT NULL COMMENT '�˵�����',
  `M_MenuIsDel` int(1) DEFAULT NULL COMMENT '�˵�αɾ��'
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='�˵���';

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
  `MR_MenuId` varchar(36) NOT NULL DEFAULT '' COMMENT '�˵�ID',
  `MR_RoleId` varchar(36) NOT NULL DEFAULT '' COMMENT '��ɫID',
  PRIMARY KEY (`MR_MenuId`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='�˵����ɫ��ϵ��';

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
  `NB_Id` int(8) NOT NULL AUTO_INCREMENT COMMENT '���Ż�����ID',
  `NB_CId` int(2) NOT NULL DEFAULT '0' COMMENT '����ID',
  `NB_Title` varchar(100) DEFAULT NULL COMMENT '����',
  `NB_Author` varchar(20) DEFAULT NULL COMMENT '����',
  `NB_Updatetim` date DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY (`NB_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='���Ż�����';

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
  `NC_Id` int(8) NOT NULL AUTO_INCREMENT COMMENT '���ŷ���ID',
  `NC_FId` int(2) NOT NULL DEFAULT '0' COMMENT '��ID',
  `NC_Name` varchar(50) DEFAULT NULL COMMENT '���ŷ�������',
  `NC_Keywrod` varchar(100) DEFAULT NULL COMMENT '���ŷ���Ĺؼ���',
  `NC_Remark` varchar(100) DEFAULT NULL COMMENT '��ע',
  PRIMARY KEY (`NC_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='���ŷ����';

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
  `NS_NId` int(8) NOT NULL AUTO_INCREMENT COMMENT '���Ż�����ID',
  `NS_KeyWrod` varchar(50) DEFAULT NULL COMMENT '�ؼ��֣�˵���ĵ���',
  `NS_Content` longtext COMMENT '����',
  `NS_Remark` varchar(50) DEFAULT NULL COMMENT '��ע',
  PRIMARY KEY (`NS_NId`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='�������ݱ�';

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
  `R_RoleId` varchar(36) NOT NULL DEFAULT '' COMMENT '��ɫID',
  `R_RoleName` varchar(20) DEFAULT NULL COMMENT '��ɫ����'
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='��ɫ��';

#
# Dumping data for table fb_role
#
LOCK TABLES `fb_role` WRITE;
/*!40000 ALTER TABLE `fb_role` DISABLE KEYS */;

/*!40000 ALTER TABLE `fb_role` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table fb_advertising
#

CREATE TABLE `fb_advertising` (
  `advertising
_Id` int(11) NOT NULL AUTO_INCREMENT,
  `advertising
_title` varchar(255) DEFAULT NULL COMMENT '������',
  `advertising
_URL` varchar(255) DEFAULT NULL COMMENT '���ͼƬ·��',
  `position
_id` int(11) DEFAULT NULL COMMENT 'λ�ñ��',
  `advertising
_addtime` date DEFAULT NULL COMMENT '�������ʱ��',
  `advertising
_endtime` date DEFAULT NULL COMMENT '���ʧЧʱ��',
  `advertising
_state` varchar(255) DEFAULT 'Y' COMMENT '����״̬',
  PRIMARY KEY (`advertising
_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='�����Ϣ';


#
# Dumping data for table fb_advertising
#
LOCK TABLES `fb_advertising` WRITE;
/*!40000 ALTER TABLE `fb_advertising` DISABLE KEYS */;

/*!40000 ALTER TABLE `fb_advertising` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table fb_position
#

CREATE TABLE `fb_position` (
  `position
_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'λ�ñ��',
  `position
_markers` varchar(255) DEFAULT NULL COMMENT 'λ�ñ��',
  `position
_state` varchar(255) DEFAULT NULL COMMENT '����״̬',
  `position
_display` varchar(255) DEFAULT NULL COMMENT '��ʾ��ʽ',
  PRIMARY KEY (`position
_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='���λ�ñ�';



#
# Dumping data for table fb_position
#
LOCK TABLES `fb_position` WRITE;
/*!40000 ALTER TABLE `fb_position` DISABLE KEYS */;

/*!40000 ALTER TABLE `fb_position` ENABLE KEYS */;
UNLOCK TABLES;


/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
