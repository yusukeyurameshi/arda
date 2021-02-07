select *
  from (select min(to_char(b.begin_interval_time, 'dd-mm-yy hh24:mi')) inicio,
               max(to_char(b.end_interval_time, 'dd-mm-yy hh24:mi')) fim,
               round(max(case
                           when a.stat_name = 'PHYSICAL_MEMORY_BYTES' then
                            a.value
                           else
                            null
                         end) / 1024 / 1024,
                     0) - round(max(case
                                      when a.stat_name = 'FREE_MEMORY_BYTES' then
                                       a.value
                                      else
                                       null
                                    end) / 1024 / 1024,
                                0) PHYSICAL_USED_MEM,
               round(max(case
                           when a.stat_name = 'PHYSICAL_MEMORY_BYTES' then
                            a.value
                           else
                            null
                         end) / 1024 / 1024,
                     0) PHYSICAL_TOTAL_MEM,
               a.snap_id
          from dba_hist_osstat a, dba_hist_snapshot b, dba_hist_osstat c
         where a.dbid = b.dbid
           and a.snap_id = b.snap_id
           and a.snap_id - 1 = c.snap_id
           and b.end_interval_time > sysdate - 10
         group by a.snap_id
         order by 1) b;