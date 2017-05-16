-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-05-2017 a las 09:11:15
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `reservas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa`
--

CREATE TABLE `mesa` (
  `Cod_Mesa` char(5) NOT NULL,
  `Fumador` char(2) DEFAULT NULL,
  `Cantidad_Personas` int(11) DEFAULT NULL,
  `Estado` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mesa`
--

INSERT INTO `mesa` (`Cod_Mesa`, `Fumador`, `Cantidad_Personas`, `Estado`) VALUES
('ME001', 'F', 4, 'A'),
('ME002', 'F', 2, 'O'),
('ME003', 'F', 3, 'O'),
('ME004', 'NE', 4, 'A'),
('ME005', 'NE', 3, 'A'),
('ME006', 'NE', 2, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `Cod_Reserva` int(11) NOT NULL,
  `Restaurante_Mesa_Cod_Restaurante` char(5) NOT NULL,
  `Restaurante_Mesa_Cod_Mesa` char(5) NOT NULL,
  `Fecha_Presentacion` datetime DEFAULT NULL,
  `Fecha_Tolerancia` datetime DEFAULT NULL,
  `Hora_Presentacio` datetime DEFAULT NULL,
  `Hora_Tolerancia` datetime DEFAULT NULL,
  `Nombre_Reserva` varchar(300) DEFAULT NULL,
  `Estado` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `restaurante`
--

CREATE TABLE `restaurante` (
  `Cod_Restaurante` char(5) NOT NULL,
  `Nombre_Restaurante` varchar(300) DEFAULT NULL,
  `Ubicacion` varchar(300) DEFAULT NULL,
  `Estado` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `restaurante`
--

INSERT INTO `restaurante` (`Cod_Restaurante`, `Nombre_Restaurante`, `Ubicacion`, `Estado`) VALUES
('RE001', 'EL AJICITO', 'LOS EJEDIDOS - PIURA', 'A'),
('RE002', 'EL MUELLE', 'AV GRAU - PIURA', 'A'),
('RE003', 'BEBE MERO', 'LAS MERCEDES - PIURA', 'A'),
('RE004', 'EL ARBOLITO', 'LOS EJEDIDOS - PIURA', 'A'),
('RE005', 'LA CHOZA', 'LAS MERCEDES - PIURA', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `restaurante_mesa`
--

CREATE TABLE `restaurante_mesa` (
  `Cod_Restaurante` char(5) NOT NULL,
  `Cod_Mesa` char(5) NOT NULL,
  `Ubicacionx` varchar(150) DEFAULT NULL,
  `UbicacionY` varchar(150) DEFAULT NULL,
  `Numero_Mesa` int(11) NOT NULL,
  `Estado` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `restaurante_mesa`
--

INSERT INTO `restaurante_mesa` (`Cod_Restaurante`, `Cod_Mesa`, `Ubicacionx`, `UbicacionY`, `Numero_Mesa`, `Estado`) VALUES
('RE001', 'ME001', '', '', 1, 'LI'),
('RE001', 'ME002', '', '', 2, 'LI'),
('RE001', 'ME004', '', '', 3, 'LI'),
('RE001', 'ME005', '', '', 4, 'RE'),
('RE001', 'ME002', NULL, NULL, 5, 'LI'),
('RE001', 'ME006', NULL, NULL, 6, 'PA'),
('RE001', 'ME005', NULL, NULL, 7, 'OC'),
('RE001', 'ME005', NULL, NULL, 8, 'PI'),
('RE002', 'ME001', '', '', 1, 'LI'),
('RE002', 'ME002', '', '', 2, 'LI'),
('RE002', 'ME004', '', '', 3, 'LI'),
('RE002', 'ME005', '', '', 4, 'PA'),
('RE003', 'ME001', '', '', 1, 'LI'),
('RE003', 'ME002', '', '', 2, 'SE'),
('RE003', 'ME004', '', '', 3, 'LI'),
('RE003', 'ME005', '', '', 4, 'LI');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `mesa`
--
ALTER TABLE `mesa`
  ADD PRIMARY KEY (`Cod_Mesa`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`Cod_Reserva`),
  ADD KEY `Restaurante_Mesa_Cod_Restaurante` (`Restaurante_Mesa_Cod_Restaurante`,`Restaurante_Mesa_Cod_Mesa`);

--
-- Indices de la tabla `restaurante`
--
ALTER TABLE `restaurante`
  ADD PRIMARY KEY (`Cod_Restaurante`);

--
-- Indices de la tabla `restaurante_mesa`
--
ALTER TABLE `restaurante_mesa`
  ADD PRIMARY KEY (`Cod_Restaurante`,`Numero_Mesa`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `Cod_Reserva` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
