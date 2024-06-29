-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-05-2024 a las 18:15:03
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proclub`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clases`
--

CREATE TABLE `clases` (
  `id` int(11) NOT NULL,
  `id_profesor` int(11) NOT NULL,
  `id_dia` int(11) NOT NULL,
  `id_horario` int(11) NOT NULL,
  `cupos` int(11) NOT NULL DEFAULT 12
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clases`
--

INSERT INTO `clases` (`id`, `id_profesor`, `id_dia`, `id_horario`, `cupos`) VALUES
(1, 5, 1, 1, 12),
(2, 5, 1, 2, 12),
(3, 5, 1, 3, 12),
(4, 6, 1, 3, 12),
(5, 6, 1, 4, 12),
(6, 7, 1, 5, 12),
(7, 6, 1, 6, 12),
(8, 6, 1, 7, 12),
(9, 6, 1, 8, 12),
(10, 6, 1, 9, 12),
(11, 5, 1, 9, 12),
(12, 5, 1, 10, 12),
(13, 6, 2, 1, 12),
(14, 6, 2, 2, 12),
(15, 6, 2, 3, 12),
(16, 5, 2, 3, 12),
(17, 5, 2, 4, 12),
(18, 7, 2, 5, 12),
(19, 5, 2, 6, 12),
(20, 5, 2, 7, 12),
(21, 5, 2, 8, 12),
(22, 5, 2, 9, 12),
(23, 6, 2, 9, 12),
(24, 6, 2, 10, 12),
(25, 5, 3, 1, 12),
(26, 5, 3, 2, 12),
(27, 5, 3, 3, 12),
(28, 6, 3, 3, 12),
(29, 6, 3, 4, 12),
(30, 7, 3, 5, 12),
(31, 6, 3, 6, 12),
(32, 6, 3, 7, 12),
(33, 6, 3, 8, 12),
(34, 6, 3, 9, 12),
(35, 5, 3, 9, 12),
(36, 5, 3, 10, 12),
(37, 6, 4, 1, 12),
(38, 6, 4, 2, 12),
(39, 6, 4, 3, 12),
(40, 5, 4, 3, 12),
(41, 5, 4, 4, 12),
(42, 7, 4, 5, 12),
(43, 5, 4, 6, 12),
(44, 5, 4, 7, 12),
(45, 5, 4, 8, 12),
(46, 5, 4, 9, 12),
(47, 6, 4, 9, 12),
(48, 6, 4, 10, 12),
(49, 5, 5, 1, 12),
(50, 5, 5, 2, 12),
(51, 5, 5, 3, 12),
(52, 6, 5, 3, 12),
(53, 6, 5, 4, 12),
(54, 7, 5, 5, 12),
(55, 6, 5, 6, 12),
(56, 6, 5, 7, 12),
(57, 6, 5, 8, 12),
(58, 6, 5, 9, 12),
(59, 5, 5, 9, 12),
(60, 5, 5, 10, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dias`
--

CREATE TABLE `dias` (
  `id` int(11) NOT NULL,
  `nombre_dia` enum('Lunes','Martes','Miércoles','Jueves','Viernes','Sábado','Domingo') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `dias`
--

INSERT INTO `dias` (`id`, `nombre_dia`) VALUES
(1, 'Lunes'),
(2, 'Martes'),
(3, 'Miércoles'),
(4, 'Jueves'),
(5, 'Viernes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fechas`
--

CREATE TABLE `fechas` (
  `id` int(11) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios`
--

CREATE TABLE `horarios` (
  `id` int(11) NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `horarios`
--

INSERT INTO `horarios` (`id`, `hora`) VALUES
(1, '07:00:00'),
(2, '08:00:00'),
(3, '10:00:00'),
(4, '11:00:00'),
(5, '14:30:00'),
(6, '16:00:00'),
(7, '17:00:00'),
(8, '18:00:00'),
(9, '19:30:00'),
(10, '21:00:00'),
(11, '22:30:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partners`
--

CREATE TABLE `partners` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `dni` varchar(20) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('alumno','profesor') NOT NULL,
  `system_created` date DEFAULT NULL,
  `creditos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `partners`
--

INSERT INTO `partners` (`id`, `name`, `lastname`, `dni`, `email`, `password`, `role`, `system_created`, `creditos`) VALUES
(5, 'Lucas', 'Chaves', '39796666', 'lucas@proclub.com', '$2a$10$XZBWgkCrLz/MoGoAjDCTquOMUyZEu.OeXRp/voSyabgjnRPxg1ANm', 'alumno', '2024-04-12', 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `professors`
--

CREATE TABLE `professors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `dni` varchar(20) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('alumno','profesor') NOT NULL,
  `system_created` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `professors`
--

INSERT INTO `professors` (`id`, `name`, `lastname`, `dni`, `email`, `password`, `role`, `system_created`) VALUES
(4, 'David', 'Lucero', '12312312', 'david@gmail.com', '$2a$10$DCy2PMbXAIkWOxCBILNvy.b6U8nY0Hb3wfGcTLk7EfcKYLYByz2FC', 'profesor', '2024-04-20'),
(5, 'Anyi', 'x', '39796666', 'Anyi@proclub.com', '$2a$10$4KtomLkRCYLLkzEk4.NtYuMtWG.lMVIRipK86VHoykv9XqqC8rRw6', 'profesor', '2024-05-11'),
(6, 'Franco', 'x', '39796666', 'franco@proclub.com', '$2a$10$zxQByDFbfXH339AG3zap2udIk99p635K.GsneDZgNlhutYgUedxa2', 'profesor', '2024-05-11'),
(7, 'Enzo', 'x', '39796666', 'enzo@proclub.com', '$2a$10$2D4NZX7onUh.RvGesZvMvORuYxbbinZJ/MLvlM09pd8vu7qabcxt6', 'profesor', '2024-05-11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) UNSIGNED NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`session_id`, `expires`, `data`) VALUES
('-jARo3h8Gr6HbWq5nv4gBBsXH2XfB9tl', 1716393077, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":{\"id\":5,\"role\":\"alumno\",\"email\":\"lucas@proclub.com\"}}}'),
('6mhX1g1k1ixXO5c3zFlg6t3fIjC-dziF', 1716335554, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":{\"id\":5,\"role\":\"alumno\",\"email\":\"lucas@proclub.com\"}}}'),
('gQdNOykaTETSxzsOsTFRpGmyJE2-28W-', 1716389569, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":{\"id\":5,\"role\":\"alumno\",\"email\":\"lucas@proclub.com\"}}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turno`
--

CREATE TABLE `turno` (
  `id` int(11) NOT NULL,
  `id_partner` int(11) NOT NULL,
  `id_clase` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `turno`
--

INSERT INTO `turno` (`id`, `id_partner`, `id_clase`, `fecha`) VALUES
(14, 5, 1, '2024-05-19'),
(15, 5, 2, '2024-05-19'),
(16, 5, 4, '2024-05-19'),
(17, 5, 12, '2024-05-20'),
(18, 5, 18, '2024-05-21'),
(19, 5, 19, '2024-05-21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `dni` varchar(20) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin') DEFAULT NULL,
  `system_created` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `dni`, `email`, `password`, `role`, `system_created`) VALUES
(12, 'Lorenzo', 'Muñoz', '39796666', 'lorenzo@proclub.com', '$2a$10$SIad7.FyxVFExiU/ePIs2uA/DdV7VqmnCZ942i8MdUDzAFOEz1nBS', 'admin', '2024-04-27'),
(13, 'Franco', 'Meloni', '12123123', 'franco_meloni@outlook.com', '$2a$10$tbmsMTdpEQTKaLKlb0J2sOxPQX8S5vqteuFI4n0Glv6nTfbv5hriG', 'admin', '2024-04-29');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clases`
--
ALTER TABLE `clases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_profesor` (`id_profesor`),
  ADD KEY `id_dia` (`id_dia`),
  ADD KEY `id_horario` (`id_horario`);

--
-- Indices de la tabla `dias`
--
ALTER TABLE `dias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fechas`
--
ALTER TABLE `fechas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `professors`
--
ALTER TABLE `professors`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indices de la tabla `turno`
--
ALTER TABLE `turno`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_partner` (`id_partner`),
  ADD KEY `id_clase` (`id_clase`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clases`
--
ALTER TABLE `clases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `dias`
--
ALTER TABLE `dias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `fechas`
--
ALTER TABLE `fechas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `horarios`
--
ALTER TABLE `horarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `professors`
--
ALTER TABLE `professors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `turno`
--
ALTER TABLE `turno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clases`
--
ALTER TABLE `clases`
  ADD CONSTRAINT `clases_ibfk_1` FOREIGN KEY (`id_profesor`) REFERENCES `professors` (`id`),
  ADD CONSTRAINT `clases_ibfk_2` FOREIGN KEY (`id_dia`) REFERENCES `dias` (`id`),
  ADD CONSTRAINT `clases_ibfk_3` FOREIGN KEY (`id_horario`) REFERENCES `horarios` (`id`);

--
-- Filtros para la tabla `turno`
--
ALTER TABLE `turno`
  ADD CONSTRAINT `fk_turno_clase` FOREIGN KEY (`id_clase`) REFERENCES `clases` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_turno_partner` FOREIGN KEY (`id_partner`) REFERENCES `partners` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
