-- Active: 1690402556175@@127.0.0.1@3306@practica
SHOW turnos_medicos; 
CREATE TABLE usuarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(250) NOT NULL,
    edad INT NOT NULL
);
CREATE TABLE turnos_medicos (
    id_turno INT PRIMARY KEY AUTO_INCREMENT,
    nombre_profesional VARCHAR(250) NOT NULL,
    id_usuario INT,
    motivo VARCHAR(255) NOT NULL,
    fecha DATETIME
);

ALTER TABLE turnos_medicos ADD FOREIGN KEY (id_usuario) REFERENCES usuarios(id);

INSERT INTO turnos_medicos (nombre_profesional, id_usuario, motivo, fecha) VALUES("Juan Peralta", 5, "Afixia por bollo de mierda", "2023-07-28 15:30:00");
INSERT INTO usuarios (nombre, edad) VALUES("Diego Norrea", 25);
INSERT INTO usuarios (nombre, edad) VALUES("Diego PENE", 25);
INSERT INTO usuarios (nombre, edad) VALUES("Diego JUAN", 25);
INSERT INTO usuarios (nombre, edad) VALUES("Diego MARTA", 25);
INSERT INTO usuarios (nombre, edad) VALUES("Diego GEY", 25);
