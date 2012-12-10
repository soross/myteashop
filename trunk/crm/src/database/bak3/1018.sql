-- Create table
create table T_MEDICAL
(
  ID          NUMBER not null,
  SICKID      VARCHAR2(50),
  SICKNAME    VARCHAR2(50),
  CREATE_DATE DATE,
  STATE       VARCHAR2(10) default 0,
  MOBILE      VARCHAR2(50)
);
-- Add comments to the table 
comment on table T_MEDICAL
  is 'ҽ������';
-- Add comments to the columns 
comment on column T_MEDICAL.SICKID
  is '����id';
comment on column T_MEDICAL.SICKNAME
  is '��������';
comment on column T_MEDICAL.CREATE_DATE
  is '����ʱ��';
comment on column T_MEDICAL.STATE
  is '״̬0����1��ȡ2����ϵ3ȡ��';
comment on column T_MEDICAL.MOBILE
  is '��ϵ�绰';
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_MEDICAL
  add constraint T_MEDICAL_PK primary key (ID)
  ;

  
  -- Create table
create table T_DEFORMITY
(
  ID          NUMBER not null,
  SICKID      VARCHAR2(50),
  SICKNAME    VARCHAR2(50),
  LINKMAN     VARCHAR2(50),
  MOBILE      VARCHAR2(50),
  CREATE_DATE DATE,
  STATE       VARCHAR2(10)
);
-- Add comments to the table 
comment on table T_DEFORMITY
  is '�м�״������';
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_DEFORMITY
  add constraint T_DEFORMITY_PK primary key (ID);
  