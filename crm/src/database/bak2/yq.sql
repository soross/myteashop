/*==============================================================*/
/* Table: "groups "      ���ű�                     */
/*==============================================================*/
create table groups(--���ű�
	 groupid varchar2(20) primary key,--���ű�š�
	 groupname varchar2(50),--�������ơ�
	 vocation varchar2(30),--������ҵ��
	 grouplevel varchar2(15),--��ҵ����
         army varchar2(5),--�Ƿ�����,�� 1,���� 0
         privince varchar2(15),--ʡ
	     city varchar2(15),--��
         area varchar2(15),--����
         address varchar2(40),--��ַ
         post varchar2(10),--�ʱ�
         useman varchar2(15),--����
         web varchar2(25),--��ַ
         openmon varchar2(15),--ע���ʽ�
         moneytype varchar2(15),--����״��
         sendtype varchar2(15),--��Ӫ״��
         empcount varchar2(15),--Ա������
         grouptype varchar2(15),--��ҵ����
         manager varchar2(15),--�ͻ�����
	 state varchar2(15)--����״̬ 0 �����Ǳ�ڼ��ţ�1����Ǳ�ڼ��ţ�2��ʽ���ţ�3��˷�������4ע������
);
insert into groups (GROUPID, GROUPNAME, VOCATION, GROUPLEVEL, ARMY, PRIVINCE, CITY, AREA, ADDRESS, POST,useman,web,openmon,moneytype,sendtype,empcount,grouptype, MANAGER, STATE)
values ('091135001450001', '�޹���', '����/����/�ӹ�', 'δ�ּ�', '0', '����ʡ', '������', '1146', '������̨��������·123��', '350012', '������','www.whh.com','5000000','98','98','5000','103','manager2', '1');

insert into groups (GROUPID, GROUPNAME, VOCATION, GROUPLEVEL, ARMY, PRIVINCE, CITY, AREA, ADDRESS, POST,useman,web,openmon,moneytype,sendtype,empcount,grouptype, MANAGER, STATE)
values ('091135001380001', '���������Ƶ�', '����/����/�Ƶ�/����', 'δ�ּ�', '0', '����ʡ', '������', '1145', '�����й�¥����Ȩ·25��', '350013', '����','','450000','98','97','4000','103','δ����', '1');

insert into groups (GROUPID, GROUPNAME, VOCATION, GROUPLEVEL, ARMY, PRIVINCE, CITY, AREA, ADDRESS, POST,useman,web,openmon,moneytype,sendtype,empcount,grouptype, MANAGER, STATE)
values ('091135001450002', '��β����', '����/����/�ӹ�', '���Ǽ�', '1', '����ʡ', '������', '1148', '��������β������·256��', '350015', '�½���','www.mwcz.com','800000','98','98','800','102', 'manager2', '1');

insert into groups (GROUPID, GROUPNAME, VOCATION, GROUPLEVEL, ARMY, PRIVINCE, CITY, AREA, ADDRESS, POST,useman,web,openmon,moneytype,sendtype,empcount,grouptype, MANAGER, STATE)
values ('091135002470002', '�ɿڿ���(���ŷֹ�˾)', '��ˮ/ˮ��', 'δ�ּ�', '0', '����ʡ', '������', '1162', '�����м�����115��', '650015', '�β�˳','www.cool.com','1000000','98','98','3800','103', 'δ����', '0');

insert into groups (GROUPID, GROUPNAME, VOCATION, GROUPLEVEL, ARMY, PRIVINCE, CITY, AREA, ADDRESS, POST,useman,web,openmon,moneytype,sendtype,empcount,grouptype, MANAGER, STATE)
values ('091135001470003', '�ɿڿ���(���ݷֹ�˾)', '��ˮ/ˮ��', 'δ�ּ�', '0', '����ʡ', '������', '1145', '�����й�¥��', '350011', '������','www.cool.com','12000000','98','98','4000','103', 'δ����', '0');

insert into groups (GROUPID, GROUPNAME, VOCATION, GROUPLEVEL, ARMY, PRIVINCE, CITY, AREA, ADDRESS, POST,useman,web,openmon,moneytype,sendtype,empcount,grouptype, MANAGER, STATE)
values ('091135001440001', '���Ӽ���', '��ҵ/����/����/ó��', 'δ�ּ�', '0', '����ʡ', '������', '1149', '�����н�����45��', '350011', '����ƽ','www.yy.com','5000000','98','98','5000','103', 'δ����', '0');

insert into groups (GROUPID, GROUPNAME, VOCATION, GROUPLEVEL, ARMY, PRIVINCE, CITY, AREA, ADDRESS, POST,useman,web,openmon,moneytype,sendtype,empcount,grouptype, MANAGER, STATE)
values ('091135001390001', 'LG', 'IT/ͨ��', 'δ�ּ�', '0', '����ʡ', '������', '1148', '��������β���彭58��', '350015', '����','www.lg.com','360000','98','98','5000','103', 'δ����', '1');

insert into groups (GROUPID, GROUPNAME, VOCATION, GROUPLEVEL, ARMY, PRIVINCE, CITY, AREA, ADDRESS, POST,useman,web,openmon,moneytype,sendtype,empcount,grouptype, MANAGER, STATE)
values ('091135002480001', '�¿�ʿ(������)', '��ͨ', 'δ�ּ�', '0', '����ʡ', '������', '1162', '�����м�����', '659545',  
'����','www.dks.com','1000000','98','98','1500','103','δ����', '0');

insert into groups (GROUPID, GROUPNAME, VOCATION, GROUPLEVEL, ARMY, PRIVINCE, CITY, AREA, ADDRESS, POST,useman,web,openmon,moneytype,sendtype,empcount,grouptype, MANAGER, STATE)
values ('090435001450001', 'ͳһ��ҵ', '����/����/�ӹ�', '���Ǽ�', '0', '����ʡ', '������', '1146', '����ʡ������̨������ͤ��112��', '350012', '����','www.tyi.com','5000000','98','98','5000','103', 'manager1', '1');

insert into groups (GROUPID, GROUPNAME, VOCATION, GROUPLEVEL, ARMY, PRIVINCE, CITY, AREA, ADDRESS, POST,useman,web,openmon,moneytype,sendtype,empcount,grouptype, MANAGER, STATE)
values ('090435001450002', '��ʦ��', '����/����/�ӹ�', '���Ǽ�', '0', '����ʡ', '������', '1145', '����ʡ�����й�¥�����ֿ�15��', '350011', '̸��','www.ksf.com','3000000','98','98','3500','103', 'manager1', '1');

insert into groups (GROUPID, GROUPNAME, VOCATION, GROUPLEVEL, ARMY, PRIVINCE, CITY, AREA, ADDRESS, POST,useman,web,openmon,moneytype,sendtype,empcount,grouptype, MANAGER, STATE)
values ('090435001390003', '�´�½', '����', '���Ǽ�', '0', '����ʡ', '������', '1148', '����ʡ��������β���彭��·1��', '350015', '����','www.newland.com','5000000','98','98','5000','103', 'manager2', '2');

insert into groups (GROUPID, GROUPNAME, VOCATION, GROUPLEVEL, ARMY, PRIVINCE, CITY, AREA, ADDRESS, POST,useman,web,openmon,moneytype,sendtype,empcount,grouptype, MANAGER, STATE)
values ('090435001350001', 'ʡ����', '����', '���Ǽ�', '1', '����ʡ', '������', '1145', '����ʡ�����й�¥��ʡ����', '350015',  '����','','5000000','98','98','5000','102','manager2', '2');

insert into groups (GROUPID, GROUPNAME, VOCATION, GROUPLEVEL, ARMY, PRIVINCE, CITY, AREA, ADDRESS, POST,useman,web,openmon,moneytype,sendtype,empcount,grouptype, MANAGER, STATE)
values ('091146001440001', '�ൺơ��', '��ҵ/����/����/ó��', 'δ�ּ�', '0', '����ʡ', '������', '2196', '����ʡ������', '658854', '�ƶ�','www.qd.com','5000000','98','98','5000','103', 'manager1', '0');

insert into groups (GROUPID, GROUPNAME, VOCATION, GROUPLEVEL, ARMY, PRIVINCE, CITY, AREA, ADDRESS, POST,useman,web,openmon,moneytype,sendtype,empcount,grouptype, MANAGER, STATE)
values ('091135005490001', '��ͼ����', '��ҵ/����/����/ó��', '���Ǽ�', '0', '����ʡ', 'Ȫ����', '1194', '����ʡȪ����', '350123', '����¡','www.htsb.com','2500000','98','98','5000','103', 'manager1', '2');
/*==============================================================*/
/* Table: "grouplinker "      ������ϵ�˱�                    */
/*==============================================================*/
create table t_grouplinker(--������ϵ�˱�
	groupid varchar2(20) primary key,
	name varchar2(15),--����
	telephone varchar2(15),--��ϵ�绰��
	job varchar2(15),--ְλ��
	sex varchar2(5),--�Ա�
	email varchar2(20)--��������
);

insert into t_grouplinker(groupid,name,telephone,job,sex,email)values('090435001450001','������','13654895575','���¾���','0','kkxs@163.com');
insert into t_grouplinker(groupid,name,telephone,job,sex,email)values('090435001450002','��С��','13654856256','���¾���','1','jiuj456s@163.com');
insert into t_grouplinker(groupid,name,telephone,job,sex,email)values('090435001390003','������','13654895858','���¾���','0','xdlrsb@163.com');

insert into t_grouplinker(groupid,name,telephone,job,sex,email)values('091135005490001','��С��','136548987575','���¾���','0','kppp@163.com');
insert into t_grouplinker(groupid,name,telephone,job,sex,email)values('091146001440001','��С��','136500255456','���¾���','1','jiuiu456s@163.com');
insert into t_grouplinker(groupid,name,telephone,job,sex,email)values('090435001350001','������','136549965858','���¾���','0','x55rsb@163.com');

insert into t_grouplinker(groupid,name,telephone,job,sex,email)values('091135002480001','������','136511105575','���¾���','0','sfss@163.com');
insert into t_grouplinker(groupid,name,telephone,job,sex,email)values('091135001390001','̷����','13669895456','���¾���','1','jiu8956s@163.com');
insert into t_grouplinker(groupid,name,telephone,job,sex,email)values('091135001440001','��С��','136548956565','���¾���','0','xdlrhh@163.com');

insert into t_grouplinker(groupid,name,telephone,job,sex,email)values('091135001450002','������','13654895575','���¾���','0','kkxs@163.com');
insert into t_grouplinker(groupid,name,telephone,job,sex,email)values('091135001450001','��С��','13654856256','���¾���','1','jiuj456s@163.com');



create table t_grouplog(--���Ų�����־��
	logid number primary key,--��־ID
        groupid varchar2(20),
        operationer varchar2(15),--������
	opentime Date,--����ʱ��
	opens varchar2(30)--��������
);
create sequence seq_glog increment by 1 start with 1 nomaxvalue minvalue 1;
insert into t_grouplog (LOGID, GROUPID, OPERATIONER, OPENTIME, OPENS)
values (seq_glog.nextval, '091135001450001', 'admin', to_date('10-11-2009 01:15:47', 'dd-mm-yyyy hh24:mi:ss'), '0');

insert into t_grouplog (LOGID, GROUPID, OPERATIONER, OPENTIME, OPENS)
values (seq_glog.nextval, '091135001380001', 'manager1', to_date('8-11-2009 01:16:53', 'dd-mm-yyyy hh24:mi:ss'), '1');

insert into t_grouplog (LOGID, GROUPID, OPERATIONER, OPENTIME, OPENS)
values (seq_glog.nextval, '091135001450002', 'admin', to_date('10-9-2009 01:15:47', 'dd-mm-yyyy hh24:mi:ss'), '0');

insert into t_grouplog (LOGID, GROUPID, OPERATIONER, OPENTIME, OPENS)
values (seq_glog.nextval, '091135002480002', 'manager2', to_date('25-8-2009 01:16:53', 'dd-mm-yyyy hh24:mi:ss'), '1');

insert into t_grouplog (LOGID, GROUPID, OPERATIONER, OPENTIME, OPENS)
values (seq_glog.nextval, '091135001440001', 'manager3', to_date('26-4-2009 01:15:47', 'dd-mm-yyyy hh24:mi:ss'), '0');

insert into t_grouplog (LOGID, GROUPID, OPERATIONER, OPENTIME, OPENS)
values (seq_glog.nextval, '091135001150003', 'manager1', to_date('10-10-2009 01:16:53', 'dd-mm-yyyy hh24:mi:ss'), '1');

insert into t_grouplog (LOGID, GROUPID, OPERATIONER, OPENTIME, OPENS)
values (seq_glog.nextval, '090435001390003', 'manager2', to_date('5-11-2009 01:15:47', 'dd-mm-yyyy hh24:mi:ss'), '2');

insert into t_grouplog (LOGID, GROUPID, OPERATIONER, OPENTIME, OPENS)
values (seq_glog.nextval, '090435001350001', 'manager3', to_date('10-4-2009 01:16:53', 'dd-mm-yyyy hh24:mi:ss'), '1');

insert into t_grouplog (LOGID, GROUPID, OPERATIONER, OPENTIME, OPENS)
values (seq_glog.nextval, '091146001440001', 'admin', to_date('10-8-2009 01:15:47', 'dd-mm-yyyy hh24:mi:ss'), '0');

insert into t_grouplog (LOGID, GROUPID, OPERATIONER, OPENTIME, OPENS)
values (seq_glog.nextval, '091135001390001', 'admin', to_date('10-11-2009 01:16:53', 'dd-mm-yyyy hh24:mi:ss'), '2');

/*==============================================================*/
/* Table: " t_oldgroupmess "      ������Ϣ��ʷ��                    */
/*==============================================================*/
create table t_oldgroupmess(--������Ϣ��ʷ��
        hisid number primary key,
	groupid varchar2(20) ,--���ű�š�
	 groupname varchar2(15),--�������ơ�
	 vocation varchar2(30),--������ҵ��
	 grouplevel varchar2(15),--��ҵ����
         army varchar2(5),--�Ƿ�����,�� 1,���� 0
         privince varchar2(15),--ʡ
	 city varchar2(15),--��
          area varchar2(15),--����
         address varchar2(40),--��ַ
         post varchar2(10),--�ʱ�
         useman varchar2(15),--����
         web varchar2(25),--��ַ
         openmon varchar2(15),--ע���ʽ�
         moneytype varchar2(15),--����״��
         sendtype varchar2(15),--��Ӫ״��
         empcount varchar2(15),--Ա������
         grouptype varchar2(15),--��ҵ����
         manager varchar2(15),--�ͻ�����
	 state varchar2(15),--����״̬
	worktype varchar2(30),--��������
	worktime Date,--����ʱ��
	worker varchar2(15)--����Ա
);
create sequence seq_his increment by 1 start with 1 nomaxvalue minvalue 1;
insert into t_oldgroupmess (HISID, GROUPID, GROUPNAME, VOCATION, GROUPLEVEL, ARMY, PRIVINCE, CITY, AREA, ADDRESS, POST, USEMAN, WEB, OPENMON, MONEYTYPE, SENDTYPE, EMPCOUNT, GROUPTYPE, MANAGER, STATE, WORKTYPE, WORKTIME, WORKER)
values (seq_his.nextval, '091146001440001', '�ൺơ��', '��ҵ/����/����/ó��', 'δ�ּ�', '0', '����ʡ', '������', '2196', '����ʡ������', '658854', '�ƶ�','www.qd.com','5000000','98','98','5000','103', 'manager1', '0','1' ,to_date('10-11-2009 01:24:08', 'dd-mm-yyyy hh24:mi:ss'), 'admin');

insert into t_oldgroupmess (HISID, GROUPID, GROUPNAME, VOCATION, GROUPLEVEL, ARMY, PRIVINCE, CITY, AREA, ADDRESS, POST, USEMAN, WEB, OPENMON, MONEYTYPE, SENDTYPE, EMPCOUNT, GROUPTYPE, MANAGER, STATE, WORKTYPE, WORKTIME, WORKER)
values (seq_his.nextval, '090435001350001', 'ʡ����', '����', '���Ǽ�', '1', '����ʡ', '������', '1145', '����ʡ�����й�¥��ʡ����', '350015', '����', '', '5000000', '98', '98', '5000', '102', 'manager2', '2', '1', to_date('10-11-2009 02:12:16','dd-mm-yyyy hh24:mi:ss'), 'admin');

insert into t_oldgroupmess (HISID, GROUPID, GROUPNAME, VOCATION, GROUPLEVEL, ARMY, PRIVINCE, CITY, AREA, ADDRESS, POST, USEMAN, WEB, OPENMON, MONEYTYPE, SENDTYPE, EMPCOUNT, GROUPTYPE, MANAGER, STATE, WORKTYPE, WORKTIME, WORKER)
values (seq_his.nextval, '091135005490001', '��ͼ����', '��ҵ/����/����/ó��', '���Ǽ�', '0', '����ʡ', 'Ȫ����', '1194', '����ʡȪ����', '350123', '����¡','www.htsb.com','2500000','98','98','5000','103', 'manager1', '2', '0', to_date('10-11-2009 02:32:44', 'dd-mm-yyyy hh24:mi:ss'), 'admin');

insert into t_oldgroupmess (HISID, GROUPID, GROUPNAME, VOCATION, GROUPLEVEL, ARMY, PRIVINCE, CITY, AREA, ADDRESS, POST, USEMAN, WEB, OPENMON, MONEYTYPE, SENDTYPE, EMPCOUNT, GROUPTYPE, MANAGER, STATE, WORKTYPE, WORKTIME, WORKER)
values (seq_his.nextval, '090435001390003', '�´�½', '����', '���Ǽ�', '0', '����ʡ', '������', '1148', '����ʡ��������β���彭��·1��', '350015', '����','www.newland.com','5000000','98','98','5000','103', 'manager2', '2','1', to_date('10-11-2009 02:36:31', 'dd-mm-yyyy hh24:mi:ss'), 'admin');

insert into t_oldgroupmess (HISID, GROUPID, GROUPNAME, VOCATION, GROUPLEVEL, ARMY, PRIVINCE, CITY, AREA, ADDRESS, POST, USEMAN, WEB, OPENMON, MONEYTYPE, SENDTYPE, EMPCOUNT, GROUPTYPE, MANAGER, STATE, WORKTYPE, WORKTIME, WORKER)
values (seq_his.nextval, '091135001440001', '���Ӽ���', '��ҵ/����/����/ó��', 'δ�ּ�', '0', '����ʡ', '������', '1149', 
'�����н�����45��', '350011', '����ƽ','www.yy.com','5000000','98','98','5000','103', 'δ����', '0', '0', to_date('10-11-2009 02:39:00', 'dd-mm-yyyy hh24:mi:ss'), 'admin');


--2.���ֲ����                                                                                                                                                                                                                                                  
create table club_activity(                                                                                                                                                                                                                                     
act_id number primary key,                                                                                                                                                                                                                                                              
act_time date,   			--ʱ��                                                                                                                                                                                                                                                            
act_addr varchar2(150),		        --�ص�                                                                                                                                                                                                                                                
act_content varchar2(150),		--����                                                                                                                                                                                                                                                    
organizer varchar2(20),	                --��֯��                                                                                                                                                                                                                                        
intend_count number,	               --Ԥ�Ʋμӻ����                                                                                                                                                                                                                                 
fact_count number,			--ʵ�ʲμ�����                                                                                                                                                                                                                                                  
budg_Fees  number,	              --Ԥ���ܷ���                                                                                                                                                                                                                                          
fact_Fees  number,			--ʵ���ܷ���,�����ܷ�����ʾ                                                                                                                                                                                                                                     
ischeck	varchar2(5)			--���״̬ 0δ���--1���ͨ��--2��˲�ͨ��                                                                                                                                                                                                                      
);                                                                                                                                                                                                                                                                
create sequence seq_act increment by 1 start with 1 nomaxvalue minvalue 1;                                                                                                                                                                                        
insert into club_activity(act_id,act_time,act_addr,act_content,organizer,intend_count,fact_count,budg_Fees,fact_Fees,ischeck)values(seq_act.nextval,to_date('01-10-2006', 'dd-mm-yyyy'),'���ݴ�ѧ','��ף��ѧ��������','manager1',10,12,1300,1450,'0');        
insert into club_activity(act_id,act_time,act_addr,act_content,organizer,intend_count,fact_count,budg_Fees,fact_Fees,ischeck)values(seq_act.nextval,to_date('25-08-2007', 'dd-mm-yyyy'),'����ͨӪҵ��','�����죬�����','manager2',2000,3000,18800,21000,'1');  
insert into club_activity(act_id,act_time,act_addr,act_content,organizer,intend_count,fact_count,budg_Fees,fact_Fees,ischeck)values(seq_act.nextval,to_date('01-10-2009', 'dd-mm-yyyy'),'����ѧԺ','У�죬������','manager1',56,49,2200,2525,'0');            


create table t_Fees(--4.������ϸ��                                                                                    
  Fees_id number primary key, --��ϸ���                                                                              
  act_id number,             --�����                                                                             
  Fees_name VARCHAR2(50),   --��������                                                                                
  budg_Fee  number,        --Ԥ�����                                                                                 
  fact_Fee  number         --ʵ�ʷ���                                                                                 
);                                                                                                                    
create sequence seq_acfee increment by 1 start with 1 nomaxvalue minvalue  1;                                         
insert into t_Fees(Fees_id,act_id,Fees_name,budg_Fee,fact_Fee)values(seq_acfee.nextval,1,'����ɡ',500,500);           
insert into t_Fees(Fees_id,act_id,Fees_name,budg_Fee,fact_Fee)values(seq_acfee.nextval,1,'ˮ��',500,560);             
insert into t_Fees(Fees_id,act_id,Fees_name,budg_Fee,fact_Fee)values(seq_acfee.nextval,1,'����ˮ���ʳ��',300,400);   
insert into t_Fees(Fees_id,act_id,Fees_name,budg_Fee,fact_Fee)values(seq_acfee.nextval,2,'����ɡ',700,1000);          
insert into t_Fees(Fees_id,act_id,Fees_name,budg_Fee,fact_Fee)values(seq_acfee.nextval,2,'��Ʒ',15600,17000);         
insert into t_Fees(Fees_id,act_id,Fees_name,budg_Fee,fact_Fee)values(seq_acfee.nextval,2,'����ˮ',2500,3000);         
insert into t_Fees(Fees_id,act_id,Fees_name,budg_Fee,fact_Fee)values(seq_acfee.nextval,3,'����ɡ',700,700);           
insert into t_Fees(Fees_id,act_id,Fees_name,budg_Fee,fact_Fee)values(seq_acfee.nextval,3,'��Ʒ',800,825);             
insert into t_Fees(Fees_id,act_id,Fees_name,budg_Fee,fact_Fee)values(seq_acfee.nextval,3,'����ˮ���ʳ��',700,1000);  



----3.�����̼һ������Ϲ����                                                                                                                                                                                                                                                                                                                                   
create table union_Binfo(                                                                                                                                                                                                                                   unionb_id number primary key,              --�̼�ID                                                                                                                                                                                                                                                                                                            
unionb_type varchar2(20),    --�����������                                                                                                                                                                                                                                                                                                                    
v_level varchar2(20),       --����                                                                                                                                                                                                                                                                                                                             
full_name varchar2(50),        --ȫ��                                                                                                                                                                                                                                                                                                                          
Short_name varchar2(20),       --���                                                                                                                                                                                                                                                                                                                          
property varchar2(20),          --����                                                                                                                                                                                                                                                                                                                         
unionb_addr varchar2(200),       --��ַ                                                                                                                                                                                                                                                                                                                        
workstatus varchar2(20),   --��Ӫ״��                                                                                                                                                                                                                                                                                                                          
corporation  varchar2(20),       --����                                                                                                                                                                                                                                                                                                                        
cor_sex        varchar2(3),--�Ա�                                                                                                                                                                                                                                                                                                                              
cor_jobs         varchar2(20),  --ְλ                                                                                                                                                                                                                                                                                                                         
tel  varchar2(15),        --��ϵ��ʽ                                                                                                                                                                                                                                                                                                                           
emp_count number,	      --Ա������                                                                                                                                                                                                                                                                                                                             
regmoney number,             --ע���ʽ�                                                                                                                                                                                                                                                                                                                        
linkman  varchar2(15),       --��ϵ��                                                                                                                                                                                                                                                                                                                          
islogout varchar2(5) default 1,--�Ƿ�ע��                                                                                                                                                                                                                                                                                                                      
ischeck	varchar2(5) default 0              --0δ���--1���ͨ��--2��˲�ͨ��                                                                                                                                                                                                                                                                                   
);                                                                                                                                                                                                                                                                                                                                                             
create sequence seq_store increment by 1 start with 1 nomaxvalue minvalue 1;                                                                                                                                                                                                                                                                                   
insert into union_Binfo(unionb_id,unionb_type,v_level,full_name,Short_name,property,unionb_addr,workstatus,corporation,cor_sex,cor_jobs,tel,emp_count,regmoney,linkman,islogout,ischeck)values(seq_store.nextval,'���ں���','���Ǽ�','������ý','����','˽Ӫ��ҵ','�����й�¥����ɽ·','����','wang','0','�ܲ�','13658745987',800,500000,'miss zhang','1','0');            
                                                                                                                                                                                                                                                                                                                                                               
insert into union_Binfo(unionb_id,unionb_type,v_level,full_name,Short_name,property,unionb_addr,workstatus,corporation,cor_sex,cor_jobs,tel,emp_count,regmoney,linkman,islogout,ischeck)values(seq_store.nextval,'���ں���','���Ǽ�','ŦԼ,ŦԼ','ŦԼ','˽Ӫ��ҵ','�����й�¥���Ͻ�','����','֣����','0','����','13569875563',300,600000,'miss li','1','0');         
                                                                                                                                                                                                                                                                                                                                                               
--�����̼Ҽ�����־��                                                                                                                                                                                                                                                                                                                                           
create table union_slog (                                                                                                                                                                                                                                                                                                                                      
  logid number primary key,                                                                                                                                                                                                                                                                                                                                    
  unionb_id number,                                                                                                                                                                                                                                                                                                                                            
  full_name varchar2(50),                                                                                                                                                                                                                                                                                                                                      
  ulevel varchar2(15),                                                                                                                                                                                                                                                                                                                                         
  worker varchar2(15),                                                                                                                                                                                                                                                                                                                                         
  worktime Date                                                                                                                                                                                                                                                                                                                                                
);                                                                                                                                                                                                                                                                                                                                                             
create sequence seq_slog increment by 1 start with 1 nomaxvalue minvalue 1;                                                                                                                                                                                                                                                                                    
insert into union_slog (LOGID, UNIONB_ID, FULL_NAME, ULEVEL, WORKER, WORKTIME)                                                                                                  
values (seq_slog.nextval, 1, '������ý', '���Ǽ�', 'admin', to_date('01-11-2008', 'dd-mm-yyyy'));                                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                                                                                                               
insert into union_slog (LOGID, UNIONB_ID, FULL_NAME, ULEVEL, WORKER, WORKTIME)                                                                                                  
values (seq_slog.nextval, 2, 'ŦԼ,ŦԼ', '���Ǽ�', 'admin', to_date('01-08-2009', 'dd-mm-yyyy'));                                                                                                                                                                                                                                                             
                                                                                                                                                                                                                                                                                                                 
                                                                                                                                                                                                                                                                                                                 
                                                                                                                                                                                                                                                                                                                 
                                                                                                                                                                                                                                                                                                                 
                                                                                                                                                                                                                                                                                                                 
                                                                                                                                                                                                                                                                                                                 
                                                                                                                                                                                                                                                                                                                 
                                                                                                                                                                                                                                                                                                                 
                                                                                                                                                                                                                                                                                                                                                               