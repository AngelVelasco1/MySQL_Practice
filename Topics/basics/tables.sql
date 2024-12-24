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
  armadura VARCHAR(30),
  rango VARCHAR(30),
  signo VARCHAR(30),
  ejercito VARCHAR(30),
  pais VARCHAR(30)
);

INSERT INTO products (name, description, price, quantity) VALUES
  ("Computadora", "Macbook Air M2", 29999.99, 5),
  ("Celular", "Nothing Phone 1", 11999.99, 15),
  ("Cámara Web", "Logitech C920", 1500, 13),
  ("Micrófono", "Blue Yeti", 2500, 19),
  ("Audífonos", "Audífonos Bose", 6500, 10);

INSERT INTO caballeros VALUES
  (0,"Seiya","Pegaso","Bronce","Sagitario","Athena","Japón"),
  (0,"Shiryu","Dragón","Bronce","Libra","Athena","Japón"),
  (0,"Hyoga","Cisne","Bronce","Acuario","Athena","Rusia"),
  (0,"Shun","Andromeda","Bronce","Virgo","Athena","Japón"),
  (0,"Ikki","Fénix","Bronce","Leo","Athena","Japón"),
  (0,"Kanon","Géminis","Oro","Géminis","Athena","Grecia"),
  (0,"Camus","Acuario","Oro","Acuario","Athena","Francia"),
  (0,"Rhadamanthys","Wyvern","Espectro","Escorpión","Hades","Inglaterra"),
  (0,"Kanon","Dragón Marino","Marino","Géminis","Poseidón","Grecia"),
  (0,"Kagaho","Bennu","Espectro","Leo","Hades","Rusia");

INSERT INTO caballeros VALUES(0, "seiyo", "pen", "Bronce", "Geminis Oro", "Athena", "Rusia");
-- Mostrar tablas
SHOW TABLES;

/* Describe la estructura de una tabla*/
DESCRIBE users;

/* Eliminar tablas */
DROP TABLE users;