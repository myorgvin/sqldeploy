
if not exists (select 1 from sys.databases where name='testdb')
begin
CREATE DATABASE TESTDB
end