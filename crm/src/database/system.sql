/*==============================================================*/
/* Table: "T_user "      用户表                                 */
/*==============================================================*/

create table T_user(			--用户表
  userid varchar2(20) primary key,	--用户账号（必须）
  username varchar2(20),		--用户姓名（必须）
  password varchar2(20), 		--密码
  sex char(1),				--性别,0为男，1为女
  homeplace varchar2(10),		--籍贯
  code varchar2(20),			--身份证号码
  tel varchar2(15),			--电话号码
  email varchar2(20),			--电子邮件
  phone varchar2(15),			--手机
  address varchar2(30),  		--住址
  jobno varchar2(15),  			--工号
  opendate  date,  			--开户时间
  slock  char(1)  			--是否冻结，0为冻结，1为解冻
);

insert into t_user (USERID, USERNAME, PASSWORD, SEX, HOMEPLACE, CODE, TEL, EMAIL, PHONE, 
ADDRESS, JOBNO, OPENDATE, SLOCK)
values ('admin', 'joli', '888888', '0', '福建', '350102198804151880', '22634588', 
'adm888@163.com', '13645786635', '鼓楼区东街口123', '00001', to_date('01-10-2006', 'dd-mm-
yyyy'), '1');

insert into t_user (USERID, USERNAME, PASSWORD, SEX, HOMEPLACE, CODE, TEL, EMAIL, PHONE, 
ADDRESS, JOBNO, OPENDATE, SLOCK)
values ('manager1', 'lili', '888888', '1', '河南', '340565125625681952', '26548711', 
'mana1@120.com', '13541586522', '马尾区区委32号', '00002', to_date('16-10-2008', 'dd-mm-
yyyy'), '1');

insert into t_user (USERID, USERNAME, PASSWORD, SEX, HOMEPLACE, CODE, TEL, EMAIL, PHONE, 
ADDRESS, JOBNO, OPENDATE, SLOCK)
values ('manager2', 'luxi', '888888', '1', '广州', '321216198012221055', '2226666', 
'mana1@qq.com', '13502154888', '台江区安平小区55号', '00003', to_date('18-08-2009', 'dd-mm-
yyyy'), '1');

/*==============================================================*/
/* Table: "t_role "      角色表                       */
/*==============================================================*/

create table t_role (		--角色表
   roleid number primary key,	--角色ID
   rolename varchar2(20),	--角色名
   descript varchar2(150)	--描述
);
create sequence  seq_trole start with 10;
insert into t_role(roleid,rolename,descript) values(1,'超级管理员',null);
insert into t_role(roleid,rolename,descript) values(2,'客户经理',null);


/*==============================================================*/
/* Table: "T_userrole"      用户角色表                       */
/*==============================================================*/

create table T_userrole(	
 id number primary key,
 userid varchar2(20),
 roleid number
);
create sequence seq_userrole increment by 1 start with 1 nomaxvalue minvalue 1;

insert into T_userrole(id,userid,roleid)values(seq_userrole.nextval,'admin',1);
insert into T_userrole(id,userid,roleid)values(seq_userrole.nextval,'manager1',2);
insert into T_userrole(id,userid,roleid)values(seq_userrole.nextval,'manager2',2);



/*==============================================================*/
/* Table: "T_power"      权限表																	*/
/*==============================================================*/
create table T_power(
id number primary key,	--权限ID
powername varchar2(20),	--权限名
url varchar2(150),
parentid number,
sortid number
);
create sequence  seq_tpower start with 100;

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (36, '退器具付款', '', 1, 11);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (37, '器具房发器具', '', 1, 12);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (38, '处方查询', '', 1, 13);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (39, '门诊影像浏览', '', 2, 8);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (40, '医技报告查询', '', 2, 9);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (41, '居民健康档案', '', 2, 10);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (42, '残疾状况档案', '', 2, 11);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (43, '门诊日志生成', '', 2, 12);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (44, '日志查询管理', '', 2, 13);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (45, '诊疗处方查询', '', 3, 6);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (46, '诊疗检查注销', '', 3, 5);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (47, '诊疗治疗注销', '', 3, 4);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (48, '装配手册查询', '', 4, 7);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (49, '器具手册查询', '', 4, 8);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (50, '标准编码查询', '', 4, 9);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (51, '疾病编码查询(一)', '', 4, 10);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (52, '疾病编码查询(二)', '', 4, 11);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (53, '中医疾病编码查询', '', 4, 12);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (54, '中医病症编码查询', '', 4, 13);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (55, '损伤原因编码查询', '', 4, 14);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (56, '证明名称编码查询', '', 4, 15);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (57, '参数设置', '', 5, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (58, '超时待机时间设置', '', 5, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (59, '个性选项设置', '', 5, 3);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (60, '用户信息修改', '', 5, 4);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (61, '密码答案设置', '', 5, 5);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (62, '输入方法设置', '', 5, 6);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (63, '用户喜好设置', '', 5, 7);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (64, '计算器', 'javascript:getCalc();', 5, 8);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (65, '记事本', 'javascript:getnotepad();', 5, 9);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (66, '万年日历查询', '', 5, 10);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (67, '系统主机信息', '', 5, 11);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (68, '系统时间校准', '', 5, 12);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (69, '清理升级文件', '', 5, 13);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (70, '数据备份', '', 5, 14);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (71, '数据恢复', '', 5, 15);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (72, '数据库优化', '', 5, 16);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (73, '短信平台', '', 5, 17);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (74, '系统日志', '', 5, 18);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (75, '重新登入', '', 5, 19);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (76, '退出系统', '', 5, 20);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (77, '系统服务操作', '', 0, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (78, '常用字典', '', 77, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (79, '科室部门', '/admin/dept.do?task=deptList', 77, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (80, '人事档案', '/admin/files.do?task=filesList', 77, 3);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (81, '病床管理', '/admin/sickbed.do?task=sickbedList', 77, 4);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (82, '汇总科目', '', 77, 5);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (83, '收费项目', '', 77, 6);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (84, '挂号类别', '', 77, 7);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (85, '往来单位', '', 77, 8);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (86, '生产厂家', '', 77, 9);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (87, '订购厂家', '', 77, 10);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (88, '签约单位', '', 77, 11);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (89, '器具房库', '', 77, 12);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (90, '器具档案', '', 77, 13);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (91, '物资材料', '', 77, 14);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (92, '诊疗模版操作', '', 77, 15);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (93, '处方模版制作维护', '', 77, 16);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (94, '病历模版制作维护', '', 77, 17);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (95, '个人疾病编码收集', '', 77, 18);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (96, '作者版权申明', '', 77, 19);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (97, '客户管理', '', 0, 8);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (98, '客户档案', '', 97, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (99, '账户预存', '', 97, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (100, '客户回访', '', 97, 3);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (101, '回访提醒', '', 97, 4);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (102, '账户明细', '', 97, 5);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (103, '门诊预约', '', 97, 6);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (104, '预约列表', '', 97, 7);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (105, '会员设置', '', 97, 8);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (106, '会员卡发行', '', 97, 9);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (107, 'IC卡管理', '', 97, 10);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (108, 'IC卡发行', '', 97, 11);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (109, 'IC分类管理', '', 97, 12);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (110, 'IC卡激活密码', '', 97, 13);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (111, '校验功能', '', 97, 14);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (112, '职工消费终端', '', 0, 3);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (113, '职工费用支付', '', 112, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (114, '职工费用查询', '', 112, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (115, '技师提成设置', '', 112, 3);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (116, '职业务统计', '', 112, 4);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (117, '个人业务收入统计', '', 112, 5);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (118, '科室业务收入统计', '', 112, 6);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (119, '优劳优酬业务统计', '', 112, 7);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (120, '默认参数', '', 0, 9);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (121, '频次设置', '', 120, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (122, '站点管理', '', 120, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (123, '登入日志查询', '', 120, 3);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (124, '器具套餐', '', 120, 4);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (125, '套餐处方', '', 120, 5);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (126, '优惠策略', '', 120, 6);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (127, '票据打印', '', 120, 7);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (128, '账户信息查询', '', 0, 4);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (129, '患者门诊汇总清单', '', 128, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (130, '患者门诊明细清单', '', 128, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (131, '患者住院汇总清单', '', 128, 3);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (132, '患者住院明细清单', '', 128, 4);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (133, '出院患者汇总清单', '', 128, 5);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (134, '患者缴款明细清单', '', 128, 6);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (135, '患者账目对账清单', '', 128, 7);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (136, '全院各科在院病人', '', 128, 8);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (1, '门诊管理', '', 0, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (2, '日常诊疗操作', '', 0, 5);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (3, '诊疗变更操作', '', 0, 6);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (4, '诊疗查询操作', '', 0, 7);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (5, '系统辅助功能', '', 0, 10);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (6, '挂号管理', '/admin/client.do?task=clientList', 1, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (7, '门诊挂号', '/admin/rule.do?task=ruleList', 1, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (8, '病人管理', '/admin/client.do?task=clientList', 1, 3);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (9, '会员管理', '/admin/client.do?task=distributeList', 1, 4);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (10, '预约管理', '/admin/client.do?task=deployList', 1, 5);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (11, '挂号划价收费', '/admin/client.do?task=acceptList', 1, 6);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (12, '挂号收费列表', '/admin/client.do?task=toImport', 1, 7);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (13, '门诊挂号划价', '/admin/business.do?task=toRegister', 1, 8);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (14, '门诊挂号划价列表', '/admin/business.do?task=searchBusinessList', 1, 9);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (34, '退器具划价', '/admin/rule.do?task=searchRuleLog', 1, 10);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (15, '门诊诊疗处理', '/admin/group.do?task=showGroup&mark=1', 2, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (16, '门诊治疗处理', '/admin/group.do?task=showGroup&mark=2', 2, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (17, '门诊病历续写', '/admin/groupDistribute.do?task=noDistributeList', 2, 3);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (18, '门诊证明申请', '/admin/groupDistribute.do?task=hasDistributeList', 2, 4);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (19, '患者入院申请', '/admin/groupView.do?task=groupList', 2, 5);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (20, '患者疾病证明', '/admin/groupView.do?task=gruserManager', 2, 6);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (21, '门诊图像浏览', '/admin/groupDistribute.do?task=grhistlist', 2, 7);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (22, '诊疗处方查询', '/admin/union.do?task=showUnion', 3, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (23, '诊疗检查查询', '/admin/clubnetwork.do?task=clubNetworkList', 3, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (24, '特诊费用配对', '/admin/activity.do?task=showActivity', 3, 3);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (25, '患者病历查询', '/admin/score.do?task=applyList', 4, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (26, '器具条件查询', '/admin/present.do?task=pay', 4, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (27, '器具自动查询', '/admin/present.do?task=presentList', 4, 3);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (28, '收费项目查询', '/admin/score.do?task=searchMonth', 4, 4);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (29, '关联收费查询', '/admin/score.do?task=searchChange', 4, 5);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (30, '器具调价查询', '/admin/score.do?task=searchLog', 4, 6);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (31, '用户管理', '/admin/user.do?task=showUser', 5, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (32, '角色管理', '/admin/role.do?task=roleList', 5, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (33, '数字字典', '/admin/data.do?task=dataList', 5, 3);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (35, '非潜在集团管理', '/admin/group.do?task=showGroup&mark=0', 2, 9);





insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (15, '潜在集团管理', '/admin/group.do?task=showGroup'||'&'||'mark=1', 2, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (16, '正式集团管理', '/admin/group.do?task=showGroup'||'&'||'mark=2', 2, 2);

insert into T_POWER (ID, POWERNAME, URL, PARENTID,sortid)
values (17, '集团分配', '/admin/groupDistribute.do?task=noDistributeList', 2, 3);

insert into T_POWER (ID, POWERNAME, URL, PARENTID,sortid)
values (18, '集团调配', '/admin/groupDistribute.do?task=hasDistributeList', 2, 4);

insert into T_POWER (ID, POWERNAME, URL, PARENTID,sortid)
values (19, '集团视图管理', '/admin/groupView.do?task=groupList', 2, 5);

insert into T_POWER (ID, POWERNAME, URL, PARENTID,sortid)
values (20, '集团客户管理', '/admin/groupView.do?task=gruserManager', 2, 6);

insert into T_POWER (ID, POWERNAME, URL, PARENTID,sortid)
values (21, '历史记录管理', '/admin/groupDistribute.do?task=grhistlist', 2, 7);


insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (22, '联盟商家管理', '/admin/union.do?task=showUnion', 3, 1);

insert into T_POWER (ID, POWERNAME, URL, PARENTID,sortid)
values (23, '俱乐部配置','/admin/clubnetwork.do?task=clubNetworkList', 3,2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (24, '活动管理', '/admin/activity.do?task=showActivity', 3, 3);


insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (25, '积分申请', '/admin/score.do?task=applyList', 4, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (26, '积分消费', '/admin/present.do?task=pay', 4, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (27, '礼品管理', '/admin/present.do?task=presentList', 4, 3);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (28, '积分查询', '/admin/score.do?task=searchMonth', 4, 4);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (29, '积分消费查询', '/admin/score.do?task=searchChange', 4, 5);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (30, '积分日志查询', '/admin/score.do?task=searchLog', 4, 6);


insert into T_POWER (ID, POWERNAME, URL, PARENTID,sortid)
values (31, '用户管理','/admin/user.do?task=showUser',5,1);

insert into T_POWER (ID, POWERNAME, URL, PARENTID,sortid)
values (32, '角色管理','/admin/role.do?task=roleList',5,2);

insert into T_POWER (ID, POWERNAME, URL, PARENTID,sortid)
values (33, '数字字典','/admin/data.do?task=dataList',5,3);

insert into T_POWER (ID, POWERNAME, URL, PARENTID,sortid)
values (35, '非潜在集团管理','/admin/group.do?task=showGroup'||'&'||'mark=0',2,9);

/*==============================================================*/
/* Table: "t_rolePower"      角色权限表                         */
/*==============================================================*/
create table t_rolePower(
   id number primary key,	--角色权限ID
   ROLEID number,		--角色ID 
   POWERID number		--权限ID
);
create sequence  seq_trolePower start with 100;
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (1, 1, 1);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (2, 1, 2);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (3, 1, 3);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (4, 1, 4);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (5, 1, 5);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (6, 1, 6);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (7, 1, 7);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (8, 1, 8);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (9, 1, 9);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (10, 1, 10);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (11, 1, 11);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (12, 1, 12);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (13, 1, 13);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (14, 1, 14);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (15, 1, 15);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (16, 1, 16);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (17, 1, 17);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (18, 1, 18);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (19, 1, 19);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (20, 1, 20);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (21, 1, 21);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (22, 1, 22);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (23, 1, 23);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (24, 1, 24);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (25, 1, 25);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (26, 1, 26);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (27, 1, 27);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (28, 1, 28);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (29, 1, 29);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (30, 1, 30);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (31, 1, 31);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (32, 1, 32);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (33, 1, 33);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (60, 1, 34);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (61, 1, 35);

insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (34, 2, 1);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (35, 2, 2);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (36, 2, 3);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (37, 2, 4);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (38, 2, 6);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (39, 2, 7);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (40, 2, 8);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (43, 2, 11);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (45, 2, 13);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (46, 2, 14);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (47, 2, 15);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (48, 2, 16);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (49, 2, 17);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (50, 2, 18);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (51, 2, 19);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (52, 2, 20);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (53, 2, 21);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (54, 2, 22);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (55, 2, 23);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (56, 2, 24);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (57, 2, 25);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (58, 2, 26);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (59, 2, 27);
insert into T_ROLEPOWER (ID, ROLEID, POWERID)
values (62, 2, 35);


/*==============================================================*/
/* Table: "t_data"       数据字典                        */
/*==============================================================*/
create table T_DATA
(
  ID   NUMBER primary key,
  NAME VARCHAR2(50),
  PID  NUMBER,
  trade CHAR(2)
);
create sequence seq_data increment by 1 start with 200 nomaxvalue minvalue 1;

insert into t_data (ID, NAME, PID, TRADE)
values (1, '品牌', 0, '');

insert into t_data (ID, NAME, PID, TRADE)
values (10, '世界风', 1, '');

insert into t_data (ID, NAME, PID, TRADE)
values (11, '新势力', 1, '');

insert into t_data (ID, NAME, PID, TRADE)
values (12, '新时空', 1, '');

insert into t_data (ID, NAME, PID, TRADE)
values (13, '如意通', 1, '');

insert into t_data (ID, NAME, PID, TRADE)
values (2, 'VIP等级', 0, '');

insert into t_data (ID, NAME, PID, TRADE)
values (20, '砖石卡', 2, '');

insert into t_data (ID, NAME, PID, TRADE)
values (21, '金卡', 2, '');

insert into t_data (ID, NAME, PID, TRADE)
values (22, '银卡', 2, '');

insert into t_data (ID, NAME, PID, TRADE)
values (51, '添加', 4, '0 ');

insert into t_data (ID, NAME, PID, TRADE)
values (3, '行业', 0, '');

insert into t_data (ID, NAME, PID, TRADE)
values (30, '其他', 3, '00');

insert into t_data (ID, NAME, PID, TRADE)
values (31, '政府机关', 3, '01');

insert into t_data (ID, NAME, PID, TRADE)
values (32, '公安系统', 3, '02');

insert into t_data (ID, NAME, PID, TRADE)
values (33, '金融系统', 3, '03');

insert into t_data (ID, NAME, PID, TRADE)
values (34, '电力/电器/煤炭/能源', 3, '04');

insert into t_data (ID, NAME, PID, TRADE)
values (35, '军队', 3, '05');

insert into t_data (ID, NAME, PID, TRADE)
values (36, '工商/税务', 3, '06');

insert into t_data (ID, NAME, PID, TRADE)
values (37, '教育/科研', 3, '07');

insert into t_data (ID, NAME, PID, TRADE)
values (38, '旅游/宾馆/酒店/餐饮', 3, '08');

insert into t_data (ID, NAME, PID, TRADE)
values (39, 'IT/通信', 3, '09');

insert into t_data (ID, NAME, PID, TRADE)
values (40, '医药/医疗/卫生', 3, '10');

insert into t_data (ID, NAME, PID, TRADE)
values (41, '烟草', 3, '11');

insert into t_data (ID, NAME, PID, TRADE)
values (42, '建筑/房地/装潢/设计行业', 3, '12');

insert into t_data (ID, NAME, PID, TRADE)
values (43, '石油/化工/采掘/冶炼', 3, '13');

insert into t_data (ID, NAME, PID, TRADE)
values (44, '商业/批发/零售/贸易', 3, '14');

insert into t_data (ID, NAME, PID, TRADE)
values (45, '生产/制造/加工', 3, '15');

insert into t_data (ID, NAME, PID, TRADE)
values (46, '畜牧/渔/农/林', 3, '16');

insert into t_data (ID, NAME, PID, TRADE)
values (47, '供水/水利', 3, '17');

insert into t_data (ID, NAME, PID, TRADE)
values (48, '交通', 3, '18');

insert into t_data (ID, NAME, PID, TRADE)
values (49, '社会服务', 3, '19');

insert into t_data (ID, NAME, PID, TRADE)
values (50, '新闻/出版/媒体', 3, '20');

insert into t_data (ID, NAME, PID, TRADE)
values (52, '修改', 4, '1 ');

insert into t_data (ID, NAME, PID, TRADE)
values (4, '操作类型', 0, '');

insert into t_data (ID, NAME, PID, TRADE)
values (53, '删除', 4, '2 ');

insert into t_data (ID, NAME, PID, TRADE)
values (5, '集团等级', 0, '');

insert into t_data (ID, NAME, PID, TRADE)
values (60, '二星级', 5, '');

insert into t_data (ID, NAME, PID, TRADE)
values (61, '三星级', 5, '');

insert into t_data (ID, NAME, PID, TRADE)
values (62, '四星级', 5, '');

insert into t_data (ID, NAME, PID, TRADE)
values (63, '五星级', 5, '');

insert into t_data (ID, NAME, PID, TRADE)
values (6, '业务处理', 0, '');

insert into t_data (ID, NAME, PID, TRADE)
values (71, '已处理', 6, '');

insert into t_data (ID, NAME, PID, TRADE)
values (72, '未处理', 6, '');

insert into t_data (ID, NAME, PID, TRADE)
values (73, '已作废', 6, '');

insert into t_data (ID, NAME, PID, TRADE)
values (74, '无法处理', 6, '');

insert into t_data (ID, NAME, PID, TRADE)
values (7, '分配状态', 0, '');

insert into t_data (ID, NAME, PID, TRADE)
values (81, '未分配', 7, '');

insert into t_data (ID, NAME, PID, TRADE)
values (82, '已分配未接收', 7, '');

insert into t_data (ID, NAME, PID, TRADE)
values (83, '已接收', 7, '');

insert into t_data (ID, NAME, PID, TRADE)
values (90, '网点类型', 0, '');

insert into t_data (ID, NAME, PID, TRADE)
values (91, '类型一', 90, '');

insert into t_data (ID, NAME, PID, TRADE)
values (92, '类型二', 90, '');

insert into t_data (ID, NAME, PID, TRADE)
values (93, '类型三', 90, '');

insert into t_data (ID, NAME, PID, TRADE)
values (8, '合作伙伴类型', 0, '');

insert into t_data (ID, NAME, PID, TRADE)
values (94, '长期合作', 8, '');

insert into t_data (ID, NAME, PID, TRADE)
values (95, '中期合作', 8, '');

insert into t_data (ID, NAME, PID, TRADE)
values (96, '短期合作', 8, '');

insert into t_data (ID, NAME, PID, TRADE)
values (9, '经营状况', 0, '');

insert into t_data (ID, NAME, PID, TRADE)
values (97, '好', 9, '');

insert into t_data (ID, NAME, PID, TRADE)
values (98, '良好', 9, '');

insert into t_data (ID, NAME, PID, TRADE)
values (99, '一般', 9, '');

insert into t_data (ID, NAME, PID, TRADE)
values (100, '差', 9, '');

insert into t_data (ID, NAME, PID, TRADE)
values (101, '企业性质', 0, '');

insert into t_data (ID, NAME, PID, TRADE)
values (102, '国有企业', 101, '');

insert into t_data (ID, NAME, PID, TRADE)
values (103, '私营企业', 101, '');

insert into t_data (ID, NAME, PID, TRADE)
values (104, '活动预算', 0, '');

insert into t_data (ID, NAME, PID, TRADE)
values (105, '宣传费用', 104, '');

insert into t_data (ID, NAME, PID, TRADE)
values (106, '车费', 104, '');

insert into t_data (ID, NAME, PID, TRADE)
values (107, '劳务费', 104, '');

insert into t_data (ID, NAME, PID, TRADE)
values (107, '联系费', 104, '');