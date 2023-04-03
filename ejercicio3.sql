/* 3.1 */
SELECT * FROM almacenes;
/* 3.2 */
SELECT * FROM cajas WHERE Valor > 150;
/* 3.3 */
SELECT DISTINCT Contenido FROM cajas;
/* 3.4 */
SELECT AVG(Valor) FROM cajas;
/* 3.5 */
SELECT Almacen, AVG(Valor) FROM cajas GROUP BY Almacen;
/* 3.6 */
SELECT Almacen, AVG(Valor) FROM cajas GROUP BY Almacen HAVING AVG(Valor) > 150;
/* 3.7 */
SELECT NumReferencia, Lugar FROM almacenes, cajas WHERE almacenes.Codigo = cajas.Almacen;
/* 3.8 */
SELECT Almacen, COUNT(*) FROM cajas GROUP BY Almacen;
/* 3.9 */
SELECT Codigo FROM almacenes WHERE Capacidad < (SELECT COUNT(*) FROM cajas WHERE Almacen = Codigo);
/* 3.10 */
SELECT NumReferencia FROM cajas WHERE Almacen IN (SELECT Codigo FROM almacenes WHERE Lugar = 'Bilbao');
/* 3.11 */
INSERT INTO almacenes(codigo, Lugar, Capacidad) VALUE(6, 'Barcelona', 3);
/* 3.12 */
INSERT INTO cajas VALUE('H5RT', 'Papel', 200, 2);
/* 3.13 */
UPDATE cajas SET Valor = Valor * 0.85;
/* 3.14: En este caso hemos tenido que generar una tabla temporal en la subconsulta, de otra forma nos daria error */
UPDATE cajas SET valor = valor * 0.80 WHERE valor > (SELECT AVG(cajas2.valor) FROM (SELECT * FROM cajas) cajas2);
/* 3.15 */
DELETE FROM cajas WHERE Valor < 100;
/* 3.16 */
DELETE FROM cajas WHERE Almacen IN (SELECT Codigo FROM almacenes WHERE Capacidad < (SELECT COUNT(*) FROM CAJAS WHERE Almacen = Codigo ));
