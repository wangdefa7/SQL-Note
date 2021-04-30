
SELECT dt.yhid,
               dt.czybh,
               dt.czyxm,
               CASE
                 WHEN dt.paystate = 'paid' THEN
                  count(1)
                 ELSE
                  0
               END zfbs,
               CASE
                 WHEN dt.paystate = 'paid' THEN
                  sum(dt.jyje)
                 ELSE
                  0.00
               END zfje,
               CASE
                 WHEN dt.paystate = 'repaid' THEN
                  count(1)
                 ELSE
                  0
               END tkbs,
               CASE
                 WHEN dt.paystate = 'repaid' THEN
                  sum(dt.jyje)
                 ELSE
                  0.00
               END tkje,
               count(1) hjbs,
               sum(dt.jyje) hjje
          FROM ipay.order_detl  dt
          left join ipay.bank_info bi
            on dt.yhid = bi.yhid
         where 1 = 1
           and subStr(dt.jysj, 0, 8) = '20201216'
           and czybh = '4'
           and dt.paystate in ('paid', 'repaid')
         group by dt.czybh, dt.czyxm, dt.yhid, dt.paystate
         order by dt.czybh;
  
  select * from ipay.order_detl dt where 1=1 ;
  
  
  SELECT dt.yhid,
               dt.czybh,
               dt.czyxm,
               CASE
                 WHEN dt.paystate = 'paid' THEN
                  count(1)
                 ELSE
                  0
               END zfbs,
               CASE
                 WHEN dt.paystate = 'paid' THEN
                  sum(dt.jyje)
                 ELSE
                  0.00
               END zfje,
               CASE
                 WHEN dt.paystate = 'repaid' THEN
                  count(1)
                 ELSE
                  0
               END tkbs,
               CASE
                 WHEN dt.paystate = 'repaid' THEN
                  sum(dt.jyje)
                 ELSE
                  0.00
               END tkje,
               count(1) hjbs,
               sum(dt.jyje) hjje
          FROM (
          
          )
           dt
          left join ipay.bank_info bi
            on dt.yhid = bi.yhid
         where 1 = 1
           and subStr(dt.jysj, 0, 8) = '20201216'
           and czybh = '4'
           and dt.paystate in ('paid', 'repaid')
         group by dt.yhid ,dt.czybh, dt.czyxm,dt.paystate
         order by dt.czybh;
         
         select dtl1.jysj,dtl1.jyje,dtl1.czybh,dtl1.paystate,dtl1.czyxm,dtl1.yhid,row_number() over (partition by yhid order by dtl1.czybh desc) column_num from ipay.order_detl dtl1;
         
       select dtl1.czybh,
              dtl1.yhid,
              sum(dtl1.jyje) zfje,
              count(dtl1.intradeno) zfbs,
              dtl3.jyje tkje,
              dtl3.jybs tkbs
         from ipay.order_detl dtl1
         left join (select dtl2.czybh,
                           dtl2.yhid,
                           sum(dtl2.jyje) jyje,
                           count(1) jybs
                      from ipay.order_detl dtl2
                     where dtl2.paystate = 'repaid'
                     group by dtl2.yhid, dtl2.czybh) dtl3
           on dtl1.czybh = dtl3.czybh and dtl1.yhid = dtl3.yhid
        where dtl1.paystate = 'paid'
        group by dtl1.yhid, dtl1.czybh
        order by dtl1.czybh;
        
        
        ---2 分开后链接
        
             
  select case when dtl1.czybh is not null then dtl1.czybh else dtl3.czybh end czybh,
         case when dtl1.bz is not null then dtl1.bz else dtl3.bz end qdmc,
         case when dtl1.czyxm is not null then dtl1.czyxm else dtl3.czyxm end czyxm,
         nvl(dtl1.jyje,0) zfje,
         nvl(dtl1.jybs,0) zfbs,
         nvl(dtl3.jyje,0) tkje,
         nvl(dtl3.jybs,0) tkbs,
         (nvl(dtl1.jyje,0) - nvl( dtl3.jyje,0)) as zje
    from (select dtl4.czybh,dtl4.czyxm, bank2.bz, sum(dtl4.jyje) jyje, count(dtl4.intradeno) jybs
            from ipay.order_detl dtl4
            left join ipay.bank_info bank2
                 on bank2.yhid = dtl4.yhid
           where dtl4.paystate = 'paid'
             and dtl4.cqtfbs != '1' or dtl4.cqtfbs is null
             and dtl4.czybh = '001'
             and dtl4.jysj > '20201216000000'
             and dtl4.jysj < '20201217000000'
           group by bank2.bz,dtl4.czybh,dtl4.czyxm
           order by dtl4.czybh) dtl1
    full join (select dtl2.czybh,
    dtl2.czyxm,
                      bank1.bz,
                      sum(dtl2.jyje) jyje,
                      count(1) jybs
                 from ipay.order_detl dtl2
                 left join ipay.bank_info bank1
                 on bank1.yhid = dtl2.yhid
                where dtl2.paystate = 'repaid'
                  and dtl2.cqtfbs != '1' or dtl2.cqtfbs is null
                  and dtl2.czybh = '001'
                  and dtl2.jysj > '20201216'
                  and dtl2.jysj < '20201217'
                group by bank1.bz, dtl2.czybh,dtl2.czyxm) dtl3
      on dtl1.czybh = dtl3.czybh and dtl1.bz = dtl3.bz
   order by dtl1.czybh;
  
select count(czybh),czybh from ipay.order_detl where and jysj > '20201216'
           and jysj < '20201217' group by czybh;
select * from ipay.order_detl where  jysj > '20201216'
           and jysj < '20201217' and czybh ='001' ;
