-- 查询对账明细表的已经对账的记录数量
 select count(*) total  from URP.E_RECONRESULT_DETAIL rd  
 where 1=1  
 and not exists (
   select 1 from (
   SELECT rd1.yndzjgmxid FROM URP.e_reconresult_detail rd1  
   where 1=1  and rd1.sbid = 'b8036942f41e44349142d1c06493ed01'  
   and to_char(rd1.dzrq,'yyyy-MM-dd') = '2020-08-21' 
   and rd1.sfsc = '0'  and ( rd1.ynhislsid is not null or rd1.ynsblsid is not null)
   ) --T where rd.yndzjgmxid = T.yndzjgmxid
 )  and to_char(rd.dzrq,'yyyy-MM-dd') = '2020-08-21'  --and rd.sfsc = '0'

-- 修正sql
 select count(*) from (
   SELECT rd1.yndzjgmxid FROM URP.e_reconresult_detail rd1  
   where 1=1  and rd1.sbid = 'b8036942f41e44349142d1c06493ed01'  
   and to_char(rd1.dzrq,'yyyy-MM-dd') = '2020-08-21' 
   and rd1.sfsc = '0'  and ( rd1.ynhislsid is not null or rd1.ynsblsid is not null)
)
--select t.* from(
--select 1 from URP.e_reconresult_detail 
--) t where t.sbid = '1'


-- 更新对账明细表的数据

 update URP.E_RECONRESULT_DETAIL rd set rd.sfsc = :newsfsc  
 where 1=1  
 and rd.sbcsid = :sbcsid  
 and rd.sbid = :sbid  
 and to_char(rd.dzrq,'yyyy-MM-dd') = :dzrq  
 and rd.sfsc = :oldsfsc 
 
 
 select sbdzjgid,sbcsid,sbid,dzbs,dzjg,dzjgms,ycjyzbs,sbjyzbs,sbjyzje,sbycjyzbs,sbycjyzje,hisjyzje,hisjyzbs,
 hisycjyzje,hisycjyzbs,jyhztj,dzrq,jlcjsj,dzfs,dzfqr,sfsc,bz,bly1,bly2,bly3  
 from URP.E_EQUIPMENT_RECONRESULT 
 where 1=1  and sbid = 'b8036942f41e44349142d1c06493ed01'  
 and to_char(dzrq,'yyyy-MM-dd') = '2020-08-21' 
  and sfsc = '0' 
  
  -- 设备统计数据
   select cr.sbid, ci.sbbm, ci.sbmc, cr.sbdzjgid,case when ydzcl.yclbs is null then 0 else ydzcl.yclbs end yclbs,  cr.dzrq , cr.jlcjsj, ron.csmc dzbsms, 
   rr.csmc dzjgms, rt.csmc dzfsms,  cr.dzbs, cr.dzjg, cr.dzfs,  cr.sbjyzbs,cr.bz,cr.ycjyzbs,  cr.sbjyzje, 
   cr.sbycjyzje,cr.hisjyzje,cr.hisjyzbs,cr.hisycjyzje,cr.sbycjyzbs,cr.hisycjyzbs  
   from URP.E_EQUIPMENT_RECONRESULT cr  
   left join URP.e_equipment_info ci on(ci.sbid = cr.sbid and ci.sbzt = '1' and ci.jgbm  = 'sdfsszyy' ) 
    left join URP.param_dict ron on (ron.cslx = 'ReconFlag' and ron.csz = cr.dzbs and ron.jgbm = ci.jgbm ) 
    left join URP.param_dict rr on (rr.cslx = 'ReconResult' and rr.csz = cr.dzjg and rr.jgbm = ci.jgbm )  
    left join URP.param_dict rt on (rt.cslx = 'ReconType' and rt.csz = cr.dzfs and rt.jgbm = ci.jgbm )  
    left join (
  select sbid, count(ycclbs) yclbs from URP.e_reconresult_detail where to_char(dzrq,'yyyy-MM-dd') = '2020-08-21'  and sfsc = '0' and ycclbs = '1' group by sbid
    ) ydzcl on (cr.sbid = ydzcl.sbid)  
     where 1 = 1   and cr.sfsc = '0'   and to_char(cr.dzrq,'yyyy-MM-dd') = '2020-08-21'  and ci.sbcsid = '4fcc70d4706b4120abe0ae308595ae54' 


  select * from URP.e_reconresult_detail where to_char(dzrq,'yyyy-MM-dd') = '2020-08-21'  and sfsc = '0' and ycclbs = '1'--group by sbid

-- 查询渠道对账信息

select cnt.jylsh qdjylsh,cnt.jysj jysj,cnt.zdbh zdbh,cnt.jyje jyje,cnt.bly2 qsje,cnt.bly1 sxf,cnt.bly3 jylx,cnt.dzbh  
From URP.UNIONPAY_TRANSFLOW cnt 
where to_char(cnt.dzrq,'yyyy-MM-dd') = '2020-08-22'

select * from ipay.order_detl a where a.intradeno = '20200826P00002135DAREWAY';

select * from urp.alipay_transflow a;

select sum(a.jyje) from his_transflow a where to_char(a.dzrq, 'yyyyMMdd') = '20200827' and a.sfsc = '0'



 select rd.yndzjgmxid, his.ynhislsid,cnt.ynsblsid,  his.ddbh hddbh,his.ddbh,his.jysj hsj,his.jyje hje,
 his.yhrybh,mzpd.csmc mzzybsmc,  cnt.jylsh,cnt.jyshbh,cnt.jysj csj,cnt.ddbh eddbh,  
 cnt.jyzdbh zdbh,cnt.ywlx cyw,cnt.jyje cje,cnt.zdbh zdhm,cnt.jyzt czt,  
 his.jyje,rd.dzjg, rd.dzjgms,rd.yclx,his.brxm,his.blh,his.brjzkh,  
 rd.ycclbs,rd.ycclfjmc,rd.ycclfjlj,rd.ycclms,ei.sbmc,ei.sbbm,his.ywlx hyw,his.jyzdbh,  
 his.jyzt hzt,hpd.csmc hztmc,cpd.csmc cztmc,to_char(rd.dzrq,'yyyy-MM-dd') dzrq,  
 ef.sbcsbm,ef.sbcsmc,case when ci.qdmc is null then ci2.qdmc else ci.qdmc end
 from URP.E_RECONRESULT_DETAIL rd  
 left join URP.e_his_transflow his on his.ynhislsid = rd.ynhislsid  
 left join URP.E_EQUIPMENT_TRANSFLOW cnt on ( cnt.ynsblsid = rd.ynsblsid)  
 left join URP.CHANNEL_INFO ci on cnt.jyqdbs = ci.qdbm  
 left join URP.CHANNEL_INFO ci2 on his.jyqdbs = ci2.qdbm  
 left join URP.E_EQUIPMENT_INFO ei on ei.sbid = rd.sbid  
 left join URP.E_EQUIPMENT_FACTORY ef on ef.sbcsid = rd.sbcsid  
 left join URP.param_dict hpd on his.jyzt = hpd.csz and hpd.cslx='TransStatus' 
 and hpd.jgbm = his.jgbm  left join URP.param_dict cpd on cnt.jyzt = cpd.csz and cpd.cslx='TransStatus' 
 and cpd.jgbm = cnt.jgbm  left join URP.param_dict mzpd on his.mzzybs = mzpd.csz and mzpd.cslx='mzzybs' 
 and mzpd.jgbm = his.jgbm  where 1 = 1 and rd.sbid = 'b8036942f41e44349142d1c06493ed01' and to_char(rd.dzrq,'yyyy-MM-dd') = '2020-08-21' 
 and rd.sfsc = '0' and ei.jgbm = 'sdfsszyy'  order by rd.yclx,his.jyckh 


-- 实时报警
select * from E_REALTIME_MONITOR
 select rm.ssjkid,pd1.csmc ycdl ,pd2.csmc ycxl,to_char(rm.jlcjsj,'yyyy-MM-dd HH24:mm:ss') cjsj,  
 rm.ycnr,rm.bz,et.ddbh eddbh,et.yhrybh eyhrybh,nvl(et.brjzkh,ht.brjzkh) brjzkh,  
 ht.ddbh hddbh,ht.yhrybh hyhrybh,ht.brjzkh hbrjzkh,rm.ycclbs,rm.cljg,  
 et.jyje ejyje,et.jysj ejysj,et.jysbbs ejysbbs,et.jyckh ejyckh,et.jyshbh ejyshbh,  
 ht.jyje hjyje,ht.jysj hjysj,ht.jysbbs hjysbbs,ht.jyckh hjyckh,ht.jyshbh hjyshbh,  
 rm.ycclfjmc,rm.ycclfjlj,rm.ycclms,ef.sbcsbm,ef.sbcsmc,nvl(et.brxm,ht.brxm) brxm  
 from URP.E_REALTIME_MONITOR rm  
 left join URP.M_EQUIPMENT_TRANSFLOW et on et.ynjksblsid = rm.ynjksblsid  
 left join URP.M_HIS_TRANSFLOW ht on ht.ynjkhislsid = rm.ynjkhislsid  
 left join URP.E_EQUIPMENT_FACTORY ef on et.sbcsid = ef.sbcsid  
 left join URP.param_dict pd1 on pd1.cslx = 'AbnormalMain' and pd1.csz = rm.ycdl and pd1.jgbm = rm.jgbm  
 left join URP.param_dict pd2 on pd2.cslx = 'AbnormalSub' and pd2.csz = rm.ycxl and pd2.jgbm = rm.jgbm  
 where rm.ssjkid=:ssjkid 


E_EQUIPMENT_FACTORY
select distinct * from URP.CHANNEL_INFO,URP.E_EQUIPMENT_FACTORY
select * from HIS_TRANSFLOW t where t.bly2 = 'mzsyb' for update;
select * from RECONRESULT_DETAIL t where t.qdid = '71cde7b3a82243f0bfa7871f6478bb91' for update;

-- 医保报表中 his和支付平台的统计数据汇总(单天统计)
select me.jyrq,sum(me.dsyb) dsyb,sum(me.zysyb) zysyb,sum(me.mzsyb) mzsyb, sum(me.mzydyb) mzydyb, sum(me.zyydyb) zyydyb,
sum(me.mzsybpos) mzsybpos,sum(me.zysybpos) zysybpos,sum(me.mzydybpos) mzydybpos,sum(me.zyydybpos) zyydybpos
from (
      select to_char(to_date(his.jysj,'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd') jyrq,sum(his.jyje) jyje,
        case when his.bly2 = 'dsyb' then sum(his.jyje) else 0 end dsyb,
        case when his.bly2 = 'zysyb' then sum(his.jyje) else 0 end zysyb,
        case when his.bly2 = 'mzsyb' then sum(his.jyje) else 0 end mzsyb, 
        case when his.bly2 = 'mzydyb' then sum(his.jyje) else 0 end mzydyb,
        case when his.bly2 = 'zyydyb' then sum(his.jyje) else 0 end zyydyb,
        case when his.bly2 = 'mzsybpos' then sum(his.jyje) else 0 end mzsybpos,
        case when his.bly2 = 'zysybpos' then sum(his.jyje) else 0 end zysybpos,
        case when his.bly2 = 'mzydybpos' then sum(his.jyje) else 0 end mzydybpos,
        case when his.bly2 = 'zyydybpos' then sum(his.jyje) else 0 end zyydybpos
             from URP.RECONRESULT_DETAIL rd
              left join URP.HIS_TRANSFLOW his on rd.hisid = his.hislsid 
              where 1=1 
              and rd.dzjg = '1'
              and rd.sfsc = '0'
              and his.jyqdbs = 'Medicare'
              and to_char(rd.dzrq,'yyyy-mm') = '2020-08'
              group by his.bly2,to_char(to_date(his.jysj,'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd') 
              order by to_char(to_date(his.jysj,'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd') 
) me
group by me.jyrq order by me.jyrq


-- 医保报表中 his和支付平台的统计数据汇总(单月统计)
  select sum(his.jyje) jyje
    from URP.RECONRESULT_DETAIL rd
    left join URP.HIS_TRANSFLOW his
      on rd.hisid = his.hislsid
   where 1 = 1
     and rd.dzjg = '1'
     and rd.sfsc = '0'
     and his.jgbm = 'sdfsszyy'
     and his.jyqdbs = 'Medicare'
     and to_char(rd.dzrq, 'yyyy-mm') = '2020-08'

--order by to_char(to_date(his.jysj,'yyyy-mm-dd hh24:mi:ss'),'yyyy-mm-dd') 


-- 汇总单日报表
 select ci.qdid, ci.qdbm, ci.qdmc, cr.qddzjgid,  to_char(cr.dzrq,'yyyy-MM-dd') dzrq, cr.jlcjsj, ron.csmc dzbsms, 
 rr.csmc dzjgms, rt.csmc dzfsms,  cr.dzbs, cr.dzjg, cr.dzfs, nvl(cr.qdjyzje, 0.00) qdjyzje, nvl(cr.qdjyzbs, 0) qdjyzbs,  
 nvl(cr.hisjyzje, 0.00) hisjyzje, nvl(cr.hisjyzbs, 0) hisjyzbs, ci.jgbm,  nvl(cr.qdycjyzje, 0.00) qdycjyzje, 
 nvl(cr.qdycjyzbs, 0) qdycjyzbs,  nvl(cr.hisycjyzje, 0.00) hisycjyzje, nvl(cr.hisycjyzbs, 0) hisycjyzbs  
 from URP.channel_reconresult cr  
 left join URP.channel_info ci on(ci.qdid = cr.qdid and ci.qdzt = '1'  )  
 left join URP.param_dict ron on (ron.cslx = 'ReconFlag' and ron.csz = cr.dzbs and ron.jgbm = ci.jgbm ) 
 left join URP.param_dict rr on (rr.cslx = 'ReconResult' and rr.csz = cr.dzjg and rr.jgbm = ci.jgbm )  
 left join URP.param_dict rt on (rt.cslx = 'ReconType' and rt.csz = cr.dzfs and rt.jgbm = ci.jgbm )  
 where 1 = 1 and to_char(cr.dzrq,'yyyy-MM-dd') = '2020-09-02' 
 and cr.sfsc = '0' 
 and cr.dzbs = '1' 
 and ci.jgbm = 'sdfsszyy'


 update URP.MONITOR_CONFIG  set 
 dxbm = :dxbm  ,jgbm = :jgbm  ,
 jyzhhqsj = :jyzhhqsj  ,
 sfsc = :sfsc  ,
 cjsj = :cjsj  ,
 zhxgsj = :zhxgsj  
 where 1=1  and jyjkpzid = :jyjkpzid 
 
 
 
 select rm.ssbjid,pd1.csmc ycdl ,pd2.csmc ycxl,to_char(rm.clwcsj,'yyyy-MM-dd HH24:mm:ss') clwcsj,  
 rm.ycnr,rm.bz,ci.qdmc,rm.ycclbs  
 from URP.REALTIME_ALARM rm  
 left join URP.channel_info ci on ci.qdbm = rm.jyqdbs 
 and ci.jgbm = rm.jgbm   left join URP.param_dict pd1 
 on pd1.cslx = 'AbnormalMain' and pd1.csz = rm.ycdl and pd1.jgbm = rm.jgbm  
 left join URP.param_dict pd2 on pd2.cslx = 'AbnormalSub' 
 and pd2.csz = rm.ycxl and pd2.jgbm = rm.jgbm  
 where 1=1  
 and rm.jgbm = 'sdfsszyy'  
 and ci.qdbm in  ('UnionPay','UnionPayCF','Alipay','WeChat','Medicare','ScanCode','UnionPayOmni','His','ccbUnionPay','Icashier','ABCPay','EhcPay','CgbSmartPay','CashPay')  
 and rm.sfsc = '0'  
 order by rm.clwcsj desc,rm.jlcjsj desc 
 
 --delete from URP.E_EQUIPMENT_TRANSFLOW where 1=1  and to_char(dzrq,'yyyy-MM-dd') = '2020-09-14'
  select * from URP.e_reconresult_detail   where 1=1  and to_char(dzrq,'yyyy-MM-dd') = '2020-09-14' and yclx = '0'--and dzbh = '20200914P00002365DAREWAY'
 select * from URP.e_His_Transflow   where 1=1  and sfsc='0' and to_char(dzrq,'yyyy-MM-dd') = '2020-09-14' --and dzbh = '20200914P00002365DAREWAY' and jyqdbs = 'UnionPay'
 select * from URP.E_EQUIPMENT_TRANSFLOW   where 1=1 and sfsc='0'  and to_char(dzrq,'yyyy-MM-dd') = '2020-09-14' -- and dzbh = '20200914P00002365DAREWAY' and jyqdbs = 'UnionPay'
 
 --- 查询三方对账的正常交易集合
select his.jylsh hisjylsh,his.jyje hisjyje,his.bcjywybs,his.jysj hisjysj,his.dzbh hisdzbh,his.brjzkh kh,  
 eq.ddbh zzls,eq.jysj zzjysj,eq.zdbh zdbh,eq.jyje zzjyje, cn.qdmc zzjylx,eq.dzbh eqdzbh  
 from URP.e_reconresult_detail eqrs   
 inner join URP.E_EQUIPMENT_TRANSFLOW eq on eq.ynsblsid = eqrs.ynsblsid  
 inner join URP.e_His_Transflow his on his.dzbh = eq.dzbh 
 inner join URP.Channel_Info cn on cn.qdbm = eq.jyqdbs --or cn.qdbm = his.jyqdbs    
 where 1=1  
 and to_char(eqrs.dzrq,'yyyy-MM-dd') = '2020-09-14' 
 and eqrs.yclx = '0'
 and cn.qdbm = 'UnionPay' 
 --and eq.sbcsid = '4fcc70d4706b4120abe0ae308595ae54' 
 and eqrs.sfsc = '0';

 
--- 查询三方对账的异常交易集合
select  his.jylsh hisjylsh,his.jyje hisjyje,his.bcjywybs,his.jysj hisjysj,his.dzbh hisdzbh,his.brjzkh kh,  
 eq.ddbh zzls,eq.jysj zzjysj,eq.zdbh zdbh,eq.jyje zzjyje, cn.qdmc zzjylx,eq.dzbh eqdzbh  
 from URP.e_reconresult_detail eqrs   
 left join URP.E_EQUIPMENT_TRANSFLOW eq  on eq.ynsblsid = eqrs.ynsblsid 
 left join URP.e_His_Transflow his on his.ynhislsid = eqrs.ynhislsid  
 left join URP.Channel_Info cn on cn.qdbm = eq.jyqdbs or cn.qdbm = his.jyqdbs   
 where 1=1  and to_char(eqrs.dzrq,'yyyy-MM-dd') = '2020-09-14' 
 and eqrs.yclx != '0'
 and cn.qdbm = 'UnionPay' 
 --and eq.sbcsid = '4fcc70d4706b4120abe0ae308595ae54' 
 and eqrs.sfsc = '0';
 
select * from URP.ALIPAY_TRANSFLOW where dzbh = '20200915P00005400DAREWAY' 
select case when a.bly3 is null then '11' end jylsh  from URP.ALIPAY_TRANSFLOW a where dzbh = '20200915P00005400DAREWAY' 


--根据对账日期查询对账结果表的数据（包含渠道编码）
select cn.qdbm,rs.dzbs,rs.dzjg,rs.dzjgms,rs.qdjyzje,rs.qdjyzbs,rs.qdycjyzje,rs.ycjyzbs,rs.qdjyzb,rs.qdjylszb,rs.
		qdjyhbzb,rs.dzrq,rs.jlcjsj,rs.dzfs,rs.dzfqr,rs.sfsc,rs.bz,rs.bly1,rs.bly2,rs.bly3,rs.hisjyzje,rs.hisjyzbs,rs.hisycjyzje,rs. 
		qdycjyzbs,rs.hisycjyzbs 
    from URP.CHANNEL_RECONRESULT rs
    left join URP.CHANNEL_INFO cn on cn.qdid = rs.QDID
   where 1=1  and to_char(dzrq,'yyyy-MM-dd') = '2020-09-15' 
   and rs.sfsc = '0'
   
-- 统计his的退款笔数
select count(1) tkzbs
from HIS_TRANSFLOW his
where 1=1  and to_char(his.dzrq,'yyyy-MM-dd') = '2020-09-15' 
and his.sfsc = '0'
and his.ywlx = '退款'
-- 统计 手续费
select sum(sxf) sxf
  from (select sum(qd1.sxf) sxf
          from URP.Unionpay_Transflow qd1
         where 1 = 1
           and to_char(qd1.dzrq,'yyyy-MM-dd') = '2020-09-15'
           and qd1.sfsc = '0'
        union
        select sum(qd2.sxf) sxf
          from URP.CGBSMARTPAY_TRANSFLOW qd2
         where 1 = 1
           and to_char(qd2.dzrq,'yyyy-MM-dd') = '2020-09-15'
           and qd2.sfsc = '0'
        union
        select sum(qd3.sxf) sxf
          from URP.ALIPAY_TRANSFLOW qd3
         where 1 = 1
           and to_char(qd3.dzrq,'yyyy-MM-dd') = '2020-09-15'
           and qd3.sfsc = '0'
        union
        select sum(qd4.sxf) sxf
          from URP.Medicare_Transflow qd4
         where 1 = 1
           and to_char(qd4.dzrq,'yyyy-MM-dd') = '2020-09-15'
           and qd4.sfsc = '0'
        union
        select sum(qd5.sxf) sxf
          from URP.Wechat_transflow qd5
         where 1 = 1
           and to_char(qd5.dzrq,'yyyy-MM-dd') = '2020-09-15'
           and qd5.sfsc = '0')

-- E-his超期总金额，总比数(交易当天的流水)
select sum(his.jyje) jyje,count(1) total 
from URP.E_HIS_TRANSFLOW his 
where 1=1  
and to_char(his.dzrq,'yyyy-MM-dd') = '2020-09-14' 
and his.sfsc = '0'
and his.jyqdbs = 'Transfer'
-- ipay 查询超期总金额，总比数(交易当天的流水)
select sum(flow.jyje) jyje, count(1) total
  from URP.E_EQUIPMENT_TRANSFLOW flow
 inner join URP.E_EQUIPMENT_FACTORY eq
    on flow.sbcsid = eq.sbcsid
   and eq.sbcsbm = 'ipay'
 where 1 = 1
   and to_char(flow.dzrq, 'yyyy-MM-dd') = '2020-09-14'
   and flow.sfsc = '0'
   and flow.jyqdbs = 'Transfer'

-- 根据对账结果明细id 查询银联的交易（437b28dc39884612903436d3b3854b00）
select cnt.jyckh,cnt.jylsh,cnt.jysj,cnt.jyje
  from URP.UNIONPAY_TRANSFLOW cnt
 where 1 = 1
   and cnt.lsid = (select re.qdlsid
                     from URP.RECONRESULT_DETAIL re
                    where 1 = 1
                      and re.dzjgmxid = '12c363ffd078479bad48dff3c4bf165d'
                      and re.sfsc = '0')

-- 查询ipay detl
select distinct d.paystate from ipay.order_detl d;
select * from ipay.order_detl d where d.paystate = 'repaying'and yhid = 'UNIONCARD';
select * from ipay.order_detl where yhid = 'UNIONCARD' intradeno = '20200924P00002671DAREWAY'  --for update

select * from ipay.order_detl dl
where 1 = 1
   and dl.yhid = 'UNIONCARD'
   and dl.cardno = '260264'
   and dl.jyje = '0.01'
   and dl.fqjysj like '20200925%';
-- 院内卡充值情况记录表
   select * from ipay.sdsz_trade_info where jyddh = '20200925P00002719DAREWAY';
   
select case
         when dl.paystate = 'paid' then
          '已支付'
         when dl.paystate = 'repaid' then
          '已退款'
         when dl.paystate = 'failed' then
          '支付失败'
         when dl.paystate = 'paying' then
          '正在支付'
         when dl.paystate = 'repaying' then
          '正在退款'
         when dl.paystate = 'refailed' then
          '退款失败'
         when dl.paystate = 'closed' then
          '订单关闭'
         when dl.paystate = 'na' then
          '未知'
         when dl.paystate = 'nopay' then
          '未支付'
         else
          '未知'
       end paystate,
       TO_DATE(dl.jysj, 'yyyy-mm-dd hh24:mi:ss') jysj,
       dl.jyje,
       dl.terminalno,
       dl.brxm,
       dl.brsfzhm,
       dl.czyhmc,
       dl.czyxm
  from ipay.order_detl dl
 where 1 = 1
   and dl.yhid = 'UNIONCARD'
   and dl.cardno = '260264'
   and dl.jyje = '0.01'
   and dl.fqjysj like '20200925%'
   
