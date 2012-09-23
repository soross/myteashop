declare
  vsql varchar2(1000);
begin
  
  for i in 1..10000 loop

  vsql:='insert into t_clientinfo(phone,sex,age,loves,familyphone,officephone,fax,email,trade,iscar,country) values(:phone,:sex,:age,:loves,:familyphone,:officephone,:fax,:email,:trade,:iscar,:country)';

  if mod(i,10)=1 then
  
	EXECUTE immediate vsql using '132888'||lpad(i,5,0),mod(i,2),34,'ÀºÇò',lpad(i,7,3),lpad(i,7,2),lpad(i,7,5),'email'||i||'@'||'qq.com',lpad(mod(i,9),2,mod(i,2)),mod(i,2),'ÖÐ¹ú';
               
	commit;  
   end if;
  end loop;
end;
/