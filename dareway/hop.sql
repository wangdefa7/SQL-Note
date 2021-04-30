
-- lujingting
select * from hop.PATIENTS_INFO


select yybh,yymc,nvl(s1.c1,0) lx1,nvl(s2.c2,0) lx2,nvl(s3.c3,0) lx3
from
(select count(distinct hpi.hzid) c1,hpi.yybh,hhi.yymc
from hop.PATIENTS_INFO hpi
left join hop.HOSPITAL_INFO hhi on hpi.yybh= hhi.yybh 
where hpi.hzlx='1'
group by hpi.yybh,hhi.yymc
order by hpi.yybh)s1
left join
(select count(distinct hpi2.hzid) c2,hpi2.yybh yybh2
from hop.PATIENTS_INFO hpi2
left join hop.HOSPITAL_INFO hhi2 on hpi2.yybh= hhi2.yybh 
where hpi2.hzlx='2'
group by hpi2.yybh)s2 on s1.yybh=s2.yybh2
left join
(select count(distinct hpi3.hzid) c3,hpi3.yybh yybh3
from hop.PATIENTS_INFO hpi3
left join hop.HOSPITAL_INFO hhi3 on hpi3.yybh= hhi3.yybh 
where hpi3.hzlx='3'
group by hpi3.yybh)s3 on s1.yybh=s3.yybh3
order by yybh

select a.yybh,b.yymc,a.c1,a.c2,a.c3 from
(
SELECT 
	hpi.yybh,
	SUM(CASE WHEN hpi.hzlx = 1 THEN 1 ELSE 0 END)  c1,
	SUM(CASE WHEN hpi.hzlx = 2 THEN 1 ELSE 0 END)  c2,
	SUM(CASE WHEN hpi.hzlx = 3 THEN 1 ELSE 0 END)  c3
FROM 
	hop.PATIENTS_INFO HPI
GROUP BY
	hpi.yybh
  ) a left join hop.HOSPITAL_INFO b on a.yybh = b.yybh
  
  
  
  
  select count(distinct hpi3.hzid) c3,hpi3.yybh yybh3
from hop.PATIENTS_INFO hpi3
--left join hop.HOSPITAL_INFO hhi3 on hpi3.yybh= hhi3.yybh 
where hpi3.hzlx='3'
group by hpi3.yybh 
