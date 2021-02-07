set lines 400
set pages 50000

spool DB_STATS.txt

@DB_VERSION_INFO.SQL

spool off
exit