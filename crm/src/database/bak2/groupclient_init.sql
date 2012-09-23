
declare
begin
  for i in 1..30 loop
      insert into t_groupclient(id,groupid,phone) values(seq_T_GROUPCLIENT.nextval,'091135001450001','132888005'||lpad(i,2,0));
      update t_client set isgroup=1 where phone='132888005'||lpad(i,2,0);  
      insert into t_groupclient(id,groupid,phone) values(seq_T_GROUPCLIENT.nextval,'091135001380001','132888040'||lpad(i,2,0));
      update t_client set isgroup=1 where phone='132888040'||lpad(i,2,0); 
      insert into t_groupclient(id,groupid,phone) values(seq_T_GROUPCLIENT.nextval,'091135001450002','132888001'||lpad(i,2,0));
      update t_client set isgroup=1 where phone='132888001'||lpad(i,2,0);
    insert into t_groupclient(id,groupid,phone) values(seq_T_GROUPCLIENT.nextval,'091135002480002','132888003'||lpad(i,2,0));
      update t_client set isgroup=1 where phone='132888003'||lpad(i,2,0); 
    insert into t_groupclient(id,groupid,phone) values(seq_T_GROUPCLIENT.nextval,'091135001150003','132888002'||lpad(i,2,0));
      update t_client set isgroup=1 where phone='132888002'||lpad(i,2,0);   
  end loop;
commit;
end;
/
