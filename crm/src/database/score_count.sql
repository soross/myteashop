create or replace procedure score_pro(num number) as
begin
--统计月积分
  insert into t_month_temp(phone,month,pay,power,total) 
  select c.phone,to_char(c.feedate,'yyyymm') as month,
   nvl(c.fullfee,0) as pay, c.power,nvl(c.fullfee*c.power,0) as total from
   (select  c.phone,c.power,f.fullfee,f.feedate from 
      t_fee f  left join (select c.phone,nvl(r.base,1) as power from  
      (select c.phone,d.name,c.brand from
        (select phone,grade,decode(brand,10,1,0) as brand from t_client ) c 
          left join t_data d on c.grade = d.id) c 
             left join t_clientrule r on r.rulename=c.name and r.brand=c.brand) c
             on  c.phone = f.phone 
             where to_char(f.feedate,'yyyymm') = to_char(add_months(sysdate,-num),'yyyymm')) c ;  
  
  insert  into t_month_score(phone,month,pay,power,total)
  select phone,month,pay,power,total from t_month_temp ;
  
 update t_month_score t  set (t.change,t.adjust) =
 (select c.change,t.total-c.change  from
  (select phone,  sum(back) as change   from 
    (select c.phone,nvl(-1*p.integral*c.backnum,0) as back from
      (select c.phone,b.prisentid,sum(b.backnum) as backnum from 
      t_client c left join t_back b 
       on c.phone=b.phone  and to_char(b.bdate,'yyyymm')=
     to_char(add_months(sysdate,-num),'yyyymm')
      group by c.phone,b.prisentid) c
       left join t_present p on c.prisentid=p.id  
       union all
        select a.phone, nvl(b.total,0) as total  from 
      t_client a left join  t_change b 
       on a.phone=b.phone and to_char(b.cdate,'yyyymm')=
      to_char(add_months(sysdate,-num),'yyyymm') 
      ) group by phone) c where t.phone=c.phone);
--统计年积分
   if to_char(sysdate,'mm')='01' then
        update t_year_score y set (total,change,balance)=(
        select y.total+m.total, y.change+m.change,y.balance+m.adjust
        from t_month_score m where y.phone=m.phone and
        m.month=to_char(add_months(sysdate,-num),'yyyymm')) 
        where y.year=to_char(add_months(sysdate,-num),'yyyy') and
        exists(select phone from t_month_score m where y.phone=m.phone);
        
        insert into t_year_score(phone,year,total,change,balance)
          select phone,to_char(add_months(sysdate,-num),'yyyy'),total,
          change,adjust from t_month_score 
          where not exists(
          select 'x' from t_month_score m ,t_year_score y 
          where m.phone=y.phone);
     
    elsif to_char(sysdate,'mm')='02' then
        insert into t_year_score(phone,year,total,change,balance)
          select phone,to_char(sysdate,'yyyy'),total,change,m.adjust
          from t_month_score m 
          where m.month=to_char(add_months(sysdate,-num),'yyyymm');
     else      
       update t_year_score y set (total,change,balance)=(
       select y.total+m.total,y.change+m.change,y.balance+m.adjust  
       from t_month_score m where m.phone=y.phone and 
        m.month=to_char(add_months(sysdate,-num),'yyyymm')
       ) where y.year=to_char(sysdate,'yyyy') and 
        exists(select 'x' from t_month_score m where y.phone=m.phone);
        
        insert into t_year_score(phone,year,total,change,balance)
          select phone,to_char(sysdate,'yyyy'),total,
          change,adjust from t_month_score 
           where not exists(
            select 'x' from t_month_score m ,t_year_score y 
             where m.phone=y.phone);
     
    end if;
--统计累计积分 
  update t_total_score t set (total,vintegral)=(
   select t.total+m.total,t.vintegral+m.total 
   from t_month_score m where m.phone=t.phone and 
   m.month=to_char(add_months(sysdate,-num),'yyyymm')) 
  where exists(select 'x' from t_month_score m where t.phone = m.phone);   
  
  insert into t_total_score(phone,vintegral,invalible,total) 
  select phone,adjust,change,total from t_month_score  
  where not exists(
  select 'x' from t_month_score m,t_total_score t
   where m.phone=t.phone);  
 commit;    
end;
/



/*==============================================================*/
/* Table: "T_MONTH_SCORE"     积分初始化                    */
/*==============================================================*/
declare
begin
  for i in 2..10 loop
      score_pro(i);
  end loop;
end;
/

/*==============================================================*/
/* Table: "T_MONTH_SCORE"     积分定时器                    */
/*==============================================================*/
declare
  jobid number;
begin
  dbms_job.submit(jobid,'SCORE_PRO(1);',sysdate,'TRUNC(LAST_DAY(SYSDATE ) + 1)');
  commit;
end;
/