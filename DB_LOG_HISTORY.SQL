select
    to_char(first_time,'YYYY.MM.DD') day,
    to_char(sum(decode(substr(to_char(first_time,'DDMMYYYY:HH24:MI'),10,2),'00',1,0)),'99') hour_00,
    to_char(sum(decode(substr(to_char(first_time,'DDMMYYYY:HH24:MI'),10,2),'01',1,0)),'99') hour_01,
    to_char(sum(decode(substr(to_char(first_time,'DDMMYYYY:HH24:MI'),10,2),'02',1,0)),'99') hour_02,
    to_char(sum(decode(substr(to_char(first_time,'DDMMYYYY:HH24:MI'),10,2),'03',1,0)),'99') hour_03,
    to_char(sum(decode(substr(to_char(first_time,'DDMMYYYY:HH24:MI'),10,2),'04',1,0)),'99') hour_04,
    to_char(sum(decode(substr(to_char(first_time,'DDMMYYYY:HH24:MI'),10,2),'05',1,0)),'99') hour_05,
    to_char(sum(decode(substr(to_char(first_time,'DDMMYYYY:HH24:MI'),10,2),'06',1,0)),'99') hour_06,
    to_char(sum(decode(substr(to_char(first_time,'DDMMYYYY:HH24:MI'),10,2),'07',1,0)),'99') hour_07,
    to_char(sum(decode(substr(to_char(first_time,'DDMMYYYY:HH24:MI'),10,2),'08',1,0)),'99') hour_08,
    to_char(sum(decode(substr(to_char(first_time,'DDMMYYYY:HH24:MI'),10,2),'09',1,0)),'99') hour_09,
    to_char(sum(decode(substr(to_char(first_time,'DDMMYYYY:HH24:MI'),10,2),'10',1,0)),'99') hour_10,
    to_char(sum(decode(substr(to_char(first_time,'DDMMYYYY:HH24:MI'),10,2),'11',1,0)),'99') hour_11,
    to_char(sum(decode(substr(to_char(first_time,'DDMMYYYY:HH24:MI'),10,2),'12',1,0)),'99') hour_12,
    to_char(sum(decode(substr(to_char(first_time,'DDMMYYYY:HH24:MI'),10,2),'13',1,0)),'99') hour_13,
    to_char(sum(decode(substr(to_char(first_time,'DDMMYYYY:HH24:MI'),10,2),'14',1,0)),'99') hour_14,
    to_char(sum(decode(substr(to_char(first_time,'DDMMYYYY:HH24:MI'),10,2),'15',1,0)),'99') hour_15,
    to_char(sum(decode(substr(to_char(first_time,'DDMMYYYY:HH24:MI'),10,2),'16',1,0)),'99') hour_16,
    to_char(sum(decode(substr(to_char(first_time,'DDMMYYYY:HH24:MI'),10,2),'17',1,0)),'99') hour_17,
    to_char(sum(decode(substr(to_char(first_time,'DDMMYYYY:HH24:MI'),10,2),'18',1,0)),'99') hour_18,
    to_char(sum(decode(substr(to_char(first_time,'DDMMYYYY:HH24:MI'),10,2),'19',1,0)),'99') hour_19,
    to_char(sum(decode(substr(to_char(first_time,'DDMMYYYY:HH24:MI'),10,2),'20',1,0)),'99') hour_20,
    to_char(sum(decode(substr(to_char(first_time,'DDMMYYYY:HH24:MI'),10,2),'21',1,0)),'99') hour_21,
    to_char(sum(decode(substr(to_char(first_time,'DDMMYYYY:HH24:MI'),10,2),'22',1,0)),'99') hour_22,
    to_char(sum(decode(substr(to_char(first_time,'DDMMYYYY:HH24:MI'),10,2),'23',1,0)),'99') hour_23
from
    v$log_history 
group by
    to_char(first_time,'YYYY.MM.DD')
order by
    1;
