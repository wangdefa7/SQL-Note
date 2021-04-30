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
  is '���׶�����';
comment on column IPAY.ABNORMAL_ORDER_DETL.glintradeno
  is '�������׶�����';
comment on column IPAY.ABNORMAL_ORDER_DETL.clsj
  is '����ʱ��';
comment on column IPAY.ABNORMAL_ORDER_DETL.clwcsj
  is '�������ʱ��';
comment on column IPAY.ABNORMAL_ORDER_DETL.type
  is '��������';
comment on column IPAY.ABNORMAL_ORDER_DETL.yclx
  is '�쳣����';
comment on column IPAY.ABNORMAL_ORDER_DETL.czybh
  is '����Ա���';
comment on column IPAY.ABNORMAL_ORDER_DETL.czyxm
  is '����Ա����';
comment on column IPAY.ABNORMAL_ORDER_DETL.cljg
  is '��������0���ɹ���1��ʧ�ܣ�';
comment on column IPAY.ABNORMAL_ORDER_DETL.clms
  is '��������';
comment on column IPAY.ABNORMAL_ORDER_DETL.bz
  is '��ע';
comment on column IPAY.ABNORMAL_ORDER_DETL.abnormalid
  is '����';

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
  is '���л�����Ϣ';
comment on column IPAY.BANK_INFO.yhid
  is '����id';
comment on column IPAY.BANK_INFO.yhmc
  is '��������';
comment on column IPAY.BANK_INFO.qybz
  is '���ñ�־';
comment on column IPAY.BANK_INFO.yhiconpath
  is '����ͼ��·��';
comment on column IPAY.BANK_INFO.yhjc
  is '���м��';
comment on column IPAY.BANK_INFO.bz
  is '��ע��Ŀǰ��¼��������';
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
  is 'mongoDB���ò���';
comment on column IPAY.MONGODB_PARA.paraid
  is '�������';
comment on column IPAY.MONGODB_PARA.paraname
  is '��������';
comment on column IPAY.MONGODB_PARA.value
  is '����ֵ';
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
  is '��������֧����ϸ��';
comment on column IPAY.ORDER_DETL.tradeno
  is 'ƽ̨������';
comment on column IPAY.ORDER_DETL.intradeno
  is '����ibank��Ԥ����ȵĶ�����';
comment on column IPAY.ORDER_DETL.fqjysj
  is '����֧��ʱ��';
comment on column IPAY.ORDER_DETL.jysj
  is '֧��ʱ��';
comment on column IPAY.ORDER_DETL.jyje
  is '֧�����';
comment on column IPAY.ORDER_DETL.yhid
  is '֧������';
comment on column IPAY.ORDER_DETL.paystate
  is '֧��״̬';
comment on column IPAY.ORDER_DETL.jym_ibank
  is 'ibank����У����';
comment on column IPAY.ORDER_DETL.type
  is '���ͣ�֧�����˿';
comment on column IPAY.ORDER_DETL.dsftradeno
  is '���׷��ض�����';
comment on column IPAY.ORDER_DETL.tkintradeno
  is '�˿����';
comment on column IPAY.ORDER_DETL.zjlx
  is '֤������';
comment on column IPAY.ORDER_DETL.zjhm
  is '֤������';
comment on column IPAY.ORDER_DETL.refundtype
  is '�˿����ͣ�in:���У�after:�º�';
comment on column IPAY.ORDER_DETL.appid
  is 'ҵ��ID';
comment on column IPAY.ORDER_DETL.terminalno
  is '�ն˱��';
comment on column IPAY.ORDER_DETL.czybh
  is '����Ա���';
comment on column IPAY.ORDER_DETL.czyxm
  is '����Ա����';
comment on column IPAY.ORDER_DETL.czybz
  is '����Ա��ע';
comment on column IPAY.ORDER_DETL.brynid
  is '����Ժ��ID';
comment on column IPAY.ORDER_DETL.brxm
  is '��������';
comment on column IPAY.ORDER_DETL.brsfzhm
  is '�������֤����';
comment on column IPAY.ORDER_DETL.brlxfs
  is '������ϵ��ʽ';
comment on column IPAY.ORDER_DETL.cardno
  is '���˿���';
comment on column IPAY.ORDER_DETL.fkjgbh
  is '�����������';
comment on column IPAY.ORDER_DETL.refundtradeno
  is '�˿�ƽ̨������';
comment on column IPAY.ORDER_DETL.zflx
  is '֧������';
comment on column IPAY.ORDER_DETL.ycbs
  is '�쳣��ʶ';
comment on column IPAY.ORDER_DETL.ip
  is '���÷�IP';
comment on column IPAY.ORDER_DETL.jyqd
  is '�������� ��1��ҽ����2��������)';
comment on column IPAY.ORDER_DETL.fqjyzt
  is '������״̬��0��δ����1���ѷ���Ĭ��0��';
comment on column IPAY.ORDER_DETL.dyflsh
  is '���÷���ˮ��';
comment on column IPAY.ORDER_DETL.hisno
  is 'his������ˮ��';
comment on column IPAY.ORDER_DETL.jyfs
  is '���׷�ʽ';
comment on column IPAY.ORDER_DETL.jytj
  is '����;��';
comment on column IPAY.ORDER_DETL.czyhmc
  is '��ֵ�û�����';
comment on column IPAY.ORDER_DETL.jsyhmc
  is '�����û�����';
comment on column IPAY.ORDER_DETL.ynkcode
  is 'Ժ�ڿ�״̬(0���ɹ���1��ʧ�ܣ�2��δ֪��3:�ѳ���)';
comment on column IPAY.ORDER_DETL.cqtfbs
  is '�����˷ѱ�ʶ��0�����ǣ�1���ǣ�Ĭ��0��';
comment on column IPAY.ORDER_DETL.czlx
  is '��ֵ����(1�����2��סԺ)';
comment on column IPAY.ORDER_DETL.jshid
  is '�����ID';
comment on column IPAY.ORDER_DETL.kye
  is '������ֵ�����˿���ɺ�Ĭ��Ϊnull��';
comment on column IPAY.ORDER_DETL.msg
  is '������Ϣ';
comment on column IPAY.ORDER_DETL.czlb
  is '��ֵ���';
comment on column IPAY.ORDER_DETL.slzdlx
  is '�����ն�����';
comment on column IPAY.ORDER_DETL.zddm
  is '�ն˴���';
comment on column IPAY.ORDER_DETL.yhkh
  is '���п���';
comment on column IPAY.ORDER_DETL.accountid
  is '�˻�id';
comment on column IPAY.ORDER_DETL.isclick
  is '�Ƿ���֧����ť��0��δ�����1���ѵ����';
comment on column IPAY.ORDER_DETL.ynjysj
  is 'Ժ�ڽ���ʱ��';
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
  is '��������';
comment on column IPAY.ORDER_GENL.yzdtje
  is '��֧�����';
comment on column IPAY.ORDER_GENL.dzytje
  is '��֧�����';
comment on column IPAY.ORDER_GENL.zfwcsj
  is '֧�����ʱ��';
comment on column IPAY.ORDER_GENL.gatherstate
  is 'ƽ̨����״̬';
comment on column IPAY.ORDER_GENL.medicalpay
  is 'ҽ��֧����־';
comment on column IPAY.ORDER_GENL.settletype
  is '��������';
comment on column IPAY.ORDER_GENL.sfpj
  is '�շ�Ʊ��';
comment on column IPAY.ORDER_GENL.openflag
  is 'url�򿪱�־��0δ�򿪣�1�Ѵ�';
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
  is 'ҽ�����������';
comment on column IPAY.ORDER_SETTLEPARA.tradeno
  is '�������';
comment on column IPAY.ORDER_SETTLEPARA.sbjgbh
  is '�籣�������';
comment on column IPAY.ORDER_SETTLEPARA.czybh
  is '����Ա���';
comment on column IPAY.ORDER_SETTLEPARA.yybm
  is 'ҽԺ����';
comment on column IPAY.ORDER_SETTLEPARA.jshid
  is '���˽����';
comment on column IPAY.ORDER_SETTLEPARA.settlepara
  is '�������';
comment on column IPAY.ORDER_SETTLEPARA.settleresult
  is '������';
comment on column IPAY.ORDER_SETTLEPARA.jsjyh
  is '���㽻�׺�';
comment on column IPAY.ORDER_SETTLEPARA.cxjyh
  is '�������׺�';
comment on column IPAY.ORDER_SETTLEPARA.cxlsh
  is '������ˮ��';

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
  is '�������������Ϣ';
comment on column IPAY.ORG_BANK.orgno
  is '�������';
comment on column IPAY.ORG_BANK.yhid
  is '���б��';
comment on column IPAY.ORG_BANK.qybz
  is '���ñ�־';
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
  is '���������Ϣ';
comment on column IPAY.ORG_INFO.orgno
  is '�������';
comment on column IPAY.ORG_INFO.orgname
  is '��������';
comment on column IPAY.ORG_INFO.orgtype
  is '�������ͣ�01:ҽԺ,02:����ҽ�ƻ���,03:ҩ��,04:ѧУ��';
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
  is '���ڶ����ţ�������';
comment on column IPAY.OVERTIME_REFUND.jyje
  is '�˿���';
comment on column IPAY.OVERTIME_REFUND.fqjysj
  is '������ʱ��';
comment on column IPAY.OVERTIME_REFUND.jysj
  is '�������ʱ��';
comment on column IPAY.OVERTIME_REFUND.state
  is '�˿�״̬';
comment on column IPAY.OVERTIME_REFUND.brxm
  is '��������';
comment on column IPAY.OVERTIME_REFUND.cardno
  is '���˿���';
comment on column IPAY.OVERTIME_REFUND.brsfzhm
  is '�������֤����';
comment on column IPAY.OVERTIME_REFUND.bryhkh
  is '�������п���';
comment on column IPAY.OVERTIME_REFUND.brlxfs
  is '������ϵ��ʽ';
comment on column IPAY.OVERTIME_REFUND.shbs
  is '��˱�ʶ��1������ˣ�0��δ��ˡ�Ĭ��0��';
comment on column IPAY.OVERTIME_REFUND.shczybh
  is '��˲���Ա���';
comment on column IPAY.OVERTIME_REFUND.shczyxm
  is '��˲���Ա����';
comment on column IPAY.OVERTIME_REFUND.shsj
  is '���ʱ��';
comment on column IPAY.OVERTIME_REFUND.fhbs
  is '���˱�ʶ��1���Ѹ��ˣ�0��δ���ˡ�Ĭ��0��';
comment on column IPAY.OVERTIME_REFUND.fhczybh
  is '���˲���Ա���';
comment on column IPAY.OVERTIME_REFUND.fhczyxm
  is '���˲���Ա����';
comment on column IPAY.OVERTIME_REFUND.fhsj
  is '����ʱ��';
comment on column IPAY.OVERTIME_REFUND.batchno
  is '�˷����κ�';
comment on column IPAY.OVERTIME_REFUND.yhmc
  is '��������';
comment on column IPAY.OVERTIME_REFUND.entseqno
  is '����ϵͳ��ˮ��';
comment on column IPAY.OVERTIME_REFUND.lhh
  is '���к�';
comment on column IPAY.OVERTIME_REFUND.yhdz
  is '���е�ַ';
comment on column IPAY.OVERTIME_REFUND.bz
  is '��ע��ָ����;��';
comment on column IPAY.OVERTIME_REFUND.type
  is '�������ͣ�0������,1�����У�';
comment on column IPAY.OVERTIME_REFUND.clienttype
  is '���÷����ͣ�0�����ڣ�1���ֻ��ˣ�2��������';
comment on column IPAY.OVERTIME_REFUND.ewpseq
  is '���ӻص���';
comment on column IPAY.OVERTIME_REFUND.errorreason
  is '����ԭ��';
comment on column IPAY.OVERTIME_REFUND.zzczybh
  is 'ת�˲���Ա���';
comment on column IPAY.OVERTIME_REFUND.zzczyxm
  is 'ת�˲���Ա����';
comment on column IPAY.OVERTIME_REFUND.accountid
  is '�˻�id';
comment on column IPAY.OVERTIME_REFUND.czybh
  is '����Ա���';
comment on column IPAY.OVERTIME_REFUND.czyxm
  is '����Ա����';
comment on column IPAY.OVERTIME_REFUND.dyflsh
  is '���÷���ˮ��';
comment on column IPAY.OVERTIME_REFUND.hisno
  is 'his������ˮ��';
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
  is '������';
comment on column IPAY.REFUND_DETL.cjsj
  is '����ʱ��';
comment on column IPAY.REFUND_DETL.sqtkje
  is '�����˿���';
comment on column IPAY.REFUND_DETL.sytkje
  is 'ʣ���˿���';
comment on column IPAY.REFUND_DETL.ytkje
  is '���˿���';
comment on column IPAY.REFUND_DETL.status
  is '����״̬';
comment on column IPAY.REFUND_DETL.mchid
  is '�������';
comment on column IPAY.REFUND_DETL.brxm
  is '����';
comment on column IPAY.REFUND_DETL.brxb
  is '�Ա�';
comment on column IPAY.REFUND_DETL.brsfzhm
  is '�������֤��';
comment on column IPAY.REFUND_DETL.czybh
  is '����Ա���';
comment on column IPAY.REFUND_DETL.czyxm
  is '����Ա����';
comment on column IPAY.REFUND_DETL.terminalno
  is '������Դ���';
comment on column IPAY.REFUND_DETL.jyqd
  is '��������';
comment on column IPAY.REFUND_DETL.rzbm
  is '��֤����';
comment on column IPAY.REFUND_DETL.cardno
  is '���˿���';
comment on column IPAY.REFUND_DETL.brlxfs
  is '������ϵ��ʽ';
comment on column IPAY.REFUND_DETL.ip
  is '���÷�IP';
comment on column IPAY.REFUND_DETL.cqtfje
  is '�����˷ѽ��';
comment on column IPAY.REFUND_DETL.refundno
  is '�����˿����';
comment on column IPAY.REFUND_DETL.clienttype
  is '���÷����ͣ�0�����ڣ�1���ֻ��ˣ�2��������';
comment on column IPAY.REFUND_DETL.kye
  is '�����';
comment on column IPAY.REFUND_DETL.jytj
  is '����;��';
comment on column IPAY.REFUND_DETL.czyhmc
  is '��ֵ�û�����';
comment on column IPAY.REFUND_DETL.jsyhmc
  is '�����û�����';
comment on column IPAY.REFUND_DETL.jshid
  is '�����ID';
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
  is '����HIS�˻���֤����ֵ���˷ѽӿڣ�������ˮ��';
comment on column IPAY.SDSZ_TRADE_INFO.jylsid
  is '������ˮ������ID';
comment on column IPAY.SDSZ_TRADE_INFO.jyddh
  is '���׶����ţ���Ӧ֧�����˿�׶����ţ�';
comment on column IPAY.SDSZ_TRADE_INFO.fqjysj
  is '������ʱ��';
comment on column IPAY.SDSZ_TRADE_INFO.jysj
  is '����ʱ��';
comment on column IPAY.SDSZ_TRADE_INFO.jyje
  is '���׽��';
comment on column IPAY.SDSZ_TRADE_INFO.jylx
  is '�������ͣ�1:��ֵ��2:�˷ѡ�0:�����˻���֤��';
comment on column IPAY.SDSZ_TRADE_INFO.jyzt
  is '����״̬(0:δ֪��1����֤�У�2����֤�ɹ���3����֤ʧ�ܣ�4����ֵ�У�5����ֵ�ɹ���6����ֵʧ�ܣ�7���˷��У�8���˷ѳɹ���9���˷�ʧ��)';
comment on column IPAY.SDSZ_TRADE_INFO.fhlsh
  is '������ˮ�ţ���ˮ��+��������ʽ��XXXXXXXX|FEE.00����';
comment on column IPAY.SDSZ_TRADE_INFO.hzkh
  is '���߿���';
comment on column IPAY.SDSZ_TRADE_INFO.hzsfzh
  is '�������֤��';
comment on column IPAY.SDSZ_TRADE_INFO.hzid
  is '����Id';
comment on column IPAY.SDSZ_TRADE_INFO.hzxm
  is '��������';
comment on column IPAY.SDSZ_TRADE_INFO.hzxb
  is '�����Ա�';
comment on column IPAY.SDSZ_TRADE_INFO.ylsjh
  is 'Ԥ���ֻ���';
comment on column IPAY.SDSZ_TRADE_INFO.zhid
  is '�˻�Id';
comment on column IPAY.SDSZ_TRADE_INFO.kzt
  is '��״̬';
comment on column IPAY.SDSZ_TRADE_INFO.gsyy
  is '��ʧԭ��';
comment on column IPAY.SDSZ_TRADE_INFO.zhje
  is '�˻����';
comment on column IPAY.SDSZ_TRADE_INFO.zffs
  is '֧����ʽ��1���ֽ�2�����п���3��֧������4��΢�ţ�5��ҽ����6��ת����7���󶨽��8������ʡҽ����9��סԺʡҽ����10��������أ�11��סԺ��أ�';
comment on column IPAY.SDSZ_TRADE_INFO.jytj
  is '����;����1��ԭ�ֻ�App��2��֧����֧������3������ҽԺ��4������ƽ̨��5����������6��΢�ţ�';
comment on column IPAY.SDSZ_TRADE_INFO.ctbs
  is '���˱�ʶ��0���˿1����ֵ��';
comment on column IPAY.SDSZ_TRADE_INFO.gqtfbs
  is '�����˷ѱ�ʶ��0���ǹ��ڣ�1�������˷ѣ�';
comment on column IPAY.SDSZ_TRADE_INFO.czyhmc
  is '��ֵ�û�����';
comment on column IPAY.SDSZ_TRADE_INFO.jsyhmc
  is '�����û�����';
comment on column IPAY.SDSZ_TRADE_INFO.czjg
  is '�������';
comment on column IPAY.SDSZ_TRADE_INFO.tsxx
  is '��ʾ��Ϣ';
comment on column IPAY.SDSZ_TRADE_INFO.bz
  is '��ע';
comment on column IPAY.SDSZ_TRADE_INFO.czlx
  is '��ֵ����(1�����2��סԺ)';
comment on column IPAY.SDSZ_TRADE_INFO.tfcxbs
  is '�˷ѳ�����ʶ��0�����ǣ�1���ǣ�Ĭ��0��';
comment on column IPAY.SDSZ_TRADE_INFO.czlb
  is '��ֵ���';
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
  is '�������ն�DLL�����ཻ����Ϣ��';
comment on column IPAY.UCOMPOS_MANAGEMENT_INFO.jyid
  is '�����ཻ�׼�¼Id';
comment on column IPAY.UCOMPOS_MANAGEMENT_INFO.qqjybw
  is '�����ױ���(������DLL�ӿڱ���)';
comment on column IPAY.UCOMPOS_MANAGEMENT_INFO.yybh
  is 'ҽԺ���';
comment on column IPAY.UCOMPOS_MANAGEMENT_INFO.rzbm
  is '��֤����';
comment on column IPAY.UCOMPOS_MANAGEMENT_INFO.czybh
  is '����Ա���';
comment on column IPAY.UCOMPOS_MANAGEMENT_INFO.czyxm
  is '����Ա����';
comment on column IPAY.UCOMPOS_MANAGEMENT_INFO.syjh
  is '��������';
comment on column IPAY.UCOMPOS_MANAGEMENT_INFO.syyh
  is '����Ա��';
comment on column IPAY.UCOMPOS_MANAGEMENT_INFO.jyqd
  is '����������1��ҽ����2����������3��΢�ţ�4����������';
comment on column IPAY.UCOMPOS_MANAGEMENT_INFO.jylybh
  is '������Դ��ţ�����POS�������ն˱�ţ��Ա�����ñ��ҵ���Ӧ��������Ϣ��';
comment on column IPAY.UCOMPOS_MANAGEMENT_INFO.jkmc
  is '�ӿ�����';
comment on column IPAY.UCOMPOS_MANAGEMENT_INFO.ptlsh
  is 'ƽ̨��ˮ��';
comment on column IPAY.UCOMPOS_MANAGEMENT_INFO.jyddh
  is '���׶�����';
comment on column IPAY.UCOMPOS_MANAGEMENT_INFO.fqjysj
  is '������ʱ��';
comment on column IPAY.UCOMPOS_MANAGEMENT_INFO.wcjysj
  is '��ɽ���ʱ��';
comment on column IPAY.UCOMPOS_MANAGEMENT_INFO.jyzt
  is '����״̬��1���ɹ���0��ʧ�ܣ�2��δ֪��3�������У�';
comment on column IPAY.UCOMPOS_MANAGEMENT_INFO.jylx
  is '�������ͣ�00/005��ǩ����06/006�����㣬04������ѯ��';
comment on column IPAY.UCOMPOS_MANAGEMENT_INFO.fhjybw
  is '���ؽ��ױ���(����DLL�ӿڷ��ر���)';
comment on column IPAY.UCOMPOS_MANAGEMENT_INFO.dyfwybs
  is '���÷�Ψһ��ʶ';
comment on column IPAY.UCOMPOS_MANAGEMENT_INFO.bz
  is '��ע';
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
  is '�û���Ȩ���֧����UUID��ϵ';
comment on column IPAY.USER_AUTHCODE.authcode
  is '֧������Ȩ��';
comment on column IPAY.USER_AUTHCODE.esicardno
  is '֧�������ص�UUID';
comment on column IPAY.USER_AUTHCODE.userid
  is '�û�ID';
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

prompt
prompt Creating view V_TRADE_INFO_YNDZ
prompt ===============================
prompt
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
bk.yhmc yhmc,     --�������ƣ�ʵ�ʵ�֧��������
case when dt.cqtfbs = '1' then 'Transfer' when instr��bk.yhjc, '���˽��') > 0 then 'SPCLQY' when instr��bk.yhjc, '�㷢') > 0 then 'CgbSmartPay' when instr��bk.yhjc, '֧����') > 0 then 'Alipay' when instr��bk.yhjc, 'POS') > 0 then 'UnionPay' when instr��bk.yhjc, '�ֽ�') > 0 then 'CashPay' when bk.yhjc = 'ҽ��' then 'Medicare' when dt.yhid = 'SYBMZ' then 'Medicare' when dt.yhid = 'SYBZY' then 'Medicare' when bk.yhjc = '�������' then 'Medicare' when bk.yhjc = '���סԺ' then 'Medicare' when instr��bk.yhjc, '΢��') > 0 then 'WeChat'  else 'Other' end jyqdbs, --����������ʶ
case dt.type when 'pay' then '֧��' when 'refund' then '�˿�' end ywlx, --ҵ������
nvl(dt.fqjysj,dt.jysj) as jlcjsj,        --��¼����ʱ��
nvl(dt.ynjysj,dt.jysj) jysj,          --֧��ʱ��
case dt.type when 'pay' then dt.jyje when 'refund' then -1*dt.jyje end jyje,          --���׽��
dt.ynkcode ynjyzt,  --Ժ�ڿ�״̬��ʶ��ynjyzt��Ӧ��ynccode (0:�ɹ���1��ʧ�ܣ�2��δ֪)
dt.ynkcode,
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
and (dt.cqtfbs <> '1' or dt.cqtfbs is null) --��ϸ���޳������˷�����
union
--�����˷�����
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
case refund.state when 'refund' then '1' when 'repaying' then '1' when 'repayings' then '1' when 'repaid' then '1'  when 'refunding' then '1' when 'failed' then '0' when 'refailed' then '0' when 'refailed' then '0' else '2' end jyzt, --����״̬(0:ʧ�ܣ�1���ɹ���2��δ֪)
case refund.state when 'refund' then 'ת�˳ɹ�' when 'repaying' then 'δ���' when 'repayings' then '���ͨ����δ����' when 'repaid' then '���ͨ��������ͨ��'  when 'refunding' then 'ת����' when 'failed' then 'ת��ʧ��' when 'refailed' then '��˲�ͨ��' when 'refailed' then '���ͨ�������˲�ͨ��' else 'δ֪' end jyztms, --����״̬����
'' yddbh,   --�˿�ԭ������
refund.bryhkh jyckh,    --���ײο��ţ����п��ţ�
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
'' tcje,           --ͳ����
'' gzje            --���˽��
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
dt.tradeno,       --ƽ̨������
dt.intradeno ddbh,--���׶����ţ�������ţ�
dt.hisno,         --his������ˮ��
dt.brxm,          --��������
dt.cardno brjzkh, --���˾��￨��
dt.brsfzhm sfzhm, --�������֤����
dt.yhid,          --֧������/����
bk.yhjc qdmc,     --֧������/��������
bk.yhmc yhmc,     --�������ƣ�ʵ�ʵ�֧��������
case when dt.cqtfbs = '1' then 'Transfer' when instr��bk.yhjc, '���˽��') > 0 then 'SPCLQY' when instr��bk.yhjc, '�㷢') > 0 then 'CgbSmartPay' when instr��bk.yhjc, '֧����') > 0 then 'Alipay' when instr��bk.yhjc, 'POS') > 0 then 'UnionPay' when instr��bk.yhjc, '�ֽ�') > 0 then 'CashPay' when bk.yhjc = 'ҽ��' then 'Medicare' when dt.yhid = 'SYBMZ' then 'Medicare' when dt.yhid = 'SYBZY' then 'Medicare' when bk.yhjc = '�������' then 'Medicare' when bk.yhjc = '���סԺ' then 'Medicare' when instr��bk.yhjc, '΢��') > 0 then 'WeChat'  else 'Other' end jyqdbs, --����������ʶ
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
and (dt.cqtfbs <> '1' or dt.cqtfbs is null) --��ϸ���޳������˷�����
union
--�����˷�����
select distinct
refund.refundno tradeno,       --�����˷Ѷ�����
refund.refundno ddbh,-- ��������ţ�
dtl.hisno hisno,         --his������ˮ��
refund.brxm,          --��������
refund.cardno brjzkh, --���˾��￨��
refund.brsfzhm sfzhm, --�������֤����
dtl.yhid yhid,          --֧������/����
'����' qdmc,     --֧������/��������
'����' yhmc,     --�������ƣ�ʵ�ʵ�֧��������
'Transfer'  jyqdbs, --����������ʶ
'�˿�'  ywlx, --ҵ������
nvl(refund.fqjysj,refund.jysj) as jlcjsj,        --��¼����ʱ��
refund.jysj,          --֧��ʱ��
 -1*refund.jyje jyje,          --���׽��
'' ynkcode,       --Ժ�ڿ�״̬
refuns.mchid mchid,   --ҽԺ���
case refund.state when 'refund' then '1' when 'repaying' then '1' when 'repayings' then '1' when 'repaid' then '1'  when 'refunding' then '0' when 'failed' then '0' when 'refailed' then '0' when 'refailed' then '0' else '2' end jyzt, --����״̬(0:ʧ�ܣ�1���ɹ���2��δ֪)
case refund.state when 'refund' then 'ת�˳ɹ�' when 'repaying' then 'δ���' when 'repayings' then '���ͨ����δ����' when 'repaid' then '���ͨ��������ͨ��'  when 'refunding' then 'ת����' when 'failed' then 'ת��ʧ��' when 'refailed' then '��˲�ͨ��' when 'refailed' then '���ͨ�������˲�ͨ��' else 'δ֪' end jyztms, --����״̬����
'' yddbh,   --�˿�ԭ������
refund.bryhkh jyckh,    --���ײο��ţ����п��ţ�
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
'' tcje,           --ͳ����
'' gzje            --���˽��
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
