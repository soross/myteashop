--------------------------------------------------------------------------
--��Ʒ���ͱ�
--------------------------------------------------------------------------
CREATE TABLE 'prod_type' (
  'Id' int(11) NOT NULL auto_increment,
  'type_name' varchar(128) character set utf8 collate utf8_bin NOT NULL default '' COMMENT '��Ʒ������',
  'pid' int(11) NOT NULL default '-1' COMMENT '����id',
  PRIMARY KEY  ('Id'),
  KEY 'index_prod_type_name' ('type_name')
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='��Ʒ����';

--------------------------------------------------------------------------
--��Ʒ��װ���ͱ�
--------------------------------------------------------------------------
CREATE TABLE 'prod_pack_type' (
  'Id' int(11) NOT NULL auto_increment,
  'pack_name' varchar(128) collate utf8_bin default NULL,
  'pack_norms' varchar(128) collate utf8_bin default NULL,
  'pack_desc' varchar(512) collate utf8_bin default NULL,
  'pack_image' varchar(128) collate utf8_bin default NULL,
  'pack_price' varchar(16) collate utf8_bin default NULL,
  'is_stock' varchar(255) collate utf8_bin default NULL COMMENT '�Ƿ�ȱ��',
  PRIMARY KEY  ('Id'),
  KEY 'index_pack_name' ('pack_name'),
  KEY 'index_pack_norms' ('pack_norms'),
  KEY 'index_pack_price' ('pack_price'),
  KEY 'index_pack_is_stock' ('is_stock')
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='��Ʒ��װ����';

--------------------------------------------------------------------------
--��Ʒ��
--------------------------------------------------------------------------
CREATE TABLE 'prod' (
  'Id' int(11) NOT NULL auto_increment,
  'prod_name' varchar(128) collate utf8_bin NOT NULL default '������' COMMENT '��Ʒ����',
  'prod_code' varchar(16) collate utf8_bin NOT NULL default '-1' COMMENT '��Ʒ���',
  'prod_type' varchar(4) character set utf8 NOT NULL default '-1' COMMENT '��Ʒ����',
  'pack_type' varchar(4) character set utf8 NOT NULL default '-1' COMMENT '��װ����',
  'src_price' varchar(16) character set utf8 default NULL COMMENT 'ԭ��',
  'selling_price' varchar(16) character set utf8 NOT NULL default '0' COMMENT '���ۼ�',
  'grade' varchar(1) collate utf8_bin default '5' COMMENT '����Ʒ0 �ص�Ʒ1 �ŵ�Ʒ2 һ��Ʒ3 ����Ʒ4 ����Ʒ5',
  'suttle' varchar(16) character set utf8 default NULL COMMENT '����',
  'MOQ' varchar(16) character set utf8 default NULL COMMENT '��С����',
  'totals' varchar(16) character set utf8 default NULL COMMENT '����',
  'EXPIRY_DATE' datetime default '0000-00-00 00:00:00' COMMENT '��Ч��',
  'Shelf_life' datetime default '0000-00-00 00:00:00' COMMENT '������',
  'located' varchar(32) collate utf8_bin default NULL COMMENT '���ڵ�',
  'deliver_goods' datetime default '0000-00-00 00:00:00' COMMENT '������',
  'src_address' varchar(256) collate utf8_bin default NULL COMMENT 'ԭ����',
  'producers' varchar(64) collate utf8_bin default NULL COMMENT '������',
  'QS_no' varchar(32) collate utf8_bin default NULL COMMENT 'QS��',
  'prod_norm_no' varchar(32) collate utf8_bin default NULL COMMENT '��Ʒ��׼���',
  'save_way' varchar(128) collate utf8_bin default NULL COMMENT '���淽��',
  'prod_desc' longtext collate utf8_bin COMMENT '��Ʒ����',
  'Prod_efficacy' longtext collate utf8_bin COMMENT '��Ʒ��Ч',
  'prod_image' varchar(128) collate utf8_bin NOT NULL default '' COMMENT 'ͼƬ',
  'is_stock' varchar(1) collate utf8_bin default NULL COMMENT '�Ƿ��п��1��0��',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='��Ʒ';


--------------------------------------------------------------------------
--������
--------------------------------------------------------------------------
CREATE TABLE 'order' (
  'Id' int(11) NOT NULL auto_increment,
  'order_code' varchar(32) collate utf8_bin default NULL COMMENT '�������',
  'user_id' int(11) default NULL COMMENT '�û�id',
  'send_way' varchar(2) collate utf8_bin default NULL COMMENT '������ʽ',
  'pay_way' varchar(2) collate utf8_bin default NULL COMMENT '���ʽ',
  'order_date' datetime default '0000-00-00 00:00:00',
  'prod_number' varchar(16) character set utf8 default NULL COMMENT '��Ʒ����',
  'prod_type_number' int(4) default NULL COMMENT '��Ʒ��������',
  'total_price' int(8) default NULL,
  'state' varchar(2) collate utf8_bin default '-' COMMENT '-1�µ� 0��� 1���� 2ǩ�� 3���',
  'state_date' datetime default '0000-00-00 00:00:00' COMMENT '״̬�ı�ʱ��',
  'remark' varchar(512) collate utf8_bin default NULL COMMENT '��ע',
  'attn' varchar(16) collate utf8_bin default NULL COMMENT '�ռ���',
  'province' int(4) default NULL COMMENT 'ʡ��',
  'city' int(4) default NULL COMMENT '����',
  'address' varchar(512) collate utf8_bin default NULL,
  'phone' varchar(16) collate utf8_bin default NULL COMMENT '�绰',
  'mobile' varchar(16) collate utf8_bin default NULL,
  'zip_code' varchar(6) collate utf8_bin default NULL COMMENT '�ʱ�',
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
--���������
--------------------------------------------------------------------------
CREATE TABLE 'order_item' (
  'Id' int(11) NOT NULL auto_increment,
  'order_id' varchar(32) collate utf8_bin default NULL COMMENT '��������',
  'prod_id' int(11) default NULL COMMENT '������Ʒid',
  'prod_name' varchar(128) collate utf8_bin default NULL COMMENT '��Ʒ����',
  'prod_desc' varchar(512) collate utf8_bin default NULL COMMENT '����',
  'prod_price' varchar(8) collate utf8_bin default NULL COMMENT '�۸�',
  'prod_image' varchar(128) collate utf8_bin default NULL COMMENT 'ͼƬ',
  'prod_number' varchar(8) character set utf8 default NULL,
  'total_price' varchar(16) character set utf8 default NULL,
  PRIMARY KEY  ('Id'),
  KEY 'index_item_order_id' ('order_id'),
  KEY 'index_item_prod_id' ('prod_id'),
  KEY 'index_item_prod_name' ('prod_name')
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='��������';


--------------------------------------------------------------------------
--��Ѷ��
--------------------------------------------------------------------------
CREATE TABLE 'info' (
  'Id' int(11) NOT NULL auto_increment,
  'info_type' int(2) default NULL COMMENT '��ѯ����',
  'info_title' varchar(128) collate utf8_bin default NULL COMMENT '��Ѷ����',
  'info_content' longtext collate utf8_bin COMMENT '��Ѷ����',
  'add_date' datetime default '0000-00-00 00:00:00',
  'link_url' varchar(128) collate utf8_bin default NULL COMMENT 'ת�ص�ַ',
  'author' varchar(16) collate utf8_bin default NULL COMMENT '����',
  'link_way' varchar(64) collate utf8_bin default NULL COMMENT '��ϵ��ʽ',
  PRIMARY KEY  ('Id'),
  KEY 'index_info_type' ('info_type'),
  KEY 'index_info_title' ('info_title'),
  KEY 'index_info_content' ('info_content'(10)),
  KEY 'index_author' ('author')
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='��Ѷ';


--------------------------------------------------------------------------
--������Ϣ��
--------------------------------------------------------------------------
CREATE TABLE 'message' (
  'Id' int(11) NOT NULL auto_increment,
  'user_id' int(11) default NULL COMMENT '�����û�',
  'title' varchar(128) collate utf8_bin default NULL COMMENT '����',
  'content' varchar(512) collate utf8_bin default NULL COMMENT '����',
  'add_date' datetime default '0000-00-00 00:00:00' COMMENT 'ʱ��',
  'link_way' varchar(64) collate utf8_bin default NULL COMMENT '��ϵ��ʽ',
  'state' varchar(2) collate utf8_bin default NULL COMMENT '״̬0�·�1����-1��Ч',
  PRIMARY KEY  ('Id'),
  KEY 'index_user_id' ('user_id'),
  KEY 'index_title' ('title'),
  KEY 'index_msg_state' ('state'),
  KEY 'index_msg_add_date' ('add_date'),
  KEY 'index_msg_content' ('content'(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='����';
