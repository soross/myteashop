insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (299, '�����ֵ���ҳ', '/admin/data.do?task=dataList&modfunid=299', 78, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (300, '���ӳ����ֵ�', '/admin/data.do?task=toAddData&modfunid=300', 78, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (301, '�޸�', '&modfunid=301', 78, -1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (302, 'ɾ��', '&modfunid=302', 78, -1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (303, '���Ҳ�����ҳ', '/admin/dept.do?task=deptList&modfunid=303', 79, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (304, '���ӿ��Ҳ���', '/admin/dept.do?task=toAddDept&modfunid=304', 79, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (305, '�޸�', '&modfunid=305', 79, -1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (306, 'ɾ��', '&modfunid=306', 79, -1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (308, '�û��б�', '/admin/user.do?task=userList&modfunid=308', 31, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (309, '�����û�', '/admin/user.do?task=toAddUser&modfunid=309', 31, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (310, '����Ȩ��', '/admin/user.do?task=toAddPower&id=admin&modfunid=310', 31, -1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (311, '�޸��û�', '/admin/user.do?task=toUpdateUser&modfunid=311', 31, -1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (312, 'ɾ���û�', '/admin/user.do?task=deleteUser&modfunid=312', 31, -1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (313, '�����û�', '/admin/user.do?task=slockUser&modfunid=313', 31, -1);


�޸�t_userpower userid Ϊvarchar2(20);


-- Create sequence 
create sequence SEQ_USER
minvalue 1
maxvalue 999999999999999999999999999
start with 1111
increment by 1
cache 20;


insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (329, '��ɫ�б�', '/admin/role.do?task=roleList&modfunid=329', 32, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (330, '������ɫ', '/admin/role.do?task=addrole&modfunid=330', 32, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (331, 'ɾ����ɫ', '/admin/role.do?task=deleterole&modfunid=331', 32, -1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (332, '�޸Ľ�ɫ', '/admin/role.do?task=updaterole&modfunid=332', 32, -1);




/**
--��Root����ĩ�ҵݹ�
select * from t_power
 start with id=5
 connect by prior id = parentid for update;
 
--��ĩ������ROOT�ݹ�
select * from t_power
 start with id=38
 connect by prior parentid = id;
 **/