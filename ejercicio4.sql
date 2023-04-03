/* 4.1 */
SELECT nombre FROM peliculas;
/* 4.2 */
SELECT DISTINCT CalificacionEdad FROM peliculas;
/* 4.3 */
SELECT * FROM peliculas WHERE CalificacionEdad IS NULL;
/* 4.4 */
SELECT * FROM salas WHERE pelicula IS NULL;
/* 4.5 */
SELECT s.CODIGO, s.NOMBRE, s.PELICULA AS 'Codigo Pelicula', p.NOMBRE AS 'Nombre Pelicula', p.CALIFICACIONEDAD FROM salas s LEFT JOIN peliculas p ON s.Pelicula = p.Codigo;
/* 4.6 */
SELECT p.CODIGO AS 'Codigo Pelicula', p.NOMBRE AS 'Nombre Pelicula', p.CALIFICACIONEDAD, s.CODIGO AS 'Codigo Sala', s.NOMBRE AS 'Nombre Sala' FROM salas s RIGHT JOIN peliculas p ON s.Pelicula = p.Codigo;
/* 4.7 */
SELECT peliculas.Nombre FROM salas RIGHT JOIN peliculas ON salas.Pelicula = peliculas.Codigo WHERE salas.Pelicula IS NULL;
/* 4.8 */
INSERT INTO peliculas(Codigo, Nombre, CalificacionEdad) VALUES(10, 'Uno, Dos, Tres', 7);
/* 4.9 */
UPDATE peliculas SET CalificacionEdad = 13 WHERE CalificacionEdad IS NULL;
/* 4.10 */
DELETE FROM salas WHERE Pelicula IN (SELECT Codigo FROM peliculas WHERE CalificacionEdad = 'PG');
