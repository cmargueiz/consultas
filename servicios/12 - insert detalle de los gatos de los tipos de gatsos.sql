declare @fecha date=(convert(date,SYSDATETIME()))
--insert para agregar los gastos a la linea de servicio
insert into gastoServicios values('0000001',1,0.50,0.00,@fecha,@fecha,@fecha,'V')
insert into gastoServicios values('0000001',2,1.50,0.00,@fecha,@fecha,@fecha,'F')
insert into gastoServicios values('0000002',1,0.75,0.00,@fecha,@fecha,@fecha,'V')
insert into gastoServicios values('0000002',2,1.50,0.00,@fecha,@fecha,@fecha,'F')
insert into gastoServicios values('0000003',1,0.25,0.00,@fecha,@fecha,@fecha,'V')
insert into gastoServicios values('0000003',2,1.50,0.00,@fecha,@fecha,@fecha,'F')
