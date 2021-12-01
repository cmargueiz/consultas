declare @fecha date=(convert(date,SYSDATETIME()))
--insert into cliente
insert into cliente values('000000000001','001','CLIENTE DE PRUEBA',@fecha,'F',@fecha,'00000000-0','0000-000000-000-0','Casada/o','Santa Ana','24400831','76079328','SANTA ANA','SANTA ANA','AYUTA','','','','','','','','',NULL,NULL,NULL,NULL,NULL,@fecha,@fecha,1)
