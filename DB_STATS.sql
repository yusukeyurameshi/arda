set lines 800
set pages 50000
set head OFF
set feed OFF

spool DB_STATS.txt

prompt "~~~~~~"
@DB_VERSION_INFO.SQL
prompt "~~~~~~"

spool off
exit