declare @fecha date=(convert(date,SYSDATETIME()))
--insert para el nuevo banco
insert into bancos values('BANCO CUSCATLAN',       'CORRIENTE','99999-999-99-9','001000000026',0, 1, @fecha, @fecha)
insert into bancos values('BANCO AGRICOLA',        'CORRIENTE','99999-999-99-9','001000000027',0, 1, @fecha, @fecha)
insert into bancos values('BANCO DAVIVIENDA',      'CORRIENTE','99999-999-99-9','001000000028',0, 1, @fecha, @fecha)
insert into bancos values('BANCO AMERICA CENTRAL', 'CORRIENTE','99999-999-99-9','001000000030',0, 1, @fecha, @fecha)
insert into bancos values('BANCO PROMERICA',       'CORRIENTE','99999-999-99-9','001000000031',0, 1, @fecha, @fecha)