/* Un índice en una base de datos es como el índice de un libro.
   Facilita la búsqueda rápida de registros en una tabla
*/

-- Las primary key y campos unique crean automaticamente un indice
SHOW INDEX FROM users;
SHOW INDEX FROM caballeros;

-- Crear un indice basico
CREATE INDEX idx_name ON caballeros(nombre);
-- Crear un indice basico alterando la tabla
ALTER TABLE caballeros ADD INDEX idx_pais(pais);

-- Busqueda por el nuevo indice creado
SELECT * FROM caballeros WHERE nombre = 'Seiya';

-- Crear un indice compuesto
CREATE INDEX idx_caballeros ON caballeros(rango, signo);

-- Crear un indice fulltext (Busquedas/filtros)
CREATE FULLTEXT INDEX idx_search_by_rango_armadura_signo ON caballeros(rango, armadura, signo);

-- Esto buscara dentro de armadura, rango y signo la coindicencia con un texto
SELECT * FROM caballeros WHERE MATCH(armadura, rango, signo) AGAINST ('Oro' IN BOOLEAN MODE);

-- Eliminar Indices
DROP INDEX idx_search_by_rango_armadura_signo ON caballeros;
-- Eliminar Constraints
ALTER TABLE caballeros DROP CONSTRAINT armadura;


