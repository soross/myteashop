/*==============================================================*/
/* Table: "groups "      集团表                     */
/*==============================================================*/
create table groups(--集团表
	 groupid varchar2(20) primary key,--集团编号、
	 groupname varchar2(50),--集团名称、
	 vocation varchar2(30),--所属行业、
	 grouplevel varchar2(15),--企业级别、
         army varchar2(5),--是否党政军,是 1,不是 0
         privince varchar2(15),--省
	     city varchar2(15),--市
         area varchar2(15),--地区
         address varchar2(40),--地址
         post varchar2(10),--邮编
         useman varchar2(15),--法人
         web varchar2(25),--网址
         openmon varchar2(15),--注册资金
         moneytype varchar2(15),--财务状况
         sendtype varchar2(15),--运营状况
         empcount varchar2(15),--员工人数
         grouptype varchar2(15),--企业性质
         manager varchar2(15),--客户经理、
	 state varchar2(15)--集团状态 0 代表非潜在集团，1代表潜在集团，2正式集团，3审核废弃集团4注销集团
);
insert into groups (GROUPID, GROUPNAME, VOCATION, GROUPLEVEL, ARMY, PRIVINCE, CITY, AREA, ADDRESS, POST,useman,web,openmon,moneytype,sendtype,empcount,grouptype, MANAGER, STATE)
values ('091135001450001', '娃哈哈', '生产/制造/加工', '未分级', '0', '福建省', '福州市', '1146', '福州市台江区江三路123号', '350012', '刘国兴','www.whh.com','5000000','98','98','5000','103','manager2', '1');

insert into groups (GROUPID, GROUPNAME, VOCATION, GROUPLEVEL, ARMY, PRIVINCE, CITY, AREA, ADDRESS, POST,useman,web,openmon,moneytype,sendtype,empcount,grouptype, MANAGER, STATE)
values ('091135001380001', '香格里拉大酒店', '旅游/宾馆/酒店/餐饮', '未分级', '0', '福建省', '福州市', '1145', '福州市鼓楼区新权路25号', '350013', '高明','','450000','98','97','4000','103','未分配', '1');

insert into groups (GROUPID, GROUPNAME, VOCATION, GROUPLEVEL, ARMY, PRIVINCE, CITY, AREA, ADDRESS, POST,useman,web,openmon,moneytype,sendtype,empcount,grouptype, MANAGER, STATE)
values ('091135001450002', '马尾船政', '生产/制造/加工', '三星级', '1', '福建省', '福州市', '1148', '福州市马尾区罗星路256号', '350015', '陈进才','www.mwcz.com','800000','98','98','800','102', 'manager2', '1');

insert into groups (GROUPID, GROUPNAME, VOCATION, GROUPLEVEL, ARMY, PRIVINCE, CITY, AREA, ADDRESS, POST,useman,web,openmon,moneytype,sendtype,empcount,grouptype, MANAGER, STATE)
values ('091135002470002', '可口可乐(厦门分公司)', '供水/水利', '未分级', '0', '福建省', '厦门市', '1162', '厦门市集美区115号', '650015', '何伯顺','www.cool.com','1000000','98','98','3800','103', '未分配', '0');

insert into groups (GROUPID, GROUPNAME, VOCATION, GROUPLEVEL, ARMY, PRIVINCE, CITY, AREA, ADDRESS, POST,useman,web,openmon,moneytype,sendtype,empcount,grouptype, MANAGER, STATE)
values ('091135001470003', '可口可乐(福州分公司)', '供水/水利', '未分级', '0', '福建省', '福州市', '1145', '福州市鼓楼区', '350011', '刘力扬','www.cool.com','12000000','98','98','4000','103', '未分配', '0');

insert into groups (GROUPID, GROUPNAME, VOCATION, GROUPLEVEL, ARMY, PRIVINCE, CITY, AREA, ADDRESS, POST,useman,web,openmon,moneytype,sendtype,empcount,grouptype, MANAGER, STATE)
values ('091135001440001', '永延集团', '商业/批发/零售/贸易', '未分级', '0', '福建省', '福州市', '1149', '福州市晋安区45号', '350011', '黄章平','www.yy.com','5000000','98','98','5000','103', '未分配', '0');

insert into groups (GROUPID, GROUPNAME, VOCATION, GROUPLEVEL, ARMY, PRIVINCE, CITY, AREA, ADDRESS, POST,useman,web,openmon,moneytype,sendtype,empcount,grouptype, MANAGER, STATE)
values ('091135001390001', 'LG', 'IT/通信', '未分级', '0', '福建省', '福州市', '1148', '福州市马尾区儒江58号', '350015', '许林','www.lg.com','360000','98','98','5000','103', '未分配', '1');

insert into groups (GROUPID, GROUPNAME, VOCATION, GROUPLEVEL, ARMY, PRIVINCE, CITY, AREA, ADDRESS, POST,useman,web,openmon,moneytype,sendtype,empcount,grouptype, MANAGER, STATE)
values ('091135002480001', '德克士(集美点)', '交通', '未分级', '0', '福建省', '厦门市', '1162', '厦门市集美区', '659545',  
'潘龙','www.dks.com','1000000','98','98','1500','103','未分配', '0');

insert into groups (GROUPID, GROUPNAME, VOCATION, GROUPLEVEL, ARMY, PRIVINCE, CITY, AREA, ADDRESS, POST,useman,web,openmon,moneytype,sendtype,empcount,grouptype, MANAGER, STATE)
values ('090435001450001', '统一企业', '生产/制造/加工', '三星级', '0', '福建省', '福州市', '1146', '福建省福州市台江区中亭街112号', '350012', '李云','www.tyi.com','5000000','98','98','5000','103', 'manager1', '1');

insert into groups (GROUPID, GROUPNAME, VOCATION, GROUPLEVEL, ARMY, PRIVINCE, CITY, AREA, ADDRESS, POST,useman,web,openmon,moneytype,sendtype,empcount,grouptype, MANAGER, STATE)
values ('090435001450002', '康师傅', '生产/制造/加工', '三星级', '0', '福建省', '福州市', '1145', '福建省福州市鼓楼区东街口15号', '350011', '谈欣','www.ksf.com','3000000','98','98','3500','103', 'manager1', '1');

insert into groups (GROUPID, GROUPNAME, VOCATION, GROUPLEVEL, ARMY, PRIVINCE, CITY, AREA, ADDRESS, POST,useman,web,openmon,moneytype,sendtype,empcount,grouptype, MANAGER, STATE)
values ('090435001390003', '新大陆', '其他', '三星级', '0', '福建省', '福州市', '1148', '福建省福州市马尾区儒江西路1号', '350015', '辛琳','www.newland.com','5000000','98','98','5000','103', 'manager2', '2');

insert into groups (GROUPID, GROUPNAME, VOCATION, GROUPLEVEL, ARMY, PRIVINCE, CITY, AREA, ADDRESS, POST,useman,web,openmon,moneytype,sendtype,empcount,grouptype, MANAGER, STATE)
values ('090435001350001', '省军区', '其他', '四星级', '1', '福建省', '福州市', '1145', '福建省福州市鼓楼区省军区', '350015',  '陈明','','5000000','98','98','5000','102','manager2', '2');

insert into groups (GROUPID, GROUPNAME, VOCATION, GROUPLEVEL, ARMY, PRIVINCE, CITY, AREA, ADDRESS, POST,useman,web,openmon,moneytype,sendtype,empcount,grouptype, MANAGER, STATE)
values ('091146001440001', '青岛啤酒', '商业/批发/零售/贸易', '未分级', '0', '海南省', '海口市', '2196', '海南省海口市', '658854', '黄朵','www.qd.com','5000000','98','98','5000','103', 'manager1', '0');

insert into groups (GROUPID, GROUPNAME, VOCATION, GROUPLEVEL, ARMY, PRIVINCE, CITY, AREA, ADDRESS, POST,useman,web,openmon,moneytype,sendtype,empcount,grouptype, MANAGER, STATE)
values ('091135005490001', '宏图三胞', '商业/批发/零售/贸易', '二星级', '0', '福建省', '泉州市', '1194', '福建省泉州市', '350123', '顾兴隆','www.htsb.com','2500000','98','98','5000','103', 'manager1', '2');
/*==============================================================*/
/* Table: "grouplinker "      集团联系人表                    */
/*==============================================================*/
create table t_grouplinker(--集团联系人表
	groupid varchar2(20) primary key,
	name varchar2(15),--姓名
	telephone varchar2(15),--联系电话，
	job varchar2(15),--职位，
	sex varchar2(5),--性别，
	email varchar2(20)--电子信箱
);

insert into t_grouplinker(groupid,name,telephone,job,sex,email)values('090435001450001','陈先生','13654895575','人事经理','0','kkxs@163.com');
insert into t_grouplinker(groupid,name,telephone,job,sex,email)values('090435001450002','方小姐','13654856256','人事经理','1','jiuj456s@163.com');
insert into t_grouplinker(groupid,name,telephone,job,sex,email)values('090435001390003','张先生','13654895858','人事经理','0','xdlrsb@163.com');

insert into t_grouplinker(groupid,name,telephone,job,sex,email)values('091135005490001','顾小姐','136548987575','人事经理','0','kppp@163.com');
insert into t_grouplinker(groupid,name,telephone,job,sex,email)values('091146001440001','方小姐','136500255456','人事经理','1','jiuiu456s@163.com');
insert into t_grouplinker(groupid,name,telephone,job,sex,email)values('090435001350001','刘先生','136549965858','人事经理','0','x55rsb@163.com');

insert into t_grouplinker(groupid,name,telephone,job,sex,email)values('091135002480001','陈先生','136511105575','人事经理','0','sfss@163.com');
insert into t_grouplinker(groupid,name,telephone,job,sex,email)values('091135001390001','谭先生','13669895456','人事经理','1','jiu8956s@163.com');
insert into t_grouplinker(groupid,name,telephone,job,sex,email)values('091135001440001','张小姐','136548956565','人事经理','0','xdlrhh@163.com');

insert into t_grouplinker(groupid,name,telephone,job,sex,email)values('091135001450002','张先生','13654895575','人事经理','0','kkxs@163.com');
insert into t_grouplinker(groupid,name,telephone,job,sex,email)values('091135001450001','邢小姐','13654856256','人事经理','1','jiuj456s@163.com');



create table t_grouplog(--集团操作日志表
	logid number primary key,--日志ID
        groupid varchar2(20),
        operationer varchar2(15),--操作人
	opentime Date,--操作时间
	opens varchar2(30)--操作类型
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
/* Table: " t_oldgroupmess "      集团信息历史表                    */
/*==============================================================*/
create table t_oldgroupmess(--集团信息历史表
        hisid number primary key,
	groupid varchar2(20) ,--集团编号、
	 groupname varchar2(15),--集团名称、
	 vocation varchar2(30),--所属行业、
	 grouplevel varchar2(15),--企业级别
         army varchar2(5),--是否党政军,是 1,不是 0
         privince varchar2(15),--省
	 city varchar2(15),--市
          area varchar2(15),--地区
         address varchar2(40),--地址
         post varchar2(10),--邮编
         useman varchar2(15),--法人
         web varchar2(25),--网址
         openmon varchar2(15),--注册资金
         moneytype varchar2(15),--财务状况
         sendtype varchar2(15),--运营状况
         empcount varchar2(15),--员工人数
         grouptype varchar2(15),--企业性质
         manager varchar2(15),--客户经理、
	 state varchar2(15),--集团状态
	worktype varchar2(30),--操作类型
	worktime Date,--操作时间
	worker varchar2(15)--操作员
);
create sequence seq_his increment by 1 start with 1 nomaxvalue minvalue 1;
insert into t_oldgroupmess (HISID, GROUPID, GROUPNAME, VOCATION, GROUPLEVEL, ARMY, PRIVINCE, CITY, AREA, ADDRESS, POST, USEMAN, WEB, OPENMON, MONEYTYPE, SENDTYPE, EMPCOUNT, GROUPTYPE, MANAGER, STATE, WORKTYPE, WORKTIME, WORKER)
values (seq_his.nextval, '091146001440001', '青岛啤酒', '商业/批发/零售/贸易', '未分级', '0', '海南省', '海口市', '2196', '海南省海口市', '658854', '黄朵','www.qd.com','5000000','98','98','5000','103', 'manager1', '0','1' ,to_date('10-11-2009 01:24:08', 'dd-mm-yyyy hh24:mi:ss'), 'admin');

insert into t_oldgroupmess (HISID, GROUPID, GROUPNAME, VOCATION, GROUPLEVEL, ARMY, PRIVINCE, CITY, AREA, ADDRESS, POST, USEMAN, WEB, OPENMON, MONEYTYPE, SENDTYPE, EMPCOUNT, GROUPTYPE, MANAGER, STATE, WORKTYPE, WORKTIME, WORKER)
values (seq_his.nextval, '090435001350001', '省军区', '军队', '四星级', '1', '福建省', '福州市', '1145', '福建省福州市鼓楼区省军区', '350015', '陈明', '', '5000000', '98', '98', '5000', '102', 'manager2', '2', '1', to_date('10-11-2009 02:12:16','dd-mm-yyyy hh24:mi:ss'), 'admin');

insert into t_oldgroupmess (HISID, GROUPID, GROUPNAME, VOCATION, GROUPLEVEL, ARMY, PRIVINCE, CITY, AREA, ADDRESS, POST, USEMAN, WEB, OPENMON, MONEYTYPE, SENDTYPE, EMPCOUNT, GROUPTYPE, MANAGER, STATE, WORKTYPE, WORKTIME, WORKER)
values (seq_his.nextval, '091135005490001', '宏图三胞', '商业/批发/零售/贸易', '二星级', '0', '福建省', '泉州市', '1194', '福建省泉州市', '350123', '顾兴隆','www.htsb.com','2500000','98','98','5000','103', 'manager1', '2', '0', to_date('10-11-2009 02:32:44', 'dd-mm-yyyy hh24:mi:ss'), 'admin');

insert into t_oldgroupmess (HISID, GROUPID, GROUPNAME, VOCATION, GROUPLEVEL, ARMY, PRIVINCE, CITY, AREA, ADDRESS, POST, USEMAN, WEB, OPENMON, MONEYTYPE, SENDTYPE, EMPCOUNT, GROUPTYPE, MANAGER, STATE, WORKTYPE, WORKTIME, WORKER)
values (seq_his.nextval, '090435001390003', '新大陆', '其他', '三星级', '0', '福建省', '福州市', '1148', '福建省福州市马尾区儒江西路1号', '350015', '辛琳','www.newland.com','5000000','98','98','5000','103', 'manager2', '2','1', to_date('10-11-2009 02:36:31', 'dd-mm-yyyy hh24:mi:ss'), 'admin');

insert into t_oldgroupmess (HISID, GROUPID, GROUPNAME, VOCATION, GROUPLEVEL, ARMY, PRIVINCE, CITY, AREA, ADDRESS, POST, USEMAN, WEB, OPENMON, MONEYTYPE, SENDTYPE, EMPCOUNT, GROUPTYPE, MANAGER, STATE, WORKTYPE, WORKTIME, WORKER)
values (seq_his.nextval, '091135001440001', '永延集团', '商业/批发/零售/贸易', '未分级', '0', '福建省', '福州市', '1149', 
'福州市晋安区45号', '350011', '黄章平','www.yy.com','5000000','98','98','5000','103', '未分配', '0', '0', to_date('10-11-2009 02:39:00', 'dd-mm-yyyy hh24:mi:ss'), 'admin');


--2.俱乐部活动表                                                                                                                                                                                                                                                  
create table club_activity(                                                                                                                                                                                                                                     
act_id number primary key,                                                                                                                                                                                                                                                              
act_time date,   			--时间                                                                                                                                                                                                                                                            
act_addr varchar2(150),		        --地点                                                                                                                                                                                                                                                
act_content varchar2(150),		--内容                                                                                                                                                                                                                                                    
organizer varchar2(20),	                --组织者                                                                                                                                                                                                                                        
intend_count number,	               --预计参加活动人数                                                                                                                                                                                                                                 
fact_count number,			--实际参加人数                                                                                                                                                                                                                                                  
budg_Fees  number,	              --预算总费用                                                                                                                                                                                                                                          
fact_Fees  number,			--实际总费用,费用能分项显示                                                                                                                                                                                                                                     
ischeck	varchar2(5)			--审核状态 0未审核--1审核通过--2审核不通过                                                                                                                                                                                                                      
);                                                                                                                                                                                                                                                                
create sequence seq_act increment by 1 start with 1 nomaxvalue minvalue 1;                                                                                                                                                                                        
insert into club_activity(act_id,act_time,act_addr,act_content,organizer,intend_count,fact_count,budg_Fees,fact_Fees,ischeck)values(seq_act.nextval,to_date('01-10-2006', 'dd-mm-yyyy'),'福州大学','庆祝开学，买卡送礼。','manager1',10,12,1300,1450,'0');        
insert into club_activity(act_id,act_time,act_addr,act_content,organizer,intend_count,fact_count,budg_Fees,fact_Fees,ischeck)values(seq_act.nextval,to_date('25-08-2007', 'dd-mm-yyyy'),'各联通营业厅','周年庆，促销活动','manager2',2000,3000,18800,21000,'1');  
insert into club_activity(act_id,act_time,act_addr,act_content,organizer,intend_count,fact_count,budg_Fees,fact_Fees,ischeck)values(seq_act.nextval,to_date('01-10-2009', 'dd-mm-yyyy'),'闽江学院','校庆，买卡送礼。','manager1',56,49,2200,2525,'0');            


create table t_Fees(--4.费用明细表                                                                                    
  Fees_id number primary key, --明细编号                                                                              
  act_id number,             --活动表编号                                                                             
  Fees_name VARCHAR2(50),   --消费名称                                                                                
  budg_Fee  number,        --预算费用                                                                                 
  fact_Fee  number         --实际费用                                                                                 
);                                                                                                                    
create sequence seq_acfee increment by 1 start with 1 nomaxvalue minvalue  1;                                         
insert into t_Fees(Fees_id,act_id,Fees_name,budg_Fee,fact_Fee)values(seq_acfee.nextval,1,'避阳伞',500,500);           
insert into t_Fees(Fees_id,act_id,Fees_name,budg_Fee,fact_Fee)values(seq_acfee.nextval,1,'水壶',500,560);             
insert into t_Fees(Fees_id,act_id,Fees_name,budg_Fee,fact_Fee)values(seq_acfee.nextval,1,'饮用水兼伙食费',300,400);   
insert into t_Fees(Fees_id,act_id,Fees_name,budg_Fee,fact_Fee)values(seq_acfee.nextval,2,'避阳伞',700,1000);          
insert into t_Fees(Fees_id,act_id,Fees_name,budg_Fee,fact_Fee)values(seq_acfee.nextval,2,'礼品',15600,17000);         
insert into t_Fees(Fees_id,act_id,Fees_name,budg_Fee,fact_Fee)values(seq_acfee.nextval,2,'饮用水',2500,3000);         
insert into t_Fees(Fees_id,act_id,Fees_name,budg_Fee,fact_Fee)values(seq_acfee.nextval,3,'避阳伞',700,700);           
insert into t_Fees(Fees_id,act_id,Fees_name,budg_Fee,fact_Fee)values(seq_acfee.nextval,3,'礼品',800,825);             
insert into t_Fees(Fees_id,act_id,Fees_name,budg_Fee,fact_Fee)values(seq_acfee.nextval,3,'饮用水兼伙食费',700,1000);  



----3.联盟商家基本资料管理表                                                                                                                                                                                                                                                                                                                                   
create table union_Binfo(                                                                                                                                                                                                                                   unionb_id number primary key,              --商家ID                                                                                                                                                                                                                                                                                                            
unionb_type varchar2(20),    --合作伙伴类型                                                                                                                                                                                                                                                                                                                    
v_level varchar2(20),       --级别                                                                                                                                                                                                                                                                                                                             
full_name varchar2(50),        --全称                                                                                                                                                                                                                                                                                                                          
Short_name varchar2(20),       --简称                                                                                                                                                                                                                                                                                                                          
property varchar2(20),          --性质                                                                                                                                                                                                                                                                                                                         
unionb_addr varchar2(200),       --地址                                                                                                                                                                                                                                                                                                                        
workstatus varchar2(20),   --经营状况                                                                                                                                                                                                                                                                                                                          
corporation  varchar2(20),       --法人                                                                                                                                                                                                                                                                                                                        
cor_sex        varchar2(3),--性别                                                                                                                                                                                                                                                                                                                              
cor_jobs         varchar2(20),  --职位                                                                                                                                                                                                                                                                                                                         
tel  varchar2(15),        --联系方式                                                                                                                                                                                                                                                                                                                           
emp_count number,	      --员工数量                                                                                                                                                                                                                                                                                                                             
regmoney number,             --注册资金                                                                                                                                                                                                                                                                                                                        
linkman  varchar2(15),       --联系人                                                                                                                                                                                                                                                                                                                          
islogout varchar2(5) default 1,--是否注销                                                                                                                                                                                                                                                                                                                      
ischeck	varchar2(5) default 0              --0未审核--1审核通过--2审核不通过                                                                                                                                                                                                                                                                                   
);                                                                                                                                                                                                                                                                                                                                                             
create sequence seq_store increment by 1 start with 1 nomaxvalue minvalue 1;                                                                                                                                                                                                                                                                                   
insert into union_Binfo(unionb_id,unionb_type,v_level,full_name,Short_name,property,unionb_addr,workstatus,corporation,cor_sex,cor_jobs,tel,emp_count,regmoney,linkman,islogout,ischeck)values(seq_store.nextval,'中期合作','二星级','西岸传媒','西传','私营企业','福州市鼓楼区道山路','良好','wang','0','总裁','13658745987',800,500000,'miss zhang','1','0');            
                                                                                                                                                                                                                                                                                                                                                               
insert into union_Binfo(unionb_id,unionb_type,v_level,full_name,Short_name,property,unionb_addr,workstatus,corporation,cor_sex,cor_jobs,tel,emp_count,regmoney,linkman,islogout,ischeck)values(seq_store.nextval,'长期合作','二星级','纽约,纽约','纽约','私营企业','福州市鼓楼区南街','良好','郑先生','0','店主','13569875563',300,600000,'miss li','1','0');         
                                                                                                                                                                                                                                                                                                                                                               
--联盟商家级别日志表                                                                                                                                                                                                                                                                                                                                           
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
values (seq_slog.nextval, 1, '西岸传媒', '二星级', 'admin', to_date('01-11-2008', 'dd-mm-yyyy'));                                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                                                                                                               
insert into union_slog (LOGID, UNIONB_ID, FULL_NAME, ULEVEL, WORKER, WORKTIME)                                                                                                  
values (seq_slog.nextval, 2, '纽约,纽约', '二星级', 'admin', to_date('01-08-2009', 'dd-mm-yyyy'));                                                                                                                                                                                                                                                             
                                                                                                                                                                                                                                                                                                                 
                                                                                                                                                                                                                                                                                                                 
                                                                                                                                                                                                                                                                                                                 
                                                                                                                                                                                                                                                                                                                 
                                                                                                                                                                                                                                                                                                                 
                                                                                                                                                                                                                                                                                                                 
                                                                                                                                                                                                                                                                                                                 
                                                                                                                                                                                                                                                                                                                 
                                                                                                                                                                                                                                                                                                                                                               