select
is2.couta,
is2.montoApr ,
is2.fechaDesembolso ,
max(ks.fechaReg) as ultimoPago
from infoServicio is2 
inner join kardexServicios ks 
on is2.idinfoServicio = ks.infoServicio_idinfoServicio 
where is2.idinfoServicio = '001001011000002639'
GROUP by is2.couta ,is2.montoApr , is2.fechaDesembolso 


select is2.idinfoServicio, ls.nombreLineaServicio, 
ultimoPago=(select top(1)CONVERT(varchar,ks.fechaReg, 103) as fechaReg from kardexServicios ks where ks.estado = 'CJ' and ks.descripcion != 'D' and ks.infoServicio_idinfoServicio = is2.idinfoServicio order by ks.fechaReg desc),
is2.montoApr, capitalPagado=(select isnull(sum(ks2.monto), 0.00) from kardexServicios ks2 where ks2.estado = 'CJ' and ks2.descripcion != 'D' and ks2.infoServicio_idinfoServicio = is2.idinfoServicio),
ls.tasaInteres, ls.tasaMora ,is2.couta,is2.tipoPeriodo 
from infoServicio is2 
inner join lineaServicio ls on is2.lineaServicio_idlineaServicio = ls.idlineaServicio
where is2.idinfoServicio = '001001011000002639'


--capital a fecha- TEORICO
select sum(pp.montoCap)
from planPagos pp 
where pp.infoServicio_idinfoServicio = '001001011000002639' and pp.tipoOperacion = 'N' and pp.fechaVen <= GETDATE() 


--capital a fecha- TEORICO
select sum(pp.montoCap)
from planPagos pp 
where pp.infoServicio_idinfoServicio = '001001011000002639' and pp.tipoOperacion = 'N' and pp.fechaVen <= GETDATE() 



declare @idInfoServicio varchar(18) = '001001011000002639'
declare @capitalPagado float = (select isnull(sum(ks2.monto), 0.00) from kardexServicios ks2 where ks2.estado = 'CJ' and ks2.descripcion != 'D' and ks2.infoServicio_idinfoServicio = @idInfoServicio)
declare @ultimoPago date =(select top(1) ks.fechaReg as fechaReg from kardexServicios ks where ks.estado = 'CJ' and ks.descripcion != 'D' and ks.infoServicio_idinfoServicio = @idInfoServicio order by ks.fechaReg desc)
declare @capitalTeorico float= (select SUM(pp.montoCap) from planPagos pp where pp.infoServicio_idinfoServicio = @idInfoServicio and pp.tipoOperacion = 'N' and pp.fechaVen <= GETDATE()) 
select @capitalPagado as capitalPagado, @ultimoPago as ultimoPago, @capitalTeorico capitalTeorico,min(pp2.fechaVen) as fechaVen from planPagos pp2
where pp2.infoServicio_idinfoServicio = @idInfoServicio and pp2.tipoOperacion = 'N' and pp2.fechaVen >= @ultimoPago





