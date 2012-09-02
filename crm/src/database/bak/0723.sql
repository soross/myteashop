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
