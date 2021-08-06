select count(*) 

--select * 
from urp.e_reconresult_detail rd
--left join urp.e_equipment_transflow cnt on rd.ynsblsid = cnt.ynsblsid
where 1=1
-- 1244笔   ipay对账后的账平=1284
-- and rd.sbcsid = 'f971c7babf374641bc2f6e36996a1813' 
-- and rd.sbid = '08978939bda4488abcd9975b35dbaa56'
 -- 6099  6095
 -- 对账时 账平 6093
 and rd.sbcsid = '4fcc70d4706b4120abe0ae308595ae54'
 and rd.sbid = 'b8036942f41e44349142d1c06493ed01'
and rd.sfsc = '0'
and rd.dzrq = to_date('2021-06-28','yyyy-MM-dd')
and rd.yclx is null
--and rd.dzjg != '1'
