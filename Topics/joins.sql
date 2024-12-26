use northwaight;
/* Inner Join con ON para unir y traer solo las coincidencias de dos tablas */
SELECT FirstName, RewardID, Quantity, Date  FROM employees
INNER JOIN rewards ON employees.EmployeeID = rewards.EmployeeID;

/* Left Join permite traer las filas de la primera tabla y las partes de la otra que cumpla la condicion */
SELECT FirstName, RewardID, Quantity, Date  FROM employees
LEFT JOIN rewards ON employees.EmployeeID = rewards.EmployeeID;

/*  Right Join permite traer las filas de la segunda tabla y las partes de la otra que cumpla la condicion */
SELECT FirstName, RewardID, Quantity, Date  FROM employees
RIGHT JOIN rewards ON employees.EmployeeID = rewards.EmployeeID

-- Full Join devuelve todas las filas de ambas tablas, incluyendo las que no coinciden.
SELECT FirstName, RewardID, Quantity, Date  FROM employees
LEFT JOIN rewards ON employees.EmployeeID = rewards.EmployeeID
UNION
SELECT FirstName, RewardID, Quantity, Date  FROM employees
RIGHT JOIN rewards ON employees.EmployeeID = rewards.EmployeeID
USE sales;

-- LEFT JOIN
SELECT * FROM caballeros c
LEFT JOIN signos s ON c.id_signo = s.signo_id;

-- RIGHT JOIN
SELECT * FROM caballeros c
RIGHT JOIN signos s ON c.id_signo = s.signo_id;

-- INNER JOIN
SELECT * FROM caballeros c
INNER JOIN signos s ON c.id_signo = s.signo_id;

-- FULL JOIN (No soportado en mysql, necesitas UNIR un left y right)
SELECT * FROM caballeros c
LEFT JOIN signos s ON c.id_signo = s.signo_id
UNION
SELECT * FROM caballeros c
RIGHT JOIN signos s ON c.id_signo = s.signo_id;

-- JOINS en multiples tablas
SELECT c.caballero_id, c.nombre, a.nombre as armadura, r.nombre as rango, s.nombre as signo, e.nombre as ejercito, p.nombre as pais FROM caballeros c
INNER JOIN armaduras a ON a.armadura_id = c.id_armadura
INNER JOIN rangos r ON r.rango_id = c.id_rango
INNER JOIN signos s ON s.signo_id = c.id_signo
INNER JOIN ejercitos e ON e.ejercito_id = c.id_ejercito
INNER JOIN paises p  ON p.pais_id = c.id_pais;