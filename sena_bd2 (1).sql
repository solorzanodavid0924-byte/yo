-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-11-2026 a las 21:31:33
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sena_bd2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_administrativos`
--

CREATE TABLE `tb_administrativos` (
  `id_admin` int(11) NOT NULL,
  `nombre_admin` varchar(50) DEFAULT NULL,
  `documento` int(11) DEFAULT NULL,
  `telefono_ad` bigint(20) DEFAULT NULL,
  `dependencia` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_administrativos`
--

INSERT INTO `tb_administrativos` (`id_admin`, `nombre_admin`, `documento`, `telefono_ad`, `dependencia`) VALUES
(1, 'Ana Lopez', 1001001001, 3111234567, 'Administracion'),
(2, 'Jorge Diaz', 1001001002, 3111234568, 'Bienestar'),
(3, 'Paula Gomez', 1001001003, 3111234569, 'Secretaria'),
(4, 'Miguel Rojas', 1001001004, 3111234570, 'Coordinacion'),
(5, 'Natalia Silva', 1001001005, 3111234571, 'Financiera'),
(6, 'Ricardo Vega', 1001001006, 3111234572, 'Administracion'),
(7, 'Valentina Ruiz', 1001001007, 3111234573, 'Bienestar'),
(8, 'Felipe Ortiz', 1001001008, 3111234574, 'Secretaria'),
(9, 'Daniela Reyes', 1001001009, 3111234575, 'Coordinacion'),
(10, 'Oscar Mendoza', 1001001010, 3111234576, 'Financiera');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_aprendiz`
--

CREATE TABLE `tb_aprendiz` (
  `id_aprendiz` int(11) NOT NULL,
  `nombre_ap` varchar(50) DEFAULT NULL,
  `documento_ap` int(11) DEFAULT NULL,
  `tipo_documento` varchar(12) DEFAULT NULL,
  `correo_ap` varchar(48) DEFAULT NULL,
  `telefono` bigint(11) DEFAULT NULL,
  `id_ficha` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_aprendiz`
--

INSERT INTO `tb_aprendiz` (`id_aprendiz`, `nombre_ap`, `documento_ap`, `tipo_documento`, `correo_ap`, `telefono`, `id_ficha`) VALUES
(1, 'Andres Gomez', 1002003001, 'CC', 'andres@gmail.com', 3201234567, 1),
(2, 'Laura Perez', 1002003002, 'CC', 'laura@gmail.com', 3201234568, 2),
(3, 'Daniel Torres', 1002003003, 'CC', 'daniel@gmail.com', 3201234569, 3),
(4, 'Sofia Ramirez', 1002003004, 'CC', 'sofia@gmail.com', 3201234570, 4),
(5, 'Mateo Castro', 1002003005, 'TI', 'mateo@gmail.com', 3201234571, 5),
(6, 'Valeria Diaz', 1002003006, 'CC', 'valeria@gmail.com', 3201234572, 6),
(7, 'Samuel Rojas', 1002003007, 'TI', 'samuel@gmail.com', 3201234573, 7),
(8, 'Isabella Ruiz', 1002003008, 'CC', 'isabella@gmail.com', 3201234574, 8),
(9, 'Nicolas Herrera', 1002003009, 'CC', 'nicolas@gmail.com', 3201234575, 9),
(10, 'Camila Morales', 1002003010, 'TI', 'camila@gmail.com', 3201234576, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_competencias`
--

CREATE TABLE `tb_competencias` (
  `id_competencias` int(11) NOT NULL,
  `competencias` varchar(55) DEFAULT NULL,
  `codigo_cmp` int(11) DEFAULT NULL,
  `duracion_cmp` int(11) DEFAULT NULL,
  `tipo_cmp` varchar(55) DEFAULT NULL,
  `id_FICHA` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_competencias`
--

INSERT INTO `tb_competencias` (`id_competencias`, `competencias`, `codigo_cmp`, `duracion_cmp`, `tipo_cmp`, `id_FICHA`) VALUES
(1, 'Desarrollo de software', 220501, 240, 'Tecnica', 1),
(2, 'Bases de datos', 220502, 120, 'Tecnica', 2),
(3, 'Programacion web', 220503, 180, 'Tecnica', 3),
(4, 'Ingles tecnico', 220504, 100, 'Transversal', 4),
(5, 'Gestion documental', 220505, 120, 'Tecnica', 5),
(6, 'Matematicas aplicadas', 220506, 80, 'Transversal', 6),
(7, 'Redes informaticas', 220507, 160, 'Tecnica', 7),
(8, 'Etica profesional', 220508, 60, 'Transversal', 8),
(9, 'Seguridad informatica', 220509, 140, 'Tecnica', 9),
(10, 'Emprendimiento', 220510, 80, 'Transversal', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_ficha`
--

CREATE TABLE `tb_ficha` (
  `id_ficha` int(11) NOT NULL,
  `nombre_ficha` int(11) DEFAULT NULL,
  `numero_ficha` int(11) DEFAULT NULL,
  `fecha_inicio_ficha` int(11) DEFAULT NULL,
  `fecha_final_ficcha` int(11) DEFAULT NULL,
  `jornada_ficha` varchar(55) DEFAULT NULL,
  `estado_ficha` varchar(55) DEFAULT NULL,
  `id_instructores` int(11) DEFAULT NULL,
  `id_admin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_ficha`
--

INSERT INTO `tb_ficha` (`id_ficha`, `nombre_ficha`, `numero_ficha`, `fecha_inicio_ficha`, `fecha_final_ficcha`, `jornada_ficha`, `estado_ficha`, `id_instructores`, `id_admin`) VALUES
(1, 1001, 2900001, 20260110, 20271210, 'Manana', 'Activa', 1, 1),
(2, 1002, 2900002, 20260210, 20271210, 'Tarde', 'Activa', 2, 2),
(3, 1003, 2900003, 20260310, 20271210, 'Noche', 'Activa', 3, 3),
(4, 1004, 2900004, 20260410, 20271210, 'Manana', 'Activa', 4, 4),
(5, 1005, 2900005, 20260510, 20271210, 'Tarde', 'Activa', 5, 5),
(6, 1006, 2900006, 20260610, 20271210, 'Noche', 'Activa', 6, 6),
(7, 1007, 2900007, 20260710, 20271210, 'Manana', 'Activa', 7, 7),
(8, 1008, 2900008, 20260810, 20271210, 'Tarde', 'Activa', 8, 8),
(9, 1009, 2900009, 20260910, 20271210, 'Noche', 'Activa', 9, 9),
(10, 1010, 2900010, 20261010, 20271210, 'Manana', 'Activa', 10, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_instructores`
--

CREATE TABLE `tb_instructores` (
  `id_instructores` int(11) NOT NULL,
  `nombre_ins` varchar(55) DEFAULT NULL,
  `documento_ins` varchar(55) DEFAULT NULL,
  `especialidad_ins` int(11) DEFAULT NULL,
  `telefono_ins` bigint(20) DEFAULT NULL,
  `direccion_ins` varchar(55) DEFAULT NULL,
  `correo_ins` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_instructores`
--

INSERT INTO `tb_instructores` (`id_instructores`, `nombre_ins`, `documento_ins`, `especialidad_ins`, `telefono_ins`, `direccion_ins`, `correo_ins`) VALUES
(1, 'Carlos Ramirez', '1020304050', 101, 3101234567, 'Calle 10 # 20-30', 'carlos@gmail.com'),
(2, 'Maria Gonzalez', '1020304051', 102, 3101234568, 'Calle 11 # 21-31', 'maria@gmail.com'),
(3, 'Juan Perez', '1020304052', 103, 3101234569, 'Calle 12 # 22-32', 'juan@gmail.com'),
(4, 'Laura Martinez', '1020304053', 104, 3101234570, 'Calle 13 # 23-33', 'laura@gmail.com'),
(5, 'Andres Torres', '1020304054', 105, 3101234571, 'Calle 14 # 24-34', 'andres@gmail.com'),
(6, 'Diana Castro', '1020304055', 106, 3101234572, 'Calle 15 # 25-35', 'diana@gmail.com'),
(7, 'Pedro Morales', '1020304056', 107, 3101234573, 'Calle 16 # 26-36', 'pedro@gmail.com'),
(8, 'Sofia Herrera', '1020304057', 108, 3101234574, 'Calle 17 # 27-37', 'sofia@gmail.com'),
(9, 'Luis Fernandez', '1020304058', 109, 3101234575, 'Calle 18 # 28-38', 'luis@gmail.com'),
(10, 'Camila Rodriguez', '1020304059', 110, 3101234576, 'Calle 19 # 29-39', 'camila@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_administrativos`
--
ALTER TABLE `tb_administrativos`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indices de la tabla `tb_aprendiz`
--
ALTER TABLE `tb_aprendiz`
  ADD PRIMARY KEY (`id_aprendiz`),
  ADD KEY `fk_APRENDIZ_FICHA` (`id_ficha`);

--
-- Indices de la tabla `tb_competencias`
--
ALTER TABLE `tb_competencias`
  ADD PRIMARY KEY (`id_competencias`),
  ADD KEY `fk_COMPETENCIAS_FICHA` (`id_FICHA`);

--
-- Indices de la tabla `tb_ficha`
--
ALTER TABLE `tb_ficha`
  ADD PRIMARY KEY (`id_ficha`),
  ADD KEY `fk_FICHA_INSTRUCTORES` (`id_instructores`),
  ADD KEY `fk_FICHA_ADMINISTRATIVOS` (`id_admin`);

--
-- Indices de la tabla `tb_instructores`
--
ALTER TABLE `tb_instructores`
  ADD PRIMARY KEY (`id_instructores`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_aprendiz`
--
ALTER TABLE `tb_aprendiz`
  ADD CONSTRAINT `fk_APRENDIZ_FICHA` FOREIGN KEY (`id_ficha`) REFERENCES `tb_ficha` (`id_ficha`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_competencias`
--
ALTER TABLE `tb_competencias`
  ADD CONSTRAINT `fk_COMPETENCIAS_FICHA` FOREIGN KEY (`id_FICHA`) REFERENCES `tb_ficha` (`id_ficha`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_ficha`
--
ALTER TABLE `tb_ficha`
  ADD CONSTRAINT `fk_FICHA_ADMINISTRATIVOS` FOREIGN KEY (`id_admin`) REFERENCES `tb_administrativos` (`id_admin`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_FICHA_INSTRUCTORES` FOREIGN KEY (`id_instructores`) REFERENCES `tb_instructores` (`id_instructores`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
