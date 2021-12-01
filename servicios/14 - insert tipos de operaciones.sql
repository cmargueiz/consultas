declare @fecha date=(convert(date,SYSDATETIME()))
--insert into tipoOperaciones
insert into tipoOperaciones values('CAJ01','REGISTRO DE CAJA',          @fecha,@fecha,'002',2,'D')
insert into tipoOperaciones values('CAP01','PAGO DE CAPITAL',           @fecha,@fecha,'002',2,'H')
insert into tipoOperaciones values('INT01','PAGO DE INTERES',           @fecha,@fecha,'002',2,'H')
insert into tipoOperaciones values('MOR01','PAGO DE MORA',              @fecha,@fecha,'002',2,'H')
insert into tipoOperaciones values('FON01','PAGO DE FONDO',             @fecha,@fecha,'002',2,'H')
insert into tipoOperaciones values('OTR01','PAGO DE OTROS',             @fecha,@fecha,'002',2,'H')
insert into tipoOperaciones values('PEN01','PENDIENTE DE RECUPERAR',    @fecha,@fecha,'002',2,'D')