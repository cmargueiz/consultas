declare @fecha date=(convert(date,SYSDATETIME()))
--insert el usuario administrador
insert into usuario values('CAEJ920621','81dc9bdb52d04dc20036dbd8313ed055','22 av sur entre 15 y 17 calle ptn col magaña #73','7607-7328','Programador analista','JUAN FRANCISCO CASTRO ESTRADA','19920621',28,@fecha,0,'001',1,1,'JUAN','FRANCISCO','CASTRO','ESTRADA')
insert into usuario values('CAEF920621','81dc9bdb52d04dc20036dbd8313ed055','22 av sur entre 15 y 17 calle ptn col magaña #73','7607-7328','Programador analista','FRANCISCO CASTRO','19920621',28,@fecha,0,'001',1,1,'','FRANCISCO','CASTRO','')
--insert into usuario values('CAEJ920621','81dc9bdb52d04dc20036dbd8313ed055','22 av sur entre 15 y 17 calle ptn col magaña #73','7607-7328','Programador analista','JUAN FRANCISCO CASTRO ESTRADA','19920621',28,@fecha,0,'003',1,1,'JUAN','FRANCISCO','CASTRO','ESTRADA')
