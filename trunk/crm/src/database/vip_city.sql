
drop table vip_city cascade constraints;

/*==============================================================*/
/* Table: vip_city                                              */
/*==============================================================*/
create table vip_city  (
   n_id                 NUMBER,
   v_code               CHAR(2),
   v_name               VARCHAR2(22),
   v_province           CHAR(3),
   constraint PK_VIP_CITY primary key (n_id)
);

comment on table vip_city is '���б�';
comment on column vip_city.n_id is '���';
comment on column vip_city.v_code is '����';
comment on column vip_city.v_name is '����';
comment on column vip_city.v_province is 'ʡ���';

-- ��������
drop sequence seq_city;
create sequence seq_city;

-- ��ӳ�ʼ����
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '��Ͻ��', '110');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '��', '110');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '��Ͻ��', '120');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '��', '120');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', 'ʯ��ׯ��', '130');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '��ɽ��', '130');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', '�ػʵ���', '130');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '04', '������', '130');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '05', '��̨��', '130');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '06', '������', '130');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '07', '�żҿ���', '130');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '08', '�е���', '130');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '09', '������', '130');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '10', '�ȷ���', '130');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '11', '��ˮ��', '130');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '̫ԭ��', '140');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '��ͬ��', '140');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', '��Ȫ��', '140');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '04', '������', '140');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '05', '������', '140');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '06', '˷����', '140');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '07', '������', '140');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '08', '�˳���', '140');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '09', '������', '140');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '10', '�ٷ���', '140');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '11', '������', '140');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '���ͺ�����', '150');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '��ͷ��', '150');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', '�ں���', '150');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '04', '�����', '150');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '05', 'ͨ����', '150');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '06', '������˹��', '150');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '07', '���ױ�����', '150');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '08', '�����׶���', '150');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '09', '�����첼��', '150');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '22', '�˰���', '150');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '25', '���ֹ�����', '150');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '29', '��������', '150');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '������', '210');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '������', '210');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', '��ɽ��', '210');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '04', '��˳��', '210');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '05', '��Ϫ��', '210');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '06', '������', '210');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '07', '������', '210');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '08', 'Ӫ����', '210');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '09', '������', '210');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '10', '������', '210');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '11', '�̽���', '210');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '12', '������', '210');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '13', '������', '210');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '14', '��«����', '210');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '������', '220');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '������', '220');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', '��ƽ��', '220');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '04', '��Դ��', '220');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '05', 'ͨ����', '220');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '06', '��ɽ��', '220');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '07', '��ԭ��', '220');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '08', '�׳���', '220');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '24', '�ӱ߳�����������', '220');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '��������', '230');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '���������', '230');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', '������', '230');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '04', '�׸���', '230');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '05', '˫Ѽɽ��', '230');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '06', '������', '230');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '07', '������', '230');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '08', '��ľ˹��', '230');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '09', '��̨����', '230');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '10', 'ĵ������', '230');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '11', '�ں���', '230');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '12', '�绯��', '230');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '27', '���˰������', '230');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '��Ͻ��', '310');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '��', '310');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '�Ͼ���', '320');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '������', '320');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', '������', '320');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '04', '������', '320');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '05', '������', '320');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '06', '��ͨ��', '320');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '07', '���Ƹ���', '320');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '08', '������', '320');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '09', '�γ���', '320');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '10', '������', '320');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '11', '����', '320');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '12', '̩����', '320');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '13', '��Ǩ��', '320');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '������', '330');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '������', '330');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', '������', '330');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '04', '������', '330');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '05', '������', '330');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '06', '������', '330');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '07', '����', '330');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '08', '������', '330');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '09', '��ɽ��', '330');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '10', '̨����', '330');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '11', '��ˮ��', '330');
commit;
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '�Ϸ���', '340');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '�ߺ���', '340');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', '������', '340');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '04', '������', '340');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '05', '��ɽ��', '340');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '06', '������', '340');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '07', 'ͭ����', '340');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '08', '������', '340');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '10', '��ɽ��', '340');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '11', '������', '340');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '12', '������', '340');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '13', '������', '340');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '14', '������', '340');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '15', '������', '340');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '16', '������', '340');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '17', '������', '340');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '18', '������', '340');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '������', '350');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '������', '350');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', '������', '350');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '04', '������', '350');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '05', 'Ȫ����', '350');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '06', '������', '350');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '07', '��ƽ��', '350');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '08', '������', '350');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '09', '������', '350');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '�ϲ���', '360');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '��������', '360');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', 'Ƽ����', '360');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '04', '�Ž���', '360');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '05', '������', '360');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '06', 'ӥ̶��', '360');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '07', '������', '360');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '08', '������', '360');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '09', '�˴���', '360');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '10', '������', '360');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '11', '������', '360');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '������', '370');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '�ൺ��', '370');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', '�Ͳ���', '370');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '04', '��ׯ��', '370');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '05', '��Ӫ��', '370');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '06', '��̨��', '370');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '07', 'Ϋ����', '370');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '08', '������', '370');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '09', '̩����', '370');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '10', '������', '370');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '11', '������', '370');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '12', '������', '370');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '13', '������', '370');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '14', '������', '370');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '15', '�ĳ���', '370');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '16', '������', '370');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '17', '������', '370');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '֣����', '410');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '������', '410');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', '������', '410');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '04', 'ƽ��ɽ��', '410');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '05', '������', '410');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '06', '�ױ���', '410');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '07', '������', '410');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '08', '������', '410');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '09', '�����', '410');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '10', '�����', '410');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '11', '�����', '410');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '12', '����Ͽ��', '410');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '13', '������', '410');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '14', '������', '410');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '15', '������', '410');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '16', '�ܿ���', '410');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '17', 'פ�����', '410');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '�人��', '420');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '��ʯ��', '420');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', 'ʮ����', '420');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '05', '�˲���', '420');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '06', '�差��', '420');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '07', '������', '420');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '08', '������', '420');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '09', 'Т����', '420');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '10', '������', '420');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '11', '�Ƹ���', '420');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '12', '������', '420');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '13', '������', '420');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '28', '��ʩ����������������', '420');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '90', 'ʡֱϽ������λ', '420');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '��ɳ��', '430');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '������', '430');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', '��̶��', '430');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '04', '������', '430');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '05', '������', '430');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '06', '������', '430');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '07', '������', '430');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '08', '�żҽ���', '430');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '09', '������', '430');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '10', '������', '430');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '11', '������', '430');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '12', '������', '430');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '13', '¦����', '430');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '31', '��������������������', '430');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '������', '440');
commit;
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '�ع���', '440');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', '������', '440');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '04', '�麣��', '440');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '05', '��ͷ��', '440');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '06', '��ɽ��', '440');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '07', '������', '440');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '08', 'տ����', '440');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '09', 'ï����', '440');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '12', '������', '440');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '13', '������', '440');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '14', '÷����', '440');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '15', '��β��', '440');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '16', '��Դ��', '440');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '17', '������', '440');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '18', '��Զ��', '440');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '19', '��ݸ��', '440');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '20', '��ɽ��', '440');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '51', '������', '440');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '52', '������', '440');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '53', '�Ƹ���', '440');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '������', '450');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '������', '450');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', '������', '450');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '04', '������', '450');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '05', '������', '450');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '06', '���Ǹ���', '450');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '07', '������', '450');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '08', '�����', '450');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '09', '������', '450');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '10', '��ɫ��', '450');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '11', '������', '450');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '12', '�ӳ���', '450');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '13', '������', '450');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '14', '������', '450');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '������', '460');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '������', '460');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '90', 'ʡֱϽ�ؼ�������λ', '460');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '��Ͻ��', '500');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '��', '500');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', '��', '500');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '�ɶ���', '510');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', '�Թ���', '510');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '04', '��֦����', '510');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '05', '������', '510');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '06', '������', '510');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '07', '������', '510');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '08', '��Ԫ��', '510');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '09', '������', '510');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '10', '�ڽ���', '510');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '11', '��ɽ��', '510');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '13', '�ϳ���', '510');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '14', 'üɽ��', '510');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '15', '�˱���', '510');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '16', '�㰲��', '510');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '17', '������', '510');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '18', '�Ű���', '510');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '19', '������', '510');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '20', '������', '510');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '32', '���Ӳ���Ǽ��������', '510');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '33', '���β���������', '510');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '34', '��ɽ����������', '510');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '������', '520');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '����ˮ��', '520');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', '������', '520');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '04', '��˳��', '520');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '22', 'ͭ�ʵ���', '520');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '23', 'ǭ���ϲ���������������', '520');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '24', '�Ͻڵ���', '520');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '26', 'ǭ�������嶱��������', '520');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '27', 'ǭ�ϲ���������������', '520');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '������', '530');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', '������', '530');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '04', '��Ϫ��', '530');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '05', '��ɽ��', '530');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '06', '��ͨ��', '530');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '07', '������', '530');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '08', '˼é��', '530');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '09', '�ٲ���', '530');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '23', '��������������', '530');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '25', '��ӹ���������������', '530');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '26', '��ɽ׳������������', '530');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '28', '��˫���ɴ���������', '530');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '29', '�������������', '530');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '31', '�º���徰����������', '530');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '33', 'ŭ��������������', '530');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '34', '�������������', '530');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '������', '540');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '21', '��������', '540');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '22', 'ɽ�ϵ���', '540');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '23', '�տ������', '540');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '24', '��������', '540');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '25', '�������', '540');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '26', '��֥����', '540');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '������', '610');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', 'ͭ����', '610');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', '������', '610');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '04', '������', '610');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '05', 'μ����', '610');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '06', '�Ӱ���', '610');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '07', '������', '610');
commit;
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '08', '������', '610');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '09', '������', '610');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '10', '������', '610');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '������', '620');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '��������', '620');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', '�����', '620');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '04', '������', '620');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '05', '��ˮ��', '620');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '06', '������', '620');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '07', '��Ҵ��', '620');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '08', 'ƽ����', '620');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '09', '��Ȫ��', '620');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '10', '������', '620');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '11', '������', '620');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '12', '¤����', '620');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '29', '���Ļ���������', '620');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '30', '���ϲ���������', '620');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '������', '630');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '21', '��������', '630');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '22', '��������������', '630');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '23', '���ϲ���������', '630');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '25', '���ϲ���������', '630');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '26', '�������������', '630');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '27', '��������������', '630');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '28', '�����ɹ������������', '630');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '������', '640');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', 'ʯ��ɽ��', '640');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '03', '������', '640');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '04', '��ԭ��', '640');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '05', '������', '640');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '01', '��³ľ����', '650');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '02', '����������', '650');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '21', '��³������', '650');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '22', '���ܵ���', '650');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '23', '��������������', '650');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '27', '���������ɹ�������', '650');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '28', '���������ɹ�������', '650');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '29', '�����յ���', '650');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '30', '�������տ¶�����������', '650');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '31', '��ʲ����', '650');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '32', '�������', '650');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '40', '���������������', '650');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '42', '���ǵ���', '650');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '43', '����̩����', '650');
insert into VIP_CITY (N_ID, V_CODE, V_NAME, V_PROVINCE)
values (seq_city.nextval, '90', 'ʡֱϽ������λ', '650');
commit;