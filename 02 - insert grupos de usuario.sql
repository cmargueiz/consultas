declare @fecha date=(convert(date,SYSDATETIME()))
--insert los grupos de los usuarios
insert into grupo values(1,'ADMINISTRADOR','Administrador del sistema, acceso total')
insert into grupo values(2,'VENTAS',       'Encargado de ventas de productos, acceso limitado')
insert into grupo values(3,'CONTADOR',     'Encargado de Contabilidad, acceso limitado')
