update t_power set url='/admin/cust.do?task=custList' where powername='��Ա����';

insert into t_customer (ID, CODE, USERNAME, NAME_CODE, COUNTRY, NATION, MARRY, GARDEN, BIRTHDAY, OLD, WEIGHT, HEIGHT, COLLEGE, WORK, WORK_UNIT, WORK_CODE, ALLERGY_INFO, BIRTH_ADD, BIRTH_ZIP, ID_CODE, ID_ADD, ID_ZIP, MOBILE, LIVE_ADD, LIVE_ZIP, LINKMAN, LINK_ADD, LINK_TELL, PAY_TYPE, SICK_TYPE, STAFF, SRC_INFO, IC_CARD_CODE, VIP_TYPE, VIP_CARD_CODE, PHOTO_PATH, STATE, SAFE_CODE, REMARK, CARD_USER, BALANCE, CREATE_DATE)
values (1, 'sssss', '���ط�', 'dfdsf', 'dsfadf', 'dsfdsfa', 'dsfds', '��', to_date('11-07-2012', 'dd-mm-yyyy'), 22, 22, 22, 'dfa', 'dsfadsf', 'dfdsa', 'sdaf', 'dfads', 'saf', 'sfads', 'sfadf', 'dsaf', 'dfdsaf', 'sadf', 'sfa', 'saf', 'saf', 'sf', 'safd', 'saf', 'sadf', 'sfd', 'dsfa', 'sfd', 'asfd', 'sadf', 'asdf', 'sdf', 'safd', 'sfdasf', 'asdf', 22, to_date('11-07-2012', 'dd-mm-yyyy'));

insert into t_customer (ID, CODE, USERNAME, NAME_CODE, COUNTRY, NATION, MARRY, GARDEN, BIRTHDAY, OLD, WEIGHT, HEIGHT, COLLEGE, WORK, WORK_UNIT, WORK_CODE, ALLERGY_INFO, BIRTH_ADD, BIRTH_ZIP, ID_CODE, ID_ADD, ID_ZIP, MOBILE, LIVE_ADD, LIVE_ZIP, LINKMAN, LINK_ADD, LINK_TELL, PAY_TYPE, SICK_TYPE, STAFF, SRC_INFO, IC_CARD_CODE, VIP_TYPE, VIP_CARD_CODE, PHOTO_PATH, STATE, SAFE_CODE, REMARK, CARD_USER, BALANCE, CREATE_DATE)
values (2, '1111111111', '��������', 'sf', 'fds', 'fds', 'dsf', '��', to_date('11-07-2012', 'dd-mm-yyyy'), 22, 22, 2, '��ʿ', '�������ʦ', 'sfad', 'sdaf', 'sfasdf', 'safds', 'dsfa', '134567890987654321', 'dsfa', 'sdafds', '13456789098', '�������ѵ��ӷַ�', 'safd', 'sdf', 'sadf', 'sdfd', 'sadf', 'safd', 'dfs', 'safsdaf', '1234567890', '2', 'sdf', 'fasdaf', '2', '1345678909', 'dsf', 'sdf', 22, to_date('11-07-2012', 'dd-mm-yyyy'));

insert into t_customer (ID, CODE, USERNAME, NAME_CODE, COUNTRY, NATION, MARRY, GARDEN, BIRTHDAY, OLD, WEIGHT, HEIGHT, COLLEGE, WORK, WORK_UNIT, WORK_CODE, ALLERGY_INFO, BIRTH_ADD, BIRTH_ZIP, ID_CODE, ID_ADD, ID_ZIP, MOBILE, LIVE_ADD, LIVE_ZIP, LINKMAN, LINK_ADD, LINK_TELL, PAY_TYPE, SICK_TYPE, STAFF, SRC_INFO, IC_CARD_CODE, VIP_TYPE, VIP_CARD_CODE, PHOTO_PATH, STATE, SAFE_CODE, REMARK, CARD_USER, BALANCE, CREATE_DATE)
values (3, 'code', '������', 'name_code', 'country', '', '', 'Ů', null, 22, null, null, 'college', 'work', '', '', '', '', '', 'idcode', '', '', 'mobile', 'liveadd', '', '', '', '', '', '', '', '', 'idcardcodepe', 'vipty', '', '', 'state', 'saffcode', '', '', null, null);


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
  is '�ͻ�id';
comment on column T_ORDER.ORDER_TIME
  is 'ԤԼʱ��';
comment on column T_ORDER.DOCTOR
  is 'ԤԼҽ��';
comment on column T_ORDER.MOBILE
  is '�ֻ�';
comment on column T_ORDER.STATE
  is '״̬';
comment on column T_ORDER.CREATE_DATE
  is '����ʱ��';
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
  is '�Һ�';
-- Add comments to the columns 
comment on column T_REGISTER.CUST_NAME
  is '�ͻ�����';
comment on column T_REGISTER.DOCTOR
  is 'ҽ��';
comment on column T_REGISTER.CREATE_DATE
  is '����ʱ��';
comment on column T_REGISTER.STAFF
  is '�Ǽ�Ա��';
comment on column T_REGISTER.OLD
  is '����';
comment on column T_REGISTER.GARDEN
  is '�Ա�';
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

update t_power t set t.url='/admin/order.do?task=orderList'
where t.powername='ԤԼ����' ;

update t_power t set t.url='/admin/order.do?task=orderList'
where t.powername='ԤԼ�б�' ;

update t_power t set t.url='/admin/reg.do?task=regList'
where t.powername='�ҺŹ���' ;


update t_power t set t.url='/admin/reg.do?task=toAddReg'
where t.powername='����Һ�' ;

update t_power t set t.url='/admin/cust.do?task=custList'
where t.powername='�ͻ�����' ;

update t_power t set t.url='/admin/order.do?task=toAddOrder'
where t.powername='����ԤԼ' ;

update t_power t set t.url='/admin/reg.do?task=regFeeListByPrice'
where t.powername='����ҺŻ����б�' ;

update t_power t set t.url='/admin/reg.do?task=toAddRegFeeByPrice'
where t.powername='����ҺŻ���' ;

update t_power t set t.url='/admin/reg.do?task=regFeeListByCharge'
where t.powername='�Һ��շ��б�' ;

update t_power t set t.url='/admin/reg.do?task=toAddRegFeeByCharge'
where t.powername='�ҺŻ����շ�' ;


-- Create table
create table T_ORDER_FEE
(
  ID           NUMBER not null,
  ORDER_ID     NUMBER,
  FEE          NUMBER(10,2),
  CREATE_DATE  DATE,
  FEE_DATE     DATE,
  CREATE_STAFF DATE,
  FEE_STAFF    DATE
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
comment on table T_ORDER_FEE
  is '�Һ��շ�';
-- Add comments to the columns 
comment on column T_ORDER_FEE.ORDER_ID
  is '�Һ�T_order��id ';
comment on column T_ORDER_FEE.FEE
  is '�۸�2λС��';
comment on column T_ORDER_FEE.CREATE_DATE
  is '����ʱ��';
comment on column T_ORDER_FEE.FEE_DATE
  is '�շ�ʱ��';
comment on column T_ORDER_FEE.CREATE_STAFF
  is '����Ա��';
comment on column T_ORDER_FEE.FEE_STAFF
  is '�շ�Ա��';
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_ORDER_FEE
  add constraint T_ORDER_FEE_PK primary key (ID)
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
create sequence SEQ_ORDER_FEE
minvalue 1
maxvalue 999999999999999999999999999
start with 1000
increment by 1
cache 20;


update t_power set url='/admin/data.do?task=dataList'
where powername='�����ֵ�';

-- Create table
create table T_TOTAL_SUBJECT
(
  ID           NUMBER not null,
  SUBJECT_NAME VARCHAR2(50),
  REMARK       VARCHAR2(255),
  CREATE_DATE    DATE,
  CREATE_STAFF   VARCHAR2(50)
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
comment on table T_TOTAL_SUBJECT
  is '���ܿ�Ŀ';
-- Add comments to the columns 
comment on column T_TOTAL_SUBJECT.SUBJECT_NAME
  is '���ܿ�Ŀ����';
comment on column T_TOTAL_SUBJECT.REMARK
  is '��ע';
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_TOTAL_SUBJECT
  add constraint T_TOTAL_SUBJECT_PK primary key (ID)
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


-- Create table
create table T_FEE_ITEM
(
  ID             NUMBER,
  FEE_ITEM_NAME  VARCHAR2(50),
  FEE_ITEM_PRICE NUMBER(10,2),
  REMARK         VARCHAR2(255),
  CREATE_DATE    DATE,
  CREATE_STAFF   VARCHAR2(50)
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
comment on table T_FEE_ITEM
  is '�շ���Ŀ';
-- Add comments to the columns 
comment on column T_FEE_ITEM.FEE_ITEM_NAME
  is '�շ���Ŀ����';
comment on column T_FEE_ITEM.FEE_ITEM_PRICE
  is '�շ���Ŀ�۸�';
alter table T_FEE_ITEM
  add constraint T_FEE_ITEM_PK primary key (ID)
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


-- Create table
create table T_UNIT
(
  ID           NUMBER not null,
  UNIT_NAME    VARCHAR2(100),
  REMARK       VARCHAR2(255),
  LINK_MAN     VARCHAR2(50),
  PHONE        VARCHAR2(50),
  MOBILE       VARCHAR2(50),
  CODE         VARCHAR2(100),
  CREATE_DATE  DATE,
  CREATE_STAFF VARCHAR2(50),
  UNIT_FLAG    VARCHAR2(20) default 'GOTO'
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
comment on table T_UNIT
  is '����ǩԼ��λ';
-- Add comments to the columns 
comment on column T_UNIT.UNIT_NAME
  is '������λ����';
comment on column T_UNIT.REMARK
  is '��ע';
comment on column T_UNIT.LINK_MAN
  is '��ϵ��';
comment on column T_UNIT.PHONE
  is '�绰';
comment on column T_UNIT.MOBILE
  is '�ֻ�';
comment on column T_UNIT.CODE
  is 'ִ�ձ��';
comment on column T_UNIT.UNIT_FLAG
  is '�ֵ䣺SIGNǩԼGOTO����';
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_UNIT
  add constraint T_UNIT_PK primary key (ID)
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



-- Create table
create table T_MANUFACTURERS
(
  ID           NUMBER not null,
  MF_NAME      VARCHAR2(100),
  MF_FLAG      VARCHAR2(20) default 'PROD',
  LINK_MAN     VARCHAR2(50),
  PHONE        VARCHAR2(50),
  MOBILE       VARCHAR2(50),
  CODE         VARCHAR2(100),
  CREATE_DATE  DATE,
  CREATE_STAFF VARCHAR2(50)
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
comment on table T_MANUFACTURERS
  is '������������';
-- Add comments to the columns 
comment on column T_MANUFACTURERS.MF_NAME
  is '����������������';
comment on column T_MANUFACTURERS.MF_FLAG
  is '�ֵ䣺PROD����,ORDER����';
comment on column T_MANUFACTURERS.LINK_MAN
  is '��ϵ��';
comment on column T_MANUFACTURERS.PHONE
  is '�绰';
comment on column T_MANUFACTURERS.MOBILE
  is '�ֻ�';
comment on column T_MANUFACTURERS.CODE
  is 'ִ�ձ�ŵ�';
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_MANUFACTURERS
  add constraint T_MANUFACTURERS_PK primary key (ID)
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



update t_power set url='/login.do?task=relogin' where powername='���µ���';
update t_power set url='/login.do?task=exit' where powername='�˳�ϵͳ';
update t_power set url='/login.do?task=notepad' where powername='���±�';
update t_power set url='/login.do?task=calc' where powername='������';
update t_power set url='/login.do?task=winmsd' where powername='ϵͳ������Ϣ';
update t_power set url='/login.do?task=toCheckDate' where powername='ϵͳʱ��У׼';


update t_power set url='/admin/user.do?task=userList' where powername='�û�����';
-- Create sequence 
create sequence SEQ_USER
minvalue 1000
maxvalue 999999999999999999999999999
start with 1001
increment by 1
cache 20;



-- Create sequence 
create sequence SEQ_UNIT
minvalue 1000
maxvalue 999999999999999999999999999
start with 1001
increment by 1
cache 20;


update t_power set url='/admin/feeItem.do?task=feeItemList' where powername='�շ���Ŀ';
  