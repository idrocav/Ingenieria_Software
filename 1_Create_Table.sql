--drop database Reservas
create database Reservas
go
use Reservas
go
CREATE TABLE Restaurante (
  Cod_Restaurante CHAR(5) NOT NULL,
  Nombre_Restaurante VARCHAR(300) NULL,
  Ubicacion VARCHAR(300) NULL,
  Estado CHAR(2) NULL,
  PRIMARY KEY(Cod_Restaurante)
)
go
CREATE TABLE Mesa (
  Cod_Mesa CHAR(5) NOT NULL,
  Fumador CHAR(2) NULL,
  Cantidad_Personas INTEGER NULL,
  Estado CHAR(2) NULL,
  PRIMARY KEY(Cod_Mesa)
)
go
CREATE TABLE Restaurante_Mesa (
  Cod_Restaurante CHAR(5) NOT NULL,
  Cod_Mesa CHAR(5) NOT NULL,
  Ubicacionx VARCHAR(150) NULL,
  UbicacionY VARCHAR(150) NULL,
  Numero_Mesa INTEGER  NULL,
  Estado CHAR(2) NULL,
  PRIMARY KEY(Cod_Mesa, Cod_Restaurante)
)
go
CREATE TABLE Reserva (
  Cod_Reserva INTEGER NOT NULL identity,
  Restaurante_Mesa_Cod_Restaurante CHAR(5) NOT NULL,
  Restaurante_Mesa_Cod_Mesa CHAR(5) NOT NULL,
  Fecha_Presentacion DATETIME NULL,
  Fecha_Tolerancia DATETIME NULL,
  Hora_Presentacio  DATETIME NULL,
  Hora_Tolerancia DATETIME NULL,
  Nombre_Reserva VARCHAR(300) NULL,
  Estado CHAR(2) NULL,
  PRIMARY KEY(Cod_Reserva,Restaurante_Mesa_Cod_Mesa, Restaurante_Mesa_Cod_Restaurante),
  FOREIGN KEY(Restaurante_Mesa_Cod_Mesa, Restaurante_Mesa_Cod_Restaurante)
    REFERENCES Restaurante_Mesa(Cod_Mesa, Cod_Restaurante)	
);

