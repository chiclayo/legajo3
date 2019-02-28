-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-02-2019 a las 16:19:11
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
-- Base de datos: `salud`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acciones_personales`
--

CREATE TABLE `acciones_personales` (
  `acciones_personales_id` int(11) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo_clasificado`
--

CREATE TABLE `cargo_clasificado` (
  `cargo_clasificado_id` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `codigo_plaza`
--

CREATE TABLE `codigo_plaza` (
  `codigo_plaza_id` int(11) NOT NULL,
  `descripcion` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contrato`
--

CREATE TABLE `contrato` (
  `contrato_id` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `departamento_id` int(11) NOT NULL,
  `descripcion` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `distrito`
--

CREATE TABLE `distrito` (
  `dristrito_id` int(11) NOT NULL,
  `descripcion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `establecimiento`
--

CREATE TABLE `establecimiento` (
  `establecimiento_id` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `unidad_ejecutora` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fecha_ingreso`
--

CREATE TABLE `fecha_ingreso` (
  `fecha_ingreso_id` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo_ocupacional`
--

CREATE TABLE `grupo_ocupacional` (
  `grupo_ocupacional_id` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mircro_red`
--

CREATE TABLE `mircro_red` (
  `micro_red_id` int(11) NOT NULL,
  `descipcion` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modalidad`
--

CREATE TABLE `modalidad` (
  `modalidad_id` int(11) NOT NULL,
  `descripcion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel_r`
--

CREATE TABLE `nivel_r` (
  `nivel_r_id` int(11) NOT NULL,
  `descripcion` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nombramiento`
--

CREATE TABLE `nombramiento` (
  `nombramiento_id` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia`
--

CREATE TABLE `provincia` (
  `provincia_id` int(11) NOT NULL,
  `descripcion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `red_salud`
--

CREATE TABLE `red_salud` (
  `red_salud_id` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regimen_laboral`
--

CREATE TABLE `regimen_laboral` (
  `regimen_laboral_id` int(11) NOT NULL,
  `descripcion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regimen_pen`
--

CREATE TABLE `regimen_pen` (
  `regimen_pen_id` int(11) NOT NULL,
  `descripcion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `situacion_laboral`
--

CREATE TABLE `situacion_laboral` (
  `situacion_laboral_id` int(11) NOT NULL,
  `situacion` varchar(20) NOT NULL,
  `fecha` date NOT NULL,
  `resolucion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajadores`
--

CREATE TABLE `trabajadores` (
  `trabajador_id` int(11) NOT NULL,
  `apellido_paterno` varchar(15) NOT NULL,
  `apellido_materno` varchar(15) NOT NULL,
  `nombres` varchar(15) NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `dni` varchar(10) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `nacionalidad` varchar(20) NOT NULL,
  `estado_civil` varchar(20) NOT NULL,
  `direccion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usuario_id` int(11) NOT NULL,
  `nombre` varchar(10) NOT NULL,
  `contraseña` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acciones_personales`
--
ALTER TABLE `acciones_personales`
  ADD PRIMARY KEY (`acciones_personales_id`);

--
-- Indices de la tabla `cargo_clasificado`
--
ALTER TABLE `cargo_clasificado`
  ADD PRIMARY KEY (`cargo_clasificado_id`);

--
-- Indices de la tabla `codigo_plaza`
--
ALTER TABLE `codigo_plaza`
  ADD PRIMARY KEY (`codigo_plaza_id`);

--
-- Indices de la tabla `contrato`
--
ALTER TABLE `contrato`
  ADD PRIMARY KEY (`contrato_id`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`departamento_id`);

--
-- Indices de la tabla `distrito`
--
ALTER TABLE `distrito`
  ADD PRIMARY KEY (`dristrito_id`);

--
-- Indices de la tabla `establecimiento`
--
ALTER TABLE `establecimiento`
  ADD PRIMARY KEY (`establecimiento_id`);

--
-- Indices de la tabla `fecha_ingreso`
--
ALTER TABLE `fecha_ingreso`
  ADD PRIMARY KEY (`fecha_ingreso_id`);

--
-- Indices de la tabla `grupo_ocupacional`
--
ALTER TABLE `grupo_ocupacional`
  ADD PRIMARY KEY (`grupo_ocupacional_id`);

--
-- Indices de la tabla `mircro_red`
--
ALTER TABLE `mircro_red`
  ADD PRIMARY KEY (`micro_red_id`);

--
-- Indices de la tabla `modalidad`
--
ALTER TABLE `modalidad`
  ADD PRIMARY KEY (`modalidad_id`);

--
-- Indices de la tabla `nivel_r`
--
ALTER TABLE `nivel_r`
  ADD PRIMARY KEY (`nivel_r_id`);

--
-- Indices de la tabla `nombramiento`
--
ALTER TABLE `nombramiento`
  ADD PRIMARY KEY (`nombramiento_id`);

--
-- Indices de la tabla `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`provincia_id`);

--
-- Indices de la tabla `red_salud`
--
ALTER TABLE `red_salud`
  ADD PRIMARY KEY (`red_salud_id`);

--
-- Indices de la tabla `regimen_laboral`
--
ALTER TABLE `regimen_laboral`
  ADD PRIMARY KEY (`regimen_laboral_id`);

--
-- Indices de la tabla `regimen_pen`
--
ALTER TABLE `regimen_pen`
  ADD PRIMARY KEY (`regimen_pen_id`);

--
-- Indices de la tabla `situacion_laboral`
--
ALTER TABLE `situacion_laboral`
  ADD PRIMARY KEY (`situacion_laboral_id`);

--
-- Indices de la tabla `trabajadores`
--
ALTER TABLE `trabajadores`
  ADD PRIMARY KEY (`trabajador_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `acciones_personales`
--
ALTER TABLE `acciones_personales`
  MODIFY `acciones_personales_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cargo_clasificado`
--
ALTER TABLE `cargo_clasificado`
  MODIFY `cargo_clasificado_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `codigo_plaza`
--
ALTER TABLE `codigo_plaza`
  MODIFY `codigo_plaza_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contrato`
--
ALTER TABLE `contrato`
  MODIFY `contrato_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `departamento_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `distrito`
--
ALTER TABLE `distrito`
  MODIFY `dristrito_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `establecimiento`
--
ALTER TABLE `establecimiento`
  MODIFY `establecimiento_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fecha_ingreso`
--
ALTER TABLE `fecha_ingreso`
  MODIFY `fecha_ingreso_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `grupo_ocupacional`
--
ALTER TABLE `grupo_ocupacional`
  MODIFY `grupo_ocupacional_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mircro_red`
--
ALTER TABLE `mircro_red`
  MODIFY `micro_red_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `modalidad`
--
ALTER TABLE `modalidad`
  MODIFY `modalidad_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `nivel_r`
--
ALTER TABLE `nivel_r`
  MODIFY `nivel_r_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `nombramiento`
--
ALTER TABLE `nombramiento`
  MODIFY `nombramiento_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `provincia`
--
ALTER TABLE `provincia`
  MODIFY `provincia_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `red_salud`
--
ALTER TABLE `red_salud`
  MODIFY `red_salud_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `regimen_laboral`
--
ALTER TABLE `regimen_laboral`
  MODIFY `regimen_laboral_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `regimen_pen`
--
ALTER TABLE `regimen_pen`
  MODIFY `regimen_pen_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `situacion_laboral`
--
ALTER TABLE `situacion_laboral`
  MODIFY `situacion_laboral_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `trabajadores`
--
ALTER TABLE `trabajadores`
  MODIFY `trabajador_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `acciones_personales`
--
ALTER TABLE `acciones_personales`
  ADD CONSTRAINT `acciones_personales_ibfk_1` FOREIGN KEY (`acciones_personales_id`) REFERENCES `trabajadores` (`trabajador_id`);

--
-- Filtros para la tabla `distrito`
--
ALTER TABLE `distrito`
  ADD CONSTRAINT `distrito_ibfk_1` FOREIGN KEY (`dristrito_id`) REFERENCES `provincia` (`provincia_id`);

--
-- Filtros para la tabla `mircro_red`
--
ALTER TABLE `mircro_red`
  ADD CONSTRAINT `mircro_red_ibfk_1` FOREIGN KEY (`micro_red_id`) REFERENCES `red_salud` (`red_salud_id`);

--
-- Filtros para la tabla `nivel_r`
--
ALTER TABLE `nivel_r`
  ADD CONSTRAINT `nivel_r_ibfk_1` FOREIGN KEY (`nivel_r_id`) REFERENCES `cargo_clasificado` (`cargo_clasificado_id`);

--
-- Filtros para la tabla `provincia`
--
ALTER TABLE `provincia`
  ADD CONSTRAINT `provincia_ibfk_1` FOREIGN KEY (`provincia_id`) REFERENCES `departamento` (`departamento_id`);

--
-- Filtros para la tabla `regimen_laboral`
--
ALTER TABLE `regimen_laboral`
  ADD CONSTRAINT `regimen_laboral_ibfk_1` FOREIGN KEY (`regimen_laboral_id`) REFERENCES `regimen_pen` (`regimen_pen_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
