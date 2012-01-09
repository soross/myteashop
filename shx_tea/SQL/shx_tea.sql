/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : shx_tea

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2012-01-05 17:59:40
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `aams_user`
-- ----------------------------
DROP TABLE IF EXISTS `aams_user`;
CREATE TABLE `aams_user` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(20) default NULL,
  `password` varchar(50) default NULL,
  `realname` varchar(20) default NULL,
  `create_date` datetime default NULL,
  `prow` int(11) default '0',
  `state` int(11) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of aams_user
-- ----------------------------
INSERT INTO `aams_user` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', '2011-11-18 09:54:14', '0', '0');

-- ----------------------------
-- Table structure for `comm_code`
-- ----------------------------
DROP TABLE IF EXISTS `comm_code`;
CREATE TABLE `comm_code` (
  `id` int(11) NOT NULL auto_increment,
  `type_name` varchar(30) default NULL,
  `type_code` varchar(255) default NULL,
  `type_value` longtext,
  `remark` varchar(255) default NULL,
  `nav_name` varchar(50) default NULL,
  `isshow` int(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of comm_code
-- ----------------------------
INSERT INTO `comm_code` VALUES ('1', 'AboutUs_Index', 'diy/pics/20100322/1269225788.gif', '&nbsp;&nbsp;&nbsp;&nbsp;杭州某茶楼是由专业性茶坊连锁品牌，茶楼的主要功能：提供交流、休闲的优雅空间。茶坊提供的产品以国饮传统茶为基础，包括保健茶，饮品及创新茶。同时，提供干果、鲜果及商务、家庭小厨。是由一批思想活跃，勇于创新，精于管理的团队组成。旗下设置机构：一、茶坊拓展部。二、茶坊营运部。三、茶文化教研室。四、茶叶评审部等四大部组合而成。公司成立之初即以弘扬国学', 'type_code图片type_value文字', null, '0');
INSERT INTO `comm_code` VALUES ('2', 'Company', 'company.php', '<img style=\"PADDING-LEFT: 20px; FLOAT: right\" alt=\"\" src=\"page/pics/20100311/201003111268297027593.gif\" border=0 />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;杭州某茶楼是由专业性茶坊连锁品牌，茶楼的主要功能：提供交流、休闲的优雅空间。茶坊提供的产品以国饮传统茶为基础，包括保健茶，饮品及创新茶。同时，提供干果、鲜果及商务、家庭小厨。是由一批思想活跃，勇于创新，精于管理的团队组成。旗下设置机构：一、茶坊拓展部。二、茶坊营运部。三、茶文化教研室。四、茶叶评审部等四大部组合而成。公司成立之初，即以弘扬国学文化，传递健康为己任，不断创造和谐的品茗环境。浩大、和谐不仅表述了中国历史哲学思想，茶文化的内涵与茶道的修为，而且蕴含了理想与追求。在现代茶文化交流中，不可或缺的是加入现代元素，对茶作出新的定义和新的诠释。传统观念中，喝茶是三教九流消磨时间的闲事，把品茶重新理解成“品茶是工作的延续，品茶是一种休闲的工作方式”。把品茶和休闲式工作联系在一起，在工作与休闲中传播交流茶文化，这是开启的茶文化传播的又一个新起点。<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 宗旨：建设文化茶坊，传播健康饮茶。使命：推动茶的文化传播与健康作用，通过茶道传播中国文化，促进身心健康。目标：让茶坊成为工作与生活中的伴侣。定位：最正宗的品茗，家庭小厨，会友天地。愿景：让国饮——茶，为更多的茶友服务，为您创造更多的健康与文化空间。承诺：坚持使用原产地高品质的茶叶，明确标示，通过专业的气泡手法，使每一位光临的贵客，无论是外卖回家，还是店内品饮，都能轻松、如一地享受纯醇正的上品香茗。在未来的发展中，将更加注重和谐、健康、文化。在继承与创新的过程中，提高境界，不断开创新的局面，让国学文化源远流长，愿国饮茶香——香飘世界。 ', null, '华锋简介', '1');
INSERT INTO `comm_code` VALUES ('3', 'Guide', 'guide.php', '杭州市莫干山路868号,某酒店东侧<br />乘8路17路莫干山路站下车即到<br />营业时间：早9:00到凌晨0:00<br />服务热线：0571-12345678 15912345678', null, '消费指南', '4');
INSERT INTO `comm_code` VALUES ('4', 'Feature', 'feature.php', '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; “欲把西湖比西子，从来佳茗似佳人”。喝茶，从来都不只是满足一种口感，杭州人尤甚。相比较于“摆龙门阵”的川茶馆，听曲赏戏的京茶馆，以及“饭前茶”的粤茶馆等，杭州茶馆则更讲究名茶名水之配，讲究品茗赏景之趣，有一种风雅、诗意的情致。杭州的茶已经从一种日常的习惯转变成一种永恒的文化张力，杭州茶文化的坚实基础甚至可以用花岗岩来形容。如今，杭州茶馆也都充满这种一脉相承的文化意韵。一些经营者在面对市场精明地念着生意经的同时，亦都努力地表达他们的文化追求。当然，这种追求也是殊途同归。精于攻专――目前，本茶楼专门经营茶艺，有茶艺表演。“杭州的茶已经从一种日常的习惯转变成一种永恒的文化张力，杭州茶文化的坚实基础甚至可以用花岗岩来形容。如今，杭州茶馆也都充满这种一脉相承的文化意韵。一些经营者在面对市场精明地念着生意经的同时，亦都努力地表达他们的文化追求。当然，这种追求也是殊途同归。精于攻专――目前，本茶楼专门经营茶艺，有茶艺表演。 ', null, '华锋优势', '3');
INSERT INTO `comm_code` VALUES ('5', 'Environment', 'environment.php', null, '', '制茶环境', '2');
INSERT INTO `comm_code` VALUES ('6', 'Environment', 'photo/pics/20100322/1269226694.jpg', '简要介绍内容，', '茶楼包厢', null, '0');
INSERT INTO `comm_code` VALUES ('7', 'Guide_Left', null, '杭州市莫干山路868号,某酒店东侧<br />乘8路17路莫干山路站下车即到<br />营业时间：早9:00到凌晨0:00<br />服务热线：0571-12345678 15912345678', null, null, '0');
INSERT INTO `comm_code` VALUES ('8', 'ContactUs', 'contactus.php', '地 址：杭州市莫干山路2168号<br />电 话：0571-98765432<br />联系人：杨军(经理)<br />手 机：15887654321<br />网址：www.aaaa.com<br />邮 箱：bos@mail.com<br />地 址：杭州市莫干山路2168号<br />联系人：杨军(经理)<br />手 机：15887654321<br />网址：www.aaaa.com', null, '联系我们', '5');
INSERT INTO `comm_code` VALUES ('9', 'TopFlashImage', 'advs/pics/20100322/1269224761.jpg', null, '0', null, '0');
INSERT INTO `comm_code` VALUES ('10', 'TopFlashImage', 'advs/pics/20100322/1269224764.jpg', null, '1', null, '0');
INSERT INTO `comm_code` VALUES ('11', 'TopFlashImage', 'advs/pics/20100322/1269224767.jpg', null, '2', null, '0');
INSERT INTO `comm_code` VALUES ('12', 'Environment', 'photo/pics/20100322/1269226694.jpg', 'sdfads', 'fdsf', null, '0');
INSERT INTO `comm_code` VALUES ('13', 'Environment', 'photo/pics/20100322/1269226694.jpg', 'dsfsdaf', 'dsfds', null, '0');
INSERT INTO `comm_code` VALUES ('14', 'Environment', 'photo/pics/20100322/1269226694.jpg', 'dsfa', 'dfsdfa', null, '0');
INSERT INTO `comm_code` VALUES ('15', 'Environment', 'photo/pics/20100322/1269226694.jpg', 'dfad', 'sdaf', null, '0');

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `content` longtext,
  `create_date` datetime default NULL,
  `state` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of message
-- ----------------------------

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `author` varchar(255) default NULL,
  `content` longtext,
  `create_date` datetime default NULL,
  `state` int(11) default NULL,
  `type_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '茶叶化学成分及', 'admin', 'fadsfds', '2012-01-05 13:43:38', null, '1');
INSERT INTO `news` VALUES ('2', '茶叶化学成分及其对人体保健的', 'admin', 'fadsfds', '2012-01-05 13:43:38', null, '1');
INSERT INTO `news` VALUES ('3', '茶叶化学成分及其对人体保健的作用', 'admin', 'fadsfds', '2011-01-05 13:43:38', null, '1');
INSERT INTO `news` VALUES ('4', '茶叶化学成分及其对人体保', 'admin', 'fadsfds', '2012-01-03 13:43:38', null, '1');
INSERT INTO `news` VALUES ('5', '茶叶化学成分及其对人体保健的作', 'admin', 'fadsfds', '2012-01-05 13:43:38', null, '1');
INSERT INTO `news` VALUES ('6', '茶文化的传播中华', 'saf', 'sdf', '2012-01-05 16:21:27', null, '3');
INSERT INTO `news` VALUES ('7', '中华茶文化的悠久历史 ', 'dsf', 'dsafd', '2012-01-05 16:22:19', null, '3');
INSERT INTO `news` VALUES ('8', '茶文化的传播中华茶文化的传', 'saf', 'fdsfdsaf', '2012-01-05 16:22:22', null, '3');
INSERT INTO `news` VALUES ('9', '中华茶文化的悠久历史 ', 'dfasdfds', 'sad', '2012-01-05 16:21:37', null, '3');
INSERT INTO `news` VALUES ('10', '茶文化的传播中华茶文化', 'fds', 'sfds', '2012-01-05 16:51:37', null, '3');
INSERT INTO `news` VALUES ('11', '茶的保健功能茶的保健功', 'dsfa', 'fdsfad', '2012-01-05 16:22:37', null, '4');
INSERT INTO `news` VALUES ('12', '香露茶与观音仙茶', 'dsfads', 'adsfds', '2012-01-02 16:21:37', null, '4');
INSERT INTO `news` VALUES ('13', '茶的保健功能茶的保健功能', 'sdsd', 'df', '2012-01-05 16:21:37', null, '4');
INSERT INTO `news` VALUES ('14', '香露茶与观音仙茶', 'fdfad', 'ddsa', '2012-01-05 16:21:37', null, '4');
INSERT INTO `news` VALUES ('15', '茶的保健功能茶的保健功能', 'fds', 'sfads', '2012-01-01 16:21:37', null, '4');
INSERT INTO `news` VALUES ('16', '茶的保健功能茶的保健功能', 'dfa', 'dsf', '2012-01-05 16:21:37', null, '4');

-- ----------------------------
-- Table structure for `news_type`
-- ----------------------------
DROP TABLE IF EXISTS `news_type`;
CREATE TABLE `news_type` (
  `id` int(11) NOT NULL auto_increment,
  `type_name` varchar(255) default NULL,
  `url` varchar(255) default NULL,
  `seq` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of news_type
-- ----------------------------
INSERT INTO `news_type` VALUES ('1', '华锋动态', null, '1');
INSERT INTO `news_type` VALUES ('2', '活动信息', null, '2');
INSERT INTO `news_type` VALUES ('3', '茶文化', null, '3');
INSERT INTO `news_type` VALUES ('4', '品茶之道', null, '4');

-- ----------------------------
-- Table structure for `prod`
-- ----------------------------
DROP TABLE IF EXISTS `prod`;
CREATE TABLE `prod` (
  `id` int(11) NOT NULL auto_increment,
  `prod_name` varchar(255) default NULL,
  `prod_desc` varchar(255) default NULL,
  `prod_pic` varchar(255) default NULL,
  `net_weight` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `state` int(11) default NULL,
  `type_id` int(11) default NULL,
  `cheap_desc` varchar(90) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of prod
-- ----------------------------
INSERT INTO `prod` VALUES ('1', 'dfadfds', 'dfadsf', 'photo/pics/20100322/1269226694.jpg', '500克', '2012-01-26 11:34:49', null, '3', null);
INSERT INTO `prod` VALUES ('2', 'sfdsaf', 'dsfa', 'photo/pics/20100322/1269226694.jpg', '500克', '2012-01-05 11:38:24', null, '3', null);
INSERT INTO `prod` VALUES ('3', 'fdsafd', 'dsfsd', 'photo/pics/20100322/1269226694.jpg', '500克', '2012-01-05 11:38:26', null, '3', null);
INSERT INTO `prod` VALUES ('4', 'dsafds', 'fdsaf', 'photo/pics/20100322/1269226694.jpg', '500克', '2012-01-05 11:38:28', null, '3', null);
INSERT INTO `prod` VALUES ('5', 'fadsf', 'dsfdsfad', 'photo/pics/20100322/1269226694.jpg', '500克', '2012-01-05 11:38:31', null, '3', null);
INSERT INTO `prod` VALUES ('6', '名茶品鉴/各式茶点', 'dafdsf', 'diy/pics/20100322/1269236348.gif', '100克', '2012-01-05 16:43:14', '1', '3', '本茶楼提供各类中国名茶、咖啡、饮料及各式茶点。白天消费满50元免费赠送两份精美茶点');
INSERT INTO `prod` VALUES ('7', '精彩活动/茶道表演', 'fad', 'diy/pics/20100322/1269237164.gif', '100克', '2012-01-05 16:15:28', '1', '3', '本茶楼是您好友聚会、休闲、商务洽谈的好去处，不定期举办茶道表演、棋牌比赛等精彩活动');

-- ----------------------------
-- Table structure for `prod_type`
-- ----------------------------
DROP TABLE IF EXISTS `prod_type`;
CREATE TABLE `prod_type` (
  `id` int(11) NOT NULL auto_increment,
  `type_name` varchar(255) default NULL,
  `url` varchar(255) default NULL,
  `seq` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of prod_type
-- ----------------------------
INSERT INTO `prod_type` VALUES ('1', '礼盒鉴赏', '-', '5000');
INSERT INTO `prod_type` VALUES ('2', '茶盘展示', '-', '5000');
INSERT INTO `prod_type` VALUES ('3', '清香铁观音', null, '1');
INSERT INTO `prod_type` VALUES ('4', '雅香铁观音', null, '2');
INSERT INTO `prod_type` VALUES ('5', '韵香铁观音', null, '3');
