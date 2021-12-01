select idpartidaContable,numeroComprobante,descripcion,
CONVERT(varchar,fechaMov,103) as fechaMov,CONVERT(varchar,fechaDoc,103) as fechaDoc
from partidaContable 
where fechaMov between ? and ?
order by idpartidaContable asc