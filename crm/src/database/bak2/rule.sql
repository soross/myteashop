--�������******************************************************************************

insert into t_clientrule (ID, RULENAME, BRAND, BASE, DESCRIPTION, ISLOCK, PRI)
values (1, 'שʯ��', 1, 4, '�����ͻ���Ա��ߵȼ�����', '1', '4');

insert into t_clientrule (ID, RULENAME, BRAND, BASE, DESCRIPTION, ISLOCK, PRI)
values (2, '��', 1, 3, '�����ͻ��𿨿ͻ�����', '0', '3');

insert into t_clientrule (ID, RULENAME, BRAND, BASE, DESCRIPTION, ISLOCK, PRI)
values (3, '����', 1, 2, '����������û�����', '0', '2');

insert into t_clientrule (ID, RULENAME, BRAND, BASE, DESCRIPTION, ISLOCK, PRI)
values (4, 'שʯ��', 0, 4, '�������ͻ���Ա��ߵȼ�����', '0', '4');

insert into t_clientrule (ID, RULENAME, BRAND, BASE, DESCRIPTION, ISLOCK, PRI)
values (5, '��', 0, 3, '�������ͻ��𿨿ͻ�����', '0', '3');

insert into t_clientrule (ID, RULENAME, BRAND, BASE, DESCRIPTION, ISLOCK, PRI)
values (6, '����', 0, 2, '������������û�����', '0', '2');



--������ʽ************************************************************************
insert into t_ruleexp (ID, RULEID, TYPE, STARTVALUE, ENDVALUE, EXPRESSION)
values (1, 1, '����', 3500, null, '����6�����ۼƻ��֡�3500');

insert into t_ruleexp (ID, RULEID, TYPE, STARTVALUE, ENDVALUE, EXPRESSION)
values (2, 1, 'ARPU', 500, null, '����������ƽ��ARPUֵ��500');

insert into t_ruleexp (ID, RULEID, TYPE, STARTVALUE, ENDVALUE, EXPRESSION)
values (3, 2, '����', 2500, 3500, '2500�֡�����6�����ۻ�����<3500��');

insert into t_ruleexp (ID, RULEID, TYPE, STARTVALUE, ENDVALUE, EXPRESSION)
values (4, 2, 'ARPU', 300, null, '����������ƽ��ARPUֵ��300');

insert into t_ruleexp (ID, RULEID, TYPE, STARTVALUE, ENDVALUE, EXPRESSION)
values (5, 3, '����', 1000, 2500, '1000�֡�����6�����ۻ�����<2500��');

insert into t_ruleexp (ID, RULEID, TYPE, STARTVALUE, ENDVALUE, EXPRESSION)
values (6, 3, 'ARPU', 150, null, '����������ƽ��ARPUֵ��150');

insert into t_ruleexp (ID, RULEID, TYPE, STARTVALUE, ENDVALUE, EXPRESSION)
values (7, 4, '����', 3500, null, '����6�����ۼƻ��֡�3500');

insert into t_ruleexp (ID, RULEID, TYPE, STARTVALUE, ENDVALUE, EXPRESSION)
values (8, 4, 'ARPU', 500, null, '����������ƽ��ARPUֵ��500');

insert into t_ruleexp (ID, RULEID, TYPE, STARTVALUE, ENDVALUE, EXPRESSION)
values (9, 5, '����', 2500, 3500, '2500�֡�����6�����ۻ�����<3500��');

insert into t_ruleexp (ID, RULEID, TYPE, STARTVALUE, ENDVALUE, EXPRESSION)
values (10, 5, 'ARPU', 300, null, '����������ƽ��ARPUֵ��300');

insert into t_ruleexp (ID, RULEID, TYPE, STARTVALUE, ENDVALUE, EXPRESSION)
values (11, 6, '����', 1000, 2500, '1000�֡�����6�����ۻ�����<2500��');

insert into t_ruleexp (ID, RULEID, TYPE, STARTVALUE, ENDVALUE, EXPRESSION)
values (12, 6, 'ARPU', 150, null, '����������ƽ��ARPUֵ��150');


--������־*********************************************************************************
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