
declare @idFactura int = 56
declare @total float
declare @direccion varchar(255)
set @direccion = (select 
(select top 1 direccion from direccionesCliente dc where dc.cliente_idcliente= c.idcliente)
from cliente c 
inner join pedidoVenta pv 
on c.idcliente = pv.cliente_idcliente 
inner join facturasVentas fv 
on pv.idPedido = fv.pedidoVenta_idPedido 
where fv.idFacturaVenta =@idFactura)
set @direccion = (select 
(select top 1 direccion from direccionesCliente dc where dc.cliente_idcliente= c.idcliente)
from cliente c 
inner join pedidoVenta pv 
on c.idcliente = pv.cliente_idcliente 
inner join facturasVentas fv 
on pv.idPedido = fv.pedidoVenta_idPedido 
where fv.idFacturaVenta =@idFactura)
set @total= (
	select sum(dp.precioTotal) from facturasVentas fv2
	inner join pedidoVenta pv2 
	on fv2.pedidoVenta_idPedido = pv2.idPedido 
	inner join detallePedido dp 
	on pv2.idPedido = dp.pedidoVenta_idPedido
	where fv2.idFacturaVenta=@idFactura) 
select 
dp.pedidoVenta_idPedido ,
(select concat(c.primerNombre,' ',c.primerApellido) from cliente c where c.idcliente=pv.cliente_idcliente) as cliente,
(select c.numeroDui from cliente c where c.idcliente=pv.cliente_idcliente) as dui,
case
when @direccion is NULL
then ''
else @direccion
end as direccion,
dp.cantidad ,
(select p.nombreProducto from producto p where p.idproducto=dp.producto_idproducto) as producto,
dp.precioUnitario ,
dp.precioTotal ,
(select @total) as totalCompra,
(SELECT [dbo].[CantidadConLetra](@total)) as totalLetra,
fv.fechaReg 
from facturasVentas fv 
inner join pedidoVenta pv 
on fv.pedidoVenta_idPedido = pv.idPedido
inner join detallePedido dp 
on pv.idPedido = dp.pedidoVenta_idPedido
where fv.idFacturaVenta = @idFactura









