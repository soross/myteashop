delete from t_power where id='91';

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (91, '物资材料', '/admin/goods.do?task=goodsList&modfunid=91', 77, 14);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (481, '物资类型列表', '/admin/goodstype.do?task=goodsTypeList&modfunid=481', 91, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (482, '新增物资类型', '/admin/goodstype.do?task=toAddGoodsType&modfunid=482', 91, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (483, '修改物资类型', '/admin/goodstype.do?task=toUpdateGoodsType&modfunid=483', 91, -1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (484, '删除物资类型', '/admin/goodstype.do?task=deleteGoodsType&modfunid=484', 91, -1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (486, '新增物资', '/admin/goods.do?task=toAddgoods&modfunid=486', 91, 4);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (485, '物资列表', '/admin/goods.do?task=goodsList&modfunid=485', 91, 3);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (487, '修改物资', '/admin/goods.do?task=toUpdateGoods&modfunid=487', 91, -1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (488, '删除物资', '/admin/goods.do?task=deleteGoods&modfunid=488', 91, -1);

