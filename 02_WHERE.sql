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