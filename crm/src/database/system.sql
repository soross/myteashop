/*==============================================================*/
/* Table: "T_user "      �û���                                 */
/*==============================================================*/

create table T_user(			--�û���
  userid varchar2(20) primary key,	--�û��˺ţ����룩
  username varchar2(20),		--�û����������룩
  password varchar2(20), 		--����
  sex char(1),				--�Ա�,0Ϊ�У�1ΪŮ
  homeplace varchar2(10),		--����
  code varchar2(20),			--���֤����
  tel varchar2(15),			--�绰����
  email varchar2(20),			--�����ʼ�
  phone varchar2(15),			--�ֻ�
  address varchar2(30),  		--סַ
  jobno varchar2(15),  			--����
  opendate  date,  			--����ʱ��
  slock  char(1)  			--�Ƿ񶳽ᣬ0Ϊ���ᣬ1Ϊ�ⶳ
);

insert into t_user (USERID, USERNAME, PASSWORD, SEX, HOMEPLACE, CODE, TEL, EMAIL, PHONE, 
ADDRESS, JOBNO, OPENDATE, SLOCK)
values ('admin', 'joli', '888888', '0', '����', '350102198804151880', '22634588', 
'adm888@163.com', '13645786635', '��¥�����ֿ�123', '00001', to_date('01-10-2006', 'dd-mm-
yyyy'), '1');

insert into t_user (USERID, USERNAME, PASSWORD, SEX, HOMEPLACE, CODE, TEL, EMAIL, PHONE, 
ADDRESS, JOBNO, OPENDATE, SLOCK)
values ('manager1', 'lili', '888888', '1', '����', '340565125625681952', '26548711', 
'mana1@120.com', '13541586522', '��β����ί32��', '00002', to_date('16-10-2008', 'dd-mm-
yyyy'), '1');

insert into t_user (USERID, USERNAME, PASSWORD, SEX, HOMEPLACE, CODE, TEL, EMAIL, PHONE, 
ADDRESS, JOBNO, OPENDATE, SLOCK)
values ('manager2', 'luxi', '888888', '1', '����', '321216198012221055', '2226666', 
'mana1@qq.com', '13502154888', '̨������ƽС��55��', '00003', to_date('18-08-2009', 'dd-mm-
yyyy'), '1');

/*==============================================================*/
/* Table: "t_role "      ��ɫ��                       */
/*==============================================================*/

create table t_role (		--��ɫ��
   roleid number primary key,	--��ɫID
   rolename varchar2(20),	--��ɫ��
   descript varchar2(150)	--����
);
create sequence  seq_trole start with 10;
insert into t_role(roleid,rolename,descript) values(1,'��������Ա',null);
insert into t_role(roleid,rolename,descript) values(2,'�ͻ�����',null);


/*==============================================================*/
/* Table: "T_userrole"      �û���ɫ��                       */
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
/* Table: "T_power"      Ȩ�ޱ�																	*/
/*==============================================================*/
create table T_power(
id number primary key,	--Ȩ��ID
powername varchar2(20),	--Ȩ����
url varchar2(150),
parentid number,
sortid number
);
create sequence  seq_tpower start with 100;

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (36, '�����߸���', '', 1, 11);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (37, '���߷�������', '', 1, 12);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (38, '������ѯ', '', 1, 13);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (39, '����Ӱ�����', '', 2, 8);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (40, 'ҽ�������ѯ', '', 2, 9);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (41, '���񽡿�����', '', 2, 10);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (42, '�м�״������', '', 2, 11);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (43, '������־����', '', 2, 12);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (44, '��־��ѯ����', '', 2, 13);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (45, '���ƴ�����ѯ', '', 3, 6);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (46, '���Ƽ��ע��', '', 3, 5);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (47, '��������ע��', '', 3, 4);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (48, 'װ���ֲ��ѯ', '', 4, 7);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (49, '�����ֲ��ѯ', '', 4, 8);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (50, '��׼�����ѯ', '', 4, 9);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (51, '���������ѯ(һ)', '', 4, 10);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (52, '���������ѯ(��)', '', 4, 11);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (53, '��ҽ���������ѯ', '', 4, 12);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (54, '��ҽ��֢�����ѯ', '', 4, 13);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (55, '����ԭ������ѯ', '', 4, 14);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (56, '֤�����Ʊ����ѯ', '', 4, 15);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (57, '��������', '', 5, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (58, '��ʱ����ʱ������', '', 5, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (59, '����ѡ������', '', 5, 3);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (60, '�û���Ϣ�޸�', '', 5, 4);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (61, '���������', '', 5, 5);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (62, '���뷽������', '', 5, 6);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (63, '�û�ϲ������', '', 5, 7);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (64, '������', 'javascript:getCalc();', 5, 8);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (65, '���±�', 'javascript:getnotepad();', 5, 9);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (66, '����������ѯ', '', 5, 10);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (67, 'ϵͳ������Ϣ', '', 5, 11);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (68, 'ϵͳʱ��У׼', '', 5, 12);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (69, '���������ļ�', '', 5, 13);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (70, '���ݱ���', '', 5, 14);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (71, '���ݻָ�', '', 5, 15);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (72, '���ݿ��Ż�', '', 5, 16);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (73, '����ƽ̨', '', 5, 17);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (74, 'ϵͳ��־', '', 5, 18);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (75, '���µ���', '', 5, 19);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (76, '�˳�ϵͳ', '', 5, 20);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (77, 'ϵͳ�������', '', 0, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (78, '�����ֵ�', '', 77, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (79, '���Ҳ���', '/admin/dept.do?task=deptList', 77, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (80, '���µ���', '/admin/files.do?task=filesList', 77, 3);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (81, '��������', '/admin/sickbed.do?task=sickbedList', 77, 4);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (82, '���ܿ�Ŀ', '', 77, 5);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (83, '�շ���Ŀ', '', 77, 6);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (84, '�Һ����', '', 77, 7);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (85, '������λ', '', 77, 8);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (86, '��������', '', 77, 9);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (87, '��������', '', 77, 10);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (88, 'ǩԼ��λ', '', 77, 11);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (89, '���߷���', '', 77, 12);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (90, '���ߵ���', '', 77, 13);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (91, '���ʲ���', '', 77, 14);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (92, '����ģ�����', '', 77, 15);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (93, '����ģ������ά��', '', 77, 16);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (94, '����ģ������ά��', '', 77, 17);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (95, '���˼��������ռ�', '', 77, 18);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (96, '���߰�Ȩ����', '', 77, 19);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (97, '�ͻ�����', '', 0, 8);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (98, '�ͻ�����', '', 97, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (99, '�˻�Ԥ��', '', 97, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (100, '�ͻ��ط�', '', 97, 3);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (101, '�ط�����', '', 97, 4);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (102, '�˻���ϸ', '', 97, 5);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (103, '����ԤԼ', '', 97, 6);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (104, 'ԤԼ�б�', '', 97, 7);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (105, '��Ա����', '', 97, 8);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (106, '��Ա������', '', 97, 9);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (107, 'IC������', '', 97, 10);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (108, 'IC������', '', 97, 11);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (109, 'IC�������', '', 97, 12);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (110, 'IC����������', '', 97, 13);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (111, 'У�鹦��', '', 97, 14);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (112, 'ְ�������ն�', '', 0, 3);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (113, 'ְ������֧��', '', 112, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (114, 'ְ�����ò�ѯ', '', 112, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (115, '��ʦ�������', '', 112, 3);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (116, 'ְҵ��ͳ��', '', 112, 4);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (117, '����ҵ������ͳ��', '', 112, 5);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (118, '����ҵ������ͳ��', '', 112, 6);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (119, '�����ų�ҵ��ͳ��', '', 112, 7);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (120, 'Ĭ�ϲ���', '', 0, 9);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (121, 'Ƶ������', '', 120, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (122, 'վ�����', '', 120, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (123, '������־��ѯ', '', 120, 3);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (124, '�����ײ�', '', 120, 4);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (125, '�ײʹ���', '', 120, 5);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (126, '�Żݲ���', '', 120, 6);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (127, 'Ʊ�ݴ�ӡ', '', 120, 7);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (128, '�˻���Ϣ��ѯ', '', 0, 4);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (129, '������������嵥', '', 128, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (130, '����������ϸ�嵥', '', 128, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (131, '����סԺ�����嵥', '', 128, 3);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (132, '����סԺ��ϸ�嵥', '', 128, 4);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (133, '��Ժ���߻����嵥', '', 128, 5);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (134, '���߽ɿ���ϸ�嵥', '', 128, 6);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (135, '������Ŀ�����嵥', '', 128, 7);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (136, 'ȫԺ������Ժ����', '', 128, 8);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (1, '�������', '', 0, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (2, '�ճ����Ʋ���', '', 0, 5);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (3, '���Ʊ������', '', 0, 6);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (4, '���Ʋ�ѯ����', '', 0, 7);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (5, 'ϵͳ��������', '', 0, 10);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (6, '�ҺŹ���', '/admin/client.do?task=clientList', 1, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (7, '����Һ�', '/admin/rule.do?task=ruleList', 1, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (8, '���˹���', '/admin/client.do?task=clientList', 1, 3);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (9, '��Ա����', '/admin/client.do?task=distributeList', 1, 4);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (10, 'ԤԼ����', '/admin/client.do?task=deployList', 1, 5);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (11, '�ҺŻ����շ�', '/admin/client.do?task=acceptList', 1, 6);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (12, '�Һ��շ��б�', '/admin/client.do?task=toImport', 1, 7);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (13, '����ҺŻ���', '/admin/business.do?task=toRegister', 1, 8);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (14, '����ҺŻ����б�', '/admin/business.do?task=searchBusinessList', 1, 9);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (34, '�����߻���', '/admin/rule.do?task=searchRuleLog', 1, 10);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (15, '�������ƴ���', '/admin/group.do?task=showGroup&mark=1', 2, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (16, '�������ƴ���', '/admin/group.do?task=showGroup&mark=2', 2, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (17, '���ﲡ����д', '/admin/groupDistribute.do?task=noDistributeList', 2, 3);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (18, '����֤������', '/admin/groupDistribute.do?task=hasDistributeList', 2, 4);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (19, '������Ժ����', '/admin/groupView.do?task=groupList', 2, 5);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (20, '���߼���֤��', '/admin/groupView.do?task=gruserManager', 2, 6);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (21, '����ͼ�����', '/admin/groupDistribute.do?task=grhistlist', 2, 7);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (22, '���ƴ�����ѯ', '/admin/union.do?task=showUnion', 3, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (23, '���Ƽ���ѯ', '/admin/clubnetwork.do?task=clubNetworkList', 3, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (24, '����������', '/admin/activity.do?task=showActivity', 3, 3);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (25, '���߲�����ѯ', '/admin/score.do?task=applyList', 4, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (26, '����������ѯ', '/admin/present.do?task=pay', 4, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (27, '�����Զ���ѯ', '/admin/present.do?task=presentList', 4, 3);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (28, '�շ���Ŀ��ѯ', '/admin/score.do?task=searchMonth', 4, 4);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (29, '�����շѲ�ѯ', '/admin/score.do?task=searchChange', 4, 5);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (30, '���ߵ��۲�ѯ', '/admin/score.do?task=searchLog', 4, 6);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (31, '�û�����', '/admin/user.do?task=showUser', 5, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (32, '��ɫ����', '/admin/role.do?task=roleList', 5, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (33, '�����ֵ�', '/admin/data.do?task=dataList', 5, 3);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (35, '��Ǳ�ڼ��Ź���', '/admin/group.do?task=showGroup&mark=0', 2, 9);





insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (15, 'Ǳ�ڼ��Ź���', '/admin/group.do?task=showGroup'||'&'||'mark=1', 2, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (16, '��ʽ���Ź���', '/admin/group.do?task=showGroup'||'&'||'mark=2', 2, 2);

insert into T_POWER (ID, POWERNAME, URL, PARENTID,sortid)
values (17, '���ŷ���', '/admin/groupDistribute.do?task=noDistributeList', 2, 3);

insert into T_POWER (ID, POWERNAME, URL, PARENTID,sortid)
values (18, '���ŵ���', '/admin/groupDistribute.do?task=hasDistributeList', 2, 4);

insert into T_POWER (ID, POWERNAME, URL, PARENTID,sortid)
values (19, '������ͼ����', '/admin/groupView.do?task=groupList', 2, 5);

insert into T_POWER (ID, POWERNAME, URL, PARENTID,sortid)
values (20, '���ſͻ�����', '/admin/groupView.do?task=gruserManager', 2, 6);

insert into T_POWER (ID, POWERNAME, URL, PARENTID,sortid)
values (21, '��ʷ��¼����', '/admin/groupDistribute.do?task=grhistlist', 2, 7);


insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (22, '�����̼ҹ���', '/admin/union.do?task=showUnion', 3, 1);

insert into T_POWER (ID, POWERNAME, URL, PARENTID,sortid)
values (23, '���ֲ�����','/admin/clubnetwork.do?task=clubNetworkList', 3,2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (24, '�����', '/admin/activity.do?task=showActivity', 3, 3);


insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (25, '��������', '/admin/score.do?task=applyList', 4, 1);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (26, '��������', '/admin/present.do?task=pay', 4, 2);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (27, '��Ʒ����', '/admin/present.do?task=presentList', 4, 3);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (28, '���ֲ�ѯ', '/admin/score.do?task=searchMonth', 4, 4);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (29, '�������Ѳ�ѯ', '/admin/score.do?task=searchChange', 4, 5);

insert into t_power (ID, POWERNAME, URL, PARENTID, SORTID)
values (30, '������־��ѯ', '/admin/score.do?task=searchLog', 4, 6);


insert into T_POWER (ID, POWERNAME, URL, PARENTID,sortid)
values (31, '�û�����','/admin/user.do?task=showUser',5,1);

insert into T_POWER (ID, POWERNAME, URL, PARENTID,sortid)
values (32, '��ɫ����','/admin/role.do?task=roleList',5,2);

insert into T_POWER (ID, POWERNAME, URL, PARENTID,sortid)
values (33, '�����ֵ�','/admin/data.do?task=dataList',5,3);

insert into T_POWER (ID, POWERNAME, URL, PARENTID,sortid)
values (35, '��Ǳ�ڼ��Ź���','/admin/group.do?task=showGroup'||'&'||'mark=0',2,9);

/*==============================================================*/
/* Table: "t_rolePower"      ��ɫȨ�ޱ�                         */
/*==============================================================*/
create table t_rolePower(
   id number primary key,	--��ɫȨ��ID
   ROLEID number,		--��ɫID 
   POWERID number		--Ȩ��ID
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
/* Table: "t_data"       �����ֵ�                        */
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
values (1, 'Ʒ��', 0, '');

insert into t_data (ID, NAME, PID, TRADE)
values (10, '�����', 1, '');

insert into t_data (ID, NAME, PID, TRADE)
values (11, '������', 1, '');

insert into t_data (ID, NAME, PID, TRADE)
values (12, '��ʱ��', 1, '');

insert into t_data (ID, NAME, PID, TRADE)
values (13, '����ͨ', 1, '');

insert into t_data (ID, NAME, PID, TRADE)
values (2, 'VIP�ȼ�', 0, '');

insert into t_data (ID, NAME, PID, TRADE)
values (20, 'שʯ��', 2, '');

insert into t_data (ID, NAME, PID, TRADE)
values (21, '��', 2, '');

insert into t_data (ID, NAME, PID, TRADE)
values (22, '����', 2, '');

insert into t_data (ID, NAME, PID, TRADE)
values (51, '���', 4, '0 ');

insert into t_data (ID, NAME, PID, TRADE)
values (3, '��ҵ', 0, '');

insert into t_data (ID, NAME, PID, TRADE)
values (30, '����', 3, '00');

insert into t_data (ID, NAME, PID, TRADE)
values (31, '��������', 3, '01');

insert into t_data (ID, NAME, PID, TRADE)
values (32, '����ϵͳ', 3, '02');

insert into t_data (ID, NAME, PID, TRADE)
values (33, '����ϵͳ', 3, '03');

insert into t_data (ID, NAME, PID, TRADE)
values (34, '����/����/ú̿/��Դ', 3, '04');

insert into t_data (ID, NAME, PID, TRADE)
values (35, '����', 3, '05');

insert into t_data (ID, NAME, PID, TRADE)
values (36, '����/˰��', 3, '06');

insert into t_data (ID, NAME, PID, TRADE)
values (37, '����/����', 3, '07');

insert into t_data (ID, NAME, PID, TRADE)
values (38, '����/����/�Ƶ�/����', 3, '08');

insert into t_data (ID, NAME, PID, TRADE)
values (39, 'IT/ͨ��', 3, '09');

insert into t_data (ID, NAME, PID, TRADE)
values (40, 'ҽҩ/ҽ��/����', 3, '10');

insert into t_data (ID, NAME, PID, TRADE)
values (41, '�̲�', 3, '11');

insert into t_data (ID, NAME, PID, TRADE)
values (42, '����/����/װ��/�����ҵ', 3, '12');

insert into t_data (ID, NAME, PID, TRADE)
values (43, 'ʯ��/����/�ɾ�/ұ��', 3, '13');

insert into t_data (ID, NAME, PID, TRADE)
values (44, '��ҵ/����/����/ó��', 3, '14');

insert into t_data (ID, NAME, PID, TRADE)
values (45, '����/����/�ӹ�', 3, '15');

insert into t_data (ID, NAME, PID, TRADE)
values (46, '����/��/ũ/��', 3, '16');

insert into t_data (ID, NAME, PID, TRADE)
values (47, '��ˮ/ˮ��', 3, '17');

insert into t_data (ID, NAME, PID, TRADE)
values (48, '��ͨ', 3, '18');

insert into t_data (ID, NAME, PID, TRADE)
values (49, '������', 3, '19');

insert into t_data (ID, NAME, PID, TRADE)
values (50, '����/����/ý��', 3, '20');

insert into t_data (ID, NAME, PID, TRADE)
values (52, '�޸�', 4, '1 ');

insert into t_data (ID, NAME, PID, TRADE)
values (4, '��������', 0, '');

insert into t_data (ID, NAME, PID, TRADE)
values (53, 'ɾ��', 4, '2 ');

insert into t_data (ID, NAME, PID, TRADE)
values (5, '���ŵȼ�', 0, '');

insert into t_data (ID, NAME, PID, TRADE)
values (60, '���Ǽ�', 5, '');

insert into t_data (ID, NAME, PID, TRADE)
values (61, '���Ǽ�', 5, '');

insert into t_data (ID, NAME, PID, TRADE)
values (62, '���Ǽ�', 5, '');

insert into t_data (ID, NAME, PID, TRADE)
values (63, '���Ǽ�', 5, '');

insert into t_data (ID, NAME, PID, TRADE)
values (6, 'ҵ����', 0, '');

insert into t_data (ID, NAME, PID, TRADE)
values (71, '�Ѵ���', 6, '');

insert into t_data (ID, NAME, PID, TRADE)
values (72, 'δ����', 6, '');

insert into t_data (ID, NAME, PID, TRADE)
values (73, '������', 6, '');

insert into t_data (ID, NAME, PID, TRADE)
values (74, '�޷�����', 6, '');

insert into t_data (ID, NAME, PID, TRADE)
values (7, '����״̬', 0, '');

insert into t_data (ID, NAME, PID, TRADE)
values (81, 'δ����', 7, '');

insert into t_data (ID, NAME, PID, TRADE)
values (82, '�ѷ���δ����', 7, '');

insert into t_data (ID, NAME, PID, TRADE)
values (83, '�ѽ���', 7, '');

insert into t_data (ID, NAME, PID, TRADE)
values (90, '��������', 0, '');

insert into t_data (ID, NAME, PID, TRADE)
values (91, '����һ', 90, '');

insert into t_data (ID, NAME, PID, TRADE)
values (92, '���Ͷ�', 90, '');

insert into t_data (ID, NAME, PID, TRADE)
values (93, '������', 90, '');

insert into t_data (ID, NAME, PID, TRADE)
values (8, '�����������', 0, '');

insert into t_data (ID, NAME, PID, TRADE)
values (94, '���ں���', 8, '');

insert into t_data (ID, NAME, PID, TRADE)
values (95, '���ں���', 8, '');

insert into t_data (ID, NAME, PID, TRADE)
values (96, '���ں���', 8, '');

insert into t_data (ID, NAME, PID, TRADE)
values (9, '��Ӫ״��', 0, '');

insert into t_data (ID, NAME, PID, TRADE)
values (97, '��', 9, '');

insert into t_data (ID, NAME, PID, TRADE)
values (98, '����', 9, '');

insert into t_data (ID, NAME, PID, TRADE)
values (99, 'һ��', 9, '');

insert into t_data (ID, NAME, PID, TRADE)
values (100, '��', 9, '');

insert into t_data (ID, NAME, PID, TRADE)
values (101, '��ҵ����', 0, '');

insert into t_data (ID, NAME, PID, TRADE)
values (102, '������ҵ', 101, '');

insert into t_data (ID, NAME, PID, TRADE)
values (103, '˽Ӫ��ҵ', 101, '');

insert into t_data (ID, NAME, PID, TRADE)
values (104, '�Ԥ��', 0, '');

insert into t_data (ID, NAME, PID, TRADE)
values (105, '��������', 104, '');

insert into t_data (ID, NAME, PID, TRADE)
values (106, '����', 104, '');

insert into t_data (ID, NAME, PID, TRADE)
values (107, '�����', 104, '');

insert into t_data (ID, NAME, PID, TRADE)
values (107, '��ϵ��', 104, '');