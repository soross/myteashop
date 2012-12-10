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
  is '�Һ��շ�';
-- Add comments to the columns 
comment on column T_REGISTER_FEE.ORDER_ID
  is '�Һ�T_order��id ';
comment on column T_REGISTER_FEE.FEE
  is '�۸�2λС��';
comment on column T_REGISTER_FEE.CREATE_DATE
  is '����ʱ��';
comment on column T_REGISTER_FEE.FEE_DATE
  is '�շ�ʱ��';
comment on column T_REGISTER_FEE.CREATE_STAFF
  is '����Ա��';
comment on column T_REGISTER_FEE.FEE_STAFF
  is '�շ�Ա��';
comment on column T_REGISTER_FEE.FEE_TYPE
  is '�շ������ֵ�ֵcharge�շ� price����';
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
  add constraint T_REGISTER_KY primary key (ID);
  