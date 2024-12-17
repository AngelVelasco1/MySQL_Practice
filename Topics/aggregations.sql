use SALES;

/* Funciones de agrupacion */
SELECT MAX(price) FROM products;
SELECT MIN(price) FROM products;
SELECT SUM(quantity) FROM products;
SELECT AVG(price) FROM products;
SELECT COUNT(*) FROM products;


/* GROUP BY (Agrupa por campos los resultados de las funciones de agrupacion) */
SELECT nombre, COUNT(*) FROM caballeros
GROUP BY nombre;

SELECT signo, COUNT(*) FROM caballeros
GROUP BY signo; # Cuantos caballeros existen por cada signo

/* Having (Condiciona los resultados de una funcion de agrypacion) */
SELECT rango, COUNT(*) as Rangos FROM caballeros
GROUP BY rango
HAVING rangos > 2;