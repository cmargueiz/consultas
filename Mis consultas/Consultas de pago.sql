select MAX(ks.idKardexServicio)+1 from kardexServicios ks 

select DISTINCT 
c.idcliente ,
CONCAT(c.primerNombre,' ',c.segundoNombre,' ',c.primerApellido,' ',c.segundoApellido),
c.lugarNacimiento ,
c.telefonoMovil ,
c.numeroDui ,
c.numeroNit 
from cliente c 
where c.idcliente = '000000000004';


select gc.idgrupo ,gc.nombreGrupo from grupoCreditos gc where gc.centro_idcentro = ? and gc.nombreGrupo like ?;

select is2.idinfoServicio, ls.nombreLineaServicio, 
ultimoPago=(select top(1)CONVERT(varchar,ks.fechaReg, 103) as fechaReg from kardexServicios ks where ks.estado = 'CJ' and ks.descripcion != 'D' and ks.infoServicio_idinfoServicio = is2.idinfoServicio order by ks.fechaReg desc),
is2.montoApr, capitalPagado=(select isnull(sum(ks2.monto), 0.00) from kardexServicios ks2 where ks2.estado = 'CJ' and ks2.descripcion != 'D' and ks2.infoServicio_idinfoServicio = is2.idinfoServicio),
ls.tasaInteres, ls.tasaMora 
from infoServicio is2 
inner join lineaServicio ls on is2.lineaServicio_idlineaServicio = ls.idlineaServicio
where is2.idinfoServicio = '001001011000002639'


select 
case 
when max(is2.idinfoServicio) is null then ''
when max(is2.idinfoServicio) is not null then max(is2.idinfoServicio)
end as num
from infoServicio is2 where is2.idinfoServicio like '001003030302%'



  
  select  from sede s;

 
 
 select * from infoServicio is2 
 
 






