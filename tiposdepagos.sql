-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 10-01-2024 a las 19:36:04
-- Versión del servidor: 5.7.34
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `api_rest_citasm1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiposdepagos`
--

CREATE TABLE `tiposdepagos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tipo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciorif` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankAccount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankAccountType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tiposdepagos`
--

INSERT INTO `tiposdepagos` (`id`, `tipo`, `ciorif`, `telefono`, `bankAccount`, `bankName`, `bankAccountType`, `email`, `user`, `status`, `created_at`, `updated_at`) VALUES
(1, 'transferencia', NULL, NULL, '01051223345678904', 'mercantil', 'Corriente', NULL, 'das', 'ACTIVE', '2023-10-10 05:32:48', '2023-10-10 06:04:50'),
(2, 'paypal', NULL, NULL, NULL, NULL, NULL, 'malcolm@gmail.com', NULL, 'INACTIVE', '2023-10-10 05:44:43', '2024-01-10 02:05:54'),
(3, 'pagomovil', '12980', '123456', '0105', 'mercantil', NULL, NULL, NULL, 'ACTIVE', '2023-10-10 05:47:09', '2023-10-10 06:03:07'),
(9, 'transferencia', NULL, NULL, 'ZEL0101010143543', 'BOFA', NULL, 'ddsa', NULL, 'ACTIVE', '2024-01-10 02:07:20', '2024-01-10 02:07:43');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tiposdepagos`
--
ALTER TABLE `tiposdepagos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tiposdepagos`
--
ALTER TABLE `tiposdepagos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
