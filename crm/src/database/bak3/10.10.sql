insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (701, 'Ԥ���б�', '/admin/cardfee.do?task=cardFeeList&funmodid=701', 99, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (702, '�˻�Ԥ��', '/admin/cardfee.do?task=toAddCardFee&funmodid=702', 99, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (703, 'Ԥ���޸�', '/admin/cardfee.do?task=toUpdateCardFee&funmodid=703', 99, -1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (704, 'Ԥ��ɾ��', '/admin/cardfee.do?task=deleteCardFee&funmodid=704', 99, -1);

delete form t_power t where t.id=.99;

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (99, '�˻�Ԥ��', '/admin/cardfee.do?task=toAddCardFee&funmodid=99', 97, 2);

