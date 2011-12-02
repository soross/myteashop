/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : nihongdeng

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2011-12-02 17:31:53
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `comm_code`
-- ----------------------------
DROP TABLE IF EXISTS `comm_code`;
CREATE TABLE `comm_code` (
  `type_name` varchar(20) default NULL,
  `type_code` varchar(255) default NULL,
  `type_value_zh_cn` longtext,
  `type_value_en` longblob,
  `remark` varchar(255) default NULL,
  `id` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of comm_code
-- ----------------------------
INSERT INTO `comm_code` VALUES ('ButtomNavInfo', null, '<a href=\"page/html/company.php\" target=\"_self\">关于我们</a>|\r\n\r\n<a href=\"page/contact/contact.php\" target=\"_self\">联系方式</a>|\r\n\r\n<a href=\"page/contact/feedback.php\" target=\"_self\">信息反馈</a>|\r\n\r\n<a href=\"page/contact/advise.php\" target=\"_self\">投诉建议</a>|\r\n\r\n<a href=\"job/index.php\" target=\"_self\">诚聘英才</a>|\r\n\r\n<a href=\"advs/link/\" target=\"_self\">友情链接</a>|', null, null, '1');
INSERT INTO `comm_code` VALUES ('ButtomCopyInfo', null, '版权所有 Copyright(C)2009-2010 深圳市琢典标识有限公司', null, null, '2');
INSERT INTO `comm_code` VALUES ('ContactUsInfo', null, '地 址：杭州市莫干山路2168号<br />电 话：0571-98765432<br />联系人：杨军(经理)<br />手 机：15887654321<br />网址：www.aaaa.com<br />邮 箱：bos@mail.com<br />地 址：杭州市莫干山路2168号<br />电 话：0571-98765432<br />联系人：杨军(经理)<br />手 机：15887654321<br />网址：www.aaaa.com<br />邮 箱：bos@mail.com<br />邮 编：300009', null, null, '3');
INSERT INTO `comm_code` VALUES ('AboutUsInfo', null, '<img style=\"BORDER-RIGHT: #f4f4f4 1px solid; BORDER-TOP: #f4f4f4 1px solid; MARGIN-TOP: 4px; BORDER-LEFT: #f4f4f4 1px solid; MARGIN-RIGHT: 17px; BORDER-BOTTOM: #f4f4f4 1px solid\" src=\"images/201001261264475283078.gif\" align=left border=0 />\r\n<font style=\"FONT-SIZE: 12px; COLOR: #000000; LINE-HEIGHT: 184%; FONT-FAMILY: Verdana,Arial,Helvetica,sans-serif\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;杭州市某某防火材料有限公司是从事电缆、建筑、核工业用防火系列产品的开发、设计、生产、销售和安装的一家专业公司。几年来，本公司与消防科研所等科研单位协作共同研制开发了系列防火产品，均获得公安部消防产品合格评定中心的型式认可，并通过国家指定的检测机构型式检验，产品被广泛应用厂电力、石化、冶金、化工、邮电、建筑等行业，销售遍及国内各省市。本公司已通过</font>', null, null, '4');

-- ----------------------------
-- Table structure for `cp`
-- ----------------------------
DROP TABLE IF EXISTS `cp`;
CREATE TABLE `cp` (
  `id` int(11) NOT NULL auto_increment,
  `cp_info_type_zh_cn` varchar(255) character set gbk default NULL,
  `cp_info_type_en` varchar(255) character set gbk default NULL,
  `cp_info_value_zh_cn` longtext character set gbk,
  `cp_info_value_en` longtext character set gbk,
  `remark` varchar(255) character set gbk default NULL,
  `seq` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cp
-- ----------------------------
INSERT INTO `cp` VALUES ('1', '公司简介', 'AboutUs', '<img style=\"FLOAT: left; MARGIN: 0px 31px 10px 0px\" alt=\"\" src=\"images/201001111263188232703.gif\" border=0 /><span style=\"FONT-SIZE: 12px; LINE-HEIGHT: 170%; FONT-FAMILY: Verdana,Arial,Helvetica,sans-serif\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;杭州市某某防火材料有限公司是从事电缆、建筑、核工业用防火系列产品的开发、设计、生产、销售和安装的一家专业公司。几年来，本公司与消防科研所等科研单位协作共同研制开发了系列防火产品，均获得公安部消防产品合格评定中心的型式认可，并通过国家指定的检测机构型式检验，产品被广泛应用厂电力、石化、冶金、化工、邮电、建筑等行业，销售遍及国内各省市。本公司已通过IS09001—2000质量体系认证，拥有一支专业的施工队伍，具有很强的技术开发能力和完善的服务体系。本公司本着“以人为本、科技领先”的经营理念，以“科学是第一生产力，注重质量，诚信为本”为宗旨，热忱欢迎您的光临和指导，并主希望我们的产品和售后服务能赢得您的信任、支持和青睐。从事电缆、建筑、核工业用防火系列产品的开发、设计、生产、销售和安装的一家专业公司。<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 几年来，本公司与消防科研所等科研单位协作共同研制开发了系列防火产品，均获得公安部消防产品合格评定中心的型式认可，并通过国家指定的检测机构型式检验，产品被广泛应用厂电力、石化、冶金、化工、邮电、建筑等行业，销售遍及国内各省市。从事电缆、建筑、核工业用防火系列产品的开发、设计、生产、销售和安装的一家专业公司。几年来，本公司与消防科研所等科研单位协作共同研制开发了系列防火产品，均获得公安部消防产品合格评定中心的型式认可，并通过国家指定的检测机构型式检验，产品被广泛应用厂电力、石化、冶金、化工、邮电、建筑等行业，销售遍及国内各省市。本公司已通过IS09001—2000质量体系认证，拥有一支专业的施工队伍，具有很强的技术开发能力和完善的服务体系。本公司本着“以人为本、科技领先”的经营理念，以“科学是第一生产力，注重质量，诚信为本”为宗旨，热忱欢迎您的光临和指导，并主希望我们的产品和售后服务能赢得您的信任、支持和青睐。</span>', null, 'AboutUs', '1');
INSERT INTO `cp` VALUES ('2', '公司文化', 'CorporateCuture', '<span style=\"FONT-SIZE: 12px; LINE-HEIGHT: 170%; FONT-FAMILY: Verdana,Arial,Helvetica,sans-serif\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 自信、自律，自立、自强客户：为客户提供高质量和最大价值的专业化产品和服务，以真诚和实力赢得客户的理解、尊重和支持。员工：信任员工的努力和奉献，承认员工的成就并提供相应回报，为员工创造良好的工作环境和发展前景。市场：为客户降低采购成本和风险，为客户投资提供切实保障。 发展：追求永续发展的目标，并把它建立在客户满意的基础上。企业精神：自信、自律，自立、自强客户：为客户提供高质量和最大价值的专业化产品和服务，以真诚和实力赢得客户的理解、尊重和支持。员工：信任员工的努力和奉献，承认员工的成就并提供相应回报，为员工创造良好的工作环境和发展前景。市场：为客户降低采购成本和风险，为客户投资提供切实保障。<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 发展：追求永续发展的目标，并把它建立在客户满意的基础上。自信、自律，自立、自强客户：为客户提供高质量和最大价值的专业化产品和服务，以真诚和实力赢得客户的理解、尊重和支持。员工：信任员工的努力和奉献，承认员工的成就并提供相应回报，为员工创造良好的工作环境和发展前景。市场：为客户降低采购成本和风险，为客户投资提供切实保障。 发展：追求永续发展的目标，并把它建立在客户满意的基础上。企业精神：自信、自律，自立、自强客户：为客户提供高质量和最大价值的专业化产品和服务，以真诚和实力赢得客户的理解、尊重和支持。员工：信任员工的努力和奉献，承认员工的成就并提供相应回报，为员工创造良好的工作环境和发展前景。市场：为客户降低采购成本和风险，为客户投资提供切实保障。 发展：追求永续发展的目标，并把它建立在客户满意的基础上。</span>', null, 'Culture', '2');
INSERT INTO `cp` VALUES ('3', '荣誉资质', 'Honour', null, null, 'Honour', '3');
INSERT INTO `cp` VALUES ('4', '设备环境', 'DeviceContext', null, null, 'DeviceContext', '4');
INSERT INTO `cp` VALUES ('5', '领导致辞', 'LeadWord', '<span style=\"FONT-SIZE: 12px; LINE-HEIGHT: 170%; FONT-FAMILY: Verdana,Arial,Helvetica,sans-serif\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我公司自建立以来，承蒙各生产厂家和客户朋友鼎立相助，公司规模逐渐壮大，取得了较好的成绩。在此，我谨代表全体同仁发自内心地相各位致以深深的谢意！常言道：十年修得同船渡。相逢是缘，相交更是缘。公司全体员工在这十余年的路途上，本着“与人方便，自己方便”的古训为人做事，时刻与各厂家和用户朋友亲密相处，精诚合作、风雨同舟、甘苦共享。我们深以与你们同行共渡为容！我们更看重和珍惜彼此间的事业和友情。无论何时何地，我们全体员工都会不遗余力地投入到工作之中，竭尽所能为各位朋友提供满意的服务,以达到我们彼此的共赢和多赢。朋友们：闲时请来公司做客忙时电话短信问候。承蒙各生产厂家和客户朋友鼎立相助，公司规模逐渐壮大，取得了较好的成绩。在此，我谨代表全体同仁发自内心地相各位致以深深的谢意！常言道：十年修得同船渡。相逢是缘，相交更是缘。公司全体员工在这十余年的路途上，本着“与人方便，自己方便”的古训为人做事，时刻与各厂家和用户朋友亲密相处，精诚合作、风雨同舟、甘苦共享。我们深以与你们同行共渡为容！我们更看重和珍惜彼此间的事业和友情。无论何时何地，我们全体员工都会不遗余力地投入到工作之中，竭尽所能为各位朋友提供满意的服务,以达到我们彼此的共赢和多赢。朋友们：闲时请来公司做客忙时电话短信问候。</span>', null, 'Word', '5');
INSERT INTO `cp` VALUES ('6', '发展历程', 'EnterpriseHistory', '<span style=\"FONT-SIZE: 12px; LINE-HEIGHT: 170%; FONT-FAMILY: Verdana,Arial,Helvetica,sans-serif\"><span style=\"FONT-SIZE: 12px; LINE-HEIGHT: 170%; FONT-FAMILY: Verdana,Arial,Helvetica,sans-serif\">1989年5月 公司成立<br />1999年5月<br />2000年5月<br />1998年5月<br />1999年5月<br />2000年5月 通过TS16949：2002质量运行体系认证<br />1998年5月<br />1999年5月</span><span style=\"FONT-SIZE: 12px; LINE-HEIGHT: 170%; FONT-FAMILY: Verdana,Arial,Helvetica,sans-serif\"><span style=\"FONT-SIZE: 12px; LINE-HEIGHT: 170%; FONT-FAMILY: Verdana,Arial,Helvetica,sans-serif\"><br />1999年5月<br />2000年5月<br />1998年5月<br />1999年5月<br />2000年5月 通过TS16949：2002质量运行体系认证<br />1998年5月<br />1999年5月</span></span>', null, 'History', '6');
INSERT INTO `cp` VALUES ('7', '联系我们', 'ContactUs', '<b>深圳市琢典标识有限公司</b><br />\r\n电话：0755-26798495<br />\r\n联系人：熊雄<br />\r\n手机：18665859087<br />\r\n邮箱：&nbsp;<br />\r\n邮编：518000<br />\r\n地址：深圳市龙岗区坂田上雪科技工业城一路二号四栋一楼<br />', null, 'ContactUs', null);
INSERT INTO `cp` VALUES ('8', null, null, null, null, 'Honour', null);
INSERT INTO `cp` VALUES ('9', null, null, null, null, 'Honour', null);
INSERT INTO `cp` VALUES ('10', null, null, null, null, 'DeviceContext', null);
INSERT INTO `cp` VALUES ('11', null, null, null, null, 'DeviceContext', null);
INSERT INTO `cp` VALUES ('12', null, null, null, null, 'DeviceContext', null);

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL auto_increment,
  `menu_name_zh_cn` varchar(100) default NULL,
  `menu_name_en` varchar(100) default NULL,
  `menu_index` int(2) default NULL,
  `menu_url` varchar(100) default NULL,
  `remark` varchar(255) default NULL,
  `menu_type` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '网站首页', 'Home Page', '10', 'index.php', null, 'PublicTopNav');
INSERT INTO `menu` VALUES ('2', '关于琢典', 'About Us', '20', 'aboutus.php', null, 'PublicTopNav');
INSERT INTO `menu` VALUES ('3', '公司动态', 'Event', '30', 'news.php?type=1', null, 'PublicTopNav');
INSERT INTO `menu` VALUES ('4', '产品中心', 'Product', '40', 'product.php', null, 'PublicTopNav');
INSERT INTO `menu` VALUES ('5', '新闻中心', 'News', '50', 'news.php', null, 'PublicTopNav');
INSERT INTO `menu` VALUES ('6', '工程案例', 'Case', '60', 'case.php', null, 'PublicTopNav');
INSERT INTO `menu` VALUES ('7', '诚聘英才', 'Join Us', '70', 'job.php', null, 'PublicTopNav');
INSERT INTO `menu` VALUES ('8', '联系我们', 'Contact Us', '80', 'contactus.php', null, 'PublicTopNav');

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `type_id` int(11) default NULL,
  `author` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `content` longtext,
  `lang` varchar(5) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_news_type` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '外墙外保温防火材料再次成为举世瞩目的焦点', '1', null, '2011-11-22 12:34:29', null, 'zh_cn');
INSERT INTO `news` VALUES ('2', '外墙外保温防火材料成为瞩目的焦点', '1', null, '2011-11-22 12:34:31', null, 'zh_cn');
INSERT INTO `news` VALUES ('3', '公司全面国际质量管理和质量保证体系司全面国际', '1', null, '2011-11-22 12:34:34', null, 'zh_cn');
INSERT INTO `news` VALUES ('4', '外墙外保温防火材料成为瞩目的焦点', '1', null, '2011-11-22 12:34:36', null, 'zh_cn');
INSERT INTO `news` VALUES ('5', '管理和质量保证体系国际质量管理和质量保证体系', '1', null, '2011-11-22 12:34:39', null, 'zh_cn');

-- ----------------------------
-- Table structure for `news_type`
-- ----------------------------
DROP TABLE IF EXISTS `news_type`;
CREATE TABLE `news_type` (
  `id` int(11) NOT NULL auto_increment,
  `news_type_zh_cn` varchar(50) default NULL,
  `news_type_en` varchar(50) default NULL,
  `pid` int(11) default NULL,
  `remark` varchar(255) default NULL,
  `create_date` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of news_type
-- ----------------------------
INSERT INTO `news_type` VALUES ('1', '公司新闻', 'CP_News', '0', null, null);
INSERT INTO `news_type` VALUES ('2', '行业资讯', 'IndustryInfo', '0', null, null);
INSERT INTO `news_type` VALUES ('3', '相关知识', 'Knowledge', '0', null, null);

-- ----------------------------
-- Table structure for `obj_case`
-- ----------------------------
DROP TABLE IF EXISTS `obj_case`;
CREATE TABLE `obj_case` (
  `id` int(11) NOT NULL auto_increment,
  `case_name` varchar(255) default NULL,
  `case_desc` longtext,
  `case_pic` varchar(100) default NULL,
  `create_date` datetime default NULL,
  `remark` varchar(255) default NULL,
  `lang` varchar(5) default 'zh_cn',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of obj_case
-- ----------------------------
INSERT INTO `obj_case` VALUES ('1', '某集团防火材料指定单位', null, null, '2011-12-20 12:39:32', null, 'zh_cn');
INSERT INTO `obj_case` VALUES ('2', '某石化几天防火工程项目', null, null, '2011-11-02 12:39:37', null, 'zh_cn');
INSERT INTO `obj_case` VALUES ('3', '上海市某大厦防火工程 ', null, null, '2011-11-24 12:39:39', null, 'zh_cn');

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL auto_increment,
  `product_name` varchar(255) default NULL,
  `type_id` int(11) default NULL,
  `product_pic` varchar(100) default NULL,
  `product_desc` longtext,
  `create_date` datetime default NULL,
  `lang` varchar(5) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_product_type` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '厚型钢结构样品', null, '1267516150.jpg', null, null, 'zh_cn');
INSERT INTO `product` VALUES ('2', '防火槽盒（桥架）', null, '1267516385.jpg', null, null, 'zh_cn');
INSERT INTO `product` VALUES ('3', '无机防火堵料砖块', null, '1267516097.jpg', null, null, 'zh_cn');
INSERT INTO `product` VALUES ('4', '无机防火堵料', null, '1267516493.jpg', null, null, 'zh_cn');
INSERT INTO `product` VALUES ('5', '防火槽盒（桥架）', null, '1267516622.jpg', null, null, 'zh_cn');
INSERT INTO `product` VALUES ('6', '厚型钢结构样品', null, '1267516558.jpg', null, null, 'zh_cn');

-- ----------------------------
-- Table structure for `product_type`
-- ----------------------------
DROP TABLE IF EXISTS `product_type`;
CREATE TABLE `product_type` (
  `id` int(11) NOT NULL auto_increment,
  `product_type_zh_cn` varchar(50) default NULL,
  `product_type_en` varchar(50) default NULL,
  `pid` int(11) default NULL,
  `create_date` datetime default NULL,
  `remark` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of product_type
-- ----------------------------
INSERT INTO `product_type` VALUES ('1', '金属焊接立体标识', 'MetalWeldingStereoLogo', '0', null, '1');
INSERT INTO `product_type` VALUES ('2', '拉丝立体字', 'PullSilkStereoWord', '1', null, '1');
INSERT INTO `product_type` VALUES ('3', '镜面立体字', 'MirrorStereoWord', '1', null, '1');
INSERT INTO `product_type` VALUES ('4', '烤漆立体字', 'LacquerBakeStereoWord', '1', null, '1');
INSERT INTO `product_type` VALUES ('5', '大型铝边立体字', 'Large ALSideStereoWord', '1', null, '1');
INSERT INTO `product_type` VALUES ('6', '三维立体标识', '3DStereoWord', '1', null, '1');
INSERT INTO `product_type` VALUES ('7', 'LED发光字', 'LEDGlowingWords', '0', null, '1');
INSERT INTO `product_type` VALUES ('8', 'LED正面发光字', 'LED-P-GlowingWords', '7', null, null);
INSERT INTO `product_type` VALUES ('9', 'LED背面发光字', 'LED-O-GlowingWords', '7', null, null);
INSERT INTO `product_type` VALUES ('10', '其他类型LED发光字', 'OtherLEDGlowingWords', '7', null, null);
INSERT INTO `product_type` VALUES ('11', '亚克力制品及工艺', 'YakeliProducts&Process', '0', null, '1');
INSERT INTO `product_type` VALUES ('12', '工艺制品', 'ProcessProducts', '11', null, null);
INSERT INTO `product_type` VALUES ('13', '标识制品', 'LogoProducts', '11', null, null);
INSERT INTO `product_type` VALUES ('14', '工程项目招牌', 'ProjectSigns', '0', null, '1');
INSERT INTO `product_type` VALUES ('15', '前台招牌', 'FrontDeskSigns', '14', null, '1');
INSERT INTO `product_type` VALUES ('16', 'LED灯光招牌', 'LEDSigns', '14', null, '1');
INSERT INTO `product_type` VALUES ('17', '霓虹灯绚彩招牌', 'LEDXuanColorSigns', '14', null, '1');
INSERT INTO `product_type` VALUES ('18', '异型标识标牌', 'AbnormityLogoSigns', '0', null, '1');
INSERT INTO `product_type` VALUES ('19', '水牌/站台', 'fffff', '18', null, null);
INSERT INTO `product_type` VALUES ('20', '告示牌/栋号牌', 'dddd', '18', null, null);
INSERT INTO `product_type` VALUES ('21', '花草牌', 'sssss', '18', null, null);
INSERT INTO `product_type` VALUES ('22', '导识牌', 'ttt', '18', null, null);
INSERT INTO `product_type` VALUES ('23', '宣传栏', 'yyyy', '18', null, null);
INSERT INTO `product_type` VALUES ('24', '户外立牌', 'uuuuu', '18', null, null);
INSERT INTO `product_type` VALUES ('25', '科室牌类', 'vxzv', '18', null, null);
INSERT INTO `product_type` VALUES ('26', '楼体广告牌', 'sfadsfds', '18', null, null);
INSERT INTO `product_type` VALUES ('27', '异型结构灯箱', 'dsfasdfdsf', '18', null, null);

-- ----------------------------
-- Table structure for `qa`
-- ----------------------------
DROP TABLE IF EXISTS `qa`;
CREATE TABLE `qa` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `username` varchar(50) default NULL,
  `phone` varchar(20) default NULL,
  `link_man` varchar(20) default NULL,
  `address` varchar(255) default NULL,
  `email` varchar(100) default NULL,
  `msn` varchar(50) default NULL,
  `cp_name` varchar(100) default NULL,
  `content` longtext,
  `create_date` datetime default NULL,
  `state` enum('2','1','-2','-1') default '-1' COMMENT '1新增投诉2处理投诉-1新增信息反馈-2处理信息反馈',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of qa
-- ----------------------------
