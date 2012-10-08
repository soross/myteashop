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
