create or replace function fun_groupid(
       vtime varchar2,
       vprovince varchar2,
       vcity varchar2,
       vcalling varchar2
)return varchar2
  is  
      
        vmax varchar2(30);
        vsql varchar2(1000);
        vnext varchar2(8);
begin
      
        vsql:='select max(groupid) from groups where groupid like :groupid';
        execute immediate vsql into vmax using vtime||vprovince||vcity||vcalling||'%';
        if vmax is null then
           vnext:='0001';
        else
           vnext:=lpad(to_char(to_number(substr(vmax,12,4))+1),4,0);
        end if;
        return vtime||vprovince||vcity||vcalling||vnext;
end;
/