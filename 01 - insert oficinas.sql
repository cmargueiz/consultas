declare @fecha date=(convert(date,SYSDATETIME()))
--insert la oficina
insert into oficina values('003','ASAPROSAR GENERAL',  '2222-2222','santa ana el salvador','VARIOS',@fecha,'SANTA ANA')
insert into oficina values('002','ASAPROSAR CAFETERIA','2222-2222','santa ana el salvador','VENTAS',@fecha,'SANTA ANA')
insert into oficina values('001','ASAPROSAR PROSAVI',  '2222-2222','santa ana el salvador','SALUD', @fecha,'SANTA ANA')
