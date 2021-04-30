-------------------------------------------
-- Export file for user URP              --
-- Created by Wdf on 2021/1/28, 15:46:31 --
-------------------------------------------

spool urp-userObject.log

prompt
prompt Creating table ABCPAY_TRANSFLOW
prompt ===============================
prompt
create table URP.ABCPAY_TRANSFLOW
(
  lsid   VARCHAR2(32) default sys_guid() not null,
  qdzhid VARCHAR2(32),
  shbh   VARCHAR2(20),
  zdbh   VARCHAR2(20),
  jyckh  VARCHAR2(50),
  jylsh  VARCHAR2(50),
  qqflsh VARCHAR2(50),
  yjylsh VARCHAR2(50),
  shddh  VARCHAR2(50) not null,
  zdhm   VARCHAR2(50),
  spmc   VARCHAR2(100),
  jysj   VARCHAR2(20) not null,
  yhjyzh VARCHAR2(30),
  jyje   NUMBER(12,2) default 0.00 not null,
  jyzt   VARCHAR2(2) default 1 not null,
  zhye   NUMBER(12,2) default 0.00,
  ywlx   VARCHAR2(20) not null,
  jybz   VARCHAR2(100),
  jlcjsj TIMESTAMP(6) default sysdate not null,
  dzrq   DATE default sysdate not null,
  dzbs   VARCHAR2(2) default 0 not null,
  crkbs  VARCHAR2(2) default 0 not null,
  jgbm   VARCHAR2(15) not null,
  sfsc   VARCHAR2(2) default 0 not null,
  bly1   VARCHAR2(50),
  bly2   VARCHAR2(50),
  bly3   VARCHAR2(50),
  dzbh   VARCHAR2(50)
)
;
comment on table URP.ABCPAY_TRANSFLOW
  is '农行网付对账流水表';
comment on column URP.ABCPAY_TRANSFLOW.lsid
  is '农行网付流水主键ID';
comment on column URP.ABCPAY_TRANSFLOW.qdzhid
  is '渠道结算账户ID';
comment on column URP.ABCPAY_TRANSFLOW.shbh
  is '商户编号';
comment on column URP.ABCPAY_TRANSFLOW.zdbh
  is '终端编号';
comment on column URP.ABCPAY_TRANSFLOW.jyckh
  is '交易参考号（系统跟踪号、业务流水号）';
comment on column URP.ABCPAY_TRANSFLOW.jylsh
  is '交易流水号（账务流水号）';
comment on column URP.ABCPAY_TRANSFLOW.qqflsh
  is '请求方流水号';
comment on column URP.ABCPAY_TRANSFLOW.yjylsh
  is '原交易流水号/原交易订单号：交易为后续类交易时有值';
comment on column URP.ABCPAY_TRANSFLOW.shddh
  is '商户订单号';
comment on column URP.ABCPAY_TRANSFLOW.zdhm
  is '账单号码';
comment on column URP.ABCPAY_TRANSFLOW.spmc
  is '商品名称';
comment on column URP.ABCPAY_TRANSFLOW.jysj
  is '交易时间';
comment on column URP.ABCPAY_TRANSFLOW.yhjyzh
  is '用户交易账号（支付宝账号/银行卡号）';
comment on column URP.ABCPAY_TRANSFLOW.jyje
  is '交易金额（单位：元）';
comment on column URP.ABCPAY_TRANSFLOW.jyzt
  is '交易状态（0：失败，1：成功，2：未知）';
comment on column URP.ABCPAY_TRANSFLOW.zhye
  is '账户余额（单位：元）';
comment on column URP.ABCPAY_TRANSFLOW.ywlx
  is '业务类型（在线支付、交易退款）';
comment on column URP.ABCPAY_TRANSFLOW.jybz
  is '交易备注';
comment on column URP.ABCPAY_TRANSFLOW.jlcjsj
  is '记录创建时间';
comment on column URP.ABCPAY_TRANSFLOW.dzrq
  is '对账日期';
comment on column URP.ABCPAY_TRANSFLOW.dzbs
  is '对账标识（1：已对账，0：未对账）';
comment on column URP.ABCPAY_TRANSFLOW.crkbs
  is '重入库标识（1：重入库，0：原始入库）';
comment on column URP.ABCPAY_TRANSFLOW.jgbm
  is '机构编码';
comment on column URP.ABCPAY_TRANSFLOW.sfsc
  is '删除状态（1：删除，0：未删除）';
comment on column URP.ABCPAY_TRANSFLOW.bly1
  is '保留域1';
comment on column URP.ABCPAY_TRANSFLOW.bly2
  is '保留域2';
comment on column URP.ABCPAY_TRANSFLOW.bly3
  is '保留域3';
comment on column URP.ABCPAY_TRANSFLOW.dzbh
  is '对账编号';
alter table URP.ABCPAY_TRANSFLOW
  add constraint ABCPAY_PRIMARYKEY primary key (LSID);

prompt
prompt Creating table ACCOUNTABLE_STATISTICS
prompt =====================================
prompt
create table URP.ACCOUNTABLE_STATISTICS
(
  qdzhydzid  VARCHAR2(32) default sys_guid() not null,
  qdzhid     VARCHAR2(32) not null,
  ydzzje     NUMBER(12,2) not null,
  qdzje      NUMBER(12,2),
  dzrq       DATE not null,
  jlcjsj     TIMESTAMP(6) not null,
  dzbs       VARCHAR2(2) not null,
  dzwhfjmc   VARCHAR2(50),
  dzwhfjbclj VARCHAR2(100),
  dzwhclbz   VARCHAR2(100),
  dzwhsj     TIMESTAMP(6),
  dzwhr      VARCHAR2(20),
  dzsj       TIMESTAMP(6),
  bz         VARCHAR2(100),
  sfsc       VARCHAR2(2) default 0 not null,
  bly1       VARCHAR2(50),
  bly2       VARCHAR2(50),
  bly3       VARCHAR2(50)
)
;
comment on table URP.ACCOUNTABLE_STATISTICS
  is '应到账统计表';
comment on column URP.ACCOUNTABLE_STATISTICS.qdzhydzid
  is '渠道账户应到账主键ID';
comment on column URP.ACCOUNTABLE_STATISTICS.qdzhid
  is '渠道账户主键ID';
comment on column URP.ACCOUNTABLE_STATISTICS.ydzzje
  is '应到账总金额（支持随应到账处理变化）';
comment on column URP.ACCOUNTABLE_STATISTICS.qdzje
  is '渠道总金额(以HIS流水统计)';
comment on column URP.ACCOUNTABLE_STATISTICS.dzrq
  is '对账日期';
comment on column URP.ACCOUNTABLE_STATISTICS.jlcjsj
  is '账户应到账记录创建时间';
comment on column URP.ACCOUNTABLE_STATISTICS.dzbs
  is '到账标识(1:已到账，0：未到账)';
comment on column URP.ACCOUNTABLE_STATISTICS.dzwhfjmc
  is '到账维护附件名称';
comment on column URP.ACCOUNTABLE_STATISTICS.dzwhfjbclj
  is '到账维护附件保存路径';
comment on column URP.ACCOUNTABLE_STATISTICS.dzwhclbz
  is '到账维护处理备注';
comment on column URP.ACCOUNTABLE_STATISTICS.dzwhsj
  is '到账维护时间';
comment on column URP.ACCOUNTABLE_STATISTICS.dzwhr
  is '到账维护人';
comment on column URP.ACCOUNTABLE_STATISTICS.dzsj
  is '到账时间';
comment on column URP.ACCOUNTABLE_STATISTICS.bz
  is '备注';
comment on column URP.ACCOUNTABLE_STATISTICS.sfsc
  is '是否删除(1:是，0：否)';
comment on column URP.ACCOUNTABLE_STATISTICS.bly1
  is '保留域1';
comment on column URP.ACCOUNTABLE_STATISTICS.bly2
  is '保留域2';
comment on column URP.ACCOUNTABLE_STATISTICS.bly3
  is '保留域3
';
create index URP.QDZHID_DZRQ_SFSC on URP.ACCOUNTABLE_STATISTICS (DZRQ, SFSC, QDZHID);
alter table URP.ACCOUNTABLE_STATISTICS
  add constraint ACCOUNTABLE_STATISTICS_PK primary key (QDZHYDZID);

prompt
prompt Creating table ADDRESS_BOOK
prompt ===========================
prompt
create table URP.ADDRESS_BOOK
(
  txlid   VARCHAR2(32) default sys_guid() not null,
  xm      VARCHAR2(30) not null,
  xb      VARCHAR2(2),
  sjhm    VARCHAR2(11) not null,
  ghhm    VARCHAR2(20),
  dzyx    VARCHAR2(30) not null,
  wxh     VARCHAR2(30),
  wxpzid  VARCHAR2(32),
  openid  VARCHAR2(50),
  unionid VARCHAR2(50),
  csrq    VARCHAR2(20),
  sfzh    VARCHAR2(18),
  yhbq    VARCHAR2(2),
  ssks    VARCHAR2(50),
  sfsc    VARCHAR2(2) default 0 not null,
  jlssr   VARCHAR2(20),
  jgbm    VARCHAR2(15) not null,
  jlcjsj  TIMESTAMP(6) default sysdate not null,
  cjr     VARCHAR2(20),
  zhxgsj  TIMESTAMP(6) default sysdate not null,
  zhxgr   VARCHAR2(20),
  bz      VARCHAR2(100),
  bly     VARCHAR2(50),
  push    VARCHAR2(10) default 0
)
;
comment on table URP.ADDRESS_BOOK
  is '通讯录表';
comment on column URP.ADDRESS_BOOK.txlid
  is '通讯录主键Id';
comment on column URP.ADDRESS_BOOK.xm
  is '姓名';
comment on column URP.ADDRESS_BOOK.xb
  is '性别（0：男，1：女）';
comment on column URP.ADDRESS_BOOK.sjhm
  is '手机号码';
comment on column URP.ADDRESS_BOOK.ghhm
  is '固定电话号码';
comment on column URP.ADDRESS_BOOK.dzyx
  is '电子邮箱';
comment on column URP.ADDRESS_BOOK.wxh
  is '微信号';
comment on column URP.ADDRESS_BOOK.wxpzid
  is '微信配置表主键Id';
comment on column URP.ADDRESS_BOOK.openid
  is '指定微信公众号下的个人openId';
comment on column URP.ADDRESS_BOOK.unionid
  is '指定微信公众号下的个人unionid';
comment on column URP.ADDRESS_BOOK.csrq
  is '出生日期';
comment on column URP.ADDRESS_BOOK.sfzh
  is '身份证号';
comment on column URP.ADDRESS_BOOK.yhbq
  is '用户标签（同事、朋友……）';
comment on column URP.ADDRESS_BOOK.ssks
  is '所属科室';
comment on column URP.ADDRESS_BOOK.sfsc
  is '是否删除（0：否，1：是）';
comment on column URP.ADDRESS_BOOK.jlssr
  is '记录所属人（系统登录名：用于个人维护通信录）';
comment on column URP.ADDRESS_BOOK.jgbm
  is '所属机构';
comment on column URP.ADDRESS_BOOK.jlcjsj
  is '记录创建时间';
comment on column URP.ADDRESS_BOOK.cjr
  is '创建人（系统登录名）';
comment on column URP.ADDRESS_BOOK.zhxgsj
  is '最后修改时间';
comment on column URP.ADDRESS_BOOK.zhxgr
  is '最后修改人';
comment on column URP.ADDRESS_BOOK.bz
  is '备注';
comment on column URP.ADDRESS_BOOK.bly
  is '保留域';
comment on column URP.ADDRESS_BOOK.push
  is '推送人标识（0：不推送，1推送）设成推送后，有了异常信息便会推送给他';
alter table URP.ADDRESS_BOOK
  add constraint ADDRESS_BOOK_PRIMARYKEY primary key (TXLID);

prompt
prompt Creating table ALIPAY_TRANSFLOW
prompt ===============================
prompt
create table URP.ALIPAY_TRANSFLOW
(
  lsid   VARCHAR2(32) default sys_guid() not null,
  qdzhid VARCHAR2(32),
  shbh   VARCHAR2(20),
  zdbh   VARCHAR2(20),
  jyckh  VARCHAR2(50),
  jylsh  VARCHAR2(50),
  qqflsh VARCHAR2(50),
  yjylsh VARCHAR2(50),
  shddh  VARCHAR2(30),
  zdhm   VARCHAR2(50),
  spmc   VARCHAR2(100),
  jysj   VARCHAR2(20) not null,
  yhjyzh VARCHAR2(30),
  jyje   NUMBER(12,2) default 0.00 not null,
  jyzt   VARCHAR2(2) default 1 not null,
  zhye   NUMBER(12,2) default 0.00,
  ywlx   VARCHAR2(20) not null,
  jybz   VARCHAR2(100),
  jlcjsj TIMESTAMP(6) default sysdate not null,
  dzrq   DATE default sysdate not null,
  dzbs   VARCHAR2(2) default 0 not null,
  crkbs  VARCHAR2(2) default 0 not null,
  jgbm   VARCHAR2(15) not null,
  sfsc   VARCHAR2(2) default 0 not null,
  bly1   VARCHAR2(50),
  bly2   VARCHAR2(50),
  bly3   VARCHAR2(50),
  dzbh   VARCHAR2(50),
  ejbs   VARCHAR2(15),
  sxf    NUMBER(12,2) default 0.00 not null,
  qsje   NUMBER(12,2) default 0.00,
  qsrq   VARCHAR2(20)
)
;
comment on table URP.ALIPAY_TRANSFLOW
  is '支付宝交易流水表';
comment on column URP.ALIPAY_TRANSFLOW.lsid
  is '支付宝流水主键ID';
comment on column URP.ALIPAY_TRANSFLOW.qdzhid
  is '渠道结算账户ID';
comment on column URP.ALIPAY_TRANSFLOW.shbh
  is '商户编号';
comment on column URP.ALIPAY_TRANSFLOW.zdbh
  is '终端编号';
comment on column URP.ALIPAY_TRANSFLOW.jyckh
  is '交易参考号（系统跟踪号、业务流水号）';
comment on column URP.ALIPAY_TRANSFLOW.jylsh
  is '交易流水号（账务流水号）';
comment on column URP.ALIPAY_TRANSFLOW.qqflsh
  is '请求方流水号';
comment on column URP.ALIPAY_TRANSFLOW.yjylsh
  is '原交易流水号：交易为后续类交易时有值';
comment on column URP.ALIPAY_TRANSFLOW.shddh
  is '商户订单号';
comment on column URP.ALIPAY_TRANSFLOW.zdhm
  is '账单号码';
comment on column URP.ALIPAY_TRANSFLOW.spmc
  is '商品名称';
comment on column URP.ALIPAY_TRANSFLOW.jysj
  is '交易时间';
comment on column URP.ALIPAY_TRANSFLOW.yhjyzh
  is '用户交易账号（支付宝账号/银行卡号）';
comment on column URP.ALIPAY_TRANSFLOW.jyje
  is '交易金额（单位：元）';
comment on column URP.ALIPAY_TRANSFLOW.jyzt
  is '交易状态（0：失败，1：成功，2：未知）';
comment on column URP.ALIPAY_TRANSFLOW.zhye
  is '账户余额（单位：元）';
comment on column URP.ALIPAY_TRANSFLOW.ywlx
  is '业务类型（在线支付、交易退款）';
comment on column URP.ALIPAY_TRANSFLOW.jybz
  is '交易备注';
comment on column URP.ALIPAY_TRANSFLOW.jlcjsj
  is '记录创建时间';
comment on column URP.ALIPAY_TRANSFLOW.dzrq
  is '对账日期';
comment on column URP.ALIPAY_TRANSFLOW.dzbs
  is '对账标识（1：已对账，0：未对账）';
comment on column URP.ALIPAY_TRANSFLOW.crkbs
  is '重入库标识（1：重入库，0：原始入库）';
comment on column URP.ALIPAY_TRANSFLOW.jgbm
  is '机构编码';
comment on column URP.ALIPAY_TRANSFLOW.sfsc
  is '删除状态（1：删除，0：未删除）';
comment on column URP.ALIPAY_TRANSFLOW.bly1
  is '保留域1';
comment on column URP.ALIPAY_TRANSFLOW.bly2
  is '保留域2';
comment on column URP.ALIPAY_TRANSFLOW.bly3
  is '保留域3->就诊卡号';
comment on column URP.ALIPAY_TRANSFLOW.dzbh
  is '对账编号';
comment on column URP.ALIPAY_TRANSFLOW.ejbs
  is '二级标识';
comment on column URP.ALIPAY_TRANSFLOW.sxf
  is '手续费（单位：元）';
comment on column URP.ALIPAY_TRANSFLOW.qsje
  is '清算金额（单位：元）';
comment on column URP.ALIPAY_TRANSFLOW.qsrq
  is '清算日期';
create index URP.ALI_QJD on URP.ALIPAY_TRANSFLOW (DZRQ, JGBM, QDZHID);
create index URP.ALI_SFSC_DZBS on URP.ALIPAY_TRANSFLOW (DZBS, SFSC);
create index URP.ALI_SJ on URP.ALIPAY_TRANSFLOW (SHDDH, JYLSH);
alter table URP.ALIPAY_TRANSFLOW
  add constraint ALIPAY_TRANSFLOW_PRIMARYKEY primary key (LSID);

prompt
prompt Creating table ARRIVALACCOUNT_STATISTICS
prompt ========================================
prompt
create table URP.ARRIVALACCOUNT_STATISTICS
(
  qdzhdzid   VARCHAR2(32) default sys_guid() not null,
  qdzhid     VARCHAR2(32) not null,
  dzzje      NUMBER(12,2) not null,
  dzpc       VARCHAR2(2) default 1 not null,
  dzrq       DATE not null,
  jlcjsj     TIMESTAMP(6) not null,
  dzbs       VARCHAR2(2) default 0 not null,
  dzwhfjmc   VARCHAR2(50),
  dzwhfjbclj VARCHAR2(100),
  dzwhclbz   VARCHAR2(100),
  dzwhzje    NUMBER(12,2),
  dzwhsj     TIMESTAMP(6),
  dzwhr      VARCHAR2(20),
  dzsj       TIMESTAMP(6),
  sfsc       VARCHAR2(2) default 0 not null,
  bz         VARCHAR2(100),
  bly1       VARCHAR2(50),
  bly2       VARCHAR2(50),
  bly3       VARCHAR2(50)
)
;
comment on table URP.ARRIVALACCOUNT_STATISTICS
  is '到账统计表';
comment on column URP.ARRIVALACCOUNT_STATISTICS.qdzhdzid
  is '渠道账户到账主键ID';
comment on column URP.ARRIVALACCOUNT_STATISTICS.qdzhid
  is '渠道账户主键ID';
comment on column URP.ARRIVALACCOUNT_STATISTICS.dzzje
  is '到账总金额（医保渠道-实际垫付资金）';
comment on column URP.ARRIVALACCOUNT_STATISTICS.dzpc
  is '到账批次';
comment on column URP.ARRIVALACCOUNT_STATISTICS.dzrq
  is '对账日期';
comment on column URP.ARRIVALACCOUNT_STATISTICS.jlcjsj
  is '账户到账记录创建时间';
comment on column URP.ARRIVALACCOUNT_STATISTICS.dzbs
  is '到账标识(1:已到账，0：未到账)';
comment on column URP.ARRIVALACCOUNT_STATISTICS.dzwhfjmc
  is '到账维护附件名称';
comment on column URP.ARRIVALACCOUNT_STATISTICS.dzwhfjbclj
  is '到账维护附件保存路径';
comment on column URP.ARRIVALACCOUNT_STATISTICS.dzwhclbz
  is '到账维护处理备注';
comment on column URP.ARRIVALACCOUNT_STATISTICS.dzwhzje
  is '到账维护总金额';
comment on column URP.ARRIVALACCOUNT_STATISTICS.dzwhsj
  is '到账维护时间';
comment on column URP.ARRIVALACCOUNT_STATISTICS.dzwhr
  is '到账维护人';
comment on column URP.ARRIVALACCOUNT_STATISTICS.dzsj
  is '到账时间';
comment on column URP.ARRIVALACCOUNT_STATISTICS.sfsc
  is '是否删除(1:是，0：否)';
comment on column URP.ARRIVALACCOUNT_STATISTICS.bz
  is '备注（医保渠道-到账月份）';
comment on column URP.ARRIVALACCOUNT_STATISTICS.bly1
  is '保留域1（医保渠道-不合理费用）';
comment on column URP.ARRIVALACCOUNT_STATISTICS.bly2
  is '保留域2（医保渠道-预留保证金）';
comment on column URP.ARRIVALACCOUNT_STATISTICS.bly3
  is '保留域3';
create index URP.IDX_QDZHID_DZRQ_SFSC on URP.ARRIVALACCOUNT_STATISTICS (DZRQ, SFSC, QDZHID);
alter table URP.ARRIVALACCOUNT_STATISTICS
  add constraint ARRIVALACCOUNT_STATISTICS_PK primary key (QDZHDZID);

prompt
prompt Creating table CASHPAY_TRANSFLOW
prompt ================================
prompt
create table URP.CASHPAY_TRANSFLOW
(
  lsid   VARCHAR2(32) default sys_guid() not null,
  qdzhid VARCHAR2(32),
  shbh   VARCHAR2(20),
  zdbh   VARCHAR2(20),
  jyckh  VARCHAR2(50),
  jylsh  VARCHAR2(50),
  qqflsh VARCHAR2(50),
  yjylsh VARCHAR2(50),
  shddh  VARCHAR2(30),
  zdhm   VARCHAR2(50),
  spmc   VARCHAR2(30),
  jysj   VARCHAR2(20) not null,
  yhjyzh VARCHAR2(30),
  jyje   NUMBER(12,2) default 0.00 not null,
  jyzt   VARCHAR2(2) default 1 not null,
  zhye   NUMBER(12,2) default 0.00,
  ywlx   VARCHAR2(20) not null,
  jybz   VARCHAR2(100),
  jlcjsj TIMESTAMP(6) default sysdate not null,
  dzrq   DATE default sysdate not null,
  dzbs   VARCHAR2(2) default 0 not null,
  crkbs  VARCHAR2(2) default 0 not null,
  dzbh   VARCHAR2(50),
  ejbs   VARCHAR2(30),
  jgbm   VARCHAR2(15) not null,
  sfsc   VARCHAR2(2) default 0 not null,
  bly1   VARCHAR2(50),
  bly2   VARCHAR2(50),
  bly3   VARCHAR2(50),
  sxf    NUMBER(12,2) default 0.00,
  qsje   NUMBER(12,2) default 0.00,
  qsrq   VARCHAR2(20)
)
;
comment on table URP.CASHPAY_TRANSFLOW
  is '现金交易流水表';
comment on column URP.CASHPAY_TRANSFLOW.lsid
  is '微信流水主键ID';
comment on column URP.CASHPAY_TRANSFLOW.qdzhid
  is '渠道结算账户ID';
comment on column URP.CASHPAY_TRANSFLOW.shbh
  is '商户编号';
comment on column URP.CASHPAY_TRANSFLOW.zdbh
  is '终端编号';
comment on column URP.CASHPAY_TRANSFLOW.jyckh
  is '交易参考号（系统跟踪号、业务流水号）';
comment on column URP.CASHPAY_TRANSFLOW.jylsh
  is '交易流水号（账务流水号）';
comment on column URP.CASHPAY_TRANSFLOW.qqflsh
  is '请求方流水号';
comment on column URP.CASHPAY_TRANSFLOW.yjylsh
  is '原交易流水号：交易为后续类交易时有值';
comment on column URP.CASHPAY_TRANSFLOW.shddh
  is '商户订单号';
comment on column URP.CASHPAY_TRANSFLOW.zdhm
  is '账单号码';
comment on column URP.CASHPAY_TRANSFLOW.spmc
  is '商品名称';
comment on column URP.CASHPAY_TRANSFLOW.jysj
  is '交易时间';
comment on column URP.CASHPAY_TRANSFLOW.yhjyzh
  is '用户交易账号（支付宝账号/银行卡号）';
comment on column URP.CASHPAY_TRANSFLOW.jyje
  is '交易金额（单位：元）';
comment on column URP.CASHPAY_TRANSFLOW.jyzt
  is '交易状态（0：失败，1：成功，2：未知）';
comment on column URP.CASHPAY_TRANSFLOW.zhye
  is '账户余额（单位：元）';
comment on column URP.CASHPAY_TRANSFLOW.ywlx
  is '业务类型（在线支付、交易退款）';
comment on column URP.CASHPAY_TRANSFLOW.jybz
  is '交易备注';
comment on column URP.CASHPAY_TRANSFLOW.jlcjsj
  is '记录创建时间';
comment on column URP.CASHPAY_TRANSFLOW.dzrq
  is '对账日期';
comment on column URP.CASHPAY_TRANSFLOW.dzbs
  is '对账标识（1：已对账，0：未对账）';
comment on column URP.CASHPAY_TRANSFLOW.crkbs
  is '重入库标识（1：重入库，0：原始入库）';
comment on column URP.CASHPAY_TRANSFLOW.dzbh
  is '对账编号';
comment on column URP.CASHPAY_TRANSFLOW.ejbs
  is '二级标识（实际支付渠道/服务商）';
comment on column URP.CASHPAY_TRANSFLOW.jgbm
  is '机构编码';
comment on column URP.CASHPAY_TRANSFLOW.sfsc
  is '删除状态（1：删除，0：未删除）';
comment on column URP.CASHPAY_TRANSFLOW.bly1
  is '保留域1';
comment on column URP.CASHPAY_TRANSFLOW.bly2
  is '保留域2';
comment on column URP.CASHPAY_TRANSFLOW.bly3
  is '保留域3';
comment on column URP.CASHPAY_TRANSFLOW.sxf
  is '手续费（单位：元）';
comment on column URP.CASHPAY_TRANSFLOW.qsje
  is '清算金额（单位：元）';
comment on column URP.CASHPAY_TRANSFLOW.qsrq
  is '清算日期';
create index URP.DZRQ_SFSC_DZBS_JGBM_DDH_QDZH on URP.CASHPAY_TRANSFLOW (QDZHID, SHDDH, DZRQ, DZBS, JGBM, SFSC);
alter table URP.CASHPAY_TRANSFLOW
  add constraint CASHPAY_TRANSFLOW_PRIMARYKEY primary key (LSID);

prompt
prompt Creating table CCBUNIONPAY_TRANSFLOW
prompt ====================================
prompt
create table URP.CCBUNIONPAY_TRANSFLOW
(
  lsid   VARCHAR2(32) default sys_guid() not null,
  qdzhid VARCHAR2(32),
  shbh   VARCHAR2(20),
  zdbh   VARCHAR2(20),
  jyckh  VARCHAR2(50),
  jylsh  VARCHAR2(50),
  qqflsh VARCHAR2(50),
  yjylsh VARCHAR2(50),
  shddh  VARCHAR2(30) not null,
  zdhm   VARCHAR2(50),
  spmc   VARCHAR2(30),
  jysj   VARCHAR2(20) not null,
  yhjyzh VARCHAR2(30),
  jyje   NUMBER(12,2) default 0.00 not null,
  jyzt   VARCHAR2(2) default 1 not null,
  zhye   NUMBER(12,2) default 0.00,
  ywlx   VARCHAR2(20) not null,
  jybz   VARCHAR2(100),
  jlcjsj TIMESTAMP(6) default sysdate not null,
  dzrq   DATE default sysdate not null,
  dzbs   VARCHAR2(2) default 0 not null,
  crkbs  VARCHAR2(2) default 0 not null,
  jgbm   VARCHAR2(15) not null,
  sfsc   VARCHAR2(2) default 0 not null,
  bly1   VARCHAR2(50),
  bly2   VARCHAR2(50),
  bly3   VARCHAR2(50),
  dzbh   VARCHAR2(50),
  ejbs   VARCHAR2(15)
)
;
comment on table URP.CCBUNIONPAY_TRANSFLOW
  is '建行聚合付对账流水表';
comment on column URP.CCBUNIONPAY_TRANSFLOW.lsid
  is '建行聚合付流水主键ID';
comment on column URP.CCBUNIONPAY_TRANSFLOW.qdzhid
  is '渠道结算账户ID';
comment on column URP.CCBUNIONPAY_TRANSFLOW.shbh
  is '商户编号';
comment on column URP.CCBUNIONPAY_TRANSFLOW.zdbh
  is '终端编号';
comment on column URP.CCBUNIONPAY_TRANSFLOW.jyckh
  is '交易参考号（系统跟踪号、业务流水号）';
comment on column URP.CCBUNIONPAY_TRANSFLOW.jylsh
  is '交易流水号（账务流水号）';
comment on column URP.CCBUNIONPAY_TRANSFLOW.qqflsh
  is '请求方流水号';
comment on column URP.CCBUNIONPAY_TRANSFLOW.yjylsh
  is '原交易流水号/原交易订单号：交易为后续类交易时有值';
comment on column URP.CCBUNIONPAY_TRANSFLOW.shddh
  is '商户订单号';
comment on column URP.CCBUNIONPAY_TRANSFLOW.zdhm
  is '账单号码';
comment on column URP.CCBUNIONPAY_TRANSFLOW.spmc
  is '商品名称';
comment on column URP.CCBUNIONPAY_TRANSFLOW.jysj
  is '交易时间';
comment on column URP.CCBUNIONPAY_TRANSFLOW.yhjyzh
  is '用户交易账号（支付宝账号/银行卡号）';
comment on column URP.CCBUNIONPAY_TRANSFLOW.jyje
  is '交易金额（单位：元）';
comment on column URP.CCBUNIONPAY_TRANSFLOW.jyzt
  is '交易状态（0：失败，1：成功，2：未知）';
comment on column URP.CCBUNIONPAY_TRANSFLOW.zhye
  is '账户余额（单位：元）';
comment on column URP.CCBUNIONPAY_TRANSFLOW.ywlx
  is '业务类型（在线支付、交易退款）';
comment on column URP.CCBUNIONPAY_TRANSFLOW.jybz
  is '交易备注';
comment on column URP.CCBUNIONPAY_TRANSFLOW.jlcjsj
  is '记录创建时间';
comment on column URP.CCBUNIONPAY_TRANSFLOW.dzrq
  is '对账日期';
comment on column URP.CCBUNIONPAY_TRANSFLOW.dzbs
  is '对账标识（1：已对账，0：未对账）';
comment on column URP.CCBUNIONPAY_TRANSFLOW.crkbs
  is '重入库标识（1：重入库，0：原始入库）';
comment on column URP.CCBUNIONPAY_TRANSFLOW.jgbm
  is '机构编码';
comment on column URP.CCBUNIONPAY_TRANSFLOW.sfsc
  is '删除状态（1：删除，0：未删除）';
comment on column URP.CCBUNIONPAY_TRANSFLOW.bly1
  is '保留域1';
comment on column URP.CCBUNIONPAY_TRANSFLOW.bly2
  is '保留域2';
comment on column URP.CCBUNIONPAY_TRANSFLOW.bly3
  is '保留域3';
comment on column URP.CCBUNIONPAY_TRANSFLOW.dzbh
  is '对账编号';
comment on column URP.CCBUNIONPAY_TRANSFLOW.ejbs
  is '二级标识';
alter table URP.CCBUNIONPAY_TRANSFLOW
  add constraint CCBUNIONPAY_PRIMARYKEY primary key (LSID);

prompt
prompt Creating table CGBSMARTPAY_TRANSFLOW
prompt ====================================
prompt
create table URP.CGBSMARTPAY_TRANSFLOW
(
  lsid   VARCHAR2(32) default sys_guid() not null,
  qdzhid VARCHAR2(32),
  shbh   VARCHAR2(20),
  zdbh   VARCHAR2(20),
  jyckh  VARCHAR2(50),
  jylsh  VARCHAR2(50),
  qqflsh VARCHAR2(50),
  yjylsh VARCHAR2(50),
  shddh  VARCHAR2(50) not null,
  zdhm   VARCHAR2(50),
  spmc   VARCHAR2(100),
  jysj   VARCHAR2(20) not null,
  yhjyzh VARCHAR2(30),
  jyje   NUMBER(12,2) default 0.00 not null,
  jyzt   VARCHAR2(2) default 1 not null,
  zhye   NUMBER(12,2) default 0.00,
  ywlx   VARCHAR2(20),
  jybz   VARCHAR2(100),
  jlcjsj TIMESTAMP(6) default sysdate not null,
  dzrq   DATE default sysdate not null,
  dzbs   VARCHAR2(2) default 0 not null,
  crkbs  VARCHAR2(2) default 0 not null,
  jgbm   VARCHAR2(15) not null,
  sfsc   VARCHAR2(2) default 0 not null,
  bly1   VARCHAR2(50),
  bly2   VARCHAR2(50),
  bly3   VARCHAR2(50),
  dzbh   VARCHAR2(50),
  ejbs   VARCHAR2(30),
  sxf    NUMBER(12,2) default 0.00 not null,
  qsje   NUMBER(12,2) default 0.00,
  qsrq   VARCHAR2(20)
)
;
comment on table URP.CGBSMARTPAY_TRANSFLOW
  is '广发慧收款对账流水表';
comment on column URP.CGBSMARTPAY_TRANSFLOW.lsid
  is '广发慧收款流水主键ID';
comment on column URP.CGBSMARTPAY_TRANSFLOW.qdzhid
  is '渠道结算账户ID';
comment on column URP.CGBSMARTPAY_TRANSFLOW.shbh
  is '商户编号';
comment on column URP.CGBSMARTPAY_TRANSFLOW.zdbh
  is '终端编号';
comment on column URP.CGBSMARTPAY_TRANSFLOW.jyckh
  is '交易参考号（系统跟踪号、业务流水号）';
comment on column URP.CGBSMARTPAY_TRANSFLOW.jylsh
  is '交易流水号（账务流水号）';
comment on column URP.CGBSMARTPAY_TRANSFLOW.qqflsh
  is '请求方流水号';
comment on column URP.CGBSMARTPAY_TRANSFLOW.yjylsh
  is '原交易流水号/原交易订单号：交易为后续类交易时有值';
comment on column URP.CGBSMARTPAY_TRANSFLOW.shddh
  is '商户订单号';
comment on column URP.CGBSMARTPAY_TRANSFLOW.zdhm
  is '账单号码';
comment on column URP.CGBSMARTPAY_TRANSFLOW.spmc
  is '商品名称';
comment on column URP.CGBSMARTPAY_TRANSFLOW.jysj
  is '交易时间';
comment on column URP.CGBSMARTPAY_TRANSFLOW.yhjyzh
  is '用户交易账号（支付宝账号/银行卡号）';
comment on column URP.CGBSMARTPAY_TRANSFLOW.jyje
  is '交易金额（单位：元）';
comment on column URP.CGBSMARTPAY_TRANSFLOW.jyzt
  is '交易状态（0：失败，1：成功，2：未知）';
comment on column URP.CGBSMARTPAY_TRANSFLOW.zhye
  is '账户余额（单位：元）';
comment on column URP.CGBSMARTPAY_TRANSFLOW.ywlx
  is '业务类型（在线支付、交易退款）';
comment on column URP.CGBSMARTPAY_TRANSFLOW.jybz
  is '交易备注';
comment on column URP.CGBSMARTPAY_TRANSFLOW.jlcjsj
  is '记录创建时间';
comment on column URP.CGBSMARTPAY_TRANSFLOW.dzrq
  is '对账日期';
comment on column URP.CGBSMARTPAY_TRANSFLOW.dzbs
  is '对账标识（1：已对账，0：未对账）';
comment on column URP.CGBSMARTPAY_TRANSFLOW.crkbs
  is '重入库标识（1：重入库，0：原始入库）';
comment on column URP.CGBSMARTPAY_TRANSFLOW.jgbm
  is '机构编码';
comment on column URP.CGBSMARTPAY_TRANSFLOW.sfsc
  is '删除状态（1：删除，0：未删除）';
comment on column URP.CGBSMARTPAY_TRANSFLOW.bly1
  is '保留域1';
comment on column URP.CGBSMARTPAY_TRANSFLOW.bly2
  is '保留域2';
comment on column URP.CGBSMARTPAY_TRANSFLOW.bly3
  is '保留域3->就诊卡号';
comment on column URP.CGBSMARTPAY_TRANSFLOW.dzbh
  is '对账编号';
comment on column URP.CGBSMARTPAY_TRANSFLOW.ejbs
  is '二级标识（现存->退款状态）';
comment on column URP.CGBSMARTPAY_TRANSFLOW.sxf
  is '手续费（单位：元）';
comment on column URP.CGBSMARTPAY_TRANSFLOW.qsje
  is '清算金额（单位：元）';
comment on column URP.CGBSMARTPAY_TRANSFLOW.qsrq
  is '清算日期';
create index URP.CGB_SFSC_DZBS on URP.CGBSMARTPAY_TRANSFLOW (DZBS, SFSC);
create index URP.IDX_QJD on URP.CGBSMARTPAY_TRANSFLOW (QDZHID, JGBM, DZRQ);
create index URP.IDX_SJ on URP.CGBSMARTPAY_TRANSFLOW (SHDDH, JYLSH);
alter table URP.CGBSMARTPAY_TRANSFLOW
  add constraint CGBSMARTPAY_PRIMARYKEY primary key (LSID);

prompt
prompt Creating table CHANNEL_ACCOUNT
prompt ==============================
prompt
create table URP.CHANNEL_ACCOUNT
(
  qdzhid VARCHAR2(32) default sys_guid() not null,
  qdid   VARCHAR2(32) not null,
  shbh   VARCHAR2(20),
  zdbh   VARCHAR2(20),
  zhmc   VARCHAR2(30),
  zhbh   VARCHAR2(30) not null,
  zhzt   VARCHAR2(2) not null,
  jlcjsj TIMESTAMP(6) default sysdate,
  cjr    VARCHAR2(20),
  zhxgsj TIMESTAMP(6) default sysdate,
  zhxgr  VARCHAR2(20),
  bz     VARCHAR2(100),
  khh    VARCHAR2(50)
)
;
comment on table URP.CHANNEL_ACCOUNT
  is '渠道账户';
comment on column URP.CHANNEL_ACCOUNT.qdzhid
  is '渠道账户ID，用于区分账户';
comment on column URP.CHANNEL_ACCOUNT.qdid
  is '渠道ID，用于区分渠道';
comment on column URP.CHANNEL_ACCOUNT.shbh
  is '商户编号';
comment on column URP.CHANNEL_ACCOUNT.zdbh
  is '终端编号';
comment on column URP.CHANNEL_ACCOUNT.zhmc
  is '账户名称';
comment on column URP.CHANNEL_ACCOUNT.zhbh
  is '账户编号';
comment on column URP.CHANNEL_ACCOUNT.zhzt
  is '账户状态（1：正常，0：禁用/删除）';
comment on column URP.CHANNEL_ACCOUNT.jlcjsj
  is '记录创建时间';
comment on column URP.CHANNEL_ACCOUNT.cjr
  is '创建人';
comment on column URP.CHANNEL_ACCOUNT.zhxgsj
  is '最后修改时间';
comment on column URP.CHANNEL_ACCOUNT.zhxgr
  is '最后修改人';
comment on column URP.CHANNEL_ACCOUNT.bz
  is '备注';
comment on column URP.CHANNEL_ACCOUNT.khh
  is '开户行';
create index URP.QDID_SHBH_ZHBH on URP.CHANNEL_ACCOUNT (QDID, SHBH, ZHBH);
alter table URP.CHANNEL_ACCOUNT
  add constraint CHANNEL_ACCOUNT_PRIMARYKEY primary key (QDZHID);

prompt
prompt Creating table CHANNEL_INFO
prompt ===========================
prompt
create table URP.CHANNEL_INFO
(
  qdid       VARCHAR2(32) default sys_guid() not null,
  qdbm       VARCHAR2(15) not null,
  qdmc       VARCHAR2(30) not null,
  dzwjgs     VARCHAR2(10),
  dzzq       VARCHAR2(10) not null,
  rqsj       VARCHAR2(10),
  qdzt       VARCHAR2(2) default 1 not null,
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
  dzwjmc     VARCHAR2(100),
  dzwjbdbclj VARCHAR2(100) not null,
  jgbm       VARCHAR2(15) not null,
  dzwjxfsj   VARCHAR2(10),
  jlcjsj     TIMESTAMP(6) default sysdate not null,
  cjr        VARCHAR2(20),
  zhxgsj     TIMESTAMP(6) default sysdate,
  zhxgr      VARCHAR2(20),
  bz         VARCHAR2(100),
  bly        VARCHAR2(50),
  jkm        VARCHAR2(50),
  jkcs       VARCHAR2(1000),
  zhqdfs     VARCHAR2(2),
  stmc       VARCHAR2(30),
  sjklx      VARCHAR2(20)
)
;
comment on table URP.CHANNEL_INFO
  is '渠道信息';
comment on column URP.CHANNEL_INFO.qdid
  is '渠道ID，主键';
comment on column URP.CHANNEL_INFO.qdbm
  is '渠道编码，用于区分渠道';
comment on column URP.CHANNEL_INFO.qdmc
  is '渠道名称';
comment on column URP.CHANNEL_INFO.dzwjgs
  is '对账文件格式';
comment on column URP.CHANNEL_INFO.dzzq
  is '对账周期';
comment on column URP.CHANNEL_INFO.rqsj
  is '日切时间';
comment on column URP.CHANNEL_INFO.qdzt
  is '渠道状态（1：正常，0：禁用）';
comment on column URP.CHANNEL_INFO.sfzddz
  is '是否自动对账（0：否，1是）';
comment on column URP.CHANNEL_INFO.hqdzwjfs
  is '获取对账文件方式（ftp、sftp、http、https、socket、webservice、视图）';
comment on column URP.CHANNEL_INFO.dzwjxzdz
  is '对账文件下载地址（FTP：IP，接口：url，视图：数据库访问连接串）';
comment on column URP.CHANNEL_INFO.ftpzh
  is 'ftp账号、视图数据库用户名';
comment on column URP.CHANNEL_INFO.ftpmm
  is 'ftp密码、视图数据库密码';
comment on column URP.CHANNEL_INFO.ftpdk
  is 'ftp端口、socket端口';
comment on column URP.CHANNEL_INFO.qmsf
  is '签名算法';
comment on column URP.CHANNEL_INFO.shzs
  is '商户证书（含路径和文件名）';
comment on column URP.CHANNEL_INFO.ggzs
  is '公共证书（含路径和文件名）';
comment on column URP.CHANNEL_INFO.dzwjxzml
  is '对账文件下载目录(ftp、sftp，静态的写死，动态的用{}括起来)';
comment on column URP.CHANNEL_INFO.dzwjmc
  is '对账文件名称（静态的写死，动态的用{}括起来）';
comment on column URP.CHANNEL_INFO.dzwjbdbclj
  is '对账文件本地保存路径（静态的写死，动态的用{}括起来）';
comment on column URP.CHANNEL_INFO.jgbm
  is '机构编码';
comment on column URP.CHANNEL_INFO.dzwjxfsj
  is '对账文件下发时间';
comment on column URP.CHANNEL_INFO.jlcjsj
  is '记录创建时间';
comment on column URP.CHANNEL_INFO.cjr
  is '创建人';
comment on column URP.CHANNEL_INFO.zhxgsj
  is '最后修改日期';
comment on column URP.CHANNEL_INFO.zhxgr
  is '最后修改人';
comment on column URP.CHANNEL_INFO.bz
  is '备注';
comment on column URP.CHANNEL_INFO.bly
  is '保留域';
comment on column URP.CHANNEL_INFO.jkm
  is '接口/方法名（如webservice）';
comment on column URP.CHANNEL_INFO.jkcs
  is '接口参数(调用http、htps、socket、webservice接口所需的参数，静态的写死，动态的用{}括起来)';
comment on column URP.CHANNEL_INFO.zhqdfs
  is '结算账户确定方式（1：商户号，2：商户号+终端号，3：结算账户账号）';
comment on column URP.CHANNEL_INFO.stmc
  is '视图名称';
comment on column URP.CHANNEL_INFO.sjklx
  is '数据库类型（oracle、MySQL等）';
create index URP.QDID_QDBM_QDZT_JGBM on URP.CHANNEL_INFO (QDID, QDBM, JGBM, QDZT);
alter table URP.CHANNEL_INFO
  add constraint CHANNEL_PRIMARYKEY primary key (QDID);

prompt
prompt Creating table CHANNEL_RECONRESULT
prompt ==================================
prompt
create table URP.CHANNEL_RECONRESULT
(
  qddzjgid   VARCHAR2(32) default sys_guid() not null,
  qdid       VARCHAR2(32) not null,
  dzbs       VARCHAR2(2) not null,
  dzjg       VARCHAR2(2) not null,
  dzjgms     VARCHAR2(100),
  qdjyzje    NUMBER(12,2),
  qdjyzbs    NUMBER(8),
  qdycjyzje  NUMBER(12,2),
  ycjyzbs    NUMBER(8),
  qdjyzb     VARCHAR2(10),
  qdjylszb   VARCHAR2(10),
  qdjyhbzb   VARCHAR2(10),
  dzrq       DATE default sysdate not null,
  jlcjsj     TIMESTAMP(6) default sysdate not null,
  dzfs       VARCHAR2(2) default 0 not null,
  dzfqr      VARCHAR2(20),
  sfsc       VARCHAR2(100) default 0 not null,
  bz         VARCHAR2(2),
  bly1       VARCHAR2(50),
  bly2       VARCHAR2(50),
  bly3       VARCHAR2(50),
  hisjyzje   NUMBER(12,2),
  hisjyzbs   NUMBER(8),
  hisycjyzje NUMBER(12,2),
  qdycjyzbs  NUMBER(8),
  hisycjyzbs NUMBER(8),
  sxf        NUMBER(12,2) default 0.00 not null,
  qsje       NUMBER(12,2) default 0.00,
  qsrq       VARCHAR2(20),
  qdzfbs     NUMBER(8),
  qdtkbs     NUMBER(8)
)
;
comment on table URP.CHANNEL_RECONRESULT
  is '渠道对账结果表';
comment on column URP.CHANNEL_RECONRESULT.qddzjgid
  is '渠道对账结果主键ID，用于区分渠道对账结果';
comment on column URP.CHANNEL_RECONRESULT.qdid
  is '渠道主键id';
comment on column URP.CHANNEL_RECONRESULT.dzbs
  is '对账标识（1:已完成、0:未完成、2未对账）';
comment on column URP.CHANNEL_RECONRESULT.dzjg
  is '对账结果（1账平、0账不平、2未对账、3无交易）';
comment on column URP.CHANNEL_RECONRESULT.dzjgms
  is '对账结果描述';
comment on column URP.CHANNEL_RECONRESULT.qdjyzje
  is '本次对账该渠道交易总金额（含异常交易）';
comment on column URP.CHANNEL_RECONRESULT.qdjyzbs
  is '本次对账该渠道交易总笔数（含异常交易）';
comment on column URP.CHANNEL_RECONRESULT.qdycjyzje
  is '本次对账该渠道异常交易总金额（渠道交易总金额-正常交易总金额）';
comment on column URP.CHANNEL_RECONRESULT.ycjyzbs
  is '本次对账异常交易总笔数（His和渠道异常并集）';
comment on column URP.CHANNEL_RECONRESULT.qdjyzb
  is '本次对账渠道交易占比(本次对账该渠道交易笔数/所有渠道本次对账交易总笔数)';
comment on column URP.CHANNEL_RECONRESULT.qdjylszb
  is '本次对账渠道交易历史占比(本次对账该渠道交易笔数/所有渠道所有交易总笔数)';
comment on column URP.CHANNEL_RECONRESULT.qdjyhbzb
  is '本次对账渠道交易环比占比';
comment on column URP.CHANNEL_RECONRESULT.dzrq
  is '对账日期';
comment on column URP.CHANNEL_RECONRESULT.jlcjsj
  is '对账完成时间/记录创建时间';
comment on column URP.CHANNEL_RECONRESULT.dzfs
  is '对账方式（0：自动对账、1：手动对账、2：手动 重对账）';
comment on column URP.CHANNEL_RECONRESULT.dzfqr
  is '对账发起人';
comment on column URP.CHANNEL_RECONRESULT.sfsc
  is '是否删除（1：是，0：否）';
comment on column URP.CHANNEL_RECONRESULT.bz
  is '备注';
comment on column URP.CHANNEL_RECONRESULT.bly1
  is '保留域1';
comment on column URP.CHANNEL_RECONRESULT.bly2
  is '保留域2';
comment on column URP.CHANNEL_RECONRESULT.bly3
  is '保留域3';
comment on column URP.CHANNEL_RECONRESULT.hisjyzje
  is '本次对账对应该渠道的His交易总金额（含异常交易）';
comment on column URP.CHANNEL_RECONRESULT.hisjyzbs
  is '本次对账对应该渠道的His交易总笔数（含异常交易）';
comment on column URP.CHANNEL_RECONRESULT.hisycjyzje
  is '本次对账对应该渠道的His异常交易总金额（His交易总金额-正常交易总金额）';
comment on column URP.CHANNEL_RECONRESULT.qdycjyzbs
  is '本次对账渠道异常交易总笔数';
comment on column URP.CHANNEL_RECONRESULT.hisycjyzbs
  is '本次对账对应该渠道的His异常交易总笔数';
comment on column URP.CHANNEL_RECONRESULT.sxf
  is '手续费（单位：元）';
comment on column URP.CHANNEL_RECONRESULT.qsje
  is '清算金额（单位：元）';
comment on column URP.CHANNEL_RECONRESULT.qsrq
  is '清算日期';
comment on column URP.CHANNEL_RECONRESULT.qdzfbs
  is '渠道支付笔数';
comment on column URP.CHANNEL_RECONRESULT.qdtkbs
  is '渠道退款笔数';
create index URP.QDID_DZRQ_SFSC on URP.CHANNEL_RECONRESULT (QDID, DZRQ, SFSC);
alter table URP.CHANNEL_RECONRESULT
  add constraint CHANNELRECONRESULT_PRIMARYKEY primary key (QDDZJGID);

prompt
prompt Creating table EHCPAY_TRANSFLOW
prompt ===============================
prompt
create table URP.EHCPAY_TRANSFLOW
(
  lsid   VARCHAR2(32) default sys_guid() not null,
  qdzhid VARCHAR2(32),
  shbh   VARCHAR2(20),
  zdbh   VARCHAR2(20),
  jyckh  VARCHAR2(50),
  jylsh  VARCHAR2(50),
  qqflsh VARCHAR2(50),
  yjylsh VARCHAR2(50),
  shddh  VARCHAR2(30),
  zdhm   VARCHAR2(50),
  spmc   VARCHAR2(30),
  jysj   VARCHAR2(20) not null,
  yhjyzh VARCHAR2(30),
  jyje   NUMBER(12,2) default 0.00 not null,
  jyzt   VARCHAR2(2) default 1 not null,
  zhye   NUMBER(12,2) default 0.00,
  ywlx   VARCHAR2(20) not null,
  jybz   VARCHAR2(100),
  jlcjsj TIMESTAMP(6) default sysdate not null,
  dzrq   DATE default sysdate not null,
  dzbs   VARCHAR2(2) default 0 not null,
  crkbs  VARCHAR2(2) default 0 not null,
  jgbm   VARCHAR2(15) not null,
  sfsc   VARCHAR2(2) default 0 not null,
  bly1   VARCHAR2(50),
  bly2   VARCHAR2(50),
  bly3   VARCHAR2(50),
  dzbh   VARCHAR2(50)
)
;
comment on table URP.EHCPAY_TRANSFLOW
  is '电子健康卡交易流水表';
comment on column URP.EHCPAY_TRANSFLOW.lsid
  is '电子健康卡流水主键ID';
comment on column URP.EHCPAY_TRANSFLOW.qdzhid
  is '渠道结算账户ID';
comment on column URP.EHCPAY_TRANSFLOW.shbh
  is '商户编号';
comment on column URP.EHCPAY_TRANSFLOW.zdbh
  is '终端编号';
comment on column URP.EHCPAY_TRANSFLOW.jyckh
  is '交易参考号（系统跟踪号、业务流水号）';
comment on column URP.EHCPAY_TRANSFLOW.jylsh
  is '交易流水号（账务流水号）';
comment on column URP.EHCPAY_TRANSFLOW.qqflsh
  is '请求方流水号';
comment on column URP.EHCPAY_TRANSFLOW.yjylsh
  is '原交易流水号：交易为后续类交易时有值';
comment on column URP.EHCPAY_TRANSFLOW.shddh
  is '商户订单号';
comment on column URP.EHCPAY_TRANSFLOW.zdhm
  is '账单号码';
comment on column URP.EHCPAY_TRANSFLOW.spmc
  is '商品名称';
comment on column URP.EHCPAY_TRANSFLOW.jysj
  is '交易时间';
comment on column URP.EHCPAY_TRANSFLOW.yhjyzh
  is '用户交易账号（支付宝账号/银行卡号）';
comment on column URP.EHCPAY_TRANSFLOW.jyje
  is '交易金额（单位：元）';
comment on column URP.EHCPAY_TRANSFLOW.jyzt
  is '交易状态（0：失败，1：成功，2：未知）';
comment on column URP.EHCPAY_TRANSFLOW.zhye
  is '账户余额（单位：元）';
comment on column URP.EHCPAY_TRANSFLOW.ywlx
  is '业务类型（在线支付、交易退款）';
comment on column URP.EHCPAY_TRANSFLOW.jybz
  is '交易备注(原交易订单号)';
comment on column URP.EHCPAY_TRANSFLOW.jlcjsj
  is '记录创建时间';
comment on column URP.EHCPAY_TRANSFLOW.dzrq
  is '对账日期';
comment on column URP.EHCPAY_TRANSFLOW.dzbs
  is '对账标识（1：已对账，0：未对账）';
comment on column URP.EHCPAY_TRANSFLOW.crkbs
  is '重入库标识（1：重入库，0：原始入库）';
comment on column URP.EHCPAY_TRANSFLOW.jgbm
  is '机构编码';
comment on column URP.EHCPAY_TRANSFLOW.sfsc
  is '删除状态（1：删除，0：未删除）';
comment on column URP.EHCPAY_TRANSFLOW.bly1
  is '保留域1';
comment on column URP.EHCPAY_TRANSFLOW.bly2
  is '保留域2';
comment on column URP.EHCPAY_TRANSFLOW.bly3
  is '保留域3';
comment on column URP.EHCPAY_TRANSFLOW.dzbh
  is '对账编号';
create index URP.DQ_SC_DZS_JGBM_DDH_QDZH on URP.EHCPAY_TRANSFLOW (SHDDH, DZRQ, SFSC, DZBS, JGBM, QDZHID);
alter table URP.EHCPAY_TRANSFLOW
  add constraint EHCPAY_TRANSFLOW_PRIMARYKEY primary key (LSID);

prompt
prompt Creating table E_EQUIPMENT_FACTORY
prompt ==================================
prompt
create table URP.E_EQUIPMENT_FACTORY
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
;
comment on table URP.E_EQUIPMENT_FACTORY
  is '设备信息';
comment on column URP.E_EQUIPMENT_FACTORY.sbcsid
  is '设备厂商ID，主键';
comment on column URP.E_EQUIPMENT_FACTORY.sbcsbm
  is '设备厂商编码，用于区分设备厂商';
comment on column URP.E_EQUIPMENT_FACTORY.sbcsmc
  is '设备厂商名称';
comment on column URP.E_EQUIPMENT_FACTORY.dzwjgs
  is '对账文件格式';
comment on column URP.E_EQUIPMENT_FACTORY.dzzq
  is '对账周期';
comment on column URP.E_EQUIPMENT_FACTORY.rqsj
  is '日切时间';
comment on column URP.E_EQUIPMENT_FACTORY.cszt
  is '厂商状态（1：正常，0：禁用）';
comment on column URP.E_EQUIPMENT_FACTORY.sfzddz
  is '是否自动对账（0：否，1是）';
comment on column URP.E_EQUIPMENT_FACTORY.hqdzwjfs
  is '获取对账文件方式（ftp、sftp、http、https、socket、webservice、视图）';
comment on column URP.E_EQUIPMENT_FACTORY.dzwjxzdz
  is '对账文件下载地址（FTP：IP，接口：url，视图：数据库访问连接串）';
comment on column URP.E_EQUIPMENT_FACTORY.ftpzh
  is 'ftp账号、视图数据库用户名';
comment on column URP.E_EQUIPMENT_FACTORY.ftpmm
  is 'ftp密码、视图数据库密码';
comment on column URP.E_EQUIPMENT_FACTORY.ftpdk
  is 'ftp端口、socket端口';
comment on column URP.E_EQUIPMENT_FACTORY.qmsf
  is '签名算法';
comment on column URP.E_EQUIPMENT_FACTORY.shzs
  is '商户证书（含路径和文件名）';
comment on column URP.E_EQUIPMENT_FACTORY.ggzs
  is '公共证书（含路径和文件名）';
comment on column URP.E_EQUIPMENT_FACTORY.dzwjxzml
  is '对账文件下载目录(ftp、sftp，静态的写死，动态的用{}括起来)';
comment on column URP.E_EQUIPMENT_FACTORY.dzwjmc
  is '对账文件名称（静态的写死，动态的用{}括起来）';
comment on column URP.E_EQUIPMENT_FACTORY.dzwjbdbclj
  is '对账文件本地保存路径（静态的写死，动态的用{}括起来）';
comment on column URP.E_EQUIPMENT_FACTORY.jgbm
  is '机构编码';
comment on column URP.E_EQUIPMENT_FACTORY.dzwjxfsj
  is '对账文件下发时间';
comment on column URP.E_EQUIPMENT_FACTORY.jlcjsj
  is '记录创建时间';
comment on column URP.E_EQUIPMENT_FACTORY.cjr
  is '创建人';
comment on column URP.E_EQUIPMENT_FACTORY.zhxgsj
  is '最后修改日期';
comment on column URP.E_EQUIPMENT_FACTORY.zhxgr
  is '最后修改人';
comment on column URP.E_EQUIPMENT_FACTORY.jkm
  is '接口/方法名（如webservice）';
comment on column URP.E_EQUIPMENT_FACTORY.jkcs
  is '接口参数(调用http、htps、socket、webservice接口所需的参数，静态的写死，动态的用{}括起来)';
comment on column URP.E_EQUIPMENT_FACTORY.zhqdfs
  is '结算账户确定方式（1：商户号，2：商户号+终端号，3：结算账户账号）';
comment on column URP.E_EQUIPMENT_FACTORY.stmc
  is '视图名称';
comment on column URP.E_EQUIPMENT_FACTORY.sjklx
  is '数据库类型（oracle、MySQL等）';
comment on column URP.E_EQUIPMENT_FACTORY.bz
  is '备注';
comment on column URP.E_EQUIPMENT_FACTORY.bly
  is '保留域';
alter table URP.E_EQUIPMENT_FACTORY
  add constraint E_EQUIPMENT_PRIMARYKEY primary key (SBCSID);

prompt
prompt Creating table E_EQUIPMENT_INFO
prompt ===============================
prompt
create table URP.E_EQUIPMENT_INFO
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
;
comment on column URP.E_EQUIPMENT_INFO.sbid
  is '设备主键ID';
comment on column URP.E_EQUIPMENT_INFO.sbbm
  is '设备编码';
comment on column URP.E_EQUIPMENT_INFO.sbmc
  is '设备名称';
comment on column URP.E_EQUIPMENT_INFO.sbxlh
  is '设备序列号';
comment on column URP.E_EQUIPMENT_INFO.sbcsid
  is '所属设备厂商主键ID';
comment on column URP.E_EQUIPMENT_INFO.sbzt
  is '设备状态(1:正常，0:禁用)';
comment on column URP.E_EQUIPMENT_INFO.jgbm
  is '机构有编码';
comment on column URP.E_EQUIPMENT_INFO.jlcjsj
  is '记录创建时间';
comment on column URP.E_EQUIPMENT_INFO.cjr
  is '创建人';
comment on column URP.E_EQUIPMENT_INFO.zhxgsj
  is '最后修改时间';
comment on column URP.E_EQUIPMENT_INFO.zhxgr
  is '最后修改人';
comment on column URP.E_EQUIPMENT_INFO.bz
  is '备注';
comment on column URP.E_EQUIPMENT_INFO.sbcsbm
  is '设备厂商编码';
alter table URP.E_EQUIPMENT_INFO
  add primary key (SBID);

prompt
prompt Creating table E_EQUIPMENT_RECONRESULT
prompt ======================================
prompt
create table URP.E_EQUIPMENT_RECONRESULT
(
  sbdzjgid   VARCHAR2(32) default sys_guid() not null,
  sbcsid     VARCHAR2(32) not null,
  sbid       VARCHAR2(32),
  dzbs       VARCHAR2(2) not null,
  dzjg       VARCHAR2(2) not null,
  dzjgms     VARCHAR2(100),
  ycjyzbs    NUMBER(8) default 0,
  sbjyzbs    NUMBER(8) default 0,
  sbjyzje    NUMBER(12,2) default 0.00,
  sbycjyzbs  NUMBER(8) default 0,
  sbycjyzje  NUMBER(12,2) default 0.00,
  hisjyzje   NUMBER(12,2) default 0.00,
  hisjyzbs   NUMBER(8) default 0,
  hisycjyzje NUMBER(12,2) default 0.00,
  hisycjyzbs NUMBER(8) default 0,
  jyhztj     VARCHAR2(1000),
  dzrq       DATE default sysdate not null,
  jlcjsj     TIMESTAMP(6) default sysdate not null,
  dzfs       VARCHAR2(2) default 0 not null,
  dzfqr      VARCHAR2(20),
  sfsc       VARCHAR2(100) default 0 not null,
  bz         VARCHAR2(2),
  bly1       VARCHAR2(50),
  bly2       VARCHAR2(50),
  bly3       VARCHAR2(50)
)
;
comment on table URP.E_EQUIPMENT_RECONRESULT
  is '设备对账结果表';
comment on column URP.E_EQUIPMENT_RECONRESULT.sbdzjgid
  is '厂商设备对账结果主键ID，用于区分每个厂商下每个设备的对账结果';
comment on column URP.E_EQUIPMENT_RECONRESULT.sbcsid
  is '设备厂商主键id';
comment on column URP.E_EQUIPMENT_RECONRESULT.sbid
  is '设备主键ID';
comment on column URP.E_EQUIPMENT_RECONRESULT.dzbs
  is '对账标识（1:已完成、0:未完成、2未对账）';
comment on column URP.E_EQUIPMENT_RECONRESULT.dzjg
  is '对账结果（1账平、0账不平、2未对账）';
comment on column URP.E_EQUIPMENT_RECONRESULT.dzjgms
  is '对账结果描述';
comment on column URP.E_EQUIPMENT_RECONRESULT.ycjyzbs
  is '本次对账异常交易总笔数';
comment on column URP.E_EQUIPMENT_RECONRESULT.sbjyzbs
  is '该设备交易总笔数';
comment on column URP.E_EQUIPMENT_RECONRESULT.sbjyzje
  is '该设备交易总金额';
comment on column URP.E_EQUIPMENT_RECONRESULT.sbycjyzbs
  is '该设备异常交易总笔数';
comment on column URP.E_EQUIPMENT_RECONRESULT.sbycjyzje
  is '该设备异常交易总金额';
comment on column URP.E_EQUIPMENT_RECONRESULT.hisjyzje
  is '本次对账对应该设备的His交易总金额（含异常交易）';
comment on column URP.E_EQUIPMENT_RECONRESULT.hisjyzbs
  is '本次对账对应该设备的His交易总笔数（含异常交易）';
comment on column URP.E_EQUIPMENT_RECONRESULT.hisycjyzje
  is '本次对账对应该设备的His异常交易总金额（His交易总金额-正常交易总金额）';
comment on column URP.E_EQUIPMENT_RECONRESULT.hisycjyzbs
  is '本次对账对应该设备的His异常交易总笔数';
comment on column URP.E_EQUIPMENT_RECONRESULT.jyhztj
  is '交易汇总信息分类统计（统计设备上的每个渠道，设备/His交易总笔数、总金额、异常笔数、异常金额，以“|”分割）';
comment on column URP.E_EQUIPMENT_RECONRESULT.dzrq
  is '对账日期';
comment on column URP.E_EQUIPMENT_RECONRESULT.jlcjsj
  is '对账完成时间/记录创建时间';
comment on column URP.E_EQUIPMENT_RECONRESULT.dzfs
  is '对账方式（0：自动对账、1：手动对账、2：手动 重对账）';
comment on column URP.E_EQUIPMENT_RECONRESULT.dzfqr
  is '对账发起人';
comment on column URP.E_EQUIPMENT_RECONRESULT.sfsc
  is '是否删除（1：是，0：否）';
comment on column URP.E_EQUIPMENT_RECONRESULT.bz
  is '备注';
comment on column URP.E_EQUIPMENT_RECONRESULT.bly1
  is '保留域1';
comment on column URP.E_EQUIPMENT_RECONRESULT.bly2
  is '保留域2';
comment on column URP.E_EQUIPMENT_RECONRESULT.bly3
  is '保留域3';
alter table URP.E_EQUIPMENT_RECONRESULT
  add constraint EQUIPMENTCONRESULT_PRIMARYKEY primary key (SBDZJGID);

prompt
prompt Creating table E_EQUIPMENT_TRANSFLOW
prompt ====================================
prompt
create table URP.E_EQUIPMENT_TRANSFLOW
(
  ynsblsid VARCHAR2(32) default sys_guid() not null,
  yhrybh   VARCHAR2(30) not null,
  brjzkh   VARCHAR2(30),
  blh      VARCHAR2(30),
  brxm     VARCHAR2(100) not null,
  fpbh     VARCHAR2(50),
  jyqdbs   VARCHAR2(20) not null,
  ywlx     VARCHAR2(10) not null,
  jyje     NUMBER(12,2) not null,
  khh      VARCHAR2(30),
  khzh     VARCHAR2(30),
  jylsh    VARCHAR2(50),
  jyckh    VARCHAR2(50),
  ddbh     VARCHAR2(50) not null,
  yjyh     VARCHAR2(50),
  ybfdje   NUMBER(12,2),
  grzhzfje NUMBER(12,2),
  xjzfje   NUMBER(12,2),
  yljmje   NUMBER(12,2),
  ylbzje   NUMBER(12,2),
  zdbh     VARCHAR2(32),
  brjzkye  NUMBER(12,2),
  czm      VARCHAR2(20),
  jysj     VARCHAR2(20) not null,
  jyylx    VARCHAR2(10),
  jyshbh   VARCHAR2(50),
  jyzdbh   VARCHAR2(50),
  jysbbs   VARCHAR2(50),
  jyrzzh   VARCHAR2(50),
  yhlsh    VARCHAR2(30),
  yhckh    VARCHAR2(50),
  pch      VARCHAR2(10),
  jyzt     VARCHAR2(2) not null,
  jgbm     VARCHAR2(15) not null,
  zdjybs   VARCHAR2(2),
  mzzybs   VARCHAR2(2),
  sbcsid   VARCHAR2(32) not null,
  sfsc     VARCHAR2(2) default 0 not null,
  jlcjsj   TIMESTAMP(6) not null,
  dzrq     DATE not null,
  dzbs     VARCHAR2(2) default 0 not null,
  crkbs    VARCHAR2(2) default 0 not null,
  dzbh     VARCHAR2(50) not null,
  bz       VARCHAR2(100),
  bly1     VARCHAR2(50),
  bly2     VARCHAR2(50),
  bly3     VARCHAR2(50)
)
;
comment on table URP.E_EQUIPMENT_TRANSFLOW
  is '设备对账流水表';
comment on column URP.E_EQUIPMENT_TRANSFLOW.ynsblsid
  is '设备对账流水主键ID';
comment on column URP.E_EQUIPMENT_TRANSFLOW.yhrybh
  is '医护人员（操作员）编号';
comment on column URP.E_EQUIPMENT_TRANSFLOW.brjzkh
  is '病人就诊卡号';
comment on column URP.E_EQUIPMENT_TRANSFLOW.blh
  is '病人病历号';
comment on column URP.E_EQUIPMENT_TRANSFLOW.brxm
  is '病人姓名';
comment on column URP.E_EQUIPMENT_TRANSFLOW.fpbh
  is '发票编号';
comment on column URP.E_EQUIPMENT_TRANSFLOW.jyqdbs
  is '交易渠道标识（微信、支付宝、医保等）';
comment on column URP.E_EQUIPMENT_TRANSFLOW.ywlx
  is '原交易流水号：交易为后续类交易时有值';
comment on column URP.E_EQUIPMENT_TRANSFLOW.jyje
  is '交易总金额';
comment on column URP.E_EQUIPMENT_TRANSFLOW.khh
  is '交易所用银行卡开户行';
comment on column URP.E_EQUIPMENT_TRANSFLOW.khzh
  is '交易所用银行卡账号';
comment on column URP.E_EQUIPMENT_TRANSFLOW.jylsh
  is '交易流水号（作为对账唯一标识时不能为空）';
comment on column URP.E_EQUIPMENT_TRANSFLOW.jyckh
  is '交易参考号（作为对账唯一标识时不能为空）';
comment on column URP.E_EQUIPMENT_TRANSFLOW.ddbh
  is '订单编号（默认作为对账唯一标识）';
comment on column URP.E_EQUIPMENT_TRANSFLOW.yjyh
  is '原交易订单号/流水号（反向交易时不为空）';
comment on column URP.E_EQUIPMENT_TRANSFLOW.ybfdje
  is '医保负担/报销总金额（医保支付时赋值）';
comment on column URP.E_EQUIPMENT_TRANSFLOW.grzhzfje
  is '个人账户支付金额（医保支付时赋值）';
comment on column URP.E_EQUIPMENT_TRANSFLOW.xjzfje
  is '现金支付金额（医保支付时赋值）';
comment on column URP.E_EQUIPMENT_TRANSFLOW.yljmje
  is '医疗减免金额（医保支付时赋值）';
comment on column URP.E_EQUIPMENT_TRANSFLOW.ylbzje
  is '医疗补助金额（医保支付时赋值）';
comment on column URP.E_EQUIPMENT_TRANSFLOW.zdbh
  is '账单编号';
comment on column URP.E_EQUIPMENT_TRANSFLOW.brjzkye
  is '病人就诊卡余额';
comment on column URP.E_EQUIPMENT_TRANSFLOW.czm
  is '操作码';
comment on column URP.E_EQUIPMENT_TRANSFLOW.jysj
  is '交易时间';
comment on column URP.E_EQUIPMENT_TRANSFLOW.jyylx
  is '交易源类型（1：窗口、2：自助终端、3：诊间POS）';
comment on column URP.E_EQUIPMENT_TRANSFLOW.jyshbh
  is '交易商户编号(需用此确定结算账户时不能为空)';
comment on column URP.E_EQUIPMENT_TRANSFLOW.jyzdbh
  is '交易终端编号';
comment on column URP.E_EQUIPMENT_TRANSFLOW.jysbbs
  is '交易设备标识（用以判断哪台设备：如设备编号/设备序列号）';
comment on column URP.E_EQUIPMENT_TRANSFLOW.jyrzzh
  is '交易入账账号（结算账户号：需用此确定结算账户时不能为空）';
comment on column URP.E_EQUIPMENT_TRANSFLOW.yhlsh
  is '银行流水号';
comment on column URP.E_EQUIPMENT_TRANSFLOW.yhckh
  is '银行参考号';
comment on column URP.E_EQUIPMENT_TRANSFLOW.pch
  is '批次号';
comment on column URP.E_EQUIPMENT_TRANSFLOW.jyzt
  is '交易状态（0：失败，1：成功，2：未知）';
comment on column URP.E_EQUIPMENT_TRANSFLOW.jgbm
  is '所属机构（医院）编码';
comment on column URP.E_EQUIPMENT_TRANSFLOW.zdjybs
  is '是否自助终端交易标识(1:是,0:否)';
comment on column URP.E_EQUIPMENT_TRANSFLOW.mzzybs
  is '门诊住院标识（1：门诊，2：住院）';
comment on column URP.E_EQUIPMENT_TRANSFLOW.sbcsid
  is '设备厂商主键ID';
comment on column URP.E_EQUIPMENT_TRANSFLOW.sfsc
  is '删除状态（1：删除，0：未删除）';
comment on column URP.E_EQUIPMENT_TRANSFLOW.jlcjsj
  is '记录创建时间';
comment on column URP.E_EQUIPMENT_TRANSFLOW.dzrq
  is '对账日期';
comment on column URP.E_EQUIPMENT_TRANSFLOW.dzbs
  is '对账标识（1：已对账，0：未对账）';
comment on column URP.E_EQUIPMENT_TRANSFLOW.crkbs
  is '重入库标识（1：重入库，0：原始入库）';
comment on column URP.E_EQUIPMENT_TRANSFLOW.dzbh
  is '对账编号';
comment on column URP.E_EQUIPMENT_TRANSFLOW.bz
  is '备注';
comment on column URP.E_EQUIPMENT_TRANSFLOW.bly1
  is '保留域1';
comment on column URP.E_EQUIPMENT_TRANSFLOW.bly2
  is '保留域2';
comment on column URP.E_EQUIPMENT_TRANSFLOW.bly3
  is '保留域3';
alter table URP.E_EQUIPMENT_TRANSFLOW
  add primary key (YNSBLSID);

prompt
prompt Creating table E_FACTORY_RECONRESULT
prompt ====================================
prompt
create table URP.E_FACTORY_RECONRESULT
(
  sbcsdzjgid  VARCHAR2(32) default sys_guid() not null,
  sbcsid      VARCHAR2(32) not null,
  dzbs        VARCHAR2(2) not null,
  dzjg        VARCHAR2(2) not null,
  dzjgms      VARCHAR2(100),
  ycjyzbs     NUMBER(8) default 0,
  sbcsjyzbs   NUMBER(8) default 0,
  sbcsjyzje   NUMBER(12,2) default 0.00,
  sbcsycjyzbs NUMBER(8) default 0,
  sbcsycjyzje NUMBER(12,2) default 0.00,
  hisjyzje    NUMBER(12,2) default 0.00,
  hisjyzbs    NUMBER(8) default 0,
  hisycjyzje  NUMBER(12,2) default 0.00,
  hisycjyzbs  NUMBER(8) default 0,
  ycsbzs      NUMBER(8) default 0,
  zcsbzs      NUMBER(8) default 0,
  jyhztj      VARCHAR2(1000),
  dzrq        DATE default sysdate not null,
  jlcjsj      TIMESTAMP(6) default sysdate not null,
  dzfs        VARCHAR2(2) default 0 not null,
  dzfqr       VARCHAR2(20),
  sfsc        VARCHAR2(100) default 0 not null,
  bz          VARCHAR2(2),
  bly1        VARCHAR2(50),
  bly2        VARCHAR2(50),
  bly3        VARCHAR2(50)
)
;
comment on table URP.E_FACTORY_RECONRESULT
  is '设备厂商对账结果表';
comment on column URP.E_FACTORY_RECONRESULT.sbcsdzjgid
  is '厂商对账结果主键ID，用于区分每个厂商的对账结果';
comment on column URP.E_FACTORY_RECONRESULT.sbcsid
  is '设备厂商主键id';
comment on column URP.E_FACTORY_RECONRESULT.dzbs
  is '对账标识（1:已完成、0:未完成、2未对账）';
comment on column URP.E_FACTORY_RECONRESULT.dzjg
  is '对账结果（1账平、0账不平、2未对账）';
comment on column URP.E_FACTORY_RECONRESULT.dzjgms
  is '对账结果描述';
comment on column URP.E_FACTORY_RECONRESULT.ycjyzbs
  is '本次对账异常交易总笔数';
comment on column URP.E_FACTORY_RECONRESULT.sbcsjyzbs
  is '该设备厂商交易总笔数';
comment on column URP.E_FACTORY_RECONRESULT.sbcsjyzje
  is '该设备厂商交易总金额';
comment on column URP.E_FACTORY_RECONRESULT.sbcsycjyzbs
  is '该设备厂商异常交易总笔数';
comment on column URP.E_FACTORY_RECONRESULT.sbcsycjyzje
  is '该设备厂商异常交易总金额';
comment on column URP.E_FACTORY_RECONRESULT.hisjyzje
  is '本次对账对应该设备的His交易总金额（含异常交易）';
comment on column URP.E_FACTORY_RECONRESULT.hisjyzbs
  is '本次对账对应该设备的His交易总笔数（含异常交易）';
comment on column URP.E_FACTORY_RECONRESULT.hisycjyzje
  is '本次对账对应该设备的His异常交易总金额（His交易总金额-正常交易总金额）';
comment on column URP.E_FACTORY_RECONRESULT.hisycjyzbs
  is '本次对账对应该设备的His异常交易总笔数';
comment on column URP.E_FACTORY_RECONRESULT.ycsbzs
  is '异常设备总数';
comment on column URP.E_FACTORY_RECONRESULT.zcsbzs
  is '正常设备总数';
comment on column URP.E_FACTORY_RECONRESULT.jyhztj
  is '交易汇总信息分类统计（统计每个厂商下所有设备，设备/His交易总笔数、总金额、异常笔数、异常金额，以“|”分割）';
comment on column URP.E_FACTORY_RECONRESULT.dzrq
  is '对账日期';
comment on column URP.E_FACTORY_RECONRESULT.jlcjsj
  is '对账完成时间/记录创建时间';
comment on column URP.E_FACTORY_RECONRESULT.dzfs
  is '对账方式（0：自动对账、1：手动对账、2：手动 重对账）';
comment on column URP.E_FACTORY_RECONRESULT.dzfqr
  is '对账发起人';
comment on column URP.E_FACTORY_RECONRESULT.sfsc
  is '是否删除（1：是，0：否）';
comment on column URP.E_FACTORY_RECONRESULT.bz
  is '备注';
comment on column URP.E_FACTORY_RECONRESULT.bly1
  is '保留域1';
comment on column URP.E_FACTORY_RECONRESULT.bly2
  is '保留域2';
comment on column URP.E_FACTORY_RECONRESULT.bly3
  is '保留域3';
alter table URP.E_FACTORY_RECONRESULT
  add primary key (SBCSDZJGID);

prompt
prompt Creating table E_HIS_TRANSFLOW
prompt ==============================
prompt
create table URP.E_HIS_TRANSFLOW
(
  ynhislsid VARCHAR2(32) default sys_guid() not null,
  sbcsid    VARCHAR2(32),
  yhrybh    VARCHAR2(30),
  brjzkh    VARCHAR2(30),
  brxm      VARCHAR2(100) not null,
  fpbh      VARCHAR2(50),
  jyqdbs    VARCHAR2(20) not null,
  ywlx      VARCHAR2(10),
  jyje      NUMBER(12,2) not null,
  khh       VARCHAR2(30),
  khzh      VARCHAR2(30),
  jylsh     VARCHAR2(30),
  jyckh     VARCHAR2(50),
  ddbh      VARCHAR2(50),
  zdbh      VARCHAR2(32),
  brjzkye   NUMBER(12,2),
  czm       VARCHAR2(20),
  jysj      VARCHAR2(25),
  jyylx     VARCHAR2(10),
  jyshbh    VARCHAR2(20),
  jyzdbh    VARCHAR2(30),
  jysbbs    VARCHAR2(32),
  jyrzzh    VARCHAR2(50),
  yhlsh     VARCHAR2(30),
  yhckh     VARCHAR2(50),
  pch       VARCHAR2(10),
  sfsc      VARCHAR2(2) default 0 not null,
  jlcjsj    TIMESTAMP(6) default sysdate not null,
  dzrq      DATE default sysdate not null,
  dzbs      VARCHAR2(2) default 0 not null,
  crkbs     VARCHAR2(2) default 0 not null,
  jyzt      VARCHAR2(2) default 1 not null,
  jgbm      VARCHAR2(15) not null,
  blh       VARCHAR2(30),
  yjyh      VARCHAR2(30),
  ybfdje    NUMBER(12,2),
  grzhzfje  NUMBER(12,2),
  xjzfje    NUMBER(12,2),
  yljmje    NUMBER(12,2),
  ylbzje    NUMBER(12,2),
  flag      VARCHAR2(2),
  mzzybs    VARCHAR2(2),
  dzbh      VARCHAR2(50) not null,
  bz        VARCHAR2(100),
  bly1      VARCHAR2(50),
  bly2      VARCHAR2(50),
  bly3      VARCHAR2(50),
  yhryxm    VARCHAR2(50),
  sfzhm     VARCHAR2(18),
  bcjywybs  VARCHAR2(30) not null
)
;
comment on table URP.E_HIS_TRANSFLOW
  is '设备HIS 流水表';
comment on column URP.E_HIS_TRANSFLOW.ynhislsid
  is '院内对账His流水Id, 主键';
comment on column URP.E_HIS_TRANSFLOW.sbcsid
  is '设备厂商主键id, 对应设备厂商管理表';
comment on column URP.E_HIS_TRANSFLOW.yhrybh
  is '医护人员编号';
comment on column URP.E_HIS_TRANSFLOW.brjzkh
  is '病人就诊卡号';
comment on column URP.E_HIS_TRANSFLOW.brxm
  is '病人姓名';
comment on column URP.E_HIS_TRANSFLOW.fpbh
  is '发票编号';
comment on column URP.E_HIS_TRANSFLOW.jyqdbs
  is '交易渠道标识（微信、支付宝、医保）';
comment on column URP.E_HIS_TRANSFLOW.ywlx
  is '业务类型';
comment on column URP.E_HIS_TRANSFLOW.jyje
  is '交易金额';
comment on column URP.E_HIS_TRANSFLOW.khh
  is '交易账户开户行';
comment on column URP.E_HIS_TRANSFLOW.khzh
  is '交易账户开户账号';
comment on column URP.E_HIS_TRANSFLOW.jylsh
  is '交易流水号';
comment on column URP.E_HIS_TRANSFLOW.jyckh
  is '交易参考号';
comment on column URP.E_HIS_TRANSFLOW.ddbh
  is '订单编号';
comment on column URP.E_HIS_TRANSFLOW.zdbh
  is '账单编号';
comment on column URP.E_HIS_TRANSFLOW.brjzkye
  is '病人就诊卡余额';
comment on column URP.E_HIS_TRANSFLOW.czm
  is '操作码';
comment on column URP.E_HIS_TRANSFLOW.jysj
  is '交易时间';
comment on column URP.E_HIS_TRANSFLOW.jyylx
  is '交易源类型（自助、窗口、诊间）';
comment on column URP.E_HIS_TRANSFLOW.jyshbh
  is '交易商户编号';
comment on column URP.E_HIS_TRANSFLOW.jyzdbh
  is '交易终端编号（终端号或医院终端标识）';
comment on column URP.E_HIS_TRANSFLOW.jysbbs
  is '交易设备标识（用以判断哪台设备：如设备编号/设备序列号）';
comment on column URP.E_HIS_TRANSFLOW.jyrzzh
  is '交易入账账号';
comment on column URP.E_HIS_TRANSFLOW.yhlsh
  is '银行流水号';
comment on column URP.E_HIS_TRANSFLOW.yhckh
  is '银行参考号';
comment on column URP.E_HIS_TRANSFLOW.pch
  is '批次号';
comment on column URP.E_HIS_TRANSFLOW.sfsc
  is '删除状态（1：删除，0：未删除）';
comment on column URP.E_HIS_TRANSFLOW.jlcjsj
  is '记录创建时间';
comment on column URP.E_HIS_TRANSFLOW.dzrq
  is '对账日期';
comment on column URP.E_HIS_TRANSFLOW.dzbs
  is '对账标识（1：已对账，0：未对账）';
comment on column URP.E_HIS_TRANSFLOW.crkbs
  is '重入库标识（1：重入库，0：原始入库）';
comment on column URP.E_HIS_TRANSFLOW.jyzt
  is '交易状态（0：失败，1：成功，2：未知）';
comment on column URP.E_HIS_TRANSFLOW.jgbm
  is '机构编码';
comment on column URP.E_HIS_TRANSFLOW.blh
  is '病人病历号';
comment on column URP.E_HIS_TRANSFLOW.yjyh
  is '原交易订单号/流水号（反向交易时不为空）';
comment on column URP.E_HIS_TRANSFLOW.ybfdje
  is '医保负担/报销总金额（医保支付时赋值）';
comment on column URP.E_HIS_TRANSFLOW.grzhzfje
  is '个人账户支付金额（医保支付时赋值）';
comment on column URP.E_HIS_TRANSFLOW.xjzfje
  is '现金支付金额（医保支付时赋值）';
comment on column URP.E_HIS_TRANSFLOW.yljmje
  is '医疗减免金额（医保支付时赋值）';
comment on column URP.E_HIS_TRANSFLOW.ylbzje
  is '医疗补助金额（医保支付时赋值）';
comment on column URP.E_HIS_TRANSFLOW.flag
  is '是否自助（1：是，0：否）';
comment on column URP.E_HIS_TRANSFLOW.mzzybs
  is '门诊住院标识（1：门诊，2：住院）';
comment on column URP.E_HIS_TRANSFLOW.dzbh
  is '对账编号';
comment on column URP.E_HIS_TRANSFLOW.bz
  is '备注';
comment on column URP.E_HIS_TRANSFLOW.bly1
  is '保留域1(过期退费标志 0：非过期，1：过期退费)';
comment on column URP.E_HIS_TRANSFLOW.bly2
  is '保留域2';
comment on column URP.E_HIS_TRANSFLOW.bly3
  is '保留域3';
comment on column URP.E_HIS_TRANSFLOW.yhryxm
  is '医护人员（操作员）姓名';
comment on column URP.E_HIS_TRANSFLOW.sfzhm
  is '患者身份证号码';
comment on column URP.E_HIS_TRANSFLOW.bcjywybs
  is '本次就医唯一标识（可为就诊卡号或身份证号或医保卡号等，必须能唯一标识本次就医）';
alter table URP.E_HIS_TRANSFLOW
  add constraint E_HISTRANSFLOW_PRIMARYKEY primary key (YNHISLSID);

prompt
prompt Creating table E_REALTIME_MONITOR
prompt =================================
prompt
create table URP.E_REALTIME_MONITOR
(
  ssjkid      VARCHAR2(32) default sys_guid() not null,
  ynjksblsid  VARCHAR2(32),
  ynjkhislsid VARCHAR2(32),
  ycdl        VARCHAR2(10),
  ycxl        VARCHAR2(10),
  ycnr        VARCHAR2(256),
  jlcjsj      TIMESTAMP(6) default sysdate not null,
  cljg        VARCHAR2(2) default 0,
  clwcsj      TIMESTAMP(6),
  ycclbs      VARCHAR2(2) default 0,
  ycclfjmc    VARCHAR2(50),
  ycclfjlj    VARCHAR2(200),
  ycclms      VARCHAR2(100),
  ycclsj      TIMESTAMP(6),
  ycclr       VARCHAR2(20),
  sfsc        VARCHAR2(2) default 0 not null,
  jgbm        VARCHAR2(15) not null,
  bz          VARCHAR2(100),
  bly         VARCHAR2(50)
)
;
comment on table URP.E_REALTIME_MONITOR
  is '设备实时监控表';
comment on column URP.E_REALTIME_MONITOR.ssjkid
  is '实时监控id, 主键';
comment on column URP.E_REALTIME_MONITOR.ynjksblsid
  is '院内对账监控--设备对账流水主键ID';
comment on column URP.E_REALTIME_MONITOR.ynjkhislsid
  is '院内对账监控--His对账流水表主键ID';
comment on column URP.E_REALTIME_MONITOR.ycdl
  is '异常大类';
comment on column URP.E_REALTIME_MONITOR.ycxl
  is '异常小类';
comment on column URP.E_REALTIME_MONITOR.ycnr
  is '异常内容';
comment on column URP.E_REALTIME_MONITOR.jlcjsj
  is '记录创建时间';
comment on column URP.E_REALTIME_MONITOR.cljg
  is '处理结果(0：未处理，1：处理成功，2：处理失败)';
comment on column URP.E_REALTIME_MONITOR.clwcsj
  is '处理完成时间';
comment on column URP.E_REALTIME_MONITOR.ycclbs
  is '异常处理标识（1：已处理，0：未处理）';
comment on column URP.E_REALTIME_MONITOR.ycclfjmc
  is '异常处理附件名称';
comment on column URP.E_REALTIME_MONITOR.ycclfjlj
  is '异常处理附件保存路径';
comment on column URP.E_REALTIME_MONITOR.ycclms
  is '异常处理描述';
comment on column URP.E_REALTIME_MONITOR.ycclsj
  is '异常处理时间';
comment on column URP.E_REALTIME_MONITOR.ycclr
  is '异常处理人';
comment on column URP.E_REALTIME_MONITOR.sfsc
  is '是否删除（0：未删除，1：已删除）';
comment on column URP.E_REALTIME_MONITOR.jgbm
  is '机构编码';
comment on column URP.E_REALTIME_MONITOR.bz
  is '备注（失败次数）';
comment on column URP.E_REALTIME_MONITOR.bly
  is '保留域';
alter table URP.E_REALTIME_MONITOR
  add constraint E_REALTIMEMONITOR_PRIMARYKEY primary key (SSJKID);

prompt
prompt Creating table E_RECONFILE_INFO
prompt ===============================
prompt
create table URP.E_RECONFILE_INFO
(
  dzwjid VARCHAR2(32) default sys_guid() not null,
  sbcsid VARCHAR2(32) not null,
  wjmc   VARCHAR2(50) not null,
  wjlj   VARCHAR2(100) not null,
  czsj   TIMESTAMP(6) default sysdate not null,
  czjg   VARCHAR2(2) not null,
  czjgms VARCHAR2(100),
  dzrq   DATE not null,
  rkzt   VARCHAR2(2) default 0 not null,
  bz     VARCHAR2(100),
  sfsc   VARCHAR2(2) default 0 not null,
  bly1   VARCHAR2(50),
  bly2   VARCHAR2(50),
  bly3   VARCHAR2(50)
)
;
comment on table URP.E_RECONFILE_INFO
  is '设备对账文件 管理表';
comment on column URP.E_RECONFILE_INFO.dzwjid
  is '对账文件ID，区分文件';
comment on column URP.E_RECONFILE_INFO.sbcsid
  is '设备厂商主键id';
comment on column URP.E_RECONFILE_INFO.wjmc
  is '对账文件名称';
comment on column URP.E_RECONFILE_INFO.wjlj
  is '对账文件下载后存放路径';
comment on column URP.E_RECONFILE_INFO.czsj
  is '操作时间(对账文件下载/上传时间)';
comment on column URP.E_RECONFILE_INFO.czjg
  is '操作结果(对账文件下载/上传结果(1：成功，0：失败))';
comment on column URP.E_RECONFILE_INFO.czjgms
  is '操作结果描述(对账文件下载/上传结果描述)';
comment on column URP.E_RECONFILE_INFO.dzrq
  is '对账日期（手工对账时可指定）';
comment on column URP.E_RECONFILE_INFO.rkzt
  is '对账文件入库状态（0：未入库，1：已入库，2：入库失败）';
comment on column URP.E_RECONFILE_INFO.bz
  is '备注';
comment on column URP.E_RECONFILE_INFO.sfsc
  is '删除状态（1：删除，0：未删除）';
comment on column URP.E_RECONFILE_INFO.bly1
  is '保留域1';
comment on column URP.E_RECONFILE_INFO.bly2
  is '保留域2';
comment on column URP.E_RECONFILE_INFO.bly3
  is '保留域3';
alter table URP.E_RECONFILE_INFO
  add constraint E_RECONFILEINFO_PRIMARYKEY primary key (DZWJID);

prompt
prompt Creating table E_RECONFILE_REDOWNLOAD
prompt =====================================
prompt
create table URP.E_RECONFILE_REDOWNLOAD
(
  dzwjcxzid VARCHAR2(32) default sys_guid() not null,
  sbcsid    VARCHAR2(32) not null,
  dzrq      DATE not null,
  xzjg      VARCHAR2(2) not null,
  sbyy      VARCHAR2(50),
  xzcs      NUMBER default 0 not null,
  jlcjsj    TIMESTAMP(6) not null,
  zhxzsj    TIMESTAMP(6) not null,
  jgbm      VARCHAR2(15) not null,
  bz        VARCHAR2(100)
)
;
comment on table URP.E_RECONFILE_REDOWNLOAD
  is '对账文件重下载表';
comment on column URP.E_RECONFILE_REDOWNLOAD.dzwjcxzid
  is '对账文件重下载ID';
comment on column URP.E_RECONFILE_REDOWNLOAD.sbcsid
  is '设备厂商主键id';
comment on column URP.E_RECONFILE_REDOWNLOAD.dzrq
  is '对账日期';
comment on column URP.E_RECONFILE_REDOWNLOAD.xzjg
  is '下载结果（0：失败，1：成功）';
comment on column URP.E_RECONFILE_REDOWNLOAD.sbyy
  is '下载失败原因';
comment on column URP.E_RECONFILE_REDOWNLOAD.xzcs
  is '下载次数';
comment on column URP.E_RECONFILE_REDOWNLOAD.jlcjsj
  is '记录创建时间';
comment on column URP.E_RECONFILE_REDOWNLOAD.zhxzsj
  is '最后下载时间';
comment on column URP.E_RECONFILE_REDOWNLOAD.jgbm
  is '机构编码';
comment on column URP.E_RECONFILE_REDOWNLOAD.bz
  is '备注';
alter table URP.E_RECONFILE_REDOWNLOAD
  add constraint ERECONFILEREDOWNLOADPRIMARYKEY primary key (DZWJCXZID);

prompt
prompt Creating table E_RECONRESULT_DETAIL
prompt ===================================
prompt
create table URP.E_RECONRESULT_DETAIL
(
  yndzjgmxid VARCHAR2(32) default sys_guid() not null,
  sbid       VARCHAR2(32) not null,
  sbcsid     VARCHAR2(32) not null,
  ynhislsid  VARCHAR2(32),
  ynsblsid   VARCHAR2(32),
  dzjg       VARCHAR2(2) default 1 not null,
  yclx       VARCHAR2(2),
  dzjgms     VARCHAR2(100),
  dzrq       DATE default sysdate not null,
  jlsj       TIMESTAMP(6) not null,
  qdzhid     VARCHAR2(32),
  ycclbs     VARCHAR2(2),
  ycclfjmc   VARCHAR2(50),
  ycclfjlj   VARCHAR2(100),
  ycclms     VARCHAR2(100),
  ycclsj     TIMESTAMP(6),
  ycclr      VARCHAR2(20),
  bz         VARCHAR2(100),
  sfsc       VARCHAR2(2) default 0 not null,
  bly1       VARCHAR2(50),
  bly2       VARCHAR2(50),
  bly3       VARCHAR2(50)
)
;
comment on table URP.E_RECONRESULT_DETAIL
  is '设备对账结果明细表';
comment on column URP.E_RECONRESULT_DETAIL.yndzjgmxid
  is '院内对账结果明细表主键Id';
comment on column URP.E_RECONRESULT_DETAIL.sbid
  is '设备主键Id';
comment on column URP.E_RECONRESULT_DETAIL.sbcsid
  is '设备厂商主键id';
comment on column URP.E_RECONRESULT_DETAIL.ynhislsid
  is '院内对账--HIS对账流水表主键ID';
comment on column URP.E_RECONRESULT_DETAIL.ynsblsid
  is '院内对账--设备对账流水主键 ID';
comment on column URP.E_RECONRESULT_DETAIL.dzjg
  is '对账结果（1:正常交易/0:异常交易）';
comment on column URP.E_RECONRESULT_DETAIL.yclx
  is '根据对账结果，为交易打上标识（0：正常交易，1：HIS有设备无，2：His无设备有，3：设备成功、HIS失败，4：HIS成功、设备失败，5：HIS一条记录、设备多条记录，6：HIS多条记录、设备一条记录，7：HIS与设备金额不一致）';
comment on column URP.E_RECONRESULT_DETAIL.dzjgms
  is '对账结果描述';
comment on column URP.E_RECONRESULT_DETAIL.dzrq
  is '对账日期';
comment on column URP.E_RECONRESULT_DETAIL.jlsj
  is '对账结果记录时间';
comment on column URP.E_RECONRESULT_DETAIL.qdzhid
  is '渠道账户表主键ID';
comment on column URP.E_RECONRESULT_DETAIL.ycclbs
  is '异常处理标识（1：已处理，0：未处理）';
comment on column URP.E_RECONRESULT_DETAIL.ycclfjmc
  is '异常处理附件名称';
comment on column URP.E_RECONRESULT_DETAIL.ycclfjlj
  is '异常处理附件保存路径';
comment on column URP.E_RECONRESULT_DETAIL.ycclms
  is '异常处理描述（备注）';
comment on column URP.E_RECONRESULT_DETAIL.ycclsj
  is '异常处理时间';
comment on column URP.E_RECONRESULT_DETAIL.ycclr
  is '异常处理人';
comment on column URP.E_RECONRESULT_DETAIL.bz
  is '备注';
comment on column URP.E_RECONRESULT_DETAIL.sfsc
  is '删除状态（1：删除，0：未删除）';
comment on column URP.E_RECONRESULT_DETAIL.bly1
  is '保留域1';
comment on column URP.E_RECONRESULT_DETAIL.bly2
  is '保留域2';
comment on column URP.E_RECONRESULT_DETAIL.bly3
  is '保留域3';
alter table URP.E_RECONRESULT_DETAIL
  add constraint ERECONRESULT_DETAIL_PRIMARYKEY primary key (YNDZJGMXID);

prompt
prompt Creating table E_RECON_HISTORY
prompt ==============================
prompt
create table URP.E_RECON_HISTORY
(
  dzjglstjid VARCHAR2(32) default sys_guid() not null,
  dzrq       DATE not null,
  dzcs       VARCHAR2(100),
  wcdzcs     VARCHAR2(100),
  wwcdzcs    VARCHAR2(100),
  wdzcs      VARCHAR2(100),
  zpcs       VARCHAR2(100),
  zbpcs      VARCHAR2(50),
  dzcssl     NUMBER default 0,
  wcdzcssl   NUMBER default 0,
  wwcdzcssl  NUMBER default 0,
  wdzcssl    NUMBER default 0,
  zpcssl     NUMBER default 0,
  zbpcssl    NUMBER default 0,
  csjyzbs    NUMBER default 0,
  csjyzje    NUMBER(12,2) default 0.00,
  csycjyzbs  NUMBER default 0,
  csycjyzje  NUMBER(12,2) default 0.00,
  hisjyzbs   NUMBER default 0,
  hisjyzje   NUMBER(12,2) default 0.00,
  hisycjyzje NUMBER(12,2) default 0.00,
  hisycjyzbs NUMBER default 0,
  jyhztj     VARCHAR2(1000),
  jgbm       VARCHAR2(15),
  sfsc       VARCHAR2(2),
  bz         VARCHAR2(100),
  bly1       VARCHAR2(50),
  bly2       VARCHAR2(50),
  bly3       VARCHAR2(50)
)
;
comment on table URP.E_RECON_HISTORY
  is '设备对账结果历史统计表';
comment on column URP.E_RECON_HISTORY.dzjglstjid
  is '对账结果历史统计表Id';
comment on column URP.E_RECON_HISTORY.dzrq
  is '对账日期';
comment on column URP.E_RECON_HISTORY.dzcs
  is '对账厂商';
comment on column URP.E_RECON_HISTORY.wcdzcs
  is '完成对账厂商';
comment on column URP.E_RECON_HISTORY.wwcdzcs
  is '未完成对账厂商';
comment on column URP.E_RECON_HISTORY.wdzcs
  is '未对账厂商';
comment on column URP.E_RECON_HISTORY.zpcs
  is '账平厂商';
comment on column URP.E_RECON_HISTORY.zbpcs
  is '账不平厂商';
comment on column URP.E_RECON_HISTORY.dzcssl
  is '对账厂商数量';
comment on column URP.E_RECON_HISTORY.wcdzcssl
  is '完成对账厂商数量';
comment on column URP.E_RECON_HISTORY.wwcdzcssl
  is '未完成对账厂商数量';
comment on column URP.E_RECON_HISTORY.wdzcssl
  is '未对账厂商数量';
comment on column URP.E_RECON_HISTORY.zpcssl
  is '账平厂商数量';
comment on column URP.E_RECON_HISTORY.zbpcssl
  is '账不平厂商数量';
comment on column URP.E_RECON_HISTORY.csjyzbs
  is '厂商交易总笔数';
comment on column URP.E_RECON_HISTORY.csjyzje
  is '厂商交易总金额';
comment on column URP.E_RECON_HISTORY.csycjyzbs
  is '厂商异常交易总笔数';
comment on column URP.E_RECON_HISTORY.csycjyzje
  is '厂商异常交易总金额';
comment on column URP.E_RECON_HISTORY.hisjyzbs
  is 'His交易总笔数';
comment on column URP.E_RECON_HISTORY.hisjyzje
  is 'His交易总金额';
comment on column URP.E_RECON_HISTORY.hisycjyzje
  is 'His异常交易总金额';
comment on column URP.E_RECON_HISTORY.hisycjyzbs
  is 'His异常交易总笔数';
comment on column URP.E_RECON_HISTORY.jyhztj
  is '交易汇总信息分类统计（统计每个厂商，设备/His交易总笔数、总金额、异常笔数、异常金额，以“|”分割）';
comment on column URP.E_RECON_HISTORY.jgbm
  is '机构编码';
comment on column URP.E_RECON_HISTORY.sfsc
  is '是否删除（1：已删除，0：未删除）';
comment on column URP.E_RECON_HISTORY.bz
  is '备注';
comment on column URP.E_RECON_HISTORY.bly1
  is '保留域1';
comment on column URP.E_RECON_HISTORY.bly2
  is '保留域2';
comment on column URP.E_RECON_HISTORY.bly3
  is '保留域3';
alter table URP.E_RECON_HISTORY
  add constraint E_RECONHISSTATISTICS_PK primary key (DZJGLSTJID);

prompt
prompt Creating table GF_BANKTRANS
prompt ===========================
prompt
create table URP.GF_BANKTRANS
(
  yyzh       VARCHAR2(32) not null,
  fhjybs     NUMBER(15),
  ybs        VARCHAR2(2),
  xyjyrq     VARCHAR2(10),
  xycbsjylsh VARCHAR2(12),
  xyjydh     VARCHAR2(5),
  jyxh       VARCHAR2(20),
  jyrq       DATE,
  jdbz       VARCHAR2(2),
  jyje       NUMBER(20,2),
  zfbz       VARCHAR2(2),
  kyye       NUMBER(20,2),
  ywms       VARCHAR2(32),
  jyhs       VARCHAR2(40),
  pzhm       VARCHAR2(16),
  dfzh       VARCHAR2(32) not null,
  dfhm       VARCHAR2(82),
  dsfhh      VARCHAR2(14),
  jysj       DATE,
  fjxx       VARCHAR2(30),
  jyqd       VARCHAR2(20),
  bz         VARCHAR2(22),
  fy         VARCHAR2(102),
  dszhlx     VARCHAR2(2),
  wybsm      VARCHAR2(32) not null,
  cbsjyxh    VARCHAR2(5),
  kjrq       VARCHAR2(50),
  qycwlsh    VARCHAR2(50) not null,
  bly1       VARCHAR2(50),
  bly2       VARCHAR2(50)
)
;
comment on column URP.GF_BANKTRANS.yyzh
  is '医院账号';
comment on column URP.GF_BANKTRANS.fhjybs
  is '返回交易笔数';
comment on column URP.GF_BANKTRANS.ybs
  is '页标识，0：不存在下一页
1：存在下一页';
comment on column URP.GF_BANKTRANS.xyjyrq
  is '下页交易日期，当“页标识”为1时，此域不为空
日期格式(YYYYMMDD)';
comment on column URP.GF_BANKTRANS.xycbsjylsh
  is '下页CBS交易流水号，当“页标识”为1时，此域不为空';
comment on column URP.GF_BANKTRANS.xyjydh
  is '下页交易代号，当“页标识”为1时，此域不为空';
comment on column URP.GF_BANKTRANS.jyxh
  is '交易序号，循环域';
comment on column URP.GF_BANKTRANS.jyrq
  is '交易日期，循环域
日期格式(YYYYMMDD)';
comment on column URP.GF_BANKTRANS.jdbz
  is '借贷标志，循环域 +/-';
comment on column URP.GF_BANKTRANS.jyje
  is '交易金额，循环域
实际数字是（19，2）小数点占一位，整数部分占17位';
comment on column URP.GF_BANKTRANS.zfbz
  is '正负标志，循环域 +/-';
comment on column URP.GF_BANKTRANS.kyye
  is '可用余额，循环域
实际数字是（19，2）小数点占一位，整数部分占17位';
comment on column URP.GF_BANKTRANS.ywms
  is '业务描述，循环域
如：
资金上拔
资金下划';
comment on column URP.GF_BANKTRANS.jyhs
  is '交易行所，循环域';
comment on column URP.GF_BANKTRANS.pzhm
  is '凭证号码，循环域';
comment on column URP.GF_BANKTRANS.dfzh
  is '对方账号，循环域';
comment on column URP.GF_BANKTRANS.dfhm
  is '对方户名，循环域';
comment on column URP.GF_BANKTRANS.dsfhh
  is '对手方行号，循环域
行内交易显示行所号，行外交易显示联行号';
comment on column URP.GF_BANKTRANS.jysj
  is '交易时间，循环域
时间格式(HHMMSS)';
comment on column URP.GF_BANKTRANS.fjxx
  is '附加信息，循环域';
comment on column URP.GF_BANKTRANS.jyqd
  is '交易渠道，循环域';
comment on column URP.GF_BANKTRANS.bz
  is '备注，循环域';
comment on column URP.GF_BANKTRANS.fy
  is '附言，循环域';
comment on column URP.GF_BANKTRANS.dszhlx
  is '对手账号类型，循环域
1-对公  0-对私 空-非我行账号';
comment on column URP.GF_BANKTRANS.wybsm
  is '唯一标识码，循环域
可全行标识交易唯一性 ';
comment on column URP.GF_BANKTRANS.cbsjyxh
  is 'CBS交易序号，循环域';
comment on column URP.GF_BANKTRANS.kjrq
  is '会计日期，循环域';
comment on column URP.GF_BANKTRANS.qycwlsh
  is '企业财务流水号，循环域，批量转账交易为客户批次流水号';
comment on column URP.GF_BANKTRANS.bly1
  is '预留字段1，暂时未使用';
comment on column URP.GF_BANKTRANS.bly2
  is '预留字段2，暂时未使用';
alter table URP.GF_BANKTRANS
  add primary key (WYBSM);

prompt
prompt Creating table GF_BANKTRANS_ACCOUNTS
prompt ====================================
prompt
create table URP.GF_BANKTRANS_ACCOUNTS
(
  id           VARCHAR2(32) default sys_guid() not null,
  khpch        VARCHAR2(20),
  fkzh         VARCHAR2(20),
  zjjybs       NUMBER(16),
  zjjyje       NUMBER(16,2),
  zjjysxf      NUMBER(16,2),
  cgbs         NUMBER(5),
  sbbs         NUMBER(5),
  zzclbs       NUMBER(5),
  khpczlsh     VARCHAR2(20) not null,
  sxf          NUMBER(16,2),
  jyclzt       VARCHAR2(15),
  dzhdjym      VARCHAR2(6),
  dzhdh        VARCHAR2(20),
  sbyy         VARCHAR2(200),
  sfsc         VARCHAR2(1),
  czr          VARCHAR2(2),
  czsj         TIMESTAMP(6) default sysdate,
  zhxgr        VARCHAR2(2),
  zhxgsj       TIMESTAMP(6),
  jysj         VARCHAR2(20),
  bz           VARCHAR2(200),
  jyje         NUMBER(12,2) default 0,
  inname       VARCHAR2(60),
  inacc        VARCHAR2(40),
  errcode      VARCHAR2(25),
  businesstype VARCHAR2(2)
)
;
comment on column URP.GF_BANKTRANS_ACCOUNTS.id
  is '主键Id';
comment on column URP.GF_BANKTRANS_ACCOUNTS.khpch
  is '客户批次号customerBatchNo_批次信息（一批包含多个子流水）';
comment on column URP.GF_BANKTRANS_ACCOUNTS.fkzh
  is '付款账号accountNo_批次信息';
comment on column URP.GF_BANKTRANS_ACCOUNTS.zjjybs
  is '总计交易笔数allCount_批次信息';
comment on column URP.GF_BANKTRANS_ACCOUNTS.zjjyje
  is '总计交易金额allSalary_批次信息';
comment on column URP.GF_BANKTRANS_ACCOUNTS.zjjysxf
  is '总计交易手续费allHandlefee_批次信息';
comment on column URP.GF_BANKTRANS_ACCOUNTS.cgbs
  is '成功笔数count_批次信息';
comment on column URP.GF_BANKTRANS_ACCOUNTS.sbbs
  is '失败笔数errCount_批次信息';
comment on column URP.GF_BANKTRANS_ACCOUNTS.zzclbs
  is '正在处理笔数unknowCount_批次信息';
comment on column URP.GF_BANKTRANS_ACCOUNTS.khpczlsh
  is '客户批次子流水号,(主键）customerSalarySeq';
comment on column URP.GF_BANKTRANS_ACCOUNTS.sxf
  is '手续费fee';
comment on column URP.GF_BANKTRANS_ACCOUNTS.jyclzt
  is '交易处理状态state(failed:转账失败,transferred:转账、退款成功,transferring:转账中)';
comment on column URP.GF_BANKTRANS_ACCOUNTS.dzhdjym
  is '电子回单校验码';
comment on column URP.GF_BANKTRANS_ACCOUNTS.dzhdh
  is '电子回单号ewpSequence';
comment on column URP.GF_BANKTRANS_ACCOUNTS.sbyy
  is '失败原因errorreason';
comment on column URP.GF_BANKTRANS_ACCOUNTS.sfsc
  is '是否删除(0:是，1：否）';
comment on column URP.GF_BANKTRANS_ACCOUNTS.czr
  is '操作人';
comment on column URP.GF_BANKTRANS_ACCOUNTS.czsj
  is '操作时间';
comment on column URP.GF_BANKTRANS_ACCOUNTS.zhxgr
  is '最后修改人';
comment on column URP.GF_BANKTRANS_ACCOUNTS.zhxgsj
  is '最后修改时间';
comment on column URP.GF_BANKTRANS_ACCOUNTS.jysj
  is '交易时间_子流水交易时间jysj(yyyymmdd)';
comment on column URP.GF_BANKTRANS_ACCOUNTS.bz
  is '备注';
comment on column URP.GF_BANKTRANS_ACCOUNTS.jyje
  is '交易金额';
comment on column URP.GF_BANKTRANS_ACCOUNTS.inname
  is '转入户名';
comment on column URP.GF_BANKTRANS_ACCOUNTS.inacc
  is '转入账号';
comment on column URP.GF_BANKTRANS_ACCOUNTS.errcode
  is '失败错误码';
comment on column URP.GF_BANKTRANS_ACCOUNTS.businesstype
  is '业务类型:1、费用报销,2、其他代付,3、代发工资,4、慧支付,6、代付理赔';
alter table URP.GF_BANKTRANS_ACCOUNTS
  add primary key (ID);

prompt
prompt Creating table HIS_TRANSFLOW
prompt ============================
prompt
create table URP.HIS_TRANSFLOW
(
  hislsid  VARCHAR2(32) default sys_guid() not null,
  qdid     VARCHAR2(32) not null,
  yhrybh   VARCHAR2(30),
  brjzkh   VARCHAR2(30),
  brxm     VARCHAR2(100),
  fpbh     VARCHAR2(50),
  jyqdbs   VARCHAR2(20) not null,
  ywlx     VARCHAR2(10),
  jyje     NUMBER(12,2) not null,
  khh      VARCHAR2(30),
  khzh     VARCHAR2(30),
  jylsh    VARCHAR2(30),
  jyckh    VARCHAR2(50),
  ddbh     VARCHAR2(50),
  zdbh     VARCHAR2(32),
  brjzkye  NUMBER(12,2),
  czm      VARCHAR2(20),
  jysj     VARCHAR2(25),
  jyylx    VARCHAR2(10),
  jyshbh   VARCHAR2(20),
  jyzdbh   VARCHAR2(30),
  jyrzzh   VARCHAR2(50),
  yhlsh    VARCHAR2(30),
  yhckh    VARCHAR2(50),
  pch      VARCHAR2(10),
  sfsc     VARCHAR2(2) default 0 not null,
  jlcjsj   TIMESTAMP(6) default sysdate not null,
  dzrq     DATE default sysdate not null,
  dzbs     VARCHAR2(2) default 0 not null,
  crkbs    VARCHAR2(2) default 0 not null,
  jyzt     VARCHAR2(2) default 1 not null,
  bz       VARCHAR2(100),
  bly1     VARCHAR2(50) default 0,
  bly2     VARCHAR2(50),
  bly3     VARCHAR2(50),
  jgbm     VARCHAR2(15) not null,
  blh      VARCHAR2(30),
  yjyh     VARCHAR2(30),
  ybfdje   NUMBER(12,2),
  grzhzfje NUMBER(12,2),
  xjzfje   NUMBER(12,2),
  yljmje   NUMBER(12,2),
  ylbzje   NUMBER(12,2),
  flag     VARCHAR2(2),
  mzzybs   VARCHAR2(2),
  dzbh     VARCHAR2(50) not null,
  jysbbs   VARCHAR2(30),
  sbcsbm   VARCHAR2(30),
  yhryxm   VARCHAR2(50),
  sfzhm    VARCHAR2(18),
  bcjywybs VARCHAR2(30)
)
;
comment on table URP.HIS_TRANSFLOW
  is 'HIS 流水表';
comment on column URP.HIS_TRANSFLOW.hislsid
  is '流水id, 主键';
comment on column URP.HIS_TRANSFLOW.qdid
  is '渠道id, 对应交易流水渠道';
comment on column URP.HIS_TRANSFLOW.yhrybh
  is '医护人员编号';
comment on column URP.HIS_TRANSFLOW.brjzkh
  is '病人就诊卡号';
comment on column URP.HIS_TRANSFLOW.brxm
  is '病人姓名';
comment on column URP.HIS_TRANSFLOW.fpbh
  is '发票编号';
comment on column URP.HIS_TRANSFLOW.jyqdbs
  is '交易渠道标识（微信、支付宝、医保）';
comment on column URP.HIS_TRANSFLOW.ywlx
  is '业务类型';
comment on column URP.HIS_TRANSFLOW.jyje
  is '交易金额';
comment on column URP.HIS_TRANSFLOW.khh
  is '交易账户开户行';
comment on column URP.HIS_TRANSFLOW.khzh
  is '交易账户开户账号';
comment on column URP.HIS_TRANSFLOW.jylsh
  is '交易流水号';
comment on column URP.HIS_TRANSFLOW.jyckh
  is '交易参考号（-> jshid）';
comment on column URP.HIS_TRANSFLOW.ddbh
  is '订单编号';
comment on column URP.HIS_TRANSFLOW.zdbh
  is '账单编号';
comment on column URP.HIS_TRANSFLOW.brjzkye
  is '病人就诊卡余额';
comment on column URP.HIS_TRANSFLOW.czm
  is '操作码';
comment on column URP.HIS_TRANSFLOW.jysj
  is '交易时间';
comment on column URP.HIS_TRANSFLOW.jyylx
  is '交易源类型（自助、窗口、诊间）';
comment on column URP.HIS_TRANSFLOW.jyshbh
  is '交易商户编号';
comment on column URP.HIS_TRANSFLOW.jyzdbh
  is '交易终端编号（终端号或医院终端标识）';
comment on column URP.HIS_TRANSFLOW.jyrzzh
  is '交易入账账号';
comment on column URP.HIS_TRANSFLOW.yhlsh
  is '银行流水号（->his的住院流水号）';
comment on column URP.HIS_TRANSFLOW.yhckh
  is '银行参考号';
comment on column URP.HIS_TRANSFLOW.pch
  is '批次号';
comment on column URP.HIS_TRANSFLOW.sfsc
  is '删除状态（1：删除，0：未删除）';
comment on column URP.HIS_TRANSFLOW.jlcjsj
  is '记录创建时间';
comment on column URP.HIS_TRANSFLOW.dzrq
  is '对账日期';
comment on column URP.HIS_TRANSFLOW.dzbs
  is '对账标识（1：已对账，0：未对账）';
comment on column URP.HIS_TRANSFLOW.crkbs
  is '重入库标识（1：重入库，0：原始入库）';
comment on column URP.HIS_TRANSFLOW.jyzt
  is '交易状态（0：失败，1：成功，2：未知）';
comment on column URP.HIS_TRANSFLOW.bz
  is '备注';
comment on column URP.HIS_TRANSFLOW.bly1
  is '含义：1.记录广发的具体渠道,2.医保交易时（pos交易为：UnionPay,省统筹交易：记录省统筹的的医保总金额【除pos和市医保之外 】）';
comment on column URP.HIS_TRANSFLOW.bly2
  is '保留域2（记录his对应的医保特殊类型，如 8：门诊省医保（mzsyb），9、住院省医保(zysyb)，10：门诊异地医保(mzydyb)，11：住院异地医保（zyydyb），12：门诊省医保POS(mzsybpos)，13：住院省医保POS(zysybpos)，14：门诊异地医保POS(mzydybpos)，15：住院异地医保POS(zyydybpos) ）';
comment on column URP.HIS_TRANSFLOW.bly3
  is '保留域3（操作员编码 对应his的operatorCode）';
comment on column URP.HIS_TRANSFLOW.jgbm
  is '机构编码';
comment on column URP.HIS_TRANSFLOW.blh
  is '病人病历号';
comment on column URP.HIS_TRANSFLOW.yjyh
  is '原交易订单号/流水号（反向交易时不为空）';
comment on column URP.HIS_TRANSFLOW.ybfdje
  is '医保负担/报销总金额（医保支付时赋值）';
comment on column URP.HIS_TRANSFLOW.grzhzfje
  is '个人账户支付金额（医保支付时赋值）';
comment on column URP.HIS_TRANSFLOW.xjzfje
  is '现金支付金额（医保支付时赋值）';
comment on column URP.HIS_TRANSFLOW.yljmje
  is '医疗减免金额（医保支付时赋值）';
comment on column URP.HIS_TRANSFLOW.ylbzje
  is '医疗补助金额（医保支付时赋值）';
comment on column URP.HIS_TRANSFLOW.flag
  is '是否自助终端（1：是，0：否）';
comment on column URP.HIS_TRANSFLOW.mzzybs
  is '门诊住院标识（1：门诊，2：住院）';
comment on column URP.HIS_TRANSFLOW.dzbh
  is '对账编号';
comment on column URP.HIS_TRANSFLOW.jysbbs
  is '交易设备标识（设备编号）';
comment on column URP.HIS_TRANSFLOW.sbcsbm
  is '设备厂商编码';
comment on column URP.HIS_TRANSFLOW.yhryxm
  is '医护人员（操作员）姓名';
comment on column URP.HIS_TRANSFLOW.sfzhm
  is '患者身份证号码';
comment on column URP.HIS_TRANSFLOW.bcjywybs
  is '本次就医唯一标识（可为就诊卡号或身份证号或医保卡号等，必须能唯一标识本次就医）';
create index URP.HIS_SFSC_DZBS on URP.HIS_TRANSFLOW (SFSC, DZBS);
create index URP.IDX_BB_QD on URP.HIS_TRANSFLOW (QDID, DDBH, BRXM, BRJZKH);
create index URP.IDX_DJQ on URP.HIS_TRANSFLOW (DZRQ, JGBM, JYQDBS, JYRZZH);
alter table URP.HIS_TRANSFLOW
  add constraint HISTRANSFLOW_PRIMARYKEY primary key (HISLSID);

prompt
prompt Creating table ICASHIER_TRANSFLOW
prompt =================================
prompt
create table URP.ICASHIER_TRANSFLOW
(
  lsid   VARCHAR2(32) default sys_guid() not null,
  qdzhid VARCHAR2(32),
  shbh   VARCHAR2(20),
  zdbh   VARCHAR2(20),
  jyckh  VARCHAR2(50),
  jylsh  VARCHAR2(50),
  qqflsh VARCHAR2(50),
  yjylsh VARCHAR2(50),
  shddh  VARCHAR2(30),
  zdhm   VARCHAR2(50),
  spmc   VARCHAR2(30),
  jysj   VARCHAR2(20) not null,
  yhjyzh VARCHAR2(30),
  jyje   NUMBER(12,2) default 0.00 not null,
  jyzt   VARCHAR2(2) default 1 not null,
  zhye   NUMBER(12,2) default 0.00,
  ywlx   VARCHAR2(20) not null,
  jybz   VARCHAR2(100),
  jlcjsj TIMESTAMP(6) default sysdate not null,
  dzrq   DATE default sysdate not null,
  dzbs   VARCHAR2(2) default 0 not null,
  crkbs  VARCHAR2(2) default 0 not null,
  jgbm   VARCHAR2(15) not null,
  sfsc   VARCHAR2(2) default 0 not null,
  bly1   VARCHAR2(50),
  bly2   VARCHAR2(50),
  bly3   VARCHAR2(50),
  dzbh   VARCHAR2(50)
)
;
comment on table URP.ICASHIER_TRANSFLOW
  is '融合支付交易流水表';
comment on column URP.ICASHIER_TRANSFLOW.lsid
  is '融合支付流水主键ID';
comment on column URP.ICASHIER_TRANSFLOW.qdzhid
  is '渠道结算账户ID';
comment on column URP.ICASHIER_TRANSFLOW.shbh
  is '商户编号';
comment on column URP.ICASHIER_TRANSFLOW.zdbh
  is '终端编号';
comment on column URP.ICASHIER_TRANSFLOW.jyckh
  is '交易参考号（系统跟踪号、业务流水号）';
comment on column URP.ICASHIER_TRANSFLOW.jylsh
  is '交易流水号（账务流水号）';
comment on column URP.ICASHIER_TRANSFLOW.qqflsh
  is '请求方流水号';
comment on column URP.ICASHIER_TRANSFLOW.yjylsh
  is '原交易流水号：交易为后续类交易时有值';
comment on column URP.ICASHIER_TRANSFLOW.shddh
  is '商户订单号';
comment on column URP.ICASHIER_TRANSFLOW.zdhm
  is '账单号码';
comment on column URP.ICASHIER_TRANSFLOW.spmc
  is '商品名称';
comment on column URP.ICASHIER_TRANSFLOW.jysj
  is '交易时间';
comment on column URP.ICASHIER_TRANSFLOW.yhjyzh
  is '用户交易账号（ICASHIER账号/银行卡号）';
comment on column URP.ICASHIER_TRANSFLOW.jyje
  is '交易金额（单位：元）';
comment on column URP.ICASHIER_TRANSFLOW.jyzt
  is '交易状态（0：失败，1：成功，2：未知）';
comment on column URP.ICASHIER_TRANSFLOW.zhye
  is '账户余额（单位：元）';
comment on column URP.ICASHIER_TRANSFLOW.ywlx
  is '业务类型（在线支付、交易退款）';
comment on column URP.ICASHIER_TRANSFLOW.jybz
  is '交易备注';
comment on column URP.ICASHIER_TRANSFLOW.jlcjsj
  is '记录创建时间';
comment on column URP.ICASHIER_TRANSFLOW.dzrq
  is '对账日期';
comment on column URP.ICASHIER_TRANSFLOW.dzbs
  is '对账标识（1：已对账，0：未对账）';
comment on column URP.ICASHIER_TRANSFLOW.crkbs
  is '重入库标识（1：重入库，0：原始入库）';
comment on column URP.ICASHIER_TRANSFLOW.jgbm
  is '机构编码';
comment on column URP.ICASHIER_TRANSFLOW.sfsc
  is '删除状态（1：删除，0：未删除）';
comment on column URP.ICASHIER_TRANSFLOW.bly1
  is '保留域1';
comment on column URP.ICASHIER_TRANSFLOW.bly2
  is '保留域2';
comment on column URP.ICASHIER_TRANSFLOW.bly3
  is '保留域3';
comment on column URP.ICASHIER_TRANSFLOW.dzbh
  is '对账编号';
alter table URP.ICASHIER_TRANSFLOW
  add constraint ICASHIER_TRANSFLOW_PRIMARYKEY primary key (LSID);

prompt
prompt Creating table INST_INFO
prompt ========================
prompt
create table URP.INST_INFO
(
  jgbm   VARCHAR2(15) not null,
  jgmc   VARCHAR2(50) not null,
  jgzt   VARCHAR2(2) not null,
  jlcjsj TIMESTAMP(6) default sysdate,
  cjr    VARCHAR2(20),
  zhxgsj TIMESTAMP(6) default sysdate,
  zhxgr  VARCHAR2(20),
  bz     VARCHAR2(100),
  crssid VARCHAR2(32)
)
;
comment on table URP.INST_INFO
  is '机构（医院）信息';
comment on column URP.INST_INFO.jgbm
  is '主键，机构编码，用于区分机构';
comment on column URP.INST_INFO.jgmc
  is '机构名称';
comment on column URP.INST_INFO.jgzt
  is '机构状态（1：正常，0：禁用/删除）';
comment on column URP.INST_INFO.jlcjsj
  is '记录创建时间';
comment on column URP.INST_INFO.cjr
  is '创建人';
comment on column URP.INST_INFO.zhxgsj
  is '最后更新时间';
comment on column URP.INST_INFO.zhxgr
  is '最后更新人';
comment on column URP.INST_INFO.bz
  is '备注';
comment on column URP.INST_INFO.crssid
  is 'crss中对应机构唯一标识';
create index URP.JGBM_JGZT on URP.INST_INFO (JGBM, JGZT);
alter table URP.INST_INFO
  add constraint INST_PRIMARYKEY primary key (JGBM);

prompt
prompt Creating table MEDICARE_TRANSFLOW
prompt =================================
prompt
create table URP.MEDICARE_TRANSFLOW
(
  lsid       VARCHAR2(32) default sys_guid() not null,
  qdzhid     VARCHAR2(32),
  jshid      VARCHAR2(50) not null,
  jyje       NUMBER(12,2) not null,
  ybfdje     NUMBER(12,2),
  grzhzfje   NUMBER(12,2),
  xjzfje     NUMBER(12,2),
  yljmje     NUMBER(12,2),
  ylbzje     NUMBER(12,2),
  qzjbzhzfje NUMBER(12,2),
  jysj       VARCHAR2(20),
  grbh       VARCHAR2(32),
  xm         VARCHAR2(30),
  yltclb     VARCHAR2(2),
  xzbz       VARCHAR2(2),
  jsbz       VARCHAR2(2),
  jyzt       VARCHAR2(2) default 1 not null,
  jlcjsj     TIMESTAMP(6) not null,
  dzrq       DATE default sysdate not null,
  dzbs       VARCHAR2(2) default 0 not null,
  crkbs      VARCHAR2(2) default 0 not null,
  jgbm       VARCHAR2(15) not null,
  sfsc       VARCHAR2(2) default 0 not null,
  bly1       VARCHAR2(50),
  bly2       VARCHAR2(50),
  bly3       VARCHAR2(50),
  dzbh       VARCHAR2(50),
  jylsh      VARCHAR2(50),
  ejbs       VARCHAR2(15),
  sxf        NUMBER(12,2) default 0.00,
  qsje       NUMBER(12,2) default 0.00,
  qsrq       VARCHAR2(20),
  shddh      VARCHAR2(30)
)
;
comment on table URP.MEDICARE_TRANSFLOW
  is '医保对账流水表';
comment on column URP.MEDICARE_TRANSFLOW.lsid
  is '医保对账流水主键Id';
comment on column URP.MEDICARE_TRANSFLOW.qdzhid
  is '渠道结算账户Id';
comment on column URP.MEDICARE_TRANSFLOW.jshid
  is '结算号Id';
comment on column URP.MEDICARE_TRANSFLOW.jyje
  is '交易总金额（单位：元）';
comment on column URP.MEDICARE_TRANSFLOW.ybfdje
  is '医保负担/报销总金额';
comment on column URP.MEDICARE_TRANSFLOW.grzhzfje
  is '个人账户支付金额';
comment on column URP.MEDICARE_TRANSFLOW.xjzfje
  is '现金支付金额';
comment on column URP.MEDICARE_TRANSFLOW.yljmje
  is '医疗减免金额';
comment on column URP.MEDICARE_TRANSFLOW.ylbzje
  is '医疗补助金额';
comment on column URP.MEDICARE_TRANSFLOW.qzjbzhzfje
  is '其中基本账户支付金额';
comment on column URP.MEDICARE_TRANSFLOW.jysj
  is '交易时间（病人结算日期）';
comment on column URP.MEDICARE_TRANSFLOW.grbh
  is '个人编号';
comment on column URP.MEDICARE_TRANSFLOW.xm
  is '姓名';
comment on column URP.MEDICARE_TRANSFLOW.yltclb
  is '医疗统筹类别（4：门诊大病，5：意外伤害，6：普通门诊统筹，其他具体值调用数据字典接口获取，代码编号：YLTCLB）';
comment on column URP.MEDICARE_TRANSFLOW.xzbz
  is '险种标志（C:医疗，D：工伤，E：生育）';
comment on column URP.MEDICARE_TRANSFLOW.jsbz
  is '结算标志（0：已撤销；1：未撤销）';
comment on column URP.MEDICARE_TRANSFLOW.jyzt
  is '交易状态（0：失败，1：成功，2：未知）';
comment on column URP.MEDICARE_TRANSFLOW.jlcjsj
  is '记录创建时间';
comment on column URP.MEDICARE_TRANSFLOW.dzrq
  is '对账日期';
comment on column URP.MEDICARE_TRANSFLOW.dzbs
  is '对账标识（1:已对账/0:未对账）';
comment on column URP.MEDICARE_TRANSFLOW.crkbs
  is '重入库标识(1:重入库，0：原始入库)';
comment on column URP.MEDICARE_TRANSFLOW.jgbm
  is '机构编码';
comment on column URP.MEDICARE_TRANSFLOW.sfsc
  is '删除状态（1：删除，0：未删除）';
comment on column URP.MEDICARE_TRANSFLOW.bly1
  is '保留域1';
comment on column URP.MEDICARE_TRANSFLOW.bly2
  is '保留域2';
comment on column URP.MEDICARE_TRANSFLOW.bly3
  is '保留域3->就诊卡号';
comment on column URP.MEDICARE_TRANSFLOW.dzbh
  is '对账编号';
comment on column URP.MEDICARE_TRANSFLOW.jylsh
  is '交易流水号（住院流水号）';
comment on column URP.MEDICARE_TRANSFLOW.ejbs
  is '二级标识';
comment on column URP.MEDICARE_TRANSFLOW.sxf
  is '手续费（单位：元）';
comment on column URP.MEDICARE_TRANSFLOW.qsje
  is '清算金额（单位：元）';
comment on column URP.MEDICARE_TRANSFLOW.qsrq
  is '清算日期';
comment on column URP.MEDICARE_TRANSFLOW.shddh
  is '商户订单号';
create index URP.MED_JXG on URP.MEDICARE_TRANSFLOW (JSHID, XM, GRBH);
create index URP.MED_QJD on URP.MEDICARE_TRANSFLOW (DZRQ, JGBM, QDZHID);
create index URP.MED_SFSC_DZBS on URP.MEDICARE_TRANSFLOW (DZBS, SFSC);
alter table URP.MEDICARE_TRANSFLOW
  add constraint MEDICARE_TRANSFLOW_PK primary key (LSID);

prompt
prompt Creating table MONITOR_CONFIG
prompt =============================
prompt
create table URP.MONITOR_CONFIG
(
  jyjkpzid VARCHAR2(32) default sys_guid() not null,
  dxbm     VARCHAR2(30) not null,
  jgbm     VARCHAR2(15) not null,
  jyzhhqsj VARCHAR2(20) not null,
  sfsc     VARCHAR2(2) default 0 not null,
  cjsj     TIMESTAMP(6) not null,
  cjr      VARCHAR2(20),
  zhxgsj   TIMESTAMP(6),
  zhxgr    VARCHAR2(20),
  bz       VARCHAR2(100)
)
;
comment on table URP.MONITOR_CONFIG
  is '实时交易监控配置表';
comment on column URP.MONITOR_CONFIG.jyjkpzid
  is '实时交易监控配置表ID';
comment on column URP.MONITOR_CONFIG.dxbm
  is '监控对象编码（渠道：CHANNEL、设备：EQUIPMENT）';
comment on column URP.MONITOR_CONFIG.jgbm
  is '机构编码';
comment on column URP.MONITOR_CONFIG.jyzhhqsj
  is '交易最后获取时间（用于本次获取交易开始时间）';
comment on column URP.MONITOR_CONFIG.sfsc
  is '是否删除';
comment on column URP.MONITOR_CONFIG.cjsj
  is '创建时间';
comment on column URP.MONITOR_CONFIG.cjr
  is '创建人';
comment on column URP.MONITOR_CONFIG.zhxgsj
  is '最后修改时间';
comment on column URP.MONITOR_CONFIG.zhxgr
  is '最后修改人';
comment on column URP.MONITOR_CONFIG.bz
  is '备注';
alter table URP.MONITOR_CONFIG
  add constraint PK_MONITOR_CONFIG primary key (JYJKPZID);

prompt
prompt Creating table MSG_PUSH
prompt =======================
prompt
create table URP.MSG_PUSH
(
  tztsid VARCHAR2(32) default sys_guid() not null,
  ssjkid VARCHAR2(32) not null,
  cjsj   DATE not null,
  fsfs   VARCHAR2(10),
  jszh   VARCHAR2(300),
  tszt   VARCHAR2(2) not null,
  bz     VARCHAR2(200)
)
;
comment on table URP.MSG_PUSH
  is '消息推送表';
comment on column URP.MSG_PUSH.tztsid
  is '通知推送id，主键';
comment on column URP.MSG_PUSH.ssjkid
  is '实时流水监控主键';
comment on column URP.MSG_PUSH.cjsj
  is '创建时间';
comment on column URP.MSG_PUSH.fsfs
  is '发送方式(0:短信，1：微信，2：邮件)';
comment on column URP.MSG_PUSH.jszh
  is '接收账号';
comment on column URP.MSG_PUSH.tszt
  is '推送状态（1：推送成功、0：未推送，2：推送失败）';
comment on column URP.MSG_PUSH.bz
  is '备注';
alter table URP.MSG_PUSH
  add constraint MSGPUSH_PRIMARYKEY primary key (TZTSID);

prompt
prompt Creating table M_EQUIPMENT_TRANSFLOW
prompt ====================================
prompt
create table URP.M_EQUIPMENT_TRANSFLOW
(
  ynjksblsid VARCHAR2(32) default sys_guid() not null,
  yhrybh     VARCHAR2(30) not null,
  brjzkh     VARCHAR2(30),
  blh        VARCHAR2(30),
  brxm       VARCHAR2(100) not null,
  fpbh       VARCHAR2(50),
  jyqdbs     VARCHAR2(20) not null,
  ywlx       VARCHAR2(10) not null,
  jyje       NUMBER(12,2) not null,
  khh        VARCHAR2(30),
  khzh       VARCHAR2(30),
  jylsh      VARCHAR2(30),
  jyckh      VARCHAR2(50),
  ddbh       VARCHAR2(50) not null,
  yjyh       VARCHAR2(30),
  ybfdje     NUMBER(12,2),
  grzhzfje   NUMBER(12,2),
  xjzfje     NUMBER(12,2),
  yljmje     NUMBER(12,2),
  ylbzje     NUMBER(12,2),
  zdbh       VARCHAR2(32),
  brjzkye    NUMBER(12,2),
  czm        VARCHAR2(20),
  jysj       VARCHAR2(20) not null,
  jyylx      VARCHAR2(10),
  jyshbh     VARCHAR2(20),
  jyzdbh     VARCHAR2(30),
  jysbbs     VARCHAR2(30) not null,
  jyrzzh     VARCHAR2(50),
  yhlsh      VARCHAR2(30),
  yhckh      VARCHAR2(50),
  pch        VARCHAR2(10),
  jyzt       VARCHAR2(2) not null,
  jgbm       VARCHAR2(15) not null,
  zdjybs     VARCHAR2(2),
  mzzybs     VARCHAR2(2),
  sbcsid     VARCHAR2(32) not null,
  sfsc       VARCHAR2(2) default 0 not null,
  jlcjsj     TIMESTAMP(6) not null,
  dzrq       DATE not null,
  dzbs       VARCHAR2(2) default 0 not null,
  crkbs      VARCHAR2(2) default 0 not null,
  dzbh       VARCHAR2(50) not null,
  bz         VARCHAR2(100),
  bly1       VARCHAR2(50),
  bly2       VARCHAR2(50),
  bly3       VARCHAR2(50)
)
;
comment on table URP.M_EQUIPMENT_TRANSFLOW
  is '设备对账流水表';
comment on column URP.M_EQUIPMENT_TRANSFLOW.ynjksblsid
  is '设备对账流水主键ID';
comment on column URP.M_EQUIPMENT_TRANSFLOW.yhrybh
  is '医护人员（操作员）编号';
comment on column URP.M_EQUIPMENT_TRANSFLOW.brjzkh
  is '病人就诊卡号';
comment on column URP.M_EQUIPMENT_TRANSFLOW.blh
  is '病人病历号';
comment on column URP.M_EQUIPMENT_TRANSFLOW.brxm
  is '病人姓名';
comment on column URP.M_EQUIPMENT_TRANSFLOW.fpbh
  is '发票编号';
comment on column URP.M_EQUIPMENT_TRANSFLOW.jyqdbs
  is '交易渠道标识（微信、支付宝、医保等）';
comment on column URP.M_EQUIPMENT_TRANSFLOW.ywlx
  is '原交易流水号：交易为后续类交易时有值';
comment on column URP.M_EQUIPMENT_TRANSFLOW.jyje
  is '交易总金额';
comment on column URP.M_EQUIPMENT_TRANSFLOW.khh
  is '交易所用银行卡开户行';
comment on column URP.M_EQUIPMENT_TRANSFLOW.khzh
  is '交易所用银行卡账号';
comment on column URP.M_EQUIPMENT_TRANSFLOW.jylsh
  is '交易流水号（作为对账唯一标识时不能为空）';
comment on column URP.M_EQUIPMENT_TRANSFLOW.jyckh
  is '交易参考号（作为对账唯一标识时不能为空）';
comment on column URP.M_EQUIPMENT_TRANSFLOW.ddbh
  is '订单编号（默认作为对账唯一标识）';
comment on column URP.M_EQUIPMENT_TRANSFLOW.yjyh
  is '原交易订单号/流水号（反向交易时不为空）';
comment on column URP.M_EQUIPMENT_TRANSFLOW.ybfdje
  is '医保负担/报销总金额（医保支付时赋值）';
comment on column URP.M_EQUIPMENT_TRANSFLOW.grzhzfje
  is '个人账户支付金额（医保支付时赋值）';
comment on column URP.M_EQUIPMENT_TRANSFLOW.xjzfje
  is '现金支付金额（医保支付时赋值）';
comment on column URP.M_EQUIPMENT_TRANSFLOW.yljmje
  is '医疗减免金额（医保支付时赋值）';
comment on column URP.M_EQUIPMENT_TRANSFLOW.ylbzje
  is '医疗补助金额（医保支付时赋值）';
comment on column URP.M_EQUIPMENT_TRANSFLOW.zdbh
  is '账单编号';
comment on column URP.M_EQUIPMENT_TRANSFLOW.brjzkye
  is '病人就诊卡余额';
comment on column URP.M_EQUIPMENT_TRANSFLOW.czm
  is '操作码';
comment on column URP.M_EQUIPMENT_TRANSFLOW.jysj
  is '交易时间';
comment on column URP.M_EQUIPMENT_TRANSFLOW.jyylx
  is '交易源类型（1：窗口、2：自助终端、3：诊间POS）';
comment on column URP.M_EQUIPMENT_TRANSFLOW.jyshbh
  is '交易商户编号(需用此确定结算账户时不能为空)';
comment on column URP.M_EQUIPMENT_TRANSFLOW.jyzdbh
  is '交易终端编号';
comment on column URP.M_EQUIPMENT_TRANSFLOW.jysbbs
  is '交易设备标识（用以判断哪台设备：如设备编号/设备序列号）';
comment on column URP.M_EQUIPMENT_TRANSFLOW.jyrzzh
  is '交易入账账号（结算账户号：需用此确定结算账户时不能为空）';
comment on column URP.M_EQUIPMENT_TRANSFLOW.yhlsh
  is '银行流水号';
comment on column URP.M_EQUIPMENT_TRANSFLOW.yhckh
  is '银行参考号';
comment on column URP.M_EQUIPMENT_TRANSFLOW.pch
  is '批次号';
comment on column URP.M_EQUIPMENT_TRANSFLOW.jyzt
  is '交易状态（0：失败，1：成功，2：未知）';
comment on column URP.M_EQUIPMENT_TRANSFLOW.jgbm
  is '所属机构（医院）编码';
comment on column URP.M_EQUIPMENT_TRANSFLOW.zdjybs
  is '是否自助终端交易标识(1:是,0:否)';
comment on column URP.M_EQUIPMENT_TRANSFLOW.mzzybs
  is '门诊住院标识（1：门诊，2：住院）';
comment on column URP.M_EQUIPMENT_TRANSFLOW.sbcsid
  is '设备厂商主键ID';
comment on column URP.M_EQUIPMENT_TRANSFLOW.sfsc
  is '删除状态（1：删除，0：未删除）';
comment on column URP.M_EQUIPMENT_TRANSFLOW.jlcjsj
  is '记录创建时间';
comment on column URP.M_EQUIPMENT_TRANSFLOW.dzrq
  is '对账日期';
comment on column URP.M_EQUIPMENT_TRANSFLOW.dzbs
  is '对账标识（1：已对账，0：未对账）';
comment on column URP.M_EQUIPMENT_TRANSFLOW.crkbs
  is '重入库标识（1：重入库，0：原始入库）';
comment on column URP.M_EQUIPMENT_TRANSFLOW.dzbh
  is '对账编号';
comment on column URP.M_EQUIPMENT_TRANSFLOW.bz
  is '备注';
comment on column URP.M_EQUIPMENT_TRANSFLOW.bly1
  is '保留域1';
comment on column URP.M_EQUIPMENT_TRANSFLOW.bly2
  is '保留域2';
comment on column URP.M_EQUIPMENT_TRANSFLOW.bly3
  is '保留域3';
alter table URP.M_EQUIPMENT_TRANSFLOW
  add primary key (YNJKSBLSID);

prompt
prompt Creating table M_HIS_TRANSFLOW
prompt ==============================
prompt
create table URP.M_HIS_TRANSFLOW
(
  ynjkhislsid VARCHAR2(32) default sys_guid() not null,
  sbcsid      VARCHAR2(32) not null,
  yhrybh      VARCHAR2(30),
  brjzkh      VARCHAR2(30),
  brxm        VARCHAR2(100) not null,
  fpbh        VARCHAR2(50),
  jyqdbs      VARCHAR2(20) not null,
  ywlx        VARCHAR2(10),
  jyje        NUMBER(12,2) not null,
  khh         VARCHAR2(30),
  khzh        VARCHAR2(30),
  jylsh       VARCHAR2(30),
  jyckh       VARCHAR2(50),
  ddbh        VARCHAR2(50),
  zdbh        VARCHAR2(32),
  brjzkye     NUMBER(12,2),
  czm         VARCHAR2(20),
  jysj        VARCHAR2(20),
  jyylx       VARCHAR2(10),
  jyshbh      VARCHAR2(20),
  jyzdbh      VARCHAR2(30),
  jysbbs      VARCHAR2(30) not null,
  jyrzzh      VARCHAR2(50),
  yhlsh       VARCHAR2(30),
  yhckh       VARCHAR2(50),
  pch         VARCHAR2(10),
  sfsc        VARCHAR2(2) default 0 not null,
  jlcjsj      TIMESTAMP(6) default sysdate not null,
  dzrq        DATE default sysdate not null,
  dzbs        VARCHAR2(2) default 0 not null,
  crkbs       VARCHAR2(2) default 0 not null,
  jyzt        VARCHAR2(2) default 1 not null,
  jgbm        VARCHAR2(15) not null,
  blh         VARCHAR2(30),
  yjyh        VARCHAR2(30),
  ybfdje      NUMBER(12,2),
  grzhzfje    NUMBER(12,2),
  xjzfje      NUMBER(12,2),
  yljmje      NUMBER(12,2),
  ylbzje      NUMBER(12,2),
  flag        VARCHAR2(2),
  mzzybs      VARCHAR2(2),
  dzbh        VARCHAR2(50) not null,
  bz          VARCHAR2(100),
  bly1        VARCHAR2(50),
  bly2        VARCHAR2(50),
  bly3        VARCHAR2(50)
)
;
comment on table URP.M_HIS_TRANSFLOW
  is '设备HIS 流水表';
comment on column URP.M_HIS_TRANSFLOW.ynjkhislsid
  is '院内对账His流水Id, 主键';
comment on column URP.M_HIS_TRANSFLOW.sbcsid
  is '设备厂商主键id, 对应设备厂商管理表';
comment on column URP.M_HIS_TRANSFLOW.yhrybh
  is '医护人员编号';
comment on column URP.M_HIS_TRANSFLOW.brjzkh
  is '病人就诊卡号';
comment on column URP.M_HIS_TRANSFLOW.brxm
  is '病人姓名';
comment on column URP.M_HIS_TRANSFLOW.fpbh
  is '发票编号';
comment on column URP.M_HIS_TRANSFLOW.jyqdbs
  is '交易渠道标识（微信、支付宝、医保）';
comment on column URP.M_HIS_TRANSFLOW.ywlx
  is '业务类型';
comment on column URP.M_HIS_TRANSFLOW.jyje
  is '交易金额';
comment on column URP.M_HIS_TRANSFLOW.khh
  is '交易账户开户行';
comment on column URP.M_HIS_TRANSFLOW.khzh
  is '交易账户开户账号';
comment on column URP.M_HIS_TRANSFLOW.jylsh
  is '交易流水号';
comment on column URP.M_HIS_TRANSFLOW.jyckh
  is '交易参考号';
comment on column URP.M_HIS_TRANSFLOW.ddbh
  is '订单编号';
comment on column URP.M_HIS_TRANSFLOW.zdbh
  is '账单编号';
comment on column URP.M_HIS_TRANSFLOW.brjzkye
  is '病人就诊卡余额';
comment on column URP.M_HIS_TRANSFLOW.czm
  is '操作码';
comment on column URP.M_HIS_TRANSFLOW.jysj
  is '交易时间';
comment on column URP.M_HIS_TRANSFLOW.jyylx
  is '交易源类型（自助、窗口、诊间）';
comment on column URP.M_HIS_TRANSFLOW.jyshbh
  is '交易商户编号';
comment on column URP.M_HIS_TRANSFLOW.jyzdbh
  is '交易终端编号（终端号或医院终端标识）';
comment on column URP.M_HIS_TRANSFLOW.jysbbs
  is '交易设备标识（用以判断哪台设备：如设备编号/设备序列号）';
comment on column URP.M_HIS_TRANSFLOW.jyrzzh
  is '交易入账账号';
comment on column URP.M_HIS_TRANSFLOW.yhlsh
  is '银行流水号';
comment on column URP.M_HIS_TRANSFLOW.yhckh
  is '银行参考号';
comment on column URP.M_HIS_TRANSFLOW.pch
  is '批次号';
comment on column URP.M_HIS_TRANSFLOW.sfsc
  is '删除状态（1：删除，0：未删除）';
comment on column URP.M_HIS_TRANSFLOW.jlcjsj
  is '记录创建时间';
comment on column URP.M_HIS_TRANSFLOW.dzrq
  is '对账日期';
comment on column URP.M_HIS_TRANSFLOW.dzbs
  is '对账标识（1：已对账，0：未对账）';
comment on column URP.M_HIS_TRANSFLOW.crkbs
  is '重入库标识（1：重入库，0：原始入库）';
comment on column URP.M_HIS_TRANSFLOW.jyzt
  is '交易状态（0：失败，1：成功，2：未知）';
comment on column URP.M_HIS_TRANSFLOW.jgbm
  is '机构编码';
comment on column URP.M_HIS_TRANSFLOW.blh
  is '病人病历号';
comment on column URP.M_HIS_TRANSFLOW.yjyh
  is '原交易订单号/流水号（反向交易时不为空）';
comment on column URP.M_HIS_TRANSFLOW.ybfdje
  is '医保负担/报销总金额（医保支付时赋值）';
comment on column URP.M_HIS_TRANSFLOW.grzhzfje
  is '个人账户支付金额（医保支付时赋值）';
comment on column URP.M_HIS_TRANSFLOW.xjzfje
  is '现金支付金额（医保支付时赋值）';
comment on column URP.M_HIS_TRANSFLOW.yljmje
  is '医疗减免金额（医保支付时赋值）';
comment on column URP.M_HIS_TRANSFLOW.ylbzje
  is '医疗补助金额（医保支付时赋值）';
comment on column URP.M_HIS_TRANSFLOW.flag
  is '是否自助（1：是，0：否）';
comment on column URP.M_HIS_TRANSFLOW.mzzybs
  is '门诊住院标识（1：门诊，2：住院）';
comment on column URP.M_HIS_TRANSFLOW.dzbh
  is '对账编号';
comment on column URP.M_HIS_TRANSFLOW.bz
  is '备注';
comment on column URP.M_HIS_TRANSFLOW.bly1
  is '保留域1';
comment on column URP.M_HIS_TRANSFLOW.bly2
  is '保留域2';
comment on column URP.M_HIS_TRANSFLOW.bly3
  is '保留域3';
alter table URP.M_HIS_TRANSFLOW
  add constraint M_HISTRANSFLOW_PRIMARYKEY primary key (YNJKHISLSID);

prompt
prompt Creating table OPERATION_LOG
prompt ============================
prompt
create table URP.OPERATION_LOG
(
  rzid   VARCHAR2(32) default sys_guid() not null,
  glid   VARCHAR2(32),
  glywb  VARCHAR2(50),
  czlj   VARCHAR2(100),
  jgbm   VARCHAR2(15) not null,
  czdl   VARCHAR2(10) not null,
  czxl   VARCHAR2(10),
  czr    VARCHAR2(20) not null,
  jlcjsj DATE not null,
  rznr   NVARCHAR2(2000) not null,
  bz     VARCHAR2(200),
  czjg   VARCHAR2(2)
)
;
comment on table URP.OPERATION_LOG
  is '操作日志表';
comment on column URP.OPERATION_LOG.rzid
  is '日志id，主键';
comment on column URP.OPERATION_LOG.glid
  is '关联业务主键';
comment on column URP.OPERATION_LOG.glywb
  is '关联业务表';
comment on column URP.OPERATION_LOG.czlj
  is '操作路径';
comment on column URP.OPERATION_LOG.jgbm
  is '机构编码';
comment on column URP.OPERATION_LOG.czdl
  is '操作大类';
comment on column URP.OPERATION_LOG.czxl
  is '操作小类';
comment on column URP.OPERATION_LOG.czr
  is '操作人';
comment on column URP.OPERATION_LOG.jlcjsj
  is '记录创建时间';
comment on column URP.OPERATION_LOG.rznr
  is '日志内容';
comment on column URP.OPERATION_LOG.bz
  is '备注';
comment on column URP.OPERATION_LOG.czjg
  is '操作结果';
create index URP.JGBM_JLCJSJ on URP.OPERATION_LOG (JGBM, JLCJSJ);
alter table URP.OPERATION_LOG
  add constraint OPERATIONLOG_PRIMARYKEY primary key (RZID);

prompt
prompt Creating table PARAM_DICT
prompt =========================
prompt
create table URP.PARAM_DICT
(
  csid VARCHAR2(15) not null,
  jgbm VARCHAR2(15),
  cslx VARCHAR2(20) not null,
  csmc VARCHAR2(50) not null,
  csz  VARCHAR2(20) not null,
  sx   NUMBER(2),
  zt   VARCHAR2(2) default 0 not null,
  bz   VARCHAR2(100)
)
;
comment on table URP.PARAM_DICT
  is '数据字典（系统参数）';
comment on column URP.PARAM_DICT.csid
  is '主键，编码';
comment on column URP.PARAM_DICT.jgbm
  is '机构编码';
comment on column URP.PARAM_DICT.cslx
  is '参数类型';
comment on column URP.PARAM_DICT.csmc
  is '名称（中文描述）';
comment on column URP.PARAM_DICT.csz
  is '参数值';
comment on column URP.PARAM_DICT.sx
  is '顺序';
comment on column URP.PARAM_DICT.zt
  is '状态（0：正常，1：禁用）';
comment on column URP.PARAM_DICT.bz
  is '备注';
create index URP.JGBM_CSLX_CSZ_ZT on URP.PARAM_DICT (JGBM, CSLX, CSZ, ZT);
alter table URP.PARAM_DICT
  add constraint DICT_PRIMARYKEY primary key (CSID);

prompt
prompt Creating table REALTIME_ALARM
prompt =============================
prompt
create table URP.REALTIME_ALARM
(
  ssbjid   VARCHAR2(32) default sys_guid() not null,
  yhrybh   VARCHAR2(30),
  yhryxm   VARCHAR2(30),
  brjzkh   VARCHAR2(30),
  brxm     VARCHAR2(30),
  sfzhm    VARCHAR2(18),
  jyqdbs   VARCHAR2(20),
  ywlx     VARCHAR2(10),
  jyje     NUMBER(12,2) not null,
  jylsh    VARCHAR2(30),
  jyckh    VARCHAR2(50),
  ddbh     VARCHAR2(30),
  jysj     VARCHAR2(20),
  jyshbh   VARCHAR2(20),
  jyzdbh   VARCHAR2(30),
  pch      VARCHAR2(10),
  jyzt     VARCHAR2(2),
  hisjyzt  VARCHAR2(2),
  hisjyje  NUMBER(12,2),
  jgbm     VARCHAR2(15) not null,
  cljg     VARCHAR2(2) default 0,
  sfsc     VARCHAR2(2) default 0 not null,
  jlcjsj   TIMESTAMP(6) default sysdate not null,
  ycdl     VARCHAR2(10),
  ycxl     VARCHAR2(10),
  ycnr     VARCHAR2(256),
  clwcsj   TIMESTAMP(6),
  ycclbs   VARCHAR2(2) default 0,
  ycclfjmc VARCHAR2(50),
  ycclfjlj VARCHAR2(200),
  ycclms   VARCHAR2(100),
  ycclsj   TIMESTAMP(6),
  ycclr    VARCHAR2(20),
  bz       VARCHAR2(100),
  bly      VARCHAR2(50),
  jytj     VARCHAR2(20),
  czyxm    VARCHAR2(50),
  hisno    VARCHAR2(35)
)
;
comment on table URP.REALTIME_ALARM
  is '实时报警表';
comment on column URP.REALTIME_ALARM.ssbjid
  is '实时报警Id, 主键';
comment on column URP.REALTIME_ALARM.yhrybh
  is '操作员（医护人员）编号';
comment on column URP.REALTIME_ALARM.yhryxm
  is '操作员（医护人员）姓名';
comment on column URP.REALTIME_ALARM.brjzkh
  is '病人就诊卡号';
comment on column URP.REALTIME_ALARM.brxm
  is '病人姓名';
comment on column URP.REALTIME_ALARM.sfzhm
  is '患者身份证号码';
comment on column URP.REALTIME_ALARM.jyqdbs
  is '交易渠道标识（交易渠道编码）';
comment on column URP.REALTIME_ALARM.ywlx
  is '业务类型';
comment on column URP.REALTIME_ALARM.jyje
  is '交易金额';
comment on column URP.REALTIME_ALARM.jylsh
  is '交易流水号';
comment on column URP.REALTIME_ALARM.jyckh
  is '交易参考号';
comment on column URP.REALTIME_ALARM.ddbh
  is '订单编号';
comment on column URP.REALTIME_ALARM.jysj
  is '交易时间';
comment on column URP.REALTIME_ALARM.jyshbh
  is '交易商户编号';
comment on column URP.REALTIME_ALARM.jyzdbh
  is '交易终端编号';
comment on column URP.REALTIME_ALARM.pch
  is '批次号';
comment on column URP.REALTIME_ALARM.jyzt
  is '平台交易状态（0：失败，1：成功，2：未知）';
comment on column URP.REALTIME_ALARM.hisjyzt
  is 'HIS交易状态（0：失败，1：成功，2：未知）';
comment on column URP.REALTIME_ALARM.hisjyje
  is 'HIS交易金额';
comment on column URP.REALTIME_ALARM.jgbm
  is '机构编码';
comment on column URP.REALTIME_ALARM.cljg
  is '处理结果(0：未处理，1：处理成功，2：处理失败)';
comment on column URP.REALTIME_ALARM.sfsc
  is '是否删除（0：未删除，1：已删除）';
comment on column URP.REALTIME_ALARM.jlcjsj
  is '记录创建时间';
comment on column URP.REALTIME_ALARM.ycdl
  is '异常大类';
comment on column URP.REALTIME_ALARM.ycxl
  is '异常小类';
comment on column URP.REALTIME_ALARM.ycnr
  is '异常内容';
comment on column URP.REALTIME_ALARM.clwcsj
  is '勾兑处理完成时间';
comment on column URP.REALTIME_ALARM.ycclbs
  is '异常处理标识（1：已处理，0：未处理）';
comment on column URP.REALTIME_ALARM.ycclfjmc
  is '异常处理附件名称';
comment on column URP.REALTIME_ALARM.ycclfjlj
  is '异常处理附件保存路径';
comment on column URP.REALTIME_ALARM.ycclms
  is '异常处理描述';
comment on column URP.REALTIME_ALARM.ycclsj
  is '异常处理时间';
comment on column URP.REALTIME_ALARM.ycclr
  is '异常处理人';
comment on column URP.REALTIME_ALARM.bz
  is '备注（失败次数）';
comment on column URP.REALTIME_ALARM.bly
  is '保留域';
comment on column URP.REALTIME_ALARM.jytj
  is '交易途径（his）';
comment on column URP.REALTIME_ALARM.czyxm
  is '操作员姓名';
comment on column URP.REALTIME_ALARM.hisno
  is 'his流水号';
create index URP.JYQDBS_SFSC_JGBM on URP.REALTIME_ALARM (JYQDBS, JGBM, SFSC);
alter table URP.REALTIME_ALARM
  add constraint PK_REALTIME_ALARM primary key (SSBJID);

prompt
prompt Creating table REALTIME_MONITOR
prompt ===============================
prompt
create table URP.REALTIME_MONITOR
(
  ssjkid   VARCHAR2(32) default sys_guid() not null,
  qdid     VARCHAR2(32) not null,
  yhrybh   VARCHAR2(30),
  brjzkh   VARCHAR2(30) not null,
  brxm     VARCHAR2(20) not null,
  fpbh     VARCHAR2(50),
  jyqdbs   VARCHAR2(20) not null,
  ywlx     VARCHAR2(10),
  jyje     NUMBER(12,2) not null,
  khh      VARCHAR2(30),
  khzh     VARCHAR2(30),
  jylsh    VARCHAR2(30),
  jyckh    VARCHAR2(50) not null,
  ddbh     VARCHAR2(30),
  zdbh     VARCHAR2(32),
  brjzkye  NUMBER(12,2),
  czm      VARCHAR2(20),
  jysj     VARCHAR2(20),
  jyylx    VARCHAR2(10),
  jyshbh   VARCHAR2(20),
  jyzdbh   VARCHAR2(30) not null,
  jyrzzh   VARCHAR2(30),
  yhlsh    VARCHAR2(30),
  yhckh    VARCHAR2(50),
  pch      VARCHAR2(10),
  jyzt     VARCHAR2(2) not null,
  qdsfcz   VARCHAR2(2),
  qdjyzt   VARCHAR2(2),
  jyztms   VARCHAR2(256),
  qdjyje   NUMBER(12,2),
  zfwcsj   VARCHAR2(20),
  qdshh    VARCHAR2(32),
  qdzshh   VARCHAR2(32),
  zdsbh    VARCHAR2(32),
  yhbs     VARCHAR2(128),
  fkzh     VARCHAR2(500),
  jylx     VARCHAR2(20),
  fkyh     VARCHAR2(30),
  jgbm     VARCHAR2(15) not null,
  cljg     VARCHAR2(2) default 0,
  sfsc     VARCHAR2(2) default 0 not null,
  jlcjsj   TIMESTAMP(6) default sysdate not null,
  ycdl     VARCHAR2(10),
  ycxl     VARCHAR2(10),
  ycnr     VARCHAR2(256),
  clwcsj   TIMESTAMP(6),
  ycclbs   VARCHAR2(2) default 0,
  ycclfjmc VARCHAR2(50),
  ycclfjlj VARCHAR2(200),
  ycclms   VARCHAR2(100),
  ycclsj   TIMESTAMP(6),
  ycclr    VARCHAR2(20),
  bz       VARCHAR2(100),
  bly      VARCHAR2(50)
)
;
comment on table URP.REALTIME_MONITOR
  is '实时监控表';
comment on column URP.REALTIME_MONITOR.ssjkid
  is '实时监控id, 主键';
comment on column URP.REALTIME_MONITOR.qdid
  is '渠道id, 对应交易流水渠道';
comment on column URP.REALTIME_MONITOR.yhrybh
  is '医护人员编号';
comment on column URP.REALTIME_MONITOR.brjzkh
  is '病人就诊卡号';
comment on column URP.REALTIME_MONITOR.brxm
  is '病人姓名';
comment on column URP.REALTIME_MONITOR.fpbh
  is '发票编号';
comment on column URP.REALTIME_MONITOR.jyqdbs
  is '交易渠道标识（微信、支付宝、医保）';
comment on column URP.REALTIME_MONITOR.ywlx
  is '业务类型';
comment on column URP.REALTIME_MONITOR.jyje
  is '交易金额';
comment on column URP.REALTIME_MONITOR.khh
  is '开户行';
comment on column URP.REALTIME_MONITOR.khzh
  is '开户账号';
comment on column URP.REALTIME_MONITOR.jylsh
  is '交易流水号';
comment on column URP.REALTIME_MONITOR.jyckh
  is '交易参考号';
comment on column URP.REALTIME_MONITOR.ddbh
  is '订单编号';
comment on column URP.REALTIME_MONITOR.zdbh
  is '账单编号';
comment on column URP.REALTIME_MONITOR.brjzkye
  is '病人就诊卡余额';
comment on column URP.REALTIME_MONITOR.czm
  is '操作码';
comment on column URP.REALTIME_MONITOR.jysj
  is '交易时间';
comment on column URP.REALTIME_MONITOR.jyylx
  is '交易源类型（自助、窗口、诊间）';
comment on column URP.REALTIME_MONITOR.jyshbh
  is '交易商户编号';
comment on column URP.REALTIME_MONITOR.jyzdbh
  is '交易终端编号（终端号或医院终端标识）';
comment on column URP.REALTIME_MONITOR.jyrzzh
  is '交易入账账号';
comment on column URP.REALTIME_MONITOR.yhlsh
  is '银行流水号';
comment on column URP.REALTIME_MONITOR.yhckh
  is '银行参考号';
comment on column URP.REALTIME_MONITOR.pch
  is '批次号';
comment on column URP.REALTIME_MONITOR.jyzt
  is 'HIS交易状态（0：失败，1：成功，2：未知）';
comment on column URP.REALTIME_MONITOR.qdsfcz
  is '渠道是否存在该笔交易（1：存在，0：不存在）';
comment on column URP.REALTIME_MONITOR.qdjyzt
  is '渠道交易状态（1：成功，0：失败，2：其他情况）';
comment on column URP.REALTIME_MONITOR.jyztms
  is '交易状态描述';
comment on column URP.REALTIME_MONITOR.qdjyje
  is '渠道交易金额';
comment on column URP.REALTIME_MONITOR.zfwcsj
  is '支付完成时间';
comment on column URP.REALTIME_MONITOR.qdshh
  is '渠道商户号';
comment on column URP.REALTIME_MONITOR.qdzshh
  is '渠道子商户号';
comment on column URP.REALTIME_MONITOR.zdsbh
  is '终端设备号';
comment on column URP.REALTIME_MONITOR.yhbs
  is '用户标识';
comment on column URP.REALTIME_MONITOR.fkzh
  is '付款账号';
comment on column URP.REALTIME_MONITOR.jylx
  is '交易类型';
comment on column URP.REALTIME_MONITOR.fkyh
  is '资金渠道（银行标识）';
comment on column URP.REALTIME_MONITOR.jgbm
  is '机构编码';
comment on column URP.REALTIME_MONITOR.cljg
  is '处理结果(0：未处理，1：处理成功，2：处理失败)';
comment on column URP.REALTIME_MONITOR.sfsc
  is '是否删除（0：未删除，1：已删除）';
comment on column URP.REALTIME_MONITOR.jlcjsj
  is '记录创建时间';
comment on column URP.REALTIME_MONITOR.ycdl
  is '异常大类';
comment on column URP.REALTIME_MONITOR.ycxl
  is '异常小类';
comment on column URP.REALTIME_MONITOR.ycnr
  is '异常内容';
comment on column URP.REALTIME_MONITOR.clwcsj
  is '勾兑处理完成时间';
comment on column URP.REALTIME_MONITOR.ycclbs
  is '异常处理标识（1：已处理，0：未处理）';
comment on column URP.REALTIME_MONITOR.ycclfjmc
  is '异常处理附件名称';
comment on column URP.REALTIME_MONITOR.ycclfjlj
  is '异常处理附件保存路径';
comment on column URP.REALTIME_MONITOR.ycclms
  is '异常处理描述';
comment on column URP.REALTIME_MONITOR.ycclsj
  is '异常处理时间';
comment on column URP.REALTIME_MONITOR.ycclr
  is '异常处理人';
comment on column URP.REALTIME_MONITOR.bz
  is '备注（失败次数）';
comment on column URP.REALTIME_MONITOR.bly
  is '保留域';
create index URP.QDID_SFSC_JGBM on URP.REALTIME_MONITOR (QDID, JGBM, SFSC);
alter table URP.REALTIME_MONITOR
  add constraint REALTIMEMONITOR_PRIMARYKEY primary key (SSJKID);

prompt
prompt Creating table RECONFILE_INFO
prompt =============================
prompt
create table URP.RECONFILE_INFO
(
  dzwjid VARCHAR2(32) default sys_guid() not null,
  qdid   VARCHAR2(32) not null,
  wjmc   VARCHAR2(100) not null,
  wjlj   VARCHAR2(100) not null,
  czsj   TIMESTAMP(6) default sysdate not null,
  czjg   VARCHAR2(2) not null,
  czjgms VARCHAR2(100),
  dzrq   DATE not null,
  rkzt   VARCHAR2(2) default 0 not null,
  bz     VARCHAR2(100),
  sfsc   VARCHAR2(2) default 0 not null,
  bly1   VARCHAR2(50),
  bly2   VARCHAR2(50),
  bly3   VARCHAR2(50)
)
;
comment on table URP.RECONFILE_INFO
  is '渠道对账文件 管理表';
comment on column URP.RECONFILE_INFO.dzwjid
  is '对账文件ID，区分文件';
comment on column URP.RECONFILE_INFO.qdid
  is '渠道主键id';
comment on column URP.RECONFILE_INFO.wjmc
  is '对账文件名称';
comment on column URP.RECONFILE_INFO.wjlj
  is '对账文件下载后存放路径';
comment on column URP.RECONFILE_INFO.czsj
  is '操作时间(对账文件下载/上传时间)';
comment on column URP.RECONFILE_INFO.czjg
  is '操作结果(对账文件下载/上传结果(1：成功，0：失败))';
comment on column URP.RECONFILE_INFO.czjgms
  is '操作结果描述(对账文件下载/上传结果描述)';
comment on column URP.RECONFILE_INFO.dzrq
  is '对账日期（手工对账时可指定）';
comment on column URP.RECONFILE_INFO.rkzt
  is '对账文件入库状态（0：未入库，1：已入库，2：入库失败）';
comment on column URP.RECONFILE_INFO.bz
  is '备注';
comment on column URP.RECONFILE_INFO.sfsc
  is '删除状态（1：删除，0：未删除）';
comment on column URP.RECONFILE_INFO.bly1
  is '保留域1';
comment on column URP.RECONFILE_INFO.bly2
  is '保留域2';
comment on column URP.RECONFILE_INFO.bly3
  is '保留域3';
create index URP.QDID_SFSC_DZRQ on URP.RECONFILE_INFO (QDID, DZRQ, SFSC);
alter table URP.RECONFILE_INFO
  add constraint RECONFILEINFO_PRIMARYKEY primary key (DZWJID);

prompt
prompt Creating table RECONFILE_REDOWNLOAD
prompt ===================================
prompt
create table URP.RECONFILE_REDOWNLOAD
(
  dzwjcxzid VARCHAR2(32) default sys_guid() not null,
  qdid      VARCHAR2(32) not null,
  dzrq      DATE not null,
  xzjg      VARCHAR2(2) not null,
  sbyy      VARCHAR2(50),
  xzcs      NUMBER default 0 not null,
  jlcjsj    TIMESTAMP(6) not null,
  zhxzsj    TIMESTAMP(6) not null,
  jgbm      VARCHAR2(15) not null,
  bz        VARCHAR2(100)
)
;
comment on table URP.RECONFILE_REDOWNLOAD
  is '对账文件重下载表';
comment on column URP.RECONFILE_REDOWNLOAD.dzwjcxzid
  is '对账文件重下载ID';
comment on column URP.RECONFILE_REDOWNLOAD.qdid
  is '渠道id';
comment on column URP.RECONFILE_REDOWNLOAD.dzrq
  is '对账日期';
comment on column URP.RECONFILE_REDOWNLOAD.xzjg
  is '下载结果（0：失败，1：成功）';
comment on column URP.RECONFILE_REDOWNLOAD.sbyy
  is '下载失败原因';
comment on column URP.RECONFILE_REDOWNLOAD.xzcs
  is '下载次数';
comment on column URP.RECONFILE_REDOWNLOAD.jlcjsj
  is '记录创建时间';
comment on column URP.RECONFILE_REDOWNLOAD.zhxzsj
  is '最后下载时间';
comment on column URP.RECONFILE_REDOWNLOAD.jgbm
  is '机构编码';
comment on column URP.RECONFILE_REDOWNLOAD.bz
  is '备注';
alter table URP.RECONFILE_REDOWNLOAD
  add constraint RECONFILEREDOWNLOAD_PRIMARYKEY primary key (DZWJCXZID);

prompt
prompt Creating table RECONHIS_STATISTICS
prompt ==================================
prompt
create table URP.RECONHIS_STATISTICS
(
  dzjglstjid VARCHAR2(32) default sys_guid() not null,
  dzrq       DATE not null,
  dzqd       VARCHAR2(100),
  wcdzqd     VARCHAR2(100),
  wwcdzqd    VARCHAR2(100),
  wdzqd      VARCHAR2(100),
  zpqd       VARCHAR2(100),
  zbpqd      VARCHAR2(50),
  dzqdsl     NUMBER default 0,
  wcdzqdsl   NUMBER default 0,
  wwcdzqdsl  NUMBER default 0,
  wdzqdsl    NUMBER default 0,
  zpqdsl     NUMBER default 0,
  zbpqdsl    NUMBER default 0,
  qdjyzbs    NUMBER default 0,
  qdjyzje    NUMBER(12,2),
  ycjyzbs    NUMBER default 0,
  qdycjyzje  NUMBER(12,2),
  jgbm       VARCHAR2(15) not null,
  sfsc       VARCHAR2(2) default 0 not null,
  bz         VARCHAR2(100),
  bly1       VARCHAR2(50),
  bly2       VARCHAR2(50),
  bly3       VARCHAR2(50),
  hisjyzbs   NUMBER,
  hisjyzje   NUMBER(12,2),
  hisycjyzje NUMBER(12,2),
  qdycjyzbs  NUMBER,
  hisycjyzbs NUMBER
)
;
comment on table URP.RECONHIS_STATISTICS
  is '对账结果历史统计表';
comment on column URP.RECONHIS_STATISTICS.dzjglstjid
  is '对账结果历史统计表Id';
comment on column URP.RECONHIS_STATISTICS.dzrq
  is '对账日期';
comment on column URP.RECONHIS_STATISTICS.dzqd
  is '对账渠道';
comment on column URP.RECONHIS_STATISTICS.wcdzqd
  is '完成对账渠道';
comment on column URP.RECONHIS_STATISTICS.wwcdzqd
  is '未完成对账渠道';
comment on column URP.RECONHIS_STATISTICS.wdzqd
  is '未对账渠道';
comment on column URP.RECONHIS_STATISTICS.zpqd
  is '账平渠道';
comment on column URP.RECONHIS_STATISTICS.zbpqd
  is '账不平渠道 ';
comment on column URP.RECONHIS_STATISTICS.dzqdsl
  is '对账渠道数量';
comment on column URP.RECONHIS_STATISTICS.wcdzqdsl
  is '完成对账渠道数量';
comment on column URP.RECONHIS_STATISTICS.wwcdzqdsl
  is '未完成对账渠道数量';
comment on column URP.RECONHIS_STATISTICS.wdzqdsl
  is '未对账渠道数量';
comment on column URP.RECONHIS_STATISTICS.zpqdsl
  is '账平渠道数量';
comment on column URP.RECONHIS_STATISTICS.zbpqdsl
  is '账不平渠道数量';
comment on column URP.RECONHIS_STATISTICS.qdjyzbs
  is '渠道交易总笔数';
comment on column URP.RECONHIS_STATISTICS.qdjyzje
  is '渠道交易总金额';
comment on column URP.RECONHIS_STATISTICS.ycjyzbs
  is '异常交易总笔数（渠道和His并集）';
comment on column URP.RECONHIS_STATISTICS.qdycjyzje
  is '渠道异常交易总金额';
comment on column URP.RECONHIS_STATISTICS.jgbm
  is '机构编码';
comment on column URP.RECONHIS_STATISTICS.sfsc
  is '是否删除（1：已删除，0：未删除）';
comment on column URP.RECONHIS_STATISTICS.bz
  is '备注';
comment on column URP.RECONHIS_STATISTICS.bly1
  is '保留域1';
comment on column URP.RECONHIS_STATISTICS.bly2
  is '保留域2';
comment on column URP.RECONHIS_STATISTICS.bly3
  is '保留域3';
comment on column URP.RECONHIS_STATISTICS.hisjyzbs
  is 'His交易总笔数';
comment on column URP.RECONHIS_STATISTICS.hisjyzje
  is 'His交易总金额';
comment on column URP.RECONHIS_STATISTICS.hisycjyzje
  is 'His异常交易总金额';
comment on column URP.RECONHIS_STATISTICS.qdycjyzbs
  is '渠道异常交易总笔数';
comment on column URP.RECONHIS_STATISTICS.hisycjyzbs
  is 'His异常交易总笔数';
create index URP.DZRQ_JGBM_SFSC on URP.RECONHIS_STATISTICS (DZRQ, JGBM, SFSC);
alter table URP.RECONHIS_STATISTICS
  add constraint RECONHISSTATISTICS_PK primary key (DZJGLSTJID);

prompt
prompt Creating table RECONRESULT_DETAIL
prompt =================================
prompt
create table URP.RECONRESULT_DETAIL
(
  dzjgmxid VARCHAR2(32) default sys_guid() not null,
  qdid     VARCHAR2(32) not null,
  hisid    VARCHAR2(32),
  qdlsid   VARCHAR2(32),
  dzjg     VARCHAR2(2) default 1 not null,
  yclx     VARCHAR2(2),
  dzjgms   VARCHAR2(100),
  dzrq     DATE default sysdate not null,
  jlsj     TIMESTAMP(6) not null,
  ydzje    NUMBER(12,2) not null,
  ydzclbs  VARCHAR2(2),
  ydzfjmc  VARCHAR2(50),
  ydzfjlj  VARCHAR2(100),
  ydzclms  VARCHAR2(100),
  ydzclsj  TIMESTAMP(6),
  ydzclr   VARCHAR2(20),
  bz       VARCHAR2(100),
  sfsc     VARCHAR2(2) default 0 not null,
  bly1     VARCHAR2(50),
  bly2     VARCHAR2(50),
  bly3     VARCHAR2(50)
)
;
comment on table URP.RECONRESULT_DETAIL
  is '对账结果明细表';
comment on column URP.RECONRESULT_DETAIL.dzjgmxid
  is '结果明细表主键id';
comment on column URP.RECONRESULT_DETAIL.qdid
  is '渠道主键Id（为交易渠道，不含HIS）';
comment on column URP.RECONRESULT_DETAIL.hisid
  is 'HIS流水表主键ID';
comment on column URP.RECONRESULT_DETAIL.qdlsid
  is '交易渠道主键 ID，与channel_id匹配决定渠道流水表';
comment on column URP.RECONRESULT_DETAIL.dzjg
  is '对账结果（1:正常交易/0:异常交易）';
comment on column URP.RECONRESULT_DETAIL.yclx
  is '异常类型，交易结果为异常交易时填写（0：正常交易，1：HIS有渠道无，2：His无渠道有，3：渠道成功、HIS失败，4：HIS成功、渠道失败，5：HIS一条记录、渠道多条记录，6：HIS多条记录、渠道一条记录，7：HIS与渠道金额不一致）';
comment on column URP.RECONRESULT_DETAIL.dzjgms
  is '对账结果描述';
comment on column URP.RECONRESULT_DETAIL.dzrq
  is '对账日期';
comment on column URP.RECONRESULT_DETAIL.jlsj
  is '对账结果记录时间';
comment on column URP.RECONRESULT_DETAIL.ydzje
  is '应到账金额，默认为HIS交易金额（交易渠道应与实际到账匹配，故统计无意义）';
comment on column URP.RECONRESULT_DETAIL.ydzclbs
  is '应到账处理标识（1：已处理，0：未处理）';
comment on column URP.RECONRESULT_DETAIL.ydzfjmc
  is '应到账处理附件名称';
comment on column URP.RECONRESULT_DETAIL.ydzfjlj
  is '应到账处理附件保存路径';
comment on column URP.RECONRESULT_DETAIL.ydzclms
  is '应到账处理备注';
comment on column URP.RECONRESULT_DETAIL.ydzclsj
  is '应到账处理时间';
comment on column URP.RECONRESULT_DETAIL.ydzclr
  is '应到账处理人';
comment on column URP.RECONRESULT_DETAIL.bz
  is '备注';
comment on column URP.RECONRESULT_DETAIL.sfsc
  is '删除状态（1：删除，0：未删除）';
comment on column URP.RECONRESULT_DETAIL.bly1
  is '保留域1';
comment on column URP.RECONRESULT_DETAIL.bly2
  is '保留域2';
comment on column URP.RECONRESULT_DETAIL.bly3
  is '保留域3';
create index URP.RETS_QH on URP.RECONRESULT_DETAIL (HISID, QDLSID);
create index URP.RETS_QY on URP.RECONRESULT_DETAIL (QDID, YCLX);
create index URP.RETS_SD on URP.RECONRESULT_DETAIL (SFSC, DZRQ);
alter table URP.RECONRESULT_DETAIL
  add constraint RECONRESULT_DETAIL_PRIMARYKEY primary key (DZJGMXID);

prompt
prompt Creating table SCANCODE_TRANSFLOW
prompt =================================
prompt
create table URP.SCANCODE_TRANSFLOW
(
  lsid   VARCHAR2(32) default sys_guid() not null,
  qdzhid VARCHAR2(32),
  shbh   VARCHAR2(20),
  zdbh   VARCHAR2(20),
  jyckh  VARCHAR2(50) not null,
  jylsh  VARCHAR2(50),
  qqflsh VARCHAR2(50),
  yjylsh VARCHAR2(50),
  shddh  VARCHAR2(30),
  zdhm   VARCHAR2(50),
  spmc   VARCHAR2(30),
  jysj   VARCHAR2(20) not null,
  yhjyzh VARCHAR2(30),
  jyje   NUMBER(12,2) default 0.00 not null,
  jyzt   VARCHAR2(2) default 1 not null,
  zhye   NUMBER(12,2) default 0.00,
  ywlx   VARCHAR2(20) not null,
  jybz   VARCHAR2(100),
  jlcjsj TIMESTAMP(6) default sysdate not null,
  dzrq   DATE default sysdate not null,
  dzbs   VARCHAR2(2) default 0 not null,
  crkbs  VARCHAR2(2) default 0 not null,
  sfsc   VARCHAR2(2) default 0 not null,
  bly1   VARCHAR2(50),
  bly2   VARCHAR2(50),
  bly3   VARCHAR2(50),
  jgbm   VARCHAR2(15) not null,
  dzbh   VARCHAR2(50)
)
;
comment on table URP.SCANCODE_TRANSFLOW
  is '扫码交易对账流水表';
comment on column URP.SCANCODE_TRANSFLOW.lsid
  is '扫码交易流水主键ID';
comment on column URP.SCANCODE_TRANSFLOW.qdzhid
  is '渠道结算账户ID';
comment on column URP.SCANCODE_TRANSFLOW.shbh
  is '商户编号';
comment on column URP.SCANCODE_TRANSFLOW.zdbh
  is '终端编号';
comment on column URP.SCANCODE_TRANSFLOW.jyckh
  is '交易参考号（系统跟踪号、业务流水号）';
comment on column URP.SCANCODE_TRANSFLOW.jylsh
  is '交易流水号（账务流水号）';
comment on column URP.SCANCODE_TRANSFLOW.qqflsh
  is '请求方流水号';
comment on column URP.SCANCODE_TRANSFLOW.yjylsh
  is '原交易流水号：交易为后续类交易时有值';
comment on column URP.SCANCODE_TRANSFLOW.shddh
  is '商户订单号';
comment on column URP.SCANCODE_TRANSFLOW.zdhm
  is '账单号码';
comment on column URP.SCANCODE_TRANSFLOW.spmc
  is '商品名称';
comment on column URP.SCANCODE_TRANSFLOW.jysj
  is '交易时间';
comment on column URP.SCANCODE_TRANSFLOW.yhjyzh
  is '用户交易账号（支付宝账号/银行卡号）';
comment on column URP.SCANCODE_TRANSFLOW.jyje
  is '交易金额（单位：元）';
comment on column URP.SCANCODE_TRANSFLOW.jyzt
  is '交易状态（0：失败，1：成功，2：未知）';
comment on column URP.SCANCODE_TRANSFLOW.zhye
  is '账户余额（单位：元）';
comment on column URP.SCANCODE_TRANSFLOW.ywlx
  is '业务类型（在线支付、交易退款）';
comment on column URP.SCANCODE_TRANSFLOW.jybz
  is '交易备注';
comment on column URP.SCANCODE_TRANSFLOW.jlcjsj
  is '记录创建时间';
comment on column URP.SCANCODE_TRANSFLOW.dzrq
  is '对账日期';
comment on column URP.SCANCODE_TRANSFLOW.dzbs
  is '对账标识（1：已对账，0：未对账）';
comment on column URP.SCANCODE_TRANSFLOW.crkbs
  is '重入库标识（1：重入库，0：原始入库）';
comment on column URP.SCANCODE_TRANSFLOW.sfsc
  is '删除状态（1：删除，0：未删除）';
comment on column URP.SCANCODE_TRANSFLOW.bly1
  is '保留域1';
comment on column URP.SCANCODE_TRANSFLOW.bly2
  is '保留域2';
comment on column URP.SCANCODE_TRANSFLOW.bly3
  is '保留域3';
comment on column URP.SCANCODE_TRANSFLOW.jgbm
  is '机构编码';
comment on column URP.SCANCODE_TRANSFLOW.dzbh
  is '对账编号';
create index URP.SHBH_JYCKH_DZRQ_SFSC_DZBS_JGBM on URP.SCANCODE_TRANSFLOW (SHBH, JYCKH, DZRQ, DZBS, SFSC, JGBM);
alter table URP.SCANCODE_TRANSFLOW
  add constraint SCANCODE_TRANSFLOW_PK primary key (LSID);

prompt
prompt Creating table TRADEHANDLE_WATER
prompt ================================
prompt
create table URP.TRADEHANDLE_WATER
(
  jycllsid VARCHAR2(32) not null,
  cljlid   VARCHAR2(32) not null,
  ptlsh    VARCHAR2(32) not null,
  ptddh    VARCHAR2(30),
  jyddh    VARCHAR2(30),
  jylsh    VARCHAR2(30),
  jyckh    VARCHAR2(30),
  pch      VARCHAR2(10),
  cxlsh    VARCHAR2(30),
  yjyddh   VARCHAR2(30),
  jyje     NUMBER(12,2) not null,
  jysj     VARCHAR2(20) not null,
  fhm      VARCHAR2(30),
  fhjgms   VARCHAR2(100),
  jylx     VARCHAR2(30),
  jyzt     VARCHAR2(2),
  sfsc     VARCHAR2(2) not null,
  jgbm     VARCHAR2(15) not null,
  jlcjsj   TIMESTAMP(6) not null,
  cjr      VARCHAR2(20),
  zhxgsj   TIMESTAMP(6),
  zhxgr    VARCHAR2(20),
  bz       VARCHAR2(100),
  bly      VARCHAR2(50)
)
;
comment on table URP.TRADEHANDLE_WATER
  is '交易处理流水表';
comment on column URP.TRADEHANDLE_WATER.jycllsid
  is '交易处理流水表主键Id';
comment on column URP.TRADEHANDLE_WATER.cljlid
  is '处理记录ID（实时监控表ID或对账结果明细表ID）';
comment on column URP.TRADEHANDLE_WATER.ptlsh
  is '对账平台流水号';
comment on column URP.TRADEHANDLE_WATER.ptddh
  is '平台订单号';
comment on column URP.TRADEHANDLE_WATER.jyddh
  is '交易订单号/商户订单号';
comment on column URP.TRADEHANDLE_WATER.jylsh
  is '交易流水号';
comment on column URP.TRADEHANDLE_WATER.jyckh
  is '交易参考号';
comment on column URP.TRADEHANDLE_WATER.pch
  is '批次号';
comment on column URP.TRADEHANDLE_WATER.cxlsh
  is '查询流水号';
comment on column URP.TRADEHANDLE_WATER.yjyddh
  is '原交易订单号（反向交易时用于查询原交易）';
comment on column URP.TRADEHANDLE_WATER.jyje
  is '交易金额';
comment on column URP.TRADEHANDLE_WATER.jysj
  is '交易时间';
comment on column URP.TRADEHANDLE_WATER.fhm
  is '返回码';
comment on column URP.TRADEHANDLE_WATER.fhjgms
  is '返回结果描述';
comment on column URP.TRADEHANDLE_WATER.jylx
  is '交易类型';
comment on column URP.TRADEHANDLE_WATER.jyzt
  is '交易状态';
comment on column URP.TRADEHANDLE_WATER.sfsc
  is '是否删除';
comment on column URP.TRADEHANDLE_WATER.jgbm
  is '机构编码';
comment on column URP.TRADEHANDLE_WATER.jlcjsj
  is '创建日期';
comment on column URP.TRADEHANDLE_WATER.cjr
  is '创建人';
comment on column URP.TRADEHANDLE_WATER.zhxgsj
  is '最后修改日期';
comment on column URP.TRADEHANDLE_WATER.zhxgr
  is '最后修改人';
comment on column URP.TRADEHANDLE_WATER.bz
  is '备注';
comment on column URP.TRADEHANDLE_WATER.bly
  is '保留域';
alter table URP.TRADEHANDLE_WATER
  add constraint TRADEHANDLE_JYCLLSID primary key (JYCLLSID);

prompt
prompt Creating table UCOMPOS_CONFIG
prompt =============================
prompt
create table URP.UCOMPOS_CONFIG
(
  pzid   VARCHAR2(32) default sys_guid() not null,
  yybh   VARCHAR2(20) not null,
  rzbm   VARCHAR2(30) not null,
  jylybh VARCHAR2(20) not null,
  shbh   VARCHAR2(30) not null,
  zdbh   VARCHAR2(20) not null,
  ip     VARCHAR2(15),
  sfsc   VARCHAR2(2) not null,
  cjsj   TIMESTAMP(6) default sysdate not null,
  cjr    VARCHAR2(20),
  zhxgsj TIMESTAMP(6),
  zhxgr  VARCHAR2(20),
  bz     VARCHAR2(100)
)
;
comment on table URP.UCOMPOS_CONFIG
  is '调银商TCOMPOS终端DLL配置信息表';
comment on column URP.UCOMPOS_CONFIG.pzid
  is '配置表Id';
comment on column URP.UCOMPOS_CONFIG.yybh
  is '医院编号';
comment on column URP.UCOMPOS_CONFIG.rzbm
  is '认证编码';
comment on column URP.UCOMPOS_CONFIG.jylybh
  is '交易来源编号（为每个交易窗口或自助编的唯一编号）';
comment on column URP.UCOMPOS_CONFIG.shbh
  is '商户编号';
comment on column URP.UCOMPOS_CONFIG.zdbh
  is '终端编号';
comment on column URP.UCOMPOS_CONFIG.ip
  is '终端所在电脑IP地址';
comment on column URP.UCOMPOS_CONFIG.sfsc
  is '是否删除（1：是，0：否）';
comment on column URP.UCOMPOS_CONFIG.cjsj
  is '创建时间';
comment on column URP.UCOMPOS_CONFIG.cjr
  is '创建人';
comment on column URP.UCOMPOS_CONFIG.zhxgsj
  is '最后修改时间';
comment on column URP.UCOMPOS_CONFIG.zhxgr
  is '最后修改人';
comment on column URP.UCOMPOS_CONFIG.bz
  is '备注';
alter table URP.UCOMPOS_CONFIG
  add constraint PK_UCOMPOS_CONFIG primary key (PZID);

prompt
prompt Creating table UCOMPOS_LOG_INFO
prompt ===============================
prompt
create table URP.UCOMPOS_LOG_INFO
(
  rzid   VARCHAR2(32) default sys_guid() not null,
  sblx   VARCHAR2(2),
  yybh   VARCHAR2(15) not null,
  jlcjsj VARCHAR2(20) not null,
  rznr   CLOB not null,
  bz     VARCHAR2(100)
)
;
comment on column URP.UCOMPOS_LOG_INFO.rzid
  is '设备日志id，主键';
comment on column URP.UCOMPOS_LOG_INFO.sblx
  is '设备类型（0：pos，1：自助）';
comment on column URP.UCOMPOS_LOG_INFO.yybh
  is '医院编号';
comment on column URP.UCOMPOS_LOG_INFO.jlcjsj
  is '记录创建时间';
comment on column URP.UCOMPOS_LOG_INFO.rznr
  is '日志内容';
comment on column URP.UCOMPOS_LOG_INFO.bz
  is '备注';
alter table URP.UCOMPOS_LOG_INFO
  add constraint EQUIPMENTLOG_PRIMARYKEY primary key (RZID);

prompt
prompt Creating table UCOMPOS_TRADE_INFO
prompt =================================
prompt
create table URP.UCOMPOS_TRADE_INFO
(
  jylsid   VARCHAR2(32) default sys_guid() not null,
  qqjybw   CLOB,
  yybh     VARCHAR2(20),
  rzbm     VARCHAR2(30),
  czybh    VARCHAR2(20),
  czyxm    VARCHAR2(30),
  hzxm     VARCHAR2(30),
  hzblh    VARCHAR2(30),
  bcjyjzkh VARCHAR2(50),
  jyqd     VARCHAR2(2),
  jylybh   VARCHAR2(20),
  jkmc     VARCHAR2(20),
  ptlsh    VARCHAR2(30),
  jyddh    VARCHAR2(50),
  yjyddh   VARCHAR2(50),
  yspzh    VARCHAR2(20),
  ysjyckh  VARCHAR2(30),
  yyspzh   VARCHAR2(20),
  yysjyckh VARCHAR2(30),
  fqjysj   VARCHAR2(20) not null,
  wcjysj   VARCHAR2(20),
  jyzt     VARCHAR2(2) not null,
  jylx     VARCHAR2(2),
  fhjybw   CLOB,
  dyfwybs  VARCHAR2(30),
  bz       VARCHAR2(100),
  jyje     VARCHAR2(25)
)
;
comment on table URP.UCOMPOS_TRADE_INFO
  is '调银商TCOMPOS终端DLL交易信息表';
comment on column URP.UCOMPOS_TRADE_INFO.jylsid
  is '交易流水Id';
comment on column URP.UCOMPOS_TRADE_INFO.qqjybw
  is '请求交易报文(调银商DLL接口报文)';
comment on column URP.UCOMPOS_TRADE_INFO.yybh
  is '医院编号';
comment on column URP.UCOMPOS_TRADE_INFO.rzbm
  is '认证编码';
comment on column URP.UCOMPOS_TRADE_INFO.czybh
  is '操作员编号';
comment on column URP.UCOMPOS_TRADE_INFO.czyxm
  is '操作员姓名';
comment on column URP.UCOMPOS_TRADE_INFO.hzxm
  is '患者姓名';
comment on column URP.UCOMPOS_TRADE_INFO.hzblh
  is '患者病历号';
comment on column URP.UCOMPOS_TRADE_INFO.bcjyjzkh
  is '本次就医介质卡号';
comment on column URP.UCOMPOS_TRADE_INFO.jyqd
  is '交易渠道（1：医保，2：银联卡，3：微信，4：云闪付）';
comment on column URP.UCOMPOS_TRADE_INFO.jylybh
  is '交易来源编号（窗口POS、自助终端编号，以便从配置表找到对应的配置信息）';
comment on column URP.UCOMPOS_TRADE_INFO.jkmc
  is '接口名称';
comment on column URP.UCOMPOS_TRADE_INFO.ptlsh
  is '平台流水号';
comment on column URP.UCOMPOS_TRADE_INFO.jyddh
  is '交易订单号';
comment on column URP.UCOMPOS_TRADE_INFO.yjyddh
  is '原交易订单号（撤销时用）';
comment on column URP.UCOMPOS_TRADE_INFO.yspzh
  is '银商凭证号';
comment on column URP.UCOMPOS_TRADE_INFO.ysjyckh
  is '银商交易参考号';
comment on column URP.UCOMPOS_TRADE_INFO.yyspzh
  is '原银商凭证号';
comment on column URP.UCOMPOS_TRADE_INFO.yysjyckh
  is '原银商交易参考号';
comment on column URP.UCOMPOS_TRADE_INFO.fqjysj
  is '发起交易时间';
comment on column URP.UCOMPOS_TRADE_INFO.wcjysj
  is '完成交易时间';
comment on column URP.UCOMPOS_TRADE_INFO.jyzt
  is '交易状态（1：成功，0：失败，2：未知，3：交易中）';
comment on column URP.UCOMPOS_TRADE_INFO.jylx
  is '交易类型（1：消费，2：撤销，3：退货）';
comment on column URP.UCOMPOS_TRADE_INFO.fhjybw
  is '返回交易报文(银商DLL接口返回报文)';
comment on column URP.UCOMPOS_TRADE_INFO.dyfwybs
  is '调用方唯一标识';
comment on column URP.UCOMPOS_TRADE_INFO.bz
  is '备注';
comment on column URP.UCOMPOS_TRADE_INFO.jyje
  is '交易金额';
alter table URP.UCOMPOS_TRADE_INFO
  add constraint PK_UCOMPOS_TRADE_INFO primary key (JYLSID);

prompt
prompt Creating table UNIONPAYCF_TRANSFLOW
prompt ===================================
prompt
create table URP.UNIONPAYCF_TRANSFLOW
(
  ylysflsid VARCHAR2(32) default sys_guid() not null,
  qdzhid    VARCHAR2(32),
  shbh      VARCHAR2(20),
  zdbh      VARCHAR2(20),
  jyckh     VARCHAR2(50),
  jylsh     VARCHAR2(50) not null,
  qqflsh    VARCHAR2(50),
  yjylsh    VARCHAR2(50),
  shddh     VARCHAR2(30),
  zdhm      VARCHAR2(50),
  spmc      VARCHAR2(30),
  jysj      VARCHAR2(20) not null,
  yhjyzh    VARCHAR2(30),
  jyje      NUMBER(12,2) default 0.00 not null,
  jyzt      VARCHAR2(2) default 1 not null,
  zhye      NUMBER(12,2) default 0.00,
  ywlx      VARCHAR2(20) not null,
  jybz      VARCHAR2(100),
  jlcjsj    TIMESTAMP(6) default sysdate not null,
  dzrq      DATE default sysdate not null,
  dzbs      VARCHAR2(2) default 0 not null,
  crkbs     VARCHAR2(2) default 0 not null,
  jgbm      VARCHAR2(15) not null,
  sfsc      VARCHAR2(2) default 0 not null,
  bly1      VARCHAR2(50),
  bly2      VARCHAR2(50),
  bly3      VARCHAR2(50),
  dzbh      VARCHAR2(50)
)
;
comment on table URP.UNIONPAYCF_TRANSFLOW
  is '银联云闪付交易流水表';
comment on column URP.UNIONPAYCF_TRANSFLOW.ylysflsid
  is '银联云闪付流水主键ID';
comment on column URP.UNIONPAYCF_TRANSFLOW.qdzhid
  is '渠道结算账户ID';
comment on column URP.UNIONPAYCF_TRANSFLOW.shbh
  is '商户编号';
comment on column URP.UNIONPAYCF_TRANSFLOW.zdbh
  is '终端编号';
comment on column URP.UNIONPAYCF_TRANSFLOW.jyckh
  is '交易参考号（系统跟踪号、业务流水号）';
comment on column URP.UNIONPAYCF_TRANSFLOW.jylsh
  is '交易流水号（账务流水号）';
comment on column URP.UNIONPAYCF_TRANSFLOW.qqflsh
  is '请求方流水号';
comment on column URP.UNIONPAYCF_TRANSFLOW.yjylsh
  is '原交易流水号：交易为后续类交易时有值';
comment on column URP.UNIONPAYCF_TRANSFLOW.shddh
  is '商户订单号';
comment on column URP.UNIONPAYCF_TRANSFLOW.zdhm
  is '账单号码';
comment on column URP.UNIONPAYCF_TRANSFLOW.spmc
  is '商品名称';
comment on column URP.UNIONPAYCF_TRANSFLOW.jysj
  is '交易时间';
comment on column URP.UNIONPAYCF_TRANSFLOW.yhjyzh
  is '用户交易账号（支付宝账号/银行卡号）';
comment on column URP.UNIONPAYCF_TRANSFLOW.jyje
  is '交易金额（单位：元）';
comment on column URP.UNIONPAYCF_TRANSFLOW.jyzt
  is '交易状态（0：失败，1：成功，2：未知）';
comment on column URP.UNIONPAYCF_TRANSFLOW.zhye
  is '账户余额（单位：元）';
comment on column URP.UNIONPAYCF_TRANSFLOW.ywlx
  is '业务类型（在线支付、交易退款）';
comment on column URP.UNIONPAYCF_TRANSFLOW.jybz
  is '交易备注';
comment on column URP.UNIONPAYCF_TRANSFLOW.jlcjsj
  is '记录创建时间';
comment on column URP.UNIONPAYCF_TRANSFLOW.dzrq
  is '对账日期';
comment on column URP.UNIONPAYCF_TRANSFLOW.dzbs
  is '对账标识（1：已对账，0：未对账）';
comment on column URP.UNIONPAYCF_TRANSFLOW.crkbs
  is '重入库标识（1：重入库，0：原始入库）';
comment on column URP.UNIONPAYCF_TRANSFLOW.jgbm
  is '机构编码';
comment on column URP.UNIONPAYCF_TRANSFLOW.sfsc
  is '删除状态（1：删除，0：未删除）';
comment on column URP.UNIONPAYCF_TRANSFLOW.bly1
  is '保留域1';
comment on column URP.UNIONPAYCF_TRANSFLOW.bly2
  is '保留域2';
comment on column URP.UNIONPAYCF_TRANSFLOW.bly3
  is '保留域3';
comment on column URP.UNIONPAYCF_TRANSFLOW.dzbh
  is '对账编号';
create index URP.QDZH_JYCKH_DZRQ_SFSC_DZBS_JGBM on URP.UNIONPAYCF_TRANSFLOW (QDZHID, JYCKH, DZRQ, DZBS, JGBM, SFSC);
alter table URP.UNIONPAYCF_TRANSFLOW
  add constraint UNIONPAYCF_TRANSFLOW_PK primary key (YLYSFLSID);

prompt
prompt Creating table UNIONPAYOMNI_TRANSFLOW
prompt =====================================
prompt
create table URP.UNIONPAYOMNI_TRANSFLOW
(
  ylqqdlsid VARCHAR2(32) default sys_guid() not null,
  qdzhid    VARCHAR2(32),
  shbh      VARCHAR2(20),
  zdbh      VARCHAR2(20),
  jyckh     VARCHAR2(50) not null,
  jylsh     VARCHAR2(50) not null,
  qqflsh    VARCHAR2(50),
  yjylsh    VARCHAR2(50),
  shddh     VARCHAR2(30),
  zdhm      VARCHAR2(50),
  spmc      VARCHAR2(30),
  jysj      VARCHAR2(20) not null,
  yhjyzh    VARCHAR2(30),
  jyje      NUMBER(12,2) default 0.00 not null,
  jyzt      VARCHAR2(2) default 1 not null,
  zhye      NUMBER(12,2) default 0.00,
  ywlx      VARCHAR2(20) not null,
  jybz      VARCHAR2(100),
  jlcjsj    TIMESTAMP(6) default sysdate not null,
  dzrq      DATE default sysdate not null,
  dzbs      VARCHAR2(2) default 0 not null,
  crkbs     VARCHAR2(2) default 0 not null,
  jgbm      VARCHAR2(15) not null,
  sfsc      VARCHAR2(2) default 0 not null,
  bly1      VARCHAR2(50),
  bly2      VARCHAR2(50),
  bly3      VARCHAR2(50),
  dzbh      VARCHAR2(50)
)
;
comment on table URP.UNIONPAYOMNI_TRANSFLOW
  is '银联全渠道对账流水表';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.ylqqdlsid
  is '银联全渠道流水主键ID';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.qdzhid
  is '渠道结算账户ID';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.shbh
  is '商户编号';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.zdbh
  is '终端编号';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.jyckh
  is '交易参考号（系统跟踪号、业务流水号）';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.jylsh
  is '交易流水号（账务流水号）';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.qqflsh
  is '请求方流水号';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.yjylsh
  is '原交易流水号：交易为后续类交易时有值';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.shddh
  is '商户订单号';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.zdhm
  is '账单号码';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.spmc
  is '商品名称';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.jysj
  is '交易时间';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.yhjyzh
  is '用户交易账号（支付宝账号/银行卡号）';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.jyje
  is '交易金额（单位：元）';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.jyzt
  is '交易状态（0：失败，1：成功，2：未知）';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.zhye
  is '账户余额（单位：元）';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.ywlx
  is '业务类型（在线支付、交易退款）';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.jybz
  is '交易备注';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.jlcjsj
  is '记录创建时间';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.dzrq
  is '对账日期';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.dzbs
  is '对账标识（1：已对账，0：未对账）';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.crkbs
  is '重入库标识（1：重入库，0：原始入库）';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.jgbm
  is '机构编码';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.sfsc
  is '删除状态（1：删除，0：未删除）';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.bly1
  is '保留域1';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.bly2
  is '保留域2';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.bly3
  is '保留域3';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.dzbh
  is '对账编号';
create index URP.QDZH_CKH_DZRQ_SFSC_DZBS_JGBM on URP.UNIONPAYOMNI_TRANSFLOW (QDZHID, JYCKH, DZRQ, DZBS, JGBM, SFSC);
alter table URP.UNIONPAYOMNI_TRANSFLOW
  add constraint UNIONPAYOMNI_PRIMARYKEY primary key (YLQQDLSID);

prompt
prompt Creating table UNIONPAY_TRANSFLOW
prompt =================================
prompt
create table URP.UNIONPAY_TRANSFLOW
(
  lsid   VARCHAR2(32) default sys_guid() not null,
  qdzhid VARCHAR2(32),
  shbh   VARCHAR2(20),
  zdbh   VARCHAR2(20),
  jyckh  VARCHAR2(50) not null,
  jylsh  VARCHAR2(50) not null,
  qqflsh VARCHAR2(50),
  yjylsh VARCHAR2(50),
  shddh  VARCHAR2(30),
  zdhm   VARCHAR2(50),
  spmc   VARCHAR2(30),
  jysj   VARCHAR2(20) not null,
  yhjyzh VARCHAR2(30),
  jyje   NUMBER(12,2) default 0.00 not null,
  jyzt   VARCHAR2(2) default 1 not null,
  zhye   NUMBER(12,2) default 0.00,
  ywlx   VARCHAR2(20) not null,
  jybz   VARCHAR2(100),
  jlcjsj TIMESTAMP(6) default sysdate not null,
  dzrq   DATE default sysdate not null,
  dzbs   VARCHAR2(2) default 0 not null,
  crkbs  VARCHAR2(2) default 0 not null,
  jgbm   VARCHAR2(15) not null,
  sfsc   VARCHAR2(2) default 0 not null,
  bly1   VARCHAR2(50),
  bly2   VARCHAR2(50),
  bly3   VARCHAR2(50),
  dzbh   VARCHAR2(50),
  ejbs   VARCHAR2(50),
  sxf    NUMBER(12,2) default 0.00 not null,
  qsje   NUMBER(12,2) default 0.00,
  qsrq   VARCHAR2(20)
)
;
comment on table URP.UNIONPAY_TRANSFLOW
  is '银联卡对账流水表';
comment on column URP.UNIONPAY_TRANSFLOW.lsid
  is '银联卡流水主键ID';
comment on column URP.UNIONPAY_TRANSFLOW.qdzhid
  is '渠道结算账户ID';
comment on column URP.UNIONPAY_TRANSFLOW.shbh
  is '商户编号';
comment on column URP.UNIONPAY_TRANSFLOW.zdbh
  is '终端编号';
comment on column URP.UNIONPAY_TRANSFLOW.jyckh
  is '交易参考号（系统跟踪号、业务流水号）';
comment on column URP.UNIONPAY_TRANSFLOW.jylsh
  is '交易流水号（账务流水号）';
comment on column URP.UNIONPAY_TRANSFLOW.qqflsh
  is '请求方流水号';
comment on column URP.UNIONPAY_TRANSFLOW.yjylsh
  is '原交易流水号：交易为后续类交易时有值';
comment on column URP.UNIONPAY_TRANSFLOW.shddh
  is '商户订单号';
comment on column URP.UNIONPAY_TRANSFLOW.zdhm
  is '账单号码';
comment on column URP.UNIONPAY_TRANSFLOW.spmc
  is '商品名称';
comment on column URP.UNIONPAY_TRANSFLOW.jysj
  is '交易时间';
comment on column URP.UNIONPAY_TRANSFLOW.yhjyzh
  is '用户交易账号（支付宝账号/银行卡号）';
comment on column URP.UNIONPAY_TRANSFLOW.jyje
  is '交易金额（单位：元）';
comment on column URP.UNIONPAY_TRANSFLOW.jyzt
  is '交易状态（0：失败，1：成功，2：未知）';
comment on column URP.UNIONPAY_TRANSFLOW.zhye
  is '账户余额（单位：元）';
comment on column URP.UNIONPAY_TRANSFLOW.ywlx
  is '业务类型（在线支付、交易退款）';
comment on column URP.UNIONPAY_TRANSFLOW.jybz
  is '交易备注';
comment on column URP.UNIONPAY_TRANSFLOW.jlcjsj
  is '记录创建时间';
comment on column URP.UNIONPAY_TRANSFLOW.dzrq
  is '对账日期';
comment on column URP.UNIONPAY_TRANSFLOW.dzbs
  is '对账标识（1：已对账，0：未对账）';
comment on column URP.UNIONPAY_TRANSFLOW.crkbs
  is '重入库标识（1：重入库，0：原始入库）';
comment on column URP.UNIONPAY_TRANSFLOW.jgbm
  is '机构编码';
comment on column URP.UNIONPAY_TRANSFLOW.sfsc
  is '删除状态（1：删除，0：未删除）';
comment on column URP.UNIONPAY_TRANSFLOW.bly1
  is '保留域1';
comment on column URP.UNIONPAY_TRANSFLOW.bly2
  is '保留域2（清算金额）';
comment on column URP.UNIONPAY_TRANSFLOW.bly3
  is '保留域3->就诊卡号';
comment on column URP.UNIONPAY_TRANSFLOW.dzbh
  is '对账编号';
comment on column URP.UNIONPAY_TRANSFLOW.ejbs
  is '二级标识（生殖医院-> 发卡行）';
comment on column URP.UNIONPAY_TRANSFLOW.sxf
  is '手续费（单位：元）';
comment on column URP.UNIONPAY_TRANSFLOW.qsje
  is '清算金额（单位：元）';
comment on column URP.UNIONPAY_TRANSFLOW.qsrq
  is '清算日期';
create index URP.PQDZH_CKH_DZRQ_SFSC_DZBS_JGBM on URP.UNIONPAY_TRANSFLOW (QDZHID, DZRQ, DZBS, JGBM, SFSC, JYCKH);
alter table URP.UNIONPAY_TRANSFLOW
  add constraint UNIONPAY_TRANSFLOW_PRIMARYKEY primary key (LSID);

prompt
prompt Creating table WECHAT_CONFIG
prompt ============================
prompt
create table URP.WECHAT_CONFIG
(
  wxpzid       VARCHAR2(32) not null,
  appid        VARCHAR2(30) not null,
  app_secret   VARCHAR2(50),
  original_id  VARCHAR2(20) not null,
  access_token VARCHAR2(130),
  lpgxsj       VARCHAR2(30) not null,
  lpxcsxsj     VARCHAR2(30) not null,
  jsapiticket  VARCHAR2(130),
  pjgxsj       VARCHAR2(50),
  pjxcsxsj     VARCHAR2(50),
  wxmc         VARCHAR2(20),
  wxhm         VARCHAR2(20),
  wxlx         VARCHAR2(2),
  wxms         VARCHAR2(50),
  sfsc         VARCHAR2(2) not null,
  jgbm         VARCHAR2(15) not null,
  cjsj         TIMESTAMP(6) not null,
  cjr          VARCHAR2(20),
  zhxgsj       TIMESTAMP(6) not null,
  zhxgr        VARCHAR2(20),
  bz           VARCHAR2(100),
  bly          VARCHAR2(50)
)
;
comment on table URP.WECHAT_CONFIG
  is '微信配置表';
comment on column URP.WECHAT_CONFIG.wxpzid
  is '微信配置表主键Id';
comment on column URP.WECHAT_CONFIG.appid
  is '微信公众号APPID';
comment on column URP.WECHAT_CONFIG.app_secret
  is '微信公众号秘钥';
comment on column URP.WECHAT_CONFIG.original_id
  is '微信公众号原始ID';
comment on column URP.WECHAT_CONFIG.access_token
  is '微信公众号的访问令牌，有效期2小时';
comment on column URP.WECHAT_CONFIG.lpgxsj
  is '令牌更新时间';
comment on column URP.WECHAT_CONFIG.lpxcsxsj
  is '令牌下次刷新时间';
comment on column URP.WECHAT_CONFIG.jsapiticket
  is '微信公众号JSAPI票据';
comment on column URP.WECHAT_CONFIG.pjgxsj
  is '票据更新时间';
comment on column URP.WECHAT_CONFIG.pjxcsxsj
  is '票据下次刷新时间';
comment on column URP.WECHAT_CONFIG.wxmc
  is '微信名称';
comment on column URP.WECHAT_CONFIG.wxhm
  is '微信号码';
comment on column URP.WECHAT_CONFIG.wxlx
  is '微信公众号类型（订阅号、服务号、企业号）';
comment on column URP.WECHAT_CONFIG.wxms
  is '微信公众号描述';
comment on column URP.WECHAT_CONFIG.sfsc
  is '是否删除';
comment on column URP.WECHAT_CONFIG.jgbm
  is '机构编码';
comment on column URP.WECHAT_CONFIG.cjsj
  is '创建时间';
comment on column URP.WECHAT_CONFIG.cjr
  is '创建人';
comment on column URP.WECHAT_CONFIG.zhxgsj
  is '最后修改时间';
comment on column URP.WECHAT_CONFIG.zhxgr
  is '最后修改人';
comment on column URP.WECHAT_CONFIG.bz
  is '备注';
comment on column URP.WECHAT_CONFIG.bly
  is '保留域';
alter table URP.WECHAT_CONFIG
  add constraint WECHAT_CONFIG_WXPZID primary key (WXPZID);

prompt
prompt Creating table WECHAT_TRANSFLOW
prompt ===============================
prompt
create table URP.WECHAT_TRANSFLOW
(
  lsid   VARCHAR2(32) default sys_guid() not null,
  qdzhid VARCHAR2(32),
  shbh   VARCHAR2(20),
  zdbh   VARCHAR2(20),
  jyckh  VARCHAR2(50),
  jylsh  VARCHAR2(50),
  qqflsh VARCHAR2(50),
  yjylsh VARCHAR2(50),
  shddh  VARCHAR2(30),
  zdhm   VARCHAR2(50),
  spmc   VARCHAR2(30),
  jysj   VARCHAR2(20) not null,
  yhjyzh VARCHAR2(30),
  jyje   NUMBER(12,2) default 0.00 not null,
  jyzt   VARCHAR2(2) default 1 not null,
  zhye   NUMBER(12,2) default 0.00,
  ywlx   VARCHAR2(20) not null,
  jybz   VARCHAR2(100),
  jlcjsj TIMESTAMP(6) default sysdate not null,
  dzrq   DATE default sysdate not null,
  dzbs   VARCHAR2(2) default 0 not null,
  crkbs  VARCHAR2(2) default 0 not null,
  jgbm   VARCHAR2(15) not null,
  sfsc   VARCHAR2(2) default 0 not null,
  bly1   VARCHAR2(50),
  bly2   VARCHAR2(50),
  bly3   VARCHAR2(50),
  dzbh   VARCHAR2(50),
  ejbs   VARCHAR2(15),
  sxf    NUMBER(12,2) default 0.00 not null,
  qsje   NUMBER(12,2) default 0.00,
  qsrq   VARCHAR2(20)
)
;
comment on table URP.WECHAT_TRANSFLOW
  is '微信交易流水表';
comment on column URP.WECHAT_TRANSFLOW.lsid
  is '微信流水主键ID';
comment on column URP.WECHAT_TRANSFLOW.qdzhid
  is '渠道结算账户ID';
comment on column URP.WECHAT_TRANSFLOW.shbh
  is '商户编号';
comment on column URP.WECHAT_TRANSFLOW.zdbh
  is '终端编号';
comment on column URP.WECHAT_TRANSFLOW.jyckh
  is '交易参考号（系统跟踪号、业务流水号）';
comment on column URP.WECHAT_TRANSFLOW.jylsh
  is '交易流水号（账务流水号）';
comment on column URP.WECHAT_TRANSFLOW.qqflsh
  is '请求方流水号';
comment on column URP.WECHAT_TRANSFLOW.yjylsh
  is '原交易流水号：交易为后续类交易时有值';
comment on column URP.WECHAT_TRANSFLOW.shddh
  is '商户订单号';
comment on column URP.WECHAT_TRANSFLOW.zdhm
  is '账单号码';
comment on column URP.WECHAT_TRANSFLOW.spmc
  is '商品名称';
comment on column URP.WECHAT_TRANSFLOW.jysj
  is '交易时间';
comment on column URP.WECHAT_TRANSFLOW.yhjyzh
  is '用户交易账号（支付宝账号/银行卡号）';
comment on column URP.WECHAT_TRANSFLOW.jyje
  is '交易金额（单位：元）';
comment on column URP.WECHAT_TRANSFLOW.jyzt
  is '交易状态（0：失败，1：成功，2：未知）';
comment on column URP.WECHAT_TRANSFLOW.zhye
  is '账户余额（单位：元）';
comment on column URP.WECHAT_TRANSFLOW.ywlx
  is '业务类型（在线支付、交易退款）';
comment on column URP.WECHAT_TRANSFLOW.jybz
  is '交易备注';
comment on column URP.WECHAT_TRANSFLOW.jlcjsj
  is '记录创建时间';
comment on column URP.WECHAT_TRANSFLOW.dzrq
  is '对账日期';
comment on column URP.WECHAT_TRANSFLOW.dzbs
  is '对账标识（1：已对账，0：未对账）';
comment on column URP.WECHAT_TRANSFLOW.crkbs
  is '重入库标识（1：重入库，0：原始入库）';
comment on column URP.WECHAT_TRANSFLOW.jgbm
  is '机构编码';
comment on column URP.WECHAT_TRANSFLOW.sfsc
  is '删除状态（1：删除，0：未删除）';
comment on column URP.WECHAT_TRANSFLOW.bly1
  is '保留域1';
comment on column URP.WECHAT_TRANSFLOW.bly2
  is '保留域2';
comment on column URP.WECHAT_TRANSFLOW.bly3
  is '保留域3->就诊卡号';
comment on column URP.WECHAT_TRANSFLOW.dzbh
  is '对账编号';
comment on column URP.WECHAT_TRANSFLOW.ejbs
  is '二级标识';
comment on column URP.WECHAT_TRANSFLOW.sxf
  is '手续费（单位：元）';
comment on column URP.WECHAT_TRANSFLOW.qsje
  is '清算金额（单位：元）';
comment on column URP.WECHAT_TRANSFLOW.qsrq
  is '清算日期';
create index URP.DZRQ_SFSC_DZS_JGBM_SHDDH_QDZH on URP.WECHAT_TRANSFLOW (QDZHID, SHDDH, DZRQ, DZBS, JGBM, SFSC);
alter table URP.WECHAT_TRANSFLOW
  add constraint WECHAT_TRANSFLOW_PRIMARYKEY primary key (LSID);

prompt
prompt Creating table WF_ABNORMAL_ORDER
prompt ================================
prompt
create table URP.WF_ABNORMAL_ORDER
(
  ycddid  VARCHAR2(32) default sys_guid() not null,
  sqdid   VARCHAR2(32) not null,
  gllsbmc VARCHAR2(15),
  gllsbid VARCHAR2(32),
  ddbh    VARCHAR2(30) not null,
  ddje    NUMBER(12,2) not null,
  yclx    VARCHAR2(2) not null,
  ycms    VARCHAR2(50),
  ddlx    VARCHAR2(2) not null,
  ddclzt  VARCHAR2(2) not null,
  jysj    VARCHAR2(20),
  jlcjsj  TIMESTAMP(6) default sysdate,
  jlcjr   VARCHAR2(20),
  zhxgsj  TIMESTAMP(6),
  zhxgr   VARCHAR2(20),
  jgbm    VARCHAR2(15) not null,
  bz      VARCHAR2(100),
  bly     VARCHAR2(50)
)
;
comment on table URP.WF_ABNORMAL_ORDER
  is '异常订单信息表';
comment on column URP.WF_ABNORMAL_ORDER.ycddid
  is '异常订单Id';
comment on column URP.WF_ABNORMAL_ORDER.sqdid
  is '申请记录表主键Id';
comment on column URP.WF_ABNORMAL_ORDER.gllsbmc
  is '关联流水表名称';
comment on column URP.WF_ABNORMAL_ORDER.gllsbid
  is '关联流水表主键Id';
comment on column URP.WF_ABNORMAL_ORDER.ddbh
  is '订单编号';
comment on column URP.WF_ABNORMAL_ORDER.ddje
  is '订单金额';
comment on column URP.WF_ABNORMAL_ORDER.yclx
  is '异常类型（对账异常类型+His与渠道都不存在）';
comment on column URP.WF_ABNORMAL_ORDER.ycms
  is '异常描述';
comment on column URP.WF_ABNORMAL_ORDER.ddlx
  is '订单类型（0：需医院处理，1：需HIS处理流程）';
comment on column URP.WF_ABNORMAL_ORDER.ddclzt
  is '订单处理状态（0:新增,1:已作废,10:会计确认处理中,11:财务审批通过,12:财务审批不通过,13:会计退回,14:会计处理中,15:会计审批通过,16:会计审批不通过,17:财务审批中,18:会计审批中,2:已完成,3:HIS退回,4:HIS处理中,5:HIS确认退回,6:HIS确认处理中,7:地纬确认退回,8:地纬确认处理中,9:会计确认退回）';
comment on column URP.WF_ABNORMAL_ORDER.jysj
  is '交易时间';
comment on column URP.WF_ABNORMAL_ORDER.jlcjsj
  is '记录创建时间';
comment on column URP.WF_ABNORMAL_ORDER.jlcjr
  is '记录创建人';
comment on column URP.WF_ABNORMAL_ORDER.zhxgsj
  is '最后修改时间';
comment on column URP.WF_ABNORMAL_ORDER.zhxgr
  is '最后修改人';
comment on column URP.WF_ABNORMAL_ORDER.jgbm
  is '机构编码';
comment on column URP.WF_ABNORMAL_ORDER.bz
  is '备注';
comment on column URP.WF_ABNORMAL_ORDER.bly
  is '保留域';
create index URP.IDX_DDCLZT on URP.WF_ABNORMAL_ORDER (DDCLZT, SQDID, DDBH);
alter table URP.WF_ABNORMAL_ORDER
  add primary key (YCDDID);

prompt
prompt Creating table WF_APPLY_RECORD
prompt ==============================
prompt
create table URP.WF_APPLY_RECORD
(
  sqdid   VARCHAR2(32) default sys_guid() not null,
  sqdbh   VARCHAR2(30) not null,
  hzxm    VARCHAR2(50) not null,
  hzzyh   VARCHAR2(32),
  hzjzkh  VARCHAR2(20),
  hzsfzh  VARCHAR2(18),
  sqdlx   VARCHAR2(30) not null,
  sqdclzt VARCHAR2(2) not null,
  sqcjsj  TIMESTAMP(6) default sysdate not null,
  sqcjr   VARCHAR2(20),
  jgbm    VARCHAR2(15) not null,
  bz      VARCHAR2(100),
  bly     VARCHAR2(50)
)
;
comment on table URP.WF_APPLY_RECORD
  is '申请记录表';
comment on column URP.WF_APPLY_RECORD.sqdid
  is '申请记录主键Id';
comment on column URP.WF_APPLY_RECORD.sqdbh
  is '申请单编号（唯一标识）';
comment on column URP.WF_APPLY_RECORD.hzxm
  is '患者姓名';
comment on column URP.WF_APPLY_RECORD.hzzyh
  is '患者住院号';
comment on column URP.WF_APPLY_RECORD.hzjzkh
  is '患者就诊卡号';
comment on column URP.WF_APPLY_RECORD.hzsfzh
  is '患者身份证号';
comment on column URP.WF_APPLY_RECORD.sqdlx
  is '申请单类型（0：医院处理，1：HIS处理，2：医院和HIS共同处理）';
comment on column URP.WF_APPLY_RECORD.sqdclzt
  is '申请单处理状态（0:新增,1:处理中,2:已完成,3:部分已完成,4:已退回,5:部分已退回,6:已作废,7:部分已作废）';
comment on column URP.WF_APPLY_RECORD.sqcjsj
  is '申请创建时间';
comment on column URP.WF_APPLY_RECORD.sqcjr
  is '申请创建人';
comment on column URP.WF_APPLY_RECORD.jgbm
  is '机构编码';
comment on column URP.WF_APPLY_RECORD.bz
  is '备注';
comment on column URP.WF_APPLY_RECORD.bly
  is '保留域';
alter table URP.WF_APPLY_RECORD
  add primary key (SQDID);
alter table URP.WF_APPLY_RECORD
  add constraint UK_APPLY_RECORD unique (SQDBH);

prompt
prompt Creating table WF_HPHANDLE_INFO
prompt ===============================
prompt
create table URP.WF_HPHANDLE_INFO
(
  hjdclid VARCHAR2(32) default sys_guid() not null,
  sqdid   VARCHAR2(32) not null,
  cljd    VARCHAR2(2) not null,
  cllx    VARCHAR2(2) not null,
  clms    VARCHAR2(100) not null,
  fjmc1   VARCHAR2(50),
  fjbclj1 VARCHAR2(100),
  fjmc2   VARCHAR2(50),
  fjbclj2 VARCHAR2(100),
  clsj    TIMESTAMP(6) default sysdate not null,
  clr     VARCHAR2(20),
  zhxgsj  TIMESTAMP(6),
  zhxgr   VARCHAR2(20),
  jdqm    VARCHAR2(20),
  jgbm    VARCHAR2(15) not null,
  bz      VARCHAR2(100),
  bly     VARCHAR2(50)
)
;
comment on table URP.WF_HPHANDLE_INFO
  is 'HIS流程--节点处理信息表';
comment on column URP.WF_HPHANDLE_INFO.hjdclid
  is 'HIS流程节点处理主键Id';
comment on column URP.WF_HPHANDLE_INFO.sqdid
  is '申请记录主键Id';
comment on column URP.WF_HPHANDLE_INFO.cljd
  is '处理节点';
comment on column URP.WF_HPHANDLE_INFO.cllx
  is '处理类型（1:提交,2:确认,3:退回,4:审批通过,5:审批不通过,6:处理,7:作废,8:保存,9:退回保存）';
comment on column URP.WF_HPHANDLE_INFO.clms
  is '处理描述';
comment on column URP.WF_HPHANDLE_INFO.fjmc1
  is '附件名称1';
comment on column URP.WF_HPHANDLE_INFO.fjbclj1
  is '附件保存路径1';
comment on column URP.WF_HPHANDLE_INFO.fjmc2
  is '附件名称2';
comment on column URP.WF_HPHANDLE_INFO.fjbclj2
  is '附件保存路径2';
comment on column URP.WF_HPHANDLE_INFO.clsj
  is '处理时间';
comment on column URP.WF_HPHANDLE_INFO.clr
  is '处理人';
comment on column URP.WF_HPHANDLE_INFO.zhxgsj
  is '最后修改时间';
comment on column URP.WF_HPHANDLE_INFO.zhxgr
  is '最后修改人';
comment on column URP.WF_HPHANDLE_INFO.jdqm
  is '节点签名';
comment on column URP.WF_HPHANDLE_INFO.jgbm
  is '机构编码';
comment on column URP.WF_HPHANDLE_INFO.bz
  is '备注';
comment on column URP.WF_HPHANDLE_INFO.bly
  is '保留域';
alter table URP.WF_HPHANDLE_INFO
  add constraint PK_HPHANDLE_INFO primary key (HJDCLID);

prompt
prompt Creating table WF_MPHANDLE_INFO
prompt ===============================
prompt
create table URP.WF_MPHANDLE_INFO
(
  mjdclid VARCHAR2(32) default sys_guid() not null,
  sqdid   VARCHAR2(32) not null,
  cljd    VARCHAR2(2) not null,
  cllx    VARCHAR2(2) not null,
  clms    VARCHAR2(100) not null,
  fjmc1   VARCHAR2(50),
  fjbclj1 VARCHAR2(100),
  fjmc2   VARCHAR2(50),
  fjbclj2 VARCHAR2(100),
  clsj    TIMESTAMP(6) default sysdate not null,
  clr     VARCHAR2(20),
  zhxgsj  TIMESTAMP(6),
  zhxgr   VARCHAR2(20),
  jdqm    VARCHAR2(20),
  jgbm    VARCHAR2(15) not null,
  bz      VARCHAR2(100),
  bly     VARCHAR2(50)
)
;
comment on table URP.WF_MPHANDLE_INFO
  is '医院流程--节点处理信息表';
comment on column URP.WF_MPHANDLE_INFO.mjdclid
  is '医院流程节点处理主键Id';
comment on column URP.WF_MPHANDLE_INFO.sqdid
  is '申请记录主键Id';
comment on column URP.WF_MPHANDLE_INFO.cljd
  is '处理节点';
comment on column URP.WF_MPHANDLE_INFO.cllx
  is '处理类型（1:提交,2:确认,3:退回,4:审批通过,5:审批不通过,6:处理,7:作废,8:保存,9:退回保存）';
comment on column URP.WF_MPHANDLE_INFO.clms
  is '处理描述';
comment on column URP.WF_MPHANDLE_INFO.fjmc1
  is '附件名称1';
comment on column URP.WF_MPHANDLE_INFO.fjbclj1
  is '附件保存路径1';
comment on column URP.WF_MPHANDLE_INFO.fjmc2
  is '附件名称2';
comment on column URP.WF_MPHANDLE_INFO.fjbclj2
  is '附件保存路径2';
comment on column URP.WF_MPHANDLE_INFO.clsj
  is '处理时间';
comment on column URP.WF_MPHANDLE_INFO.clr
  is '处理人';
comment on column URP.WF_MPHANDLE_INFO.zhxgsj
  is '最后修改时间';
comment on column URP.WF_MPHANDLE_INFO.zhxgr
  is '最后修改人';
comment on column URP.WF_MPHANDLE_INFO.jdqm
  is '节点签名';
comment on column URP.WF_MPHANDLE_INFO.jgbm
  is '机构编码';
comment on column URP.WF_MPHANDLE_INFO.bz
  is '备注';
comment on column URP.WF_MPHANDLE_INFO.bly
  is '保留域';
alter table URP.WF_MPHANDLE_INFO
  add primary key (MJDCLID);

prompt
prompt Creating table WF_STATISTICS
prompt ============================
prompt
create table URP.WF_STATISTICS
(
  xxtjid     VARCHAR2(32) default sys_guid() not null,
  yclx       VARCHAR2(2) not null,
  ycddzs     NUMBER not null,
  ycddzje    NUMBER(12,2) not null,
  yclycddzs  NUMBER not null,
  yclycddzje NUMBER(12,2) not null,
  tjqsrq     DATE not null,
  tjzzrq     DATE not null,
  yclddzs    NUMBER not null,
  yclddzje   NUMBER(12,2) not null,
  yzfddzs    NUMBER not null,
  yzfddzje   NUMBER(12,2) not null,
  sqdzs      VARCHAR2(30),
  sqdzje     VARCHAR2(20) not null,
  jlcjsj     TIMESTAMP(6) not null,
  jgbm       VARCHAR2(15) not null,
  sfsc       VARCHAR2(2) not null,
  bz         VARCHAR2(100) default '',
  bly        VARCHAR2(50)
)
;
comment on table URP.WF_STATISTICS
  is '信息统计表';
comment on column URP.WF_STATISTICS.xxtjid
  is '信息统计主键Id';
comment on column URP.WF_STATISTICS.yclx
  is '异常类型';
comment on column URP.WF_STATISTICS.ycddzs
  is '异常订单总数';
comment on column URP.WF_STATISTICS.ycddzje
  is '异常订单总金额';
comment on column URP.WF_STATISTICS.yclycddzs
  is '已处理异常订单总数';
comment on column URP.WF_STATISTICS.yclycddzje
  is '已处理异常订单总金额';
comment on column URP.WF_STATISTICS.tjqsrq
  is '统计起始日期';
comment on column URP.WF_STATISTICS.tjzzrq
  is '统计终止日期';
comment on column URP.WF_STATISTICS.yclddzs
  is '已处理订单总数';
comment on column URP.WF_STATISTICS.yclddzje
  is '已处理订单总金额';
comment on column URP.WF_STATISTICS.yzfddzs
  is '已作废订单总数';
comment on column URP.WF_STATISTICS.yzfddzje
  is '已作废订单总金额';
comment on column URP.WF_STATISTICS.sqdzs
  is '申请单总数';
comment on column URP.WF_STATISTICS.sqdzje
  is '申请单总金额';
comment on column URP.WF_STATISTICS.jlcjsj
  is '创建日期';
comment on column URP.WF_STATISTICS.jgbm
  is '机构编码';
comment on column URP.WF_STATISTICS.sfsc
  is '是否删除';
comment on column URP.WF_STATISTICS.bz
  is '备注';
comment on column URP.WF_STATISTICS.bly
  is '保留域';
alter table URP.WF_STATISTICS
  add constraint PK_STATISTICS primary key (XXTJID);

prompt
prompt Creating sequence ACT_EVT_LOG_SEQ
prompt =================================
prompt
create sequence URP.ACT_EVT_LOG_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 1
increment by 1
cache 20;


spool off
