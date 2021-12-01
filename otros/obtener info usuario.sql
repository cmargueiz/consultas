select CONCAT(us.primerNombre, ' ', us.primerApellido) as nombre, us.cargo, ofi.nombre 
from usuario us
inner join oficina ofi on us.oficina_idoficina = ofi.idoficina
inner join infoSistema ins on ofi.idoficina = ins.
where us.usuario = 'CAEJ920621' and ofi.idoficina = '001'