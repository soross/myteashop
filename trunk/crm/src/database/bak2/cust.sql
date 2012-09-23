-- Create table
create table T_CUSTOMER
(
  ID            NUMBER not null,
  CODE          VARCHAR2(20),
  USERNAME      VARCHAR2(20),
  NAME_CODE     VARCHAR2(50),
  COUNTRY       VARCHAR2(50),
  NATION        VARCHAR2(50),
  MARRY         VARCHAR2(10),
  GARDEN        VARCHAR2(10),
  BIRTHDAY      DATE,
  OLD           NUMBER,
  WEIGHT        NUMBER,
  HEIGHT        NUMBER,
  COLLEGE       VARCHAR2(50),
  WORK          VARCHAR2(50),
  WORK_UNIT     VARCHAR2(50),
  WORK_CODE     VARCHAR2(50),
  ALLERGY_INFO  VARCHAR2(255),
  BIRTH_ADD     VARCHAR2(255),
  BIRTH_ZIP     VARCHAR2(20),
  ID_CODE       VARCHAR2(20),
  ID_ADD        VARCHAR2(255),
  ID_ZIP        VARCHAR2(20),
  MOBILE        VARCHAR2(20),
  LIVE_ADD      VARCHAR2(255),
  LIVE_ZIP      VARCHAR2(20),
  LINKMAN       VARCHAR2(20),
  LINK_ADD      VARCHAR2(255),
  LINK_TELL     VARCHAR2(20),
  PAY_TYPE      VARCHAR2(20),
  SICK_TYPE     VARCHAR2(20),
  STAFF         VARCHAR2(20),
  SRC_INFO      VARCHAR2(20),
  IC_CARD_CODE  VARCHAR2(50),
  VIP_TYPE      VARCHAR2(20),
  VIP_CARD_CODE VARCHAR2(50),
  PHOTO_PATH    VARCHAR2(50),
  STATE         VARCHAR2(20),
  SAFE_CODE     VARCHAR2(50),
  REMARK        VARCHAR2(255),
  CARD_USER     VARCHAR2(50),
  BALANCE       NUMBER,
  CREATE_DATE   DATE
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
-- Add comments to the columns 
comment on column T_CUSTOMER.CODE
  is '����';
comment on column T_CUSTOMER.USERNAME
  is '����';
comment on column T_CUSTOMER.NAME_CODE
  is '����';
comment on column T_CUSTOMER.COUNTRY
  is '����';
comment on column T_CUSTOMER.NATION
  is '����';
comment on column T_CUSTOMER.MARRY
  is '���';
comment on column T_CUSTOMER.GARDEN
  is '�Ա�';
comment on column T_CUSTOMER.BIRTHDAY
  is '��������';
comment on column T_CUSTOMER.OLD
  is '����';
comment on column T_CUSTOMER.WEIGHT
  is '����';
comment on column T_CUSTOMER.HEIGHT
  is '���';
comment on column T_CUSTOMER.COLLEGE
  is 'ѧ��';
comment on column T_CUSTOMER.WORK
  is 'ְҵ';
comment on column T_CUSTOMER.WORK_UNIT
  is '������λ';
comment on column T_CUSTOMER.WORK_CODE
  is '��λ����';
comment on column T_CUSTOMER.ALLERGY_INFO
  is '������Ϣ';
comment on column T_CUSTOMER.BIRTH_ADD
  is '������';
comment on column T_CUSTOMER.BIRTH_ZIP
  is '�������ʱ�';
comment on column T_CUSTOMER.ID_CODE
  is '���֤��';
comment on column T_CUSTOMER.ID_ADD
  is '�������ڵ�';
comment on column T_CUSTOMER.ID_ZIP
  is '���ڵ��ʱ�';
comment on column T_CUSTOMER.MOBILE
  is '�ֻ�����';
comment on column T_CUSTOMER.LIVE_ADD
  is '��ס��';
comment on column T_CUSTOMER.LIVE_ZIP
  is '��ס���ʱ�';
comment on column T_CUSTOMER.LINKMAN
  is '��ϵ��';
comment on column T_CUSTOMER.LINK_ADD
  is '��ϵ�˵�ַ';
comment on column T_CUSTOMER.LINK_TELL
  is '��ϵ�˵绰';
comment on column T_CUSTOMER.PAY_TYPE
  is '��������';
comment on column T_CUSTOMER.SICK_TYPE
  is '��������';
comment on column T_CUSTOMER.STAFF
  is 'ҵ��Ա';
comment on column T_CUSTOMER.SRC_INFO
  is '��Ϣ��Դ';
comment on column T_CUSTOMER.IC_CARD_CODE
  is 'IC����';
comment on column T_CUSTOMER.VIP_TYPE
  is '��Ա����';
comment on column T_CUSTOMER.VIP_CARD_CODE
  is '��Ա����';
comment on column T_CUSTOMER.PHOTO_PATH
  is 'ͷ��·��';
comment on column T_CUSTOMER.STATE
  is '��Ч״̬';
comment on column T_CUSTOMER.SAFE_CODE
  is '���պ���';
comment on column T_CUSTOMER.REMARK
  is '��ע';
comment on column T_CUSTOMER.CARD_USER
  is '�ֿ���';
comment on column T_CUSTOMER.BALANCE
  is '���';
comment on column T_CUSTOMER.CREATE_DATE
  is '����ʱ��';
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_CUSTOMER
  add constraint T_CUSTOMER_PK primary key (ID)
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

-- Create sequence 
create sequence SEQ_CUSTOMER
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;
