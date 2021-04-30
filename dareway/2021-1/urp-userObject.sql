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
  is 'ũ������������ˮ��';
comment on column URP.ABCPAY_TRANSFLOW.lsid
  is 'ũ��������ˮ����ID';
comment on column URP.ABCPAY_TRANSFLOW.qdzhid
  is '���������˻�ID';
comment on column URP.ABCPAY_TRANSFLOW.shbh
  is '�̻����';
comment on column URP.ABCPAY_TRANSFLOW.zdbh
  is '�ն˱��';
comment on column URP.ABCPAY_TRANSFLOW.jyckh
  is '���ײο��ţ�ϵͳ���ٺš�ҵ����ˮ�ţ�';
comment on column URP.ABCPAY_TRANSFLOW.jylsh
  is '������ˮ�ţ�������ˮ�ţ�';
comment on column URP.ABCPAY_TRANSFLOW.qqflsh
  is '������ˮ��';
comment on column URP.ABCPAY_TRANSFLOW.yjylsh
  is 'ԭ������ˮ��/ԭ���׶����ţ�����Ϊ�����ཻ��ʱ��ֵ';
comment on column URP.ABCPAY_TRANSFLOW.shddh
  is '�̻�������';
comment on column URP.ABCPAY_TRANSFLOW.zdhm
  is '�˵�����';
comment on column URP.ABCPAY_TRANSFLOW.spmc
  is '��Ʒ����';
comment on column URP.ABCPAY_TRANSFLOW.jysj
  is '����ʱ��';
comment on column URP.ABCPAY_TRANSFLOW.yhjyzh
  is '�û������˺ţ�֧�����˺�/���п��ţ�';
comment on column URP.ABCPAY_TRANSFLOW.jyje
  is '���׽���λ��Ԫ��';
comment on column URP.ABCPAY_TRANSFLOW.jyzt
  is '����״̬��0��ʧ�ܣ�1���ɹ���2��δ֪��';
comment on column URP.ABCPAY_TRANSFLOW.zhye
  is '�˻�����λ��Ԫ��';
comment on column URP.ABCPAY_TRANSFLOW.ywlx
  is 'ҵ�����ͣ�����֧���������˿';
comment on column URP.ABCPAY_TRANSFLOW.jybz
  is '���ױ�ע';
comment on column URP.ABCPAY_TRANSFLOW.jlcjsj
  is '��¼����ʱ��';
comment on column URP.ABCPAY_TRANSFLOW.dzrq
  is '��������';
comment on column URP.ABCPAY_TRANSFLOW.dzbs
  is '���˱�ʶ��1���Ѷ��ˣ�0��δ���ˣ�';
comment on column URP.ABCPAY_TRANSFLOW.crkbs
  is '������ʶ��1������⣬0��ԭʼ��⣩';
comment on column URP.ABCPAY_TRANSFLOW.jgbm
  is '��������';
comment on column URP.ABCPAY_TRANSFLOW.sfsc
  is 'ɾ��״̬��1��ɾ����0��δɾ����';
comment on column URP.ABCPAY_TRANSFLOW.bly1
  is '������1';
comment on column URP.ABCPAY_TRANSFLOW.bly2
  is '������2';
comment on column URP.ABCPAY_TRANSFLOW.bly3
  is '������3';
comment on column URP.ABCPAY_TRANSFLOW.dzbh
  is '���˱��';
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
  is 'Ӧ����ͳ�Ʊ�';
comment on column URP.ACCOUNTABLE_STATISTICS.qdzhydzid
  is '�����˻�Ӧ��������ID';
comment on column URP.ACCOUNTABLE_STATISTICS.qdzhid
  is '�����˻�����ID';
comment on column URP.ACCOUNTABLE_STATISTICS.ydzzje
  is 'Ӧ�����ܽ�֧����Ӧ���˴���仯��';
comment on column URP.ACCOUNTABLE_STATISTICS.qdzje
  is '�����ܽ��(��HIS��ˮͳ��)';
comment on column URP.ACCOUNTABLE_STATISTICS.dzrq
  is '��������';
comment on column URP.ACCOUNTABLE_STATISTICS.jlcjsj
  is '�˻�Ӧ���˼�¼����ʱ��';
comment on column URP.ACCOUNTABLE_STATISTICS.dzbs
  is '���˱�ʶ(1:�ѵ��ˣ�0��δ����)';
comment on column URP.ACCOUNTABLE_STATISTICS.dzwhfjmc
  is '����ά����������';
comment on column URP.ACCOUNTABLE_STATISTICS.dzwhfjbclj
  is '����ά����������·��';
comment on column URP.ACCOUNTABLE_STATISTICS.dzwhclbz
  is '����ά������ע';
comment on column URP.ACCOUNTABLE_STATISTICS.dzwhsj
  is '����ά��ʱ��';
comment on column URP.ACCOUNTABLE_STATISTICS.dzwhr
  is '����ά����';
comment on column URP.ACCOUNTABLE_STATISTICS.dzsj
  is '����ʱ��';
comment on column URP.ACCOUNTABLE_STATISTICS.bz
  is '��ע';
comment on column URP.ACCOUNTABLE_STATISTICS.sfsc
  is '�Ƿ�ɾ��(1:�ǣ�0����)';
comment on column URP.ACCOUNTABLE_STATISTICS.bly1
  is '������1';
comment on column URP.ACCOUNTABLE_STATISTICS.bly2
  is '������2';
comment on column URP.ACCOUNTABLE_STATISTICS.bly3
  is '������3
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
  is 'ͨѶ¼��';
comment on column URP.ADDRESS_BOOK.txlid
  is 'ͨѶ¼����Id';
comment on column URP.ADDRESS_BOOK.xm
  is '����';
comment on column URP.ADDRESS_BOOK.xb
  is '�Ա�0���У�1��Ů��';
comment on column URP.ADDRESS_BOOK.sjhm
  is '�ֻ�����';
comment on column URP.ADDRESS_BOOK.ghhm
  is '�̶��绰����';
comment on column URP.ADDRESS_BOOK.dzyx
  is '��������';
comment on column URP.ADDRESS_BOOK.wxh
  is '΢�ź�';
comment on column URP.ADDRESS_BOOK.wxpzid
  is '΢�����ñ�����Id';
comment on column URP.ADDRESS_BOOK.openid
  is 'ָ��΢�Ź��ں��µĸ���openId';
comment on column URP.ADDRESS_BOOK.unionid
  is 'ָ��΢�Ź��ں��µĸ���unionid';
comment on column URP.ADDRESS_BOOK.csrq
  is '��������';
comment on column URP.ADDRESS_BOOK.sfzh
  is '���֤��';
comment on column URP.ADDRESS_BOOK.yhbq
  is '�û���ǩ��ͬ�¡����ѡ�����';
comment on column URP.ADDRESS_BOOK.ssks
  is '��������';
comment on column URP.ADDRESS_BOOK.sfsc
  is '�Ƿ�ɾ����0����1���ǣ�';
comment on column URP.ADDRESS_BOOK.jlssr
  is '��¼�����ˣ�ϵͳ��¼�������ڸ���ά��ͨ��¼��';
comment on column URP.ADDRESS_BOOK.jgbm
  is '��������';
comment on column URP.ADDRESS_BOOK.jlcjsj
  is '��¼����ʱ��';
comment on column URP.ADDRESS_BOOK.cjr
  is '�����ˣ�ϵͳ��¼����';
comment on column URP.ADDRESS_BOOK.zhxgsj
  is '����޸�ʱ��';
comment on column URP.ADDRESS_BOOK.zhxgr
  is '����޸���';
comment on column URP.ADDRESS_BOOK.bz
  is '��ע';
comment on column URP.ADDRESS_BOOK.bly
  is '������';
comment on column URP.ADDRESS_BOOK.push
  is '�����˱�ʶ��0�������ͣ�1���ͣ�������ͺ������쳣��Ϣ������͸���';
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
  is '֧����������ˮ��';
comment on column URP.ALIPAY_TRANSFLOW.lsid
  is '֧������ˮ����ID';
comment on column URP.ALIPAY_TRANSFLOW.qdzhid
  is '���������˻�ID';
comment on column URP.ALIPAY_TRANSFLOW.shbh
  is '�̻����';
comment on column URP.ALIPAY_TRANSFLOW.zdbh
  is '�ն˱��';
comment on column URP.ALIPAY_TRANSFLOW.jyckh
  is '���ײο��ţ�ϵͳ���ٺš�ҵ����ˮ�ţ�';
comment on column URP.ALIPAY_TRANSFLOW.jylsh
  is '������ˮ�ţ�������ˮ�ţ�';
comment on column URP.ALIPAY_TRANSFLOW.qqflsh
  is '������ˮ��';
comment on column URP.ALIPAY_TRANSFLOW.yjylsh
  is 'ԭ������ˮ�ţ�����Ϊ�����ཻ��ʱ��ֵ';
comment on column URP.ALIPAY_TRANSFLOW.shddh
  is '�̻�������';
comment on column URP.ALIPAY_TRANSFLOW.zdhm
  is '�˵�����';
comment on column URP.ALIPAY_TRANSFLOW.spmc
  is '��Ʒ����';
comment on column URP.ALIPAY_TRANSFLOW.jysj
  is '����ʱ��';
comment on column URP.ALIPAY_TRANSFLOW.yhjyzh
  is '�û������˺ţ�֧�����˺�/���п��ţ�';
comment on column URP.ALIPAY_TRANSFLOW.jyje
  is '���׽���λ��Ԫ��';
comment on column URP.ALIPAY_TRANSFLOW.jyzt
  is '����״̬��0��ʧ�ܣ�1���ɹ���2��δ֪��';
comment on column URP.ALIPAY_TRANSFLOW.zhye
  is '�˻�����λ��Ԫ��';
comment on column URP.ALIPAY_TRANSFLOW.ywlx
  is 'ҵ�����ͣ�����֧���������˿';
comment on column URP.ALIPAY_TRANSFLOW.jybz
  is '���ױ�ע';
comment on column URP.ALIPAY_TRANSFLOW.jlcjsj
  is '��¼����ʱ��';
comment on column URP.ALIPAY_TRANSFLOW.dzrq
  is '��������';
comment on column URP.ALIPAY_TRANSFLOW.dzbs
  is '���˱�ʶ��1���Ѷ��ˣ�0��δ���ˣ�';
comment on column URP.ALIPAY_TRANSFLOW.crkbs
  is '������ʶ��1������⣬0��ԭʼ��⣩';
comment on column URP.ALIPAY_TRANSFLOW.jgbm
  is '��������';
comment on column URP.ALIPAY_TRANSFLOW.sfsc
  is 'ɾ��״̬��1��ɾ����0��δɾ����';
comment on column URP.ALIPAY_TRANSFLOW.bly1
  is '������1';
comment on column URP.ALIPAY_TRANSFLOW.bly2
  is '������2';
comment on column URP.ALIPAY_TRANSFLOW.bly3
  is '������3->���￨��';
comment on column URP.ALIPAY_TRANSFLOW.dzbh
  is '���˱��';
comment on column URP.ALIPAY_TRANSFLOW.ejbs
  is '������ʶ';
comment on column URP.ALIPAY_TRANSFLOW.sxf
  is '�����ѣ���λ��Ԫ��';
comment on column URP.ALIPAY_TRANSFLOW.qsje
  is '�������λ��Ԫ��';
comment on column URP.ALIPAY_TRANSFLOW.qsrq
  is '��������';
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
  is '����ͳ�Ʊ�';
comment on column URP.ARRIVALACCOUNT_STATISTICS.qdzhdzid
  is '�����˻���������ID';
comment on column URP.ARRIVALACCOUNT_STATISTICS.qdzhid
  is '�����˻�����ID';
comment on column URP.ARRIVALACCOUNT_STATISTICS.dzzje
  is '�����ܽ�ҽ������-ʵ�ʵ渶�ʽ�';
comment on column URP.ARRIVALACCOUNT_STATISTICS.dzpc
  is '��������';
comment on column URP.ARRIVALACCOUNT_STATISTICS.dzrq
  is '��������';
comment on column URP.ARRIVALACCOUNT_STATISTICS.jlcjsj
  is '�˻����˼�¼����ʱ��';
comment on column URP.ARRIVALACCOUNT_STATISTICS.dzbs
  is '���˱�ʶ(1:�ѵ��ˣ�0��δ����)';
comment on column URP.ARRIVALACCOUNT_STATISTICS.dzwhfjmc
  is '����ά����������';
comment on column URP.ARRIVALACCOUNT_STATISTICS.dzwhfjbclj
  is '����ά����������·��';
comment on column URP.ARRIVALACCOUNT_STATISTICS.dzwhclbz
  is '����ά������ע';
comment on column URP.ARRIVALACCOUNT_STATISTICS.dzwhzje
  is '����ά���ܽ��';
comment on column URP.ARRIVALACCOUNT_STATISTICS.dzwhsj
  is '����ά��ʱ��';
comment on column URP.ARRIVALACCOUNT_STATISTICS.dzwhr
  is '����ά����';
comment on column URP.ARRIVALACCOUNT_STATISTICS.dzsj
  is '����ʱ��';
comment on column URP.ARRIVALACCOUNT_STATISTICS.sfsc
  is '�Ƿ�ɾ��(1:�ǣ�0����)';
comment on column URP.ARRIVALACCOUNT_STATISTICS.bz
  is '��ע��ҽ������-�����·ݣ�';
comment on column URP.ARRIVALACCOUNT_STATISTICS.bly1
  is '������1��ҽ������-��������ã�';
comment on column URP.ARRIVALACCOUNT_STATISTICS.bly2
  is '������2��ҽ������-Ԥ����֤��';
comment on column URP.ARRIVALACCOUNT_STATISTICS.bly3
  is '������3';
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
  is '�ֽ�����ˮ��';
comment on column URP.CASHPAY_TRANSFLOW.lsid
  is '΢����ˮ����ID';
comment on column URP.CASHPAY_TRANSFLOW.qdzhid
  is '���������˻�ID';
comment on column URP.CASHPAY_TRANSFLOW.shbh
  is '�̻����';
comment on column URP.CASHPAY_TRANSFLOW.zdbh
  is '�ն˱��';
comment on column URP.CASHPAY_TRANSFLOW.jyckh
  is '���ײο��ţ�ϵͳ���ٺš�ҵ����ˮ�ţ�';
comment on column URP.CASHPAY_TRANSFLOW.jylsh
  is '������ˮ�ţ�������ˮ�ţ�';
comment on column URP.CASHPAY_TRANSFLOW.qqflsh
  is '������ˮ��';
comment on column URP.CASHPAY_TRANSFLOW.yjylsh
  is 'ԭ������ˮ�ţ�����Ϊ�����ཻ��ʱ��ֵ';
comment on column URP.CASHPAY_TRANSFLOW.shddh
  is '�̻�������';
comment on column URP.CASHPAY_TRANSFLOW.zdhm
  is '�˵�����';
comment on column URP.CASHPAY_TRANSFLOW.spmc
  is '��Ʒ����';
comment on column URP.CASHPAY_TRANSFLOW.jysj
  is '����ʱ��';
comment on column URP.CASHPAY_TRANSFLOW.yhjyzh
  is '�û������˺ţ�֧�����˺�/���п��ţ�';
comment on column URP.CASHPAY_TRANSFLOW.jyje
  is '���׽���λ��Ԫ��';
comment on column URP.CASHPAY_TRANSFLOW.jyzt
  is '����״̬��0��ʧ�ܣ�1���ɹ���2��δ֪��';
comment on column URP.CASHPAY_TRANSFLOW.zhye
  is '�˻�����λ��Ԫ��';
comment on column URP.CASHPAY_TRANSFLOW.ywlx
  is 'ҵ�����ͣ�����֧���������˿';
comment on column URP.CASHPAY_TRANSFLOW.jybz
  is '���ױ�ע';
comment on column URP.CASHPAY_TRANSFLOW.jlcjsj
  is '��¼����ʱ��';
comment on column URP.CASHPAY_TRANSFLOW.dzrq
  is '��������';
comment on column URP.CASHPAY_TRANSFLOW.dzbs
  is '���˱�ʶ��1���Ѷ��ˣ�0��δ���ˣ�';
comment on column URP.CASHPAY_TRANSFLOW.crkbs
  is '������ʶ��1������⣬0��ԭʼ��⣩';
comment on column URP.CASHPAY_TRANSFLOW.dzbh
  is '���˱��';
comment on column URP.CASHPAY_TRANSFLOW.ejbs
  is '������ʶ��ʵ��֧������/�����̣�';
comment on column URP.CASHPAY_TRANSFLOW.jgbm
  is '��������';
comment on column URP.CASHPAY_TRANSFLOW.sfsc
  is 'ɾ��״̬��1��ɾ����0��δɾ����';
comment on column URP.CASHPAY_TRANSFLOW.bly1
  is '������1';
comment on column URP.CASHPAY_TRANSFLOW.bly2
  is '������2';
comment on column URP.CASHPAY_TRANSFLOW.bly3
  is '������3';
comment on column URP.CASHPAY_TRANSFLOW.sxf
  is '�����ѣ���λ��Ԫ��';
comment on column URP.CASHPAY_TRANSFLOW.qsje
  is '�������λ��Ԫ��';
comment on column URP.CASHPAY_TRANSFLOW.qsrq
  is '��������';
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
  is '���оۺϸ�������ˮ��';
comment on column URP.CCBUNIONPAY_TRANSFLOW.lsid
  is '���оۺϸ���ˮ����ID';
comment on column URP.CCBUNIONPAY_TRANSFLOW.qdzhid
  is '���������˻�ID';
comment on column URP.CCBUNIONPAY_TRANSFLOW.shbh
  is '�̻����';
comment on column URP.CCBUNIONPAY_TRANSFLOW.zdbh
  is '�ն˱��';
comment on column URP.CCBUNIONPAY_TRANSFLOW.jyckh
  is '���ײο��ţ�ϵͳ���ٺš�ҵ����ˮ�ţ�';
comment on column URP.CCBUNIONPAY_TRANSFLOW.jylsh
  is '������ˮ�ţ�������ˮ�ţ�';
comment on column URP.CCBUNIONPAY_TRANSFLOW.qqflsh
  is '������ˮ��';
comment on column URP.CCBUNIONPAY_TRANSFLOW.yjylsh
  is 'ԭ������ˮ��/ԭ���׶����ţ�����Ϊ�����ཻ��ʱ��ֵ';
comment on column URP.CCBUNIONPAY_TRANSFLOW.shddh
  is '�̻�������';
comment on column URP.CCBUNIONPAY_TRANSFLOW.zdhm
  is '�˵�����';
comment on column URP.CCBUNIONPAY_TRANSFLOW.spmc
  is '��Ʒ����';
comment on column URP.CCBUNIONPAY_TRANSFLOW.jysj
  is '����ʱ��';
comment on column URP.CCBUNIONPAY_TRANSFLOW.yhjyzh
  is '�û������˺ţ�֧�����˺�/���п��ţ�';
comment on column URP.CCBUNIONPAY_TRANSFLOW.jyje
  is '���׽���λ��Ԫ��';
comment on column URP.CCBUNIONPAY_TRANSFLOW.jyzt
  is '����״̬��0��ʧ�ܣ�1���ɹ���2��δ֪��';
comment on column URP.CCBUNIONPAY_TRANSFLOW.zhye
  is '�˻�����λ��Ԫ��';
comment on column URP.CCBUNIONPAY_TRANSFLOW.ywlx
  is 'ҵ�����ͣ�����֧���������˿';
comment on column URP.CCBUNIONPAY_TRANSFLOW.jybz
  is '���ױ�ע';
comment on column URP.CCBUNIONPAY_TRANSFLOW.jlcjsj
  is '��¼����ʱ��';
comment on column URP.CCBUNIONPAY_TRANSFLOW.dzrq
  is '��������';
comment on column URP.CCBUNIONPAY_TRANSFLOW.dzbs
  is '���˱�ʶ��1���Ѷ��ˣ�0��δ���ˣ�';
comment on column URP.CCBUNIONPAY_TRANSFLOW.crkbs
  is '������ʶ��1������⣬0��ԭʼ��⣩';
comment on column URP.CCBUNIONPAY_TRANSFLOW.jgbm
  is '��������';
comment on column URP.CCBUNIONPAY_TRANSFLOW.sfsc
  is 'ɾ��״̬��1��ɾ����0��δɾ����';
comment on column URP.CCBUNIONPAY_TRANSFLOW.bly1
  is '������1';
comment on column URP.CCBUNIONPAY_TRANSFLOW.bly2
  is '������2';
comment on column URP.CCBUNIONPAY_TRANSFLOW.bly3
  is '������3';
comment on column URP.CCBUNIONPAY_TRANSFLOW.dzbh
  is '���˱��';
comment on column URP.CCBUNIONPAY_TRANSFLOW.ejbs
  is '������ʶ';
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
  is '�㷢���տ������ˮ��';
comment on column URP.CGBSMARTPAY_TRANSFLOW.lsid
  is '�㷢���տ���ˮ����ID';
comment on column URP.CGBSMARTPAY_TRANSFLOW.qdzhid
  is '���������˻�ID';
comment on column URP.CGBSMARTPAY_TRANSFLOW.shbh
  is '�̻����';
comment on column URP.CGBSMARTPAY_TRANSFLOW.zdbh
  is '�ն˱��';
comment on column URP.CGBSMARTPAY_TRANSFLOW.jyckh
  is '���ײο��ţ�ϵͳ���ٺš�ҵ����ˮ�ţ�';
comment on column URP.CGBSMARTPAY_TRANSFLOW.jylsh
  is '������ˮ�ţ�������ˮ�ţ�';
comment on column URP.CGBSMARTPAY_TRANSFLOW.qqflsh
  is '������ˮ��';
comment on column URP.CGBSMARTPAY_TRANSFLOW.yjylsh
  is 'ԭ������ˮ��/ԭ���׶����ţ�����Ϊ�����ཻ��ʱ��ֵ';
comment on column URP.CGBSMARTPAY_TRANSFLOW.shddh
  is '�̻�������';
comment on column URP.CGBSMARTPAY_TRANSFLOW.zdhm
  is '�˵�����';
comment on column URP.CGBSMARTPAY_TRANSFLOW.spmc
  is '��Ʒ����';
comment on column URP.CGBSMARTPAY_TRANSFLOW.jysj
  is '����ʱ��';
comment on column URP.CGBSMARTPAY_TRANSFLOW.yhjyzh
  is '�û������˺ţ�֧�����˺�/���п��ţ�';
comment on column URP.CGBSMARTPAY_TRANSFLOW.jyje
  is '���׽���λ��Ԫ��';
comment on column URP.CGBSMARTPAY_TRANSFLOW.jyzt
  is '����״̬��0��ʧ�ܣ�1���ɹ���2��δ֪��';
comment on column URP.CGBSMARTPAY_TRANSFLOW.zhye
  is '�˻�����λ��Ԫ��';
comment on column URP.CGBSMARTPAY_TRANSFLOW.ywlx
  is 'ҵ�����ͣ�����֧���������˿';
comment on column URP.CGBSMARTPAY_TRANSFLOW.jybz
  is '���ױ�ע';
comment on column URP.CGBSMARTPAY_TRANSFLOW.jlcjsj
  is '��¼����ʱ��';
comment on column URP.CGBSMARTPAY_TRANSFLOW.dzrq
  is '��������';
comment on column URP.CGBSMARTPAY_TRANSFLOW.dzbs
  is '���˱�ʶ��1���Ѷ��ˣ�0��δ���ˣ�';
comment on column URP.CGBSMARTPAY_TRANSFLOW.crkbs
  is '������ʶ��1������⣬0��ԭʼ��⣩';
comment on column URP.CGBSMARTPAY_TRANSFLOW.jgbm
  is '��������';
comment on column URP.CGBSMARTPAY_TRANSFLOW.sfsc
  is 'ɾ��״̬��1��ɾ����0��δɾ����';
comment on column URP.CGBSMARTPAY_TRANSFLOW.bly1
  is '������1';
comment on column URP.CGBSMARTPAY_TRANSFLOW.bly2
  is '������2';
comment on column URP.CGBSMARTPAY_TRANSFLOW.bly3
  is '������3->���￨��';
comment on column URP.CGBSMARTPAY_TRANSFLOW.dzbh
  is '���˱��';
comment on column URP.CGBSMARTPAY_TRANSFLOW.ejbs
  is '������ʶ���ִ�->�˿�״̬��';
comment on column URP.CGBSMARTPAY_TRANSFLOW.sxf
  is '�����ѣ���λ��Ԫ��';
comment on column URP.CGBSMARTPAY_TRANSFLOW.qsje
  is '�������λ��Ԫ��';
comment on column URP.CGBSMARTPAY_TRANSFLOW.qsrq
  is '��������';
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
  is '�����˻�';
comment on column URP.CHANNEL_ACCOUNT.qdzhid
  is '�����˻�ID�����������˻�';
comment on column URP.CHANNEL_ACCOUNT.qdid
  is '����ID��������������';
comment on column URP.CHANNEL_ACCOUNT.shbh
  is '�̻����';
comment on column URP.CHANNEL_ACCOUNT.zdbh
  is '�ն˱��';
comment on column URP.CHANNEL_ACCOUNT.zhmc
  is '�˻�����';
comment on column URP.CHANNEL_ACCOUNT.zhbh
  is '�˻����';
comment on column URP.CHANNEL_ACCOUNT.zhzt
  is '�˻�״̬��1��������0������/ɾ����';
comment on column URP.CHANNEL_ACCOUNT.jlcjsj
  is '��¼����ʱ��';
comment on column URP.CHANNEL_ACCOUNT.cjr
  is '������';
comment on column URP.CHANNEL_ACCOUNT.zhxgsj
  is '����޸�ʱ��';
comment on column URP.CHANNEL_ACCOUNT.zhxgr
  is '����޸���';
comment on column URP.CHANNEL_ACCOUNT.bz
  is '��ע';
comment on column URP.CHANNEL_ACCOUNT.khh
  is '������';
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
  is '������Ϣ';
comment on column URP.CHANNEL_INFO.qdid
  is '����ID������';
comment on column URP.CHANNEL_INFO.qdbm
  is '�������룬������������';
comment on column URP.CHANNEL_INFO.qdmc
  is '��������';
comment on column URP.CHANNEL_INFO.dzwjgs
  is '�����ļ���ʽ';
comment on column URP.CHANNEL_INFO.dzzq
  is '��������';
comment on column URP.CHANNEL_INFO.rqsj
  is '����ʱ��';
comment on column URP.CHANNEL_INFO.qdzt
  is '����״̬��1��������0�����ã�';
comment on column URP.CHANNEL_INFO.sfzddz
  is '�Ƿ��Զ����ˣ�0����1�ǣ�';
comment on column URP.CHANNEL_INFO.hqdzwjfs
  is '��ȡ�����ļ���ʽ��ftp��sftp��http��https��socket��webservice����ͼ��';
comment on column URP.CHANNEL_INFO.dzwjxzdz
  is '�����ļ����ص�ַ��FTP��IP���ӿڣ�url����ͼ�����ݿ�������Ӵ���';
comment on column URP.CHANNEL_INFO.ftpzh
  is 'ftp�˺š���ͼ���ݿ��û���';
comment on column URP.CHANNEL_INFO.ftpmm
  is 'ftp���롢��ͼ���ݿ�����';
comment on column URP.CHANNEL_INFO.ftpdk
  is 'ftp�˿ڡ�socket�˿�';
comment on column URP.CHANNEL_INFO.qmsf
  is 'ǩ���㷨';
comment on column URP.CHANNEL_INFO.shzs
  is '�̻�֤�飨��·�����ļ�����';
comment on column URP.CHANNEL_INFO.ggzs
  is '����֤�飨��·�����ļ�����';
comment on column URP.CHANNEL_INFO.dzwjxzml
  is '�����ļ�����Ŀ¼(ftp��sftp����̬��д������̬����{}������)';
comment on column URP.CHANNEL_INFO.dzwjmc
  is '�����ļ����ƣ���̬��д������̬����{}��������';
comment on column URP.CHANNEL_INFO.dzwjbdbclj
  is '�����ļ����ر���·������̬��д������̬����{}��������';
comment on column URP.CHANNEL_INFO.jgbm
  is '��������';
comment on column URP.CHANNEL_INFO.dzwjxfsj
  is '�����ļ��·�ʱ��';
comment on column URP.CHANNEL_INFO.jlcjsj
  is '��¼����ʱ��';
comment on column URP.CHANNEL_INFO.cjr
  is '������';
comment on column URP.CHANNEL_INFO.zhxgsj
  is '����޸�����';
comment on column URP.CHANNEL_INFO.zhxgr
  is '����޸���';
comment on column URP.CHANNEL_INFO.bz
  is '��ע';
comment on column URP.CHANNEL_INFO.bly
  is '������';
comment on column URP.CHANNEL_INFO.jkm
  is '�ӿ�/����������webservice��';
comment on column URP.CHANNEL_INFO.jkcs
  is '�ӿڲ���(����http��htps��socket��webservice�ӿ�����Ĳ�������̬��д������̬����{}������)';
comment on column URP.CHANNEL_INFO.zhqdfs
  is '�����˻�ȷ����ʽ��1���̻��ţ�2���̻���+�ն˺ţ�3�������˻��˺ţ�';
comment on column URP.CHANNEL_INFO.stmc
  is '��ͼ����';
comment on column URP.CHANNEL_INFO.sjklx
  is '���ݿ����ͣ�oracle��MySQL�ȣ�';
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
  is '�������˽����';
comment on column URP.CHANNEL_RECONRESULT.qddzjgid
  is '�������˽������ID�����������������˽��';
comment on column URP.CHANNEL_RECONRESULT.qdid
  is '��������id';
comment on column URP.CHANNEL_RECONRESULT.dzbs
  is '���˱�ʶ��1:����ɡ�0:δ��ɡ�2δ���ˣ�';
comment on column URP.CHANNEL_RECONRESULT.dzjg
  is '���˽����1��ƽ��0�˲�ƽ��2δ���ˡ�3�޽��ף�';
comment on column URP.CHANNEL_RECONRESULT.dzjgms
  is '���˽������';
comment on column URP.CHANNEL_RECONRESULT.qdjyzje
  is '���ζ��˸����������ܽ����쳣���ף�';
comment on column URP.CHANNEL_RECONRESULT.qdjyzbs
  is '���ζ��˸����������ܱ��������쳣���ף�';
comment on column URP.CHANNEL_RECONRESULT.qdycjyzje
  is '���ζ��˸������쳣�����ܽ����������ܽ��-���������ܽ�';
comment on column URP.CHANNEL_RECONRESULT.ycjyzbs
  is '���ζ����쳣�����ܱ�����His�������쳣������';
comment on column URP.CHANNEL_RECONRESULT.qdjyzb
  is '���ζ�����������ռ��(���ζ��˸��������ױ���/�����������ζ��˽����ܱ���)';
comment on column URP.CHANNEL_RECONRESULT.qdjylszb
  is '���ζ�������������ʷռ��(���ζ��˸��������ױ���/�����������н����ܱ���)';
comment on column URP.CHANNEL_RECONRESULT.qdjyhbzb
  is '���ζ����������׻���ռ��';
comment on column URP.CHANNEL_RECONRESULT.dzrq
  is '��������';
comment on column URP.CHANNEL_RECONRESULT.jlcjsj
  is '�������ʱ��/��¼����ʱ��';
comment on column URP.CHANNEL_RECONRESULT.dzfs
  is '���˷�ʽ��0���Զ����ˡ�1���ֶ����ˡ�2���ֶ� �ض��ˣ�';
comment on column URP.CHANNEL_RECONRESULT.dzfqr
  is '���˷�����';
comment on column URP.CHANNEL_RECONRESULT.sfsc
  is '�Ƿ�ɾ����1���ǣ�0����';
comment on column URP.CHANNEL_RECONRESULT.bz
  is '��ע';
comment on column URP.CHANNEL_RECONRESULT.bly1
  is '������1';
comment on column URP.CHANNEL_RECONRESULT.bly2
  is '������2';
comment on column URP.CHANNEL_RECONRESULT.bly3
  is '������3';
comment on column URP.CHANNEL_RECONRESULT.hisjyzje
  is '���ζ��˶�Ӧ��������His�����ܽ����쳣���ף�';
comment on column URP.CHANNEL_RECONRESULT.hisjyzbs
  is '���ζ��˶�Ӧ��������His�����ܱ��������쳣���ף�';
comment on column URP.CHANNEL_RECONRESULT.hisycjyzje
  is '���ζ��˶�Ӧ��������His�쳣�����ܽ�His�����ܽ��-���������ܽ�';
comment on column URP.CHANNEL_RECONRESULT.qdycjyzbs
  is '���ζ��������쳣�����ܱ���';
comment on column URP.CHANNEL_RECONRESULT.hisycjyzbs
  is '���ζ��˶�Ӧ��������His�쳣�����ܱ���';
comment on column URP.CHANNEL_RECONRESULT.sxf
  is '�����ѣ���λ��Ԫ��';
comment on column URP.CHANNEL_RECONRESULT.qsje
  is '�������λ��Ԫ��';
comment on column URP.CHANNEL_RECONRESULT.qsrq
  is '��������';
comment on column URP.CHANNEL_RECONRESULT.qdzfbs
  is '����֧������';
comment on column URP.CHANNEL_RECONRESULT.qdtkbs
  is '�����˿����';
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
  is '���ӽ�����������ˮ��';
comment on column URP.EHCPAY_TRANSFLOW.lsid
  is '���ӽ�������ˮ����ID';
comment on column URP.EHCPAY_TRANSFLOW.qdzhid
  is '���������˻�ID';
comment on column URP.EHCPAY_TRANSFLOW.shbh
  is '�̻����';
comment on column URP.EHCPAY_TRANSFLOW.zdbh
  is '�ն˱��';
comment on column URP.EHCPAY_TRANSFLOW.jyckh
  is '���ײο��ţ�ϵͳ���ٺš�ҵ����ˮ�ţ�';
comment on column URP.EHCPAY_TRANSFLOW.jylsh
  is '������ˮ�ţ�������ˮ�ţ�';
comment on column URP.EHCPAY_TRANSFLOW.qqflsh
  is '������ˮ��';
comment on column URP.EHCPAY_TRANSFLOW.yjylsh
  is 'ԭ������ˮ�ţ�����Ϊ�����ཻ��ʱ��ֵ';
comment on column URP.EHCPAY_TRANSFLOW.shddh
  is '�̻�������';
comment on column URP.EHCPAY_TRANSFLOW.zdhm
  is '�˵�����';
comment on column URP.EHCPAY_TRANSFLOW.spmc
  is '��Ʒ����';
comment on column URP.EHCPAY_TRANSFLOW.jysj
  is '����ʱ��';
comment on column URP.EHCPAY_TRANSFLOW.yhjyzh
  is '�û������˺ţ�֧�����˺�/���п��ţ�';
comment on column URP.EHCPAY_TRANSFLOW.jyje
  is '���׽���λ��Ԫ��';
comment on column URP.EHCPAY_TRANSFLOW.jyzt
  is '����״̬��0��ʧ�ܣ�1���ɹ���2��δ֪��';
comment on column URP.EHCPAY_TRANSFLOW.zhye
  is '�˻�����λ��Ԫ��';
comment on column URP.EHCPAY_TRANSFLOW.ywlx
  is 'ҵ�����ͣ�����֧���������˿';
comment on column URP.EHCPAY_TRANSFLOW.jybz
  is '���ױ�ע(ԭ���׶�����)';
comment on column URP.EHCPAY_TRANSFLOW.jlcjsj
  is '��¼����ʱ��';
comment on column URP.EHCPAY_TRANSFLOW.dzrq
  is '��������';
comment on column URP.EHCPAY_TRANSFLOW.dzbs
  is '���˱�ʶ��1���Ѷ��ˣ�0��δ���ˣ�';
comment on column URP.EHCPAY_TRANSFLOW.crkbs
  is '������ʶ��1������⣬0��ԭʼ��⣩';
comment on column URP.EHCPAY_TRANSFLOW.jgbm
  is '��������';
comment on column URP.EHCPAY_TRANSFLOW.sfsc
  is 'ɾ��״̬��1��ɾ����0��δɾ����';
comment on column URP.EHCPAY_TRANSFLOW.bly1
  is '������1';
comment on column URP.EHCPAY_TRANSFLOW.bly2
  is '������2';
comment on column URP.EHCPAY_TRANSFLOW.bly3
  is '������3';
comment on column URP.EHCPAY_TRANSFLOW.dzbh
  is '���˱��';
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
  is '�豸��Ϣ';
comment on column URP.E_EQUIPMENT_FACTORY.sbcsid
  is '�豸����ID������';
comment on column URP.E_EQUIPMENT_FACTORY.sbcsbm
  is '�豸���̱��룬���������豸����';
comment on column URP.E_EQUIPMENT_FACTORY.sbcsmc
  is '�豸��������';
comment on column URP.E_EQUIPMENT_FACTORY.dzwjgs
  is '�����ļ���ʽ';
comment on column URP.E_EQUIPMENT_FACTORY.dzzq
  is '��������';
comment on column URP.E_EQUIPMENT_FACTORY.rqsj
  is '����ʱ��';
comment on column URP.E_EQUIPMENT_FACTORY.cszt
  is '����״̬��1��������0�����ã�';
comment on column URP.E_EQUIPMENT_FACTORY.sfzddz
  is '�Ƿ��Զ����ˣ�0����1�ǣ�';
comment on column URP.E_EQUIPMENT_FACTORY.hqdzwjfs
  is '��ȡ�����ļ���ʽ��ftp��sftp��http��https��socket��webservice����ͼ��';
comment on column URP.E_EQUIPMENT_FACTORY.dzwjxzdz
  is '�����ļ����ص�ַ��FTP��IP���ӿڣ�url����ͼ�����ݿ�������Ӵ���';
comment on column URP.E_EQUIPMENT_FACTORY.ftpzh
  is 'ftp�˺š���ͼ���ݿ��û���';
comment on column URP.E_EQUIPMENT_FACTORY.ftpmm
  is 'ftp���롢��ͼ���ݿ�����';
comment on column URP.E_EQUIPMENT_FACTORY.ftpdk
  is 'ftp�˿ڡ�socket�˿�';
comment on column URP.E_EQUIPMENT_FACTORY.qmsf
  is 'ǩ���㷨';
comment on column URP.E_EQUIPMENT_FACTORY.shzs
  is '�̻�֤�飨��·�����ļ�����';
comment on column URP.E_EQUIPMENT_FACTORY.ggzs
  is '����֤�飨��·�����ļ�����';
comment on column URP.E_EQUIPMENT_FACTORY.dzwjxzml
  is '�����ļ�����Ŀ¼(ftp��sftp����̬��д������̬����{}������)';
comment on column URP.E_EQUIPMENT_FACTORY.dzwjmc
  is '�����ļ����ƣ���̬��д������̬����{}��������';
comment on column URP.E_EQUIPMENT_FACTORY.dzwjbdbclj
  is '�����ļ����ر���·������̬��д������̬����{}��������';
comment on column URP.E_EQUIPMENT_FACTORY.jgbm
  is '��������';
comment on column URP.E_EQUIPMENT_FACTORY.dzwjxfsj
  is '�����ļ��·�ʱ��';
comment on column URP.E_EQUIPMENT_FACTORY.jlcjsj
  is '��¼����ʱ��';
comment on column URP.E_EQUIPMENT_FACTORY.cjr
  is '������';
comment on column URP.E_EQUIPMENT_FACTORY.zhxgsj
  is '����޸�����';
comment on column URP.E_EQUIPMENT_FACTORY.zhxgr
  is '����޸���';
comment on column URP.E_EQUIPMENT_FACTORY.jkm
  is '�ӿ�/����������webservice��';
comment on column URP.E_EQUIPMENT_FACTORY.jkcs
  is '�ӿڲ���(����http��htps��socket��webservice�ӿ�����Ĳ�������̬��д������̬����{}������)';
comment on column URP.E_EQUIPMENT_FACTORY.zhqdfs
  is '�����˻�ȷ����ʽ��1���̻��ţ�2���̻���+�ն˺ţ�3�������˻��˺ţ�';
comment on column URP.E_EQUIPMENT_FACTORY.stmc
  is '��ͼ����';
comment on column URP.E_EQUIPMENT_FACTORY.sjklx
  is '���ݿ����ͣ�oracle��MySQL�ȣ�';
comment on column URP.E_EQUIPMENT_FACTORY.bz
  is '��ע';
comment on column URP.E_EQUIPMENT_FACTORY.bly
  is '������';
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
  is '�豸����ID';
comment on column URP.E_EQUIPMENT_INFO.sbbm
  is '�豸����';
comment on column URP.E_EQUIPMENT_INFO.sbmc
  is '�豸����';
comment on column URP.E_EQUIPMENT_INFO.sbxlh
  is '�豸���к�';
comment on column URP.E_EQUIPMENT_INFO.sbcsid
  is '�����豸��������ID';
comment on column URP.E_EQUIPMENT_INFO.sbzt
  is '�豸״̬(1:������0:����)';
comment on column URP.E_EQUIPMENT_INFO.jgbm
  is '�����б���';
comment on column URP.E_EQUIPMENT_INFO.jlcjsj
  is '��¼����ʱ��';
comment on column URP.E_EQUIPMENT_INFO.cjr
  is '������';
comment on column URP.E_EQUIPMENT_INFO.zhxgsj
  is '����޸�ʱ��';
comment on column URP.E_EQUIPMENT_INFO.zhxgr
  is '����޸���';
comment on column URP.E_EQUIPMENT_INFO.bz
  is '��ע';
comment on column URP.E_EQUIPMENT_INFO.sbcsbm
  is '�豸���̱���';
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
  is '�豸���˽����';
comment on column URP.E_EQUIPMENT_RECONRESULT.sbdzjgid
  is '�����豸���˽������ID����������ÿ��������ÿ���豸�Ķ��˽��';
comment on column URP.E_EQUIPMENT_RECONRESULT.sbcsid
  is '�豸��������id';
comment on column URP.E_EQUIPMENT_RECONRESULT.sbid
  is '�豸����ID';
comment on column URP.E_EQUIPMENT_RECONRESULT.dzbs
  is '���˱�ʶ��1:����ɡ�0:δ��ɡ�2δ���ˣ�';
comment on column URP.E_EQUIPMENT_RECONRESULT.dzjg
  is '���˽����1��ƽ��0�˲�ƽ��2δ���ˣ�';
comment on column URP.E_EQUIPMENT_RECONRESULT.dzjgms
  is '���˽������';
comment on column URP.E_EQUIPMENT_RECONRESULT.ycjyzbs
  is '���ζ����쳣�����ܱ���';
comment on column URP.E_EQUIPMENT_RECONRESULT.sbjyzbs
  is '���豸�����ܱ���';
comment on column URP.E_EQUIPMENT_RECONRESULT.sbjyzje
  is '���豸�����ܽ��';
comment on column URP.E_EQUIPMENT_RECONRESULT.sbycjyzbs
  is '���豸�쳣�����ܱ���';
comment on column URP.E_EQUIPMENT_RECONRESULT.sbycjyzje
  is '���豸�쳣�����ܽ��';
comment on column URP.E_EQUIPMENT_RECONRESULT.hisjyzje
  is '���ζ��˶�Ӧ���豸��His�����ܽ����쳣���ף�';
comment on column URP.E_EQUIPMENT_RECONRESULT.hisjyzbs
  is '���ζ��˶�Ӧ���豸��His�����ܱ��������쳣���ף�';
comment on column URP.E_EQUIPMENT_RECONRESULT.hisycjyzje
  is '���ζ��˶�Ӧ���豸��His�쳣�����ܽ�His�����ܽ��-���������ܽ�';
comment on column URP.E_EQUIPMENT_RECONRESULT.hisycjyzbs
  is '���ζ��˶�Ӧ���豸��His�쳣�����ܱ���';
comment on column URP.E_EQUIPMENT_RECONRESULT.jyhztj
  is '���׻�����Ϣ����ͳ�ƣ�ͳ���豸�ϵ�ÿ���������豸/His�����ܱ������ܽ��쳣�������쳣���ԡ�|���ָ';
comment on column URP.E_EQUIPMENT_RECONRESULT.dzrq
  is '��������';
comment on column URP.E_EQUIPMENT_RECONRESULT.jlcjsj
  is '�������ʱ��/��¼����ʱ��';
comment on column URP.E_EQUIPMENT_RECONRESULT.dzfs
  is '���˷�ʽ��0���Զ����ˡ�1���ֶ����ˡ�2���ֶ� �ض��ˣ�';
comment on column URP.E_EQUIPMENT_RECONRESULT.dzfqr
  is '���˷�����';
comment on column URP.E_EQUIPMENT_RECONRESULT.sfsc
  is '�Ƿ�ɾ����1���ǣ�0����';
comment on column URP.E_EQUIPMENT_RECONRESULT.bz
  is '��ע';
comment on column URP.E_EQUIPMENT_RECONRESULT.bly1
  is '������1';
comment on column URP.E_EQUIPMENT_RECONRESULT.bly2
  is '������2';
comment on column URP.E_EQUIPMENT_RECONRESULT.bly3
  is '������3';
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
  is '�豸������ˮ��';
comment on column URP.E_EQUIPMENT_TRANSFLOW.ynsblsid
  is '�豸������ˮ����ID';
comment on column URP.E_EQUIPMENT_TRANSFLOW.yhrybh
  is 'ҽ����Ա������Ա�����';
comment on column URP.E_EQUIPMENT_TRANSFLOW.brjzkh
  is '���˾��￨��';
comment on column URP.E_EQUIPMENT_TRANSFLOW.blh
  is '���˲�����';
comment on column URP.E_EQUIPMENT_TRANSFLOW.brxm
  is '��������';
comment on column URP.E_EQUIPMENT_TRANSFLOW.fpbh
  is '��Ʊ���';
comment on column URP.E_EQUIPMENT_TRANSFLOW.jyqdbs
  is '����������ʶ��΢�š�֧������ҽ���ȣ�';
comment on column URP.E_EQUIPMENT_TRANSFLOW.ywlx
  is 'ԭ������ˮ�ţ�����Ϊ�����ཻ��ʱ��ֵ';
comment on column URP.E_EQUIPMENT_TRANSFLOW.jyje
  is '�����ܽ��';
comment on column URP.E_EQUIPMENT_TRANSFLOW.khh
  is '�����������п�������';
comment on column URP.E_EQUIPMENT_TRANSFLOW.khzh
  is '�����������п��˺�';
comment on column URP.E_EQUIPMENT_TRANSFLOW.jylsh
  is '������ˮ�ţ���Ϊ����Ψһ��ʶʱ����Ϊ�գ�';
comment on column URP.E_EQUIPMENT_TRANSFLOW.jyckh
  is '���ײο��ţ���Ϊ����Ψһ��ʶʱ����Ϊ�գ�';
comment on column URP.E_EQUIPMENT_TRANSFLOW.ddbh
  is '������ţ�Ĭ����Ϊ����Ψһ��ʶ��';
comment on column URP.E_EQUIPMENT_TRANSFLOW.yjyh
  is 'ԭ���׶�����/��ˮ�ţ�������ʱ��Ϊ�գ�';
comment on column URP.E_EQUIPMENT_TRANSFLOW.ybfdje
  is 'ҽ������/�����ܽ�ҽ��֧��ʱ��ֵ��';
comment on column URP.E_EQUIPMENT_TRANSFLOW.grzhzfje
  is '�����˻�֧����ҽ��֧��ʱ��ֵ��';
comment on column URP.E_EQUIPMENT_TRANSFLOW.xjzfje
  is '�ֽ�֧����ҽ��֧��ʱ��ֵ��';
comment on column URP.E_EQUIPMENT_TRANSFLOW.yljmje
  is 'ҽ�Ƽ����ҽ��֧��ʱ��ֵ��';
comment on column URP.E_EQUIPMENT_TRANSFLOW.ylbzje
  is 'ҽ�Ʋ�����ҽ��֧��ʱ��ֵ��';
comment on column URP.E_EQUIPMENT_TRANSFLOW.zdbh
  is '�˵����';
comment on column URP.E_EQUIPMENT_TRANSFLOW.brjzkye
  is '���˾��￨���';
comment on column URP.E_EQUIPMENT_TRANSFLOW.czm
  is '������';
comment on column URP.E_EQUIPMENT_TRANSFLOW.jysj
  is '����ʱ��';
comment on column URP.E_EQUIPMENT_TRANSFLOW.jyylx
  is '����Դ���ͣ�1�����ڡ�2�������նˡ�3�����POS��';
comment on column URP.E_EQUIPMENT_TRANSFLOW.jyshbh
  is '�����̻����(���ô�ȷ�������˻�ʱ����Ϊ��)';
comment on column URP.E_EQUIPMENT_TRANSFLOW.jyzdbh
  is '�����ն˱��';
comment on column URP.E_EQUIPMENT_TRANSFLOW.jysbbs
  is '�����豸��ʶ�������ж���̨�豸�����豸���/�豸���кţ�';
comment on column URP.E_EQUIPMENT_TRANSFLOW.jyrzzh
  is '���������˺ţ������˻��ţ����ô�ȷ�������˻�ʱ����Ϊ�գ�';
comment on column URP.E_EQUIPMENT_TRANSFLOW.yhlsh
  is '������ˮ��';
comment on column URP.E_EQUIPMENT_TRANSFLOW.yhckh
  is '���вο���';
comment on column URP.E_EQUIPMENT_TRANSFLOW.pch
  is '���κ�';
comment on column URP.E_EQUIPMENT_TRANSFLOW.jyzt
  is '����״̬��0��ʧ�ܣ�1���ɹ���2��δ֪��';
comment on column URP.E_EQUIPMENT_TRANSFLOW.jgbm
  is '����������ҽԺ������';
comment on column URP.E_EQUIPMENT_TRANSFLOW.zdjybs
  is '�Ƿ������ն˽��ױ�ʶ(1:��,0:��)';
comment on column URP.E_EQUIPMENT_TRANSFLOW.mzzybs
  is '����סԺ��ʶ��1�����2��סԺ��';
comment on column URP.E_EQUIPMENT_TRANSFLOW.sbcsid
  is '�豸��������ID';
comment on column URP.E_EQUIPMENT_TRANSFLOW.sfsc
  is 'ɾ��״̬��1��ɾ����0��δɾ����';
comment on column URP.E_EQUIPMENT_TRANSFLOW.jlcjsj
  is '��¼����ʱ��';
comment on column URP.E_EQUIPMENT_TRANSFLOW.dzrq
  is '��������';
comment on column URP.E_EQUIPMENT_TRANSFLOW.dzbs
  is '���˱�ʶ��1���Ѷ��ˣ�0��δ���ˣ�';
comment on column URP.E_EQUIPMENT_TRANSFLOW.crkbs
  is '������ʶ��1������⣬0��ԭʼ��⣩';
comment on column URP.E_EQUIPMENT_TRANSFLOW.dzbh
  is '���˱��';
comment on column URP.E_EQUIPMENT_TRANSFLOW.bz
  is '��ע';
comment on column URP.E_EQUIPMENT_TRANSFLOW.bly1
  is '������1';
comment on column URP.E_EQUIPMENT_TRANSFLOW.bly2
  is '������2';
comment on column URP.E_EQUIPMENT_TRANSFLOW.bly3
  is '������3';
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
  is '�豸���̶��˽����';
comment on column URP.E_FACTORY_RECONRESULT.sbcsdzjgid
  is '���̶��˽������ID����������ÿ�����̵Ķ��˽��';
comment on column URP.E_FACTORY_RECONRESULT.sbcsid
  is '�豸��������id';
comment on column URP.E_FACTORY_RECONRESULT.dzbs
  is '���˱�ʶ��1:����ɡ�0:δ��ɡ�2δ���ˣ�';
comment on column URP.E_FACTORY_RECONRESULT.dzjg
  is '���˽����1��ƽ��0�˲�ƽ��2δ���ˣ�';
comment on column URP.E_FACTORY_RECONRESULT.dzjgms
  is '���˽������';
comment on column URP.E_FACTORY_RECONRESULT.ycjyzbs
  is '���ζ����쳣�����ܱ���';
comment on column URP.E_FACTORY_RECONRESULT.sbcsjyzbs
  is '���豸���̽����ܱ���';
comment on column URP.E_FACTORY_RECONRESULT.sbcsjyzje
  is '���豸���̽����ܽ��';
comment on column URP.E_FACTORY_RECONRESULT.sbcsycjyzbs
  is '���豸�����쳣�����ܱ���';
comment on column URP.E_FACTORY_RECONRESULT.sbcsycjyzje
  is '���豸�����쳣�����ܽ��';
comment on column URP.E_FACTORY_RECONRESULT.hisjyzje
  is '���ζ��˶�Ӧ���豸��His�����ܽ����쳣���ף�';
comment on column URP.E_FACTORY_RECONRESULT.hisjyzbs
  is '���ζ��˶�Ӧ���豸��His�����ܱ��������쳣���ף�';
comment on column URP.E_FACTORY_RECONRESULT.hisycjyzje
  is '���ζ��˶�Ӧ���豸��His�쳣�����ܽ�His�����ܽ��-���������ܽ�';
comment on column URP.E_FACTORY_RECONRESULT.hisycjyzbs
  is '���ζ��˶�Ӧ���豸��His�쳣�����ܱ���';
comment on column URP.E_FACTORY_RECONRESULT.ycsbzs
  is '�쳣�豸����';
comment on column URP.E_FACTORY_RECONRESULT.zcsbzs
  is '�����豸����';
comment on column URP.E_FACTORY_RECONRESULT.jyhztj
  is '���׻�����Ϣ����ͳ�ƣ�ͳ��ÿ�������������豸���豸/His�����ܱ������ܽ��쳣�������쳣���ԡ�|���ָ';
comment on column URP.E_FACTORY_RECONRESULT.dzrq
  is '��������';
comment on column URP.E_FACTORY_RECONRESULT.jlcjsj
  is '�������ʱ��/��¼����ʱ��';
comment on column URP.E_FACTORY_RECONRESULT.dzfs
  is '���˷�ʽ��0���Զ����ˡ�1���ֶ����ˡ�2���ֶ� �ض��ˣ�';
comment on column URP.E_FACTORY_RECONRESULT.dzfqr
  is '���˷�����';
comment on column URP.E_FACTORY_RECONRESULT.sfsc
  is '�Ƿ�ɾ����1���ǣ�0����';
comment on column URP.E_FACTORY_RECONRESULT.bz
  is '��ע';
comment on column URP.E_FACTORY_RECONRESULT.bly1
  is '������1';
comment on column URP.E_FACTORY_RECONRESULT.bly2
  is '������2';
comment on column URP.E_FACTORY_RECONRESULT.bly3
  is '������3';
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
  is '�豸HIS ��ˮ��';
comment on column URP.E_HIS_TRANSFLOW.ynhislsid
  is 'Ժ�ڶ���His��ˮId, ����';
comment on column URP.E_HIS_TRANSFLOW.sbcsid
  is '�豸��������id, ��Ӧ�豸���̹����';
comment on column URP.E_HIS_TRANSFLOW.yhrybh
  is 'ҽ����Ա���';
comment on column URP.E_HIS_TRANSFLOW.brjzkh
  is '���˾��￨��';
comment on column URP.E_HIS_TRANSFLOW.brxm
  is '��������';
comment on column URP.E_HIS_TRANSFLOW.fpbh
  is '��Ʊ���';
comment on column URP.E_HIS_TRANSFLOW.jyqdbs
  is '����������ʶ��΢�š�֧������ҽ����';
comment on column URP.E_HIS_TRANSFLOW.ywlx
  is 'ҵ������';
comment on column URP.E_HIS_TRANSFLOW.jyje
  is '���׽��';
comment on column URP.E_HIS_TRANSFLOW.khh
  is '�����˻�������';
comment on column URP.E_HIS_TRANSFLOW.khzh
  is '�����˻������˺�';
comment on column URP.E_HIS_TRANSFLOW.jylsh
  is '������ˮ��';
comment on column URP.E_HIS_TRANSFLOW.jyckh
  is '���ײο���';
comment on column URP.E_HIS_TRANSFLOW.ddbh
  is '�������';
comment on column URP.E_HIS_TRANSFLOW.zdbh
  is '�˵����';
comment on column URP.E_HIS_TRANSFLOW.brjzkye
  is '���˾��￨���';
comment on column URP.E_HIS_TRANSFLOW.czm
  is '������';
comment on column URP.E_HIS_TRANSFLOW.jysj
  is '����ʱ��';
comment on column URP.E_HIS_TRANSFLOW.jyylx
  is '����Դ���ͣ����������ڡ���䣩';
comment on column URP.E_HIS_TRANSFLOW.jyshbh
  is '�����̻����';
comment on column URP.E_HIS_TRANSFLOW.jyzdbh
  is '�����ն˱�ţ��ն˺Ż�ҽԺ�ն˱�ʶ��';
comment on column URP.E_HIS_TRANSFLOW.jysbbs
  is '�����豸��ʶ�������ж���̨�豸�����豸���/�豸���кţ�';
comment on column URP.E_HIS_TRANSFLOW.jyrzzh
  is '���������˺�';
comment on column URP.E_HIS_TRANSFLOW.yhlsh
  is '������ˮ��';
comment on column URP.E_HIS_TRANSFLOW.yhckh
  is '���вο���';
comment on column URP.E_HIS_TRANSFLOW.pch
  is '���κ�';
comment on column URP.E_HIS_TRANSFLOW.sfsc
  is 'ɾ��״̬��1��ɾ����0��δɾ����';
comment on column URP.E_HIS_TRANSFLOW.jlcjsj
  is '��¼����ʱ��';
comment on column URP.E_HIS_TRANSFLOW.dzrq
  is '��������';
comment on column URP.E_HIS_TRANSFLOW.dzbs
  is '���˱�ʶ��1���Ѷ��ˣ�0��δ���ˣ�';
comment on column URP.E_HIS_TRANSFLOW.crkbs
  is '������ʶ��1������⣬0��ԭʼ��⣩';
comment on column URP.E_HIS_TRANSFLOW.jyzt
  is '����״̬��0��ʧ�ܣ�1���ɹ���2��δ֪��';
comment on column URP.E_HIS_TRANSFLOW.jgbm
  is '��������';
comment on column URP.E_HIS_TRANSFLOW.blh
  is '���˲�����';
comment on column URP.E_HIS_TRANSFLOW.yjyh
  is 'ԭ���׶�����/��ˮ�ţ�������ʱ��Ϊ�գ�';
comment on column URP.E_HIS_TRANSFLOW.ybfdje
  is 'ҽ������/�����ܽ�ҽ��֧��ʱ��ֵ��';
comment on column URP.E_HIS_TRANSFLOW.grzhzfje
  is '�����˻�֧����ҽ��֧��ʱ��ֵ��';
comment on column URP.E_HIS_TRANSFLOW.xjzfje
  is '�ֽ�֧����ҽ��֧��ʱ��ֵ��';
comment on column URP.E_HIS_TRANSFLOW.yljmje
  is 'ҽ�Ƽ����ҽ��֧��ʱ��ֵ��';
comment on column URP.E_HIS_TRANSFLOW.ylbzje
  is 'ҽ�Ʋ�����ҽ��֧��ʱ��ֵ��';
comment on column URP.E_HIS_TRANSFLOW.flag
  is '�Ƿ�������1���ǣ�0����';
comment on column URP.E_HIS_TRANSFLOW.mzzybs
  is '����סԺ��ʶ��1�����2��סԺ��';
comment on column URP.E_HIS_TRANSFLOW.dzbh
  is '���˱��';
comment on column URP.E_HIS_TRANSFLOW.bz
  is '��ע';
comment on column URP.E_HIS_TRANSFLOW.bly1
  is '������1(�����˷ѱ�־ 0���ǹ��ڣ�1�������˷�)';
comment on column URP.E_HIS_TRANSFLOW.bly2
  is '������2';
comment on column URP.E_HIS_TRANSFLOW.bly3
  is '������3';
comment on column URP.E_HIS_TRANSFLOW.yhryxm
  is 'ҽ����Ա������Ա������';
comment on column URP.E_HIS_TRANSFLOW.sfzhm
  is '�������֤����';
comment on column URP.E_HIS_TRANSFLOW.bcjywybs
  is '���ξ�ҽΨһ��ʶ����Ϊ���￨�Ż����֤�Ż�ҽ�����ŵȣ�������Ψһ��ʶ���ξ�ҽ��';
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
  is '�豸ʵʱ��ر�';
comment on column URP.E_REALTIME_MONITOR.ssjkid
  is 'ʵʱ���id, ����';
comment on column URP.E_REALTIME_MONITOR.ynjksblsid
  is 'Ժ�ڶ��˼��--�豸������ˮ����ID';
comment on column URP.E_REALTIME_MONITOR.ynjkhislsid
  is 'Ժ�ڶ��˼��--His������ˮ������ID';
comment on column URP.E_REALTIME_MONITOR.ycdl
  is '�쳣����';
comment on column URP.E_REALTIME_MONITOR.ycxl
  is '�쳣С��';
comment on column URP.E_REALTIME_MONITOR.ycnr
  is '�쳣����';
comment on column URP.E_REALTIME_MONITOR.jlcjsj
  is '��¼����ʱ��';
comment on column URP.E_REALTIME_MONITOR.cljg
  is '������(0��δ����1������ɹ���2������ʧ��)';
comment on column URP.E_REALTIME_MONITOR.clwcsj
  is '�������ʱ��';
comment on column URP.E_REALTIME_MONITOR.ycclbs
  is '�쳣�����ʶ��1���Ѵ���0��δ����';
comment on column URP.E_REALTIME_MONITOR.ycclfjmc
  is '�쳣����������';
comment on column URP.E_REALTIME_MONITOR.ycclfjlj
  is '�쳣����������·��';
comment on column URP.E_REALTIME_MONITOR.ycclms
  is '�쳣��������';
comment on column URP.E_REALTIME_MONITOR.ycclsj
  is '�쳣����ʱ��';
comment on column URP.E_REALTIME_MONITOR.ycclr
  is '�쳣������';
comment on column URP.E_REALTIME_MONITOR.sfsc
  is '�Ƿ�ɾ����0��δɾ����1����ɾ����';
comment on column URP.E_REALTIME_MONITOR.jgbm
  is '��������';
comment on column URP.E_REALTIME_MONITOR.bz
  is '��ע��ʧ�ܴ�����';
comment on column URP.E_REALTIME_MONITOR.bly
  is '������';
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
  is '�豸�����ļ� �����';
comment on column URP.E_RECONFILE_INFO.dzwjid
  is '�����ļ�ID�������ļ�';
comment on column URP.E_RECONFILE_INFO.sbcsid
  is '�豸��������id';
comment on column URP.E_RECONFILE_INFO.wjmc
  is '�����ļ�����';
comment on column URP.E_RECONFILE_INFO.wjlj
  is '�����ļ����غ���·��';
comment on column URP.E_RECONFILE_INFO.czsj
  is '����ʱ��(�����ļ�����/�ϴ�ʱ��)';
comment on column URP.E_RECONFILE_INFO.czjg
  is '�������(�����ļ�����/�ϴ����(1���ɹ���0��ʧ��))';
comment on column URP.E_RECONFILE_INFO.czjgms
  is '�����������(�����ļ�����/�ϴ��������)';
comment on column URP.E_RECONFILE_INFO.dzrq
  is '�������ڣ��ֹ�����ʱ��ָ����';
comment on column URP.E_RECONFILE_INFO.rkzt
  is '�����ļ����״̬��0��δ��⣬1������⣬2�����ʧ�ܣ�';
comment on column URP.E_RECONFILE_INFO.bz
  is '��ע';
comment on column URP.E_RECONFILE_INFO.sfsc
  is 'ɾ��״̬��1��ɾ����0��δɾ����';
comment on column URP.E_RECONFILE_INFO.bly1
  is '������1';
comment on column URP.E_RECONFILE_INFO.bly2
  is '������2';
comment on column URP.E_RECONFILE_INFO.bly3
  is '������3';
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
  is '�����ļ������ر�';
comment on column URP.E_RECONFILE_REDOWNLOAD.dzwjcxzid
  is '�����ļ�������ID';
comment on column URP.E_RECONFILE_REDOWNLOAD.sbcsid
  is '�豸��������id';
comment on column URP.E_RECONFILE_REDOWNLOAD.dzrq
  is '��������';
comment on column URP.E_RECONFILE_REDOWNLOAD.xzjg
  is '���ؽ����0��ʧ�ܣ�1���ɹ���';
comment on column URP.E_RECONFILE_REDOWNLOAD.sbyy
  is '����ʧ��ԭ��';
comment on column URP.E_RECONFILE_REDOWNLOAD.xzcs
  is '���ش���';
comment on column URP.E_RECONFILE_REDOWNLOAD.jlcjsj
  is '��¼����ʱ��';
comment on column URP.E_RECONFILE_REDOWNLOAD.zhxzsj
  is '�������ʱ��';
comment on column URP.E_RECONFILE_REDOWNLOAD.jgbm
  is '��������';
comment on column URP.E_RECONFILE_REDOWNLOAD.bz
  is '��ע';
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
  is '�豸���˽����ϸ��';
comment on column URP.E_RECONRESULT_DETAIL.yndzjgmxid
  is 'Ժ�ڶ��˽����ϸ������Id';
comment on column URP.E_RECONRESULT_DETAIL.sbid
  is '�豸����Id';
comment on column URP.E_RECONRESULT_DETAIL.sbcsid
  is '�豸��������id';
comment on column URP.E_RECONRESULT_DETAIL.ynhislsid
  is 'Ժ�ڶ���--HIS������ˮ������ID';
comment on column URP.E_RECONRESULT_DETAIL.ynsblsid
  is 'Ժ�ڶ���--�豸������ˮ���� ID';
comment on column URP.E_RECONRESULT_DETAIL.dzjg
  is '���˽����1:��������/0:�쳣���ף�';
comment on column URP.E_RECONRESULT_DETAIL.yclx
  is '���ݶ��˽����Ϊ���״��ϱ�ʶ��0���������ף�1��HIS���豸�ޣ�2��His���豸�У�3���豸�ɹ���HISʧ�ܣ�4��HIS�ɹ����豸ʧ�ܣ�5��HISһ����¼���豸������¼��6��HIS������¼���豸һ����¼��7��HIS���豸��һ�£�';
comment on column URP.E_RECONRESULT_DETAIL.dzjgms
  is '���˽������';
comment on column URP.E_RECONRESULT_DETAIL.dzrq
  is '��������';
comment on column URP.E_RECONRESULT_DETAIL.jlsj
  is '���˽����¼ʱ��';
comment on column URP.E_RECONRESULT_DETAIL.qdzhid
  is '�����˻�������ID';
comment on column URP.E_RECONRESULT_DETAIL.ycclbs
  is '�쳣�����ʶ��1���Ѵ���0��δ����';
comment on column URP.E_RECONRESULT_DETAIL.ycclfjmc
  is '�쳣����������';
comment on column URP.E_RECONRESULT_DETAIL.ycclfjlj
  is '�쳣����������·��';
comment on column URP.E_RECONRESULT_DETAIL.ycclms
  is '�쳣������������ע��';
comment on column URP.E_RECONRESULT_DETAIL.ycclsj
  is '�쳣����ʱ��';
comment on column URP.E_RECONRESULT_DETAIL.ycclr
  is '�쳣������';
comment on column URP.E_RECONRESULT_DETAIL.bz
  is '��ע';
comment on column URP.E_RECONRESULT_DETAIL.sfsc
  is 'ɾ��״̬��1��ɾ����0��δɾ����';
comment on column URP.E_RECONRESULT_DETAIL.bly1
  is '������1';
comment on column URP.E_RECONRESULT_DETAIL.bly2
  is '������2';
comment on column URP.E_RECONRESULT_DETAIL.bly3
  is '������3';
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
  is '�豸���˽����ʷͳ�Ʊ�';
comment on column URP.E_RECON_HISTORY.dzjglstjid
  is '���˽����ʷͳ�Ʊ�Id';
comment on column URP.E_RECON_HISTORY.dzrq
  is '��������';
comment on column URP.E_RECON_HISTORY.dzcs
  is '���˳���';
comment on column URP.E_RECON_HISTORY.wcdzcs
  is '��ɶ��˳���';
comment on column URP.E_RECON_HISTORY.wwcdzcs
  is 'δ��ɶ��˳���';
comment on column URP.E_RECON_HISTORY.wdzcs
  is 'δ���˳���';
comment on column URP.E_RECON_HISTORY.zpcs
  is '��ƽ����';
comment on column URP.E_RECON_HISTORY.zbpcs
  is '�˲�ƽ����';
comment on column URP.E_RECON_HISTORY.dzcssl
  is '���˳�������';
comment on column URP.E_RECON_HISTORY.wcdzcssl
  is '��ɶ��˳�������';
comment on column URP.E_RECON_HISTORY.wwcdzcssl
  is 'δ��ɶ��˳�������';
comment on column URP.E_RECON_HISTORY.wdzcssl
  is 'δ���˳�������';
comment on column URP.E_RECON_HISTORY.zpcssl
  is '��ƽ��������';
comment on column URP.E_RECON_HISTORY.zbpcssl
  is '�˲�ƽ��������';
comment on column URP.E_RECON_HISTORY.csjyzbs
  is '���̽����ܱ���';
comment on column URP.E_RECON_HISTORY.csjyzje
  is '���̽����ܽ��';
comment on column URP.E_RECON_HISTORY.csycjyzbs
  is '�����쳣�����ܱ���';
comment on column URP.E_RECON_HISTORY.csycjyzje
  is '�����쳣�����ܽ��';
comment on column URP.E_RECON_HISTORY.hisjyzbs
  is 'His�����ܱ���';
comment on column URP.E_RECON_HISTORY.hisjyzje
  is 'His�����ܽ��';
comment on column URP.E_RECON_HISTORY.hisycjyzje
  is 'His�쳣�����ܽ��';
comment on column URP.E_RECON_HISTORY.hisycjyzbs
  is 'His�쳣�����ܱ���';
comment on column URP.E_RECON_HISTORY.jyhztj
  is '���׻�����Ϣ����ͳ�ƣ�ͳ��ÿ�����̣��豸/His�����ܱ������ܽ��쳣�������쳣���ԡ�|���ָ';
comment on column URP.E_RECON_HISTORY.jgbm
  is '��������';
comment on column URP.E_RECON_HISTORY.sfsc
  is '�Ƿ�ɾ����1����ɾ����0��δɾ����';
comment on column URP.E_RECON_HISTORY.bz
  is '��ע';
comment on column URP.E_RECON_HISTORY.bly1
  is '������1';
comment on column URP.E_RECON_HISTORY.bly2
  is '������2';
comment on column URP.E_RECON_HISTORY.bly3
  is '������3';
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
  is 'ҽԺ�˺�';
comment on column URP.GF_BANKTRANS.fhjybs
  is '���ؽ��ױ���';
comment on column URP.GF_BANKTRANS.ybs
  is 'ҳ��ʶ��0����������һҳ
1��������һҳ';
comment on column URP.GF_BANKTRANS.xyjyrq
  is '��ҳ�������ڣ�����ҳ��ʶ��Ϊ1ʱ������Ϊ��
���ڸ�ʽ(YYYYMMDD)';
comment on column URP.GF_BANKTRANS.xycbsjylsh
  is '��ҳCBS������ˮ�ţ�����ҳ��ʶ��Ϊ1ʱ������Ϊ��';
comment on column URP.GF_BANKTRANS.xyjydh
  is '��ҳ���״��ţ�����ҳ��ʶ��Ϊ1ʱ������Ϊ��';
comment on column URP.GF_BANKTRANS.jyxh
  is '������ţ�ѭ����';
comment on column URP.GF_BANKTRANS.jyrq
  is '�������ڣ�ѭ����
���ڸ�ʽ(YYYYMMDD)';
comment on column URP.GF_BANKTRANS.jdbz
  is '�����־��ѭ���� +/-';
comment on column URP.GF_BANKTRANS.jyje
  is '���׽�ѭ����
ʵ�������ǣ�19��2��С����ռһλ����������ռ17λ';
comment on column URP.GF_BANKTRANS.zfbz
  is '������־��ѭ���� +/-';
comment on column URP.GF_BANKTRANS.kyye
  is '������ѭ����
ʵ�������ǣ�19��2��С����ռһλ����������ռ17λ';
comment on column URP.GF_BANKTRANS.ywms
  is 'ҵ��������ѭ����
�磺
�ʽ��ϰ�
�ʽ��»�';
comment on column URP.GF_BANKTRANS.jyhs
  is '����������ѭ����';
comment on column URP.GF_BANKTRANS.pzhm
  is 'ƾ֤���룬ѭ����';
comment on column URP.GF_BANKTRANS.dfzh
  is '�Է��˺ţ�ѭ����';
comment on column URP.GF_BANKTRANS.dfhm
  is '�Է�������ѭ����';
comment on column URP.GF_BANKTRANS.dsfhh
  is '���ַ��кţ�ѭ����
���ڽ�����ʾ�����ţ����⽻����ʾ���к�';
comment on column URP.GF_BANKTRANS.jysj
  is '����ʱ�䣬ѭ����
ʱ���ʽ(HHMMSS)';
comment on column URP.GF_BANKTRANS.fjxx
  is '������Ϣ��ѭ����';
comment on column URP.GF_BANKTRANS.jyqd
  is '����������ѭ����';
comment on column URP.GF_BANKTRANS.bz
  is '��ע��ѭ����';
comment on column URP.GF_BANKTRANS.fy
  is '���ԣ�ѭ����';
comment on column URP.GF_BANKTRANS.dszhlx
  is '�����˺����ͣ�ѭ����
1-�Թ�  0-��˽ ��-�������˺�';
comment on column URP.GF_BANKTRANS.wybsm
  is 'Ψһ��ʶ�룬ѭ����
��ȫ�б�ʶ����Ψһ�� ';
comment on column URP.GF_BANKTRANS.cbsjyxh
  is 'CBS������ţ�ѭ����';
comment on column URP.GF_BANKTRANS.kjrq
  is '������ڣ�ѭ����';
comment on column URP.GF_BANKTRANS.qycwlsh
  is '��ҵ������ˮ�ţ�ѭ��������ת�˽���Ϊ�ͻ�������ˮ��';
comment on column URP.GF_BANKTRANS.bly1
  is 'Ԥ���ֶ�1����ʱδʹ��';
comment on column URP.GF_BANKTRANS.bly2
  is 'Ԥ���ֶ�2����ʱδʹ��';
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
  is '����Id';
comment on column URP.GF_BANKTRANS_ACCOUNTS.khpch
  is '�ͻ����κ�customerBatchNo_������Ϣ��һ�������������ˮ��';
comment on column URP.GF_BANKTRANS_ACCOUNTS.fkzh
  is '�����˺�accountNo_������Ϣ';
comment on column URP.GF_BANKTRANS_ACCOUNTS.zjjybs
  is '�ܼƽ��ױ���allCount_������Ϣ';
comment on column URP.GF_BANKTRANS_ACCOUNTS.zjjyje
  is '�ܼƽ��׽��allSalary_������Ϣ';
comment on column URP.GF_BANKTRANS_ACCOUNTS.zjjysxf
  is '�ܼƽ���������allHandlefee_������Ϣ';
comment on column URP.GF_BANKTRANS_ACCOUNTS.cgbs
  is '�ɹ�����count_������Ϣ';
comment on column URP.GF_BANKTRANS_ACCOUNTS.sbbs
  is 'ʧ�ܱ���errCount_������Ϣ';
comment on column URP.GF_BANKTRANS_ACCOUNTS.zzclbs
  is '���ڴ������unknowCount_������Ϣ';
comment on column URP.GF_BANKTRANS_ACCOUNTS.khpczlsh
  is '�ͻ���������ˮ��,(������customerSalarySeq';
comment on column URP.GF_BANKTRANS_ACCOUNTS.sxf
  is '������fee';
comment on column URP.GF_BANKTRANS_ACCOUNTS.jyclzt
  is '���״���״̬state(failed:ת��ʧ��,transferred:ת�ˡ��˿�ɹ�,transferring:ת����)';
comment on column URP.GF_BANKTRANS_ACCOUNTS.dzhdjym
  is '���ӻص�У����';
comment on column URP.GF_BANKTRANS_ACCOUNTS.dzhdh
  is '���ӻص���ewpSequence';
comment on column URP.GF_BANKTRANS_ACCOUNTS.sbyy
  is 'ʧ��ԭ��errorreason';
comment on column URP.GF_BANKTRANS_ACCOUNTS.sfsc
  is '�Ƿ�ɾ��(0:�ǣ�1����';
comment on column URP.GF_BANKTRANS_ACCOUNTS.czr
  is '������';
comment on column URP.GF_BANKTRANS_ACCOUNTS.czsj
  is '����ʱ��';
comment on column URP.GF_BANKTRANS_ACCOUNTS.zhxgr
  is '����޸���';
comment on column URP.GF_BANKTRANS_ACCOUNTS.zhxgsj
  is '����޸�ʱ��';
comment on column URP.GF_BANKTRANS_ACCOUNTS.jysj
  is '����ʱ��_����ˮ����ʱ��jysj(yyyymmdd)';
comment on column URP.GF_BANKTRANS_ACCOUNTS.bz
  is '��ע';
comment on column URP.GF_BANKTRANS_ACCOUNTS.jyje
  is '���׽��';
comment on column URP.GF_BANKTRANS_ACCOUNTS.inname
  is 'ת�뻧��';
comment on column URP.GF_BANKTRANS_ACCOUNTS.inacc
  is 'ת���˺�';
comment on column URP.GF_BANKTRANS_ACCOUNTS.errcode
  is 'ʧ�ܴ�����';
comment on column URP.GF_BANKTRANS_ACCOUNTS.businesstype
  is 'ҵ������:1�����ñ���,2����������,3����������,4����֧��,6����������';
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
  is 'HIS ��ˮ��';
comment on column URP.HIS_TRANSFLOW.hislsid
  is '��ˮid, ����';
comment on column URP.HIS_TRANSFLOW.qdid
  is '����id, ��Ӧ������ˮ����';
comment on column URP.HIS_TRANSFLOW.yhrybh
  is 'ҽ����Ա���';
comment on column URP.HIS_TRANSFLOW.brjzkh
  is '���˾��￨��';
comment on column URP.HIS_TRANSFLOW.brxm
  is '��������';
comment on column URP.HIS_TRANSFLOW.fpbh
  is '��Ʊ���';
comment on column URP.HIS_TRANSFLOW.jyqdbs
  is '����������ʶ��΢�š�֧������ҽ����';
comment on column URP.HIS_TRANSFLOW.ywlx
  is 'ҵ������';
comment on column URP.HIS_TRANSFLOW.jyje
  is '���׽��';
comment on column URP.HIS_TRANSFLOW.khh
  is '�����˻�������';
comment on column URP.HIS_TRANSFLOW.khzh
  is '�����˻������˺�';
comment on column URP.HIS_TRANSFLOW.jylsh
  is '������ˮ��';
comment on column URP.HIS_TRANSFLOW.jyckh
  is '���ײο��ţ�-> jshid��';
comment on column URP.HIS_TRANSFLOW.ddbh
  is '�������';
comment on column URP.HIS_TRANSFLOW.zdbh
  is '�˵����';
comment on column URP.HIS_TRANSFLOW.brjzkye
  is '���˾��￨���';
comment on column URP.HIS_TRANSFLOW.czm
  is '������';
comment on column URP.HIS_TRANSFLOW.jysj
  is '����ʱ��';
comment on column URP.HIS_TRANSFLOW.jyylx
  is '����Դ���ͣ����������ڡ���䣩';
comment on column URP.HIS_TRANSFLOW.jyshbh
  is '�����̻����';
comment on column URP.HIS_TRANSFLOW.jyzdbh
  is '�����ն˱�ţ��ն˺Ż�ҽԺ�ն˱�ʶ��';
comment on column URP.HIS_TRANSFLOW.jyrzzh
  is '���������˺�';
comment on column URP.HIS_TRANSFLOW.yhlsh
  is '������ˮ�ţ�->his��סԺ��ˮ�ţ�';
comment on column URP.HIS_TRANSFLOW.yhckh
  is '���вο���';
comment on column URP.HIS_TRANSFLOW.pch
  is '���κ�';
comment on column URP.HIS_TRANSFLOW.sfsc
  is 'ɾ��״̬��1��ɾ����0��δɾ����';
comment on column URP.HIS_TRANSFLOW.jlcjsj
  is '��¼����ʱ��';
comment on column URP.HIS_TRANSFLOW.dzrq
  is '��������';
comment on column URP.HIS_TRANSFLOW.dzbs
  is '���˱�ʶ��1���Ѷ��ˣ�0��δ���ˣ�';
comment on column URP.HIS_TRANSFLOW.crkbs
  is '������ʶ��1������⣬0��ԭʼ��⣩';
comment on column URP.HIS_TRANSFLOW.jyzt
  is '����״̬��0��ʧ�ܣ�1���ɹ���2��δ֪��';
comment on column URP.HIS_TRANSFLOW.bz
  is '��ע';
comment on column URP.HIS_TRANSFLOW.bly1
  is '���壺1.��¼�㷢�ľ�������,2.ҽ������ʱ��pos����Ϊ��UnionPay,ʡͳ�ｻ�ף���¼ʡͳ��ĵ�ҽ���ܽ���pos����ҽ��֮�� ����';
comment on column URP.HIS_TRANSFLOW.bly2
  is '������2����¼his��Ӧ��ҽ���������ͣ��� 8������ʡҽ����mzsyb����9��סԺʡҽ��(zysyb)��10���������ҽ��(mzydyb)��11��סԺ���ҽ����zyydyb����12������ʡҽ��POS(mzsybpos)��13��סԺʡҽ��POS(zysybpos)��14���������ҽ��POS(mzydybpos)��15��סԺ���ҽ��POS(zyydybpos) ��';
comment on column URP.HIS_TRANSFLOW.bly3
  is '������3������Ա���� ��Ӧhis��operatorCode��';
comment on column URP.HIS_TRANSFLOW.jgbm
  is '��������';
comment on column URP.HIS_TRANSFLOW.blh
  is '���˲�����';
comment on column URP.HIS_TRANSFLOW.yjyh
  is 'ԭ���׶�����/��ˮ�ţ�������ʱ��Ϊ�գ�';
comment on column URP.HIS_TRANSFLOW.ybfdje
  is 'ҽ������/�����ܽ�ҽ��֧��ʱ��ֵ��';
comment on column URP.HIS_TRANSFLOW.grzhzfje
  is '�����˻�֧����ҽ��֧��ʱ��ֵ��';
comment on column URP.HIS_TRANSFLOW.xjzfje
  is '�ֽ�֧����ҽ��֧��ʱ��ֵ��';
comment on column URP.HIS_TRANSFLOW.yljmje
  is 'ҽ�Ƽ����ҽ��֧��ʱ��ֵ��';
comment on column URP.HIS_TRANSFLOW.ylbzje
  is 'ҽ�Ʋ�����ҽ��֧��ʱ��ֵ��';
comment on column URP.HIS_TRANSFLOW.flag
  is '�Ƿ������նˣ�1���ǣ�0����';
comment on column URP.HIS_TRANSFLOW.mzzybs
  is '����סԺ��ʶ��1�����2��סԺ��';
comment on column URP.HIS_TRANSFLOW.dzbh
  is '���˱��';
comment on column URP.HIS_TRANSFLOW.jysbbs
  is '�����豸��ʶ���豸��ţ�';
comment on column URP.HIS_TRANSFLOW.sbcsbm
  is '�豸���̱���';
comment on column URP.HIS_TRANSFLOW.yhryxm
  is 'ҽ����Ա������Ա������';
comment on column URP.HIS_TRANSFLOW.sfzhm
  is '�������֤����';
comment on column URP.HIS_TRANSFLOW.bcjywybs
  is '���ξ�ҽΨһ��ʶ����Ϊ���￨�Ż����֤�Ż�ҽ�����ŵȣ�������Ψһ��ʶ���ξ�ҽ��';
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
  is '�ں�֧��������ˮ��';
comment on column URP.ICASHIER_TRANSFLOW.lsid
  is '�ں�֧����ˮ����ID';
comment on column URP.ICASHIER_TRANSFLOW.qdzhid
  is '���������˻�ID';
comment on column URP.ICASHIER_TRANSFLOW.shbh
  is '�̻����';
comment on column URP.ICASHIER_TRANSFLOW.zdbh
  is '�ն˱��';
comment on column URP.ICASHIER_TRANSFLOW.jyckh
  is '���ײο��ţ�ϵͳ���ٺš�ҵ����ˮ�ţ�';
comment on column URP.ICASHIER_TRANSFLOW.jylsh
  is '������ˮ�ţ�������ˮ�ţ�';
comment on column URP.ICASHIER_TRANSFLOW.qqflsh
  is '������ˮ��';
comment on column URP.ICASHIER_TRANSFLOW.yjylsh
  is 'ԭ������ˮ�ţ�����Ϊ�����ཻ��ʱ��ֵ';
comment on column URP.ICASHIER_TRANSFLOW.shddh
  is '�̻�������';
comment on column URP.ICASHIER_TRANSFLOW.zdhm
  is '�˵�����';
comment on column URP.ICASHIER_TRANSFLOW.spmc
  is '��Ʒ����';
comment on column URP.ICASHIER_TRANSFLOW.jysj
  is '����ʱ��';
comment on column URP.ICASHIER_TRANSFLOW.yhjyzh
  is '�û������˺ţ�ICASHIER�˺�/���п��ţ�';
comment on column URP.ICASHIER_TRANSFLOW.jyje
  is '���׽���λ��Ԫ��';
comment on column URP.ICASHIER_TRANSFLOW.jyzt
  is '����״̬��0��ʧ�ܣ�1���ɹ���2��δ֪��';
comment on column URP.ICASHIER_TRANSFLOW.zhye
  is '�˻�����λ��Ԫ��';
comment on column URP.ICASHIER_TRANSFLOW.ywlx
  is 'ҵ�����ͣ�����֧���������˿';
comment on column URP.ICASHIER_TRANSFLOW.jybz
  is '���ױ�ע';
comment on column URP.ICASHIER_TRANSFLOW.jlcjsj
  is '��¼����ʱ��';
comment on column URP.ICASHIER_TRANSFLOW.dzrq
  is '��������';
comment on column URP.ICASHIER_TRANSFLOW.dzbs
  is '���˱�ʶ��1���Ѷ��ˣ�0��δ���ˣ�';
comment on column URP.ICASHIER_TRANSFLOW.crkbs
  is '������ʶ��1������⣬0��ԭʼ��⣩';
comment on column URP.ICASHIER_TRANSFLOW.jgbm
  is '��������';
comment on column URP.ICASHIER_TRANSFLOW.sfsc
  is 'ɾ��״̬��1��ɾ����0��δɾ����';
comment on column URP.ICASHIER_TRANSFLOW.bly1
  is '������1';
comment on column URP.ICASHIER_TRANSFLOW.bly2
  is '������2';
comment on column URP.ICASHIER_TRANSFLOW.bly3
  is '������3';
comment on column URP.ICASHIER_TRANSFLOW.dzbh
  is '���˱��';
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
  is '������ҽԺ����Ϣ';
comment on column URP.INST_INFO.jgbm
  is '�������������룬�������ֻ���';
comment on column URP.INST_INFO.jgmc
  is '��������';
comment on column URP.INST_INFO.jgzt
  is '����״̬��1��������0������/ɾ����';
comment on column URP.INST_INFO.jlcjsj
  is '��¼����ʱ��';
comment on column URP.INST_INFO.cjr
  is '������';
comment on column URP.INST_INFO.zhxgsj
  is '������ʱ��';
comment on column URP.INST_INFO.zhxgr
  is '��������';
comment on column URP.INST_INFO.bz
  is '��ע';
comment on column URP.INST_INFO.crssid
  is 'crss�ж�Ӧ����Ψһ��ʶ';
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
  is 'ҽ��������ˮ��';
comment on column URP.MEDICARE_TRANSFLOW.lsid
  is 'ҽ��������ˮ����Id';
comment on column URP.MEDICARE_TRANSFLOW.qdzhid
  is '���������˻�Id';
comment on column URP.MEDICARE_TRANSFLOW.jshid
  is '�����Id';
comment on column URP.MEDICARE_TRANSFLOW.jyje
  is '�����ܽ���λ��Ԫ��';
comment on column URP.MEDICARE_TRANSFLOW.ybfdje
  is 'ҽ������/�����ܽ��';
comment on column URP.MEDICARE_TRANSFLOW.grzhzfje
  is '�����˻�֧�����';
comment on column URP.MEDICARE_TRANSFLOW.xjzfje
  is '�ֽ�֧�����';
comment on column URP.MEDICARE_TRANSFLOW.yljmje
  is 'ҽ�Ƽ�����';
comment on column URP.MEDICARE_TRANSFLOW.ylbzje
  is 'ҽ�Ʋ������';
comment on column URP.MEDICARE_TRANSFLOW.qzjbzhzfje
  is '���л����˻�֧�����';
comment on column URP.MEDICARE_TRANSFLOW.jysj
  is '����ʱ�䣨���˽������ڣ�';
comment on column URP.MEDICARE_TRANSFLOW.grbh
  is '���˱��';
comment on column URP.MEDICARE_TRANSFLOW.xm
  is '����';
comment on column URP.MEDICARE_TRANSFLOW.yltclb
  is 'ҽ��ͳ�����4������󲡣�5�������˺���6����ͨ����ͳ���������ֵ���������ֵ�ӿڻ�ȡ�������ţ�YLTCLB��';
comment on column URP.MEDICARE_TRANSFLOW.xzbz
  is '���ֱ�־��C:ҽ�ƣ�D�����ˣ�E��������';
comment on column URP.MEDICARE_TRANSFLOW.jsbz
  is '�����־��0���ѳ�����1��δ������';
comment on column URP.MEDICARE_TRANSFLOW.jyzt
  is '����״̬��0��ʧ�ܣ�1���ɹ���2��δ֪��';
comment on column URP.MEDICARE_TRANSFLOW.jlcjsj
  is '��¼����ʱ��';
comment on column URP.MEDICARE_TRANSFLOW.dzrq
  is '��������';
comment on column URP.MEDICARE_TRANSFLOW.dzbs
  is '���˱�ʶ��1:�Ѷ���/0:δ���ˣ�';
comment on column URP.MEDICARE_TRANSFLOW.crkbs
  is '������ʶ(1:����⣬0��ԭʼ���)';
comment on column URP.MEDICARE_TRANSFLOW.jgbm
  is '��������';
comment on column URP.MEDICARE_TRANSFLOW.sfsc
  is 'ɾ��״̬��1��ɾ����0��δɾ����';
comment on column URP.MEDICARE_TRANSFLOW.bly1
  is '������1';
comment on column URP.MEDICARE_TRANSFLOW.bly2
  is '������2';
comment on column URP.MEDICARE_TRANSFLOW.bly3
  is '������3->���￨��';
comment on column URP.MEDICARE_TRANSFLOW.dzbh
  is '���˱��';
comment on column URP.MEDICARE_TRANSFLOW.jylsh
  is '������ˮ�ţ�סԺ��ˮ�ţ�';
comment on column URP.MEDICARE_TRANSFLOW.ejbs
  is '������ʶ';
comment on column URP.MEDICARE_TRANSFLOW.sxf
  is '�����ѣ���λ��Ԫ��';
comment on column URP.MEDICARE_TRANSFLOW.qsje
  is '�������λ��Ԫ��';
comment on column URP.MEDICARE_TRANSFLOW.qsrq
  is '��������';
comment on column URP.MEDICARE_TRANSFLOW.shddh
  is '�̻�������';
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
  is 'ʵʱ���׼�����ñ�';
comment on column URP.MONITOR_CONFIG.jyjkpzid
  is 'ʵʱ���׼�����ñ�ID';
comment on column URP.MONITOR_CONFIG.dxbm
  is '��ض�����루������CHANNEL���豸��EQUIPMENT��';
comment on column URP.MONITOR_CONFIG.jgbm
  is '��������';
comment on column URP.MONITOR_CONFIG.jyzhhqsj
  is '��������ȡʱ�䣨���ڱ��λ�ȡ���׿�ʼʱ�䣩';
comment on column URP.MONITOR_CONFIG.sfsc
  is '�Ƿ�ɾ��';
comment on column URP.MONITOR_CONFIG.cjsj
  is '����ʱ��';
comment on column URP.MONITOR_CONFIG.cjr
  is '������';
comment on column URP.MONITOR_CONFIG.zhxgsj
  is '����޸�ʱ��';
comment on column URP.MONITOR_CONFIG.zhxgr
  is '����޸���';
comment on column URP.MONITOR_CONFIG.bz
  is '��ע';
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
  is '��Ϣ���ͱ�';
comment on column URP.MSG_PUSH.tztsid
  is '֪ͨ����id������';
comment on column URP.MSG_PUSH.ssjkid
  is 'ʵʱ��ˮ�������';
comment on column URP.MSG_PUSH.cjsj
  is '����ʱ��';
comment on column URP.MSG_PUSH.fsfs
  is '���ͷ�ʽ(0:���ţ�1��΢�ţ�2���ʼ�)';
comment on column URP.MSG_PUSH.jszh
  is '�����˺�';
comment on column URP.MSG_PUSH.tszt
  is '����״̬��1�����ͳɹ���0��δ���ͣ�2������ʧ�ܣ�';
comment on column URP.MSG_PUSH.bz
  is '��ע';
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
  is '�豸������ˮ��';
comment on column URP.M_EQUIPMENT_TRANSFLOW.ynjksblsid
  is '�豸������ˮ����ID';
comment on column URP.M_EQUIPMENT_TRANSFLOW.yhrybh
  is 'ҽ����Ա������Ա�����';
comment on column URP.M_EQUIPMENT_TRANSFLOW.brjzkh
  is '���˾��￨��';
comment on column URP.M_EQUIPMENT_TRANSFLOW.blh
  is '���˲�����';
comment on column URP.M_EQUIPMENT_TRANSFLOW.brxm
  is '��������';
comment on column URP.M_EQUIPMENT_TRANSFLOW.fpbh
  is '��Ʊ���';
comment on column URP.M_EQUIPMENT_TRANSFLOW.jyqdbs
  is '����������ʶ��΢�š�֧������ҽ���ȣ�';
comment on column URP.M_EQUIPMENT_TRANSFLOW.ywlx
  is 'ԭ������ˮ�ţ�����Ϊ�����ཻ��ʱ��ֵ';
comment on column URP.M_EQUIPMENT_TRANSFLOW.jyje
  is '�����ܽ��';
comment on column URP.M_EQUIPMENT_TRANSFLOW.khh
  is '�����������п�������';
comment on column URP.M_EQUIPMENT_TRANSFLOW.khzh
  is '�����������п��˺�';
comment on column URP.M_EQUIPMENT_TRANSFLOW.jylsh
  is '������ˮ�ţ���Ϊ����Ψһ��ʶʱ����Ϊ�գ�';
comment on column URP.M_EQUIPMENT_TRANSFLOW.jyckh
  is '���ײο��ţ���Ϊ����Ψһ��ʶʱ����Ϊ�գ�';
comment on column URP.M_EQUIPMENT_TRANSFLOW.ddbh
  is '������ţ�Ĭ����Ϊ����Ψһ��ʶ��';
comment on column URP.M_EQUIPMENT_TRANSFLOW.yjyh
  is 'ԭ���׶�����/��ˮ�ţ�������ʱ��Ϊ�գ�';
comment on column URP.M_EQUIPMENT_TRANSFLOW.ybfdje
  is 'ҽ������/�����ܽ�ҽ��֧��ʱ��ֵ��';
comment on column URP.M_EQUIPMENT_TRANSFLOW.grzhzfje
  is '�����˻�֧����ҽ��֧��ʱ��ֵ��';
comment on column URP.M_EQUIPMENT_TRANSFLOW.xjzfje
  is '�ֽ�֧����ҽ��֧��ʱ��ֵ��';
comment on column URP.M_EQUIPMENT_TRANSFLOW.yljmje
  is 'ҽ�Ƽ����ҽ��֧��ʱ��ֵ��';
comment on column URP.M_EQUIPMENT_TRANSFLOW.ylbzje
  is 'ҽ�Ʋ�����ҽ��֧��ʱ��ֵ��';
comment on column URP.M_EQUIPMENT_TRANSFLOW.zdbh
  is '�˵����';
comment on column URP.M_EQUIPMENT_TRANSFLOW.brjzkye
  is '���˾��￨���';
comment on column URP.M_EQUIPMENT_TRANSFLOW.czm
  is '������';
comment on column URP.M_EQUIPMENT_TRANSFLOW.jysj
  is '����ʱ��';
comment on column URP.M_EQUIPMENT_TRANSFLOW.jyylx
  is '����Դ���ͣ�1�����ڡ�2�������նˡ�3�����POS��';
comment on column URP.M_EQUIPMENT_TRANSFLOW.jyshbh
  is '�����̻����(���ô�ȷ�������˻�ʱ����Ϊ��)';
comment on column URP.M_EQUIPMENT_TRANSFLOW.jyzdbh
  is '�����ն˱��';
comment on column URP.M_EQUIPMENT_TRANSFLOW.jysbbs
  is '�����豸��ʶ�������ж���̨�豸�����豸���/�豸���кţ�';
comment on column URP.M_EQUIPMENT_TRANSFLOW.jyrzzh
  is '���������˺ţ������˻��ţ����ô�ȷ�������˻�ʱ����Ϊ�գ�';
comment on column URP.M_EQUIPMENT_TRANSFLOW.yhlsh
  is '������ˮ��';
comment on column URP.M_EQUIPMENT_TRANSFLOW.yhckh
  is '���вο���';
comment on column URP.M_EQUIPMENT_TRANSFLOW.pch
  is '���κ�';
comment on column URP.M_EQUIPMENT_TRANSFLOW.jyzt
  is '����״̬��0��ʧ�ܣ�1���ɹ���2��δ֪��';
comment on column URP.M_EQUIPMENT_TRANSFLOW.jgbm
  is '����������ҽԺ������';
comment on column URP.M_EQUIPMENT_TRANSFLOW.zdjybs
  is '�Ƿ������ն˽��ױ�ʶ(1:��,0:��)';
comment on column URP.M_EQUIPMENT_TRANSFLOW.mzzybs
  is '����סԺ��ʶ��1�����2��סԺ��';
comment on column URP.M_EQUIPMENT_TRANSFLOW.sbcsid
  is '�豸��������ID';
comment on column URP.M_EQUIPMENT_TRANSFLOW.sfsc
  is 'ɾ��״̬��1��ɾ����0��δɾ����';
comment on column URP.M_EQUIPMENT_TRANSFLOW.jlcjsj
  is '��¼����ʱ��';
comment on column URP.M_EQUIPMENT_TRANSFLOW.dzrq
  is '��������';
comment on column URP.M_EQUIPMENT_TRANSFLOW.dzbs
  is '���˱�ʶ��1���Ѷ��ˣ�0��δ���ˣ�';
comment on column URP.M_EQUIPMENT_TRANSFLOW.crkbs
  is '������ʶ��1������⣬0��ԭʼ��⣩';
comment on column URP.M_EQUIPMENT_TRANSFLOW.dzbh
  is '���˱��';
comment on column URP.M_EQUIPMENT_TRANSFLOW.bz
  is '��ע';
comment on column URP.M_EQUIPMENT_TRANSFLOW.bly1
  is '������1';
comment on column URP.M_EQUIPMENT_TRANSFLOW.bly2
  is '������2';
comment on column URP.M_EQUIPMENT_TRANSFLOW.bly3
  is '������3';
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
  is '�豸HIS ��ˮ��';
comment on column URP.M_HIS_TRANSFLOW.ynjkhislsid
  is 'Ժ�ڶ���His��ˮId, ����';
comment on column URP.M_HIS_TRANSFLOW.sbcsid
  is '�豸��������id, ��Ӧ�豸���̹����';
comment on column URP.M_HIS_TRANSFLOW.yhrybh
  is 'ҽ����Ա���';
comment on column URP.M_HIS_TRANSFLOW.brjzkh
  is '���˾��￨��';
comment on column URP.M_HIS_TRANSFLOW.brxm
  is '��������';
comment on column URP.M_HIS_TRANSFLOW.fpbh
  is '��Ʊ���';
comment on column URP.M_HIS_TRANSFLOW.jyqdbs
  is '����������ʶ��΢�š�֧������ҽ����';
comment on column URP.M_HIS_TRANSFLOW.ywlx
  is 'ҵ������';
comment on column URP.M_HIS_TRANSFLOW.jyje
  is '���׽��';
comment on column URP.M_HIS_TRANSFLOW.khh
  is '�����˻�������';
comment on column URP.M_HIS_TRANSFLOW.khzh
  is '�����˻������˺�';
comment on column URP.M_HIS_TRANSFLOW.jylsh
  is '������ˮ��';
comment on column URP.M_HIS_TRANSFLOW.jyckh
  is '���ײο���';
comment on column URP.M_HIS_TRANSFLOW.ddbh
  is '�������';
comment on column URP.M_HIS_TRANSFLOW.zdbh
  is '�˵����';
comment on column URP.M_HIS_TRANSFLOW.brjzkye
  is '���˾��￨���';
comment on column URP.M_HIS_TRANSFLOW.czm
  is '������';
comment on column URP.M_HIS_TRANSFLOW.jysj
  is '����ʱ��';
comment on column URP.M_HIS_TRANSFLOW.jyylx
  is '����Դ���ͣ����������ڡ���䣩';
comment on column URP.M_HIS_TRANSFLOW.jyshbh
  is '�����̻����';
comment on column URP.M_HIS_TRANSFLOW.jyzdbh
  is '�����ն˱�ţ��ն˺Ż�ҽԺ�ն˱�ʶ��';
comment on column URP.M_HIS_TRANSFLOW.jysbbs
  is '�����豸��ʶ�������ж���̨�豸�����豸���/�豸���кţ�';
comment on column URP.M_HIS_TRANSFLOW.jyrzzh
  is '���������˺�';
comment on column URP.M_HIS_TRANSFLOW.yhlsh
  is '������ˮ��';
comment on column URP.M_HIS_TRANSFLOW.yhckh
  is '���вο���';
comment on column URP.M_HIS_TRANSFLOW.pch
  is '���κ�';
comment on column URP.M_HIS_TRANSFLOW.sfsc
  is 'ɾ��״̬��1��ɾ����0��δɾ����';
comment on column URP.M_HIS_TRANSFLOW.jlcjsj
  is '��¼����ʱ��';
comment on column URP.M_HIS_TRANSFLOW.dzrq
  is '��������';
comment on column URP.M_HIS_TRANSFLOW.dzbs
  is '���˱�ʶ��1���Ѷ��ˣ�0��δ���ˣ�';
comment on column URP.M_HIS_TRANSFLOW.crkbs
  is '������ʶ��1������⣬0��ԭʼ��⣩';
comment on column URP.M_HIS_TRANSFLOW.jyzt
  is '����״̬��0��ʧ�ܣ�1���ɹ���2��δ֪��';
comment on column URP.M_HIS_TRANSFLOW.jgbm
  is '��������';
comment on column URP.M_HIS_TRANSFLOW.blh
  is '���˲�����';
comment on column URP.M_HIS_TRANSFLOW.yjyh
  is 'ԭ���׶�����/��ˮ�ţ�������ʱ��Ϊ�գ�';
comment on column URP.M_HIS_TRANSFLOW.ybfdje
  is 'ҽ������/�����ܽ�ҽ��֧��ʱ��ֵ��';
comment on column URP.M_HIS_TRANSFLOW.grzhzfje
  is '�����˻�֧����ҽ��֧��ʱ��ֵ��';
comment on column URP.M_HIS_TRANSFLOW.xjzfje
  is '�ֽ�֧����ҽ��֧��ʱ��ֵ��';
comment on column URP.M_HIS_TRANSFLOW.yljmje
  is 'ҽ�Ƽ����ҽ��֧��ʱ��ֵ��';
comment on column URP.M_HIS_TRANSFLOW.ylbzje
  is 'ҽ�Ʋ�����ҽ��֧��ʱ��ֵ��';
comment on column URP.M_HIS_TRANSFLOW.flag
  is '�Ƿ�������1���ǣ�0����';
comment on column URP.M_HIS_TRANSFLOW.mzzybs
  is '����סԺ��ʶ��1�����2��סԺ��';
comment on column URP.M_HIS_TRANSFLOW.dzbh
  is '���˱��';
comment on column URP.M_HIS_TRANSFLOW.bz
  is '��ע';
comment on column URP.M_HIS_TRANSFLOW.bly1
  is '������1';
comment on column URP.M_HIS_TRANSFLOW.bly2
  is '������2';
comment on column URP.M_HIS_TRANSFLOW.bly3
  is '������3';
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
  is '������־��';
comment on column URP.OPERATION_LOG.rzid
  is '��־id������';
comment on column URP.OPERATION_LOG.glid
  is '����ҵ������';
comment on column URP.OPERATION_LOG.glywb
  is '����ҵ���';
comment on column URP.OPERATION_LOG.czlj
  is '����·��';
comment on column URP.OPERATION_LOG.jgbm
  is '��������';
comment on column URP.OPERATION_LOG.czdl
  is '��������';
comment on column URP.OPERATION_LOG.czxl
  is '����С��';
comment on column URP.OPERATION_LOG.czr
  is '������';
comment on column URP.OPERATION_LOG.jlcjsj
  is '��¼����ʱ��';
comment on column URP.OPERATION_LOG.rznr
  is '��־����';
comment on column URP.OPERATION_LOG.bz
  is '��ע';
comment on column URP.OPERATION_LOG.czjg
  is '�������';
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
  is '�����ֵ䣨ϵͳ������';
comment on column URP.PARAM_DICT.csid
  is '����������';
comment on column URP.PARAM_DICT.jgbm
  is '��������';
comment on column URP.PARAM_DICT.cslx
  is '��������';
comment on column URP.PARAM_DICT.csmc
  is '���ƣ�����������';
comment on column URP.PARAM_DICT.csz
  is '����ֵ';
comment on column URP.PARAM_DICT.sx
  is '˳��';
comment on column URP.PARAM_DICT.zt
  is '״̬��0��������1�����ã�';
comment on column URP.PARAM_DICT.bz
  is '��ע';
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
  is 'ʵʱ������';
comment on column URP.REALTIME_ALARM.ssbjid
  is 'ʵʱ����Id, ����';
comment on column URP.REALTIME_ALARM.yhrybh
  is '����Ա��ҽ����Ա�����';
comment on column URP.REALTIME_ALARM.yhryxm
  is '����Ա��ҽ����Ա������';
comment on column URP.REALTIME_ALARM.brjzkh
  is '���˾��￨��';
comment on column URP.REALTIME_ALARM.brxm
  is '��������';
comment on column URP.REALTIME_ALARM.sfzhm
  is '�������֤����';
comment on column URP.REALTIME_ALARM.jyqdbs
  is '����������ʶ�������������룩';
comment on column URP.REALTIME_ALARM.ywlx
  is 'ҵ������';
comment on column URP.REALTIME_ALARM.jyje
  is '���׽��';
comment on column URP.REALTIME_ALARM.jylsh
  is '������ˮ��';
comment on column URP.REALTIME_ALARM.jyckh
  is '���ײο���';
comment on column URP.REALTIME_ALARM.ddbh
  is '�������';
comment on column URP.REALTIME_ALARM.jysj
  is '����ʱ��';
comment on column URP.REALTIME_ALARM.jyshbh
  is '�����̻����';
comment on column URP.REALTIME_ALARM.jyzdbh
  is '�����ն˱��';
comment on column URP.REALTIME_ALARM.pch
  is '���κ�';
comment on column URP.REALTIME_ALARM.jyzt
  is 'ƽ̨����״̬��0��ʧ�ܣ�1���ɹ���2��δ֪��';
comment on column URP.REALTIME_ALARM.hisjyzt
  is 'HIS����״̬��0��ʧ�ܣ�1���ɹ���2��δ֪��';
comment on column URP.REALTIME_ALARM.hisjyje
  is 'HIS���׽��';
comment on column URP.REALTIME_ALARM.jgbm
  is '��������';
comment on column URP.REALTIME_ALARM.cljg
  is '������(0��δ����1������ɹ���2������ʧ��)';
comment on column URP.REALTIME_ALARM.sfsc
  is '�Ƿ�ɾ����0��δɾ����1����ɾ����';
comment on column URP.REALTIME_ALARM.jlcjsj
  is '��¼����ʱ��';
comment on column URP.REALTIME_ALARM.ycdl
  is '�쳣����';
comment on column URP.REALTIME_ALARM.ycxl
  is '�쳣С��';
comment on column URP.REALTIME_ALARM.ycnr
  is '�쳣����';
comment on column URP.REALTIME_ALARM.clwcsj
  is '���Ҵ������ʱ��';
comment on column URP.REALTIME_ALARM.ycclbs
  is '�쳣�����ʶ��1���Ѵ���0��δ����';
comment on column URP.REALTIME_ALARM.ycclfjmc
  is '�쳣����������';
comment on column URP.REALTIME_ALARM.ycclfjlj
  is '�쳣����������·��';
comment on column URP.REALTIME_ALARM.ycclms
  is '�쳣��������';
comment on column URP.REALTIME_ALARM.ycclsj
  is '�쳣����ʱ��';
comment on column URP.REALTIME_ALARM.ycclr
  is '�쳣������';
comment on column URP.REALTIME_ALARM.bz
  is '��ע��ʧ�ܴ�����';
comment on column URP.REALTIME_ALARM.bly
  is '������';
comment on column URP.REALTIME_ALARM.jytj
  is '����;����his��';
comment on column URP.REALTIME_ALARM.czyxm
  is '����Ա����';
comment on column URP.REALTIME_ALARM.hisno
  is 'his��ˮ��';
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
  is 'ʵʱ��ر�';
comment on column URP.REALTIME_MONITOR.ssjkid
  is 'ʵʱ���id, ����';
comment on column URP.REALTIME_MONITOR.qdid
  is '����id, ��Ӧ������ˮ����';
comment on column URP.REALTIME_MONITOR.yhrybh
  is 'ҽ����Ա���';
comment on column URP.REALTIME_MONITOR.brjzkh
  is '���˾��￨��';
comment on column URP.REALTIME_MONITOR.brxm
  is '��������';
comment on column URP.REALTIME_MONITOR.fpbh
  is '��Ʊ���';
comment on column URP.REALTIME_MONITOR.jyqdbs
  is '����������ʶ��΢�š�֧������ҽ����';
comment on column URP.REALTIME_MONITOR.ywlx
  is 'ҵ������';
comment on column URP.REALTIME_MONITOR.jyje
  is '���׽��';
comment on column URP.REALTIME_MONITOR.khh
  is '������';
comment on column URP.REALTIME_MONITOR.khzh
  is '�����˺�';
comment on column URP.REALTIME_MONITOR.jylsh
  is '������ˮ��';
comment on column URP.REALTIME_MONITOR.jyckh
  is '���ײο���';
comment on column URP.REALTIME_MONITOR.ddbh
  is '�������';
comment on column URP.REALTIME_MONITOR.zdbh
  is '�˵����';
comment on column URP.REALTIME_MONITOR.brjzkye
  is '���˾��￨���';
comment on column URP.REALTIME_MONITOR.czm
  is '������';
comment on column URP.REALTIME_MONITOR.jysj
  is '����ʱ��';
comment on column URP.REALTIME_MONITOR.jyylx
  is '����Դ���ͣ����������ڡ���䣩';
comment on column URP.REALTIME_MONITOR.jyshbh
  is '�����̻����';
comment on column URP.REALTIME_MONITOR.jyzdbh
  is '�����ն˱�ţ��ն˺Ż�ҽԺ�ն˱�ʶ��';
comment on column URP.REALTIME_MONITOR.jyrzzh
  is '���������˺�';
comment on column URP.REALTIME_MONITOR.yhlsh
  is '������ˮ��';
comment on column URP.REALTIME_MONITOR.yhckh
  is '���вο���';
comment on column URP.REALTIME_MONITOR.pch
  is '���κ�';
comment on column URP.REALTIME_MONITOR.jyzt
  is 'HIS����״̬��0��ʧ�ܣ�1���ɹ���2��δ֪��';
comment on column URP.REALTIME_MONITOR.qdsfcz
  is '�����Ƿ���ڸñʽ��ף�1�����ڣ�0�������ڣ�';
comment on column URP.REALTIME_MONITOR.qdjyzt
  is '��������״̬��1���ɹ���0��ʧ�ܣ�2�����������';
comment on column URP.REALTIME_MONITOR.jyztms
  is '����״̬����';
comment on column URP.REALTIME_MONITOR.qdjyje
  is '�������׽��';
comment on column URP.REALTIME_MONITOR.zfwcsj
  is '֧�����ʱ��';
comment on column URP.REALTIME_MONITOR.qdshh
  is '�����̻���';
comment on column URP.REALTIME_MONITOR.qdzshh
  is '�������̻���';
comment on column URP.REALTIME_MONITOR.zdsbh
  is '�ն��豸��';
comment on column URP.REALTIME_MONITOR.yhbs
  is '�û���ʶ';
comment on column URP.REALTIME_MONITOR.fkzh
  is '�����˺�';
comment on column URP.REALTIME_MONITOR.jylx
  is '��������';
comment on column URP.REALTIME_MONITOR.fkyh
  is '�ʽ����������б�ʶ��';
comment on column URP.REALTIME_MONITOR.jgbm
  is '��������';
comment on column URP.REALTIME_MONITOR.cljg
  is '������(0��δ����1������ɹ���2������ʧ��)';
comment on column URP.REALTIME_MONITOR.sfsc
  is '�Ƿ�ɾ����0��δɾ����1����ɾ����';
comment on column URP.REALTIME_MONITOR.jlcjsj
  is '��¼����ʱ��';
comment on column URP.REALTIME_MONITOR.ycdl
  is '�쳣����';
comment on column URP.REALTIME_MONITOR.ycxl
  is '�쳣С��';
comment on column URP.REALTIME_MONITOR.ycnr
  is '�쳣����';
comment on column URP.REALTIME_MONITOR.clwcsj
  is '���Ҵ������ʱ��';
comment on column URP.REALTIME_MONITOR.ycclbs
  is '�쳣�����ʶ��1���Ѵ���0��δ����';
comment on column URP.REALTIME_MONITOR.ycclfjmc
  is '�쳣����������';
comment on column URP.REALTIME_MONITOR.ycclfjlj
  is '�쳣����������·��';
comment on column URP.REALTIME_MONITOR.ycclms
  is '�쳣��������';
comment on column URP.REALTIME_MONITOR.ycclsj
  is '�쳣����ʱ��';
comment on column URP.REALTIME_MONITOR.ycclr
  is '�쳣������';
comment on column URP.REALTIME_MONITOR.bz
  is '��ע��ʧ�ܴ�����';
comment on column URP.REALTIME_MONITOR.bly
  is '������';
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
  is '���������ļ� �����';
comment on column URP.RECONFILE_INFO.dzwjid
  is '�����ļ�ID�������ļ�';
comment on column URP.RECONFILE_INFO.qdid
  is '��������id';
comment on column URP.RECONFILE_INFO.wjmc
  is '�����ļ�����';
comment on column URP.RECONFILE_INFO.wjlj
  is '�����ļ����غ���·��';
comment on column URP.RECONFILE_INFO.czsj
  is '����ʱ��(�����ļ�����/�ϴ�ʱ��)';
comment on column URP.RECONFILE_INFO.czjg
  is '�������(�����ļ�����/�ϴ����(1���ɹ���0��ʧ��))';
comment on column URP.RECONFILE_INFO.czjgms
  is '�����������(�����ļ�����/�ϴ��������)';
comment on column URP.RECONFILE_INFO.dzrq
  is '�������ڣ��ֹ�����ʱ��ָ����';
comment on column URP.RECONFILE_INFO.rkzt
  is '�����ļ����״̬��0��δ��⣬1������⣬2�����ʧ�ܣ�';
comment on column URP.RECONFILE_INFO.bz
  is '��ע';
comment on column URP.RECONFILE_INFO.sfsc
  is 'ɾ��״̬��1��ɾ����0��δɾ����';
comment on column URP.RECONFILE_INFO.bly1
  is '������1';
comment on column URP.RECONFILE_INFO.bly2
  is '������2';
comment on column URP.RECONFILE_INFO.bly3
  is '������3';
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
  is '�����ļ������ر�';
comment on column URP.RECONFILE_REDOWNLOAD.dzwjcxzid
  is '�����ļ�������ID';
comment on column URP.RECONFILE_REDOWNLOAD.qdid
  is '����id';
comment on column URP.RECONFILE_REDOWNLOAD.dzrq
  is '��������';
comment on column URP.RECONFILE_REDOWNLOAD.xzjg
  is '���ؽ����0��ʧ�ܣ�1���ɹ���';
comment on column URP.RECONFILE_REDOWNLOAD.sbyy
  is '����ʧ��ԭ��';
comment on column URP.RECONFILE_REDOWNLOAD.xzcs
  is '���ش���';
comment on column URP.RECONFILE_REDOWNLOAD.jlcjsj
  is '��¼����ʱ��';
comment on column URP.RECONFILE_REDOWNLOAD.zhxzsj
  is '�������ʱ��';
comment on column URP.RECONFILE_REDOWNLOAD.jgbm
  is '��������';
comment on column URP.RECONFILE_REDOWNLOAD.bz
  is '��ע';
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
  is '���˽����ʷͳ�Ʊ�';
comment on column URP.RECONHIS_STATISTICS.dzjglstjid
  is '���˽����ʷͳ�Ʊ�Id';
comment on column URP.RECONHIS_STATISTICS.dzrq
  is '��������';
comment on column URP.RECONHIS_STATISTICS.dzqd
  is '��������';
comment on column URP.RECONHIS_STATISTICS.wcdzqd
  is '��ɶ�������';
comment on column URP.RECONHIS_STATISTICS.wwcdzqd
  is 'δ��ɶ�������';
comment on column URP.RECONHIS_STATISTICS.wdzqd
  is 'δ��������';
comment on column URP.RECONHIS_STATISTICS.zpqd
  is '��ƽ����';
comment on column URP.RECONHIS_STATISTICS.zbpqd
  is '�˲�ƽ���� ';
comment on column URP.RECONHIS_STATISTICS.dzqdsl
  is '������������';
comment on column URP.RECONHIS_STATISTICS.wcdzqdsl
  is '��ɶ�����������';
comment on column URP.RECONHIS_STATISTICS.wwcdzqdsl
  is 'δ��ɶ�����������';
comment on column URP.RECONHIS_STATISTICS.wdzqdsl
  is 'δ������������';
comment on column URP.RECONHIS_STATISTICS.zpqdsl
  is '��ƽ��������';
comment on column URP.RECONHIS_STATISTICS.zbpqdsl
  is '�˲�ƽ��������';
comment on column URP.RECONHIS_STATISTICS.qdjyzbs
  is '���������ܱ���';
comment on column URP.RECONHIS_STATISTICS.qdjyzje
  is '���������ܽ��';
comment on column URP.RECONHIS_STATISTICS.ycjyzbs
  is '�쳣�����ܱ�����������His������';
comment on column URP.RECONHIS_STATISTICS.qdycjyzje
  is '�����쳣�����ܽ��';
comment on column URP.RECONHIS_STATISTICS.jgbm
  is '��������';
comment on column URP.RECONHIS_STATISTICS.sfsc
  is '�Ƿ�ɾ����1����ɾ����0��δɾ����';
comment on column URP.RECONHIS_STATISTICS.bz
  is '��ע';
comment on column URP.RECONHIS_STATISTICS.bly1
  is '������1';
comment on column URP.RECONHIS_STATISTICS.bly2
  is '������2';
comment on column URP.RECONHIS_STATISTICS.bly3
  is '������3';
comment on column URP.RECONHIS_STATISTICS.hisjyzbs
  is 'His�����ܱ���';
comment on column URP.RECONHIS_STATISTICS.hisjyzje
  is 'His�����ܽ��';
comment on column URP.RECONHIS_STATISTICS.hisycjyzje
  is 'His�쳣�����ܽ��';
comment on column URP.RECONHIS_STATISTICS.qdycjyzbs
  is '�����쳣�����ܱ���';
comment on column URP.RECONHIS_STATISTICS.hisycjyzbs
  is 'His�쳣�����ܱ���';
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
  is '���˽����ϸ��';
comment on column URP.RECONRESULT_DETAIL.dzjgmxid
  is '�����ϸ������id';
comment on column URP.RECONRESULT_DETAIL.qdid
  is '��������Id��Ϊ��������������HIS��';
comment on column URP.RECONRESULT_DETAIL.hisid
  is 'HIS��ˮ������ID';
comment on column URP.RECONRESULT_DETAIL.qdlsid
  is '������������ ID����channel_idƥ�����������ˮ��';
comment on column URP.RECONRESULT_DETAIL.dzjg
  is '���˽����1:��������/0:�쳣���ף�';
comment on column URP.RECONRESULT_DETAIL.yclx
  is '�쳣���ͣ����׽��Ϊ�쳣����ʱ��д��0���������ף�1��HIS�������ޣ�2��His�������У�3�������ɹ���HISʧ�ܣ�4��HIS�ɹ�������ʧ�ܣ�5��HISһ����¼������������¼��6��HIS������¼������һ����¼��7��HIS��������һ�£�';
comment on column URP.RECONRESULT_DETAIL.dzjgms
  is '���˽������';
comment on column URP.RECONRESULT_DETAIL.dzrq
  is '��������';
comment on column URP.RECONRESULT_DETAIL.jlsj
  is '���˽����¼ʱ��';
comment on column URP.RECONRESULT_DETAIL.ydzje
  is 'Ӧ���˽�Ĭ��ΪHIS���׽���������Ӧ��ʵ�ʵ���ƥ�䣬��ͳ�������壩';
comment on column URP.RECONRESULT_DETAIL.ydzclbs
  is 'Ӧ���˴����ʶ��1���Ѵ���0��δ����';
comment on column URP.RECONRESULT_DETAIL.ydzfjmc
  is 'Ӧ���˴���������';
comment on column URP.RECONRESULT_DETAIL.ydzfjlj
  is 'Ӧ���˴���������·��';
comment on column URP.RECONRESULT_DETAIL.ydzclms
  is 'Ӧ���˴���ע';
comment on column URP.RECONRESULT_DETAIL.ydzclsj
  is 'Ӧ���˴���ʱ��';
comment on column URP.RECONRESULT_DETAIL.ydzclr
  is 'Ӧ���˴�����';
comment on column URP.RECONRESULT_DETAIL.bz
  is '��ע';
comment on column URP.RECONRESULT_DETAIL.sfsc
  is 'ɾ��״̬��1��ɾ����0��δɾ����';
comment on column URP.RECONRESULT_DETAIL.bly1
  is '������1';
comment on column URP.RECONRESULT_DETAIL.bly2
  is '������2';
comment on column URP.RECONRESULT_DETAIL.bly3
  is '������3';
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
  is 'ɨ�뽻�׶�����ˮ��';
comment on column URP.SCANCODE_TRANSFLOW.lsid
  is 'ɨ�뽻����ˮ����ID';
comment on column URP.SCANCODE_TRANSFLOW.qdzhid
  is '���������˻�ID';
comment on column URP.SCANCODE_TRANSFLOW.shbh
  is '�̻����';
comment on column URP.SCANCODE_TRANSFLOW.zdbh
  is '�ն˱��';
comment on column URP.SCANCODE_TRANSFLOW.jyckh
  is '���ײο��ţ�ϵͳ���ٺš�ҵ����ˮ�ţ�';
comment on column URP.SCANCODE_TRANSFLOW.jylsh
  is '������ˮ�ţ�������ˮ�ţ�';
comment on column URP.SCANCODE_TRANSFLOW.qqflsh
  is '������ˮ��';
comment on column URP.SCANCODE_TRANSFLOW.yjylsh
  is 'ԭ������ˮ�ţ�����Ϊ�����ཻ��ʱ��ֵ';
comment on column URP.SCANCODE_TRANSFLOW.shddh
  is '�̻�������';
comment on column URP.SCANCODE_TRANSFLOW.zdhm
  is '�˵�����';
comment on column URP.SCANCODE_TRANSFLOW.spmc
  is '��Ʒ����';
comment on column URP.SCANCODE_TRANSFLOW.jysj
  is '����ʱ��';
comment on column URP.SCANCODE_TRANSFLOW.yhjyzh
  is '�û������˺ţ�֧�����˺�/���п��ţ�';
comment on column URP.SCANCODE_TRANSFLOW.jyje
  is '���׽���λ��Ԫ��';
comment on column URP.SCANCODE_TRANSFLOW.jyzt
  is '����״̬��0��ʧ�ܣ�1���ɹ���2��δ֪��';
comment on column URP.SCANCODE_TRANSFLOW.zhye
  is '�˻�����λ��Ԫ��';
comment on column URP.SCANCODE_TRANSFLOW.ywlx
  is 'ҵ�����ͣ�����֧���������˿';
comment on column URP.SCANCODE_TRANSFLOW.jybz
  is '���ױ�ע';
comment on column URP.SCANCODE_TRANSFLOW.jlcjsj
  is '��¼����ʱ��';
comment on column URP.SCANCODE_TRANSFLOW.dzrq
  is '��������';
comment on column URP.SCANCODE_TRANSFLOW.dzbs
  is '���˱�ʶ��1���Ѷ��ˣ�0��δ���ˣ�';
comment on column URP.SCANCODE_TRANSFLOW.crkbs
  is '������ʶ��1������⣬0��ԭʼ��⣩';
comment on column URP.SCANCODE_TRANSFLOW.sfsc
  is 'ɾ��״̬��1��ɾ����0��δɾ����';
comment on column URP.SCANCODE_TRANSFLOW.bly1
  is '������1';
comment on column URP.SCANCODE_TRANSFLOW.bly2
  is '������2';
comment on column URP.SCANCODE_TRANSFLOW.bly3
  is '������3';
comment on column URP.SCANCODE_TRANSFLOW.jgbm
  is '��������';
comment on column URP.SCANCODE_TRANSFLOW.dzbh
  is '���˱��';
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
  is '���״�����ˮ��';
comment on column URP.TRADEHANDLE_WATER.jycllsid
  is '���״�����ˮ������Id';
comment on column URP.TRADEHANDLE_WATER.cljlid
  is '�����¼ID��ʵʱ��ر�ID����˽����ϸ��ID��';
comment on column URP.TRADEHANDLE_WATER.ptlsh
  is '����ƽ̨��ˮ��';
comment on column URP.TRADEHANDLE_WATER.ptddh
  is 'ƽ̨������';
comment on column URP.TRADEHANDLE_WATER.jyddh
  is '���׶�����/�̻�������';
comment on column URP.TRADEHANDLE_WATER.jylsh
  is '������ˮ��';
comment on column URP.TRADEHANDLE_WATER.jyckh
  is '���ײο���';
comment on column URP.TRADEHANDLE_WATER.pch
  is '���κ�';
comment on column URP.TRADEHANDLE_WATER.cxlsh
  is '��ѯ��ˮ��';
comment on column URP.TRADEHANDLE_WATER.yjyddh
  is 'ԭ���׶����ţ�������ʱ���ڲ�ѯԭ���ף�';
comment on column URP.TRADEHANDLE_WATER.jyje
  is '���׽��';
comment on column URP.TRADEHANDLE_WATER.jysj
  is '����ʱ��';
comment on column URP.TRADEHANDLE_WATER.fhm
  is '������';
comment on column URP.TRADEHANDLE_WATER.fhjgms
  is '���ؽ������';
comment on column URP.TRADEHANDLE_WATER.jylx
  is '��������';
comment on column URP.TRADEHANDLE_WATER.jyzt
  is '����״̬';
comment on column URP.TRADEHANDLE_WATER.sfsc
  is '�Ƿ�ɾ��';
comment on column URP.TRADEHANDLE_WATER.jgbm
  is '��������';
comment on column URP.TRADEHANDLE_WATER.jlcjsj
  is '��������';
comment on column URP.TRADEHANDLE_WATER.cjr
  is '������';
comment on column URP.TRADEHANDLE_WATER.zhxgsj
  is '����޸�����';
comment on column URP.TRADEHANDLE_WATER.zhxgr
  is '����޸���';
comment on column URP.TRADEHANDLE_WATER.bz
  is '��ע';
comment on column URP.TRADEHANDLE_WATER.bly
  is '������';
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
  is '������TCOMPOS�ն�DLL������Ϣ��';
comment on column URP.UCOMPOS_CONFIG.pzid
  is '���ñ�Id';
comment on column URP.UCOMPOS_CONFIG.yybh
  is 'ҽԺ���';
comment on column URP.UCOMPOS_CONFIG.rzbm
  is '��֤����';
comment on column URP.UCOMPOS_CONFIG.jylybh
  is '������Դ��ţ�Ϊÿ�����״��ڻ��������Ψһ��ţ�';
comment on column URP.UCOMPOS_CONFIG.shbh
  is '�̻����';
comment on column URP.UCOMPOS_CONFIG.zdbh
  is '�ն˱��';
comment on column URP.UCOMPOS_CONFIG.ip
  is '�ն����ڵ���IP��ַ';
comment on column URP.UCOMPOS_CONFIG.sfsc
  is '�Ƿ�ɾ����1���ǣ�0����';
comment on column URP.UCOMPOS_CONFIG.cjsj
  is '����ʱ��';
comment on column URP.UCOMPOS_CONFIG.cjr
  is '������';
comment on column URP.UCOMPOS_CONFIG.zhxgsj
  is '����޸�ʱ��';
comment on column URP.UCOMPOS_CONFIG.zhxgr
  is '����޸���';
comment on column URP.UCOMPOS_CONFIG.bz
  is '��ע';
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
  is '�豸��־id������';
comment on column URP.UCOMPOS_LOG_INFO.sblx
  is '�豸���ͣ�0��pos��1��������';
comment on column URP.UCOMPOS_LOG_INFO.yybh
  is 'ҽԺ���';
comment on column URP.UCOMPOS_LOG_INFO.jlcjsj
  is '��¼����ʱ��';
comment on column URP.UCOMPOS_LOG_INFO.rznr
  is '��־����';
comment on column URP.UCOMPOS_LOG_INFO.bz
  is '��ע';
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
  is '������TCOMPOS�ն�DLL������Ϣ��';
comment on column URP.UCOMPOS_TRADE_INFO.jylsid
  is '������ˮId';
comment on column URP.UCOMPOS_TRADE_INFO.qqjybw
  is '�����ױ���(������DLL�ӿڱ���)';
comment on column URP.UCOMPOS_TRADE_INFO.yybh
  is 'ҽԺ���';
comment on column URP.UCOMPOS_TRADE_INFO.rzbm
  is '��֤����';
comment on column URP.UCOMPOS_TRADE_INFO.czybh
  is '����Ա���';
comment on column URP.UCOMPOS_TRADE_INFO.czyxm
  is '����Ա����';
comment on column URP.UCOMPOS_TRADE_INFO.hzxm
  is '��������';
comment on column URP.UCOMPOS_TRADE_INFO.hzblh
  is '���߲�����';
comment on column URP.UCOMPOS_TRADE_INFO.bcjyjzkh
  is '���ξ�ҽ���ʿ���';
comment on column URP.UCOMPOS_TRADE_INFO.jyqd
  is '����������1��ҽ����2����������3��΢�ţ�4����������';
comment on column URP.UCOMPOS_TRADE_INFO.jylybh
  is '������Դ��ţ�����POS�������ն˱�ţ��Ա�����ñ��ҵ���Ӧ��������Ϣ��';
comment on column URP.UCOMPOS_TRADE_INFO.jkmc
  is '�ӿ�����';
comment on column URP.UCOMPOS_TRADE_INFO.ptlsh
  is 'ƽ̨��ˮ��';
comment on column URP.UCOMPOS_TRADE_INFO.jyddh
  is '���׶�����';
comment on column URP.UCOMPOS_TRADE_INFO.yjyddh
  is 'ԭ���׶����ţ�����ʱ�ã�';
comment on column URP.UCOMPOS_TRADE_INFO.yspzh
  is '����ƾ֤��';
comment on column URP.UCOMPOS_TRADE_INFO.ysjyckh
  is '���̽��ײο���';
comment on column URP.UCOMPOS_TRADE_INFO.yyspzh
  is 'ԭ����ƾ֤��';
comment on column URP.UCOMPOS_TRADE_INFO.yysjyckh
  is 'ԭ���̽��ײο���';
comment on column URP.UCOMPOS_TRADE_INFO.fqjysj
  is '������ʱ��';
comment on column URP.UCOMPOS_TRADE_INFO.wcjysj
  is '��ɽ���ʱ��';
comment on column URP.UCOMPOS_TRADE_INFO.jyzt
  is '����״̬��1���ɹ���0��ʧ�ܣ�2��δ֪��3�������У�';
comment on column URP.UCOMPOS_TRADE_INFO.jylx
  is '�������ͣ�1�����ѣ�2��������3���˻���';
comment on column URP.UCOMPOS_TRADE_INFO.fhjybw
  is '���ؽ��ױ���(����DLL�ӿڷ��ر���)';
comment on column URP.UCOMPOS_TRADE_INFO.dyfwybs
  is '���÷�Ψһ��ʶ';
comment on column URP.UCOMPOS_TRADE_INFO.bz
  is '��ע';
comment on column URP.UCOMPOS_TRADE_INFO.jyje
  is '���׽��';
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
  is '����������������ˮ��';
comment on column URP.UNIONPAYCF_TRANSFLOW.ylysflsid
  is '������������ˮ����ID';
comment on column URP.UNIONPAYCF_TRANSFLOW.qdzhid
  is '���������˻�ID';
comment on column URP.UNIONPAYCF_TRANSFLOW.shbh
  is '�̻����';
comment on column URP.UNIONPAYCF_TRANSFLOW.zdbh
  is '�ն˱��';
comment on column URP.UNIONPAYCF_TRANSFLOW.jyckh
  is '���ײο��ţ�ϵͳ���ٺš�ҵ����ˮ�ţ�';
comment on column URP.UNIONPAYCF_TRANSFLOW.jylsh
  is '������ˮ�ţ�������ˮ�ţ�';
comment on column URP.UNIONPAYCF_TRANSFLOW.qqflsh
  is '������ˮ��';
comment on column URP.UNIONPAYCF_TRANSFLOW.yjylsh
  is 'ԭ������ˮ�ţ�����Ϊ�����ཻ��ʱ��ֵ';
comment on column URP.UNIONPAYCF_TRANSFLOW.shddh
  is '�̻�������';
comment on column URP.UNIONPAYCF_TRANSFLOW.zdhm
  is '�˵�����';
comment on column URP.UNIONPAYCF_TRANSFLOW.spmc
  is '��Ʒ����';
comment on column URP.UNIONPAYCF_TRANSFLOW.jysj
  is '����ʱ��';
comment on column URP.UNIONPAYCF_TRANSFLOW.yhjyzh
  is '�û������˺ţ�֧�����˺�/���п��ţ�';
comment on column URP.UNIONPAYCF_TRANSFLOW.jyje
  is '���׽���λ��Ԫ��';
comment on column URP.UNIONPAYCF_TRANSFLOW.jyzt
  is '����״̬��0��ʧ�ܣ�1���ɹ���2��δ֪��';
comment on column URP.UNIONPAYCF_TRANSFLOW.zhye
  is '�˻�����λ��Ԫ��';
comment on column URP.UNIONPAYCF_TRANSFLOW.ywlx
  is 'ҵ�����ͣ�����֧���������˿';
comment on column URP.UNIONPAYCF_TRANSFLOW.jybz
  is '���ױ�ע';
comment on column URP.UNIONPAYCF_TRANSFLOW.jlcjsj
  is '��¼����ʱ��';
comment on column URP.UNIONPAYCF_TRANSFLOW.dzrq
  is '��������';
comment on column URP.UNIONPAYCF_TRANSFLOW.dzbs
  is '���˱�ʶ��1���Ѷ��ˣ�0��δ���ˣ�';
comment on column URP.UNIONPAYCF_TRANSFLOW.crkbs
  is '������ʶ��1������⣬0��ԭʼ��⣩';
comment on column URP.UNIONPAYCF_TRANSFLOW.jgbm
  is '��������';
comment on column URP.UNIONPAYCF_TRANSFLOW.sfsc
  is 'ɾ��״̬��1��ɾ����0��δɾ����';
comment on column URP.UNIONPAYCF_TRANSFLOW.bly1
  is '������1';
comment on column URP.UNIONPAYCF_TRANSFLOW.bly2
  is '������2';
comment on column URP.UNIONPAYCF_TRANSFLOW.bly3
  is '������3';
comment on column URP.UNIONPAYCF_TRANSFLOW.dzbh
  is '���˱��';
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
  is '����ȫ����������ˮ��';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.ylqqdlsid
  is '����ȫ������ˮ����ID';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.qdzhid
  is '���������˻�ID';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.shbh
  is '�̻����';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.zdbh
  is '�ն˱��';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.jyckh
  is '���ײο��ţ�ϵͳ���ٺš�ҵ����ˮ�ţ�';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.jylsh
  is '������ˮ�ţ�������ˮ�ţ�';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.qqflsh
  is '������ˮ��';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.yjylsh
  is 'ԭ������ˮ�ţ�����Ϊ�����ཻ��ʱ��ֵ';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.shddh
  is '�̻�������';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.zdhm
  is '�˵�����';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.spmc
  is '��Ʒ����';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.jysj
  is '����ʱ��';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.yhjyzh
  is '�û������˺ţ�֧�����˺�/���п��ţ�';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.jyje
  is '���׽���λ��Ԫ��';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.jyzt
  is '����״̬��0��ʧ�ܣ�1���ɹ���2��δ֪��';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.zhye
  is '�˻�����λ��Ԫ��';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.ywlx
  is 'ҵ�����ͣ�����֧���������˿';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.jybz
  is '���ױ�ע';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.jlcjsj
  is '��¼����ʱ��';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.dzrq
  is '��������';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.dzbs
  is '���˱�ʶ��1���Ѷ��ˣ�0��δ���ˣ�';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.crkbs
  is '������ʶ��1������⣬0��ԭʼ��⣩';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.jgbm
  is '��������';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.sfsc
  is 'ɾ��״̬��1��ɾ����0��δɾ����';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.bly1
  is '������1';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.bly2
  is '������2';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.bly3
  is '������3';
comment on column URP.UNIONPAYOMNI_TRANSFLOW.dzbh
  is '���˱��';
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
  is '������������ˮ��';
comment on column URP.UNIONPAY_TRANSFLOW.lsid
  is '��������ˮ����ID';
comment on column URP.UNIONPAY_TRANSFLOW.qdzhid
  is '���������˻�ID';
comment on column URP.UNIONPAY_TRANSFLOW.shbh
  is '�̻����';
comment on column URP.UNIONPAY_TRANSFLOW.zdbh
  is '�ն˱��';
comment on column URP.UNIONPAY_TRANSFLOW.jyckh
  is '���ײο��ţ�ϵͳ���ٺš�ҵ����ˮ�ţ�';
comment on column URP.UNIONPAY_TRANSFLOW.jylsh
  is '������ˮ�ţ�������ˮ�ţ�';
comment on column URP.UNIONPAY_TRANSFLOW.qqflsh
  is '������ˮ��';
comment on column URP.UNIONPAY_TRANSFLOW.yjylsh
  is 'ԭ������ˮ�ţ�����Ϊ�����ཻ��ʱ��ֵ';
comment on column URP.UNIONPAY_TRANSFLOW.shddh
  is '�̻�������';
comment on column URP.UNIONPAY_TRANSFLOW.zdhm
  is '�˵�����';
comment on column URP.UNIONPAY_TRANSFLOW.spmc
  is '��Ʒ����';
comment on column URP.UNIONPAY_TRANSFLOW.jysj
  is '����ʱ��';
comment on column URP.UNIONPAY_TRANSFLOW.yhjyzh
  is '�û������˺ţ�֧�����˺�/���п��ţ�';
comment on column URP.UNIONPAY_TRANSFLOW.jyje
  is '���׽���λ��Ԫ��';
comment on column URP.UNIONPAY_TRANSFLOW.jyzt
  is '����״̬��0��ʧ�ܣ�1���ɹ���2��δ֪��';
comment on column URP.UNIONPAY_TRANSFLOW.zhye
  is '�˻�����λ��Ԫ��';
comment on column URP.UNIONPAY_TRANSFLOW.ywlx
  is 'ҵ�����ͣ�����֧���������˿';
comment on column URP.UNIONPAY_TRANSFLOW.jybz
  is '���ױ�ע';
comment on column URP.UNIONPAY_TRANSFLOW.jlcjsj
  is '��¼����ʱ��';
comment on column URP.UNIONPAY_TRANSFLOW.dzrq
  is '��������';
comment on column URP.UNIONPAY_TRANSFLOW.dzbs
  is '���˱�ʶ��1���Ѷ��ˣ�0��δ���ˣ�';
comment on column URP.UNIONPAY_TRANSFLOW.crkbs
  is '������ʶ��1������⣬0��ԭʼ��⣩';
comment on column URP.UNIONPAY_TRANSFLOW.jgbm
  is '��������';
comment on column URP.UNIONPAY_TRANSFLOW.sfsc
  is 'ɾ��״̬��1��ɾ����0��δɾ����';
comment on column URP.UNIONPAY_TRANSFLOW.bly1
  is '������1';
comment on column URP.UNIONPAY_TRANSFLOW.bly2
  is '������2�������';
comment on column URP.UNIONPAY_TRANSFLOW.bly3
  is '������3->���￨��';
comment on column URP.UNIONPAY_TRANSFLOW.dzbh
  is '���˱��';
comment on column URP.UNIONPAY_TRANSFLOW.ejbs
  is '������ʶ����ֳҽԺ-> �����У�';
comment on column URP.UNIONPAY_TRANSFLOW.sxf
  is '�����ѣ���λ��Ԫ��';
comment on column URP.UNIONPAY_TRANSFLOW.qsje
  is '�������λ��Ԫ��';
comment on column URP.UNIONPAY_TRANSFLOW.qsrq
  is '��������';
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
  is '΢�����ñ�';
comment on column URP.WECHAT_CONFIG.wxpzid
  is '΢�����ñ�����Id';
comment on column URP.WECHAT_CONFIG.appid
  is '΢�Ź��ں�APPID';
comment on column URP.WECHAT_CONFIG.app_secret
  is '΢�Ź��ں���Կ';
comment on column URP.WECHAT_CONFIG.original_id
  is '΢�Ź��ں�ԭʼID';
comment on column URP.WECHAT_CONFIG.access_token
  is '΢�Ź��ںŵķ������ƣ���Ч��2Сʱ';
comment on column URP.WECHAT_CONFIG.lpgxsj
  is '���Ƹ���ʱ��';
comment on column URP.WECHAT_CONFIG.lpxcsxsj
  is '�����´�ˢ��ʱ��';
comment on column URP.WECHAT_CONFIG.jsapiticket
  is '΢�Ź��ں�JSAPIƱ��';
comment on column URP.WECHAT_CONFIG.pjgxsj
  is 'Ʊ�ݸ���ʱ��';
comment on column URP.WECHAT_CONFIG.pjxcsxsj
  is 'Ʊ���´�ˢ��ʱ��';
comment on column URP.WECHAT_CONFIG.wxmc
  is '΢������';
comment on column URP.WECHAT_CONFIG.wxhm
  is '΢�ź���';
comment on column URP.WECHAT_CONFIG.wxlx
  is '΢�Ź��ں����ͣ����ĺš�����š���ҵ�ţ�';
comment on column URP.WECHAT_CONFIG.wxms
  is '΢�Ź��ں�����';
comment on column URP.WECHAT_CONFIG.sfsc
  is '�Ƿ�ɾ��';
comment on column URP.WECHAT_CONFIG.jgbm
  is '��������';
comment on column URP.WECHAT_CONFIG.cjsj
  is '����ʱ��';
comment on column URP.WECHAT_CONFIG.cjr
  is '������';
comment on column URP.WECHAT_CONFIG.zhxgsj
  is '����޸�ʱ��';
comment on column URP.WECHAT_CONFIG.zhxgr
  is '����޸���';
comment on column URP.WECHAT_CONFIG.bz
  is '��ע';
comment on column URP.WECHAT_CONFIG.bly
  is '������';
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
  is '΢�Ž�����ˮ��';
comment on column URP.WECHAT_TRANSFLOW.lsid
  is '΢����ˮ����ID';
comment on column URP.WECHAT_TRANSFLOW.qdzhid
  is '���������˻�ID';
comment on column URP.WECHAT_TRANSFLOW.shbh
  is '�̻����';
comment on column URP.WECHAT_TRANSFLOW.zdbh
  is '�ն˱��';
comment on column URP.WECHAT_TRANSFLOW.jyckh
  is '���ײο��ţ�ϵͳ���ٺš�ҵ����ˮ�ţ�';
comment on column URP.WECHAT_TRANSFLOW.jylsh
  is '������ˮ�ţ�������ˮ�ţ�';
comment on column URP.WECHAT_TRANSFLOW.qqflsh
  is '������ˮ��';
comment on column URP.WECHAT_TRANSFLOW.yjylsh
  is 'ԭ������ˮ�ţ�����Ϊ�����ཻ��ʱ��ֵ';
comment on column URP.WECHAT_TRANSFLOW.shddh
  is '�̻�������';
comment on column URP.WECHAT_TRANSFLOW.zdhm
  is '�˵�����';
comment on column URP.WECHAT_TRANSFLOW.spmc
  is '��Ʒ����';
comment on column URP.WECHAT_TRANSFLOW.jysj
  is '����ʱ��';
comment on column URP.WECHAT_TRANSFLOW.yhjyzh
  is '�û������˺ţ�֧�����˺�/���п��ţ�';
comment on column URP.WECHAT_TRANSFLOW.jyje
  is '���׽���λ��Ԫ��';
comment on column URP.WECHAT_TRANSFLOW.jyzt
  is '����״̬��0��ʧ�ܣ�1���ɹ���2��δ֪��';
comment on column URP.WECHAT_TRANSFLOW.zhye
  is '�˻�����λ��Ԫ��';
comment on column URP.WECHAT_TRANSFLOW.ywlx
  is 'ҵ�����ͣ�����֧���������˿';
comment on column URP.WECHAT_TRANSFLOW.jybz
  is '���ױ�ע';
comment on column URP.WECHAT_TRANSFLOW.jlcjsj
  is '��¼����ʱ��';
comment on column URP.WECHAT_TRANSFLOW.dzrq
  is '��������';
comment on column URP.WECHAT_TRANSFLOW.dzbs
  is '���˱�ʶ��1���Ѷ��ˣ�0��δ���ˣ�';
comment on column URP.WECHAT_TRANSFLOW.crkbs
  is '������ʶ��1������⣬0��ԭʼ��⣩';
comment on column URP.WECHAT_TRANSFLOW.jgbm
  is '��������';
comment on column URP.WECHAT_TRANSFLOW.sfsc
  is 'ɾ��״̬��1��ɾ����0��δɾ����';
comment on column URP.WECHAT_TRANSFLOW.bly1
  is '������1';
comment on column URP.WECHAT_TRANSFLOW.bly2
  is '������2';
comment on column URP.WECHAT_TRANSFLOW.bly3
  is '������3->���￨��';
comment on column URP.WECHAT_TRANSFLOW.dzbh
  is '���˱��';
comment on column URP.WECHAT_TRANSFLOW.ejbs
  is '������ʶ';
comment on column URP.WECHAT_TRANSFLOW.sxf
  is '�����ѣ���λ��Ԫ��';
comment on column URP.WECHAT_TRANSFLOW.qsje
  is '�������λ��Ԫ��';
comment on column URP.WECHAT_TRANSFLOW.qsrq
  is '��������';
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
  is '�쳣������Ϣ��';
comment on column URP.WF_ABNORMAL_ORDER.ycddid
  is '�쳣����Id';
comment on column URP.WF_ABNORMAL_ORDER.sqdid
  is '�����¼������Id';
comment on column URP.WF_ABNORMAL_ORDER.gllsbmc
  is '������ˮ������';
comment on column URP.WF_ABNORMAL_ORDER.gllsbid
  is '������ˮ������Id';
comment on column URP.WF_ABNORMAL_ORDER.ddbh
  is '�������';
comment on column URP.WF_ABNORMAL_ORDER.ddje
  is '�������';
comment on column URP.WF_ABNORMAL_ORDER.yclx
  is '�쳣���ͣ������쳣����+His�������������ڣ�';
comment on column URP.WF_ABNORMAL_ORDER.ycms
  is '�쳣����';
comment on column URP.WF_ABNORMAL_ORDER.ddlx
  is '�������ͣ�0����ҽԺ����1����HIS�������̣�';
comment on column URP.WF_ABNORMAL_ORDER.ddclzt
  is '��������״̬��0:����,1:������,10:���ȷ�ϴ�����,11:��������ͨ��,12:����������ͨ��,13:����˻�,14:��ƴ�����,15:�������ͨ��,16:���������ͨ��,17:����������,18:���������,2:�����,3:HIS�˻�,4:HIS������,5:HISȷ���˻�,6:HISȷ�ϴ�����,7:��γȷ���˻�,8:��γȷ�ϴ�����,9:���ȷ���˻أ�';
comment on column URP.WF_ABNORMAL_ORDER.jysj
  is '����ʱ��';
comment on column URP.WF_ABNORMAL_ORDER.jlcjsj
  is '��¼����ʱ��';
comment on column URP.WF_ABNORMAL_ORDER.jlcjr
  is '��¼������';
comment on column URP.WF_ABNORMAL_ORDER.zhxgsj
  is '����޸�ʱ��';
comment on column URP.WF_ABNORMAL_ORDER.zhxgr
  is '����޸���';
comment on column URP.WF_ABNORMAL_ORDER.jgbm
  is '��������';
comment on column URP.WF_ABNORMAL_ORDER.bz
  is '��ע';
comment on column URP.WF_ABNORMAL_ORDER.bly
  is '������';
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
  is '�����¼��';
comment on column URP.WF_APPLY_RECORD.sqdid
  is '�����¼����Id';
comment on column URP.WF_APPLY_RECORD.sqdbh
  is '���뵥��ţ�Ψһ��ʶ��';
comment on column URP.WF_APPLY_RECORD.hzxm
  is '��������';
comment on column URP.WF_APPLY_RECORD.hzzyh
  is '����סԺ��';
comment on column URP.WF_APPLY_RECORD.hzjzkh
  is '���߾��￨��';
comment on column URP.WF_APPLY_RECORD.hzsfzh
  is '�������֤��';
comment on column URP.WF_APPLY_RECORD.sqdlx
  is '���뵥���ͣ�0��ҽԺ����1��HIS����2��ҽԺ��HIS��ͬ����';
comment on column URP.WF_APPLY_RECORD.sqdclzt
  is '���뵥����״̬��0:����,1:������,2:�����,3:���������,4:���˻�,5:�������˻�,6:������,7:���������ϣ�';
comment on column URP.WF_APPLY_RECORD.sqcjsj
  is '���봴��ʱ��';
comment on column URP.WF_APPLY_RECORD.sqcjr
  is '���봴����';
comment on column URP.WF_APPLY_RECORD.jgbm
  is '��������';
comment on column URP.WF_APPLY_RECORD.bz
  is '��ע';
comment on column URP.WF_APPLY_RECORD.bly
  is '������';
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
  is 'HIS����--�ڵ㴦����Ϣ��';
comment on column URP.WF_HPHANDLE_INFO.hjdclid
  is 'HIS���̽ڵ㴦������Id';
comment on column URP.WF_HPHANDLE_INFO.sqdid
  is '�����¼����Id';
comment on column URP.WF_HPHANDLE_INFO.cljd
  is '����ڵ�';
comment on column URP.WF_HPHANDLE_INFO.cllx
  is '�������ͣ�1:�ύ,2:ȷ��,3:�˻�,4:����ͨ��,5:������ͨ��,6:����,7:����,8:����,9:�˻ر��棩';
comment on column URP.WF_HPHANDLE_INFO.clms
  is '��������';
comment on column URP.WF_HPHANDLE_INFO.fjmc1
  is '��������1';
comment on column URP.WF_HPHANDLE_INFO.fjbclj1
  is '��������·��1';
comment on column URP.WF_HPHANDLE_INFO.fjmc2
  is '��������2';
comment on column URP.WF_HPHANDLE_INFO.fjbclj2
  is '��������·��2';
comment on column URP.WF_HPHANDLE_INFO.clsj
  is '����ʱ��';
comment on column URP.WF_HPHANDLE_INFO.clr
  is '������';
comment on column URP.WF_HPHANDLE_INFO.zhxgsj
  is '����޸�ʱ��';
comment on column URP.WF_HPHANDLE_INFO.zhxgr
  is '����޸���';
comment on column URP.WF_HPHANDLE_INFO.jdqm
  is '�ڵ�ǩ��';
comment on column URP.WF_HPHANDLE_INFO.jgbm
  is '��������';
comment on column URP.WF_HPHANDLE_INFO.bz
  is '��ע';
comment on column URP.WF_HPHANDLE_INFO.bly
  is '������';
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
  is 'ҽԺ����--�ڵ㴦����Ϣ��';
comment on column URP.WF_MPHANDLE_INFO.mjdclid
  is 'ҽԺ���̽ڵ㴦������Id';
comment on column URP.WF_MPHANDLE_INFO.sqdid
  is '�����¼����Id';
comment on column URP.WF_MPHANDLE_INFO.cljd
  is '����ڵ�';
comment on column URP.WF_MPHANDLE_INFO.cllx
  is '�������ͣ�1:�ύ,2:ȷ��,3:�˻�,4:����ͨ��,5:������ͨ��,6:����,7:����,8:����,9:�˻ر��棩';
comment on column URP.WF_MPHANDLE_INFO.clms
  is '��������';
comment on column URP.WF_MPHANDLE_INFO.fjmc1
  is '��������1';
comment on column URP.WF_MPHANDLE_INFO.fjbclj1
  is '��������·��1';
comment on column URP.WF_MPHANDLE_INFO.fjmc2
  is '��������2';
comment on column URP.WF_MPHANDLE_INFO.fjbclj2
  is '��������·��2';
comment on column URP.WF_MPHANDLE_INFO.clsj
  is '����ʱ��';
comment on column URP.WF_MPHANDLE_INFO.clr
  is '������';
comment on column URP.WF_MPHANDLE_INFO.zhxgsj
  is '����޸�ʱ��';
comment on column URP.WF_MPHANDLE_INFO.zhxgr
  is '����޸���';
comment on column URP.WF_MPHANDLE_INFO.jdqm
  is '�ڵ�ǩ��';
comment on column URP.WF_MPHANDLE_INFO.jgbm
  is '��������';
comment on column URP.WF_MPHANDLE_INFO.bz
  is '��ע';
comment on column URP.WF_MPHANDLE_INFO.bly
  is '������';
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
  is '��Ϣͳ�Ʊ�';
comment on column URP.WF_STATISTICS.xxtjid
  is '��Ϣͳ������Id';
comment on column URP.WF_STATISTICS.yclx
  is '�쳣����';
comment on column URP.WF_STATISTICS.ycddzs
  is '�쳣��������';
comment on column URP.WF_STATISTICS.ycddzje
  is '�쳣�����ܽ��';
comment on column URP.WF_STATISTICS.yclycddzs
  is '�Ѵ����쳣��������';
comment on column URP.WF_STATISTICS.yclycddzje
  is '�Ѵ����쳣�����ܽ��';
comment on column URP.WF_STATISTICS.tjqsrq
  is 'ͳ����ʼ����';
comment on column URP.WF_STATISTICS.tjzzrq
  is 'ͳ����ֹ����';
comment on column URP.WF_STATISTICS.yclddzs
  is '�Ѵ���������';
comment on column URP.WF_STATISTICS.yclddzje
  is '�Ѵ������ܽ��';
comment on column URP.WF_STATISTICS.yzfddzs
  is '�����϶�������';
comment on column URP.WF_STATISTICS.yzfddzje
  is '�����϶����ܽ��';
comment on column URP.WF_STATISTICS.sqdzs
  is '���뵥����';
comment on column URP.WF_STATISTICS.sqdzje
  is '���뵥�ܽ��';
comment on column URP.WF_STATISTICS.jlcjsj
  is '��������';
comment on column URP.WF_STATISTICS.jgbm
  is '��������';
comment on column URP.WF_STATISTICS.sfsc
  is '�Ƿ�ɾ��';
comment on column URP.WF_STATISTICS.bz
  is '��ע';
comment on column URP.WF_STATISTICS.bly
  is '������';
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
