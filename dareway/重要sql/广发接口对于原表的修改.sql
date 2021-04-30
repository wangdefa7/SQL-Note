select * from URP.GF_BANKTRANS_ACCOUNTS;

-- 广发新接口增加字段
alter table urp.gf_banktrans_accounts add (
      jyje number(12,2)  default 0,
    inname varchar2(60),
    inacc varchar2(40),
    errCode varchar2(25),
    businessType varchar(2)
);
 
-- 新增字段的注释   
comment on column urp.gf_banktrans_accounts.jyje is '交易金额';
comment on column urp.gf_banktrans_accounts.inname  is '转入户名';
comment on column urp.gf_banktrans_accounts.inacc  is '转入账号';
comment on column urp.gf_banktrans_accounts.errCode  is '失败错误码';
comment on column urp.gf_banktrans_accounts.businessType  is '业务类型:1、费用报销,2、其他代付,3、代发工资,4、慧支付,6、代付理赔';
