
create or replace view vfeecount
as
select
max(cfee.groupid) groupid,sum(cfee.inputfee) INPUTFEE,sum(cfee.FULLFEE) FULLFEE,sum(cfee.ARREARAGE) ARREARAGE,
max(cfee.FEEDATE) FEEDATE,
sum(cfee.HIRE) HIRE,sum(cfee.BASICFEE) BASICFEE,sum(cfee.roamfee) roamfee,
sum(cfee.longfee) longfee,sum(cfee.INFOFEE) INFOFEE,sum(cfee.UPFEE) UPFEE,
sum(cfee.OTHERFEE) OTHERFEE,sum(cfee.ROAMDATE) ROAMDATE,
sum(cfee.NOROAMDATE) NOROAMDATE,sum(cfee.LONGDATE) LONGDATE,sum(cfee.NOLONGDATE) NOLONGDATE,
sum(cfee.ROAMTIME) ROAMTIME,sum(cfee.NOROAMTIME) NOROAMTIME,sum(cfee.LONGTIME) LONGTIME,
sum(cfee.NOLONGTIME) NOLONGTIME
    from
(select c.phone,c.name as 
clienname,g.groupid,f.inputfee,f.infofee,f.FULLFEE,f.ARREARAGE,f.FEEDATE,f.HIRE,f.BASICFEE,f.ROAMFEE,f.otherfee,
f.upfee,f.LONGDATE,f.roamtime,f.roamdate,f.NOROAMDATE,
f.NOLONGDATE,f.NOROAMTIME,f.LONGTIME,f.NOLONGTIME,f.LONGFEE  
 from 
t_client c,t_fee f,
groups g,t_groupclient m where c.phone=m.phone and 
g.groupid=m.groupid and f.phone =c.phone) cfee
group by cfee.feedate,cfee.groupid;

declare
type groupidtype is table of vfeecount.groupid%type index by 
binary_integer;
vgroupid groupidtype;--集团ID
type inputfeetype is table of vfeecount.inputfee%type index by 
binary_integer;
vinputfee inputfeetype;--充值花费
type fullfeetype is table of vfeecount.fullfee%type index by 
binary_integer;
vfullfee fullfeetype;--消费总额
type arrearagetype is table of vfeecount.arrearage%type index by 
binary_integer;
varrearage  arrearagetype;--欠费总额
type feedatetype is table of vfeecount.feedate%type index by 
binary_integer;
vfeedate  feedatetype;--账期
type hiretype is table of vfeecount.hire%type index by 
binary_integer;
vhire  hiretype;--月租费总额 --
type basicfeetype is table of vfeecount.basicfee%type index by 
binary_integer;
vbasicfee  basicfeetype;--基本话费总额
type roamfeetype is table of vfeecount.roamfee%type index by 
binary_integer;
vroamfee  roamfeetype;--漫游费用总额
type longfeetype is table of vfeecount.longfee%type index by 
binary_integer;
vlongfee  longfeetype;--长途费用总额
type infofeetype is table of vfeecount.infofee%type index by 
binary_integer;
vinfofee  infofeetype;--信息费用总额
type upfeetype is table of vfeecount.upfee%type index by 
binary_integer;
vupfee  upfeetype;--增值费总额
type otherfeetype is table of vfeecount.otherfee%type index by 
binary_integer;
votherfee  otherfeetype;--其他费总额
type roamdatetype is table of vfeecount.roamdate%type index by 
binary_integer;
vroamdate  roamdatetype;--漫游时间
type noroamdatetype is table of vfeecount.noroamdate%type index by 
binary_integer;
vnoroamdate  noroamdatetype;--非漫游时间
type longdatetype is table of vfeecount.longdate%type index by 
binary_integer;
vlongdate  longdatetype;--长途时间
type nolongdatetype is table of vfeecount.nolongdate%type index by 
binary_integer;
vnolongdate  nolongdatetype;--非长途时间
type roamtimetype is table of vfeecount.roamtime%type index by 
binary_integer;
vroamtime  roamtimetype;--漫游次数
type noroamtimetype is table of vfeecount.noroamtime%type index by 
binary_integer;
vnoroamtime  noroamtimetype;--非漫游次数
type longtimetype is table of vfeecount.longtime%type index by 
binary_integer;
vlongtime  longtimetype;--长途通话次数
type nolongtimetype is table of vfeecount.nolongtime%type index by 
binary_integer;
vnolongtime  nolongtimetype;--非长途通话次数

vsql varchar2(1000);

vcount number;
vzercount number;
vallcount number;



begin

select v.groupid bulk collect into vgroupid from vfeecount v;
select v.inputfee bulk collect into vinputfee from vfeecount v;
select v.fullfee bulk collect into vfullfee from vfeecount v;
select v.arrearage bulk collect into varrearage from vfeecount v;
select v.feedate bulk collect into vfeedate from vfeecount v;
select v.hire bulk collect into vhire from vfeecount v;
select v.basicfee bulk collect into vbasicfee from vfeecount v;
select v.roamfee bulk collect into vroamfee from vfeecount v;
select v.longfee bulk collect into vlongfee from vfeecount v;
select v.infofee bulk collect into vinfofee from vfeecount v;
select v.upfee bulk collect into vupfee from vfeecount v;
select v.otherfee bulk collect into votherfee from vfeecount v;
select v.roamdate bulk collect into vroamdate from vfeecount v;
select v.noroamdate bulk collect into vnoroamdate from vfeecount v;
select v.longdate bulk collect into vlongdate from vfeecount v;
select v.nolongdate bulk collect into vnolongdate from vfeecount v;
select v.roamtime bulk collect into vroamtime from vfeecount v;
select v.noroamtime bulk collect into vnoroamtime from vfeecount v;
select v.longtime bulk collect into vlongtime from vfeecount v;
select v.nolongtime bulk collect into vnolongtime from vfeecount v;

for i in 1..vfullfee.count loop    
    -- dbms_output.put_line(vhire(i)+vbasicfee(i)+vlongfee(i)+vinfofee(i)+vupfee(i)+votherfee(i));
    vsql:='insert into t_groupfee(id,groupid,monthfee,sayfee,longfee,swimfee,shortfee,
          addfee,otherfee,swimtime,noswimtime,longtime,nolongtime,swimcount,noswimcount,
          longcount,nolongcount,historytime,outcount,ZEROCOUNT,ALLCOUNT,lostmoney,FULLFEE) values(:id,:groupid,:monthfee,:sayfee,:longfee,:swimfee,:shortfee,
          :addfee,:otherfee,:swimtime,:noswimtime,:longtime,:nolongtime,:swimcount,:noswimcount,
          :longcount,:nolongcount,:historytime,:outcount,:ZEROCOUNT,:ALLCOUNT,:lostmoney,:FULLFEE)';
          
 select v.allcount  into vallcount from (select count(*) as allcount,g.groupid from t_client c,Groups g,t_groupclient m where c.phone=m.phone and g.groupid=m.groupid  group by g.groupid) v where v.groupid=vgroupid(i); 
   vcount:= mod(i*19,vallcount);
   if vcount<vallcount/2 then
      vcount:= vcount+vallcount/2;
   end if;
   vzercount:=vallcount-vcount;
  EXECUTE immediate vsql using i,vgroupid(i),vhire(i),vbasicfee(i),vlongfee(i),vroamfee(i),vinfofee(i),
           vupfee(i),votherfee(i),vroamdate(i),vnoroamdate(i),vlongdate(i),vnolongdate(i),vroamtime(i),vnoroamtime(i),
           vlongtime(i),vnolongtime(i),vfeedate(i),vcount,vzercount,vallcount,varrearage(i),vfullfee(i);
       
   commit;        
end loop;
    
end;
/












