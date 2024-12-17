USE sales;

SELECT LOWER(name) from products;
SELECT LCASE(name) from products;
SELECT UPPER(name) from products;
SELECT UCASE(name) from products;

SELECT LEFT(price, 4) from products;
SELECT RIGHT(price, 2) from products;

SELECT LENGTH(description) from products;

SELECT REPEAT(name, 2) from products;
SELECT REVERSE(name) from products;
SELECT REPLACE(description, ' ', '-') from products;
SELECT LTRIM('  Hola hp espacio izquierdo      ') AS withoutLeftSpaces;
SELECT RTRIM('    Hola hp espacio derecho ') AS withoutRightSpaces;
SELECT TRIM('   Hola hps espacios         ') AS withoutSpaces;

# Concatena textos
SELECT CONCAT(name, ' ', description) FROM products;
# Agrega algo entre cada elemento concatenado
SELECT CONCAT_WS('/', name, description, price) from products;