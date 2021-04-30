select case
         when dtl1.czybh is not null then
          dtl1.czybh
         else
          dtl3.czybh
       end czybh,
       case
         when dtl1.czyxm is not null then
          dtl1.czyxm
         else
          dtl3.czyxm
       end czyxm,
       case
         when dtl1.bz is not null then
          dtl1.bz
         else
          dtl3.bz
       end qdmc,
       nvl(dtl1.jyje, 0) zfje,
       nvl(dtl1.jybs, 0) zfbs,
       nvl(dtl3.jyje, 0) tkje,
       nvl(dtl3.jybs, 0) tkbs,
       (nvl(dtl1.jyje, 0) - nvl(dtl3.jyje, 0)) as zje
  from (select dtl4.czybh,
               dtl4.czyxm,
               bank2.bz,
               sum(dtl4.jyje) jyje,
               count(dtl4.intradeno) jybs
          from ipay.order_detl dtl4
          left join ipay.bank_info bank2
            on bank2.yhid = dtl4.yhid
         where dtl4.paystate = 'paid'
           and dtl4.czybh = '001'
           and dtl4.jysj > '20191219000000'
           and dtl4.jysj < '20201219095114'
         group by dtl4.czybh, dtl4.czyxm, bank2.bz
         order by dtl4.czybh, dtl4.czyxm, bank2.bz) dtl1
  full join (select dtl2.czybh,
                    dtl2.czyxm,
                    bank1.bz,
                    sum(dtl2.jyje) jyje,
                    count(1) jybs
               from ipay.order_detl dtl2
               left join ipay.bank_info bank1
                 on bank1.yhid = dtl2.yhid
              where dtl2.paystate = 'repaid'
                and dtl2.czybh = '001'
                and dtl2.jysj > '20191219000000'
                and dtl2.jysj < '20201219095114'
              group by dtl2.czybh, dtl2.czyxm, bank1.bz
              order by dtl2.czybh, dtl2.czyxm, bank1.bz) dtl3
    on dtl1.czybh = dtl3.czybh
   and dtl1.czyxm = dtl3.czyxm
   and dtl1.bz = dtl3.bz
 order by dtl1.czybh, dtl1.czyxm, dtl1.bz --, dtl3.bz
