create or replace procedure autograde_proce
as
       --规则表达式数组
       type ruleexptype is table of t_ruleexp%rowtype index by binary_integer;
       exp_arr ruleexptype;
begin
       --将所有等级设置为无等级状态
       update t_client set grade=23;
       commit;
       --世界风客户
       --砖石卡********************************************************************
       select re.* bulk collect into exp_arr from t_ruleexp re left join t_clientrule cr on re.ruleid = cr.id where cr.brand=1 and cr.pri=4;
       
       for i in 1..exp_arr.count loop
           dbms_output.put_line(exp_arr(i).type);
           --积分
           if exp_arr(i).type='积分' then
              if exp_arr(i).endvalue is null then
                 update t_client cl set cl.grade=20 where cl.phone in
                 (select rs.phone from (select cl.phone,sum(sc.total) as allfee
                 from t_client cl left join t_month_score sc 
                 on cl.phone = sc.phone where cl.grade=23  
                 and cl.brand=10 and  sc.month between 
                 to_char(add_months(trunc(sysdate),-6),'yyyymm') 
                 and  to_char(add_months(trunc(sysdate),-1),'yyyymm')                                              
                 group by cl.phone ) rs  where rs.allfee>=exp_arr(i).startvalue);
              else                
                 update t_client cl set cl.grade = 20 where cl.phone in
                 (select rs.phone from (select cl.phone,sum(sc.total) as allfee
                 from t_client cl left join t_month_score sc 
                 on cl.phone = sc.phone where cl.grade=23  
                 and cl.brand=10 and  sc.month between 
                 to_char(add_months(trunc(sysdate),-6),'yyyymm') 
                 and  to_char(add_months(trunc(sysdate),-1),'yyyymm')                                              
                 group by cl.phone ) rs  where 
                 rs.allfee between exp_arr(i).startvalue and exp_arr(i).endvalue);
              end if;
           --ARPU
           elsif exp_arr(i).type='ARPU' then 
              if exp_arr(i).startvalue is not null then
                 update t_client cl set cl.grade = 20 where cl.phone in
                 (select rs.phone from (select cl.phone,sum(f.fullfee) as allfee from 
                 t_client cl left join t_fee f on cl.phone = f.phone 
                 where grade=23 and cl.brand=10 and f.feedate between 
                 to_date(to_char(add_months(trunc(sysdate),-7),'yyyy-mm')||'-29','yyyy-mm-dd')
                 and
                 to_date(to_char(add_months(trunc(sysdate),-1),'yyyy-mm')||'-2','yyyy-mm-dd')                   
                 group by cl.phone ) rs where rs.allfee/6>= exp_arr(i).startvalue);
              end if;                         
           end if;
       end loop;
       commit;
       
       --金卡********************************************************************
       select re.* bulk collect into exp_arr from t_ruleexp re left join t_clientrule cr on re.ruleid = cr.id where cr.brand=1 and cr.pri=3;
       
       for i in 1..exp_arr.count loop
           dbms_output.put_line(exp_arr(i).type);
           --积分
           if exp_arr(i).type='积分' then
              if exp_arr(i).endvalue is null then
                 update t_client cl set cl.grade=21 where cl.phone in
                 (select rs.phone from (select cl.phone,sum(sc.total) as allfee
                 from t_client cl left join t_month_score sc 
                 on cl.phone = sc.phone where cl.grade=23  
                 and cl.brand=10 and  sc.month between 
                 to_char(add_months(trunc(sysdate),-6),'yyyymm') 
                 and  to_char(add_months(trunc(sysdate),-1),'yyyymm')                                              
                 group by cl.phone ) rs  where rs.allfee>=exp_arr(i).startvalue);
              else                 
                 update t_client cl set cl.grade = 21 where cl.phone in
                 (select rs.phone from (select cl.phone,sum(sc.total) as allfee
                 from t_client cl left join t_month_score sc 
                 on cl.phone = sc.phone where cl.grade=23  
                 and cl.brand=10 and  sc.month between 
                 to_char(add_months(trunc(sysdate),-6),'yyyymm') 
                 and  to_char(add_months(trunc(sysdate),-1),'yyyymm')                                              
                 group by cl.phone ) rs  where 
                 rs.allfee between exp_arr(i).startvalue and exp_arr(i).endvalue);
              end if;
           --ARPU
           elsif exp_arr(i).type='ARPU' then 
              if exp_arr(i).startvalue is not null then
                 update t_client cl set cl.grade = 21 where cl.phone in
                 (select rs.phone from (select cl.phone,sum(f.fullfee) as allfee from 
                 t_client cl left join t_fee f on cl.phone = f.phone 
                 where grade=23 and cl.brand=10 and f.feedate between 
                 to_date(to_char(add_months(trunc(sysdate),-7),'yyyy-mm')||'-29','yyyy-mm-dd')
                 and
                 to_date(to_char(add_months(trunc(sysdate),-1),'yyyy-mm')||'-2','yyyy-mm-dd')                   
                 group by cl.phone ) rs where rs.allfee/6>= exp_arr(i).startvalue);
              end if;                         
           end if;
       end loop;
       commit;
       
       --银卡********************************************************************
       select re.* bulk collect into exp_arr from t_ruleexp re left join t_clientrule cr on re.ruleid = cr.id where cr.brand=1 and cr.pri=3;
       
       for i in 1..exp_arr.count loop
           dbms_output.put_line(exp_arr(i).type);
           --积分
           if exp_arr(i).type='积分' then
              if exp_arr(i).endvalue is null then
                 update t_client cl set cl.grade=22 where cl.phone in
                 (select rs.phone from (select cl.phone,sum(sc.total) as allfee
                 from t_client cl left join t_month_score sc 
                 on cl.phone = sc.phone where cl.grade=23  
                 and cl.brand=10 and  sc.month between 
                 to_char(add_months(trunc(sysdate),-6),'yyyymm') 
                 and  to_char(add_months(trunc(sysdate),-1),'yyyymm')                                              
                 group by cl.phone ) rs  where rs.allfee>=exp_arr(i).startvalue);
              else                 
                 update t_client cl set cl.grade = 22 where cl.phone in
                 (select rs.phone from (select cl.phone,sum(sc.total) as allfee
                 from t_client cl left join t_month_score sc 
                 on cl.phone = sc.phone where cl.grade=23  
                 and cl.brand=10 and  sc.month between 
                 to_char(add_months(trunc(sysdate),-6),'yyyymm') 
                 and  to_char(add_months(trunc(sysdate),-1),'yyyymm')                                              
                 group by cl.phone ) rs  where 
                 rs.allfee between exp_arr(i).startvalue and exp_arr(i).endvalue);
              end if;
           --ARPU
           elsif exp_arr(i).type='ARPU' then 
              if exp_arr(i).startvalue is not null then
                 update t_client cl set cl.grade = 22 where cl.phone in
                 (select rs.phone from (select cl.phone,sum(f.fullfee) as allfee from 
                 t_client cl left join t_fee f on cl.phone = f.phone 
                 where grade=23 and cl.brand=10 and f.feedate between 
                 to_date(to_char(add_months(trunc(sysdate),-7),'yyyy-mm')||'-29','yyyy-mm-dd')
                 and
                 to_date(to_char(add_months(trunc(sysdate),-1),'yyyy-mm')||'-2','yyyy-mm-dd')                   
                 group by cl.phone ) rs where rs.allfee/6>= exp_arr(i).startvalue);
              end if;                         
           end if;
       end loop;
       commit;
       
       
       --非世界风客户******************************************************************
       --砖石卡********************************************************************
       select re.* bulk collect into exp_arr from t_ruleexp re left join t_clientrule cr on re.ruleid = cr.id where cr.brand=0 and cr.pri=4;
       
       for i in 1..exp_arr.count loop
           dbms_output.put_line(exp_arr(i).type);
           --积分
           if exp_arr(i).type='积分' then
              if exp_arr(i).endvalue is null then
                 update t_client cl set cl.grade=20 where cl.phone in
                 (select rs.phone from (select cl.phone,sum(sc.total) as allfee
                 from t_client cl left join t_month_score sc 
                 on cl.phone = sc.phone where cl.grade=23  
                 and cl.brand !=10 and  sc.month between 
                 to_char(add_months(trunc(sysdate),-6),'yyyymm') 
                 and  to_char(add_months(trunc(sysdate),-1),'yyyymm')                                              
                 group by cl.phone ) rs  where rs.allfee>=exp_arr(i).startvalue);
              else                
                 update t_client cl set cl.grade = 20 where cl.phone in
                 (select rs.phone from (select cl.phone,sum(sc.total) as allfee
                 from t_client cl left join t_month_score sc 
                 on cl.phone = sc.phone where cl.grade=23  
                 and cl.brand !=10 and  sc.month between 
                 to_char(add_months(trunc(sysdate),-6),'yyyymm') 
                 and  to_char(add_months(trunc(sysdate),-1),'yyyymm')                                              
                 group by cl.phone ) rs  where 
                 rs.allfee between exp_arr(i).startvalue and exp_arr(i).endvalue);
              end if;
           --ARPU
           elsif exp_arr(i).type='ARPU' then 
              if exp_arr(i).startvalue is not null then
                 update t_client cl set cl.grade = 20 where cl.phone in
                 (select rs.phone from (select cl.phone,sum(f.fullfee) as allfee from 
                 t_client cl left join t_fee f on cl.phone = f.phone 
                 where grade=23 and cl.brand !=10 and f.feedate between 
                 to_date(to_char(add_months(trunc(sysdate),-7),'yyyy-mm')||'-29','yyyy-mm-dd')
                 and
                 to_date(to_char(add_months(trunc(sysdate),-1),'yyyy-mm')||'-2','yyyy-mm-dd')                   
                 group by cl.phone ) rs where rs.allfee/6>= exp_arr(i).startvalue);
              end if;                         
           end if;
       end loop;
       commit;
       
       --金卡********************************************************************
       select re.* bulk collect into exp_arr from t_ruleexp re left join t_clientrule cr on re.ruleid = cr.id where cr.brand=0 and cr.pri=3;
       
       for i in 1..exp_arr.count loop
           dbms_output.put_line(exp_arr(i).type);
           --积分
           if exp_arr(i).type='积分' then
              if exp_arr(i).endvalue is null then
                 update t_client cl set cl.grade=21 where cl.phone in
                 (select rs.phone from (select cl.phone,sum(sc.total) as allfee
                 from t_client cl left join t_month_score sc 
                 on cl.phone = sc.phone where cl.grade=23  
                 and cl.brand !=10 and  sc.month between 
                 to_char(add_months(trunc(sysdate),-6),'yyyymm') 
                 and  to_char(add_months(trunc(sysdate),-1),'yyyymm')                                              
                 group by cl.phone ) rs  where rs.allfee>=exp_arr(i).startvalue);
              else                 
                 update t_client cl set cl.grade = 21 where cl.phone in
                 (select rs.phone from (select cl.phone,sum(sc.total) as allfee
                 from t_client cl left join t_month_score sc 
                 on cl.phone = sc.phone where cl.grade=23  
                 and cl.brand !=10 and  sc.month between 
                 to_char(add_months(trunc(sysdate),-6),'yyyymm') 
                 and  to_char(add_months(trunc(sysdate),-1),'yyyymm')                                              
                 group by cl.phone ) rs  where 
                 rs.allfee between exp_arr(i).startvalue and exp_arr(i).endvalue);
              end if;
           --ARPU
           elsif exp_arr(i).type='ARPU' then 
              if exp_arr(i).startvalue is not null then
                 update t_client cl set cl.grade = 21 where cl.phone in
                 (select rs.phone from (select cl.phone,sum(f.fullfee) as allfee from 
                 t_client cl left join t_fee f on cl.phone = f.phone 
                 where grade=23 and cl.brand !=10 and f.feedate between 
                 to_date(to_char(add_months(trunc(sysdate),-7),'yyyy-mm')||'-29','yyyy-mm-dd')
                 and
                 to_date(to_char(add_months(trunc(sysdate),-1),'yyyy-mm')||'-2','yyyy-mm-dd')                   
                 group by cl.phone ) rs where rs.allfee/6>= exp_arr(i).startvalue);
              end if;                         
           end if;
       end loop;
       commit;
       
       --银卡********************************************************************
       select re.* bulk collect into exp_arr from t_ruleexp re left join t_clientrule cr on re.ruleid = cr.id where cr.brand=0 and cr.pri=2;
       
       for i in 1..exp_arr.count loop
           dbms_output.put_line(exp_arr(i).type);
           --积分
           if exp_arr(i).type='积分' then
              if exp_arr(i).endvalue is null then
                 update t_client cl set cl.grade=22 where cl.phone in
                 (select rs.phone from (select cl.phone,sum(sc.total) as allfee
                 from t_client cl left join t_month_score sc 
                 on cl.phone = sc.phone where cl.grade=23  
                 and cl.brand !=10 and  sc.month between 
                 to_char(add_months(trunc(sysdate),-6),'yyyymm') 
                 and  to_char(add_months(trunc(sysdate),-1),'yyyymm')                                              
                 group by cl.phone ) rs  where rs.allfee>=exp_arr(i).startvalue);
              else                 
                 update t_client cl set cl.grade = 22 where cl.phone in
                 (select rs.phone from (select cl.phone,sum(sc.total) as allfee
                 from t_client cl left join t_month_score sc 
                 on cl.phone = sc.phone where cl.grade=23  
                 and cl.brand !=10 and  sc.month between 
                 to_char(add_months(trunc(sysdate),-6),'yyyymm') 
                 and  to_char(add_months(trunc(sysdate),-1),'yyyymm')                                              
                 group by cl.phone ) rs  where 
                 rs.allfee between exp_arr(i).startvalue and exp_arr(i).endvalue);
              end if;
           --ARPU
           elsif exp_arr(i).type='ARPU' then 
              if exp_arr(i).startvalue is not null then
                 update t_client cl set cl.grade = 22 where cl.phone in
                 (select rs.phone from (select cl.phone,sum(f.fullfee) as allfee from 
                 t_client cl left join t_fee f on cl.phone = f.phone 
                 where grade=23 and cl.brand !=10 and f.feedate between 
                 to_date(to_char(add_months(trunc(sysdate),-7),'yyyy-mm')||'-29','yyyy-mm-dd')
                 and
                 to_date(to_char(add_months(trunc(sysdate),-1),'yyyy-mm')||'-2','yyyy-mm-dd')                   
                 group by cl.phone ) rs where rs.allfee/6>= exp_arr(i).startvalue);
              end if;                         
           end if;
       end loop;
       commit;
       
end;

/

declare

begin
       autograde_proce;
end;
/


declare
  jobid number;
begin
  dbms_job.submit(jobid,'autograde_proce;',sysdate,'TRUNC(LAST_DAY(SYSDATE ) + 1)');
  commit;
end;
/
