declare @idInfoServicio varchar(18),@idCliente varchar(12),@idLineaServicio varchar(7)
set @idInfoServicio = '001001000000000033' 
set @idLineaServicio = '0010700'
set @idCliente = ''
declare @numCredito int = (select COUNT(*) from infoServicio i2 WHERE i2.cliente_idcliente = @idCliente)
declare @gastoDesembolso float = (SELECT sum(gls.montoValor) from gastoLineaServicio gls where gls.lineaServicio_idlineaServicio =@idLineaServicio  and gls.formaCobro = 0)
declare @gastoCoutas float = (SELECT sum(gls.montoPorcentaje) from gastoLineaServicio gls where gls.lineaServicio_idlineaServicio =@idLineaServicio  and gls.formaCobro = 1)
select
i.fuentFondo,
case i.claseCredito
when 0 then 'Cartera Indivudual'
when 1 then 'Cartera Grupal'
end as claseCredito,
CONCAT(dbo.NumeroALetra(@numCredito),' COUTAS')  as numCredito,
concat ((select gc.nombreGrupo from grupoCreditos gc where gc.idgrupo = i.idgrupo),'-','INDIVIDUALES') as grupo,
(select ls.nombreLineaServicio from lineaServicio ls where ls.idlineaServicio = i.lineaServicio_idlineaServicio) as lineaCredito,
(select c.nombre from cliente c where c.idcliente = i.cliente_idcliente) as nombreCliente,
case i.tipoPeriodo 
when 1 then CONCAT(i.cuotas , ' DE ' ,i.plazo , ' DIAS ')
when 0 then CONCAT(i.cuotas ,' MESES ')
end as plazo,
(select ls.tasaInteres from lineaServicio ls where ls.idlineaServicio = i.lineaServicio_idlineaServicio) as tasaNormal,
(select ls.tasaMora from lineaServicio ls where ls.idlineaServicio = i.lineaServicio_idlineaServicio) as tasaMora,
i.destinoCredito ,
CONCAT('$',i.montoApr,' ',dbo.CantidadConLetra(i.montoApr)) as montoApr,
CONCAT('$',i.couta) as cuota,
case i.tipoPeriodo 
when 1 then CONCAT(i.cuotas , ' CUOTAS CATORCENALES de ' ,i.couta , 'c/u. que comprende capital e interes')
when 0 then CONCAT(i.cuotas ,' CUOTAS MENSUALES de $',i.couta,' c/u. que comprende capital e interes')
end as formaPago,
i.garantiaTipo ,
CONCAT(DATENAME(dw,i.fechaDesembolso),', ',day(i.fechaDesembolso),' ',DATENAME(MONTH,i.fechaDesembolso),', ',YEAR(i.fechaDesembolso)) as fechaDesembolso,
i.tipoContrato as tipoContrato ,
i.idinfoServicio,
i.cliente_idcliente as numCliente,
CONCAT('$',i.montoApr) as montoAprobado, 
(select u.Nombre from usuario u where u.idusuario = i.idusuario_analista ) as analista,
CONCAT('$', (i.montoApr-@gastoDesembolso)) as montocheque
from infoServicio i
where i.idinfoServicio = @idInfoServicio

SELECT 
sum(gls.montoPorcentaje) 
from gastoLineaServicio gls
where gls.lineaServicio_idlineaServicio ='0010700'  and gls.formaCobro = 1

SELECT 
sum(gls.montoValor) 
from gastoLineaServicio gls
where gls.lineaServicio_idlineaServicio ='0010700'  and gls.formaCobro = 0

(SELECT sum(gls.montoPorcentaje) from gastoLineaServicio gls where gls.lineaServicio_idlineaServicio ='0010700'  and gls.formaCobro = 0)



