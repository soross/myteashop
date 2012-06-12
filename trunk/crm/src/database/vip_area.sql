
drop table vip_area cascade constraints;

/*==============================================================*/
/* Table: vip_area                                              */
/*==============================================================*/
create table vip_area  (
   n_id                 NUMBER                          not null,
   v_code               CHAR(2),
   v_name               VARCHAR2(30),
   v_city               CHAR(5),
   constraint PK_VIP_AREA primary key (n_id)
);

comment on table vip_area is '������';
comment on column vip_area.n_id is '���';
comment on column vip_area.v_code is '����';
comment on column vip_area.v_name is '����';
comment on column vip_area.v_city is '���б��';

-- ��������
drop sequence seq_area;
create sequence seq_area;

-- ��ӳ�ʼ����
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '������', '11001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '11001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '11001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '������', '11001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '������', '11001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '��̨��', '11001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', 'ʯ��ɽ��', '11001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '08', '������', '11001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '09', '��ͷ����', '11001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '��ɽ��', '11001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', 'ͨ����', '11001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '13', '˳����', '11001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '14', '��ƽ��', '11001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '15', '������', '11001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '16', '������', '11001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '17', 'ƽ����', '11001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '������', '11002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '������', '11002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��ƽ��', '12001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�Ӷ���', '12001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '12001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '�Ͽ���', '12001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '�ӱ���', '12001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '������', '12001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '������', '12001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '08', '������', '12001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '09', '�����', '12001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '10', '������', '12001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '������', '12001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '������', '12001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '13', '������', '12001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '14', '������', '12001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '15', '������', '12001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '12002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '12002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '12002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '�Ŷ���', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '������', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '�»���', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '�������', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '08', 'ԣ����', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '�����', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '������', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '������', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '�޻���', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '�޼���', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', 'ƽɽ��', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', 'Ԫ����', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '33', '�ԡ���', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '޻����', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '������', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '������', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '85', '¹Ȫ��', '13001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '13002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '·����', '13002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '·����', '13002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '��ұ��', '13002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '��ƽ��', '13002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '������', '13002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '08', '������', '13002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '�С���', '13002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '13002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '��ͤ��', '13002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', 'Ǩ����', '13002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '������', '13002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '�ƺ���', '13002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '����', '13002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', 'Ǩ����', '13002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '13003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '13003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', 'ɽ������', '13003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '��������', '13003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '��������������', '13003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '13003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '13003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '¬����', '13003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '13004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '��ɽ��', '13004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '��̨��', '13004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '������', '13004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '������', '13004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '13004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '13004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '�ɰ���', '13004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '13004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '�桡��', '13004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '�š���', '13004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '������', '13004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '������', '13004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '����', '13004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '������', '13004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', '��ƽ��', '13004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '33', '������', '13004');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '34', 'κ����', '13004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '35', '������', '13004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '�䰲��', '13004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '13005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�Ŷ���', '13005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '13005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '��̨��', '13005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�ٳ���', '13005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '13005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '13005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '¡Ң��', '13005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '�Ρ���', '13005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '�Ϻ���', '13005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '������', '13005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '��¹��', '13005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '�º���', '13005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '������', '13005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', 'ƽ����', '13005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '33', '������', '13005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '34', '�����', '13005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '35', '������', '13005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '�Ϲ���', '13005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', 'ɳ����', '13005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '������', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '��Է��', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '�ˮ��', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '��ƽ��', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '��ˮ��', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '�ơ���', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '������', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '�ݳ���', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '�Դ��', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '������', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', '������', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '33', '�ס���', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '34', '������', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '35', '󻡡��', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '36', '˳ƽ��', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '37', '��Ұ��', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '38', '�ۡ���', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '������', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '������', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '�߱�����', '13006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '13007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�Ŷ���', '13007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '13007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '������', '13007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '�»�԰��', '13007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '13007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�ű���', '13007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '13007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '��Դ��', '13007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '13007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', 'ε����', '13007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '��ԭ��', '13007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '������', '13007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '��ȫ��', '13007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '������', '13007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '��¹��', '13007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', '�����', '13007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '33', '������', '13007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '13008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '˫����', '13008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '˫����', '13008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', 'ӥ��Ӫ�ӿ���', '13008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '�е���', '13008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '��¡��', '13008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', 'ƽȪ��', '13008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '��ƽ��', '13008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '¡����', '13008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '��������������', '13008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '�������������', '13008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', 'Χ�������ɹ���������', '13008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '13009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�»���', '13009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '�˺���', '13009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '�ס���', '13009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�ࡡ��', '13009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '13009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '13009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '��ɽ��', '13009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������', '13009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '��Ƥ��', '13009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '������', '13009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '�ס���', '13009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '�ϴ����������', '13009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '��ͷ��', '13009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '������', '13009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '������', '13009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '�Ӽ���', '13009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '13010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '13010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '13010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�̰���', '13010');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '13010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '�����', '13010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '�����', '13010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '�İ���', '13010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '�󳧻���������', '13010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '13010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '������', '13010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '13011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�ҳ���', '13011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '��ǿ��', '13011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '13011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��ǿ��', '13011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '13011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '��ƽ��', '13011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '�ʳ���', '13011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '������', '13011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '������', '13011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '13011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '������', '13011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '14001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', 'С����', '14001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', 'ӭ����', '14001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '�ӻ�����', '14001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '08', '���ƺ��', '14001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '09', '�������', '14001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '10', '��Դ��', '14001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '14001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '14001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '¦����', '14001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '�Ž���', '14001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '14002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�ǡ���', '14002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '����', '14002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '�Ͻ���', '14002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '������', '14002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '14002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '14002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '14002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '14002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '��Դ��', '14002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������', '14002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '��ͬ��', '14002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '14003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�ǡ���', '14003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '����', '14003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '������', '14003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', 'ƽ����', '14003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�ۡ���', '14003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '14004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�ǡ���', '14004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '������', '14004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '14004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��ԫ��', '14004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '14004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', 'ƽ˳��', '14004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '�����', '14004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '������', '14004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '������', '14004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '������', '14004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '�ߡ���', '14004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '��Դ��', '14004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', 'º����', '14004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '14005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�ǡ���', '14005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '��ˮ��', '14005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '14005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '�괨��', '14005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '14005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '��ƽ��', '14005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '14006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '˷����', '14006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', 'ƽ³��', '14006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', 'ɽ����', '14006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', 'Ӧ����', '14006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '14006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '14006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '14007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�ܴ���', '14007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '14007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '��Ȩ��', '14007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��˳��', '14007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '14007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '14007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '̫����', '14007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '���', '14007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', 'ƽң��', '14007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '��ʯ��', '14007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '14007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '14008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�κ���', '14008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '�����', '14008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '14008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��ϲ��', '14008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '�ɽ��', '14008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '�����', '14008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '筡���', '14008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', 'ԫ����', '14008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '�ġ���', '14008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', 'ƽ½��', '14008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '�ǳ���', '14008');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '14008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '�ӽ���', '14008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '14009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�ø���', '14009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '14009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '��̨��', '14009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '14009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '14009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '14009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������', '14009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '�����', '14009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '��կ��', '14009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '����', '14009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '������', '14009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '������', '14009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', 'ƫ����', '14009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', 'ԭƽ��', '14009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '14010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', 'Ң����', '14010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '14010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�����', '14010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '�����', '14010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '�鶴��', '14010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '�š���', '14010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������', '14010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '��ɽ��', '14010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '������', '14010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '������', '14010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '������', '14010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '������', '14010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', '������', '14010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '33', '�ѡ���', '14010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '34', '������', '14010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '14010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '������', '14010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '14011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '��ʯ��', '14011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '��ˮ��', '14011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '14011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '�ˡ���', '14011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '�١���', '14011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '14011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', 'ʯ¥��', '14011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', 'ᰡ���', '14011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '��ɽ��', '14011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '������', '14011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '������', '14011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', 'Т����', '14011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '������', '14011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '15001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�³���', '15001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '15001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '��Ȫ��', '15001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '������', '15001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '��Ĭ������', '15001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�п�����', '15001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '���ָ����', '15001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '��ˮ����', '15001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '�䴨��', '15001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '15002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '15002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '��������', '15002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '��ɽ��', '15002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', 'ʯ����', '15002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '���ƿ���', '15002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '��ԭ��', '15002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '��Ĭ������', '15002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '15002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '�����ï����������', '15002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '15003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '��������', '15003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '15003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '�ڴ���', '15003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '15004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '��ɽ��', '15004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', 'Ԫ��ɽ��', '15004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '��ɽ��', '15004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '��³�ƶ�����', '15004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '��������', '15004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��������', '15004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '15004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '��ʲ������', '15004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '��ţ����', '15004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '��������', '15004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '������', '15004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '������', '15004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '15005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�ƶ�����', '15005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '�ƶ�����������', '15005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�ƶ����������', '15005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��³��', '15005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '15005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '15005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '��³����', '15005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '���ֹ�����', '15005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '��ʤ��', '15006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '��������', '15006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '׼�����', '15006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '���п�ǰ��', '15006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '���п���', '15006');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '15006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������', '15006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '���������', '15006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '15007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '��������', '15007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '15007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', 'Ī�����ߴ��Ӷ���������', '15007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '���״�������', '15007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '���¿���������', '15007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '�°Ͷ�����', '15007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '�°Ͷ�������', '15007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '�°Ͷ�������', '15007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '��������', '15007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '����ʯ��', '15007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '��������', '15007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '���������', '15007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '85', '������', '15007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '15008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�ٺ���', '15008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '��ԭ��', '15008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�����', '15008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������ǰ��', '15008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '����������', '15008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '�����غ���', '15008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '��������', '15008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '15009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '15009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '׿����', '15009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '15009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '�̶���', '15009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '�˺���', '15009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '15009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '���������ǰ��', '15009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '�������������', '15009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '������������', '15009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '��������', '15009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '15009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '����������', '15022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '����ɽ��', '15022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '�ƶ�������ǰ��', '15022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�ƶ�����������', '15022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��������', '15022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', 'ͻȪ��', '15022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '����������', '15025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '���ֺ�����', '15025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '���͸���', '15025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '����������', '15025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '����������', '15025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������������', '15025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������������', '15025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '̫������', '15025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '�����', '15025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '�������', '15025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '������', '15025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '������', '15025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '����������', '15029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '����������', '15029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '�������', '15029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '21001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '��ƽ��', '21001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '�����', '21001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '����', '21001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '�ʹ���', '21001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '������', '21001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '�ռ�����', '21001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '������', '21001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '13', '�³�����', '21001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '14', '�ں���', '21001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '21001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��ƽ��', '21001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '21001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '21001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '21002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '��ɽ��', '21002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '21002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', 'ɳ�ӿ���', '21002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '�ʾ�����', '21002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '��˳����', '21002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '13', '������', '21002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '21002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '�߷�����', '21002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '��������', '21002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', 'ׯ����', '21002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '21003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '21003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '21003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '��ɽ��', '21003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', 'ǧɽ��', '21003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '̨����', '21003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '�������������', '21003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '21003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '21004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�¸���', '21004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '21004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '������', '21004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '˳����', '21004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '��˳��', '21004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�±�����������', '21004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��ԭ����������', '21004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '21005');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', 'ƽɽ��', '21005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', 'Ϫ����', '21005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '��ɽ��', '21005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '�Ϸ���', '21005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '��Ϫ����������', '21005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '��������������', '21005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '21006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', 'Ԫ����', '21006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '21006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '����', '21006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '�������������', '21006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '21006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '�����', '21006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '21007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '21007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '�����', '21007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '̫����', '21007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '��ɽ��', '21007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '�塡��', '21007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '�躣��', '21007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '������', '21007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '21008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', 'վǰ��', '21008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '21008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '����Ȧ��', '21008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '�ϱ���', '21008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '21008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '��ʯ����', '21008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '21009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '21009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '21009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '̫ƽ��', '21009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '�������', '21009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', 'ϸ����', '21009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '�����ɹ���������', '21009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '21009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '21010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '21010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '��ʥ��', '21010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '��ΰ��', '21010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '��������', '21010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '̫�Ӻ���', '21010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '21010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '21010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '21011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '˫̨����', '21011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '��¡̨��', '21011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '21011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '��ɽ��', '21011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '21012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '21012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '�����', '21012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '21012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '21012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '��ͼ��', '21012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '����ɽ��', '21012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '��ԭ��', '21012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '21013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '˫����', '21013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '21013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '21013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '��ƽ��', '21013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '�����������ɹ���������', '21013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '��Ʊ��', '21013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '��Դ��', '21013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '21014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '��ɽ��', '21014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '21014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '��Ʊ��', '21014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '21014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '21014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '�˳���', '21014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '22001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�Ϲ���', '22001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '�����', '22001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '������', '22001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '������', '22001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '��԰��', '22001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '˫����', '22001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', 'ũ����', '22001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '��̨��', '22001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '������', '22001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '�»���', '22001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '22002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '22002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '��̶��', '22002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '��Ӫ��', '22002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '������', '22002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '22002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '�Ժ���', '22002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '�����', '22002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '������', '22002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '��ʯ��', '22002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '22003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '22003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '22003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '22003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��ͨ����������', '22003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '��������', '22003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '˫����', '22003');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '22004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '��ɽ��', '22004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '22004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '22004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '22004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '22005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '22005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '��������', '22005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', 'ͨ����', '22005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '22005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '22005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '÷�ӿ���', '22005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '������', '22005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '22006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�˵�����', '22006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '22006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '22006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '���׳�����������', '22006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '��Դ��', '22006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '�ٽ���', '22006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '22007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '22007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', 'ǰ������˹�ɹ���������', '22007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '22007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', 'Ǭ����', '22007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '22007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '22008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '䬱���', '22008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '22008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', 'ͨ����', '22008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '�����', '22008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '����', '22008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '�Ӽ���', '22024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', 'ͼ����', '22024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '�ػ���', '22024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '������', '22024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '������', '22024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '������', '22024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '22024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '��ͼ��', '22024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '23001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '23001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '�ϸ���', '23001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '������', '23001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '�㷻��', '23001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '������', '23001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '08', 'ƽ����', '23001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '09', '�ɱ���', '23001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '������', '23001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '23001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '23001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '23001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������', '23001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', 'ľ����', '23001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', 'ͨ����', '23001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '������', '23001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '23001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '˫����', '23001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '��־��', '23001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '�峣��', '23001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '23002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '��ɳ��', '23002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '23002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '������', '23002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '����Ϫ��', '23002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '����������', '23002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '����ɽ��', '23002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '08', '÷��˹���Ӷ�����', '23002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '23002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '23002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '̩����', '23002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '23002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '��ԣ��', '23002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '��ɽ��', '23002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '�˶���', '23002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '��Ȫ��', '23002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', 'ګ����', '23002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '23003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '23003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '��ɽ��', '23003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '�ε���', '23003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '������', '23003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '���Ӻ���', '23003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '��ɽ��', '23003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '23003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '23003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '��ɽ��', '23003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '23004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '23004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '��ũ��', '23004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '��ɽ��', '23004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '�˰���', '23004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '��ɽ��', '23004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '��ɽ��', '23004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '�ܱ���', '23004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�����', '23004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '23005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '��ɽ��', '23005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '�붫��', '23005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '�ķ�̨��', '23005');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '��ɽ��', '23005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '23005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '23005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '23005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '�ĺ���', '23005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '23006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '����ͼ��', '23006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '23006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '�ú�·��', '23006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '�����', '23006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '��ͬ��', '23006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '23006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '��Դ��', '23006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '�ֵ���', '23006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '�Ŷ������ɹ���������', '23006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '23007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '23007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '�ϲ���', '23007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '�Ѻ���', '23007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '������', '23007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '������', '23007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '������', '23007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '08', '��Ϫ��', '23007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '09', '��ɽ����', '23007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '10', '��Ӫ��', '23007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '�������', '23007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '��������', '23007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '13', '������', '23007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '14', '��������', '23007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '15', '������', '23007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '16', '�ϸ�����', '23007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '23007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '23007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '23008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '23008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '23008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', 'ǰ����', '23008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '������', '23008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '������', '23008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '23008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '�봨��', '23008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '��ԭ��', '23008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '33', '��Զ��', '23008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', 'ͬ����', '23008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '������', '23008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '23009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '23009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '��ɽ��', '23009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '���Ӻ���', '23009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '23009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '23010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '23010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '23010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '������', '23010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '������', '23010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '23010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '�ֿ���', '23010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '��Һ���', '23010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '������', '23010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '������', '23010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '85', '������', '23010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '23011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '23011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '�۽���', '23011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', 'ѷ����', '23011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '23011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '23011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '���������', '23011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '23012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '23012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '23012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '23012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '�����', '23012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '�찲��', '23012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '��ˮ��', '23012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������', '23012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '23012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '�ض���', '23012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '������', '23012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '23027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '23027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', 'Į����', '23027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '������', '31001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '¬����', '31001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '�����', '31001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '������', '31001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '������', '31001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '������', '31001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '08', 'բ����', '31001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '09', '�����', '31001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '10', '������', '31001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '������', '31001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '13', '��ɽ��', '31001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '14', '�ζ���', '31001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '15', '�ֶ�����', '31001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '16', '��ɽ��', '31001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '17', '�ɽ���', '31001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '18', '������', '31001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '19', '�ϻ���', '31001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '20', '������', '31001');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '������', '31002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '32001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '32001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '32001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '�ػ���', '32001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '������', '32001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '��¥��', '32001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '�¹���', '32001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '�ֿ���', '32001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '13', '��ϼ��', '32001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '14', '�껨̨��', '32001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '15', '������', '32001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '16', '������', '32001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '��ˮ��', '32001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '�ߴ���', '32001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '32002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�簲��', '32002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '�ϳ���', '32002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '������', '32002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '��ɽ��', '32002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '��ɽ��', '32002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '������', '32002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '32002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '������', '32002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '32003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '��¥��', '32003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '32003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '������', '32003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '������', '32003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', 'Ȫɽ��', '32003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '�ᡡ��', '32003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�桡��', '32003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', 'ͭɽ��', '32003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '�����', '32003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '32003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '������', '32003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '32004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '32004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '��¥��', '32004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '��������', '32004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '�±���', '32004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '�����', '32004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '32004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '��̳��', '32004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '32005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '32005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', 'ƽ����', '32005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '������', '32005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '������', '32005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '������', '32005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '�����', '32005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '32005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '�żҸ���', '32005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '��ɽ��', '32005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '�⽭��', '32005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '85', '̫����', '32005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '32006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�紨��', '32006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '��բ��', '32006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '32006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '�綫��', '32006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '32006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '�����', '32006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', 'ͨ����', '32006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '������', '32006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '32007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '32007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '������', '32007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '������', '32007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '32007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '32007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '32007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '32007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '32008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�����', '32008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '32008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '������', '32008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '������', '32008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '��ˮ��', '32008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '������', '32008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '������', '32008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '�����', '32008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '32009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', 'ͤ����', '32009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '�ζ���', '32009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '��ˮ��', '32009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '32009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '32009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '32009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '32009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '��̨��', '32009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '�����', '32009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '32010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '32010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '32010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '������', '32010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��Ӧ��', '32010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '32010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '������', '32010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '88', '������', '32010');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '32011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '32011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '������', '32011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '��ͽ��', '32011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '32011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '������', '32011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '������', '32011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '32012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '32012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '�߸���', '32012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '�˻���', '32012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '������', '32012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '̩����', '32012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '������', '32012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '32013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�޳���', '32013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '��ԥ��', '32013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '32013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '32013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '32013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '33001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�ϳ���', '33001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '�³���', '33001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '������', '33001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '������', '33001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '������', '33001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '08', '������', '33001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '09', '��ɽ��', '33001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '10', '�ຼ��', '33001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', 'ͩ®��', '33001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '������', '33001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '������', '33001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '������', '33001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '85', '�ٰ���', '33001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '33002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '33002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '������', '33002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '������', '33002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '������', '33002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '����', '33002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '۴����', '33002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '��ɽ��', '33002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������', '33002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '��Ҧ��', '33002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '��Ϫ��', '33002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '���', '33002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '33003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '¹����', '33003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '33003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '걺���', '33003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '��ͷ��', '33003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '33003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', 'ƽ����', '33003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '������', '33003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '�ĳ���', '33003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '̩˳��', '33003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '����', '33003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '������', '33003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '33004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�����', '33004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '������', '33004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '33004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '33004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '33004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', 'ƽ����', '33004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', 'ͩ����', '33004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '33005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '33005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '�����', '33005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '33005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '33005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '33005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '33006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', 'Խ����', '33006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '33006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '�²���', '33006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '33006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '������', '33006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '������', '33006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '33007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�ĳ���', '33007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '����', '33007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '33007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '�ֽ���', '33007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '�Ͱ���', '33007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '��Ϫ��', '33007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '������', '33007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '������', '33007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '������', '33007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '33008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�³���', '33008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '�齭��', '33008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '��ɽ��', '33008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '33008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '33008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '��ɽ��', '33008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '33009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '33009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '33009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '�ɽ��', '33009');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '33009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '33010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '33010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '33010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '·����', '33010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '����', '33010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '33010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��̨��', '33010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '�ɾ���', '33010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '33010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '�ٺ���', '33010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '33011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '33011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '33011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '33011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '�����', '33011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '33011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '�ƺ���', '33011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '��Ԫ��', '33011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '�������������', '33011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '��Ȫ��', '33011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '34001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '34001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '®����', '34001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '��ɽ��', '34001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '������', '34001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '34001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�ʶ���', '34001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '34001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '34002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '34002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '34002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '������', '34002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '𯽭��', '34002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '�ߺ���', '34002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '34002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '34002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '34003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '���Ӻ���', '34003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '��ɽ��', '34003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '�����', '34003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '������', '34003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '��Զ��', '34003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�����', '34003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '34003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '34004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '��ͨ��', '34004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '�������', '34004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', 'л�Ҽ���', '34004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '�˹�ɽ��', '34004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '�˼���', '34004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '��̨��', '34004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '34005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '���ׯ��', '34005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '��ɽ��', '34005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '��ɽ��', '34005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '��Ϳ��', '34005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '34006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�ż���', '34006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '��ɽ��', '34006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '��ɽ��', '34006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '�Ϫ��', '34006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '34007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', 'ͭ��ɽ��', '34007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', 'ʨ��ɽ��', '34007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '������', '34007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', 'ͭ����', '34007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '34008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', 'ӭ����', '34008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '�����', '34008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '������', '34008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '34008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '34008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', 'Ǳɽ��', '34008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '̫����', '34008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������', '34008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '������', '34008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '������', '34008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', 'ͩ����', '34008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '34010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '��Ϫ��', '34010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '��ɽ��', '34010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '������', '34010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '쨡���', '34010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '34010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '����', '34010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '34010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '34011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '34011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '34011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '34011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', 'ȫ����', '34011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '��Զ��', '34011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������', '34011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '�쳤��', '34011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '������', '34011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '34012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�����', '34012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '򣶫��', '34012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '�Ȫ��', '34012');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '��Ȫ��', '34012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '̫����', '34012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '34012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '�����', '34012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '������', '34012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '34013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', 'ܭ����', '34013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '�ɽ��', '34013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '34013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '�����', '34013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '34013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '34014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�ӳ���', '34014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '®����', '34014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '��Ϊ��', '34014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��ɽ��', '34014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '�͡���', '34014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '34015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '����', '34015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', 'ԣ����', '34015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '�١���', '34015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '34015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '�����', '34015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '��կ��', '34015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '��ɽ��', '34015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '34016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�۳���', '34016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '34016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�ɳ���', '34016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '34016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '34017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�����', '34017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '34017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', 'ʯ̨��', '34017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '34017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '34018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '34018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '��Ϫ��', '34018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�����', '34018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '34018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '��Ϫ��', '34018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '캵���', '34018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '34018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '35001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '��¥��', '35001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '̨����', '35001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '��ɽ��', '35001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '��β��', '35001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '������', '35001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '35001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '35001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��Դ��', '35001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '35001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '��̩��', '35001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', 'ƽ̶��', '35001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '35001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '������', '35001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '35002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '˼����', '35002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '������', '35002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '������', '35002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '������', '35002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', 'ͬ����', '35002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '13', '�谲��', '35002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '35003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '35003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '35003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '�����', '35003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '������', '35003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '35003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '35004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '÷����', '35004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '��Ԫ��', '35004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '��Ϫ��', '35004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '35004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '35004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '35004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '��Ϫ��', '35004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', 'ɳ����', '35004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '������', '35004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '̩����', '35004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '������', '35004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '35004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '35005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�����', '35005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '35005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '�彭��', '35005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', 'Ȫ����', '35005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '�ݰ���', '35005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '��Ϫ��', '35005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '35005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '�»���', '35005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '������', '35005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', 'ʯʨ��', '35005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '������', '35005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '�ϰ���', '35005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '35006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', 'ܼ����', '35006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '35006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '35006');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '35006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', 'گ����', '35006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '��̩��', '35006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '��ɽ��', '35006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '�Ͼ���', '35006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', 'ƽ����', '35006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '������', '35006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '35006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '35007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '��ƽ��', '35007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '˳����', '35007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�ֳ���', '35007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '35007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '��Ϫ��', '35007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '35007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '35007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '����ɽ��', '35007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '�����', '35007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '������', '35007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '35008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '35008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '��͡��', '35008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '35008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '�Ϻ���', '35008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '��ƽ��', '35008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '35008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '��ƽ��', '35008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '35009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '35009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', 'ϼ����', '35009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '35009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '35009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '35009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '35009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������', '35009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '35009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '������', '35009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '36001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '36001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '36001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '��������', '36001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '������', '36001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '��ɽ����', '36001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '�ϲ���', '36001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�½���', '36001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '36001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '36001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '36002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '36002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '��ɽ��', '36002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '36002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '��ƽ��', '36002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '36003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '��Դ��', '36003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '13', '�涫��', '36003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '36003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '36003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '«Ϫ��', '36003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '36004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '®ɽ��', '36004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '�����', '36004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '�Ž���', '36004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '36004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '��ˮ��', '36004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '36004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '�°���', '36004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '������', '36004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '������', '36004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '������', '36004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '������', '36004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '�����', '36004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '36005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '��ˮ��', '36005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '36005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '36006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�º���', '36006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�཭��', '36006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '��Ϫ��', '36006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '36007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�¹���', '36007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '�ӡ���', '36007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�ŷ���', '36007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '36007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '36007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '36007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '��Զ��', '36007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '������', '36007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '������', '36007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', 'ȫ����', '36007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '������', '36007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '�ڶ���', '36007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', '�˹���', '36007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '33', '�����', '36007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '34', 'Ѱ����', '36007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '35', 'ʯ����', '36007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '�����', '36007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '�Ͽ���', '36007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '36008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '36008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '��ԭ��', '36008');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '36008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '��ˮ��', '36008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', 'Ͽ����', '36008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '�¸���', '36008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '36008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '̩����', '36008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '�촨��', '36008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '����', '36008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '������', '36008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '������', '36008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '����ɽ��', '36008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '36009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', 'Ԭ����', '36009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '36009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '36009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '�ϸ���', '36009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '�˷���', '36009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '36009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', 'ͭ����', '36009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '�����', '36009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '������', '36009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '�߰���', '36009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '36010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�ٴ���', '36010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '�ϳ���', '36010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�质��', '36010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '�Ϸ���', '36010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '36010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '�ְ���', '36010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '�˻���', '36010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '��Ϫ��', '36010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '��Ϫ��', '36010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '������', '36010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '�����', '36010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '36011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '36011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '36011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�����', '36011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��ɽ��', '36011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', 'Ǧɽ��', '36011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '�����', '36011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '߮����', '36011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '�����', '36011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '۶����', '36011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '������', '36011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '��Դ��', '36011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '36011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '37001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '37001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '37001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '������', '37001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '������', '37001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '������', '37001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '13', '������', '37001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', 'ƽ����', '37001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '37001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '�̺���', '37001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '37001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '37002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '37002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '�б���', '37002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '�ķ���', '37002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '�Ƶ���', '37002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '��ɽ��', '37002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '13', '�����', '37002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '14', '������', '37002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '37002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '��ī��', '37002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', 'ƽ����', '37002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '������', '37002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '85', '������', '37002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '37003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�ʹ���', '37003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '�ŵ���', '37003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '��ɽ��', '37003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '������', '37003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '�ܴ���', '37003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '��̨��', '37003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '37003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��Դ��', '37003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '37004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '37004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', 'Ѧ����', '37004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', 'ỳ���', '37004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '̨��ׯ��', '37004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', 'ɽͤ��', '37004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '37004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '37005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '��Ӫ��', '37005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '�ӿ���', '37005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '37005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '37005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '37005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '37006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '֥���', '37006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '��ɽ��', '37006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', 'Ĳƽ��', '37006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '13', '��ɽ��', '37006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '34', '������', '37006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '37006');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '������', '37006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '������', '37006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '������', '37006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '85', '��Զ��', '37006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '86', '��ϼ��', '37006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '87', '������', '37006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '37007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', 'Ϋ����', '37007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '��ͤ��', '37007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '������', '37007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '������', '37007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '37007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '37007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '37007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '�����', '37007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '�ٹ���', '37007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '������', '37007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '85', '������', '37007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '86', '������', '37007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '37008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '37008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '�γ���', '37008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '΢ɽ��', '37008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '��̨��', '37008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '������', '37008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '������', '37008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '������', '37008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '��ˮ��', '37008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', '��ɽ��', '37008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '37008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '������', '37008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '�޳���', '37008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '37009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '̩ɽ��', '37009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '�����', '37009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '37009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��ƽ��', '37009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '��̩��', '37009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '�ʳ���', '37009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '37010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '37010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '�ĵ���', '37010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '�ٳ���', '37010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '��ɽ��', '37010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '37011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '37011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '�ɽ��', '37011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '37011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�졡��', '37011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '37012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '37012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '�ֳ���', '37012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '37013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '��ɽ��', '37013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '��ׯ��', '37013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '�Ӷ���', '37013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '37013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '۰����', '37013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��ˮ��', '37013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '��ɽ��', '37013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '�ѡ���', '37013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', 'ƽ����', '37013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '������', '37013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '������', '37013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '������', '37013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '37014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�³���', '37014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '�ꡡ��', '37014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '37014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '37014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '37014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '�����', '37014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', 'ƽԭ��', '37014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '�Ľ���', '37014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '�����', '37014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '37014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '�����', '37014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '37015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '��������', '37015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '37015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', 'ݷ����', '37015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��ƽ��', '37015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '37015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '�ڡ���', '37015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������', '37015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '37015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '37016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '37016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '37016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '37016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '�����', '37016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', 'մ����', '37016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '37016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '��ƽ��', '37016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '37017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', 'ĵ����', '37017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '�ܡ���', '37017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '37017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '37017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '��Ұ��', '37017');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '۩����', '37017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '۲����', '37017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '������', '37017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '������', '37017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '41001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '��ԭ��', '41001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '41001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '�ܳǻ�����', '41001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '��ˮ��', '41001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '�Ͻ���', '41001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '08', '��ɽ��', '41001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '��Ĳ��', '41001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '41001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '������', '41001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '������', '41001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '��֣��', '41001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '85', '�Ƿ���', '41001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '41002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '��ͤ��', '41002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '˳�ӻ�����', '41002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '��¥��', '41002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '�Ϲ���', '41002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '������', '41002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '轡���', '41002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', 'ͨ����', '41002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', 'ξ����', '41002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '41002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '41002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '41003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�ϳ���', '41003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '41003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '�ܺӻ�����', '41003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '������', '41003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '������', '41003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '������', '41003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�Ͻ���', '41003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '�°���', '41003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '�ﴨ��', '41003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '�ԡ���', '41003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������', '41003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '������', '41003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '������', '41003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '������', '41003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '��ʦ��', '41003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '41004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�»���', '41004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '41004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', 'ʯ����', '41004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', 'տ����', '41004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '41004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', 'Ҷ����', '41004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '³ɽ��', '41004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', 'ۣ����', '41004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '�����', '41004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '������', '41004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '41005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�ķ���', '41005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '41005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '����', '41005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '������', '41005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '41005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '41005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������', '41005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '�ڻ���', '41005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '41005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '41006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '��ɽ��', '41006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', 'ɽ����', '41006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '俱���', '41006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '41006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '信���', '41006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '41007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '41007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '41007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '��Ȫ��', '41007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '��Ұ��', '41007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '41007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '�����', '41007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', 'ԭ����', '41007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '�ӽ���', '41007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '������', '41007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '��ԫ��', '41007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '41007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '������', '41007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '41008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�����', '41008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '��վ��', '41008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '�����', '41008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', 'ɽ����', '41008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '41008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '41008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '41008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '�¡���', '41008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '��Դ��', '41008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '������', '41008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '������', '41008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '41009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '41009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�����', '41009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '41009');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������', '41009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '̨ǰ��', '41009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '�����', '41009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '41010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', 'κ����', '41010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '�����', '41010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '۳����', '41010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '�����', '41010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '41010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '������', '41010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '41011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', 'Դ����', '41011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '۱����', '41011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '������', '41011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '41011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�����', '41011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '41012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '41012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '�ų���', '41012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�¡���', '41012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '¬����', '41012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '41012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '�鱦��', '41012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '41013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�����', '41013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '41013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '41013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '41013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��Ͽ��', '41013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '��ƽ��', '41013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '41013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������', '41013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '������', '41013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '�ƺ���', '41013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '��Ұ��', '41013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', 'ͩ����', '41013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '41013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '41014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '��԰��', '41014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '�����', '41014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '��Ȩ��', '41014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '���', '41014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '41014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '�ϳ���', '41014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '�ݳ���', '41014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������', '41014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '41014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '41015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', 'ʦ����', '41015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', 'ƽ����', '41015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '��ɽ��', '41015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '��ɽ��', '41015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '�¡���', '41015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '�̳���', '41015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '��ʼ��', '41015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '�괨��', '41015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '������', '41015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', 'Ϣ����', '41015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '41016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '41016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '41016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '41016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��ˮ��', '41016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '41016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '41016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������', '41016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '̫����', '41016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '¹����', '41016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '�����', '41016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '41017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�����', '41017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '��ƽ��', '41017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�ϲ���', '41017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', 'ƽ����', '41017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '41017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', 'ȷɽ��', '41017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������', '41017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '������', '41017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '��ƽ��', '41017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '�²���', '41017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '42001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '42001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '42001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '�ǿ���', '42001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '������', '42001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '�����', '42001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '��ɽ��', '42001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '��ɽ��', '42001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '��������', '42001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '13', '������', '42001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '14', '�̵���', '42001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '15', '������', '42001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '16', '������', '42001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '17', '������', '42001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '42002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '��ʯ����', '42002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '����ɽ��', '42002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '��½��', '42002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '��ɽ��', '42002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '42002');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '��ұ��', '42002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '42003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', 'é����', '42003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '42003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '�ǡ���', '42003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '42003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��ɽ��', '42003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '��Ϫ��', '42003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '42003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '��������', '42003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '42005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '42005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '��Ҹ���', '42005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '�����', '42005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '�Vͤ��', '42005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '������', '42005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', 'Զ����', '42005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '��ɽ��', '42005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '������', '42005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '����������������', '42005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '���������������', '42005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '�˶���', '42005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '������', '42005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '֦����', '42005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '42006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�����', '42006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '������', '42006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '������', '42006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '42006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '�ȳ���', '42006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������', '42006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '�Ϻӿ���', '42006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '������', '42006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '�˳���', '42006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '42007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '���Ӻ���', '42007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '42007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '������', '42007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '42008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '42008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '�޵���', '42008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '��ɽ��', '42008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', 'ɳ����', '42008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '42008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '42009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', 'Т����', '42009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', 'Т����', '42009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '42009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '42009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', 'Ӧ����', '42009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '��½��', '42009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '������', '42009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '42010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', 'ɳ����', '42010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '42010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '42010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '42010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '42010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', 'ʯ����', '42010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '�����', '42010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '87', '������', '42010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '42011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '42011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '�ŷ���', '42011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�찲��', '42011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '42011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', 'Ӣɽ��', '42011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '�ˮ��', '42011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', 'ޭ����', '42011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '��÷��', '42011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '�����', '42011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '��Ѩ��', '42011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '42012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�̰���', '42012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '42012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', 'ͨ����', '42012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '42012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', 'ͨɽ��', '42012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '�����', '42012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '42013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '42013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '��ˮ��', '42013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��ʩ��', '42028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '42028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '��ʼ��', '42028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '�Ͷ���', '42028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '42028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '�̷���', '42028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '������', '42028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '�׷���', '42028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '������', '42090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', 'Ǳ����', '42090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '������', '42090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '��ũ������', '42090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '43001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', 'ܽ����', '43001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '43001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '��´��', '43001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '������', '43001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '�껨��', '43001');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '��ɳ��', '43001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '43001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '43001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '�����', '43001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '43002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '43002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '«����', '43002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', 'ʯ����', '43002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '��Ԫ��', '43002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '43002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '43002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '43002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '43002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '43002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '43003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�����', '43003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '������', '43003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '��̶��', '43003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '43003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '��ɽ��', '43003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '43004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '������', '43004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '�����', '43004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', 'ʯ����', '43004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '08', '������', '43004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '������', '43004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '43004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '43004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��ɽ��', '43004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '�ⶫ��', '43004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '���', '43004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '43004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '������', '43004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '43005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '˫����', '43005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '43005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '������', '43005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '�۶���', '43005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '43005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '43005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '¡����', '43005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '43005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '������', '43005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '������', '43005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '�ǲ�����������', '43005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '�����', '43005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '43006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '����¥��', '43006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '��Ϫ��', '43006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '��ɽ��', '43006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '43006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '43006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '43006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', 'ƽ����', '43006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '43006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '������', '43006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '43007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '43007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '43007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '43007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '43007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '墡���', '43007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '�����', '43007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '��Դ��', '43007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', 'ʯ����', '43007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '43007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '43008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '43008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '����Դ��', '43008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '43008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', 'ɣֲ��', '43008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '43009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '43009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '��ɽ��', '43009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '�ϡ���', '43009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�ҽ���', '43009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '43009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '�佭��', '43009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '43010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '43010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '43010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '43010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '43010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '43010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '�κ���', '43010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '43010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '�����', '43010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '����', '43010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '������', '43010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '43010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '43011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '֥ɽ��', '43011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '��ˮ̲��', '43011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '43011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '43011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '˫����', '43011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '43011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '43011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '��Զ��', '43011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '��ɽ��', '43011');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '������', '43011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '��������������', '43011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '43012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�׳���', '43012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '�з���', '43012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '43012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��Ϫ��', '43012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '43012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '��ͬ��', '43012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '��������������', '43012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '�»ζ���������', '43012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '�ƽ�����������', '43012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '�������嶱��������', '43012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', 'ͨ������������', '43012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '�齭��', '43012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '43013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '¦����', '43013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '˫����', '43013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�»���', '43013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '��ˮ����', '43013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '��Դ��', '43013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '������', '43031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '��Ϫ��', '43031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '�����', '43031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '��ԫ��', '43031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '43031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������', '43031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '��˳��', '43031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '��ɽ��', '43031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '44001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '��ɽ��', '44001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '44001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', 'Խ����', '44001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '������', '44001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '�����', '44001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '������', '44001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '������', '44001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '������', '44001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '13', '��خ��', '44001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '14', '������', '44001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '������', '44001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '�ӻ���', '44001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '44002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '�佭��', '44002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '䥽���', '44002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '������', '44002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', 'ʼ����', '44002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '�ʻ���', '44002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '��Դ��', '44002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', '��Դ����������', '44002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '33', '�·���', '44002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '�ֲ���', '44002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '������', '44002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '44003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '�޺���', '44003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '������', '44003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '��ɽ��', '44003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '������', '44003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '������', '44003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '08', '������', '44003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '44004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '44004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '44004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '������', '44004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '44005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '������', '44005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '��ƽ��', '44005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '婽���', '44005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '13', '������', '44005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '14', '������', '44005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '15', '�κ���', '44005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '�ϰ���', '44005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '44006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '������', '44006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '�Ϻ���', '44006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '˳����', '44006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '��ˮ��', '44006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '08', '������', '44006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '44007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '���', '44007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '������', '44007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '�»���', '44007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '̨ɽ��', '44007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '��ƽ��', '44007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '��ɽ��', '44007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '85', '��ƽ��', '44007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '44008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�࿲��', '44008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', 'ϼɽ��', '44008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '��ͷ��', '44008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '������', '44008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��Ϫ��', '44008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '44008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '44008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '������', '44008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '�⴨��', '44008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '44009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', 'ï����', '44009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', 'ï����', '44009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '�����', '44009');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '44009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '������', '44009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '������', '44009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '44012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '44012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '44012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '44012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '44012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '�⿪��', '44012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������', '44012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '��Ҫ��', '44012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '�Ļ���', '44012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '44013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�ݳ���', '44013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '44013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '44013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '�ݶ���', '44013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '44013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '44014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '÷����', '44014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '÷����', '44014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '44014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��˳��', '44014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '�廪��', '44014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', 'ƽԶ��', '44014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '������', '44014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '44014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '44015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�ǡ���', '44015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '44015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '½����', '44015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '½����', '44015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '44016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', 'Դ����', '44016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '�Ͻ���', '44016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '44016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��ƽ��', '44016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '��ƽ��', '44016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '��Դ��', '44016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '44017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '44017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '44017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '44017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '44017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '44018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�����', '44018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '�����', '44018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��ɽ��', '44018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '��ɽ׳������������', '44018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '��������������', '44018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '������', '44018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', 'Ӣ����', '44018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '������', '44018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '44051');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '44051');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '44051');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '��ƽ��', '44051');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '44052');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�ų���', '44052');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '�Ҷ���', '44052');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '44052');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '44052');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '44052');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '44053');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�Ƴ���', '44053');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '44053');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '44053');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '�ư���', '44053');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '�޶���', '44053');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '45001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '45001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '45001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '������', '45001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '��������', '45001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '08', '������', '45001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '09', '������', '45001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '45001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '¡����', '45001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '��ɽ��', '45001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '45001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������', '45001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '�ᡡ��', '45001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '45002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '45002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '�����', '45002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '������', '45002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '������', '45002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '45002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '45002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '¹կ��', '45002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '�ڰ���', '45002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '��ˮ����������', '45002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '��������������', '45002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '45003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�����', '45003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '45003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '��ɽ��', '45003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '������', '45003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '��ɽ��', '45003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '��˷��', '45003');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�ٹ���', '45003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '�鴨��', '45003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', 'ȫ����', '45003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '�˰���', '45003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������', '45003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '������', '45003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '��ʤ����������', '45003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '��Դ��', '45003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', 'ƽ����', '45003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '������', '45003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', '��������������', '45003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '45004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '45004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '��ɽ��', '45004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '������', '45004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '45004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�١���', '45004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��ɽ��', '45004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '�Ϫ��', '45004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '45005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '45005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '45005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '��ɽ����', '45005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '45005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '45006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�ۿ���', '45006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '45006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '��˼��', '45006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '45006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '45007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '45007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '�ձ���', '45007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '��ɽ��', '45007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�ֱ���', '45007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '45008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�۱���', '45008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '45008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '������', '45008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', 'ƽ����', '45008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '��ƽ��', '45008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '45009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '45009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '�ݡ���', '45009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '½����', '45009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '45009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '��ҵ��', '45009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '45009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '45010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�ҽ���', '45010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '45010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�ﶫ��', '45010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', 'ƽ����', '45010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '�±���', '45010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '45010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������', '45010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '������', '45010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '��ҵ��', '45010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '������', '45010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '������', '45010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '¡�ָ���������', '45010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '45011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�˲���', '45011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '��ƽ��', '45011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '��ɽ��', '45011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��������������', '45011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '45012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '��ǽ���', '45012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '�ϵ���', '45012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�����', '45012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��ɽ��', '45012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '45012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '�޳�������������', '45012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '����ë����������', '45012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '��������������', '45012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '��������������', '45012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '������������', '45012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '45012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '45013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�˱���', '45013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '�ó���', '45013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '45013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '45013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '��������������', '45013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '��ɽ��', '45013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '45014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '45014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '45014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '45014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '45014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '45014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '�����', '45014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', 'ƾ����', '45014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '46001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '��Ӣ��', '46001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '������', '46001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '��ɽ��', '46001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '08', '������', '46001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '46002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��ָɽ��', '46090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '����', '46090');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '46090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '�Ĳ���', '46090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '������', '46090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '������', '46090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '46090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '�Ͳ���', '46090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '������', '46090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '�ٸ���', '46090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '��ɳ����������', '46090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '��������������', '46090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '33', '�ֶ�����������', '46090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '34', '��ˮ����������', '46090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '35', '��ͤ��������������', '46090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '36', '������������������', '46090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '37', '��ɳȺ��', '46090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '38', '��ɳȺ��', '46090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '39', '��ɳȺ���ĵ������亣��', '46090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '������', '50001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '50001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '50001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '��ɿ���', '50001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '������', '50001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', 'ɳƺ����', '50001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '��������', '50001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '08', '�ϰ���', '50001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '09', '������', '50001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '10', '��ʢ��', '50001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '˫����', '50001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '�山��', '50001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '13', '������', '50001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '14', 'ǭ����', '50001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '15', '������', '50001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�뽭��', '50002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '50002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', 'ͭ����', '50002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '50002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '�ٲ���', '50002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '�ɽ��', '50002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '��ƽ��', '50002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '�ǿ���', '50002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '�ᶼ��', '50002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '�潭��', '50002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', '��¡��', '50002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '33', '�ҡ���', '50002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '34', '������', '50002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '35', '������', '50002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '36', '�����', '50002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '37', '��ɽ��', '50002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '38', '��Ϫ��', '50002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '40', 'ʯ��������������', '50002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '41', '��ɽ����������������', '50002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '42', '��������������������', '50002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '43', '��ˮ����������������', '50002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '50003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '�ϴ���', '50003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '������', '50003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '�ϴ���', '50003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '51001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '������', '51001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '������', '51001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '��ţ��', '51001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '�����', '51001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '08', '�ɻ���', '51001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '��Ȫ����', '51001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '13', '��׽���', '51001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '14', '�¶���', '51001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '15', '�½���', '51001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '51001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '˫����', '51001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', 'ۯ����', '51001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '������', '51001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '�ѽ���', '51001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', '�½���', '51001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '��������', '51001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '������', '51001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '������', '51001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '84', '������', '51001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '51003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '��������', '51003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '51003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '����', '51003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '��̲��', '51003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '�١���', '51003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '��˳��', '51003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '51004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '51004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '51004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '�ʺ���', '51004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '51004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�α���', '51004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '51005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '51005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '��Ϫ��', '51005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '����̶��', '51005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '����', '51005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�Ͻ���', '51005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '51005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '51005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '51006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '�����', '51006');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '�н���', '51006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '�޽���', '51006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '�㺺��', '51006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', 'ʲ����', '51006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '83', '������', '51006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '51007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '51007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '������', '51007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '��̨��', '51007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��ͤ��', '51007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '51007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '51007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '����Ǽ��������', '51007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', 'ƽ����', '51007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '51007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '51008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '51008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', 'Ԫ����', '51008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '������', '51008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '51008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�ന��', '51008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '51008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '��Ϫ��', '51008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '51009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '��ɽ��', '51009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '������', '51009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '��Ϫ��', '51009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�����', '51009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��Ӣ��', '51009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '51010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '51010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '������', '51010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '��Զ��', '51010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '51010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '¡����', '51010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '51011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '51011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', 'ɳ����', '51011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '��ͨ����', '51011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '13', '��ں���', '51011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��Ϊ��', '51011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '51011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '�н���', '51011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '�崨��', '51011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', '�������������', '51011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '33', '�������������', '51011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '��üɽ��', '51011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '51013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '˳����', '51013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '��ƺ��', '51013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '������', '51013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '�ϲ���', '51013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', 'Ӫɽ��', '51013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '���', '51013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '��¤��', '51013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '51013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '51013');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '51014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '51014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '51014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '��ɽ��', '51014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '51014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '51014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '51014');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '51015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '51015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '�˱���', '51015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '��Ϫ��', '51015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '51015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '51015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '�ߡ���', '51015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '���', '51015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '������', '51015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '������', '51015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '��ɽ��', '51015');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '51016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�㰲��', '51016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '51016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '��ʤ��', '51016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��ˮ��', '51016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '��Ө��', '51016');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '51017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', 'ͨ����', '51017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '���', '51017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '51017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '51017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '51017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '51017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '��Դ��', '51017');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '51018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�����', '51018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '��ɽ��', '51018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '51018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��Դ��', '51018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', 'ʯ����', '51018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '��ȫ��', '51018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '«ɽ��', '51018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '������', '51018');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '51019');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '51019');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', 'ͨ����', '51019');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�Ͻ���', '51019');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', 'ƽ����', '51019');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '51020');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�㽭��', '51020');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '51020');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '51020');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '51020');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '�봨��', '51032');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '����', '51032');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', 'ï����', '51032');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '51032');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '��կ����', '51032');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '����', '51032');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', 'С����', '51032');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '��ˮ��', '51032');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '�������', '51032');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '������', '51032');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '������', '51032');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', '��������', '51032');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '33', '��ԭ��', '51032');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '51033');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '����', '51033');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '51033');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '51033');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '�Ž���', '51033');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������', '51033');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '¯����', '51033');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '������', '51033');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '������', '51033');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '�¸���', '51033');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '������', '51033');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', 'ʯ����', '51033');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '33', 'ɫ����', '51033');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '34', '������', '51033');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '35', '������', '51033');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '36', '�����', '51033');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '37', '������', '51033');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '38', '������', '51033');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '������', '51034');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', 'ľ�����������', '51034');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��Դ��', '51034');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '�²���', '51034');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '51034');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '�ᶫ��', '51034');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '������', '51034');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '�ո���', '51034');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '������', '51034');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '������', '51034');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '�Ѿ���', '51034');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', 'ϲ����', '51034');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '33', '������', '51034');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '34', 'Խ����', '51034');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '35', '������', '51034');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '36', '������', '51034');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '37', '�ײ���', '51034');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '52001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '52001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '52001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '��Ϫ��', '52001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '�ڵ���', '52001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '13', '������', '52001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '14', 'С����', '52001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '52001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', 'Ϣ����', '52001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '52001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '52001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��ɽ��', '52002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '��֦����', '52002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', 'ˮ����', '52002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�̡���', '52002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '52003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�컨����', '52003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '�㴨��', '52003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '52003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', 'ͩ����', '52003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '52003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '52003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '��������������������', '52003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������������������', '52003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '�����', '52003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '��̶��', '52003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '������', '52003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', 'ϰˮ��', '52003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '��ˮ��', '52003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '�ʻ���', '52003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '52004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '52004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', 'ƽ����', '52004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�ն���', '52004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��������������������', '52004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '���벼��������������', '52004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '�������岼����������', '52004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', 'ͭ����', '52022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '52022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��������������', '52022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', 'ʯ����', '52022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '˼����', '52022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', 'ӡ������������������', '52022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '�½���', '52022');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '�غ�������������', '52022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '��������������', '52022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '��ɽ����', '52022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '������', '52023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '52023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '�հ���', '52023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '��¡��', '52023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '�����', '52023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������', '52023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '�����', '52023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '������', '52023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '�Ͻ���', '52024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '����', '52024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', 'ǭ����', '52024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '��ɳ��', '52024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '֯����', '52024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '��Ӻ��', '52024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '���������������������', '52024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '������', '52024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '������', '52026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '��ƽ��', '52026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', 'ʩ����', '52026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '52026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '��Զ��', '52026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '᯹���', '52026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '������', '52026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '������', '52026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '������', '52026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '̨����', '52026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '��ƽ��', '52026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', '�Ž���', '52026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '33', '�ӽ���', '52026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '34', '��ɽ��', '52026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '35', '�齭��', '52026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '36', '��կ��', '52026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '������', '52027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '��Ȫ��', '52027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '����', '52027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '����', '52027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '�Ͱ���', '52027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '��ɽ��', '52027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', 'ƽ����', '52027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '�޵���', '52027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '��˳��', '52027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '������', '52027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '��ˮ��', '52027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', '����ˮ��������', '52027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '53001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�廪��', '53001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '53001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '�ٶ���', '53001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', '��ɽ��', '53001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '13', '������', '53001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '�ʹ���', '53001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '53001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '53001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '53001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', 'ʯ������������', '53001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '������', '53001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '»Ȱ��������������', '53001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', 'Ѱ���������������', '53001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '53001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '53003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '53003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '53003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '½����', '53003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', 'ʦ����', '53003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '��ƽ��', '53003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '��Դ��', '53003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������', '53003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', 'մ����', '53003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '53003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '53004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '53004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '53004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�ν���', '53004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', 'ͨ����', '53004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '53004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '53004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '��ɽ����������', '53004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '��ƽ�������������', '53004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', 'Ԫ���������������������', '53004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '53005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '¡����', '53005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', 'ʩ����', '53005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�ڳ���', '53005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '53005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '53005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '53006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '53006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '³����', '53006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�ɼ���', '53006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '�ν���', '53006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '�����', '53006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '53006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '�罭��', '53006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '������', '53006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '������', '53006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '������', '53006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', 'ˮ����', '53006');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '53007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�ų���', '53007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '����������������', '53007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '��ʤ��', '53007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��ƺ��', '53007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '��������������', '53007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '53008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '53008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '�ն�����������������', '53008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', 'ī��������������', '53008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��������������', '53008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '���ȴ�������������', '53008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '�������������������������', '53008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '���ǹ���������������', '53008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '������������������������', '53008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '����������������', '53008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '��������������', '53008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '53009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '53009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '53009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�ơ���', '53009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '53009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '����', '53009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '˫�����������岼�������������', '53009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '�����������������', '53009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '��Դ����������', '53009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '������', '53023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '˫����', '53023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', 'Ĳ����', '53023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '�ϻ���', '53023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', 'Ҧ����', '53023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '��Ҧ��', '53023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '������', '53023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', 'Ԫı��', '53023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '�䶨��', '53023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '»����', '53023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '������', '53025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '��Զ��', '53025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '53025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��������������', '53025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '��ˮ��', '53025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', 'ʯ����', '53025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������', '53025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '������', '53025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', 'Ԫ����', '53025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '�����', '53025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '��ƽ�����������������', '53025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '�̴���', '53025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', '�ӿ�����������', '53025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '��ɽ��', '53026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '��ɽ��', '53026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '53026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '��������', '53026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '�����', '53026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '����', '53026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '������', '53026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '������', '53026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '������', '53028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�º���', '53028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '53028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '������', '53029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�������������', '53029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '53029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '53029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '�ֶ���', '53029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '�Ͻ�����������', '53029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', 'Ρɽ�������������', '53029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '��ƽ��', '53029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '������', '53029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '��Դ��', '53029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '������', '53029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', '������', '53029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '53031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', 'º����', '53031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '53031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', 'ӯ����', '53031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '¤����', '53031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '��ˮ��', '53033');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '53033');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '��ɽ������ŭ��������', '53033');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '��ƺ����������������', '53033');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '���������', '53034');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '53034');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', 'ά��������������', '53034');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '54001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�ǹ���', '54001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '54001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '54001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��ľ��', '54001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '��ˮ��', '54001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '����������', '54001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������', '54001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', 'ī�񹤿���', '54001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '54021');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '54021');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '54021');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '��������', '54021');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '54021');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������', '54021');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '������', '54021');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '����', '54021');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', 'â����', '54021');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', '��¡��', '54021');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '33', '�߰���', '54021');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '�˶���', '54022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '54022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '54022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', 'ɣ����', '54022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '�����', '54022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������', '54022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '������', '54022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '������', '54022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '�Ӳ���', '54022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '¡����', '54022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', '������', '54022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '33', '�˿�����', '54022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '�տ�����', '54023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '��ľ����', '54023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '54023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '54023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '54023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������', '54023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '������', '54023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', 'лͨ����', '54023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '������', '54023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '�ʲ���', '54023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '������', '54023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', '������', '54023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '33', '�ٰ���', '54023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '34', '�Ƕ���', '54023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '35', '��¡��', '54023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '36', '����ľ��', '54023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '37', '������', '54023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '38', '�ڰ���', '54023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '54024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '54024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '54024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '54024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '54024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������', '54024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '������', '54024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '�����', '54024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '������', '54024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '������', '54024');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '54025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '54025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '54025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '54025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '�Ｊ��', '54025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������', '54025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '������', '54025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '��֥��', '54026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '����������', '54026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '54026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', 'ī����', '54026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '54026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������', '54026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '�ʡ���', '54026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '61001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�³���', '61001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '61001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '������', '61001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '�����', '61001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '12', 'δ����', '61001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '13', '������', '61001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '14', '������', '61001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '15', '������', '61001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '16', '������', '61001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '61001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '61001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '61001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������', '61001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '61002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '61002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', 'ӡ̨��', '61002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', 'ҫ����', '61002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�˾���', '61002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '61003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', 'μ����', '61003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '��̨��', '61003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '�²���', '61003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '61003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '�ɽ��', '61003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '61003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', 'ü����', '61003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '¤����', '61003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', 'ǧ����', '61003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '������', '61003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '���', '61003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '̫����', '61003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '61004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�ض���', '61004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '61004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', 'μ����', '61004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '��ԭ��', '61004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '61004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', 'Ǭ����', '61004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '��Ȫ��', '61004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������', '61004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '����', '61004');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '������', '61004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', 'Ѯ����', '61004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '������', '61004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '�书��', '61004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '��ƽ��', '61004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '61005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '��μ��', '61005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '61005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '61005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '61005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '61005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '�γ���', '61005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '�ѳ���', '61005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '��ˮ��', '61005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '��ƽ��', '61005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '61005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '������', '61005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '61006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '61006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '�ӳ���', '61006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�Ӵ���', '61006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '�ӳ���', '61006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '61006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '־����', '61006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������', '61006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '��Ȫ��', '61006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '������', '61006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '�崨��', '61006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '�˴���', '61006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '������', '61006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '32', '������', '61006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '61007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '��̨��', '61007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '��֣��', '61007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�ǹ���', '61007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '����', '61007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '61007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '�㡡��', '61007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '��ǿ��', '61007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '������', '61007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '�����', '61007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '������', '61007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '��ƺ��', '61007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '61008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '61008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '��ľ��', '61008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '61008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��ɽ��', '61008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '61008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '61008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '�����', '61008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '��֬��', '61008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '�ѡ���', '61008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '�Ɽ��', '61008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '�彧��', '61008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '������', '61008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '61009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '61009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '61009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', 'ʯȪ��', '61009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '61009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '61009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '᰸���', '61009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', 'ƽ����', '61009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '��ƺ��', '61009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', 'Ѯ����', '61009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '�׺���', '61009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '61010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '61010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '61010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '61010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '61010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', 'ɽ����', '61010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '����', '61010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '��ˮ��', '61010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '62001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�ǹ���', '62001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '�������', '62001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '������', '62001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '������', '62001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '11', '�����', '62001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '62001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '62001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '62001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '62002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '62003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '����', '62003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '62003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '62004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '62004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', 'ƽ����', '62004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '��Զ��', '62004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '62004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��̩��', '62004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '62005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�س���', '62005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '62005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '��ˮ��', '62005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�ذ���', '62005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '�ʹ���', '62005');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '��ɽ��', '62005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '�żҴ�����������', '62005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '62006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '62006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '62006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '62006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��ף����������', '62006');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '62007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '62007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '����ԣ����������', '62007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '62007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '62007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '��̨��', '62007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', 'ɽ����', '62007');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '62008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�����', '62008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '62008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '��̨��', '62008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '62008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '��ͤ��', '62008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', 'ׯ����', '62008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������', '62008');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '62009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '62009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '62009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '62009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '�౱�ɹ���������', '62009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '��������������������', '62009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '62009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '82', '�ػ���', '62009');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '62010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '62010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '�����', '62010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '62010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '62010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '��ˮ��', '62010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '62010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������', '62010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '��ԭ��', '62010');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '62011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '62011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', 'ͨμ��', '62011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '¤����', '62011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', 'μԴ��', '62011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '�����', '62011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '�ġ���', '62011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', 'ạ���', '62011');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '62012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�䶼��', '62012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '�ɡ���', '62012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�ġ���', '62012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '崲���', '62012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '62012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '62012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '����', '62012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '�ա���', '62012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '������', '62012');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '������', '62029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '62029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '62029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '62029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '�����', '62029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '62029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������������', '62029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '��ʯɽ�����嶫����������������', '62029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '������', '62030');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '��̶��', '62030');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '׿����', '62030');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '62030');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '62030');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '62030');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', 'µ����', '62030');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '�ĺ���', '62030');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '63001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�Ƕ���', '63001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '63001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '������', '63001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '�Ǳ���', '63001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '��ͨ��������������', '63001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '63001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��Դ��', '63001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', 'ƽ����', '63021');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '��ͻ�������������', '63021');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '�ֶ���', '63021');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '��������������', '63021');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '��¡����������', '63021');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', 'ѭ��������������', '63021');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '��Դ����������', '63022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '63022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '63022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '�ղ���', '63022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', 'ͬ����', '63023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '63023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '�����', '63023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '�����ɹ���������', '63023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '63025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', 'ͬ����', '63025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '�����', '63025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '�˺���', '63025');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '63025');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '63026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '63026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '�ʵ���', '63026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '63026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '63026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '�����', '63026');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '63027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�Ӷ���', '63027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '�ƶ���', '63027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '�ζ���', '63027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '��ǫ��', '63027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '��������', '63027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '���ľ��', '63028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�������', '63028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '63028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '63028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '�����', '63028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '64001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '������', '64001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '������', '64001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', '�����', '64001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '64001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '64001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '������', '64001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '64002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '�������', '64002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '��ũ��', '64002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', 'ƽ����', '64002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '64003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '��ͨ��', '64003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '�γ���', '64003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', 'ͬ����', '64003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '81', '��ͭϿ��', '64003');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '64004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', 'ԭ����', '64004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '64004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '¡����', '64004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '��Դ��', '64004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '64004');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '64005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', 'ɳ��ͷ��', '64005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '64005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '��ԭ��', '64005');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '65001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '��ɽ��', '65001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', 'ɳ���Ϳ���', '65001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '������', '65001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', 'ˮĥ����', '65001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '06', 'ͷ�ͺ���', '65001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '07', '�������', '65001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '08', '��ɽ��', '65001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '��³ľ����', '65001');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��Ͻ��', '65002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '��ɽ����', '65002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '����������', '65002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '�׼�̲��', '65002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '05', '�ڶ�����', '65002');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��³����', '65021');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '۷����', '65021');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '�п�ѷ��', '65021');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '������', '65022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������������������', '65022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '65022');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '������', '65023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '65023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '��Ȫ��', '65023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��ͼ����', '65023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '����˹��', '65023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '��̨��', '65023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '��ľ������', '65023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', 'ľ�ݹ�����������', '65023');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '������', '65027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '65027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��Ȫ��', '65027');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '�������', '65028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '��̨��', '65028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', 'ξ����', '65028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '��Ǽ��', '65028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '��ĩ��', '65028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '���Ȼ���������', '65028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '�;���', '65028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '��˶��', '65028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '������', '65028');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��������', '65029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '65029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '�⳵��', '65029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', 'ɳ����', '65029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '�º���', '65029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '�ݳ���', '65029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '��ʲ��', '65029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '��������', '65029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '��ƺ��', '65029');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��ͼʲ��', '65030');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '��������', '65030');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '��������', '65030');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '��ǡ��', '65030');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '��ʲ��', '65031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '�踽��', '65031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '65031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', 'Ӣ��ɳ��', '65031');
commit;
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '65031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', 'ɯ����', '65031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', 'Ҷ����', '65031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '�������', '65031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '���պ���', '65031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '29', '٤ʦ��', '65031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '30', '�ͳ���', '65031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '31', '��ʲ�����������������', '65031');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '������', '65032');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '65032');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', 'ī����', '65032');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', 'Ƥɽ��', '65032');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '65032');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '������', '65032');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������', '65032');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '�����', '65032');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '65040');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', '������', '65040');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '65040');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '�첼�������������', '65040');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '65040');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '65040');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '��Դ��', '65040');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '������', '65040');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '27', '�ؿ�˹��', '65040');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '28', '���տ���', '65040');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '������', '65042');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '������', '65042');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '������', '65042');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', 'ɳ����', '65042');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '������', '65042');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', 'ԣ����', '65042');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '�Ͳ��������ɹ�������', '65042');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', '����̩��', '65043');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '21', '��������', '65043');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '22', '������', '65043');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '23', '������', '65043');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '24', '���ͺ���', '65043');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '25', '�����', '65043');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '26', '��ľ����', '65043');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '01', 'ʯ������', '65090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '02', '��������', '65090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '03', 'ͼľ�����', '65090');
insert into VIP_AREA (N_ID, V_CODE, V_NAME, V_CITY)
values (seq_area.nextval, '04', '�������', '65090');
commit;