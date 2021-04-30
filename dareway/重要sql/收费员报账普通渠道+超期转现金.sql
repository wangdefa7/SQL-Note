select dtl2.*,bank1.bz  from (select dtlrf.jyje,
                       dtlrf.yhid,
                       nvl(to_number(dtlrf.zjlx), 0) zjlx,
                       dtlrf.czybh,
                       dtlrf.czyxm,
                       dtlrf.jysj
                  from ipay.order_detl dtlrf
                 where 1 = 1
                   and dtlrf.paystate = 'repaid'
                   and (dtlrf.cqtfbs not in ('1', '2') or
                       dtlrf.cqtfbs is null)
                   -- 超期转现金部分
                union
                select cash.jyje, 'XJZF' yhid, 0 zjlx, cash.czybh, cash.czyxm,cash.jysj
                  from ipay.overtocash_refund cash
                 where 1 = 1
                   and cash.state = 'repaid') dtl2
  left join ipay.bank_info bank1
    on bank1.yhid = dtl2.yhid
 where 1=1
   and dtl2.jysj >= '20210309000000'
   and dtl2.jysj <= '20210309134221'
    order by dtl2.jyje
