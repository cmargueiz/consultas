select idpartidaContable,numeroComprobante,descripcion,
CONVERT(varchar,fechaMov,103) as fechaMov,CONVERT(varchar,fechaDoc,103) as fechaDoc
from partidaContable 
where oficina_idoficina = '001' and fechaMov between '20200928' and '20200928'
order by idpartidaContable asc