declare @fecha date=(convert(date,SYSDATETIME()))
--insert into categoria
insert into categoria values(1,	-1,	'SUMINISTROS',	@fecha,	1, '', '001')
insert into categoria values(2,	-1,	'REPUESTOS',	@fecha,	1, '', '001')
insert into categoria values(3,	-1,	'OPTICA',	    @fecha,	1, '', '001')
insert into categoria values(4,	-1,	'CONSULTA',	    @fecha,	1, '', '001')