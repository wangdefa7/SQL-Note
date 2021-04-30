
-- 查询所有表以及备注
select * from user_tab_comments;

-- 医保局信息表
select * From Bt_Medicare_Bureau;
--for update

truncate table Bt_Medicare_Bureau;


-- 明细表

select a.yybm 药店编码,
       (select b.jgmc from mhs5.odr_org_info b where a.yybm = b.jgid) 药店名称,
       a.sbjgbh 医保局编码,
       (select c.sbjgmc
          from mhs5.si_hosp_rela c
         where a.yybm = c.yybm
           and a.sbjgbh = c.sbjgbh) 医保局名称,
       a.xm 姓名,
       a.grbh 个人编号,
       (nvl ((select bz from mhs5.channel_no_gl d where a.channel_no = d.channel_no),'社保卡')) 结算方式,
       a.zje 交易金额,
       a.scsj 交易时间,
       0 统筹金额,
       a.grzhzf 个账金额,
       a.xjzf 线自费金额,
       a.jshid 结算号,
       a.zdlsh 流水号
  from mhs5.dips_order a
 where a.yybm = '012124'
   and a.statecode = '03'
   and to_char(a.scsj, 'yyyymm') = '202006';
















-- 1、药店编码  012124；

-- 明细表  201910
select a.yybm 药店编码,
       (select b.jgmc from mhs5.odr_org_info b where a.yybm = b.jgid) 药店名称,
       a.sbjgbh 医保局编码,
       (select c.sbjgmc
          from mhs5.si_hosp_rela c
         where a.yybm = c.yybm
           and a.sbjgbh = c.sbjgbh) 医保局名称,
       a.xm 姓名,
       a.grbh 个人编号,
       (nvl ((select bz from mhs5.channel_no_gl d where a.channel_no = d.channel_no),'社保卡')) 结算方式,
       a.zje 交易金额,
       a.scsj 交易时间,
      -- to_char(a.scsj, 'yyyymm') 时间,
       0 统筹金额,
       a.grzhzf 个账金额,
       a.xjzf 线自费金额,
       a.jshid 结算号,
       a.zdlsh 流水号
  from mhs5.dips_order a
 where a.yybm = '012124'
   and a.statecode = '03'
   and to_char(a.scsj, 'yyyymm') = '202002';
   
   
   --dips_order 表
   select * from mhs5.dips_order
   
   -- 漱玉对账汇总表  201910 
   
   select a.yybm 药店编码,
       (select b.jgmc from mhs5.odr_org_info b where a.yybm = b.jgid) 药店名称,
       a.sbjgbh 医保局编码,
       (select c.sbjgmc
          from mhs5.si_hosp_rela c
         where a.yybm = c.yybm
           and a.sbjgbh = c.sbjgbh) 医保局名称,
       count(1) 总笔数,
       sum(nvl(a.zje, 0)) 总金额,
       sum(nvl(a.grzhzf, 0)) 个账总金额,
       sum(nvl(a.grzhzf, 0)) * 0.05 扣除质保金,
       sum(nvl(a.grzhzf, 0)) * 0.95 实际拨付金额,
       to_char(a.czsj, 'yyyymm') 汇总年月
  from (select yybm,sbjgbh,statecode,scsj czsj,zje,grzhzf from mhs5.dips_order where statecode ='03' union 
        select yybm,sbjgbh,statecode,cxsj czsj,-abs(zje) zje,-abs(grzhzf) grzhzf from mhs5.dips_order where statecode ='06' and to_char(scsj,'yyyymm') != to_char(cxsj,'yyyymm') )a
 where a.yybm = '012124'
   and to_char(a.czsj, 'yyyymm') = '202003'
 group by a.sbjgbh, a.yybm,to_char(a.czsj, 'yyyymm') 
 
 
 
  -- 医保定点 汇总表  md_summary
 select * from md_summary
 --truncate table md_summary 
 -- 医保定点 明细表  md_details
 
  select * from md_details order by jysj desc;
  
  
  -- 关联查询测试
  select d.jysj ,s.ddhzid,s.hzny from md_details d 
   left join md_summary s on d.ddhzid = s.ddhzid;
   
   select sum(m.jyje) from md_details m where m.ddhzid = 'C8E98CB60440000177B1B1BA1BF0102B'
  --truncate table md_details
  -- 基础表 机构表
  select * from bt_inst_info 
  for update
  
   -- 基础表 机构 门店表
   select * from bt_inst_store 
   for update
   
  -- 基础表 医保局表
  select * from mc_medicare_bureau
  
  
 
