delete from urp.ACCOUNTABLE_STATISTICS t where to_char(dzrq,'yyyymmdd') = '20200917';
delete from urp.ALIPAY_TRANSFLOW t where to_char(dzrq,'yyyymmdd') = '20200917';
delete from urp.CHANNEL_RECONRESULT t where to_char(dzrq,'yyyymmdd') = '20200917';
delete from urp.HIS_TRANSFLOW t where to_char(dzrq,'yyyymmdd') = '20200917';
delete from urp.MEDICARE_TRANSFLOW t where to_char(dzrq,'yyyymmdd') = '20200917';
delete from urp.RECONFILE_INFO t where to_char(dzrq,'yyyymmdd') = '20200917';
delete from urp.RECONHIS_STATISTICS t where to_char(dzrq,'yyyymmdd') = '20200917';
delete from urp.RECONRESULT_DETAIL t where to_char(dzrq,'yyyymmdd') = '20200917';
delete from urp.SCANCODE_TRANSFLOW t where to_char(dzrq,'yyyymmdd') = '20200917';
delete from urp.UNIONPAYCF_TRANSFLOW t where to_char(dzrq,'yyyymmdd') = '20200917';
delete from urp.UNIONPAYOMNI_TRANSFLOW t where to_char(dzrq,'yyyymmdd') = '20200917';
delete from urp.UNIONPAY_TRANSFLOW t where to_char(dzrq,'yyyymmdd') = '20200917';
delete from urp.WECHAT_TRANSFLOW t where to_char(dzrq,'yyyymmdd') = '20200917';
delete from urp.REALTIME_MONITOR t where to_char(jlcjsj,'yyyymmdd') = '20200917';
delete from urp.MSG_PUSH t where to_char(cjsj,'yyyymmdd') = '20200917';
delete from urp.CCBUNIONPAY_TRANSFLOW t where to_char(dzrq,'yyyymmdd') = '20200917';
delete from urp.ABCPAY_TRANSFLOW t where to_char(dzrq,'yyyymmdd') = '20200917';
delete from urp.EHCPAY_TRANSFLOW t where to_char(dzrq,'yyyymmdd') = '20200917';

delete from urp.E_factory_RECONRESULT t where to_char(dzrq,'yyyymmdd') = '20200917';
delete from urp.E_HIS_TRANSFLOW t where to_char(dzrq,'yyyymmdd') = '20200917';
delete from urp.e_equipment_transflow t where to_char(dzrq,'yyyymmdd') = '20200917';
delete from urp.E_equipment_RECONRESULT t where to_char(dzrq,'yyyymmdd') = '20200917';
delete from urp.E_RECONFILE_INFO t where to_char(dzrq,'yyyymmdd') = '20200917';
delete from urp.E_RECON_history t where to_char(dzrq,'yyyymmdd') = '20200917';
delete from urp.E_RECONRESULT_DETAIL t where to_char(dzrq,'yyyymmdd') = '20200917';

delete from urp.m_his_transflow a where to_char(a.dzrq,'yyyyMMdd')='20200917';
delete from urp.m_equipment_transflow a where to_char(a.dzrq,'yyyyMMdd')='20200917';
delete from urp.e_realtime_monitor a where to_char(a.JLCJSJ,'yyyyMMdd')='20200917';
