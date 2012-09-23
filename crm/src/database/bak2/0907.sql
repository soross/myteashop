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
  is '人事档案';
-- Add comments to the columns 
comment on column T_STAFF.STAFFNAME
  is '职员姓名';
comment on column T_STAFF.SEX
  is '性别0男1女2未知';
comment on column T_STAFF.DEPTID
  is '科室部门';
comment on column T_STAFF.NATION
  is '民族';
comment on column T_STAFF.BIRTHADD
  is '籍贯出生地';
comment on column T_STAFF.STATE
  is '状态0离职1在职';
comment on column T_STAFF.ISDOCTOR
  is '是否医生0不可以1可用';
comment on column T_STAFF.ISNURSE
  is '是否护士0不可以1可用';
comment on column T_STAFF.ISMT
  is '是否医技0不可以1可用';
comment on column T_STAFF.ISOP
  is '是否操作员0不可以1可用';
comment on column T_STAFF.ISPRE
  is '是否处方权0不可以1可用';
comment on column T_STAFF.BIRTHDAY
  is '出生日期';
comment on column T_STAFF.AGE
  is '年龄';
comment on column T_STAFF.ISMARRY
  is '婚姻状态0未婚1已婚2未知';
comment on column T_STAFF.POLSTATE
  is '政治面貌';
comment on column T_STAFF.EMAIL
  is 'email';
comment on column T_STAFF.TEL
  is '电话';
comment on column T_STAFF.MOBILE
  is '手机';
comment on column T_STAFF.WORKDATE
  is '参加工作时间';
comment on column T_STAFF.WORKAGE
  is '工龄';
comment on column T_STAFF.INDATE
  is '进本单位时间';
comment on column T_STAFF.INAGE
  is '本单位工龄';
comment on column T_STAFF.COLLAGE
  is '学历';
comment on column T_STAFF.MAJOR
  is '专业';
comment on column T_STAFF.JOB
  is '职务';
comment on column T_STAFF.JOBTITLE
  is '职称';
comment on column T_STAFF.ADDRESS
  is '联系地址';
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
values (384, '删除人事档案', '/admin/staff.do?task=deleteStaff&modfunid=383', 80, -1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (383, '修改人事档案', '/admin/staff.do?task=toUpdateStaff&modfunid=383', 80, -1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (382, '添加人事档案', '/admin/staff.do?task=toAddStaff&modfunid=382', 80, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (381, '人事档案列表', '/admin/staff.do?task=staffList&modfunid=381', 80, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (80, '人事档案', '/admin/staff.do?task=staffList&modfunid=80', 77, 3);


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
  is '病床';
-- Add comments to the columns 
comment on column T_SICKBED.SICKBED
  is '名称';
comment on column T_SICKBED.CODE
  is '编码';
comment on column T_SICKBED.DEPTID
  is '科室部门';
comment on column T_SICKBED.SHOWINDEX
  is '显示顺序';
comment on column T_SICKBED.AREA
  is '所属病区';
comment on column T_SICKBED.LEVELTYPE
  is '床位级别1普通2中级3高级';
comment on column T_SICKBED.PRICE
  is '标准金额';
comment on column T_SICKBED.HOSPNO
  is '当前住院号';
comment on column T_SICKBED.STATE
  is '状态0不可用1可用';
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
  is '汇总科目';
-- Add comments to the columns 
comment on column T_COLLECT.COLLECTNAME
  is '汇总科目名称';
comment on column T_COLLECT.CODE
  is '编码';
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
  is '收费项目';
-- Add comments to the columns 
comment on column T_FEE_ITEM.FEEITEMNAME
  is '收费项目名称';
comment on column T_FEE_ITEM.CODE
  is '编码';
comment on column T_FEE_ITEM.SPEC
  is '规格';
comment on column T_FEE_ITEM.UNIT
  is '单位';
comment on column T_FEE_ITEM.PRICEMZ
  is '门诊标准单价';
comment on column T_FEE_ITEM.PRICEZY
  is '住院标准单价';
comment on column T_FEE_ITEM.COLLECTID
  is '汇总科目';
comment on column T_FEE_ITEM.OBJ
  is '使用对象';
comment on column T_FEE_ITEM.DEPTID
  is '核算科室';
comment on column T_FEE_ITEM.PRINTNAMEMZ
  is '门诊打印名称';
comment on column T_FEE_ITEM.STATE
  is '状态1可用2不可用';
comment on column T_FEE_ITEM.PRINTNAMEZY
  is '住院打印名称';
comment on column T_FEE_ITEM.YBTYPE
  is '医保类别';
comment on column T_FEE_ITEM.YBCODE
  is '医保编码';
comment on column T_FEE_ITEM.YBNAME
  is '医保名称';
comment on column T_FEE_ITEM.NBTYPE
  is '农保类别';
comment on column T_FEE_ITEM.NBCODE
  is '农保编码';
comment on column T_FEE_ITEM.NBNAME
  is '农保名称';
comment on column T_FEE_ITEM.PAYSELF
  is '自付比率';
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
  is '门诊挂号类别';
-- Add comments to the columns 
comment on column T_REGISTER_TYPE.REGTYPENAME
  is '门诊挂号类别名称';
comment on column T_REGISTER_TYPE.REMARK
  is '备注';
comment on column T_REGISTER_TYPE.STATE
  is '状态';
comment on column T_REGISTER_TYPE.PRICE
  is '价格';
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
  is '往来签约单位';
-- Add comments to the columns 
comment on column T_UNIT.UNITNAME
  is '往来单位名称';
comment on column T_UNIT.REMARK
  is '备注';
comment on column T_UNIT.LINKMAN
  is '联系人';
comment on column T_UNIT.MOBILE
  is '手机';
comment on column T_UNIT.TEL
  is '电话';
comment on column T_UNIT.ADDRESS
  is '联系地址';
comment on column T_UNIT.UNIT_FLAG
  is '字典：SIGN签约GOTO往来';
comment on column T_UNIT.FAX
  is '传真';
comment on column T_UNIT.ZIP
  is '邮编';
comment on column T_UNIT.LEGAL
  is '法定代表';
comment on column T_UNIT.BANKNAME
  is '开户银行';
comment on column T_UNIT.BANKCODE
  is '银行账户';
comment on column T_UNIT.STATE
  is '状态1可用0不可用';
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
