update t_power set url='/admin/cust.do?task=custList' where powername='会员管理';

insert into t_customer (ID, CODE, USERNAME, NAME_CODE, COUNTRY, NATION, MARRY, GARDEN, BIRTHDAY, OLD, WEIGHT, HEIGHT, COLLEGE, WORK, WORK_UNIT, WORK_CODE, ALLERGY_INFO, BIRTH_ADD, BIRTH_ZIP, ID_CODE, ID_ADD, ID_ZIP, MOBILE, LIVE_ADD, LIVE_ZIP, LINKMAN, LINK_ADD, LINK_TELL, PAY_TYPE, SICK_TYPE, STAFF, SRC_INFO, IC_CARD_CODE, VIP_TYPE, VIP_CARD_CODE, PHOTO_PATH, STATE, SAFE_CODE, REMARK, CARD_USER, BALANCE, CREATE_DATE)
values (1, 'sssss', '发地方', 'dfdsf', 'dsfadf', 'dsfdsfa', 'dsfds', '男', to_date('11-07-2012', 'dd-mm-yyyy'), 22, 22, 22, 'dfa', 'dsfadsf', 'dfdsa', 'sdaf', 'dfads', 'saf', 'sfads', 'sfadf', 'dsaf', 'dfdsaf', 'sadf', 'sfa', 'saf', 'saf', 'sf', 'safd', 'saf', 'sadf', 'sfd', 'dsfa', 'sfd', 'asfd', 'sadf', 'asdf', 'sdf', 'safd', 'sfdasf', 'asdf', 22, to_date('11-07-2012', 'dd-mm-yyyy'));

insert into t_customer (ID, CODE, USERNAME, NAME_CODE, COUNTRY, NATION, MARRY, GARDEN, BIRTHDAY, OLD, WEIGHT, HEIGHT, COLLEGE, WORK, WORK_UNIT, WORK_CODE, ALLERGY_INFO, BIRTH_ADD, BIRTH_ZIP, ID_CODE, ID_ADD, ID_ZIP, MOBILE, LIVE_ADD, LIVE_ZIP, LINKMAN, LINK_ADD, LINK_TELL, PAY_TYPE, SICK_TYPE, STAFF, SRC_INFO, IC_CARD_CODE, VIP_TYPE, VIP_CARD_CODE, PHOTO_PATH, STATE, SAFE_CODE, REMARK, CARD_USER, BALANCE, CREATE_DATE)
values (2, '1111111111', '呜呜呜呜', 'sf', 'fds', 'fds', 'dsf', '男', to_date('11-07-2012', 'dd-mm-yyyy'), 22, 22, 2, '博士', '软件工程师', 'sfad', 'sdaf', 'sfasdf', 'safds', 'dsfa', '134567890987654321', 'dsfa', 'sdafds', '13456789098', '飞洒付费电视分发', 'safd', 'sdf', 'sadf', 'sdfd', 'sadf', 'safd', 'dfs', 'safsdaf', '1234567890', '2', 'sdf', 'fasdaf', '2', '1345678909', 'dsf', 'sdf', 22, to_date('11-07-2012', 'dd-mm-yyyy'));

insert into t_customer (ID, CODE, USERNAME, NAME_CODE, COUNTRY, NATION, MARRY, GARDEN, BIRTHDAY, OLD, WEIGHT, HEIGHT, COLLEGE, WORK, WORK_UNIT, WORK_CODE, ALLERGY_INFO, BIRTH_ADD, BIRTH_ZIP, ID_CODE, ID_ADD, ID_ZIP, MOBILE, LIVE_ADD, LIVE_ZIP, LINKMAN, LINK_ADD, LINK_TELL, PAY_TYPE, SICK_TYPE, STAFF, SRC_INFO, IC_CARD_CODE, VIP_TYPE, VIP_CARD_CODE, PHOTO_PATH, STATE, SAFE_CODE, REMARK, CARD_USER, BALANCE, CREATE_DATE)
values (3, 'code', '的萨芬', 'name_code', 'country', '', '', '女', null, 22, null, null, 'college', 'work', '', '', '', '', '', 'idcode', '', '', 'mobile', 'liveadd', '', '', '', '', '', '', '', '', 'idcardcodepe', 'vipty', '', '', 'state', 'saffcode', '', '', null, null);


-- Create table
create table T_ORDER
(
  ID          NUMBER not null,
  CUST_ID     NUMBER,
  ORDER_TIME  DATE,
  DOCTOR      NUMBER,
  MOBILE      VARCHAR2(50),
  STATE       VARCHAR2(10),
  CREATE_DATE DATE
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
comment on column T_ORDER.CUST_ID
  is '客户id';
comment on column T_ORDER.ORDER_TIME
  is '预约时间';
comment on column T_ORDER.DOCTOR
  is '预约医生';
comment on column T_ORDER.MOBILE
  is '手机';
comment on column T_ORDER.STATE
  is '状态';
comment on column T_ORDER.CREATE_DATE
  is '创建时间';
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_ORDER
  add constraint T_ORDER_PK primary key (ID)
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
create sequence SEQ_ORDER
minvalue 1
maxvalue 999999999999999999999999999
start with 1000
increment by 1
cache 20;
  
  
  
  
-- Create table
create table T_REGISTER
(
  ID          NUMBER not null,
  CUST_NAME   VARCHAR2(20),
  DOCTOR      VARCHAR2(20),
  CREATE_DATE DATE,
  STAFF       NUMBER,
  OLD         NUMBER,
  GARDEN      VARCHAR2(10)
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
-- Add comments to the table 
comment on table T_REGISTER
  is '挂号';
-- Add comments to the columns 
comment on column T_REGISTER.CUST_NAME
  is '客户名称';
comment on column T_REGISTER.DOCTOR
  is '医生';
comment on column T_REGISTER.CREATE_DATE
  is '创建时间';
comment on column T_REGISTER.STAFF
  is '登记员工';
comment on column T_REGISTER.OLD
  is '年龄';
comment on column T_REGISTER.GARDEN
  is '性别';
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_REGISTER
  add constraint T_REGISTER_KY primary key (ID)
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
create sequence SEQ_REGISTER
minvalue 1
maxvalue 999999999999999999999999999
start with 1000
increment by 1
cache 20;
  