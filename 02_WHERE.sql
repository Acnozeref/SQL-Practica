/*
==================================================
TEMA 02: WHERE
==================================================

Descripción:
WHERE permite filtrar registros mediante condiciones.

Sintaxis:

SELECT columnas
FROM tabla
WHERE condicion;

*/

-- Consultar empleados mayores de 25 años.
SELECT *
FROM empleados
WHERE edad > 25;

-- Consulta empleados menores o iguales a 26 años.
SELECT *
FROM empleados
WHERE edad <= 26;

-- Consulta empleados puesto diferentes de Desarrollador.
SELECT *
FROM empleados
WHERE puesto <> 'Desarrollador';

-- Empleados mayores a 25 Y salario menor a 25 mil.
SELECT *
FROM empleados
WHERE edad > 25 AND salario < 25000;

-- Empleados menores a 25 O salario mayor a 25 mil.
SELECT *
FROM empleados
WHERE edad < 25 OR salario > 25000;

-- Combinacion de Operadores Logicos.
SELECT *
FROM empleados
WHERE edad > 25
AND (puesto = 'Analista' OR puesto = 'Desarrollador');

-- Permite comprobar si un valor coincide con cualquiera de varios valores,
-- evitando escribir múltiples condiciones OR

SELECT *
FROM empleados
WHERE puesto IN ('Analista', 'Desarrollador');