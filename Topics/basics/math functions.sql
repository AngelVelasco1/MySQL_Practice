use sales;
/* Funciones Matematicas */

SELECT MOD(5, 2); # Modulo

SELECT CEILING(7.4); # Redondeo hacia arriba
SELECT FLOOR(7.4); # Redondeo hacia abajo
SELECT ROUND(7.49); # Redondeo clasico

SELECT POWER(2, 3); # Potenciacion (base, potencia)
SELECT SQRT(64); # Raiz cuadrada

/* Columnas calculadas */
SELECT name, (price * quantity) AS Earns FROM products;


