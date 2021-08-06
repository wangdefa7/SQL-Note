select *
  from (select dtlrf.jyje,
               dtlrf.yhid,
               nvl(to_number(dtlrf.zjlx), 0) zjlx,
               dtlrf.czybh,
               dtlrf.czyxm,
               dtlrf.jysj
          from ipay.order_detl dtlrf
         where 1 = 1
           and dtlrf.paystate = 'repaid'
           and (dtlrf.cqtfbs not in ('1', '2') or dtlrf.cqtfbs is null)
           and dtlrf.czybh = '493'
           and dtlrf.jyje = 500
           and dtlrf.jysj >= '20210406000000'
           and dtlrf.jysj <= '20210406235918'
        union
        select cash.jyje,
               'XJZF' yhid,
               0 zjlx,
               cash.czybh,
               cash.czyxm,
               cash.jysj
          from ipay.overtocash_refund cash
         where 1 = 1
           and cash.state = 'repaid'
           and cash.czybh = '493') a
 order by a.jysj
