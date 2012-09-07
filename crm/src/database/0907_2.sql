
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
  is '����������������';
-- Add comments to the columns 
comment on column T_MANUFACTURER.MFNAME
  is '��������';
comment on column T_MANUFACTURER.LINKMAN
  is '��ϵ��';
comment on column T_MANUFACTURER.TEL
  is '��ϵ�绰';
comment on column T_MANUFACTURER.FAX
  is '����';
comment on column T_MANUFACTURER.ADDRESS
  is '��ϵ��ַ';
comment on column T_MANUFACTURER.ZIP
  is '�ʱ�';
comment on column T_MANUFACTURER.STATE
  is '״̬1����0������';
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
  is '���߿��';
-- Add comments to the columns 
comment on column T_TOOL_SAVE.TOOLNAME
  is '��������';
comment on column T_TOOL_SAVE.CODE
  is '����';
comment on column T_TOOL_SAVE.TOOLTYPE
  is '���߷�����';
comment on column T_TOOL_SAVE.SAVETYPE
  is '��������';
comment on column T_TOOL_SAVE.OBJ
  is '���ö���';
comment on column T_TOOL_SAVE.STATE
  is '�Ƿ���Ч1����0������';
comment on column T_TOOL_SAVE.OUTMZ
  is '���﷢����';
comment on column T_TOOL_SAVE.OUTZY
  is 'סԺ������';
comment on column T_TOOL_SAVE.ITEM
  is '������Ŀ';
comment on column T_TOOL_SAVE.ISNEG
  is '�����0������1����';
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
  is '��������';
-- Add comments to the columns 
comment on column T_TOOLINFO.TOOLNAME
  is '��������';
comment on column T_TOOLINFO.WUBI
  is 'ƴ��';
comment on column T_TOOLINFO.PINYIN
  is '���';
comment on column T_TOOLINFO.CODE
  is '����';
comment on column T_TOOLINFO.ALIASNAME
  is '����';
comment on column T_TOOLINFO.ALIASPINYIN
  is '����ƴ��';
comment on column T_TOOLINFO.ALIASWUBI
  is '�������';
comment on column T_TOOLINFO.STATE
  is '״̬1����0������';
comment on column T_TOOLINFO.OBJ
  is '���ö���';
comment on column T_TOOLINFO.SPEC
  is '���';
comment on column T_TOOLINFO.WEIGHT
  is '����';
comment on column T_TOOLINFO.HELPUNIT
  is 'Э����λ';
comment on column T_TOOLINFO.SALEUNIT
  is '���۵�λ';
comment on column T_TOOLINFO.CONVER
  is '�����ϵ';
comment on column T_TOOLINFO.MATERIAL
  is '����';
comment on column T_TOOLINFO.PRODADD
  is '����';
comment on column T_TOOLINFO.SAVEMAX
  is '��߿��';
comment on column T_TOOLINFO.SAVEMIN
  is '��Ϳ��';
comment on column T_TOOLINFO.PRODBUSSION
  is '��������';
comment on column T_TOOLINFO.YBTYPE
  is 'ҽ������';
comment on column T_TOOLINFO.YBCODE
  is 'ҽ������';
comment on column T_TOOLINFO.YBNAME
  is 'ҽ������';
comment on column T_TOOLINFO.NBTYPE
  is 'ũ������';
comment on column T_TOOLINFO.NBCODE
  is 'ũ������';
comment on column T_TOOLINFO.NBNAME
  is 'ũ������';
comment on column T_TOOLINFO.PAYSELF
  is '�Ը�����';
comment on column T_TOOLINFO.MINCOST
  is '����ɱ�';
comment on column T_TOOLINFO.SALECOST
  is '���۵���';
comment on column T_TOOLINFO.MAXCOST
  is '����޼�';
comment on column T_TOOLINFO.REFCODE
  is '��׼�ĺ�';
comment on column T_TOOLINFO.REMARK
  is '��ע';
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
  is '��Ʒ';
-- Add comments to the columns 
comment on column T_GOODS.GOODSNAME
  is '��Ʒ����';
comment on column T_GOODS.CODE
  is '����';
comment on column T_GOODS.GOODSTYPE
  is '��Ʒ����';
comment on column T_GOODS.SPEC
  is '���˵��';
comment on column T_GOODS.UNIT
  is '��λ';
comment on column T_GOODS.ALLUNIT
  is '��װ��λ';
comment on column T_GOODS.CONVER
  is '�����ϵ';
comment on column T_GOODS.MINSAVE
  is '��Ϳ��';
comment on column T_GOODS.MAXSAVE
  is '��߿��';
comment on column T_GOODS.PRODUNIT
  is '���ɵ�λ';
comment on column T_GOODS.REMARK
  is '��ע˵��';
comment on column T_GOODS.STATE
  is '״̬';
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
  is '��������';
-- Add comments to the columns 
comment on column T_GOODS_TYPE.TYPENAME
  is '��������';
comment on column T_GOODS_TYPE.PID
  is '����id';

  
  -- Create sequence 
create sequence SEQ_GOODS_TYPE
minvalue 1
maxvalue 999999999999999999999999999
start with 100
increment by 1
cache 20;
 
insert into t_goods_type (ID, TYPENAME, PID)
values (1, '��������', -1);

insert into t_goods_type (ID, TYPENAME, PID)
values (2, '�����׺�Ʒ', -1);

insert into t_goods_type (ID, TYPENAME, PID)
values (3, '��������', -1);

insert into t_goods_type (ID, TYPENAME, PID)
values (4, 'ӡˢƷ', 3);

insert into t_goods_type (ID, TYPENAME, PID)
values (5, '�칫��Ʒ', 3);

insert into t_goods_type (ID, TYPENAME, PID)
values (6, '����װ��', 3);

insert into t_goods_type (ID, TYPENAME, PID)
values (7, 'ϴ����Ʒ', 3);

insert into t_goods_type (ID, TYPENAME, PID)
values (8, '��������', 3);

insert into t_goods_type (ID, TYPENAME, PID)
values (9, '��ɨ�þ�', 3);

insert into t_goods_type (ID, TYPENAME, PID)
values (10, '��������', 3);

insert into t_goods_type (ID, TYPENAME, PID)
values (11, '������������', -1);

insert into t_goods_type (ID, TYPENAME, PID)
values (12, '��ѧ�Լ�', -1);



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
  is '���˼�������';
-- Add comments to the columns 
comment on column T_ICD.ICDCODE
  is '����';
comment on column T_ICD.ICDNAME
  is '����';
comment on column T_ICD.CODE
  is '�Զ������';
comment on column T_ICD.STATE
  is '״̬1����0������';
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
  