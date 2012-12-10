drop table T_REGISTER_FEE;
-- Create table
create table T_REGISTER_FEE
(
  ID           NUMBER not null,
  ORDER_ID     NUMBER,
  FEE          NUMBER(10,2),
  CREATE_DATE  DATE,
  FEE_DATE     DATE,
  CREATE_STAFF VARCHAR2(20),
  FEE_STAFF    VARCHAR2(20),
  FEE_TYPE     VARCHAR2(10)
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
comment on table T_REGISTER_FEE
  is '挂号收费';
-- Add comments to the columns 
comment on column T_REGISTER_FEE.ORDER_ID
  is '挂号T_order的id ';
comment on column T_REGISTER_FEE.FEE
  is '价格，2位小数';
comment on column T_REGISTER_FEE.CREATE_DATE
  is '划价时间';
comment on column T_REGISTER_FEE.FEE_DATE
  is '收费时间';
comment on column T_REGISTER_FEE.CREATE_STAFF
  is '划价员工';
comment on column T_REGISTER_FEE.FEE_STAFF
  is '收费员工';
comment on column T_REGISTER_FEE.FEE_TYPE
  is '收费类型字典值charge收费 price划价';
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_REGISTER_FEE
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

  
  
  
  
  
  
drop table T_REGISTER;  
  -- Create table
create table T_REGISTER
(
  ID          NUMBER not null,
  CUST_NAME   VARCHAR2(20),
  DOCTOR      VARCHAR2(20),
  CREATE_DATE DATE,
  STAFF       VARCHAR2(50),
  OLD         NUMBER,
  GARDEN      VARCHAR2(10)
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
  add constraint T_REGISTER_KY primary key (ID);
  