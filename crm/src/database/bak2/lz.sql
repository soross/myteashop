/*==============================================================*/
/* Table: " t_groupfee "      �����û�������Ϣ��ͨ����Ϊ��            */
/*==============================================================*/
create table t_groupfee(--�����û�������Ϣ��ͨ����Ϊ��
	id number primary key,
	groupid varchar2(15),
	monthfee number,--����ѣ�
	sayfee number,--����ͨ���ѣ�
	longfee number,--��;�ѣ�
	swimfee number,--���ηѣ�
	shortfee number,--���ŷѣ�
	addfee number,--��ֵҵ��ѣ�
	otherfee number,--��������
	swimtime number,--����ʱ�䣬
	noswimtime number,--������ʱ�䣬
	longtime number,--��;ʱ�䣬
	nolongtime number,--�ǳ�;ʱ�䣬
	swimcount number,--���δ�����
	noswimcount number,--�����δ�����
	longcount number,--��;������
	nolongcount number,--�ǳ�;����
	historytime date,	--����
	outcount number,       	--��������
	zerocount number,      	--�㻰������
	newcount number,    	--��������
	offcount number,    	--ע������
	allcount number,      	 --������
	lostmoney number, 	 --Ƿ�ѽ��
  fullfee number
);

--1.���ֲ���������Ϣ(ClubInfo)
create table Club_Net_Info(
  clubnet_id number primary key,--�����ţ��Զ�������
  clubnet_addr varchar2(50),--�����ַ
  clubnet_telnum varchar2(50),--����绰
  clubnet_manger varchar2(50),--�������Ա
  clubnet_type number,--�����������
  clubnet_conten varchar2(150),--�����������
  clubnet_state number default 0,--״̬ --0δ��� -- 1���ͨ�� --2 ����--3 ע�� 
  clubnet_level number--���㼶��
);
create sequence seq_club_net;
insert into Club_Net_Info(clubnet_id,clubnet_addr,clubnet_telnum,clubnet_manger,clubnet_type,clubnet_conten,clubnet_level) values(seq_club_net.nextval,'����','13500000001','С��',91,'����1',61);
insert into Club_Net_Info(clubnet_id,clubnet_addr,clubnet_telnum,clubnet_manger,clubnet_type,clubnet_conten,clubnet_level) values(seq_club_net.nextval,'����','13500000002','С��2',92,'����1',63);

--�ͻ���ϵ��
create table T_GROUPCLIENT
(
  ID      NUMBER primary key,
  GROUPID VARCHAR2(20),
  PHONE   VARCHAR2(20)
);
create sequence seq_T_GROUPCLIENT;

