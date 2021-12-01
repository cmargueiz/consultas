declare @fecha date=(convert(date,SYSDATETIME()))
--insert into años de respaldo
insert into respaldos values('001', 2020, @fecha, 1)
insert into respaldos values('001', 2021, @fecha, 1)
insert into respaldos values('001', 2020, @fecha, 1)