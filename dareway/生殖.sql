--select * from ipay.order_detl  b where yhid = 'POS' order by b.fqjysj desc for update;
--mongoDB
-- 查询所有表
select * from user_tab_comments;


-- 框架配置表
select * from ddszone.sequence_info --for update;

select ddsname,ddszone_version,bigversion,smallversion from ddszone.ddsbase where arcdbid is null;
-- mongodb
select * from mongodb_para --for update;
select * from  ipay.UCOMPOS_MANAGEMENT_INFO

--视图order_gen_det_list
select * from  order_gen_det_list;

-- detl细表
select distinct dtl.yhid,dtl.terminalno  from ipay.order_detl dtl  where 1=1  and  dtl.terminalno is not null;


select dtl.terminalno,count(dtl.terminalno)  from ipay.order_detl dtl  where 1=1  and  dtl.yhid like 'U%' 
and msg like '%ER%'
group by dtl.terminalno
and dtl.fqjysj like '2021032413%'
and dtl.ip like '172.16.88.17' 
and dtl.paystate  in ('repaid') 
order by dtl.fqjysj desc;
 dtl.cqtfbs = '1' order by dtl.fqjysj desc;
--hisno
 select dtl.*  from ipay.order_detl dtl  where 1=1  and dtl.hisno = '20210305050478';
-- truncate table ipay.order_detl
-- jshid
 select * from ipay.order_detl a where 1=1 and a.jshid like '%*99024121040425613284%'  order by a.fqjysj desc;
 select * from ipay.order_detl a where 1=1 and a.jyje = 495.30   and a.jysj like '20210409%' order by a.fqjysj desc;
 
 select * from ipay.order_detl a where 1=1 and a.brxm like '侯占风%'and a.intradeno != '20210228P00066395DAREWAY' ;
 update ipay.order_detl a set a.paystate = 'paying',a.ip = '172.16.93.177'  where 1=1 
and a.yhid = 'UNIONCARD'
and a.brxm = '侯占风'
and a.intradeno != '20210228P00066395DAREWAY';
-- and a.intradeno = '20210228P00066385DAREWAY';
 
 
 -- yhid
select * from ipay.order_detl a where 1=1 --and a.yhid = 'YB'
and a.yhid like '%YB%' --and  a.paystate = 'paid' 
--and a.cardno = '571499'  
order by a.fqjysj desc;

-- 超期转现金
select * from ipay.OVERTOCASH_REFUND

-- 查询所有支付状态
select distinct a.paystate from ipay.order_detl a ;
--  intradeno
select * from ipay.order_detl a where 1=1 --order by intradeno desc;
 and intradeno like '%20210228P00066388DAREWAY%'
 --and a.paystate = 'refundclose'
 -- and a.yhid = 'UNIONCARD'
 --and a.brxm = '许树林'
 --and a.jysj like '20210220%'
 -- order by fqjysj desc;
 --and tradeno = 'IPA200921100018802'
 and tradeno = 'IPA210303100185767'
 and intradeno = '20210221P00059126DAREWAY'
 union
 select * from ipay.order_detl a where 1=1
-- and a.brxm = '张春荣'
 --and a.tradeno = 'IPA21022026285712'
 --and intradeno in('20210322P00098955DAREWAY','')
 and a.cardno in('571499','580315')
 order by a.fqjysj
;
 
 
 --- 删除医保撤销数据
 --delete from ipay.order_detl d where 1=1 and d.intradeno = '20210315P00087248DAREWAY'
 
 
select * from ipay.order_detl a where 1=1 --and  a.ynkcode = '3'

and a.jysj like '20210407%'
                              -- and a.jysj <= '20210310153113'
                               and a.czyxm = '刁静'
                               order by jysj
                               and a.yhmc = '微信'
 -- paystate czybh
select * from ipay.order_detl a where 1=1  and a.czybh = '226'and a.cqtfbs = '1' and a.czybh = '493' and ycbs = '0' order by a.fqjysj desc;
-- tradeno
select * from ipay.order_detl where tradeno = 'IPA201216100159856'
-- fqjysj
select * from ipay.order_detl  b  where 1=1  and fqjysj between '20200914000000' and '20200914162139'  order by fqjysj desc  ;
-- 细表超期
select * from ipay.order_detl  b where b.cqtfbs = '1' order by b.fqjysj desc;

-- 超期退费表
select  a.*from ipay.overtime_refund  a where 1=1 order by fqjysj desc  ;

select * from ipay.overtime_refund a where a.refundno = '20210318D00003190';
--select distinct state from ipay.overtime_refund  ; -- 超期退费状态

-- 退款表
select * from ipay.refund_detl order by cjsj desc;


  --update ipay.ORDER_DETL      set  jysj='20200723122522'   where intradeno='20200723P00001076DAREWAY'  
 -- update ipay.ORDER_DETL      set     paystate=:paystate      ,jysj=:jysj      ,jym_ibank=:jym_ibank      ,dsftradeno=:dsftradeno   where intradeno=:intradeno  
select * from ipay.order_detl  order by intradeno desc -- for update
select * from ipay.order_genl g where g.tradeno = 'IPA21022026285712'  and g.appid is not null-- order by --jysj desc ;
select * from ipay.order_genl gen  where 1=1
and gen.description = '存量迁移数据'

and gen.tradeno = 'IPA210220263510710'-- for update

select * from IPAY.SDSZ_TRADE_INFO tr order by tr.jyddh desc
--退款明细
select * from ipay.refund_detl order by cjsj desc;


--银行
select yhid,bz from ipay.bank_info where bz like '%医保%'  --for update
select distinct bz,yhid from ipay.bank_info
select * from ipay.bank_info where yhid = 'POS';

select * from urp.ucompos_trade_info s order by s.fqjysj desc

-- 托盘程序的表
Select * From ucompos_trade_info where (1>0)  and dyfwybs ='20200616P00000303DAREWAY' and jyzt ='1'  -- 退费失败
Select * From ucompos_trade_info where (1>0)  and dyfwybs ='20200618P00000432DAREWAY' -- 支付成功未退费
Select * From ucompos_trade_info where (1>0)  and dyfwybs ='20200618P00000420DAREWAY' and jyzt ='1' --成功

Select * From ucompos_trade_info order by fqjysj desc

Select * From ucompos_trade_info where (1>0) and ( dyfwybs ='20200618P00000432DAREWAY'
or dyfwybs ='20200618P00000420DAREWAY'
or dyfwybs ='20200616P00000303DAREWAY')
--发起调用的时候查询配置
Select * From ucompos_config where (1>0)  and yybh ='10001' and rzbm ='dw1001'
Select * From ucompos_config where (1>0)  and yybh ='10001' and rzbm ='dw1001'
--查询指定退款记录
select distinct a.yzdtje,a.description,a.zje,a.dzytje,b.jyje,b.tkintradeno,
--d2c(c2d(b.jysj,'yyyymmdd hh24:mi:ss'),'yyyy-mm-dd hh24:mi:ss') 
b.jysj,           
b.tradeno,b.intradeno,c.yhmc,b.yhid,b.paystate,b.fkjgbh,a.orgno,                
d.rzbm,d.czybh,d.czyxm,d.terminalno,d.jyqd ,d.cjsj                           
from ipay.order_genl a, ipay.order_detl b,                            
ipay.bank_info c,ipay.refund_detl d                          
where b.yhid = c.yhid                                        
and d.refundtradeno = b.refundtradeno                              
and a.tradeno = b.tradeno                                    
 and d.refundtradeno = '20200616000000050'       					  	         
 and a.yzdtje > 0        
 and b.paystate = 'paid'	
 and c.yhid = 'POS'
 order by b.jysj desc  
 --order by d.cjsj desc    				
 
 -- 查询所有表
 select * from user_tab_comments
 
1	USER_AUTHCODE	TABLE	用户授权码和支付宝UUID关系
2	UCOMPOS_MANAGEMENT_INFO	TABLE	调银商终端DLL管理类交易信息表
3	SDSZ_TRADE_INFO	TABLE	调用HIS账户验证、充值、退费接口，交易流水表
4	REFUND_DETL	TABLE	
5	OVERTIME_REFUND	TABLE	
6	ORG_INFO	TABLE	接入机构信息
7	ORG_BANK	TABLE	接入机构银行信息
8	ORDER_SETTLEPARA	TABLE	医保结算参数表
9	ORDER_GENL	TABLE	订单主表
10	ORDER_DETL	TABLE	订单辅表，支付明细表
11	MONGODB_PARA	TABLE	mongoDB配置参数
12	BANK_INFO	TABLE	银行基本信息
13	ORDER_GEN_DET_LIST	VIEW	

--订单主表
select * from ipay.order_genl order by cjsj desc ;
-- 订单辅表，支付明细表
select * from ORDER_DETL
-- 接入机构信息
select * from ORG_INFO

-- 调用HIS账户验证、充值、退费接口，交易流水表
select * from SDSZ_TRADE_INFO

-- 调银商终端DLL管理类交易信息表
select * from UCOMPOS_MANAGEMENT_INFO		

select * from urp.ucompos_config;

-- 银行基本信息
select * from ipay.bank_info --for update
select distinct bz from ipay.bank_info --for update
select * from ipay.order_detl where (cqtfbs is null or cqtfbs = '0') order by intradeno desc;
select * from ipay.order_detl where cqtfbs = '1' 
and jysj like '20210106%'
and czybh = '102'
and 
order by intradeno desc;

-- 对账视图 
select * from ipay.v_trade_info; 
select text from user_views where view_name = 'V_TRADE_INFO';
select view_name from user_views;
select * from ipay.v_trade_info_yndz a where a.jysj like '20210222%' and  a.yhid in ('WXXCX')

-- 创建视图(v_trade_info)
create or replace view ipay.v_trade_info as
select distinct
dt.tradeno,       --平台订单号
dt.intradeno ddbh, --交易订单号（订单编号）
dt.brxm,          --病人姓名
dt.cardno brjzkh, --病人就诊卡号
dt.brsfzhm sfzhm, --病人身份证号码
dt.yhid,          --支付银行
bk.yhjc qdmc,     --渠道名称
case bk.yhjc when '转账' then 'Transfer'  when '广发银行' then 'CgbSmartPay' when '支付宝' then 'Alipay' when 'POS' then 'UnionPay' when '现金' then 'CashPay' when '医保' then 'Medicare' when '微信' then 'WeChat' end jyqdbs, --交易渠道标识
case dt.type when 'pay' then '支付' when 'refund' then '退款' end ywlx, --业务类型
nvl(dt.fqjysj,dt.jysj) as jlcjsj,        --记录创建时间
dt.jysj,          --支付时间
--dt.jyje,
case dt.type when 'pay' then dt.jyje when 'refund' then -1*dt.jyje end jyje,
--to_char(dt.jyje,'0.99') as jyje,          --交易金额
gn.orgno mchid,   --医院编号
case dt.paystate when 'paid' then '1' when 'repaid' then '1' when 'paying' then '2' when 'repaying' then '2' when 'refailed' then '0' when 'failed' then '0' when 'closed' then '2' else '2' end jyzt, --交易状态(0:失败，1：成功，2：未知)
case dt.paystate when 'paid' then '已支付' when 'repaid' then '已退款' when 'paying' then '支付中' when 'repaying' then '退款中' when 'refailed' then '退款失败' when 'failed' then '支付失败' when 'closed' then '已关闭' else '未知' end jyztms, --交易状态描述
dt.tkintradeno,   --退款原订单号
dt.czyxm yhryxm,         --操作员姓名
dt.czybh yhrybh,         --操作员编号
dt.zflx,          --支付类型（0：充值，1：缴费）
dt.terminalno jyzdbh,    --交易终端编号
dt.merchantno jyshbh,    --交易商户编号
dt.jyqd jyjz,          --POS交易卡介质（医保，银联卡）
dt.hisno hisno,   -- his交易流水号
dt.ynkcode ynjyzt,  --院内卡状态标识：ynjyzt对应于ynccode (0:成功，1：失败，2：未知)
dt.jytj jytj --交易途径
from ipay.order_detl dt,
ipay.bank_info bk,
ipay.order_genl gn
where dt.tradeno=gn.tradeno 
and dt.yhid=bk.yhid
and dt.paystate in ('paid','repaid','refailed','failed','closed')
;

------------------
select * from ipay.order_detl a where a.jysj like '20201224%';
select * from ipay.v_trade_info_yndz where jysj like '2021022423%'
select * from ipay.v_trade_info_yndz where jysj like '2021022500%'
 and brjzkh = '060000018'  order by jyqdbs ;
select * from ipay.v_trade_info_yndz where jysj   between '20200828000000' and '20200828240000';
-- 交易视图 院内对账
create or replace view ipay.v_trade_info_yndz as
select distinct
dt.tradeno,       --平台订单号
dt.intradeno ddbh,--交易订单号（订单编号）
dt.hisno,         --his调用流水号
dt.brxm,          --病人姓名
dt.cardno brjzkh, --病人就诊卡号
dt.brsfzhm sfzhm, --病人身份证号码
dt.yhid,          --支付银行/渠道
bk.yhjc qdmc,     --支付银行/渠道名称
case when instr（bk.yhjc, '转账') > 0  or dt.cqtfbs = '1' then 'Transfer' when instr（bk.yhjc, '广发') > 0 then 'CgbSmartPay' when instr（bk.yhjc, '支付宝') > 0 then 'Alipay' when instr（bk.yhjc, 'POS') > 0 then 'UnionPay' when instr（bk.yhjc, '现金') > 0 then 'CashPay' when bk.yhjc = '医保' then 'Medicare' when dt.yhid = 'SYBMZ' then 'Medicare' when dt.yhid = 'SYBZY' then 'Medicare' when bk.yhjc = '异地门诊' then 'Medicare' when bk.yhjc = '异地住院' then 'Medicare' when instr（bk.yhjc, '微信') > 0 then 'WeChat'  else 'Other' end jyqdbs, --交易渠道标识
case dt.type when 'pay' then '支付' when 'refund' then '退款' end ywlx, --业务类型
nvl(dt.fqjysj,dt.jysj) as jlcjsj,        --记录创建时间
dt.jysj,          --支付时间
case dt.type when 'pay' then dt.jyje when 'refund' then -1*dt.jyje end jyje,          --交易金额
dt.ynkcode,       --院内卡状态
gn.orgno mchid,   --医院编号
case dt.paystate when 'paid' then '1' when 'repaid' then '1' when 'paying' then '2' when 'repaying' then '2' when 'refailed' then '0' when 'failed' then '0' when 'closed' then '2' else '2' end jyzt, --交易状态(0:失败，1：成功，2：未知)
case dt.paystate when 'paid' then '已支付' when 'repaid' then '已退款' when 'paying' then '支付中' when 'repaying' then '退款中' when 'refailed' then '退款失败' when 'failed' then '支付失败' when 'closed' then '已关闭' else '未知' end jyztms, --交易状态描述
dt.tkintradeno yddbh,   --退款原订单号
dt.dsftradeno jyckh,    --交易参考号（终端）、结算号id （医保）
case when instr（bk.yhjc, 'POS') > 0 then dt.jym_ibank when bk.yhjc = '医保' then dt.jshid when bk.yhjc = '省医保门诊' then dt.jshid when bk.yhjc = '省医保住院' then dt.jshid when bk.yhjc = '异地门诊' then dt.jshid when bk.yhjc = '异地住院' then dt.jshid else '' end jylsh,     --交易流水号（终端）
dt.czyxm yhryxm,        --操作员姓名
dt.czybh yhrybh,        --操作员编号
dt.zflx,                --支付类型（0：充值，1：缴费）
dt.terminalno jyzdbh,   --交易终端编号
dt.merchantno jyshbh,   --交易商户编号、 住院流水号（医保）
dt.jyqd jykjz,          --POS交易卡介质（医保，银联卡）
dt.jyfs,                --交易方式
case dt.jytj when '2' then 'dwzfbshh' when '5' then 'gwi' else 'Ehis' end sbcsbm, --设备厂商编码
dt.jytj jyylx,          --交易途径
dt.zjlx tcje,           --统筹金额
dt.zjhm gzje            --个账金额
from ipay.order_detl dt,
ipay.bank_info bk,
ipay.order_genl gn
where dt.tradeno=gn.tradeno
and dt.yhid=bk.yhid
and dt.paystate in ('paid','repaid','refailed','failed','closed')
;


select jyfs from ipay.order_detl a where a.tradeno = ''

where a.tradeno

select * from ipay.v_trade_cashpay_info
-- 现金支付视图
create or replace view ipay.v_trade_cashpay_info as
select * from ipay.order_detl dt  where yhid = 'XJZF' 
and dt.paystate in ('paid','repaid')


-- 邓伟浩增加字段
alter table ipay.order_detl add czlx varchar2(10);
comment on column ipay.order_detl.czlx is '充值类型(1：门诊，2：住院)';
alter table ipay.SDSZ_TRADE_INFO add czlx varchar2(10);
comment on column ipay.SDSZ_TRADE_INFO.czlx is '充值类型(1：门诊，2：住院)';



 select a.tradeno, a.intradeno, a.fqjysj, a.jysj, a.jyje, a.type,         
 a.brxm , a.brsfzhm , a.brynid, a.cardno, a.brlxfs ,          
 a.paystate, a.type handle, a.ynkcode, a.ip, a.czybh,           
 a.czyxm, a.appid, a.terminalno,a.zflx, a.hisno, b.yhid, b.yhmc, c.orgno   
 from ipay.order_detl a, ipay.bank_info b, ipay.order_genl c   
 where a.yhid = b.yhid     and a.tradeno = c.tradeno   
 and a.fqjysj >= '20200819000000'   and a.fqjysj <= '20200819235959'  
 order by a.fqjysj desc 


-- 超期退费查询渠道
select * from ipay.overtime_refund;
select * from ipay.refund_detl;
select a.* from ipay.order_detl a where a.jysj like '20200821%' 

select distinct a.jyfs from ipay.order_detl a left join
ipay.order_genl b on b.tradeno = a.tradeno where a.jysj like '20200821%' ;

select * from ipay.bank_info -- for update;
				    	
