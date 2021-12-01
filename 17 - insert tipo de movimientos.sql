declare @fecha date=(convert(date,SYSDATETIME()))
--insert into tipo de movimiento
insert into tipoMovimiento values('IN001', 'ENTRADA A INVENTARIO',    @fecha, @fecha, 'I')
insert into tipoMovimiento values('OUT01', 'SALIDA DE INVENTARIO',    @fecha, @fecha, 'O')
insert into tipoMovimiento values('MOV01', 'MOVIMIENTO DE INVENTARIO',@fecha, @fecha, 'M')
insert into tipoMovimiento values('FAC01', 'FACTURACION DE PRODUCTOS',@fecha, @fecha, 'F')
insert into tipoMovimiento values('COS01', 'COSTO DE VENTA',          @fecha, @fecha, 'C')
insert into tipoMovimiento values('ING01', 'INGRESO PROSAVI',         @fecha, @fecha, 'I')
