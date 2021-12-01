declare @fecha date=(convert(date,SYSDATETIME()))
--insert la oficina
insert into oficina values('001','ASAPROSAR GENERAL',               '2222-2222','santa ana el salvador','VARIOS',   @fecha,'SANTA ANA')
insert into oficina values('002','ASAPROSAR PRODEC',                '2222-2222','santa ana el salvador','CREDITO',@fecha,'SANTA ANA')
insert into oficina values('003','ASAPROSAR PROSAVI',               '2222-2222','santa ana el salvador','SALUD', @fecha,'SANTA ANA')

--insert los grupos de los usuarios
insert into grupo values(1,'ADMINISTRADOR','Administrador del sistema, acceso total')
insert into grupo values(2,'VENTAS',       'Encargado de ventas de productos, acceso limitado')
insert into grupo values(3,'CONTADOR',     'Encargado de Contabilidad, acceso limitado')

--insert el usuario administrador
insert into usuario values('CAEJ920621','81dc9bdb52d04dc20036dbd8313ed055','22 av sur entre 15 y 17 calle ptn col maga�a #73','7607-7328','Programador analista','JUAN FRANCISCO CASTRO ESTRADA','19920621',28,@fecha,0,'001',1,1,'JUAN','FRANCISCO','CASTRO','ESTRADA')
insert into usuario values('CAEJ920621','81dc9bdb52d04dc20036dbd8313ed055','22 av sur entre 15 y 17 calle ptn col maga�a #73','7607-7328','Programador analista','JUAN FRANCISCO CASTRO ESTRADA','19920621',28,@fecha,0,'002',1,1,'JUAN','FRANCISCO','CASTRO','ESTRADA')
insert into usuario values('CAEJ920621','81dc9bdb52d04dc20036dbd8313ed055','22 av sur entre 15 y 17 calle ptn col maga�a #73','7607-7328','Programador analista','JUAN FRANCISCO CASTRO ESTRADA','19920621',28,@fecha,0,'003',1,1,'JUAN','FRANCISCO','CASTRO','ESTRADA')

--insert into cliente
insert into cliente values('000000000001','002','ABIGAIL DE CARMEN RUIZ DE CASTRO','1975-12-29','F','2021-11-30','00151600-4','0210-751229-116-9','Casada/o','22AV SUR ENTRE 15 Y 17 CALLE PONIENTE COL MAGA�A #73','24400831','76079328','SANTA ANA','SANTA ANA','AYUTA','','','','','','','','',NULL,NULL,NULL,NULL,NULL,'2020-11-12','2020-11-12',2)

--insert cuentas contables a oficina Ventas
insert into cuentaContable values('001000000001','10000000000000','',              1,1,1, 'ACTIVO',								       @fecha,@fecha,1,'RE',0.0,0.0,'001')
insert into cuentaContable values('001000000002','11000000000000','10000000000000',1,2,1, 'ACTIVOS CORRIENTES',					       @fecha,@fecha,1,'RE',0.0,0.0,'001')
insert into cuentaContable values('001000000003','11010000000000','11000000000000',1,4,1, 'EFECTIVO Y EQUIVALENTES',			       @fecha,@fecha,1,'RE',0.0,0.0,'001')
insert into cuentaContable values('001000000004','11010100000000','11010000000000',1,6,1, 'CAJA',							           @fecha,@fecha,1,'RE',0.0,0.0,'001')
insert into cuentaContable values('001000000005','11010101000000','11010100000000',1,8,1, 'Caja Chica',						           @fecha,@fecha,1,'DE',0.0,0.0,'001')
insert into cuentaContable values('001000000006','11010102000000','11010100000000',1,8,1, 'Caja General',						       @fecha,@fecha,1,'DE',0.0,0.0,'001')
insert into cuentaContable values('001000000007','11010200000000','11010000000000',1,6,1, 'BANCOS',								       @fecha,@fecha,1,'RE',0.0,0.0,'001')
insert into cuentaContable values('001000000008','11010201000000','11020100000000',1,8,1, 'Cuentas Corrientes',					       @fecha,@fecha,1,'RE',0.0,0.0,'001')
insert into cuentaContable values('001000000009','11010201010000','11010201000000',1,10,1,'Banco Cuscatlan Corriente',			       @fecha,@fecha,1,'DE',0.0,0.0,'001')
insert into cuentaContable values('001000000010','11010201020000','11010201000000',1,10,1,'Banco Agricola Corriente',				   @fecha,@fecha,1,'DE',0.0,0.0,'001')
insert into cuentaContable values('001000000011','11010201030000','11010201000000',1,10,1,'Banco HSBC Corriente',					   @fecha,@fecha,1,'DE',0.0,0.0,'001')
insert into cuentaContable values('001000000012','11010201040000','11010201000000',1,10,1,'Banco Scotiabank Corriente',				   @fecha,@fecha,1,'DE',0.0,0.0,'001')
insert into cuentaContable values('001000000013','11010202000000','11020100000000',1,8,1, 'Cuentas de Ahorro',					       @fecha,@fecha,1,'RE',0.0,0.0,'001')
insert into cuentaContable values('001000000014','11010202010000','11020102000000',1,10,1,'Banco Cuscatlan Ahorro',					   @fecha,@fecha,1,'DE',0.0,0.0,'001')
insert into cuentaContable values('001000000015','11010202020000','11020102000000',1,10,1,'Banco Agricola Ahorro',                     @fecha,@fecha,1,'DE',0.0,0.0,'001')
insert into cuentaContable values('001000000016','11010202030000','11020102000000',1,10,1,'Banco HSBC Ahorro',                         @fecha,@fecha,1,'DE',0.0,0.0,'001')
insert into cuentaContable values('001000000017','11010202040000','11020102000000',1,10,1,'Banco Scotiabank Ahorro',                   @fecha,@fecha,1,'DE',0.0,0.0,'001')
insert into cuentaContable values('001000000018','11020000000000','11000000000000',1,4,1, 'CUENTAS Y DOCUMENTOS POR COBRAR',           @fecha,@fecha,1,'RE',0.0,0.0,'001')
insert into cuentaContable values('001000000019','11020100000000','11020000000000',1,6,1, 'CUENTAS POR COBRAR',                        @fecha,@fecha,1,'RE',0.0,0.0,'001')
insert into cuentaContable values('001000000020','20000000000000','',              2,1,2, 'PASIVOS',                                   @fecha,@fecha,1,'RE',0.0,0.0,'001')
insert into cuentaContable values('001000000021','21000000000000','20000000000000',2,2,2, 'PASIVOS CORRIENTES',                        @fecha,@fecha,2,'RE',0.0,0.0,'001')
insert into cuentaContable values('001000000022','21010000000000','21000000000000',2,4,2, 'RETENCIONES Y PERCEPCIONES DE IMPUESTO',    @fecha,@fecha,2,'RE',0.0,0.0,'001')
insert into cuentaContable values('001000000023','21010100000000','21010000000000',2,6,2, 'IVA Retenido a Terceros',                   @fecha,@fecha,2,'DE',0.0,0.0,'001')
insert into cuentaContable values('001000000024','30000000000000','',              3,1,3, 'CAPITAL',							       @fecha,@fecha,1,'RE',0.0,0.0,'001')
insert into cuentaContable values('001000000025','40000000000000','',              4,1,4, 'COSTOS Y GASTOS',					       @fecha,@fecha,1,'RE',0.0,0.0,'001')
insert into cuentaContable values('001000000026','50000000000000','',              5,1,5, 'INGRESOS ',							       @fecha,@fecha,1,'RE',0.0,0.0,'001')
insert into cuentaContable values('001000000027','51000000000000','50000000000000',5,2,5, 'INGRESOS DE OPERACION ',				       @fecha,@fecha,1,'RE',0.0,0.0,'001')
insert into cuentaContable values('001000000028','51010000000000','51000000000000',5,4,5, 'INTERESES POR VENTAS',  				       @fecha,@fecha,1,'RE',0.0,0.0,'001')
insert into cuentaContable values('001000000029','51010100000000','51010000000000',5,6,5, 'Ingresos por ventas',     			       @fecha,@fecha,1,'DE',0.0,0.0,'001')

--insert cuentas contables a oficina servicios publicos
insert into cuentaContable values('002000000001','10000000000000','',              1,1,1, 'ACTIVO',								       @fecha,@fecha,2,'RE',0.0,0.0,'002')
insert into cuentaContable values('002000000002','11000000000000','10000000000000',1,2,1, 'ACTIVOS CORRIENTES',					       @fecha,@fecha,2,'RE',0.0,0.0,'002')
insert into cuentaContable values('002000000003','11010000000000','11000000000000',1,4,1, 'EFECTIVO Y EQUIVALENTES',			       @fecha,@fecha,2,'RE',0.0,0.0,'002')
insert into cuentaContable values('002000000004','11010100000000','11010000000000',1,6,1, 'CAJA',							           @fecha,@fecha,2,'RE',0.0,0.0,'002')
insert into cuentaContable values('002000000005','11010101000000','11010100000000',1,8,1, 'Caja Chica',						           @fecha,@fecha,2,'DE',0.0,0.0,'002')
insert into cuentaContable values('002000000006','11010102000000','11010100000000',1,8,1, 'Caja General',						       @fecha,@fecha,2,'DE',0.0,0.0,'002')
insert into cuentaContable values('002000000007','11010200000000','11010000000000',1,6,1, 'BANCOS',								       @fecha,@fecha,2,'RE',0.0,0.0,'002')
insert into cuentaContable values('002000000008','11010201000000','11010200000000',1,8,1, 'Cuentas Corrientes',					       @fecha,@fecha,2,'RE',0.0,0.0,'002')
insert into cuentaContable values('002000000009','11010201010000','11010201000000',1,10,1,'Banco Cuscatlan Corriente',			       @fecha,@fecha,2,'DE',0.0,0.0,'002')
insert into cuentaContable values('002000000010','11010201020000','11010201000000',1,10,1,'Banco Agricola Corriente',			       @fecha,@fecha,2,'DE',0.0,0.0,'002')
insert into cuentaContable values('002000000011','11010201030000','11010201000000',1,10,1,'Banco HSBC Corriente',				       @fecha,@fecha,2,'DE',0.0,0.0,'002')
insert into cuentaContable values('002000000012','11010201030000','11010201000000',1,10,1,'Banco Scotiabank Corriente',			       @fecha,@fecha,2,'DE',0.0,0.0,'002')
insert into cuentaContable values('002000000013','11010202000000','11010200000000',1,8,1, 'Cuentas de Ahorro',					       @fecha,@fecha,2,'RE',0.0,0.0,'002')
insert into cuentaContable values('002000000014','11010202010000','11010202000000',1,10,1,'Banco Cuscatlan Ahorro',				       @fecha,@fecha,2,'DE',0.0,0.0,'002')
insert into cuentaContable values('002000000015','11010202020000','11010202000000',1,10,1,'Banco Agricola Ahorro',                     @fecha,@fecha,2,'DE',0.0,0.0,'002')
insert into cuentaContable values('002000000016','11010202030000','11010202000000',1,10,1,'Banco HSBC Ahorro',                         @fecha,@fecha,2,'DE',0.0,0.0,'002')
insert into cuentaContable values('002000000017','11010202040000','11010202000000',1,10,1,'Banco Scotiabank Ahorro',                   @fecha,@fecha,2,'DE',0.0,0.0,'002')
insert into cuentaContable values('002000000018','11020000000000','11000000000000',1,4,1, 'CUENTAS Y DOCUMENTOS POR COBRAR',           @fecha,@fecha,2,'RE',0.0,0.0,'002')
insert into cuentaContable values('002000000019','11020100000000','11020000000000',1,6,1, 'CUENTAS POR COBRAR',						   @fecha,@fecha,2,'RE',0.0,0.0,'002')
insert into cuentaContable values('002000000020','11020101000000','11020100000000',1,8,1, 'Cuenta por Cobrar Servicio de Agua Potable',@fecha,@fecha,2,'DE',0.0,0.0,'002')
insert into cuentaContable values('002000000021','20000000000000','',              2,1,2, 'PASIVOS',                                   @fecha,@fecha,2,'RE',0.0,0.0,'002')
insert into cuentaContable values('002000000022','21000000000000','20000000000000',2,2,2, 'PASIVOS CORRIENTES',                        @fecha,@fecha,2,'RE',0.0,0.0,'002')
insert into cuentaContable values('002000000023','21010000000000','21000000000000',2,4,2, 'RETENCIONES Y PERCEPCIONES DE IMPUESTO',    @fecha,@fecha,2,'RE',0.0,0.0,'002')
insert into cuentaContable values('002000000024','21010100000000','21010000000000',2,6,2, 'IVA Retenido a Terceros',                   @fecha,@fecha,2,'DE',0.0,0.0,'002')
insert into cuentaContable values('002000000025','30000000000000','',              3,1,3, 'CAPITAL',							       @fecha,@fecha,2,'RE',0.0,0.0,'002')
insert into cuentaContable values('002000000026','40000000000000','',              4,1,4, 'COSTOS Y GASTOS',					       @fecha,@fecha,2,'RE',0.0,0.0,'002')
insert into cuentaContable values('002000000027','50000000000000','',              5,1,5, 'INGRESOS ',							       @fecha,@fecha,2,'RE',0.0,0.0,'002')
insert into cuentaContable values('002000000028','51000000000000','50000000000000',5,2,5, 'INGRESOS DE OPERACION',				       @fecha,@fecha,2,'RE',0.0,0.0,'002')
insert into cuentaContable values('002000000029','51010000000000','51000000000000',5,4,5, 'INTERESES NORMALES',  				       @fecha,@fecha,2,'RE',0.0,0.0,'002')
insert into cuentaContable values('002000000030','51010100000000','51010000000000',5,6,5, 'Interes Servicio de Agua Potable',		   @fecha,@fecha,2,'DE',0.0,0.0,'002')
insert into cuentaContable values('002000000031','51020000000000','51000000000000',5,4,5, 'INTERESES MORATORIOS',  				       @fecha,@fecha,2,'RE',0.0,0.0,'002')
insert into cuentaContable values('002000000032','51020100000000','51020000000000',5,6,5, 'Interes Moratorio Servicio Agua Potable',   @fecha,@fecha,2,'DE',0.0,0.0,'002')
insert into cuentaContable values('002000000033','51030000000000','51000000000000',5,4,5, 'INGRESOS VARIOS',  			    	       @fecha,@fecha,2,'RE',0.0,0.0,'002')
insert into cuentaContable values('002000000034','51030100000000','51030000000000',5,6,5, 'Ingreso por Alcantarillado',                @fecha,@fecha,2,'DE',0.0,0.0,'002')

--insert respaldo para los reportes contables de oficina ventas
insert into tablaRespaldoSaldos values('001',1,'19900101','00:00',0.0,'001000000001')
insert into tablaRespaldoSaldos values('001',1,'19900101','00:00',0.0,'001000000002')
insert into tablaRespaldoSaldos values('001',1,'19900101','00:00',0.0,'001000000003')
insert into tablaRespaldoSaldos values('001',1,'19900101','00:00',0.0,'001000000004')
insert into tablaRespaldoSaldos values('001',1,'19900101','00:00',0.0,'001000000005')
insert into tablaRespaldoSaldos values('001',1,'19900101','00:00',0.0,'001000000006')
insert into tablaRespaldoSaldos values('001',1,'19900101','00:00',0.0,'001000000007')
insert into tablaRespaldoSaldos values('001',1,'19900101','00:00',0.0,'001000000008')
insert into tablaRespaldoSaldos values('001',1,'19900101','00:00',0.0,'001000000009')
insert into tablaRespaldoSaldos values('001',1,'19900101','00:00',0.0,'001000000010')
insert into tablaRespaldoSaldos values('001',1,'19900101','00:00',0.0,'001000000011')
insert into tablaRespaldoSaldos values('001',1,'19900101','00:00',0.0,'001000000012')
insert into tablaRespaldoSaldos values('001',1,'19900101','00:00',0.0,'001000000013')
insert into tablaRespaldoSaldos values('001',1,'19900101','00:00',0.0,'001000000014')
insert into tablaRespaldoSaldos values('001',1,'19900101','00:00',0.0,'001000000015')
insert into tablaRespaldoSaldos values('001',1,'19900101','00:00',0.0,'001000000016')
insert into tablaRespaldoSaldos values('001',1,'19900101','00:00',0.0,'001000000017')
insert into tablaRespaldoSaldos values('001',1,'19900101','00:00',0.0,'001000000018')
insert into tablaRespaldoSaldos values('001',1,'19900101','00:00',0.0,'001000000019')
insert into tablaRespaldoSaldos values('001',1,'19900101','00:00',0.0,'001000000020')
insert into tablaRespaldoSaldos values('001',1,'19900101','00:00',0.0,'001000000021')
insert into tablaRespaldoSaldos values('001',1,'19900101','00:00',0.0,'001000000022')
insert into tablaRespaldoSaldos values('001',1,'19900101','00:00',0.0,'001000000023')
insert into tablaRespaldoSaldos values('001',1,'19900101','00:00',0.0,'001000000024')
insert into tablaRespaldoSaldos values('001',1,'19900101','00:00',0.0,'001000000025')
insert into tablaRespaldoSaldos values('001',1,'19900101','00:00',0.0,'001000000026')
insert into tablaRespaldoSaldos values('001',1,'19900101','00:00',0.0,'001000000027')
insert into tablaRespaldoSaldos values('001',1,'19900101','00:00',0.0,'001000000028')
insert into tablaRespaldoSaldos values('001',1,'19900101','00:00',0.0,'001000000029')

--insert respaldo para los reportes contables de oficina ventas
insert into tablaRespaldoSaldos values('002',2,'19900101','00:00',0.0,'002000000001')
insert into tablaRespaldoSaldos values('002',2,'19900101','00:00',0.0,'002000000002')
insert into tablaRespaldoSaldos values('002',2,'19900101','00:00',0.0,'002000000003')
insert into tablaRespaldoSaldos values('002',2,'19900101','00:00',0.0,'002000000004')
insert into tablaRespaldoSaldos values('002',2,'19900101','00:00',0.0,'002000000005')
insert into tablaRespaldoSaldos values('002',2,'19900101','00:00',0.0,'002000000006')
insert into tablaRespaldoSaldos values('002',2,'19900101','00:00',0.0,'002000000007')
insert into tablaRespaldoSaldos values('002',2,'19900101','00:00',0.0,'002000000008')
insert into tablaRespaldoSaldos values('002',2,'19900101','00:00',0.0,'002000000009')
insert into tablaRespaldoSaldos values('002',2,'19900101','00:00',0.0,'002000000010')
insert into tablaRespaldoSaldos values('002',2,'19900101','00:00',0.0,'002000000011')
insert into tablaRespaldoSaldos values('002',2,'19900101','00:00',0.0,'002000000012')
insert into tablaRespaldoSaldos values('002',2,'19900101','00:00',0.0,'002000000013')
insert into tablaRespaldoSaldos values('002',2,'19900101','00:00',0.0,'002000000014')
insert into tablaRespaldoSaldos values('002',2,'19900101','00:00',0.0,'002000000015')
insert into tablaRespaldoSaldos values('002',2,'19900101','00:00',0.0,'002000000016')
insert into tablaRespaldoSaldos values('002',2,'19900101','00:00',0.0,'002000000017')
insert into tablaRespaldoSaldos values('002',2,'19900101','00:00',0.0,'002000000018')
insert into tablaRespaldoSaldos values('002',2,'19900101','00:00',0.0,'002000000019')
insert into tablaRespaldoSaldos values('002',2,'19900101','00:00',0.0,'002000000020')
insert into tablaRespaldoSaldos values('002',2,'19900101','00:00',0.0,'002000000021')
insert into tablaRespaldoSaldos values('002',2,'19900101','00:00',0.0,'002000000022')
insert into tablaRespaldoSaldos values('002',2,'19900101','00:00',0.0,'002000000023')
insert into tablaRespaldoSaldos values('002',2,'19900101','00:00',0.0,'002000000024')
insert into tablaRespaldoSaldos values('002',2,'19900101','00:00',0.0,'002000000025')
insert into tablaRespaldoSaldos values('002',2,'19900101','00:00',0.0,'002000000026')
insert into tablaRespaldoSaldos values('002',2,'19900101','00:00',0.0,'002000000027')
insert into tablaRespaldoSaldos values('002',2,'19900101','00:00',0.0,'002000000028')
insert into tablaRespaldoSaldos values('002',2,'19900101','00:00',0.0,'002000000029')
insert into tablaRespaldoSaldos values('002',2,'19900101','00:00',0.0,'002000000030')
insert into tablaRespaldoSaldos values('002',2,'19900101','00:00',0.0,'002000000031')
insert into tablaRespaldoSaldos values('002',2,'19900101','00:00',0.0,'002000000032')
insert into tablaRespaldoSaldos values('002',2,'19900101','00:00',0.0,'002000000033')
insert into tablaRespaldoSaldos values('002',2,'19900101','00:00',0.0,'002000000034')

--insert fecha del sistema
declare @fecha date=(convert(date,SYSDATETIME()))
insert into infoSistema values(@fecha,'fecha sistema')

--insert para el nuevo banco
insert into bancos values('BANCO CUSCATLAN', 'CORRIENTE','99999-999-99-9','001000000009',0)
insert into bancos values('BANCO AGRICOLA',  'CORRIENTE','99999-999-99-9','001000000010',0)
insert into bancos values('BANCO HSBC',      'CORRIENTE','99999-999-99-9','001000000011',0)
insert into bancos values('BANCO SCOTIABANK','CORRIENTE','99999-999-99-9','001000000012',0)

insert into bancos values('BANCO CUSCATLAN', 'CORRIENTE','99999-999-99-9','002000000009',0)
insert into bancos values('BANCO AGRICOLA',  'CORRIENTE','99999-999-99-9','002000000010',0)
insert into bancos values('BANCO HSBC',      'CORRIENTE','99999-999-99-9','002000000011',0)
insert into bancos values('BANCO SCOTIABANK','CORRIENTE','99999-999-99-9','002000000012',0)

--insert para un nuevo tipo de servicio
insert into tipoServicios values('SA001','SERVICIO DE AGUA POTABLE','servicio de agua potable',@fecha,@fecha,@fecha,1,'002',2)
insert into tipoServicios values('SC001','SERVICIO CREDITICIO',     'servicio de prestamos',   @fecha,@fecha,@fecha,1,'003',3)

--insert para linea de servicios
insert into lineaServicio values('0000001','SA001','Servicio de Agua Potable Residencial',  'servicio de agua potable para zona residenciales',0.00,0.00,@fecha,@fecha,@fecha,2)
insert into lineaServicio values('0000002','SA001','Servicio de Agua Potable Comercial',    'servicio de agua potable para zona comercial',    0.00,0.00,@fecha,@fecha,@fecha,2)
insert into lineaServicio values('0000003','SA001','Servicio de Agua Potable Habitacional', 'servicio de agua potable para zona habitacional', 0.00,0.00,@fecha,@fecha,@fecha,2)
insert into lineaServicio values('0000004','SC001','Servicio Crediticio para Microempresas','servicio de prestamos para microempresa',         0.00,0.00,@fecha,@fecha,@fecha,2)

--insert para tipo de gastos al servicio
insert into tipoGastos values('M3 Agua Potable','',1,@fecha,@fecha,@fecha,1,'002')
insert into tipoGastos values('Alcantarillados','',1,@fecha,@fecha,@fecha,1,'002')

--insert para agregar los gastos a la linea de servicio
insert into gastoServicios values('0000001',1,0.50,0.00,@fecha,@fecha,@fecha,'V')
insert into gastoServicios values('0000001',2,1.50,0.00,@fecha,@fecha,@fecha,'F')
insert into gastoServicios values('0000002',1,0.75,0.00,@fecha,@fecha,@fecha,'V')
insert into gastoServicios values('0000002',2,1.50,0.00,@fecha,@fecha,@fecha,'F')
insert into gastoServicios values('0000003',1,0.25,0.00,@fecha,@fecha,@fecha,'V')
insert into gastoServicios values('0000003',2,1.50,0.00,@fecha,@fecha,@fecha,'F')

--insert para las opciones de la oficina (menu opciones)
insert into opcionesOficina values(1, '001','Clientes')
insert into opcionesOficina values(2, '001','Compras')
insert into opcionesOficina values(3, '001','Contabilidad')
insert into opcionesOficina values(4, '001','Facturacion')
insert into opcionesOficina values(5, '001','Inventario')
insert into opcionesOficina values(6, '001','Usuarios')
insert into opcionesOficina values(7, '001','Ventas')
insert into opcionesOficina values(8, '002','Clientes')
insert into opcionesOficina values(9, '002','Compras')
insert into opcionesOficina values(10,'002','Contabilidad')
insert into opcionesOficina values(11,'002','Inventario')
insert into opcionesOficina values(12,'002','ServiciosPublicos')
insert into opcionesOficina values(13,'002','Usuarios')

--insert into tipoOperaciones
insert into tipoOperaciones values('CAJ01','REGISTRO DE CAJA',          @fecha,@fecha,'002',2,'D')
insert into tipoOperaciones values('CAP01','PAGO DE CAPITAL',           @fecha,@fecha,'002',2,'H')
insert into tipoOperaciones values('INT01','PAGO DE INTERES',           @fecha,@fecha,'002',2,'H')
insert into tipoOperaciones values('MOR01','PAGO DE MORA',              @fecha,@fecha,'002',2,'H')
insert into tipoOperaciones values('FON01','PAGO DE FONDO',             @fecha,@fecha,'002',2,'H')
insert into tipoOperaciones values('OTR01','PAGO DE OTROS',             @fecha,@fecha,'002',2,'H')
insert into tipoOperaciones values('PEN01','PENDIENTE DE RECUPERAR',    @fecha,@fecha,'002',2,'D')

--insert into formaPago
insert into formaPago values('EFE01','EFECTIVO',                 @fecha,@fecha)
insert into formaPago values('TAR01','TARJETA BANCO CUSCATLAN',  @fecha,@fecha)
insert into formaPago values('TAR02','TARJETA BANCO AGRICOLA',   @fecha,@fecha)
insert into formaPago values('TAR03','TARJETA BANCO HSBC',       @fecha,@fecha)
insert into formaPago values('TAR04','TARJETA BANCO SCOTIABANK', @fecha,@fecha)
insert into formaPago values('CRE01','CREDITO',                  @fecha,@fecha)
insert into formaPago values('REC01','GENERACION DE RECIBOS',    @fecha,@fecha)

--insert into distribucionContableServicios
insert into distribucionContableServicios values('PEN01','002000000020','SA001',2,0,'DISTRIBUCION DE PAGO REALIZADA EN FECHA 15/10/2020 PARA SERVICIO DE AGUA POTABLE','REC01')
insert into distribucionContableServicios values('CAJ01','002000000006','SA001',2,0,'DISTRIBUCION DE PAGO REALIZADA EN FECHA 15/10/2020 PARA SERVICIO DE AGUA POTABLE','EFE01')
insert into distribucionContableServicios values('OTR01','002000000031','SA001',2,1,'DISTRIBUCION DE PAGO REALIZADA EN FECHA 15/10/2020 PARA SERVICIO DE AGUA POTABLE','EFE01')
insert into distribucionContableServicios values('MOR01','002000000029','SA001',2,2,'DISTRIBUCION DE PAGO REALIZADA EN FECHA 15/10/2020 PARA SERVICIO DE AGUA POTABLE','EFE01')
insert into distribucionContableServicios values('CAP01','002000000020','SA001',2,3,'DISTRIBUCION DE PAGO REALIZADA EN FECHA 15/10/2020 PARA SERVICIO DE AGUA POTABLE','EFE01')