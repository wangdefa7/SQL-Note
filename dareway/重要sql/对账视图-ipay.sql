-- 查询对账视图 
select * from ipay.v_trade_info  where jysj like '20210218%' and ywlx  = '退款';
select * from ipay.v_trade_info_yndz where 1=1 --and qdmc = '医保'
and ddbh = '20210306P00074417DAREWAY'
 order by jlcjsj desc;
 select * from ipay.v_trade_info_yndz where jysj between '20210401000000' and '20210402000000' 
--select * from ipay.v_trade_info_yndz where 1=1
select * from ipay.v_trade_info_yndz where 1=1
--and ddbh = '20210322P00098955DAREWAY'
 and jysj between '20210410000000' and '20210411000000'
 and jyqdbs = 'Medicare'
 and qdmc = '医保'
 and ddbh = '20210322P00098955DAREWAY';
select * from ipay.v_trade_info_yndz a where 1=1 and a.jysj >= '20210310000000'
                               and a.jysj <= '20210310153113'
                               and a.yhryxm = '刁静'
                               and a.yhmc = '微信';

--超期表
select * from  ipay.refund_detl where 
cjsj like '20210218%' and status = 'paid'
 cjsj between '20210218' and '20210218';
 
select * from  ipay.overtime_refund where 
 fqjysj between '20210126093414' and '20210126093914';
 
 
-- 创建视图(v_trade_info) 渠道对账
create or replace view v_trade_info as
select distinct
dt.tradeno,       --平台订单号
dt.intradeno ddbh, --交易订单号（订单编号）
dt.brxm,          --病人姓名
dt.cardno brjzkh, --病人就诊卡号
dt.brsfzhm sfzhm, --病人身份证号码
dt.yhid,          --支付银行
bk.yhjc qdmc,     --渠道名称
bk.yhmc yhmc,     --银行名称（实际的支付渠道）
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
and (dt.cqtfbs <> '1' or dt.cqtfbs is null)
and dt.paystate in ('paid','repaid','refailed','failed','closed');

-- 查询 院内对账 视图
select * from ipay.order_detl a where a.jysj like '20201224%';
select * from ipay.v_trade_info_yndz where jysj like '20201224%' and brjzkh = '060000018'  order by jyqdbs ;
select * from ipay.v_trade_info_yndz where jysj   between '20200828000000' and '20200828240000';



--查询对账院内视图2.0
select * from ipay.v_trade_info_yndz where ddbh like '%'  and yhrybh = '225' order by jysj desc;

--对账院内视图2.0(已切换)

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
bk.bz yhmc,     --银行名称（实际的支付渠道）
case when dt.cqtfbs = '1' then 'Transfer' when instr（bk.yhjc, '可退金额') > 0 then 'SPCLQY' when instr（bk.yhjc, '广发') > 0 then 'CgbSmartPay' when instr（bk.yhjc, '支付宝') > 0 then 'Alipay' when instr（bk.yhjc, 'POS') > 0 then 'UnionPay' when instr（bk.yhjc, '现金') > 0 then 'CashPay' when instr（bk.yhjc, '医保') > 0 then 'Medicare' when dt.yhid = 'SYBMZ' then 'Medicare' when dt.yhid = 'SYBZY' then 'Medicare' when bk.yhjc = '异地门诊' then 'Medicare' when bk.yhjc = '异地住院' then 'Medicare' when instr（bk.yhjc, '微信') > 0 then 'WeChat'  else 'Other' end jyqdbs, --交易渠道标识
case dt.type when 'pay' then '支付' when 'refund' then '退款' end ywlx, --业务类型
nvl(dt.fqjysj,dt.jysj) as jlcjsj,        --记录创建时间
case  when instr（bk.yhjc, '医保') > 0 then nvl(dt.ynjysj,dt.jysj) when dt.type = 'pay' then nvl(dt.ynjysj,'') when dt.type ='refund' then nvl(dt.ynjysj,dt.jysj) end  jysj,          --支付时间
case dt.type when 'pay' then dt.jyje when 'refund' then -1*dt.jyje end jyje,          --交易金额
--case when instr（bk.yhjc, '医保') > 0 and dt.type = 'pay'  then (case when dt.zjlx = '0' then to_number(dt.zjhm) else to_number(dt.zjlx) end) 
--when instr（bk.yhjc, '医保') > 0 and dt.type = 'refund' then (case when dt.zjlx = '0' then -1*to_number(dt.zjhm) else -1*to_number(dt.zjlx) end) 
--else (case dt.type when 'pay' then dt.jyje when 'refund' then -1*dt.jyje end) end jyje,          --交易金额

dt.ynkcode ynjyzt,  --院内卡状态标识：ynjyzt对应于ynccode (0:成功，1：失败，2：未知)
dt.ynkcode,
gn.orgno mchid,   --医院编号
case dt.paystate when 'paid' then '1' when 'repaid' then '1' when 'paying' then '2' when 'repaying' then '2' when 'refailed' then '0' when 'failed' then '0' when 'closed' then '2' else '2' end jyzt, --交易状态(0:失败，1：成功，2：未知)
case dt.paystate when 'paid' then '已支付' when 'repaid' then '已退款' when 'paying' then '支付中' when 'repaying' then '退款中' when 'refailed' then '退款失败' when 'failed' then '支付失败' when 'closed' then '已关闭' else '未知' end jyztms, --交易状态描述
dt.tkintradeno yddbh,   --退款原订单号
dt.brlxfs jyckh,    --交易参考号（终端）、结算号id （医保）
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
nvl(dt.zjlx,'0') tcje,           --统筹金额
nvl(dt.zjhm,'0') gzje            --个账金额
from ipay.order_detl dt,
ipay.bank_info bk,
ipay.order_genl gn
where dt.tradeno=gn.tradeno
and dt.yhid=bk.yhid
and dt.yhid != 'SPCLQY'
and dt.paystate in ('paid','repaid','refailed','failed','closed')
--测试，记得删除
--and bk.yhjc = '医保'
and (dt.cqtfbs not in ('1','2') or dt.cqtfbs is null) --明细表剔除超期退费数据和超期转现金部分
union 
--超期退费数据（批量转账）
select distinct
'' tradeno,       --超期退费订单号
refund.refundno ddbh ,-- （订单编号）
refund.hisno hisno,         --his调用流水号
refund.brxm,          --病人姓名
refund.cardno brjzkh, --病人就诊卡号
refund.brsfzhm sfzhm, --病人身份证号码
'UNIONCARD' yhid,          --支付银行/渠道
'超期' qdmc,     --支付银行/渠道名称
'超期' yhmc,     --银行名称（实际的支付渠道）
'Transfer'  jyqdbs, --交易渠道标识
'退款'  ywlx, --业务类型
nvl(refund.fqjysj,refund.jysj) as jlcjsj,        --记录创建时间
refund.fqjysj jysj,          --支付时间
 -1*refund.jyje jyje,          --交易金额
dtl.ynkcode ynjyzt,  --院内卡状态标识：ynjyzt对应于ynccode (0:成功，1：失败，2：未知)
dtl.ynkcode,
dtl.mchid mchid,   --医院编号
case refund.state when 'refund' then '1' when 'repaying' then '1' when 'repayings' then '1' when 'repaid' then '1'  when 'refunding' then '1' when 'failed' then '0' when 'refailed' then '0' else '2' end jyzt, --交易状态(0:失败，1：成功，2：未知)
case refund.state when 'refund' then '转账成功' when 'repaying' then '未审核' when 'repayings' then '审核通过，未复核' when 'repaid' then '审核通过，复核通过'  when 'refunding' then '转账中' when 'failed' then '转账失败' when 'refailed' then '审核/复核不通过'  else '未知' end jyztms, --交易状态描述
'' yddbh,   --退款原订单号
refund.brlxfs jyckh,    --交易参考号（银行卡号）
refund.bryhkh jylsh,     --交易流水号（银行卡号）
refund.czyxm yhryxm,        --操作员姓名
refund.czybh yhrybh,        --操作员编号
'' zflx,                --支付类型（0：充值，1：缴费）
'' jyzdbh,   --交易终端编号
'' jyshbh,   --交易商户编号、 住院流水号（医保）dt.merchantno
'' jykjz,          --POS交易卡介质（医保，银联卡）
'' jyfs,                --交易方式
'' sbcsbm, --设备厂商编码
'' jyylx,          --交易途径
'0' tcje,           --统筹金额
'0' gzje            --个账金额
from ipay.overtime_refund refund
left join (
select refuns.refundno, refuns.mchid, dtl1.ynkcode
  from ipay.refund_detl refuns
  left join ipay.order_detl dtl1
    on dtl1.refundtradeno = refuns.refundtradeno
 where dtl1.cqtfbs = '1'
 group by refuns.refundno, refuns.mchid, dtl1.ynkcode
   
) dtl on dtl.refundno = refund.refundno
where refund.state in ('repaid',
                    'refund',
                    'refunding',
                    'repaying',
                    'repayings')
 --超期退费数据（转现金）
 union  
 select distinct
'' tradeno,       --超期退费订单号
cash.refundno ddbh ,-- （订单编号）
cash.hisno hisno,         --his调用流水号
cash.brxm,          --病人姓名
cash.cardno brjzkh, --病人就诊卡号
cash.brsfzhm sfzhm, --病人身份证号码
'XJZF' yhid,          --支付银行/渠道
'现金' qdmc,     --支付银行/渠道名称
'现金' yhmc,     --银行名称（实际的支付渠道）
'CashPay'  jyqdbs, --交易渠道标识
'退款'  ywlx, --业务类型
nvl(cash.fqjysj,'') as jlcjsj,        --记录创建时间
nvl(cash.jysj,cash.fqjysj) jysj,          --支付时间
 -1*cash.jyje jyje,          --交易金额
dtlcash2.ynkcode ynjyzt,  --院内卡状态标识：ynjyzt对应于ynccode (0:成功，1：失败，2：未知)
dtlcash2.ynkcode,
dtlcash2.mchid mchid,   --医院编号
case cash.state when 'repaid' then '1'  when 'refailed' then '0'  else '2' end jyzt, --交易状态(0:失败，1：成功，2：未知)
case cash.state when 'repaid' then '已退款(超期)'  when 'refailed' then '退款失败(超期)' else '未知(超期)' end jyztms, --交易状态描述
'' yddbh,   --退款原订单号
cash.brlxfs jyckh,    --交易参考号（银行卡号）
'' jylsh,     --交易流水号（银行卡号）
cash.czyxm yhryxm,        --操作员姓名
cash.czybh yhrybh,        --操作员编号
'' zflx,                --支付类型（0：充值，1：缴费）
'' jyzdbh,   --交易终端编号
'' jyshbh,   --交易商户编号、 住院流水号（医保）dt.merchantno
'' jykjz,          --POS交易卡介质（医保，银联卡）
'' jyfs,                --交易方式
'' sbcsbm, --设备厂商编码
'' jyylx,          --交易途径
'0' tcje,           --统筹金额
'0' gzje            --个账金额
from ipay.overtocash_refund cash
left join (
select refuns.refundno, refuns.mchid, dtlcash.ynkcode
  from ipay.refund_detl refuns
  left join ipay.order_detl dtlcash
    on dtlcash.refundtradeno = refuns.refundtradeno
 where dtlcash.cqtfbs = '2'
 group by refuns.refundno, refuns.mchid, dtlcash.ynkcode
) dtlcash2 on dtlcash2.refundno = cash.refundno
where cash.state in ('repaid');
                    


