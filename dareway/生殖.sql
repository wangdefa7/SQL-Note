--select * from ipay.order_detl  b where yhid = 'POS' order by b.fqjysj desc for update;
--mongoDB
-- ��ѯ���б�
select * from user_tab_comments;


-- ������ñ�
select * from ddszone.sequence_info --for update;

select ddsname,ddszone_version,bigversion,smallversion from ddszone.ddsbase where arcdbid is null;
-- mongodb
select * from mongodb_para --for update;
select * from  ipay.UCOMPOS_MANAGEMENT_INFO

--��ͼorder_gen_det_list
select * from  order_gen_det_list;

-- detlϸ��
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
 
 select * from ipay.order_detl a where 1=1 and a.brxm like '��ռ��%'and a.intradeno != '20210228P00066395DAREWAY' ;
 update ipay.order_detl a set a.paystate = 'paying',a.ip = '172.16.93.177'  where 1=1 
and a.yhid = 'UNIONCARD'
and a.brxm = '��ռ��'
and a.intradeno != '20210228P00066395DAREWAY';
-- and a.intradeno = '20210228P00066385DAREWAY';
 
 
 -- yhid
select * from ipay.order_detl a where 1=1 --and a.yhid = 'YB'
and a.yhid like '%YB%' --and  a.paystate = 'paid' 
--and a.cardno = '571499'  
order by a.fqjysj desc;

-- ����ת�ֽ�
select * from ipay.OVERTOCASH_REFUND

-- ��ѯ����֧��״̬
select distinct a.paystate from ipay.order_detl a ;
--  intradeno
select * from ipay.order_detl a where 1=1 --order by intradeno desc;
 and intradeno like '%20210228P00066388DAREWAY%'
 --and a.paystate = 'refundclose'
 -- and a.yhid = 'UNIONCARD'
 --and a.brxm = '������'
 --and a.jysj like '20210220%'
 -- order by fqjysj desc;
 --and tradeno = 'IPA200921100018802'
 and tradeno = 'IPA210303100185767'
 and intradeno = '20210221P00059126DAREWAY'
 union
 select * from ipay.order_detl a where 1=1
-- and a.brxm = '�Ŵ���'
 --and a.tradeno = 'IPA21022026285712'
 --and intradeno in('20210322P00098955DAREWAY','')
 and a.cardno in('571499','580315')
 order by a.fqjysj
;
 
 
 --- ɾ��ҽ����������
 --delete from ipay.order_detl d where 1=1 and d.intradeno = '20210315P00087248DAREWAY'
 
 
select * from ipay.order_detl a where 1=1 --and  a.ynkcode = '3'

and a.jysj like '20210407%'
                              -- and a.jysj <= '20210310153113'
                               and a.czyxm = '��'
                               order by jysj
                               and a.yhmc = '΢��'
 -- paystate czybh
select * from ipay.order_detl a where 1=1  and a.czybh = '226'and a.cqtfbs = '1' and a.czybh = '493' and ycbs = '0' order by a.fqjysj desc;
-- tradeno
select * from ipay.order_detl where tradeno = 'IPA201216100159856'
-- fqjysj
select * from ipay.order_detl  b  where 1=1  and fqjysj between '20200914000000' and '20200914162139'  order by fqjysj desc  ;
-- ϸ����
select * from ipay.order_detl  b where b.cqtfbs = '1' order by b.fqjysj desc;

-- �����˷ѱ�
select  a.*from ipay.overtime_refund  a where 1=1 order by fqjysj desc  ;

select * from ipay.overtime_refund a where a.refundno = '20210318D00003190';
--select distinct state from ipay.overtime_refund  ; -- �����˷�״̬

-- �˿��
select * from ipay.refund_detl order by cjsj desc;


  --update ipay.ORDER_DETL      set  jysj='20200723122522'   where intradeno='20200723P00001076DAREWAY'  
 -- update ipay.ORDER_DETL      set     paystate=:paystate      ,jysj=:jysj      ,jym_ibank=:jym_ibank      ,dsftradeno=:dsftradeno   where intradeno=:intradeno  
select * from ipay.order_detl  order by intradeno desc -- for update
select * from ipay.order_genl g where g.tradeno = 'IPA21022026285712'  and g.appid is not null-- order by --jysj desc ;
select * from ipay.order_genl gen  where 1=1
and gen.description = '����Ǩ������'

and gen.tradeno = 'IPA210220263510710'-- for update

select * from IPAY.SDSZ_TRADE_INFO tr order by tr.jyddh desc
--�˿���ϸ
select * from ipay.refund_detl order by cjsj desc;


--����
select yhid,bz from ipay.bank_info where bz like '%ҽ��%'  --for update
select distinct bz,yhid from ipay.bank_info
select * from ipay.bank_info where yhid = 'POS';

select * from urp.ucompos_trade_info s order by s.fqjysj desc

-- ���̳���ı�
Select * From ucompos_trade_info where (1>0)  and dyfwybs ='20200616P00000303DAREWAY' and jyzt ='1'  -- �˷�ʧ��
Select * From ucompos_trade_info where (1>0)  and dyfwybs ='20200618P00000432DAREWAY' -- ֧���ɹ�δ�˷�
Select * From ucompos_trade_info where (1>0)  and dyfwybs ='20200618P00000420DAREWAY' and jyzt ='1' --�ɹ�

Select * From ucompos_trade_info order by fqjysj desc

Select * From ucompos_trade_info where (1>0) and ( dyfwybs ='20200618P00000432DAREWAY'
or dyfwybs ='20200618P00000420DAREWAY'
or dyfwybs ='20200616P00000303DAREWAY')
--������õ�ʱ���ѯ����
Select * From ucompos_config where (1>0)  and yybh ='10001' and rzbm ='dw1001'
Select * From ucompos_config where (1>0)  and yybh ='10001' and rzbm ='dw1001'
--��ѯָ���˿��¼
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
 
 -- ��ѯ���б�
 select * from user_tab_comments
 
1	USER_AUTHCODE	TABLE	�û���Ȩ���֧����UUID��ϵ
2	UCOMPOS_MANAGEMENT_INFO	TABLE	�������ն�DLL�����ཻ����Ϣ��
3	SDSZ_TRADE_INFO	TABLE	����HIS�˻���֤����ֵ���˷ѽӿڣ�������ˮ��
4	REFUND_DETL	TABLE	
5	OVERTIME_REFUND	TABLE	
6	ORG_INFO	TABLE	���������Ϣ
7	ORG_BANK	TABLE	�������������Ϣ
8	ORDER_SETTLEPARA	TABLE	ҽ�����������
9	ORDER_GENL	TABLE	��������
10	ORDER_DETL	TABLE	��������֧����ϸ��
11	MONGODB_PARA	TABLE	mongoDB���ò���
12	BANK_INFO	TABLE	���л�����Ϣ
13	ORDER_GEN_DET_LIST	VIEW	

--��������
select * from ipay.order_genl order by cjsj desc ;
-- ��������֧����ϸ��
select * from ORDER_DETL
-- ���������Ϣ
select * from ORG_INFO

-- ����HIS�˻���֤����ֵ���˷ѽӿڣ�������ˮ��
select * from SDSZ_TRADE_INFO

-- �������ն�DLL�����ཻ����Ϣ��
select * from UCOMPOS_MANAGEMENT_INFO		

select * from urp.ucompos_config;

-- ���л�����Ϣ
select * from ipay.bank_info --for update
select distinct bz from ipay.bank_info --for update
select * from ipay.order_detl where (cqtfbs is null or cqtfbs = '0') order by intradeno desc;
select * from ipay.order_detl where cqtfbs = '1' 
and jysj like '20210106%'
and czybh = '102'
and 
order by intradeno desc;

-- ������ͼ 
select * from ipay.v_trade_info; 
select text from user_views where view_name = 'V_TRADE_INFO';
select view_name from user_views;
select * from ipay.v_trade_info_yndz a where a.jysj like '20210222%' and  a.yhid in ('WXXCX')

-- ������ͼ(v_trade_info)
create or replace view ipay.v_trade_info as
select distinct
dt.tradeno,       --ƽ̨������
dt.intradeno ddbh, --���׶����ţ�������ţ�
dt.brxm,          --��������
dt.cardno brjzkh, --���˾��￨��
dt.brsfzhm sfzhm, --�������֤����
dt.yhid,          --֧������
bk.yhjc qdmc,     --��������
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
and dt.paystate in ('paid','repaid','refailed','failed','closed')
;

------------------
select * from ipay.order_detl a where a.jysj like '20201224%';
select * from ipay.v_trade_info_yndz where jysj like '2021022423%'
select * from ipay.v_trade_info_yndz where jysj like '2021022500%'
 and brjzkh = '060000018'  order by jyqdbs ;
select * from ipay.v_trade_info_yndz where jysj   between '20200828000000' and '20200828240000';
-- ������ͼ Ժ�ڶ���
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
case when instr��bk.yhjc, 'ת��') > 0  or dt.cqtfbs = '1' then 'Transfer' when instr��bk.yhjc, '�㷢') > 0 then 'CgbSmartPay' when instr��bk.yhjc, '֧����') > 0 then 'Alipay' when instr��bk.yhjc, 'POS') > 0 then 'UnionPay' when instr��bk.yhjc, '�ֽ�') > 0 then 'CashPay' when bk.yhjc = 'ҽ��' then 'Medicare' when dt.yhid = 'SYBMZ' then 'Medicare' when dt.yhid = 'SYBZY' then 'Medicare' when bk.yhjc = '�������' then 'Medicare' when bk.yhjc = '���סԺ' then 'Medicare' when instr��bk.yhjc, '΢��') > 0 then 'WeChat'  else 'Other' end jyqdbs, --����������ʶ
case dt.type when 'pay' then '֧��' when 'refund' then '�˿�' end ywlx, --ҵ������
nvl(dt.fqjysj,dt.jysj) as jlcjsj,        --��¼����ʱ��
dt.jysj,          --֧��ʱ��
case dt.type when 'pay' then dt.jyje when 'refund' then -1*dt.jyje end jyje,          --���׽��
dt.ynkcode,       --Ժ�ڿ�״̬
gn.orgno mchid,   --ҽԺ���
case dt.paystate when 'paid' then '1' when 'repaid' then '1' when 'paying' then '2' when 'repaying' then '2' when 'refailed' then '0' when 'failed' then '0' when 'closed' then '2' else '2' end jyzt, --����״̬(0:ʧ�ܣ�1���ɹ���2��δ֪)
case dt.paystate when 'paid' then '��֧��' when 'repaid' then '���˿�' when 'paying' then '֧����' when 'repaying' then '�˿���' when 'refailed' then '�˿�ʧ��' when 'failed' then '֧��ʧ��' when 'closed' then '�ѹر�' else 'δ֪' end jyztms, --����״̬����
dt.tkintradeno yddbh,   --�˿�ԭ������
dt.dsftradeno jyckh,    --���ײο��ţ��նˣ��������id ��ҽ����
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
dt.zjlx tcje,           --ͳ����
dt.zjhm gzje            --���˽��
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
-- �ֽ�֧����ͼ
create or replace view ipay.v_trade_cashpay_info as
select * from ipay.order_detl dt  where yhid = 'XJZF' 
and dt.paystate in ('paid','repaid')


-- ��ΰ�������ֶ�
alter table ipay.order_detl add czlx varchar2(10);
comment on column ipay.order_detl.czlx is '��ֵ����(1�����2��סԺ)';
alter table ipay.SDSZ_TRADE_INFO add czlx varchar2(10);
comment on column ipay.SDSZ_TRADE_INFO.czlx is '��ֵ����(1�����2��סԺ)';



 select a.tradeno, a.intradeno, a.fqjysj, a.jysj, a.jyje, a.type,         
 a.brxm , a.brsfzhm , a.brynid, a.cardno, a.brlxfs ,          
 a.paystate, a.type handle, a.ynkcode, a.ip, a.czybh,           
 a.czyxm, a.appid, a.terminalno,a.zflx, a.hisno, b.yhid, b.yhmc, c.orgno   
 from ipay.order_detl a, ipay.bank_info b, ipay.order_genl c   
 where a.yhid = b.yhid     and a.tradeno = c.tradeno   
 and a.fqjysj >= '20200819000000'   and a.fqjysj <= '20200819235959'  
 order by a.fqjysj desc 


-- �����˷Ѳ�ѯ����
select * from ipay.overtime_refund;
select * from ipay.refund_detl;
select a.* from ipay.order_detl a where a.jysj like '20200821%' 

select distinct a.jyfs from ipay.order_detl a left join
ipay.order_genl b on b.tradeno = a.tradeno where a.jysj like '20200821%' ;

select * from ipay.bank_info -- for update;
				    	
