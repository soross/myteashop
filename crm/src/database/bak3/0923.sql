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
  is '病历';
-- Add comments to the columns 
comment on column T_HIS.SUFFERER
  is '患者id';
comment on column T_HIS.CREATE_DATE
  is '日期-默认当前时间';
comment on column T_HIS.HISNO
  is '病历号';
comment on column T_HIS.NAME
  is '姓名';
comment on column T_HIS.GARDEN
  is '性别';
comment on column T_HIS.OLD
  is '年龄';
comment on column T_HIS.ISMARRY
  is '婚否0未婚1已婚';
comment on column T_HIS.HEIGHT
  is '身高';
comment on column T_HIS.WEIGHT
  is '体重';
comment on column T_HIS.JOB
  is '职业';
comment on column T_HIS.LINKMAN
  is '联系人';
comment on column T_HIS.RELATION
  is '关系';
comment on column T_HIS.LINKTEL
  is '联系电话';
comment on column T_HIS.GATHER_DATE
  is '采集时间-默认当前时间';
comment on column T_HIS.ADDRESS
  is '地址';
comment on column T_HIS.TEL
  is '电话';
comment on column T_HIS.LINKADD
  is '联系地址';
comment on column T_HIS.LINKADDREL
  is '联系地址电话';
comment on column T_HIS.DEPTID
  is '科室';
comment on column T_HIS.HISSTATE
  is '病史陈述';
comment on column T_HIS.CYCLE
  is '发病节气';
comment on column T_HIS.HISLEVEL
  is '可靠程度';
comment on column T_HIS.XREGCTNO
  is 'X光ct号';
comment on column T_HIS.ALLERGY
  is '过敏药物';
comment on column T_HIS.REMARK
  is '备注';
comment on column T_HIS.STATE
  is '主诉';
comment on column T_HIS.HIS_NOW
  is '现病史';
comment on column T_HIS.HIS_SELF
  is '个人史';
comment on column T_HIS.HIS_MARRY
  is '婚育史';
comment on column T_HIS.HIS_FAMILY
  is '家族史';
comment on column T_HIS.HELP_CHECKUP
  is '辅助检查';
comment on column T_HIS.HIS_SETUP
  is '既往安装史';
comment on column T_HIS.RESULT
  is '诊疗结果';
comment on column T_HIS.DISPOSE
  is '处理';
comment on column T_HIS.PHOTO
  is '头像';
comment on column T_HIS.DOCTOR
  is '接诊人';
comment on column T_HIS.HIS_DATE
  is '就诊日期';
comment on column T_HIS.PAGE
  is '页数';
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_HIS
  add constraint T_HIS_PK primary key (ID);
  
  
delete from t_power where id in('2','15');  

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (2, '日常诊疗操作', '/admin/his.do?task=toAddHis&modfunid=2', 0, 5);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (15, '门诊诊疗处理', '/admin/his.do?task=toAddHis&modfunid=15', 2, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (501, '现在病历', '/admin/his.do?task=hisListByNow&modfunid=501', 15, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (502, '既往病历', '/admin/his.do?task=hisList&modfunid=502', 15, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (503, '出院病历', '/admin/his.do?task=hisListByOut&modfunid=503', 15, 3);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (504, '病历图片', '/admin/his.do?task=hisPhotoList&modfunid=504', 15, 4);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (505, '病历视频', '/admin/his.do?task=hisViewList&modfunid=505', 15, 5);




