insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (351, '门诊部', '/admin/dept.do?task=deptList&type=MZ&modfunid=351', 79, 1);

delete from t_power where id='303';

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (303, '住院部', '/admin/dept.do?task=deptList&type=ZY&modfunid=303', 79, 2);


drop table T_DEPT;
-- Create table
create table T_DEPT
(
  ID          NUMBER not null,
  DEPT_NAME   VARCHAR2(20),
  PID         NUMBER,
  PINYIN      VARCHAR2(100),
  WUBI        VARCHAR2(100),
  ISREG       VARCHAR2(10) default '0',
  ISMZ        VARCHAR2(10) default '0',
  ISZY        VARCHAR2(10) default '0',
  ISXZ        VARCHAR2(10) default '0',
  ISHQ        VARCHAR2(10) default '0',
  ISOTHER     VARCHAR2(10) default '0',
  REGFEE      NUMBER(15,2) default 0.00,
  STATE       VARCHAR2(10) default 0,
  REMARK      VARCHAR2(255),
  CREATE_DATE DATE
);
-- Add comments to the columns 
comment on column T_DEPT.DEPT_NAME
  is '科室部门名称';
comment on column T_DEPT.PINYIN
  is '拼音';
comment on column T_DEPT.WUBI
  is '五笔';
comment on column T_DEPT.ISREG
  is '是否挂号';
comment on column T_DEPT.ISMZ
  is '是否门诊科室';
comment on column T_DEPT.ISZY
  is '是否住院科室';
comment on column T_DEPT.ISXZ
  is '是否行政科室';
comment on column T_DEPT.ISHQ
  is '是否后勤科室';
comment on column T_DEPT.ISOTHER
  is '是否其他科室';
comment on column T_DEPT.REGFEE
  is '挂号金额';
comment on column T_DEPT.STATE
  is '状态1可用0不可用';
comment on column T_DEPT.REMARK
  is '备注';
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_DEPT
  add constraint T_DEPT_PRIMARY_KEY primary key (ID);
