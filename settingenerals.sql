-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 16-02-2025 a las 19:33:30
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
-- Base de datos: `api_rest_consultorios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settingenerals`
--

CREATE TABLE `settingenerals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` text,
  `phone` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip` varchar(200) DEFAULT NULL,
  `country` varchar(250) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `settingenerals`
--

INSERT INTO `settingenerals` (`id`, `name`, `address`, `phone`, `city`, `state`, `zip`, `country`, `avatar`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Consultorio', 'AV. Ppal del Rosal', '12324354677', 'Caracas', 'Capital', '1010', 'Venezuela', 'settings/b2gUVptqJwivXN3kk4bdNDEvvwGVRULJ4ZwxghYe.png', '2024-01-10 22:18:16', '2024-05-10 02:19:50', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `settingenerals`
--
ALTER TABLE `settingenerals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `settingenerals`
--
ALTER TABLE `settingenerals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
