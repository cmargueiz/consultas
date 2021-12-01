select recibosGenerados.idrecibosGenerados,infoServicio.idinfoServicio,cliente.nombre,cliente.direccion,tipoServicios.nombreServicio,
lineaServicio.nombreLineaServicio,planPagos.montoCap,planPagos.montoInt,planPagos.montoMor,planPagos.montoSeg,planPagos.montoOtr,planPagos.montoCuo,
planPagos.fechaVen,planPagos.montoCapPen,planPagos.montoIntPen,planPagos.montoMorPen,planPagos.montoSegPen,planPagos.montoOtrPen,planPagos.montoCuoPen
from infoServicio
inner join cliente on infoServicio.cliente_idcliente=cliente.idcliente
inner join recibosGenerados on infoServicio.idinfoServicio=recibosGenerados.infoServicio_idinfoServicio
inner join lineaServicio on infoServicio.lineaServicio_idlineaServicio=lineaServicio.idlineaServicio
inner join tipoServicios on lineaServicio.tipoServicios_idtipoServicios=tipoServicios.idtipoServicios
inner join planPagos on recibosGenerados.idrecibosGenerados=planPagos.numeroRecibo
where infoServicio.idinfoServicio = '002020102000000001' and recibosGenerados.anio = '2020' and recibosGenerados.mes = '10' and recibosGenerados.idrecibosGenerados = 1