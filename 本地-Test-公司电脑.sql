create table test(
id number(5) primary key,
name varchar(20)
);

select * from wdf.test for update;

insert into wdf.test values(1,'a');
