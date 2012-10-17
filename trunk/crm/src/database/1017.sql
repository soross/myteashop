-- Create table
create table T_ILLNESS
(
  ID          NUMBER not null,
  SICKID      VARCHAR2(50),
  SICKNAME    VARCHAR2(50),
  IDCARD      VARCHAR2(50),
  GARDEN      VARCHAR2(50),
  CREATE_DATE DATE,
  CREATESTAFF VARCHAR2(50)
);
-- Add comments to the table 
comment on table T_ILLNESS
  is '����֤��';
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_ILLNESS
  add constraint T_ILLNESS_PK primary key (ID)
 ;

 insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (804, 'ɾ�����߼���֤��', '/admin/illness.do?task=deleteIllness&modfunid=804', 20, 4);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (803, '�޸Ļ��ż���֤��', '/admin/illness.do?task=toUpdateIllness&modfunid=803', 20, 3);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (802, '���߼���֤���б�', '/admin/illness.do?task=illnessList&modfunid=802', 20, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (801, '�������߼���֤��', '/admin/illness.do?task=toAddIllness&modfunid=20', 20, 1);

delete t_power t where t.id='20';
insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (20, '���߼���֤��', '/admin/illness.do?task=illnessList&modfunid=20', 2, 6);

 