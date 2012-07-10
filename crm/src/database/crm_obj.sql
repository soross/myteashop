------------------------------------------------------
-- Export file for user CRM                         --
-- Created by Administrator on 2012-07-11, 00:06:26 --
------------------------------------------------------

spool crm_obj.log

prompt
prompt Creating table CLUB_ACTIVITY
prompt ============================
prompt
create table CRM.CLUB_ACTIVITY
(
  ACT_ID       NUMBER not null,
  ACT_TIME     DATE,
  ACT_ADDR     VARCHAR2(150),
  ACT_CONTENT  VARCHAR2(150),
  ORGANIZER    VARCHAR2(20),
  INTEND_COUNT NUMBER,
  FACT_COUNT   NUMBER,
  BUDG_FEES    NUMBER,
  FACT_FEES    NUMBER,
  ISCHECK      VARCHAR2(5)
)
tablespace C_CRM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table CRM.CLUB_ACTIVITY
  add primary key (ACT_ID)
  using index 
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table CLUB_NET_INFO
prompt ============================
prompt
create table CRM.CLUB_NET_INFO
(
  CLUBNET_ID     NUMBER not null,
  CLUBNET_ADDR   VARCHAR2(50),
  CLUBNET_TELNUM VARCHAR2(50),
  CLUBNET_MANGER VARCHAR2(50),
  CLUBNET_TYPE   NUMBER,
  CLUBNET_CONTEN VARCHAR2(150),
  CLUBNET_STATE  NUMBER default 0,
  CLUBNET_LEVEL  NUMBER
)
tablespace C_CRM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table CRM.CLUB_NET_INFO
  add primary key (CLUBNET_ID)
  using index 
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table GROUPS
prompt =====================
prompt
create table CRM.GROUPS
(
  GROUPID    VARCHAR2(20) not null,
  GROUPNAME  VARCHAR2(50),
  VOCATION   VARCHAR2(30),
  GROUPLEVEL VARCHAR2(15),
  ARMY       VARCHAR2(5),
  PRIVINCE   VARCHAR2(15),
  CITY       VARCHAR2(15),
  AREA       VARCHAR2(15),
  ADDRESS    VARCHAR2(40),
  POST       VARCHAR2(10),
  USEMAN     VARCHAR2(15),
  WEB        VARCHAR2(25),
  OPENMON    VARCHAR2(15),
  MONEYTYPE  VARCHAR2(15),
  SENDTYPE   VARCHAR2(15),
  EMPCOUNT   VARCHAR2(15),
  GROUPTYPE  VARCHAR2(15),
  MANAGER    VARCHAR2(15),
  STATE      VARCHAR2(15)
)
tablespace C_CRM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table CRM.GROUPS
  add primary key (GROUPID)
  using index 
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table T_APPLYSCORE
prompt ===========================
prompt
create table CRM.T_APPLYSCORE
(
  ID       NUMBER not null,
  PHONE    VARCHAR2(20),
  OPERATER VARCHAR2(20),
  OPERDATE DATE
)
tablespace C_CRM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table CRM.T_APPLYSCORE
  add primary key (ID)
  using index 
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table T_BACK
prompt =====================
prompt
create table CRM.T_BACK
(
  ID        NUMBER not null,
  CID       VARCHAR2(50),
  PHONE     VARCHAR2(18),
  PRISENTID NUMBER,
  BACKNUM   NUMBER,
  OPERATER  VARCHAR2(15),
  BDATE     DATE
)
tablespace C_CRM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table CRM.T_BACK
  add primary key (ID)
  using index 
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table T_CHANGE
prompt =======================
prompt
create table CRM.T_CHANGE
(
  ID        VARCHAR2(50) not null,
  PHONE     VARCHAR2(18),
  TYPE      NUMBER,
  CHANGENUM NUMBER,
  TOTAL     NUMBER,
  OPERATER  VARCHAR2(15),
  CDATE     DATE
)
tablespace C_CRM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table CRM.T_CHANGE
  add primary key (ID)
  using index 
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table T_CHANGE_ITEM
prompt ============================
prompt
create table CRM.T_CHANGE_ITEM
(
  ID        NUMBER not null,
  CID       VARCHAR2(50),
  PID       NUMBER,
  PNAME     VARCHAR2(50),
  PICTURE   VARCHAR2(100),
  SCORE     NUMBER,
  CHANGENUM NUMBER,
  BACKNUM   NUMBER,
  VDATE     DATE
)
tablespace C_CRM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table CRM.T_CHANGE_ITEM
  add primary key (ID)
  using index 
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table T_CLIENT
prompt =======================
prompt
create table CRM.T_CLIENT
(
  PHONE   VARCHAR2(20) not null,
  NAME    VARCHAR2(20),
  TYPE    VARCHAR2(10),
  CODE    VARCHAR2(20),
  PROVICE NUMBER,
  CITY    NUMBER,
  ROOM    VARCHAR2(20),
  REGDATE DATE,
  ADDRESS VARCHAR2(100),
  GRADE   NUMBER,
  AREA    NUMBER,
  BRAND   NUMBER,
  LINKMAN VARCHAR2(20),
  ISPARTY CHAR(1),
  ISGROUP CHAR(1),
  ISCHECK CHAR(1),
  BIGDATE DATE
)
tablespace C_CRM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table CRM.T_CLIENT
  add primary key (PHONE)
  using index 
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table T_CLIENTALLOT
prompt ============================
prompt
create table CRM.T_CLIENTALLOT
(
  ID      NUMBER not null,
  PHONE   VARCHAR2(20),
  MANAGER VARCHAR2(20),
  USERID  VARCHAR2(20),
  FDATE   DATE,
  STATE   CHAR(1),
  CDATE   DATE
)
tablespace C_CRM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table CRM.T_CLIENTALLOT
  add primary key (ID)
  using index 
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table T_CLIENTINFO
prompt ===========================
prompt
create table CRM.T_CLIENTINFO
(
  PHONE         VARCHAR2(20) not null,
  SEX           CHAR(1),
  BIRTHDAY      DATE,
  AGE           NUMBER,
  LOVES         VARCHAR2(50),
  FAMILYPHONE   VARCHAR2(20),
  OFFICEPHONE   VARCHAR2(20),
  FAX           VARCHAR2(20),
  EMAIL         VARCHAR2(50),
  OFFICEADDRESS VARCHAR2(100),
  TRADE         VARCHAR2(2),
  ISCAR         CHAR(1),
  MARRIAGEDATE  DATE,
  NATION        VARCHAR2(50),
  COUNTRY       VARCHAR2(50),
  NUM           CHAR(6)
)
tablespace C_CRM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table CRM.T_CLIENTINFO
  add primary key (PHONE)
  using index 
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table T_CLIENTRULE
prompt ===========================
prompt
create table CRM.T_CLIENTRULE
(
  ID          NUMBER not null,
  RULENAME    VARCHAR2(20),
  BRAND       NUMBER,
  BASE        NUMBER,
  DESCRIPTION VARCHAR2(100),
  ISLOCK      CHAR(1),
  PRI         NUMBER
)
tablespace C_CRM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table CRM.T_CLIENTRULE
  add primary key (ID)
  using index 
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table T_CUSTOMER
prompt =========================
prompt
create table CRM.T_CUSTOMER
(
  ID            NUMBER not null,
  CODE          VARCHAR2(20),
  USERNAME      VARCHAR2(20),
  NAME_CODE     VARCHAR2(50),
  COUNTRY       VARCHAR2(50),
  NATION        VARCHAR2(50),
  MARRY         VARCHAR2(10),
  GARDEN        VARCHAR2(10),
  BIRTHDAY      DATE,
  OLD           NUMBER,
  WEIGHT        NUMBER,
  HEIGHT        NUMBER,
  COLLEGE       VARCHAR2(50),
  WORK          VARCHAR2(50),
  WORK_UNIT     VARCHAR2(50),
  WORK_CODE     VARCHAR2(50),
  ALLERGY_INFO  VARCHAR2(255),
  BIRTH_ADD     VARCHAR2(255),
  BIRTH_ZIP     VARCHAR2(20),
  ID_CODE       VARCHAR2(20),
  ID_ADD        VARCHAR2(255),
  ID_ZIP        VARCHAR2(20),
  MOBILE        VARCHAR2(20),
  LIVE_ADD      VARCHAR2(255),
  LIVE_ZIP      VARCHAR2(20),
  LINKMAN       VARCHAR2(20),
  LINK_ADD      VARCHAR2(255),
  LINK_TELL     VARCHAR2(20),
  PAY_TYPE      VARCHAR2(20),
  SICK_TYPE     VARCHAR2(20),
  STAFF         VARCHAR2(20),
  SRC_INFO      VARCHAR2(20),
  IC_CARD_CODE  VARCHAR2(50),
  VIP_TYPE      VARCHAR2(20),
  VIP_CARD_CODE VARCHAR2(50),
  PHOTO_PATH    VARCHAR2(50),
  STATE         VARCHAR2(20),
  SAFE_CODE     VARCHAR2(50),
  REMARK        VARCHAR2(255),
  CARD_USER     VARCHAR2(50),
  BALANCE       NUMBER,
  CREATE_DATE   DATE
)
tablespace C_CRM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column CRM.T_CUSTOMER.CODE
  is '编码';
comment on column CRM.T_CUSTOMER.USERNAME
  is '姓名';
comment on column CRM.T_CUSTOMER.NAME_CODE
  is '简码';
comment on column CRM.T_CUSTOMER.COUNTRY
  is '国籍';
comment on column CRM.T_CUSTOMER.NATION
  is '民族';
comment on column CRM.T_CUSTOMER.MARRY
  is '婚况';
comment on column CRM.T_CUSTOMER.GARDEN
  is '性别';
comment on column CRM.T_CUSTOMER.BIRTHDAY
  is '出生日期';
comment on column CRM.T_CUSTOMER.OLD
  is '岁数';
comment on column CRM.T_CUSTOMER.WEIGHT
  is '体重';
comment on column CRM.T_CUSTOMER.HEIGHT
  is '身高';
comment on column CRM.T_CUSTOMER.COLLEGE
  is '学历';
comment on column CRM.T_CUSTOMER.WORK
  is '职业';
comment on column CRM.T_CUSTOMER.WORK_UNIT
  is '工作单位';
comment on column CRM.T_CUSTOMER.WORK_CODE
  is '单位编码';
comment on column CRM.T_CUSTOMER.ALLERGY_INFO
  is '过敏信息';
comment on column CRM.T_CUSTOMER.BIRTH_ADD
  is '出生地';
comment on column CRM.T_CUSTOMER.BIRTH_ZIP
  is '出生地邮编';
comment on column CRM.T_CUSTOMER.ID_CODE
  is '身份证号';
comment on column CRM.T_CUSTOMER.ID_ADD
  is '户口所在地';
comment on column CRM.T_CUSTOMER.ID_ZIP
  is '户口地邮编';
comment on column CRM.T_CUSTOMER.MOBILE
  is '手机号码';
comment on column CRM.T_CUSTOMER.LIVE_ADD
  is '常住地';
comment on column CRM.T_CUSTOMER.LIVE_ZIP
  is '常住地邮编';
comment on column CRM.T_CUSTOMER.LINKMAN
  is '联系人';
comment on column CRM.T_CUSTOMER.LINK_ADD
  is '联系人地址';
comment on column CRM.T_CUSTOMER.LINK_TELL
  is '联系人电话';
comment on column CRM.T_CUSTOMER.PAY_TYPE
  is '付款类型';
comment on column CRM.T_CUSTOMER.SICK_TYPE
  is '病人类型';
comment on column CRM.T_CUSTOMER.STAFF
  is '业务员';
comment on column CRM.T_CUSTOMER.SRC_INFO
  is '信息来源';
comment on column CRM.T_CUSTOMER.IC_CARD_CODE
  is 'IC卡号';
comment on column CRM.T_CUSTOMER.VIP_TYPE
  is '会员类型';
comment on column CRM.T_CUSTOMER.VIP_CARD_CODE
  is '会员卡号';
comment on column CRM.T_CUSTOMER.PHOTO_PATH
  is '头像路径';
comment on column CRM.T_CUSTOMER.STATE
  is '有效状态';
comment on column CRM.T_CUSTOMER.SAFE_CODE
  is '保险号码';
comment on column CRM.T_CUSTOMER.REMARK
  is '备注';
comment on column CRM.T_CUSTOMER.CARD_USER
  is '持卡人';
comment on column CRM.T_CUSTOMER.BALANCE
  is '余额';
comment on column CRM.T_CUSTOMER.CREATE_DATE
  is '创建时间';
alter table CRM.T_CUSTOMER
  add constraint T_CUSTOMER_PK primary key (ID)
  using index 
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table T_DATA
prompt =====================
prompt
create table CRM.T_DATA
(
  ID    NUMBER not null,
  NAME  VARCHAR2(50),
  PID   NUMBER,
  TRADE CHAR(2)
)
tablespace C_CRM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table CRM.T_DATA
  add primary key (ID)
  using index 
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table T_DEPT
prompt =====================
prompt
create table CRM.T_DEPT
(
  ID        NUMBER not null,
  DEPT_NAME VARCHAR2(20),
  PID       NUMBER
)
tablespace C_CRM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table CRM.T_DEPT
  add constraint T_DEPT_PRIMARY_KEY primary key (ID)
  using index 
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table T_FEE
prompt ====================
prompt
create table CRM.T_FEE
(
  ID         NUMBER not null,
  PHONE      VARCHAR2(20),
  INPUTFEE   NUMBER,
  FULLFEE    NUMBER,
  ARREARAGE  NUMBER,
  FEEDATE    DATE,
  HIRE       NUMBER,
  BASICFEE   NUMBER,
  ROAMFEE    NUMBER,
  INFOFEE    NUMBER,
  UPFEE      NUMBER,
  OTHERFEE   NUMBER,
  ROAMDATE   NUMBER,
  NOROAMDATE NUMBER,
  LONGDATE   NUMBER,
  NOLONGDATE NUMBER,
  ROAMTIME   NUMBER,
  NOROAMTIME NUMBER,
  LONGTIME   NUMBER,
  NOLONGTIME NUMBER,
  LONGFEE    NUMBER
)
tablespace C_CRM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table CRM.T_FEE
  add primary key (ID)
  using index 
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index CRM.FD on CRM.T_FEE (FEEDATE)
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index CRM.FP on CRM.T_FEE (PHONE)
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table T_FEES
prompt =====================
prompt
create table CRM.T_FEES
(
  FEES_ID   NUMBER not null,
  ACT_ID    NUMBER,
  FEES_NAME VARCHAR2(50),
  BUDG_FEE  NUMBER,
  FACT_FEE  NUMBER
)
tablespace C_CRM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table CRM.T_FEES
  add primary key (FEES_ID)
  using index 
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table T_GRADELOG
prompt =========================
prompt
create table CRM.T_GRADELOG
(
  ID        NUMBER not null,
  PHONE     VARCHAR2(20),
  CHECKUSER VARCHAR2(20),
  CHECKDATE DATE,
  CHECKNO   VARCHAR2(20),
  OLDGRADE  NUMBER,
  NEWGRADE  NUMBER
)
tablespace C_CRM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table CRM.T_GRADELOG
  add primary key (ID)
  using index 
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table T_GROUPCLIENT
prompt ============================
prompt
create table CRM.T_GROUPCLIENT
(
  ID      NUMBER not null,
  GROUPID VARCHAR2(20),
  PHONE   VARCHAR2(20)
)
tablespace C_CRM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table CRM.T_GROUPCLIENT
  add primary key (ID)
  using index 
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table T_GROUPFEE
prompt =========================
prompt
create table CRM.T_GROUPFEE
(
  ID          NUMBER not null,
  GROUPID     VARCHAR2(15),
  MONTHFEE    NUMBER,
  SAYFEE      NUMBER,
  LONGFEE     NUMBER,
  SWIMFEE     NUMBER,
  SHORTFEE    NUMBER,
  ADDFEE      NUMBER,
  OTHERFEE    NUMBER,
  SWIMTIME    NUMBER,
  NOSWIMTIME  NUMBER,
  LONGTIME    NUMBER,
  NOLONGTIME  NUMBER,
  SWIMCOUNT   NUMBER,
  NOSWIMCOUNT NUMBER,
  LONGCOUNT   NUMBER,
  NOLONGCOUNT NUMBER,
  HISTORYTIME DATE,
  OUTCOUNT    NUMBER,
  ZEROCOUNT   NUMBER,
  NEWCOUNT    NUMBER,
  OFFCOUNT    NUMBER,
  ALLCOUNT    NUMBER,
  LOSTMONEY   NUMBER,
  FULLFEE     NUMBER
)
tablespace C_CRM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table CRM.T_GROUPFEE
  add primary key (ID)
  using index 
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table T_GROUPLINKER
prompt ============================
prompt
create table CRM.T_GROUPLINKER
(
  GROUPID   VARCHAR2(20) not null,
  NAME      VARCHAR2(15),
  TELEPHONE VARCHAR2(15),
  JOB       VARCHAR2(15),
  SEX       VARCHAR2(5),
  EMAIL     VARCHAR2(20)
)
tablespace C_CRM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table CRM.T_GROUPLINKER
  add primary key (GROUPID)
  using index 
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table T_GROUPLOG
prompt =========================
prompt
create table CRM.T_GROUPLOG
(
  LOGID       NUMBER not null,
  GROUPID     VARCHAR2(20),
  OPERATIONER VARCHAR2(15),
  OPENTIME    DATE,
  OPENS       VARCHAR2(30)
)
tablespace C_CRM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table CRM.T_GROUPLOG
  add primary key (LOGID)
  using index 
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table T_MONTH_SCORE
prompt ============================
prompt
create table CRM.T_MONTH_SCORE
(
  ID     NUMBER not null,
  PHONE  VARCHAR2(18),
  TOTAL  NUMBER,
  MONTH  VARCHAR2(50),
  PAY    NUMBER,
  BASIC  NUMBER,
  POWER  NUMBER,
  PRIZE  NUMBER,
  ADJUST NUMBER,
  CHANGE NUMBER
)
tablespace C_CRM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table CRM.T_MONTH_SCORE
  add primary key (ID)
  using index 
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index CRM.MM on CRM.T_MONTH_SCORE (MONTH)
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index CRM.MP on CRM.T_MONTH_SCORE (PHONE)
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table T_MONTH_TEMP
prompt ===========================
prompt
create global temporary table CRM.T_MONTH_TEMP
(
  PHONE  VARCHAR2(18),
  TOTAL  NUMBER,
  MONTH  VARCHAR2(50),
  PAY    NUMBER,
  POWER  NUMBER,
  ADJUST NUMBER,
  CHANGE NUMBER
)
on commit delete rows;

prompt
prompt Creating table T_OLDGROUPMESS
prompt =============================
prompt
create table CRM.T_OLDGROUPMESS
(
  HISID      NUMBER not null,
  GROUPID    VARCHAR2(20),
  GROUPNAME  VARCHAR2(15),
  VOCATION   VARCHAR2(30),
  GROUPLEVEL VARCHAR2(15),
  ARMY       VARCHAR2(5),
  PRIVINCE   VARCHAR2(15),
  CITY       VARCHAR2(15),
  AREA       VARCHAR2(15),
  ADDRESS    VARCHAR2(40),
  POST       VARCHAR2(10),
  USEMAN     VARCHAR2(15),
  WEB        VARCHAR2(25),
  OPENMON    VARCHAR2(15),
  MONEYTYPE  VARCHAR2(15),
  SENDTYPE   VARCHAR2(15),
  EMPCOUNT   VARCHAR2(15),
  GROUPTYPE  VARCHAR2(15),
  MANAGER    VARCHAR2(15),
  STATE      VARCHAR2(15),
  WORKTYPE   VARCHAR2(30),
  WORKTIME   DATE,
  WORKER     VARCHAR2(15)
)
tablespace C_CRM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table CRM.T_OLDGROUPMESS
  add primary key (HISID)
  using index 
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table T_OPERATION
prompt ==========================
prompt
create table CRM.T_OPERATION
(
  ID          NUMBER not null,
  TYPE1       VARCHAR2(20),
  TYPE2       VARCHAR2(20),
  TYPE3       VARCHAR2(20),
  TYPE4       VARCHAR2(20),
  TYPE5       VARCHAR2(20),
  PHONE       VARCHAR2(20),
  REGDATE     DATE,
  REGUSER     VARCHAR2(20),
  STATE       CHAR(1),
  CHECKUSER   VARCHAR2(20),
  CHECKDATE   DATE,
  OPENSTATE   CHAR(1),
  CANUSERDATE VARCHAR2(20),
  CALL        VARCHAR2(20),
  MOVE        VARCHAR2(20),
  CREDITFEE   VARCHAR2(20),
  FACTFEE     VARCHAR2(20),
  WHY         VARCHAR2(20),
  ADDRESS     VARCHAR2(100),
  ISCHECK     CHAR(10),
  REMARKS     VARCHAR2(200),
  NAME        VARCHAR2(20),
  CODETIME    DATE,
  CODETYPE    VARCHAR2(20),
  RESULT      VARCHAR2(200)
)
tablespace C_CRM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table CRM.T_OPERATION
  add primary key (ID)
  using index 
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table T_OPERATIONTYPE
prompt ==============================
prompt
create table CRM.T_OPERATIONTYPE
(
  ID     NUMBER not null,
  TYPE   VARCHAR2(50),
  PID    NUMBER,
  REMIND VARCHAR2(500)
)
tablespace C_CRM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table CRM.T_OPERATIONTYPE
  add primary key (ID)
  using index 
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table T_OPERLOG
prompt ========================
prompt
create table CRM.T_OPERLOG
(
  ID         NUMBER not null,
  OPERID     NUMBER,
  OLDSTATE   VARCHAR2(10),
  NEWSTATE   VARCHAR2(10),
  CHANGEUSER VARCHAR2(20),
  REGDATE    DATE,
  RESULT     VARCHAR2(100)
)
tablespace C_CRM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table CRM.T_OPERLOG
  add primary key (ID)
  using index 
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table T_POWER
prompt ======================
prompt
create table CRM.T_POWER
(
  ID        NUMBER not null,
  POWERNAME VARCHAR2(20),
  URL       VARCHAR2(150),
  PARENTID  NUMBER,
  SORTID    NUMBER
)
tablespace C_CRM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table CRM.T_POWER
  add primary key (ID)
  using index 
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table T_PRESENT
prompt ========================
prompt
create table CRM.T_PRESENT
(
  ID         NUMBER not null,
  NAME       VARCHAR2(50),
  PTYPE      CHAR(1),
  NUM        NUMBER,
  PICTURE    VARCHAR2(100),
  INTEGRAL   NUMBER,
  DEL        CHAR(1),
  INVALIDATE DATE
)
tablespace C_CRM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table CRM.T_PRESENT
  add primary key (ID)
  using index 
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table T_ROLE
prompt =====================
prompt
create table CRM.T_ROLE
(
  ROLEID   NUMBER not null,
  ROLENAME VARCHAR2(20),
  DESCRIPT VARCHAR2(150)
)
tablespace C_CRM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table CRM.T_ROLE
  add primary key (ROLEID)
  using index 
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table T_ROLEPOWER
prompt ==========================
prompt
create table CRM.T_ROLEPOWER
(
  ID      NUMBER not null,
  ROLEID  NUMBER,
  POWERID NUMBER
)
tablespace C_CRM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table CRM.T_ROLEPOWER
  add primary key (ID)
  using index 
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table T_RULEEXP
prompt ========================
prompt
create table CRM.T_RULEEXP
(
  ID         NUMBER not null,
  RULEID     NUMBER,
  TYPE       VARCHAR2(10),
  STARTVALUE NUMBER,
  ENDVALUE   NUMBER,
  EXPRESSION VARCHAR2(50)
)
tablespace C_CRM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table CRM.T_RULEEXP
  add primary key (ID)
  using index 
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table T_RULELOG
prompt ========================
prompt
create table CRM.T_RULELOG
(
  ID         NUMBER not null,
  RULEID     NUMBER,
  CREATER    VARCHAR2(20),
  CREATEDATE DATE,
  OPERATOR   VARCHAR2(20),
  OPERDATE   DATE,
  OPERTYPE   CHAR(1)
)
tablespace C_CRM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table CRM.T_RULELOG
  add primary key (ID)
  using index 
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table T_SCORELOG
prompt =========================
prompt
create table CRM.T_SCORELOG
(
  ID          NUMBER not null,
  PHONE       VARCHAR2(20),
  BEFORESCORE NUMBER,
  AFTERSCORE  NUMBER,
  OPERTYPE    CHAR(1),
  CHANGENO    VARCHAR2(50),
  PLACE       VARCHAR2(20),
  OPERATER    VARCHAR2(20),
  OPERDATE    DATE
)
tablespace C_CRM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table CRM.T_SCORELOG
  add primary key (ID)
  using index 
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table T_SICKBED
prompt ========================
prompt
create table CRM.T_SICKBED
(
  ID      NUMBER not null,
  SICKBED VARCHAR2(20),
  SPEC    VARCHAR2(30)
)
tablespace C_CRM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table CRM.T_SICKBED
  is '病床';
alter table CRM.T_SICKBED
  add constraint T_SICKBED_PRIMARY_KEY primary key (ID)
  using index 
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table T_TOTAL_SCORE
prompt ============================
prompt
create table CRM.T_TOTAL_SCORE
(
  ID         NUMBER not null,
  PHONE      VARCHAR2(18),
  VEST       VARCHAR2(20),
  INVALIDATE DATE default sysdate,
  VINTEGRAL  NUMBER,
  INVALIBLE  NUMBER,
  TOTAL      NUMBER
)
tablespace C_CRM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table CRM.T_TOTAL_SCORE
  add primary key (ID)
  using index 
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table T_USER
prompt =====================
prompt
create table CRM.T_USER
(
  USERID    VARCHAR2(20) not null,
  USERNAME  VARCHAR2(20),
  PASSWORD  VARCHAR2(20),
  SEX       CHAR(1),
  HOMEPLACE VARCHAR2(10),
  CODE      VARCHAR2(20),
  TEL       VARCHAR2(15),
  EMAIL     VARCHAR2(20),
  PHONE     VARCHAR2(15),
  ADDRESS   VARCHAR2(30),
  JOBNO     VARCHAR2(15),
  OPENDATE  DATE,
  SLOCK     CHAR(1)
)
tablespace C_CRM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table CRM.T_USER
  add primary key (USERID)
  using index 
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table T_USERROLE
prompt =========================
prompt
create table CRM.T_USERROLE
(
  ID     NUMBER not null,
  USERID VARCHAR2(20),
  ROLEID NUMBER
)
tablespace C_CRM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table CRM.T_USERROLE
  add primary key (ID)
  using index 
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table T_YEAR_SCORE
prompt ===========================
prompt
create table CRM.T_YEAR_SCORE
(
  ID       NUMBER not null,
  PHONE    VARCHAR2(18),
  TOTAL    NUMBER,
  CHANGE   NUMBER,
  YEAR     VARCHAR2(50),
  VEST     VARCHAR2(20),
  BALANCE  NUMBER,
  VALIDTAG CHAR(1)
)
tablespace C_CRM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table CRM.T_YEAR_SCORE
  add primary key (ID)
  using index 
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table UNION_BINFO
prompt ==========================
prompt
create table CRM.UNION_BINFO
(
  UNIONB_ID   NUMBER not null,
  UNIONB_TYPE VARCHAR2(20),
  V_LEVEL     VARCHAR2(20),
  FULL_NAME   VARCHAR2(50),
  SHORT_NAME  VARCHAR2(20),
  PROPERTY    VARCHAR2(20),
  UNIONB_ADDR VARCHAR2(200),
  WORKSTATUS  VARCHAR2(20),
  CORPORATION VARCHAR2(20),
  COR_SEX     VARCHAR2(3),
  COR_JOBS    VARCHAR2(20),
  TEL         VARCHAR2(15),
  EMP_COUNT   NUMBER,
  REGMONEY    NUMBER,
  LINKMAN     VARCHAR2(15),
  ISLOGOUT    VARCHAR2(5) default 1,
  ISCHECK     VARCHAR2(5) default 0              --0未审核--1审核通过--2审核不通过
)
tablespace C_CRM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table CRM.UNION_BINFO
  add primary key (UNIONB_ID)
  using index 
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table UNION_SLOG
prompt =========================
prompt
create table CRM.UNION_SLOG
(
  LOGID     NUMBER not null,
  UNIONB_ID NUMBER,
  FULL_NAME VARCHAR2(50),
  ULEVEL    VARCHAR2(15),
  WORKER    VARCHAR2(15),
  WORKTIME  DATE
)
tablespace C_CRM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table CRM.UNION_SLOG
  add primary key (LOGID)
  using index 
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table VIP_AREA
prompt =======================
prompt
create table CRM.VIP_AREA
(
  N_ID   NUMBER not null,
  V_CODE CHAR(2),
  V_NAME VARCHAR2(30),
  V_CITY CHAR(5)
)
tablespace C_CRM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table CRM.VIP_AREA
  is '地区表';
comment on column CRM.VIP_AREA.N_ID
  is '编号';
comment on column CRM.VIP_AREA.V_CODE
  is '代码';
comment on column CRM.VIP_AREA.V_NAME
  is '名称';
comment on column CRM.VIP_AREA.V_CITY
  is '县市编号';
alter table CRM.VIP_AREA
  add constraint PK_VIP_AREA primary key (N_ID)
  using index 
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table VIP_CITY
prompt =======================
prompt
create table CRM.VIP_CITY
(
  N_ID       NUMBER not null,
  V_CODE     CHAR(2),
  V_NAME     VARCHAR2(22),
  V_PROVINCE CHAR(3)
)
tablespace C_CRM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table CRM.VIP_CITY
  is '县市表';
comment on column CRM.VIP_CITY.N_ID
  is '编号';
comment on column CRM.VIP_CITY.V_CODE
  is '代码';
comment on column CRM.VIP_CITY.V_NAME
  is '名称';
comment on column CRM.VIP_CITY.V_PROVINCE
  is '省编号';
alter table CRM.VIP_CITY
  add constraint PK_VIP_CITY primary key (N_ID)
  using index 
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table VIP_PROVINCE
prompt ===========================
prompt
create table CRM.VIP_PROVINCE
(
  N_ID   NUMBER not null,
  V_CODE CHAR(3),
  V_NAME VARCHAR2(20)
)
tablespace C_CRM
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table CRM.VIP_PROVINCE
  is '省表';
comment on column CRM.VIP_PROVINCE.N_ID
  is '编号';
comment on column CRM.VIP_PROVINCE.V_CODE
  is '代码';
comment on column CRM.VIP_PROVINCE.V_NAME
  is '名称';
alter table CRM.VIP_PROVINCE
  add constraint PK_VIP_PROVINCE primary key (N_ID)
  using index 
  tablespace C_CRM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating sequence SEQ_ACFEE
prompt ===========================
prompt
create sequence CRM.SEQ_ACFEE
minvalue 1
maxvalue 999999999999999999999999999
start with 21
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_ACT
prompt =========================
prompt
create sequence CRM.SEQ_ACT
minvalue 1
maxvalue 999999999999999999999999999
start with 21
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_APPLYSCORE
prompt ================================
prompt
create sequence CRM.SEQ_APPLYSCORE
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_AREA
prompt ==========================
prompt
create sequence CRM.SEQ_AREA
minvalue 1
maxvalue 999999999999999999999999999
start with 3161
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_BACK
prompt ==========================
prompt
create sequence CRM.SEQ_BACK
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_CHANGE_ITEM
prompt =================================
prompt
create sequence CRM.SEQ_CHANGE_ITEM
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_CITY
prompt ==========================
prompt
create sequence CRM.SEQ_CITY
minvalue 1
maxvalue 999999999999999999999999999
start with 361
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_CLIENTALLOT
prompt =================================
prompt
create sequence CRM.SEQ_CLIENTALLOT
minvalue 1
maxvalue 999999999999999999999999999
start with 220
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_CLIENTRULE
prompt ================================
prompt
create sequence CRM.SEQ_CLIENTRULE
minvalue 1
maxvalue 999999999999999999999999999
start with 200
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_CLUB_NET
prompt ==============================
prompt
create sequence CRM.SEQ_CLUB_NET
minvalue 1
maxvalue 999999999999999999999999999
start with 21
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_CUSTOMER
prompt ==============================
prompt
create sequence CRM.SEQ_CUSTOMER
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_DATA
prompt ==========================
prompt
create sequence CRM.SEQ_DATA
minvalue 1
maxvalue 999999999999999999999999999
start with 200
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_DEPT
prompt ==========================
prompt
create sequence CRM.SEQ_DEPT
minvalue 1
maxvalue 999999999999999999999999999
start with 1040
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_FEE
prompt =========================
prompt
create sequence CRM.SEQ_FEE
minvalue 1
maxvalue 999999999999999999999999999
start with 150000
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_GLOG
prompt ==========================
prompt
create sequence CRM.SEQ_GLOG
minvalue 1
maxvalue 999999999999999999999999999
start with 21
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_GRADELOG
prompt ==============================
prompt
create sequence CRM.SEQ_GRADELOG
minvalue 1
maxvalue 999999999999999999999999999
start with 200
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_HIS
prompt =========================
prompt
create sequence CRM.SEQ_HIS
minvalue 1
maxvalue 999999999999999999999999999
start with 21
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_MONTH
prompt ===========================
prompt
create sequence CRM.SEQ_MONTH
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_OPERATION
prompt ===============================
prompt
create sequence CRM.SEQ_OPERATION
minvalue 1
maxvalue 999999999999999999999999999
start with 200
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_OPERATIONTYPE
prompt ===================================
prompt
create sequence CRM.SEQ_OPERATIONTYPE
minvalue 1
maxvalue 999999999999999999999999999
start with 200
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_OPERLOG
prompt =============================
prompt
create sequence CRM.SEQ_OPERLOG
minvalue 1
maxvalue 999999999999999999999999999
start with 200
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_PRISENT
prompt =============================
prompt
create sequence CRM.SEQ_PRISENT
minvalue 1
maxvalue 999999999999999999999999999
start with 200
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_PROVINCE
prompt ==============================
prompt
create sequence CRM.SEQ_PROVINCE
minvalue 1
maxvalue 999999999999999999999999999
start with 41
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_RULEEXP
prompt =============================
prompt
create sequence CRM.SEQ_RULEEXP
minvalue 1
maxvalue 999999999999999999999999999
start with 200
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_RULELOG
prompt =============================
prompt
create sequence CRM.SEQ_RULELOG
minvalue 1
maxvalue 999999999999999999999999999
start with 200
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SCORELOG
prompt ==============================
prompt
create sequence CRM.SEQ_SCORELOG
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SICKBED
prompt =============================
prompt
create sequence CRM.SEQ_SICKBED
minvalue 1
maxvalue 999999999999999999999999999
start with 1000
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SLOG
prompt ==========================
prompt
create sequence CRM.SEQ_SLOG
minvalue 1
maxvalue 999999999999999999999999999
start with 21
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_STORE
prompt ===========================
prompt
create sequence CRM.SEQ_STORE
minvalue 1
maxvalue 999999999999999999999999999
start with 21
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_TOTAL
prompt ===========================
prompt
create sequence CRM.SEQ_TOTAL
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_TPOWER
prompt ============================
prompt
create sequence CRM.SEQ_TPOWER
minvalue 1
maxvalue 999999999999999999999999999
start with 500
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_TROLE
prompt ===========================
prompt
create sequence CRM.SEQ_TROLE
minvalue 1
maxvalue 999999999999999999999999999
start with 10
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_TROLEPOWER
prompt ================================
prompt
create sequence CRM.SEQ_TROLEPOWER
minvalue 1
maxvalue 999999999999999999999999999
start with 1220
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_T_GROUPCLIENT
prompt ===================================
prompt
create sequence CRM.SEQ_T_GROUPCLIENT
minvalue 1
maxvalue 999999999999999999999999999
start with 161
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_USERROLE
prompt ==============================
prompt
create sequence CRM.SEQ_USERROLE
minvalue 1
maxvalue 999999999999999999999999999
start with 21
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_YEAR
prompt ==========================
prompt
create sequence CRM.SEQ_YEAR
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating view VFEECOUNT
prompt =======================
prompt
create or replace view crm.vfeecount as
select
max(cfee.groupid) groupid,sum(cfee.inputfee) INPUTFEE,sum(cfee.FULLFEE) FULLFEE,sum(cfee.ARREARAGE) ARREARAGE,
max(cfee.FEEDATE) FEEDATE,
sum(cfee.HIRE) HIRE,sum(cfee.BASICFEE) BASICFEE,sum(cfee.roamfee) roamfee,
sum(cfee.longfee) longfee,sum(cfee.INFOFEE) INFOFEE,sum(cfee.UPFEE) UPFEE,
sum(cfee.OTHERFEE) OTHERFEE,sum(cfee.ROAMDATE) ROAMDATE,
sum(cfee.NOROAMDATE) NOROAMDATE,sum(cfee.LONGDATE) LONGDATE,sum(cfee.NOLONGDATE) NOLONGDATE,
sum(cfee.ROAMTIME) ROAMTIME,sum(cfee.NOROAMTIME) NOROAMTIME,sum(cfee.LONGTIME) LONGTIME,
sum(cfee.NOLONGTIME) NOLONGTIME
    from
(select c.phone,c.name as
clienname,g.groupid,f.inputfee,f.infofee,f.FULLFEE,f.ARREARAGE,f.FEEDATE,f.HIRE,f.BASICFEE,f.ROAMFEE,f.otherfee,
f.upfee,f.LONGDATE,f.roamtime,f.roamdate,f.NOROAMDATE,
f.NOLONGDATE,f.NOROAMTIME,f.LONGTIME,f.NOLONGTIME,f.LONGFEE
 from
t_client c,t_fee f,
groups g,t_groupclient m where c.phone=m.phone and
g.groupid=m.groupid and f.phone =c.phone) cfee
group by cfee.feedate,cfee.groupid;

prompt
prompt Creating function FUN_GROUPID
prompt =============================
prompt
create or replace function crm.fun_groupid(
       vtime varchar2,
       vprovince varchar2,
       vcity varchar2,
       vcalling varchar2
)return varchar2
  is

        vmax varchar2(30);
        vsql varchar2(1000);
        vnext varchar2(8);
begin

        vsql:='select max(groupid) from groups where groupid like :groupid';
        execute immediate vsql into vmax using vtime||vprovince||vcity||vcalling||'%';
        if vmax is null then
           vnext:='0001';
        else
           vnext:=lpad(to_char(to_number(substr(vmax,12,4))+1),4,0);
        end if;
        return vtime||vprovince||vcity||vcalling||vnext;
end;
/

prompt
prompt Creating procedure AUTOGRADE_PROCE
prompt ==================================
prompt
create or replace procedure crm.autograde_proce
as
       --规则表达式数组
       type ruleexptype is table of t_ruleexp%rowtype index by binary_integer;
       exp_arr ruleexptype;
begin
       --将所有等级设置为无等级状态
       update t_client set grade=23;
       commit;
       --世界风客户
       --砖石卡********************************************************************
       select re.* bulk collect into exp_arr from t_ruleexp re left join t_clientrule cr on re.ruleid = cr.id where cr.brand=1 and cr.pri=4;

       for i in 1..exp_arr.count loop
           dbms_output.put_line(exp_arr(i).type);
           --积分
           if exp_arr(i).type='积分' then
              if exp_arr(i).endvalue is null then
                 update t_client cl set cl.grade=20 where cl.phone in
                 (select rs.phone from (select cl.phone,sum(sc.total) as allfee
                 from t_client cl left join t_month_score sc
                 on cl.phone = sc.phone where cl.grade=23
                 and cl.brand=10 and  sc.month between
                 to_char(add_months(trunc(sysdate),-6),'yyyymm')
                 and  to_char(add_months(trunc(sysdate),-1),'yyyymm')
                 group by cl.phone ) rs  where rs.allfee>=exp_arr(i).startvalue);
              else
                 update t_client cl set cl.grade = 20 where cl.phone in
                 (select rs.phone from (select cl.phone,sum(sc.total) as allfee
                 from t_client cl left join t_month_score sc
                 on cl.phone = sc.phone where cl.grade=23
                 and cl.brand=10 and  sc.month between
                 to_char(add_months(trunc(sysdate),-6),'yyyymm')
                 and  to_char(add_months(trunc(sysdate),-1),'yyyymm')
                 group by cl.phone ) rs  where
                 rs.allfee between exp_arr(i).startvalue and exp_arr(i).endvalue);
              end if;
           --ARPU
           elsif exp_arr(i).type='ARPU' then
              if exp_arr(i).startvalue is not null then
                 update t_client cl set cl.grade = 20 where cl.phone in
                 (select rs.phone from (select cl.phone,sum(f.fullfee) as allfee from
                 t_client cl left join t_fee f on cl.phone = f.phone
                 where grade=23 and cl.brand=10 and f.feedate between
                 to_date(to_char(add_months(trunc(sysdate),-7),'yyyy-mm')||'-29','yyyy-mm-dd')
                 and
                 to_date(to_char(add_months(trunc(sysdate),-1),'yyyy-mm')||'-2','yyyy-mm-dd')
                 group by cl.phone ) rs where rs.allfee/6>= exp_arr(i).startvalue);
              end if;
           end if;
       end loop;
       commit;

       --金卡********************************************************************
       select re.* bulk collect into exp_arr from t_ruleexp re left join t_clientrule cr on re.ruleid = cr.id where cr.brand=1 and cr.pri=3;

       for i in 1..exp_arr.count loop
           dbms_output.put_line(exp_arr(i).type);
           --积分
           if exp_arr(i).type='积分' then
              if exp_arr(i).endvalue is null then
                 update t_client cl set cl.grade=21 where cl.phone in
                 (select rs.phone from (select cl.phone,sum(sc.total) as allfee
                 from t_client cl left join t_month_score sc
                 on cl.phone = sc.phone where cl.grade=23
                 and cl.brand=10 and  sc.month between
                 to_char(add_months(trunc(sysdate),-6),'yyyymm')
                 and  to_char(add_months(trunc(sysdate),-1),'yyyymm')
                 group by cl.phone ) rs  where rs.allfee>=exp_arr(i).startvalue);
              else
                 update t_client cl set cl.grade = 21 where cl.phone in
                 (select rs.phone from (select cl.phone,sum(sc.total) as allfee
                 from t_client cl left join t_month_score sc
                 on cl.phone = sc.phone where cl.grade=23
                 and cl.brand=10 and  sc.month between
                 to_char(add_months(trunc(sysdate),-6),'yyyymm')
                 and  to_char(add_months(trunc(sysdate),-1),'yyyymm')
                 group by cl.phone ) rs  where
                 rs.allfee between exp_arr(i).startvalue and exp_arr(i).endvalue);
              end if;
           --ARPU
           elsif exp_arr(i).type='ARPU' then
              if exp_arr(i).startvalue is not null then
                 update t_client cl set cl.grade = 21 where cl.phone in
                 (select rs.phone from (select cl.phone,sum(f.fullfee) as allfee from
                 t_client cl left join t_fee f on cl.phone = f.phone
                 where grade=23 and cl.brand=10 and f.feedate between
                 to_date(to_char(add_months(trunc(sysdate),-7),'yyyy-mm')||'-29','yyyy-mm-dd')
                 and
                 to_date(to_char(add_months(trunc(sysdate),-1),'yyyy-mm')||'-2','yyyy-mm-dd')
                 group by cl.phone ) rs where rs.allfee/6>= exp_arr(i).startvalue);
              end if;
           end if;
       end loop;
       commit;

       --银卡********************************************************************
       select re.* bulk collect into exp_arr from t_ruleexp re left join t_clientrule cr on re.ruleid = cr.id where cr.brand=1 and cr.pri=3;

       for i in 1..exp_arr.count loop
           dbms_output.put_line(exp_arr(i).type);
           --积分
           if exp_arr(i).type='积分' then
              if exp_arr(i).endvalue is null then
                 update t_client cl set cl.grade=22 where cl.phone in
                 (select rs.phone from (select cl.phone,sum(sc.total) as allfee
                 from t_client cl left join t_month_score sc
                 on cl.phone = sc.phone where cl.grade=23
                 and cl.brand=10 and  sc.month between
                 to_char(add_months(trunc(sysdate),-6),'yyyymm')
                 and  to_char(add_months(trunc(sysdate),-1),'yyyymm')
                 group by cl.phone ) rs  where rs.allfee>=exp_arr(i).startvalue);
              else
                 update t_client cl set cl.grade = 22 where cl.phone in
                 (select rs.phone from (select cl.phone,sum(sc.total) as allfee
                 from t_client cl left join t_month_score sc
                 on cl.phone = sc.phone where cl.grade=23
                 and cl.brand=10 and  sc.month between
                 to_char(add_months(trunc(sysdate),-6),'yyyymm')
                 and  to_char(add_months(trunc(sysdate),-1),'yyyymm')
                 group by cl.phone ) rs  where
                 rs.allfee between exp_arr(i).startvalue and exp_arr(i).endvalue);
              end if;
           --ARPU
           elsif exp_arr(i).type='ARPU' then
              if exp_arr(i).startvalue is not null then
                 update t_client cl set cl.grade = 22 where cl.phone in
                 (select rs.phone from (select cl.phone,sum(f.fullfee) as allfee from
                 t_client cl left join t_fee f on cl.phone = f.phone
                 where grade=23 and cl.brand=10 and f.feedate between
                 to_date(to_char(add_months(trunc(sysdate),-7),'yyyy-mm')||'-29','yyyy-mm-dd')
                 and
                 to_date(to_char(add_months(trunc(sysdate),-1),'yyyy-mm')||'-2','yyyy-mm-dd')
                 group by cl.phone ) rs where rs.allfee/6>= exp_arr(i).startvalue);
              end if;
           end if;
       end loop;
       commit;


       --非世界风客户******************************************************************
       --砖石卡********************************************************************
       select re.* bulk collect into exp_arr from t_ruleexp re left join t_clientrule cr on re.ruleid = cr.id where cr.brand=0 and cr.pri=4;

       for i in 1..exp_arr.count loop
           dbms_output.put_line(exp_arr(i).type);
           --积分
           if exp_arr(i).type='积分' then
              if exp_arr(i).endvalue is null then
                 update t_client cl set cl.grade=20 where cl.phone in
                 (select rs.phone from (select cl.phone,sum(sc.total) as allfee
                 from t_client cl left join t_month_score sc
                 on cl.phone = sc.phone where cl.grade=23
                 and cl.brand !=10 and  sc.month between
                 to_char(add_months(trunc(sysdate),-6),'yyyymm')
                 and  to_char(add_months(trunc(sysdate),-1),'yyyymm')
                 group by cl.phone ) rs  where rs.allfee>=exp_arr(i).startvalue);
              else
                 update t_client cl set cl.grade = 20 where cl.phone in
                 (select rs.phone from (select cl.phone,sum(sc.total) as allfee
                 from t_client cl left join t_month_score sc
                 on cl.phone = sc.phone where cl.grade=23
                 and cl.brand !=10 and  sc.month between
                 to_char(add_months(trunc(sysdate),-6),'yyyymm')
                 and  to_char(add_months(trunc(sysdate),-1),'yyyymm')
                 group by cl.phone ) rs  where
                 rs.allfee between exp_arr(i).startvalue and exp_arr(i).endvalue);
              end if;
           --ARPU
           elsif exp_arr(i).type='ARPU' then
              if exp_arr(i).startvalue is not null then
                 update t_client cl set cl.grade = 20 where cl.phone in
                 (select rs.phone from (select cl.phone,sum(f.fullfee) as allfee from
                 t_client cl left join t_fee f on cl.phone = f.phone
                 where grade=23 and cl.brand !=10 and f.feedate between
                 to_date(to_char(add_months(trunc(sysdate),-7),'yyyy-mm')||'-29','yyyy-mm-dd')
                 and
                 to_date(to_char(add_months(trunc(sysdate),-1),'yyyy-mm')||'-2','yyyy-mm-dd')
                 group by cl.phone ) rs where rs.allfee/6>= exp_arr(i).startvalue);
              end if;
           end if;
       end loop;
       commit;

       --金卡********************************************************************
       select re.* bulk collect into exp_arr from t_ruleexp re left join t_clientrule cr on re.ruleid = cr.id where cr.brand=0 and cr.pri=3;

       for i in 1..exp_arr.count loop
           dbms_output.put_line(exp_arr(i).type);
           --积分
           if exp_arr(i).type='积分' then
              if exp_arr(i).endvalue is null then
                 update t_client cl set cl.grade=21 where cl.phone in
                 (select rs.phone from (select cl.phone,sum(sc.total) as allfee
                 from t_client cl left join t_month_score sc
                 on cl.phone = sc.phone where cl.grade=23
                 and cl.brand !=10 and  sc.month between
                 to_char(add_months(trunc(sysdate),-6),'yyyymm')
                 and  to_char(add_months(trunc(sysdate),-1),'yyyymm')
                 group by cl.phone ) rs  where rs.allfee>=exp_arr(i).startvalue);
              else
                 update t_client cl set cl.grade = 21 where cl.phone in
                 (select rs.phone from (select cl.phone,sum(sc.total) as allfee
                 from t_client cl left join t_month_score sc
                 on cl.phone = sc.phone where cl.grade=23
                 and cl.brand !=10 and  sc.month between
                 to_char(add_months(trunc(sysdate),-6),'yyyymm')
                 and  to_char(add_months(trunc(sysdate),-1),'yyyymm')
                 group by cl.phone ) rs  where
                 rs.allfee between exp_arr(i).startvalue and exp_arr(i).endvalue);
              end if;
           --ARPU
           elsif exp_arr(i).type='ARPU' then
              if exp_arr(i).startvalue is not null then
                 update t_client cl set cl.grade = 21 where cl.phone in
                 (select rs.phone from (select cl.phone,sum(f.fullfee) as allfee from
                 t_client cl left join t_fee f on cl.phone = f.phone
                 where grade=23 and cl.brand !=10 and f.feedate between
                 to_date(to_char(add_months(trunc(sysdate),-7),'yyyy-mm')||'-29','yyyy-mm-dd')
                 and
                 to_date(to_char(add_months(trunc(sysdate),-1),'yyyy-mm')||'-2','yyyy-mm-dd')
                 group by cl.phone ) rs where rs.allfee/6>= exp_arr(i).startvalue);
              end if;
           end if;
       end loop;
       commit;

       --银卡********************************************************************
       select re.* bulk collect into exp_arr from t_ruleexp re left join t_clientrule cr on re.ruleid = cr.id where cr.brand=0 and cr.pri=2;

       for i in 1..exp_arr.count loop
           dbms_output.put_line(exp_arr(i).type);
           --积分
           if exp_arr(i).type='积分' then
              if exp_arr(i).endvalue is null then
                 update t_client cl set cl.grade=22 where cl.phone in
                 (select rs.phone from (select cl.phone,sum(sc.total) as allfee
                 from t_client cl left join t_month_score sc
                 on cl.phone = sc.phone where cl.grade=23
                 and cl.brand !=10 and  sc.month between
                 to_char(add_months(trunc(sysdate),-6),'yyyymm')
                 and  to_char(add_months(trunc(sysdate),-1),'yyyymm')
                 group by cl.phone ) rs  where rs.allfee>=exp_arr(i).startvalue);
              else
                 update t_client cl set cl.grade = 22 where cl.phone in
                 (select rs.phone from (select cl.phone,sum(sc.total) as allfee
                 from t_client cl left join t_month_score sc
                 on cl.phone = sc.phone where cl.grade=23
                 and cl.brand !=10 and  sc.month between
                 to_char(add_months(trunc(sysdate),-6),'yyyymm')
                 and  to_char(add_months(trunc(sysdate),-1),'yyyymm')
                 group by cl.phone ) rs  where
                 rs.allfee between exp_arr(i).startvalue and exp_arr(i).endvalue);
              end if;
           --ARPU
           elsif exp_arr(i).type='ARPU' then
              if exp_arr(i).startvalue is not null then
                 update t_client cl set cl.grade = 22 where cl.phone in
                 (select rs.phone from (select cl.phone,sum(f.fullfee) as allfee from
                 t_client cl left join t_fee f on cl.phone = f.phone
                 where grade=23 and cl.brand !=10 and f.feedate between
                 to_date(to_char(add_months(trunc(sysdate),-7),'yyyy-mm')||'-29','yyyy-mm-dd')
                 and
                 to_date(to_char(add_months(trunc(sysdate),-1),'yyyy-mm')||'-2','yyyy-mm-dd')
                 group by cl.phone ) rs where rs.allfee/6>= exp_arr(i).startvalue);
              end if;
           end if;
       end loop;
       commit;

end;
/

prompt
prompt Creating procedure PRO_LEVEL
prompt ============================
prompt
create or replace procedure crm.pro_level
is
feecount number;
mancount number;
gid varchar2(20);
type gcur is ref cursor return t_Groupfee%rowtype;
curfee gcur;
gfee t_groupfee%rowtype;
begin
open curfee for select * from t_groupfee gf
  where gf.historytime=to_date(to_char(add_months(trunc(sysdate),-1),'yyyy-mm')||'-1','yyyy-mm-dd');

fetch curfee into gfee;
loop
exit when curfee%notfound;
feecount :=gfee.fullfee;
mancount:=gfee.allcount;
gid:=gfee.groupid;
if feecount>50000 or mancount>500 then

   update groups set grouplevel='五星级' where groupid=gid and army='0'and state<>'0';
  commit;

  elsif feecount>10000 or mancount>100 then
  update groups set grouplevel='四星级'where groupid=gid and army='0'and state<>'0';
  commit;

  elsif feecount>5000 or mancount>50 then
  update groups set grouplevel='三星级'where groupid=gid and army='0'and state<>'0';
  commit;

  elsif feecount>1000 or mancount>10 then
  update groups set grouplevel='二星级'where groupid=gid and army='0'and state<>'0';
  commit;

 end if;
fetch curfee into gfee;

end loop;
end;
/

prompt
prompt Creating procedure SCORE_PRO
prompt ============================
prompt
create or replace procedure crm.score_pro(num number) as
begin
--统计月积分
  insert into t_month_temp(phone,month,pay,power,total)
  select c.phone,to_char(c.feedate,'yyyymm') as month,
   nvl(c.fullfee,0) as pay, c.power,nvl(c.fullfee*c.power,0) as total from
   (select  c.phone,c.power,f.fullfee,f.feedate from
      t_fee f  left join (select c.phone,nvl(r.base,1) as power from
      (select c.phone,d.name,c.brand from
        (select phone,grade,decode(brand,10,1,0) as brand from t_client ) c
          left join t_data d on c.grade = d.id) c
             left join t_clientrule r on r.rulename=c.name and r.brand=c.brand) c
             on  c.phone = f.phone
             where to_char(f.feedate,'yyyymm') = to_char(add_months(sysdate,-num),'yyyymm')) c ;

  insert  into t_month_score(phone,month,pay,power,total)
  select phone,month,pay,power,total from t_month_temp ;

 update t_month_score t  set (t.change,t.adjust) =
 (select c.change,t.total-c.change  from
  (select phone,  sum(back) as change   from
    (select c.phone,nvl(-1*p.integral*c.backnum,0) as back from
      (select c.phone,b.prisentid,sum(b.backnum) as backnum from
      t_client c left join t_back b
       on c.phone=b.phone  and to_char(b.bdate,'yyyymm')=
     to_char(add_months(sysdate,-num),'yyyymm')
      group by c.phone,b.prisentid) c
       left join t_present p on c.prisentid=p.id
       union all
        select a.phone, nvl(b.total,0) as total  from
      t_client a left join  t_change b
       on a.phone=b.phone and to_char(b.cdate,'yyyymm')=
      to_char(add_months(sysdate,-num),'yyyymm')
      ) group by phone) c where t.phone=c.phone);
--统计年积分
   if to_char(sysdate,'mm')='01' then
        update t_year_score y set (total,change,balance)=(
        select y.total+m.total, y.change+m.change,y.balance+m.adjust
        from t_month_score m where y.phone=m.phone and
        m.month=to_char(add_months(sysdate,-num),'yyyymm'))
        where y.year=to_char(add_months(sysdate,-num),'yyyy') and
        exists(select phone from t_month_score m where y.phone=m.phone);

        insert into t_year_score(phone,year,total,change,balance)
          select phone,to_char(add_months(sysdate,-num),'yyyy'),total,
          change,adjust from t_month_score
          where not exists(
          select 'x' from t_month_score m ,t_year_score y
          where m.phone=y.phone);

    elsif to_char(sysdate,'mm')='02' then
        insert into t_year_score(phone,year,total,change,balance)
          select phone,to_char(sysdate,'yyyy'),total,change,m.adjust
          from t_month_score m
          where m.month=to_char(add_months(sysdate,-num),'yyyymm');
     else
       update t_year_score y set (total,change,balance)=(
       select y.total+m.total,y.change+m.change,y.balance+m.adjust
       from t_month_score m where m.phone=y.phone and
        m.month=to_char(add_months(sysdate,-num),'yyyymm')
       ) where y.year=to_char(sysdate,'yyyy') and
        exists(select 'x' from t_month_score m where y.phone=m.phone);

        insert into t_year_score(phone,year,total,change,balance)
          select phone,to_char(sysdate,'yyyy'),total,
          change,adjust from t_month_score
           where not exists(
            select 'x' from t_month_score m ,t_year_score y
             where m.phone=y.phone);

    end if;
--统计累计积分
  update t_total_score t set (total,vintegral)=(
   select t.total+m.total,t.vintegral+m.total
   from t_month_score m where m.phone=t.phone and
   m.month=to_char(add_months(sysdate,-num),'yyyymm'))
  where exists(select 'x' from t_month_score m where t.phone = m.phone);

  insert into t_total_score(phone,vintegral,invalible,total)
  select phone,adjust,change,total from t_month_score
  where not exists(
  select 'x' from t_month_score m,t_total_score t
   where m.phone=t.phone);
 commit;
end;
/

prompt
prompt Creating trigger MONTH_TRI
prompt ==========================
prompt
create or replace trigger CRM.month_tri
before insert on t_month_score
for each row
begin
       select seq_month.nextval into :new.id from dual;
end;
/

prompt
prompt Creating trigger ROLE_POWER_TRI
prompt ===============================
prompt
create or replace trigger CRM.role_power_tri
  before insert on t_rolepower
for each row
begin
    select seq_trolePower.nextval into :new.id from dual;
end;
/

prompt
prompt Creating trigger TOTAL_TRI
prompt ==========================
prompt
create or replace trigger CRM.total_tri
before insert on t_total_score
for each row
begin
       select seq_total.nextval into :new.id from dual;
end;
/

prompt
prompt Creating trigger USER_ROLE_TRI
prompt ==============================
prompt
create or replace trigger CRM.user_role_tri
  before insert on t_userrole
for each row
begin
    select seq_userrole.nextval into :new.id from dual;
end;
/

prompt
prompt Creating trigger YEAR_TRI
prompt =========================
prompt
create or replace trigger CRM.year_tri
before insert on t_year_score
for each row
begin
       select seq_year.nextval into :new.id from dual;
end;
/


spool off
