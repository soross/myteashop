insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (351, '���ﲿ', '/admin/dept.do?task=deptList&type=MZ&modfunid=351', 79, 1);

delete from t_power where id='303';

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (303, 'סԺ��', '/admin/dept.do?task=deptList&type=ZY&modfunid=303', 79, 2);


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
  is '���Ҳ�������';
comment on column T_DEPT.PINYIN
  is 'ƴ��';
comment on column T_DEPT.WUBI
  is '���';
comment on column T_DEPT.ISREG
  is '�Ƿ�Һ�';
comment on column T_DEPT.ISMZ
  is '�Ƿ��������';
comment on column T_DEPT.ISZY
  is '�Ƿ�סԺ����';
comment on column T_DEPT.ISXZ
  is '�Ƿ���������';
comment on column T_DEPT.ISHQ
  is '�Ƿ���ڿ���';
comment on column T_DEPT.ISOTHER
  is '�Ƿ���������';
comment on column T_DEPT.REGFEE
  is '�ҺŽ��';
comment on column T_DEPT.STATE
  is '״̬1����0������';
comment on column T_DEPT.REMARK
  is '��ע';
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_DEPT
  add constraint T_DEPT_PRIMARY_KEY primary key (ID);
