CREATE database ejercicio9
charset utf8mb4
collate utf8mb4_spanish2_ci;

USE ejercicio9;

CREATE TABLE persona(
idPersona int Auto_increment,
nombrePersona varchar (45),
primerApellidoPersona varchar (45),
segundoApellidoPersona varchar (45),
telefonoPersona varchar (9),
correoElectronicoPersona varchar (100),
Primary key (idPersona)
);


CREATE TABLE vehiculos (
idVehiculo int,
marcaVehiculo varchar(45),
modeloVehiculo varchar(45),
fechaFabricacionVehiculo DATE,
tipoVehiculo varchar (45),
matriculaVehiculo varchar (8),
idPersonaFK int,
PRIMARY KEY (idVehiculo),
FOREIGN KEY (idPersonaFK)
		references persona(idPersona)
);


SELECT*FROM persona;

INSERT INTO persona Values(
null,'Manuel','Rodriguez','Fernandez','123456789','jadame@hotmail.es'
),
(
null,'Jose','Adame','Albarran','123456798','jose@hotmail.es'
);

SELECT*FROM vehiculos;
INSERT INTO vehiculos Values(
)


