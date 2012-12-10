-- Create table
create table T_LOG
(
  ID          NUMBER not null,
  ACTION      VARCHAR2(255),
  RESULT      VARCHAR2(255),
  CONTENT     CLOB,
  CREATE_DATE DATE default sysdate,
  USERID      VARCHAR2(255),
  USERNAME    VARCHAR2(255)
);
-- Add comments to the columns 
comment on column T_LOG.ACTION
  is '服务';
comment on column T_LOG.RESULT
  is '结果';
comment on column T_LOG.CONTENT
  is '内容';
comment on column T_LOG.CREATE_DATE
  is '时间';
comment on column T_LOG.USERID
  is '用户id';
comment on column T_LOG.USERNAME
  is '用户名称';
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_LOG
  add constraint T_LOG_PK primary key (ID);
  
  -- Create sequence 
create sequence SEQ_LOG
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;
  

 drop table  T_DATA;
  -- Create table
create table T_DATA
(
  ID     NUMBER not null,
  NAME   VARCHAR2(50),
  PID    NUMBER,
  REMARK VARCHAR2(100)
);
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_DATA
  add primary key (ID);
  
  
  -- Create table
create table SYS_INFO
(
  INFO_NAME    VARCHAR2(255),
  INFO_CONTENT VARCHAR2(255),
  INFO_CLOB    CLOB,
  ID           NUMBER not null
);
-- Add comments to the columns 
comment on column SYS_INFO.INFO_NAME
  is '信息名称';
comment on column SYS_INFO.INFO_CONTENT
  is '信息内容';
comment on column SYS_INFO.INFO_CLOB
  is '内容大字段';
-- Create/Recreate primary, unique and foreign key constraints 
alter table SYS_INFO
  add primary key (ID);
  
  
  -- Create sequence 
create sequence SEQ_SYS_INFO
minvalue 1
maxvalue 999999999999999999999999999
start with 100
increment by 1
cache 20;
  
 

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (601, '门诊图像列表', '/admin/file.do?task=fileListByPhoto'||'&'||'modfunid=601', 21, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (602, '新增门诊图像', '/admin/file.do?task=addFileByPhoto'||'&'||'modfunid=602', 21, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (603, '修改门诊图像', '/admin/file.do?task=updateFileByPhoto'||'&'||'modfunid=603', 21, -1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (604, '删除门诊图像', '/admin/file.do?task=deleteFileByPhoto'||'&'||'modfunid=604', 21, -1);

delete from t_power where id='21';
insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (21, '门诊图像浏览', '/admin/file.do?task=fileListByPhoto'||'&'||'modfunid=21', 2, 7);

delete from t_power where id='39';
insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (39, '门诊影像浏览', '/admin/file.do?task=fileListByView'||'&'||'modfunid=39', 2, 8);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (611, '门诊影响列表', '/admin/file.do?task=fileListByView'||'&'||'modfunid=611', 39, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (612, '新增门诊影像', '/admin/file.do?task=addFileByView'||'&'||'modfunid=612', 39, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (613, '修改门诊影像', '/admin/file.do?task=updateFileByView'||'&'||'modfunid=613', 39, -1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (614, '删除门诊影像', '/admin/file.do?task=deleteFileByView'||'&'||'modfunid=614', 39, -1);



-- Create sequence 
create sequence SEQ_FILE
minvalue 1
maxvalue 999999999999999999999999999
start with 1000
increment by 1
cache 20;


-- Create table
create table T_FILE
(
  ID          NUMBER not null,
  FILENAME    VARCHAR2(255),
  FILEPATH    VARCHAR2(255),
  CREATE_DATE DATE default sysdate,
  SICKID      VARCHAR2(255),
  FILETYPE    VARCHAR2(255)
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
comment on table T_FILE
  is '影像图像';
-- Add comments to the columns 
comment on column T_FILE.FILENAME
  is '文件名称';
comment on column T_FILE.FILEPATH
  is '文件路径';
comment on column T_FILE.SICKID
  is '病人id';
comment on column T_FILE.FILETYPE
  is '文件类型VIEW影像PHOTO图像';
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_FILE
  add constraint T_FILE_PK primary key (ID)
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

 