-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 17-02-2025 a las 00:08:21
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
-- Estructura de tabla para la tabla `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date_appointment` timestamp NULL DEFAULT NULL,
  `date_attention` timestamp NULL DEFAULT NULL,
  `amount` double NOT NULL,
  `cron_state` tinyint(4) NOT NULL DEFAULT '1',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `status_pay` tinyint(4) NOT NULL DEFAULT '1',
  `confimation` tinyint(4) NOT NULL DEFAULT '1',
  `laboratory` tinyint(4) NOT NULL DEFAULT '1',
  `patient_id` bigint(20) UNSIGNED DEFAULT NULL,
  `doctor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `speciality_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `doctor_schedule_join_hour_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `appointments`
--

INSERT INTO `appointments` (`id`, `date_appointment`, `date_attention`, `amount`, `cron_state`, `status`, `status_pay`, `confimation`, `laboratory`, `patient_id`, `doctor_id`, `speciality_id`, `user_id`, `doctor_schedule_join_hour_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2025-02-17 12:00:00', NULL, 30, 1, 1, 2, 1, 1, 9, 3, 1, 9, 1, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL),
(2, '2024-04-18 03:34:06', '2024-08-16 01:21:09', 250, 1, 2, 1, 1, 1, 15, 3, 3, 4, 1, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL),
(3, '2024-01-16 01:16:54', '2024-06-17 22:27:46', 100, 1, 2, 1, 1, 1, 1, 3, 2, 4, 1, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `appointment_attentions`
--

CREATE TABLE `appointment_attentions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `receta_medica` json DEFAULT NULL,
  `laboratory` tinyint(4) NOT NULL DEFAULT '1',
  `appointment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `patient_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `appointment_attentions`
--

INSERT INTO `appointment_attentions` (`id`, `description`, `receta_medica`, `laboratory`, `appointment_id`, `patient_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Placeat error sunt sit. Quisquam velit dicta exercitationem vel totam laboriosam tempora quod. Quia aut sed suscipit enim voluptas animi. Tempore odit occaecati rerum incidunt. Rem distinctio voluptatibus modi eligendi. Beatae quis sit consequatur tenetur officia consequatur.', '[{\"uso\": \"Maxime repellendus.\", \"dosis\": \"2x día\", \"duracion\": \"30 días\", \"name_medical\": \"velit\"}]', 1, 2, 15, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL),
(2, 'Facilis assumenda dolorem ullam enim provident. Corrupti dolorem sed delectus quis ea et. Consequuntur sequi dolores rem quis veritatis magnam aut. Voluptatibus esse esse provident rerum nesciunt. Dicta voluptatibus eum vel aut nemo distinctio. Odit quod quaerat quae quaerat non.', '[{\"uso\": \"Amet nihil qui facere.\", \"dosis\": \"1x día\", \"duracion\": \"14 días\", \"name_medical\": \"consequatur\"}]', 1, 3, 1, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `appointment_pays`
--

CREATE TABLE `appointment_pays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `method_payment` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double DEFAULT NULL,
  `appointment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `appointment_pays`
--

INSERT INTO `appointment_pays` (`id`, `method_payment`, `amount`, `appointment_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Square', 50, 1, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL),
(2, 'T.Debito', 250, 2, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL),
(3, 'T.Credito', 100, 3, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctor_schedule_days`
--

CREATE TABLE `doctor_schedule_days` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `day` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `doctor_schedule_days`
--

INSERT INTO `doctor_schedule_days` (`id`, `day`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Lunes', 3, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL),
(2, 'Lunes', 3, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL),
(3, 'Martes', 3, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL),
(4, 'Miercoles', 3, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL),
(5, 'Jueves', 3, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL),
(6, 'Viernes', 3, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL),
(7, 'Lunes', 3, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctor_schedule_hours`
--

CREATE TABLE `doctor_schedule_hours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hour_start` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hour_end` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hour` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `doctor_schedule_hours`
--

INSERT INTO `doctor_schedule_hours` (`id`, `hour_start`, `hour_end`, `hour`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '08:00:00', '08:15:00', '08', NULL, NULL, NULL),
(2, '08:15:00', '08:30:00', '08', NULL, NULL, NULL),
(3, '08:30:00', '08:45:00', '08', NULL, NULL, NULL),
(4, '08:45:00', '09:00:00', '08', NULL, NULL, NULL),
(5, '09:00:00', '09:15:00', '09', NULL, NULL, NULL),
(6, '09:15:00', '09:30:00', '09', NULL, NULL, NULL),
(7, '09:30:00', '09:45:00', '09', NULL, NULL, NULL),
(8, '09:45:00', '10:00:00', '09', NULL, NULL, NULL),
(9, '10:00:00', '10:15:00', '10', NULL, NULL, NULL),
(10, '10:15:00', '10:30:00', '10', NULL, NULL, NULL),
(11, '10:30:00', '10:45:00', '10', NULL, NULL, NULL),
(12, '10:45:00', '11:00:00', '10', NULL, NULL, NULL),
(13, '11:00:00', '11:15:00', '11', NULL, NULL, NULL),
(14, '11:15:00', '11:30:00', '11', NULL, NULL, NULL),
(15, '11:30:00', '11:45:00', '11', NULL, NULL, NULL),
(16, '11:45:00', '12:00:00', '11', NULL, NULL, NULL),
(17, '12:00:00', '12:15:00', '12', NULL, NULL, NULL),
(18, '12:15:00', '12:30:00', '12', NULL, NULL, NULL),
(19, '12:30:00', '12:45:00', '12', NULL, NULL, NULL),
(20, '12:45:00', '13:00:00', '12', NULL, NULL, NULL),
(21, '13:00:00', '13:15:00', '13', NULL, NULL, NULL),
(22, '13:15:00', '13:30:00', '13', NULL, NULL, NULL),
(23, '13:30:00', '13:45:00', '13', NULL, NULL, NULL),
(24, '13:45:00', '14:00:00', '13', NULL, NULL, NULL),
(25, '14:00:00', '14:15:00', '14', NULL, NULL, NULL),
(26, '14:15:00', '14:30:00', '14', NULL, NULL, NULL),
(27, '14:30:00', '14:45:00', '14', NULL, NULL, NULL),
(28, '14:45:00', '15:00:00', '14', NULL, NULL, NULL),
(29, '15:00:00', '15:15:00', '15', NULL, NULL, NULL),
(30, '15:15:00', '15:30:00', '15', NULL, NULL, NULL),
(31, '15:30:00', '15:45:00', '15', NULL, NULL, NULL),
(32, '15:45:00', '16:00:00', '15', NULL, NULL, NULL),
(33, '16:00:00', '16:15:00', '16', NULL, NULL, NULL),
(34, '16:15:00', '16:30:00', '16', NULL, NULL, NULL),
(35, '16:30:00', '16:45:00', '16', NULL, NULL, NULL),
(36, '16:45:00', '17:00:00', '16', NULL, NULL, NULL),
(37, '17:00:00', '17:15:00', '17', NULL, NULL, NULL),
(38, '17:15:00', '17:30:00', '17', NULL, NULL, NULL),
(39, '17:30:00', '17:45:00', '17', NULL, NULL, NULL),
(40, '17:45:00', '18:00:00', '17', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctor_schedule_join_hours`
--

CREATE TABLE `doctor_schedule_join_hours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctor_schedule_day_id` bigint(20) UNSIGNED DEFAULT NULL,
  `doctor_schedule_hour_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `doctor_schedule_join_hours`
--

INSERT INTO `doctor_schedule_join_hours` (`id`, `doctor_schedule_day_id`, `doctor_schedule_hour_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL),
(2, 1, 2, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL),
(3, 2, 3, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL),
(4, 2, 4, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL),
(5, 2, 1, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laboratories`
--

CREATE TABLE `laboratories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_file` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resolution` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `appointment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone1` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone2` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `locations`
--

INSERT INTO `locations` (`id`, `title`, `avatar`, `city`, `state`, `zip`, `address`, `email`, `phone1`, `phone2`, `user_id`, `client_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Venezuela', 'locations/4RkuD10qGcTnfKRXHd2jX594dBVu78RdgDADZfRc.jpg', 'Caracas', 'DC', '1010', 'Centro Comercial Sambil, Local e23', 'AbaThepC@app.com', '324432', '55665654', NULL, NULL, '2024-02-02 00:32:49', '2024-02-02 00:58:42', NULL),
(2, 'USA', 'locations/Ysx7n3mCj1a7wZuojaplfMPjXjs68MlyDJ5Usts4.jpg', 'Miami', 'FL', '234we', 'Centro Comercial Sambil Chacao, Local e23', 'AbaThepCh@app.com', '2344432', '55665654', NULL, NULL, '2024-02-02 00:33:21', '2024-02-02 00:58:06', NULL),
(3, 'Italia', 'locations/4RkuD10qGcTnfKRXHd2jX594dBVu78RdgDADZfRc.jpg', 'Viena', 'Distrito Capital', '1010A', 'Centro Comercial Santa paula, Local e23', 'AbaThep@app.com', '3223444', '55665654', NULL, NULL, '2024-02-02 00:35:26', '2024-02-08 13:28:05', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(116, '2014_10_12_000000_create_users_table', 1),
(117, '2014_10_12_100000_create_password_resets_table', 1),
(118, '2019_08_19_000000_create_failed_jobs_table', 1),
(119, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(120, '2022_11_30_175428_create_jobs_table', 1),
(121, '2022_12_18_035041_create_contacts_table', 1),
(122, '2023_11_29_231903_create_permission_tables', 1),
(123, '2025_02_16_021244_create_patients_table', 1),
(124, '2025_02_16_021351_create_appointments_table', 1),
(125, '2025_02_16_021411_create_appointment_attentions_table', 1),
(126, '2025_02_16_021425_create_appointment_pays_table', 1),
(127, '2025_02_16_021458_create_doctor_schedule_days_table', 1),
(128, '2025_02_16_021514_create_doctor_schedule_hours_table', 1),
(129, '2025_02_16_021531_create_doctor_schedule_join_hours_table', 1),
(130, '2025_02_16_021551_create_laboratories_table', 1),
(131, '2025_02_16_021607_create_locations_table', 1),
(132, '2025_02_16_021634_create_patien_persons_table', 1),
(133, '2025_02_16_021649_create_payments_table', 1),
(134, '2025_02_16_021704_create_pubs_table', 1),
(135, '2025_02_16_021727_create_settingenerals_table', 1),
(136, '2025_02_16_021747_create_specialities_table', 1),
(137, '2025_02_16_021807_create_tiposdepagos_table', 1),
(138, '2025_02_16_175320_add_rolename_to_users_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(5, 'App\\Models\\User', 4),
(4, 'App\\Models\\User', 5),
(8, 'App\\Models\\User', 6),
(7, 'App\\Models\\User', 7),
(6, 'App\\Models\\User', 8),
(9, 'App\\Models\\User', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `patients`
--

CREATE TABLE `patients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `n_doc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `gender` tinyint(4) NOT NULL DEFAULT '1',
  `birth_date` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `education` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `antecedent_family` text COLLATE utf8mb4_unicode_ci,
  `antecedent_personal` text COLLATE utf8mb4_unicode_ci,
  `antecedent_alerg` text COLLATE utf8mb4_unicode_ci,
  `current_desease` text COLLATE utf8mb4_unicode_ci,
  `ta` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fc` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fr` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temperature` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `peso` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `location_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `patients`
--

INSERT INTO `patients` (`id`, `name`, `surname`, `email`, `n_doc`, `phone`, `address`, `gender`, `birth_date`, `avatar`, `education`, `antecedent_family`, `antecedent_personal`, `antecedent_alerg`, `current_desease`, `ta`, `fc`, `fr`, `temperature`, `peso`, `doctor_id`, `location_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Miss Michaela Padberg MD', 'Hayes', 'zschamberger@klocko.biz', '3', '1-630-228-1718', 'cum', 1, '1988-02-05 05:53:00', NULL, 'aliquid', 'Esse voluptatem non error autem nostrum earum. Ea vitae qui laboriosam sed est consequatur eveniet quos. Tempora itaque est voluptatibus quia illo repudiandae.', 'Animi incidunt sit vel temporibus. Vero eaque molestiae est tenetur non et dolore. Laudantium accusamus earum voluptatem blanditiis laborum quidem minus.', 'Occaecati et architecto qui enim. Maiores voluptatem odit quos labore. Ducimus deserunt dolores quasi doloremque veritatis.', 'Sunt eius et ut magnam. Aliquam rerum aut consequatur. Ducimus ut debitis eum animi est sed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-10 13:10:37', '2025-02-16 23:52:12', NULL),
(2, 'Irwin Pfannerstill', 'Windler', 'reyna.kerluke@hudson.biz', '0', '1-248-669-1721', 'aspernatur', 1, '1991-09-05 19:37:40', NULL, 'et', 'Cum vero qui quia harum odio dolorem. Iste voluptatum cumque id quod omnis. Atque sed eum sunt sit in quod. Voluptatibus illo magnam odit alias.', 'Placeat sint ut eos velit modi. Sequi voluptas aut molestiae consectetur. Qui ipsa autem necessitatibus laudantium. Dolores ab nostrum repudiandae quis quae velit amet.', 'Labore laudantium omnis sed in. Quisquam aut accusantium incidunt repudiandae sunt adipisci et. Ipsam eligendi quos ut illum aut ea unde.', 'Et quibusdam voluptatibus rerum corporis. Tempora facere rerum ea molestiae distinctio sit rem.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-11 04:25:26', '2025-02-16 23:52:12', NULL),
(3, 'Dr. Neal Zulauf', 'Gorczany', 'gspinka@gmail.com', '2', '352-599-3074', 'eius', 2, '1988-03-04 01:23:32', NULL, 'repellat', 'Voluptatum voluptatibus soluta quo commodi vel nihil perferendis delectus. Officia eaque autem magnam qui optio ipsa molestiae eveniet. Voluptatum nisi praesentium natus alias omnis adipisci. Harum occaecati voluptates esse ullam nostrum non.', 'Quibusdam velit nihil est id excepturi veritatis molestiae beatae. At molestias ut cum illum sint non. Error assumenda ea ut maiores quibusdam veritatis quis. Quia quaerat et rem illum.', 'Qui aliquid repudiandae et qui commodi. Officiis nemo nihil est et illo occaecati. Omnis quo in iusto.', 'Ab ab assumenda maiores voluptatibus non veniam quis. Sed nostrum rem quis.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-06 02:44:57', '2025-02-16 23:52:12', NULL),
(4, 'Darrin Mohr', 'O\'Conner', 'haag.jovan@yahoo.com', '7', '862-494-9045', 'est', 1, '1991-02-20 14:45:32', NULL, 'consequatur', 'Ipsum non eos praesentium. Mollitia quia molestiae at a ullam et quam. Non quia rerum et voluptatem vero et sunt quia. Ratione quas aut ut ad voluptates.', 'Atque voluptas esse sint voluptatum. Impedit expedita qui asperiores tenetur. Vitae dolorem delectus reiciendis et. Eum minima ea dolores quaerat assumenda.', 'Voluptas culpa asperiores repudiandae ea ipsam maiores sed. Nobis ut sit at et qui exercitationem. Voluptatem dolorem ipsa qui ut.', 'Est ipsam dolor et tempore qui maiores. Neque molestiae quis quaerat. Accusamus quia est in quo.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-10 22:25:26', '2025-02-16 23:52:12', NULL),
(5, 'Dr. Jessika Ritchie I', 'Smith', 'kamryn52@torphy.com', '8', '1-410-697-3878', 'sed', 2, '1994-04-16 00:48:32', NULL, 'fugiat', 'Animi dolor commodi aliquam amet ea. Voluptatem fugit pariatur placeat sint quod. Dolorem laudantium unde repellendus. Est hic nemo accusamus inventore neque expedita aut non.', 'Harum eaque qui soluta doloremque recusandae fugiat nihil voluptatem. Nisi facere aut ipsum sit. Neque commodi enim delectus eius quis aut.', 'Asperiores tempore laboriosam nihil. Assumenda facilis enim neque. Rerum omnis iusto voluptate qui corporis quia.', 'Reprehenderit occaecati aut porro esse. Qui et ad vel.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-11 04:34:49', '2025-02-16 23:52:12', NULL),
(6, 'Zoe Rutherford', 'Rohan', 'opurdy@wolf.com', '8', '+1 (469) 761-3968', 'quam', 2, '1999-10-04 17:47:22', NULL, 'quia', 'Repellendus officiis rem ab qui possimus. Tenetur excepturi omnis vel illum officiis. Quae molestiae nam non non et explicabo. Voluptatem aperiam odio et distinctio delectus enim.', 'Itaque reprehenderit facilis dolor neque velit rerum iure velit. Blanditiis sunt consequuntur suscipit eaque repudiandae in. Cumque enim eum omnis autem. Nihil quis ea nihil ratione tempore.', 'Sit libero dolorem quasi placeat. Recusandae ad quas consequatur aut tempora nemo repellendus ratione. Dolore sunt quod rerum et.', 'Nihil dolor perferendis corrupti veniam ad. Delectus iste quod maiores qui.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-03 18:00:59', '2025-02-16 23:52:12', NULL),
(7, 'Andreanne Farrell', 'West', 'rcruickshank@howe.biz', '8', '775.644.7891', 'asperiores', 2, '1994-10-18 22:09:03', NULL, 'consequuntur', 'Illum voluptas voluptatem aliquam voluptas voluptate eos totam. Voluptas debitis consequuntur omnis harum beatae. Minus tempora voluptates labore non. Non minus quos numquam consequatur sit. Aut et ex quia doloribus fugit voluptas enim. Sint minus esse fuga.', 'Voluptatem labore molestiae sit dignissimos autem quis. Aut animi quia unde ut neque natus. Ut expedita quas soluta. A magni ut ut aut et quas.', 'Et tenetur aut dolores odio quia repellendus. Voluptas qui velit dolor culpa quis nesciunt sit ad. Id voluptas in sit repellat molestias suscipit ex.', 'Molestiae voluptatum qui aut enim fugiat labore autem. Ad iure magni eos et recusandae.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-27 15:20:35', '2025-02-16 23:52:12', NULL),
(8, 'Maryam Wolf IV', 'Feest', 'dayne.dach@gmail.com', '8', '+1-605-686-6966', 'omnis', 1, '1990-06-07 16:45:10', NULL, 'sit', 'Ducimus cumque qui consequatur quibusdam. Magni ut ut quia tempore suscipit tenetur dolorum. Voluptatem eveniet maiores qui vel. Molestiae ut officiis ut ducimus. Nemo et reprehenderit laboriosam possimus quisquam. Commodi suscipit repellendus nisi ullam.', 'Expedita explicabo hic et voluptatem magnam. Autem numquam quidem quos nostrum esse est. Totam pariatur sint assumenda et adipisci nihil.', 'Pariatur ad aut numquam et. Facilis doloribus ut architecto itaque. Odio neque quo consequatur cupiditate dolorem voluptas.', 'Quia ea accusantium adipisci. Eius reiciendis facere amet quos delectus. Laborum tempora et omnis.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-13 09:22:48', '2025-02-16 23:52:12', NULL),
(9, 'Ella Reilly', 'Bartell', 'whitney.mcglynn@feeney.com', '5', '717.639.7699', 'ut', 1, '1996-04-28 21:49:06', NULL, 'sint', 'Culpa nobis consequatur qui sapiente beatae. Est qui omnis vero veritatis. Enim sint eaque quibusdam doloribus assumenda. Aspernatur doloribus et incidunt ad sed. In quaerat incidunt exercitationem vel.', 'Praesentium illum nisi nobis saepe. Nostrum reprehenderit itaque at aut aut perspiciatis. Maiores sit ullam fuga eaque rerum ea.', 'Ipsum sunt aut enim. Possimus alias eius distinctio quis. Saepe voluptas explicabo et sed beatae eos aperiam vel.', 'Doloremque ea aut laboriosam. Rerum consectetur velit vel cum. Ratione ut incidunt suscipit.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-08 07:38:47', '2025-02-16 23:52:12', NULL),
(10, 'Jody Zemlak', 'Buckridge', 'emery53@gmail.com', '2', '484-731-8353', 'ut', 1, '1988-08-04 16:21:51', NULL, 'est', 'Eum consequatur qui iste dolorem voluptas. Ipsa sed ut in dolor porro ipsum. Qui sapiente ratione et sed ipsum quidem beatae nihil. Placeat officia odit aut. Aut ea nulla rem eos repellat assumenda et et. Qui occaecati ea sapiente provident blanditiis porro. Animi et ut error.', 'Minima est est repellat pariatur corporis reiciendis sunt. Sed reprehenderit esse ratione aut tenetur. Id est at dolor eius repellendus doloremque. Cumque soluta esse ut.', 'Blanditiis animi adipisci voluptas dolores. Minus possimus ut ad eaque. Quae quia sed at.', 'Quos et sunt veritatis vitae necessitatibus explicabo. Ea asperiores id adipisci.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13 16:37:21', '2025-02-16 23:52:12', NULL),
(11, 'Darrin Conn III', 'Gottlieb', 'schinner.quincy@yost.info', '3', '+1.781.391.7859', 'autem', 2, '1993-01-16 20:45:28', NULL, 'et', 'Dolores provident odit et molestiae asperiores velit est. Illum voluptatibus est cupiditate eaque eos. Quia nostrum qui numquam dicta error porro.', 'Autem explicabo sit eaque rerum. Ullam aspernatur sed at rerum nam. Placeat iure natus non aspernatur deleniti. Dolor vitae blanditiis distinctio voluptas repellendus ea.', 'Debitis alias quasi alias ullam molestiae libero. Sint in accusantium quae impedit id blanditiis. Debitis minus sed iusto.', 'Adipisci quia et tempora. Reiciendis et et quae ab.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-25 06:09:18', '2025-02-16 23:52:12', NULL),
(12, 'Andres Huels', 'Armstrong', 'junior.goodwin@abshire.com', '3', '+1-878-971-0765', 'perferendis', 1, '1989-09-04 00:14:35', NULL, 'nostrum', 'Quae deleniti non numquam repellat a eaque. Aliquam autem sint ipsum blanditiis commodi adipisci et. Harum vel id harum aut quam praesentium. Ut dolor accusantium quia harum sunt est illum molestias.', 'Sunt dolores similique non non id pariatur excepturi. Consectetur eum dolorem sed quia ab ipsam. Sit tempora aliquid facere enim sit tempore. Repellat eos aut laboriosam asperiores nostrum totam.', 'Officia magni ut dolores optio rem ea. Et omnis est non accusantium quod quia. Voluptatem in dolor sint voluptates.', 'Beatae mollitia amet dicta. Ea et consequatur aut et rerum nesciunt. Est et voluptate nihil sed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-12 03:05:32', '2025-02-16 23:52:12', NULL),
(13, 'Garett Balistreri IV', 'Miller', 'river.walker@gislason.com', '0', '1-517-931-4717', 'quisquam', 2, '1995-10-26 19:11:50', NULL, 'quaerat', 'Fugiat inventore unde non et harum eum iusto. Voluptates eos adipisci voluptatem nobis consectetur tenetur. Ut deserunt consequatur dignissimos quia quia porro non.', 'Quam incidunt et fugiat aperiam rerum dolorem. Consequuntur est distinctio magni velit perspiciatis. Iure temporibus qui minima esse molestiae ratione ab.', 'In est molestiae nihil at perferendis. Et animi reiciendis possimus suscipit nesciunt delectus fugiat. Dolorum accusamus asperiores porro sed rerum.', 'Quis alias ex sunt voluptatem dolor autem quis. Sed est qui non quo.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-21 10:41:24', '2025-02-16 23:52:12', NULL),
(14, 'Electa Dickinson', 'Goodwin', 'goldner.lenora@yahoo.com', '4', '985.393.9284', 'dignissimos', 2, '2000-04-18 08:11:11', NULL, 'earum', 'Molestiae vero ullam suscipit cupiditate ratione. Est quis eum vel non et expedita dolor. Ipsam sint et libero atque fuga qui. Doloribus harum id architecto. Nulla veritatis optio qui suscipit ut libero.', 'Officia ipsam nobis sequi et accusamus quam. Voluptatem facilis unde quod. Modi ex atque iusto voluptatem. Quas sed in nihil pariatur. Cum eaque ut autem a et in et voluptas. Dolor enim quia cum non.', 'Tempora nemo dolorum laboriosam. Qui beatae et dignissimos consequatur ducimus.', 'Et quia omnis porro quas facilis voluptatum at. Aut ut illum sit velit molestias nemo dolorem.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-16 19:58:01', '2025-02-16 23:52:12', NULL),
(15, 'Lavonne Borer', 'Barton', 'berniece41@schuppe.org', '0', '1-801-899-6729', 'inventore', 2, '1995-06-01 10:28:53', NULL, 'aspernatur', 'Quia est ullam neque id. Aspernatur adipisci voluptatum laborum libero ullam reprehenderit. Et odio vitae sed rerum. Iste impedit vero voluptatem sunt voluptas molestiae molestiae. Odit vel odit quos pariatur non occaecati.', 'Omnis fugit ducimus similique quo illo omnis laudantium. Eligendi ea saepe labore nihil. Sunt accusamus est nemo ratione consequatur iure.', 'Ut enim tempore magni numquam voluptatem rem quisquam. Quia officiis ut reiciendis fugit quia. Vero qui iste autem nam.', 'Hic non in officia sed aut sed. Cupiditate ut ea ipsam temporibus voluptatem voluptatum est.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-07 23:55:08', '2025-02-16 23:52:12', NULL),
(16, 'Cara Fay', 'Kassulke', 'reilly28@carter.org', '2', '1-231-417-0464', 'recusandae', 2, '1994-05-09 18:51:48', NULL, 'et', 'Qui numquam libero excepturi perferendis minus. Est sequi assumenda eum iure explicabo ipsum nam. Repudiandae necessitatibus unde facilis non esse velit est. Accusantium non nulla vel tempore.', 'Ad distinctio minus reiciendis voluptatem quia voluptatibus omnis. Dignissimos cumque laudantium numquam repellat eum. Voluptas reiciendis ut eligendi repellat qui ullam.', 'Rem autem modi voluptate mollitia hic accusamus sed vel. Quod in et et facere quam. Repudiandae debitis repudiandae qui qui et nam.', 'Tempora saepe nulla veritatis quisquam cumque quo. Quia beatae sit nemo non. Repellat illum in ea.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-01 09:52:10', '2025-02-16 23:52:12', NULL),
(17, 'Barton Wunsch', 'Wuckert', 'ankunding.aron@williamson.org', '6', '434-935-7802', 'unde', 1, '1993-07-29 18:15:28', NULL, 'dolores', 'Inventore distinctio saepe quibusdam quo velit iusto dicta. Et in quia consectetur suscipit veniam quia quis impedit. Est maxime rem reprehenderit quam quos ipsum. Veniam soluta dolorem ipsam est. Quia atque ea laborum accusamus. Suscipit rerum ut magnam ducimus.', 'Et est sed accusantium enim autem. Ut ea ut sequi aut ut aut dolorem. Vitae tempore et odio.', 'Voluptatem voluptatem ullam voluptatum ut dolore et. Sed velit est quidem velit soluta. Eius sed ad accusamus reiciendis quasi.', 'Nam voluptatem consectetur ipsa. Delectus magni atque ea aut aut accusantium.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-27 11:10:12', '2025-02-16 23:52:12', NULL),
(18, 'Carol Lebsack', 'Brown', 'yratke@dubuque.net', '7', '(352) 770-7007', 'quidem', 2, '1989-05-19 02:16:25', NULL, 'labore', 'Non soluta repellat rem autem amet. Nihil non quia dolor saepe quis labore esse. Aspernatur aut qui est quia in. Id possimus expedita est alias. Minima non veniam ad et.', 'Vel eos neque expedita optio. Ipsa veniam et vel et necessitatibus et. Autem laborum deserunt quia.', 'Nam deserunt et quis culpa non. Debitis libero molestias illum eveniet dolor.', 'Ut dolore quisquam commodi at ut. Exercitationem perspiciatis maxime fugit.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-27 12:52:37', '2025-02-16 23:52:12', NULL),
(19, 'Ms. Elenora Littel V', 'Kulas', 'loy.sanford@gmail.com', '4', '+1-903-807-7032', 'enim', 1, '1997-04-14 23:04:55', NULL, 'aut', 'Dolores reiciendis quia voluptatem dolorum est atque. Minus voluptatem nemo voluptatibus sunt. Aliquam non aut beatae temporibus incidunt. Soluta cumque temporibus omnis qui et est. Rerum dolores quas quibusdam aspernatur. Incidunt nostrum ad iste recusandae eum aut vitae.', 'Commodi error exercitationem sed velit et facilis est. Dolores accusamus itaque et omnis quisquam. Sed et laboriosam omnis consequuntur.', 'Vel sequi harum eaque porro provident alias. Nihil et veniam asperiores nemo odio et ea. Cum et ipsa tempore.', 'Ducimus ipsum minus eius non. Laboriosam commodi molestias commodi magnam.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-25 02:33:42', '2025-02-16 23:52:12', NULL),
(20, 'Jeffery Hammes', 'Ebert', 'fbrakus@hotmail.com', '9', '+1-325-514-2887', 'est', 1, '1997-10-07 02:01:34', NULL, 'occaecati', 'Consequuntur qui sed ullam esse modi consequatur. Quod quo recusandae dicta unde nam odio. Ducimus magnam libero et labore labore deleniti asperiores. Incidunt incidunt reprehenderit voluptatem et quia corporis.', 'Quasi corporis et voluptas eos. Enim saepe consequatur praesentium sapiente repellendus. Doloremque et similique in occaecati aliquam.', 'Magnam eligendi doloribus debitis nobis. Eveniet in dolores error. Et itaque et enim ipsum. Quidem eum optio at illo molestias.', 'Culpa laudantium soluta voluptas. Eum ipsum sit sequi reprehenderit ut vero nihil.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-18 07:11:12', '2025-02-16 23:52:12', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `patien_persons`
--

CREATE TABLE `patien_persons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_companion` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname_companion` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_companion` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relationship_companion` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_responsable` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname_responsable` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_responsable` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relationship_responsable` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `patient_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `patien_persons`
--

INSERT INTO `patien_persons` (`id`, `name_companion`, `surname_companion`, `mobile_companion`, `relationship_companion`, `name_responsable`, `surname_responsable`, `mobile_responsable`, `relationship_responsable`, `address`, `patient_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Dr. Gisselle Bailey DVM', 'Ernser', '+1 (520) 926-5150', 'Tio', 'Verner Johnston', 'Wilderman', '+1-541-251-1013', 'Mama', NULL, 1, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL),
(2, 'Carolina Mohr', 'Mills', '978-859-1965', 'Hermano', 'Ottilie Collier', 'O\'Kon', '361.229.9302', 'Mama', NULL, 2, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL),
(3, 'Arianna Morissette', 'Maggio', '+1 (352) 901-6508', 'Papa', 'Leopoldo Cummings', 'Krajcik', '+1-458-664-3367', 'Mama', NULL, 3, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL),
(4, 'Dr. Aida Jakubowski', 'Kuphal', '+1 (480) 833-7164', 'Tio', 'Mable Keebler', 'Farrell', '+1-310-546-1742', 'Hermano', NULL, 4, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL),
(5, 'Hudson Bergnaum', 'Becker', '+1-567-980-3232', 'Tio', 'Anne Gleason', 'Kuhlman', '940.570.6782', 'Mama', NULL, 5, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL),
(6, 'Irma Collins', 'Johns', '+1-754-483-0311', 'Tio', 'Prof. Shanna Renner', 'Willms', '(360) 577-8346', 'Mama', NULL, 6, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL),
(7, 'Randy Schinner Sr.', 'Cummerata', '+19596472419', 'Papa', 'Sydnee Bogisich', 'Barton', '1-269-987-9463', 'Papa', NULL, 7, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL),
(8, 'Prof. Moriah Anderson IV', 'Veum', '+17862263993', 'Tio', 'Mr. Arnoldo VonRueden', 'McCullough', '+1 (985) 606-2840', 'Tio', NULL, 8, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL),
(9, 'Orlando Goldner', 'DuBuque', '+1 (616) 910-2886', 'Hermano', 'Janelle Gleichner', 'Cummings', '+1-283-479-2749', 'Papa', NULL, 9, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL),
(10, 'Ms. Eloise Maggio PhD', 'Stehr', '+1 (253) 449-5546', 'Tio', 'Abdiel Corkery', 'Dach', '+1.803.356.1568', 'Mama', NULL, 10, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL),
(11, 'Jeanne Langosh', 'Satterfield', '(458) 608-8612', 'Tio', 'Buck Rogahn', 'Ziemann', '+1-806-460-8506', 'Papa', NULL, 11, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL),
(12, 'Katlyn Bernhard', 'Olson', '+18185557552', 'Tio', 'Johnny Turner', 'Huels', '260.430.2191', 'Papa', NULL, 12, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL),
(13, 'Clovis Powlowski', 'Lemke', '407.312.9906', 'Papa', 'Maribel Friesen', 'Hessel', '(972) 662-9344', 'Papa', NULL, 13, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL),
(14, 'Annabel Huels', 'Mraz', '(806) 758-1271', 'Papa', 'Cynthia Klocko', 'Carter', '1-385-635-9285', 'Mama', NULL, 14, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL),
(15, 'Dr. Halie Dicki Sr.', 'Hudson', '307-742-2055', 'Hermano', 'Dr. Cary Huel', 'Hessel', '(262) 945-3645', 'Papa', NULL, 15, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL),
(16, 'Clemmie Metz', 'Hickle', '(913) 982-9635', 'Tio', 'Zechariah Hilpert', 'Boyle', '+1-720-317-4433', 'Tio', NULL, 16, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL),
(17, 'Maybelle Wilkinson', 'Hamill', '(313) 532-0215', 'Papa', 'Dasia Nitzsche', 'Bartell', '(657) 657-4224', 'Hermano', NULL, 17, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL),
(18, 'Enola Wolff Sr.', 'Predovic', '508-999-2594', 'Papa', 'Ibrahim Torphy', 'Brown', '+18314741778', 'Papa', NULL, 18, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL),
(19, 'Euna Roberts', 'Gerlach', '1-986-694-0831', 'Tio', 'Madalyn Welch', 'King', '480-856-1393', 'Mama', NULL, 19, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL),
(20, 'Mireya Heaney DVM', 'McLaughlin', '341.994.5230', 'Tio', 'Jimmy Cormier', 'Huels', '(925) 247-2658', 'Mama', NULL, 20, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `referencia` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metodo` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `monto` double NOT NULL,
  `nombre` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('APPROVED','PENDING','REJECTED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
  `patient_id` bigint(20) UNSIGNED DEFAULT NULL,
  `appointment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'patient_dashboard', 'api', '2025-02-17 03:52:10', '2025-02-17 03:52:10'),
(2, 'admin_dashboard', 'api', '2025-02-17 03:52:10', '2025-02-17 03:52:10'),
(3, 'doctor_dashboard', 'api', '2025-02-17 03:52:10', '2025-02-17 03:52:10'),
(4, 'register_rol', 'api', '2025-02-17 03:52:10', '2025-02-17 03:52:10'),
(5, 'list_rol', 'api', '2025-02-17 03:52:10', '2025-02-17 03:52:10'),
(6, 'edit_rol', 'api', '2025-02-17 03:52:10', '2025-02-17 03:52:10'),
(7, 'delete_rol', 'api', '2025-02-17 03:52:10', '2025-02-17 03:52:10'),
(8, 'register_doctor', 'api', '2025-02-17 03:52:10', '2025-02-17 03:52:10'),
(9, 'list_doctor', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11'),
(10, 'edit_doctor', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11'),
(11, 'delete_doctor', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11'),
(12, 'profile_doctor', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11'),
(13, 'register_patient', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11'),
(14, 'list_patient', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11'),
(15, 'edit_patient', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11'),
(16, 'delete_patient', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11'),
(17, 'profile_patient', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11'),
(18, 'register_staff', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11'),
(19, 'list_staff', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11'),
(20, 'edit_staff', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11'),
(21, 'delete_staff', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11'),
(22, 'register_appointment', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11'),
(23, 'list_appointment', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11'),
(24, 'edit_appointment', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11'),
(25, 'delete_appointment', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11'),
(26, 'register_specialty', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11'),
(27, 'list_specialty', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11'),
(28, 'edit_specialty', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11'),
(29, 'delete_specialty', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11'),
(30, 'show_payment', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11'),
(31, 'edit_payment', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11'),
(32, 'delete_payment', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11'),
(33, 'add_payment', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11'),
(34, 'activitie', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11'),
(35, 'calendar', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11'),
(36, 'expense_report', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11'),
(37, 'invoice_report', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11'),
(38, 'show_payment_cobros', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11'),
(39, 'show_payment_cobrar', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11'),
(40, 'settings', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11'),
(41, 'list_laboratory', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11'),
(42, 'edit_laboratory', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11'),
(43, 'list_publicidad', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11'),
(44, 'list_specialty_patient', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11'),
(45, 'register_location', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11'),
(46, 'list_location', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pubs`
--

CREATE TABLE `pubs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `avatar` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pubs`
--

INSERT INTO `pubs` (`id`, `avatar`, `state`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'publicidads/9FjTB5hAHOvGcnizqlDJDxw3z0Hu2x4cdE5WFjen.jpg', 1, '2024-01-16 03:01:53', '2024-01-16 03:09:50', NULL),
(2, 'publicidads/K4I5kBZ3BZF593DNit2Szh4fNiYvXUQfpe3gYtRm.jpg', 1, '2024-01-16 03:04:36', '2024-01-16 03:04:36', NULL),
(3, 'publicidads/sqNEtxj0WBa9vbTPEhk5THYMMEEnwdVvUQFFozio.jpg', 1, '2024-01-16 03:06:00', '2024-01-16 03:06:00', NULL),
(4, 'publicidads/EMQZLSdot9yEk6fOgPBlg9ED1umWJizlh53p8wD3.jpg', 2, '2024-01-16 03:06:50', '2024-01-16 03:06:50', NULL),
(5, 'publicidads/874AfEidDRuJTt0LTELllkat2xxmAGDsRck3FIbb.jpg', 2, '2024-01-16 03:10:42', '2024-01-16 06:11:57', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'SUPERADMIN', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11'),
(2, 'ADMIN', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11'),
(3, 'DOCTOR', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11'),
(4, 'RECEPCION', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11'),
(5, 'LABORATORIO', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11'),
(6, 'ASISTENTE', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11'),
(7, 'ENFERMERA', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11'),
(8, 'PERSONAL', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11'),
(9, 'GUEST', 'api', '2025-02-17 03:52:11', '2025-02-17 03:52:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(2, 2),
(5, 2),
(8, 2),
(9, 2),
(10, 2),
(12, 2),
(13, 2),
(14, 2),
(18, 2),
(19, 2),
(20, 2),
(22, 2),
(23, 2),
(24, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(35, 2),
(38, 2),
(40, 2),
(41, 2),
(42, 2),
(44, 2),
(3, 3),
(12, 3),
(14, 3),
(22, 3),
(23, 3),
(2, 4),
(9, 4),
(13, 4),
(14, 4),
(18, 4),
(19, 4),
(22, 4),
(23, 4),
(24, 4),
(26, 4),
(27, 4),
(30, 4),
(35, 4),
(38, 4),
(40, 4),
(41, 4),
(44, 4),
(12, 5),
(41, 5),
(42, 5),
(3, 6),
(10, 6),
(12, 6),
(13, 6),
(14, 6),
(22, 6),
(23, 6),
(24, 6),
(30, 6),
(35, 6),
(38, 6),
(13, 7),
(14, 7),
(22, 7),
(23, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settingenerals`
--

CREATE TABLE `settingenerals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `settingenerals`
--

INSERT INTO `settingenerals` (`id`, `name`, `address`, `phone`, `city`, `state`, `zip`, `country`, `avatar`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Clinica DEMO-HCME', 'AV. Ppal', '12324354677', 'Caracas', 'Capital', '1010', 'Venezuela', NULL, '2024-01-11 02:18:16', '2024-05-10 06:19:50', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `specialities`
--

CREATE TABLE `specialities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '1',
  `price` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `specialities`
--

INSERT INTO `specialities` (`id`, `name`, `state`, `price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Anestesiología', 1, '200', '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL),
(2, 'Dermatología', 1, '140', '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL),
(3, 'Odontología', 1, '120', '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL),
(4, 'Pediatría', 1, '234', '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL),
(5, 'Cirugía General', 1, '100', '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiposdepagos`
--

CREATE TABLE `tiposdepagos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tipo` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciorif` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankAccount` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankName` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankAccountType` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tiposdepagos`
--

INSERT INTO `tiposdepagos` (`id`, `tipo`, `ciorif`, `telefono`, `bankAccount`, `bankName`, `bankAccountType`, `email`, `user`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Transferencia Bolívares', NULL, NULL, '01051223345678904', 'mercantil', 'Corriente', NULL, 'das', 'ACTIVE', '2023-10-10 09:32:48', '2023-10-10 10:04:50', NULL),
(2, 'paypal', NULL, NULL, NULL, NULL, NULL, 'malcolm@gmail.com', NULL, 'INACTIVE', '2023-10-10 09:44:43', '2024-01-11 04:40:17', NULL),
(9, 'Transferencia Dólares', NULL, NULL, 'ZEL0101010143543', 'BOFA', NULL, 'ddsa', NULL, 'ACTIVE', '2024-01-10 06:07:20', '2024-01-10 06:07:43', NULL),
(10, 'Transferencia Dólares', NULL, NULL, 'ZEL0101010143543', 'Square', NULL, NULL, NULL, 'ACTIVE', '2024-01-16 07:10:34', '2024-01-16 07:14:45', NULL),
(11, 'pagomovil', '123456', '234567', '253453', 'Mercantil Pago M', NULL, NULL, NULL, 'ACTIVE', '2024-01-16 07:17:12', '2024-01-16 07:17:16', NULL),
(12, 'Transferencia Bolívares', NULL, NULL, 'ZEL0101010143543', 'Venezuela', NULL, NULL, NULL, 'INACTIVE', '2024-05-17 04:27:54', '2024-05-17 04:27:54', NULL),
(13, 'Transferencia Dólares', NULL, NULL, 'ZELDH0143543', 'Santander Santiago', NULL, NULL, NULL, 'ACTIVE', '2024-05-17 09:13:27', '2024-05-17 09:15:47', NULL),
(14, 'pagomovil', '1223338', '234566777', NULL, 'Provincial', NULL, NULL, NULL, 'ACTIVE', '2024-05-17 09:16:25', '2024-05-17 09:16:29', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` timestamp NULL DEFAULT NULL,
  `gender` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `education` longtext COLLATE utf8mb4_unicode_ci,
  `designation` longtext COLLATE utf8mb4_unicode_ci,
  `address` text COLLATE utf8mb4_unicode_ci,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `n_doc` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'User email for login',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Hashed password',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'For "remember me" functionality',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `speciality_id` bigint(20) UNSIGNED DEFAULT NULL,
  `location_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `mobile`, `birth_date`, `gender`, `status`, `education`, `designation`, `address`, `avatar`, `n_doc`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `speciality_id`, `location_id`) VALUES
(1, 'super', 'Johnson', '1234567893', NULL, 1, 1, NULL, NULL, NULL, NULL, '5421369874', 'superadmin@superadmin.com', '2025-02-17 03:52:11', '$2y$10$bCCsrWlCDM7IU3X8yv.GHu79WEszwg02ILfCKFgveWdvbIBkqwq6S', NULL, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL, NULL, 1),
(2, 'admin', 'Johnson', '1234567893', NULL, 1, 1, NULL, NULL, NULL, NULL, '5421369871', 'admin@admin.com', '2025-02-17 03:52:11', '$2y$10$w/U/O/tjbYhlLHQb762f0.4Y98knO0504wx6VkXn5fQWZjkBqPs3G', NULL, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL, NULL, 1),
(3, 'doctor', 'Johnson', '1234567893', NULL, 1, 1, 'universitaria', NULL, NULL, NULL, '5421369872', 'doctor@doctor.com', '2025-02-17 03:52:11', '$2y$10$iFvx0zI73PKf8ioVmL4uweyVUbiRI8Pa3K7Ybj1l0KfkdRrUq1KSC', NULL, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL, 1, 1),
(4, 'laboratorio', 'Johnson', '1234567893', NULL, 1, 1, NULL, NULL, NULL, NULL, '5421369873', 'laboratorio@laboratorio.com', '2025-02-17 03:52:11', '$2y$10$iBR/Po.Sudh0oQygqJIln./aW1K09NBNMMzmfOV5Iu/4SgZ61Y2Yu', NULL, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL, NULL, 1),
(5, 'recepcion', 'Johnson', '1234567893', NULL, 1, 1, NULL, NULL, NULL, NULL, '5421369875', 'recepcion@recepcion.com', '2025-02-17 03:52:11', '$2y$10$m5ngc.2RAfHxx8uHtXeRbeHVaSNVhWJfGZ.p4V.GiMn4OD7pHLuHm', NULL, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL, NULL, 1),
(6, 'personal', 'Johnson', '1234567893', NULL, 1, 1, NULL, NULL, NULL, NULL, '5421369876', 'personal@personal.com', '2025-02-17 03:52:11', '$2y$10$BJkeo7bF4Tmv8zoOULKxXeplubUhFID7pk6iQkfz33pYfF.TmbmKW', NULL, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL, NULL, 1),
(7, 'enfermera', 'Johnson', '1234567893', NULL, 1, 1, NULL, NULL, NULL, NULL, '5421369878', 'enfermera@enfermera.com', '2025-02-17 03:52:12', '$2y$10$e9Nq/QLa.Fbh/lNoLksv8eWwWNDP3Osh62yjIfQsbbu/38ePicf5S', NULL, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL, NULL, 1),
(8, 'asistente', 'Johnson', '1234567893', NULL, 1, 1, NULL, NULL, NULL, NULL, '5421369877', 'asistente@asistente.com', '2025-02-17 03:52:12', '$2y$10$d5/gigOAe8EmjWlobIcZ8OxKqMyFSrEnxrvZ6XSDygg.bk/31k/0C', NULL, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL, NULL, 1),
(9, 'invitado', 'Johnson', '1234567893', NULL, 1, 1, NULL, NULL, NULL, NULL, '5421369870', 'invitado@invitado.com', '2025-02-17 03:52:12', '$2y$10$eHi28iYbzE3HARMxZJmXBupNvRhMoxrwlt2y7hfKQvSeFrxtq4L1G', NULL, '2025-02-16 23:52:12', '2025-02-16 23:52:12', NULL, NULL, 1),
(10, 'Malcolm', 'Cordova', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '14427389', 'mercadocreativo@gmail.com', NULL, '$2y$10$c27m1QvwEJsZv7q1Q4vb5e2genDl/zcvSijasn.IlK85gEoDVsMqO', NULL, '2025-02-17 00:00:13', '2025-02-17 00:00:13', NULL, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appointments_doctor_id_foreign` (`doctor_id`),
  ADD KEY `appointments_user_id_foreign` (`user_id`),
  ADD KEY `appointments_patient_id_foreign` (`patient_id`);

--
-- Indices de la tabla `appointment_attentions`
--
ALTER TABLE `appointment_attentions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appointment_attentions_patient_id_foreign` (`patient_id`),
  ADD KEY `appointment_attentions_appointment_id_foreign` (`appointment_id`);

--
-- Indices de la tabla `appointment_pays`
--
ALTER TABLE `appointment_pays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appointment_pays_appointment_id_foreign` (`appointment_id`);

--
-- Indices de la tabla `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `doctor_schedule_days`
--
ALTER TABLE `doctor_schedule_days`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_schedule_days_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `doctor_schedule_hours`
--
ALTER TABLE `doctor_schedule_hours`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `doctor_schedule_join_hours`
--
ALTER TABLE `doctor_schedule_join_hours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_schedule_join_hours_doctor_schedule_day_id_foreign` (`doctor_schedule_day_id`),
  ADD KEY `doctor_schedule_join_hours_doctor_schedule_hour_id_foreign` (`doctor_schedule_hour_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `laboratories`
--
ALTER TABLE `laboratories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `laboratories_appointment_id_foreign` (`appointment_id`);

--
-- Indices de la tabla `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `locations_user_id_foreign` (`user_id`),
  ADD KEY `locations_client_id_foreign` (`client_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `patien_persons`
--
ALTER TABLE `patien_persons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patien_persons_patient_id_foreign` (`patient_id`);

--
-- Indices de la tabla `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_patient_id_foreign` (`patient_id`),
  ADD KEY `payments_appointment_id_foreign` (`appointment_id`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `pubs`
--
ALTER TABLE `pubs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `settingenerals`
--
ALTER TABLE `settingenerals`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `specialities`
--
ALTER TABLE `specialities`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tiposdepagos`
--
ALTER TABLE `tiposdepagos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_n_doc_unique` (`n_doc`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `appointment_attentions`
--
ALTER TABLE `appointment_attentions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `appointment_pays`
--
ALTER TABLE `appointment_pays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `doctor_schedule_days`
--
ALTER TABLE `doctor_schedule_days`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `doctor_schedule_hours`
--
ALTER TABLE `doctor_schedule_hours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `doctor_schedule_join_hours`
--
ALTER TABLE `doctor_schedule_join_hours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `laboratories`
--
ALTER TABLE `laboratories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT de la tabla `patients`
--
ALTER TABLE `patients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `patien_persons`
--
ALTER TABLE `patien_persons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pubs`
--
ALTER TABLE `pubs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `settingenerals`
--
ALTER TABLE `settingenerals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `specialities`
--
ALTER TABLE `specialities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tiposdepagos`
--
ALTER TABLE `tiposdepagos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `appointments_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `appointments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `appointment_attentions`
--
ALTER TABLE `appointment_attentions`
  ADD CONSTRAINT `appointment_attentions_appointment_id_foreign` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `appointment_attentions_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `appointment_pays`
--
ALTER TABLE `appointment_pays`
  ADD CONSTRAINT `appointment_pays_appointment_id_foreign` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `doctor_schedule_days`
--
ALTER TABLE `doctor_schedule_days`
  ADD CONSTRAINT `doctor_schedule_days_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `doctor_schedule_join_hours`
--
ALTER TABLE `doctor_schedule_join_hours`
  ADD CONSTRAINT `doctor_schedule_join_hours_doctor_schedule_day_id_foreign` FOREIGN KEY (`doctor_schedule_day_id`) REFERENCES `doctor_schedule_days` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `doctor_schedule_join_hours_doctor_schedule_hour_id_foreign` FOREIGN KEY (`doctor_schedule_hour_id`) REFERENCES `doctor_schedule_hours` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `laboratories`
--
ALTER TABLE `laboratories`
  ADD CONSTRAINT `laboratories_appointment_id_foreign` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `patients` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `locations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `patien_persons`
--
ALTER TABLE `patien_persons`
  ADD CONSTRAINT `patien_persons_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_appointment_id_foreign` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `payments_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
