USE SALES;

SELECT nombre, (SELECT COUNT(*) FROM caballeros c WHERE c.id_rango = s.signo_id)
FROM signos s;

SELECT nombre, (SELECT COUNT(*) FROM caballeros c WHERE c.id_rango = s.signo_id)
FROM signos s;
SELECT nombre, (SELECT COUNT(*) FROM caballeros c WHERE c.id_armadura = a.armadura_id)
FROM armaduras a;