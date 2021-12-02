select max(fv.idFacturaVenta) from facturasVentas fv ;

select CONCAT(u.idusuario ,' - ',u.primerNombre,' ',u.segundoApellido) from usuario u where u.cargo =49;

SELECT 
rc.idCita,
CONCAT(c.primerNombre,' ',c.primerApellido) as paciente,
rc.horaReserva ,
rc.fechaReserva ,
concat(u.primerNombre,' ',c.segundoApellido) as medico,
rc.estado
from usuario u 
inner join reservarCita rc 
on u.idusuario = rc.medico_idUsuario 
inner join cliente c 
on rc.cliente_idcliente = c.idclientewhere u.Cargo = '49' ;

