-- Active: 1732828666533@@127.0.0.1@3306@sales
-- Añadir nueva columna
ALTER TABLE customers ADD COLUMN birthdate DATE;

-- Modificar columna existente
ALTER TABLE customers MODIFY birthdate DATETIME;

ALTER TABLE customers RENAME COLUMN birthdate TO birth;

ALTER TABLE customers DROP COLUMN birth;