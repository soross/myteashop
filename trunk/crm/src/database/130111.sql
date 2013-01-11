-- Create table
create table T_SICK_FEE_BILL
(
  ID          NUMBER not null,
  SICKID      VARCHAR2(50),
  BILLTYPE    VARCHAR2(50),
  TOTLEFEE    NUMBER(12,2),
  FEE         NUMBER(12,2),
  FEEREMARK   VARCHAR2(255),
  CREATE_DATE DATE,
  FLAG        VARCHAR2(50),
  REMARK      VARCHAR2(200),
  STAFFID     VARCHAR2(50)
);
-- Add comments to the columns 
comment on column T_SICK_FEE_BILL.SICKID
  is '����id';
comment on column T_SICK_FEE_BILL.BILLTYPE
  is '����MZ����ZYסԺCY��Ժ';
comment on column T_SICK_FEE_BILL.TOTLEFEE
  is '�ܶ�';
comment on column T_SICK_FEE_BILL.FEE
  is '�����仯���';
comment on column T_SICK_FEE_BILL.FEEREMARK
  is '�仯ԭ��';
comment on column T_SICK_FEE_BILL.CREATE_DATE
  is '����ʱ��';
comment on column T_SICK_FEE_BILL.FLAG
  is '��ʶ';
comment on column T_SICK_FEE_BILL.REMARK
  is '��ע';
comment on column T_SICK_FEE_BILL.STAFFID
  is '����Ա��';
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_SICK_FEE_BILL
  add constraint T_SICK_FEE_BILL_PK primary key (ID);
  
  
delete from t_power where id in('134','130','131','132','133');
insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (134, '���߽ɿ���ϸ�嵥', '/admin/bill.do?task=addFeeBillList'||'&'||'modfunid=134', 128, 6);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (130, '����������ϸ�嵥', '/admin/registerReport.do?task=regAmountList&modfunid=130', 128, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (131, '����סԺ�����嵥', '/admin/registerReport.do?task=regZyAmount&modfunid=131', 128, 3);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (132, '����סԺ��ϸ�嵥', '/admin/registerReport.do?task=regZyAmountList&modfunid=132', 128, 4);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (133, '��Ժ���߻����嵥', '/admin/registerReport.do?task=regCyAmount&modfunid=133', 128, 5);


delete from t_power t where t.id='121';--Ƶ���趨
delete from t_power t where t.id='122';--վ�����
delete from t_power t where t.id='56';--�����趨
delete from t_power t where t.id='58';--��ʱ����ʱ������
delete from t_power t where t.id='59';--����ѡ������
delete from t_power t where t.id='62';--���뷨����
delete from t_power t where t.id='63';--�û�ϲ������
delete from t_power t where t.id='69';--���������ļ�����

update t_power set url='/login.do?task=WanNianLi&modfunid=66' where id='66';

-- Create sequence 
create sequence SEQ_LOG
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
nocache;

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
  add constraint T_LOG_PK primary key (ID)
  ;

delete t_power where id in('123');
insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (123, '������־��ѯ', '/admin/user.do?task=queryLoginLog&modfunid=123', 120, 3);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (900, 'ɾ��������־', '', 123, -1);



