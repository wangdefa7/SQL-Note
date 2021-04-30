--查询所有的社保终端号
select csz from param_dict dict where 1=1 and dict.cslx = 'SbPosShh' and  dict.zt = '0';
-- 查询pos社保交易的交易金额 手续费
-- 银联总金额中 减掉这部分 手续费加到医保的手续费中
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

-- 医保的终端号
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
