CREATE TABLE empleados (
    id INTEGER,
    nombre VARCHAR(50),
    edad INTEGER,
    puesto VARCHAR(50),
    salario DECIMAL(10,2)
);

INSERT INTO empleados (id, nombre, edad, puesto, salario)
VALUES
(1, 'Carlos', 25, 'Desarrollador', 18000.00),
(2, 'Ana', 30, 'Analista', 22000.00),
(3, 'Luis', 22, 'Soporte', 14000.00),
(4, 'Maria', 28, 'Desarrollador', 20000.00),
(5, 'Pedro', 35, 'Administrador', 28000.00),
(6, 'Laura', 26, 'Analista', 19000.00);