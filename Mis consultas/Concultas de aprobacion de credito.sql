--REPORTE PARA REPORTE DE APROBACION DE CREDITO CARTERA INDIVIDUAL
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


--REPORTE PARA REPORTE DE APROBACION DE CREDITO CARTERA GRUPAL
declare @idInfoServicio varchar(18),@idLineaServicio varchar(7)
set @idInfoServicio = '001001000000000017' 
set @idLineaServicio = '0010700'
declare @gastoDesembolso float = (SELECT sum(gls.montoValor) from gastoLineaServicio gls where gls.lineaServicio_idlineaServicio =@idLineaServicio  and gls.formaCobro = 0)
declare @gastoCoutas float = (SELECT sum(gls.montoPorcentaje) from gastoLineaServicio gls where gls.lineaServicio_idlineaServicio =@idLineaServicio  and gls.formaCobro = 1)
select 
is2.idinfoServicio ,
gc.nombreGrupo ,
gc.direccion ,
(select c.nombreCentro from centro c where c.idcentro = gc.centro_idcentro ) as centro,
CONCAT('$', (is2.montoApr-@gastoDesembolso)) as monto,
CONCAT((select ls.tasaInteres from lineaServicio ls where ls.idlineaServicio = is2.lineaServicio_idlineaServicio),'% Anual' )as tasaNormal,
case is2.tipoPeriodo 
when 1 then CONCAT(is2.cuotas , ' CUOTA(S) CATORCENALES DE ' ,is2.couta , ' DOLARES C/U')
when 0 then CONCAT(is2.cuotas ,' CUOTA(S) MENSUALES de DE',is2.couta,' DOLARES C/U')
end as planAmor,
CONCAT(day(is2.fechaDesembolso),'-',DATENAME(MONTH,is2.fechaDesembolso),'-',YEAR(is2.fechaDesembolso)) as fechaDesembolso,
CONCAT(day(is2.fechaVen),'-',DATENAME(MONTH,is2.fechaVen),'-',YEAR(is2.fechaVen)) as fechaVencimiento,
is2.garantiaTipo ,
is2.idgrupo ,
(select u.Nombre from usuario u where u.idusuario = is2.idusuario_analista ) as asesor
from infoServicio is2
inner join grupoCreditos gc 
on is2.idgrupo = gc.idgrupo
where is2.claseCredito = 1 and is2.idinfoServicio = @idInfoServicio;




select COUNT(DISTINCT is2.correlativoGrupoServicio)+1 from infoServicio is2 where is2.correlativoGrupoServicio >0




--CONSULTA PARA CONTRATO PAGARE DE CREDITOS
declare @idInfoServicio varchar(18) = '001001000000000073'
select
concat('$',is2.montoSug) as monto,
dbo.dolaresALetra(is2.montoSug),
lower(CONCAT(dbo.NumeroALetra(day(is2.fechaDesembolso)),' de ',DATENAME(MONTH,is2.fechaDesembolso),' de ',dbo.NumeroALetra(YEAR(is2.fechaDesembolso)))) as fechaDesembolso,
concat((select ROUND(ls.tasaInteres/12,2) from lineaServicio ls where ls.idlineaServicio = is2.lineaServicio_idlineaServicio),'%') as tasaNormal,
case is2.tipoPeriodo 
when 1 then CONCAT( dbo.NumeroALetra(is2.cuotas) , ' CUOTA(S) CATORCENALES fijas sucesivas y vencidas de ' , dbo.dolaresALetra(is2.couta) )
when 0 then CONCAT(dbo.NumeroALetra(is2.cuotas) ,' CUOTA(S) MENSUALES de DE',is2.couta,' DOLARES C/U')
end as planAmor,																					
LOWER(concat(dbo.NumeroALetra((select ROUND(ls.tasaInteres/12,2) from lineaServicio ls where ls.idlineaServicio = is2.lineaServicio_idlineaServicio)),' por ciento mensual')) as tasaMora
from infoServicio is2
where is2.idinfoServicio  =  @idInfoServicio



--CONSULTA DE GARANTIA PARA REPORTE DE CONTRATO DE PAGARE EN CREDITOS GRUPALES












