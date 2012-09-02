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
