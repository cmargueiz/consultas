declare @fecha date=(convert(date,SYSDATETIME()))
--insert into formaPago
insert into formaPago values('EFE01','EFECTIVO',                 @fecha, @fecha, 'V')
insert into formaPago values('TAR01','TARJETA BANCO CUSCATLAN',  @fecha, @fecha, '')
insert into formaPago values('TAR02','TARJETA BANCO AGRICOLA',   @fecha, @fecha, '')
insert into formaPago values('TAR03','TARJETA BANCO HSBC',       @fecha, @fecha, '')
insert into formaPago values('TAR04','TARJETA BANCO SCOTIABANK', @fecha, @fecha, '')
insert into formaPago values('CRE01','CREDITO',                  @fecha, @fecha, '')
insert into formaPago values('REC01','GENERACION DE RECIBOS',    @fecha, @fecha, '')
