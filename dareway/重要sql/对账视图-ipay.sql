-- ��ѯ������ͼ 
select * from ipay.v_trade_info  where jysj like '20210218%' and ywlx  = '�˿�';
select * from ipay.v_trade_info_yndz where 1=1 --and qdmc = 'ҽ��'
and ddbh = '20210306P00074417DAREWAY'
 order by jlcjsj desc;
 select * from ipay.v_trade_info_yndz where jysj between '20210401000000' and '20210402000000' 
--select * from ipay.v_trade_info_yndz where 1=1
select * from ipay.v_trade_info_yndz where 1=1
--and ddbh = '20210322P00098955DAREWAY'
 and jysj between '20210410000000' and '20210411000000'
 and jyqdbs = 'Medicare'
 and qdmc = 'ҽ��'
 and ddbh = '20210322P00098955DAREWAY';
select * from ipay.v_trade_info_yndz a where 1=1 and a.jysj >= '20210310000000'
                               and a.jysj <= '20210310153113'
                               and a.yhryxm = '��'
                               and a.yhmc = '΢��';

--���ڱ�
select * from  ipay.refund_detl where 
cjsj like '20210218%' and status = 'paid'
 cjsj between '20210218' and '20210218';
 
select * from  ipay.overtime_refund where 
 fqjysj between '20210126093414' and '20210126093914';
 
 
-- ������ͼ(v_trade_info) ��������
create or replace view v_trade_info as
select distinct
dt.tradeno,       --ƽ̨������
dt.intradeno ddbh, --���׶����ţ�������ţ�
dt.brxm,          --��������
dt.cardno brjzkh, --���˾��￨��
dt.brsfzhm sfzhm, --�������֤����
dt.yhid,          --֧������
bk.yhjc qdmc,     --��������
bk.yhmc yhmc,     --�������ƣ�ʵ�ʵ�֧��������
case bk.yhjc when 'ת��' then 'Transfer'  when '�㷢����' then 'CgbSmartPay' when '֧����' then 'Alipay' when 'POS' then 'UnionPay' when '�ֽ�' then 'CashPay' when 'ҽ��' then 'Medicare' when '΢��' then 'WeChat' end jyqdbs, --����������ʶ
case dt.type when 'pay' then '֧��' when 'refund' then '�˿�' end ywlx, --ҵ������
nvl(dt.fqjysj,dt.jysj) as jlcjsj,        --��¼����ʱ��
dt.jysj,          --֧��ʱ��
--dt.jyje,
case dt.type when 'pay' then dt.jyje when 'refund' then -1*dt.jyje end jyje,
--to_char(dt.jyje,'0.99') as jyje,          --���׽��
gn.orgno mchid,   --ҽԺ���
case dt.paystate when 'paid' then '1' when 'repaid' then '1' when 'paying' then '2' when 'repaying' then '2' when 'refailed' then '0' when 'failed' then '0' when 'closed' then '2' else '2' end jyzt, --����״̬(0:ʧ�ܣ�1���ɹ���2��δ֪)
case dt.paystate when 'paid' then '��֧��' when 'repaid' then '���˿�' when 'paying' then '֧����' when 'repaying' then '�˿���' when 'refailed' then '�˿�ʧ��' when 'failed' then '֧��ʧ��' when 'closed' then '�ѹر�' else 'δ֪' end jyztms, --����״̬����
dt.tkintradeno,   --�˿�ԭ������
dt.czyxm yhryxm,         --����Ա����
dt.czybh yhrybh,         --����Ա���
dt.zflx,          --֧�����ͣ�0����ֵ��1���ɷѣ�
dt.terminalno jyzdbh,    --�����ն˱��
dt.merchantno jyshbh,    --�����̻����
dt.jyqd jyjz,          --POS���׿����ʣ�ҽ������������
dt.hisno hisno,   -- his������ˮ��
dt.ynkcode ynjyzt,  --Ժ�ڿ�״̬��ʶ��ynjyzt��Ӧ��ynccode (0:�ɹ���1��ʧ�ܣ�2��δ֪)
dt.jytj jytj --����;��
from ipay.order_detl dt,
ipay.bank_info bk,
ipay.order_genl gn
where dt.tradeno=gn.tradeno
and dt.yhid=bk.yhid
and (dt.cqtfbs <> '1' or dt.cqtfbs is null)
and dt.paystate in ('paid','repaid','refailed','failed','closed');

-- ��ѯ Ժ�ڶ��� ��ͼ
select * from ipay.order_detl a where a.jysj like '20201224%';
select * from ipay.v_trade_info_yndz where jysj like '20201224%' and brjzkh = '060000018'  order by jyqdbs ;
select * from ipay.v_trade_info_yndz where jysj   between '20200828000000' and '20200828240000';



--��ѯ����Ժ����ͼ2.0
select * from ipay.v_trade_info_yndz where ddbh like '%'  and yhrybh = '225' order by jysj desc;

--����Ժ����ͼ2.0(���л�)

create or replace view ipay.v_trade_info_yndz as
select distinct
dt.tradeno,       --ƽ̨������
dt.intradeno ddbh,--���׶����ţ�������ţ�
dt.hisno,         --his������ˮ��
dt.brxm,          --��������
dt.cardno brjzkh, --���˾��￨��
dt.brsfzhm sfzhm, --�������֤����
dt.yhid,          --֧������/����
bk.yhjc qdmc,     --֧������/��������
bk.bz yhmc,     --�������ƣ�ʵ�ʵ�֧��������
case when dt.cqtfbs = '1' then 'Transfer' when instr��bk.yhjc, '���˽��') > 0 then 'SPCLQY' when instr��bk.yhjc, '�㷢') > 0 then 'CgbSmartPay' when instr��bk.yhjc, '֧����') > 0 then 'Alipay' when instr��bk.yhjc, 'POS') > 0 then 'UnionPay' when instr��bk.yhjc, '�ֽ�') > 0 then 'CashPay' when instr��bk.yhjc, 'ҽ��') > 0 then 'Medicare' when dt.yhid = 'SYBMZ' then 'Medicare' when dt.yhid = 'SYBZY' then 'Medicare' when bk.yhjc = '�������' then 'Medicare' when bk.yhjc = '���סԺ' then 'Medicare' when instr��bk.yhjc, '΢��') > 0 then 'WeChat'  else 'Other' end jyqdbs, --����������ʶ
case dt.type when 'pay' then '֧��' when 'refund' then '�˿�' end ywlx, --ҵ������
nvl(dt.fqjysj,dt.jysj) as jlcjsj,        --��¼����ʱ��
case  when instr��bk.yhjc, 'ҽ��') > 0 then nvl(dt.ynjysj,dt.jysj) when dt.type = 'pay' then nvl(dt.ynjysj,'') when dt.type ='refund' then nvl(dt.ynjysj,dt.jysj) end  jysj,          --֧��ʱ��
case dt.type when 'pay' then dt.jyje when 'refund' then -1*dt.jyje end jyje,          --���׽��
--case when instr��bk.yhjc, 'ҽ��') > 0 and dt.type = 'pay'  then (case when dt.zjlx = '0' then to_number(dt.zjhm) else to_number(dt.zjlx) end) 
--when instr��bk.yhjc, 'ҽ��') > 0 and dt.type = 'refund' then (case when dt.zjlx = '0' then -1*to_number(dt.zjhm) else -1*to_number(dt.zjlx) end) 
--else (case dt.type when 'pay' then dt.jyje when 'refund' then -1*dt.jyje end) end jyje,          --���׽��

dt.ynkcode ynjyzt,  --Ժ�ڿ�״̬��ʶ��ynjyzt��Ӧ��ynccode (0:�ɹ���1��ʧ�ܣ�2��δ֪)
dt.ynkcode,
gn.orgno mchid,   --ҽԺ���
case dt.paystate when 'paid' then '1' when 'repaid' then '1' when 'paying' then '2' when 'repaying' then '2' when 'refailed' then '0' when 'failed' then '0' when 'closed' then '2' else '2' end jyzt, --����״̬(0:ʧ�ܣ�1���ɹ���2��δ֪)
case dt.paystate when 'paid' then '��֧��' when 'repaid' then '���˿�' when 'paying' then '֧����' when 'repaying' then '�˿���' when 'refailed' then '�˿�ʧ��' when 'failed' then '֧��ʧ��' when 'closed' then '�ѹر�' else 'δ֪' end jyztms, --����״̬����
dt.tkintradeno yddbh,   --�˿�ԭ������
dt.brlxfs jyckh,    --���ײο��ţ��նˣ��������id ��ҽ����
case when instr��bk.yhjc, 'POS') > 0 then dt.jym_ibank when bk.yhjc = 'ҽ��' then dt.jshid when bk.yhjc = 'ʡҽ������' then dt.jshid when bk.yhjc = 'ʡҽ��סԺ' then dt.jshid when bk.yhjc = '�������' then dt.jshid when bk.yhjc = '���סԺ' then dt.jshid else '' end jylsh,     --������ˮ�ţ��նˣ�
dt.czyxm yhryxm,        --����Ա����
dt.czybh yhrybh,        --����Ա���
dt.zflx,                --֧�����ͣ�0����ֵ��1���ɷѣ�
dt.terminalno jyzdbh,   --�����ն˱��
dt.merchantno jyshbh,   --�����̻���š� סԺ��ˮ�ţ�ҽ����
dt.jyqd jykjz,          --POS���׿����ʣ�ҽ������������
dt.jyfs,                --���׷�ʽ
case dt.jytj when '2' then 'dwzfbshh' when '5' then 'gwi' else 'Ehis' end sbcsbm, --�豸���̱���
dt.jytj jyylx,          --����;��
nvl(dt.zjlx,'0') tcje,           --ͳ����
nvl(dt.zjhm,'0') gzje            --���˽��
from ipay.order_detl dt,
ipay.bank_info bk,
ipay.order_genl gn
where dt.tradeno=gn.tradeno
and dt.yhid=bk.yhid
and dt.yhid != 'SPCLQY'
and dt.paystate in ('paid','repaid','refailed','failed','closed')
--���ԣ��ǵ�ɾ��
--and bk.yhjc = 'ҽ��'
and (dt.cqtfbs not in ('1','2') or dt.cqtfbs is null) --��ϸ���޳������˷����ݺͳ���ת�ֽ𲿷�
union 
--�����˷����ݣ�����ת�ˣ�
select distinct
'' tradeno,       --�����˷Ѷ�����
refund.refundno ddbh ,-- ��������ţ�
refund.hisno hisno,         --his������ˮ��
refund.brxm,          --��������
refund.cardno brjzkh, --���˾��￨��
refund.brsfzhm sfzhm, --�������֤����
'UNIONCARD' yhid,          --֧������/����
'����' qdmc,     --֧������/��������
'����' yhmc,     --�������ƣ�ʵ�ʵ�֧��������
'Transfer'  jyqdbs, --����������ʶ
'�˿�'  ywlx, --ҵ������
nvl(refund.fqjysj,refund.jysj) as jlcjsj,        --��¼����ʱ��
refund.fqjysj jysj,          --֧��ʱ��
 -1*refund.jyje jyje,          --���׽��
dtl.ynkcode ynjyzt,  --Ժ�ڿ�״̬��ʶ��ynjyzt��Ӧ��ynccode (0:�ɹ���1��ʧ�ܣ�2��δ֪)
dtl.ynkcode,
dtl.mchid mchid,   --ҽԺ���
case refund.state when 'refund' then '1' when 'repaying' then '1' when 'repayings' then '1' when 'repaid' then '1'  when 'refunding' then '1' when 'failed' then '0' when 'refailed' then '0' else '2' end jyzt, --����״̬(0:ʧ�ܣ�1���ɹ���2��δ֪)
case refund.state when 'refund' then 'ת�˳ɹ�' when 'repaying' then 'δ���' when 'repayings' then '���ͨ����δ����' when 'repaid' then '���ͨ��������ͨ��'  when 'refunding' then 'ת����' when 'failed' then 'ת��ʧ��' when 'refailed' then '���/���˲�ͨ��'  else 'δ֪' end jyztms, --����״̬����
'' yddbh,   --�˿�ԭ������
refund.brlxfs jyckh,    --���ײο��ţ����п��ţ�
refund.bryhkh jylsh,     --������ˮ�ţ����п��ţ�
refund.czyxm yhryxm,        --����Ա����
refund.czybh yhrybh,        --����Ա���
'' zflx,                --֧�����ͣ�0����ֵ��1���ɷѣ�
'' jyzdbh,   --�����ն˱��
'' jyshbh,   --�����̻���š� סԺ��ˮ�ţ�ҽ����dt.merchantno
'' jykjz,          --POS���׿����ʣ�ҽ������������
'' jyfs,                --���׷�ʽ
'' sbcsbm, --�豸���̱���
'' jyylx,          --����;��
'0' tcje,           --ͳ����
'0' gzje            --���˽��
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
 --�����˷����ݣ�ת�ֽ�
 union  
 select distinct
'' tradeno,       --�����˷Ѷ�����
cash.refundno ddbh ,-- ��������ţ�
cash.hisno hisno,         --his������ˮ��
cash.brxm,          --��������
cash.cardno brjzkh, --���˾��￨��
cash.brsfzhm sfzhm, --�������֤����
'XJZF' yhid,          --֧������/����
'�ֽ�' qdmc,     --֧������/��������
'�ֽ�' yhmc,     --�������ƣ�ʵ�ʵ�֧��������
'CashPay'  jyqdbs, --����������ʶ
'�˿�'  ywlx, --ҵ������
nvl(cash.fqjysj,'') as jlcjsj,        --��¼����ʱ��
nvl(cash.jysj,cash.fqjysj) jysj,          --֧��ʱ��
 -1*cash.jyje jyje,          --���׽��
dtlcash2.ynkcode ynjyzt,  --Ժ�ڿ�״̬��ʶ��ynjyzt��Ӧ��ynccode (0:�ɹ���1��ʧ�ܣ�2��δ֪)
dtlcash2.ynkcode,
dtlcash2.mchid mchid,   --ҽԺ���
case cash.state when 'repaid' then '1'  when 'refailed' then '0'  else '2' end jyzt, --����״̬(0:ʧ�ܣ�1���ɹ���2��δ֪)
case cash.state when 'repaid' then '���˿�(����)'  when 'refailed' then '�˿�ʧ��(����)' else 'δ֪(����)' end jyztms, --����״̬����
'' yddbh,   --�˿�ԭ������
cash.brlxfs jyckh,    --���ײο��ţ����п��ţ�
'' jylsh,     --������ˮ�ţ����п��ţ�
cash.czyxm yhryxm,        --����Ա����
cash.czybh yhrybh,        --����Ա���
'' zflx,                --֧�����ͣ�0����ֵ��1���ɷѣ�
'' jyzdbh,   --�����ն˱��
'' jyshbh,   --�����̻���š� סԺ��ˮ�ţ�ҽ����dt.merchantno
'' jykjz,          --POS���׿����ʣ�ҽ������������
'' jyfs,                --���׷�ʽ
'' sbcsbm, --�豸���̱���
'' jyylx,          --����;��
'0' tcje,           --ͳ����
'0' gzje            --���˽��
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
                    


