truncate table t_power;

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
values (77, '系统服务操作', '/admin/main/index.jsp', 0, 1);

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
values (97, '客户管理', '/admin/customer/index.jsp', 0, 8);

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
values (112, '职工消费终端', '/admin/staff/index.jsp', 0, 3);

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
values (120, '默认参数', '/admin/param/index.jsp', 0, 9);

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
values (128, '账户信息查询', '/admin/account/index.jsp', 0, 4);

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
values (1, '门诊管理', '/admin/cust.do?task=toAddCust', 0, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (2, '日常诊疗操作', '/admin/dailydt/index.jsp', 0, 5);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (3, '诊疗变更操作', '/admin/updatedt/index.jsp', 0, 6);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (4, '诊疗查询操作', '/admin/querydt/index.jsp', 0, 7);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (5, '系统辅助功能', '/admin/help/index.jsp', 0, 10);

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
values (15, '门诊诊疗处理', '/admin/group.do?task=showGroup', 2, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (16, '门诊治疗处理', '/admin/group.do?task=showGroup', 2, 2);

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
values (35, '非潜在集团管理', '/admin/group.do?task=showGroup', 2, 9);

