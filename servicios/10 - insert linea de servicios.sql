declare @fecha date=(convert(date,SYSDATETIME()))
--insert para linea de servicios
insert into lineaServicio values('0000001','SA001','Servicio de Agua Potable Residencial',  'servicio de agua potable para zona residenciales',0.00,0.00,@fecha,@fecha,@fecha,2)
insert into lineaServicio values('0000002','SA001','Servicio de Agua Potable Comercial',    'servicio de agua potable para zona comercial',    0.00,0.00,@fecha,@fecha,@fecha,2)
insert into lineaServicio values('0000003','SA001','Servicio de Agua Potable Habitacional', 'servicio de agua potable para zona habitacional', 0.00,0.00,@fecha,@fecha,@fecha,2)
insert into lineaServicio values('0000004','SC001','Servicio Crediticio para Microempresas','servicio de prestamos para microempresa',         0.00,0.00,@fecha,@fecha,@fecha,2)