/* 2.1 */
SELECT Apellidos FROM empleados;
/* 2.2 */
SELECT DISTINCT Apellidos FROM empleados;
/* 2.3 */
SELECT * FROM empleados WHERE Apellidos = 'Smith';
/* 2.4 */
SELECT * FROM empleados WHERE Apellidos = 'Smith' OR Apellidos = 'Rogers';
/* 2.5 */
SELECT * FROM empleados WHERE Departamento = 14;
/* 2.6 */
SELECT * FROM empleados WHERE Departamento IN (37,77);
/* 2.7 */
SELECT * FROM empleados WHERE Apellidos LIKE 'P%';
/* 2.8 */
SELECT SUM(Presupuesto) FROM departamentos;
/* 2.9 */
SELECT Departamento, COUNT(*) FROM empleados GROUP BY Departamento;
/* 2.10 */
SELECT * FROM empleados, departamentos WHERE empleados.Departamento = departamentos.Codigo;
/* 2.11 */
SELECT e.Nombre, Apellidos, d.Nombre, Presupuesto FROM empleados e, departamentos d WHERE e.Departamento = d.Codigo;
/* 2.12 */
SELECT e.Nombre, Apellidos FROM empleados e, departamentos d WHERE e.Departamento = d.Codigo AND d.Presupuesto > 60000;
/* 2.13 */
SELECT * FROM departamentos WHERE Presupuesto > (SELECT AVG(Presupuesto) FROM departamentos);
/* 2.15 */
INSERT INTO departamentos VALUES ( 11 , 'Calidad' , 40000); INSERT INTO empleados VALUES ('89267109', 'Esther', 'Vázquez', 11);
/* 2.16 */
UPDATE departamentos SET Presupuesto = Presupuesto * 0.9;
/* 2.17 */
UPDATE empleados SET Departamento = 14 WHERE Departamento = 77;
/* 2.18 */
DELETE FROM empleados WHERE Departamento = 14;
/* 2.19 */
DELETE FROM empleados WHERE Departamento IN (SELECT Codigo FROM departamentos WHERE Presupuesto > 60000);
/* 2.20 */
DELETE FROM empleados;
