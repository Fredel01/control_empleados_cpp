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

-- Volcando estructura para tabla control_horario.personas
CREATE TABLE IF NOT EXISTS `personas` (
  `id` int NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `genero` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
