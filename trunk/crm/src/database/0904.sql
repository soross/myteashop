insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (299, '常用字典首页', '/admin/data.do?task=dataList&modfunid=299', 78, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (300, '添加常用字典', '/admin/data.do?task=toAddData&modfunid=300', 78, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (301, '修改', '&modfunid=301', 78, -1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (302, '删除', '&modfunid=302', 78, -1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (303, '科室部门首页', '/admin/dept.do?task=deptList&modfunid=303', 79, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (304, '添加科室部门', '/admin/dept.do?task=toAddDept&modfunid=304', 79, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (305, '修改', '&modfunid=305', 79, -1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (306, '删除', '&modfunid=306', 79, -1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (308, '用户列表', '/admin/user.do?task=userList&modfunid=308', 31, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (309, '新增用户', '/admin/user.do?task=toAddUser&modfunid=309', 31, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (310, '配置权限', '/admin/user.do?task=toAddPower&id=admin&modfunid=310', 31, -1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (311, '修改用户', '/admin/user.do?task=toUpdateUser&modfunid=311', 31, -1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (312, '删除用户', '/admin/user.do?task=deleteUser&modfunid=312', 31, -1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (313, '冻结用户', '/admin/user.do?task=slockUser&modfunid=313', 31, -1);


--从Root往树末梢递归
select * from t_power
 start with id=5
 connect by prior id = parentid for update;
 
--从末梢往树ROOT递归
select * from t_power
 start with id=38
 connect by prior parentid = id;