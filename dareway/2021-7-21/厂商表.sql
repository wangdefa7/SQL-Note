prompt PL/SQL Developer import file
prompt Created on 2021��7��21�� by Wdf
set feedback off
set define off
prompt Creating E_EQUIPMENT_FACTORY...
create table E_EQUIPMENT_FACTORY
(
  sbcsid     VARCHAR2(32) default sys_guid() not null,
  sbcsbm     VARCHAR2(15) not null,
  sbcsmc     VARCHAR2(30) not null,
  dzwjgs     VARCHAR2(10),
  dzzq       VARCHAR2(10),
  rqsj       VARCHAR2(10),
  cszt       VARCHAR2(2) default 1 not null,
  sfzddz     VARCHAR2(2) default 1 not null,
  hqdzwjfs   VARCHAR2(10) not null,
  dzwjxzdz   VARCHAR2(100),
  ftpzh      VARCHAR2(30),
  ftpmm      VARCHAR2(20),
  ftpdk      NUMBER(6),
  qmsf       VARCHAR2(10),
  shzs       VARCHAR2(100),
  ggzs       VARCHAR2(100),
  dzwjxzml   VARCHAR2(100),
  dzwjmc     VARCHAR2(50),
  dzwjbdbclj VARCHAR2(100) not null,
  jgbm       VARCHAR2(15) not null,
  dzwjxfsj   VARCHAR2(10),
  jlcjsj     TIMESTAMP(6) default sysdate not null,
  cjr        VARCHAR2(20),
  zhxgsj     TIMESTAMP(6) default sysdate,
  zhxgr      VARCHAR2(20),
  jkm        VARCHAR2(50),
  jkcs       VARCHAR2(1000),
  zhqdfs     VARCHAR2(2),
  stmc       VARCHAR2(30),
  sjklx      VARCHAR2(20),
  bz         VARCHAR2(100),
  bly        VARCHAR2(50)
)
tablespace URP_RUN
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table E_EQUIPMENT_FACTORY
  is '�豸��Ϣ';
comment on column E_EQUIPMENT_FACTORY.sbcsid
  is '�豸����ID������';
comment on column E_EQUIPMENT_FACTORY.sbcsbm
  is '�豸���̱��룬���������豸����';
comment on column E_EQUIPMENT_FACTORY.sbcsmc
  is '�豸��������';
comment on column E_EQUIPMENT_FACTORY.dzwjgs
  is '�����ļ���ʽ';
comment on column E_EQUIPMENT_FACTORY.dzzq
  is '��������';
comment on column E_EQUIPMENT_FACTORY.rqsj
  is '����ʱ��';
comment on column E_EQUIPMENT_FACTORY.cszt
  is '����״̬��1��������0�����ã�';
comment on column E_EQUIPMENT_FACTORY.sfzddz
  is '�Ƿ��Զ����ˣ�0����1�ǣ�';
comment on column E_EQUIPMENT_FACTORY.hqdzwjfs
  is '��ȡ�����ļ���ʽ��ftp��sftp��http��https��socket��webservice����ͼ��';
comment on column E_EQUIPMENT_FACTORY.dzwjxzdz
  is '�����ļ����ص�ַ��FTP��IP���ӿڣ�url����ͼ�����ݿ�������Ӵ���';
comment on column E_EQUIPMENT_FACTORY.ftpzh
  is 'ftp�˺š���ͼ���ݿ��û���';
comment on column E_EQUIPMENT_FACTORY.ftpmm
  is 'ftp���롢��ͼ���ݿ�����';
comment on column E_EQUIPMENT_FACTORY.ftpdk
  is 'ftp�˿ڡ�socket�˿�';
comment on column E_EQUIPMENT_FACTORY.qmsf
  is 'ǩ���㷨';
comment on column E_EQUIPMENT_FACTORY.shzs
  is '�̻�֤�飨��·�����ļ�����';
comment on column E_EQUIPMENT_FACTORY.ggzs
  is '����֤�飨��·�����ļ�����';
comment on column E_EQUIPMENT_FACTORY.dzwjxzml
  is '�����ļ�����Ŀ¼(ftp��sftp����̬��д������̬����{}������)';
comment on column E_EQUIPMENT_FACTORY.dzwjmc
  is '�����ļ����ƣ���̬��д������̬����{}��������';
comment on column E_EQUIPMENT_FACTORY.dzwjbdbclj
  is '�����ļ����ر���·������̬��д������̬����{}��������';
comment on column E_EQUIPMENT_FACTORY.jgbm
  is '��������';
comment on column E_EQUIPMENT_FACTORY.dzwjxfsj
  is '�����ļ��·�ʱ��';
comment on column E_EQUIPMENT_FACTORY.jlcjsj
  is '��¼����ʱ��';
comment on column E_EQUIPMENT_FACTORY.cjr
  is '������';
comment on column E_EQUIPMENT_FACTORY.zhxgsj
  is '����޸�����';
comment on column E_EQUIPMENT_FACTORY.zhxgr
  is '����޸���';
comment on column E_EQUIPMENT_FACTORY.jkm
  is '�ӿ�/����������webservice��';
comment on column E_EQUIPMENT_FACTORY.jkcs
  is '�ӿڲ���(����http��htps��socket��webservice�ӿ�����Ĳ�������̬��д������̬����{}������)';
comment on column E_EQUIPMENT_FACTORY.zhqdfs
  is '�����˻�ȷ����ʽ��1���̻��ţ�2���̻���+�ն˺ţ�3�������˻��˺ţ�';
comment on column E_EQUIPMENT_FACTORY.stmc
  is '��ͼ����';
comment on column E_EQUIPMENT_FACTORY.sjklx
  is '���ݿ����ͣ�oracle��MySQL�ȣ�';
comment on column E_EQUIPMENT_FACTORY.bz
  is '��ע';
comment on column E_EQUIPMENT_FACTORY.bly
  is '������';
alter table E_EQUIPMENT_FACTORY
  add constraint E_EQUIPMENT_PRIMARYKEY primary key (SBCSID)
  using index 
  tablespace URP_RUN
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Loading E_EQUIPMENT_FACTORY...
insert into E_EQUIPMENT_FACTORY (sbcsid, sbcsbm, sbcsmc, dzwjgs, dzzq, rqsj, cszt, sfzddz, hqdzwjfs, dzwjxzdz, ftpzh, ftpmm, ftpdk, qmsf, shzs, ggzs, dzwjxzml, dzwjmc, dzwjbdbclj, jgbm, dzwjxfsj, jlcjsj, cjr, zhxgsj, zhxgr, jkm, jkcs, zhqdfs, stmc, sjklx, bz, bly)
values ('f971c7babf374641bc2f6e36996a1813', 'SelfService', '����', 'txt', 'T', '00:00:00', '1', '1', 'ftp', 'ftp.tplweb.cn', 'urp', 'urp', 21, null, null, null, '/urp2.0/zzj_', 'zzj_{date}', './ereconfile/', 'csyy', '00:00:00', to_timestamp('24-07-2020 15:18:36.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'wdf', to_timestamp('20-07-2021 09:23:43.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'urpadmin', null, null, '1', null, null, null, null);
insert into E_EQUIPMENT_FACTORY (sbcsid, sbcsbm, sbcsmc, dzwjgs, dzzq, rqsj, cszt, sfzddz, hqdzwjfs, dzwjxzdz, ftpzh, ftpmm, ftpdk, qmsf, shzs, ggzs, dzwjxzml, dzwjmc, dzwjbdbclj, jgbm, dzwjxfsj, jlcjsj, cjr, zhxgsj, zhxgr, jkm, jkcs, zhqdfs, stmc, sjklx, bz, bly)
values ('6fd0652f57f14a80a93a84f709a11856', 'Ehis', 'ҽԺ', 'txt', 'T', '00:00:00', '1', '1', 'ftp', 'ftp.tplweb.cn', 'urp', 'urp', 21, null, null, null, '/urp2.0/Ehis', 'csyy_Ehis_{date}', './ereconfile/', 'csyy', '10:00:00', to_timestamp('09-07-2020 15:09:46.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'urpadmin', to_timestamp('01-07-2021 18:16:03.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'wdf', null, null, '3', null, null, null, null);
insert into E_EQUIPMENT_FACTORY (sbcsid, sbcsbm, sbcsmc, dzwjgs, dzzq, rqsj, cszt, sfzddz, hqdzwjfs, dzwjxzdz, ftpzh, ftpmm, ftpdk, qmsf, shzs, ggzs, dzwjxzml, dzwjmc, dzwjbdbclj, jgbm, dzwjxfsj, jlcjsj, cjr, zhxgsj, zhxgr, jkm, jkcs, zhqdfs, stmc, sjklx, bz, bly)
values ('4fcc70d4706b4120abe0ae308595ae54', 'ipay', '֧��ƽ̨', 'txt', 'T', '00:00:00', '1', '1', 'ftp', 'ftp.tplweb.cn', 'urp', 'urp', 21, null, null, null, '/urp2.0/Eipay', 'Payment_Platform_{date}', './ereconfile/', 'csyy', '00:00:00', to_timestamp('17-07-2020 11:01:51.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'wdf', to_timestamp('03-06-2021 17:11:08.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'urpadmin', null, null, '3', null, null, null, null);
insert into E_EQUIPMENT_FACTORY (sbcsid, sbcsbm, sbcsmc, dzwjgs, dzzq, rqsj, cszt, sfzddz, hqdzwjfs, dzwjxzdz, ftpzh, ftpmm, ftpdk, qmsf, shzs, ggzs, dzwjxzml, dzwjmc, dzwjbdbclj, jgbm, dzwjxfsj, jlcjsj, cjr, zhxgsj, zhxgr, jkm, jkcs, zhqdfs, stmc, sjklx, bz, bly)
values ('wechatbabf374641bc2f6e36996a1813', 'wechatPublic', '����', 'txt', 'T', '00:00:00', '1', '1', 'ftp', 'ftp.tplweb.cn', 'urp', 'urp', 21, null, null, null, '/urp2.0/wechatPublic_', 'wechatPublic_{date}', './ereconfile/', 'csyy', '00:00:00', to_timestamp('24-07-2020 15:18:36.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'wdf', to_timestamp('20-07-2021 09:22:33.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'urpadmin', null, null, '1', null, null, null, null);
insert into E_EQUIPMENT_FACTORY (sbcsid, sbcsbm, sbcsmc, dzwjgs, dzzq, rqsj, cszt, sfzddz, hqdzwjfs, dzwjxzdz, ftpzh, ftpmm, ftpdk, qmsf, shzs, ggzs, dzwjxzml, dzwjmc, dzwjbdbclj, jgbm, dzwjxfsj, jlcjsj, cjr, zhxgsj, zhxgr, jkm, jkcs, zhqdfs, stmc, sjklx, bz, bly)
values ('alipayLifebabf3bc2f6e36996a1813', 'alipayLife', '����', 'txt', 'T', '00:00:00', '1', '1', 'ftp', 'ftp.tplweb.cn', 'urp', 'urp', 21, null, null, null, '/urp2.0/alipayLife_', 'alipayLife_{date}', './ereconfile/', 'csyy', '00:00:00', to_timestamp('24-07-2020 15:18:36.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'wdf', to_timestamp('20-07-2021 09:22:39.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'urpadmin', null, null, '1', null, null, null, null);
insert into E_EQUIPMENT_FACTORY (sbcsid, sbcsbm, sbcsmc, dzwjgs, dzzq, rqsj, cszt, sfzddz, hqdzwjfs, dzwjxzdz, ftpzh, ftpmm, ftpdk, qmsf, shzs, ggzs, dzwjxzml, dzwjmc, dzwjbdbclj, jgbm, dzwjxfsj, jlcjsj, cjr, zhxgsj, zhxgr, jkm, jkcs, zhqdfs, stmc, sjklx, bz, bly)
values ('yundatbabf374641bc2f6e36996a1813', 'yunda', '�˴�', 'txt', 'T', '00:00:00', '1', '1', 'ftp', 'ftp.tplweb.cn', 'urp', 'urp', 21, null, null, null, '/urp2.0/yunda_', 'yunda_{date}', './ereconfile/', 'csyy', '00:00:00', to_timestamp('24-07-2020 15:18:36.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'wdf', to_timestamp('20-07-2021 09:22:44.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'urpadmin', null, null, '1', null, null, null, null);
commit;
prompt 6 records loaded
set feedback on
set define on
prompt Done.
