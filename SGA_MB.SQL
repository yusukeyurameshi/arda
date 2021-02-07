SELECT a.*, round(sum(value)/1024/1024,1) SGA_MB 
  FROM gv$sga a;
