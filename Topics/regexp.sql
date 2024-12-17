/* Regexp son expresiones que nos permiten realizar busquedas avanzadas
    y patrones complejos dentro de textos */

/* ^ Representa el inicio de la cadena*/
SELECT * FROM products WHERE name REGEXP '^[ab]'; # Productos que empiecen con a o b

/* $ Representa el final de la cadena */
SELECT * FROM products WHERE name REGEXP 'dora$'; # Productos que terminen en dora

/* [] Toma la coincidencia con cualquier caracter dentro de ellos */
SELECT * FROM products WHERE description REGEXP '[0-9]'; # Descripciones que contengan numeros

/* NOT REGEXP (Niega la expresion) */
SELECT * FROM products WHERE name NOT REGEXP 'dora$';

/* Reemplaza algo por otra cosa en un texto
(TEXTO, ELEMENTO DEL TEXTO A REEMPLAZAR, ELEMENTO QUE REEMPLAZA) */
SELECT REGEXP_REPLACE(description, ' ', '-') AS withoutSpaces from products;




