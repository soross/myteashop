spool oracle.log;

drop user &1. cascade;

drop tablespace c_crm including contents and datafiles;
create tablespace c_crm datafile 'c:/c_crm.dbf' size 5m autoextend on next 1m;

create user &1. identified by &2.
default tablespace c_crm
temporary tablespace Temp;
grant connect,resource,dba to &1.;

connect &1./&2.

@system.sql;
@client.sql;
@rule.sql;
@yq.sql;
@lz.sql;
@xj.sql;
@vip_area.sql;
@vip_city.sql;
@vip_province.sql;
@trigger.sql;
@client_init.sql;
@clientinfo_init.sql;
@ywtype.sql;
@pro_level.sql;
@nextid.sql;
@groupclient_init.sql;
@fee_init.sql
@vfeecount.sql;
@score_count.sql;
@auto.sql;
@sysdo.sql;
@cust.sql;
@t_power.sql;

commit;
spool off;