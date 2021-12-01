select cuentaContable,descripcion,saldoInicial 
from cuentaContable 
where descripcion like '%%' and oficina_idoficina = '001'
order by cuentaContable asc