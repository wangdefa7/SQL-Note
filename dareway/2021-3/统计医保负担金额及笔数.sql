
select meda.qdjyje, meda.jybs - nvl((medb.jybs * 2), 0) jybs
  from (select sum(med.ybfdje + med.grzhzfje) qdjyje, count(1) jybs
          from urp.medicare_transflow med
         where 1 = 1
           and to_char(med.dzrq, 'yyyy-mm-dd') = '2021-03-04'
           and med.sfsc = '0') meda,
       (select count(1) jybs
          from urp.medicare_transflow med2
         where 1 = 1
           and to_char(med2.dzrq, 'yyyy-mm-dd') = '2021-03-04'
           and med2.sfsc = '0'
           and med2.jsbz = '0') medb


select *
          from urp.medicare_transflow med
         where 1 = 1
           and to_char(med.dzrq, 'yyyy-mm-dd') = '2021-03-04'
           and med.sfsc = '0'
