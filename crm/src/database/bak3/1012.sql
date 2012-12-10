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
  is '门诊证明申请';
-- Add comments to the columns 
comment on column T_PROVE.SICKID
  is '病人id';
comment on column T_PROVE.SICKNAME
  is '病人名称';
comment on column T_PROVE.IDCARD
  is '身份证号码';
comment on column T_PROVE.GARDEN
  is '性别';
comment on column T_PROVE.CREATE_DATE
  is '申请时间';
comment on column T_PROVE.CREATESTAFF
  is '操作员工';
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
values (771, '门诊证明申请列表', '/admin/prove.do?task=proveList&modfunid=771', 18, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (772, '门诊证明申请', '/admin/prove.do?task=toAddProve&modfunid=772', 18, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (773, '门诊证明申请修改', '/admin/prove.do?task=toUpdateProve&modfunid=773', 18, -1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (774, '门诊证明申请删除', '/admin/prove.do?task=deleteProve&modfunid=774', 18, -1);


delete from t_power t where t.id='18';

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (18, '门诊证明申请', '/admin/prove.do?task=toAddProve&modfunid=18', 2, 4);


