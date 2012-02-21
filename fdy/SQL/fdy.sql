/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : fdy

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2012-02-21 17:05:49
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `comm_code`
-- ----------------------------
DROP TABLE IF EXISTS `comm_code`;
CREATE TABLE `comm_code` (
  `id` int(11) NOT NULL auto_increment,
  `comm_type` varchar(100) default NULL,
  `comm_value` longtext,
  `comm_code` varchar(100) default NULL,
  `remark` longtext,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of comm_code
-- ----------------------------
INSERT INTO `comm_code` VALUES ('1', '法律声明', 'LegalNotices', '<p class=\"MsoNormal\" align=\"left\" style=\"text-align: left; line-height: 16.5pt; margin: 0cm 0cm 0pt;', null);
INSERT INTO `comm_code` VALUES ('2', '隐私保护', 'PrivacyProtection', '<p class=\"MsoNormal\" align=\"left\" style=\"text-align: left; line-height: 16.5pt; margin: 0cm 0cm 0p', null);
INSERT INTO `comm_code` VALUES ('3', '关于泛地缘', 'AboutUs', '福州华信众盈信息技术有限公司致力于为客户提供解决方案、IT咨询、IT技术服务、IT培训等专业服务，并从事产品销售、备件销售与维修业务。服务领域涵盖小型机、存储、主机、网络设备、数据库、系统及软件等。', null);
INSERT INTO `comm_code` VALUES ('4', '泛地缘优势', 'Superiority', '<div class=\"Section0\" style=\"layout-grid:  15.6pt none\"><br />\r\n<p style=\"text-align: center\"><span ', null);
INSERT INTO `comm_code` VALUES ('5', '合作伙伴', 'CooperativePartner', '<p>华信经过在IT服务领域多年的积累，同各大厂商，集成商，IT服务友商建立了良好的合作伙伴关系。华信服务坚持服务客户，服务伙伴的理念，与广大合作伙伴一起共同发展。</p> ', null);
INSERT INTO `comm_code` VALUES ('6', 'Index_AD', '1', 'images/ad/201109281154581.jpg', null);
INSERT INTO `comm_code` VALUES ('7', 'Index_AD', '2', 'images/ad/201109281154452.jpg', null);
INSERT INTO `comm_code` VALUES ('8', 'Index_AD', '3', 'images/ad/201109281155123.jpg', null);

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) character set gbk default NULL,
  `pid` int(11) default NULL,
  `url` varchar(100) character set gbk default NULL,
  `seq` int(11) default NULL,
  `remark` varchar(255) character set gbk default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '解决方案', '-1', 'solution.php', '1', 'home');
INSERT INTO `menu` VALUES ('2', '集成部署解决方案', '1', null, '2', '');
INSERT INTO `menu` VALUES ('3', '数据中心外包解决方案', '1', null, '3', '');
INSERT INTO `menu` VALUES ('4', '网络安全解决方案', '1', null, '4', null);
INSERT INTO `menu` VALUES ('5', 'IT运维管理咨询', '1', null, '5', null);
INSERT INTO `menu` VALUES ('6', 'IT整合优化咨询', '1', null, '6', null);
INSERT INTO `menu` VALUES ('7', '系统高可用性架构咨询', '1', null, '7', null);
INSERT INTO `menu` VALUES ('8', 'IT技术服务', '-1', 'itservice.php', '8', '193');
INSERT INTO `menu` VALUES ('9', '维保服务', '8', null, '10', null);
INSERT INTO `menu` VALUES ('10', '数据中心迁移服务', '8', null, '11', null);
INSERT INTO `menu` VALUES ('11', 'IT系统运维服务', '8', null, '12', null);
INSERT INTO `menu` VALUES ('12', '系统安全加固服务', '8', null, '13', null);
INSERT INTO `menu` VALUES ('13', 'Case-by-case技术服务', '8', null, '14', null);
INSERT INTO `menu` VALUES ('14', 'IT培训', '-1', 'training.php', '15', '196');
INSERT INTO `menu` VALUES ('15', '网络及网络安全培训', '14', null, '16', null);
INSERT INTO `menu` VALUES ('16', '小型机与存储技术培训', '14', null, '17', null);
INSERT INTO `menu` VALUES ('17', '数据库培训', '14', null, '18', null);
INSERT INTO `menu` VALUES ('18', '产品与备件', '-1', 'product.php', '22', '212');
INSERT INTO `menu` VALUES ('19', '网络与视频', '18', null, '24', null);
INSERT INTO `menu` VALUES ('20', '小型机存储产品', '18', null, '25', null);
INSERT INTO `menu` VALUES ('21', '服务器产品', '18', null, '26', null);
INSERT INTO `menu` VALUES ('22', '备件销售', '18', null, '28', null);
INSERT INTO `menu` VALUES ('23', '备件维修', '18', null, '30', null);
INSERT INTO `menu` VALUES ('24', '技术支持', '-1', 'support.php', '50', '197');
INSERT INTO `menu` VALUES ('25', '项目洽谈', '-1', 'project.php', '66', '265');
