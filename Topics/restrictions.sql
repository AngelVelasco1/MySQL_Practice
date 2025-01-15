CREATE TABLE lenguajes
(
    lenguaje_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    lenguaje    VARCHAR(30) NOT NULL
);
INSERT INTO lenguajes (lenguaje)
VALUES ("JavaScript"),
       ("PHP"),
       ("Python"),
       ("Ruby"),
       ("JAVA");
INSERT INTO frameworks (framework, lenguaje)
VALUES ("React", 1),
       ("Angular", 1),
       ("Vue", 1),
       ("Svelte", 1),
       ("Laravel", 2),
       ("Symfony", 2),
       ("Flask", 3),
       ("Django", 3),
       ("On Rails", 4);
DROP TABLE frameworks;
DESCRIBE frameworks;
SELECT *
FROM lenguajes;
truncate table lenguajes;

/* RESTRICCIONES SIMPLES EN DELETE Y UPDATE (ON DELETE, ON UPDATE) */
/* Definen como se deben manejar los datos relacionados en la tablas hijas cuando ocurren cambios en la tabla padre */

-- CASCADE: Los cambios en la tabla padre se reflejan en la tabla hijas
CREATE TABLE frameworks
(
    framework_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    framework    VARCHAR(30) NOT NULL,
    lenguaje     INT UNSIGNED,
    FOREIGN KEY (lenguaje) REFERENCES lenguajes (lenguaje_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
DELETE
FROM lenguajes
WHERE lenguaje_id = 3; -- Ya podemos eliminar un lenguaje con frameworks relacionados
UPDATE lenguajes
SET lenguaje_id = 13
WHERE lenguaje_id = 3;
-- Al actualizar el id del lenguaje tambien se actualizara en la tabla hija

-- SET NULL: Establece como NULL los valores de las foraneas cuando ocurren cambios en la tabla padre
CREATE TABLE frameworks
(
    framework_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    framework    VARCHAR(30) NOT NULL,
    lenguaje     INT UNSIGNED,
    FOREIGN KEY (lenguaje) REFERENCES lenguajes (lenguaje_id)
        ON DELETE SET NULL
);
DELETE
FROM lenguajes
WHERE lenguaje_id = 1; -- Los valores de las foraneas en los frameworks con lenguaje 1 sera NULL
SELECT *
FROM lenguajes l
         RIGHT JOIN frameworks f
                    ON l.lenguaje_id = f.lenguaje;

-- SET DEFAULT(NO SOPORTA MYSQL): Establece los valores de las foraneas con un valor predeterminado luego de algun cambio en la tabla padre
-- RESTRICT(VALOR POR DEFECTO): Impide cualquier cambio en la tabla padre si existen relaciones con alguna tabla hija

/* Restricciones Multiples */
CREATE TABLE entornos
(
    entorno_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    entorno    VARCHAR(30) NOT NULL
);
INSERT INTO entornos (entorno)
VALUES ("Frontend"),
       ("Backend");

CREATE TABLE frameworks
(
    framework_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    framework    VARCHAR(30) NOT NULL,
    lenguaje     INT UNSIGNED,
    entorno      INT UNSIGNED,
    FOREIGN KEY (lenguaje) REFERENCES lenguajes (lenguaje_id)
        ON DELETE RESTRICT ON UPDATE CASCADE, -- Restricciones para lenguajes
    FOREIGN KEY (entorno) REFERENCES entornos (entorno_id)
        ON DELETE RESTRICT ON UPDATE CASCADE  -- Restricciones para entornos
);

INSERT INTO frameworks (framework, lenguaje, entorno)
VALUES ("React", 1, 1),
       ("Angular", 1, 1),
       ("Vue", 1, 1),
       ("Svelte", 1, 1),
       ("Laravel", 2, 2),
       ("Symfony", 2, 2),
       ("Flask", 3, 2),
       ("Django", 3, 2);

DELETE
FROM entornos
WHERE entorno_id = 1;

ALTER TABLE frameworks
    ADD COLUMN entorno INT UNSIGNED,
    ADD CONSTRAINT fk_entorno FOREIGN KEY (entorno) REFERENCES entornos (entorno_id);