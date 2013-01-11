-- Create table
create table T_SICK_FEE_BILL
(
  ID          NUMBER not null,
  SICKID      VARCHAR2(50),
  BILLTYPE    VARCHAR2(50),
  TOTLEFEE    NUMBER(12,2),
  FEE         NUMBER(12,2),
  FEEREMARK   VARCHAR2(255),
  CREATE_DATE DATE,
  FLAG        VARCHAR2(50),
  REMARK      VARCHAR2(200),
  STAFFID     VARCHAR2(50)
);
-- Add comments to the columns 
comment on column T_SICK_FEE_BILL.SICKID
  is '病人id';
comment on column T_SICK_FEE_BILL.BILLTYPE
  is '类型MZ门诊ZY住院CY出院';
comment on column T_SICK_FEE_BILL.TOTLEFEE
  is '总额';
comment on column T_SICK_FEE_BILL.FEE
  is '发生变化金额';
comment on column T_SICK_FEE_BILL.FEEREMARK
  is '变化原因';
comment on column T_SICK_FEE_BILL.CREATE_DATE
  is '发生时间';
comment on column T_SICK_FEE_BILL.FLAG
  is '标识';
comment on column T_SICK_FEE_BILL.REMARK
  is '备注';
comment on column T_SICK_FEE_BILL.STAFFID
  is '操作员工';
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_SICK_FEE_BILL
  add constraint T_SICK_FEE_BILL_PK primary key (ID);
  
  
delete from t_power where id in('134','130','131','132','133');
insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (134, '患者缴款明细清单', '/admin/bill.do?task=addFeeBillList'||'&'||'modfunid=134', 128, 6);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (130, '患者门诊明细清单', '/admin/registerReport.do?task=regAmountList&modfunid=130', 128, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (131, '患者住院汇总清单', '/admin/registerReport.do?task=regZyAmount&modfunid=131', 128, 3);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (132, '患者住院明细清单', '/admin/registerReport.do?task=regZyAmountList&modfunid=132', 128, 4);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (133, '出院患者汇总清单', '/admin/registerReport.do?task=regCyAmount&modfunid=133', 128, 5);


delete from t_power t where t.id='121';--频次设定
delete from t_power t where t.id='122';--站点管理
delete from t_power t where t.id='56';--参数设定
delete from t_power t where t.id='58';--超时待机时间设置
delete from t_power t where t.id='59';--个性选项设置
delete from t_power t where t.id='62';--输入法设置
delete from t_power t where t.id='63';--用户喜好设置
delete from t_power t where t.id='69';--清理升级文件设置






