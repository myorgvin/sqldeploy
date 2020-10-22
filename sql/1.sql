use testdb;

insert into testtable(id,testcol)
select cast( rand()*10 as int), newid()
