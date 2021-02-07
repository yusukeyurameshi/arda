SELECT 
    min(to_char(begin_time,'dd-mm-yy hh24:mi')) inicio, 
    max(to_char(end_time,'dd-mm-yy hh24:mi')) fim, 
    round(sum(case metric_name when 'Host CPU Utilization (%)' then average end),1) Host_CPU_util, 
    round(sum(case metric_name when 'Physical Read Total Bytes Per Sec' then average end)/1024/1024,1) Physical_Read_MBps, 
    round(sum(case metric_name when 'Physical Write Total Bytes Per Sec' then average end)/1024/1024,1) Physical_Write_MBps, 
    round(sum(case metric_name when 'Physical Read Total IO Requests Per Sec' then average end),1) Physical_Read_IOPS, 
    round(sum(case metric_name when 'Physical Write Total IO Requests Per Sec' then average end),1) Physical_write_IOPS, 
    round(sum(case metric_name when 'Redo Writes Per Sec' then average end),1) Physical_redo_IOPS, 
    round(sum(case metric_name when 'Network Traffic Volume Per Sec' then average end)/1024/1024,1) Network_Mb_per_sec, snap_id 
from dba_hist_sysmetric_summary
group by snap_id 
order by snap_id;