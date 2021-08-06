prompt PL/SQL Developer import file
prompt Created on 2021年7月21日 by Wdf
set feedback off
set define off
prompt Creating E_EQUIPMENT_INFO...
create table E_EQUIPMENT_INFO
(
  sbid   VARCHAR2(32) default sys_guid() not null,
  sbbm   VARCHAR2(30) not null,
  sbmc   VARCHAR2(30),
  sbxlh  VARCHAR2(30) not null,
  sbcsid VARCHAR2(32) not null,
  sbzt   VARCHAR2(2) default 1 not null,
  jgbm   VARCHAR2(15) not null,
  jlcjsj TIMESTAMP(6) default sysdate not null,
  cjr    VARCHAR2(20),
  zhxgsj TIMESTAMP(6) default sysdate,
  zhxgr  VARCHAR2(20),
  bz     VARCHAR2(100),
  sbcsbm VARCHAR2(30) not null
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
comment on column E_EQUIPMENT_INFO.sbid
  is '设备主键ID';
comment on column E_EQUIPMENT_INFO.sbbm
  is '设备编码';
comment on column E_EQUIPMENT_INFO.sbmc
  is '设备名称';
comment on column E_EQUIPMENT_INFO.sbxlh
  is '设备序列号';
comment on column E_EQUIPMENT_INFO.sbcsid
  is '所属设备厂商主键ID';
comment on column E_EQUIPMENT_INFO.sbzt
  is '设备状态';
comment on column E_EQUIPMENT_INFO.jgbm
  is '机构有编码';
comment on column E_EQUIPMENT_INFO.jlcjsj
  is '记录创建时间';
comment on column E_EQUIPMENT_INFO.cjr
  is '创建人';
comment on column E_EQUIPMENT_INFO.zhxgsj
  is '最后修改时间';
comment on column E_EQUIPMENT_INFO.zhxgr
  is '最后修改人';
comment on column E_EQUIPMENT_INFO.bz
  is '备注';
comment on column E_EQUIPMENT_INFO.sbcsbm
  is '设备厂商编码';
alter table E_EQUIPMENT_INFO
  add primary key (SBID)
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

prompt Loading E_EQUIPMENT_INFO...
insert into E_EQUIPMENT_INFO (sbid, sbbm, sbmc, sbxlh, sbcsid, sbzt, jgbm, jlcjsj, cjr, zhxgsj, zhxgr, bz, sbcsbm)
values ('08978939bda4488abcd9975b35dbaa56', 'eself', '自助机-dareway', 'eself', 'f971c7babf374641bc2f6e36996a1813', '1', 'csyy', to_timestamp('25-06-2021 16:21:16.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'urp', to_timestamp('02-07-2021 19:09:22.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'wdf', '测试', 'SelfService');
insert into E_EQUIPMENT_INFO (sbid, sbbm, sbmc, sbxlh, sbcsid, sbzt, jgbm, jlcjsj, cjr, zhxgsj, zhxgr, bz, sbcsbm)
values ('73a808fafba24253878edf974bc8fbd2', 'ehis', '院内His', '1', '6fd0652f57f14a80a93a84f709a11856', '0', 'csyy', to_timestamp('20-08-2020 14:36:28.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'wdf', to_timestamp('03-06-2021 18:15:19.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'urpadmin', null, 'Ehis');
insert into E_EQUIPMENT_INFO (sbid, sbbm, sbmc, sbxlh, sbcsid, sbzt, jgbm, jlcjsj, cjr, zhxgsj, zhxgr, bz, sbcsbm)
values ('b8036942f41e44349142d1c06493ed01', 'eipay', '综合支付平台', '1111', '4fcc70d4706b4120abe0ae308595ae54', '1', 'csyy', to_timestamp('17-07-2020 15:15:18.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'wdf', to_timestamp('03-06-2021 18:15:40.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'urpadmin', null, 'ipay');
insert into E_EQUIPMENT_INFO (sbid, sbbm, sbmc, sbxlh, sbcsid, sbzt, jgbm, jlcjsj, cjr, zhxgsj, zhxgr, bz, sbcsbm)
values ('b525a0a29fc4440c8ea7d803824271fb', 'eyunda', '韵达设备', 'eyunda', 'yundatbabf374641bc2f6e36996a1813', '1', 'csyy', to_timestamp('19-07-2021 16:50:04.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'urpadmin', to_timestamp('19-07-2021 16:50:04.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, 'yunda');
insert into E_EQUIPMENT_INFO (sbid, sbbm, sbmc, sbxlh, sbcsid, sbzt, jgbm, jlcjsj, cjr, zhxgsj, zhxgr, bz, sbcsbm)
values ('99419a5ae26b4f9e824b0d16ffb4ffea', 'ealipayLife', '支付宝生活号-1', 'ealipayLife', 'alipayLifebabf3bc2f6e36996a1813', '1', 'csyy', to_timestamp('19-07-2021 16:50:43.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'urpadmin', to_timestamp('19-07-2021 16:50:43.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, 'alipayLife');
insert into E_EQUIPMENT_INFO (sbid, sbbm, sbmc, sbxlh, sbcsid, sbzt, jgbm, jlcjsj, cjr, zhxgsj, zhxgr, bz, sbcsbm)
values ('376330df908b4b6c9208ca03e2f031ac', 'ewechatPublic', '微信公众号-1', 'ewechatPublic', 'wechatbabf374641bc2f6e36996a1813', '1', 'csyy', to_timestamp('19-07-2021 16:51:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'urpadmin', to_timestamp('19-07-2021 16:51:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, 'wechatPublic');
commit;
prompt 6 records loaded
set feedback on
set define on
prompt Done.
