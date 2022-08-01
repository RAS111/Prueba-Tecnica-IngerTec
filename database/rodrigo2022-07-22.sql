-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-08-2022 a las 22:54:24
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `rodrigo2022-07-22`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tresource`
--

CREATE TABLE `tresource` (
  `idResource` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `descrip` varchar(200) NOT NULL,
  `idResourceType` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tresource`
--

INSERT INTO `tresource` (`idResource`, `created`, `descrip`, `idResourceType`) VALUES
(1, '2022-07-22 14:22:11', 'descripción del Vídeo', 1),
(2, '2022-07-22 14:22:11', 'descripción del PDF documentación ', 2),
(3, '2022-07-22 14:23:07', 'descripción del PDF Enunciado', 3),
(4, '2022-07-22 14:23:07', 'descripción del PDF Solución', 4),
(5, '2022-07-22 14:23:49', 'descripción del Vídeo 2', 1),
(6, '2022-07-22 14:23:49', 'descripción del PDF Documentación 2', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tresource_type`
--

CREATE TABLE `tresource_type` (
  `idResourceType` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `descrip` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tresource_type`
--

INSERT INTO `tresource_type` (`idResourceType`, `created`, `descrip`) VALUES
(1, '2022-07-22 14:20:28', 'Vídeo'),
(2, '2022-07-22 14:20:48', 'PDF Documentación'),
(3, '2022-07-22 14:21:02', 'PDF Enunciado'),
(4, '2022-07-22 14:21:02', 'PDF Solución');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tresource`
--
ALTER TABLE `tresource`
  ADD PRIMARY KEY (`idResource`),
  ADD KEY `tresource_FK` (`idResourceType`);

--
-- Indices de la tabla `tresource_type`
--
ALTER TABLE `tresource_type`
  ADD PRIMARY KEY (`idResourceType`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tresource`
--
ALTER TABLE `tresource`
  MODIFY `idResource` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tresource_type`
--
ALTER TABLE `tresource_type`
  MODIFY `idResourceType` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tresource`
--
ALTER TABLE `tresource`
  ADD CONSTRAINT `tresource_FK` FOREIGN KEY (`idResourceType`) REFERENCES `tresource_type` (`idResourceType`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
