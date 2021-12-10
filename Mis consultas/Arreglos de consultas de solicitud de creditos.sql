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