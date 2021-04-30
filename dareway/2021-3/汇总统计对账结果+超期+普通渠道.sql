select * from channel_reconresult;
 select * from urp.gf_banktrans_accounts gf  where 1 = 1
           and gf.jyclzt = '1'
           and gf.fqjysj >= '20210307'
           and gf.fqjysj <= '20210307';

select ci.qdmc,
       nvl(sum(cr.qdjyzje), 0) qdjyzje,
       nvl(sum(cr.qdjyzbs), 0) qdjyzbs,
       nvl(sum(cr.qdycjyzje), 0) qdycjyzje,
       nvl(sum(cr.qdycjyzbs), 0) qdycjyzbs,
       nvl(sum(cr.sxf), 0) sxf,
       nvl(sum(cr.qdzfbs), 0) qdzfbs,
       nvl(sum(cr.qdtkbs), 0) qdtkbs
  from urp.channel_reconresult cr
  left join urp.channel_info ci
    on cr.qdid = ci.qdid
 where 1 = 1
   and cr.sfsc = '0'
   and cr.dzbs = '1'
   and to_char(cr.dzrq, 'yyyymmdd') >= '20210308'
   and to_char(cr.dzrq, 'yyyymmdd') <= '20210308'
 group by cr.qdid, ci.qdmc
union
select nvl(null,'³¬ÆÚ') qdmc,
       nvl(sum(gf2.jyje),0) qdjyzje,
       nvl(sum(gf2.zjjybs),0) qdjyzbs,
       nvl(sum(zjjyje - gf2.jyje),0) qdycjyzje,
       nvl(sum(gf2.sbbs),0) qdycjyzbs,
       nvl(sum(gf2.sxf),0) sxf,
       nvl(null,0) qdzfbs,
       nvl(sum(gf2.cgbs),0) qdtkbs
  from (select gf.khpch,
               gf.fqjysj,
               gf.zjjybs,
               gf.zjjyje,
               gf.cgbs,
               gf.sbbs,
               sum(jyje) jyje,
               gf.zjjysxf,
               nvl(sum(gf.sxf), 0.00) sxf
          from urp.gf_banktrans_accounts gf
         where 1 = 1
           and gf.jyclzt = '1'
           and gf.fqjysj >= '20210307'
           and gf.fqjysj <= '20210307'
         group by gf.khpch,
                  gf.zjjybs,
                  gf.zjjyje,
                  gf.zjjyje,
                  gf.cgbs,
                  gf.sbbs,
                  gf.fqjysj,
                  gf.zjjysxf
         order by gf.fqjysj) gf2

  
  


