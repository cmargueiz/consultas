declare @fecha date=(convert(date,SYSDATETIME()))
--insert into tipoOperaciones
insert into tipoOperaciones values('INV01','ENTRADA DE INVENTARIO', @fecha,@fecha,'001',1,'D')--RELACION EN INGRESO DE INVENTARIO
insert into tipoOperaciones values('IVA01','IVA POR COMPRA',        @fecha,@fecha,'001',1,'D')
insert into tipoOperaciones values('CXP01','CUENTA POR PAGAR',      @fecha,@fecha,'001',1,'H')
insert into tipoOperaciones values('BAN01','CUENTA DE BANCO',       @fecha,@fecha,'001',1,'H')


insert into tipoOperaciones values('CAJ01','CAJA INGRESO PROSAVI',  @fecha,@fecha,'001',1,'D')--RELACION EN VENTA EN EFECTIVO
insert into tipoOperaciones values('ING01','INGRESO PROSAVI',       @fecha,@fecha,'001',1,'H')
insert into tipoOperaciones values('IVA02','IVA POR VENTA',         @fecha,@fecha,'001',1,'H')
insert into tipoOperaciones values('COS01','COSTO DE VENTA',        @fecha,@fecha,'001',1,'D')
insert into tipoOperaciones values('INV02','SALIDA DE INVENTARIO',  @fecha,@fecha,'001',1,'H')

