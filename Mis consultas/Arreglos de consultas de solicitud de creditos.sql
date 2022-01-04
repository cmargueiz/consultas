select DISTINCT 
c.idcliente ,
CONCAT(c.primerNombre,' ',c.segundoNombre,' ',c.primerApellido,' ',c.segundoApellido),
 CONVERT (varchar,c.fechaNacimiento, 103) as fecha ,
c.sexo,
c.lugarNacimiento ,
c.telefonoMovil ,
z.descripcion ,
c.numeroDui 
from zona z 
inner join direccionesCliente dc 
on z.idzona = dc.zona_idzona 
inner join cliente c 
on dc.cliente_idcliente = c.idcliente
where c.idcliente = '000000000003';



SELECT
(select c.nombre from cliente c where c.idcliente =is2.cliente_idcliente) as nombreDui,

from infoServicio is2; 

-- Auto-generated SQL script #202201030918
UPDATE ProFac_pruebas.dbo.infoServicio	SET fuentFondo=N'FONDOS PROPIOS' ;




SELECT 
tg.nombre,
gls.montoValor ,
gls.montoPorcentaje 
from gastoLineaServicio gls
inner join tipoGastos tg 
on gls.tipoGastos_idtipoGasto = tg.idtipoGasto 
where gls.lineaServicio_idlineaServicio = '0010700' and gls.formaCobro = 0

SELECT 
tg.nombre ,
gls.montoValor ,
gls.montoPorcentaje 
from gastoLineaServicio gls
inner join tipoGastos tg 
on gls.tipoGastos_idtipoGasto = tg.idtipoGasto 
where gls.lineaServicio_idlineaServicio = '0010700' and gls.formaCobro = 1


