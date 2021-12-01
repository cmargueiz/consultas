declare @fecha date=(convert(date,SYSDATETIME()))
--insert fecha del sistema
insert into infoSistema values(@fecha,'fecha sistema', '001')
insert into infoSistema values(@fecha,'fecha sistema', '002')
insert into infoSistema values(@fecha,'fecha sistema', '003')