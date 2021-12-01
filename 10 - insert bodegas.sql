declare @fecha date=(convert(date,SYSDATETIME()))
--insert bodegas
insert into bodega values(1,	'BODEGA GENERAL DE AROS',	'001',	1,	'en esta bodega se almacenan todos los aros	santa ana el salvador',	'km 62 1/2 carretera antigua a san salvador', 'SANTA ANA',	'2222-2222',	@fecha,	@fecha,	1)
