prompt PL/SQL Developer import file
prompt Created on 2021Äê6ÔÂ5ÈÕ by Wdf
set feedback off
set define off
prompt Creating AODARCRECORDS...
create table AODARCRECORDS
(
  aodid            VARCHAR2(20) not null,
  archivingambm    VARCHAR2(6) not null,
  declaredambm     VARCHAR2(6) not null,
  declaredambmtime DATE not null
)
;
alter table AODARCRECORDS
  add primary key (AODID);

prompt Creating AODREGION...
create table AODREGION
(
  aodid    VARCHAR2(30) not null,
  regionid VARCHAR2(30) not null
)
;
alter table AODREGION
  add primary key (AODID, REGIONID);

prompt Creating AODSLAVETABLE...
create table AODSLAVETABLE
(
  aodid     VARCHAR2(20) not null,
  username  VARCHAR2(40) not null,
  tablename VARCHAR2(40) not null
)
;
alter table AODSLAVETABLE
  add primary key (USERNAME, TABLENAME);

prompt Creating AODTENANT...
create table AODTENANT
(
  aodid    VARCHAR2(30) not null,
  tenantid VARCHAR2(30) not null
)
;
alter table AODTENANT
  add primary key (AODID, TENANTID);

prompt Creating AODVIEW...
create table AODVIEW
(
  aodid    VARCHAR2(20) not null,
  username VARCHAR2(40) not null,
  viewname VARCHAR2(40) not null
)
;
alter table AODVIEW
  add primary key (AODID, USERNAME, VIEWNAME);

prompt Creating AOI_RECORD...
create table AOI_RECORD
(
  aodid    VARCHAR2(20) not null,
  aoiid    VARCHAR2(30) not null,
  regionid VARCHAR2(30) not null,
  tenantid VARCHAR2(30) not null
)
;
alter table AOI_RECORD
  add primary key (AODID, AOIID);

prompt Creating ARCAODDEFINE...
create table ARCAODDEFINE
(
  aodid      VARCHAR2(20) not null,
  arcdbid    VARCHAR2(30) not null,
  beginmonth VARCHAR2(6) not null,
  endmonth   VARCHAR2(6) not null
)
;
alter table ARCAODDEFINE
  add primary key (AODID);

prompt Creating ARCDBS...
create table ARCDBS
(
  arcdbid   VARCHAR2(30) not null,
  dbaddress VARCHAR2(200) not null,
  status    VARCHAR2(20) not null
)
;
alter table ARCDBS
  add primary key (ARCDBID);

prompt Creating ARCHIVER...
create table ARCHIVER
(
  aodid VARCHAR2(20) not null
)
;
alter table ARCHIVER
  add primary key (AODID);

prompt Creating ARCHIVINGROOM...
create table ARCHIVINGROOM
(
  aodid            VARCHAR2(40) not null,
  ts               NUMBER(18) not null,
  archivingaoiid   VARCHAR2(64),
  aoibeginbizmonth VARCHAR2(6),
  aoiendbizmonth   VARCHAR2(6),
  suspend2time     DATE,
  regionid         VARCHAR2(10),
  tenantid         VARCHAR2(30)
)
;
alter table ARCHIVINGROOM
  add primary key (AODID);

prompt Creating ASSERTNOTEMPTYCONSTRAINTS...
create table ASSERTNOTEMPTYCONSTRAINTS
(
  username  VARCHAR2(40) not null,
  tablename VARCHAR2(40) not null
)
;
alter table ASSERTNOTEMPTYCONSTRAINTS
  add primary key (USERNAME, TABLENAME);

prompt Creating ASSERTNOTEMPTYCONSTRAINTSLOG...
create table ASSERTNOTEMPTYCONSTRAINTSLOG
(
  username   VARCHAR2(40) not null,
  tablename  VARCHAR2(40) not null,
  columnname VARCHAR2(40) not null
)
;
alter table ASSERTNOTEMPTYCONSTRAINTSLOG
  add primary key (USERNAME, TABLENAME, COLUMNNAME);

prompt Creating ASSERTNOTEMPTYTRIGGER...
create table ASSERTNOTEMPTYTRIGGER
(
  username  VARCHAR2(40) not null,
  tablename VARCHAR2(40) not null
)
;
alter table ASSERTNOTEMPTYTRIGGER
  add primary key (USERNAME, TABLENAME);

prompt Creating ASSERTNOTEMPTYTRIGGERLOG...
create table ASSERTNOTEMPTYTRIGGERLOG
(
  username           VARCHAR2(40) not null,
  tablename          VARCHAR2(40) not null,
  columnname         VARCHAR2(40) not null,
  assertnotemptytime DATE
)
;
alter table ASSERTNOTEMPTYTRIGGERLOG
  add primary key (USERNAME, TABLENAME, COLUMNNAME);

prompt Creating A_TRIGGER_PREVENT_EMPTY_COLUMN...
create table A_TRIGGER_PREVENT_EMPTY_COLUMN
(
  username   VARCHAR2(40) not null,
  tablename  VARCHAR2(40) not null,
  columnname VARCHAR2(40) not null
)
;
alter table A_TRIGGER_PREVENT_EMPTY_COLUMN
  add primary key (USERNAME, TABLENAME, COLUMNNAME);

prompt Creating DDSBASE...
create table DDSBASE
(
  ddsname         VARCHAR2(30) not null,
  arcdbid         VARCHAR2(30),
  ddszone_version VARCHAR2(20) not null,
  bigversion      NUMBER(4) not null,
  smallversion    NUMBER(4) not null
)
;
alter table DDSBASE
  add primary key (DDSNAME);

prompt Creating DDSLOGICALUSER...
create table DDSLOGICALUSER
(
  ddslogicalusername VARCHAR2(30) not null,
  ddslogicalusertype VARCHAR2(30) not null
)
;
alter table DDSLOGICALUSER
  add primary key (DDSLOGICALUSERNAME);

prompt Creating DDSPHYSICALUSER...
create table DDSPHYSICALUSER
(
  ddsphysicalusername VARCHAR2(30) not null,
  ddslogicalusername  VARCHAR2(30) not null,
  region              VARCHAR2(20)
)
;
alter table DDSPHYSICALUSER
  add primary key (DDSPHYSICALUSERNAME);

prompt Creating DEDP...
create table DEDP
(
  dedp NUMBER(2) not null
)
;
alter table DEDP
  add primary key (DEDP);

prompt Creating FORBIDDEN_DDAENGINE_VERSION...
create table FORBIDDEN_DDAENGINE_VERSION
(
  bigversion   NUMBER(4) not null,
  smallversion NUMBER(4) not null,
  register     VARCHAR2(20)
)
;
alter table FORBIDDEN_DDAENGINE_VERSION
  add primary key (BIGVERSION, SMALLVERSION);

prompt Creating REGION...
create table REGION
(
  regionid   VARCHAR2(30) not null,
  regionname VARCHAR2(40)
)
;
alter table REGION
  add primary key (REGIONID);

prompt Creating REGIONUSER...
create table REGIONUSER
(
  regionuser VARCHAR2(40) not null
)
;
alter table REGIONUSER
  add primary key (REGIONUSER);

prompt Creating RELATION_ALTERATION_RECORD...
create table RELATION_ALTERATION_RECORD
(
  username     VARCHAR2(30) not null,
  relationname VARCHAR2(30) not null,
  ts           NUMBER(4),
  md5          VARCHAR2(40) not null
)
;
alter table RELATION_ALTERATION_RECORD
  add primary key (USERNAME, RELATIONNAME);

prompt Creating SEQUENCE_INFO...
create table SEQUENCE_INFO
(
  sequencename VARCHAR2(30) not null,
  minvalue_    VARCHAR2(20) not null,
  maxvalue_    VARCHAR2(20) not null,
  currentvalue VARCHAR2(20) not null,
  cycle_       VARCHAR2(1) not null,
  increment_   NUMBER(2) not null
)
;
alter table SEQUENCE_INFO
  add primary key (SEQUENCENAME);

prompt Creating STORED_PROCEDURE...
create table STORED_PROCEDURE
(
  spname       VARCHAR2(120) not null,
  valuetype    VARCHAR2(1) not null,
  paratypelist VARCHAR2(10)
)
;
alter table STORED_PROCEDURE
  add primary key (SPNAME);

prompt Creating SYNCHFRIENDTABLE...
create table SYNCHFRIENDTABLE
(
  aodid         VARCHAR2(20) not null,
  username      VARCHAR2(40) not null,
  tablename     VARCHAR2(40) not null,
  isaugmenter   VARCHAR2(1) not null,
  uniquecolumns VARCHAR2(100)
)
;
alter table SYNCHFRIENDTABLE
  add primary key (USERNAME, TABLENAME);

prompt Creating SYNCHFRIENDVIEW...
create table SYNCHFRIENDVIEW
(
  aodid    VARCHAR2(20) not null,
  username VARCHAR2(40) not null,
  viewname VARCHAR2(40) not null
)
;
alter table SYNCHFRIENDVIEW
  add primary key (USERNAME, VIEWNAME);

prompt Creating SYNCHTABLEARCRECORDS...
create table SYNCHTABLEARCRECORDS
(
  username  VARCHAR2(40) not null,
  tablename VARCHAR2(40) not null,
  arcdbid   VARCHAR2(30) not null,
  synchdate VARCHAR2(6)
)
;
alter table SYNCHTABLEARCRECORDS
  add primary key (USERNAME, TABLENAME);

prompt Creating TENANT...
create table TENANT
(
  tenantid   VARCHAR2(30) not null,
  tenantname VARCHAR2(40),
  enabled    VARCHAR2(1) not null
)
;
alter table TENANT
  add primary key (TENANTID);

prompt Creating TENANTUSER...
create table TENANTUSER
(
  username VARCHAR2(40) not null
)
;
alter table TENANTUSER
  add primary key (USERNAME);

prompt Creating TRUST_NOT_EMPTY_COLUMN...
create table TRUST_NOT_EMPTY_COLUMN
(
  username   VARCHAR2(40) not null,
  tablename  VARCHAR2(40) not null,
  columnname VARCHAR2(40) not null
)
;
alter table TRUST_NOT_EMPTY_COLUMN
  add primary key (USERNAME, TABLENAME, COLUMNNAME);

prompt Creating UNARCHIVINGPROTECT...
create table UNARCHIVINGPROTECT
(
  aodid         VARCHAR2(20) not null,
  aoiid         VARCHAR2(64) not null,
  protect2month VARCHAR2(6) not null
)
;
alter table UNARCHIVINGPROTECT
  add primary key (AODID, AOIID);

prompt Creating UNARCHIVINGROOM...
create table UNARCHIVINGROOM
(
  aodid            VARCHAR2(40) not null,
  ts               NUMBER(18) not null,
  unarchivingaoiid VARCHAR2(64),
  fromarcdbid      VARCHAR2(30),
  regionid         VARCHAR2(30),
  tenantid         VARCHAR2(30)
)
;
alter table UNARCHIVINGROOM
  add primary key (AODID);

prompt Loading AODARCRECORDS...
prompt Table is empty
prompt Loading AODREGION...
prompt Table is empty
prompt Loading AODSLAVETABLE...
prompt Table is empty
prompt Loading AODTENANT...
prompt Table is empty
prompt Loading AODVIEW...
prompt Table is empty
prompt Loading AOI_RECORD...
prompt Table is empty
prompt Loading ARCAODDEFINE...
prompt Table is empty
prompt Loading ARCDBS...
prompt Table is empty
prompt Loading ARCHIVER...
prompt Table is empty
prompt Loading ARCHIVINGROOM...
prompt Table is empty
prompt Loading ASSERTNOTEMPTYCONSTRAINTS...
prompt Table is empty
prompt Loading ASSERTNOTEMPTYCONSTRAINTSLOG...
prompt Table is empty
prompt Loading ASSERTNOTEMPTYTRIGGER...
prompt Table is empty
prompt Loading ASSERTNOTEMPTYTRIGGERLOG...
prompt Table is empty
prompt Loading A_TRIGGER_PREVENT_EMPTY_COLUMN...
prompt Table is empty
prompt Loading DDSBASE...
insert into DDSBASE (ddsname, arcdbid, ddszone_version, bigversion, smallversion)
values ('dataSource', null, '1.8', 1, 8);
commit;
prompt 1 records loaded
prompt Loading DDSLOGICALUSER...
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('qs_cb', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('qs_ws', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('mtssys', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('blake', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('adams', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('odm', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('odm_mtr', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('qs_adm', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('jones', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('qs_cbadm', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('qs_cs', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('tsmsys', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('qs_es', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('dmsys', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('clark', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('qs_os', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('wksys', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('qs', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('anonymous', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('ctxsys', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('dbsnmp', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('exfsys', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('mddata', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('mdsys', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('mgmt_view', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('olapsys', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('ordplugins', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('outln', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('ordsys', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('scott', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('si_informtn_schema', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('sys', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('sysman', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('system', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('wktest', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('wmsys', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('xdb', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('owbsys_audit', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('owbsys', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('appqossys', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('orddata', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('spatial_csw_admin_usr', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('spatial_wfs_admin_usr', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('oracle_ocm', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('xs$null', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('apex_public_user', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('flows_files', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('apex_030200', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('bi', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('pm', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('ix', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('sh', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('dip', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('oe', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('hr', 'dbmssysuser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('activemq', 'accessibleouteruser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('apolloconfigdb', 'accessibleouteruser');
insert into DDSLOGICALUSER (ddslogicalusername, ddslogicalusertype)
values ('apolloportaldb', 'accessibleouteruser');
commit;
prompt 58 records loaded
prompt Loading DDSPHYSICALUSER...
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('qs_cb', 'qs_cb', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('qs_ws', 'qs_ws', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('mtssys', 'mtssys', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('blake', 'blake', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('adams', 'adams', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('odm', 'odm', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('odm_mtr', 'odm_mtr', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('qs_adm', 'qs_adm', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('jones', 'jones', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('qs_cbadm', 'qs_cbadm', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('qs_cs', 'qs_cs', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('tsmsys', 'tsmsys', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('qs_es', 'qs_es', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('dmsys', 'dmsys', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('clark', 'clark', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('qs_os', 'qs_os', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('wksys', 'wksys', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('qs', 'qs', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('anonymous', 'anonymous', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('ctxsys', 'ctxsys', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('dbsnmp', 'dbsnmp', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('exfsys', 'exfsys', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('mddata', 'mddata', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('mdsys', 'mdsys', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('mgmt_view', 'mgmt_view', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('olapsys', 'olapsys', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('ordplugins', 'ordplugins', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('outln', 'outln', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('ordsys', 'ordsys', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('scott', 'scott', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('si_informtn_schema', 'si_informtn_schema', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('sys', 'sys', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('sysman', 'sysman', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('system', 'system', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('wktest', 'wktest', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('wmsys', 'wmsys', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('xdb', 'xdb', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('owbsys_audit', 'owbsys_audit', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('owbsys', 'owbsys', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('appqossys', 'appqossys', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('orddata', 'orddata', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('spatial_csw_admin_usr', 'spatial_csw_admin_usr', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('spatial_wfs_admin_usr', 'spatial_wfs_admin_usr', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('oracle_ocm', 'oracle_ocm', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('xs$null', 'xs$null', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('apex_public_user', 'apex_public_user', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('flows_files', 'flows_files', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('apex_030200', 'apex_030200', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('bi', 'bi', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('pm', 'pm', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('ix', 'ix', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('sh', 'sh', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('dip', 'dip', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('oe', 'oe', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('hr', 'hr', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('activemq', 'activemq', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('apolloconfigdb', 'apolloconfigdb', null);
insert into DDSPHYSICALUSER (ddsphysicalusername, ddslogicalusername, region)
values ('apolloportaldb', 'apolloportaldb', null);
commit;
prompt 58 records loaded
prompt Loading DEDP...
insert into DEDP (dedp)
values (1);
commit;
prompt 1 records loaded
prompt Loading FORBIDDEN_DDAENGINE_VERSION...
insert into FORBIDDEN_DDAENGINE_VERSION (bigversion, smallversion, register)
values (1, 0, '1.19');
insert into FORBIDDEN_DDAENGINE_VERSION (bigversion, smallversion, register)
values (1, 1, '1.19');
commit;
prompt 2 records loaded
prompt Loading REGION...
prompt Table is empty
prompt Loading REGIONUSER...
prompt Table is empty
prompt Loading RELATION_ALTERATION_RECORD...
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('urp', 'e_realtime_monitor', 0, '0cd403c48b699bfa10dc2b36716e193c');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('urp', 'reconresult_detail', 0, 'fbc6b5118006f8acded2583f7e8cfa59');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('ipay', 'org_info', 0, '095ab4931d535a4014d6fc8120c17f63');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('ipay', 'org_bank', 0, '5599f25a1ac4db772afed2121e04e774');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('ipay', 'mongodb_para', 0, 'e8732c31265e9c7c93c075d20f92fd00');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('urp', 'address_book', 0, 'cd51b3d213f13b77b6feec0584415cb9');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('urp', 'realtime_monitor', 0, 'a2946b4d58fb7ca28367fc2eb5418d12');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('urp', 'reconfile_redownload', 0, '8b5f1ad06cb48dd732d0bc5209a9ad47');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('urp', 'msg_push', 0, 'ef22d9ef1513ac5e9d843ffe8e905c07');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('urp', 'monitor_config', 0, '4315886e77eea8c75f3d742b6bcf0852');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('urp', 'arrivalaccount_statistics', 0, 'cd091652a48e66f3705bf7e8681abcef');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('urp', 'param_dict', 0, '9c5abf698bcc02165ae70d080e699729');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('urp', 'inst_info', 0, '41315fc3aea09d953cc6d45a89f859a1');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('urp', 'accountable_statistics', 0, '5981647beeea17ab1be7a7e6951cef35');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('urp', 'channel_account', 0, '4b42d057c67a0822cafb302aaf0764bc');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('urp', 'channel_info', 0, '47c60543f9023d1663b8ff38e0727c7a');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('urp', 'operation_log', 0, '022d7ee7361b95d35323a96261c806a9');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('urp', 'medicare_transflow', 0, '8b7e9e3cc74d42d76b47fa906ff12c66');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('urp', 'unionpay_transflow', 0, '57709299b593e57dd25e6976cc703a06');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('urp', 'alipay_transflow', 0, 'e21bf7cd1068754a8147e6f15a9db507');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('urp', 'e_equipment_factory', 0, '0ffe8ccc984aaa4e66c520abfdd8506e');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('ipay', 'v_trade_info_yndz', 0, '434c5ae8d4c489276ae0573f1fb9b45f');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('urp', 'cashpay_transflow', 0, '89d4d70fa66bda5798ec2928689fe34a');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('ipay', 'abnormal_order_detl', 0, '398b62a23d982d84048e6e5dadc96fec');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('ipay', 'order_gen_det_list', 0, '00b94dc4d20ad7721722b654bca7060a');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('ipay', 'bank_info', 0, '968b625e38a9349b0f9007147041b686');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('ipay', 'order_genl', 0, '7cc78d0ee84d7b0919c945d37313eaa4');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('ipay', 'order_detl', 0, '883a5aca2236820076acc01effbcb972');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('urp', 'his_transflow', 0, 'f84c0b9651c2a9b1ceea03663b4f6b91');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('urp', 'channel_reconresult', 0, 'ce4925cbe14a7901902d1dc575500791');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('urp', 'reconhis_statistics', 0, '0ef7f068ef4cecd269ab1526060de43e');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('ipay', 'sdsz_trade_info', 0, '73106276e597120b131b1fd3d5d5255c');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('urp', 'realtime_alarm', 0, '7be85bc3e150ad3116b7bc86cc1f3fc1');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('ipay', 'order_settlepara', 0, 'd5b9c04b7586e4cd7393e4952901ea0d');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('urp', 'e_reconresult_detail', 0, '18044cc158c3a7382025c20c792460a2');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('urp', 'e_his_transflow', 0, '03d41e8fd7bcf3feaf52f090bcb94d4f');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('urp', 'e_equipment_transflow', 0, '50fcb1fea2af4750d032c4cc334f7ec9');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('urp', 'wechat_transflow', 0, 'e21bf7cd1068754a8147e6f15a9db507');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('urp', 'e_factory_reconresult', 0, 'a8e5b084a765a70dd86d7e176b40c6b3');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('urp', 'e_reconfile_redownload', 0, '9bb86f3c4356deaa61be9d27839a96fc');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('urp', 'ehcpay_transflow', 0, 'e21bf7cd1068754a8147e6f15a9db507');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('urp', 'unionpayomni_transflow', 0, '5b8612adab1dc1a17c32d2838ec8bb85');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('ipay', 'overtocash_refund', 0, '25367b5869917910cb753c97bb0689f5');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('ipay', 'refund_detl', 0, '824ef3ac52f27154cdf0a49ed90c1af0');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('ipay', 'ucompos_management_info', 0, '5c226c0f2c35dbbf058da3fb430ef57c');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('urp', 'e_equipment_reconresult', 0, 'ce19b8961f4fed96dc1ac7206e6c4835');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('urp', 'e_equipment_info', 0, 'b4842282a1a88e9a558a87d9a7efed6e');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('urp', 'reconfile_info', 0, 'c4dcb856602feb7491bd2557d19398db');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('urp', 'e_reconfile_info', 0, '56c374fbf0231ecf47e89ddcd6e844a1');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('urp', 'gf_banktrans', 0, '5180594f0bfbae213fd39e9613d1b8bb');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('hengine', 'pt_template_info', 0, '721bbda2e8f39461b9351ef17e1798b5');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('hengine', 'pt_template_body', 0, '5e3b8b1714025d8bccfdfccafc6e17b7');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('hengine', 'pt_template_printer', 0, '301e3e7b4b81924e37fd45f4f8b88f70');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('urp', 'm_his_transflow', 0, '6fc7933404f338af84e964195ac07061');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('urp', 'm_equipment_transflow', 0, 'cd287cae5bd9a35cdf4c0d25c89e9b3b');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('urp', 'ucompos_trade_info', 0, 'ce50a1f048e6dc7e8024e98ee921c3f7');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('ddszone', 'forbidden_ddaengine_version', 0, 'a8a62c3c07a186dc572f2aca289ee8c1');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('ddszone', 'ddsbase', 0, '5edbb178ab8155b9e84d88f34cbdcd43');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('ei', 'invoice_record', 0, 'b4297eea2e92fc05e6e46f918730adef');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('ipay', 'overtime_refund', 0, '8ab154c25da74402a746106a1ea883b0');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('urp', 'cgbsmartpay_transflow', 0, 'd972c6db5968a4b33f5c1c984dfff06d');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('urp', 'e_recon_history', 0, '4d4b5fe5d88e0b1201025ca553c8c7fb');
insert into RELATION_ALTERATION_RECORD (username, relationname, ts, md5)
values ('urp', 'gf_banktrans_accounts', 0, 'ddc8185822fdbe2ff92832133e3e67fb');
commit;
prompt 63 records loaded
prompt Loading SEQUENCE_INFO...
insert into SEQUENCE_INFO (sequencename, minvalue_, maxvalue_, currentvalue, cycle_, increment_)
values ('ipay_batchno_seq', '1', '9999999999', '435', '1', 1);
insert into SEQUENCE_INFO (sequencename, minvalue_, maxvalue_, currentvalue, cycle_, increment_)
values ('dstid', '1', '9999999999999', '1', '1', 1);
insert into SEQUENCE_INFO (sequencename, minvalue_, maxvalue_, currentvalue, cycle_, increment_)
values ('deleteSign', '1', '9999999999999', '1', '1', 1);
insert into SEQUENCE_INFO (sequencename, minvalue_, maxvalue_, currentvalue, cycle_, increment_)
values ('tsid', '1', '9999', '1', '1', 1);
insert into SEQUENCE_INFO (sequencename, minvalue_, maxvalue_, currentvalue, cycle_, increment_)
values ('ipay_tradeno_seq', '1', '99999999', '294792', '1', 1);
insert into SEQUENCE_INFO (sequencename, minvalue_, maxvalue_, currentvalue, cycle_, increment_)
values ('urp_csid', '1', '999999999', '100367', '1', 1);
insert into SEQUENCE_INFO (sequencename, minvalue_, maxvalue_, currentvalue, cycle_, increment_)
values ('seq_dccs_directory', '10000000', '99999999', '10000150', '1', 1);
insert into SEQUENCE_INFO (sequencename, minvalue_, maxvalue_, currentvalue, cycle_, increment_)
values ('seq_dccs_matchResult', '10000000', '99999999', '10000913', '1', 1);
insert into SEQUENCE_INFO (sequencename, minvalue_, maxvalue_, currentvalue, cycle_, increment_)
values ('seq_pms_medical_stu_dire', '10000000', '99999999', '10000090', '1', 1);
insert into SEQUENCE_INFO (sequencename, minvalue_, maxvalue_, currentvalue, cycle_, increment_)
values ('seq_pms_medi_item_dire', '10000000', '99999999', '10000009', '1', 1);
insert into SEQUENCE_INFO (sequencename, minvalue_, maxvalue_, currentvalue, cycle_, increment_)
values ('seq_pms_m_consumble_dire', '10000000', '99999999', '10000025', '1', 1);
insert into SEQUENCE_INFO (sequencename, minvalue_, maxvalue_, currentvalue, cycle_, increment_)
values ('ipay_enseqno_seq', '1', '9999999999', '384', '1', 1);
insert into SEQUENCE_INFO (sequencename, minvalue_, maxvalue_, currentvalue, cycle_, increment_)
values ('ipay_refundno_seq', '1', '9999999999', '7244', '1', 1);
insert into SEQUENCE_INFO (sequencename, minvalue_, maxvalue_, currentvalue, cycle_, increment_)
values ('seq_hengine_miid', '10000000', '99999999', '10000398', '1', 1);
insert into SEQUENCE_INFO (sequencename, minvalue_, maxvalue_, currentvalue, cycle_, increment_)
values ('seq_hengine_template_id', '10000000', '99999999', '10000024', '1', 1);
insert into SEQUENCE_INFO (sequencename, minvalue_, maxvalue_, currentvalue, cycle_, increment_)
values ('seq_hengine_tpid', '10000000', '99999999', '10000023', '1', 1);
insert into SEQUENCE_INFO (sequencename, minvalue_, maxvalue_, currentvalue, cycle_, increment_)
values ('ei_busno_seq', '1', '99999999', '24', '1', 1);
insert into SEQUENCE_INFO (sequencename, minvalue_, maxvalue_, currentvalue, cycle_, increment_)
values ('ipay_intradeno_seq', '1', '9999999999', '216453', '1', 1);
insert into SEQUENCE_INFO (sequencename, minvalue_, maxvalue_, currentvalue, cycle_, increment_)
values ('ipay_refundtradeno_seq', '1', '9999999999', '67034', '1', 1);
commit;
prompt 19 records loaded
prompt Loading STORED_PROCEDURE...
prompt Table is empty
prompt Loading SYNCHFRIENDTABLE...
prompt Table is empty
prompt Loading SYNCHFRIENDVIEW...
prompt Table is empty
prompt Loading SYNCHTABLEARCRECORDS...
prompt Table is empty
prompt Loading TENANT...
prompt Table is empty
prompt Loading TENANTUSER...
prompt Table is empty
prompt Loading TRUST_NOT_EMPTY_COLUMN...
prompt Table is empty
prompt Loading UNARCHIVINGPROTECT...
prompt Table is empty
prompt Loading UNARCHIVINGROOM...
prompt Table is empty
set feedback on
set define on
prompt Done.
