/* 1.1 */
SELECT Nombre FROM articulos;
/* 1.2 */
SELECT Nombre, Precio FROM articulos;
/* 1.3 */
SELECT Nombre, Precio FROM articulos WHERE Precio <= 200;
/* 1.4 */
SELECT * FROM articulos WHERE Precio BETWEEN 60 AND 120;
/* 1.5 */
SELECT Nombre, Precio * 166.386 AS 'Precio en pesetas' FROM articulos;
/* 1.6 */
SELECT AVG(Precio) FROM articulos;
/* 1.7 */
SELECT AVG(Precio) FROM articulos WHERE Fabricante = 2;
/* 1.8 */
SELECT COUNT(*) FROM articulos WHERE Precio >= 180;
/* 1.9 */
SELECT Nombre, Precio FROM articulos WHERE Precio >= 180 ORDER BY Precio DESC, Nombre ASC;
/* 1.10 */
SELECT * FROM articulos, fabricantes WHERE articulos.Fabricante = fabricantes.Codigo;
/* 1.11 */
SELECT articulos.Nombre, Precio, fabricantes.Nombre FROM articulos, fabricantes WHERE articulos.Fabricante = fabricantes.Codigo;
/* 1.12 */
SELECT AVG(Precio), Fabricante FROM articulos GROUP BY Fabricante;
/* 1.13 */
SELECT AVG(Precio), fabricantes.Nombre FROM articulos, fabricantes WHERE articulos.Fabricante = fabricantes.Codigo GROUP BY fabricantes.Nombre;
/* 1.14 */
SELECT AVG(Precio), fabricantes.Nombre FROM articulos, fabricantes WHERE articulos.Fabricante = fabricantes.Codigo GROUP BY fabricantes.Nombre HAVING AVG(Precio) >= 150;
/* 1.15 */
SELECT Nombre, Precio FROM articulos WHERE Precio = (SELECT MIN(Precio) FROM articulos);
/* 1.16 */
SELECT a.Nombre, a.Precio, f.Nombre FROM articulos a, fabricantes f WHERE a.Fabricante = f.Codigo AND a.Precio = (SELECT MAX(a.Precio) FROM articulos a WHERE a.Fabricante = f.Codigo);
/* 1.17 */
INSERT INTO articulos (Codigo, Nombre, Precio ,Fabricante) VALUES (11, 'Altavoces', 70, 2);
/* 1.18 */
UPDATE ARTICULOS SET Nombre = 'Impresora Laser' WHERE Codigo = 8;
/* 1.19 */
UPDATE ARTICULOS SET Precio = Precio * 0.9;
/* 1.20 */
UPDATE ARTICULOS SET Precio = Precio - 10 WHERE Precio >= 120;
