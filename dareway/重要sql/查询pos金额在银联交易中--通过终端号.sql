--��ѯ���е��籣�ն˺�
select csz from param_dict dict where 1=1 and dict.cslx = 'SbPosShh' and  dict.zt = '0';
-- ��ѯpos�籣���׵Ľ��׽�� ������
-- �����ܽ���� �����ⲿ�� �����Ѽӵ�ҽ������������
select sum(yl.jyje) jyje, sum(yl.sxf), sxf 
  from urp.Unionpay_Transflow yl
 where 1 = 1
   and yl.shbh in (select csz as zdbh
                     from param_dict dict
                    where 1 = 1
                      and dict.cslx = 'SbPosShh'
                      and dict.zt = '0')
   and yl.dzrq = ''
   and yl.sfsc = ''

-- ҽ�����ն˺�
86315097
86315098
86315099
86315100
86315101
86315102
86396851
86396852
86396853
86396854
