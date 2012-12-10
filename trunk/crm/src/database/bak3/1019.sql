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
values (40, 'ҽ�������ѯ', '/admin/medical.do?task=medicalList&modfunid=40', 2, 9);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (831, 'ҽ�������б�', '/admin/medical.do?task=medicalList&modfunid=831', 40, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (832, '����ҽ������', '/admin/medical.do?task=toAddMedical&modfunid=832', 40, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (833, '�޸�ҽ������', '/admin/medical.do?task=toUpdateMedical&modfunid=833', 40, -1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (834, 'ɾ��ҽ������', '/admin/medical.do?task=deleteMedical&modfunid=834', 40, -1);

delete from t_power t where id='42';
insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (42, '�м�״������', '/admin/deformity.do?task=deformityList&modfunid=42', 2, 11);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (841, '�м�״�������б�', '/admin/deformity.do?task=deformityList&modfunid=841', 42, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (842, '�����м�״������', '/admin/deformity.do?task=toAddDeformity&modfunid=842', 42, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (843, '�޸Ĳм�״������', '/admin/deformity.do?task=toUpdateDeformity&modfunid=843', 42, -1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (844, 'ɾ���м�״������', '/admin/deformity.do?task=deleteDeformity&modfunid=844', 42, -1);


