--CREAMOS LOS RESTAURANTES
insert into Restaurante values('RE001','EL AJICITO','LOS EJEDIDOS - PIURA','A');
insert into Restaurante values('RE002','EL MUELLE','AV GRAU - PIURA','A');
insert into Restaurante values('RE003','BEBE MERO','LAS MERCEDES - PIURA','A');
insert into Restaurante values('RE004','EL ARBOLITO','LOS EJEDIDOS - PIURA','A');
insert into Restaurante values('RE005','LA CHOZA','LAS MERCEDES - PIURA','A');

--CREAMOS LAS MESAS
INSERT INTO MESA VALUES('ME001','F',4,'A');
INSERT INTO MESA VALUES('ME002','F',2,'A');
INSERT INTO MESA VALUES('ME003','F',3,'A');
INSERT INTO MESA VALUES('ME004','NE',4,'A');
INSERT INTO MESA VALUES('ME005','NE',3,'A');
INSERT INTO MESA VALUES('ME006','NE',2,'A');

--CREAMOS LAS MESAS DE CADA RESTAURANTE
INSERT INTO Restaurante_Mesa values('RE001','ME001','','',1,'LI');
INSERT INTO Restaurante_Mesa values('RE001','ME002','','',2,'LI');
INSERT INTO Restaurante_Mesa values('RE001','ME004','','',3,'LI');
INSERT INTO Restaurante_Mesa values('RE001','ME005','','',4,'LI');
INSERT INTO Restaurante_Mesa values('RE002','ME001','','',1,'LI');
INSERT INTO Restaurante_Mesa values('RE002','ME002','','',2,'LI');
INSERT INTO Restaurante_Mesa values('RE002','ME004','','',3,'LI');
INSERT INTO Restaurante_Mesa values('RE002','ME005','','',4,'LI');
INSERT INTO Restaurante_Mesa values('RE003','ME001','','',1,'LI');
INSERT INTO Restaurante_Mesa values('RE003','ME002','','',2,'LI');
INSERT INTO Restaurante_Mesa values('RE003','ME004','','',3,'LI');
INSERT INTO Restaurante_Mesa values('RE003','ME005','','',4,'LI');

--Mostramos Mapa de un  restaurante
select rm.Numero_Mesa,Me.Fumador,Me.Cantidad_Personas,rm.Estado from Restaurante_Mesa as RM
inner join Mesa as Me
on RM.Cod_Mesa = Me.Cod_Mesa
where RM.Cod_Restaurante='RE002'

