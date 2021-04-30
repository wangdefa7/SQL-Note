-- 本地Oracle 脚本



-- 查询该用户的下面的所有表和视图
select * from user_tab_comments
-- 查询所有表的字段值
--select * from user_col_comments 


-- 用户


-- 创建用户（账号：wdf 密码:wdfwdf）赋予表空间:wdf_tablespace
 create user urp identified by urp default tablespace wdf_tablespace
 
 -- 修改密码(密码区分大小写)
alter user IPAY identified by oracleipay

-- 用户被锁定，解锁
ALTER USER IPAY ACCOUNT UNLOCK;

 -- 给用户 wdf 赋予CREATE SESSION权限  连接数据库权限
 grant create session to wdf;
 -- 给用户 wdf 赋予CREATE TABLE权限  建立数据表权限
 grant CREATE TABLE to wdf;
 -- 给用户 wdf 赋予 UNLIMITED TABLESPACE 权限     --表空间无限制权限（空间配额）
  grant UNLIMITED TABLESPACE to wdf;
--系统权限传递：
--增加WITH ADMIN OPTION选项，则得到的权限可以传递。//可以传递所获权限。
 grant connect to IPAY with admin option;  
--系统权限回收：系统权限只能由DBA用户回收
 Revoke connect, resource from user50;
--查询用户拥有哪里权限(用户名字需要大写)：
 select * from dba_role_privs where grantee = 'IPAY';
 select * from dba_sys_privs;
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
-- 对账项目赋予用户的角色：创建session角色，创建资源角色,Create table 等等，数据库管理员角色
  grant connect,resource,dba to ipay;
  grant connect,resource,dba to urp;

  
  -- （start）plsql 提示 动态执行表不可访问,或在v$session... 中的错误，执行下列sql或者打开：工具->首选项->选项-> 去掉“自动统计”前面的勾选
  -- 根据提示，用sys身份给 XX 用户授权
grant select on V_session to XX;
grant select on V_$sesstat to XX;
grant select on V_$statname to XX;
 
  -- 给所有用户授权
grant select on V_$session to public;
grant select on V_$sesstat to public;
grant select on V_$statname to public;
 

 --   表空间 
 
 
 -- 查询表空间
 select file_name from dba_data_files
 select name from  v$datafile
 
 -- 创建表空间(表空间的名字是自己起的，XX.dbf) size 后面配置的是表空间的大小
 create tablespace wdf_tablespace datafile 'D:\SOFTWARE\SQL\ORACLE\MULU\ORADATA\ORCL\wdf_tablespace.DBF' size 5G
 --create tablespace TS_IPAY datafile 'D:\SOFTWARE\SQL\ORACLE\MULU\ORADATA\ORCL\TS_IPAY.DBF' size 1G

 -- 修改表空间名字
 alter tablespace wdf_tablespace rename to urp_run
 
 --设置表空间默认用户
 create user urp identified by urp default tablespace urp_run
 create user ipay identified by oracleipay default tablespace TS_IPAY

 -- 查看表空间默认用户（需要登录用户）
 select * from user_users; 
 
 --Oracle中一个表空间可能是多个用户的默认表空间，下面语句统计了用户及其默认表空间情况，如果用户多个，用户之间通过逗号分隔。
select t.default_tablespace,
       to_char(wmsys.wm_concat(username)) all_users
  from dba_users t
 group by t.default_tablespace;
 
----1.查看所有用户：
select * from dba_users;
select * from all_users;
select * from user_users;
  
