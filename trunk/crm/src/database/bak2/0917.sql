delete from t_power where id='91';

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (91, '���ʲ���', '/admin/goods.do?task=goodsList&modfunid=91', 77, 14);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (481, '���������б�', '/admin/goodstype.do?task=goodsTypeList&modfunid=481', 91, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (482, '������������', '/admin/goodstype.do?task=toAddGoodsType&modfunid=482', 91, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (483, '�޸���������', '/admin/goodstype.do?task=toUpdateGoodsType&modfunid=483', 91, -1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (484, 'ɾ����������', '/admin/goodstype.do?task=deleteGoodsType&modfunid=484', 91, -1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (486, '��������', '/admin/goods.do?task=toAddgoods&modfunid=486', 91, 4);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (485, '�����б�', '/admin/goods.do?task=goodsList&modfunid=485', 91, 3);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (487, '�޸�����', '/admin/goods.do?task=toUpdateGoods&modfunid=487', 91, -1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (488, 'ɾ������', '/admin/goods.do?task=deleteGoods&modfunid=488', 91, -1);


delete from t_power where id='95';
 
insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (95, '���˼��������ռ�', '/admin/icd.do?task=icdList&modfunid=95', 77, 18);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (491, '���˼��������б�', '/admin/icd.do?task=icdList&modfunid=491', 95, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (492, '�������˼�������', '/admin/icd.do?task=toAddIcd&modfunid=492', 95, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (493, '�޸ĸ��˼�������', '/admin/icd.do?task=toUpdateIcd&modfunid=493', 95, -1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (494, 'ɾ�����˼�������', '/admin/icd.do?task=deleteIcd&modfunid=494', 95, -1);





-- Create table
create table T_WORD_WUBI
(
  ID      NUMBER not null,
  UNICODE VARCHAR2(50),
  TEXT    VARCHAR2(50),
  WUBI_86 VARCHAR2(50),
  WUBI_98 VARCHAR2(50)
);
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_WORD_WUBI
  add constraint T_WORD_WUBI_PK primary key (ID);
-- Create/Recreate indexes 
create index T_WORD_WUBI_IDX_TEXT on T_WORD_WUBI (TEXT);

