-- Create table
create table T_STAFF
(
  ID          NUMBER not null,
  STAFFNAME   VARCHAR2(20),
  SEX         VARCHAR2(10),
  PINYIN      VARCHAR2(50),
  WUBI        VARCHAR2(50),
  DEPTID      VARCHAR2(20),
  NATION      VARCHAR2(100),
  BIRTHADD    VARCHAR2(100),
  IDCODE      VARCHAR2(50),
  REMARK      VARCHAR2(255),
  STATE       VARCHAR2(10) default 0,
  CREATE_DATE DATE default sysdate,
  ISDOCTOR    VARCHAR2(10) default 0,
  ISNURSE     VARCHAR2(10) default 0,
  ISMT        VARCHAR2(10) default 0,
  ISAPP       VARCHAR2(10) default 0,
  ISOP        VARCHAR2(10) default 0,
  ISPRE       VARCHAR2(10) default 0,
  BIRTHDAY    DATE,
  AGE         NUMBER,
  ISMARRY     VARCHAR2(10) default 2,
  POLSTATE    VARCHAR2(20),
  EMAIL       VARCHAR2(50),
  TEL         VARCHAR2(50),
  MOBILE      VARCHAR2(50),
  WORKDATE    DATE,
  WORKAGE     NUMBER,
  INDATE      DATE,
  INAGE       NUMBER,
  COLLAGE     VARCHAR2(50),
  MAJOR       VARCHAR2(50),
  JOB         VARCHAR2(50),
  JOBTITLE    VARCHAR2(50),
  ADDRESS     VARCHAR2(255)
);
-- Add comments to the table 
comment on table T_STAFF
  is '���µ���';
-- Add comments to the columns 
comment on column T_STAFF.STAFFNAME
  is 'ְԱ����';
comment on column T_STAFF.SEX
  is '�Ա�0��1Ů2δ֪';
comment on column T_STAFF.DEPTID
  is '���Ҳ���';
comment on column T_STAFF.NATION
  is '����';
comment on column T_STAFF.BIRTHADD
  is '���������';
comment on column T_STAFF.STATE
  is '״̬0��ְ1��ְ';
comment on column T_STAFF.ISDOCTOR
  is '�Ƿ�ҽ��0������1����';
comment on column T_STAFF.ISNURSE
  is '�Ƿ�ʿ0������1����';
comment on column T_STAFF.ISMT
  is '�Ƿ�ҽ��0������1����';
comment on column T_STAFF.ISOP
  is '�Ƿ����Ա0������1����';
comment on column T_STAFF.ISPRE
  is '�Ƿ񴦷�Ȩ0������1����';
comment on column T_STAFF.BIRTHDAY
  is '��������';
comment on column T_STAFF.AGE
  is '����';
comment on column T_STAFF.ISMARRY
  is '����״̬0δ��1�ѻ�2δ֪';
comment on column T_STAFF.POLSTATE
  is '������ò';
comment on column T_STAFF.EMAIL
  is 'email';
comment on column T_STAFF.TEL
  is '�绰';
comment on column T_STAFF.MOBILE
  is '�ֻ�';
comment on column T_STAFF.WORKDATE
  is '�μӹ���ʱ��';
comment on column T_STAFF.WORKAGE
  is '����';
comment on column T_STAFF.INDATE
  is '������λʱ��';
comment on column T_STAFF.INAGE
  is '����λ����';
comment on column T_STAFF.COLLAGE
  is 'ѧ��';
comment on column T_STAFF.MAJOR
  is 'רҵ';
comment on column T_STAFF.JOB
  is 'ְ��';
comment on column T_STAFF.JOBTITLE
  is 'ְ��';
comment on column T_STAFF.ADDRESS
  is '��ϵ��ַ';
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_STAFF
  add constraint T_STAFF_PK primary key (ID);

  
  -- Create sequence 
create sequence SEQ_STAFF
minvalue 1
maxvalue 999999999999999999999999999
start with 1000
increment by 1
cache 20;
 

delete from t_power where id='80';
 
insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (384, 'ɾ�����µ���', '/admin/staff.do?task=deleteStaff&modfunid=383', 80, -1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (383, '�޸����µ���', '/admin/staff.do?task=toUpdateStaff&modfunid=383', 80, -1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (382, '������µ���', '/admin/staff.do?task=toAddStaff&modfunid=382', 80, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (381, '���µ����б�', '/admin/staff.do?task=staffList&modfunid=381', 80, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (80, '���µ���', '/admin/staff.do?task=staffList&modfunid=80', 77, 3);


drop table T_SICKBED;

-- Create table
create table T_SICKBED
(
  ID          NUMBER not null,
  SICKBED     VARCHAR2(20),
  CODE        VARCHAR2(30),
  DEPTID      VARCHAR2(20),
  SHOWINDEX   VARCHAR2(10),
  AREA        VARCHAR2(10),
  LEVELTYPE   VARCHAR2(10) default 1,
  PRICE       NUMBER(20,2),
  PINYIN      VARCHAR2(20),
  WUBI        VARCHAR2(20),
  HOSPNO      VARCHAR2(20),
  REMARK      VARCHAR2(255),
  STATE       VARCHAR2(10) default 1,
  CREATE_DATE DATE default sysdate
);
-- Add comments to the table 
comment on table T_SICKBED
  is '����';
-- Add comments to the columns 
comment on column T_SICKBED.SICKBED
  is '����';
comment on column T_SICKBED.CODE
  is '����';
comment on column T_SICKBED.DEPTID
  is '���Ҳ���';
comment on column T_SICKBED.SHOWINDEX
  is '��ʾ˳��';
comment on column T_SICKBED.AREA
  is '��������';
comment on column T_SICKBED.LEVELTYPE
  is '��λ����1��ͨ2�м�3�߼�';
comment on column T_SICKBED.PRICE
  is '��׼���';
comment on column T_SICKBED.HOSPNO
  is '��ǰסԺ��';
comment on column T_SICKBED.STATE
  is '״̬0������1����';
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_SICKBED
  add constraint T_SICKBED_PRIMARY_KEY primary key (ID);

-- Create sequence 
create sequence SEQ_SICKBED
minvalue 1
maxvalue 999999999999999999999999999
start with 1000
increment by 1
cache 20;



-- Create table
create table T_COLLECT
(
  ID          NUMBER not null,
  COLLECTNAME VARCHAR2(50),
  CODE        VARCHAR2(20),
  CREATE_DATE DATE default sysdate
);
-- Add comments to the table 
comment on table T_COLLECT
  is '���ܿ�Ŀ';
-- Add comments to the columns 
comment on column T_COLLECT.COLLECTNAME
  is '���ܿ�Ŀ����';
comment on column T_COLLECT.CODE
  is '����';
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_COLLECT
  add constraint T_COLLECT_PK primary key (ID);

-- Create sequence 
create sequence SEQ_COLLECT
minvalue 1
maxvalue 999999999999999999999999999
start with 100
increment by 1
cache 20;


drop table T_FEE_ITEM;

-- Create table
create table T_FEE_ITEM
(
  ID          NUMBER not null,
  FEEITEMNAME VARCHAR2(50),
  REMARK      VARCHAR2(255),
  CREATE_DATE DATE,
  CODE        VARCHAR2(50),
  PINYIN      VARCHAR2(50),
  WUBI        VARCHAR2(50),
  SPEC        VARCHAR2(50),
  UNIT        VARCHAR2(50),
  PRICEMZ     NUMBER(20,2),
  PRICEZY     NUMBER(20,2),
  COLLECTID   VARCHAR2(20),
  OBJ         VARCHAR2(20),
  DEPTID      VARCHAR2(20),
  PRINTNAMEMZ VARCHAR2(100),
  STATE       VARCHAR2(10) default 1,
  PRINTNAMEZY VARCHAR2(100),
  YBTYPE      VARCHAR2(10),
  YBCODE      VARCHAR2(50),
  YBNAME      VARCHAR2(50),
  NBTYPE      VARCHAR2(10),
  NBCODE      VARCHAR2(50),
  NBNAME      VARCHAR2(50),
  PAYSELF     VARCHAR2(20)
);
-- Add comments to the table 
comment on table T_FEE_ITEM
  is '�շ���Ŀ';
-- Add comments to the columns 
comment on column T_FEE_ITEM.FEEITEMNAME
  is '�շ���Ŀ����';
comment on column T_FEE_ITEM.CODE
  is '����';
comment on column T_FEE_ITEM.SPEC
  is '���';
comment on column T_FEE_ITEM.UNIT
  is '��λ';
comment on column T_FEE_ITEM.PRICEMZ
  is '�����׼����';
comment on column T_FEE_ITEM.PRICEZY
  is 'סԺ��׼����';
comment on column T_FEE_ITEM.COLLECTID
  is '���ܿ�Ŀ';
comment on column T_FEE_ITEM.OBJ
  is 'ʹ�ö���';
comment on column T_FEE_ITEM.DEPTID
  is '�������';
comment on column T_FEE_ITEM.PRINTNAMEMZ
  is '�����ӡ����';
comment on column T_FEE_ITEM.STATE
  is '״̬1����2������';
comment on column T_FEE_ITEM.PRINTNAMEZY
  is 'סԺ��ӡ����';
comment on column T_FEE_ITEM.YBTYPE
  is 'ҽ�����';
comment on column T_FEE_ITEM.YBCODE
  is 'ҽ������';
comment on column T_FEE_ITEM.YBNAME
  is 'ҽ������';
comment on column T_FEE_ITEM.NBTYPE
  is 'ũ�����';
comment on column T_FEE_ITEM.NBCODE
  is 'ũ������';
comment on column T_FEE_ITEM.NBNAME
  is 'ũ������';
comment on column T_FEE_ITEM.PAYSELF
  is '�Ը�����';
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_FEE_ITEM
  add constraint T_FEE_ITEM_PK primary key (ID);
  
-- Create sequence 
create sequence SEQ_FEE_ITEM
minvalue 1
maxvalue 999999999999999999999999999
start with 1000
increment by 1
nocache;


-- Create table
create table T_REGISTER_TYPE
(
  ID          NUMBER not null,
  REGTYPENAME VARCHAR2(50),
  REMARK      VARCHAR2(255),
  CREATE_DATE DATE default sysdate,
  STATE       VARCHAR2(50),
  PRICE       NUMBER(20,2)
);
-- Add comments to the table 
comment on table T_REGISTER_TYPE
  is '����Һ����';
-- Add comments to the columns 
comment on column T_REGISTER_TYPE.REGTYPENAME
  is '����Һ��������';
comment on column T_REGISTER_TYPE.REMARK
  is '��ע';
comment on column T_REGISTER_TYPE.STATE
  is '״̬';
comment on column T_REGISTER_TYPE.PRICE
  is '�۸�';
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_REGISTER_TYPE
  add constraint T_REGISTER_TYPE_PK primary key (ID);


-- Create sequence 
create sequence SEQ_REGISTER_TYPE
minvalue 1
maxvalue 999999999999999999999999999
start with 1000
increment by 1
cache 20;



-- Create table
create table T_UNIT
(
  ID          NUMBER not null,
  UNITNAME    VARCHAR2(100),
  REMARK      VARCHAR2(255),
  WUBI        VARCHAR2(255),
  LINKMAN     VARCHAR2(50),
  MOBILE      VARCHAR2(50),
  TEL         VARCHAR2(50),
  CREATE_DATE DATE default sysdate,
  ADDRESS     VARCHAR2(255),
  UNIT_FLAG   VARCHAR2(20) default 'GOTO',
  PINYIN      VARCHAR2(255),
  FAX         VARCHAR2(50),
  ZIP         VARCHAR2(20),
  LEGAL       VARCHAR2(50),
  BANKNAME    VARCHAR2(50),
  BANKCODE    VARCHAR2(50),
  STATE       VARCHAR2(10) default 1
);
-- Add comments to the table 
comment on table T_UNIT
  is '����ǩԼ��λ';
-- Add comments to the columns 
comment on column T_UNIT.UNITNAME
  is '������λ����';
comment on column T_UNIT.REMARK
  is '��ע';
comment on column T_UNIT.LINKMAN
  is '��ϵ��';
comment on column T_UNIT.MOBILE
  is '�ֻ�';
comment on column T_UNIT.TEL
  is '�绰';
comment on column T_UNIT.ADDRESS
  is '��ϵ��ַ';
comment on column T_UNIT.UNIT_FLAG
  is '�ֵ䣺SIGNǩԼGOTO����';
comment on column T_UNIT.FAX
  is '����';
comment on column T_UNIT.ZIP
  is '�ʱ�';
comment on column T_UNIT.LEGAL
  is '��������';
comment on column T_UNIT.BANKNAME
  is '��������';
comment on column T_UNIT.BANKCODE
  is '�����˻�';
comment on column T_UNIT.STATE
  is '״̬1����0������';
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_UNIT
  add constraint T_UNIT_PK primary key (ID);

-- Create sequence 
create sequence SEQ_UNIT
minvalue 1
maxvalue 999999999999999999999999999
start with 21
increment by 1
cache 20;
