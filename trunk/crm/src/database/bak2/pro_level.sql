create or replace procedure pro_level
is
feecount number;
mancount number;
gid varchar2(20);
type gcur is ref cursor return t_Groupfee%rowtype;
curfee gcur;
gfee t_groupfee%rowtype;
begin
open curfee for select * from t_groupfee gf 
  where gf.historytime=to_date(to_char(add_months(trunc(sysdate),-1),'yyyy-mm')||'-1','yyyy-mm-dd');

fetch curfee into gfee;
loop
exit when curfee%notfound;
feecount :=gfee.fullfee;
mancount:=gfee.allcount;
gid:=gfee.groupid;
if feecount>50000 or mancount>500 then

   update groups set grouplevel='五星级' where groupid=gid and army='0'and state<>'0';
  commit;

  elsif feecount>10000 or mancount>100 then
  update groups set grouplevel='四星级'where groupid=gid and army='0'and state<>'0';
  commit;

  elsif feecount>5000 or mancount>50 then
  update groups set grouplevel='三星级'where groupid=gid and army='0'and state<>'0';
  commit;

  elsif feecount>1000 or mancount>10 then
  update groups set grouplevel='二星级'where groupid=gid and army='0'and state<>'0';
  commit;

 end if;
fetch curfee into gfee;

end loop;
end;

/



declare
  jobid number;
begin
  dbms_job.submit(jobid,'pro_level;',sysdate,'TRUNC(LAST_DAY(SYSDATE ) + 1)');
  commit;
end;
/

