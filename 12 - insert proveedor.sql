declare @fecha date=(convert(date,SYSDATETIME()))
--insert para el nuevo proveedor
insert into proveedor values('VIDRI, S.A. de C.V.','020100','Km. 63 autopista ByPass carretera a Metapan Santa Ana, Santa Ana',@fecha,@fecha,1)
