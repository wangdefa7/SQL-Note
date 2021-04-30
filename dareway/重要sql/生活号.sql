------增加字段 -------------------------------------------------
alter table polymer.patient_care_info add ppatientid varchar2(60) ;
alter table polymer.appointdoc_record add ppatientid varchar2(60) ;
------增加字段 ---------------------------
----------------------  连上199的数据库 执行一下这2个语句吧
select * from polymer.ssh_mouldnews;
insert into polymer.ssh_mouldnews (APPID, MOULDNEWSID, MOULDNEWSNNAME, XXGNID, REMARK)
values ('2021001174638512', '6533b31573a548599aa5153dc25d5046', '预约成功通知', 'yygh', '测试');

insert into polymer.ssh_mouldnews (APPID, MOULDNEWSID, MOULDNEWSNNAME, XXGNID, REMARK)
values ('2021001174638512', 'be200ae8f9aa4b16a858fe0ec257e98a', '取消预约成功通知', 'qxyy', '测试');

insert into polymer.ssh_mouldnews (APPID, MOULDNEWSID, MOULDNEWSNNAME, XXGNID, REMARK)
values ('2021001174638512', 'b5522c23530a4f16a846b815c3aaac6c', '就诊卡充值成功', 'jzkczcg', '测试');


select * from polymer.hospital_info a

select * from polymer.hospital_info a;
--truncate table polymer.hospital_info ;

--2021-2-23 删除数据
select * from polymer.user_info a where a.patientid='2088012673611445';

delete from polymer.user_info a where a.patientid='2088012673611445';

 select a.patientid,a.isbinding,a.ppatientid,a.working  from polymer.user_info a where a.patientid='2088012673611445'; 
