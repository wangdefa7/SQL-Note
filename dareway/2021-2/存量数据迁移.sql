 select * from ipay.order_detl a where 1=1
 and a.brsfzhm = 'test';
 
  select * from ipay.order_detl a where 1=1 and a.yhid != 'SPCLQY' and czyxm like '������%'
 
 
 select count(1) from ipay.order_genl gen  where 1=1
and gen.description = '��������Ǩ��';

select * from ipay.v_trade_info_yndz d where rownum<=3

delete from ipay.order_detl a where 1=1 and  a.brsfzhm = 'test';
delete from ipay.order_genl a where 1=1 and  a.description = '��������Ǩ��';


select a.accountid  ,a.jyje  from ipay.order_detl a where 1=1
and a.yhid = 'SPCLQY'
and a.accountid = '218447'
order by jyje desc


