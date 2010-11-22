--------------------------------------------------------------------------
--产品类型表
--------------------------------------------------------------------------
CREATE TABLE 'prod_type' (
  'Id' int(11) NOT NULL auto_increment,
  'type_name' varchar(128) character set utf8 collate utf8_bin NOT NULL default '' COMMENT '产品类型名',
  'pid' int(11) NOT NULL default '-1' COMMENT '父类id',
  PRIMARY KEY  ('Id'),
  KEY 'index_prod_type_name' ('type_name')
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='产品类型';

--------------------------------------------------------------------------
--产品包装类型表
--------------------------------------------------------------------------
CREATE TABLE 'prod_pack_type' (
  'Id' int(11) NOT NULL auto_increment,
  'pack_name' varchar(128) collate utf8_bin default NULL,
  'pack_norms' varchar(128) collate utf8_bin default NULL,
  'pack_desc' varchar(512) collate utf8_bin default NULL,
  'pack_image' varchar(128) collate utf8_bin default NULL,
  'pack_price' varchar(16) collate utf8_bin default NULL,
  'is_stock' varchar(255) collate utf8_bin default NULL COMMENT '是否缺货',
  PRIMARY KEY  ('Id'),
  KEY 'index_pack_name' ('pack_name'),
  KEY 'index_pack_norms' ('pack_norms'),
  KEY 'index_pack_price' ('pack_price'),
  KEY 'index_pack_is_stock' ('is_stock')
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='产品包装类型';

--------------------------------------------------------------------------
--产品表
--------------------------------------------------------------------------
CREATE TABLE 'prod' (
  'Id' int(11) NOT NULL auto_increment,
  'prod_name' varchar(128) collate utf8_bin NOT NULL default '铁观音' COMMENT '产品名称',
  'prod_code' varchar(16) collate utf8_bin NOT NULL default '-1' COMMENT '产品编号',
  'prod_type' varchar(4) character set utf8 NOT NULL default '-1' COMMENT '产品类型',
  'pack_type' varchar(4) character set utf8 NOT NULL default '-1' COMMENT '包装类型',
  'src_price' varchar(16) character set utf8 default NULL COMMENT '原价',
  'selling_price' varchar(16) character set utf8 NOT NULL default '0' COMMENT '销售价',
  'grade' varchar(1) collate utf8_bin default '5' COMMENT '尊享品0 特等品1 优等品2 一等品3 二等品4 三等品5',
  'suttle' varchar(16) character set utf8 default NULL COMMENT '净重',
  'MOQ' varchar(16) character set utf8 default NULL COMMENT '最小订量',
  'totals' varchar(16) character set utf8 default NULL COMMENT '总量',
  'EXPIRY_DATE' datetime default '0000-00-00 00:00:00' COMMENT '有效期',
  'Shelf_life' datetime default '0000-00-00 00:00:00' COMMENT '保质期',
  'located' varchar(32) collate utf8_bin default NULL COMMENT '所在地',
  'deliver_goods' datetime default '0000-00-00 00:00:00' COMMENT '发货期',
  'src_address' varchar(256) collate utf8_bin default NULL COMMENT '原产地',
  'producers' varchar(64) collate utf8_bin default NULL COMMENT '生产商',
  'QS_no' varchar(32) collate utf8_bin default NULL COMMENT 'QS号',
  'prod_norm_no' varchar(32) collate utf8_bin default NULL COMMENT '产品标准编号',
  'save_way' varchar(128) collate utf8_bin default NULL COMMENT '保存方法',
  'prod_desc' longtext collate utf8_bin COMMENT '产品描述',
  'Prod_efficacy' longtext collate utf8_bin COMMENT '产品功效',
  'prod_image' varchar(128) collate utf8_bin NOT NULL default '' COMMENT '图片',
  'is_stock' varchar(1) collate utf8_bin default NULL COMMENT '是否有库存1有0无',
  'stock_date' datetime default '0000-00-00 00:00:00',
  'add_date' datetime default '0000-00-00 00:00:00',
  PRIMARY KEY  ('Id'),
  KEY 'index_prod_name' ('prod_name'),
  KEY 'index_prod_code' ('prod_code'),
  KEY 'index_prod_type' ('prod_type'),
  KEY 'index_pack_type' ('pack_type'),
  KEY 'index_grade' ('grade'),
  KEY 'index_prod_desc' ('prod_desc'(10)),
  KEY 'index_prod_add_date' ('add_date'),
  KEY 'index_is_stock' ('is_stock'),
  KEY 'index_selling_price' ('selling_price')
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='产品';


--------------------------------------------------------------------------
--订单表
--------------------------------------------------------------------------
CREATE TABLE 'order' (
  'Id' int(11) NOT NULL auto_increment,
  'order_code' varchar(32) collate utf8_bin default NULL COMMENT '订单编号',
  'user_id' int(11) default NULL COMMENT '用户id',
  'send_way' varchar(2) collate utf8_bin default NULL COMMENT '发货方式',
  'pay_way' varchar(2) collate utf8_bin default NULL COMMENT '付款方式',
  'order_date' datetime default '0000-00-00 00:00:00',
  'prod_number' varchar(16) character set utf8 default NULL COMMENT '产品数量',
  'prod_type_number' int(4) default NULL COMMENT '产品类型数量',
  'total_price' int(8) default NULL,
  'state' varchar(2) collate utf8_bin default '-' COMMENT '-1下单 0审核 1发货 2签收 3完成',
  'state_date' datetime default '0000-00-00 00:00:00' COMMENT '状态改变时间',
  'remark' varchar(512) collate utf8_bin default NULL COMMENT '备注',
  'attn' varchar(16) collate utf8_bin default NULL COMMENT '收件人',
  'province' int(4) default NULL COMMENT '省份',
  'city' int(4) default NULL COMMENT '城市',
  'address' varchar(512) collate utf8_bin default NULL,
  'phone' varchar(16) collate utf8_bin default NULL COMMENT '电话',
  'mobile' varchar(16) collate utf8_bin default NULL,
  'zip_code' varchar(6) collate utf8_bin default NULL COMMENT '邮编',
  PRIMARY KEY  ('Id'),
  KEY 'index_order_code' ('order_code'),
  KEY 'index_user_id' ('user_id'),
  KEY 'index_order_date' ('order_date'),
  KEY 'index_order_state' ('state'),
  KEY 'index_attn' ('state_date'),
  KEY 'index_province' ('province'),
  KEY 'index_city' ('city'),
  KEY 'index_phone' ('phone'),
  KEY 'index_mobile' ('mobile')
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



--------------------------------------------------------------------------
--订单详情表
--------------------------------------------------------------------------
CREATE TABLE 'order_item' (
  'Id' int(11) NOT NULL auto_increment,
  'order_id' varchar(32) collate utf8_bin default NULL COMMENT '所属订单',
  'prod_id' int(11) default NULL COMMENT '所属产品id',
  'prod_name' varchar(128) collate utf8_bin default NULL COMMENT '产品名称',
  'prod_desc' varchar(512) collate utf8_bin default NULL COMMENT '描述',
  'prod_price' varchar(8) collate utf8_bin default NULL COMMENT '价格',
  'prod_image' varchar(128) collate utf8_bin default NULL COMMENT '图片',
  'prod_number' varchar(8) character set utf8 default NULL,
  'total_price' varchar(16) character set utf8 default NULL,
  PRIMARY KEY  ('Id'),
  KEY 'index_item_order_id' ('order_id'),
  KEY 'index_item_prod_id' ('prod_id'),
  KEY 'index_item_prod_name' ('prod_name')
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='订单明显';


--------------------------------------------------------------------------
--资讯表
--------------------------------------------------------------------------
CREATE TABLE 'info' (
  'Id' int(11) NOT NULL auto_increment,
  'info_type' int(2) default NULL COMMENT '咨询类型',
  'info_title' varchar(128) collate utf8_bin default NULL COMMENT '资讯标题',
  'info_content' longtext collate utf8_bin COMMENT '资讯内容',
  'add_date' datetime default '0000-00-00 00:00:00',
  'link_url' varchar(128) collate utf8_bin default NULL COMMENT '转载地址',
  'author' varchar(16) collate utf8_bin default NULL COMMENT '作者',
  'link_way' varchar(64) collate utf8_bin default NULL COMMENT '联系方式',
  PRIMARY KEY  ('Id'),
  KEY 'index_info_type' ('info_type'),
  KEY 'index_info_title' ('info_title'),
  KEY 'index_info_content' ('info_content'(10)),
  KEY 'index_author' ('author')
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='资讯';


--------------------------------------------------------------------------
--留言信息表
--------------------------------------------------------------------------
CREATE TABLE 'message' (
  'Id' int(11) NOT NULL auto_increment,
  'user_id' int(11) default NULL COMMENT '所属用户',
  'title' varchar(128) collate utf8_bin default NULL COMMENT '标题',
  'content' varchar(512) collate utf8_bin default NULL COMMENT '内容',
  'add_date' datetime default '0000-00-00 00:00:00' COMMENT '时间',
  'link_way' varchar(64) collate utf8_bin default NULL COMMENT '联系方式',
  'state' varchar(2) collate utf8_bin default NULL COMMENT '状态0新发1处理-1无效',
  PRIMARY KEY  ('Id'),
  KEY 'index_user_id' ('user_id'),
  KEY 'index_title' ('title'),
  KEY 'index_msg_state' ('state'),
  KEY 'index_msg_add_date' ('add_date'),
  KEY 'index_msg_content' ('content'(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='留言';
