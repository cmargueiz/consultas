declare @fecha date=(convert(date,SYSDATETIME()))
--insert into distribucion contable

--DISTRIBUCION INGRESO DE INVENTARIO
--                                   ID Cuenta      oficina   usuario   tipoMovimiento   orden   SubCategoria   tipoOperacion
insert into disconInventario values('001000000205',  '001',      1,       'IN001',         0,         6,           'IVA01') --Iva
insert into disconInventario values('001000000218',  '001',      1,       'IN001',         1,         6,           'INV01') --Inventario
insert into disconInventario values('001000000026',  '001',      1,       'IN001',         2,         6,           'BAN01') --salida de dinero en banco

--DISTRIBUCION VENTA DE PRODUCTO
--                                   ID Cuenta      oficina   usuario   tipoMovimiento   orden   SubCategoria   tipoOperacion
insert into disconInventario values('001000000006',  '001',      1,       'FAC01',         0,         6,           'CAJ01') --Entrada de caja
insert into disconInventario values('001000000546',  '001',      1,       'FAC01',         1,         6,           'IVA02') --IVA
insert into disconInventario values('001000000218',  '001',      1,       'FAC01',         2,         6,           'INV02') --Salida de inventario
insert into disconInventario values('001000001991',  '001',      1,       'FAC01',         3,         6,           'ING01') --Ingreso de PROSAVI
insert into disconInventario values('001000001668',  '001',      1,       'FAC01',         4,         6,           'COS01') --Gasto de Venta


select *from disconInventario
insert into disconInventario values('001000000006',  '001',      1,       'FAC01',         0,         5,           'CAJ01') --Iva
insert into disconInventario values('001000000546',  '001',      1,       'FAC01',         1,         5,           'IVA02') --Inventario
insert into disconInventario values('001000001988',  '001',      1,       'FAC01',         2,         5,           'ING01') --salida de dinero en banco



select *from disconInventario where subcategoria_idSubcategoria in (5,8) and tipoOperaciones_idOperaciones='IVA01'

update disconInventario set tipoOperaciones_idOperaciones='IVA02'  where subcategoria_idSubcategoria in (5,8) and tipoOperaciones_idOperaciones='IVA01'





