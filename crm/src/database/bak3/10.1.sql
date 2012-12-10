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
  is '����';
comment on column T_LOG.RESULT
  is '���';
comment on column T_LOG.CONTENT
  is '����';
comment on column T_LOG.CREATE_DATE
  is 'ʱ��';
comment on column T_LOG.USERID
  is '�û�id';
comment on column T_LOG.USERNAME
  is '�û�����';
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
  is '��Ϣ����';
comment on column SYS_INFO.INFO_CONTENT
  is '��Ϣ����';
comment on column SYS_INFO.INFO_CLOB
  is '���ݴ��ֶ�';
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
values (601, '����ͼ���б�', '/admin/file.do?task=fileListByPhoto'||'&'||'modfunid=601', 21, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (602, '��������ͼ��', '/admin/file.do?task=addFileByPhoto'||'&'||'modfunid=602', 21, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (603, '�޸�����ͼ��', '/admin/file.do?task=updateFileByPhoto'||'&'||'modfunid=603', 21, -1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (604, 'ɾ������ͼ��', '/admin/file.do?task=deleteFileByPhoto'||'&'||'modfunid=604', 21, -1);

delete from t_power where id='21';
insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (21, '����ͼ�����', '/admin/file.do?task=fileListByPhoto'||'&'||'modfunid=21', 2, 7);

delete from t_power where id='39';
insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (39, '����Ӱ�����', '/admin/file.do?task=fileListByView'||'&'||'modfunid=39', 2, 8);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (611, '����Ӱ���б�', '/admin/file.do?task=fileListByView'||'&'||'modfunid=611', 39, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (612, '��������Ӱ��', '/admin/file.do?task=addFileByView'||'&'||'modfunid=612', 39, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (613, '�޸�����Ӱ��', '/admin/file.do?task=updateFileByView'||'&'||'modfunid=613', 39, -1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (614, 'ɾ������Ӱ��', '/admin/file.do?task=deleteFileByView'||'&'||'modfunid=614', 39, -1);



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
  is 'Ӱ��ͼ��';
-- Add comments to the columns 
comment on column T_FILE.FILENAME
  is '�ļ�����';
comment on column T_FILE.FILEPATH
  is '�ļ�·��';
comment on column T_FILE.SICKID
  is '����id';
comment on column T_FILE.FILETYPE
  is '�ļ�����VIEWӰ��PHOTOͼ��';
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

 