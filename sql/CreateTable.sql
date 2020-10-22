USE TESTDB;
if not exists (select 1 from sys.tables where name='testtable')
begin
CREATE TABLE testtable(id int)
end
