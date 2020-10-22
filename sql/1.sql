use testdb;

insert into testtable(id)
select cast( rand(10)*10 as int)
