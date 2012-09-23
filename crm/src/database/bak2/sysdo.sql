-- Create table
create table T_DEPT
(
  ID        NUMBER not null,
  DEPT_NAME VARCHAR2(20),
  PID       NUMBER
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
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_DEPT
  add constraint T_DEPT_PRIMARY_KEY primary key (ID)
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

  
insert into t_dept (ID, DEPT_NAME, PID)
values (1, 'aaaa', -1);

insert into t_dept (ID, DEPT_NAME, PID)
values (2, 'bbbb', -1);

insert into t_dept (ID, DEPT_NAME, PID)
values (3, 'cccc', -1);

insert into t_dept (ID, DEPT_NAME, PID)
values (4, 'dddd', -1);

insert into t_dept (ID, DEPT_NAME, PID)
values (5, 'eeee', -1);

insert into t_dept (ID, DEPT_NAME, PID)
values (6, 'ffff', -1);

insert into t_dept (ID, DEPT_NAME, PID)
values (7, 'aa11', 1);

insert into t_dept (ID, DEPT_NAME, PID)
values (8, 'aa22', 1);

insert into t_dept (ID, DEPT_NAME, PID)
values (9, 'aa33', 1);

insert into t_dept (ID, DEPT_NAME, PID)
values (10, 'bbb1', 2);

insert into t_dept (ID, DEPT_NAME, PID)
values (11, 'bbb2', 2);

insert into t_dept (ID, DEPT_NAME, PID)
values (12, 'cc11', 3);

insert into t_dept (ID, DEPT_NAME, PID)
values (13, 'cc22', 3);


  
  
  
  
-- Create table
create table T_SICKBED
(
  ID      NUMBER not null,
  SICKBED VARCHAR2(20),
  SPEC    VARCHAR2(30)
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
comment on table T_SICKBED
  is '²¡´²';
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_SICKBED
  add constraint T_SICKBED_PRIMARY_KEY primary key (ID)
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

insert into t_sickbed (ID, SICKBED, SPEC)
values (1, 'aaaaa', '2m*4m');

