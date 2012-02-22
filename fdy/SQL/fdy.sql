/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : fdy

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2012-02-22 17:56:01
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
  `fkid` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of comm_code
-- ----------------------------
INSERT INTO `comm_code` VALUES ('1', '法律声明', 'LegalNotices', 'LegalNotices', null, null);
INSERT INTO `comm_code` VALUES ('2', '隐私保护', 'PrivacyProtection', 'PrivacyProtection', null, null);
INSERT INTO `comm_code` VALUES ('3', '泛地缘简介', '创建可用性高与高性价比并重且与企业业务及发展相符的可用性平台，全面提升企业效益和竞争力一直是我们…', 'About', null, null);
INSERT INTO `comm_code` VALUES ('4', '泛地缘优势', '我们始终坚持可用性设计原则，协调性能与价格的可比性，强调人性化设计理念，准确把…', 'Superiority ', null, null);
INSERT INTO `comm_code` VALUES ('5', '合作伙伴', '泛地缘科技经过在IT服务领域多年的积累，同各大厂商，集成商，IT服务友商建立了良好的合作伙伴…', 'Partner', null, null);
INSERT INTO `comm_code` VALUES ('6', 'Index_AD', '1', 'images/ad/201109281154581.jpg', null, null);
INSERT INTO `comm_code` VALUES ('7', 'Index_AD', '2', 'images/ad/201109281154452.jpg', null, null);
INSERT INTO `comm_code` VALUES ('8', 'Index_AD', '3', 'images/ad/201109281155123.jpg', null, null);
INSERT INTO `comm_code` VALUES ('11', '泛地缘简介', '<p>&ldquo;泛地缘科技&rdquo;是一个融创意、软件、硬件、集成于一体的专业IT服务商，业务内容涉及软件部署、硬件架构等。</p>\\r\\n<p>我们有着丰富的实践经验、精良的专业技术和高度的敬业精神，在网络服务陷入白热化竞争的今天，我们依然遵循可用性原则，坚持为企业搭建可用性高、成本低的自动化系统。</p>\\r\\n<p>我们的专业工程师在各项集成技能上均有超卓的表现。在每一个重要的工序上，我们均会和您有紧密的联系，务使每一个细节均能尽善尽美。</p>', null, null, '3');
INSERT INTO `comm_code` VALUES ('12', '泛地缘文化', '<p>积极主动追求卓越 <br />泛地缘科技从不以现有的成就自满，精益求精是每位成员面对自己工作时的基本态度，也是泛地缘科技得以不断成长的原动力。</p>\r\n<p>重视团队合作精神 <br />泛地缘科技以专业团队来完成每位客户的托付，团队成员彼此间的默契与合作精神是泛地缘科技赢取客户信任以及成功的重要关键因素。</p>\r\n<p>客户服务导向 <br />泛地缘科技所提供的产品及服务，向来以协助客户提升网络形象及竞争优势为核心宗旨，不仅是解决客户问题的好伙伴，更是支持客户成长的忠诚力量。</p>\r\n<p>勇于面对市场挑战 <br />泛地缘科技兢兢业业地面对市场变化，以专业素养、坚定的毅力以及迅速的应变能力，面对市场不断的变化与挑战。</p>', null, null, '3');
INSERT INTO `comm_code` VALUES ('13', '服务宗旨', '<p>\"更高、更快、更贴心\" 是我们的服务宗旨，也是對客户的承诺。</p>\r\n<p>「更高」 <br />我们的专业工程师及富有经验的架构师均有十足信心为客户提供高品质的系统集成建设服务，让客户的投入物超所值！</p>\r\n<p>「更快」 <br />急客户之所急，出色而高效率的完成客户交付的任务。</p>\r\n<p>「更贴心」 <br />凭借我们丰富的经验，针对不同客户不同需求，给予专业意见配合他们的经营手法，用我们的创意及技术诚意地为每一位客户创建出贴心的自动化系统，促使企业的高效运作。</p>', null, null, '3');
INSERT INTO `comm_code` VALUES ('14', '优秀的信息化管理平台', '<p>先进的工作流系统</p>\r\n<p>标准的项目管理信息系统</p>\r\n<p>透明的备件查询系统</p>\r\n<p>在线的客户服务档案系统</p>\r\n<p>开放的、高质量的文档共享平台</p>', null, null, '4');
INSERT INTO `comm_code` VALUES ('15', '高水平的工程师服务团队', '<p>泛地缘科技工程师团队人数众多、专业化水平高，由泛地缘科技项目部门统一调度。工程师均接受泛地缘科技内部培训并均持有原厂技术认证。其中80%以上的工程师来自于泛地缘科技内部的工程师培养计划，在泛地缘科技经历大量的项目磨练，具备丰富技术支持经验和项目实施经验。</p>', null, null, '4');
INSERT INTO `comm_code` VALUES ('16', '经验丰富的项目管理团队', '<p>泛地缘科技项目管理团队是公司的又一核心团队，负责泛地缘科技所有项目的资源调度，进度计划安排，项目风险监控，项目质量保证等项目管理事务，凭借泛地缘科技一直以来规范的项目管理模式，泛地缘科技项目管理团队的丰富项目经验和项目管理能力饱受客户赞赏。</p>', null, null, '4');
INSERT INTO `comm_code` VALUES ('17', '精英云集的泛地缘智库', '<p>为了融合多方面的优势资源，发挥高端人才的价值，泛地缘科技成立了泛地缘智库。泛地缘智库成员均为各个领域的专家、精英、顶尖人才。泛地缘智库的团队智慧为泛地缘服务提供了强有力的专业技术保障和高含金量的运营、管理及发展建议。 泛地缘智库目前已经引入了30多名行业专家，其中12名泛地缘工程师经过严格审核后，加入了泛地缘智库。泛地缘智库成员为泛地缘客户提供必要的免费咨询，以让泛地缘服务可以更多的了解客户在工作中遇到的问题和困惑，通过简洁的咨询为客户问题的解决提供有效帮助。泛地缘智库不断引入高端人才，力求创造一个良好的生态环境，为智库成员在技术、管理、经营等领域提供一个良好的交流圈和成长平台。</p>', null, null, '4');
INSERT INTO `comm_code` VALUES ('18', '良好的合作企业积累', '<p>泛地缘科技经过在IT服务领域多年的积累，同各大厂商，集成商，IT服务友商建立了良好的合作伙伴关系。泛地缘科技坚持服务客户，服务伙伴的理念，与广大合作伙伴一起共同发展。</p>', null, null, '5');
INSERT INTO `comm_code` VALUES ('19', 'PartnerLogo', null, 'images/partner/10012_130_40.png', null, null);
INSERT INTO `comm_code` VALUES ('20', 'PartnerLogo', null, 'images/partner/10013_130_40.png', null, null);
INSERT INTO `comm_code` VALUES ('21', 'PartnerLogo', null, 'images/partner/10050_130_40.png', null, null);
INSERT INTO `comm_code` VALUES ('22', 'PartnerLogo', null, 'images/partner/10096_130_40.png', null, null);
INSERT INTO `comm_code` VALUES ('23', 'PartnerLogo', null, 'images/partner/10097_130_40.png', null, null);
INSERT INTO `comm_code` VALUES ('24', 'PartnerLogo', null, 'images/partner/10183_130_40.png', null, null);
INSERT INTO `comm_code` VALUES ('25', 'PartnerLogo', null, 'images/partner/10012_130_40.png', null, null);
INSERT INTO `comm_code` VALUES ('26', 'PartnerLogo', null, 'images/partner/10011_130_40.png', null, null);
INSERT INTO `comm_code` VALUES ('27', 'PartnerLogo', null, 'images/partner/10096_130_40.png', null, null);
INSERT INTO `comm_code` VALUES ('28', 'PartnerLogo', null, 'images/partner/10050_130_40.png', null, null);
INSERT INTO `comm_code` VALUES ('29', '联系方式', null, 'Contact', null, null);
INSERT INTO `comm_code` VALUES ('30', '[福州]-福州泛地缘技术有限公司', '4000服务热线：4000-480-580<br />\r\n				泛地缘科技网站：www.xxxxx.com<br />\r\n				泛地缘科技邮箱：xxxxx@xxxxx.com<br />\r\n				公司地址：福建福州市台江区五一路大利嘉城', null, null, '29');
INSERT INTO `comm_code` VALUES ('31', '[厦门]-福州泛地缘技术有限公司厦门分公司', '4000服务热线：4000-480-580<br />\r\n				泛地缘科技网站：www.xxxxx.com<br />\r\n				泛地缘科技邮箱：xxxxx@xxxxx.com<br />\r\n				公司地址：福建福州市台江区五一路大利嘉城', null, null, '29');

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
