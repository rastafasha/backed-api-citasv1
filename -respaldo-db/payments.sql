-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 10-01-2024 a las 19:36:21
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
-- Estructura de tabla para la tabla `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `referencia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metodo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `monto` double DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('APPROVED','PENDING','REJECTED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
  `patient_id` bigint(20) UNSIGNED NOT NULL,
  `appointment_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `payments`
--

INSERT INTO `payments` (`id`, `referencia`, `metodo`, `bank_name`, `monto`, `nombre`, `email`, `status`, `patient_id`, `appointment_id`, `image`, `fecha`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Illum sint ex quis', 'Zelle', 'Hall Dunlap', 100, 'Impedit est impedi', 'refovagob@mailinator.com', 'PENDING', 1, 1, '1-titanfall-1678768862.jpg', NULL, '2023-03-14 07:41:02', '2024-01-09 01:41:14', NULL),
(2, '78J01028LT6328803', 'Paypal', 'Paypal', 100, 'John', 'sb-4d2wh864245@personal.example.com', 'APPROVED', 1, 1, NULL, NULL, '2023-06-09 20:03:01', '2023-10-15 05:53:29', NULL),
(3, '2WS627753F375484H', 'Paypal', 'Paypal', 80, 'John', 'sb-4d2wh864245@personal.example.com', 'APPROVED', 1, 1, NULL, NULL, '2023-06-09 20:57:57', '2024-01-09 01:53:18', NULL),
(4, '002343', 'Zelle', 'Zelle', 20, 'malcolm', 'mercadocreativo@gmail.com', 'APPROVED', 104, 2004, NULL, '2024-01-09 02:37:18', '2024-01-09 04:20:39', '2024-01-09 05:09:25', NULL),
(5, '43252534534', 'Transferencia', 'Mercantil EcomBank', 40, 'Malcolm Cordova', 'mercadocreativo@gmail.com', 'APPROVED', 104, 2008, NULL, '2024-01-09 02:37:24', '2024-01-09 05:36:20', '2024-01-09 05:36:41', NULL),
(6, '12345', 'Zelle', 'Bofa', 60, 'Malcolm Cordova', 'mercadocreativo@gmail.com', 'APPROVED', 104, 2009, NULL, '2024-01-08 04:00:00', '2024-01-09 18:18:03', '2024-01-09 18:18:33', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_user_id_foreign` (`patient_id`),
  ADD KEY `payments_plan_id_foreign` (`appointment_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
