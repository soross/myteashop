-- Create table
create table T_PROVE
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
comment on table T_PROVE
  is '����֤������';
-- Add comments to the columns 
comment on column T_PROVE.SICKID
  is '����id';
comment on column T_PROVE.SICKNAME
  is '��������';
comment on column T_PROVE.IDCARD
  is '���֤����';
comment on column T_PROVE.GARDEN
  is '�Ա�';
comment on column T_PROVE.CREATE_DATE
  is '����ʱ��';
comment on column T_PROVE.CREATESTAFF
  is '����Ա��';
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_PROVE
  add constraint T_PROVE_PK primary key (ID);
  
-- Create sequence 
create sequence SEQ_PROVE
minvalue 1
maxvalue 999999999999999999999999999
start with 120
increment by 1
cache 20;


insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (771, '����֤�������б�', '/admin/prove.do?task=proveList&modfunid=771', 18, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (772, '����֤������', '/admin/prove.do?task=toAddProve&modfunid=772', 18, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (773, '����֤�������޸�', '/admin/prove.do?task=toUpdateProve&modfunid=773', 18, -1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (774, '����֤������ɾ��', '/admin/prove.do?task=deleteProve&modfunid=774', 18, -1);


delete from t_power t where t.id='18';

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (18, '����֤������', '/admin/prove.do?task=toAddProve&modfunid=18', 2, 4);


