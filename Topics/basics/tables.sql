use sales;
-- Crear una tabla
CREATE TABLE users (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    lastName VARCHAR(30) NOT NULL,
    email VARCHAR(50) UNIQUE,
    address VARCHAR(100) DEFAULT 'No address'
);

CREATE TABLE products (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description VARCHAR(100),
    price DECIMAL (7, 2),
    quantity INT UNSIGNED
);

CREATE TABLE caballeros (
  caballero_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(30),
  id_armadura INT UNSIGNED REFERENCES armaduras(armadura_id),
  id_rango INT UNSIGNED REFERENCES rangos(rango_id),
  id_signo INT UNSIGNED REFERENCES signos(signo_id),
  id_ejercito INT UNSIGNED REFERENCES ejercitos(ejercito_id),
  id_pais INT UNSIGNED REFERENCES paises(pais_id)
);

CREATE TABLE armaduras (
    armadura_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);
CREATE TABLE rangos (
    rango_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);
CREATE TABLE signos (
    signo_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);
CREATE TABLE ejercitos (
    ejercito_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);
CREATE TABLE paises (
    pais_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);

INSERT INTO armaduras VALUES
  (1, "Pegaso"),
  (2, "Dragón"),
  (3, "Cisne"),
  (4, "Andrómeda"),
  (5, "Fénix"),
  (6, "Géminis"),
  (7, "Acuario"),
  (8, "Wyvern"),
  (9, "Dragón Marino"),
  (10, "Bennu");
INSERT INTO rangos VALUES
  (1, "Bronce"),
  (2, "Oro"),
  (3, "Espectro"),
  (4, "Marino");
INSERT INTO signos VALUES
  (1, "Aries"),
  (2, "Tauro"),
  (3, "Géminis"),
  (4, "Cancer"),
  (5, "Leo"),
  (6, "Virgo"),
  (7, "Libra"),
  (8, "Escorpión"),
  (9, "Sagitario"),
  (10, "Capricornio"),
  (11, "Acuario"),
  (12, "Piscis");
INSERT INTO ejercitos VALUES
  (1, "Athena"),
  (2, "Hades"),
  (3, "Poseidón");
INSERT INTO paises VALUES
  (1, "Japón"),
  (2, "Rusia"),
  (3, "Grecia"),
  (4, "Francia"),
  (5, "Inglaterra");

INSERT INTO caballeros VALUES
  (1,"Seiya", 1, 1, 9, 1, 1),
  (2,"Shiryu", 2, 1, 7, 1, 1),
  (3,"Hyoga", 3, 1, 11, 1, 2),
  (4,"Shun", 4, 1, 6, 1, 1),
  (5,"Ikki", 5, 1, 5, 1, 1),
  (6,"Kanon", 6, 2, 3, 1, 3),
  (7,"Saga", 6, 2, 3, 1, 3),
  (8,"Camus", 7, 2, 11, 1, 4),
  (9,"Rhadamanthys", 8, 3, 8, 2, 5),
  (10,"Kanon", 9, 4, 3, 3, 3),
  (11,"Kagaho", 10, 3, 5, 2, 2);



INSERT INTO products (name, description, price, quantity) VALUES
  ("Computadora", "Macbook Air M2", 29999.99, 5),
  ("Celular", "Nothing Phone 1", 11999.99, 15),
  ("Cámara Web", "Logitech C920", 1500, 13),
  ("Micrófono", "Blue Yeti", 2500, 19),
  ("Audífonos", "Audífonos Bose", 6500, 10);




-- Mostrar tablas
SHOW TABLES;
-- Describe la estructura de una tabla
DESCRIBE users;
-- Eliminar tablas
DROP TABLE caballeros;