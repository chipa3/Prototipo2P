-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-10-2020 a las 18:52:42
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `siu`
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
  `email_alumno` varchar(20) DEFAULT NULL,
  `estatus_alumno` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`carnet_alumno`, `nombre_alumno`, `direccion_alumno`, `telefono_alumno`, `email_alumno`, `estatus_alumno`) VALUES
('1', 'JOSE', 'CIUDAD', '41023933', 'HOTMAIL', '0'),
('2', 'CARLOS ', 'CIUDAD', '14256396', 'HOTMAIL', '0'),
('3', 'SERGIO', 'CIUDAD', '412522', 'HOTMAIL', '0'),
('4', 'DASDA', 'AS', 'SADS', 'ASD', '0'),
('5', 'BRYAN ORLANDO', 'DIRECCION', '123123', '@gmail', '0'),
('6', 'JOSE ESTANISLAO LOPEZ TUBAC', 'CIUDAD', '12345678', '@gmail.com', '0'),
('7', 'CARLOS LAIB', 'CIUDAD', '123546', 'HOTMAIL', '0'),
('8', 'BRYAN ORLANDO', 'CIUDAD', '5468225', 'HOTMAIL', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacioncursosalumnos`
--

CREATE TABLE `asignacioncursosalumnos` (
  `codigo_carrera` varchar(5) NOT NULL,
  `codigo_sede` varchar(5) NOT NULL,
  `codigo_jornada` varchar(5) NOT NULL,
  `codigo_seccion` varchar(5) NOT NULL,
  `codigo_aula` varchar(5) NOT NULL,
  `codigo_curso` varchar(5) NOT NULL,
  `carnet_alumno` varchar(15) NOT NULL,
  `nota_asignacioncursoalumnos` float(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacioncursosmastros`
--

CREATE TABLE `asignacioncursosmastros` (
  `codigo_carrera` varchar(5) NOT NULL,
  `codigo_sede` varchar(5) NOT NULL,
  `codigo_jornada` varchar(5) NOT NULL,
  `codigo_seccion` varchar(5) NOT NULL,
  `codigo_aula` varchar(5) NOT NULL,
  `codigo_curso` varchar(5) NOT NULL,
  `codigo_maestro` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aulas`
--

CREATE TABLE `aulas` (
  `codigo_aula` varchar(5) NOT NULL,
  `nombre_aula` varchar(45) DEFAULT NULL,
  `estatus_aula` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `codigo_carrera` varchar(5) NOT NULL,
  `nombre_carrera` varchar(45) DEFAULT NULL,
  `codigo_facultad` varchar(5) DEFAULT NULL,
  `estatus_carrera` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `codigo_curso` varchar(5) NOT NULL,
  `nombre_curso` varchar(45) DEFAULT NULL,
  `estatus_curso` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultades`
--

CREATE TABLE `facultades` (
  `codigo_facultad` varchar(5) NOT NULL,
  `nombre_facultad` varchar(45) DEFAULT NULL,
  `estatus_facultad` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jornadas`
--

CREATE TABLE `jornadas` (
  `codigo_jornada` varchar(5) NOT NULL,
  `nombre_jornada` varchar(45) DEFAULT NULL,
  `estatus_jornada` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestros`
--

CREATE TABLE `maestros` (
  `codigo_maestro` varchar(5) NOT NULL,
  `nombre_maestro` varchar(45) DEFAULT NULL,
  `direccion_maestro` varchar(45) DEFAULT NULL,
  `telefono_maetro` varchar(45) DEFAULT NULL,
  `email_maestro` varchar(20) DEFAULT NULL,
  `estatus_maestro` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secciones`
--

CREATE TABLE `secciones` (
  `codigo_seccion` varchar(5) NOT NULL,
  `nombre_seccion` varchar(45) DEFAULT NULL,
  `estatus_seccion` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sedes`
--

CREATE TABLE `sedes` (
  `codigo_sede` varchar(5) NOT NULL,
  `nombre_sede` varchar(45) DEFAULT NULL,
  `estatus_sede` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  ADD PRIMARY KEY (`codigo_carrera`,`codigo_sede`,`codigo_jornada`,`codigo_seccion`,`codigo_aula`,`codigo_curso`,`carnet_alumno`),
  ADD KEY `codigo_sede` (`codigo_sede`),
  ADD KEY `codigo_jornada` (`codigo_jornada`),
  ADD KEY `codigo_seccion` (`codigo_seccion`),
  ADD KEY `codigo_aula` (`codigo_aula`),
  ADD KEY `codigo_curso` (`codigo_curso`),
  ADD KEY `carnet_alumno` (`carnet_alumno`);

--
-- Indices de la tabla `asignacioncursosmastros`
--
ALTER TABLE `asignacioncursosmastros`
  ADD PRIMARY KEY (`codigo_carrera`,`codigo_sede`,`codigo_jornada`,`codigo_seccion`,`codigo_aula`,`codigo_curso`),
  ADD KEY `codigo_sede` (`codigo_sede`),
  ADD KEY `codigo_jornada` (`codigo_jornada`),
  ADD KEY `codigo_seccion` (`codigo_seccion`),
  ADD KEY `codigo_aula` (`codigo_aula`),
  ADD KEY `codigo_curso` (`codigo_curso`),
  ADD KEY `codigo_maestro` (`codigo_maestro`);

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
-- Indices de la tabla `facultades`
--
ALTER TABLE `facultades`
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
-- Filtros para la tabla `asignacioncursosmastros`
--
ALTER TABLE `asignacioncursosmastros`
  ADD CONSTRAINT `asignacioncursosmastros_ibfk_1` FOREIGN KEY (`codigo_carrera`) REFERENCES `carreras` (`codigo_carrera`),
  ADD CONSTRAINT `asignacioncursosmastros_ibfk_2` FOREIGN KEY (`codigo_sede`) REFERENCES `sedes` (`codigo_sede`),
  ADD CONSTRAINT `asignacioncursosmastros_ibfk_3` FOREIGN KEY (`codigo_jornada`) REFERENCES `jornadas` (`codigo_jornada`),
  ADD CONSTRAINT `asignacioncursosmastros_ibfk_4` FOREIGN KEY (`codigo_seccion`) REFERENCES `secciones` (`codigo_seccion`),
  ADD CONSTRAINT `asignacioncursosmastros_ibfk_5` FOREIGN KEY (`codigo_aula`) REFERENCES `aulas` (`codigo_aula`),
  ADD CONSTRAINT `asignacioncursosmastros_ibfk_6` FOREIGN KEY (`codigo_curso`) REFERENCES `cursos` (`codigo_curso`),
  ADD CONSTRAINT `asignacioncursosmastros_ibfk_7` FOREIGN KEY (`codigo_maestro`) REFERENCES `maestros` (`codigo_maestro`);

--
-- Filtros para la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD CONSTRAINT `carreras_ibfk_1` FOREIGN KEY (`codigo_facultad`) REFERENCES `facultades` (`codigo_facultad`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
