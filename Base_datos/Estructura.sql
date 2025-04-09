-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.41 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.10.0.7000
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para control_horario
CREATE DATABASE IF NOT EXISTS `control_horario` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `control_horario`;

-- Volcando estructura para tabla control_horario.empleados
CREATE TABLE IF NOT EXISTS `empleados` (
  `id` int NOT NULL,
  `Personas_id` int DEFAULT NULL,
  `cargo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_empleados_personas` (`Personas_id`),
  CONSTRAINT `FK_empleados_personas` FOREIGN KEY (`Personas_id`) REFERENCES `personas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla control_horario.empleados: ~0 rows (aproximadamente)
REPLACE INTO `empleados` (`id`, `Personas_id`, `cargo`) VALUES
	(11, 11, 'Repartidor');

-- Volcando estructura para tabla control_horario.personas
CREATE TABLE IF NOT EXISTS `personas` (
  `id` int NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `genero` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla control_horario.personas: ~0 rows (aproximadamente)
REPLACE INTO `personas` (`id`, `nombre`, `edad`, `genero`) VALUES
	(11, 'Fredy Moran', 18, 'Masculino'),
	(22, 'Mario Cortez', 21, 'No binario');

-- Volcando estructura para tabla control_horario.registros
CREATE TABLE IF NOT EXISTS `registros` (
  `id` int NOT NULL,
  `Empleados_id` int DEFAULT NULL,
  `Hora_entrada` time DEFAULT NULL,
  `Hora_salida` time DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_registros` (`Empleados_id`),
  CONSTRAINT `fk_registros` FOREIGN KEY (`Empleados_id`) REFERENCES `empleados` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla control_horario.registros: ~0 rows (aproximadamente)
REPLACE INTO `registros` (`id`, `Empleados_id`, `Hora_entrada`, `Hora_salida`, `Fecha`) VALUES
	(11, 11, '23:21:32', '14:21:36', '2025-04-08');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
