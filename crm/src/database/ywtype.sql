create table t_operationtype
(
  ID   NUMBER primary key,
  type VARCHAR2(50),
  PID  NUMBER,
  remind VARCHAR2(500)
);

create sequence seq_operationtype increment by 1 start with 200 nomaxvalue minvalue 1;

insert into t_operationtype (ID, TYPE, PID)
values (1, '��ʱҵ��', 0);

insert into t_operationtype (ID, TYPE, PID)
values (2, '�Ǽ�ʱҵ��', 0);

insert into t_operationtype (ID, TYPE, PID)
values (11, '������ʾ', 1);

insert into t_operationtype (ID, TYPE, PID)
values (12, '��ͨ״̬', 11);

insert into t_operationtype (ID, TYPE, PID)
values (13, '��Ч����', 11);

insert into t_operationtype (ID, TYPE, PID)
values (14, '��������', 1);

insert into t_operationtype (ID, TYPE, PID)
values (15, '��ͨ״̬', 14);

insert into t_operationtype (ID, TYPE, PID)
values (16, '��Ч����', 14);

insert into t_operationtype (ID, TYPE, PID)
values (17, '����ת��', 1);

insert into t_operationtype (ID, TYPE, PID)
values (18, '��ͨ״̬', 17);

insert into t_operationtype (ID, TYPE, PID)
values (19, '�û��������', 17);

insert into t_operationtype (ID, TYPE, PID)
values (20, '����ת�ƺ���', 17);

insert into t_operationtype (ID, TYPE, PID)
values (21, '��������', 1);

insert into t_operationtype (ID, TYPE, PID)
values (22, '��ʱ����', 1);

insert into t_operationtype (ID, TYPE, PID)
values (23, '�����Ž��', 22);

insert into t_operationtype (ID, TYPE, PID)
values (24, 'ʵ�����Ž��', 22);

insert into t_operationtype (ID, TYPE, PID)
values (25, '����ԭ��', 22);

insert into t_operationtype (ID, TYPE, PID)
values (26, '���ͣ��', 1);

insert into t_operationtype (ID, TYPE, PID)
values (27, '�������ͣ��', 1);

insert into t_operationtype (ID, TYPE, PID)
values (28, '���ڳ�;', 2);

insert into t_operationtype (ID, TYPE, PID)
values (29, '��ͨ״̬', 28);

insert into t_operationtype (ID, TYPE, PID)
values (30, '���ʳ�;', 2);

insert into t_operationtype (ID, TYPE, PID)
values (31, '��ͨ״̬', 30);

insert into t_operationtype (ID, TYPE, PID)
values (32, '��ֵҵ��', 2);

insert into t_operationtype (ID, TYPE, PID)
values (33, '��ͨ״̬', 32);

insert into t_operationtype (ID, TYPE, PID)
values (34, '��Ч����', 32);

insert into t_operationtype (ID, TYPE, PID)
values (35, '��ͨ����', 32);

insert into t_operationtype (ID, TYPE, PID)
values (36, '����', 32);

insert into t_operationtype (ID, TYPE, PID)
values (37, '�������ܱ�', 32);

insert into t_operationtype (ID, TYPE, PID)
values (38, '��������', 32);

insert into t_operationtype (ID, TYPE, PID)
values (39, '���ֿ�', 32);

insert into t_operationtype (ID, TYPE, PID)
values (40, '����', 39);

insert into t_operationtype (ID, TYPE, PID)
values (41, 'Ц��', 39);

insert into t_operationtype (ID, TYPE, PID)
values (42, '����������ʿ', 39);

insert into t_operationtype (ID, TYPE, PID)
values (43, '����Ԥ��', 39);

insert into t_operationtype (ID, TYPE, PID)
values (44, 'ȫ��', 39);

insert into t_operationtype (ID, TYPE, PID)
values (45, '8001����', 32);

insert into t_operationtype (ID, TYPE, PID)
values (46, '�ͻ����Ż�', 2);

insert into t_operationtype (ID, TYPE, PID)
values (77, '���', 69);

insert into t_operationtype (ID, TYPE, PID)
values (78, '�¼���', 69);

insert into t_operationtype (ID, TYPE, PID)
values (49, '���Ű���', 46);

insert into t_operationtype (ID, TYPE, PID)
values (50, '����', 49);

insert into t_operationtype (ID, TYPE, PID)
values (51, '3Ԫ50��', 50);

insert into t_operationtype (ID, TYPE, PID)
values (52, '6Ԫ100��', 50);

insert into t_operationtype (ID, TYPE, PID)
values (53, '10Ԫ150��', 50);

insert into t_operationtype (ID, TYPE, PID)
values (54, '15Ԫ300��', 50);

insert into t_operationtype (ID, TYPE, PID)
values (55, '20Ԫ500��', 50);

insert into t_operationtype (ID, TYPE, PID)
values (56, '������', 49);

insert into t_operationtype (ID, TYPE, PID)
values (57, '3Ԫ50��', 56);

insert into t_operationtype (ID, TYPE, PID)
values (58, '5Ԫ100��', 56);

insert into t_operationtype (ID, TYPE, PID)
values (59, '10Ԫ150��', 56);

insert into t_operationtype (ID, TYPE, PID)
values (60, '18Ԫ300��', 56);

insert into t_operationtype (ID, TYPE, PID)
values (61, '����', 49);

insert into t_operationtype (ID, TYPE, PID)
values (62, '5Ԫ60��', 61);

insert into t_operationtype (ID, TYPE, PID)
values (63, '��ͨ״̬', 50);

insert into t_operationtype (ID, TYPE, PID)
values (64, '��Ч����', 50);

insert into t_operationtype (ID, TYPE, PID)
values (65, '��ͨ״̬', 56);

insert into t_operationtype (ID, TYPE, PID)
values (66, '��Ч����', 56);

insert into t_operationtype (ID, TYPE, PID)
values (67, '��ͨ״̬', 61);

insert into t_operationtype (ID, TYPE, PID)
values (68, '��Ч����', 61);

insert into t_operationtype (ID, TYPE, PID)
values (69, '���ʳ�;�Żݰ�', 46);

insert into t_operationtype (ID, TYPE, PID)
values (70, '����', 69);

insert into t_operationtype (ID, TYPE, PID)
values (71, '���ɱ�', 69);

insert into t_operationtype (ID, TYPE, PID)
values (72, '����', 69);

insert into t_operationtype (ID, TYPE, PID)
values (73, '��������', 69);

insert into t_operationtype (ID, TYPE, PID)
values (74, '���������ô�', 69);

insert into t_operationtype (ID, TYPE, PID)
values (75, '�ձ�', 69);

insert into t_operationtype (ID, TYPE, PID)
values (76, '̨��', 69);

insert into t_operationtype (ID, TYPE, PID)
values (79, '��ɫ��', 69);

insert into t_operationtype (ID, TYPE, PID)
values (80, 'ӡ��������', 69);

insert into t_operationtype (ID, TYPE, PID)
values (81, 'Ӣ��', 69);

insert into t_operationtype (ID, TYPE, PID)
values (82, '���ڳ�;�Żݰ�', 46);

insert into t_operationtype (ID, TYPE, PID)
values (83, '3Ԫ��0.25Ԫ/����', 82);

insert into t_operationtype (ID, TYPE, PID)
values (84, '5Ԫ��0.2Ԫ/����', 82);

insert into t_operationtype (ID, TYPE, PID)
values (85, '10Ԫ��0.15Ԫ/����', 82);

insert into t_operationtype (ID, TYPE, PID)
values (86, 'ʡ�������Żݰ�', 46);

insert into t_operationtype (ID, TYPE, PID)
values (87, '10Ԫ,���η�0.4Ԫ/����', 86);

insert into t_operationtype (ID, TYPE, PID)
values (88, '20Ԫ,���η�0.3Ԫ/����', 86);

insert into t_operationtype (ID, TYPE, PID)
values (89, '30Ԫ,���η�0.25Ԫ/����', 86);

insert into t_operationtype (ID, TYPE, PID)
values (90, 'æʱ�Żݰ�', 46);

insert into t_operationtype (ID, TYPE, PID)
values (91, '�ͻ���ѯ��Ϣ���', 2);

insert into t_operationtype (ID, TYPE, PID)
values (92, '�ʼķ���', 2);

insert into t_operationtype (ID, TYPE, PID)
values (93, '��������', 2);

insert into t_operationtype (ID, TYPE, PID)
values (94, '�����������', 2);

insert into t_operationtype (ID, TYPE, PID)
values (95, '�ײͱ��', 2);

insert into t_operationtype (ID, TYPE, PID)
values (96, '�ͻ�����绰����ԤԼ', 2);