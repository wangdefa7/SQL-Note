
--系统权限传递：
--增加WITH ADMIN OPTION选项，则得到的权限可以传递。//可以传递所获权限。
 grant connect, resorce to user50 with admin option;  
--系统权限回收：系统权限只能由DBA用户回收
 Revoke connect, resource from user50;
　　
--查询用户拥有哪里权限(用户名字需要大写)：
 select * from dba_role_privs where grantee = 'ddszone';
 select distinct a.GRANTEE from dba_sys_privs a;
 select * from role_sys_privs;
--查自己拥有哪些系统权限
 select * from session_privs;
-- 查看角色(只能查看登陆用户拥有的角色)所包含的权限
 select * from role_sys_privs;
--删除用户 //加上cascade则将用户连同其创建的东西全部删除
 drop user 用户名 cascade;
-- 系统权限传递：
-- 增加WITH ADMIN OPTION选项，则得到的权限可以传递。//可以传递所获权限。
 grant connect, resorce to user50 with admin option;  
-- 系统权限回收：系统权限只能由DBA用户回收
 Revoke connect, resource from user50;
 
 
 -- 查询表空间
 select * from dba_data_files;
 select file_name from dba_data_files
 select name from  v$datafile
 
 -- 设置表空间自动扩容
 alter database datafile '/opt/oracle/oradata/orcl/ts_hass_1.dbf' autoextend on;


 
 -- 创建表空间(表空间的名字是自己起的，XX.dbf) size 后面配置的是表空间的大小
 create tablespace wdf datafile 'D:\software\sql\oracle\mulu\oradata\orcl\WDF.DBF' size 1G;
 
 -- 修改表空间名字
 
 alter tablespace ddszone rename to TS_DDS;
 
 --设置表空间默认用户
 create user wdf identified by wdf default tablespace wdf;
 
 --修改用户的永久表空间可以执行命令: 
 alter user urp default tablespace URP_RUN;
 
 -- 查看表空间默认用户（需要登录用户）
 select * from user_users; 
 
 --Oracle中一个表空间可能是多个用户的默认表空间，下面语句统计了用户及其默认表空间情况，如果用户多个，用户之间通过逗号分隔。

select t.default_tablespace,
       to_char(wmsys.wm_concat(username)) all_users
  from dba_users t
 group by t.default_tablespace;
 
 -- 创建用户（账号：wdf 密码:wdfwdf）赋予表空间:wdf_tablespace
 create user ddszone identified by ddszone default tablespace ddszone;
 
 -- 修改用户密码
 alter user urp identified by urp;
 
 -- 给用户 wdf 赋予CREATE SESSION权限  连接数据库权限
 grant create session to ipay;
 
 -- 给用户 wdf 赋予CREATE TABLE权限  建立数据表权限
 grant CREATE TABLE to ipay;
 
 -- 给用户 wdf 赋予 UNLIMITED TABLESPACE 权限     --表空间无限制权限（空间配额）
  grant UNLIMITED TABLESPACE to ipay;
  
  -- 对账项目赋予用户的角色：创建session角色，创建资源角色,Create table 等等，数据库管理员角色
  grant connect,resource,dba to wdf;
  
  -- （start）plsql 提示 动态执行表不可访问,或在v$session... 中的错误，执行下列sql或者打开：工具->首选项->选项-> 去掉“自动统计”前面的勾选
  -- 根据提示，用sys身份给 XX 用户授权
grant select on V_session to XX;
grant select on V_$sesstat to XX;
grant select on V_$statname to XX;
 
  -- 给所有用户授权
grant select on V_$session to public;
grant select on V_$sesstat to public;
grant select on V_$statname to public;

-- 查询用户的密码过期时间
select *
  from dba_profiles
 where profile = 'DEFAULT'
   and resource_name = 'PASSWORD_LIFE_TIME';
   
-- 修改密码为永久
alter profile default limit password_life_time unlimited;  
commit; 


  -- （end）

select * from user_tab_comments -- 查询本用户的表,视图等。
select * from wdf.test_wdf;

--如果有删除用户的权限，则可以(加了cascade就可以把 用户 连带的数据全部删掉。)：
drop user ddszone cascade;


  
-- oracle 分页(两层)
SELECT *
  FROM (SELECT ROWNUM AS rowno, t.*
          FROM his_transflow t
         WHERE 
--       这里可以添加相应的条件以及排序方式等，用and符号连接
           ROWNUM <= 20 ) table_alias
 WHERE table_alias.rowno >= 10;

  
-- oracl 分页加排序（三层）
SELECT * FROM (
       select a.* from(
       SELECT ROWNUM AS rowno, t.*
          FROM his_transflow t order by t.jyje ) a
  WHERE  a.rowno <= 20 ) table_alias
 WHERE table_alias.rowno >= 10;
 
 -- oracle sql 查询前十条数据
select * from b2c_code where rownum <= '10';
-- sql server 查询前十条数据
select top 10 * from b2c_code;
 
 --  oracle 数据导出 exp  这个命令需要在cmd执行   @服务名字  例如在本地net manager配置的远程数据库的服务名字
 -- exp/imp 实例
 -- exp help=y 查看帮助
-- 导出单个表 exp usr/pwd@sid file=c:\tb.dump tables=tb1
exp urp/urp@urp file=e:\tb.dump tables=(user_signature)

-- 删除表
drop table user_signature

--找回删除数据

select dbms_flashback.get_system_change_number from dual;
select count(*) from URP.E_EQUIPMENT_FACTORY as of scn 20721406;

--在这个点上查到数据
select count(*) from URP.E_EQUIPMENT_FACTORY as of scn 20660000;
-- 方法二
select * from URP.E_EQUIPMENT_FACTORY as of timestamp to_timestamp('2020-09-09 15:29:00','yyyy-mm-dd hh24:mi:ss'); 



-- 查看当前锁定的表
select object_name, machine, s.sid, s.serial#
  from v$locked_object l, dba_objects o, v$session s
 where l.object_id　 = 　o.object_id
   and l.session_id = s.sid;
-- 修改锁表的状态 
alter system kill session 'SID,serial#';
-- 例子
alter system kill session '199,35435';

--查看当前数据库实例名(SID)
select instance_name from v$instance; /*查看sid*/
select * from v$instance

select * from v$version


-- 确认用户所使用的概要文件：
select username,profile from dba_users;

--查看概要文件中有关登录次数的限制：
select * from dba_profiles where profile='DEFAULT' and resource_name='FAILED_LOGIN_ATTEMPTS';

--如果尝试登录次数限制为10次，将尝试登录次数的限制修改为不受限：
alter profile default limit failed_login_attempts unlimited;　

--修改后，还没有被提示ORA-28000警告的账户不会再碰到同样的问题，已被锁定用户仍需解锁，方法如下：
alter user urp account unlock;

-- 查询修改死锁的数据
select Distinct 'alter system kill session ' || chr(39) || b.sid || ',' ||
                b.serial# || chr(39) || ';' As cmd,
                b.username,
                b.logon_time
  from v$locked_object a, v$session b
 where a.session_id = b.sid;
 -- 释放死锁数据
 alter system kill session '1621,33463';
 
 
 
 --expdp导出datadump
 
 --创建目录
 create directory exportDB as 'E:\OracleDB';
 --查询目录
 SELECT * FROM dba_directories;
 
 --导出文件
$expdp urp/urp@urp directory=exportDB dumpfile =20210531.dmp logfile=20210531.log FULL=y;

SELECT * FROM dba_directories;
-- 删除文件，需要权限
delete from dba_directories a where a.directory_name = 'ORACLEDB';




--- 用户配置

 alter user ddszone rename to ddszone1 identified by ddszone;  
 select * from user$ where NAME in ('DDSZONE');

--1、用sysdba账号登入数据库，然后查询到要更改的用户信息：

　  SELECT user#,name FROM user$;
select user#,name from user$ where name = 'ddszone'；


--2、更改用户名并提交：

     UPDATE USER$ SET NAME='ddszone1' WHERE user#=93;
     COMMIT;

--3、强制刷新：

     ALTER SYSTEM CHECKPOINT;
     ALTER SYSTEM FLUSH SHARED_POOL;

--4、更新用户的密码：

     ALTER USER PORTAL IDENTIFIED BY 123;



-- 查看数据库连接情况
select count(*) from v$session where status='ACTIVE';  

select username,count(username) from v$session where username is not null group by username;  

--查看系统资源  
SELECT   resource_name,  
         current_utilization,  
         max_utilization,  
         LIMIT,  
         ROUND (max_utilization / LIMIT * 100) || '%' rate  
  FROM   (SELECT   resource_name,  
                   current_utilization,  
                   max_utilization,  
                   TO_NUMBER (initial_allocation) LIMIT  
            FROM   v$resource_limit  
           WHERE   resource_name IN ('processes', 'sessions')  
                   AND max_utilization > 0);  
