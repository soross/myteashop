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
  is '医技报告';
-- Add comments to the columns 
comment on column T_MEDICAL.SICKID
  is '病人id';
comment on column T_MEDICAL.SICKNAME
  is '病人名称';
comment on column T_MEDICAL.CREATE_DATE
  is '创建时间';
comment on column T_MEDICAL.STATE
  is '状态0新增1可取2已联系3取回';
comment on column T_MEDICAL.MOBILE
  is '联系电话';
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
  is '残疾状况档案';
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_DEFORMITY
  add constraint T_DEFORMITY_PK primary key (ID);
  