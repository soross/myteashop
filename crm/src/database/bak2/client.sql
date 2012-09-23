
/*==============================================================*/
/* Table: t_Client     客户基本资料                           */
/*==============================================================*/
create table t_Client  (
   phone              VARCHAR2(20)	primary key,
   name               VARCHAR2(20),
   type               VARCHAR2(10),
   code               VARCHAR2(20),
   provice            NUMBER,
   city               NUMBER,
   room               VARCHAR2(20),
   regdate            DATE,
   address            VARCHAR2(100),
   grade              NUMBER,
   area               NUMBER,
   brand              NUMBER,
   linkman            VARCHAR2(20),
   isparty            CHAR(1),
   isgroup            CHAR(1),
   ischeck	      CHAR(1),
   bigdate            DATE
);

/*==============================================================*/
/* Table: t_clientinfo    客户个性信息                        */
/*==============================================================*/
create table t_clientinfo  (
   phone              VARCHAR2(20)    	primary key,
   sex                CHAR(1),
   birthday           DATE,
   age                NUMBER,
   loves              VARCHAR2(50),
   familyphone        VARCHAR2(20),
   officephone        VARCHAR2(20),
   fax                VARCHAR2(20),
   email              VARCHAR2(50),
   officeaddress      VARCHAR2(100),
   trade              VARCHAR2(2),
   iscar              CHAR(1),
   marriagedate       DATE,
   nation             VARCHAR2(50),
   country            VARCHAR2(50),
   num				  CHAR(6)
);

/*==============================================================*/
/* Table: t_fee      客户话费                                 */
/*==============================================================*/
create table t_fee  (
   id 				  			NUMBER       primary key,
   phone              VARCHAR2(20),
   inputfee			  		NUMBER,
   fullfee            NUMBER,
   arrearage          NUMBER,
   feedate            DATE,
   hire               NUMBER,
   basicfee           NUMBER,
   roamfee            NUMBER,
   infofee            NUMBER,
   upfee              NUMBER,
   otherfee           NUMBER,
   roamdate           NUMBER,
   noroamdate         NUMBER,
   longdate           NUMBER,
   nolongdate         NUMBER,
   roamtime           NUMBER,
   noroamtime         NUMBER,
   longtime           NUMBER,
   nolongtime         NUMBER,
   longfee						NUMBER
);

create sequence seq_fee increment by 1 start with 150000 nomaxvalue minvalue 1;
create index fp on t_fee(phone);
create index fd on t_fee(feedate);

/*==============================================================*/
/* Table: t_clientrule     客户等级规则                       */
/*==============================================================*/
create table t_clientrule  (
   ID                   NUMBER                     primary key,
   rulename           VARCHAR2(20),
   brand              NUMBER,
   base               NUMBER,  --基数
   description        VARCHAR2(100),
   islock             CHAR(1),
   PRI                NUMBER
);

create sequence seq_clientrule increment by 1 start with 200 nomaxvalue minvalue 1;

/*==============================================================*/
/* Table: t_ruleExp                规则表达式                 */
/*==============================================================*/
create table t_ruleExp  (
   ID                   NUMBER                      primary key,
   ruleid             NUMBER,
   type               VARCHAR2(10), --0积分 1 arpu 
   startvalue         NUMBER,
   endvalue           NUMBER,
   expression		  VARCHAR2(50)
);

create sequence seq_ruleExp increment by 1 start with 200 nomaxvalue minvalue 1;

/*==============================================================*/
/* Table: t_rulelog         规则日志                                  */
/*==============================================================*/
create table t_rulelog  (
   ID                   NUMBER                  primary key ,
   ruleID             NUMBER,
   creater            VARCHAR2(20),
   createdate         DATE,
   operator           VARCHAR2(20),
   operdate           DATE,
   opertype           CHAR(1)
);

create sequence seq_rulelog increment by 1 start with 200 nomaxvalue minvalue 1;

/*==============================================================*/
/* Table: t_gradelog    客户等级日志                                      */
/*==============================================================*/
create table t_gradelog  (
   ID                   NUMBER                  primary key,
   phone              VARCHAR2(20),
   checkuser          VARCHAR2(20),
   checkdate          DATE,
   checkNo            VARCHAR2(20),
   oldgrade	          NUMBER,
   newgrade						NUMBER
);

create sequence seq_gradelog increment by 1 start with 200 nomaxvalue minvalue 1;
--初始化
insert into t_gradelog (ID, PHONE, CHECKUSER, CHECKDATE, CHECKNO, OLDGRADE, NEWGRADE)
values (100, '13288800003', 'dfasd', to_date('10-11-2009 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '232432', 20, 21);

insert into t_gradelog (ID, PHONE, CHECKUSER, CHECKDATE, CHECKNO, OLDGRADE, NEWGRADE)
values (101, '13288800004', 'dsfads', to_date('23-11-2009 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '3243', 20, 22);

insert into t_gradelog (ID, PHONE, CHECKUSER, CHECKDATE, CHECKNO, OLDGRADE, NEWGRADE)
values (102, '13288800011', 'sdafds', to_date('16-11-2009 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '23432', 20, 22);

insert into t_gradelog (ID, PHONE, CHECKUSER, CHECKDATE, CHECKNO, OLDGRADE, NEWGRADE)
values (103, '13288800014', 'asdf', to_date('15-11-2009 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '23423', 20, 21);

insert into t_gradelog (ID, PHONE, CHECKUSER, CHECKDATE, CHECKNO, OLDGRADE, NEWGRADE)
values (104, '13288800016', 'fsdaf', to_date('07-11-2009 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '234234', 20, 21);

insert into t_gradelog (ID, PHONE, CHECKUSER, CHECKDATE, CHECKNO, OLDGRADE, NEWGRADE)
values (105, '13288800008', 'fdsaf', to_date('23-11-2009 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '23432', 20, 21);

insert into t_gradelog (ID, PHONE, CHECKUSER, CHECKDATE, CHECKNO, OLDGRADE, NEWGRADE)
values (106, '13288800018', 'dsfa', to_date('24-11-2009 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), '34324', 20, 21);


/*==============================================================*/
/* Table: t_operation       业务表                            */
/*==============================================================*/
create table t_operation  (
   ID                 NUMBER              primary key,
   type1              VARCHAR2(20),
   type2              VARCHAR2(20),
   type3              VARCHAR2(20),
   type4              VARCHAR2(20),
   type5              VARCHAR2(20),
   phone              VARCHAR2(20),
   regdate            DATE,
   reguser            VARCHAR2(20),
   state              CHAR(1),
   checkuser          VARCHAR2(20),
   checkdate          DATE,
   openstate          CHAR(1),
   canuserdate        VARCHAR2(20),
   call               VARCHAR2(20),
   move               VARCHAR2(20),
   creditfee          VARCHAR2(20),
   factfee            VARCHAR2(20),
   why                VARCHAR2(20),
   address            VARCHAR2(100),
   ischeck            CHAR(10),
   REMARKS			  		VARCHAR2(200),
   name								VARCHAR2(20),
   codetime						date,
   codetype						VARCHAR2(20),
   result							VARCHAR2(200)
);

create sequence seq_operation increment by 1 start with 200 nomaxvalue minvalue 1;
--初始化数据
insert into t_operation (ID, TYPE1, TYPE2, TYPE3, TYPE4, TYPE5, PHONE, REGDATE, REGUSER, STATE, CHECKUSER, CHECKDATE, OPENSTATE, CANUSERDATE, CALL, MOVE, CREDITFEE, FACTFEE, WHY, ADDRESS, ISCHECK, REMARKS, NAME, CODETIME, CODETYPE, RESULT)
values (1, '1', '22', '', '', '', '13288800011', to_date('11-11-2009 00:18:35', 'dd-mm-yyyy hh24:mi:ss'), '00001', '2', '00001', to_date('11-11-2009 00:23:25', 'dd-mm-yyyy hh24:mi:ss'), '', '', '', '', '100', '50', '2', '', '', '', '', null, '', '');

insert into t_operation (ID, TYPE1, TYPE2, TYPE3, TYPE4, TYPE5, PHONE, REGDATE, REGUSER, STATE, CHECKUSER, CHECKDATE, OPENSTATE, CANUSERDATE, CALL, MOVE, CREDITFEE, FACTFEE, WHY, ADDRESS, ISCHECK, REMARKS, NAME, CODETIME, CODETYPE, RESULT)
values (2, '1', '17', '', '', '', '13288800045', to_date('11-11-2009 00:28:40', 'dd-mm-yyyy hh24:mi:ss'), '00001', '1', '', null, '0', '', '13288800045', '13288801045', '', '', '', '', '', '', '', null, '', '');

insert into t_operation (ID, TYPE1, TYPE2, TYPE3, TYPE4, TYPE5, PHONE, REGDATE, REGUSER, STATE, CHECKUSER, CHECKDATE, OPENSTATE, CANUSERDATE, CALL, MOVE, CREDITFEE, FACTFEE, WHY, ADDRESS, ISCHECK, REMARKS, NAME, CODETIME, CODETYPE, RESULT)
values (3, '1', '14', '', '', '', '13288800045', to_date('11-11-2009 00:29:03', 'dd-mm-yyyy hh24:mi:ss'), '00001', '1', '', null, '0', '0', '', '', '', '', '', '', '', 'dsfadsf', '', null, '', '');

insert into t_operation (ID, TYPE1, TYPE2, TYPE3, TYPE4, TYPE5, PHONE, REGDATE, REGUSER, STATE, CHECKUSER, CHECKDATE, OPENSTATE, CANUSERDATE, CALL, MOVE, CREDITFEE, FACTFEE, WHY, ADDRESS, ISCHECK, REMARKS, NAME, CODETIME, CODETYPE, RESULT)
values (4, '2', '95', '', '', '', '13288800045', to_date('11-11-2009 00:29:15', 'dd-mm-yyyy hh24:mi:ss'), '00001', '3', '00001', to_date('11-11-2009 00:31:11', 'dd-mm-yyyy hh24:mi:ss'), '', '0', '', '', '', '', '', '', '', 'fdsf', '', null, '', '');

insert into t_operation (ID, TYPE1, TYPE2, TYPE3, TYPE4, TYPE5, PHONE, REGDATE, REGUSER, STATE, CHECKUSER, CHECKDATE, OPENSTATE, CANUSERDATE, CALL, MOVE, CREDITFEE, FACTFEE, WHY, ADDRESS, ISCHECK, REMARKS, NAME, CODETIME, CODETYPE, RESULT)
values (5, '2', '96', '', '', '', '13288800055', to_date('11-11-2009 00:29:42', 'dd-mm-yyyy hh24:mi:ss'), '00001', '4', '00001', to_date('11-11-2009 00:31:05', 'dd-mm-yyyy hh24:mi:ss'), '', '0', '', '', '', '', '', '', '', 'dfasd', '', null, '', '');

insert into t_operation (ID, TYPE1, TYPE2, TYPE3, TYPE4, TYPE5, PHONE, REGDATE, REGUSER, STATE, CHECKUSER, CHECKDATE, OPENSTATE, CANUSERDATE, CALL, MOVE, CREDITFEE, FACTFEE, WHY, ADDRESS, ISCHECK, REMARKS, NAME, CODETIME, CODETYPE, RESULT)
values (6, '2', '92', '97', '', '', '13288802451', to_date('11-11-2009 00:30:09', 'dd-mm-yyyy hh24:mi:ss'), '00001', '2', '00001', to_date('11-11-2009 00:30:59', 'dd-mm-yyyy hh24:mi:ss'), '', '', '', '', '', '', '', 'fdsaf', '', 'dfsadsf', 'dsaf', null, '', '');

insert into t_operation (ID, TYPE1, TYPE2, TYPE3, TYPE4, TYPE5, PHONE, REGDATE, REGUSER, STATE, CHECKUSER, CHECKDATE, OPENSTATE, CANUSERDATE, CALL, MOVE, CREDITFEE, FACTFEE, WHY, ADDRESS, ISCHECK, REMARKS, NAME, CODETIME, CODETYPE, RESULT)
values (7, '2', '32', '39', '41', '', '13288804045', to_date('11-11-2009 00:30:28', 'dd-mm-yyyy hh24:mi:ss'), '00001', '1', '', null, '0', '0', '', '', '', '', '', '', '', 'dasfdsf', '', null, '', '');


/*==============================================================*/
/* Table: t_clientallot       客户经理                          */
/*==============================================================*/
create table t_operlog(
	ID	NUMBER primary key,
	operid number,
	oldstate varchar2(10),
	newstate varchar2(10),
	changeuser varchar2(20),
	regdate date,
	result varchar2(100)
);
create sequence seq_operlog increment by 1 start with 200 nomaxvalue minvalue 1;

/*==============================================================*/
/* Table: t_clientallot       客户经理                          */
/*==============================================================*/
create table t_clientallot  (
   ID           NUMBER   primary key, 
   phone        VARCHAR2(20),	--客户手机号码
   manager      VARCHAR2(20),	--客户经理
   userid       varchar2(20),	--分配人
   fdate        date,		--分配时间
   state        char(1),	--状态,0为未分配,1为已分配，2为拒收
   cdate        date   		--确认时间
);

create sequence seq_clientallot increment by 1 start with 200 nomaxvalue minvalue 1;