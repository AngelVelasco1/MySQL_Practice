USE sales;
-- Añadir nueva columna
ALTER TABLE customers ADD COLUMN birthdate DATE;
ALTER TABLE users ADD COLUMN age INT;
-- Modificar columna existente
ALTER TABLE customers MODIFY birthdate DATETIME;

-- Renombrar Columna existente
ALTER TABLE customers RENAME COLUMN birthdate TO birth;

-- Eliminar columna
ALTER TABLE customers DROP COLUMN birth;