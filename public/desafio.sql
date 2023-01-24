-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-01-2023 a las 16:13:59
-- Versión del servidor: 5.7.35
-- Versión de PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `desafio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `client_profiles`
--

CREATE TABLE `client_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `client_profiles`
--

INSERT INTO `client_profiles` (`id`, `name`, `email`, `phone_number`, `city`, `created_at`, `updated_at`) VALUES
(1, 'Andrea Alonzo', 'farenas@example.org', '976-89-2020', 'Villa Gómez del Barco', '2023-01-24 18:41:29', '2023-01-24 18:41:29'),
(2, 'Alma Pastor', 'batista.alvaro@example.org', '949125436', 'O Alva', '2023-01-24 18:41:29', '2023-01-24 18:41:29'),
(3, 'Aaron Serna', 'psandoval@example.com', '901359114', 'Vall Cortés', '2023-01-24 18:41:29', '2023-01-24 18:41:29'),
(4, 'Sra. Fátima Díez Segundo', 'wcintron@example.com', '+34 993 38 2829', 'As Arguello del Barco', '2023-01-24 18:41:29', '2023-01-24 18:41:29'),
(5, 'Gabriela Arteaga Tercero', 'jan38@example.net', '+34 940807727', 'Álvarez del Penedès', '2023-01-24 18:41:29', '2023-01-24 18:41:29'),
(6, 'Alex Cordero', 'elsa23@example.org', '+34 904027731', 'O Quintanilla', '2023-01-24 18:41:29', '2023-01-24 18:41:29'),
(7, 'Sra. Beatriz Sáenz Tercero', 'broque@example.net', '936747251', 'Puente del Vallès', '2023-01-24 18:41:29', '2023-01-24 18:41:29'),
(8, 'Gloria Llorente', 'hugo19@example.com', '990522076', 'El Valero', '2023-01-24 18:41:29', '2023-01-24 18:41:29'),
(9, 'Dr. Beatriz Expósito', 'hector32@example.org', '965 026245', 'El Guerrero Medio', '2023-01-24 18:41:29', '2023-01-24 18:41:29'),
(10, 'José Antonio Robles', 'fguerrero@example.org', '940418737', 'Cardona del Vallès', '2023-01-24 18:41:29', '2023-01-24 18:41:29'),
(12, 'Julio Silvera', 'julio@email.com', '595982747762', 'Asunción', '2023-01-24 19:04:25', '2023-01-24 19:04:25');

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
(59, '2014_10_12_000000_create_users_table', 1),
(60, '2014_10_12_100000_create_password_resets_table', 1),
(61, '2019_08_19_000000_create_failed_jobs_table', 1),
(62, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(63, '2023_01_24_141053_create_client_profiles_table', 1),
(64, '2023_01_24_152948_create_pets_table', 1);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'pruebas@email.com', '16fb29b5f9981e3ade5910db9f2cbce0a13bc213455793dc533d85ddf3e026f0', '[\"server:update\"]', '2023-01-24 19:08:15', NULL, '2023-01-24 18:42:18', '2023-01-24 19:08:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pets`
--

CREATE TABLE `pets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_profile_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pets`
--

INSERT INTO `pets` (`id`, `client_profile_id`, `name`, `age`, `created_at`, `updated_at`) VALUES
(1, 3, 'Tapia', '1', '2023-01-24 18:41:29', '2023-01-24 18:41:29'),
(2, 3, 'Rosado', '1', '2023-01-24 18:41:29', '2023-01-24 18:41:29'),
(3, 7, 'Acevedo', '7', '2023-01-24 18:41:29', '2023-01-24 18:41:29'),
(4, 7, 'Luque', '5', '2023-01-24 18:41:29', '2023-01-24 18:41:29'),
(5, 9, 'Rosas', '4', '2023-01-24 18:41:29', '2023-01-24 18:41:29'),
(6, 4, 'Aguilar', '6', '2023-01-24 18:41:29', '2023-01-24 18:41:29'),
(7, 2, 'Villareal', '6', '2023-01-24 18:41:29', '2023-01-24 18:41:29'),
(8, 7, 'Hidalgo', '1', '2023-01-24 18:41:29', '2023-01-24 18:41:29'),
(9, 4, 'Costa', '5', '2023-01-24 18:41:29', '2023-01-24 18:41:29'),
(10, 1, 'Montenegro', '1', '2023-01-24 18:41:29', '2023-01-24 18:41:29'),
(11, 3, 'Domingo', '3', '2023-01-24 18:41:29', '2023-01-24 18:41:29'),
(12, 4, 'Rivera', '9', '2023-01-24 18:41:29', '2023-01-24 18:41:29'),
(13, 10, 'Trujillo', '0', '2023-01-24 18:41:29', '2023-01-24 18:41:29'),
(14, 5, 'Piña', '5', '2023-01-24 18:41:29', '2023-01-24 18:41:29'),
(15, 9, 'Salgado', '3', '2023-01-24 18:41:29', '2023-01-24 18:41:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Usuario pruebas', 'pruebas@email.com', NULL, '$2y$10$zbPxhYC4FEq.sUXEfkX9B.rvurdIdUtl6ieD.Qw3XgHKwUd4KBHUa', NULL, '2023-01-24 18:41:29', '2023-01-24 18:41:29');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `client_profiles`
--
ALTER TABLE `client_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `pets`
--
ALTER TABLE `pets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pets_client_profile_id_foreign` (`client_profile_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `client_profiles`
--
ALTER TABLE `client_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pets`
--
ALTER TABLE `pets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pets`
--
ALTER TABLE `pets`
  ADD CONSTRAINT `pets_client_profile_id_foreign` FOREIGN KEY (`client_profile_id`) REFERENCES `client_profiles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
