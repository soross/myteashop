-- Create table
create table T_CUSTOMER
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
-- Add comments to the columns 
comment on column T_CUSTOMER.CODE
  is '编码';
comment on column T_CUSTOMER.USERNAME
  is '姓名';
comment on column T_CUSTOMER.NAME_CODE
  is '简码';
comment on column T_CUSTOMER.COUNTRY
  is '国籍';
comment on column T_CUSTOMER.NATION
  is '民族';
comment on column T_CUSTOMER.MARRY
  is '婚况';
comment on column T_CUSTOMER.GARDEN
  is '性别';
comment on column T_CUSTOMER.BIRTHDAY
  is '出生日期';
comment on column T_CUSTOMER.OLD
  is '岁数';
comment on column T_CUSTOMER.WEIGHT
  is '体重';
comment on column T_CUSTOMER.HEIGHT
  is '身高';
comment on column T_CUSTOMER.COLLEGE
  is '学历';
comment on column T_CUSTOMER.WORK
  is '职业';
comment on column T_CUSTOMER.WORK_UNIT
  is '工作单位';
comment on column T_CUSTOMER.WORK_CODE
  is '单位编码';
comment on column T_CUSTOMER.ALLERGY_INFO
  is '过敏信息';
comment on column T_CUSTOMER.BIRTH_ADD
  is '出生地';
comment on column T_CUSTOMER.BIRTH_ZIP
  is '出生地邮编';
comment on column T_CUSTOMER.ID_CODE
  is '身份证号';
comment on column T_CUSTOMER.ID_ADD
  is '户口所在地';
comment on column T_CUSTOMER.ID_ZIP
  is '户口地邮编';
comment on column T_CUSTOMER.MOBILE
  is '手机号码';
comment on column T_CUSTOMER.LIVE_ADD
  is '常住地';
comment on column T_CUSTOMER.LIVE_ZIP
  is '常住地邮编';
comment on column T_CUSTOMER.LINKMAN
  is '联系人';
comment on column T_CUSTOMER.LINK_ADD
  is '联系人地址';
comment on column T_CUSTOMER.LINK_TELL
  is '联系人电话';
comment on column T_CUSTOMER.PAY_TYPE
  is '付款类型';
comment on column T_CUSTOMER.SICK_TYPE
  is '病人类型';
comment on column T_CUSTOMER.STAFF
  is '业务员';
comment on column T_CUSTOMER.SRC_INFO
  is '信息来源';
comment on column T_CUSTOMER.IC_CARD_CODE
  is 'IC卡号';
comment on column T_CUSTOMER.VIP_TYPE
  is '会员类型';
comment on column T_CUSTOMER.VIP_CARD_CODE
  is '会员卡号';
comment on column T_CUSTOMER.PHOTO_PATH
  is '头像路径';
comment on column T_CUSTOMER.STATE
  is '有效状态';
comment on column T_CUSTOMER.SAFE_CODE
  is '保险号码';
comment on column T_CUSTOMER.REMARK
  is '备注';
comment on column T_CUSTOMER.CARD_USER
  is '持卡人';
comment on column T_CUSTOMER.BALANCE
  is '余额';
comment on column T_CUSTOMER.CREATE_DATE
  is '创建时间';
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_CUSTOMER
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

-- Create sequence 
create sequence SEQ_CUSTOMER
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;
