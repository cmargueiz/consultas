
select 
dp.cantidad ,
(select p.nombreProducto from producto p where p.idproducto=dp.producto_idproducto) as producto,
dp.precioUnitario ,
dp.precioTotal 
from facturasVentas fv 
inner join detallePedido dp 
on fv.pedidoVenta_idPedido = dp.pedidoVenta_idPedido 
where fv.idFacturaVenta =3;



declare @direccion varchar(255)
set @direccion = (select 
(select top 1 direccion from direccionesCliente dc where dc.cliente_idcliente= c.idcliente)
from cliente c 
inner join pedidoVenta pv 
on c.idcliente = pv.cliente_idcliente 
inner join facturasVentas fv 
on pv.idPedido = fv.pedidoVenta_idPedido 
where fv.idFacturaVenta =3)
select 
concat(c.primerNombre,' ',c.primerApellido) as nombre,
case
when @direccion is NULL
then ''
else @direccion
end as direccion,
CONVERT(varchar, fv.fechaReg, 103) as fecha,
c.numeroDui 
from cliente c 
inner join pedidoVenta pv 
on c.idcliente = pv.cliente_idcliente 
inner join facturasVentas fv 
on pv.idPedido = fv.pedidoVenta_idPedido 
where fv.idFacturaVenta =8


declare @idFactura int
set @idFactura = 3
select 
dp.pedidoVenta_idPedido ,
(select concat(c.primerNombre,' ',c.primerApellido) from cliente c where c.idcliente=pv.cliente_idcliente) as cliente,
(select c.numeroDui from cliente c where c.idcliente=pv.cliente_idcliente) as dui,
dp.cantidad ,
(select p.nombreProducto from producto p where p.idproducto=dp.producto_idproducto) as producto,
dp.precioUnitario ,
dp.precioTotal 
from facturasVentas fv 
inner join pedidoVenta pv 
on fv.pedidoVenta_idPedido = pv.idPedido
inner join detallePedido dp 
on pv.idPedido = dp.pedidoVenta_idPedido
--where fv.idFacturaVenta = @idFactura
ORDER by dp.pedidoVenta_idPedido 






