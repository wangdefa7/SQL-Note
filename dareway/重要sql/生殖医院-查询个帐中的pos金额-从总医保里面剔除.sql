select sum(case
             when dtl.paystate = 'repaid' then
              -1 * dtl.jyje
             else
              dtl.jyje
           end) jyje
  from ipay.order_detl dtl
 where 1 = 1
   and dtl.paystate in ('paid', 'repaid')
   and dtl.yhid like '%POS%'
   and dtl.jshid in (select a.jshid
                       from urp.medicare_transflow a
                      where 1 = 1
                        and a.grzhzfje != 0
                        and to_char(a.dzrq, 'yyyy-mm-dd') = '2021-05-29'
                        and a.sfsc = '0')
