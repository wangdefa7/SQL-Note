select dt3.jyrq,
sum(dt3.dsyb) dsyb,
sum(dt3.zysyb) zysyb,
sum(dt3.mzsyb) mzsyb,
sum(dt3.mzydyb) mzydyb,
sum(dt3.zyydyb) zyydyb,
sum(dt3.mzsybpos) mzsybpos,
sum(dt3.zysybpos) zysybpos,
sum(dt3.mzydybpos) mzydybpos,
sum(dt3.zyydybpos) zyydybpos from (
SELECT dt4.yhid,to_char(to_date(dt4.jysj, 'yyyy-mm-dd hh24:mi:ss'),
                            'yyyy-mm-dd') jyrq,
                    CASE
                      WHEN dt4.yhid = 'YB' THEN
                       -1 * sum(dt4.jyje)
                      ELSE
                       0
                    END dsyb,
                    CASE
                      WHEN dt4.yhid = 'SYBZY' THEN
                       -1 * sum(dt4.jyje)
                      ELSE
                       0
                    END zysyb,
                    CASE
                      WHEN dt4.yhid = 'SYBMZ' THEN
                       -1 * sum(dt4.jyje)
                      ELSE
                       0
                    END mzsyb,
                    CASE
                      WHEN dt4.yhid = 'YDMZ' THEN
                       -1 * sum(dt4.jyje)
                      ELSE
                       0
                    END mzydyb,
                    CASE
                      WHEN dt4.yhid = 'YDZY' THEN
                       -1 * sum(dt4.jyje)
                      ELSE
                       0
                    END zyydyb,
                    CASE
                      WHEN dt4.yhid = 'SYBMZPOS' THEN
                       -1 * sum(dt4.jyje)
                      ELSE
                       0
                    END mzsybpos,
                    CASE
                      WHEN dt4.yhid = 'SYBZYPOS' THEN
                       -1 * sum(dt4.jyje)
                      ELSE
                       0
                    END zysybpos,
                    CASE
                      WHEN dt4.yhid = 'YDMZPOS' THEN
                       -1 * sum(dt4.jyje)
                      ELSE
                       0
                    END mzydybpos,
                    CASE
                      WHEN dt4.yhid = 'YDZYPOS' THEN
                       -1 * sum(dt4.jyje)
                      ELSE
                       0
                    END zyydybpos
               FROM ipay.order_detl dt4
              where 1 = 1
                and dt4.jysj like '202012%'
                and dt4.paystate = 'paid'
                and dt4.yhid in ('YB','YDZY','YDMZ','SYBZYPOS','SYBMZPOS','YDMZPOS','YDZYPOS','SYBMZ','SYBZY')
              group by dt4.yhid,to_char(to_date(dt4.jysj, 'yyyy-mm-dd hh24:mi:ss'),
                               'yyyy-mm-dd')
              order by to_char(to_date(dt4.jysj, 'yyyy-mm-dd hh24:mi:ss'),
                               'yyyy-mm-dd')
)dt3 group by dt3.jyrq order by dt3.jyrq
