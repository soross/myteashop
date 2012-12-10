-- Create sequence 
create sequence SEQ_DEFORMITY
minvalue 1
maxvalue 999999999999999999999999999
start with 1111
increment by 1
cache 20;


-- Create sequence 
create sequence SEQ_MEDICAL
minvalue 1
maxvalue 999999999999999999999999999
start with 1111
increment by 1
cache 20;

delete from t_power t where id='40';
insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (40, '医技报告查询', '/admin/medical.do?task=medicalList&modfunid=40', 2, 9);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (831, '医技报告列表', '/admin/medical.do?task=medicalList&modfunid=831', 40, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (832, '新增医技报告', '/admin/medical.do?task=toAddMedical&modfunid=832', 40, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (833, '修改医技报告', '/admin/medical.do?task=toUpdateMedical&modfunid=833', 40, -1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (834, '删除医技报告', '/admin/medical.do?task=deleteMedical&modfunid=834', 40, -1);

delete from t_power t where id='42';
insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (42, '残疾状况档案', '/admin/deformity.do?task=deformityList&modfunid=42', 2, 11);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (841, '残疾状况档案列表', '/admin/deformity.do?task=deformityList&modfunid=841', 42, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (842, '新增残疾状况档案', '/admin/deformity.do?task=toAddDeformity&modfunid=842', 42, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (843, '修改残疾状况档案', '/admin/deformity.do?task=toUpdateDeformity&modfunid=843', 42, -1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (844, '删除残疾状况档案', '/admin/deformity.do?task=deleteDeformity&modfunid=844', 42, -1);


