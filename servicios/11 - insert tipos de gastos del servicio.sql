declare @fecha date=(convert(date,SYSDATETIME()))
--insert para tipo de gastos al servicio
insert into tipoGastos values('M3 Agua Potable','',1,@fecha,@fecha,@fecha,1,'002')
insert into tipoGastos values('Alcantarillados','',1,@fecha,@fecha,@fecha,1,'002')
