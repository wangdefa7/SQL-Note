
-- ��ѯ���б��Լ���ע
select * from user_tab_comments;

-- ҽ������Ϣ��
select * From Bt_Medicare_Bureau;
--for update

truncate table Bt_Medicare_Bureau;


-- ��ϸ��

select a.yybm ҩ�����,
       (select b.jgmc from mhs5.odr_org_info b where a.yybm = b.jgid) ҩ������,
       a.sbjgbh ҽ���ֱ���,
       (select c.sbjgmc
          from mhs5.si_hosp_rela c
         where a.yybm = c.yybm
           and a.sbjgbh = c.sbjgbh) ҽ��������,
       a.xm ����,
       a.grbh ���˱��,
       (nvl ((select bz from mhs5.channel_no_gl d where a.channel_no = d.channel_no),'�籣��')) ���㷽ʽ,
       a.zje ���׽��,
       a.scsj ����ʱ��,
       0 ͳ����,
       a.grzhzf ���˽��,
       a.xjzf ���Էѽ��,
       a.jshid �����,
       a.zdlsh ��ˮ��
  from mhs5.dips_order a
 where a.yybm = '012124'
   and a.statecode = '03'
   and to_char(a.scsj, 'yyyymm') = '202006';
















-- 1��ҩ�����  012124��

-- ��ϸ��  201910
select a.yybm ҩ�����,
       (select b.jgmc from mhs5.odr_org_info b where a.yybm = b.jgid) ҩ������,
       a.sbjgbh ҽ���ֱ���,
       (select c.sbjgmc
          from mhs5.si_hosp_rela c
         where a.yybm = c.yybm
           and a.sbjgbh = c.sbjgbh) ҽ��������,
       a.xm ����,
       a.grbh ���˱��,
       (nvl ((select bz from mhs5.channel_no_gl d where a.channel_no = d.channel_no),'�籣��')) ���㷽ʽ,
       a.zje ���׽��,
       a.scsj ����ʱ��,
      -- to_char(a.scsj, 'yyyymm') ʱ��,
       0 ͳ����,
       a.grzhzf ���˽��,
       a.xjzf ���Էѽ��,
       a.jshid �����,
       a.zdlsh ��ˮ��
  from mhs5.dips_order a
 where a.yybm = '012124'
   and a.statecode = '03'
   and to_char(a.scsj, 'yyyymm') = '202002';
   
   
   --dips_order ��
   select * from mhs5.dips_order
   
   -- ������˻��ܱ�  201910 
   
   select a.yybm ҩ�����,
       (select b.jgmc from mhs5.odr_org_info b where a.yybm = b.jgid) ҩ������,
       a.sbjgbh ҽ���ֱ���,
       (select c.sbjgmc
          from mhs5.si_hosp_rela c
         where a.yybm = c.yybm
           and a.sbjgbh = c.sbjgbh) ҽ��������,
       count(1) �ܱ���,
       sum(nvl(a.zje, 0)) �ܽ��,
       sum(nvl(a.grzhzf, 0)) �����ܽ��,
       sum(nvl(a.grzhzf, 0)) * 0.05 �۳��ʱ���,
       sum(nvl(a.grzhzf, 0)) * 0.95 ʵ�ʲ������,
       to_char(a.czsj, 'yyyymm') ��������
  from (select yybm,sbjgbh,statecode,scsj czsj,zje,grzhzf from mhs5.dips_order where statecode ='03' union 
        select yybm,sbjgbh,statecode,cxsj czsj,-abs(zje) zje,-abs(grzhzf) grzhzf from mhs5.dips_order where statecode ='06' and to_char(scsj,'yyyymm') != to_char(cxsj,'yyyymm') )a
 where a.yybm = '012124'
   and to_char(a.czsj, 'yyyymm') = '202003'
 group by a.sbjgbh, a.yybm,to_char(a.czsj, 'yyyymm') 
 
 
 
  -- ҽ������ ���ܱ�  md_summary
 select * from md_summary
 --truncate table md_summary 
 -- ҽ������ ��ϸ��  md_details
 
  select * from md_details order by jysj desc;
  
  
  -- ������ѯ����
  select d.jysj ,s.ddhzid,s.hzny from md_details d 
   left join md_summary s on d.ddhzid = s.ddhzid;
   
   select sum(m.jyje) from md_details m where m.ddhzid = 'C8E98CB60440000177B1B1BA1BF0102B'
  --truncate table md_details
  -- ������ ������
  select * from bt_inst_info 
  for update
  
   -- ������ ���� �ŵ��
   select * from bt_inst_store 
   for update
   
  -- ������ ҽ���ֱ�
  select * from mc_medicare_bureau
  
  
 
