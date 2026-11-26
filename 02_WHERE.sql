
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

Objetivo:
Aprender a recuperar registros específicos mediante
operadores de comparación, operadores lógicos y
patrones de búsqueda.

*/


-- ================================================
-- 1. OPERADORES DE COMPARACIÓN
-- ================================================

-- Igual a (=)
SELECT *
FROM empleados
WHERE edad = 30;

-- Mayor que (>)
SELECT *
FROM empleados
WHERE edad > 25;

-- Menor que (<)
SELECT *
FROM empleados
WHERE edad < 25;

-- Mayor o igual que (>=)
SELECT *
FROM empleados
WHERE edad >= 30;

-- Menor o igual que (<=)
SELECT *
FROM empleados
WHERE edad <= 26;

-- Diferente de (<>)
SELECT *
FROM empleados
WHERE puesto <> 'Desarrollador';


-- ================================================
-- 2. OPERADORES LÓGICOS
-- ================================================

-- AND: todas las condiciones deben cumplirse.
SELECT *
FROM empleados
WHERE edad > 25 AND salario < 25000;

-- OR: al menos una condición debe cumplirse.
SELECT *
FROM empleados
WHERE edad < 25 OR salario > 25000;

-- Combinación de operadores lógicos.
-- Los paréntesis permiten agrupar condiciones.
SELECT *
FROM empleados
WHERE edad > 25
AND (puesto = 'Analista' OR puesto = 'Desarrollador');


-- ================================================
-- 3. OPERADORES IN Y NOT IN
-- ================================================

-- IN: busca coincidencias entre varios valores.
-- Evita escribir múltiples condiciones OR.

SELECT *
FROM empleados
WHERE puesto IN ('Analista', 'Desarrollador');

-- NOT IN: excluye los valores especificados.

SELECT *
FROM empleados
WHERE puesto NOT IN ('Analista', 'Desarrollador');


-- ================================================
-- 4. OPERADOR BETWEEN
-- ================================================

-- Busca valores dentro de un intervalo.
-- Incluye ambos extremos del intervalo.

SELECT *
FROM empleados
WHERE salario BETWEEN 15000 AND 22000;

-- Equivalente utilizando operadores de comparación.

SELECT *
FROM empleados
WHERE salario >= 15000 AND salario <= 22000;


-- ================================================
-- 5. OPERADOR LIKE
-- ================================================

-- Permite buscar coincidencias mediante patrones
-- de texto.

-- Comodines:
-- % = Cero o más caracteres.
-- _ = Exactamente un carácter.

-- Nombres que comienzan con A.
SELECT *
FROM empleados
WHERE nombre LIKE 'A%';

-- Nombres que terminan en a.
SELECT *
FROM empleados
WHERE nombre LIKE '%a';

-- Nombres que contienen r.
SELECT *
FROM empleados
WHERE nombre LIKE '%r%';

-- Busca un carácter seguido de "uis".
SELECT *
FROM empleados
WHERE nombre LIKE '_uis';


-- ================================================
-- 6. OPERADOR NOT LIKE
-- ================================================

-- Excluye coincidencias con un patrón.

SELECT *
FROM empleados
WHERE nombre NOT LIKE 'A%';


-- ================================================
-- 7. OPERADOR ILIKE (POSTGRESQL)
-- ================================================

-- Similar a LIKE, pero no distingue entre
-- mayúsculas y minúsculas.

SELECT *
FROM empleados
WHERE nombre ILIKE 'm%';


-- ================================================
-- 8. OPERADORES IS NULL E IS NOT NULL
-- ================================================

-- NULL representa la ausencia de un valor.
-- No equivale a cero ni a una cadena vacía.

-- IS NULL:
-- Busca registros donde una columna no tiene valor.

SELECT *
FROM empleados
WHERE salario IS NULL;

-- IS NOT NULL:
-- Busca registros donde una columna sí tiene valor.

SELECT *
FROM empleados
WHERE salario IS NOT NULL;

-- IMPORTANTE:
-- No utilizar = NULL o <> NULL.
-- Para comprobar valores nulos se utiliza
-- IS NULL o IS NOT NULL.
