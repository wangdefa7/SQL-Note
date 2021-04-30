-------------------------------------------
-- Export file for user IPAY             --
-- Created by Wdf on 2021/1/28, 15:05:08 --
-------------------------------------------

spool ipay-userObject.log

prompt
prompt Creating table ABNORMAL_ORDER_DETL
prompt ==================================
prompt
create table IPAY.ABNORMAL_ORDER_DETL
(
  intradeno   VARCHAR2(30) not null,
  glintradeno VARCHAR2(30),
  clsj        VARCHAR2(20),
  clwcsj      VARCHAR2(20),
  type        VARCHAR2(30),
  yclx        VARCHAR2(30),
  czybh       VARCHAR2(32),
  czyxm       VARCHAR2(32),
  cljg        VARCHAR2(10),
  clms        VARCHAR2(500),
  bz          VARCHAR2(255),
  abnormalid  VARCHAR2(50)
)
;
comment on column IPAY.ABNORMAL_ORDER_DETL.intradeno
  is '交易订单号';
comment on column IPAY.ABNORMAL_ORDER_DETL.glintradeno
  is '关联交易订单号';
comment on column IPAY.ABNORMAL_ORDER_DETL.clsj
  is '处理时间';
comment on column IPAY.ABNORMAL_ORDER_DETL.clwcsj
  is '处理完成时间';
comment on column IPAY.ABNORMAL_ORDER_DETL.type
  is '处理类型';
comment on column IPAY.ABNORMAL_ORDER_DETL.yclx
  is '异常类型';
comment on column IPAY.ABNORMAL_ORDER_DETL.czybh
  is '操作员编号';
comment on column IPAY.ABNORMAL_ORDER_DETL.czyxm
  is '操作员姓名';
comment on column IPAY.ABNORMAL_ORDER_DETL.cljg
  is '处理结果（0：成功，1：失败）';
comment on column IPAY.ABNORMAL_ORDER_DETL.clms
  is '处理描述';
comment on column IPAY.ABNORMAL_ORDER_DETL.bz
  is '备注';
comment on column IPAY.ABNORMAL_ORDER_DETL.abnormalid
  is '主键';

prompt
prompt Creating table BANK_INFO
prompt ========================
prompt
create table IPAY.BANK_INFO
(
  yhid       VARCHAR2(20) not null,
  yhmc       VARCHAR2(40),
  qybz       VARCHAR2(1),
  yhiconpath VARCHAR2(100),
  yhjc       VARCHAR2(20),
  bz         VARCHAR2(50)
)
;
comment on table IPAY.BANK_INFO
  is '银行基本信息';
comment on column IPAY.BANK_INFO.yhid
  is '银行id';
comment on column IPAY.BANK_INFO.yhmc
  is '银行名称';
comment on column IPAY.BANK_INFO.qybz
  is '启用标志';
comment on column IPAY.BANK_INFO.yhiconpath
  is '银行图标路径';
comment on column IPAY.BANK_INFO.yhjc
  is '银行简称';
comment on column IPAY.BANK_INFO.bz
  is '备注（目前记录总渠道）';
alter table IPAY.BANK_INFO
  add constraint PK_BANK_INFO primary key (YHID);

prompt
prompt Creating table MONGODB_PARA
prompt ===========================
prompt
create table IPAY.MONGODB_PARA
(
  paraid   VARCHAR2(100) not null,
  paraname VARCHAR2(100),
  value    VARCHAR2(200)
)
;
comment on table IPAY.MONGODB_PARA
  is 'mongoDB配置参数';
comment on column IPAY.MONGODB_PARA.paraid
  is '参数编号';
comment on column IPAY.MONGODB_PARA.paraname
  is '参数名称';
comment on column IPAY.MONGODB_PARA.value
  is '参数值';
alter table IPAY.MONGODB_PARA
  add constraint MONGODB_PARA_PKEY primary key (PARAID);

prompt
prompt Creating table ORDER_DETL
prompt =========================
prompt
create table IPAY.ORDER_DETL
(
  tradeno       VARCHAR2(30) not null,
  intradeno     VARCHAR2(30) not null,
  fqjysj        VARCHAR2(20),
  jysj          VARCHAR2(20),
  jyje          NUMBER(16,2),
  yhid          VARCHAR2(20),
  paystate      VARCHAR2(20),
  jym_ibank     VARCHAR2(30),
  type          VARCHAR2(10),
  dsftradeno    VARCHAR2(30),
  tkintradeno   VARCHAR2(30),
  zjlx          VARCHAR2(10),
  zjhm          VARCHAR2(100),
  refundtype    VARCHAR2(10),
  appid         VARCHAR2(20),
  terminalno    VARCHAR2(20),
  czybh         VARCHAR2(32),
  czyxm         VARCHAR2(50),
  czybz         VARCHAR2(100),
  brynid        VARCHAR2(32),
  brxm          VARCHAR2(50),
  brsfzhm       VARCHAR2(20),
  brlxfs        VARCHAR2(30),
  cardno        VARCHAR2(30),
  fkjgbh        VARCHAR2(30),
  merchantno    VARCHAR2(30),
  refundtradeno VARCHAR2(30),
  zflx          VARCHAR2(10),
  ycbs          VARCHAR2(32),
  ip            VARCHAR2(32),
  jyqd          VARCHAR2(32),
  fqjyzt        VARCHAR2(2),
  dyflsh        VARCHAR2(30),
  hisno         VARCHAR2(50),
  jyfs          VARCHAR2(20),
  jytj          VARCHAR2(20),
  czyhmc        VARCHAR2(32),
  jsyhmc        VARCHAR2(32),
  ynkcode       VARCHAR2(10),
  cqtfbs        VARCHAR2(2),
  czlx          VARCHAR2(10),
  jshid         VARCHAR2(64),
  kye           NUMBER(16,2),
  msg           VARCHAR2(500),
  czlb          VARCHAR2(10),
  slzdlx        VARCHAR2(32),
  zddm          VARCHAR2(128),
  yhkh          VARCHAR2(32),
  accountid     VARCHAR2(32),
  isclick       VARCHAR2(10),
  ynjysj        VARCHAR2(20)
)
;
comment on table IPAY.ORDER_DETL
  is '订单辅表，支付明细表';
comment on column IPAY.ORDER_DETL.tradeno
  is '平台订单号';
comment on column IPAY.ORDER_DETL.intradeno
  is '调用ibank、预交金等的订单号';
comment on column IPAY.ORDER_DETL.fqjysj
  is '发起支付时间';
comment on column IPAY.ORDER_DETL.jysj
  is '支付时间';
comment on column IPAY.ORDER_DETL.jyje
  is '支付金额';
comment on column IPAY.ORDER_DETL.yhid
  is '支付银行';
comment on column IPAY.ORDER_DETL.paystate
  is '支付状态';
comment on column IPAY.ORDER_DETL.jym_ibank
  is 'ibank返回校验码';
comment on column IPAY.ORDER_DETL.type
  is '类型（支付、退款）';
comment on column IPAY.ORDER_DETL.dsftradeno
  is '交易返回订单号';
comment on column IPAY.ORDER_DETL.tkintradeno
  is '退款订单号';
comment on column IPAY.ORDER_DETL.zjlx
  is '证件类型';
comment on column IPAY.ORDER_DETL.zjhm
  is '证件号码';
comment on column IPAY.ORDER_DETL.refundtype
  is '退款类型（in:事中，after:事后）';
comment on column IPAY.ORDER_DETL.appid
  is '业务ID';
comment on column IPAY.ORDER_DETL.terminalno
  is '终端编号';
comment on column IPAY.ORDER_DETL.czybh
  is '操作员编号';
comment on column IPAY.ORDER_DETL.czyxm
  is '操作员姓名';
comment on column IPAY.ORDER_DETL.czybz
  is '操作员备注';
comment on column IPAY.ORDER_DETL.brynid
  is '病人院内ID';
comment on column IPAY.ORDER_DETL.brxm
  is '病人姓名';
comment on column IPAY.ORDER_DETL.brsfzhm
  is '病人身份证号码';
comment on column IPAY.ORDER_DETL.brlxfs
  is '病人联系方式';
comment on column IPAY.ORDER_DETL.cardno
  is '病人卡号';
comment on column IPAY.ORDER_DETL.fkjgbh
  is '发卡机构编号';
comment on column IPAY.ORDER_DETL.refundtradeno
  is '退款平台订单号';
comment on column IPAY.ORDER_DETL.zflx
  is '支付类型';
comment on column IPAY.ORDER_DETL.ycbs
  is '异常标识';
comment on column IPAY.ORDER_DETL.ip
  is '调用方IP';
comment on column IPAY.ORDER_DETL.jyqd
  is '交易渠道 （1：医保，2：银联卡)';
comment on column IPAY.ORDER_DETL.fqjyzt
  is '发起交易状态（0：未发起，1：已发起，默认0）';
comment on column IPAY.ORDER_DETL.dyflsh
  is '调用方流水号';
comment on column IPAY.ORDER_DETL.hisno
  is 'his调用流水号';
comment on column IPAY.ORDER_DETL.jyfs
  is '交易方式';
comment on column IPAY.ORDER_DETL.jytj
  is '交易途径';
comment on column IPAY.ORDER_DETL.czyhmc
  is '充值用户名称';
comment on column IPAY.ORDER_DETL.jsyhmc
  is '接收用户名称';
comment on column IPAY.ORDER_DETL.ynkcode
  is '院内卡状态(0：成功，1：失败，2：未知，3:已撤销)';
comment on column IPAY.ORDER_DETL.cqtfbs
  is '超期退费标识（0：不是，1：是，默认0）';
comment on column IPAY.ORDER_DETL.czlx
  is '充值类型(1：门诊，2：住院)';
comment on column IPAY.ORDER_DETL.jshid
  is '结算号ID';
comment on column IPAY.ORDER_DETL.kye
  is '卡余额（充值或者退款完成后，默认为null）';
comment on column IPAY.ORDER_DETL.msg
  is '错误信息';
comment on column IPAY.ORDER_DETL.czlb
  is '充值类别';
comment on column IPAY.ORDER_DETL.slzdlx
  is '受理终端类型';
comment on column IPAY.ORDER_DETL.zddm
  is '终端代码';
comment on column IPAY.ORDER_DETL.yhkh
  is '银行卡号';
comment on column IPAY.ORDER_DETL.accountid
  is '账户id';
comment on column IPAY.ORDER_DETL.isclick
  is '是否点击支付按钮（0：未点击，1：已点击）';
comment on column IPAY.ORDER_DETL.ynjysj
  is '院内交易时间';
alter table IPAY.ORDER_DETL
  add constraint PK_ORDER_DETL primary key (TRADENO, INTRADENO);

prompt
prompt Creating table ORDER_GENL
prompt =========================
prompt
create table IPAY.ORDER_GENL
(
  tradeno     VARCHAR2(30) not null,
  outtradeno  VARCHAR2(30),
  cjsj        VARCHAR2(20),
  zje         NUMBER(16,2),
  orgno       VARCHAR2(20),
  terminalno  VARCHAR2(20),
  appid       VARCHAR2(20),
  yzdtje      NUMBER(16,2),
  dzytje      NUMBER(16,2),
  zfwcsj      VARCHAR2(20),
  gatherstate VARCHAR2(20),
  jym         VARCHAR2(6),
  medicalpay  VARCHAR2(6),
  settletype  VARCHAR2(6),
  sfpj        BLOB,
  openflag    VARCHAR2(2),
  description VARCHAR2(500)
)
;
comment on table IPAY.ORDER_GENL
  is '订单主表';
comment on column IPAY.ORDER_GENL.yzdtje
  is '已支付金额';
comment on column IPAY.ORDER_GENL.dzytje
  is '待支付金额';
comment on column IPAY.ORDER_GENL.zfwcsj
  is '支付完成时间';
comment on column IPAY.ORDER_GENL.gatherstate
  is '平台订单状态';
comment on column IPAY.ORDER_GENL.medicalpay
  is '医保支付标志';
comment on column IPAY.ORDER_GENL.settletype
  is '结算类型';
comment on column IPAY.ORDER_GENL.sfpj
  is '收费票据';
comment on column IPAY.ORDER_GENL.openflag
  is 'url打开标志，0未打开，1已打开';
create index IPAY.ORDER_GENL$OUTTRADENO on IPAY.ORDER_GENL (OUTTRADENO);
alter table IPAY.ORDER_GENL
  add constraint PK_ORDER_GENL primary key (TRADENO);

prompt
prompt Creating table ORDER_SETTLEPARA
prompt ===============================
prompt
create table IPAY.ORDER_SETTLEPARA
(
  tradeno      VARCHAR2(30) not null,
  sbjgbh       VARCHAR2(20),
  czybh        VARCHAR2(20),
  yybm         VARCHAR2(20),
  jshid        VARCHAR2(30),
  settlepara   BLOB,
  settleresult BLOB,
  jsjyh        VARCHAR2(50),
  cxjyh        VARCHAR2(50),
  cxlsh        VARCHAR2(50)
)
;
comment on table IPAY.ORDER_SETTLEPARA
  is '医保结算参数表';
comment on column IPAY.ORDER_SETTLEPARA.tradeno
  is '订单编号';
comment on column IPAY.ORDER_SETTLEPARA.sbjgbh
  is '社保机构编号';
comment on column IPAY.ORDER_SETTLEPARA.czybh
  is '操作员编号';
comment on column IPAY.ORDER_SETTLEPARA.yybm
  is '医院编码';
comment on column IPAY.ORDER_SETTLEPARA.jshid
  is '病人结算号';
comment on column IPAY.ORDER_SETTLEPARA.settlepara
  is '结算参数';
comment on column IPAY.ORDER_SETTLEPARA.settleresult
  is '结算结果';
comment on column IPAY.ORDER_SETTLEPARA.jsjyh
  is '结算交易号';
comment on column IPAY.ORDER_SETTLEPARA.cxjyh
  is '撤销交易号';
comment on column IPAY.ORDER_SETTLEPARA.cxlsh
  is '冲销流水号';

prompt
prompt Creating table ORG_BANK
prompt =======================
prompt
create table IPAY.ORG_BANK
(
  orgno VARCHAR2(20) not null,
  yhid  VARCHAR2(20) not null,
  qybz  VARCHAR2(2)
)
;
comment on table IPAY.ORG_BANK
  is '接入机构银行信息';
comment on column IPAY.ORG_BANK.orgno
  is '机构编号';
comment on column IPAY.ORG_BANK.yhid
  is '银行编号';
comment on column IPAY.ORG_BANK.qybz
  is '启用标志';
alter table IPAY.ORG_BANK
  add constraint PK_ORG_BANK primary key (ORGNO, YHID);

prompt
prompt Creating table ORG_INFO
prompt =======================
prompt
create table IPAY.ORG_INFO
(
  orgno   VARCHAR2(20) not null,
  orgname VARCHAR2(40),
  orgtype VARCHAR2(10)
)
;
comment on table IPAY.ORG_INFO
  is '接入机构信息';
comment on column IPAY.ORG_INFO.orgno
  is '机构编号';
comment on column IPAY.ORG_INFO.orgname
  is '机构名称';
comment on column IPAY.ORG_INFO.orgtype
  is '机构类型（01:医院,02:基层医疗机构,03:药店,04:学校）';
alter table IPAY.ORG_INFO
  add constraint PK_ORG_INFO primary key (ORGNO);

prompt
prompt Creating table OVERTIME_REFUND
prompt ==============================
prompt
create table IPAY.OVERTIME_REFUND
(
  refundno    VARCHAR2(30) not null,
  jyje        NUMBER(16,2) not null,
  fqjysj      VARCHAR2(20) not null,
  jysj        VARCHAR2(20),
  state       VARCHAR2(30) not null,
  brxm        VARCHAR2(50),
  cardno      VARCHAR2(30),
  brsfzhm     VARCHAR2(30),
  bryhkh      VARCHAR2(30) not null,
  brlxfs      VARCHAR2(30),
  shbs        VARCHAR2(30) not null,
  shczybh     VARCHAR2(30),
  shczyxm     VARCHAR2(50),
  shsj        VARCHAR2(20),
  fhbs        VARCHAR2(30) not null,
  fhczybh     VARCHAR2(30),
  fhczyxm     VARCHAR2(50),
  fhsj        VARCHAR2(20),
  batchno     VARCHAR2(32),
  yhmc        VARCHAR2(50),
  entseqno    VARCHAR2(32),
  lhh         VARCHAR2(32),
  yhdz        VARCHAR2(200),
  bz          VARCHAR2(500),
  type        VARCHAR2(10),
  clienttype  VARCHAR2(10),
  ewpseq      VARCHAR2(30),
  errorreason VARCHAR2(500),
  zzczybh     VARCHAR2(30),
  zzczyxm     VARCHAR2(50),
  accountid   VARCHAR2(32),
  czybh       VARCHAR2(30),
  czyxm       VARCHAR2(50),
  dyflsh      VARCHAR2(30),
  hisno       VARCHAR2(50)
)
;
comment on column IPAY.OVERTIME_REFUND.refundno
  is '超期订单号（主键）';
comment on column IPAY.OVERTIME_REFUND.jyje
  is '退款金额';
comment on column IPAY.OVERTIME_REFUND.fqjysj
  is '发起交易时间';
comment on column IPAY.OVERTIME_REFUND.jysj
  is '交易完成时间';
comment on column IPAY.OVERTIME_REFUND.state
  is '退款状态';
comment on column IPAY.OVERTIME_REFUND.brxm
  is '病人姓名';
comment on column IPAY.OVERTIME_REFUND.cardno
  is '病人卡号';
comment on column IPAY.OVERTIME_REFUND.brsfzhm
  is '病人身份证号码';
comment on column IPAY.OVERTIME_REFUND.bryhkh
  is '病人银行卡号';
comment on column IPAY.OVERTIME_REFUND.brlxfs
  is '病人联系方式';
comment on column IPAY.OVERTIME_REFUND.shbs
  is '审核标识（1，已审核，0，未审核。默认0）';
comment on column IPAY.OVERTIME_REFUND.shczybh
  is '审核操作员编号';
comment on column IPAY.OVERTIME_REFUND.shczyxm
  is '审核操作员姓名';
comment on column IPAY.OVERTIME_REFUND.shsj
  is '审核时间';
comment on column IPAY.OVERTIME_REFUND.fhbs
  is '复核标识（1，已复核，0，未复核。默认0）';
comment on column IPAY.OVERTIME_REFUND.fhczybh
  is '复核操作员编号';
comment on column IPAY.OVERTIME_REFUND.fhczyxm
  is '复核操作员姓名';
comment on column IPAY.OVERTIME_REFUND.fhsj
  is '复核时间';
comment on column IPAY.OVERTIME_REFUND.batchno
  is '退费批次号';
comment on column IPAY.OVERTIME_REFUND.yhmc
  is '银行名称';
comment on column IPAY.OVERTIME_REFUND.entseqno
  is '财务系统流水号';
comment on column IPAY.OVERTIME_REFUND.lhh
  is '联行号';
comment on column IPAY.OVERTIME_REFUND.yhdz
  is '银行地址';
comment on column IPAY.OVERTIME_REFUND.bz
  is '备注（指明用途）';
comment on column IPAY.OVERTIME_REFUND.type
  is '交易类型（0：行内,1：跨行）';
comment on column IPAY.OVERTIME_REFUND.clienttype
  is '调用方类型（0：窗口，1：手机端，2：自助）';
comment on column IPAY.OVERTIME_REFUND.ewpseq
  is '电子回单号';
comment on column IPAY.OVERTIME_REFUND.errorreason
  is '错误原因';
comment on column IPAY.OVERTIME_REFUND.zzczybh
  is '转账操作员编号';
comment on column IPAY.OVERTIME_REFUND.zzczyxm
  is '转账操作员姓名';
comment on column IPAY.OVERTIME_REFUND.accountid
  is '账户id';
comment on column IPAY.OVERTIME_REFUND.czybh
  is '操作员编号';
comment on column IPAY.OVERTIME_REFUND.czyxm
  is '操作员姓名';
comment on column IPAY.OVERTIME_REFUND.dyflsh
  is '调用方流水号';
comment on column IPAY.OVERTIME_REFUND.hisno
  is 'his调用流水号';
alter table IPAY.OVERTIME_REFUND
  add primary key (REFUNDNO);

prompt
prompt Creating table REFUND_DETL
prompt ==========================
prompt
create table IPAY.REFUND_DETL
(
  refundtradeno VARCHAR2(30) not null,
  cjsj          VARCHAR2(20),
  sqtkje        NUMBER(16,2) not null,
  sytkje        NUMBER(16,2) not null,
  ytkje         NUMBER(16,2) not null,
  status        VARCHAR2(20) not null,
  mchid         VARCHAR2(20) not null,
  brxm          VARCHAR2(32),
  brxb          VARCHAR2(5),
  brsfzhm       VARCHAR2(32) not null,
  czybh         VARCHAR2(32),
  czyxm         VARCHAR2(50),
  terminalno    VARCHAR2(20),
  jyqd          VARCHAR2(20),
  rzbm          VARCHAR2(20),
  cardno        VARCHAR2(32) not null,
  brlxfs        VARCHAR2(30),
  ip            VARCHAR2(32),
  dyflsh        VARCHAR2(30),
  cqtfje        NUMBER(16,2),
  refundno      VARCHAR2(30),
  clienttype    VARCHAR2(10),
  kye           NUMBER(16,2),
  jytj          VARCHAR2(20),
  czyhmc        VARCHAR2(32),
  jsyhmc        VARCHAR2(32),
  jshid         VARCHAR2(64)
)
;
comment on column IPAY.REFUND_DETL.refundtradeno
  is '订单号';
comment on column IPAY.REFUND_DETL.cjsj
  is '创建时间';
comment on column IPAY.REFUND_DETL.sqtkje
  is '申请退款金额';
comment on column IPAY.REFUND_DETL.sytkje
  is '剩余退款金额';
comment on column IPAY.REFUND_DETL.ytkje
  is '已退款金额';
comment on column IPAY.REFUND_DETL.status
  is '订单状态';
comment on column IPAY.REFUND_DETL.mchid
  is '机构编号';
comment on column IPAY.REFUND_DETL.brxm
  is '姓名';
comment on column IPAY.REFUND_DETL.brxb
  is '性别';
comment on column IPAY.REFUND_DETL.brsfzhm
  is '病人身份证号';
comment on column IPAY.REFUND_DETL.czybh
  is '操作员编号';
comment on column IPAY.REFUND_DETL.czyxm
  is '操作员姓名';
comment on column IPAY.REFUND_DETL.terminalno
  is '交易来源编号';
comment on column IPAY.REFUND_DETL.jyqd
  is '交易渠道';
comment on column IPAY.REFUND_DETL.rzbm
  is '认证编码';
comment on column IPAY.REFUND_DETL.cardno
  is '病人卡号';
comment on column IPAY.REFUND_DETL.brlxfs
  is '病人联系方式';
comment on column IPAY.REFUND_DETL.ip
  is '调用方IP';
comment on column IPAY.REFUND_DETL.cqtfje
  is '超期退费金额';
comment on column IPAY.REFUND_DETL.refundno
  is '超期退款订单号';
comment on column IPAY.REFUND_DETL.clienttype
  is '调用方类型（0：窗口，1：手机端，2：自助）';
comment on column IPAY.REFUND_DETL.kye
  is '卡余额';
comment on column IPAY.REFUND_DETL.jytj
  is '交易途径';
comment on column IPAY.REFUND_DETL.czyhmc
  is '充值用户名称';
comment on column IPAY.REFUND_DETL.jsyhmc
  is '接收用户名称';
comment on column IPAY.REFUND_DETL.jshid
  is '结算号ID';
alter table IPAY.REFUND_DETL
  add primary key (REFUNDTRADENO);

prompt
prompt Creating table SDSZ_TRADE_INFO
prompt ==============================
prompt
create table IPAY.SDSZ_TRADE_INFO
(
  jylsid VARCHAR2(32) default sys_guid() not null,
  jyddh  VARCHAR2(30) not null,
  fqjysj VARCHAR2(20) not null,
  jysj   VARCHAR2(20),
  jyje   NUMBER(12,2),
  jylx   VARCHAR2(10) not null,
  jyzt   VARCHAR2(20) not null,
  fhlsh  VARCHAR2(50),
  hzkh   VARCHAR2(30),
  hzsfzh VARCHAR2(18),
  hzid   VARCHAR2(30),
  hzxm   VARCHAR2(50),
  hzxb   VARCHAR2(10),
  ylsjh  VARCHAR2(20),
  zhid   VARCHAR2(30),
  kzt    VARCHAR2(10),
  gsyy   VARCHAR2(50),
  zhje   NUMBER(12,2),
  zffs   VARCHAR2(20),
  jytj   VARCHAR2(20),
  ctbs   VARCHAR2(10),
  gqtfbs VARCHAR2(20),
  czyhmc VARCHAR2(30),
  jsyhmc VARCHAR2(30),
  czjg   VARCHAR2(10),
  tsxx   VARCHAR2(500),
  bz     VARCHAR2(100),
  czlx   VARCHAR2(10),
  tfcxbs VARCHAR2(2),
  czlb   VARCHAR2(10)
)
;
comment on table IPAY.SDSZ_TRADE_INFO
  is '调用HIS账户验证、充值、退费接口，交易流水表';
comment on column IPAY.SDSZ_TRADE_INFO.jylsid
  is '交易流水表主键ID';
comment on column IPAY.SDSZ_TRADE_INFO.jyddh
  is '交易订单号（对应支付、退款交易订单号）';
comment on column IPAY.SDSZ_TRADE_INFO.fqjysj
  is '发起交易时间';
comment on column IPAY.SDSZ_TRADE_INFO.jysj
  is '交易时间';
comment on column IPAY.SDSZ_TRADE_INFO.jyje
  is '交易金额';
comment on column IPAY.SDSZ_TRADE_INFO.jylx
  is '交易类型（1:充值、2:退费、0:患者账户验证）';
comment on column IPAY.SDSZ_TRADE_INFO.jyzt
  is '交易状态(0:未知，1：验证中，2：验证成功，3：验证失败，4：充值中，5：充值成功，6：充值失败，7：退费中，8：退费成功，9：退费失败)';
comment on column IPAY.SDSZ_TRADE_INFO.fhlsh
  is '返回流水号（流水号+最新余额，格式“XXXXXXXX|FEE.00”）';
comment on column IPAY.SDSZ_TRADE_INFO.hzkh
  is '患者卡号';
comment on column IPAY.SDSZ_TRADE_INFO.hzsfzh
  is '患者身份证号';
comment on column IPAY.SDSZ_TRADE_INFO.hzid
  is '患者Id';
comment on column IPAY.SDSZ_TRADE_INFO.hzxm
  is '患者姓名';
comment on column IPAY.SDSZ_TRADE_INFO.hzxb
  is '患者性别';
comment on column IPAY.SDSZ_TRADE_INFO.ylsjh
  is '预留手机号';
comment on column IPAY.SDSZ_TRADE_INFO.zhid
  is '账户Id';
comment on column IPAY.SDSZ_TRADE_INFO.kzt
  is '卡状态';
comment on column IPAY.SDSZ_TRADE_INFO.gsyy
  is '挂失原因';
comment on column IPAY.SDSZ_TRADE_INFO.zhje
  is '账户金额';
comment on column IPAY.SDSZ_TRADE_INFO.zffs
  is '支付方式（1：现金，2：银行卡，3：支付宝，4：微信，5：医保，6：转卡，7：绑定解绑，8：门诊省医保，9、住院省医保，10：门诊异地，11：住院异地）';
comment on column IPAY.SDSZ_TRADE_INFO.jytj
  is '交易途径（1：原手机App，2：支付宝支付窗，3：网络医院，4：服务平台，5：自助机，6：微信）';
comment on column IPAY.SDSZ_TRADE_INFO.ctbs
  is '充退标识（0：退款，1：充值）';
comment on column IPAY.SDSZ_TRADE_INFO.gqtfbs
  is '过期退费标识（0：非过期，1：过期退费）';
comment on column IPAY.SDSZ_TRADE_INFO.czyhmc
  is '充值用户名称';
comment on column IPAY.SDSZ_TRADE_INFO.jsyhmc
  is '接收用户名称';
comment on column IPAY.SDSZ_TRADE_INFO.czjg
  is '操作结果';
comment on column IPAY.SDSZ_TRADE_INFO.tsxx
  is '提示信息';
comment on column IPAY.SDSZ_TRADE_INFO.bz
  is '备注';
comment on column IPAY.SDSZ_TRADE_INFO.czlx
  is '充值类型(1：门诊，2：住院)';
comment on column IPAY.SDSZ_TRADE_INFO.tfcxbs
  is '退费撤销标识（0：不是，1：是，默认0）';
comment on column IPAY.SDSZ_TRADE_INFO.czlb
  is '充值类别';
alter table IPAY.SDSZ_TRADE_INFO
  add constraint PK_SDSZ_TRADE_INFO primary key (JYLSID);

prompt
prompt Creating table UCOMPOS_MANAGEMENT_INFO
prompt ======================================
prompt
create table IPAY.UCOMPOS_MANAGEMENT_INFO
(
  jyid    VARCHAR2(32) default sys_guid() not null,
  qqjybw  CLOB,
  yybh    VARCHAR2(20),
  rzbm    VARCHAR2(30),
  czybh   VARCHAR2(20),
  czyxm   VARCHAR2(30),
  syjh    VARCHAR2(20),
  syyh    VARCHAR2(20),
  jyqd    VARCHAR2(2),
  jylybh  VARCHAR2(20),
  jkmc    VARCHAR2(20),
  ptlsh   VARCHAR2(30),
  jyddh   VARCHAR2(50),
  fqjysj  VARCHAR2(20) not null,
  wcjysj  VARCHAR2(20),
  jyzt    VARCHAR2(3) not null,
  jylx    VARCHAR2(3),
  fhjybw  CLOB,
  dyfwybs VARCHAR2(30),
  bz      VARCHAR2(100)
)
;
comment on table IPAY.UCOMPOS_MANAGEMENT_INFO
  is '调银商终端DLL管理类交易信息表';
comment on column IPAY.UCOMPOS_MANAGEMENT_INFO.jyid
  is '管理类交易记录Id';
comment on column IPAY.UCOMPOS_MANAGEMENT_INFO.qqjybw
  is '请求交易报文(调银商DLL接口报文)';
comment on column IPAY.UCOMPOS_MANAGEMENT_INFO.yybh
  is '医院编号';
comment on column IPAY.UCOMPOS_MANAGEMENT_INFO.rzbm
  is '认证编码';
comment on column IPAY.UCOMPOS_MANAGEMENT_INFO.czybh
  is '操作员编号';
comment on column IPAY.UCOMPOS_MANAGEMENT_INFO.czyxm
  is '操作员姓名';
comment on column IPAY.UCOMPOS_MANAGEMENT_INFO.syjh
  is '收银机号';
comment on column IPAY.UCOMPOS_MANAGEMENT_INFO.syyh
  is '收银员号';
comment on column IPAY.UCOMPOS_MANAGEMENT_INFO.jyqd
  is '交易渠道（1：医保，2：银联卡，3：微信，4：云闪付）';
comment on column IPAY.UCOMPOS_MANAGEMENT_INFO.jylybh
  is '交易来源编号（窗口POS、自助终端编号，以便从配置表找到对应的配置信息）';
comment on column IPAY.UCOMPOS_MANAGEMENT_INFO.jkmc
  is '接口名称';
comment on column IPAY.UCOMPOS_MANAGEMENT_INFO.ptlsh
  is '平台流水号';
comment on column IPAY.UCOMPOS_MANAGEMENT_INFO.jyddh
  is '交易订单号';
comment on column IPAY.UCOMPOS_MANAGEMENT_INFO.fqjysj
  is '发起交易时间';
comment on column IPAY.UCOMPOS_MANAGEMENT_INFO.wcjysj
  is '完成交易时间';
comment on column IPAY.UCOMPOS_MANAGEMENT_INFO.jyzt
  is '交易状态（1：成功，0：失败，2：未知，3：交易中）';
comment on column IPAY.UCOMPOS_MANAGEMENT_INFO.jylx
  is '交易类型（00/005：签到，06/006：结算，04：余额查询）';
comment on column IPAY.UCOMPOS_MANAGEMENT_INFO.fhjybw
  is '返回交易报文(银商DLL接口返回报文)';
comment on column IPAY.UCOMPOS_MANAGEMENT_INFO.dyfwybs
  is '调用方唯一标识';
comment on column IPAY.UCOMPOS_MANAGEMENT_INFO.bz
  is '备注';
alter table IPAY.UCOMPOS_MANAGEMENT_INFO
  add constraint PK_UCOMPOS_MANAGEMENT_INFO primary key (JYID);

prompt
prompt Creating table USER_AUTHCODE
prompt ============================
prompt
create table IPAY.USER_AUTHCODE
(
  authcode  VARCHAR2(50) not null,
  esicardno VARCHAR2(50),
  userid    VARCHAR2(50)
)
;
comment on table IPAY.USER_AUTHCODE
  is '用户授权码和支付宝UUID关系';
comment on column IPAY.USER_AUTHCODE.authcode
  is '支付宝授权码';
comment on column IPAY.USER_AUTHCODE.esicardno
  is '支付宝返回的UUID';
comment on column IPAY.USER_AUTHCODE.userid
  is '用户ID';
alter table IPAY.USER_AUTHCODE
  add constraint PK_USER_AUTHCODE primary key (AUTHCODE);

prompt
prompt Creating view ORDER_GEN_DET_LIST
prompt ================================
prompt
create or replace view ipay.order_gen_det_list as
select decode(a.orgno, null, b.orgno, a.orgno) orgno,
       decode(a.yhid, null, b.yhid, a.yhid) yhid,
       decode(a.dzrq, null, b.dzrq, a.dzrq) dzrq,
       a.srbs,
       a.srje,
       b.zcbs,
       b.zcje
  from (select substr(b.jysj, 1, 8) dzrq, count(1) srbs, sum(b.jyje) srje,a.orgno,b.yhid
          from IPAY.order_genl a, IPAY.order_detl b
         where  a.tradeno = b.tradeno
         and b.paystate = 'paid'
         group by substr(b.jysj, 1, 8), a.orgno, b.yhid
         order by dzrq) a
  full join (select substr(b.jysj, 1, 8) dzrq, count(1) zcbs, sum(b.jyje) zcje,a.orgno,b.yhid
               from IPAY.order_genl a, IPAY.order_detl b
              where a.tradeno = b.tradeno
              and b.paystate = 'repaid'
              group by substr(b.jysj, 1, 8),a.orgno,b.yhid
              order by dzrq) b
    on a.dzrq = b.dzrq and a.yhid = b.yhid and a.orgno = b.orgno
 order by dzrq desc;

prompt
prompt Creating view V_LINK_INFO
prompt =========================
prompt
create or replace view ipay.v_link_info as
select dtl.intradeno,dtl.dsftradeno,dtl.yhid
from IPAY.order_detl  dtl
where 1=1 and  dtl.dsftradeno is not null;

prompt
prompt Creating view V_TRADE_CASHPAY_INFO
prompt ==================================
prompt
create or replace view ipay.v_trade_cashpay_info as
select "TRADENO","INTRADENO","FQJYSJ","JYSJ","JYJE","YHID","PAYSTATE","JYM_IBANK","TYPE","DSFTRADENO","TKINTRADENO","ZJLX","ZJHM","REFUNDTYPE","APPID","TERMINALNO","CZYBH","CZYXM","CZYBZ","BRYNID","BRXM","BRSFZHM","BRLXFS","CARDNO","FKJGBH","MERCHANTNO","REFUNDTRADENO","ZFLX","YCBS","IP","JYQD","FQJYZT","DYFLSH","HISNO","JYFS","JYTJ","CZYHMC","JSYHMC","YNKCODE","CQTFBS" from ipay.order_detl dt  where yhid = 'XJZF'
and dt.paystate in ('paid','repaid');

prompt
prompt Creating view V_TRADE_INFO
prompt ==========================
prompt
create or replace view ipay.v_trade_info as
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

prompt
prompt Creating view V_TRADE_INFO_YNDZ
prompt ===============================
prompt
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
bk.yhmc yhmc,     --银行名称（实际的支付渠道）
case when dt.cqtfbs = '1' then 'Transfer' when instr（bk.yhjc, '可退金额') > 0 then 'SPCLQY' when instr（bk.yhjc, '广发') > 0 then 'CgbSmartPay' when instr（bk.yhjc, '支付宝') > 0 then 'Alipay' when instr（bk.yhjc, 'POS') > 0 then 'UnionPay' when instr（bk.yhjc, '现金') > 0 then 'CashPay' when bk.yhjc = '医保' then 'Medicare' when dt.yhid = 'SYBMZ' then 'Medicare' when dt.yhid = 'SYBZY' then 'Medicare' when bk.yhjc = '异地门诊' then 'Medicare' when bk.yhjc = '异地住院' then 'Medicare' when instr（bk.yhjc, '微信') > 0 then 'WeChat'  else 'Other' end jyqdbs, --交易渠道标识
case dt.type when 'pay' then '支付' when 'refund' then '退款' end ywlx, --业务类型
nvl(dt.fqjysj,dt.jysj) as jlcjsj,        --记录创建时间
nvl(dt.ynjysj,dt.jysj) jysj,          --支付时间
case dt.type when 'pay' then dt.jyje when 'refund' then -1*dt.jyje end jyje,          --交易金额
dt.ynkcode ynjyzt,  --院内卡状态标识：ynjyzt对应于ynccode (0:成功，1：失败，2：未知)
dt.ynkcode,
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
and (dt.cqtfbs <> '1' or dt.cqtfbs is null) --明细表剔除超期退费数据
union
--超期退费数据
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
case refund.state when 'refund' then '1' when 'repaying' then '1' when 'repayings' then '1' when 'repaid' then '1'  when 'refunding' then '1' when 'failed' then '0' when 'refailed' then '0' when 'refailed' then '0' else '2' end jyzt, --交易状态(0:失败，1：成功，2：未知)
case refund.state when 'refund' then '转账成功' when 'repaying' then '未审核' when 'repayings' then '审核通过，未复核' when 'repaid' then '审核通过，复核通过'  when 'refunding' then '转账中' when 'failed' then '转账失败' when 'refailed' then '审核不通过' when 'refailed' then '审核通过，复核不通过' else '未知' end jyztms, --交易状态描述
'' yddbh,   --退款原订单号
refund.bryhkh jyckh,    --交易参考号（银行卡号）
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
'' tcje,           --统筹金额
'' gzje            --个账金额
from ipay.overtime_refund refund
left join (
 select refuns.refundno,refuns.mchid,dtl1.ynkcode from ipay.refund_detl refuns
   left join ipay.order_detl dtl1 on dtl1.refundtradeno = refuns.refundtradeno
) dtl on dtl.refundno = refund.refundno
where refund.state in ('repaid',
                    'refund',
                    'refunding',
                    'repaying',
                    'repayings');

prompt
prompt Creating view V_TRADE_INFO_YNDZ2
prompt ================================
prompt
create or replace view ipay.v_trade_info_yndz2 as
select distinct
dt.tradeno,       --平台订单号
dt.intradeno ddbh,--交易订单号（订单编号）
dt.hisno,         --his调用流水号
dt.brxm,          --病人姓名
dt.cardno brjzkh, --病人就诊卡号
dt.brsfzhm sfzhm, --病人身份证号码
dt.yhid,          --支付银行/渠道
bk.yhjc qdmc,     --支付银行/渠道名称
bk.yhmc yhmc,     --银行名称（实际的支付渠道）
case when dt.cqtfbs = '1' then 'Transfer' when instr（bk.yhjc, '可退金额') > 0 then 'SPCLQY' when instr（bk.yhjc, '广发') > 0 then 'CgbSmartPay' when instr（bk.yhjc, '支付宝') > 0 then 'Alipay' when instr（bk.yhjc, 'POS') > 0 then 'UnionPay' when instr（bk.yhjc, '现金') > 0 then 'CashPay' when bk.yhjc = '医保' then 'Medicare' when dt.yhid = 'SYBMZ' then 'Medicare' when dt.yhid = 'SYBZY' then 'Medicare' when bk.yhjc = '异地门诊' then 'Medicare' when bk.yhjc = '异地住院' then 'Medicare' when instr（bk.yhjc, '微信') > 0 then 'WeChat'  else 'Other' end jyqdbs, --交易渠道标识
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
and (dt.cqtfbs <> '1' or dt.cqtfbs is null) --明细表剔除超期退费数据
union
--超期退费数据
select distinct
refund.refundno tradeno,       --超期退费订单号
refund.refundno ddbh,-- （订单编号）
dtl.hisno hisno,         --his调用流水号
refund.brxm,          --病人姓名
refund.cardno brjzkh, --病人就诊卡号
refund.brsfzhm sfzhm, --病人身份证号码
dtl.yhid yhid,          --支付银行/渠道
'超期' qdmc,     --支付银行/渠道名称
'超期' yhmc,     --银行名称（实际的支付渠道）
'Transfer'  jyqdbs, --交易渠道标识
'退款'  ywlx, --业务类型
nvl(refund.fqjysj,refund.jysj) as jlcjsj,        --记录创建时间
refund.jysj,          --支付时间
 -1*refund.jyje jyje,          --交易金额
'' ynkcode,       --院内卡状态
refuns.mchid mchid,   --医院编号
case refund.state when 'refund' then '1' when 'repaying' then '1' when 'repayings' then '1' when 'repaid' then '1'  when 'refunding' then '0' when 'failed' then '0' when 'refailed' then '0' when 'refailed' then '0' else '2' end jyzt, --交易状态(0:失败，1：成功，2：未知)
case refund.state when 'refund' then '转账成功' when 'repaying' then '未审核' when 'repayings' then '审核通过，未复核' when 'repaid' then '审核通过，复核通过'  when 'refunding' then '转账中' when 'failed' then '转账失败' when 'refailed' then '审核不通过' when 'refailed' then '审核通过，复核不通过' else '未知' end jyztms, --交易状态描述
'' yddbh,   --退款原订单号
refund.bryhkh jyckh,    --交易参考号（银行卡号）
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
'' tcje,           --统筹金额
'' gzje            --个账金额
from ipay.overtime_refund refund
left join ipay.refund_detl refuns
  on refund.refundno = refuns.refundno
  left join ipay.order_detl dtl on dtl.refundtradeno = refuns.refundtradeno
where refund.state in ('repaid',
                    'refund',
                    'refunding',
                    'repaying',
                    'repayings');


spool off
