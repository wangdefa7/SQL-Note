------�����ֶ� -------------------------------------------------
alter table polymer.patient_care_info add ppatientid varchar2(60) ;
alter table polymer.appointdoc_record add ppatientid varchar2(60) ;
------�����ֶ� ---------------------------
----------------------  ����199�����ݿ� ִ��һ����2������
select * from polymer.ssh_mouldnews;
insert into polymer.ssh_mouldnews (APPID, MOULDNEWSID, MOULDNEWSNNAME, XXGNID, REMARK)
values ('2021001174638512', '6533b31573a548599aa5153dc25d5046', 'ԤԼ�ɹ�֪ͨ', 'yygh', '����');

insert into polymer.ssh_mouldnews (APPID, MOULDNEWSID, MOULDNEWSNNAME, XXGNID, REMARK)
values ('2021001174638512', 'be200ae8f9aa4b16a858fe0ec257e98a', 'ȡ��ԤԼ�ɹ�֪ͨ', 'qxyy', '����');

insert into polymer.ssh_mouldnews (APPID, MOULDNEWSID, MOULDNEWSNNAME, XXGNID, REMARK)
values ('2021001174638512', 'b5522c23530a4f16a846b815c3aaac6c', '���￨��ֵ�ɹ�', 'jzkczcg', '����');


select * from polymer.hospital_info a

select * from polymer.hospital_info a;
--truncate table polymer.hospital_info ;

--2021-2-23 ɾ������
select * from polymer.user_info a where a.patientid='2088012673611445';

delete from polymer.user_info a where a.patientid='2088012673611445';

 select a.patientid,a.isbinding,a.ppatientid,a.working  from polymer.user_info a where a.patientid='2088012673611445'; 
