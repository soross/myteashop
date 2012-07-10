prompt PL/SQL Developer import file
prompt Created on 2012��7��11�� by Administrator
set feedback off
set define off
prompt Dropping UNION_BINFO...
drop table UNION_BINFO cascade constraints;
prompt Creating UNION_BINFO...
create table UNION_BINFO
(
  UNIONB_ID   NUMBER not null,
  UNIONB_TYPE VARCHAR2(20),
  V_LEVEL     VARCHAR2(20),
  FULL_NAME   VARCHAR2(50),
  SHORT_NAME  VARCHAR2(20),
  PROPERTY    VARCHAR2(20),
  UNIONB_ADDR VARCHAR2(200),
  WORKSTATUS  VARCHAR2(20),
  CORPORATION VARCHAR2(20),
  COR_SEX     VARCHAR2(3),
  COR_JOBS    VARCHAR2(20),
  TEL         VARCHAR2(15),
  EMP_COUNT   NUMBER,
  REGMONEY    NUMBER,
  LINKMAN     VARCHAR2(15),
  ISLOGOUT    VARCHAR2(5) default 1,
  ISCHECK     VARCHAR2(5) default 0              --0δ���--1���ͨ��--2��˲�ͨ��
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
alter table UNION_BINFO
  add primary key (UNIONB_ID)
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

prompt Disabling triggers for UNION_BINFO...
alter table UNION_BINFO disable all triggers;
prompt Loading UNION_BINFO...
insert into UNION_BINFO (UNIONB_ID, UNIONB_TYPE, V_LEVEL, FULL_NAME, SHORT_NAME, PROPERTY, UNIONB_ADDR, WORKSTATUS, CORPORATION, COR_SEX, COR_JOBS, TEL, EMP_COUNT, REGMONEY, LINKMAN, ISLOGOUT, ISCHECK)
values (1, '���ں���', '���Ǽ�', '������ý', '����', '˽Ӫ��ҵ', '�����й�¥����ɽ·', '����', 'wang', '0', '�ܲ�', '13658745987', 800, 500000, 'miss zhang', '1', '0');
insert into UNION_BINFO (UNIONB_ID, UNIONB_TYPE, V_LEVEL, FULL_NAME, SHORT_NAME, PROPERTY, UNIONB_ADDR, WORKSTATUS, CORPORATION, COR_SEX, COR_JOBS, TEL, EMP_COUNT, REGMONEY, LINKMAN, ISLOGOUT, ISCHECK)
values (2, '���ں���', '���Ǽ�', 'ŦԼ,ŦԼ', 'ŦԼ', '˽Ӫ��ҵ', '�����й�¥���Ͻ�', '����', '֣����', '0', '����', '13569875563', 300, 600000, 'miss li', '1', '0');
commit;
prompt 2 records loaded
prompt Enabling triggers for UNION_BINFO...
alter table UNION_BINFO enable all triggers;
set feedback on
set define on
prompt Done.
