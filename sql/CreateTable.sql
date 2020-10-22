USE TESTDB;
if not exists (select 1 from sys.tables where name='testtable')
begin
CREATE TABLE testtable(id int)
end
;
if not exists (select 1 from sys.columns where name='testcol')
begin
alter table testtable
add  testcol uniqueidentifier
end