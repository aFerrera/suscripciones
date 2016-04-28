-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-04-2016 a las 12:48:44
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
(4, 'baja suscripcion', 'Antonio Ferrera', 2, '2016-04-26 11:09:20'),
(5, 'alta suscripcion', 'Antonio Ferrera', 2, '2016-04-27 11:05:27'),
(6, 'alta suscripcion', 'Dios Todopoderoso', 2, '2016-04-27 11:06:17');

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
(2, 'Pro Imágenes', 'suscripción para la descarga de imágenes molonas', 13.99, 2);

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
(1, 'Antonio Ferrera', '78220272D', 'toni', '81dc9bdb52d04dc20036dbd8313ed055', 'aferrera@kitmaker.com', '653626777', 30, 1, 0),
(3, 'Dios Todopoderoso', '000000000', 'dios', '81dc9bdb52d04dc20036dbd8313ed055', 'dios@algo.com', '567656444', 20, 1, 0),
(7, 'anonimo', '767788836', 'anonimo', '81dc9bdb52d04dc20036dbd8313ed055', 'anonimo@anonimos.com', '89777265424', 0, 0, 0),
(8, 'admin', '78220273f', 'admin', '81dc9bdb52d04dc20036dbd8313ed055', 'admin@admin.com', '653626777', 0, 0, 1),
(9, 'Eduardo Mendoza', '54622564g', 'edu', '81dc9bdb52d04dc20036dbd8313ed055', 'edu@mendoza.com', '956884521', 0, 0, 0),
(10, 'Xisco Crack', '88888888h', 'xisco', '81dc9bdb52d04dc20036dbd8313ed055', 'xisco@crack.com', '971568521', 0, 0, 0),
(11, 'Pere A Secas', '55555555v', 'pere', '81dc9bdb52d04dc20036dbd8313ed055', 'pere@asecas.com', '971562358', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wsrequest`
--

CREATE TABLE `wsrequest` (
  `id` bigint(20) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `transaction` varchar(50) DEFAULT NULL,
  `msisdn` varchar(20) DEFAULT NULL,
  `shortcode` varchar(50) DEFAULT NULL,
  `text` text,
  `amount` double DEFAULT NULL,
  `token` varchar(256) DEFAULT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `wsrequest`
--

INSERT INTO `wsrequest` (`id`, `tipo`, `transaction`, `msisdn`, `shortcode`, `text`, `amount`, `token`, `fecha`) VALUES
(1, 'ObtencionToken', '1', NULL, NULL, NULL, NULL, NULL, '2016-04-27 10:15:57'),
(2, 'ObtencionToken', '2', NULL, NULL, NULL, NULL, NULL, '2016-04-27 10:15:58'),
(3, 'ObtencionToken', '3', NULL, NULL, NULL, NULL, NULL, '2016-04-27 10:15:58'),
(4, 'ObtencionToken', '4', NULL, NULL, NULL, NULL, NULL, '2016-04-27 10:15:58'),
(5, 'ObtencionToken', '5', NULL, NULL, NULL, NULL, NULL, '2016-04-27 10:15:58'),
(6, 'ObtencionToken', '6', NULL, NULL, NULL, NULL, NULL, '2016-04-27 10:15:58'),
(7, 'ObtencionToken', '7', NULL, NULL, NULL, NULL, NULL, '2016-04-27 10:15:58'),
(8, 'ObtencionToken', '8', NULL, NULL, NULL, NULL, NULL, '2016-04-27 10:15:58'),
(9, 'ObtencionToken', '9', NULL, NULL, NULL, NULL, NULL, '2016-04-27 10:15:59'),
(10, 'ObtencionToken', 'a', NULL, NULL, NULL, NULL, NULL, '2016-04-27 10:15:59'),
(11, 'ObtencionToken', 'b', NULL, NULL, NULL, NULL, NULL, '2016-04-27 10:15:59'),
(12, 'ObtencionToken', 'c', NULL, NULL, NULL, NULL, NULL, '2016-04-27 10:15:59'),
(13, 'ObtencionToken', 'd', NULL, NULL, NULL, NULL, NULL, '2016-04-27 10:15:59'),
(14, 'ObtencionToken', 'e', NULL, NULL, NULL, NULL, NULL, '2016-04-27 10:16:00'),
(15, 'ObtencionToken', 'f', NULL, NULL, NULL, NULL, NULL, '2016-04-27 10:16:00'),
(16, 'PeticionCobro', 'g', '666666666', NULL, NULL, 1, '2039336f7fd80c581dd831dc6dcb9a09', '2016-04-27 10:16:00'),
(17, 'ObtencionToken', 'h', NULL, NULL, NULL, NULL, NULL, '2016-04-27 10:42:20'),
(18, 'PeticionCobro', 'i', '666666666', NULL, NULL, 1, 'a186e75c1b39fe3f43869b4eeb4b9447', '2016-04-27 10:42:20'),
(19, 'ObtencionToken', 'j', NULL, NULL, NULL, NULL, NULL, '2016-04-27 10:42:26'),
(20, 'PeticionCobro', 'k', '666666666', NULL, NULL, 1, '82a2c341796071180c23b21d9c5fdbff', '2016-04-27 10:42:26'),
(21, 'ObtencionToken', 'l', NULL, NULL, NULL, NULL, NULL, '2016-04-27 10:42:31'),
(22, 'PeticionCobro', 'm', '666666666', NULL, NULL, 1, 'c81df68c4479289545bef856890c08e5', '2016-04-27 10:42:31'),
(23, 'ObtencionToken', 'n', NULL, NULL, NULL, NULL, NULL, '2016-04-27 10:42:33'),
(24, 'PeticionCobro', 'o', '666666666', NULL, NULL, 1, '643cfed5aa7e5beb82721fea65058bad', '2016-04-27 10:42:34'),
(25, 'ObtencionToken', 'p', NULL, NULL, NULL, NULL, NULL, '2016-04-27 10:42:36'),
(26, 'PeticionCobro', 'q', '666666666', NULL, NULL, 1, '0ccbfffd95d2ba6f13c9dbee1a72bd38', '2016-04-27 10:42:36'),
(27, 'ObtencionToken', 'r', NULL, NULL, NULL, NULL, NULL, '2016-04-27 11:43:38'),
(28, 'PeticionCobro', 's', '666666666', NULL, NULL, 13.99, '9b7fbd19b308a5086b003f11f45a45b0', '2016-04-27 11:43:38'),
(29, 'ObtencionToken', 't', NULL, NULL, NULL, NULL, NULL, '2016-04-27 11:45:45'),
(30, 'PeticionCobro', 'u', '666666666', NULL, NULL, 13.99, 'ac609be4792e1dff112a9da160bf926b', '2016-04-27 11:45:45'),
(31, 'ObtencionToken', 'v', NULL, NULL, NULL, NULL, NULL, '2016-04-27 11:46:02'),
(32, 'PeticionCobro', 'w', '666666666', NULL, NULL, 13.99, '602652e221fa8bd1a6360988d6d32e0c', '2016-04-27 11:46:02'),
(33, 'ObtencionToken', 'x', NULL, NULL, NULL, NULL, NULL, '2016-04-27 11:46:04'),
(34, 'PeticionCobro', 'y', '666666666', NULL, NULL, 13.99, '96667161919763215fcb3b1e3a48e21e', '2016-04-27 11:46:04'),
(35, 'ObtencionToken', 'z', NULL, NULL, NULL, NULL, NULL, '2016-04-27 11:47:10'),
(36, 'PeticionCobro', '10', '666666666', NULL, NULL, 13.99, '1e1448741418e22fcfe75cf7366a4d33', '2016-04-27 11:47:11'),
(37, 'ObtencionToken', '11', NULL, NULL, NULL, NULL, NULL, '2016-04-27 11:47:19'),
(38, 'PeticionCobro', '12', '666666666', NULL, NULL, 13.99, 'dfb88517bfb2e0dc509ee6bee9ef02ac', '2016-04-27 11:47:19'),
(39, 'ObtencionToken', '13', NULL, NULL, NULL, NULL, NULL, '2016-04-27 12:13:46'),
(40, 'PeticionCobro', '14', '666666666', NULL, NULL, 13.99, '608c6ae0fed1356187bbf3a90eb4e4ef', '2016-04-27 12:13:46'),
(41, 'ObtencionToken', '15', NULL, NULL, NULL, NULL, NULL, '2016-04-27 12:15:09'),
(42, 'PeticionCobro', '16', '666666666', NULL, NULL, 13.99, 'bd520e02d2ecb3bd01321b0dada2d71e', '2016-04-27 12:15:10'),
(43, 'ObtencionToken', '17', NULL, NULL, NULL, NULL, NULL, '2016-04-27 12:17:01'),
(44, 'ObtencionToken', '18', NULL, NULL, NULL, NULL, NULL, '2016-04-27 12:17:01'),
(45, 'PeticionCobro', '19', '666666666', NULL, NULL, 13.99, '354869015610a7059c1b0b907c6bfd48', '2016-04-27 12:17:01'),
(46, 'ObtencionToken', '1a', NULL, NULL, NULL, NULL, NULL, '2016-04-27 12:18:38'),
(47, 'PeticionCobro', '1b', '666666666', NULL, NULL, 13.99, 'fdc95a073527160b6ce0a22de1e8ca24', '2016-04-27 12:18:39'),
(48, 'Envio de sms', '1c', '666666666', '666', 'Todo correcto', NULL, NULL, '2016-04-27 12:18:39'),
(49, 'ObtencionToken', '1d', NULL, NULL, NULL, NULL, NULL, '2016-04-27 12:21:10'),
(50, 'PeticionCobro', '1e', '666666666', NULL, NULL, 13.99, '53e7fc1222d0d14d52ca0c8b1c1dc884', '2016-04-27 12:21:10'),
(51, 'Envio de sms', '1f', '666666666', '666', 'No hay fondos suficientes', NULL, NULL, '2016-04-27 12:21:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wsresponse`
--

CREATE TABLE `wsresponse` (
  `statusCode` varchar(50) NOT NULL,
  `statusMessage` text,
  `txId` bigint(20) NOT NULL,
  `token` varchar(256) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `wsresponse`
--

INSERT INTO `wsresponse` (`statusCode`, `statusMessage`, `txId`, `token`, `tipo`, `fecha`) VALUES
('DUPLICATED_TR', 'Request transaction already exists.', 65674, '', 'ObtencionToken', '2016-04-27 10:15:58'),
('DUPLICATED_TR', 'Request transaction already exists.', 65675, '', 'ObtencionToken', '2016-04-27 10:15:58'),
('DUPLICATED_TR', 'Request transaction already exists.', 65676, '', 'ObtencionToken', '2016-04-27 10:15:58'),
('DUPLICATED_TR', 'Request transaction already exists.', 65677, '', 'ObtencionToken', '2016-04-27 10:15:58'),
('DUPLICATED_TR', 'Request transaction already exists.', 65678, '', 'ObtencionToken', '2016-04-27 10:15:58'),
('DUPLICATED_TR', 'Request transaction already exists.', 65679, '', 'ObtencionToken', '2016-04-27 10:15:58'),
('DUPLICATED_TR', 'Request transaction already exists.', 65680, '', 'ObtencionToken', '2016-04-27 10:15:58'),
('DUPLICATED_TR', 'Request transaction already exists.', 65681, '', 'ObtencionToken', '2016-04-27 10:15:59'),
('DUPLICATED_TR', 'Request transaction already exists.', 65682, '', 'ObtencionToken', '2016-04-27 10:15:59'),
('DUPLICATED_TR', 'Request transaction already exists.', 65683, '', 'ObtencionToken', '2016-04-27 10:15:59'),
('DUPLICATED_TR', 'Request transaction already exists.', 65684, '', 'ObtencionToken', '2016-04-27 10:15:59'),
('DUPLICATED_TR', 'Request transaction already exists.', 65685, '', 'ObtencionToken', '2016-04-27 10:15:59'),
('DUPLICATED_TR', 'Request transaction already exists.', 65686, '', 'ObtencionToken', '2016-04-27 10:16:00'),
('DUPLICATED_TR', 'Request transaction already exists.', 65687, '', 'ObtencionToken', '2016-04-27 10:16:00'),
('TOKEN_SUCCESS', 'Token generated successfully.', 65688, '2039336f7fd80c581dd831dc6dcb9a09', 'ObtencionToken', '2016-04-27 10:16:00'),
('NO_FUNDS', 'User does not have enough balance.', 65689, NULL, 'PeticionCobro', '2016-04-27 10:16:00'),
('TOKEN_SUCCESS', 'Token generated successfully.', 65780, 'a186e75c1b39fe3f43869b4eeb4b9447', 'ObtencionToken', '2016-04-27 10:42:20'),
('NO_FUNDS', 'User does not have enough balance.', 65781, NULL, 'PeticionCobro', '2016-04-27 10:42:21'),
('TOKEN_SUCCESS', 'Token generated successfully.', 65782, '82a2c341796071180c23b21d9c5fdbff', 'ObtencionToken', '2016-04-27 10:42:26'),
('SYSTEM_ERROR', 'An error ocurred. Please try again.', 65783, NULL, 'PeticionCobro', '2016-04-27 10:42:27'),
('TOKEN_SUCCESS', 'Token generated successfully.', 65784, 'c81df68c4479289545bef856890c08e5', 'ObtencionToken', '2016-04-27 10:42:31'),
('NO_FUNDS', 'User does not have enough balance.', 65785, NULL, 'PeticionCobro', '2016-04-27 10:42:31'),
('TOKEN_SUCCESS', 'Token generated successfully.', 65786, '643cfed5aa7e5beb82721fea65058bad', 'ObtencionToken', '2016-04-27 10:42:34'),
('NO_FUNDS', 'User does not have enough balance.', 65787, NULL, 'PeticionCobro', '2016-04-27 10:42:34'),
('TOKEN_SUCCESS', 'Token generated successfully.', 65788, '0ccbfffd95d2ba6f13c9dbee1a72bd38', 'ObtencionToken', '2016-04-27 10:42:36'),
('NO_FUNDS', 'User does not have enough balance.', 65789, NULL, 'PeticionCobro', '2016-04-27 10:42:36'),
('TOKEN_SUCCESS', 'Token generated successfully.', 66290, '9b7fbd19b308a5086b003f11f45a45b0', 'ObtencionToken', '2016-04-27 11:43:38'),
('NO_FUNDS', 'User does not have enough balance.', 66291, NULL, 'PeticionCobro', '2016-04-27 11:43:39'),
('TOKEN_SUCCESS', 'Token generated successfully.', 66292, 'ac609be4792e1dff112a9da160bf926b', 'ObtencionToken', '2016-04-27 11:45:45'),
('SYSTEM_ERROR', 'An error ocurred. Please try again.', 66293, NULL, 'PeticionCobro', '2016-04-27 11:45:45'),
('TOKEN_SUCCESS', 'Token generated successfully.', 66294, '602652e221fa8bd1a6360988d6d32e0c', 'ObtencionToken', '2016-04-27 11:46:02'),
('NO_FUNDS', 'User does not have enough balance.', 66295, NULL, 'PeticionCobro', '2016-04-27 11:46:02'),
('TOKEN_SUCCESS', 'Token generated successfully.', 66296, '96667161919763215fcb3b1e3a48e21e', 'ObtencionToken', '2016-04-27 11:46:04'),
('NO_FUNDS', 'User does not have enough balance.', 66297, NULL, 'PeticionCobro', '2016-04-27 11:46:04'),
('TOKEN_SUCCESS', 'Token generated successfully.', 66298, '1e1448741418e22fcfe75cf7366a4d33', 'ObtencionToken', '2016-04-27 11:47:11'),
('SUCCESS', 'Request processed correctly.', 66299, NULL, 'PeticionCobro', '2016-04-27 11:47:11'),
('TOKEN_SUCCESS', 'Token generated successfully.', 66300, 'dfb88517bfb2e0dc509ee6bee9ef02ac', 'ObtencionToken', '2016-04-27 11:47:19'),
('NO_FUNDS', 'User does not have enough balance.', 66301, NULL, 'PeticionCobro', '2016-04-27 11:47:19'),
('TOKEN_SUCCESS', 'Token generated successfully.', 66454, '608c6ae0fed1356187bbf3a90eb4e4ef', 'ObtencionToken', '2016-04-27 12:13:46'),
('CHARGING_ERROR', 'An error ocurred, please try again.', 66455, NULL, 'PeticionCobro', '2016-04-27 12:13:46'),
('TOKEN_SUCCESS', 'Token generated successfully.', 66456, 'bd520e02d2ecb3bd01321b0dada2d71e', 'ObtencionToken', '2016-04-27 12:15:10'),
('NO_FUNDS', 'User does not have enough balance.', 66457, NULL, 'PeticionCobro', '2016-04-27 12:15:10'),
('SYSTEM_ERROR', 'An error ocurred. Please try again.', 66474, '', 'ObtencionToken', '2016-04-27 12:17:01'),
('TOKEN_SUCCESS', 'Token generated successfully.', 66475, '354869015610a7059c1b0b907c6bfd48', 'ObtencionToken', '2016-04-27 12:17:01'),
('NO_FUNDS', 'User does not have enough balance.', 66476, NULL, 'PeticionCobro', '2016-04-27 12:17:01'),
('TOKEN_SUCCESS', 'Token generated successfully.', 66589, 'fdc95a073527160b6ce0a22de1e8ca24', 'ObtencionToken', '2016-04-27 12:18:39'),
('SUCCESS', 'Request processed correctly.', 66590, NULL, 'PeticionCobro', '2016-04-27 12:18:39'),
('SUCCESS', 'Request processed correctly.', 66591, NULL, 'Envio de sms', '2016-04-27 12:18:39'),
('TOKEN_SUCCESS', 'Token generated successfully.', 66790, '53e7fc1222d0d14d52ca0c8b1c1dc884', 'ObtencionToken', '2016-04-27 12:21:10'),
('NO_FUNDS', 'User does not have enough balance.', 66791, NULL, 'PeticionCobro', '2016-04-27 12:21:10'),
('SUCCESS', 'Request processed correctly.', 66792, NULL, 'Envio de sms', '2016-04-27 12:21:10');

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
-- Indices de la tabla `wsrequest`
--
ALTER TABLE `wsrequest`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wsresponse`
--
ALTER TABLE `wsresponse`
  ADD PRIMARY KEY (`txId`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `registros`
--
ALTER TABLE `registros`
  MODIFY `id_reg` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
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
--
-- AUTO_INCREMENT de la tabla `wsrequest`
--
ALTER TABLE `wsrequest`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
