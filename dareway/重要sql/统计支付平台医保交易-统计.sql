select '-' jyrq,
       sum(dt7.dsyb) dsyb,
       sum(dt7.zysyb) zysyb,
       sum(dt7.mzsyb) mzsyb,
       sum(dt7.mzydyb) mzydyb,
       sum(dt7.zyydyb) zyydyb,
       sum(dt7.mzsybpos) mzsybpos,
       sum(dt7.zysybpos) zysybpos,
       sum(dt7.mzydybpos) mzydybpos,
       sum(dt7.zyydybpos) zyydybpos
  from (select nvl(dt6.jyrq, dt2.jyrq) jyrq,
               dt6.dsyb + dt2.dsyb dsyb,
               dt6.zysyb + dt2.zysyb zysyb,
               dt6.mzsyb + dt2.mzsyb mzsyb,
               dt6.mzydyb + dt2.mzydyb mzydyb,
               dt6.zyydyb + dt2.zyydyb zyydyb,
               dt6.mzsybpos + dt2.mzsybpos mzsybpos,
               dt6.zysybpos + dt2.zysybpos zysybpos,
               dt6.mzydybpos + dt2.mzydybpos mzydybpos,
               dt6.zyydybpos + dt2.zyydybpos zyydybpos
          from (select dt3.jyrq,
                       sum(dt3.dsyb) dsyb,
                       sum(dt3.zysyb) zysyb,
                       sum(dt3.mzsyb) mzsyb,
                       sum(dt3.mzydyb) mzydyb,
                       sum(dt3.zyydyb) zyydyb,
                       sum(dt3.mzsybpos) mzsybpos,
                       sum(dt3.zysybpos) zysybpos,
                       sum(dt3.mzydybpos) mzydybpos,
                       sum(dt3.zyydybpos) zyydybpos
                  from (SELECT dt4.yhid,
                               to_char(to_date(dt4.jysj,
                                               'yyyy-mm-dd hh24:mi:ss'),
                                       'yyyy-mm-dd') jyrq,
                               CASE
                                 WHEN dt4.yhid = 'YB' THEN
                                  sum(dt4.jyje)
                                 ELSE
                                  0
                               END dsyb,
                               CASE
                                 WHEN dt4.yhid = 'SYBZY' THEN
                                  sum(dt4.jyje)
                                 ELSE
                                  0
                               END zysyb,
                               CASE
                                 WHEN dt4.yhid = 'SYBMZ' THEN
                                  sum(dt4.jyje)
                                 ELSE
                                  0
                               END mzsyb,
                               CASE
                                 WHEN dt4.yhid = 'YDMZ' THEN
                                  sum(dt4.jyje)
                                 ELSE
                                  0
                               END mzydyb,
                               CASE
                                 WHEN dt4.yhid = 'YDZY' THEN
                                  sum(dt4.jyje)
                                 ELSE
                                  0
                               END zyydyb,
                               CASE
                                 WHEN dt4.yhid = 'SYBMZPOS' THEN
                                  sum(dt4.jyje)
                                 ELSE
                                  0
                               END mzsybpos,
                               CASE
                                 WHEN dt4.yhid = 'SYBZYPOS' THEN
                                  sum(dt4.jyje)
                                 ELSE
                                  0
                               END zysybpos,
                               CASE
                                 WHEN dt4.yhid = 'YDMZPOS' THEN
                                  sum(dt4.jyje)
                                 ELSE
                                  0
                               END mzydybpos,
                               CASE
                                 WHEN dt4.yhid = 'YDZYPOS' THEN
                                  sum(dt4.jyje)
                                 ELSE
                                  0
                               END zyydybpos
                          FROM ipay.order_detl dt4
                         where 1 = 1
                           and dt4.paystate = 'paid'
                           and dt4.yhid in ('YB',
                                            'YDZY',
                                            'YDMZ',
                                            'SYBZYPOS',
                                            'SYBMZPOS',
                                            'YDMZPOS',
                                            'YDZYPOS',
                                            'SYBMZ',
                                            'SYBZY')
                           and dt4.jysj like '202012%'
                         group by dt4.yhid,
                                  to_char(to_date(dt4.jysj,
                                                  'yyyy-mm-dd hh24:mi:ss'),
                                          'yyyy-mm-dd')
                         order by to_char(to_date(dt4.jysj,
                                                  'yyyy-mm-dd hh24:mi:ss'),
                                          'yyyy-mm-dd')) dt3
                 group by dt3.jyrq
                 order by dt3.jyrq) dt6
          full join (select dt5.jyrq,
                           sum(dt5.dsyb) dsyb,
                           sum(dt5.zysyb) zysyb,
                           sum(dt5.mzsyb) mzsyb,
                           sum(dt5.mzydyb) mzydyb,
                           sum(dt5.zyydyb) zyydyb,
                           sum(dt5.mzsybpos) mzsybpos,
                           sum(dt5.zysybpos) zysybpos,
                           sum(dt5.mzydybpos) mzydybpos,
                           sum(dt5.zyydybpos) zyydybpos
                      from (SELECT dt1.yhid,
                                   to_char(to_date(dt1.jysj,
                                                   'yyyy-mm-dd hh24:mi:ss'),
                                           'yyyy-mm-dd') jyrq,
                                   CASE
                                     WHEN dt1.yhid = 'YB' THEN
                                      sum(dt1.jyje)
                                     ELSE
                                      0
                                   END dsyb,
                                   CASE
                                     WHEN dt1.yhid = 'SYBZY' THEN
                                      sum(dt1.jyje)
                                     ELSE
                                      0
                                   END zysyb,
                                   CASE
                                     WHEN dt1.yhid = 'SYBMZ' THEN
                                      sum(dt1.jyje)
                                     ELSE
                                      0
                                   END mzsyb,
                                   CASE
                                     WHEN dt1.yhid = 'YDMZ' THEN
                                      sum(dt1.jyje)
                                     ELSE
                                      0
                                   END mzydyb,
                                   CASE
                                     WHEN dt1.yhid = 'YDZY' THEN
                                      sum(dt1.jyje)
                                     ELSE
                                      0
                                   END zyydyb,
                                   CASE
                                     WHEN dt1.yhid = 'SYBMZPOS' THEN
                                      sum(dt1.jyje)
                                     ELSE
                                      0
                                   END mzsybpos,
                                   CASE
                                     WHEN dt1.yhid = 'SYBZYPOS' THEN
                                      sum(dt1.jyje)
                                     ELSE
                                      0
                                   END zysybpos,
                                   CASE
                                     WHEN dt1.yhid = 'YDMZPOS' THEN
                                      sum(dt1.jyje)
                                     ELSE
                                      0
                                   END mzydybpos,
                                   CASE
                                     WHEN dt1.yhid = 'YDZYPOS' THEN
                                      sum(dt1.jyje)
                                     ELSE
                                      0
                                   END zyydybpos
                              FROM ipay.order_detl dt1
                             where 1 = 1
                               and dt1.paystate = 'repaid'
                               and dt1.yhid in ('YB',
                                                'YDZY',
                                                'YDMZ',
                                                'SYBZYPOS',
                                                'SYBMZPOS',
                                                'YDMZPOS',
                                                'YDZYPOS',
                                                'SYBMZ',
                                                'SYBZY')
                               and dt1.jysj like '202012%'
                             group by dt1.yhid,
                                      to_char(to_date(dt1.jysj,
                                                      'yyyy-mm-dd hh24:mi:ss'),
                                              'yyyy-mm-dd')
                             order by to_char(to_date(dt1.jysj,
                                                      'yyyy-mm-dd hh24:mi:ss'),
                                              'yyyy-mm-dd')) dt5
                     group by dt5.jyrq
                     order by dt5.jyrq) dt2
            on dt2.jyrq = dt6.jyrq) dt7
 order by dt7.jyrq 
