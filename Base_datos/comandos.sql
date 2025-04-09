/* Delimitador cambiado a ; */
/* Conectando a 127.0.0.1 por MariaDB or MySQL (TCP/IP), usuario root, usando contraseña: Yes ... */
SELECT CONNECTION_ID();
SHOW VARIABLES;
/* Juego de caracteres: utf8mb4 */
SHOW /*!50002 GLOBAL */ STATUS;
SELECT NOW();
/* Conectado. ID de Hilo: 51 */
/* Reading function definitions from C:\Users\elian\Documents\HeidiSQL\functions-mysql8.ini */
SHOW TABLES FROM `information_schema`;
SHOW DATABASES;
SHOW OPEN TABLES FROM control_horario WHERE `in_use`!=0;
USE `control_horario`;
/* Entrando a la sesión "Unnamed" */
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='control_horario';
SHOW TABLE STATUS FROM `control_horario`;
SHOW FUNCTION STATUS WHERE `Db`='control_horario';
SHOW PROCEDURE STATUS WHERE `Db`='control_horario';
SHOW TRIGGERS FROM `control_horario`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='control_horario';
/* Cargando archivo "C:\Users\elian\OneDrive\Escritorio\PROGRAMACION I\Base de dato horario_empleados\Consulta #2.sql" (302 B) en pestaña de consulta #1 */
/* Cargando archivo "C:\Users\elian\OneDrive\Escritorio\Documentos\GitHub\Control_empleados\control_empleados_cpp\Base_datos\Estructura.sql" (3.1 KiB) en pestaña de consulta #2 */
/*  Escalando controles a DPI de pantalla: 100% */
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='control_horario' AND TABLE_NAME='empleados' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `empleados` FROM `control_horario`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='control_horario'   AND TABLE_NAME='empleados'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='control_horario'   AND TABLE_NAME='empleados'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SHOW COLLATION;
SHOW ENGINES;
SHOW CREATE TABLE `control_horario`.`empleados`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='control_horario' AND tc.TABLE_NAME='empleados' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='control_horario' AND TABLE_NAME='personas' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `personas` FROM `control_horario`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='control_horario'   AND TABLE_NAME='personas'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='control_horario'   AND TABLE_NAME='personas'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SHOW CREATE TABLE `control_horario`.`personas`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='control_horario' AND tc.TABLE_NAME='personas' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='control_horario' AND TABLE_NAME='registros' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `registros` FROM `control_horario`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='control_horario'   AND TABLE_NAME='registros'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='control_horario'   AND TABLE_NAME='registros'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SHOW CREATE TABLE `control_horario`.`registros`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='control_horario' AND tc.TABLE_NAME='registros' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
SHOW CREATE TABLE `control_horario`.`empleados`;
SHOW CREATE TABLE `control_horario`.`personas`;
SHOW CREATE TABLE `control_horario`.`registros`;
SELECT * FROM `control_horario`.`registros` LIMIT 1000;
SHOW CREATE TABLE `control_horario`.`empleados`;
SELECT * FROM `control_horario`.`empleados` LIMIT 1000;
SELECT `id`, LEFT(`nombre`, 256) FROM `control_horario`.`personas` GROUP BY `id`, `nombre` ORDER BY `nombre` LIMIT 10000;
SELECT `id`, LEFT(`nombre`, 256) FROM `control_horario`.`personas` GROUP BY `id`, `nombre` ORDER BY `nombre` LIMIT 10000;
SHOW CREATE TABLE `control_horario`.`personas`;
SELECT * FROM `control_horario`.`personas` LIMIT 1000;
UPDATE `control_horario`.`personas` SET `nombre`='Rosivel Ramos', `edad`=41 WHERE  `id`=5;
/* Info: Rows matched: 1  Changed: 1  Warnings: 0 */
SELECT `id`, `nombre`, `edad`, `genero` FROM `control_horario`.`personas` WHERE  `id`=5;
UPDATE `control_horario`.`personas` SET `id`=6 WHERE  `id`=11;
/* Error de SQL (1451): Cannot delete or update a parent row: a foreign key constraint fails (`control_horario`.`empleados`, CONSTRAINT `FK_empleados_personas` FOREIGN KEY (`Personas_id`) REFERENCES `personas` (`id`)) */
UPDATE `control_horario`.`personas` SET `id`=6 WHERE  `id`=11;
/* Error de SQL (1451): Cannot delete or update a parent row: a foreign key constraint fails (`control_horario`.`empleados`, CONSTRAINT `FK_empleados_personas` FOREIGN KEY (`Personas_id`) REFERENCES `personas` (`id`)) */
UPDATE `control_horario`.`personas` SET `id`=6 WHERE  `id`=11;
/* Error de SQL (1451): Cannot delete or update a parent row: a foreign key constraint fails (`control_horario`.`empleados`, CONSTRAINT `FK_empleados_personas` FOREIGN KEY (`Personas_id`) REFERENCES `personas` (`id`)) */
UPDATE `control_horario`.`personas` SET `id`=55 WHERE  `id`=5;
/* Error de SQL (1451): Cannot delete or update a parent row: a foreign key constraint fails (`control_horario`.`empleados`, CONSTRAINT `FK_empleados_personas` FOREIGN KEY (`Personas_id`) REFERENCES `personas` (`id`)) */
UPDATE `control_horario`.`personas` SET `nombre`='Fredy Avila' WHERE  `id`=4;
/* Info: Rows matched: 1  Changed: 1  Warnings: 0 */
SELECT `id`, `nombre`, `edad`, `genero` FROM `control_horario`.`personas` WHERE  `id`=4;
UPDATE `control_horario`.`personas` SET `edad`=45 WHERE  `id`=4;
/* Info: Rows matched: 1  Changed: 1  Warnings: 0 */
SELECT `id`, `nombre`, `edad`, `genero` FROM `control_horario`.`personas` WHERE  `id`=4;
UPDATE `control_horario`.`personas` SET `nombre`='Irlanda Arrollo' WHERE  `id`=3;
/* Info: Rows matched: 1  Changed: 1  Warnings: 0 */
SELECT `id`, `nombre`, `edad`, `genero` FROM `control_horario`.`personas` WHERE  `id`=3;
UPDATE `control_horario`.`personas` SET `edad`=71 WHERE  `id`=3;
/* Info: Rows matched: 1  Changed: 1  Warnings: 0 */
SELECT `id`, `nombre`, `edad`, `genero` FROM `control_horario`.`personas` WHERE  `id`=3;
UPDATE `control_horario`.`personas` SET `nombre`='Leopoldo Moran' WHERE  `id`=2;
/* Info: Rows matched: 1  Changed: 1  Warnings: 0 */
SELECT `id`, `nombre`, `edad`, `genero` FROM `control_horario`.`personas` WHERE  `id`=2;
UPDATE `control_horario`.`personas` SET `edad`=72 WHERE  `id`=2;
/* Info: Rows matched: 1  Changed: 1  Warnings: 0 */
SELECT `id`, `nombre`, `edad`, `genero` FROM `control_horario`.`personas` WHERE  `id`=2;
UPDATE `control_horario`.`personas` SET `nombre`='Guadalupe Orellana', `edad`=67 WHERE  `id`=1;
/* Info: Rows matched: 1  Changed: 1  Warnings: 0 */
SELECT `id`, `nombre`, `edad`, `genero` FROM `control_horario`.`personas` WHERE  `id`=1;
UPDATE `control_horario`.`personas` SET `genero`='Femenino' WHERE  `id`=1;
/* Info: Rows matched: 1  Changed: 1  Warnings: 0 */
SELECT `id`, `nombre`, `edad`, `genero` FROM `control_horario`.`personas` WHERE  `id`=1;
UPDATE `control_horario`.`personas` SET `genero`='Masculino' WHERE  `id`=2;
/* Info: Rows matched: 1  Changed: 1  Warnings: 0 */
SELECT `id`, `nombre`, `edad`, `genero` FROM `control_horario`.`personas` WHERE  `id`=2;
UPDATE `control_horario`.`personas` SET `genero`='Masculino' WHERE  `id`=3;
/* Info: Rows matched: 1  Changed: 1  Warnings: 0 */
SELECT `id`, `nombre`, `edad`, `genero` FROM `control_horario`.`personas` WHERE  `id`=3;
UPDATE `control_horario`.`personas` SET `genero`='Masculino' WHERE  `id`=4;
/* Info: Rows matched: 1  Changed: 1  Warnings: 0 */
SELECT `id`, `nombre`, `edad`, `genero` FROM `control_horario`.`personas` WHERE  `id`=4;
UPDATE `control_horario`.`personas` SET `genero`='Femenino' WHERE  `id`=5;
/* Info: Rows matched: 1  Changed: 1  Warnings: 0 */
SELECT `id`, `nombre`, `edad`, `genero` FROM `control_horario`.`personas` WHERE  `id`=5;
UPDATE `control_horario`.`personas` SET `genero`='Femenino' WHERE  `id`=3;
/* Info: Rows matched: 1  Changed: 1  Warnings: 0 */
SELECT `id`, `nombre`, `edad`, `genero` FROM `control_horario`.`personas` WHERE  `id`=3;
SHOW CREATE TABLE `control_horario`.`empleados`;
SELECT * FROM `control_horario`.`empleados` LIMIT 1000;
UPDATE `control_horario`.`empleados` SET `cargo`='Secretario' WHERE  `id`=1;
/* Info: Rows matched: 1  Changed: 1  Warnings: 0 */
SELECT `id`, `Personas_id`, `cargo` FROM `control_horario`.`empleados` WHERE  `id`=1;
UPDATE `control_horario`.`empleados` SET `cargo`='Presidente' WHERE  `id`=2;
/* Info: Rows matched: 1  Changed: 1  Warnings: 0 */
SELECT `id`, `Personas_id`, `cargo` FROM `control_horario`.`empleados` WHERE  `id`=2;
SELECT `id`, LEFT(`nombre`, 256) FROM `control_horario`.`personas` GROUP BY `id`, `nombre` ORDER BY `nombre` LIMIT 10000;
UPDATE `control_horario`.`empleados` SET `cargo`='Gerente' WHERE  `id`=2;
/* Info: Rows matched: 1  Changed: 1  Warnings: 0 */
SELECT `id`, `Personas_id`, `cargo` FROM `control_horario`.`empleados` WHERE  `id`=2;
UPDATE `control_horario`.`empleados` SET `cargo`='Inspector' WHERE  `id`=2;
/* Info: Rows matched: 1  Changed: 1  Warnings: 0 */
SELECT `id`, `Personas_id`, `cargo` FROM `control_horario`.`empleados` WHERE  `id`=2;
UPDATE `control_horario`.`empleados` SET `cargo`='Cocinero' WHERE  `id`=3;
/* Info: Rows matched: 1  Changed: 1  Warnings: 0 */
SELECT `id`, `Personas_id`, `cargo` FROM `control_horario`.`empleados` WHERE  `id`=3;
UPDATE `control_horario`.`empleados` SET `cargo`='Camarero' WHERE  `id`=4;
/* Info: Rows matched: 1  Changed: 1  Warnings: 0 */
SELECT `id`, `Personas_id`, `cargo` FROM `control_horario`.`empleados` WHERE  `id`=4;
UPDATE `control_horario`.`empleados` SET `cargo`='Chef' WHERE  `id`=5;
/* Info: Rows matched: 1  Changed: 1  Warnings: 0 */
SELECT `id`, `Personas_id`, `cargo` FROM `control_horario`.`empleados` WHERE  `id`=5;
SELECT `id`, LEFT(`nombre`, 256) FROM `control_horario`.`personas` GROUP BY `id`, `nombre` ORDER BY `nombre` LIMIT 10000;
UPDATE `control_horario`.`empleados` SET `cargo`='Camarero' WHERE  `id`=1;
/* Info: Rows matched: 1  Changed: 1  Warnings: 0 */
SELECT `id`, `Personas_id`, `cargo` FROM `control_horario`.`empleados` WHERE  `id`=1;
SELECT * FROM `control_horario`.`empleados` ORDER BY `cargo` ASC LIMIT 1000;
SELECT * FROM `control_horario`.`empleados` ORDER BY `cargo` DESC LIMIT 1000;
SELECT * FROM `control_horario`.`empleados` LIMIT 1000;
SELECT * FROM `control_horario`.`empleados` ORDER BY `cargo` ASC LIMIT 1000;
SELECT * FROM `control_horario`.`empleados` ORDER BY `cargo` DESC LIMIT 1000;
SHOW CREATE TABLE `control_horario`.`personas`;
SELECT * FROM `control_horario`.`personas` LIMIT 1000;
SHOW CREATE TABLE `control_horario`.`registros`;
SELECT * FROM `control_horario`.`registros` LIMIT 1000;
SHOW CREATE TABLE `control_horario`.`personas`;
SELECT * FROM `control_horario`.`personas` LIMIT 1000;
SHOW CREATE TABLE `control_horario`.`empleados`;
SELECT * FROM `control_horario`.`empleados` ORDER BY `cargo` DESC LIMIT 1000;
SELECT * FROM `control_horario`.`empleados` LIMIT 1000;
SELECT * FROM `control_horario`.`empleados` ORDER BY `cargo` ASC LIMIT 1000;
SELECT * FROM `control_horario`.`empleados` ORDER BY `cargo` DESC LIMIT 1000;
SELECT * FROM `control_horario`.`empleados` LIMIT 1000;
SELECT * FROM `control_horario`.`empleados` ORDER BY `cargo` ASC LIMIT 1000;
SELECT * FROM `control_horario`.`empleados` ORDER BY `cargo` DESC LIMIT 1000;
SHOW CREATE TABLE `control_horario`.`personas`;
SELECT * FROM `control_horario`.`personas` LIMIT 1000;
SHOW CREATE TABLE `control_horario`.`registros`;
SELECT * FROM `control_horario`.`registros` LIMIT 1000;
SELECT `id`, LEFT(`cargo`, 256) FROM `control_horario`.`empleados` GROUP BY `id`, `cargo` ORDER BY `cargo` LIMIT 10000;
SELECT `id`, LEFT(`cargo`, 256) FROM `control_horario`.`empleados` GROUP BY `id`, `cargo` ORDER BY `cargo` LIMIT 10000;
INSERT INTO `control_horario`.`registros` (`id`, `Empleados_id`, `Hora_entrada`) VALUES (22, 4, '05:00:00');
SELECT `id`, `Empleados_id`, `Hora_entrada`, `Hora_salida`, `Fecha` FROM `control_horario`.`registros` WHERE  `id`=22;
UPDATE `control_horario`.`registros` SET `Hora_salida`='17:00:00' WHERE  `id`=22;
/* Info: Rows matched: 1  Changed: 1  Warnings: 0 */
SELECT `id`, `Empleados_id`, `Hora_entrada`, `Hora_salida`, `Fecha` FROM `control_horario`.`registros` WHERE  `id`=22;
UPDATE `control_horario`.`registros` SET `Hora_entrada`='09:00:00' WHERE  `id`=22;
/* Info: Rows matched: 1  Changed: 1  Warnings: 0 */
SELECT `id`, `Empleados_id`, `Hora_entrada`, `Hora_salida`, `Fecha` FROM `control_horario`.`registros` WHERE  `id`=22;
UPDATE `control_horario`.`registros` SET `Fecha`='2025-01-09' WHERE  `id`=22;
/* Info: Rows matched: 1  Changed: 1  Warnings: 0 */
SELECT `id`, `Empleados_id`, `Hora_entrada`, `Hora_salida`, `Fecha` FROM `control_horario`.`registros` WHERE  `id`=22;
SELECT `id`, LEFT(`cargo`, 256) FROM `control_horario`.`empleados` GROUP BY `id`, `cargo` ORDER BY `cargo` LIMIT 10000;
INSERT INTO `control_horario`.`registros` (`id`, `Empleados_id`) VALUES (33, 3);
SELECT `id`, `Empleados_id`, `Hora_entrada`, `Hora_salida`, `Fecha` FROM `control_horario`.`registros` WHERE  `id`=33;
UPDATE `control_horario`.`registros` SET `Hora_entrada`='09:00:00', `Hora_salida`='17:00:00' WHERE  `id`=33;
/* Info: Rows matched: 1  Changed: 1  Warnings: 0 */
SELECT `id`, `Empleados_id`, `Hora_entrada`, `Hora_salida`, `Fecha` FROM `control_horario`.`registros` WHERE  `id`=33;
SELECT * FROM `control_horario`.`registros` ORDER BY `Hora_entrada` ASC LIMIT 1000;
SELECT * FROM `control_horario`.`registros` ORDER BY `Hora_entrada` DESC LIMIT 1000;
UPDATE `control_horario`.`registros` SET `Hora_entrada`='09:00:00', `Hora_salida`='17:00:00' WHERE  `id`=11;
/* Info: Rows matched: 1  Changed: 1  Warnings: 0 */
SELECT `id`, `Empleados_id`, `Hora_entrada`, `Hora_salida`, `Fecha` FROM `control_horario`.`registros` WHERE  `id`=11;
UPDATE `control_horario`.`registros` SET `Fecha`='2025-03-16' WHERE  `id`=33;
/* Info: Rows matched: 1  Changed: 1  Warnings: 0 */
SELECT `id`, `Empleados_id`, `Hora_entrada`, `Hora_salida`, `Fecha` FROM `control_horario`.`registros` WHERE  `id`=33;
SELECT `id`, LEFT(`cargo`, 256) FROM `control_horario`.`empleados` GROUP BY `id`, `cargo` ORDER BY `cargo` LIMIT 10000;
SELECT `id`, LEFT(`cargo`, 256) FROM `control_horario`.`empleados` GROUP BY `id`, `cargo` ORDER BY `cargo` LIMIT 10000;
SELECT `id`, LEFT(`cargo`, 256) FROM `control_horario`.`empleados` GROUP BY `id`, `cargo` ORDER BY `cargo` LIMIT 10000;
SELECT `id`, LEFT(`cargo`, 256) FROM `control_horario`.`empleados` GROUP BY `id`, `cargo` ORDER BY `cargo` LIMIT 10000;
INSERT INTO `control_horario`.`registros` (`id`, `Empleados_id`) VALUES (44, 1);
SELECT `id`, `Empleados_id`, `Hora_entrada`, `Hora_salida`, `Fecha` FROM `control_horario`.`registros` WHERE  `id`=44;
UPDATE `control_horario`.`registros` SET `Hora_entrada`='09:00:00' WHERE  `id`=44;
/* Info: Rows matched: 1  Changed: 1  Warnings: 0 */
SELECT `id`, `Empleados_id`, `Hora_entrada`, `Hora_salida`, `Fecha` FROM `control_horario`.`registros` WHERE  `id`=44;
UPDATE `control_horario`.`registros` SET `Hora_entrada`='13:00:00', `Hora_salida`='18:00:00' WHERE  `id`=44;
/* Info: Rows matched: 1  Changed: 1  Warnings: 0 */
SELECT `id`, `Empleados_id`, `Hora_entrada`, `Hora_salida`, `Fecha` FROM `control_horario`.`registros` WHERE  `id`=44;
UPDATE `control_horario`.`registros` SET `Fecha`='2025-04-10' WHERE  `id`=44;
/* Info: Rows matched: 1  Changed: 1  Warnings: 0 */
SELECT `id`, `Empleados_id`, `Hora_entrada`, `Hora_salida`, `Fecha` FROM `control_horario`.`registros` WHERE  `id`=44;
SELECT `id`, LEFT(`cargo`, 256) FROM `control_horario`.`empleados` GROUP BY `id`, `cargo` ORDER BY `cargo` LIMIT 10000;
INSERT INTO `control_horario`.`registros` (`id`, `Empleados_id`, `Hora_entrada`, `Hora_salida`, `Fecha`) VALUES (55, 2, '12:00:00', '20:00:00', '2025-04-06');
SELECT `id`, `Empleados_id`, `Hora_entrada`, `Hora_salida`, `Fecha` FROM `control_horario`.`registros` WHERE  `id`=55;
SHOW CREATE TABLE `control_horario`.`empleados`;
SELECT * FROM `control_horario`.`empleados` ORDER BY `cargo` DESC LIMIT 1000;
SELECT `id`, LEFT(`nombre`, 256) FROM `control_horario`.`personas` GROUP BY `id`, `nombre` ORDER BY `nombre` LIMIT 10000;
SELECT `id`, LEFT(`nombre`, 256) FROM `control_horario`.`personas` GROUP BY `id`, `nombre` ORDER BY `nombre` LIMIT 10000;
SELECT `id`, LEFT(`nombre`, 256) FROM `control_horario`.`personas` GROUP BY `id`, `nombre` ORDER BY `nombre` LIMIT 10000;
UPDATE `control_horario`.`empleados` SET `cargo`='' WHERE  `id`=1;
/* Info: Rows matched: 1  Changed: 1  Warnings: 0 */
SELECT `id`, `Personas_id`, `cargo` FROM `control_horario`.`empleados` WHERE  `id`=1;
DELETE FROM `control_horario`.`empleados` WHERE  `id`=1;
/* Error de SQL (1451): Cannot delete or update a parent row: a foreign key constraint fails (`control_horario`.`registros`, CONSTRAINT `fk_registros` FOREIGN KEY (`Empleados_id`) REFERENCES `empleados` (`id`)) */
SELECT `id`, LEFT(`nombre`, 256) FROM `control_horario`.`personas` GROUP BY `id`, `nombre` ORDER BY `nombre` LIMIT 10000;
SHOW CREATE TABLE `control_horario`.`registros`;
SELECT * FROM `control_horario`.`registros` ORDER BY `Hora_entrada` DESC LIMIT 1000;
SELECT `id`, LEFT(`cargo`, 256) FROM `control_horario`.`empleados` GROUP BY `id`, `cargo` ORDER BY `cargo` LIMIT 10000;
SELECT `id`, LEFT(`cargo`, 256) FROM `control_horario`.`empleados` GROUP BY `id`, `cargo` ORDER BY `cargo` LIMIT 10000;
SELECT `id`, LEFT(`cargo`, 256) FROM `control_horario`.`empleados` GROUP BY `id`, `cargo` ORDER BY `cargo` LIMIT 10000;
SELECT `id`, LEFT(`cargo`, 256) FROM `control_horario`.`empleados` GROUP BY `id`, `cargo` ORDER BY `cargo` LIMIT 10000;
SELECT `id`, LEFT(`cargo`, 256) FROM `control_horario`.`empleados` GROUP BY `id`, `cargo` ORDER BY `cargo` LIMIT 10000;
UPDATE `control_horario`.`registros` SET `Empleados_id`=11 WHERE  `id`=44;
/* Info: Rows matched: 1  Changed: 1  Warnings: 0 */
SELECT `id`, `Empleados_id`, `Hora_entrada`, `Hora_salida`, `Fecha` FROM `control_horario`.`registros` WHERE  `id`=44;
SELECT `id`, LEFT(`cargo`, 256) FROM `control_horario`.`empleados` GROUP BY `id`, `cargo` ORDER BY `cargo` LIMIT 10000;
SELECT `id`, LEFT(`cargo`, 256) FROM `control_horario`.`empleados` GROUP BY `id`, `cargo` ORDER BY `cargo` LIMIT 10000;
SELECT `id`, LEFT(`cargo`, 256) FROM `control_horario`.`empleados` GROUP BY `id`, `cargo` ORDER BY `cargo` LIMIT 10000;
DELETE FROM `control_horario`.`registros` WHERE  `id`=44;
SELECT `id`, LEFT(`cargo`, 256) FROM `control_horario`.`empleados` GROUP BY `id`, `cargo` ORDER BY `cargo` LIMIT 10000;
SELECT `id`, LEFT(`cargo`, 256) FROM `control_horario`.`empleados` GROUP BY `id`, `cargo` ORDER BY `cargo` LIMIT 10000;
SELECT `id`, LEFT(`cargo`, 256) FROM `control_horario`.`empleados` GROUP BY `id`, `cargo` ORDER BY `cargo` LIMIT 10000;
SELECT `id`, LEFT(`cargo`, 256) FROM `control_horario`.`empleados` GROUP BY `id`, `cargo` ORDER BY `cargo` LIMIT 10000;
SHOW CREATE TABLE `control_horario`.`empleados`;
SELECT * FROM `control_horario`.`empleados` ORDER BY `cargo` DESC LIMIT 1000;
SELECT `id`, LEFT(`nombre`, 256) FROM `control_horario`.`personas` GROUP BY `id`, `nombre` ORDER BY `nombre` LIMIT 10000;
SELECT `id`, LEFT(`nombre`, 256) FROM `control_horario`.`personas` GROUP BY `id`, `nombre` ORDER BY `nombre` LIMIT 10000;
UPDATE `control_horario`.`empleados` SET `cargo`='Limpieza' WHERE  `id`=1;
/* Info: Rows matched: 1  Changed: 1  Warnings: 0 */
SELECT `id`, `Personas_id`, `cargo` FROM `control_horario`.`empleados` WHERE  `id`=1;
SHOW CREATE TABLE `control_horario`.`registros`;
SELECT * FROM `control_horario`.`registros` ORDER BY `Hora_entrada` DESC LIMIT 1000;
SELECT `id`, LEFT(`cargo`, 256) FROM `control_horario`.`empleados` GROUP BY `id`, `cargo` ORDER BY `cargo` LIMIT 10000;
INSERT INTO `control_horario`.`registros` (`id`, `Empleados_id`, `Hora_entrada`, `Hora_salida`, `Fecha`) VALUES (44, 1, '10:00:00', '18:00:00', '2025-04-07');
SELECT `id`, `Empleados_id`, `Hora_entrada`, `Hora_salida`, `Fecha` FROM `control_horario`.`registros` WHERE  `id`=44;
SHOW CREATE TABLE `control_horario`.`personas`;
SELECT * FROM `control_horario`.`personas` LIMIT 1000;
SHOW CREATE TABLE `control_horario`.`empleados`;
SELECT * FROM `control_horario`.`empleados` ORDER BY `cargo` DESC LIMIT 1000;
SHOW CREATE TABLE `control_horario`.`personas`;
SELECT * FROM `control_horario`.`personas` LIMIT 1000;
SHOW CREATE TABLE `control_horario`.`registros`;
SELECT * FROM `control_horario`.`registros` ORDER BY `Hora_entrada` DESC LIMIT 1000;
SHOW CREATE TABLE `control_horario`.`personas`;
SELECT * FROM `control_horario`.`personas` LIMIT 1000;
SHOW CREATE TABLE `control_horario`.`empleados`;
SELECT * FROM `control_horario`.`empleados` ORDER BY `cargo` DESC LIMIT 1000;
SELECT * FROM empleados;
/* Filas afectadas: 0  Filas encontradas: 6  Advertencias: 0  Duración para 1 consulta: 0.000 seg. */
SELECT * FROM registros;
/* Filas afectadas: 0  Filas encontradas: 5  Advertencias: 0  Duración para 1 consulta: 0.000 seg. */
SELECT * FROM personas;
/* Filas afectadas: 0  Filas encontradas: 7  Advertencias: 0  Duración para 1 consulta: 0.000 seg. */
SHOW CREATE TABLE `control_horario`.`personas`;