use sales;
/* Las vistas son muy usadas en reportes ya que son mas faciles de acceder
   y usar */

-- Crear vistas
CREATE VIEW view_caballeros AS
SELECT c.caballero_id,
       c.nombre,
       a.nombre as armadura,
       r.nombre as rango,
       s.nombre as signo,
       e.nombre as ejercito,
       p.nombre as pais
FROM caballeros c
         INNER JOIN armaduras a ON a.armadura_id = c.id_armadura
         INNER JOIN rangos r ON r.rango_id = c.id_rango
         INNER JOIN signos s ON s.signo_id = c.id_signo
         INNER JOIN ejercitos e ON e.ejercito_id = c.id_ejercito
         INNER JOIN paises p ON p.pais_id = c.id_pais;

-- Usar vista
SELECT *
FROM view_caballeros;

-- Eliminar vista
DROP VIEW view_caballeros;

-- Ver vistas creadas
SHOW FULL TABLES IN sales WHERE TABLE_TYPE LIKE 'VIEW';