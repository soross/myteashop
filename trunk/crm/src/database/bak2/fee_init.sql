declare
  vsql varchar2(1000);
  
  vfullfee number; --总额
  vhire number; --月租
  vbasicfee number; --基本话费
  vroamfee number; --漫游费用
  vinfofee number; --信息费
  vupfee number; --增值费
  votherfee number; --其他费用
  vinputfee number;  --充值
  varrearage number; --欠费
  vlongfee number;--长途费
begin
  for i in 1..10000 loop  

  --随机生成各个数据
  vhire:= floor((dbms_random.value)*100);
  vbasicfee:=floor((dbms_random.value)*500);
  vroamfee:=floor((dbms_random.value)*200);
  vinfofee:=floor((dbms_random.value)*100);
  vupfee:=floor((dbms_random.value)*50);
  vlongfee:=floor((dbms_random.value)*50);
  votherfee:=floor((dbms_random.value)*80);
  vinputfee :=500;
  
  vfullfee:=vhire+vbasicfee+vroamfee+vinfofee+vupfee+votherfee+vlongfee;
  
  varrearage := vinputfee - vfullfee;
  
  --dbms_output.put_line(lpad(mod(i,12),2,0));
  -- sql语句
  vsql:='insert into t_fee(id,phone,fullfee,feedate,hire,basicfee,roamfee,infofee,upfee,otherfee,roamdate,noroamdate,longdate,nolongdate,roamtime,noroamtime,longtime,nolongtime,inputfee,arrearage,longfee) values(:id,:phone,:fullfee,:feedate,:hire,:basicfee,:roamfee,:infofee,:upfee,:otherfee,:roamdate,:noroamdate,:longdate,:nolongdate,:roamtime,:noroamtime,:longtime,:nolongtime,:inputfee,:arrearage,:longfee)';
  
  --动态执行
  EXECUTE immediate vsql using  i,'132888'||lpad(i,5,0),vfullfee,to_date('2009-01','yyyy-mm'),vhire,vbasicfee,vroamfee,vinfofee,vupfee,votherfee,100,520,105,1356,19,35,25,63,vinputfee,varrearage,vlongfee;
  
  commit; 
  
  EXECUTE immediate vsql using  i+10000,'132888'||lpad(i,5,0),vfullfee+60,to_date('2009-02','yyyy-mm'),vhire+10,vbasicfee+10,vroamfee+10,vinfofee+10,vupfee+10,votherfee+10,131,620,135,1616,109,305,250,163,vinputfee,varrearage-60,vlongfee;
  
  commit; 
  
  EXECUTE immediate vsql using  i+20000,'132888'||lpad(i,5,0),vfullfee+120,to_date('2009-03','yyyy-mm'),vhire+20,vbasicfee+20,vroamfee+20,vinfofee+20,vupfee+20,votherfee+20,31,420,1050,116,119,75,99,1206,vinputfee,varrearage-120,vlongfee;
  
  commit;             

  EXECUTE immediate vsql using  i+30000,'132888'||lpad(i,5,0),vfullfee+180,to_date('2009-04','yyyy-mm'),vhire+30,vbasicfee+30,vroamfee+30,vinfofee+30,vupfee+30,votherfee+30,91,197,105,1086,111,313,189,120,vinputfee,varrearage-180,vlongfee;
  
  commit;
  
  --从新随机生成
  vhire:= floor((dbms_random.value)*110);
  vbasicfee:=floor((dbms_random.value)*400);
  vroamfee:=floor((dbms_random.value)*100);
  vinfofee:=floor((dbms_random.value)*220);
  vlongfee:=floor((dbms_random.value)*60);
  vupfee:=floor((dbms_random.value)*70);
  votherfee:=floor((dbms_random.value)*100);
  vinputfee := 450;
  vfullfee:=vhire+vbasicfee+vroamfee+vinfofee+vupfee+votherfee+vlongfee;
  varrearage := vinputfee - vfullfee;
  
  EXECUTE immediate vsql using  i+40000,'132888'||lpad(i,5,0),vfullfee+30,to_date('2009-05','yyyy-mm'),vhire+5,vbasicfee+5,vroamfee+5,vinfofee+5,vupfee+5,votherfee+5,41,197,105,1086,111,333,289,420,vinputfee,varrearage-30,vlongfee;
  
  commit;

  EXECUTE immediate vsql using  i+50000,'132888'||lpad(i,5,0),vfullfee+90,to_date('2009-06','yyyy-mm'),vhire+15,vbasicfee+15,vroamfee+15,vinfofee+15,vupfee+15,votherfee+15,41,197,1050,186,111,33,89,420,vinputfee,varrearage-90,vlongfee;
  
  commit;
  
  EXECUTE immediate vsql using  i+60000,'132888'||lpad(i,5,0),vfullfee+200,to_date('2009-07','yyyy-mm'),vhire+20,vbasicfee+50,vroamfee+30,vinfofee+10,vupfee+45,votherfee+45,410,197,105,386,1010,125,109,40,vinputfee,varrearage-200,vlongfee;
  
  commit;
  
  
  --再次随机生成
  vhire:= floor((dbms_random.value)*60);
  vbasicfee:=floor((dbms_random.value)*100);
  vroamfee:=floor((dbms_random.value)*90);
  vinfofee:=floor((dbms_random.value)*88);
  vupfee:=floor((dbms_random.value)*100);
   vlongfee:=floor((dbms_random.value)*50);
  votherfee:=floor((dbms_random.value)*65);
  
  vinputfee := 230;
  vfullfee:=vhire+vbasicfee+vroamfee+vinfofee+vupfee+votherfee+vlongfee;
  varrearage := vinputfee - vfullfee;

  EXECUTE immediate vsql using  i+70000,'132888'||lpad(i,5,0),vfullfee+90,to_date('2009-08','yyyy-mm'),vhire+30,vbasicfee+10,vroamfee+10,vinfofee+10,vupfee+10,votherfee+20,71,197,105,1186,171,203,289,427,vinputfee,varrearage-90,vlongfee;
  
  commit; 
  
  EXECUTE immediate vsql using  i+80000,'132888'||lpad(i,5,0),vfullfee+100,to_date('2009-09','yyyy-mm'),vhire+10,vbasicfee+20,vroamfee+30,vinfofee+10,vupfee+10,votherfee+20,410,1970,395,2186,411,733,589,1020,vinputfee,varrearage-100,vlongfee;
  
  commit;
  
  EXECUTE immediate vsql using  i+90000,'132888'||lpad(i,5,0),vfullfee+61,to_date('2009-10','yyyy-mm'),vhire+11,vbasicfee+20,vroamfee+10,vinfofee+10,vupfee+5,votherfee+5,71,107,235,786,181,263,481,69,vinputfee,varrearage-61,vlongfee;
  
  commit;
  
  EXECUTE immediate vsql using  i+100000,'132888'||lpad(i,5,0),vfullfee+61,to_date('2009-11','yyyy-mm'),vhire+11,vbasicfee+20,vroamfee+10,vinfofee+10,vupfee+5,votherfee+5,71,107,235,786,181,263,481,69,vinputfee,varrearage-61,vlongfee;
  
  commit;
  
  EXECUTE immediate vsql using  i+110000,'132888'||lpad(i,5,0),vfullfee+61,to_date('2009-12','yyyy-mm'),vhire+11,vbasicfee+20,vroamfee+10,vinfofee+10,vupfee+5,votherfee+5,71,107,235,786,181,263,481,69,vinputfee,varrearage-61,vlongfee;
  
  commit;
       
  end loop;
end;
/