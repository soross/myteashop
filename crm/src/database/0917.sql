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

