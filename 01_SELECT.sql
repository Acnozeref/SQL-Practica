
/*
==================================================
TEMA 01: SELECT
==================================================

Descripción:
SELECT permite consultar y recuperar información.

Objetivo:
Aprender a utilizar SELECT para obtener datos.

*/

-- ================================================
-- 1. SELECT básico
-- ================================================

-- Mostrar un mensaje
SELECT 'Hola, PostgreSQL';

-- Realizar operaciones matemáticas
SELECT 10 + 5;

-- Consultar la fecha actual
SELECT CURRENT_DATE;


-- ================================================
-- 2. SELECT con alias
-- ================================================

-- AS permite asignar un nombre a una columna.

SELECT 10 + 5 AS resultado;

SELECT CURRENT_DATE AS fecha_actual;
