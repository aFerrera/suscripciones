-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-05-2016 a las 09:03:21
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
(45, 'alta suscripcion', 'Antonio Ferrera', 2, '2016-04-28 13:14:51'),
(46, 'baja suscripcion', 'Antonio Ferrera', 2, '2016-04-28 13:15:35'),
(47, 'alta suscripcion', 'Antonio Ferrera', 2, '2016-04-28 13:32:06'),
(48, 'baja suscripcion', 'Antonio Ferrera', 2, '2016-04-28 13:32:24'),
(49, 'alta suscripcion', 'Antonio Ferrera', 2, '2016-04-28 14:22:27'),
(50, 'alta suscripcion', 'Dios Todopoderoso', 2, '2016-04-28 16:25:30'),
(51, 'baja suscripcion', 'Antonio Ferrera', 2, '2016-04-28 16:28:59'),
(52, 'baja suscripcion', 'Dios Todopoderoso', 2, '2016-04-28 16:29:00'),
(53, 'alta suscripcion', 'Antonio Ferrera', 2, '2016-04-28 16:46:48'),
(54, 'baja suscripcion', 'Antonio Ferrera', 2, '2016-04-28 16:55:54'),
(55, 'alta suscripcion', 'Antonio Ferrera', 2, '2016-04-29 11:50:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sms`
--

CREATE TABLE `sms` (
  `id_sms` bigint(20) NOT NULL,
  `destino` varchar(20) DEFAULT NULL,
  `texto` varchar(256) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sms`
--

INSERT INTO `sms` (`id_sms`, `destino`, `texto`, `fecha`) VALUES
(22, '78220272D', 'Cobro realizado correctamente, se le ha cobrado la cantidad de 13.99, le damos de alta! ', '2016-04-28 13:14:51'),
(23, '78220272D', 'Cobro realizado correctamente, se le ha cobrado la cantidad de 13.99 ', '2016-04-28 13:15:07'),
(24, '78220272D', 'No dispone de fondos suficientes para continuar con la suscripción, procedemos a darle de baja', '2016-04-28 13:15:35'),
(25, '78220272D', 'Cobro realizado correctamente, se le ha cobrado la cantidad de 13.99, le damos de alta! ', '2016-04-28 13:32:06'),
(26, '78220272D', 'Cobro realizado correctamente, se le ha cobrado la cantidad de 13.99, le damos de alta! ', '2016-04-28 14:22:27'),
(27, '000000000', 'Cobro realizado correctamente, se le ha cobrado la cantidad de 13.99, le damos de alta! ', '2016-04-28 16:25:31'),
(28, '78220272D', 'No dispone de fondos suficientes para continuar con la suscripción, procedemos a darle de baja', '2016-04-28 16:28:59'),
(29, '000000000', 'No dispone de fondos suficientes para continuar con la suscripción, procedemos a darle de baja', '2016-04-28 16:29:00'),
(30, '78220272D', 'No dispone de fondos suficientes para la suscripción, lo sentimos, no se le dió de alta', '2016-04-28 16:46:41'),
(31, '78220272D', 'Cobro realizado correctamente, se le ha cobrado la cantidad de 13.99, le damos de alta! ', '2016-04-28 16:46:48'),
(32, '78220272D', 'No dispone de fondos suficientes para continuar con la suscripción, procedemos a darle de baja', '2016-04-28 16:55:55'),
(33, '767788836', 'No dispone de fondos suficientes para la suscripción, lo sentimos, no se le dió de alta', '2016-04-29 09:32:31'),
(34, '88888888h', 'No dispone de fondos suficientes para la suscripción, lo sentimos, no se le dió de alta', '2016-04-29 09:56:30'),
(35, '78220272D', 'No dispone de fondos suficientes para la suscripción, lo sentimos, no se le dió de alta', '2016-04-29 10:20:59'),
(36, '78220272D', 'No dispone de fondos suficientes para la suscripción, lo sentimos, no se le dió de alta', '2016-04-29 11:38:05'),
(37, '78220272D', 'No dispone de fondos suficientes para la suscripción, lo sentimos, no se le dió de alta', '2016-04-29 11:39:21'),
(38, '78220272D', 'No dispone de fondos suficientes para la suscripción, lo sentimos, no se le dió de alta', '2016-04-29 11:50:18'),
(39, '78220272D', 'No dispone de fondos suficientes para la suscripción, lo sentimos, no se le dió de alta', '2016-04-29 11:50:25'),
(40, '78220272D', 'No dispone de fondos suficientes para la suscripción, lo sentimos, no se le dió de alta', '2016-04-29 11:50:32'),
(41, '78220272D', 'No dispone de fondos suficientes para la suscripción, lo sentimos, no se le dió de alta', '2016-04-29 11:50:39'),
(42, '78220272D', 'Cobro realizado correctamente, se le ha cobrado la cantidad de 13.99, le damos de alta! ', '2016-04-29 11:50:44');

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
(2, 'Pro Games', 'suscripción premium al portal de videojuegos', 13.99, 1);

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
(14, '78220272D', 'pago', 13.99, '2016-04-28 13:14:51'),
(15, '78220272D', 'pago', 13.99, '2016-04-28 13:15:07'),
(16, '78220272D', 'pago', 13.99, '2016-04-28 13:32:06'),
(17, '78220272D', 'pago', 13.99, '2016-04-28 14:22:27'),
(18, '000000000', 'pago', 13.99, '2016-04-28 16:25:30'),
(19, '78220272D', 'pago', 13.99, '2016-04-28 16:46:48'),
(20, '78220272D', 'pago', 13.99, '2016-04-29 11:50:44');

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
(1, 'Antonio Ferrera', '78220272D', 'toni', '81dc9bdb52d04dc20036dbd8313ed055', 'aferrera@kitmaker.com', '653626777', -83.94, 1, 0),
(3, 'Dios Todopoderoso', '000000000', 'dios', '81dc9bdb52d04dc20036dbd8313ed055', 'dios@algo.com', '567656444', -13.99, 0, 0),
(7, 'anonimo', '767788836', 'anonimo', '81dc9bdb52d04dc20036dbd8313ed055', 'anonimo@anonimos.com', '89777265424', 0, 0, 0),
(8, 'admin', '78220273f', 'admin', '81dc9bdb52d04dc20036dbd8313ed055', 'admin@admin.com', '653626788', 0, 0, 1),
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
  `statusCode` varchar(50) DEFAULT NULL,
  `statusMessage` varchar(50) DEFAULT NULL,
  `txId` varchar(256) DEFAULT NULL,
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

INSERT INTO `wsrequest` (`id`, `tipo`, `transaction`, `statusCode`, `statusMessage`, `txId`, `msisdn`, `shortcode`, `text`, `amount`, `token`, `fecha`) VALUES
(2, 'ObtencionToken', '29', 'TOKEN_SUCCESS', 'Token generated successfully.', '72838', '652365221', '652', NULL, 13.99, '0bf1ff27d2bc11d2637ca359e33213ec', '2016-04-27 15:34:10'),
(80, 'ObtencionToken', '1', 'DUPLICATED_TR', 'Request transaction already exists.', '72778', '652365221', '652', NULL, 13.99, '', '2016-04-27 15:33:16'),
(81, 'ObtencionToken', '29', 'DUPLICATED_TR', 'Request transaction already exists.', '72844', '652365221', '652', NULL, 13.99, '', '2016-04-27 15:35:40'),
(82, 'ObtencionToken', '2a', 'TOKEN_SUCCESS', 'Token generated successfully.', '72845', '652365221', '652', NULL, 13.99, '787755a3657301c9d4ec7b6c46275d38', '2016-04-27 15:35:58'),
(83, 'ObtencionToken', '2b', 'TOKEN_SUCCESS', 'Token generated successfully.', '72846', '652365221', '652', NULL, 13.99, '8f5c4e6f24b2a6f12a509336a26c9307', '2016-04-27 15:36:16'),
(84, 'ObtencionToken', '2c', 'TOKEN_SUCCESS', 'Token generated successfully.', '72981', '652365221', '652', NULL, 13.99, '86b9a155fa19f22d4f9bd105d3e2267a', '2016-04-27 15:45:20'),
(85, 'PeticionCobro', '2d', 'MISSING_PROPERTY', 'Missing property in XML. Please send a correct XML', '72982', '652365221', '652', NULL, 13.99, NULL, '0000-00-00 00:00:00'),
(86, 'ObtencionToken', '2e', 'TOKEN_SUCCESS', 'Token generated successfully.', '72987', '652365221', '652', NULL, 13.99, '09cdc33257f9756a877a00ebe711d2ca', '2016-04-27 15:53:12'),
(87, 'PeticionCobro', '2f', 'SYSTEM_ERROR', 'An error ocurred. Please try again.', '72988', '652365221', '652', NULL, 13.99, '09cdc33257f9756a877a00ebe711d2ca', '2016-04-27 15:53:12'),
(88, 'ObtencionToken', '2g', 'TOKEN_SUCCESS', 'Token generated successfully.', '73014', '652365221', '652', NULL, 13.99, '8419e77117b2bba26aa69d448b962bda', '2016-04-27 16:12:59'),
(89, 'PeticionCobro', '2h', 'SYSTEM_ERROR', 'An error ocurred. Please try again.', '73015', '652365221', '652', NULL, 13.99, '8419e77117b2bba26aa69d448b962bda', '2016-04-27 16:12:59'),
(90, 'ObtencionToken', '2i', 'TOKEN_SUCCESS', 'Token generated successfully.', '73046', '652365221', '652', NULL, 13.99, '93b0e551f0bead9fae4fcfe141b5be8f', '2016-04-27 16:43:18'),
(91, 'PeticionCobro', '2j', 'NO_FUNDS', 'User does not have enough balance.', '73047', '652365221', '652', NULL, 13.99, '93b0e551f0bead9fae4fcfe141b5be8f', '2016-04-27 16:43:18'),
(92, 'ObtencionToken', '2k', 'TOKEN_SUCCESS', 'Token generated successfully.', '77023', '652365221', '652', NULL, 13.99, 'fa0061e06a90352d0499b94816ae8bd0', '2016-04-28 09:21:56'),
(93, 'PeticionCobro', '2l', 'NO_FUNDS', 'User does not have enough balance.', '77024', '652365221', '652', NULL, 13.99, 'fa0061e06a90352d0499b94816ae8bd0', '2016-04-28 09:21:56'),
(94, 'PeticionSms', '2m', 'SUCCESS', 'Request processed correctly.', '77025', '652365221', '652', 'No dispone de fondos suficientes para continuar con la suscripción.', 13.99, 'fa0061e06a90352d0499b94816ae8bd0', '2016-04-28 09:21:56'),
(95, 'ObtencionToken', '2n', 'TOKEN_SUCCESS', 'Token generated successfully.', '77549', '567656444', '567', NULL, 13.99, 'fd1f8085f501c25c9bbadf55685160f2', '2016-04-28 09:32:51'),
(96, 'PeticionCobro', '2o', 'CHARGING_ERROR', 'An error ocurred, please try again.', '77551', '567656444', '567', NULL, 13.99, 'fd1f8085f501c25c9bbadf55685160f2', '2016-04-28 09:32:51'),
(97, 'ObtencionToken', '2p', 'TOKEN_SUCCESS', 'Token generated successfully.', '77689', '567656444', '567', NULL, 13.99, 'b27234cce0a03724c6c10913d798ac03', '2016-04-28 09:34:21'),
(98, 'PeticionCobro', '2q', 'CHARGING_ERROR', 'An error ocurred, please try again.', '77690', '567656444', '567', NULL, 13.99, 'b27234cce0a03724c6c10913d798ac03', '2016-04-28 09:34:21'),
(99, 'ObtencionToken', '2r', 'TOKEN_SUCCESS', 'Token generated successfully.', '77706', '567656444', '567', NULL, 13.99, '6ebf3491d62e13a1d7cb2316d08286b8', '2016-04-28 09:35:17'),
(100, 'PeticionCobro', '2s', 'CHARGING_ERROR', 'An error ocurred, please try again.', '77707', '567656444', '567', NULL, 13.99, '6ebf3491d62e13a1d7cb2316d08286b8', '2016-04-28 09:35:17'),
(101, 'ObtencionToken', '2t', 'TOKEN_SUCCESS', 'Token generated successfully.', '77708', '567656444', '567', NULL, 13.99, '444b28e9192efbdeade62ae1c4e8a6e3', '2016-04-28 09:35:24'),
(102, 'PeticionCobro', '2u', 'NO_FUNDS', 'User does not have enough balance.', '77709', '567656444', '567', NULL, 13.99, '444b28e9192efbdeade62ae1c4e8a6e3', '2016-04-28 09:35:24'),
(103, 'PeticionSms', '2v', 'SUCCESS', 'Request processed correctly.', '77710', '567656444', '567', 'No dispone de fondos suficientes para continuar con la suscripción, procedemos a darle de baja', 13.99, '444b28e9192efbdeade62ae1c4e8a6e3', '2016-04-28 09:35:24'),
(104, 'ObtencionToken', '2w', 'TOKEN_SUCCESS', 'Token generated successfully.', '78169', '653626777', '$i[', NULL, 13.99, '0abd3845d6c02cc82e4da12f2f1ffd2a', '2016-04-28 10:44:47'),
(105, 'PeticionCobro', '2x', 'NO_FUNDS', 'User does not have enough balance.', '78170', '653626777', '$i[', NULL, 13.99, '0abd3845d6c02cc82e4da12f2f1ffd2a', '2016-04-28 10:44:47'),
(106, 'PeticionSms', '2y', 'SUCCESS', 'Request processed correctly.', '78171', '653626777', '$i[', 'No dispone de fondos suficientes para continuar con la suscripción, procedemos a darle de baja', 13.99, '0abd3845d6c02cc82e4da12f2f1ffd2a', '2016-04-28 10:44:47'),
(107, 'ObtencionToken', '2z', 'TOKEN_SUCCESS', 'Token generated successfully.', '78242', '653626777', '0', NULL, 13.99, 'f55bf6e6a59132e1be32ae9ea84281e2', '2016-04-28 10:51:50'),
(108, 'PeticionCobro', '30', 'NO_FUNDS', 'User does not have enough balance.', '78243', '653626777', '0', NULL, 13.99, 'f55bf6e6a59132e1be32ae9ea84281e2', '2016-04-28 10:51:50'),
(109, 'PeticionSms', '31', 'MISSING_PROPERTY', 'Missing property in XML. Please send a correct XML', '78244', '653626777', '0', 'No dispone de fondos suficientes para continuar con la suscripción, procedemos a darle de baja', 13.99, 'f55bf6e6a59132e1be32ae9ea84281e2', '2016-04-28 10:51:50'),
(110, 'ObtencionToken', '32', 'TOKEN_SUCCESS', 'Token generated successfully.', '78245', '567656444', '0', NULL, 13.99, '8366a14387d1a5d0f0600781c78b0598', '2016-04-28 10:51:51'),
(111, 'PeticionCobro', '33', 'NO_FUNDS', 'User does not have enough balance.', '78246', '567656444', '0', NULL, 13.99, '8366a14387d1a5d0f0600781c78b0598', '2016-04-28 10:51:51'),
(112, 'PeticionSms', '34', 'MISSING_PROPERTY', 'Missing property in XML. Please send a correct XML', '78247', '567656444', '0', 'No dispone de fondos suficientes para continuar con la suscripción, procedemos a darle de baja', 13.99, '8366a14387d1a5d0f0600781c78b0598', '2016-04-28 10:51:51'),
(113, 'ObtencionToken', '35', 'SYSTEM_ERROR', 'An error ocurred. Please try again.', '78466', '653626777', '653', NULL, 13.99, '', '2016-04-28 10:54:57'),
(114, 'ObtencionToken', '36', 'TOKEN_SUCCESS', 'Token generated successfully.', '78467', '567656444', '567', NULL, 13.99, '1a8f2009ddf2e83176d758f3a145da58', '2016-04-28 10:54:57'),
(115, 'PeticionCobro', '37', 'CHARGING_ERROR', 'An error ocurred, please try again.', '78468', '567656444', '567', NULL, 13.99, '1a8f2009ddf2e83176d758f3a145da58', '2016-04-28 10:54:57'),
(116, 'ObtencionToken', '38', 'TOKEN_SUCCESS', 'Token generated successfully.', '78469', '653626777', '653', NULL, 13.99, '4bce195a7339c5b8d5e9e10ac1478a85', '2016-04-28 10:55:07'),
(117, 'PeticionCobro', '39', 'NO_FUNDS', 'User does not have enough balance.', '78470', '653626777', '653', NULL, 13.99, '4bce195a7339c5b8d5e9e10ac1478a85', '2016-04-28 10:55:07'),
(118, 'PeticionSms', '3a', 'SUCCESS', 'Request processed correctly.', '78471', '653626777', '653', 'No dispone de fondos suficientes para continuar con la suscripción, procedemos a darle de baja', 13.99, '4bce195a7339c5b8d5e9e10ac1478a85', '2016-04-28 10:55:07'),
(119, 'ObtencionToken', '3b', 'TOKEN_SUCCESS', 'Token generated successfully.', '78473', '567656444', '567', NULL, 13.99, '5c48a48e3fbb6cfc18822a0dd603848e', '2016-04-28 10:55:07'),
(120, 'PeticionCobro', '3c', 'NO_FUNDS', 'User does not have enough balance.', '78475', '567656444', '567', NULL, 13.99, '5c48a48e3fbb6cfc18822a0dd603848e', '2016-04-28 10:55:07'),
(121, 'PeticionSms', '3d', 'SUCCESS', 'Request processed correctly.', '78477', '567656444', '567', 'No dispone de fondos suficientes para continuar con la suscripción, procedemos a darle de baja', 13.99, '5c48a48e3fbb6cfc18822a0dd603848e', '2016-04-28 10:55:07'),
(122, 'ObtencionToken', '3e', 'TOKEN_SUCCESS', 'Token generated successfully.', '78863', '653626777', '653', NULL, 13.99, '4af5e4bce4682549238be1eb303884d8', '2016-04-28 11:01:49'),
(123, 'PeticionCobro', '3f', 'SUCCESS', 'Request processed correctly.', '78864', '653626777', '653', NULL, 13.99, '4af5e4bce4682549238be1eb303884d8', '2016-04-28 11:01:49'),
(124, 'PeticionSms', '3g', 'SUCCESS', 'Request processed correctly.', '78865', '653626777', '653', 'Cobro realizado correctamente.', 13.99, '4af5e4bce4682549238be1eb303884d8', '2016-04-28 11:01:49'),
(125, 'ObtencionToken', '3h', 'TOKEN_SUCCESS', 'Token generated successfully.', '78866', '567656444', '567', NULL, 13.99, 'b9102af1a9210f27645a21afbdffe72e', '2016-04-28 11:01:50'),
(126, 'PeticionCobro', '3i', 'CHARGING_ERROR', 'An error ocurred, please try again.', '78867', '567656444', '567', NULL, 13.99, 'b9102af1a9210f27645a21afbdffe72e', '2016-04-28 11:01:50'),
(127, 'ObtencionToken', '3j', 'SYSTEM_ERROR', 'An error ocurred. Please try again.', '78868', '653626777', '653', NULL, 13.99, '', '2016-04-28 11:02:58'),
(128, 'ObtencionToken', '3k', 'TOKEN_SUCCESS', 'Token generated successfully.', '78869', '567656444', '567', NULL, 13.99, 'f0fc2ca73a402f7bcf4061bdad4274c2', '2016-04-28 11:02:58'),
(129, 'PeticionCobro', '3l', 'NO_FUNDS', 'User does not have enough balance.', '78870', '567656444', '567', NULL, 13.99, 'f0fc2ca73a402f7bcf4061bdad4274c2', '2016-04-28 11:02:58'),
(130, 'PeticionSms', '3m', 'SUCCESS', 'Request processed correctly.', '78871', '567656444', '567', 'No dispone de fondos suficientes para continuar con la suscripción, procedemos a darle de baja', 13.99, 'f0fc2ca73a402f7bcf4061bdad4274c2', '2016-04-28 11:02:58'),
(131, 'ObtencionToken', '3n', 'TOKEN_SUCCESS', 'Token generated successfully.', '78883', '653626777', '653', NULL, 13.99, 'c11a84515fcea6cee568b7b71e4d2cee', '2016-04-28 11:04:38'),
(132, 'PeticionCobro', '3o', 'NO_FUNDS', 'User does not have enough balance.', '78884', '653626777', '653', NULL, 13.99, 'c11a84515fcea6cee568b7b71e4d2cee', '2016-04-28 11:04:38'),
(133, 'PeticionSms', '3p', 'SUCCESS', 'Request processed correctly.', '78885', '653626777', '653', 'No dispone de fondos suficientes para continuar con la suscripción, procedemos a darle de baja', 13.99, 'c11a84515fcea6cee568b7b71e4d2cee', '2016-04-28 11:04:38'),
(134, 'ObtencionToken', '3q', 'TOKEN_SUCCESS', 'Token generated successfully.', '82086', '653626777', '653', NULL, 13.99, '4bf7d3c551ecd3873f3a481895290643', '2016-04-28 11:28:50'),
(135, 'PeticionCobro', '3r', 'CHARGING_ERROR', 'An error ocurred, please try again.', '82087', '653626777', '653', NULL, 13.99, '4bf7d3c551ecd3873f3a481895290643', '2016-04-28 11:28:50'),
(136, 'ObtencionToken', '3s', 'TOKEN_SUCCESS', 'Token generated successfully.', '82088', '567656444', '567', NULL, 13.99, 'd2393013d99c3d0d0e668a8a4bbd7ba4', '2016-04-28 11:28:50'),
(137, 'PeticionCobro', '3t', 'CHARGING_ERROR', 'An error ocurred, please try again.', '82089', '567656444', '567', NULL, 13.99, 'd2393013d99c3d0d0e668a8a4bbd7ba4', '2016-04-28 11:28:50'),
(138, 'ObtencionToken', '3u', 'TOKEN_SUCCESS', 'Token generated successfully.', '82090', '89777265424', '897', NULL, 13.99, 'b8fe8e3a7ec10147e1163747393ffeba', '2016-04-28 11:28:50'),
(139, 'PeticionCobro', '3v', 'NO_FUNDS', 'User does not have enough balance.', '82091', '89777265424', '897', NULL, 13.99, 'b8fe8e3a7ec10147e1163747393ffeba', '2016-04-28 11:28:50'),
(140, 'PeticionSms', '3w', 'SUCCESS', 'Request processed correctly.', '82092', '89777265424', '897', 'No dispone de fondos suficientes para continuar con la suscripción, procedemos a darle de baja', 13.99, 'b8fe8e3a7ec10147e1163747393ffeba', '2016-04-28 11:28:50'),
(141, 'ObtencionToken', '3x', 'TOKEN_SUCCESS', 'Token generated successfully.', '82096', '653626777', '653', NULL, 13.99, 'a6619bb55d61fec631015ce831535553', '2016-04-28 11:31:41'),
(142, 'PeticionCobro', '3y', 'NO_FUNDS', 'User does not have enough balance.', '82097', '653626777', '653', NULL, 13.99, 'a6619bb55d61fec631015ce831535553', '2016-04-28 11:31:41'),
(143, 'PeticionSms', '3z', 'SUCCESS', 'Request processed correctly.', '82098', '653626777', '653', 'No dispone de fondos suficientes para continuar con la suscripción, procedemos a darle de baja', 13.99, 'a6619bb55d61fec631015ce831535553', '2016-04-28 11:31:41'),
(144, 'ObtencionToken', '40', 'TOKEN_SUCCESS', 'Token generated successfully.', '82099', '567656444', '567', NULL, 13.99, '3d5e7ff54e32b6b8fffdcef48b061744', '2016-04-28 11:31:41'),
(145, 'PeticionCobro', '41', 'NO_FUNDS', 'User does not have enough balance.', '82100', '567656444', '567', NULL, 13.99, '3d5e7ff54e32b6b8fffdcef48b061744', '2016-04-28 11:31:41'),
(146, 'PeticionSms', '42', 'SUCCESS', 'Request processed correctly.', '82101', '567656444', '567', 'No dispone de fondos suficientes para continuar con la suscripción, procedemos a darle de baja', 13.99, '3d5e7ff54e32b6b8fffdcef48b061744', '2016-04-28 11:31:41'),
(147, 'ObtencionToken', '43', 'SYSTEM_ERROR', 'An error ocurred. Please try again.', '82102', '653626777', '653', NULL, 13.99, '', '2016-04-28 11:34:09'),
(148, 'ObtencionToken', '44', 'TOKEN_SUCCESS', 'Token generated successfully.', '82103', '653626777', '653', NULL, 13.99, 'bccabba41da942a03f69b97e79d1173b', '2016-04-28 11:34:09'),
(149, 'PeticionCobro', '45', 'NO_FUNDS', 'User does not have enough balance.', '82104', '653626777', '653', NULL, 13.99, 'bccabba41da942a03f69b97e79d1173b', '2016-04-28 11:34:09'),
(150, 'PeticionSms', '46', 'SUCCESS', 'Request processed correctly.', '82105', '653626777', '653', 'No dispone de fondos suficientes para continuar con la suscripción, procedemos a darle de baja', 13.99, 'bccabba41da942a03f69b97e79d1173b', '2016-04-28 11:34:09'),
(151, 'ObtencionToken', '47', 'TOKEN_SUCCESS', 'Token generated successfully.', '82106', '567656444', '567', NULL, 13.99, '67f8ae24a30f5314dab8f7fe58b41cea', '2016-04-28 11:34:09'),
(152, 'PeticionCobro', '48', 'NO_FUNDS', 'User does not have enough balance.', '82107', '567656444', '567', NULL, 13.99, '67f8ae24a30f5314dab8f7fe58b41cea', '2016-04-28 11:34:09'),
(153, 'PeticionSms', '49', 'SUCCESS', 'Request processed correctly.', '82108', '567656444', '567', 'No dispone de fondos suficientes para continuar con la suscripción, procedemos a darle de baja', 13.99, '67f8ae24a30f5314dab8f7fe58b41cea', '2016-04-28 11:34:09'),
(154, 'ObtencionToken', '4a', 'TOKEN_SUCCESS', 'Token generated successfully.', '82109', '89777265424', '897', NULL, 13.99, 'f96e0e6d5e21cbb1f17890b78b8eb5c7', '2016-04-28 11:34:10'),
(155, 'PeticionCobro', '4b', 'NO_FUNDS', 'User does not have enough balance.', '82110', '89777265424', '897', NULL, 13.99, 'f96e0e6d5e21cbb1f17890b78b8eb5c7', '2016-04-28 11:34:10'),
(156, 'PeticionSms', '4c', 'SYSTEM_ERROR', 'An error ocurred. Please try again.', '82111', '89777265424', '897', 'No dispone de fondos suficientes para continuar con la suscripción, procedemos a darle de baja', 13.99, 'f96e0e6d5e21cbb1f17890b78b8eb5c7', '2016-04-28 11:34:10'),
(157, 'ObtencionToken', '4d', 'TOKEN_SUCCESS', 'Token generated successfully.', '82112', '567656444', '567', NULL, 13.99, '527ead25d18dbcbf1e8ca9f5ef19fe60', '2016-04-28 11:34:10'),
(158, 'PeticionCobro', '4e', 'SUCCESS', 'Request processed correctly.', '82113', '567656444', '567', NULL, 13.99, '527ead25d18dbcbf1e8ca9f5ef19fe60', '2016-04-28 11:34:10'),
(159, 'PeticionSms', '4f', 'SUCCESS', 'Request processed correctly.', '82114', '567656444', '567', 'Cobro realizado correctamente.', 13.99, '527ead25d18dbcbf1e8ca9f5ef19fe60', '2016-04-28 11:34:10'),
(160, 'ObtencionToken', '4g', 'TOKEN_SUCCESS', 'Token generated successfully.', '82115', '89777265424', '897', NULL, 13.99, 'b86ca27081189846517a2029bf432777', '2016-04-28 11:34:11'),
(161, 'PeticionCobro', '4h', 'NO_FUNDS', 'User does not have enough balance.', '82116', '89777265424', '897', NULL, 13.99, 'b86ca27081189846517a2029bf432777', '2016-04-28 11:34:11'),
(162, 'PeticionSms', '4i', 'SUCCESS', 'Request processed correctly.', '82117', '89777265424', '897', 'No dispone de fondos suficientes para continuar con la suscripción, procedemos a darle de baja', 13.99, 'b86ca27081189846517a2029bf432777', '2016-04-28 11:34:11'),
(163, 'ObtencionToken', '4j', 'TOKEN_SUCCESS', 'Token generated successfully.', '82118', '653626777', '653', NULL, 13.99, '985ba64c594c9cc8ae33a8292301b2c1', '2016-04-28 11:40:27'),
(164, 'PeticionCobro', '4k', 'NO_FUNDS', 'User does not have enough balance.', '82119', '653626777', '653', NULL, 13.99, '985ba64c594c9cc8ae33a8292301b2c1', '2016-04-28 11:40:27'),
(165, 'PeticionSms', '4l', 'SUCCESS', 'Request processed correctly.', '82120', '653626777', '653', 'No dispone de fondos suficientes para continuar con la suscripción, procedemos a darle de baja', 13.99, '985ba64c594c9cc8ae33a8292301b2c1', '2016-04-28 11:40:27'),
(166, 'ObtencionToken', '4m', 'SYSTEM_ERROR', 'An error ocurred. Please try again.', '82121', '653626777', '653', NULL, 13.99, '', '2016-04-28 11:53:32'),
(167, 'ObtencionToken', '4n', 'TOKEN_SUCCESS', 'Token generated successfully.', '82122', '653626777', '653', NULL, 13.99, 'b5eab32dce22dc9659242fb29056592d', '2016-04-28 11:53:32'),
(168, 'PeticionCobro', '4o', 'NO_FUNDS', 'User does not have enough balance.', '82123', '653626777', '653', NULL, 13.99, 'b5eab32dce22dc9659242fb29056592d', '2016-04-28 11:53:32'),
(169, 'PeticionSms', '4p', 'SUCCESS', 'Request processed correctly.', '82124', '653626777', '653', 'No dispone de fondos suficientes para continuar con la suscripción, procedemos a darle de baja', 13.99, 'b5eab32dce22dc9659242fb29056592d', '2016-04-28 11:53:32'),
(170, 'ObtencionToken', '4q', 'SYSTEM_ERROR', 'An error ocurred. Please try again.', '82125', '567656444', '567', NULL, 13.99, '', '2016-04-28 11:53:32'),
(171, 'ObtencionToken', '4r', 'SYSTEM_ERROR', 'An error ocurred. Please try again.', '82126', '567656444', '567', NULL, 13.99, '', '2016-04-28 11:53:32'),
(172, 'ObtencionToken', '4s', 'TOKEN_SUCCESS', 'Token generated successfully.', '82127', '567656444', '567', NULL, 13.99, '4027f0ac0eafb84f5ffa8e42f3d5310d', '2016-04-28 11:53:32'),
(173, 'PeticionCobro', '4t', 'NO_FUNDS', 'User does not have enough balance.', '82128', '567656444', '567', NULL, 13.99, '4027f0ac0eafb84f5ffa8e42f3d5310d', '2016-04-28 11:53:32'),
(174, 'PeticionSms', '4u', 'SUCCESS', 'Request processed correctly.', '82129', '567656444', '567', 'No dispone de fondos suficientes para continuar con la suscripción, procedemos a darle de baja', 13.99, '4027f0ac0eafb84f5ffa8e42f3d5310d', '2016-04-28 11:53:32'),
(175, 'ObtencionToken', '4v', 'TOKEN_SUCCESS', 'Token generated successfully.', '82130', '567656444', '567', NULL, 13.99, 'ce79141bb1b1759eaba5ffbbac8b74f1', '2016-04-28 11:53:33'),
(176, 'PeticionCobro', '4w', 'NO_FUNDS', 'User does not have enough balance.', '82131', '567656444', '567', NULL, 13.99, 'ce79141bb1b1759eaba5ffbbac8b74f1', '2016-04-28 11:53:33'),
(177, 'PeticionSms', '4x', 'SUCCESS', 'Request processed correctly.', '82132', '567656444', '567', 'No dispone de fondos suficientes para continuar con la suscripción, procedemos a darle de baja', 13.99, 'ce79141bb1b1759eaba5ffbbac8b74f1', '2016-04-28 11:53:33'),
(178, 'ObtencionToken', '4y', 'TOKEN_SUCCESS', 'Token generated successfully.', '83442', '653626777', '653', NULL, 13.99, 'c94ffdb4b88459be77e5445a9f947f3c', '2016-04-28 12:38:25'),
(179, 'ObtencionToken', '4z', 'TOKEN_SUCCESS', 'Token generated successfully.', '83723', '653626777', '653', NULL, 13.99, 'fab0254ce4009dee28ab6ce02d4fff4f', '2016-04-28 12:39:08'),
(180, 'ObtencionToken', '50', 'DUPLICATED_TR', 'Request transaction already exists.', '85859', '653626777', '653', NULL, 13.99, '', '2016-04-28 12:44:42'),
(181, 'ObtencionToken', '51', 'TOKEN_SUCCESS', 'Token generated successfully.', '85884', '653626777', '653', NULL, 13.99, '79ca781aedccef91b59291bc86bbded6', '2016-04-28 12:44:46'),
(182, 'PeticionCobro', '52', 'NO_FUNDS', 'User does not have enough balance.', '85886', '653626777', '653', NULL, 13.99, '79ca781aedccef91b59291bc86bbded6', '2016-04-28 12:44:46'),
(183, 'PeticionSms', '53', 'SUCCESS', 'Request processed correctly.', '85888', '653626777', '653', 'No dispone de fondos suficientes para continuar con la suscripción, procedemos a darle de baja', 13.99, '79ca781aedccef91b59291bc86bbded6', '2016-04-28 12:44:46'),
(184, 'ObtencionToken', '54', 'TOKEN_SUCCESS', 'Token generated successfully.', '86540', '653626777', '653', NULL, 13.99, '3c22201d0420f9ebff0637aba1c46678', '2016-04-28 12:46:28'),
(185, 'PeticionCobro', '55', 'CHARGING_ERROR', 'An error ocurred, please try again.', '86542', '653626777', '653', NULL, 13.99, '3c22201d0420f9ebff0637aba1c46678', '2016-04-28 12:46:28'),
(186, 'ObtencionToken', '56', 'TOKEN_SUCCESS', 'Token generated successfully.', '86589', '653626777', '653', NULL, 13.99, 'c0629ed2a590a637f61f00b7803fabfe', '2016-04-28 12:46:36'),
(187, 'PeticionCobro', '57', 'CHARGING_ERROR', 'An error ocurred, please try again.', '86591', '653626777', '653', NULL, 13.99, 'c0629ed2a590a637f61f00b7803fabfe', '2016-04-28 12:46:36'),
(188, 'ObtencionToken', '58', 'TOKEN_SUCCESS', 'Token generated successfully.', '86625', '653626777', '653', NULL, 13.99, 'dd8b4dfb0fbef164f637853e2db2495b', '2016-04-28 12:46:41'),
(189, 'PeticionCobro', '59', 'CHARGING_ERROR', 'An error ocurred, please try again.', '86627', '653626777', '653', NULL, 13.99, 'dd8b4dfb0fbef164f637853e2db2495b', '2016-04-28 12:46:41'),
(190, 'ObtencionToken', '5a', 'TOKEN_SUCCESS', 'Token generated successfully.', '86654', '653626777', '653', NULL, 13.99, '9b64faf16b39981273cf816a9fc1a067', '2016-04-28 12:46:45'),
(191, 'PeticionCobro', '5b', 'SUCCESS', 'Request processed correctly.', '86656', '653626777', '653', NULL, 13.99, '9b64faf16b39981273cf816a9fc1a067', '2016-04-28 12:46:45'),
(192, 'ObtencionToken', '5c', 'TOKEN_SUCCESS', 'Token generated successfully.', '87512', '653626777', '653', NULL, 13.99, 'c151025a4895e88c61102407f797a880', '2016-04-28 12:49:01'),
(193, 'PeticionCobro', '5d', 'CHARGING_ERROR', 'An error ocurred, please try again.', '87514', '653626777', '653', NULL, 13.99, 'c151025a4895e88c61102407f797a880', '2016-04-28 12:49:01'),
(194, 'ObtencionToken', '5e', 'TOKEN_SUCCESS', 'Token generated successfully.', '87587', '653626777', '653', NULL, 13.99, 'cb8d151987ceca5c781d634f96085795', '2016-04-28 12:49:13'),
(195, 'PeticionCobro', '5f', 'SYSTEM_ERROR', 'An error ocurred. Please try again.', '87589', '653626777', '653', NULL, 13.99, 'cb8d151987ceca5c781d634f96085795', '2016-04-28 12:49:13'),
(196, 'ObtencionToken', '5g', 'TOKEN_SUCCESS', 'Token generated successfully.', '87618', '653626777', '653', NULL, 13.99, '85f7f181ac8b5628790d92f7f3ad987b', '2016-04-28 12:49:17'),
(197, 'PeticionCobro', '5h', 'SUCCESS', 'Request processed correctly.', '87620', '653626777', '653', NULL, 13.99, '85f7f181ac8b5628790d92f7f3ad987b', '2016-04-28 12:49:17'),
(198, 'ObtencionToken', '5i', 'TOKEN_SUCCESS', 'Token generated successfully.', '88190', NULL, '0', NULL, 13.99, 'b9f0523413f4bdc839af3adf22ed1d2b', '2016-04-28 12:50:49'),
(199, 'PeticionCobro', '5j', 'MISSING_PROPERTY', 'Missing property in XML. Please send a correct XML', '88192', NULL, '0', NULL, 13.99, 'b9f0523413f4bdc839af3adf22ed1d2b', '2016-04-28 12:50:49'),
(200, 'ObtencionToken', '5k', 'TOKEN_SUCCESS', 'Token generated successfully.', '88220', '653626777', '653', NULL, 13.99, '2070169d23183e9a6551d73aacaa6fcc', '2016-04-28 12:50:53'),
(201, 'PeticionCobro', '5l', 'SYSTEM_ERROR', 'An error ocurred. Please try again.', '88221', '653626777', '653', NULL, 13.99, '2070169d23183e9a6551d73aacaa6fcc', '2016-04-28 12:50:53'),
(202, 'ObtencionToken', '5m', 'SYSTEM_ERROR', 'An error ocurred. Please try again.', '88241', '653626777', '653', NULL, 13.99, '', '2016-04-28 12:50:57'),
(203, 'ObtencionToken', '5n', 'TOKEN_SUCCESS', 'Token generated successfully.', '88261', '653626777', '653', NULL, 13.99, '7dd7561d631ce8950711b2172ba5cfaf', '2016-04-28 12:51:00'),
(204, 'PeticionCobro', '5o', 'CHARGING_ERROR', 'An error ocurred, please try again.', '88263', '653626777', '653', NULL, 13.99, '7dd7561d631ce8950711b2172ba5cfaf', '2016-04-28 12:51:00'),
(205, 'ObtencionToken', '5p', 'TOKEN_SUCCESS', 'Token generated successfully.', '88288', '653626777', '653', NULL, 13.99, 'b3fe4ece937b8bd5df545008ad52f84a', '2016-04-28 12:51:04'),
(206, 'PeticionCobro', '5q', 'CHARGING_ERROR', 'An error ocurred, please try again.', '88291', '653626777', '653', NULL, 13.99, 'b3fe4ece937b8bd5df545008ad52f84a', '2016-04-28 12:51:04'),
(207, 'ObtencionToken', '5r', 'TOKEN_SUCCESS', 'Token generated successfully.', '88316', '653626777', '653', NULL, 13.99, '9ca1901251fd78d28c970a41890f5c59', '2016-04-28 12:51:08'),
(208, 'PeticionCobro', '5s', 'NO_FUNDS', 'User does not have enough balance.', '88318', '653626777', '653', NULL, 13.99, '9ca1901251fd78d28c970a41890f5c59', '2016-04-28 12:51:08'),
(209, 'PeticionSms', '5t', 'SUCCESS', 'Request processed correctly.', '88320', '653626777', '653', 'No dispone de fondos suficientes para continuar con la suscripción, procedemos a darle de baja', 13.99, '9ca1901251fd78d28c970a41890f5c59', '2016-04-28 12:51:08'),
(210, 'ObtencionToken', '5u', 'TOKEN_SUCCESS', 'Token generated successfully.', '89131', '971568521', '971', NULL, 13.99, 'bfb5b64a51ee10dd6604778127a28d36', '2016-04-28 12:53:29'),
(211, 'PeticionCobro', '5v', 'SYSTEM_ERROR', 'An error ocurred. Please try again.', '89132', '971568521', '971', NULL, 13.99, 'bfb5b64a51ee10dd6604778127a28d36', '2016-04-28 12:53:29'),
(212, 'ObtencionToken', '5w', 'TOKEN_SUCCESS', 'Token generated successfully.', '89152', '971568521', '971', NULL, 13.99, '16e044e58e65f57b40f090a997db7ee7', '2016-04-28 12:53:33'),
(213, 'PeticionCobro', '5x', 'NO_FUNDS', 'User does not have enough balance.', '89153', '971568521', '971', NULL, 13.99, '16e044e58e65f57b40f090a997db7ee7', '2016-04-28 12:53:33'),
(214, 'PeticionSms', '5y', 'SUCCESS', 'Request processed correctly.', '89155', '971568521', '971', 'No dispone de fondos suficientes para continuar con la suscripción, procedemos a darle de baja', 13.99, '16e044e58e65f57b40f090a997db7ee7', '2016-04-28 12:53:33'),
(215, 'ObtencionToken', '5z', 'TOKEN_SUCCESS', 'Token generated successfully.', '89316', '971568521', '971', NULL, 13.99, '833b9be954ed75582eef2e3fb1f31537', '2016-04-28 12:54:12'),
(216, 'PeticionCobro', '60', 'SYSTEM_ERROR', 'An error ocurred. Please try again.', '89318', '971568521', '971', NULL, 13.99, '833b9be954ed75582eef2e3fb1f31537', '2016-04-28 12:54:12'),
(217, 'ObtencionToken', '61', 'TOKEN_SUCCESS', 'Token generated successfully.', '89338', '971568521', '971', NULL, 13.99, '5b065f549086ee0ac3f6ba9324acd3fa', '2016-04-28 12:54:16'),
(218, 'PeticionCobro', '62', 'NO_FUNDS', 'User does not have enough balance.', '89340', '971568521', '971', NULL, 13.99, '5b065f549086ee0ac3f6ba9324acd3fa', '2016-04-28 12:54:16'),
(219, 'PeticionSms', '63', 'SYSTEM_ERROR', 'An error ocurred. Please try again.', '89342', '971568521', '971', 'No dispone de fondos suficientes para continuar con la suscripción, procedemos a darle de baja', 13.99, '5b065f549086ee0ac3f6ba9324acd3fa', '2016-04-28 12:54:16'),
(220, 'ObtencionToken', '64', 'SYSTEM_ERROR', 'An error ocurred. Please try again.', '89367', '971568521', '971', NULL, 13.99, '', '2016-04-28 12:54:22'),
(221, 'ObtencionToken', '65', 'TOKEN_SUCCESS', 'Token generated successfully.', '89394', '971568521', '971', NULL, 13.99, '5d92fe1db113686e7a916b31b0e61cbf', '2016-04-28 12:54:28'),
(222, 'PeticionCobro', '66', 'CHARGING_ERROR', 'An error ocurred, please try again.', '89395', '971568521', '971', NULL, 13.99, '5d92fe1db113686e7a916b31b0e61cbf', '2016-04-28 12:54:28'),
(223, 'ObtencionToken', '67', 'TOKEN_SUCCESS', 'Token generated successfully.', '89410', '971568521', '971', NULL, 13.99, '387b409aa801029fe09a0018c49d6a46', '2016-04-28 12:54:32'),
(224, 'PeticionCobro', '68', 'NO_FUNDS', 'User does not have enough balance.', '89411', '971568521', '971', NULL, 13.99, '387b409aa801029fe09a0018c49d6a46', '2016-04-28 12:54:32'),
(225, 'PeticionSms', '69', 'SUCCESS', 'Request processed correctly.', '89413', '971568521', '971', 'No dispone de fondos suficientes para continuar con la suscripción, procedemos a darle de baja', 13.99, '387b409aa801029fe09a0018c49d6a46', '2016-04-28 12:54:32'),
(226, 'ObtencionToken', '6a', 'TOKEN_SUCCESS', 'Token generated successfully.', '89425', '971568521', '971', NULL, 13.99, '18fd103c885db4052bd0bd89ede466e0', '2016-04-28 12:54:37'),
(227, 'PeticionCobro', '6b', 'NO_FUNDS', 'User does not have enough balance.', '89426', '971568521', '971', NULL, 13.99, '18fd103c885db4052bd0bd89ede466e0', '2016-04-28 12:54:37'),
(228, 'PeticionSms', '6c', 'SUCCESS', 'Request processed correctly.', '89428', '971568521', '971', 'No dispone de fondos suficientes para continuar con la suscripción, procedemos a darle de baja', 13.99, '18fd103c885db4052bd0bd89ede466e0', '2016-04-28 12:54:37'),
(229, 'ObtencionToken', '6d', 'TOKEN_SUCCESS', 'Token generated successfully.', '89457', '971568521', '971', NULL, 13.99, 'd64c6c4d061bfad2f916c0c679a2f92b', '2016-04-28 12:54:44'),
(230, 'PeticionCobro', '6e', 'SUCCESS', 'Request processed correctly.', '89459', '971568521', '971', NULL, 13.99, 'd64c6c4d061bfad2f916c0c679a2f92b', '2016-04-28 12:54:44'),
(231, 'PeticionSms', '6f', 'SUCCESS', 'Request processed correctly.', '89461', '971568521', '971', 'Cobro realizado correctamente, se le ha cobrado la cantidad de 13.99 ', 13.99, 'd64c6c4d061bfad2f916c0c679a2f92b', '2016-04-28 12:54:44'),
(232, 'ObtencionToken', '6g', 'SYSTEM_ERROR', 'An error ocurred. Please try again.', '91707', '653626777', '653', NULL, 13.99, '', '2016-04-28 13:01:22'),
(233, 'ObtencionToken', '6h', 'TOKEN_SUCCESS', 'Token generated successfully.', '91739', '653626777', '653', NULL, 13.99, '0eb89dd54834c87920165d97cfb45c04', '2016-04-28 13:01:27'),
(234, 'PeticionCobro', '6i', 'SYSTEM_ERROR', 'An error ocurred. Please try again.', '91741', '653626777', '653', NULL, 13.99, '0eb89dd54834c87920165d97cfb45c04', '2016-04-28 13:01:27'),
(235, 'ObtencionToken', '6j', 'TOKEN_SUCCESS', 'Token generated successfully.', '91920', '653626777', '653', NULL, 13.99, '6929a3eeb1d545a8e7fcd02e41c5f6ec', '2016-04-28 13:01:56'),
(236, 'PeticionCobro', '6k', 'NO_FUNDS', 'User does not have enough balance.', '91922', '653626777', '653', NULL, 13.99, '6929a3eeb1d545a8e7fcd02e41c5f6ec', '2016-04-28 13:01:56'),
(237, 'PeticionSms', '6l', 'SUCCESS', 'Request processed correctly.', '91923', '653626777', '653', 'No dispone de fondos suficientes para la suscripción, lo sentimos, no se le dió de alta', 13.99, '6929a3eeb1d545a8e7fcd02e41c5f6ec', '2016-04-28 13:01:56'),
(238, 'ObtencionToken', '6m', 'TOKEN_SUCCESS', 'Token generated successfully.', '92027', '653626777', '653', NULL, 13.99, '8355b57d97976912d85fb352ff35cf9f', '2016-04-28 13:02:13'),
(239, 'PeticionCobro', '6n', 'SUCCESS', 'Request processed correctly.', '92029', '653626777', '653', NULL, 13.99, '8355b57d97976912d85fb352ff35cf9f', '2016-04-28 13:02:13'),
(240, 'PeticionSms', '6o', 'SUCCESS', 'Request processed correctly.', '92031', '653626777', '653', 'Cobro realizado correctamente, se le ha cobrado la cantidad de 13.99, le damos de alta! ', 13.99, '8355b57d97976912d85fb352ff35cf9f', '2016-04-28 13:02:13'),
(241, 'ObtencionToken', '6p', 'SYSTEM_ERROR', 'An error ocurred. Please try again.', '93028', '653626777', '653', NULL, 13.99, '', '2016-04-28 13:04:57'),
(242, 'ObtencionToken', '6q', 'TOKEN_SUCCESS', 'Token generated successfully.', '93048', '653626777', '653', NULL, 13.99, '3b4cda8dc3b7dc2ffe49e00652d8aa7c', '2016-04-28 13:05:00'),
(243, 'PeticionCobro', '6r', 'NO_FUNDS', 'User does not have enough balance.', '93050', '653626777', '653', NULL, 13.99, '3b4cda8dc3b7dc2ffe49e00652d8aa7c', '2016-04-28 13:05:00'),
(244, 'PeticionSms', '6s', 'SYSTEM_ERROR', 'An error ocurred. Please try again.', '93052', '653626777', '653', 'No dispone de fondos suficientes para la suscripción, lo sentimos, no se le dió de alta', 13.99, '3b4cda8dc3b7dc2ffe49e00652d8aa7c', '2016-04-28 13:05:00'),
(245, 'ObtencionToken', '6t', 'TOKEN_SUCCESS', 'Token generated successfully.', '93128', '653626777', '653', NULL, 13.99, '6c2341de534e5cc6e5071e95d8d9e7ab', '2016-04-28 13:05:13'),
(246, 'PeticionCobro', '6u', 'SYSTEM_ERROR', 'An error ocurred. Please try again.', '93130', '653626777', '653', NULL, 13.99, '6c2341de534e5cc6e5071e95d8d9e7ab', '2016-04-28 13:05:13'),
(247, 'ObtencionToken', '6v', 'TOKEN_SUCCESS', 'Token generated successfully.', '93158', '653626777', '653', NULL, 13.99, 'fbccea3c8b2e199b965a54adc1235299', '2016-04-28 13:05:17'),
(248, 'PeticionCobro', '6w', 'SUCCESS', 'Request processed correctly.', '93160', '653626777', '653', NULL, 13.99, 'fbccea3c8b2e199b965a54adc1235299', '2016-04-28 13:05:17'),
(249, 'PeticionSms', '6x', 'SUCCESS', 'Request processed correctly.', '93163', '653626777', '653', 'Cobro realizado correctamente, se le ha cobrado la cantidad de 13.99, le damos de alta! ', 13.99, 'fbccea3c8b2e199b965a54adc1235299', '2016-04-28 13:05:17'),
(250, 'ObtencionToken', '6y', 'TOKEN_SUCCESS', 'Token generated successfully.', '94141', '653626777', '653', NULL, 13.99, 'a582da52475398e803c931a63268d65a', '2016-04-28 13:08:01'),
(251, 'PeticionCobro', '6z', 'NO_FUNDS', 'User does not have enough balance.', '94142', '653626777', '653', NULL, 13.99, 'a582da52475398e803c931a63268d65a', '2016-04-28 13:08:01'),
(252, 'PeticionSms', '70', 'SUCCESS', 'Request processed correctly.', '94144', '653626777', '653', 'No dispone de fondos suficientes para la suscripción, lo sentimos, no se le dió de alta', 13.99, 'a582da52475398e803c931a63268d65a', '2016-04-28 13:08:01'),
(253, 'ObtencionToken', '71', 'TOKEN_SUCCESS', 'Token generated successfully.', '94247', '653626777', '653', NULL, 13.99, '3ed161f7054776512d076a6df68d45c5', '2016-04-28 13:08:18'),
(254, 'PeticionCobro', '72', 'SYSTEM_ERROR', 'An error ocurred. Please try again.', '94249', '653626777', '653', NULL, 13.99, '3ed161f7054776512d076a6df68d45c5', '2016-04-28 13:08:18'),
(255, 'ObtencionToken', '73', 'TOKEN_SUCCESS', 'Token generated successfully.', '94265', '653626777', '653', NULL, 13.99, 'a57a58ceeb28c0efbc474ffdb09bd6a9', '2016-04-28 13:08:21'),
(256, 'PeticionCobro', '74', 'NO_FUNDS', 'User does not have enough balance.', '94267', '653626777', '653', NULL, 13.99, 'a57a58ceeb28c0efbc474ffdb09bd6a9', '2016-04-28 13:08:21'),
(257, 'PeticionSms', '75', 'SYSTEM_ERROR', 'An error ocurred. Please try again.', '94269', '653626777', '653', 'No dispone de fondos suficientes para la suscripción, lo sentimos, no se le dió de alta', 13.99, 'a57a58ceeb28c0efbc474ffdb09bd6a9', '2016-04-28 13:08:21'),
(258, 'ObtencionToken', '76', 'TOKEN_SUCCESS', 'Token generated successfully.', '94327', '653626777', '653', NULL, 13.99, 'de6585e76297d6fcb83d92fe71432dff', '2016-04-28 13:08:31'),
(259, 'PeticionCobro', '77', 'NO_FUNDS', 'User does not have enough balance.', '94329', '653626777', '653', NULL, 13.99, 'de6585e76297d6fcb83d92fe71432dff', '2016-04-28 13:08:31'),
(260, 'PeticionSms', '78', 'SUCCESS', 'Request processed correctly.', '94331', '653626777', '653', 'No dispone de fondos suficientes para la suscripción, lo sentimos, no se le dió de alta', 13.99, 'de6585e76297d6fcb83d92fe71432dff', '2016-04-28 13:08:31'),
(261, 'ObtencionToken', '79', 'TOKEN_SUCCESS', 'Token generated successfully.', '94367', '653626777', '653', NULL, 13.99, '74b8cbdd790186f1ccdd00a32c014e9d', '2016-04-28 13:08:37'),
(262, 'PeticionCobro', '7a', 'NO_FUNDS', 'User does not have enough balance.', '94369', '653626777', '653', NULL, 13.99, '74b8cbdd790186f1ccdd00a32c014e9d', '2016-04-28 13:08:37'),
(263, 'PeticionSms', '7b', 'SUCCESS', 'Request processed correctly.', '94371', '653626777', '653', 'No dispone de fondos suficientes para la suscripción, lo sentimos, no se le dió de alta', 13.99, '74b8cbdd790186f1ccdd00a32c014e9d', '2016-04-28 13:08:37'),
(264, 'ObtencionToken', '7c', 'TOKEN_SUCCESS', 'Token generated successfully.', '94400', '653626777', '653', NULL, 13.99, 'b0d8de485d2b193317972735d75dee55', '2016-04-28 13:08:42'),
(265, 'PeticionCobro', '7d', 'SYSTEM_ERROR', 'An error ocurred. Please try again.', '94402', '653626777', '653', NULL, 13.99, 'b0d8de485d2b193317972735d75dee55', '2016-04-28 13:08:42'),
(266, 'ObtencionToken', '7e', 'TOKEN_SUCCESS', 'Token generated successfully.', '94410', '653626777', '653', NULL, 13.99, '9c49af78ad9677644d4d5bb943366a92', '2016-04-28 13:08:46'),
(267, 'PeticionCobro', '7f', 'SYSTEM_ERROR', 'An error ocurred. Please try again.', '94411', '653626777', '653', NULL, 13.99, '9c49af78ad9677644d4d5bb943366a92', '2016-04-28 13:08:46'),
(268, 'ObtencionToken', '7g', 'TOKEN_SUCCESS', 'Token generated successfully.', '94412', '653626777', '653', NULL, 13.99, '48d41fbc27c10ff5f2a3762a455d95fc', '2016-04-28 13:08:49'),
(269, 'PeticionCobro', '7h', 'NO_FUNDS', 'User does not have enough balance.', '94413', '653626777', '653', NULL, 13.99, '48d41fbc27c10ff5f2a3762a455d95fc', '2016-04-28 13:08:49'),
(270, 'PeticionSms', '7i', 'SUCCESS', 'Request processed correctly.', '94414', '653626777', '653', 'No dispone de fondos suficientes para la suscripción, lo sentimos, no se le dió de alta', 13.99, '48d41fbc27c10ff5f2a3762a455d95fc', '2016-04-28 13:08:49'),
(271, 'ObtencionToken', '7j', 'TOKEN_SUCCESS', 'Token generated successfully.', '94415', '653626777', '653', NULL, 13.99, '03fe9521eb71616de622324c9a2b8003', '2016-04-28 13:08:55'),
(272, 'PeticionCobro', '7k', 'CHARGING_ERROR', 'An error ocurred, please try again.', '94416', '653626777', '653', NULL, 13.99, '03fe9521eb71616de622324c9a2b8003', '2016-04-28 13:08:55'),
(273, 'ObtencionToken', '7l', 'TOKEN_SUCCESS', 'Token generated successfully.', '94417', '653626777', '653', NULL, 13.99, '0bd2d77c4748904010994e79044d878f', '2016-04-28 13:09:00'),
(274, 'PeticionCobro', '7m', 'CHARGING_ERROR', 'An error ocurred, please try again.', '94418', '653626777', '653', NULL, 13.99, '0bd2d77c4748904010994e79044d878f', '2016-04-28 13:09:00'),
(275, 'ObtencionToken', '7n', 'TOKEN_SUCCESS', 'Token generated successfully.', '94419', '653626777', '653', NULL, 13.99, 'fa9212060ad29feb681cfccd9dc48297', '2016-04-28 13:09:30'),
(276, 'PeticionCobro', '7o', 'NO_FUNDS', 'User does not have enough balance.', '94420', '653626777', '653', NULL, 13.99, 'fa9212060ad29feb681cfccd9dc48297', '2016-04-28 13:09:30'),
(277, 'PeticionSms', '7p', 'SUCCESS', 'Request processed correctly.', '94421', '653626777', '653', 'No dispone de fondos suficientes para la suscripción, lo sentimos, no se le dió de alta', 13.99, 'fa9212060ad29feb681cfccd9dc48297', '2016-04-28 13:09:30'),
(278, 'ObtencionToken', '7q', 'TOKEN_SUCCESS', 'Token generated successfully.', '94422', '653626777', '653', NULL, 13.99, 'ba242cbc26d708ce6f2f02f895587ca7', '2016-04-28 13:09:35'),
(279, 'PeticionCobro', '7r', 'NO_FUNDS', 'User does not have enough balance.', '94423', '653626777', '653', NULL, 13.99, 'ba242cbc26d708ce6f2f02f895587ca7', '2016-04-28 13:09:35'),
(280, 'PeticionSms', '7s', 'SUCCESS', 'Request processed correctly.', '94424', '653626777', '653', 'No dispone de fondos suficientes para la suscripción, lo sentimos, no se le dió de alta', 13.99, 'ba242cbc26d708ce6f2f02f895587ca7', '2016-04-28 13:09:35'),
(281, 'ObtencionToken', '7t', 'TOKEN_SUCCESS', 'Token generated successfully.', '94425', '653626777', '653', NULL, 13.99, '41e6bf91bb80c56a2ca5bd84c080af32', '2016-04-28 13:09:47'),
(282, 'PeticionCobro', '7u', 'NO_FUNDS', 'User does not have enough balance.', '94426', '653626777', '653', NULL, 13.99, '41e6bf91bb80c56a2ca5bd84c080af32', '2016-04-28 13:09:47'),
(283, 'PeticionSms', '7v', 'SUCCESS', 'Request processed correctly.', '94427', '653626777', '653', 'No dispone de fondos suficientes para la suscripción, lo sentimos, no se le dió de alta', 13.99, '41e6bf91bb80c56a2ca5bd84c080af32', '2016-04-28 13:09:47'),
(284, 'ObtencionToken', '7w', 'TOKEN_SUCCESS', 'Token generated successfully.', '94428', '653626777', '653', NULL, 13.99, '3845c7f07eb4332ef6b3f68576f51766', '2016-04-28 13:09:51'),
(285, 'PeticionCobro', '7x', 'SUCCESS', 'Request processed correctly.', '94429', '653626777', '653', NULL, 13.99, '3845c7f07eb4332ef6b3f68576f51766', '2016-04-28 13:09:51'),
(286, 'PeticionSms', '7y', 'SUCCESS', 'Request processed correctly.', '94430', '653626777', '653', 'Cobro realizado correctamente, se le ha cobrado la cantidad de 13.99, le damos de alta! ', 13.99, '3845c7f07eb4332ef6b3f68576f51766', '2016-04-28 13:09:51'),
(287, 'ObtencionToken', '7z', 'TOKEN_SUCCESS', 'Token generated successfully.', '94431', '653626777', '653', NULL, 13.99, 'b89269eaea48bc24c32fa865d30d0c01', '2016-04-28 13:12:14'),
(288, 'PeticionCobro', '80', 'NO_FUNDS', 'User does not have enough balance.', '94432', '653626777', '653', NULL, 13.99, 'b89269eaea48bc24c32fa865d30d0c01', '2016-04-28 13:12:14'),
(289, 'PeticionSms', '81', 'SUCCESS', 'Request processed correctly.', '94433', '653626777', '653', 'No dispone de fondos suficientes para continuar con la suscripción, procedemos a darle de baja', 13.99, 'b89269eaea48bc24c32fa865d30d0c01', '2016-04-28 13:12:14'),
(290, 'ObtencionToken', '82', 'TOKEN_SUCCESS', 'Token generated successfully.', '94434', '653626777', '653', NULL, 13.99, '03d33f79ec88260493cb42ab990c8d5c', '2016-04-28 13:14:51'),
(291, 'PeticionCobro', '83', 'SUCCESS', 'Request processed correctly.', '94435', '653626777', '653', NULL, 13.99, '03d33f79ec88260493cb42ab990c8d5c', '2016-04-28 13:14:51'),
(292, 'PeticionSms', '84', 'SUCCESS', 'Request processed correctly.', '94436', '653626777', '653', 'Cobro realizado correctamente, se le ha cobrado la cantidad de 13.99, le damos de alta! ', 13.99, '03d33f79ec88260493cb42ab990c8d5c', '2016-04-28 13:14:51'),
(293, 'ObtencionToken', '85', 'TOKEN_SUCCESS', 'Token generated successfully.', '94437', '653626777', '653', NULL, 13.99, 'a8ef670672349a3c42ac1b6c95469905', '2016-04-28 13:15:07'),
(294, 'PeticionCobro', '86', 'SUCCESS', 'Request processed correctly.', '94438', '653626777', '653', NULL, 13.99, 'a8ef670672349a3c42ac1b6c95469905', '2016-04-28 13:15:07'),
(295, 'PeticionSms', '87', 'SUCCESS', 'Request processed correctly.', '94439', '653626777', '653', 'Cobro realizado correctamente, se le ha cobrado la cantidad de 13.99 ', 13.99, 'a8ef670672349a3c42ac1b6c95469905', '2016-04-28 13:15:07'),
(296, 'ObtencionToken', '88', 'TOKEN_SUCCESS', 'Token generated successfully.', '94440', '653626777', '653', NULL, 13.99, 'f3bb878ae7c8c0c42dbe86b5f7057304', '2016-04-28 13:15:35'),
(297, 'PeticionCobro', '89', 'NO_FUNDS', 'User does not have enough balance.', '94441', '653626777', '653', NULL, 13.99, 'f3bb878ae7c8c0c42dbe86b5f7057304', '2016-04-28 13:15:35'),
(298, 'PeticionSms', '8a', 'SUCCESS', 'Request processed correctly.', '94442', '653626777', '653', 'No dispone de fondos suficientes para continuar con la suscripción, procedemos a darle de baja', 13.99, 'f3bb878ae7c8c0c42dbe86b5f7057304', '2016-04-28 13:15:35'),
(299, 'ObtencionToken', '8b', 'TOKEN_SUCCESS', 'Token generated successfully.', '94456', '653626777', '653', NULL, 13.99, 'f875c51243a52b53a40f3b31cd52165a', '2016-04-28 13:31:58'),
(300, 'PeticionCobro', '8c', 'CHARGING_ERROR', 'An error ocurred, please try again.', '94457', '653626777', '653', NULL, 13.99, 'f875c51243a52b53a40f3b31cd52165a', '2016-04-28 13:31:58'),
(301, 'ObtencionToken', '8d', 'TOKEN_SUCCESS', 'Token generated successfully.', '94458', '653626777', '653', NULL, 13.99, '276e73ab9418408ee5116ef0244cde2f', '2016-04-28 13:32:03'),
(302, 'PeticionCobro', '8e', 'CHARGING_ERROR', 'An error ocurred, please try again.', '94459', '653626777', '653', NULL, 13.99, '276e73ab9418408ee5116ef0244cde2f', '2016-04-28 13:32:03'),
(303, 'ObtencionToken', '8f', 'TOKEN_SUCCESS', 'Token generated successfully.', '94460', '653626777', '653', NULL, 13.99, '758166e33ad0a5638a9ec0ce72eb6861', '2016-04-28 13:32:06'),
(304, 'PeticionCobro', '8g', 'SUCCESS', 'Request processed correctly.', '94461', '653626777', '653', NULL, 13.99, '758166e33ad0a5638a9ec0ce72eb6861', '2016-04-28 13:32:06'),
(305, 'PeticionSms', '8h', 'SUCCESS', 'Request processed correctly.', '94462', '653626777', '653', 'Cobro realizado correctamente, se le ha cobrado la cantidad de 13.99, le damos de alta! ', 13.99, '758166e33ad0a5638a9ec0ce72eb6861', '2016-04-28 13:32:06'),
(306, 'ObtencionToken', '8i', 'TOKEN_SUCCESS', 'Token generated successfully.', '94463', '653626777', '653', NULL, 13.99, '7a5b0ee51c089ed7d6521af63dc45240', '2016-04-28 13:32:24'),
(307, 'PeticionCobro', '8j', 'SYSTEM_ERROR', 'An error ocurred. Please try again.', '94464', '653626777', '653', NULL, 13.99, '7a5b0ee51c089ed7d6521af63dc45240', '2016-04-28 13:32:24'),
(308, 'ObtencionToken', '8k', 'TOKEN_SUCCESS', 'Token generated successfully.', '94465', '653626777', '653', NULL, 13.99, '3207d6d2d5eb151c900c30926e8a64d4', '2016-04-28 13:32:24'),
(309, 'PeticionCobro', '8l', 'NO_FUNDS', 'User does not have enough balance.', '94466', '653626777', '653', NULL, 13.99, '3207d6d2d5eb151c900c30926e8a64d4', '2016-04-28 13:32:24'),
(310, 'PeticionSms', '8m', 'SYSTEM_ERROR', 'An error ocurred. Please try again.', '94467', '653626777', '653', 'No dispone de fondos suficientes para continuar con la suscripción, procedemos a darle de baja', 13.99, '3207d6d2d5eb151c900c30926e8a64d4', '2016-04-28 13:32:24'),
(311, 'ObtencionToken', '8n', 'TOKEN_SUCCESS', 'Token generated successfully.', '94481', '653626777', '653', NULL, 13.99, 'ad56cd0ec688992e4dfce61b7f97f01c', '2016-04-28 14:22:27'),
(312, 'PeticionCobro', '8o', 'SUCCESS', 'Request processed correctly.', '94482', '653626777', '653', NULL, 13.99, 'ad56cd0ec688992e4dfce61b7f97f01c', '2016-04-28 14:22:27'),
(313, 'PeticionSms', '8p', 'SUCCESS', 'Request processed correctly.', '94483', '653626777', '653', 'Cobro realizado correctamente, se le ha cobrado la cantidad de 13.99, le damos de alta! ', 13.99, 'ad56cd0ec688992e4dfce61b7f97f01c', '2016-04-28 14:22:27'),
(314, 'ObtencionToken', '8q', 'TOKEN_SUCCESS', 'Token generated successfully.', '95228', '567656444', '567', NULL, 13.99, '21e0cbb729ecae6e6251221006232b87', '2016-04-28 16:25:30'),
(315, 'PeticionCobro', '8r', 'SUCCESS', 'Request processed correctly.', '95229', '567656444', '567', NULL, 13.99, '21e0cbb729ecae6e6251221006232b87', '2016-04-28 16:25:30'),
(316, 'PeticionSms', '8s', 'SUCCESS', 'Request processed correctly.', '95230', '567656444', '567', 'Cobro realizado correctamente, se le ha cobrado la cantidad de 13.99, le damos de alta! ', 13.99, '21e0cbb729ecae6e6251221006232b87', '2016-04-28 16:25:30'),
(317, 'ObtencionToken', '8t', 'TOKEN_SUCCESS', 'Token generated successfully.', '95866', '653626777', '653', NULL, 13.99, 'c00c5849c172cf07902b9a775f81e01f', '2016-04-28 16:28:59'),
(318, 'PeticionCobro', '8u', 'NO_FUNDS', 'User does not have enough balance.', '95868', '653626777', '653', NULL, 13.99, 'c00c5849c172cf07902b9a775f81e01f', '2016-04-28 16:28:59'),
(319, 'PeticionSms', '8v', 'SUCCESS', 'Request processed correctly.', '95870', '653626777', '653', 'No dispone de fondos suficientes para continuar con la suscripción, procedemos a darle de baja', 13.99, 'c00c5849c172cf07902b9a775f81e01f', '2016-04-28 16:28:59'),
(320, 'ObtencionToken', '8w', 'TOKEN_SUCCESS', 'Token generated successfully.', '95872', '567656444', '567', NULL, 13.99, 'b2cbec7579793c32979adfbbd220cc68', '2016-04-28 16:28:59'),
(321, 'PeticionCobro', '8x', 'NO_FUNDS', 'User does not have enough balance.', '95874', '567656444', '567', NULL, 13.99, 'b2cbec7579793c32979adfbbd220cc68', '2016-04-28 16:28:59'),
(322, 'PeticionSms', '8y', 'SUCCESS', 'Request processed correctly.', '95876', '567656444', '567', 'No dispone de fondos suficientes para continuar con la suscripción, procedemos a darle de baja', 13.99, 'b2cbec7579793c32979adfbbd220cc68', '2016-04-28 16:28:59'),
(323, 'ObtencionToken', '8z', 'TOKEN_SUCCESS', 'Token generated successfully.', '96634', '653626777', '653', NULL, 13.99, '1646f22ccc9fde322f9173152c7e7ce9', '2016-04-28 16:46:29'),
(324, 'PeticionCobro', '90', 'NO_FUNDS', 'User does not have enough balance.', '96635', '653626777', '653', NULL, 13.99, '1646f22ccc9fde322f9173152c7e7ce9', '2016-04-28 16:46:29'),
(325, 'PeticionSms', '91', 'SYSTEM_ERROR', 'An error ocurred. Please try again.', '96636', '653626777', '653', 'No dispone de fondos suficientes para la suscripción, lo sentimos, no se le dió de alta', 13.99, '1646f22ccc9fde322f9173152c7e7ce9', '2016-04-28 16:46:29'),
(326, 'ObtencionToken', '92', 'TOKEN_SUCCESS', 'Token generated successfully.', '96637', '653626777', '653', NULL, 13.99, 'dd31a0bfa26db6a25ec028567faa23f9', '2016-04-28 16:46:40'),
(327, 'PeticionCobro', '93', 'NO_FUNDS', 'User does not have enough balance.', '96638', '653626777', '653', NULL, 13.99, 'dd31a0bfa26db6a25ec028567faa23f9', '2016-04-28 16:46:40'),
(328, 'PeticionSms', '94', 'SUCCESS', 'Request processed correctly.', '96639', '653626777', '653', 'No dispone de fondos suficientes para la suscripción, lo sentimos, no se le dió de alta', 13.99, 'dd31a0bfa26db6a25ec028567faa23f9', '2016-04-28 16:46:40'),
(329, 'ObtencionToken', '95', 'TOKEN_SUCCESS', 'Token generated successfully.', '96640', '653626777', '653', NULL, 13.99, '1ead40b80c74a2702d0d7efa2efc6643', '2016-04-28 16:46:47'),
(330, 'PeticionCobro', '96', 'SUCCESS', 'Request processed correctly.', '96641', '653626777', '653', NULL, 13.99, '1ead40b80c74a2702d0d7efa2efc6643', '2016-04-28 16:46:47'),
(331, 'PeticionSms', '97', 'SUCCESS', 'Request processed correctly.', '96642', '653626777', '653', 'Cobro realizado correctamente, se le ha cobrado la cantidad de 13.99, le damos de alta! ', 13.99, '1ead40b80c74a2702d0d7efa2efc6643', '2016-04-28 16:46:47'),
(332, 'ObtencionToken', '98', 'TOKEN_SUCCESS', 'Token generated successfully.', '96643', '653626777', '653', NULL, 13.99, '5b3716ed6f69e5c18c189d25f3863032', '2016-04-28 16:55:54'),
(333, 'PeticionCobro', '99', 'NO_FUNDS', 'User does not have enough balance.', '96644', '653626777', '653', NULL, 13.99, '5b3716ed6f69e5c18c189d25f3863032', '2016-04-28 16:55:54');
INSERT INTO `wsrequest` (`id`, `tipo`, `transaction`, `statusCode`, `statusMessage`, `txId`, `msisdn`, `shortcode`, `text`, `amount`, `token`, `fecha`) VALUES
(334, 'PeticionSms', '9a', 'SUCCESS', 'Request processed correctly.', '96645', '653626777', '653', 'No dispone de fondos suficientes para continuar con la suscripción, procedemos a darle de baja', 13.99, '5b3716ed6f69e5c18c189d25f3863032', '2016-04-28 16:55:54'),
(335, 'ObtencionToken', '9b', 'TOKEN_SUCCESS', 'Token generated successfully.', '100418', '89777265424', '897', NULL, 13.99, '552a8a4b036a29acdd8eada443679c10', '2016-04-29 09:17:47'),
(336, 'ObtencionToken', '9c', 'TOKEN_SUCCESS', 'Token generated successfully.', '100421', '89777265424', '897', NULL, 13.99, '60fddab9b69415c6ee91e53de0c09266', '2016-04-29 09:20:12'),
(337, 'ObtencionToken', '9d', 'TOKEN_SUCCESS', 'Token generated successfully.', '100426', '89777265424', '897', NULL, 13.99, '38c6198afe6a652bca12fb43b7216ef7', '2016-04-29 09:21:08'),
(338, 'ObtencionToken', '9e', 'TOKEN_SUCCESS', 'Token generated successfully.', '100486', '653626788', '653', NULL, 13.99, 'ef667dab67e9bf30160fad5e8c338e02', '2016-04-29 09:25:37'),
(339, 'ObtencionToken', '9f', 'TOKEN_SUCCESS', 'Token generated successfully.', '100568', '653626788', '653', NULL, 13.99, '1cb6c2a9f5afcb489fab1bd5757e18cf', '2016-04-29 09:29:13'),
(340, 'ObtencionToken', '9g', 'TOKEN_SUCCESS', 'Token generated successfully.', '100601', '89777265424', '897', NULL, 13.99, 'e18da15f79cb8e64905252dc6a98c665', '2016-04-29 09:31:04'),
(341, 'ObtencionToken', '9h', 'TOKEN_SUCCESS', 'Token generated successfully.', '100746', '89777265424', '897', NULL, 13.99, 'ba5a83e9a22186ba462abbe0cf04551a', '2016-04-29 09:32:30'),
(342, 'PeticionCobro', '9i', 'NO_FUNDS', 'User does not have enough balance.', '100748', '89777265424', '897', NULL, 13.99, 'ba5a83e9a22186ba462abbe0cf04551a', '2016-04-29 09:32:30'),
(343, 'PeticionSms', '9j', 'SUCCESS', 'Request processed correctly.', '100749', '89777265424', '897', 'No dispone de fondos suficientes para la suscripción, lo sentimos, no se le dió de alta', 13.99, 'ba5a83e9a22186ba462abbe0cf04551a', '2016-04-29 09:32:30'),
(344, 'ObtencionToken', '9k', 'TOKEN_SUCCESS', 'Token generated successfully.', '104647', '971568521', '971', NULL, 13.99, '3117cf3b37b50d06b58fcc66a8a62221', '2016-04-29 09:56:29'),
(345, 'PeticionCobro', '9l', 'CHARGING_ERROR', 'An error ocurred, please try again.', '104649', '971568521', '971', NULL, 13.99, '3117cf3b37b50d06b58fcc66a8a62221', '2016-04-29 09:56:29'),
(346, 'ObtencionToken', '9m', 'TOKEN_SUCCESS', 'Token generated successfully.', '104651', '971568521', '971', NULL, 13.99, 'e66d3d5bd252206ad8ae44f45008f1c2', '2016-04-29 09:56:30'),
(347, 'PeticionCobro', '9n', 'NO_FUNDS', 'User does not have enough balance.', '104653', '971568521', '971', NULL, 13.99, 'e66d3d5bd252206ad8ae44f45008f1c2', '2016-04-29 09:56:30'),
(348, 'PeticionSms', '9o', 'SUCCESS', 'Request processed correctly.', '104655', '971568521', '971', 'No dispone de fondos suficientes para la suscripción, lo sentimos, no se le dió de alta', 13.99, 'e66d3d5bd252206ad8ae44f45008f1c2', '2016-04-29 09:56:30'),
(349, 'ObtencionToken', '9p', 'TOKEN_SUCCESS', 'Token generated successfully.', '114570', '653626777', '653', NULL, 13.99, '498000c0605fa55c183fd9204df24c63', '2016-04-29 10:20:58'),
(350, 'PeticionCobro', '9q', 'SYSTEM_ERROR', 'An error ocurred. Please try again.', '114572', '653626777', '653', NULL, 13.99, '498000c0605fa55c183fd9204df24c63', '2016-04-29 10:20:58'),
(351, 'ObtencionToken', '9r', 'TOKEN_SUCCESS', 'Token generated successfully.', '114574', '653626777', '653', NULL, 13.99, '09fbbf6e5e83340ddac2b3b347d089e8', '2016-04-29 10:20:58'),
(352, 'PeticionCobro', '9s', 'SYSTEM_ERROR', 'An error ocurred. Please try again.', '114577', '653626777', '653', NULL, 13.99, '09fbbf6e5e83340ddac2b3b347d089e8', '2016-04-29 10:20:58'),
(353, 'ObtencionToken', '9t', 'TOKEN_SUCCESS', 'Token generated successfully.', '114580', '653626777', '653', NULL, 13.99, 'b4b49b0471d763eaff9d48642943565d', '2016-04-29 10:20:58'),
(354, 'PeticionCobro', '9u', 'NO_FUNDS', 'User does not have enough balance.', '114581', '653626777', '653', NULL, 13.99, 'b4b49b0471d763eaff9d48642943565d', '2016-04-29 10:20:58'),
(355, 'PeticionSms', '9v', 'SUCCESS', 'Request processed correctly.', '114584', '653626777', '653', 'No dispone de fondos suficientes para la suscripción, lo sentimos, no se le dió de alta', 13.99, 'b4b49b0471d763eaff9d48642943565d', '2016-04-29 10:20:58'),
(356, 'ObtencionToken', '9w', 'TOKEN_SUCCESS', 'Token generated successfully.', '119060', '653626777', '653', NULL, 13.99, '8c8fb591e480a204e037d8a7ace5a44d', '2016-04-29 11:38:04'),
(357, 'PeticionCobro', '9x', 'CHARGING_ERROR', 'An error ocurred, please try again.', '119061', '653626777', '653', NULL, 13.99, '8c8fb591e480a204e037d8a7ace5a44d', '2016-04-29 11:38:04'),
(358, 'ObtencionToken', '9y', 'TOKEN_SUCCESS', 'Token generated successfully.', '119062', '653626777', '653', NULL, 13.99, '9e4b76785e18cdc9101be977bb957a1b', '2016-04-29 11:38:04'),
(359, 'PeticionCobro', '9z', 'CHARGING_ERROR', 'An error ocurred, please try again.', '119063', '653626777', '653', NULL, 13.99, '9e4b76785e18cdc9101be977bb957a1b', '2016-04-29 11:38:04'),
(360, 'ObtencionToken', 'a0', 'TOKEN_SUCCESS', 'Token generated successfully.', '119064', '653626777', '653', NULL, 13.99, '0f8889901b7130099deab35a90ba69cb', '2016-04-29 11:38:05'),
(361, 'PeticionCobro', 'a1', 'CHARGING_ERROR', 'An error ocurred, please try again.', '119065', '653626777', '653', NULL, 13.99, '0f8889901b7130099deab35a90ba69cb', '2016-04-29 11:38:05'),
(362, 'ObtencionToken', 'a2', 'TOKEN_SUCCESS', 'Token generated successfully.', '119066', '653626777', '653', NULL, 13.99, '61a26fd2a274debac89b3dd3eadace34', '2016-04-29 11:38:05'),
(363, 'PeticionCobro', 'a3', 'NO_FUNDS', 'User does not have enough balance.', '119067', '653626777', '653', NULL, 13.99, '61a26fd2a274debac89b3dd3eadace34', '2016-04-29 11:38:05'),
(364, 'PeticionSms', 'a4', 'SUCCESS', 'Request processed correctly.', '119068', '653626777', '653', 'No dispone de fondos suficientes para la suscripción, lo sentimos, no se le dió de alta', 13.99, '61a26fd2a274debac89b3dd3eadace34', '2016-04-29 11:38:05'),
(365, 'ObtencionToken', 'a5', 'TOKEN_SUCCESS', 'Token generated successfully.', '119069', '653626777', '653', NULL, 13.99, '77696e907b810b51854d4c6b405dc1f1', '2016-04-29 11:39:20'),
(366, 'PeticionCobro', 'a6', 'CHARGING_ERROR', 'An error ocurred, please try again.', '119070', '653626777', '653', NULL, 13.99, '77696e907b810b51854d4c6b405dc1f1', '2016-04-29 11:39:20'),
(367, 'ObtencionToken', 'a7', 'TOKEN_SUCCESS', 'Token generated successfully.', '119071', '653626777', '653', NULL, 13.99, 'e08cff7469be0da6e6d8f6f42655ffcd', '2016-04-29 11:39:21'),
(368, 'PeticionCobro', 'a8', 'NO_FUNDS', 'User does not have enough balance.', '119072', '653626777', '653', NULL, 13.99, 'e08cff7469be0da6e6d8f6f42655ffcd', '2016-04-29 11:39:21'),
(369, 'PeticionSms', 'a9', 'SUCCESS', 'Request processed correctly.', '119073', '653626777', '653', 'No dispone de fondos suficientes para la suscripción, lo sentimos, no se le dió de alta', 13.99, 'e08cff7469be0da6e6d8f6f42655ffcd', '2016-04-29 11:39:21'),
(370, 'ObtencionToken', 'aa', 'TOKEN_SUCCESS', 'Token generated successfully.', '119109', '653626777', '653', NULL, 13.99, 'ea992ad319157a8674c51b2681f65010', '2016-04-29 11:50:17'),
(371, 'PeticionCobro', 'ab', 'NO_FUNDS', 'User does not have enough balance.', '119110', '653626777', '653', NULL, 13.99, 'ea992ad319157a8674c51b2681f65010', '2016-04-29 11:50:17'),
(372, 'PeticionSms', 'ac', 'SUCCESS', 'Request processed correctly.', '119111', '653626777', '653', 'No dispone de fondos suficientes para la suscripción, lo sentimos, no se le dió de alta', 13.99, 'ea992ad319157a8674c51b2681f65010', '2016-04-29 11:50:17'),
(373, 'ObtencionToken', 'ad', 'TOKEN_SUCCESS', 'Token generated successfully.', '119117', '653626777', '653', NULL, 13.99, 'f50a178fa8f7214676fa0e58ef436df3', '2016-04-29 11:50:24'),
(374, 'PeticionCobro', 'ae', 'CHARGING_ERROR', 'An error ocurred, please try again.', '119118', '653626777', '653', NULL, 13.99, 'f50a178fa8f7214676fa0e58ef436df3', '2016-04-29 11:50:24'),
(375, 'ObtencionToken', 'af', 'TOKEN_SUCCESS', 'Token generated successfully.', '119119', '653626777', '653', NULL, 13.99, '6775360996c14a0d5f20807fe46d08e6', '2016-04-29 11:50:24'),
(376, 'PeticionCobro', 'ag', 'NO_FUNDS', 'User does not have enough balance.', '119120', '653626777', '653', NULL, 13.99, '6775360996c14a0d5f20807fe46d08e6', '2016-04-29 11:50:24'),
(377, 'PeticionSms', 'ah', 'SUCCESS', 'Request processed correctly.', '119121', '653626777', '653', 'No dispone de fondos suficientes para la suscripción, lo sentimos, no se le dió de alta', 13.99, '6775360996c14a0d5f20807fe46d08e6', '2016-04-29 11:50:24'),
(378, 'ObtencionToken', 'ai', 'TOKEN_SUCCESS', 'Token generated successfully.', '119122', '653626777', '653', NULL, 13.99, '15871e98c09fb82aa8b4ce76ab0e3af0', '2016-04-29 11:50:31'),
(379, 'PeticionCobro', 'aj', 'CHARGING_ERROR', 'An error ocurred, please try again.', '119123', '653626777', '653', NULL, 13.99, '15871e98c09fb82aa8b4ce76ab0e3af0', '2016-04-29 11:50:31'),
(380, 'ObtencionToken', 'ak', 'SYSTEM_ERROR', 'An error ocurred. Please try again.', '119124', '653626777', '653', NULL, 13.99, '', '2016-04-29 11:50:31'),
(381, 'ObtencionToken', 'al', 'TOKEN_SUCCESS', 'Token generated successfully.', '119125', '653626777', '653', NULL, 13.99, 'd23b3696b3582b719db8f4b3ac5fa740', '2016-04-29 11:50:32'),
(382, 'PeticionCobro', 'am', 'NO_FUNDS', 'User does not have enough balance.', '119126', '653626777', '653', NULL, 13.99, 'd23b3696b3582b719db8f4b3ac5fa740', '2016-04-29 11:50:32'),
(383, 'PeticionSms', 'an', 'SUCCESS', 'Request processed correctly.', '119127', '653626777', '653', 'No dispone de fondos suficientes para la suscripción, lo sentimos, no se le dió de alta', 13.99, 'd23b3696b3582b719db8f4b3ac5fa740', '2016-04-29 11:50:32'),
(384, 'ObtencionToken', 'ao', 'TOKEN_SUCCESS', 'Token generated successfully.', '119128', '653626777', '653', NULL, 13.99, 'e39344aae5a9277f5d3cba1529773159', '2016-04-29 11:50:38'),
(385, 'PeticionCobro', 'ap', 'CHARGING_ERROR', 'An error ocurred, please try again.', '119129', '653626777', '653', NULL, 13.99, 'e39344aae5a9277f5d3cba1529773159', '2016-04-29 11:50:38'),
(386, 'ObtencionToken', 'aq', 'TOKEN_SUCCESS', 'Token generated successfully.', '119130', '653626777', '653', NULL, 13.99, 'a40777e0041525149a54ddb466d52a6c', '2016-04-29 11:50:38'),
(387, 'PeticionCobro', 'ar', 'NO_FUNDS', 'User does not have enough balance.', '119131', '653626777', '653', NULL, 13.99, 'a40777e0041525149a54ddb466d52a6c', '2016-04-29 11:50:38'),
(388, 'PeticionSms', 'as', 'SUCCESS', 'Request processed correctly.', '119132', '653626777', '653', 'No dispone de fondos suficientes para la suscripción, lo sentimos, no se le dió de alta', 13.99, 'a40777e0041525149a54ddb466d52a6c', '2016-04-29 11:50:38'),
(389, 'ObtencionToken', 'at', 'TOKEN_SUCCESS', 'Token generated successfully.', '119138', '653626777', '653', NULL, 13.99, '8c1963069995742f745ed46263022e66', '2016-04-29 11:50:43'),
(390, 'PeticionCobro', 'au', 'SUCCESS', 'Request processed correctly.', '119139', '653626777', '653', NULL, 13.99, '8c1963069995742f745ed46263022e66', '2016-04-29 11:50:43'),
(391, 'PeticionSms', 'av', 'SUCCESS', 'Request processed correctly.', '119140', '653626777', '653', 'Cobro realizado correctamente, se le ha cobrado la cantidad de 13.99, le damos de alta! ', 13.99, '8c1963069995742f745ed46263022e66', '2016-04-29 11:50:43');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `registros`
--
ALTER TABLE `registros`
  ADD PRIMARY KEY (`id_reg`);

--
-- Indices de la tabla `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`id_sms`);

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
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `registros`
--
ALTER TABLE `registros`
  MODIFY `id_reg` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT de la tabla `sms`
--
ALTER TABLE `sms`
  MODIFY `id_sms` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT de la tabla `suscripcion`
--
ALTER TABLE `suscripcion`
  MODIFY `id_suscripcion` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `transaccion`
--
ALTER TABLE `transaccion`
  MODIFY `id_transaccion` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `wsrequest`
--
ALTER TABLE `wsrequest`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=392;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
