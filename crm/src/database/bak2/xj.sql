/*==============================================================*/
/* Table: "T_PRESENT"       ������Ʒ                       */
/*==============================================================*/
create table T_PRESENT( 			--������Ʒ
  ID         NUMBER primary key,	--���
  NAME       VARCHAR2(50),   		--��Ʒ����
  ptype       CHAR(1),				--��Ʒ����,0Ϊ����,1Ϊ����
  NUM        NUMBER,				--����
  PICTURE    VARCHAR2(100),			--Ч��ͼ
  INTEGRAL   NUMBER,				--��Ҫ����
  del        char(1),				--αɾ����־��1Ϊɾ����0Ϊûɾ��
  INVALIDATE DATE					--��Чʱ��
);
create sequence seq_prisent increment by 1 start with 200 nomaxvalue minvalue 1;

insert into t_present (ID, NAME, PTYPE, NUM, PICTURE, INTEGRAL, DEL, INVALIDATE)
values (1, '100Ԫ�ֻ���ֵ��', '', 500, '1257028931156.jpg', 100, '0', to_date('01-11-2011', 'dd-mm-yyyy'));

insert into t_present (ID, NAME, PTYPE, NUM, PICTURE, INTEGRAL, DEL, INVALIDATE)
values (2, '��ɫ100Ԫ��ֵ��', '', 199, '1257029032687.jpg', 100, '0', to_date('01-11-2010', 'dd-mm-yyyy'));

insert into t_present (ID, NAME, PTYPE, NUM, PICTURE, INTEGRAL, DEL, INVALIDATE)
values (3, '50Ԫ��ֵ��', '', 599, '1257029086750.jpg', 50, '0', to_date('01-11-2010', 'dd-mm-yyyy'));

insert into t_present (ID, NAME, PTYPE, NUM, PICTURE, INTEGRAL, DEL, INVALIDATE)
values (4, '30Ԫ��ֵ��', '', 599, '1257029119437.jpg', 30, '0', to_date('01-01-2010', 'dd-mm-yyyy'));

insert into t_present (ID, NAME, PTYPE, NUM, PICTURE, INTEGRAL, DEL, INVALIDATE)
values (5, '��ͨ30Ԫ��ֵ��', '', 800, '1257029149781.jpg', 30, '0', to_date('01-12-2011', 'dd-mm-yyyy'));



/*==============================================================*/
/* Table: "T__MONTH_SCORE"       �»���                       */
/*==============================================================*/
create table T_MONTH_SCORE(		--�»���
  ID     NUMBER primary key,		--���
  PHONE  VARCHAR2(18),				--�ֻ���
  TOTAL  NUMBER,					--���»��ֺϼ�
  MONTH  varchar2(50),						--�·�
  PAY    NUMBER,					--���³��˻���
  BASIC  NUMBER,					--��������
  POWER  NUMBER,					--����Ȩ��
  PRIZE  NUMBER,					--��������
  ADJUST NUMBER,					--��������
  CHANGE NUMBER						--�һ�����
);
create sequence seq_month increment by 1 start with 1 nomaxvalue minvalue 1;
/*==============================================================*/
/* Table: "T_MONTH_SCORE"       �»��ֱ�����                      */
/*==============================================================*/
create index mp on t_month_score(phone);
create index mm on t_month_score(month);

/*==============================================================*/
/* Table: "T_MONTH_SCORE"       �»�����ʱ��                       */
/*==============================================================*/
create global temporary table t_month_temp(phone varchar2(18),total number,month varchar2(50),pay number,power number,adjust number,change number) on commit  delete rows; 

/*==============================================================*/
/* Table: "T_YEAR_SCORE"       �����                       */
/*==============================================================*/
create table T_YEAR_SCORE(			--�����
  ID       NUMBER primary key,		--���
  PHONE    VARCHAR2(18),			--�ֻ�����
  TOTAL    NUMBER,					--�����ۼƻ���
  CHANGE   NUMBER,					--����һ�����
  YEAR     varchar2(50),					--���
  VEST     VARCHAR2(20),			--������
  BALANCE  NUMBER,					--����ʣ�����
  VALIDTAG CHAR(1)					--��Ч��ʶ
);
create sequence seq_year increment by 1 start with 1 nomaxvalue minvalue 1;

/*==============================================================*/
/* Table: "T_TOTAL_SCORE"       �ۼƻ���                       */
/*==============================================================*/
create table T_TOTAL_SCORE(			--�ۼƻ���
  ID         NUMBER primary key,	--���
  PHONE      VARCHAR2(18),			--�û�����
  VEST       VARCHAR2(20),			--������
  INVALIDATE DATE default sysdate,		--������ʼʱ��
  VINTEGRAL  NUMBER,				--��ǰ��Ч����
  INVALIBLE  NUMBER,				--�����ϻ���
  TOTAL      NUMBER					--�ۼƻ���
);
create sequence seq_total increment by 1 start with 1 nomaxvalue minvalue 1;

/*==============================================================*/
/* Table: "T_SCORELOG"       ���ֲ�����־                      */
/*==============================================================*/
create table T_SCORELOG(			--���ֲ�����־
  ID          NUMBER primary key, 		--���
  PHONE       VARCHAR2(20),			--�ֻ�����
  BEFORESCORE NUMBER,				--����ǰ����
  AFTERSCORE  NUMBER,				--���������
  operTYPE    CHAR(1),				--��������
  CHANGENO    varchar2(50),			--�һ����
  PLACE       VARCHAR2(20),			--������
  OPERATER    VARCHAR2(20),			--������
  OPERDATE    DATE				--��������
);
create sequence seq_SCORELOG increment by 1 start with 1 nomaxvalue minvalue 1;

/*==============================================================*/
/* Table: "T_APPLYSCORE"       ��������                     */
/*==============================================================*/
create table T_APPLYSCORE(			--��������
  ID       NUMBER primary key,		--���
  PHONE    VARCHAR2(20),			--�ֻ�����
  OPERATER VARCHAR2(20),			--������Ա
  OPERDATE DATE						--����ʱ��
);
create sequence seq_APPLYSCORE increment by 1 start with 1 nomaxvalue minvalue 1;

/*==============================================================*/
/* Table: "T_CHANGE"       ���ֶһ���¼                    */
/*==============================================================*/
create table T_CHANGE(				--���ֶһ���¼
  ID        varchar2(50) primary key ,	        --���
  PHONE     VARCHAR2(18),			--�ֻ���
  type      NUMBER,				--��Ʒ����
  CHANGENUM NUMBER,				--�һ�����
  total     number,                             --�һ�����
  OPERATER  VARCHAR2(15),			--������
  CDATE     DATE				--�һ�����
);

/*==============================================================*/
/* Table: "T_CHANGE_item"       ���ֶһ���ϸ                   */
/*==============================================================*/
create table T_change_item(
 id  number primary key,		--���
 cid varchar2(50),			--�һ����
 pid number,				--��Ʒ���
 pname varchar2(50),			--��Ʒ��
 picture VARCHAR2(100),			--ͼƬ
 score number,                          --�������
 changenum number,			--�һ�����
 backnum number	,			--�ɻ�����
 vdate date				--��Ʒ��Ч��
);

create sequence seq_CHANGE_item increment by 1 start with 1 nomaxvalue minvalue 1;

/*==============================================================*/
/* Table: "T_back"       ���ֻ��˼�¼                    */
/*==============================================================*/
create table T_back(				--���ֻ��˼�¼
  ID        NUMBER primary key ,	        --���
  cid       varchar2(50),			--�һ����
  PHONE     VARCHAR2(18),			--�ֻ���
  PRISENTID NUMBER,				--��Ʒ���
  BACKNUM  NUMBER,				--��������
  OPERATER  VARCHAR2(15),			--������
  bdate     DATE				--��������
);
create sequence seq_back increment by 1 start with 1 nomaxvalue minvalue 1;