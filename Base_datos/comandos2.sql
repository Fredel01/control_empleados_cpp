-- Volcando datos para la tabla control_horario.empleados: ~9 rows (aproximadamente)v
INSERT INTO `empleados` (`id`, `Personas_id`, `cargo`) VALUES
	(1, 5, 'Limpieza'),
	(2, 1, 'Inspector'),
	(3, 4, 'Cocinero'),
	(4, 3, 'Camarero'),
	(5, 5, 'Chef'),
	(6, 6, 'Limpieza'),
	(7, 33, 'Cobrador'),
	(8, 22, 'Repartidor'),
	(11, 11, 'Repartidor');
-- Volcando estructura para tabla control_horario.personas
INSERT INTO `personas` (`id`, `nombre`, `edad`, `genero`) VALUES
	(1, 'Guadalupe Orellana', 67, 'Femenino'),
	(2, 'Leopoldo Moran', 72, 'Masculino'),
	(3, 'Irlanda Arrollo', 71, 'Femenino'),
	(4, 'Fredy Avila', 45, 'Masculino'),
	(5, 'Rosivel Ramos', 41, 'Femenino'),
	(6, 'Rebeka Moran', 12, 'Femenino'),
	(11, 'Fredy Moran', 18, 'Masculino'),
	(22, 'Mario Cortez', 21, 'No binario'),
	(33, 'Jimmy Alvarado', 22, 'Masculino');
-- Volcando datos para la tabla control_horario.personas: ~9 rows (aproximadamente)
INSERT INTO `registros` (`id`, `Empleados_id`, `Hora_entrada`, `Hora_salida`, `Fecha`) VALUES
	(11, 11, '09:00:00', '17:00:00', '2025-04-08'),
	(22, 4, '09:00:00', '17:00:00', '2025-01-09'),
	(33, 3, '09:00:00', '17:00:00', '2025-03-16'),
	(44, 1, '10:00:00', '18:00:00', '2025-04-07'),
	(55, 2, '12:00:00', '20:00:00', '2025-04-06'),
	(66, 6, '09:00:00', '18:00:00', '2025-04-09'),
	(77, 11, '09:00:00', '18:00:00', '2025-04-07'),
	(88, 5, '08:00:00', '17:00:00', '2025-04-07'),
	(99, 7, '09:00:00', '18:00:00', '2025-04-08');