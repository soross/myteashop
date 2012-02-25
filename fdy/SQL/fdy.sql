/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : fdy

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2012-02-25 15:43:19
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `case`
-- ----------------------------
DROP TABLE IF EXISTS `case`;
CREATE TABLE `case` (
  `id` int(11) NOT NULL auto_increment,
  `case_name` varchar(255) default NULL,
  `case_type` varchar(255) default NULL,
  `case_desc` longtext,
  `case_pic` varchar(255) default NULL,
  `case_url` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `remark` varchar(255) default NULL,
  `case_pic_a` varchar(255) default NULL,
  `case_pic_b` varchar(255) default NULL,
  `case_pic_c` varchar(255) default NULL,
  `case_cust` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of case
-- ----------------------------
INSERT INTO `case` VALUES ('1', '顺虹电子股份', '电子', '<p>深圳顺虹电子股份有限公司从创立伊始，便秉持着&ldquo;诚信、创新、专业、专注&rdquo;的经营理念，并致力于成为全球具有领先技术和核心竞争优势的国际化企业！今天，在竞争日益激烈的电子元器件制造业，顺虹电子必将凭借自己非凡的魄力、卓越的胆识、执着的创新精神、先进的管理体系、雄厚的开发能力、优异的产品质量和完善的服务，开创出属于自己的广阔天地！</p>\r\n<p>深圳市顺虹电子股份有限公司成立于2011年，是一家集研发、生产和销售各类SMD功率电感、插件电感、磁环电感和变压器的高技术型企业，公司已通过ISO9001、ISO14001等相关国际管理体系认证。</p>\r\n<p>公司主要管理者均拥有该行业10年以上的从业经验，并拥有一只从产品研发、生产到销售的完整、高效的管理团队，主要产品有40多个系列，1000多个品种，广泛应用于通讯、计算机、消费类电子、汽车电子、智能化、工业自动化、医疗器械、安防器材及其他新兴产业领域。深圳工厂厂房面积1200平方米，员工200余人。为促进公司更加快速蓬勃的发展，公司已决定在内地兴建大型工业园，内地工业园目前正在建设中。</p>\r\n<p>公司秉承&ldquo;诚信、创新、专业、专注&rdquo;的宗旨，竭诚为全球客户提供优质产品和完善服务！</p>', 'images/case/picNews3259_2011114142449.jpg', 'http://www.sunhomeinc.com', null, null, 'images/case/picNews3259_2011114142449.jpg', 'images/case/picNews3259_2011114142449.jpg', 'images/case/picNews3259_2011114142449.jpg', '深圳顺虹电子股份有限公司');
INSERT INTO `case` VALUES ('2', '海星船舶(中英文)', '船舶', '<p>深圳顺虹电子股份有限公司从创立伊始，便秉持着&ldquo;诚信、创新、专业、专注&rdquo;的经营理念，并致力于成为全球具有领先技术和核心竞争优势的国际化企业！今天，在竞争日益激烈的电子元器件制造业，顺虹电子必将凭借自己非凡的魄力、卓越的胆识、执着的创新精神、先进的管理体系、雄厚的开发能力、优异的产品质量和完善的服务，开创出属于自己的广阔天地！</p>\r\n<p>深圳市顺虹电子股份有限公司成立于2011年，是一家集研发、生产和销售各类SMD功率电感、插件电感、磁环电感和变压器的高技术型企业，公司已通过ISO9001、ISO14001等相关国际管理体系认证。</p>\r\n<p>公司主要管理者均拥有该行业10年以上的从业经验，并拥有一只从产品研发、生产到销售的完整、高效的管理团队，主要产品有40多个系列，1000多个品种，广泛应用于通讯、计算机、消费类电子、汽车电子、智能化、工业自动化、医疗器械、安防器材及其他新兴产业领域。深圳工厂厂房面积1200平方米，员工200余人。为促进公司更加快速蓬勃的发展，公司已决定在内地兴建大型工业园，内地工业园目前正在建设中。</p>\r\n<p>公司秉承&ldquo;诚信、创新、专业、专注&rdquo;的宗旨，竭诚为全球客户提供优质产品和完善服务！</p>', 'images/case/picNews3259_2011114142449.jpg', 'http://www.kingworld.com.cn/cn/common/', null, null, 'images/case/picNews3259_2011114142449.jpg', 'images/case/picNews3259_2011114142449.jpg', 'images/case/picNews3259_2011114142449.jpg', '深圳顺虹电子股份有限公司');
INSERT INTO `case` VALUES ('3', '金活医药集团', '药业', '<p>深圳顺虹电子股份有限公司从创立伊始，便秉持着&ldquo;诚信、创新、专业、专注&rdquo;的经营理念，并致力于成为全球具有领先技术和核心竞争优势的国际化企业！今天，在竞争日益激烈的电子元器件制造业，顺虹电子必将凭借自己非凡的魄力、卓越的胆识、执着的创新精神、先进的管理体系、雄厚的开发能力、优异的产品质量和完善的服务，开创出属于自己的广阔天地！</p>\r\n<p>深圳市顺虹电子股份有限公司成立于2011年，是一家集研发、生产和销售各类SMD功率电感、插件电感、磁环电感和变压器的高技术型企业，公司已通过ISO9001、ISO14001等相关国际管理体系认证。</p>\r\n<p>公司主要管理者均拥有该行业10年以上的从业经验，并拥有一只从产品研发、生产到销售的完整、高效的管理团队，主要产品有40多个系列，1000多个品种，广泛应用于通讯、计算机、消费类电子、汽车电子、智能化、工业自动化、医疗器械、安防器材及其他新兴产业领域。深圳工厂厂房面积1200平方米，员工200余人。为促进公司更加快速蓬勃的发展，公司已决定在内地兴建大型工业园，内地工业园目前正在建设中。</p>\r\n<p>公司秉承&ldquo;诚信、创新、专业、专注&rdquo;的宗旨，竭诚为全球客户提供优质产品和完善服务！</p>', 'images/case/picNews3259_2011114142449.jpg', 'http://www.heysea.com', null, null, 'images/case/picNews3259_2011114142449.jpg', 'images/case/picNews3259_2011114142449.jpg', null, '深圳顺虹电子股份有限公司');
INSERT INTO `case` VALUES ('4', '深圳湾游艇会(中英文)', '船舶', '<p>深圳顺虹电子股份有限公司从创立伊始，便秉持着&ldquo;诚信、创新、专业、专注&rdquo;的经营理念，并致力于成为全球具有领先技术和核心竞争优势的国际化企业！今天，在竞争日益激烈的电子元器件制造业，顺虹电子必将凭借自己非凡的魄力、卓越的胆识、执着的创新精神、先进的管理体系、雄厚的开发能力、优异的产品质量和完善的服务，开创出属于自己的广阔天地！</p>\r\n<p>深圳市顺虹电子股份有限公司成立于2011年，是一家集研发、生产和销售各类SMD功率电感、插件电感、磁环电感和变压器的高技术型企业，公司已通过ISO9001、ISO14001等相关国际管理体系认证。</p>\r\n<p>公司主要管理者均拥有该行业10年以上的从业经验，并拥有一只从产品研发、生产到销售的完整、高效的管理团队，主要产品有40多个系列，1000多个品种，广泛应用于通讯、计算机、消费类电子、汽车电子、智能化、工业自动化、医疗器械、安防器材及其他新兴产业领域。深圳工厂厂房面积1200平方米，员工200余人。为促进公司更加快速蓬勃的发展，公司已决定在内地兴建大型工业园，内地工业园目前正在建设中。</p>\r\n<p>公司秉承&ldquo;诚信、创新、专业、专注&rdquo;的宗旨，竭诚为全球客户提供优质产品和完善服务！</p>', 'images/case/picNews3259_2011114142449.jpg', 'http://www.salesworld.cn', null, null, 'images/case/picNews3259_2011114142449.jpg', 'images/case/picNews3259_2011114142449.jpg', null, '深圳顺虹电子股份有限公司');
INSERT INTO `case` VALUES ('5', '顺络电子', '电子', '<p>深圳顺虹电子股份有限公司从创立伊始，便秉持着&ldquo;诚信、创新、专业、专注&rdquo;的经营理念，并致力于成为全球具有领先技术和核心竞争优势的国际化企业！今天，在竞争日益激烈的电子元器件制造业，顺虹电子必将凭借自己非凡的魄力、卓越的胆识、执着的创新精神、先进的管理体系、雄厚的开发能力、优异的产品质量和完善的服务，开创出属于自己的广阔天地！</p>\r\n<p>深圳市顺虹电子股份有限公司成立于2011年，是一家集研发、生产和销售各类SMD功率电感、插件电感、磁环电感和变压器的高技术型企业，公司已通过ISO9001、ISO14001等相关国际管理体系认证。</p>\r\n<p>公司主要管理者均拥有该行业10年以上的从业经验，并拥有一只从产品研发、生产到销售的完整、高效的管理团队，主要产品有40多个系列，1000多个品种，广泛应用于通讯、计算机、消费类电子、汽车电子、智能化、工业自动化、医疗器械、安防器材及其他新兴产业领域。深圳工厂厂房面积1200平方米，员工200余人。为促进公司更加快速蓬勃的发展，公司已决定在内地兴建大型工业园，内地工业园目前正在建设中。</p>\r\n<p>公司秉承&ldquo;诚信、创新、专业、专注&rdquo;的宗旨，竭诚为全球客户提供优质产品和完善服务！</p>', 'images/case/picNews3259_2011114142449.jpg', 'http://www.chinamarina.com', null, null, 'images/case/picNews3259_2011114142449.jpg', 'images/case/picNews3259_2011114142449.jpg', null, '深圳顺虹电子股份有限公司');
INSERT INTO `case` VALUES ('6', '中国项目网', '互联网', '<p>深圳顺虹电子股份有限公司从创立伊始，便秉持着&ldquo;诚信、创新、专业、专注&rdquo;的经营理念，并致力于成为全球具有领先技术和核心竞争优势的国际化企业！今天，在竞争日益激烈的电子元器件制造业，顺虹电子必将凭借自己非凡的魄力、卓越的胆识、执着的创新精神、先进的管理体系、雄厚的开发能力、优异的产品质量和完善的服务，开创出属于自己的广阔天地！</p>\r\n<p>深圳市顺虹电子股份有限公司成立于2011年，是一家集研发、生产和销售各类SMD功率电感、插件电感、磁环电感和变压器的高技术型企业，公司已通过ISO9001、ISO14001等相关国际管理体系认证。</p>\r\n<p>公司主要管理者均拥有该行业10年以上的从业经验，并拥有一只从产品研发、生产到销售的完整、高效的管理团队，主要产品有40多个系列，1000多个品种，广泛应用于通讯、计算机、消费类电子、汽车电子、智能化、工业自动化、医疗器械、安防器材及其他新兴产业领域。深圳工厂厂房面积1200平方米，员工200余人。为促进公司更加快速蓬勃的发展，公司已决定在内地兴建大型工业园，内地工业园目前正在建设中。</p>\r\n<p>公司秉承&ldquo;诚信、创新、专业、专注&rdquo;的宗旨，竭诚为全球客户提供优质产品和完善服务！</p>', 'images/case/picNews3259_2011114142449.jpg', 'http://www.sunlordinc.com.cn/chinese/common/index.asp', null, null, 'images/case/picNews3259_2011114142449.jpg', 'images/case/picNews3259_2011114142449.jpg', null, '深圳顺虹电子股份有限公司');
INSERT INTO `case` VALUES ('7', '首届中国大学生游艇设计大赛', '互联网', '<p>深圳顺虹电子股份有限公司从创立伊始，便秉持着&ldquo;诚信、创新、专业、专注&rdquo;的经营理念，并致力于成为全球具有领先技术和核心竞争优势的国际化企业！今天，在竞争日益激烈的电子元器件制造业，顺虹电子必将凭借自己非凡的魄力、卓越的胆识、执着的创新精神、先进的管理体系、雄厚的开发能力、优异的产品质量和完善的服务，开创出属于自己的广阔天地！</p>\r\n<p>深圳市顺虹电子股份有限公司成立于2011年，是一家集研发、生产和销售各类SMD功率电感、插件电感、磁环电感和变压器的高技术型企业，公司已通过ISO9001、ISO14001等相关国际管理体系认证。</p>\r\n<p>公司主要管理者均拥有该行业10年以上的从业经验，并拥有一只从产品研发、生产到销售的完整、高效的管理团队，主要产品有40多个系列，1000多个品种，广泛应用于通讯、计算机、消费类电子、汽车电子、智能化、工业自动化、医疗器械、安防器材及其他新兴产业领域。深圳工厂厂房面积1200平方米，员工200余人。为促进公司更加快速蓬勃的发展，公司已决定在内地兴建大型工业园，内地工业园目前正在建设中。</p>\r\n<p>公司秉承&ldquo;诚信、创新、专业、专注&rdquo;的宗旨，竭诚为全球客户提供优质产品和完善服务！</p>', 'images/case/picNews3259_2011114142449.jpg', 'http://www.china-project.com', null, null, 'images/case/picNews3259_2011114142449.jpg', 'images/case/picNews3259_2011114142449.jpg', null, '深圳顺虹电子股份有限公司');
INSERT INTO `case` VALUES ('8', '瑞霖医药', '药业', '<p>深圳顺虹电子股份有限公司从创立伊始，便秉持着&ldquo;诚信、创新、专业、专注&rdquo;的经营理念，并致力于成为全球具有领先技术和核心竞争优势的国际化企业！今天，在竞争日益激烈的电子元器件制造业，顺虹电子必将凭借自己非凡的魄力、卓越的胆识、执着的创新精神、先进的管理体系、雄厚的开发能力、优异的产品质量和完善的服务，开创出属于自己的广阔天地！</p>\r\n<p>深圳市顺虹电子股份有限公司成立于2011年，是一家集研发、生产和销售各类SMD功率电感、插件电感、磁环电感和变压器的高技术型企业，公司已通过ISO9001、ISO14001等相关国际管理体系认证。</p>\r\n<p>公司主要管理者均拥有该行业10年以上的从业经验，并拥有一只从产品研发、生产到销售的完整、高效的管理团队，主要产品有40多个系列，1000多个品种，广泛应用于通讯、计算机、消费类电子、汽车电子、智能化、工业自动化、医疗器械、安防器材及其他新兴产业领域。深圳工厂厂房面积1200平方米，员工200余人。为促进公司更加快速蓬勃的发展，公司已决定在内地兴建大型工业园，内地工业园目前正在建设中。</p>\r\n<p>公司秉承&ldquo;诚信、创新、专业、专注&rdquo;的宗旨，竭诚为全球客户提供优质产品和完善服务！</p>', 'images/case/picNews3259_2011114142449.jpg', 'http://www.yachtsdesign.com', null, null, 'images/case/picNews3259_2011114142449.jpg', null, 'images/case/picNews3259_2011114142449.jpg', '深圳顺虹电子股份有限公司');
INSERT INTO `case` VALUES ('9', '力度品牌顾问', '网络', '<p>深圳顺虹电子股份有限公司从创立伊始，便秉持着&ldquo;诚信、创新、专业、专注&rdquo;的经营理念，并致力于成为全球具有领先技术和核心竞争优势的国际化企业！今天，在竞争日益激烈的电子元器件制造业，顺虹电子必将凭借自己非凡的魄力、卓越的胆识、执着的创新精神、先进的管理体系、雄厚的开发能力、优异的产品质量和完善的服务，开创出属于自己的广阔天地！</p>\r\n<p>深圳市顺虹电子股份有限公司成立于2011年，是一家集研发、生产和销售各类SMD功率电感、插件电感、磁环电感和变压器的高技术型企业，公司已通过ISO9001、ISO14001等相关国际管理体系认证。</p>\r\n<p>公司主要管理者均拥有该行业10年以上的从业经验，并拥有一只从产品研发、生产到销售的完整、高效的管理团队，主要产品有40多个系列，1000多个品种，广泛应用于通讯、计算机、消费类电子、汽车电子、智能化、工业自动化、医疗器械、安防器材及其他新兴产业领域。深圳工厂厂房面积1200平方米，员工200余人。为促进公司更加快速蓬勃的发展，公司已决定在内地兴建大型工业园，内地工业园目前正在建设中。</p>\r\n<p>公司秉承&ldquo;诚信、创新、专业、专注&rdquo;的宗旨，竭诚为全球客户提供优质产品和完善服务！</p>', 'images/case/picNews3259_2011114142449.jpg', 'http://www.ntoptical.com', null, null, 'images/case/picNews3259_2011114142449.jpg', null, 'images/case/picNews3259_2011114142449.jpg', '深圳顺虹电子股份有限公司');
INSERT INTO `case` VALUES ('10', 'China Nature Optical', '网络', '<p>深圳顺虹电子股份有限公司从创立伊始，便秉持着&ldquo;诚信、创新、专业、专注&rdquo;的经营理念，并致力于成为全球具有领先技术和核心竞争优势的国际化企业！今天，在竞争日益激烈的电子元器件制造业，顺虹电子必将凭借自己非凡的魄力、卓越的胆识、执着的创新精神、先进的管理体系、雄厚的开发能力、优异的产品质量和完善的服务，开创出属于自己的广阔天地！</p>\r\n<p>深圳市顺虹电子股份有限公司成立于2011年，是一家集研发、生产和销售各类SMD功率电感、插件电感、磁环电感和变压器的高技术型企业，公司已通过ISO9001、ISO14001等相关国际管理体系认证。</p>\r\n<p>公司主要管理者均拥有该行业10年以上的从业经验，并拥有一只从产品研发、生产到销售的完整、高效的管理团队，主要产品有40多个系列，1000多个品种，广泛应用于通讯、计算机、消费类电子、汽车电子、智能化、工业自动化、医疗器械、安防器材及其他新兴产业领域。深圳工厂厂房面积1200平方米，员工200余人。为促进公司更加快速蓬勃的发展，公司已决定在内地兴建大型工业园，内地工业园目前正在建设中。</p>\r\n<p>公司秉承&ldquo;诚信、创新、专业、专注&rdquo;的宗旨，竭诚为全球客户提供优质产品和完善服务！</p>', 'images/case/picNews3259_2011114142449.jpg', 'http://www.ntoptical.com', null, null, 'images/case/picNews3259_2011114142449.jpg', 'images/case/picNews3259_2011114142449.jpg', 'images/case/picNews3259_2011114142449.jpg', '深圳顺虹电子股份有限公司');

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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=gbk;

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
INSERT INTO `comm_code` VALUES ('32', 'SupportEmail', 'images/List_Icon02.gif', 'huaxin@huaxinservice.com', '售前咨询', null);
INSERT INTO `comm_code` VALUES ('33', 'SupportEmail', 'images/List_Icon02.gif', 'huaxin@huaxinservice.com', '售后服务', null);
INSERT INTO `comm_code` VALUES ('34', 'SupportEmail', 'images/List_Icon02.gif', 'huaxin@huaxinservice.com', '客户投诉', null);
INSERT INTO `comm_code` VALUES ('35', 'SupportIM', 'images/List_Icon03.gif', '67801239', 'QQ在线客服', null);
INSERT INTO `comm_code` VALUES ('36', 'SupportIM', 'images/List_Icon03.gif', '67801239', 'QQ在线客服', null);
INSERT INTO `comm_code` VALUES ('37', 'SupportIM', 'images/List_Icon04.gif', '67801239', 'Msn在线客服', null);

-- ----------------------------
-- Table structure for `file`
-- ----------------------------
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file` (
  `id` int(11) NOT NULL auto_increment,
  `filename` varchar(255) default NULL,
  `filepath` varchar(255) default NULL,
  `filetype` varchar(255) default NULL COMMENT 'CASE PRODUCT',
  `fid` int(11) default NULL,
  `create_date` datetime default NULL,
  `remark` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of file
-- ----------------------------

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
  `picture` varchar(100) character set gbk default NULL,
  `desc` longtext character set gbk,
  `desc2` longtext character set gbk,
  `type` enum('SP','PROD') character set gbk default 'PROD',
  `menu_code` varchar(50) character set gbk default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '解决方案', '-1', 'solution.html', '1', 'home', 'images/content/201109281226250.jpg', '<p>华信服务为帮助客户实现IT价值，依据客户提供的需求和客户实际的IT环境，</p>\r\n<p>组织技术专家、项目管理专家、服务质量保证师进行整体解决方案的讨论和输出。</p>', null, null, 'solution');
INSERT INTO `menu` VALUES ('2', '集成部署解决方案', '1', 'solution_2_info.html', '2', '', 'images/pic/201109200109530.gif', '<p>系统集成的本质是最优化的综合统筹设计，一个大型的综合计算机网络系统，系统集成包括计算机软件、硬件、操作系统技术、数据库技术、网络通讯技术等的集成，以及不同厂家产品选型，搭配的集成，系统集成所要达到的目标-整体性能最优，即所有部件和成分合在一起后不但能工作，而且全系统是低成本的、高效率的、性能匀称的、可扩充性和可维护的系统。华信技术团队不仅具有精通小型机、存储和服务器，包括IBM、DELL、SUN、H3C、CISCO等一线厂商的产品和技术的专业人才，熟悉各类成熟和先进的系统模式和技术解决方案。对于运营商及各类企业用户的业务模式、组织结构等有较好的理解，能够熟练运用现代工程学和ITIL项目管理的方式，对信息系统各个流程进行统一的进程和质量控制，并提供完善的服务。</p>', null, null, 'solution');
INSERT INTO `menu` VALUES ('3', '数据中心外包解决方案', '1', 'solution_3_info.html', '3', '', 'images/pic/201109202343070.gif', '<p>现代大型企业往往由于企业规模的日益壮大，企业为了专注于自己的核心业务，而将其IT系统的全部或\r\n部分外包给专业的信息技术服务公司。常见的数据中心外包涉及信息技术设备的引进和维护、通信网络\r\n的管理、数据中心的运作、信息系统的开发和维护、备份和灾难恢复、信息技术培训等。\r\n外包对于企业的好处是明显的，首先资源在商业战略和企业部门中被重新分配，非IT业务的投资得到加\r\n强，有利于强化企业核心竞争力，获得对市场做出有效反应的能力；同时，有利于信息技术人才不足的\r\n企业获取最好最新的技术，与技术退化有关的难题得到解决；由于是信息技术厂商提供专业化服务，信\r\n息技术服务的效率会得到较大提高，服务的成本也会得到一定的节约。</p> ', null, null, 'solution');
INSERT INTO `menu` VALUES ('4', '网络安全解决方案', '1', 'solution_4_info.html', '4', null, 'images/pic/201109221410030.jpg', '<p>企业网络系统往往受到非法访问、宕机、病毒、负载过高或闲置、硬件故障、配置丢失等各类繁杂问题\r\n的挑战，高成本但低质量的运维结构是目前很多企业面临的主要难题。华信服务拥有丰富的网络系统运\r\n维经验，结合先进的管理思想和专业的服务技术，通过成熟的项目运作方式，向客户提供低成本、高效\r\n率、高满意度的网络安全解决方案，确保客户的网络稳定和安全。\r\n典型的CISCO网络安全解决方案包括：在交换机上使用访问列表过滤流量；实施安全功能；配置\r\nCiscolOS路由器防火墙功能．部署ASA和PIX防火墙设备；AAA安全访问管理；利用多因素验证\r\n技术的安全访问控制：实施基于身份的网络访问控制：应用最新的无线局域网安全解决方案；遵循\r\nCiscoNAC 来执行安全策略；实施lPSecVPN、DMVPN、GETVPN、SSL．VPN和MPt-\r\nSVPN技术：使用网络和主机入侵防御、异常检测和安全监控及相关技术，监控网络活动和安全事件响\r\n应；部署Cisco安全管理器、SDM、ADSM、PDM和IDM等安全管理解决方案等等。</p>  ', null, null, 'solution');
INSERT INTO `menu` VALUES ('5', 'IT运维管理咨询', '1', 'solution_5_info.html', '5', null, 'images/pic/201109252301300.jpg', '<p>IT运维是IT管理的核心和重点部分，华信服务可提供的管理咨询内容包括：<br />\r\n第一、设备管理：对网络设备、服务器设备、操作系统运行状况进行监控，对各种应用支持软件如<br />\r\n数据库、中间件、群件以及各种通用或特定服务的监控管理，如邮件系统、DNS、Web等的监控与管<br />\r\n理；<br />\r\n第二、数据/存储/容灾管理：对系统和业务数据进行统一存储、备份和恢复；<br />\r\n第三、业务管理：包含对企业自身核心业务系统运行情况的监控与管理，<br />\r\n第四、信息安全管理：包括企业安全组织方式、资产分类与控制、人员安全、物理与环境安全、通<br />\r\n信与运营安全、访问控制、业务连续性管理等；</p> ', null, null, 'solution');
INSERT INTO `menu` VALUES ('6', 'IT整合优化咨询', '1', 'solution_6_info.html', '6', null, 'images/pic/201109252303180.jpg', '<p>企业信息化架构由各种关键因素有效组合而成，如何使各时期采购的各厂家的设备有效部署，为企业提供安全稳定的环境是每个运维管理人员必须考虑的问题，华信服务立足与企业自身的发展需求，可对各类系统运行关键性能和指标做出评价，为企业提供整合优化方案</p>  ', null, null, 'solution');
INSERT INTO `menu` VALUES ('7', '系统高可用性架构咨询', '1', 'solution_7_info.html', '7', null, 'images/pic/201109252302010.jpg', '<p>系统&ldquo;高可用性&rdquo;（High Availability）通常用于减少停工时间，保持其服务的高度可用性。华信服<br />\r\n务可针对企业的系统现状，提供可行的高可用性架构方案，为企业运行稳定提供助力。高可用性一般通<br />\r\n过　　负载均衡和主备模式两种方式实现。</p>  ', null, null, 'solution');
INSERT INTO `menu` VALUES ('8', 'IT技术服务', '-1', 'itservice.html', '8', '193', 'images/content/201109281227120.jpg', '华信服务可提供各类IT技术服务，业务范围涵盖传统的硬件维保、整体数据中心迁移、各类技术支撑服务、系统评估和加固等', null, null, 'itservice');
INSERT INTO `menu` VALUES ('9', '维保服务', '8', 'itservice_9_info.html', '10', null, 'images/pic/201109252221390.jpg', '  <p>华信维保服务主要提供IBM、HP、SUN、EMC、DELL、NETAPP、Cisco、H3C等厂商的小型机、存储、PC服务器、网络设备的硬件维保和技术支持服务。<br />\r\n服务内容包括全方位的系统硬件技术支持、系统健康检查、系统软件补丁更新、系统性能优化、漏洞修补、机房值守、系统现状评估、故障定位、高可用性软件，数据库维护优化等。<br />\r\n华信服务对客户的报障电话响应时间小于5分钟。<br />\r\n维保服务中的备件响应等级和工程师现场响应等级主要分为如下几种：</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;<img width=\"523\" height=\"170\" src=\"images/20111013230249.png\" alt=\"\" /></p> ', null, null, 'itservice');
INSERT INTO `menu` VALUES ('10', '数据中心迁移服务', '8', 'itservice_10_info.html', '11', null, 'images/pic/201109202345090.gif', ' <p>数据中心迁移服务主要为客户提供有技术和数据安全保障的迁移服务。针对客户在数据中心迁移过程中的各个环节进行把控，保证迁移过程对客户业务系统的影响程度降到最低。<br />\r\n华信服务团队拥有丰富的数据中心搬迁经验，对搬迁项目管理各关键环节，包括信息采集、机房设计、系统优化、架构调整、物流保障、技术支撑、备份实施、网络割接有一系列规范的实施流程，通过一系列细致入微的准备工作和详实的保障计划，为客户的业务系统迁移项目提供有力的支持和完美的实施。</p>  ', null, null, 'itservice');
INSERT INTO `menu` VALUES ('11', 'IT系统运维服务', '8', 'itservice_11_info.html', '12', null, 'images/pic/201109252227480.jpg', ' <p>华信服务为客户提供IT运维托管服务，在可靠的安全保密制度规范下，全权帮助客户处理的数据中心、中小型信息中心、分支机房等的运维服务。</p>   ', null, null, 'itservice');
INSERT INTO `menu` VALUES ('12', '系统安全加固服务', '8', 'itservice_12_info.html', '13', null, 'images/pic/201109252241490.jpg', ' <p>?UNIX/LINUX系统加固</p>\r\n<p>操作系统平台安全加固，排除各类系统漏洞和安全死角</p>\r\n<div style=\"page-break-after: always;\"><span style=\"display: none;\">&nbsp;</span></div>\r\n<hr />\r\n<p>?数据库加固</p>\r\n<p>SQLserver、Oracle数据库用户/权限/配置文件/系统补丁/关键SQL脚本/日志管理策略等措施设计实施</p>\r\n<div style=\"page-break-after: always;\"><span style=\"display: none;\">&nbsp;</span></div>\r\n<hr />\r\n<p>?网络安全加固</p>\r\n<p>服务控制/网络接入控制/交换路由策略等安全措施设计实施</p>  ', null, null, 'itservice');
INSERT INTO `menu` VALUES ('13', 'Case-by-case技术服务', '8', 'itservice_13_info.html', '14', null, 'images/pic/201110112246390.jpg', '  <p>Case-by-case 技术服务为客户提供单次或短周期的技术支持服务，以帮助客户进行短周期的项目实施。Case-by-case技术服务范围广阔，包含集成安装部署、系统安装调整及优化、网络优化、存储扩容、存储性能优化、数据库优化与升级、数据备份及备份策略指导、故障定位与排除等多项服务。如需获取Case-by-case 服务，您可以通过&ldquo;项目洽谈&rdquo;中的方式跟我们取得联系。</p> ', null, null, 'itservice');
INSERT INTO `menu` VALUES ('14', 'IT培训', '-1', 'training.html', '15', '196', 'images/content/201109281226550.jpg', '<p>华信IT培训部门拥有多名具备丰富的项目管理和实战经验的讲师,并建立了相对完善的实验环境，提供贴近实战的IT培训服务。</p>', null, null, 'training');
INSERT INTO `menu` VALUES ('15', '网络及网络安全培训', '14', 'training_15_info.html', '16', null, 'images/pic/201109252235180.jpg', '<p>为客户提供全方位的网络培训。课程内容涵盖路由、交换、安全、MPLS/VPN、Qos等网络技术，由多名思科认证的CCIE为您授课。</p>   ', null, null, 'training');
INSERT INTO `menu` VALUES ('16', '小型机与存储技术培训', '14', 'training_16_info.html', '17', null, 'images/pic/201109252308150.jpg', '  <p>为客户提供包含AIX/HP-UX/Solaris基础UNIX/LINUX日常管理和维护培训、DS系列、MSA/EVA系列/Clariion系列存储日常管理和维护培训、HACMP/MCSG等系统高可用性配置部署及虚拟化构建等中高级培训。</p> ', null, null, 'training');
INSERT INTO `menu` VALUES ('17', '数据库培训', '14', 'training_17_info.html', '18', null, 'images/pic/201109271330430.jpg', ' <p>为客户提供Oracle数据库从数据库安装入门到数据库的高级优化等全系列培训。由知名的Oracle讲师带领您进入数据库世界。</p>   ', null, null, 'training');
INSERT INTO `menu` VALUES ('18', '产品与备件', '-1', 'product.html', '22', '212', 'images/content/201109281227210.jpg', '凭借与众多IT厂商多年的良好合作，华信取得了多个IT产品的销售资质，可以为您提供高性价比的IT产品销售和售后服务。借助华信服务在IT服务领域多年的经验和高质量的工程师服务团队，客户从华信购买的IT产品将享受原厂保修服务+华信\r\n技术服务，在华信双重服务保障下，您的IT系统将得到强有力的支撑。  ', ' 我们提供有质量保证的IT产品备件销售服务，对所销售备件产品提供高于原厂服务级别的保修服务。\r\n同时我们为客户提供过保产品的故障检测服务和故障维修服务。细致的检测和精湛的维修技术，可以更低成本的保证客户对IT产品的持续使用。避免了IT产品过度采购，节省客户投资，降低IT成本。', null, 'product');
INSERT INTO `menu` VALUES ('19', '网络与视频', '18', 'product_19_info.html', '24', null, 'images/pic/201109252144230.jpg', ' <p>Cisco</p>\r\n<p>H3C</p>\r\n<p>Huawei</p>\r\n<p>Juniper</p>\r\n<p>Polycom</p>\r\n<p>&nbsp;</p>   ', 'Cisco\r\nH3C\r\nHuawei\r\nJuniper\r\nPolycom\r\n&nbsp;	', 'PROD', 'product');
INSERT INTO `menu` VALUES ('20', '小型机存储产品', '18', 'product_20_info.html', '25', null, 'images/pic/201109252146050.gif', '<p>IBM小型机</p>\r\n<p>IBM 存储</p>\r\n<p>EMC存储</p>\r\n<p>HP小机</p>\r\n<p>HP存储</p>\r\n<p>DELL 存储</p>\r\n<p>&nbsp;华赛存储</p>\r\n<p>H3C存储</p>   ', 'IBM小型机\r\nIBM 存储\r\nEMC存储\r\nHP小机\r\nHP存储\r\nDELL 存储\r\n&nbsp;华赛存储\r\nH3C存储	', 'PROD', 'product');
INSERT INTO `menu` VALUES ('21', '服务器产品', '18', 'product_21_info.html', '26', null, 'images/pic/201109252145430.png', '  <p>IBM 服务器</p>\r\n<p>HP 服务器</p>\r\n<p>DELL 服务器</p> ', '				IBM 服务器\r\nHP 服务器\r\nDELL 服务器', 'PROD', 'product');
INSERT INTO `menu` VALUES ('22', '备件销售', '18', 'product_22_info.html', '28', null, 'images/pic/201109202348230.gif', ' <p>我们提供有质量保证的IT产品备件销售服务，对所销售备件产品提供高于原厂服务级别的保修服务。</p>  ', null, 'SP', 'product');
INSERT INTO `menu` VALUES ('23', '备件维修', '18', 'product_23_info.html', '30', null, 'images/pic/201110100943040.jpg', '  <p>我们为客户提供过保产品的故障检测服务和故障维修服务。细致的检测和精湛的维修技术，可以更低成本的保证客户对IT产品的持续使用。避免了IT产品过度采购，节省客户投资，降低IT成本。</p>   ', null, 'SP', 'product');
INSERT INTO `menu` VALUES ('24', '技术支持', '-1', 'support.html', '50', '197', null, null, null, null, 'support');
INSERT INTO `menu` VALUES ('25', '项目洽谈', '-1', 'project.html', '66', '265', null, null, null, null, 'project');

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `content` longtext,
  `author` varchar(50) default NULL,
  `src` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `typeid` int(11) default NULL,
  `remark` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '测试测试测试', '测试测试测试', '测试', '测试', '2012-02-25 13:47:01', '2', null);
INSERT INTO `news` VALUES ('2', '测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试', '测试测试测试', '测试测试测试', '2012-02-25 13:47:22', '3', null);
INSERT INTO `news` VALUES ('3', '测试测试测试', '测试测试测试', '测试测试测试', '测试测试测试', '2012-02-25 13:47:24', '3', null);
