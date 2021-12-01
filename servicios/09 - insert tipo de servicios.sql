declare @fecha date=(convert(date,SYSDATETIME()))
--insert para un nuevo tipo de servicio
insert into tipoServicios values('SA001','SERVICIO DE AGUA POTABLE','servicio de agua potable',@fecha,@fecha,@fecha,1,'002',2)
insert into tipoServicios values('SC001','SERVICIO CREDITICIO',     'servicio de prestamos',   @fecha,@fecha,@fecha,1,'003',3)