drop table vip_province cascade constraints;

/*==============================================================*/
/* Table: vip_province                                          */
/*==============================================================*/
create table vip_province  (
   n_id                 NUMBER,
   v_code               CHAR(3),
   v_name               VARCHAR2(20),
   constraint PK_VIP_PROVINCE primary key (n_id)
);

comment on table vip_province is 'ʡ��';
comment on column vip_province.n_id is '���';
comment on column vip_province.v_code is '����';
comment on column vip_province.v_name is '����';

-- ��������
drop sequence seq_province;
create sequence seq_province;

-- ��ӳ�ʼ����
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '110', '������');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '120', '�����');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '130', '�ӱ�ʡ');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '140', 'ɽ��ʡ');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '150', '���ɹ�������');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '210', '����ʡ');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '220', '����ʡ');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '230', '������ʡ');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '310', '�Ϻ���');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '320', '����ʡ');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '330', '�㽭ʡ');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '340', '����ʡ');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '350', '����ʡ');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '360', '����ʡ');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '370', 'ɽ��ʡ');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '410', '����ʡ');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '420', '����ʡ');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '430', '����ʡ');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '440', '�㶫ʡ');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '450', '����׳��������');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '460', '����ʡ');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '500', '������');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '510', '�Ĵ�ʡ');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '520', '����ʡ');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '530', '����ʡ');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '540', '����������');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '610', '����ʡ');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '620', '����ʡ');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '630', '�ຣʡ');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '640', '���Ļ���������');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '650', '�½�ά���������');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '710', '̨��ʡ');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '810', '����ر�������');
insert into VIP_PROVINCE (N_ID, V_CODE, V_NAME)
values (seq_province.nextval, '820', '�����ر�������');

commit;