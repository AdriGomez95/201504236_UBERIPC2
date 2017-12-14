
CREATE DATABASE Practica1

USE Practica1

 CREATE TABLE Pasajero(
   idPasajero INT PRIMARY KEY, 
	nombre VARCHAR(10) NOT NULL,
	edad INT NOT NULL
  )

  CREATE TABLE Categoria(
	idCategoria INT PRIMARY KEY,
	nombre VARCHAR(10) NOT NULL,
	descripcion VARCHAR(20) NOT NULL
  )

  CREATE TABLE Vehiculo(
	idVehiculo INT PRIMARY KEY,
	nombre VARCHAR(10) NOT NULL,
	capacidad VARCHAR(10) NOT NULL,
	color VARCHAR(5) NOT NULL
  )

  CREATE TABLE Empleado(
	idEmpleado INT PRIMARY KEY,
	nombre VARCHAR(10) NOT NULL,
	edad INT NOT NULL,
	genero VARCHAR(10) NOT NULL
  )

  CREATE TABLE Servicio(
	idServicio INT PRIMARY KEY,
	nombre VARCHAR(10) NOT NULL,
	precio INT NOT NULL,
	idVehiculo INT NOT NULL,
	idCategoria INT NOT NULL,
	idEmpleado INT NOT NULL,
    CONSTRAINT FK_Servicio_idVehiculo FOREIGN KEY (idVehiculo) REFERENCES Vehiculo(idVehiculo),
    CONSTRAINT FK_Servicio_idCategoria FOREIGN KEY (idCategoria) REFERENCES Categoria(idCategoria),
    CONSTRAINT FK_Servicio_idEmpleado FOREIGN KEY (idEmpleado) REFERENCES Empleado(idEmpleado)
  )

  
  CREATE TABLE Registro(
	idRegistro INT PRIMARY KEY,
	fecha VARCHAR(10) NOT NULL,
	idServicio INT NOT NULL,
	idPasajero INT NOT NULL,
    CONSTRAINT FK_Registro_idServicio FOREIGN KEY (idServicio) REFERENCES Servicio(idServicio),
    CONSTRAINT FK_Registro_idPasajero FOREIGN KEY (idPasajero) REFERENCES Pasajero(idPasajero)
  )


ALTER TABLE Pasajero
ADD COLUMN genero VARCHAR(10) NOT NULL

