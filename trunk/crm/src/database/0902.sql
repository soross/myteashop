
 
--用户角色触发器
create or replace trigger user_role_tri
  before insert on t_userrole
for each row
begin 
    select seq_userrole.nextval into :new.id from dual;
end;
/

--角色权限触发器
create or replace trigger role_power_tri
  before insert on t_rolepower
for each row
begin 
    select seq_trolePower.nextval into :new.id from dual;
end;
/

create table T_USERPOWER
(
  ID      NUMBER,
  USERID  NUMBER,
  POWERID NUMBER
);

-- Create sequence 
create sequence SEQ_USERPOWER
minvalue 1000
maxvalue 999999999999999999999999999
start with 1000
increment by 1
cache 20;


--用户权限触发器
create or replace trigger user_power_tri
  before insert on t_userpower
for each row
begin 
    select SEQ_USERPOWER.nextval into :new.id from dual;
end;
/


insert into t_rolepower values(seq_trolepower.nextval,'1',299);
insert into t_rolepower values(seq_trolepower.nextval,'1',300);
insert into t_rolepower values(seq_trolepower.nextval,'1',301);
insert into t_rolepower values(seq_trolepower.nextval,'1',302);
insert into t_rolepower values(seq_trolepower.nextval,'1',303);
insert into t_rolepower values(seq_trolepower.nextval,'1',304);
insert into t_rolepower values(seq_trolepower.nextval,'1',305);
insert into t_rolepower values(seq_trolepower.nextval,'1',306);
insert into t_rolepower values(seq_trolepower.nextval,'1',308);
insert into t_rolepower values(seq_trolepower.nextval,'1',309);
insert into t_rolepower values(seq_trolepower.nextval,'1',310);
insert into t_rolepower values(seq_trolepower.nextval,'1',311);
insert into t_rolepower values(seq_trolepower.nextval,'1',312);
insert into t_rolepower values(seq_trolepower.nextval,'1',313); 


update t_power set url = url||'&'||'modfunid='||ID;