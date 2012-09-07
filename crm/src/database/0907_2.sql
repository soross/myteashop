
-- Create table
create table T_MANUFACTURER
(
  ID          NUMBER,
  MFNAME      VARCHAR2(50),
  PINYIN      VARCHAR2(255),
  WUBI        VARCHAR2(255),
  LINKMAN     VARCHAR2(50),
  TEL         VARCHAR2(50),
  FAX         VARCHAR2(50),
  ADDRESS     VARCHAR2(255),
  ZIP         VARCHAR2(20),
  REMARK      VARCHAR2(255),
  STATE       VARCHAR2(10),
  CREATE_DATE DATE default sysdate
);
-- Add comments to the table 
comment on table T_MANUFACTURER
  is '生产厂商往来厂商';
-- Add comments to the columns 
comment on column T_MANUFACTURER.MFNAME
  is '厂商名称';
comment on column T_MANUFACTURER.LINKMAN
  is '联系人';
comment on column T_MANUFACTURER.TEL
  is '联系电话';
comment on column T_MANUFACTURER.FAX
  is '传真';
comment on column T_MANUFACTURER.ADDRESS
  is '联系地址';
comment on column T_MANUFACTURER.ZIP
  is '邮编';
comment on column T_MANUFACTURER.STATE
  is '状态1可用0不可用';
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_MANUFACTURER
  add constraint T_MANUFACTURER_PK primary key (ID);

-- Create sequence 
create sequence SEQ_MANUFACTURER
minvalue 1
maxvalue 999999999999999999999999999
start with 1000
increment by 1
cache 20;


-- Create table
create table T_TOOL_SAVE
(
  ID          NUMBER not null,
  TOOLNAME    VARCHAR2(255),
  PINYIN      VARCHAR2(50),
  WUBI        VARCHAR2(50),
  CODE        VARCHAR2(20),
  TOOLTYPE    VARCHAR2(20),
  SAVETYPE    VARCHAR2(20),
  OBJ         VARCHAR2(20),
  STATE       VARCHAR2(10) default 1,
  OUTMZ       VARCHAR2(20),
  OUTZY       VARCHAR2(20),
  ITEM        VARCHAR2(20),
  ISNEG       VARCHAR2(10) default 0,
  REMARK      VARCHAR2(255),
  CREATE_DATE DATE default sysdate
);
-- Add comments to the table 
comment on table T_TOOL_SAVE
  is '器具库存';
-- Add comments to the columns 
comment on column T_TOOL_SAVE.TOOLNAME
  is '器具名称';
comment on column T_TOOL_SAVE.CODE
  is '编码';
comment on column T_TOOL_SAVE.TOOLTYPE
  is '器具房类型';
comment on column T_TOOL_SAVE.SAVETYPE
  is '存物类型';
comment on column T_TOOL_SAVE.OBJ
  is '适用对象';
comment on column T_TOOL_SAVE.STATE
  is '是否有效1可用0不可用';
comment on column T_TOOL_SAVE.OUTMZ
  is '门诊发器具';
comment on column T_TOOL_SAVE.OUTZY
  is '住院发器具';
comment on column T_TOOL_SAVE.ITEM
  is '处方项目';
comment on column T_TOOL_SAVE.ISNEG
  is '负库存0不允许1允许';
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_TOOL_SAVE
  add constraint T_TOOL_SAVE_PK primary key (ID);
  
-- Create sequence 
create sequence SEQ_TOOL_SAVE
minvalue 1
maxvalue 999999999999999999999999999
start with 1000
increment by 1
cache 20;

-- Create table
create table T_TOOLINFO
(
  ID          NUMBER not null,
  TOOLNAME    VARCHAR2(100),
  WUBI        VARCHAR2(50),
  PINYIN      VARCHAR2(50),
  CODE        VARCHAR2(50),
  ALIASNAME   VARCHAR2(100),
  ALIASPINYIN VARCHAR2(50),
  ALIASWUBI   VARCHAR2(50),
  STATE       VARCHAR2(10) default 1,
  OBJ         VARCHAR2(10),
  SPEC        VARCHAR2(255),
  WEIGHT      VARCHAR2(20),
  HELPUNIT    VARCHAR2(50),
  SALEUNIT    VARCHAR2(50),
  CONVER      VARCHAR2(50),
  MATERIAL    VARCHAR2(50),
  PRODADD     VARCHAR2(50),
  SAVEMAX     NUMBER,
  SAVEMIN     NUMBER,
  PRODBUSSION VARCHAR2(50),
  YBTYPE      VARCHAR2(50),
  YBCODE      VARCHAR2(50),
  YBNAME      VARCHAR2(50),
  NBTYPE      VARCHAR2(50),
  NBCODE      VARCHAR2(50),
  NBNAME      VARCHAR2(50),
  PAYSELF     VARCHAR2(50),
  MINCOST     VARCHAR2(50),
  SALECOST    VARCHAR2(50),
  MAXCOST     VARCHAR2(50),
  CREATE_DATE DATE default sysdate,
  REFCODE     VARCHAR2(50),
  REMARK      CLOB
);
-- Add comments to the table 
comment on table T_TOOLINFO
  is '器具资料';
-- Add comments to the columns 
comment on column T_TOOLINFO.TOOLNAME
  is '器具名称';
comment on column T_TOOLINFO.WUBI
  is '拼音';
comment on column T_TOOLINFO.PINYIN
  is '五笔';
comment on column T_TOOLINFO.CODE
  is '编码';
comment on column T_TOOLINFO.ALIASNAME
  is '别名';
comment on column T_TOOLINFO.ALIASPINYIN
  is '别名拼音';
comment on column T_TOOLINFO.ALIASWUBI
  is '别名五笔';
comment on column T_TOOLINFO.STATE
  is '状态1可用0不可用';
comment on column T_TOOLINFO.OBJ
  is '适用对象';
comment on column T_TOOLINFO.SPEC
  is '规格';
comment on column T_TOOLINFO.WEIGHT
  is '重量';
comment on column T_TOOLINFO.HELPUNIT
  is '协助单位';
comment on column T_TOOLINFO.SALEUNIT
  is '销售单位';
comment on column T_TOOLINFO.CONVER
  is '换算关系';
comment on column T_TOOLINFO.MATERIAL
  is '材料';
comment on column T_TOOLINFO.PRODADD
  is '产地';
comment on column T_TOOLINFO.SAVEMAX
  is '最高库存';
comment on column T_TOOLINFO.SAVEMIN
  is '最低库存';
comment on column T_TOOLINFO.PRODBUSSION
  is '生产厂家';
comment on column T_TOOLINFO.YBTYPE
  is '医保类型';
comment on column T_TOOLINFO.YBCODE
  is '医保编码';
comment on column T_TOOLINFO.YBNAME
  is '医保名称';
comment on column T_TOOLINFO.NBTYPE
  is '农保类型';
comment on column T_TOOLINFO.NBCODE
  is '农保编码';
comment on column T_TOOLINFO.NBNAME
  is '农保名称';
comment on column T_TOOLINFO.PAYSELF
  is '自付比率';
comment on column T_TOOLINFO.MINCOST
  is '最近成本';
comment on column T_TOOLINFO.SALECOST
  is '零售单价';
comment on column T_TOOLINFO.MAXCOST
  is '最高限价';
comment on column T_TOOLINFO.REFCODE
  is '批准文号';
comment on column T_TOOLINFO.REMARK
  is '备注';
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_TOOLINFO
  add constraint T_TOOLINFO_PK primary key (ID);


-- Create sequence 
create sequence SEQ_TOOLINFO
minvalue 1
maxvalue 999999999999999999999999999
start with 100
increment by 1
cache 20;


-- Create table
create table T_GOODS
(
  ID          NUMBER not null,
  GOODSNAME   VARCHAR2(50),
  CODE        VARCHAR2(50),
  PINYIN      VARCHAR2(50),
  WUBI        VARCHAR2(50),
  GOODSTYPE   VARCHAR2(20),
  SPEC        VARCHAR2(255),
  UNIT        VARCHAR2(50),
  ALLUNIT     VARCHAR2(50),
  CONVER      VARCHAR2(20),
  MINSAVE     VARCHAR2(20),
  MAXSAVE     VARCHAR2(20),
  PRODUNIT    VARCHAR2(255),
  REMARK      VARCHAR2(255),
  STATE       VARCHAR2(10),
  CREATE_DATE DATE
);
-- Add comments to the table 
comment on table T_GOODS
  is '物品';
-- Add comments to the columns 
comment on column T_GOODS.GOODSNAME
  is '物品名称';
comment on column T_GOODS.CODE
  is '编码';
comment on column T_GOODS.GOODSTYPE
  is '物品类型';
comment on column T_GOODS.SPEC
  is '规格说明';
comment on column T_GOODS.UNIT
  is '单位';
comment on column T_GOODS.ALLUNIT
  is '整装单位';
comment on column T_GOODS.CONVER
  is '换算关系';
comment on column T_GOODS.MINSAVE
  is '最低库存';
comment on column T_GOODS.MAXSAVE
  is '最高库存';
comment on column T_GOODS.PRODUNIT
  is '生成单位';
comment on column T_GOODS.REMARK
  is '备注说明';
comment on column T_GOODS.STATE
  is '状态';
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_GOODS
  add constraint T_GOODS_PK primary key (ID);

-- Create sequence 
create sequence SEQ_GOODS
minvalue 1
maxvalue 999999999999999999999999999
start with 100
increment by 1
cache 20;


-- Create table
create table T_GOODS_TYPE
(
  ID       NUMBER,
  TYPENAME VARCHAR2(50),
  PID      NUMBER
);
-- Add comments to the table 
comment on table T_GOODS_TYPE
  is '物资类型';
-- Add comments to the columns 
comment on column T_GOODS_TYPE.TYPENAME
  is '类型名称';
comment on column T_GOODS_TYPE.PID
  is '父类id';

  
  -- Create sequence 
create sequence SEQ_GOODS_TYPE
minvalue 1
maxvalue 999999999999999999999999999
start with 100
increment by 1
cache 20;
 
insert into t_goods_type (ID, TYPENAME, PID)
values (1, '卫生材料', -1);

insert into t_goods_type (ID, TYPENAME, PID)
values (2, '低温易耗品', -1);

insert into t_goods_type (ID, TYPENAME, PID)
values (3, '其他材料', -1);

insert into t_goods_type (ID, TYPENAME, PID)
values (4, '印刷品', 3);

insert into t_goods_type (ID, TYPENAME, PID)
values (5, '办公用品', 3);

insert into t_goods_type (ID, TYPENAME, PID)
values (6, '被服装具', 3);

insert into t_goods_type (ID, TYPENAME, PID)
values (7, '洗涤用品', 3);

insert into t_goods_type (ID, TYPENAME, PID)
values (8, '电器材料', 3);

insert into t_goods_type (ID, TYPENAME, PID)
values (9, '清扫用具', 3);

insert into t_goods_type (ID, TYPENAME, PID)
values (10, '其他材料', 3);

insert into t_goods_type (ID, TYPENAME, PID)
values (11, '科室用器材料', -1);

insert into t_goods_type (ID, TYPENAME, PID)
values (12, '化学试剂', -1);



-- Create table
create table T_ICD
(
  ID          NUMBER not null,
  ICDCODE     VARCHAR2(100),
  ICDNAME     VARCHAR2(100),
  PINYIN      VARCHAR2(100),
  WUBI        VARCHAR2(100),
  CODE        VARCHAR2(100),
  STATE       VARCHAR2(100) default 0,
  CREATE_DATE DATE default sysdate,
  REMARK      VARCHAR2(255)
);
-- Add comments to the table 
comment on table T_ICD
  is '个人疾病编码';
-- Add comments to the columns 
comment on column T_ICD.ICDCODE
  is '编码';
comment on column T_ICD.ICDNAME
  is '名称';
comment on column T_ICD.CODE
  is '自定义编码';
comment on column T_ICD.STATE
  is '状态1可用0不可用';
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_ICD
  add constraint T_ICD_PK primary key (ID);

-- Create sequence 
create sequence SEQ_ICD
minvalue 1
maxvalue 999999999999999999999999999
start with 100
increment by 1
cache 20;
  