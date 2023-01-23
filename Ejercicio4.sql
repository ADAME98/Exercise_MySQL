-- Crear la Base de Datos.
create database ejercicio4
charset utf8mb4
collate utf8mb4_spanish2_ci;

-- Activar la Base de Datos.
use ejercicio4;

-- Crear la tabla 'Asignaturas'.
CREATE TABLE asignaturas (
    idAsignatura INT AUTO_INCREMENT,
    nombreAsignatura VARCHAR(45),
    PRIMARY KEY (idAsignatura)
);

-- Crear la tabla 'Temas'.
CREATE TABLE temas (
    idTema INT AUTO_INCREMENT,
    numeroTema INT,
    descripcionTema VARCHAR(45),
    idAsignaturaFK INT,
    PRIMARY KEY (idTema),
    FOREIGN KEY (idAsignaturaFK)
        REFERENCES asignaturas (idAsignatura)
);

-- Modificar la tabla 'Asignaturas'.
-- Añadir al final el campo cursoAsignatura INT
ALTER table asignaturas ADD cursoAsignatura INT;

-- Modificar la tabla 'Temas'.
-- Añadir después de descripcionTema
-- nivelTema INT

ALTER TABLE temas ADD nivelTema INT AFTER descripcionTema; 

-- Insertar datos en la tabla asignaturas
-- insetar 3 registros
INSERT INTO asignaturas VALUES(
null, 'Base de Datos',1
);

SELECT * FROM asignaturas;

INSERT INTO asignaturas VALUES(
null, 'Programación',1
);
INSERT INTO asignaturas VALUES(
null, 'Despliegue de Aplicaciones Web',2
);

SELECT *FROM asignaturas;

-- Insertar Datos en la tabla temas

INSERT INTO temas VALUES(
null,1, 'Introducción a las Bases de Datos Relacionales',
1,1

);

SELECT * FROM temas;





