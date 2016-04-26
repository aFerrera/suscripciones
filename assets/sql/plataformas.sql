-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-04-2016 a las 11:58:49
-- Versión del servidor: 10.1.10-MariaDB
-- Versión de PHP: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `plataformas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros`
--

CREATE TABLE `registros` (
  `id_reg` bigint(20) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `suscripcion` int(50) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `registros`
--

INSERT INTO `registros` (`id_reg`, `tipo`, `usuario`, `suscripcion`, `fecha`) VALUES
(1, 'alta suscripcion', 'Antonio Ferrera', 2, '2016-04-26 10:37:48'),
(2, 'alta suscripcion', 'Dios Todopoderoso', 2, '2016-04-26 10:39:21'),
(3, 'baja suscripcion', 'Dios Todopoderoso', 2, '2016-04-26 10:39:54'),
(4, 'baja suscripcion', 'Antonio Ferrera', 2, '2016-04-26 11:09:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suscripcion`
--

CREATE TABLE `suscripcion` (
  `id_suscripcion` bigint(20) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `descripcion` varchar(256) DEFAULT NULL,
  `coste` double DEFAULT NULL,
  `n_suscritos` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `suscripcion`
--

INSERT INTO `suscripcion` (`id_suscripcion`, `nombre`, `descripcion`, `coste`, `n_suscritos`) VALUES
(2, 'Pro Imágenes', 'suscripción para la descarga de imágenes molonas', 13.99, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transaccion`
--

CREATE TABLE `transaccion` (
  `id_transaccion` bigint(20) NOT NULL,
  `usuario` varchar(9) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `cantidad` double DEFAULT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `transaccion`
--

INSERT INTO `transaccion` (`id_transaccion`, `usuario`, `tipo`, `cantidad`, `fecha`) VALUES
(1, '78220272D', 'agregar fondos', 30, '2016-04-26 10:34:57'),
(2, '000000000', 'agregar fondos', 20, '2016-04-26 10:39:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` bigint(20) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `DNI` varchar(9) DEFAULT NULL,
  `login` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(256) NOT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `saldo` double DEFAULT '0',
  `alta` tinyint(1) DEFAULT '0',
  `admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `DNI`, `login`, `password`, `email`, `tel`, `saldo`, `alta`, `admin`) VALUES
(1, 'Antonio Ferrera', '78220272D', 'toni', '81dc9bdb52d04dc20036dbd8313ed055', 'aferrera@kitmaker.com', '653626777', 30, 0, 0),
(3, 'Dios Todopoderoso', '000000000', 'dios', '81dc9bdb52d04dc20036dbd8313ed055', 'dios@algo.com', '567656444', 20, 0, 0),
(7, 'anonimo', '767788836', 'anonimo', '81dc9bdb52d04dc20036dbd8313ed055', 'anonimo@anonimos.com', '89777265424', 0, 0, 0),
(8, 'admin', '78220273f', 'admin', '81dc9bdb52d04dc20036dbd8313ed055', 'admin@admin.com', '653626777', 0, 0, 1),
(9, 'Eduardo Mendoza', '54622564g', 'edu', '81dc9bdb52d04dc20036dbd8313ed055', 'edu@mendoza.com', '956884521', 0, 0, 0),
(10, 'Xisco Crack', '88888888h', 'xisco', '81dc9bdb52d04dc20036dbd8313ed055', 'xisco@crack.com', '971568521', 0, 0, 0),
(11, 'Pere A Secas', '55555555v', 'pere', '81dc9bdb52d04dc20036dbd8313ed055', 'pere@asecas.com', '971562358', 0, 0, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `registros`
--
ALTER TABLE `registros`
  ADD PRIMARY KEY (`id_reg`);

--
-- Indices de la tabla `suscripcion`
--
ALTER TABLE `suscripcion`
  ADD PRIMARY KEY (`id_suscripcion`);

--
-- Indices de la tabla `transaccion`
--
ALTER TABLE `transaccion`
  ADD PRIMARY KEY (`id_transaccion`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `registros`
--
ALTER TABLE `registros`
  MODIFY `id_reg` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `suscripcion`
--
ALTER TABLE `suscripcion`
  MODIFY `id_suscripcion` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `transaccion`
--
ALTER TABLE `transaccion`
  MODIFY `id_transaccion` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
