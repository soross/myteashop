--�û���ɫ������
create or replace trigger user_role_tri
  before insert on t_userrole
for each row
begin 
    select seq_userrole.nextval into :new.id from dual;
end;
/

--��ɫȨ�޴�����
create or replace trigger role_power_tri
  before insert on t_rolepower
for each row
begin 
    select seq_trolePower.nextval into :new.id from dual;
end;
/

--�»��ִ�����
create or replace trigger month_tri
before insert on t_month_score
for each row
begin
       select seq_month.nextval into :new.id from dual;
end;
/

--����ִ�����
create or replace trigger year_tri
before insert on t_year_score
for each row
begin
       select seq_year.nextval into :new.id from dual;
end;
/

--�ۼƻ��ִ�����
create or replace trigger total_tri
before insert on t_total_score
for each row
begin
       select seq_total.nextval into :new.id from dual;
end;
/
commit;