select dtlrf.jyje,
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
 order by dtlrf.jysj
