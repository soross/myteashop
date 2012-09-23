delete from t_power where id='81';

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (81, '病床管理', '/admin/sickbed.do?task=sickbedList&modfunid=81', 77, 4);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (401, '病床列表', '/admin/sickbed.do?task=sickbedList&modfunid=401', 81, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (402, '添加病床', '/admin/sickbed.do?task=toAddSickbed&modfunid=402', 81, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (403, '修改病床', '/admin/sickbed.do?task=toUpdateSickbed&modfunid=403', 81, -1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (404, '删除病床', '/admin/sickbed.do?task=deleteSickbed&modfunid=404', 81, -1);


delete from t_power where id='82';
insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (82, '汇总科目', '/admin/collect.do?task=collectList&modfunid=82', 77, 5);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (411, '汇总科目列表', '/admin/collect.do?task=collectList&modfunid=411', 82, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (412, '新增汇总科目', '/admin/collect.do?task=toAddCollect&modfunid=412', 82, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (413, '修改汇总科目', '/admin/collect.do?task=toUpdateCollect&modfunid=413', 82, -1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (414, '删除汇总科目', '/admin/collect.do?task=deleteCollect&modfunid=414', 82, -1);


delete from t_power where id='84';
insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (84, '挂号类别', '/admin/regType.do?task=regtypeList&modfunid=84', 77, 7);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (421, '挂号类别列表', '/admin/regType.do?task=regtypeList&modfunid=421', 84, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (422, '新增挂号类别', '/admin/regType.do?task=toAddRegtype&modfunid=422', 84, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (423, '修改挂号类别', '/admin/regType.do?task=toUpdateRegtype&modfunid=423', 84, -1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (424, '删除挂号类别', '/admin/regType.do?task=deleteRegtype&modfunid=423', 84, -1);


delete from t_power where id='89';

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (89, '器具房库', '/admin/toolsave.do?task=toolSaveList&modfunid=89', 77, 12);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (451, '器具档案列表', '/admin/toolsave.do?task=toolSaveList&modfunid=90', 89, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (452, '新增器具档案', '/admin/toolsave.do?task=toAddToolSave&modfunid=90', 89, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (453, '修改器具档案', '/admin/toolsave.do?task=toUpdateToolSave&modfunid=90', 89, -1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (454, '删除器具档案', '/admin/toolsave.do?task=deleteToolSave&modfunid=90', 89, -1);




delete from t_power where id='90';

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (90, '器具档案', '/admin/toolinfo.do?task=toolinfoList&modfunid=90', 77, 13);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (441, '器具列表', '/admin/toolinfo.do?task=toolinfoList&modfunid=441', 90, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (442, '新增器具', '/admin/toolinfo.do?task=toAddToolinfo&modfunid=442', 90, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (443, '修改器具', '/admin/toolinfo.do?task=toUpdateToolinfo&modfunid=443', 90, -1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (444, '删除器具', '/admin/toolinfo.do?task=deleteToolinfo&modfunid=444', 90, -1);


