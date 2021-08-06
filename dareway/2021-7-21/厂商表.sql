prompt PL/SQL Developer import file
prompt Created on 2021年7月21日 by Wdf
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
  is '设备信息';
comment on column E_EQUIPMENT_FACTORY.sbcsid
  is '设备厂商ID，主键';
comment on column E_EQUIPMENT_FACTORY.sbcsbm
  is '设备厂商编码，用于区分设备厂商';
comment on column E_EQUIPMENT_FACTORY.sbcsmc
  is '设备厂商名称';
comment on column E_EQUIPMENT_FACTORY.dzwjgs
  is '对账文件格式';
comment on column E_EQUIPMENT_FACTORY.dzzq
  is '对账周期';
comment on column E_EQUIPMENT_FACTORY.rqsj
  is '日切时间';
comment on column E_EQUIPMENT_FACTORY.cszt
  is '厂商状态（1：正常，0：禁用）';
comment on column E_EQUIPMENT_FACTORY.sfzddz
  is '是否自动对账（0：否，1是）';
comment on column E_EQUIPMENT_FACTORY.hqdzwjfs
  is '获取对账文件方式（ftp、sftp、http、https、socket、webservice、视图）';
comment on column E_EQUIPMENT_FACTORY.dzwjxzdz
  is '对账文件下载地址（FTP：IP，接口：url，视图：数据库访问连接串）';
comment on column E_EQUIPMENT_FACTORY.ftpzh
  is 'ftp账号、视图数据库用户名';
comment on column E_EQUIPMENT_FACTORY.ftpmm
  is 'ftp密码、视图数据库密码';
comment on column E_EQUIPMENT_FACTORY.ftpdk
  is 'ftp端口、socket端口';
comment on column E_EQUIPMENT_FACTORY.qmsf
  is '签名算法';
comment on column E_EQUIPMENT_FACTORY.shzs
  is '商户证书（含路径和文件名）';
comment on column E_EQUIPMENT_FACTORY.ggzs
  is '公共证书（含路径和文件名）';
comment on column E_EQUIPMENT_FACTORY.dzwjxzml
  is '对账文件下载目录(ftp、sftp，静态的写死，动态的用{}括起来)';
comment on column E_EQUIPMENT_FACTORY.dzwjmc
  is '对账文件名称（静态的写死，动态的用{}括起来）';
comment on column E_EQUIPMENT_FACTORY.dzwjbdbclj
  is '对账文件本地保存路径（静态的写死，动态的用{}括起来）';
comment on column E_EQUIPMENT_FACTORY.jgbm
  is '机构编码';
comment on column E_EQUIPMENT_FACTORY.dzwjxfsj
  is '对账文件下发时间';
comment on column E_EQUIPMENT_FACTORY.jlcjsj
  is '记录创建时间';
comment on column E_EQUIPMENT_FACTORY.cjr
  is '创建人';
comment on column E_EQUIPMENT_FACTORY.zhxgsj
  is '最后修改日期';
comment on column E_EQUIPMENT_FACTORY.zhxgr
  is '最后修改人';
comment on column E_EQUIPMENT_FACTORY.jkm
  is '接口/方法名（如webservice）';
comment on column E_EQUIPMENT_FACTORY.jkcs
  is '接口参数(调用http、htps、socket、webservice接口所需的参数，静态的写死，动态的用{}括起来)';
comment on column E_EQUIPMENT_FACTORY.zhqdfs
  is '结算账户确定方式（1：商户号，2：商户号+终端号，3：结算账户账号）';
comment on column E_EQUIPMENT_FACTORY.stmc
  is '视图名称';
comment on column E_EQUIPMENT_FACTORY.sjklx
  is '数据库类型（oracle、MySQL等）';
comment on column E_EQUIPMENT_FACTORY.bz
  is '备注';
comment on column E_EQUIPMENT_FACTORY.bly
  is '保留域';
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
values ('f971c7babf374641bc2f6e36996a1813', 'SelfService', '长城', 'txt', 'T', '00:00:00', '1', '1', 'ftp', 'ftp.tplweb.cn', 'urp', 'urp', 21, null, null, null, '/urp2.0/zzj_', 'zzj_{date}', './ereconfile/', 'csyy', '00:00:00', to_timestamp('24-07-2020 15:18:36.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'wdf', to_timestamp('20-07-2021 09:23:43.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'urpadmin', null, null, '1', null, null, null, null);
insert into E_EQUIPMENT_FACTORY (sbcsid, sbcsbm, sbcsmc, dzwjgs, dzzq, rqsj, cszt, sfzddz, hqdzwjfs, dzwjxzdz, ftpzh, ftpmm, ftpdk, qmsf, shzs, ggzs, dzwjxzml, dzwjmc, dzwjbdbclj, jgbm, dzwjxfsj, jlcjsj, cjr, zhxgsj, zhxgr, jkm, jkcs, zhqdfs, stmc, sjklx, bz, bly)
values ('6fd0652f57f14a80a93a84f709a11856', 'Ehis', '医院', 'txt', 'T', '00:00:00', '1', '1', 'ftp', 'ftp.tplweb.cn', 'urp', 'urp', 21, null, null, null, '/urp2.0/Ehis', 'csyy_Ehis_{date}', './ereconfile/', 'csyy', '10:00:00', to_timestamp('09-07-2020 15:09:46.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'urpadmin', to_timestamp('01-07-2021 18:16:03.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'wdf', null, null, '3', null, null, null, null);
insert into E_EQUIPMENT_FACTORY (sbcsid, sbcsbm, sbcsmc, dzwjgs, dzzq, rqsj, cszt, sfzddz, hqdzwjfs, dzwjxzdz, ftpzh, ftpmm, ftpdk, qmsf, shzs, ggzs, dzwjxzml, dzwjmc, dzwjbdbclj, jgbm, dzwjxfsj, jlcjsj, cjr, zhxgsj, zhxgr, jkm, jkcs, zhqdfs, stmc, sjklx, bz, bly)
values ('4fcc70d4706b4120abe0ae308595ae54', 'ipay', '支付平台', 'txt', 'T', '00:00:00', '1', '1', 'ftp', 'ftp.tplweb.cn', 'urp', 'urp', 21, null, null, null, '/urp2.0/Eipay', 'Payment_Platform_{date}', './ereconfile/', 'csyy', '00:00:00', to_timestamp('17-07-2020 11:01:51.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'wdf', to_timestamp('03-06-2021 17:11:08.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'urpadmin', null, null, '3', null, null, null, null);
insert into E_EQUIPMENT_FACTORY (sbcsid, sbcsbm, sbcsmc, dzwjgs, dzzq, rqsj, cszt, sfzddz, hqdzwjfs, dzwjxzdz, ftpzh, ftpmm, ftpdk, qmsf, shzs, ggzs, dzwjxzml, dzwjmc, dzwjbdbclj, jgbm, dzwjxfsj, jlcjsj, cjr, zhxgsj, zhxgr, jkm, jkcs, zhqdfs, stmc, sjklx, bz, bly)
values ('wechatbabf374641bc2f6e36996a1813', 'wechatPublic', '东软', 'txt', 'T', '00:00:00', '1', '1', 'ftp', 'ftp.tplweb.cn', 'urp', 'urp', 21, null, null, null, '/urp2.0/wechatPublic_', 'wechatPublic_{date}', './ereconfile/', 'csyy', '00:00:00', to_timestamp('24-07-2020 15:18:36.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'wdf', to_timestamp('20-07-2021 09:22:33.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'urpadmin', null, null, '1', null, null, null, null);
insert into E_EQUIPMENT_FACTORY (sbcsid, sbcsbm, sbcsmc, dzwjgs, dzzq, rqsj, cszt, sfzddz, hqdzwjfs, dzwjxzdz, ftpzh, ftpmm, ftpdk, qmsf, shzs, ggzs, dzwjxzml, dzwjmc, dzwjbdbclj, jgbm, dzwjxfsj, jlcjsj, cjr, zhxgsj, zhxgr, jkm, jkcs, zhqdfs, stmc, sjklx, bz, bly)
values ('alipayLifebabf3bc2f6e36996a1813', 'alipayLife', '众阳', 'txt', 'T', '00:00:00', '1', '1', 'ftp', 'ftp.tplweb.cn', 'urp', 'urp', 21, null, null, null, '/urp2.0/alipayLife_', 'alipayLife_{date}', './ereconfile/', 'csyy', '00:00:00', to_timestamp('24-07-2020 15:18:36.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'wdf', to_timestamp('20-07-2021 09:22:39.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'urpadmin', null, null, '1', null, null, null, null);
insert into E_EQUIPMENT_FACTORY (sbcsid, sbcsbm, sbcsmc, dzwjgs, dzzq, rqsj, cszt, sfzddz, hqdzwjfs, dzwjxzdz, ftpzh, ftpmm, ftpdk, qmsf, shzs, ggzs, dzwjxzml, dzwjmc, dzwjbdbclj, jgbm, dzwjxfsj, jlcjsj, cjr, zhxgsj, zhxgr, jkm, jkcs, zhqdfs, stmc, sjklx, bz, bly)
values ('yundatbabf374641bc2f6e36996a1813', 'yunda', '运达', 'txt', 'T', '00:00:00', '1', '1', 'ftp', 'ftp.tplweb.cn', 'urp', 'urp', 21, null, null, null, '/urp2.0/yunda_', 'yunda_{date}', './ereconfile/', 'csyy', '00:00:00', to_timestamp('24-07-2020 15:18:36.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'wdf', to_timestamp('20-07-2021 09:22:44.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'urpadmin', null, null, '1', null, null, null, null);
commit;
prompt 6 records loaded
set feedback on
set define on
prompt Done.
