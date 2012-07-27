update t_power set url='/admin/user.do?task=userList' where powername='用户管理';
-- Create sequence 
create sequence SEQ_USER
minvalue 1000
maxvalue 999999999999999999999999999
start with 1001
increment by 1
cache 20;
