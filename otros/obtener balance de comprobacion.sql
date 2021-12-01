declare @fecha1 varchar(max)    = '20210101' 
declare @fecha2 varchar(max)    = '20211201' 
declare @usuario varchar(max)   = 'CAEJ920621' 
declare @oficina varchar(max)   = '001'
declare @sumDebe decimal(10,2)  = 0.0
declare @sumHaber decimal(10,2) = 0.0
declare @tablaAux_cuentasContables table(id varchar(max), cuentaContable varchar(max), cuentaContableSup varchar(max), claseCuenta varchar(max), nivel int)
insert into @tablaAux_cuentasContables(id, cuentaContable,cuentaContableSup,claseCuenta,nivel)select id, cuentaContable, cuentaContableSup, claseCuenta, nivel from cuentaContable where oficina_idoficina = @oficina
declare @cantFilas_cuentasContables int=(select COUNT(*)from @tablaAux_cuentasContables)
delete from tblLibroContable where usuario=@usuario
while @cantFilas_cuentasContables>0 begin
	declare @id varchar(max)=(select top(1)id from @tablaAux_cuentasContables)
	declare @cuentaContable varchar(max)=(select cuentaContable from @tablaAux_cuentasContables where id=@id)
	declare @cuentaContableSup varchar(max)=(select cuentaContableSup from @tablaAux_cuentasContables where id=@id)
	declare @claseCuenta varchar(max)=(select claseCuenta from @tablaAux_cuentasContables where id=@id)
	declare @nivel int=(select nivel from @tablaAux_cuentasContables where id=@id)
	declare @descripcion varchar(max)=(select descripcion from cuentaContable where id=@id)
	declare @saldoInicial float = (select saldoInicial from tblRespaldoSaldo where cuentaContable_id=@id and fecha<=@fecha1)
	set @sumDebe  = (select isnull(SUM(debe) , 0.00) from movimientosContables inner join cuentaContable on movimientosContables.cuentaContable_id=cuentaContable.id where cuentaContable.cuentaContableSup like CONCAT(SUBSTRING(@cuentaContable, 1, @nivel), '%') and cuentaContable.oficina_idoficina = @oficina)
	set @sumHaber = (select isnull(SUM(haber), 0.00) from movimientosContables inner join cuentaContable on movimientosContables.cuentaContable_id=cuentaContable.id where cuentaContable.cuentaContableSup like CONCAT(SUBSTRING(@cuentaContable, 1, @nivel), '%') and cuentaContable.oficina_idoficina = @oficina)
	insert into tblLibroContable (idCuentaContable, idCuentaContableSup, nivel, cuenta, descripcion, saldoInicial, debe, haber, claseCuenta, usuario, partida, fecha, saldoFinal) select @cuentaContable, @cuentaContableSup, @nivel, SUBSTRING(@cuentaContable, 1, @nivel), @descripcion,
	@saldoInicial, @sumDebe, @sumHaber, @claseCuenta, @usuario, '' as partida, '' as fecha, 0.00 as saldoFinal
	delete from @tablaAux_cuentasContables where cuentaContable=@cuentaContable
	set @cantFilas_cuentasContables=(select COUNT(*)from @tablaAux_cuentasContables)
end
select *from tblLibroContable order by idCuentaContable
