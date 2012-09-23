update t_power t set t.url='/admin/ddt/ddt.do?task=toAddDdt&modfunid=15'
where id='15';

update t_power t set t.url='/admin/ddt/ddt.do?task=toAddDdt&modfunid=2'
where id='2';

-- Create table
create table T_HIS
(
  ID           NUMBER not null,
  SUFFERER     VARCHAR2(50),
  CREATE_DATE  DATE default sysdate,
  HISNO        VARCHAR2(50),
  NAME         VARCHAR2(50),
  GARDEN       VARCHAR2(5),
  OLD          NUMBER,
  ISMARRY      VARCHAR2(10),
  HEIGHT       NUMBER,
  WEIGHT       NUMBER,
  JOB          VARCHAR2(50) not null,
  LINKMAN      VARCHAR2(50),
  RELATION     VARCHAR2(50),
  LINKTEL      VARCHAR2(50),
  GATHER_DATE  DATE default sysdate,
  ADDRESS      VARCHAR2(100),
  TEL          VARCHAR2(50),
  LINKADD      VARCHAR2(100),
  LINKADDREL   VARCHAR2(50),
  DEPTID       NUMBER,
  HISSTATE     VARCHAR2(100),
  CYCLE        VARCHAR2(50),
  HISLEVEL     VARCHAR2(50),
  XREGCTNO     VARCHAR2(50),
  ALLERGY      VARCHAR2(100),
  REMARK       VARCHAR2(100),
  STATE        VARCHAR2(255),
  HIS_NOW      CLOB,
  HIS_SELF     CLOB,
  HIS_MARRY    CLOB,
  HIS_FAMILY   CLOB,
  HELP_CHECKUP CLOB,
  HIS_SETUP    CLOB,
  RESULT       CLOB,
  DISPOSE      CLOB,
  PHOTO        VARCHAR2(100),
  DOCTOR       VARCHAR2(50),
  HIS_DATE     DATE default sysdate,
  PAGE         NUMBER
);
-- Add comments to the table 
comment on table T_HIS
  is '����';
-- Add comments to the columns 
comment on column T_HIS.SUFFERER
  is '����id';
comment on column T_HIS.CREATE_DATE
  is '����-Ĭ�ϵ�ǰʱ��';
comment on column T_HIS.HISNO
  is '������';
comment on column T_HIS.NAME
  is '����';
comment on column T_HIS.GARDEN
  is '�Ա�';
comment on column T_HIS.OLD
  is '����';
comment on column T_HIS.ISMARRY
  is '���0δ��1�ѻ�';
comment on column T_HIS.HEIGHT
  is '���';
comment on column T_HIS.WEIGHT
  is '����';
comment on column T_HIS.JOB
  is 'ְҵ';
comment on column T_HIS.LINKMAN
  is '��ϵ��';
comment on column T_HIS.RELATION
  is '��ϵ';
comment on column T_HIS.LINKTEL
  is '��ϵ�绰';
comment on column T_HIS.GATHER_DATE
  is '�ɼ�ʱ��-Ĭ�ϵ�ǰʱ��';
comment on column T_HIS.ADDRESS
  is '��ַ';
comment on column T_HIS.TEL
  is '�绰';
comment on column T_HIS.LINKADD
  is '��ϵ��ַ';
comment on column T_HIS.LINKADDREL
  is '��ϵ��ַ�绰';
comment on column T_HIS.DEPTID
  is '����';
comment on column T_HIS.HISSTATE
  is '��ʷ����';
comment on column T_HIS.CYCLE
  is '��������';
comment on column T_HIS.HISLEVEL
  is '�ɿ��̶�';
comment on column T_HIS.XREGCTNO
  is 'X��ct��';
comment on column T_HIS.ALLERGY
  is '����ҩ��';
comment on column T_HIS.REMARK
  is '��ע';
comment on column T_HIS.STATE
  is '����';
comment on column T_HIS.HIS_NOW
  is '�ֲ�ʷ';
comment on column T_HIS.HIS_SELF
  is '����ʷ';
comment on column T_HIS.HIS_MARRY
  is '����ʷ';
comment on column T_HIS.HIS_FAMILY
  is '����ʷ';
comment on column T_HIS.HELP_CHECKUP
  is '�������';
comment on column T_HIS.HIS_SETUP
  is '������װʷ';
comment on column T_HIS.RESULT
  is '���ƽ��';
comment on column T_HIS.DISPOSE
  is '����';
comment on column T_HIS.PHOTO
  is 'ͷ��';
comment on column T_HIS.DOCTOR
  is '������';
comment on column T_HIS.HIS_DATE
  is '��������';
comment on column T_HIS.PAGE
  is 'ҳ��';
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_HIS
  add constraint T_HIS_PK primary key (ID);
  
  
delete from t_power where id in('2','15');  

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (2, '�ճ����Ʋ���', '/admin/his.do?task=toAddHis&modfunid=2', 0, 5);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (15, '�������ƴ���', '/admin/his.do?task=toAddHis&modfunid=15', 2, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (501, '���ڲ���', '/admin/his.do?task=hisListByNow&modfunid=501', 15, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (502, '��������', '/admin/his.do?task=hisList&modfunid=502', 15, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (503, '��Ժ����', '/admin/his.do?task=hisListByOut&modfunid=503', 15, 3);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (504, '����ͼƬ', '/admin/his.do?task=hisPhotoList&modfunid=504', 15, 4);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (505, '������Ƶ', '/admin/his.do?task=hisViewList&modfunid=505', 15, 5);




