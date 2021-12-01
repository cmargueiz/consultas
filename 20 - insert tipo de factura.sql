declare @fecha date=(convert(date,SYSDATETIME()))
--insert into tipo de movimiento
insert into tipoFactura values('FCF01', 'FACTURA DE CONSUMIDOR FINAL', 1.00, '001')
