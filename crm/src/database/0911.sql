delete from t_power where id='81';

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (81, '��������', '/admin/sickbed.do?task=sickbedList&modfunid=81', 77, 4);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (401, '�����б�', '/admin/sickbed.do?task=sickbedList&modfunid=401', 81, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (402, '��Ӳ���', '/admin/sickbed.do?task=toAddSickbed&modfunid=402', 81, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (403, '�޸Ĳ���', '/admin/sickbed.do?task=toUpdateSickbed&modfunid=403', 81, -1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (404, 'ɾ������', '/admin/sickbed.do?task=deleteSickbed&modfunid=404', 81, -1);

