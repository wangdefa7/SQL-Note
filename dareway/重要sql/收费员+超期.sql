select *
  from (select nvl(czy.czybh, '') czybh,
               msg.czyxm,
               msg.qdmc,
               msg.zfje,
               msg.zfbs,
               msg.tkje,
               msg.tkbs,
               msg.zje
          from (select nvl(dtl1.czybh, dtl3.czybh) czybh,
                       case
                         when nvl(dtl1.czyxm, dtl3.czyxm) is null then
                          nvl(dtl1.czybh, dtl3.czybh)
                         else
                          nvl(dtl1.czyxm, dtl3.czyxm)
                       end czyxm,
                       nvl(dtl1.bz, dtl3.bz) qdmc,
                       nvl(dtl1.jyje, 0) zfje,
                       nvl(dtl1.jybs, 0) zfbs,
                       nvl(dtl3.jyje, 0) tkje,
                       nvl(dtl3.jybs, 0) tkbs,
                       (nvl(dtl1.jyje, 0) - nvl(dtl3.jyje, 0)) as zje
                  from (select dtl4.czybh,
                               dtl4.czyxm,
                               bank2.bz,
                               sum(case
                                 when instr（bank2.bz, '统筹') > 0 then
                                  to_number(dtl4.zjlx)
                                 else
                                  dtl4.jyje
                               end) jyje,
                       count(dtl4.intradeno) jybs
                  from ipay.order_detl dtl4
                  left join ipay.bank_info bank2
                    on bank2.yhid = dtl4.yhid
                 where dtl4.paystate = 'paid'
                   and dtl4.yhid != 'SPCLQY'
                   and (dtl4.cqtfbs != '1' or dtl4.cqtfbs is null)
                   and dtl4.jysj >= '20210309000000'
                   and dtl4.jysj <= '20210309134221'
                 group by dtl4.czybh, dtl4.czyxm, bank2.bz
                 order by dtl4.czybh, dtl4.czyxm, bank2.bz) dtl1
          full join (select dtl2.czybh,
                           dtl2.czyxm,
                           bank1.bz,
                           sum(case
                             when instr（bank1.bz, '统筹') > 0 then
                              dtl2.zjlx
                             else
                              dtl2.jyje
                           end) jyje, count(1) jybs
          from (select dtlrf.jyje,
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
 group by dtl2.czybh, dtl2.czyxm, bank1.bz
union
select refund.czybh czybh,
       refund.czyxm czyxm,
       '超期' bz,
       sum(dtl5.jyje) jyje,
       count(1) jybs
  from ipay.overtime_refund dtl5
  left join ipay.refund_detl refund
    on dtl5.refundno = refund.refundno
 where dtl5.state in
       ('repaid', 'refund', 'refunding', 'repaying', 'repayings')
   and dtl5.fqjysj >= '20210309000000'
   and dtl5.fqjysj <= '20210309134221'
 group by refund.czybh, refund.czyxm) dtl3
    on dtl1.czybh = dtl3.czybh
   and dtl1.czyxm = dtl3.czyxm
   and dtl1.bz = dtl3.bz) msg
  left join (select substr(csmc, instr(csmc, '|', 1) + 1) czybh, csz czyid
               from URP.PARAM_DICT
              where 1 = 1
                and cslx = 'skyVSdlyh'
                and zt = '0') czy
    on czy.czyid = msg.czybh)
 order by czybh, czyxm, qdmc
