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