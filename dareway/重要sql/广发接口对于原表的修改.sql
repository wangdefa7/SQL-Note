select * from URP.GF_BANKTRANS_ACCOUNTS;

-- �㷢�½ӿ������ֶ�
alter table urp.gf_banktrans_accounts add (
      jyje number(12,2)  default 0,
    inname varchar2(60),
    inacc varchar2(40),
    errCode varchar2(25),
    businessType varchar(2)
);
 
-- �����ֶε�ע��   
comment on column urp.gf_banktrans_accounts.jyje is '���׽��';
comment on column urp.gf_banktrans_accounts.inname  is 'ת�뻧��';
comment on column urp.gf_banktrans_accounts.inacc  is 'ת���˺�';
comment on column urp.gf_banktrans_accounts.errCode  is 'ʧ�ܴ�����';
comment on column urp.gf_banktrans_accounts.businessType  is 'ҵ������:1�����ñ���,2����������,3����������,4����֧��,6����������';
