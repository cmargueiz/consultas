select cuentaContable,descripcion 
from cuentaContable 
where descripcion like ? and oficina_idoficina = ?
order by cuentaContable asc