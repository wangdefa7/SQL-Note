select ei.sbbm, ei.sbmc, rd.yndzjgmxid, his.ynhislsid,cnt.ynsblsid,his.brxm hxm,cnt.brxm csxm,
his.jyckh hisjyckh, his.jylsh hisjylsh, his.ddbh hisddbh, his.jysj hisjysj, his.sfzhm hzsfzh,his.dzbh hisdzbh, his.jyqdbs hisqdbm,
cnt.jyckh csjyckh, cnt.jylsh csjylsh, cnt.ddbh csddbh, cnt.jysj csjysj,cnt.jyje cje, cnt.dzbh sbdzbh, cnt.jyqdbs sbqdbm,
his.jyje hje,rd.dzjg, rd.dzjgms, rd.yclx, ci.qdmc,
his.jyzdbh, ei.sbid, rd.ycclbs, ef.sbcsbm, ef.sbcsmc ,
case when his.brjzkh is null then cnt.brjzkh else his.brjzkh end brjzkh 
from urp.e_reconresult_detail rd
left join urp.e_equipment_transflow cnt on rd.ynsblsid = cnt.ynsblsid
left join urp.e_his_transflow his on rd.ynhislsid = his.ynhislsid
inner join URP.CHANNEL_INFO ci on ci.qdbm = cnt.jyqdbs
left join URP.E_EQUIPMENT_FACTORY ef on ef.sbcsid = rd.sbcsid
left join URP.E_EQUIPMENT_INFO ei on rd.sbcsid = ei.sbcsid
where 1=1
and rd.sbcsid != 'b8036942f41e44349142d1c06493ed01'
and rd.dzrq = to_date('2021-06-28','yyyy-MM-dd')
and rd.dzjg = '0'
and rd.sfsc = '0'
--and ci.qdid = '35d05440888c4acd8a7de971b9049484'
