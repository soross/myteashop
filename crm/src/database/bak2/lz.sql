/*==============================================================*/
/* Table: " t_groupfee "      集团用户话务信息及通话行为表            */
/*==============================================================*/
create table t_groupfee(--集团用户话务信息及通话行为表
	id number primary key,
	groupid varchar2(15),
	monthfee number,--月租费，
	sayfee number,--基本通话费，
	longfee number,--长途费，
	swimfee number,--漫游费，
	shortfee number,--短信费，
	addfee number,--增值业务费，
	otherfee number,--其它费用
	swimtime number,--漫游时间，
	noswimtime number,--非漫游时间，
	longtime number,--长途时间，
	nolongtime number,--非长途时间，
	swimcount number,--漫游次数，
	noswimcount number,--非漫游次数，
	longcount number,--长途次数，
	nolongcount number,--非长途次数
	historytime date,	--账期
	outcount number,       	--出账人数
	zerocount number,      	--零话单人数
	newcount number,    	--新增人数
	offcount number,    	--注销人数
	allcount number,      	 --总人数
	lostmoney number, 	 --欠费金额
  fullfee number
);

--1.俱乐部的网点信息(ClubInfo)
create table Club_Net_Info(
  clubnet_id number primary key,--网点编号（自动增长）
  clubnet_addr varchar2(50),--网点地址
  clubnet_telnum varchar2(50),--网点电话
  clubnet_manger varchar2(50),--网点管理员
  clubnet_type number,--网点服务类型
  clubnet_conten varchar2(150),--网点服务内容
  clubnet_state number default 0,--状态 --0未审核 -- 1审核通过 --2 废弃--3 注销 
  clubnet_level number--网点级别
);
create sequence seq_club_net;
insert into Club_Net_Info(clubnet_id,clubnet_addr,clubnet_telnum,clubnet_manger,clubnet_type,clubnet_conten,clubnet_level) values(seq_club_net.nextval,'福州','13500000001','小管',91,'内容1',61);
insert into Club_Net_Info(clubnet_id,clubnet_addr,clubnet_telnum,clubnet_manger,clubnet_type,clubnet_conten,clubnet_level) values(seq_club_net.nextval,'福州','13500000002','小管2',92,'内容1',63);

--客户关系表
create table T_GROUPCLIENT
(
  ID      NUMBER primary key,
  GROUPID VARCHAR2(20),
  PHONE   VARCHAR2(20)
);
create sequence seq_T_GROUPCLIENT;

