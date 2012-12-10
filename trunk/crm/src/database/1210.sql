-- Create table
create table T_DEFORMITY
(
  ID           NUMBER not null,
  SICKID       VARCHAR2(50),
  SICKNAME     VARCHAR2(50),
  LINKMAN      VARCHAR2(50),
  MOBILE       VARCHAR2(50),
  CREATE_DATE  DATE,
  STATE        VARCHAR2(10),
  CREATE_STAFF VARCHAR2(20)
);
-- Add comments to the table 
comment on table T_DEFORMITY
  is '²Ð¼²×´¿öµµ°¸';
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_DEFORMITY
  add constraint T_DEFORMITY_PK primary key (ID);
