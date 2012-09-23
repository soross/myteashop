--插入规则******************************************************************************

insert into t_clientrule (ID, RULENAME, BRAND, BASE, DESCRIPTION, ISLOCK, PRI)
values (1, '砖石卡', 1, 4, '世界风客户会员最高等级规则', '1', '4');

insert into t_clientrule (ID, RULENAME, BRAND, BASE, DESCRIPTION, ISLOCK, PRI)
values (2, '金卡', 1, 3, '世界风客户金卡客户规则', '0', '3');

insert into t_clientrule (ID, RULENAME, BRAND, BASE, DESCRIPTION, ISLOCK, PRI)
values (3, '银卡', 1, 2, '世界风银卡用户规则', '0', '2');

insert into t_clientrule (ID, RULENAME, BRAND, BASE, DESCRIPTION, ISLOCK, PRI)
values (4, '砖石卡', 0, 4, '非世界风客户会员最高等级规则', '0', '4');

insert into t_clientrule (ID, RULENAME, BRAND, BASE, DESCRIPTION, ISLOCK, PRI)
values (5, '金卡', 0, 3, '非世界风客户金卡客户规则', '0', '3');

insert into t_clientrule (ID, RULENAME, BRAND, BASE, DESCRIPTION, ISLOCK, PRI)
values (6, '银卡', 0, 2, '非世界风银卡用户规则', '0', '2');



--规则表达式************************************************************************
insert into t_ruleexp (ID, RULEID, TYPE, STARTVALUE, ENDVALUE, EXPRESSION)
values (1, 1, '积分', 3500, null, '连续6个月累计积分≥3500');

insert into t_ruleexp (ID, RULEID, TYPE, STARTVALUE, ENDVALUE, EXPRESSION)
values (2, 1, 'ARPU', 500, null, '连续六个月平均ARPU值≥500');

insert into t_ruleexp (ID, RULEID, TYPE, STARTVALUE, ENDVALUE, EXPRESSION)
values (3, 2, '积分', 2500, 3500, '2500分≤连续6个月累积积分<3500分');

insert into t_ruleexp (ID, RULEID, TYPE, STARTVALUE, ENDVALUE, EXPRESSION)
values (4, 2, 'ARPU', 300, null, '连续六个月平均ARPU值≥300');

insert into t_ruleexp (ID, RULEID, TYPE, STARTVALUE, ENDVALUE, EXPRESSION)
values (5, 3, '积分', 1000, 2500, '1000分≤连续6个月累积积分<2500分');

insert into t_ruleexp (ID, RULEID, TYPE, STARTVALUE, ENDVALUE, EXPRESSION)
values (6, 3, 'ARPU', 150, null, '连续六个月平均ARPU值≥150');

insert into t_ruleexp (ID, RULEID, TYPE, STARTVALUE, ENDVALUE, EXPRESSION)
values (7, 4, '积分', 3500, null, '连续6个月累计积分≥3500');

insert into t_ruleexp (ID, RULEID, TYPE, STARTVALUE, ENDVALUE, EXPRESSION)
values (8, 4, 'ARPU', 500, null, '连续六个月平均ARPU值≥500');

insert into t_ruleexp (ID, RULEID, TYPE, STARTVALUE, ENDVALUE, EXPRESSION)
values (9, 5, '积分', 2500, 3500, '2500分≤连续6个月累积积分<3500分');

insert into t_ruleexp (ID, RULEID, TYPE, STARTVALUE, ENDVALUE, EXPRESSION)
values (10, 5, 'ARPU', 300, null, '连续六个月平均ARPU值≥300');

insert into t_ruleexp (ID, RULEID, TYPE, STARTVALUE, ENDVALUE, EXPRESSION)
values (11, 6, '积分', 1000, 2500, '1000分≤连续6个月累积积分<2500分');

insert into t_ruleexp (ID, RULEID, TYPE, STARTVALUE, ENDVALUE, EXPRESSION)
values (12, 6, 'ARPU', 150, null, '连续六个月平均ARPU值≥150');


--规则日志*********************************************************************************
insert into t_rulelog (ID, RULEID, CREATER, CREATEDATE, OPERATOR, OPERDATE, OPERTYPE)
values (1, 1, 'admin', to_date('29-10-2009', 'dd-mm-yyyy'), '', null, '0');

insert into t_rulelog (ID, RULEID, CREATER, CREATEDATE, OPERATOR, OPERDATE, OPERTYPE)
values (2, 2, 'admin', to_date('29-10-2009', 'dd-mm-yyyy'), '', null, '0');

insert into t_rulelog (ID, RULEID, CREATER, CREATEDATE, OPERATOR, OPERDATE, OPERTYPE)
values (3, 3, 'admin', to_date('29-10-2009', 'dd-mm-yyyy'), '', null, '0');

insert into t_rulelog (ID, RULEID, CREATER, CREATEDATE, OPERATOR, OPERDATE, OPERTYPE)
values (4, 4, 'admin', to_date('29-10-2009', 'dd-mm-yyyy'), '', null, '0');

insert into t_rulelog (ID, RULEID, CREATER, CREATEDATE, OPERATOR, OPERDATE, OPERTYPE)
values (5, 5, 'admin', to_date('29-10-2009', 'dd-mm-yyyy'), '', null, '0');

insert into t_rulelog (ID, RULEID, CREATER, CREATEDATE, OPERATOR, OPERDATE, OPERTYPE)
values (6, 6, 'admin', to_date('29-10-2009', 'dd-mm-yyyy'), '', null, '0');