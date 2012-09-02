update t_power t set t.url='/admin/order.do?task=orderList'
where t.powername='预约管理' ;

update t_power t set t.url='/admin/order.do?task=orderList'
where t.powername='预约列表' ;

update t_power t set t.url='/admin/reg.do?task=regList'
where t.powername='挂号管理' ;


update t_power t set t.url='/admin/reg.do?task=toAddReg'
where t.powername='门诊挂号' ;

update t_power t set t.url='/admin/cust.do?task=custList'
where t.powername='客户管理' ;

update t_power t set t.url='/admin/order.do?task=toAddOrder'
where t.powername='门诊预约' ;

update t_power t set t.url='/admin/reg.do?task=regFeeListByPrice'
where t.powername='门诊挂号划价列表' ;

update t_power t set t.url='/admin/reg.do?task=toAddRegFeeByPrice'
where t.powername='门诊挂号划价' ;

update t_power t set t.url='/admin/reg.do?task=regFeeListByCharge'
where t.powername='挂号收费列表' ;

update t_power t set t.url='/admin/reg.do?task=toAddRegFeeByCharge'
where t.powername='挂号划价收费' ;


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
  is '挂号收费';
-- Add comments to the columns 
comment on column T_ORDER_FEE.ORDER_ID
  is '挂号T_order的id ';
comment on column T_ORDER_FEE.FEE
  is '价格，2位小数';
comment on column T_ORDER_FEE.CREATE_DATE
  is '划价时间';
comment on column T_ORDER_FEE.FEE_DATE
  is '收费时间';
comment on column T_ORDER_FEE.CREATE_STAFF
  is '划价员工';
comment on column T_ORDER_FEE.FEE_STAFF
  is '收费员工';
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
