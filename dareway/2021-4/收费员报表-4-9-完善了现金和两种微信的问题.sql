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
                   and dtl4.czybh = '493'
                   and dtl4.jysj >= '20210406000000'
                   and dtl4.jysj <= '20210406235017'
                 group by dtl4.czybh, dtl4.czyxm, bank2.bz
                 order by dtl4.czybh, dtl4.czyxm, bank2.bz) dtl1
          full join (select refd.czybh,
                           refd.czyxm,
                           refd.bz,
                           sum(refd.jyje) jyje,
                           sum(refd.jybs) jybs
                      from (select dtlrf.czybh,
                                   dtlrf.czyxm,
                                   bank3.bz,
                                   sum(case
                                     when instr（bank3.bz, '统筹') > 0 then
                                      to_number(dtlrf.zjlx)
                                     else
                                      dtlrf.jyje
                                   end) jyje,
                           count(1) jybs
                      from ipay.order_detl dtlrf
                      left join ipay.bank_info bank3
                        on bank3.yhid = dtlrf.yhid
                     where 1 = 1
                       and dtlrf.paystate = 'repaid'
                       and (dtlrf.cqtfbs not in ('1', '2') or
                           dtlrf.cqtfbs is null)
                       and dtlrf.czybh = '493'
                       and dtlrf.fqjysj >= '20210406000000'
                       and dtlrf.fqjysj <= '20210406235017'
                     group by dtlrf.czybh, dtlrf.czyxm, bank3.bz
                    union
                    select cash.czybh,
                           cash.czyxm,
                           '现金' bz,
                           sum(cash.jyje) jyje,
                           count(1) jybs
                      from ipay.overtocash_refund cash
                     where 1 = 1
                       and cash.state = 'repaid'
                       and cash.czybh = '493'
                       and cash.fqjysj >= '20210406000000'
                       and cash.fqjysj <= '20210406235017'
                     group by cash.czybh, cash.czyxm) refd
         group by refd.czybh, refd.czyxm, refd.bz
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
           and refund.czybh = '493'
           and dtl5.fqjysj >= '20210406000000'
           and dtl5.fqjysj <= '20210406235017'
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
