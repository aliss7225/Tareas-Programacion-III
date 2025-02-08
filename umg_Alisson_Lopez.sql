-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-02-2025 a las 19:17:03
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
-- Base de datos: `umg`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `carnet_alumno` varchar(15) NOT NULL,
  `nombre_alumno` varchar(45) DEFAULT NULL,
  `direccion_alumno` varchar(45) DEFAULT NULL,
  `telefono_alumno` varchar(45) DEFAULT NULL,
  `email_alumno` varchar(45) DEFAULT NULL,
  `estatus_alumno` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`carnet_alumno`, `nombre_alumno`, `direccion_alumno`, `telefono_alumno`, `email_alumno`, `estatus_alumno`) VALUES
('423', 'Abigail', '15-33 zona 7', '36499628', 'abigail@gmail', '0'),
('4846', 'Rocio', '34-12 zona 17', '36589485', 'rocio@gmail', '0'),
('5584', 'Pablo', '75-35 zona 6', '58896432', 'pablo@gmail', '1'),
('7225', 'Alisson', '85-56 zona 18', '56356256', 'alisson@gmail', '1'),
('736', 'Kathia', '35-7 zona 6', '58964735', 'kathia@gmail', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacioncursosalumnos`
--

CREATE TABLE `asignacioncursosalumnos` (
  `carnet_alumno` varchar(5) NOT NULL,
  `nota_asignacioncursoalumnos` float(10,2) DEFAULT NULL,
  `codigo_carrera` varchar(5) DEFAULT NULL,
  `codigo_sede` varchar(5) NOT NULL,
  `codigo_jornada` varchar(5) NOT NULL,
  `codigo_seccion` varchar(5) NOT NULL,
  `codigo_aula` varchar(5) NOT NULL,
  `codigo_curso` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `asignacioncursosalumnos`
--

INSERT INTO `asignacioncursosalumnos` (`carnet_alumno`, `nota_asignacioncursoalumnos`, `codigo_carrera`, `codigo_sede`, `codigo_jornada`, `codigo_seccion`, `codigo_aula`, `codigo_curso`) VALUES
('423', 100.00, '9959', '4158', '404', '20', '100', '156'),
('4846', 100.00, '9869', '8956', '505', '18', '900', '753'),
('5584', 100.00, '9769', '3462', '606', '15', '300', '943'),
('7225', 100.00, '1365', '1216', '505', '11', '500', '365'),
('736', 100.00, '9359', '1589', '404', '16', '700', '659');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacioncursosmaestros`
--

CREATE TABLE `asignacioncursosmaestros` (
  `codigo_carrera` varchar(5) DEFAULT NULL,
  `codigo_sede` varchar(5) NOT NULL,
  `codigo_jornada` varchar(5) NOT NULL,
  `codigo_seccion` varchar(5) NOT NULL,
  `codigo_aula` varchar(5) NOT NULL,
  `codigo_curso` varchar(5) NOT NULL,
  `codigo_maestro` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `asignacioncursosmaestros`
--

INSERT INTO `asignacioncursosmaestros` (`codigo_carrera`, `codigo_sede`, `codigo_jornada`, `codigo_seccion`, `codigo_aula`, `codigo_curso`, `codigo_maestro`) VALUES
('1365', '1216', '505', '11', '500', '365', '002'),
('9359', '1589', '404', '16', '700', '659', '006'),
('9769', '3462', '606', '15', '300', '943', '008'),
('9869', '8956', '505', '18', '900', '753', '004'),
('9959', '4158', '404', '20', '100', '156', '009');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aulas`
--

CREATE TABLE `aulas` (
  `codigo_aula` varchar(5) NOT NULL,
  `nombre_aula` varchar(45) DEFAULT NULL,
  `estatus_aula` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `aulas`
--

INSERT INTO `aulas` (`codigo_aula`, `nombre_aula`, `estatus_aula`) VALUES
('100', 'E01', '1'),
('300', 'D03', '1'),
('500', 'C05', '1'),
('700', 'E07', '1'),
('900', 'C09', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `codigo_carrera` varchar(5) NOT NULL,
  `nombre_carrera` varchar(45) DEFAULT NULL,
  `codigo_facultad` varchar(5) DEFAULT NULL,
  `estatus_carrera` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`codigo_carrera`, `nombre_carrera`, `codigo_facultad`, `estatus_carrera`) VALUES
('1365', 'Ciencias Juridicas y Sociales', '1', '1'),
('9359', 'Ciencias de la Administración', '1', '1'),
('9769', 'Agronomía', '1', '1'),
('9869', 'Psicologia Industrial', '1', '1'),
('9959', 'Ingenieria en Sistemas', '1', '1    ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `codigo_curso` varchar(5) NOT NULL,
  `nombre_curso` varchar(45) DEFAULT NULL,
  `estatus_curso` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`codigo_curso`, `nombre_curso`, `estatus_curso`) VALUES
('156', 'negocios', '1'),
('365', 'Metodos numericos', '1'),
('659', 'programacion', '1'),
('753', 'estadistica', '1'),
('943', 'electronica', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultad`
--

CREATE TABLE `facultad` (
  `codigo_facultad` varchar(5) NOT NULL,
  `nombre_facultad` varchar(45) DEFAULT NULL,
  `estatus_facultad` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `facultad`
--

INSERT INTO `facultad` (`codigo_facultad`, `nombre_facultad`, `estatus_facultad`) VALUES
('1', 'Ingenieria en Sistemas', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jornadas`
--

CREATE TABLE `jornadas` (
  `codigo_jornada` varchar(5) NOT NULL,
  `nombre_jornada` varchar(45) DEFAULT NULL,
  `estatus_jornada` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `jornadas`
--

INSERT INTO `jornadas` (`codigo_jornada`, `nombre_jornada`, `estatus_jornada`) VALUES
('404', 'Vespertina', '1'),
('505', 'Matutina', '1'),
('606', 'Nocturna', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestros`
--

CREATE TABLE `maestros` (
  `codigo_maestro` varchar(15) NOT NULL,
  `nombre_maestro` varchar(45) DEFAULT NULL,
  `direccion_maestro` varchar(45) DEFAULT NULL,
  `telefono_maestro` varchar(45) DEFAULT NULL,
  `email_maestro` varchar(45) DEFAULT NULL,
  `estatus_maestro` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `maestros`
--

INSERT INTO `maestros` (`codigo_maestro`, `nombre_maestro`, `direccion_maestro`, `telefono_maestro`, `email_maestro`, `estatus_maestro`) VALUES
('002', 'Donald', '15-21 zona 1', '42565866', 'Donald@miumg', '1'),
('004', 'Josue', '28-6 zona 17', '89654763', 'jouse@miumg', '1'),
('006', 'Tatiana', '13-48 zona 4', '33664628', 'tatitana@miumg', '1'),
('008', 'Juan', '23-17 zona 5', '74561638', 'juan@miumg', '1'),
('009', 'Pedro', '65-1 zona 15', '12494796', 'pedro@miumg', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secciones`
--

CREATE TABLE `secciones` (
  `codigo_seccion` varchar(5) NOT NULL,
  `nombre_seccion` varchar(45) DEFAULT NULL,
  `estatus_seccion` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `secciones`
--

INSERT INTO `secciones` (`codigo_seccion`, `nombre_seccion`, `estatus_seccion`) VALUES
('11', 'A', '0'),
('15', 'C', '1'),
('16', 'B', '1'),
('18', 'D', '1'),
('20', 'E', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sedes`
--

CREATE TABLE `sedes` (
  `codigo_sede` varchar(5) NOT NULL,
  `nombre_sede` varchar(45) DEFAULT NULL,
  `estatus_sede` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `sedes`
--

INSERT INTO `sedes` (`codigo_sede`, `nombre_sede`, `estatus_sede`) VALUES
('1216', 'portales', '1'),
('1589', 'naranjo', '1'),
('3462', 'central', '1'),
('4158', 'Xela', '1'),
('8956', 'Peten', '1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`carnet_alumno`);

--
-- Indices de la tabla `asignacioncursosalumnos`
--
ALTER TABLE `asignacioncursosalumnos`
  ADD PRIMARY KEY (`carnet_alumno`,`codigo_sede`,`codigo_jornada`,`codigo_seccion`,`codigo_aula`,`codigo_curso`),
  ADD KEY `codigo_carrera` (`codigo_carrera`),
  ADD KEY `codigo_sede` (`codigo_sede`),
  ADD KEY `codigo_jornada` (`codigo_jornada`),
  ADD KEY `codigo_seccion` (`codigo_seccion`),
  ADD KEY `codigo_aula` (`codigo_aula`),
  ADD KEY `codigo_curso` (`codigo_curso`);

--
-- Indices de la tabla `asignacioncursosmaestros`
--
ALTER TABLE `asignacioncursosmaestros`
  ADD PRIMARY KEY (`codigo_maestro`,`codigo_sede`,`codigo_jornada`,`codigo_seccion`,`codigo_aula`,`codigo_curso`),
  ADD KEY `codigo_carrera` (`codigo_carrera`),
  ADD KEY `codigo_sede` (`codigo_sede`),
  ADD KEY `codigo_jornada` (`codigo_jornada`),
  ADD KEY `codigo_seccion` (`codigo_seccion`),
  ADD KEY `codigo_aula` (`codigo_aula`),
  ADD KEY `codigo_curso` (`codigo_curso`);

--
-- Indices de la tabla `aulas`
--
ALTER TABLE `aulas`
  ADD PRIMARY KEY (`codigo_aula`);

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`codigo_carrera`),
  ADD KEY `codigo_facultad` (`codigo_facultad`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`codigo_curso`);

--
-- Indices de la tabla `facultad`
--
ALTER TABLE `facultad`
  ADD PRIMARY KEY (`codigo_facultad`);

--
-- Indices de la tabla `jornadas`
--
ALTER TABLE `jornadas`
  ADD PRIMARY KEY (`codigo_jornada`);

--
-- Indices de la tabla `maestros`
--
ALTER TABLE `maestros`
  ADD PRIMARY KEY (`codigo_maestro`);

--
-- Indices de la tabla `secciones`
--
ALTER TABLE `secciones`
  ADD PRIMARY KEY (`codigo_seccion`);

--
-- Indices de la tabla `sedes`
--
ALTER TABLE `sedes`
  ADD PRIMARY KEY (`codigo_sede`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asignacioncursosalumnos`
--
ALTER TABLE `asignacioncursosalumnos`
  ADD CONSTRAINT `asignacioncursosalumnos_ibfk_1` FOREIGN KEY (`codigo_carrera`) REFERENCES `carreras` (`codigo_carrera`),
  ADD CONSTRAINT `asignacioncursosalumnos_ibfk_2` FOREIGN KEY (`codigo_sede`) REFERENCES `sedes` (`codigo_sede`),
  ADD CONSTRAINT `asignacioncursosalumnos_ibfk_3` FOREIGN KEY (`codigo_jornada`) REFERENCES `jornadas` (`codigo_jornada`),
  ADD CONSTRAINT `asignacioncursosalumnos_ibfk_4` FOREIGN KEY (`codigo_seccion`) REFERENCES `secciones` (`codigo_seccion`),
  ADD CONSTRAINT `asignacioncursosalumnos_ibfk_5` FOREIGN KEY (`codigo_aula`) REFERENCES `aulas` (`codigo_aula`),
  ADD CONSTRAINT `asignacioncursosalumnos_ibfk_6` FOREIGN KEY (`codigo_curso`) REFERENCES `cursos` (`codigo_curso`),
  ADD CONSTRAINT `asignacioncursosalumnos_ibfk_7` FOREIGN KEY (`carnet_alumno`) REFERENCES `alumnos` (`carnet_alumno`);

--
-- Filtros para la tabla `asignacioncursosmaestros`
--
ALTER TABLE `asignacioncursosmaestros`
  ADD CONSTRAINT `asignacioncursosmaestros_ibfk_1` FOREIGN KEY (`codigo_maestro`) REFERENCES `maestros` (`codigo_maestro`),
  ADD CONSTRAINT `asignacioncursosmaestros_ibfk_2` FOREIGN KEY (`codigo_carrera`) REFERENCES `carreras` (`codigo_carrera`),
  ADD CONSTRAINT `asignacioncursosmaestros_ibfk_3` FOREIGN KEY (`codigo_sede`) REFERENCES `sedes` (`codigo_sede`),
  ADD CONSTRAINT `asignacioncursosmaestros_ibfk_4` FOREIGN KEY (`codigo_jornada`) REFERENCES `jornadas` (`codigo_jornada`),
  ADD CONSTRAINT `asignacioncursosmaestros_ibfk_5` FOREIGN KEY (`codigo_seccion`) REFERENCES `secciones` (`codigo_seccion`),
  ADD CONSTRAINT `asignacioncursosmaestros_ibfk_6` FOREIGN KEY (`codigo_aula`) REFERENCES `aulas` (`codigo_aula`),
  ADD CONSTRAINT `asignacioncursosmaestros_ibfk_7` FOREIGN KEY (`codigo_curso`) REFERENCES `cursos` (`codigo_curso`);

--
-- Filtros para la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD CONSTRAINT `carreras_ibfk_1` FOREIGN KEY (`codigo_facultad`) REFERENCES `facultad` (`codigo_facultad`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
