---超期退费统计报表
  
select sum(b.zjjyje) zje,
       sum(b.zjjysxf) sxf,
       sum(b.cgbs) bs,
       count(b.pcs) pcs
  from (select a.khpch pcs, a.zjjyje, a.zjjysxf, a.cgbs
          from URP.GF_BANKTRANS_ACCOUNTS a
         where 1 = 1
           and a.jyclzt in ('6', 'B')
           and a.jysj = '20210105'
         group by a.khpch, a.zjjyje, a.zjjysxf, a.cgbs) b;
         
         
         
 ---
