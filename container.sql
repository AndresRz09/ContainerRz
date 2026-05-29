-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-05-2026 a las 06:48:26
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `container`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad_ad`
--

CREATE TABLE `actividad_ad` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `canal_id` int(10) UNSIGNED NOT NULL,
  `contenido_id` int(10) UNSIGNED DEFAULT NULL,
  `tipo` enum('vista','like','comentario','compartir','descarga') DEFAULT 'vista',
  `usuario_id` int(10) UNSIGNED DEFAULT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad_usuario`
--

CREATE TABLE `actividad_usuario` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `tipo` varchar(60) NOT NULL,
  `descripcion` varchar(300) DEFAULT NULL,
  `referencia_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'ID del objeto relacionado',
  `referencia_tipo` varchar(60) DEFAULT NULL COMMENT 'Tipo: curso, proyecto, pqrs...',
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `actividad_usuario`
--

INSERT INTO `actividad_usuario` (`id`, `usuario_id`, `tipo`, `descripcion`, `referencia_id`, `referencia_tipo`, `fecha`) VALUES
(1, 1, 'sesion', 'Cerró sesión', NULL, NULL, '2026-05-13 20:27:20'),
(2, 1, 'sesion', 'Cerró sesión', NULL, NULL, '2026-05-13 20:28:21'),
(3, 1, 'sesion', 'Cerró sesión', NULL, NULL, '2026-05-13 22:10:29'),
(4, 1, 'sesion', 'Cerró sesión', NULL, NULL, '2026-05-14 14:38:28'),
(5, 2, 'sesion', 'Cerró sesión', NULL, NULL, '2026-05-15 23:55:25'),
(6, 2, 'sesion', 'Cerró sesión', NULL, NULL, '2026-05-16 00:21:56'),
(7, 2, 'sesion', 'Cerró sesión', NULL, NULL, '2026-05-16 00:25:51'),
(8, 2, 'sesion', 'Cerró sesión', NULL, NULL, '2026-05-16 00:29:16'),
(9, 4, 'sesion', 'Cerró sesión', NULL, NULL, '2026-05-16 23:18:56'),
(10, 4, 'sesion', 'Cerró sesión', NULL, NULL, '2026-05-16 23:23:10'),
(11, 1, 'sesion', 'Cerró sesión', NULL, NULL, '2026-05-16 23:24:23'),
(12, 1, 'sesion', 'Cerró sesión', NULL, NULL, '2026-05-16 23:28:17'),
(13, 1, 'sesion', 'Cerró sesión', NULL, NULL, '2026-05-16 23:37:33'),
(14, 1, 'sesion', 'Cerró sesión', NULL, NULL, '2026-05-16 23:51:54'),
(15, 1, 'sesion', 'Cerró sesión', NULL, NULL, '2026-05-17 17:02:41'),
(16, 1, 'sesion', 'Cerró sesión', NULL, NULL, '2026-05-17 17:18:57'),
(17, 4, 'vista_perfil', 'Visitó el perfil de un usuario', 1, 'usuario', '2026-05-17 18:13:36'),
(18, 4, 'vista_perfil', 'Visitó el perfil de un usuario', 2, 'usuario', '2026-05-17 18:14:21'),
(19, 4, 'vista_perfil', 'Visitó el perfil de un usuario', 1, 'usuario', '2026-05-17 18:17:32'),
(20, 1, 'sesion', 'Cerró sesión', NULL, NULL, '2026-05-20 15:48:05'),
(21, 1, 'vista_perfil', 'Visitó el perfil de un usuario', 4, 'usuario', '2026-05-20 17:11:45'),
(22, 1, 'sesion', 'Cerró sesión', NULL, NULL, '2026-05-20 17:27:47'),
(23, 1, 'vista_perfil', 'Visitó el perfil de un usuario', 4, 'usuario', '2026-05-20 20:20:03'),
(24, 1, 'vista_perfil', 'Visitó el perfil de un usuario', 2, 'usuario', '2026-05-20 20:20:27'),
(25, 1, 'vista_perfil', 'Visitó el perfil de un usuario', 2, 'usuario', '2026-05-20 20:20:50'),
(26, 1, 'vista_perfil', 'Visitó el perfil de un usuario', 2, 'usuario', '2026-05-20 20:27:37'),
(27, 1, 'sesion', 'Cerró sesión', NULL, NULL, '2026-05-20 20:27:43'),
(28, 1, 'sesion', 'Cerró sesión', NULL, NULL, '2026-05-20 20:28:45'),
(29, 1, 'sesion', 'Cerró sesión', NULL, NULL, '2026-05-20 20:34:29'),
(30, 1, 'vista_perfil', 'Visitó el perfil de un usuario', 4, 'usuario', '2026-05-20 21:27:30'),
(31, 1, 'sesion', 'Cerró sesión', NULL, NULL, '2026-05-20 21:28:06'),
(32, 4, 'sesion', 'Cerró sesión', NULL, NULL, '2026-05-21 01:47:33'),
(33, 4, 'sesion', 'Cerró sesión', NULL, NULL, '2026-05-21 11:37:07'),
(34, 5, 'sesion', 'Cerró sesión', NULL, NULL, '2026-05-22 16:36:30'),
(35, 5, 'sesion', 'Cerró sesión', NULL, NULL, '2026-05-22 16:37:33'),
(36, 2, 'sesion', 'Cerró sesión', NULL, NULL, '2026-05-22 16:37:55'),
(37, 5, 'sesion', 'Cerró sesión', NULL, NULL, '2026-05-22 16:39:54'),
(38, 1, 'sesion', 'Cerró sesión', NULL, NULL, '2026-05-23 14:20:23'),
(39, 1, 'sesion', 'Cerró sesión', NULL, NULL, '2026-05-26 15:21:44'),
(40, 1, 'sesion', 'Cerró sesión', NULL, NULL, '2026-05-28 10:43:45'),
(41, 1, 'sesion', 'Cerró sesión', NULL, NULL, '2026-05-28 12:58:46'),
(42, 2, 'sesion', 'Cerró sesión', NULL, NULL, '2026-05-28 13:00:46'),
(43, 4, 'sesion', 'Cerró sesión', NULL, NULL, '2026-05-28 13:01:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auditoria`
--

CREATE TABLE `auditoria` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `usuario_id` int(10) UNSIGNED DEFAULT NULL,
  `tabla` varchar(80) NOT NULL,
  `operacion` enum('INSERT','UPDATE','DELETE','SELECT_SENS') NOT NULL,
  `registro_id` varchar(30) DEFAULT NULL,
  `datos_antes` longtext DEFAULT NULL COMMENT 'JSON del estado anterior',
  `datos_despues` longtext DEFAULT NULL COMMENT 'JSON del estado nuevo',
  `ip` varchar(45) DEFAULT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_sistema`
--

CREATE TABLE `cache_sistema` (
  `clave` varchar(200) NOT NULL,
  `valor` mediumtext DEFAULT NULL,
  `expira_en` datetime NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canales_ad`
--

CREATE TABLE `canales_ad` (
  `id` int(10) UNSIGNED NOT NULL,
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(120) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `avatar` varchar(300) DEFAULT NULL,
  `banner` varchar(300) DEFAULT NULL,
  `verificado` tinyint(1) DEFAULT 0,
  `activo` tinyint(1) DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `certificados`
--

CREATE TABLE `certificados` (
  `id` int(10) UNSIGNED NOT NULL,
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `curso_id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(200) NOT NULL COMMENT 'Nombre del certificado',
  `url` varchar(400) DEFAULT NULL COMMENT 'URL del PDF generado',
  `codigo` varchar(32) NOT NULL COMMENT 'Código único de verificación',
  `fecha_emision` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios_ad`
--

CREATE TABLE `comentarios_ad` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contenido_id` int(10) UNSIGNED NOT NULL,
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `padre_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'Respuesta a otro comentario',
  `texto` text NOT NULL,
  `likes` int(10) UNSIGNED DEFAULT 0,
  `moderado` tinyint(1) DEFAULT 0,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracion`
--

CREATE TABLE `configuracion` (
  `id` int(10) UNSIGNED NOT NULL,
  `clave` varchar(100) NOT NULL,
  `valor` text DEFAULT NULL,
  `grupo` varchar(60) DEFAULT 'general',
  `tipo` enum('texto','numero','booleano','json') DEFAULT 'texto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `configuracion`
--

INSERT INTO `configuracion` (`id`, `clave`, `valor`, `grupo`, `tipo`) VALUES
(1, 'nombre_sistema', 'ContainerRz', 'general', 'texto'),
(2, 'nombre_publico', 'ContainerRz', 'general', 'texto'),
(3, 'slogan', 'Tecnología, ingenieria y aprendizaje interactivo en un solo ecosistema conectado.', 'general', 'texto'),
(4, 'version', '1.0.0', 'general', 'texto'),
(5, 'modo_mantenimiento', '0', 'general', 'booleano'),
(6, 'mision', 'Democratizar el acceso a la educación en ciberseguridad y tecnología, proporcionando herramientas interactivas, recursos de calidad y un ecosistema colaborativo que permita a cada persona desarrollar sus habilidades digitales sin importar su contexto o ubicación.', 'empresa', 'texto'),
(7, 'vision', 'Ser la plataforma educativa de referencia en ciberseguridad para Latinoamérica, reconocida por su innovación, accesibilidad y compromiso con la formación de profesionales capaces de enfrentar los retos digitales del futuro.', 'empresa', 'texto'),
(8, 'acerca', 'Proyecto académico enfocado en ciberseguridad educativa, tecnología aplicada y aprendizaje interactivo. Construido con pasión por un equipo comprometido con la innovación y la democratización del conocimiento digital.', 'empresa', 'texto'),
(9, 'stat_modulos', '21', 'estadisticas', 'numero'),
(10, 'stat_roles', '7', 'estadisticas', 'numero'),
(11, 'stat_regiones', '5', 'estadisticas', 'numero'),
(12, 'manual_url', 'manual.php', 'manual', 'texto'),
(13, 'manual_titulo', 'Manual del Usuario', 'manual', 'texto'),
(14, 'manual_subtitulo', 'Aprende a usar todas las funcionalidades de ContainerRz paso a paso.', 'manual', 'texto'),
(15, 'email', 'andres.rozogx@gmail.com', 'contacto', 'texto'),
(16, 'telefono', '+57 321 277 1090', 'contacto', 'texto'),
(17, 'whatsapp', '57 321 277 1090', 'contacto', 'texto'),
(18, 'web', 'www.teamvirox.com', 'contacto', 'texto'),
(19, 'ubicacion', 'Colombia', 'contacto', 'texto'),
(20, 'direccion', 'Bogotá, Colombia', 'contacto', 'texto'),
(21, 'horario', 'Lun – Vie: 8:00 AM – 6:00 PM', 'contacto', 'texto'),
(22, 'lat', '4.6097', 'sig', 'numero'),
(23, 'lng', '-74.0817', 'sig', 'numero'),
(24, 'instagram', '', 'redes', 'texto'),
(25, 'facebook', '', 'redes', 'texto'),
(26, 'twitter', '', 'redes', 'texto'),
(27, 'linkedin', '', 'redes', 'texto'),
(28, 'youtube', '', 'redes', 'texto'),
(29, 'hero_slide1_tag', '⬡ Plataforma Educativa · Tecnológica', 'hero', 'texto'),
(30, 'hero_slide1_titulo', 'Bienvenidos a ContainerRz', 'hero', 'texto'),
(31, 'hero_slide1_cuerpo', 'Tecnología, ciberseguridad y aprendizaje interactivo en un solo ecosistema conectado.', 'hero', 'texto'),
(32, 'hero_slide2_tag', '🎯 Nuestra Misión', 'hero', 'texto'),
(33, 'hero_slide3_tag', '🔭 Nuestra Visión', 'hero', 'texto'),
(34, 'ia_titulo', 'IA integrada al proyecto', 'ia', 'texto'),
(35, 'ia_descripcion', 'Herramientas y desarrollos de inteligencia artificial aplicados a ciberseguridad y aprendizaje interactivo.', 'ia', 'texto'),
(36, 'footer_copy', '© 2025 Team VIROX — Todos los derechos reservados', 'footer', 'texto'),
(37, 'pasarela_principal', 'mercadopago', 'pagos', 'texto'),
(38, 'pasarela_secundaria', 'payco', 'pagos', 'texto'),
(39, 'moneda_default', 'COP', 'pagos', 'texto'),
(40, 'pago_nota_seguridad', 'Todos los pagos son procesados de forma segura con cifrado SSL. Precios en COP. Contáctanos para pagos en USD o EUR.', 'pagos', 'texto'),
(41, 'pago_nota_personalizado', '¿Necesitas un plan personalizado? Diseñamos planes a medida para empresas y grupos con descuentos especiales.', 'pagos', 'texto'),
(42, 'contacto_desc', 'Envíanos tu mensaje, PQRS o sugerencia. Nuestro equipo responde en menos de 24 horas.', 'contacto', 'texto'),
(43, 'pqrs_dias_respuesta', '15', 'contacto', 'numero'),
(44, 'pqrs_pts_registro', '10', 'contacto', 'numero'),
(45, 'pqrs_pts_calificar', '5', 'contacto', 'numero'),
(46, 'pqrs_pts_completada', '15', 'contacto', 'numero'),
(47, 'pqrs_pts_sugerencia', '20', 'contacto', 'numero'),
(48, 'equipo_titulo', 'Nuestro Equipo', 'equipo', 'texto'),
(49, 'equipo_subtitulo', 'Conoce a los colaboradores, especialistas y miembros que forman parte del ecosistema ContainerRz.', 'equipo', 'texto'),
(50, 'ia_modelo', 'claude-sonnet-4-20250514', 'ia', 'texto'),
(51, 'ia_max_tokens', '1500', 'ia', 'numero'),
(52, 'ia_contexto_msgs', '20', 'ia', 'numero'),
(53, 'ia_titulo_pagina', 'IA ContainerRz — Asistente Inteligente', 'ia', 'texto'),
(54, 'ia_bienvenida', 'Soy tu asistente inteligente. Puedo ayudarte con ciberseguridad, código, aprendizaje, proyectos, análisis de datos y mucho más.', 'ia', 'texto'),
(55, 'ultimo_backup', '{\"filename\":\"backup_virox_completo_20260528_195829.sql\",\"tipo\":\"completo\",\"fecha\":\"2026-05-28 19:58:29\",\"size\":59414}', 'backups', 'json'),
(57, 'google_oauth_habilitado', '1', 'oauth', 'booleano'),
(58, 'google_oauth_client_id', 'TU_CLIENT_ID_AQUI.apps.googleusercontent.com', 'oauth', 'texto'),
(59, 'google_puntos_registro', '50', 'oauth', 'numero'),
(60, 'google_auto_verificar', '1', 'oauth', 'booleano');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto_adjuntos`
--

CREATE TABLE `contacto_adjuntos` (
  `id` int(10) UNSIGNED NOT NULL,
  `mensaje_id` int(10) UNSIGNED NOT NULL,
  `archivo` varchar(400) NOT NULL,
  `mime_type` varchar(100) DEFAULT NULL,
  `tamanio_kb` int(10) UNSIGNED DEFAULT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto_mensajes`
--

CREATE TABLE `contacto_mensajes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `correo` varchar(180) NOT NULL,
  `asunto` varchar(200) DEFAULT NULL,
  `mensaje` text NOT NULL,
  `pais` varchar(80) DEFAULT NULL,
  `lat` decimal(10,7) DEFAULT NULL,
  `lng` decimal(10,7) DEFAULT NULL,
  `idioma` varchar(5) DEFAULT 'es',
  `leido` tinyint(1) DEFAULT 0,
  `respondido` tinyint(1) DEFAULT 0,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenido_ad`
--

CREATE TABLE `contenido_ad` (
  `id` int(10) UNSIGNED NOT NULL,
  `canal_id` int(10) UNSIGNED NOT NULL,
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `tipo` enum('video','audio','podcast','infografia','presentacion','imagen','documento') NOT NULL DEFAULT 'video',
  `duracion` varchar(10) DEFAULT NULL COMMENT 'MM:SS',
  `duracion_seg` int(10) UNSIGNED DEFAULT 0,
  `thumbnail` varchar(400) DEFAULT NULL,
  `archivo_url` varchar(500) DEFAULT NULL,
  `icono` varchar(10) DEFAULT '?',
  `tags` varchar(300) DEFAULT NULL COMMENT 'CSV',
  `categoria` varchar(80) DEFAULT NULL,
  `vistas` int(10) UNSIGNED DEFAULT 0,
  `likes` int(10) UNSIGNED DEFAULT 0,
  `publicado` tinyint(1) DEFAULT 0,
  `destacado` tinyint(1) DEFAULT 0,
  `fecha_publicacion` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(120) NOT NULL,
  `icono` varchar(20) DEFAULT '?',
  `titulo` varchar(200) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `imagen` varchar(400) DEFAULT NULL,
  `video_intro` varchar(400) DEFAULT NULL,
  `categoria` varchar(80) DEFAULT NULL,
  `tipo` enum('MOOC','NOOC','SPOC') DEFAULT 'MOOC',
  `nivel` enum('basico','intermedio','avanzado','experto') DEFAULT 'basico',
  `idioma` varchar(5) DEFAULT 'es',
  `duracion_horas` decimal(6,2) DEFAULT NULL,
  `precio` decimal(12,2) DEFAULT 0.00,
  `gratuito` tinyint(1) DEFAULT 1,
  `certificado` tinyint(1) DEFAULT 0,
  `instructor_id` int(10) UNSIGNED DEFAULT NULL,
  `capacidad_max` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'NULL = ilimitado (MOOC)',
  `activo` tinyint(1) DEFAULT 1,
  `publicado` tinyint(1) DEFAULT 0,
  `destacado` tinyint(1) DEFAULT 0,
  `rating` decimal(3,2) DEFAULT 0.00 COMMENT 'Promedio calificaciones',
  `total_subs` int(10) UNSIGNED DEFAULT 0 COMMENT 'Cache inscritos',
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso_modulos`
--

CREATE TABLE `curso_modulos` (
  `id` int(10) UNSIGNED NOT NULL,
  `curso_id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `orden` smallint(5) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE `equipo` (
  `id` int(10) UNSIGNED NOT NULL,
  `usuario_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Si existe cuenta, linkear',
  `nombre` varchar(150) NOT NULL,
  `rol` varchar(100) DEFAULT NULL,
  `cargo_equipo` varchar(100) DEFAULT NULL,
  `area_tecnologica` varchar(80) DEFAULT NULL,
  `tipo_equipo` varchar(80) DEFAULT NULL,
  `habilidades` text DEFAULT NULL,
  `disponible` tinyint(1) DEFAULT 1,
  `calificacion` decimal(3,2) DEFAULT 0.00,
  `num_proyectos` int(10) UNSIGNED DEFAULT 0,
  `descripcion_equipo` text DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `github` varchar(255) DEFAULT NULL,
  `imagen` varchar(300) DEFAULT 'assets/avatar-default.png',
  `bio` text DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1,
  `orden` smallint(5) UNSIGNED DEFAULT 0,
  `categoria_id` int(10) UNSIGNED DEFAULT NULL,
  `correo` varchar(180) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `proyectos_csv` varchar(500) DEFAULT NULL COMMENT 'IDs de proyectos separados por coma',
  `areas_csv` varchar(500) DEFAULT NULL COMMENT 'Áreas de especialidad'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo_areas`
--

CREATE TABLE `equipo_areas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `icono` varchar(10) DEFAULT '?',
  `color_bg` varchar(80) DEFAULT 'rgba(40,166,128,.18)',
  `color_borde` varchar(80) DEFAULT 'rgba(40,166,128,.4)',
  `descripcion` varchar(300) DEFAULT NULL,
  `orden` smallint(5) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo_categorias`
--

CREATE TABLE `equipo_categorias` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `icono` varchar(20) DEFAULT '?',
  `descripcion` varchar(300) DEFAULT NULL,
  `orden` smallint(5) UNSIGNED DEFAULT 0,
  `activa` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `equipo_categorias`
--

INSERT INTO `equipo_categorias` (`id`, `nombre`, `icono`, `descripcion`, `orden`, `activa`) VALUES
(1, 'Dirección y Gestión', '🏛', 'Liderazgo estratégico y gestión del proyecto', 1, 1),
(2, 'Desarrollo', '💻', 'Ingenieros de software y desarrolladores', 2, 1),
(3, 'Ciberseguridad', '🛡', 'Especialistas en seguridad ofensiva y defensiva', 3, 1),
(4, 'IA & Datos', '🤖', 'Científicos de datos e ingenieros de IA', 4, 1),
(5, 'Infraestructura', '🌐', 'Administradores de redes, cloud y sistemas', 5, 1),
(6, 'Diseño & UX', '🎨', 'Diseñadores de experiencia e interfaz de usuario', 6, 1),
(7, 'Educación & Contenido', '🎓', 'Instructores, tutores y creadores de contenido', 7, 1),
(8, 'Colaboradores Externos', '🤝', 'Consultores, freelancers y aliados estratégicos', 8, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galerias`
--

CREATE TABLE `galerias` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `imagen` varchar(400) NOT NULL,
  `descripcion` varchar(400) DEFAULT NULL,
  `categoria` varchar(80) DEFAULT NULL,
  `orden` smallint(5) UNSIGNED DEFAULT 0,
  `activo` tinyint(1) DEFAULT 1,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ia_conversaciones`
--

CREATE TABLE `ia_conversaciones` (
  `id` int(10) UNSIGNED NOT NULL,
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(200) DEFAULT NULL,
  `tool_id` varchar(50) DEFAULT 'asistente',
  `resumen` text DEFAULT NULL,
  `tokens_usados` int(10) UNSIGNED DEFAULT 0,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Historial de conversaciones con la IA VIROX';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ia_herramientas`
--

CREATE TABLE `ia_herramientas` (
  `id` int(10) UNSIGNED NOT NULL,
  `icono` varchar(20) DEFAULT '?',
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `prompt_base` text DEFAULT NULL,
  `color` varchar(20) DEFAULT 'green',
  `activo` tinyint(1) DEFAULT 1,
  `sugerencias` text DEFAULT NULL COMMENT 'JSON array de sugerencias rápidas'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ia_herramientas`
--

INSERT INTO `ia_herramientas` (`id`, `icono`, `nombre`, `descripcion`, `prompt_base`, `color`, `activo`, `sugerencias`) VALUES
(1, '✍️', 'Redacción y Contenido', 'Crea documentación técnica, artículos, reportes y presentaciones.', 'Eres un experto en comunicación técnica y creativa. Redacta documentación, artículos técnicos, reportes ejecutivos y contenido educativo con claridad profesional.', 'pink', 1, '[\"Informe ejecutivo de incidente\",\"Política de contraseñas corporativa\",\"README técnico del proyecto\",\"Propuesta de auditoría\",\"Procedimiento de respuesta\"]'),
(2, '🌐', 'Redes e Infraestructura', 'Diagnóstica redes, configura servidores y optimiza infraestructura.', 'Eres un experto en redes y administración de sistemas. Ayuda con configuración de servidores, diagnóstico de redes, optimización de infraestructura, protocolos y arquitecturas cloud.', 'teal', 1, '[\"Diagnóstica este error de red\",\"Configuración de firewall básica\",\"¿Qué protocolo usar para VPN?\",\"Diferencias entre TCP y UDP\",\"Arquitectura de red segura\"]'),
(3, '🧠', 'IA & Machine Learning', 'Explica algoritmos de IA, ML y sus aplicaciones prácticas.', 'Eres un experto en Inteligencia Artificial y Machine Learning. Explica algoritmos, modelos, datasets, métricas y aplica conceptos de IA a problemas reales.', 'indigo', 1, '[\"¿Qué es una red neuronal?\",\"Cómo funciona Random Forest\",\"Implementa k-means en Python\",\"Diferencias: ML vs DL vs RL\",\"Bias en modelos de IA\"]'),
(4, '⚡', 'Optimizador de Sistemas', 'Mejora rendimiento, detecta cuellos de botella y sugiere mejoras.', 'Eres un experto en optimización de rendimiento. Analiza cuellos de botella, propone mejoras en código, bases de datos, servidores y arquitecturas de software.', 'yellow', 1, '[\"Optimiza esta consulta SQL\",\"Cuellos de botella en PHP\",\"Caché efectivo para aplicaciones\",\"Profiling de código Python\",\"Métricas de rendimiento web\"]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ia_mensajes`
--

CREATE TABLE `ia_mensajes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `conversacion_id` int(10) UNSIGNED NOT NULL,
  `rol` enum('user','assistant') NOT NULL,
  `contenido` mediumtext NOT NULL,
  `tokens` int(10) UNSIGNED DEFAULT 0,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ia_uso_tokens`
--

CREATE TABLE `ia_uso_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `mes` char(7) NOT NULL COMMENT 'YYYY-MM',
  `tokens_input` int(10) UNSIGNED DEFAULT 0,
  `tokens_output` int(10) UNSIGNED DEFAULT 0,
  `costo_usd` decimal(10,6) DEFAULT 0.000000,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingresos_canal`
--

CREATE TABLE `ingresos_canal` (
  `id` int(10) UNSIGNED NOT NULL,
  `canal_id` int(10) UNSIGNED NOT NULL,
  `concepto` enum('publicidad','suscripcion','donacion','afiliado','otro') DEFAULT 'publicidad',
  `monto` decimal(12,2) NOT NULL DEFAULT 0.00,
  `moneda` char(3) DEFAULT 'COP',
  `fecha` date NOT NULL,
  `detalle` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripciones`
--

CREATE TABLE `inscripciones` (
  `id` int(10) UNSIGNED NOT NULL,
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `curso_id` int(10) UNSIGNED NOT NULL,
  `progreso` tinyint(3) UNSIGNED DEFAULT 0,
  `completado` tinyint(1) DEFAULT 0,
  `fecha_inscripcion` datetime NOT NULL DEFAULT current_timestamp(),
  `fecha_completado` datetime DEFAULT NULL,
  `ultima_leccion` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lecciones`
--

CREATE TABLE `lecciones` (
  `id` int(10) UNSIGNED NOT NULL,
  `modulo_id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `tipo` enum('video','texto','quiz','descarga','practica') DEFAULT 'video',
  `contenido` mediumtext DEFAULT NULL COMMENT 'HTML, URL, JSON según tipo',
  `duracion_min` smallint(5) UNSIGNED DEFAULT NULL,
  `orden` smallint(5) UNSIGNED DEFAULT 0,
  `gratis` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lecciones_curso`
--

CREATE TABLE `lecciones_curso` (
  `id` int(10) UNSIGNED NOT NULL,
  `modulo_id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `tipo` enum('video','texto','quiz','descarga','practica','audio') DEFAULT 'video',
  `contenido` mediumtext DEFAULT NULL,
  `duracion_min` smallint(5) UNSIGNED DEFAULT NULL,
  `orden` smallint(5) UNSIGNED DEFAULT 0,
  `gratis` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log_accesos`
--

CREATE TABLE `log_accesos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `usuario_id` int(10) UNSIGNED DEFAULT NULL,
  `correo` varchar(180) DEFAULT NULL,
  `accion` enum('login_ok','login_fail','logout','reset_pass','cambio_pass','bloqueo','2fa_ok','2fa_fail') NOT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `user_agent` varchar(300) DEFAULT NULL,
  `detalles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`detalles`)),
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes_internos`
--

CREATE TABLE `mensajes_internos` (
  `id` int(10) UNSIGNED NOT NULL,
  `remitente_id` int(10) UNSIGNED NOT NULL,
  `destinatario_id` int(10) UNSIGNED NOT NULL,
  `asunto` varchar(250) NOT NULL,
  `mensaje` text NOT NULL,
  `leido` tinyint(1) DEFAULT 0,
  `archivado_rem` tinyint(1) DEFAULT 0 COMMENT 'Archivado por remitente',
  `archivado_dest` tinyint(1) DEFAULT 0 COMMENT 'Archivado por destinatario',
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulos_curso`
--

CREATE TABLE `modulos_curso` (
  `id` int(10) UNSIGNED NOT NULL,
  `curso_id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `orden` smallint(5) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(300) NOT NULL,
  `cuerpo` text DEFAULT NULL,
  `imagen` varchar(400) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

CREATE TABLE `novedades` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `tipo` enum('nuevo','mejora','mantenimiento','alerta') DEFAULT 'nuevo',
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_conexiones`
--

CREATE TABLE `oauth_conexiones` (
  `id` int(10) UNSIGNED NOT NULL,
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `proveedor` enum('google','github','microsoft','apple') NOT NULL,
  `proveedor_uid` varchar(200) NOT NULL,
  `email` varchar(180) DEFAULT NULL,
  `access_token` text DEFAULT NULL,
  `refresh_token` text DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `datos_extra` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`datos_extra`)),
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `objetivos_ad`
--

CREATE TABLE `objetivos_ad` (
  `id` int(10) UNSIGNED NOT NULL,
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `categoria` varchar(80) DEFAULT NULL,
  `progreso` tinyint(3) UNSIGNED DEFAULT 0,
  `completado` tinyint(1) DEFAULT 0,
  `fecha_limite` date DEFAULT NULL,
  `fecha_completado` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `id` int(10) UNSIGNED NOT NULL,
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `referencia` varchar(100) NOT NULL COMMENT 'ID de la pasarela de pago',
  `tipo` enum('servicio','curso','plan','donacion') NOT NULL,
  `referencia_id` int(10) UNSIGNED DEFAULT NULL,
  `monto` decimal(14,2) NOT NULL,
  `moneda` char(3) DEFAULT 'COP',
  `metodo` varchar(60) DEFAULT NULL COMMENT 'PSE, Tarjeta, Nequi...',
  `estado` enum('iniciado','pendiente','aprobado','rechazado','reembolsado') DEFAULT 'iniciado',
  `datos_pago` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Respuesta de la pasarela' CHECK (json_valid(`datos_pago`)),
  `ip_usuario` varchar(45) DEFAULT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `fecha_update` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pasarelas_pago`
--

CREATE TABLE `pasarelas_pago` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(40) NOT NULL COMMENT 'mercadopago, payco, wompi, pse...',
  `nombre` varchar(80) NOT NULL,
  `icono` varchar(30) DEFAULT '?',
  `color` varchar(30) DEFAULT '#28A680',
  `url_checkout` varchar(500) NOT NULL COMMENT 'URL directa de checkout o endpoint',
  `descripcion` varchar(200) DEFAULT NULL,
  `activa` tinyint(1) DEFAULT 1,
  `orden` tinyint(3) UNSIGNED DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Pasarelas de pago activas de la plataforma';

--
-- Volcado de datos para la tabla `pasarelas_pago`
--

INSERT INTO `pasarelas_pago` (`id`, `slug`, `nombre`, `icono`, `color`, `url_checkout`, `descripcion`, `activa`, `orden`, `created_at`) VALUES
(1, 'mercadopago', 'Mercado Pago', '💚', '#00B1EA', 'https://link.mercadopago.com.co/containerrz', 'Paga con tarjeta débito, crédito, PSE o efectivo a través de Mercado Pago', 1, 1, '2026-05-13 20:01:25'),
(2, 'payco', 'PayCo (ePayco)', '🔵', '#003087', 'https://secure.payco.co/checkoutopen/37b6bb65-23a0-4880-852f-3a43572c8d86', 'Pasarela colombiana: PSE, tarjetas, efectivo, Nequi y más', 1, 2, '2026-05-13 20:01:25'),
(3, 'pse', 'PSE', '🏦', '#00529B', 'https://secure.payco.co/checkoutopen/37b6bb65-23a0-4880-852f-3a43572c8d86', 'Pago directo desde tu cuenta bancaria con PSE', 1, 3, '2026-05-13 20:01:25'),
(4, 'nequi', 'Nequi', '📱', '#6C1EB0', 'https://link.mercadopago.com.co/containerrz', 'Paga rápidamente con tu billetera Nequi', 1, 4, '2026-05-13 20:01:25'),
(5, 'daviplata', 'Daviplata', '🟣', '#C0392B', 'https://link.mercadopago.com.co/containerrz', 'Billetera digital Davivienda para pagos ágiles', 1, 5, '2026-05-13 20:01:25'),
(6, 'tarjeta', 'Tarjeta Crédito/Débito', '💳', '#28A680', 'https://link.mercadopago.com.co/containerrz', 'Visa, Mastercard, American Express — pago seguro SSL', 1, 6, '2026-05-13 20:01:25'),
(7, 'efecty', 'Efecty', '💵', '#FFC107', 'https://secure.payco.co/checkoutopen/37b6bb65-23a0-4880-852f-3a43572c8d86', 'Paga en efectivo en cualquier punto Efecty de Colombia', 1, 7, '2026-05-13 20:01:25'),
(8, 'transferencia', 'Transferencia Bancaria', '↔️', '#8da0b8', '', 'Transferencia directa a cuenta bancaria. Contáctanos para datos.', 1, 8, '2026-05-13 20:01:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil_historial`
--

CREATE TABLE `perfil_historial` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `campo` varchar(80) NOT NULL COMMENT 'Nombre del campo modificado',
  `valor_antes` text DEFAULT NULL,
  `valor_despues` text DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Auditoría de cambios en perfil de usuario';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlists_ad`
--

CREATE TABLE `playlists_ad` (
  `id` int(10) UNSIGNED NOT NULL,
  `canal_id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `publica` tinyint(1) DEFAULT 1,
  `orden` smallint(5) UNSIGNED DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_contenido`
--

CREATE TABLE `playlist_contenido` (
  `id` int(10) UNSIGNED NOT NULL,
  `playlist_id` int(10) UNSIGNED NOT NULL,
  `contenido_id` int(10) UNSIGNED NOT NULL,
  `orden` smallint(5) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pqrs`
--

CREATE TABLE `pqrs` (
  `id` int(10) UNSIGNED NOT NULL,
  `folio` varchar(20) NOT NULL,
  `usuario_id` int(10) UNSIGNED DEFAULT NULL,
  `nombre` varchar(150) NOT NULL,
  `correo` varchar(180) NOT NULL,
  `categoria` enum('peticion','queja','reclamo','sugerencia','consulta','denuncia','felicitacion') DEFAULT 'consulta',
  `asunto` varchar(250) NOT NULL,
  `descripcion` text NOT NULL,
  `estrellas` tinyint(3) UNSIGNED DEFAULT 0,
  `prioridad` enum('baja','normal','alta','urgente') DEFAULT 'normal',
  `estado` enum('abierto','proceso','revision','cerrado','rechazado') DEFAULT 'abierto',
  `pais` varchar(80) DEFAULT NULL,
  `lat` decimal(10,7) DEFAULT NULL,
  `lng` decimal(10,7) DEFAULT NULL,
  `idioma` varchar(5) DEFAULT 'es',
  `asignado_a` int(10) UNSIGNED DEFAULT NULL,
  `respuesta` text DEFAULT NULL,
  `fecha_respuesta` datetime DEFAULT NULL,
  `puntos_bonus` int(10) UNSIGNED DEFAULT 0,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `fecha_update` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pqrs_adjuntos`
--

CREATE TABLE `pqrs_adjuntos` (
  `id` int(10) UNSIGNED NOT NULL,
  `pqrs_id` int(10) UNSIGNED NOT NULL,
  `archivo` varchar(400) NOT NULL,
  `mime_type` varchar(100) DEFAULT NULL,
  `tamanio_kb` int(10) UNSIGNED DEFAULT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `progreso_cursos`
--

CREATE TABLE `progreso_cursos` (
  `id` int(10) UNSIGNED NOT NULL,
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `curso_id` int(10) UNSIGNED NOT NULL,
  `progreso` tinyint(3) UNSIGNED DEFAULT 0 COMMENT '0-100',
  `completado` tinyint(1) DEFAULT 0,
  `ultima_leccion_id` int(10) UNSIGNED DEFAULT NULL,
  `fecha_inicio` datetime NOT NULL DEFAULT current_timestamp(),
  `fecha_completado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `progreso_lecciones`
--

CREATE TABLE `progreso_lecciones` (
  `id` int(10) UNSIGNED NOT NULL,
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `leccion_id` int(10) UNSIGNED NOT NULL,
  `completada` tinyint(1) DEFAULT 0,
  `segundos_vistos` int(10) UNSIGNED DEFAULT 0,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `tipo` enum('propio','comunidad','cliente','academico') DEFAULT 'propio',
  `categoria` varchar(80) DEFAULT NULL,
  `subtipo` varchar(80) DEFAULT NULL,
  `icono` varchar(20) DEFAULT '?',
  `estado` enum('planeado','activo','pausado','completado','cancelado') DEFAULT 'planeado',
  `progreso` tinyint(3) UNSIGNED DEFAULT 0 COMMENT '0-100%',
  `tecnologias` text DEFAULT NULL COMMENT 'CSV de tecnologías',
  `areas` text DEFAULT NULL COMMENT 'CSV de áreas',
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `presupuesto` decimal(14,2) DEFAULT NULL,
  `repositorio` varchar(255) DEFAULT NULL,
  `url_demo` varchar(255) DEFAULT NULL,
  `privado` tinyint(1) DEFAULT 0,
  `creado_por` int(10) UNSIGNED DEFAULT NULL,
  `fecha_creacion` datetime NOT NULL DEFAULT current_timestamp(),
  `fecha_update` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`id`, `titulo`, `descripcion`, `tipo`, `categoria`, `subtipo`, `icono`, `estado`, `progreso`, `tecnologias`, `areas`, `fecha_inicio`, `fecha_fin`, `presupuesto`, `repositorio`, `url_demo`, `privado`, `creado_por`, `fecha_creacion`, `fecha_update`) VALUES
(1, 'Virox', 'Videojuego Educativo', 'academico', NULL, NULL, '🚀', 'planeado', 0, '', '', '2026-05-21', NULL, NULL, NULL, NULL, 0, 1, '2026-05-20 21:25:38', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto_avances`
--

CREATE TABLE `proyecto_avances` (
  `id` int(10) UNSIGNED NOT NULL,
  `proyecto_id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `completado` tinyint(1) DEFAULT 0,
  `fecha` date NOT NULL,
  `autor_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto_documentos`
--

CREATE TABLE `proyecto_documentos` (
  `id` int(10) UNSIGNED NOT NULL,
  `proyecto_id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `archivo` varchar(400) NOT NULL,
  `descripcion` varchar(300) DEFAULT NULL,
  `tipo` enum('pdf','imagen','video','enlace','otro') DEFAULT 'pdf',
  `tamanio_kb` int(10) UNSIGNED DEFAULT NULL,
  `subido_por` int(10) UNSIGNED DEFAULT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto_imagenes`
--

CREATE TABLE `proyecto_imagenes` (
  `id` int(10) UNSIGNED NOT NULL,
  `proyecto_id` int(10) UNSIGNED NOT NULL,
  `imagen` varchar(400) NOT NULL,
  `titulo` varchar(200) DEFAULT NULL,
  `orden` tinyint(3) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto_kpis`
--

CREATE TABLE `proyecto_kpis` (
  `id` int(10) UNSIGNED NOT NULL,
  `proyecto_id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `valor` varchar(50) DEFAULT NULL,
  `icono` varchar(10) DEFAULT '?',
  `meta` varchar(50) DEFAULT NULL,
  `fecha` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto_usuarios`
--

CREATE TABLE `proyecto_usuarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `proyecto_id` int(10) UNSIGNED NOT NULL,
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `rol_proyecto` varchar(100) DEFAULT 'Colaborador',
  `permisos` set('ver','editar','admin') DEFAULT 'ver',
  `fecha_ingreso` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE `publicaciones` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(300) NOT NULL,
  `slug` varchar(300) NOT NULL,
  `resumen` varchar(500) DEFAULT NULL,
  `contenido` longtext DEFAULT NULL,
  `imagen` varchar(400) DEFAULT NULL,
  `autor_id` int(10) UNSIGNED DEFAULT NULL,
  `categoria` varchar(80) DEFAULT NULL,
  `tags` varchar(300) DEFAULT NULL,
  `publicado` tinyint(1) DEFAULT 0,
  `destacado` tinyint(1) DEFAULT 0,
  `vistas` int(10) UNSIGNED DEFAULT 0,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `fecha_pub` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntos_usuario`
--

CREATE TABLE `puntos_usuario` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `puntos` int(11) NOT NULL COMMENT 'Puede ser negativo (penalización)',
  `motivo` varchar(200) NOT NULL,
  `referencia` varchar(100) DEFAULT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quizzes`
--

CREATE TABLE `quizzes` (
  `id` int(10) UNSIGNED NOT NULL,
  `leccion_id` int(10) UNSIGNED NOT NULL,
  `pregunta` text NOT NULL,
  `tipo` enum('opcion_multiple','verdadero_falso','texto_libre') DEFAULT 'opcion_multiple',
  `puntos` tinyint(3) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quiz_opciones`
--

CREATE TABLE `quiz_opciones` (
  `id` int(10) UNSIGNED NOT NULL,
  `quiz_id` int(10) UNSIGNED NOT NULL,
  `opcion` varchar(400) NOT NULL,
  `correcta` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quiz_respuestas`
--

CREATE TABLE `quiz_respuestas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `quiz_id` int(10) UNSIGNED NOT NULL,
  `opcion_id` int(10) UNSIGNED DEFAULT NULL,
  `respuesta_txt` text DEFAULT NULL,
  `correcta` tinyint(1) DEFAULT 0,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rate_limit`
--

CREATE TABLE `rate_limit` (
  `ip` varchar(45) NOT NULL,
  `endpoint` varchar(100) NOT NULL,
  `intentos` int(10) UNSIGNED DEFAULT 1,
  `bloqueado_hasta` datetime DEFAULT NULL,
  `primera_vez` datetime NOT NULL DEFAULT current_timestamp(),
  `ultima_vez` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(80) NOT NULL COMMENT 'identificador URL-friendly',
  `icono` varchar(20) DEFAULT '?',
  `categoria` varchar(80) DEFAULT NULL,
  `titulo` varchar(150) NOT NULL,
  `subtitulo` varchar(200) DEFAULT NULL,
  `color` varchar(30) DEFAULT 'green',
  `nivel` varchar(80) DEFAULT NULL,
  `duracion` varchar(50) DEFAULT NULL,
  `precio_base` decimal(12,2) DEFAULT 0.00,
  `definicion` text DEFAULT NULL,
  `importancia` text DEFAULT NULL,
  `foto_url` varchar(400) DEFAULT NULL,
  `video_url` varchar(400) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1,
  `destacado` tinyint(1) DEFAULT 0,
  `orden` smallint(5) UNSIGNED DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id`, `slug`, `icono`, `categoria`, `titulo`, `subtitulo`, `color`, `nivel`, `duracion`, `precio_base`, `definicion`, `importancia`, `foto_url`, `video_url`, `activo`, `destacado`, `orden`, `created_at`) VALUES
(6, 'programacion', '💻', 'Desarrollo', 'Programación', 'Fundamentos y desarrollo de software', 'green', 'Básico → Avanzado', '20 – 120 h', 150000.00, 'La programación es el proceso de diseñar, codificar, depurar y mantener el código fuente de programas computacionales para resolver problemas o realizar tareas. Actúa como puente de comunicación entre el ser humano y la máquina, utilizando lenguajes específicos para crear software, aplicaciones móviles, sitios web y sistemas de Inteligencia Artificial.', 'En un mundo completamente digitalizado, la programación es el motor que impulsa la economía, la medicina, la ingeniería y la educación. Dominarla abre puertas a decenas de perfiles profesionales con alta demanda y excelente remuneración.', 'https://images.unsplash.com/photo-1555066931-4365d14bab8c?w=800&q=80', 'https://www.youtube.com/embed/nLRL_NcnK-4', 1, 1, 1, '2026-05-13 14:48:52'),
(8, 'prog-web', '🌐', 'Desarrollo', 'Programación Web', 'Frontend, Backend y Full-Stack', 'blue', 'Básico → Full-Stack', '30 – 150 h', 180000.00, 'La programación web es la disciplina que permite crear sitios, aplicaciones y plataformas accesibles desde navegadores o dispositivos conectados a internet. Abarca el desarrollo del lado del cliente (Frontend), del lado del servidor (Backend) y la integración de ambos (Full-Stack), empleando tecnologías como HTML, CSS, JavaScript, PHP, Node.js, React, entre otras.', 'Más del 60% de las empresas del mundo dependen de presencia digital activa. Un desarrollador web competente puede construir desde portafolios personales hasta plataformas e-commerce de millones de usuarios.', 'https://images.unsplash.com/photo-1547658719-da2b51169166?w=800&q=80', 'https://www.youtube.com/embed/ysEN5RaKOlA', 1, 1, 2, '2026-05-13 14:51:27'),
(9, 'poo', '🧩', 'Desarrollo', 'POO', 'Programación Orientada a Objetos', 'purple', 'Intermedio → Avanzado', '25 – 80 h', 140000.00, 'La Programación Orientada a Objetos (POO) es un paradigma de programación que organiza el software en torno a objetos, que son instancias de clases con atributos (datos) y métodos (comportamientos). Sus cuatro pilares —Encapsulamiento, Herencia, Polimorfismo y Abstracción— permiten construir software modular, reutilizable y fácilmente mantenible.', 'POO es el paradigma dominante en la industria. Frameworks y sistemas empresariales como Django, Spring, Laravel y .NET están construidos sobre sus principios. Dominarlo es esencial para cualquier desarrollador profesional.', 'https://images.unsplash.com/photo-1618477388954-7852f32655ec?w=800&q=80', 'https://www.youtube.com/embed/I848HdWjLMo', 1, 0, 3, '2026-05-13 14:54:58'),
(10, 'bases-datos', '🗄', 'Datos', 'Bases de Datos', 'SQL, NoSQL y diseño de datos', 'gold', 'Básico → DBA', '20 – 100 h', 160000.00, 'Una base de datos es un sistema organizado para almacenar, gestionar y recuperar información de forma eficiente, segura y estructurada. Existen bases de datos relacionales (SQL: MySQL, PostgreSQL, SQL Server, Oracle) y no relacionales (NoSQL: MongoDB, Redis, Cassandra, Firebase) cada una óptima para diferentes escenarios.', 'Toda aplicación del mundo real requiere almacenamiento persistente de datos. Sin bases de datos bien diseñadas no hay banca digital, redes sociales, e-commerce ni sistemas empresariales.', 'https://images.unsplash.com/photo-1544383835-bda2bc66a55d?w=800&q=80', 'https://www.youtube.com/embed/HXV3zeQKqGY', 1, 1, 4, '2026-05-13 14:54:58'),
(11, 'ciberseguridad', '🛡', 'Seguridad', 'Ciberseguridad', 'Ethical Hacking y protección digital', 'red', 'Básico → OSCP', '40 – 200 h', 220000.00, 'La ciberseguridad es el conjunto de tecnologías, procesos y prácticas diseñadas para proteger redes, sistemas, programas y datos de ataques, daños o accesos no autorizados. Abarca desde la seguridad perimetral hasta el hacking ético, la respuesta a incidentes y el análisis forense digital.', 'El cibercrimen genera pérdidas superiores a $8 billones de dólares anuales globalmente. Los profesionales en ciberseguridad son los más demandados del sector TI con salarios hasta un 40% superiores al promedio tecnológico.', 'https://images.unsplash.com/photo-1614064641938-3bbee52942c7?w=800&q=80', 'https://www.youtube.com/embed/GHpL7WYEhI4', 1, 1, 5, '2026-05-13 14:54:58'),
(12, 'redes', '📡', 'Infraestructura', 'Redes y Conectividad', 'Infraestructura de comunicaciones', 'teal', 'Básico → CCNA/CompTIA', '30 – 120 h', 175000.00, 'Las redes de computadoras son sistemas de comunicación que permiten el intercambio de datos entre dispositivos. Incluyen desde redes locales (LAN) hasta redes globales (WAN/Internet), empleando protocolos como TCP/IP, modelos OSI y dispositivos como routers, switches y firewalls.', 'Toda organización moderna depende de su red para operar. Un ingeniero de redes diseña, implementa y asegura la infraestructura que conecta empleados, servidores, la nube y el mundo exterior.', 'https://images.unsplash.com/photo-1558494949-ef010cbdcc31?w=800&q=80', 'https://www.youtube.com/embed/qiQR5rTSshw', 1, 0, 6, '2026-05-13 14:54:58'),
(13, 'iot', '📡', 'Innovación', 'IoT', 'Internet de las Cosas', 'orange', 'Básico → Avanzado', '30 – 100 h', 195000.00, 'El Internet de las Cosas (IoT) es la interconexión de objetos físicos (sensores, actuadores, electrodomésticos, vehículos) a internet para recopilar, intercambiar y procesar datos en tiempo real, creando sistemas inteligentes que automatizan entornos domésticos, industriales y urbanos.', 'Para 2030 habrá más de 75 mil millones de dispositivos IoT conectados. Sectores como salud, manufactura, agricultura y ciudades inteligentes dependerán de profesionales capaces de diseñar ecosistemas IoT completos.', 'https://images.unsplash.com/photo-1518770660439-4636190af475?w=800&q=80', 'https://www.youtube.com/embed/LlhmzVL5bm8', 1, 0, 7, '2026-05-13 14:54:58'),
(14, 'ia-automatizacion', '🤖', 'IA & Datos', 'Automatización e IA', 'Machine Learning y procesos inteligentes', 'indigo', 'Intermedio → Experto', '40 – 180 h', 280000.00, 'La Inteligencia Artificial y la Automatización permiten que los sistemas aprendan de los datos, tomen decisiones y ejecuten tareas sin intervención humana constante. Incluye Machine Learning, Deep Learning, procesamiento de lenguaje natural (NLP), visión por computadora y automatización de procesos robóticos (RPA).', 'La IA reemplazará el 30% de las tareas rutinarias para 2030, pero creará el doble de empleos especializados. Los ingenieros de IA son los profesionales con mayor crecimiento salarial del siglo XXI.', 'https://images.unsplash.com/photo-1677442136019-21780ecad995?w=800&q=80', 'https://www.youtube.com/embed/aircAruvnKk', 1, 1, 8, '2026-05-13 14:54:58'),
(15, 'ciencia-datos', '📊', 'IA & Datos', 'Ciencia de Datos', 'Analytics, BI y estadística aplicada', 'cyan', 'Básico → Científico de Datos', '35 – 150 h', 210000.00, 'La Ciencia de Datos es la disciplina interdisciplinaria que combina estadística, programación, visualización y conocimiento del dominio para extraer insights valiosos de grandes volúmenes de datos. Emplea el ciclo completo: recopilación, limpieza, análisis exploratorio, modelado predictivo y comunicación de resultados.', 'Las empresas que adoptan decisiones basadas en datos tienen un 23% más de rentabilidad. El científico de datos es uno de los empleos más demandados y mejor pagados de la última década.', 'https://images.unsplash.com/photo-1551288049-bebda4e38f71?w=800&q=80', 'https://www.youtube.com/embed/X3paOmcrTjQ', 1, 1, 9, '2026-05-13 14:54:58'),
(16, 'cloud', '☁️', 'Infraestructura', 'Cloud Computing', 'AWS, Azure, GCP y arquitecturas cloud', 'sky', 'Básico → Architect', '30 – 130 h', 235000.00, 'La computación en la nube es el modelo de entrega de recursos de TI (cómputo, almacenamiento, red, bases de datos, IA) a través de internet bajo demanda. Los tres grandes proveedores —AWS, Microsoft Azure y Google Cloud Platform— ofrecen más de 200 servicios cada uno para escalar aplicaciones globalmente.', 'El 94% de las empresas globales usa algún servicio cloud. La migración a la nube reduce costos de infraestructura hasta un 40% y permite escalar de 10 a 10 millones de usuarios sin cambiar el código.', 'https://images.unsplash.com/photo-1544197150-b99a580bb7a8?w=800&q=80', 'https://www.youtube.com/embed/M988_fsOSWo', 1, 1, 10, '2026-05-13 14:54:58'),
(17, 'estructuras-datos', '🌲', 'CS Fundamentals', 'Estructuras de Datos', 'Algoritmos y eficiencia computacional', 'emerald', 'Intermedio → Avanzado', '25 – 90 h', 155000.00, 'Las estructuras de datos son formas organizadas de almacenar y gestionar datos en memoria para facilitar operaciones eficientes. Su correcta elección determina el rendimiento de cualquier sistema, siendo la base para entrevistas técnicas en FAANG y el desarrollo de sistemas de alto rendimiento.', 'Google, Amazon y Meta basan sus entrevistas técnicas completamente en estructuras de datos y algoritmos. Un ingeniero que las domina resuelve problemas 10x más eficientemente.', 'https://images.unsplash.com/photo-1555949963-aa79dcee981c?w=800&q=80', 'https://www.youtube.com/embed/bum_19loj9A', 1, 0, 11, '2026-05-13 14:54:58'),
(18, 'sistemas-operativos', '⚙️', 'CS Fundamentals', 'Sistemas Operativos', 'Gestión de procesos, memoria y concurrencia', 'slate', 'Intermedio → Avanzado', '25 – 80 h', 145000.00, 'Un sistema operativo (SO) es el software fundamental que gestiona los recursos de hardware de un computador (CPU, memoria, disco, red) y proporciona servicios a las aplicaciones. Estudiar SO implica comprender cómo funcionan procesos, hilos, scheduling, memoria virtual, sistemas de archivos y sincronización.', 'Comprender los SO permite escribir aplicaciones más eficientes, diagnosticar problemas de rendimiento, administrar servidores y desarrollar software de bajo nivel. Es esencial para DevOps, programadores de sistemas y arquitectos.', 'https://images.unsplash.com/photo-1518770660439-4636190af475?w=800&q=80', 'https://www.youtube.com/embed/26QPDBe-NB8', 1, 0, 12, '2026-05-13 14:54:58'),
(19, 'linux', '🐧', 'Infraestructura', 'Linux', 'Administración de sistemas Unix/Linux', 'amber', 'Básico → SysAdmin', '20 – 100 h', 165000.00, 'Linux es el sistema operativo más usado del mundo en servidores, supercomputadoras, dispositivos IoT y la nube. Aprender Linux significa dominar la línea de comandos, administrar servidores, automatizar tareas con Bash y gestionar la infraestructura que soporta el 90% de internet.', 'El 96.4% de los servidores web del mundo corren Linux. Cualquier carrera en DevOps, Cloud, Seguridad o Desarrollo Backend requiere un dominio profundo de este sistema.', 'https://images.unsplash.com/photo-1518770660439-4636190af475?w=800&q=80', 'https://www.youtube.com/embed/sWbUDq4S6Y8', 1, 0, 13, '2026-05-13 14:54:58'),
(20, 'ing-software', '🏗', 'Desarrollo', 'Ingeniería de Software', 'Arquitectura, calidad y proceso de desarrollo', 'violet', 'Intermedio → Arquitecto', '30 – 120 h', 200000.00, 'La Ingeniería de Software es la disciplina que aplica principios de ingeniería al diseño, desarrollo, prueba y mantenimiento de software. Abarca todo el ciclo de vida del software (SDLC), metodologías ágiles, arquitecturas de software, aseguramiento de calidad y gestión de proyectos tecnológicos.', 'El 70% de los proyectos de software fallan por mala gestión y diseño deficiente. Un ingeniero de software formado construye sistemas que escalan, se mantienen y entregan valor real al negocio.', 'https://images.unsplash.com/photo-1467232004584-a241de8bcf5d?w=800&q=80', 'https://www.youtube.com/embed/Y-LgmR302kc', 1, 1, 14, '2026-05-13 14:54:58'),
(21, 'transaccionales', '💳', 'Sistemas', 'Sistemas Transaccionales', 'Procesamiento de transacciones críticas', 'green', 'Avanzado', '30 – 100 h', 230000.00, 'Los sistemas transaccionales (OLTP) son plataformas diseñadas para gestionar operaciones de negocio en tiempo real con altísima disponibilidad, consistencia y durabilidad. Son el núcleo de la banca digital, e-commerce, reservas y cualquier sistema que no puede permitirse perder datos.', 'Un banco procesa millones de transacciones diariamente. Un fallo de 1 hora puede costar decenas de millones. Diseñar sistemas transaccionales robustos es una de las habilidades más valoradas de la industria.', 'https://images.unsplash.com/photo-1563013544-824ae1b704d3?w=800&q=80', 'https://www.youtube.com/embed/5ZjhNTM8XU8', 1, 0, 15, '2026-05-13 14:55:22'),
(22, 'matematicas', '📐', 'Ciencias', 'Matemáticas para TI', 'Fundamentos matemáticos del cómputo', 'rose', 'Básico → Avanzado', '20 – 120 h', 130000.00, 'Las matemáticas son el lenguaje universal de la informática. Álgebra lineal, cálculo, estadística, matemáticas discretas y teoría de grafos son la base de la IA, la criptografía, los algoritmos y los gráficos por computadora.', 'Álgebra lineal es la base de deep learning. La estadística sustenta la ciencia de datos. La criptografía nace de la teoría de números. Matemáticas = poder para resolver problemas que el resto no puede.', 'https://images.unsplash.com/photo-1509228468518-180dd4864904?w=800&q=80', 'https://www.youtube.com/embed/fNk_zzaMoSs', 1, 0, 16, '2026-05-13 14:55:22'),
(23, 'videojuegos', '🎮', 'Creativo', 'Desarrollo de Videojuegos', 'Unity, Unreal y game design', 'pink', 'Básico → Pro', '40 – 160 h', 210000.00, 'El desarrollo de videojuegos combina programación, arte, diseño de niveles, música y narrativa para crear experiencias interactivas. Las industrias de videojuegos y gamificación empresarial son mercados de más de $200 mil millones anuales.', 'Los videojuegos son la industria de entretenimiento más grande del planeta, superando al cine y la música juntos. La gamificación empresarial, el metaverso y la realidad virtual abren mercados adicionales enormes.', 'https://images.unsplash.com/photo-1538481199705-c710c4e965fc?w=800&q=80', 'https://www.youtube.com/embed/gB1F9G0JXOo', 1, 0, 17, '2026-05-13 14:55:22'),
(24, 'mobile', '📱', 'Desarrollo', 'Desarrollo Móvil', 'Android, iOS y multiplataforma', 'blue', 'Básico → Senior', '40 – 150 h', 220000.00, 'El desarrollo móvil abarca la creación de aplicaciones para dispositivos Android e iOS. Puede ser nativo (Kotlin/Java para Android, Swift para iOS), multiplataforma (Flutter, React Native, Xamarin) o híbrido (Ionic, Capacitor). El mercado móvil supera los $500 mil millones anuales.', 'El 60% del tráfico de internet viene de dispositivos móviles. Una app bien diseñada puede alcanzar millones de usuarios en días. La demanda de desarrolladores móviles supera la oferta en Latinoamérica.', 'https://images.unsplash.com/photo-1512941937669-90a1b58e7e9c?w=800&q=80', 'https://www.youtube.com/embed/fis26HvvDII', 1, 0, 18, '2026-05-13 14:55:22'),
(25, 'teoria-computacion', '🧮', 'CS Fundamentals', 'Teoría de la Computación', 'Autómatas, lenguajes formales y computabilidad', 'slate', 'Avanzado', '20 – 80 h', 135000.00, 'La teoría de la computación estudia los fundamentos matemáticos de los computadores: qué problemas pueden resolverse algorítmicamente, qué tan eficientemente, y cuáles son los límites intrínsecos de la computación. Incluye autómatas, lenguajes formales, computabilidad y complejidad computacional.', 'Sin teoría de la computación no existirían los compiladores, los algoritmos de compresión, la criptografía, ni los sistemas de IA actuales. Es la base de toda la informática teórica y aplicada.', 'https://images.unsplash.com/photo-1635070041078-e363dbe005cb?w=800&q=80', 'https://www.youtube.com/embed/9syvZr-9xwk', 1, 0, 19, '2026-05-13 14:55:22'),
(26, 'plataformas', '🏢', 'Desarrollo', 'Desarrollo en Plataformas', 'Shopify, Salesforce, SAP, WordPress', 'gold', 'Básico → Certified', '20 – 100 h', 175000.00, 'El desarrollo basado en plataformas consiste en personalizar, extender y construir sobre plataformas existentes de alto valor empresarial: CMS como WordPress, e-commerce como Shopify, CRM como Salesforce, ERP como SAP, y low-code como Power Platform o Appian.', 'El 43% de todos los sitios web del mundo usan WordPress. Salesforce tiene más de 150,000 clientes empresariales. Un desarrollador certificado en estas plataformas tiene acceso inmediato a proyectos de alto valor.', 'https://images.unsplash.com/photo-1460925895917-afdab827c52f?w=800&q=80', 'https://www.youtube.com/embed/jGBnCMWEOf8', 1, 0, 20, '2026-05-13 14:55:22'),
(27, 'fisica-computacional', '⚛️', 'Ciencias', 'Física Computacional', 'Simulación y modelado numérico', 'cyan', 'Avanzado', '30 – 100 h', 170000.00, 'La física computacional aplica métodos numéricos y algoritmos para resolver problemas físicos que no tienen solución analítica. Incluye simulación de sistemas dinámicos, mecánica cuántica computacional, dinámica de fluidos, electromagnetismo numérico y modelado de partículas.', 'La física computacional impulsa los avances en meteorología, diseño aeroespacial, semiconductores, energía nuclear y biotecnología. Es esencial para ingenieros que trabajan en simulación científica de alto rendimiento.', 'https://images.unsplash.com/photo-1635070041078-e363dbe005cb?w=800&q=80', 'https://www.youtube.com/embed/4i7GrHHhvFk', 1, 0, 21, '2026-05-13 14:55:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio_adquisiciones`
--

CREATE TABLE `servicio_adquisiciones` (
  `id` int(10) UNSIGNED NOT NULL,
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `servicio_id` int(10) UNSIGNED NOT NULL,
  `plan_id` int(10) UNSIGNED DEFAULT NULL,
  `estado` enum('pendiente','pagado','cancelado','reembolsado') DEFAULT 'pendiente',
  `monto` decimal(12,2) NOT NULL,
  `metodo_pago` varchar(60) DEFAULT NULL,
  `referencia` varchar(100) DEFAULT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio_calificaciones`
--

CREATE TABLE `servicio_calificaciones` (
  `id` int(10) UNSIGNED NOT NULL,
  `servicio_id` int(10) UNSIGNED NOT NULL,
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `estrellas` tinyint(3) UNSIGNED NOT NULL COMMENT '1-5',
  `comentario` text DEFAULT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio_conceptos`
--

CREATE TABLE `servicio_conceptos` (
  `id` int(10) UNSIGNED NOT NULL,
  `servicio_id` int(10) UNSIGNED NOT NULL,
  `icono` varchar(20) DEFAULT '?',
  `titulo` varchar(150) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `orden` tinyint(3) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `servicio_conceptos`
--

INSERT INTO `servicio_conceptos` (`id`, `servicio_id`, `icono`, `titulo`, `descripcion`, `orden`) VALUES
(7, 6, '🧮', 'Algoritmos', 'Secuencia lógica de pasos para resolver un problema. Toda solución de software nace de un algoritmo bien definido.', 1),
(8, 6, '📝', 'Lenguajes de Programación', 'Herramientas formales para escribir instrucciones: Python, JavaScript, Java, C++, C#, Go, Rust, entre muchos otros.', 2),
(9, 6, '🔄', 'Tipos de Programación', 'Imperativa, orientada a objetos, funcional, lógica y reactiva. Cada paradigma aborda los problemas desde una perspectiva distinta.', 3),
(10, 6, '🐛', 'Depuración', 'Proceso de identificar, analizar y corregir errores (bugs) en el código para garantizar el correcto funcionamiento.', 4),
(11, 6, '📦', 'Librerías y Frameworks', 'Conjuntos de código reutilizable que aceleran el desarrollo evitando reinventar la rueda.', 5),
(12, 6, '🔧', 'Control de Versiones', 'Herramientas como Git que permiten rastrear cambios, colaborar y revertir código.', 6),
(13, 8, '🖼', 'HTML5', 'Lenguaje de marcado que estructura el contenido de las páginas web. Base de todo sitio en internet.', 1),
(14, 8, '🎨', 'CSS3', 'Hojas de estilo que controlan el diseño, colores, animaciones y responsive design.', 2),
(15, 8, '⚡', 'JavaScript', 'Lenguaje de scripting que da interactividad al frontend y potencia el backend con Node.js.', 3),
(16, 8, '⚙️', 'PHP / Node', 'Lenguajes de servidor que procesan peticiones, gestionan bases de datos y entregan contenido dinámico.', 4),
(17, 8, '🔗', 'APIs REST', 'Interfaces que permiten la comunicación entre frontend y backend mediante HTTP y JSON.', 5),
(18, 8, '📱', 'Responsive', 'Técnicas para adaptar el diseño a móviles, tablets y escritorios automáticamente.', 6),
(19, 9, '📦', 'Encapsulamiento', 'Ocultar la implementación interna de un objeto y exponer solo lo necesario mediante modificadores de acceso.', 1),
(20, 9, '🧬', 'Herencia', 'Mecanismo que permite que una clase hija herede atributos y métodos de una clase padre, promoviendo reutilización.', 2),
(21, 9, '🔄', 'Polimorfismo', 'Capacidad de un objeto de tomar múltiples formas. Un mismo método puede comportarse diferente según la clase que lo implemente.', 3),
(22, 9, '🎭', 'Abstracción', 'Representar solo las características esenciales de un objeto, ignorando los detalles irrelevantes.', 4),
(23, 9, '🏛', 'Clases e Interfaces', 'Plantillas para crear objetos y contratos que definen comportamientos obligatorios.', 5),
(24, 9, '🗺', 'Patrones GoF', '23 patrones de diseño clásicos: Singleton, Factory, Observer, Strategy y más.', 6),
(25, 10, '📊', 'Modelo Relacional', 'Organiza datos en tablas con filas y columnas interrelacionadas mediante claves primarias y foráneas.', 1),
(26, 10, '🔍', 'SQL', 'Structured Query Language: lenguaje estándar para consultar, insertar, actualizar y eliminar datos relacionales.', 2),
(27, 10, '📄', 'NoSQL', 'Bases de datos no relacionales: documentos (MongoDB), clave-valor (Redis), grafos (Neo4j), columnar (Cassandra).', 3),
(28, 10, '🗺', 'Normalización', 'Proceso de organizar una base de datos para reducir redundancia y mejorar la integridad (1FN, 2FN, 3FN, BCNF).', 4),
(29, 10, '⚡', 'Índices y rendimiento', 'Estructuras que aceleran las consultas. Incluye índices B-Tree, hash y full-text.', 5),
(30, 10, '🔒', 'Transacciones ACID', 'Atomicidad, Consistencia, Aislamiento y Durabilidad: propiedades que garantizan integridad en operaciones críticas.', 6),
(31, 11, '🔺', 'Modelo CIA', 'Confidencialidad, Integridad y Disponibilidad: los tres pilares fundamentales de la seguridad de la información.', 1),
(32, 11, '🔴', 'Ethical Hacking', 'Simulación controlada de ataques reales para identificar vulnerabilidades antes que los atacantes maliciosos.', 2),
(33, 11, '🕵', 'Análisis Forense', 'Investigación de incidentes de seguridad mediante recolección y análisis de evidencia digital.', 3),
(34, 11, '🛡', 'Blue Team / Red Team', 'Equipos defensivos (Blue) vs ofensivos (Red) que colaboran para fortalecer la postura de seguridad.', 4),
(35, 11, '🔐', 'Criptografía', 'Ciencia de proteger información mediante cifrado simétrico, asimétrico, hashing y firmas digitales.', 5),
(36, 11, '🌐', 'OWASP Top 10', 'Lista de las 10 vulnerabilidades web más críticas: SQLi, XSS, CSRF, SSRF, IDOR, entre otras.', 6),
(37, 12, '📡', 'Modelo OSI', '7 capas que definen cómo los datos viajan de una aplicación a otra a través de la red.', 1),
(38, 12, '🔗', 'TCP/IP', 'Suite de protocolos estándar de internet: IP, TCP, UDP, ICMP, DNS, HTTP, SMTP, FTP.', 2),
(39, 12, '🔀', 'Ruteo', 'Proceso de reenviar paquetes entre redes usando protocolos como OSPF, BGP, RIP, EIGRP.', 3),
(40, 12, '🔒', 'VPN', 'Redes privadas virtuales que cifran el tráfico sobre internet para conexiones seguras.', 4),
(41, 12, '🏗', 'VLAN', 'Segmentación lógica de una red física en múltiples redes virtuales aisladas.', 5),
(42, 12, '☁️', 'SDN', 'Software Defined Networking: control centralizado de la infraestructura de red mediante software.', 6),
(43, 13, '🔌', 'Microcontroladores', 'Arduino, ESP32, Raspberry Pi: cerebros de los dispositivos IoT que procesan señales y ejecutan código.', 1),
(44, 13, '📶', 'Protocolos IoT', 'MQTT, CoAP, AMQP, HTTP/S: protocolos ligeros diseñados para comunicación eficiente entre dispositivos.', 2),
(45, 13, '☁️', 'Cloud IoT', 'Plataformas como AWS IoT, Azure IoT Hub y Google Cloud IoT para gestionar millones de dispositivos.', 3),
(46, 13, '🔒', 'Seguridad IoT', 'Desafíos únicos: autenticación de dispositivos, cifrado de datos en tránsito y en reposo, actualizaciones OTA.', 4),
(47, 13, '📊', 'Edge Computing', 'Procesamiento de datos en el borde de la red (near-device) para reducir latencia y ancho de banda.', 5),
(48, 13, '🏭', 'IIoT', 'Industrial Internet of Things: IoT aplicado a manufactura, automatización y control de procesos industriales.', 6),
(49, 14, '🧠', 'Machine Learning', 'Algoritmos que aprenden patrones de datos: regresión, clasificación, clustering, reducción de dimensionalidad.', 1),
(50, 14, '🔗', 'Deep Learning', 'Redes neuronales profundas (CNN, RNN, Transformer) para visión, lenguaje y audio.', 2),
(51, 14, '💬', 'NLP', 'Procesamiento de lenguaje natural: análisis de sentimientos, traducción automática, chatbots, LLMs.', 3),
(52, 14, '👁', 'Visión Artificial', 'Reconocimiento de imágenes, detección de objetos (YOLO, R-CNN), segmentación semántica.', 4),
(53, 14, '🤖', 'RPA', 'Automatización robótica de procesos: UiPath, Automation Anywhere, n8n, Make.', 5),
(54, 14, '⚡', 'MLOps', 'Operacionalización de modelos ML: CI/CD para modelos, monitoreo en producción, reentrenamiento.', 6),
(55, 15, '📈', 'EDA', 'Análisis Exploratorio de Datos: estadísticas descriptivas, distribuciones, correlaciones y detección de outliers.', 1),
(56, 15, '🧹', 'Data Wrangling', 'Limpieza, transformación e integración de datos de múltiples fuentes para análisis.', 2),
(57, 15, '📉', 'Estadística', 'Probabilidad, inferencia estadística, pruebas de hipótesis, intervalos de confianza y regresiones.', 3),
(58, 15, '📊', 'Visualización', 'Tableau, Power BI, Matplotlib, Seaborn, Plotly: comunicar insights visualmente.', 4),
(59, 15, '🏭', 'Ingeniería de Datos', 'ETL/ELT, pipelines de datos, Data Lake, Data Warehouse, Apache Spark, Kafka.', 5),
(60, 15, '🎯', 'Business Intelligence', 'KPIs, dashboards ejecutivos, métricas de negocio y análisis de cohortes.', 6),
(61, 16, '🏗', 'IaaS/PaaS/SaaS', 'Modelos de servicio: Infraestructura, Plataforma y Software como servicio.', 1),
(62, 16, '📦', 'Contenedores', 'Docker y Kubernetes: empaquetado y orquestación de aplicaciones en contenedores portables.', 2),
(63, 16, '⚡', 'Serverless', 'AWS Lambda, Azure Functions, GCP Cloud Functions: código sin gestionar servidores.', 3),
(64, 16, '🌐', 'CDN', 'Content Delivery Network: distribución global de contenido para baja latencia.', 4),
(65, 16, '🔒', 'Cloud Security', 'IAM, cifrado en reposo y tránsito, compliance (SOC2, ISO27001, HIPAA), Zero Trust.', 5),
(66, 16, '💰', 'FinOps', 'Optimización de costos cloud: Reserved Instances, Spot Instances, rightsizing.', 6),
(67, 17, '📋', 'Arrays y Listas', 'Estructuras lineales: arrays estáticos/dinámicos, listas enlazadas simples, dobles y circulares.', 1),
(68, 17, '📚', 'Pilas y Colas', 'LIFO (Stack) y FIFO (Queue): fundamentales para parsing, BFS, DFS, gestión de tareas.', 2),
(69, 17, '🌲', 'Árboles', 'Binary Tree, BST, AVL, Red-Black Tree, Segment Tree, Fenwick Tree, Trie.', 3),
(70, 17, '🔗', 'Grafos', 'BFS, DFS, Dijkstra, Bellman-Ford, Floyd-Warshall: grafos con representación lista/matriz.', 4),
(71, 17, '#️⃣', 'Hash Tables', 'Función de hash, manejo de colisiones (chaining, open addressing), complejidad O(1).', 5),
(72, 17, '⚡', 'Heaps', 'Min-Heap, Max-Heap, Priority Queue: fundamentales para algoritmos greedy y Dijkstra.', 6),
(73, 18, '⚙️', 'Procesos e Hilos', 'Gestión del ciclo de vida de procesos, hilos (threads), estados y context switching.', 1),
(74, 18, '🗓', 'Scheduling', 'Algoritmos de planificación de CPU: FCFS, SJF, Round Robin, Priority, Multilevel Queue.', 2),
(75, 18, '💾', 'Gestión de Memoria', 'Paginación, segmentación, memoria virtual, TLB, page replacement (LRU, FIFO, OPT).', 3),
(76, 18, '📁', 'Sistema de Archivos', 'FAT32, NTFS, ext4, ZFS: estructura, inodos, journaling y gestión del almacenamiento.', 4),
(77, 18, '🔒', 'Sincronización', 'Mutex, semáforos, monitores, deadlocks: condiciones, prevención y recuperación.', 5),
(78, 18, '🌐', 'I/O y Drivers', 'Subsistema de E/S, DMA, IRQ, drivers de dispositivos y gestión de periféricos.', 6),
(79, 19, '🖥', 'Shell y CLI', 'Bash, Zsh: interfaz de línea de comandos para gestionar el sistema, automatizar y scripting.', 1),
(80, 19, '📁', 'Sistema de Archivos', 'Jerarquía FHS: /etc, /var, /home, /proc, /sys. Permisos, propietarios y ACLs.', 2),
(81, 19, '👤', 'Gestión de Usuarios', 'Creación, modificación, grupos, sudo, PAM y políticas de seguridad.', 3),
(82, 19, '🔧', 'Servicios y Daemons', 'systemd, service management, logs con journald, cron y at para tareas programadas.', 4),
(83, 19, '🌐', 'Redes en Linux', 'ip, ss, netstat, iptables, nftables, SSH, rsync, SCP.', 5),
(84, 19, '📦', 'Gestión de Paquetes', 'apt/dpkg (Debian/Ubuntu), dnf/rpm (RHEL/Fedora), pacman (Arch), compilación desde fuente.', 6),
(85, 20, '🔄', 'SDLC', 'Ciclo de vida del software: planificación, análisis, diseño, implementación, pruebas, despliegue y mantenimiento.', 1),
(86, 20, '🏃', 'Ágil / Scrum', 'Metodología iterativa con sprints, daily standups, product backlog y retrospectivas.', 2),
(87, 20, '🏛', 'Arquitecturas', 'Monolítica, microservicios, event-driven, hexagonal, CQRS, serverless y sus trade-offs.', 3),
(88, 20, '✅', 'QA y Testing', 'Unit testing, integration testing, E2E, TDD, BDD, performance testing y cobertura de código.', 4),
(89, 20, '🔄', 'DevOps', 'Cultura, prácticas y herramientas que unifican desarrollo y operaciones para entrega continua.', 5),
(90, 20, '📐', 'Clean Architecture', 'Principios SOLID, Clean Code, DRY, KISS, YAGNI aplicados a sistemas reales.', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio_links`
--

CREATE TABLE `servicio_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `servicio_id` int(10) UNSIGNED NOT NULL,
  `icono` varchar(20) DEFAULT '?',
  `titulo` varchar(200) NOT NULL,
  `url` varchar(400) NOT NULL,
  `orden` tinyint(3) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `servicio_links`
--

INSERT INTO `servicio_links` (`id`, `servicio_id`, `icono`, `titulo`, `url`, `orden`) VALUES
(6, 6, '🐍', 'Python Official Docs', 'https://docs.python.org', 1),
(7, 6, '📘', 'MDN JavaScript', 'https://developer.mozilla.org/es/docs/Web/JavaScript', 2),
(8, 6, '📚', 'freeCodeCamp', 'https://www.freecodecamp.org', 3),
(9, 6, '🎓', 'The Odin Project', 'https://www.theodinproject.com', 4),
(10, 6, '⚡', 'LeetCode (Práctica)', 'https://leetcode.com', 5),
(11, 8, '🌐', 'W3Schools', 'https://www.w3schools.com', 1),
(12, 8, '🔥', 'CSS Tricks', 'https://css-tricks.com', 2),
(13, 8, '⚛️', 'React Docs', 'https://react.dev', 3),
(14, 8, '📦', 'Node.js Docs', 'https://nodejs.org/docs', 4),
(15, 8, '🚀', 'Vercel', 'https://vercel.com/docs', 5),
(16, 9, '📘', 'SOLID Principles', 'https://www.digitalocean.com/community/conceptual-articles/s-o-l-i-d-the-first-five-principles-of-object-oriented-design', 1),
(17, 9, '🏛', 'Refactoring Guru', 'https://refactoring.guru/es/design-patterns', 2),
(18, 9, '📚', 'Gang of Four Patterns', 'https://en.wikipedia.org/wiki/Design_Patterns', 3),
(19, 10, '🐬', 'MySQL Docs', 'https://dev.mysql.com/doc/', 1),
(20, 10, '🐘', 'PostgreSQL Docs', 'https://www.postgresql.org/docs/', 2),
(21, 10, '🍃', 'MongoDB Docs', 'https://www.mongodb.com/docs/', 3),
(22, 10, '📚', 'SQLZoo (Práctica)', 'https://sqlzoo.net', 4),
(23, 11, '🔴', 'HackTheBox', 'https://www.hackthebox.com', 1),
(24, 11, '🟢', 'TryHackMe', 'https://tryhackme.com', 2),
(25, 11, '📋', 'OWASP', 'https://owasp.org', 3),
(26, 11, '🔒', 'NIST Cybersec', 'https://www.nist.gov/cyberframework', 4),
(27, 11, '🎓', 'CEH Info', 'https://www.eccouncil.org/programs/certified-ethical-hacker-ceh/', 5),
(28, 12, '🔵', 'Cisco CCNA', 'https://www.cisco.com/c/en/us/training-events/training-certifications/certifications/associate/ccna.html', 1),
(29, 12, '📡', 'CompTIA Network+', 'https://www.comptia.org/certifications/network', 2),
(30, 12, '🛠', 'Packet Tracer', 'https://www.netacad.com/courses/packet-tracer', 3),
(31, 13, '🔌', 'Arduino Docs', 'https://docs.arduino.cc', 1),
(32, 13, '📡', 'MQTT.org', 'https://mqtt.org', 2),
(33, 13, '☁️', 'AWS IoT Core', 'https://aws.amazon.com/iot-core/', 3),
(34, 14, '🤗', 'Hugging Face', 'https://huggingface.co', 1),
(35, 14, '🔥', 'PyTorch Docs', 'https://pytorch.org/docs', 2),
(36, 14, '📊', 'scikit-learn', 'https://scikit-learn.org', 3),
(37, 14, '⚡', 'LangChain Docs', 'https://python.langchain.com', 4),
(38, 15, '📊', 'Kaggle', 'https://www.kaggle.com', 1),
(39, 15, '📈', 'Towards Data Science', 'https://towardsdatascience.com', 2),
(40, 15, '⚡', 'Apache Spark', 'https://spark.apache.org/docs', 3),
(41, 16, '☁️', 'AWS Training', 'https://aws.amazon.com/training/', 1),
(42, 16, '🔵', 'Microsoft Learn', 'https://learn.microsoft.com/azure', 2),
(43, 16, '🔴', 'Google Cloud Learn', 'https://cloud.google.com/learn', 3),
(44, 16, '🐳', 'Docker Docs', 'https://docs.docker.com', 4),
(45, 17, '⚡', 'LeetCode', 'https://leetcode.com', 1),
(46, 17, '🎓', 'VisuAlgo', 'https://visualgo.net', 2),
(47, 17, '📚', 'CP-Algorithms', 'https://cp-algorithms.com', 3),
(48, 18, '🐧', 'Linux Kernel Docs', 'https://www.kernel.org/doc/', 1),
(49, 18, '📚', 'OSTep (Free Book)', 'https://pages.cs.wisc.edu/~remzi/OSTEP/', 2),
(50, 18, '⚙️', 'Geeks for Geeks OS', 'https://www.geeksforgeeks.org/operating-systems/', 3),
(51, 19, '🐧', 'Linux Journey', 'https://linuxjourney.com', 1),
(52, 19, '📚', 'OverTheWire Bandit', 'https://overthewire.org/wargames/bandit/', 2),
(53, 19, '🔴', 'Red Hat Learn', 'https://www.redhat.com/en/services/training', 3),
(54, 20, '📘', 'Clean Code (Martin)', 'https://www.goodreads.com/book/show/3735293-clean-code', 1),
(55, 20, '🏃', 'Agile Manifesto', 'https://agilemanifesto.org', 2),
(56, 20, '🔄', 'DevOps Roadmap', 'https://roadmap.sh/devops', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio_parametros`
--

CREATE TABLE `servicio_parametros` (
  `id` int(10) UNSIGNED NOT NULL,
  `servicio_id` int(10) UNSIGNED NOT NULL,
  `parametro` varchar(300) NOT NULL,
  `orden` smallint(5) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `servicio_parametros`
--

INSERT INTO `servicio_parametros` (`id`, `servicio_id`, `parametro`, `orden`) VALUES
(16, 6, 'Programación desde cero (lógica y pseudocódigo)', 1),
(17, 6, 'Introducción a lenguajes: Python, JavaScript, C++', 2),
(18, 6, 'Variables, tipos de datos y operadores', 3),
(19, 6, 'Estructuras de control: condicionales y ciclos', 4),
(20, 6, 'Funciones, módulos y reutilización de código', 5),
(21, 6, 'Manejo de errores y excepciones', 6),
(22, 6, 'Programación orientada a objetos (POO)', 7),
(23, 6, 'Programación funcional y lambdas', 8),
(24, 6, 'Patrones de diseño GoF', 9),
(25, 6, 'Testing unitario y TDD', 10),
(26, 6, 'APIs REST y consumo de servicios externos', 11),
(27, 6, 'Gestión de dependencias (npm, pip, Maven)', 12),
(28, 6, 'Buenas prácticas y Clean Code', 13),
(29, 6, 'Automatización de tareas y scripting', 14),
(30, 6, 'Introducción a algoritmos y complejidad O(n)', 15),
(31, 8, 'HTML5 semántico y accesibilidad web (WCAG)', 1),
(32, 8, 'CSS3 avanzado: Flexbox, Grid, animaciones', 2),
(33, 8, 'JavaScript ES6+: promesas, async/await, fetch', 3),
(34, 8, 'Frameworks Frontend: React, Vue.js, Svelte', 4),
(35, 8, 'Backend con PHP 8 y Node.js / Express', 5),
(36, 8, 'Bases de datos para web: MySQL, PostgreSQL, MongoDB', 6),
(37, 8, 'Autenticación: JWT, OAuth2, sesiones', 7),
(38, 8, 'Despliegue: Netlify, Vercel, AWS, DigitalOcean', 8),
(39, 8, 'SEO técnico y optimización de rendimiento', 9),
(40, 8, 'PWA (Progressive Web Apps)', 10),
(41, 8, 'WebSockets y tiempo real', 11),
(42, 8, 'Testing con Jest, Cypress y PHPUnit', 12),
(43, 9, 'Clases, objetos, atributos y métodos', 1),
(44, 9, 'Constructores, destructores y sobrecarga', 2),
(45, 9, 'Modificadores de acceso: público, privado, protegido', 3),
(46, 9, 'Herencia simple y múltiple', 4),
(47, 9, 'Clases abstractas e interfaces', 5),
(48, 9, 'Polimorfismo: sobrescritura y sobrecarga', 6),
(49, 9, 'Composición vs herencia', 7),
(50, 9, 'Patrones creacionales: Singleton, Factory, Builder', 8),
(51, 9, 'Patrones estructurales: Adapter, Decorator, Facade', 9),
(52, 9, 'Patrones de comportamiento: Observer, Strategy, Command', 10),
(53, 9, 'UML: diagramas de clases y secuencia', 11),
(54, 9, 'Principios SOLID aplicados', 12),
(55, 10, 'Modelado entidad-relación (ER) y diagrama UML', 1),
(56, 10, 'SQL completo: DDL, DML, DCL, TCL', 2),
(57, 10, 'Joins: INNER, LEFT, RIGHT, FULL, CROSS', 3),
(58, 10, 'Subconsultas, CTEs y Window Functions', 4),
(59, 10, 'Stored procedures, funciones y triggers', 5),
(60, 10, 'Normalización hasta BCNF y desnormalización estratégica', 6),
(61, 10, 'Índices, planes de ejecución y EXPLAIN', 7),
(62, 10, 'Transacciones y control de concurrencia', 8),
(63, 10, 'Bases de datos distribuidas y replicación', 9),
(64, 10, 'MongoDB: CRUD, agregaciones, sharding', 10),
(65, 10, 'Redis: caché, pub/sub y estructuras de datos', 11),
(66, 10, 'Conexión desde PHP, Python, Node.js y Java', 12),
(67, 10, 'Backup, restauración y seguridad de datos', 13),
(68, 10, 'Migraciones con Flyway o Liquibase', 14),
(69, 11, 'Fundamentos de redes: TCP/IP, UDP, DNS, HTTP/S', 1),
(70, 11, 'Reconocimiento: OSINT, Nmap, Shodan, Recon-ng', 2),
(71, 11, 'Escaneo de vulnerabilidades: Nessus, OpenVAS', 3),
(72, 11, 'Explotación: Metasploit Framework, manual exploits', 4),
(73, 11, 'Post-explotación y pivoting', 5),
(74, 11, 'Ataques web: SQLi, XSS, CSRF, LFI/RFI, SSRF', 6),
(75, 11, 'Inyecciones y bypass de autenticación', 7),
(76, 11, 'Análisis de tráfico: Wireshark, tcpdump', 8),
(77, 11, 'Seguridad en Active Directory y Kerberoasting', 9),
(78, 11, 'Forense digital: Volatility, Autopsy', 10),
(79, 11, 'Criptografía aplicada y SSL/TLS', 11),
(80, 11, 'Hardening de sistemas Linux y Windows', 12),
(81, 11, 'CTFs y laboratorios: HackTheBox, TryHackMe', 13),
(82, 11, 'Certificaciones: CEH, eJPT, OSCP path', 14),
(83, 11, 'Normativas: ISO 27001, NIST, GDPR', 15),
(84, 12, 'Modelo OSI y TCP/IP: comparación y aplicación', 1),
(85, 12, 'Subnetting y cálculo de máscaras CIDR', 2),
(86, 12, 'Configuración de routers y switches Cisco/MikroTik', 3),
(87, 12, 'Protocolos de ruteo: OSPF, BGP, EIGRP', 4),
(88, 12, 'Switching: STP, VLANs, trunking, EtherChannel', 5),
(89, 12, 'Servicios de red: DHCP, DNS, NTP, SNMP', 6),
(90, 12, 'VPN: IPSec, SSL/TLS, WireGuard, OpenVPN', 7),
(91, 12, 'Firewalls: iptables, pfSense, Cisco ASA', 8),
(92, 12, 'Monitoreo: Zabbix, Nagios, PRTG, Grafana', 9),
(93, 12, 'Wireless: 802.11, seguridad WPA3, controladores', 10),
(94, 12, 'IPv6: direccionamiento y migración', 11),
(95, 12, 'QoS y gestión de ancho de banda', 12),
(96, 12, 'Packet Tracer y GNS3: laboratorios virtuales', 13),
(97, 12, 'Certificaciones: CCNA, CompTIA Network+', 14),
(98, 13, 'Introducción a Arduino y ESP32/ESP8266', 1),
(99, 13, 'Programación en C/C++ para microcontroladores', 2),
(100, 13, 'Sensores: temperatura, humedad, presión, distancia, gas', 3),
(101, 13, 'Actuadores: servomotores, relés, LEDs, pantallas', 4),
(102, 13, 'Protocolo MQTT: broker Mosquitto, publicar y suscribir', 5),
(103, 13, 'Comunicación: WiFi, Bluetooth, Zigbee, LoRaWAN, NB-IoT', 6),
(104, 13, 'Raspberry Pi: sistema operativo, GPIO, Python', 7),
(105, 13, 'Dashboard con Node-RED y Grafana', 8),
(106, 13, 'Integración con AWS IoT Core y Azure IoT Hub', 9),
(107, 13, 'Seguridad: TLS en MQTT, autenticación X.509', 10),
(108, 13, 'Edge computing con AWS Greengrass', 11),
(109, 13, 'Proyectos: estación meteorológica, automatización hogar', 12),
(110, 13, 'IIoT: PLC, SCADA y Modbus', 13),
(111, 14, 'Python para IA: NumPy, Pandas, Matplotlib, Seaborn', 1),
(112, 14, 'Machine Learning con scikit-learn', 2),
(113, 14, 'Regresión lineal, logística, árboles de decisión, SVM', 3),
(114, 14, 'Ensamblados: Random Forest, Gradient Boosting, XGBoost', 4),
(115, 14, 'Deep Learning con TensorFlow y PyTorch', 5),
(116, 14, 'Redes CNN para clasificación de imágenes', 6),
(117, 14, 'RNN y LSTM para series temporales y texto', 7),
(118, 14, 'Transformers y LLMs: fine-tuning de modelos', 8),
(119, 14, 'NLP: NLTK, spaCy, Hugging Face', 9),
(120, 14, 'Computer Vision: OpenCV, YOLO, Detectron2', 10),
(121, 14, 'MLOps: MLflow, DVC, Kubeflow', 11),
(122, 14, 'APIs de IA: OpenAI, Anthropic, Google Gemini', 12),
(123, 14, 'Automatización RPA: n8n, Make (Integromat)', 13),
(124, 14, 'LangChain y agentes autónomos', 14),
(125, 15, 'Python para datos: Pandas, NumPy, Jupyter', 1),
(126, 15, 'Estadística descriptiva e inferencial', 2),
(127, 15, 'Probabilidad y distribuciones estadísticas', 3),
(128, 15, 'Pruebas de hipótesis y A/B Testing', 4),
(129, 15, 'EDA con Matplotlib, Seaborn, Plotly', 5),
(130, 15, 'Feature engineering y selección de variables', 6),
(131, 15, 'SQL avanzado para análisis de datos', 7),
(132, 15, 'Power BI: modelado, DAX y dashboards', 8),
(133, 15, 'Tableau: visualizaciones interactivas', 9),
(134, 15, 'Apache Spark y PySpark para Big Data', 10),
(135, 15, 'Pipelines de datos: Airflow, Luigi', 11),
(136, 15, 'Google BigQuery y AWS Redshift', 12),
(137, 15, 'Storytelling con datos y presentaciones ejecutivas', 13),
(138, 15, 'Web scraping: BeautifulSoup, Scrapy, Selenium', 14),
(139, 16, 'Fundamentos de cloud: regiones, zonas, servicios core', 1),
(140, 16, 'AWS: EC2, S3, RDS, Lambda, VPC, IAM, CloudFront', 2),
(141, 16, 'Azure: VMs, Blob Storage, AKS, Functions, Entra ID', 3),
(142, 16, 'GCP: Compute Engine, GCS, BigQuery, GKE, Vertex AI', 4),
(143, 16, 'Docker: imágenes, contenedores, Dockerfile, Compose', 5),
(144, 16, 'Kubernetes: pods, servicios, deployments, Helm', 6),
(145, 16, 'Terraform: infraestructura como código (IaC)', 7),
(146, 16, 'CI/CD: GitHub Actions, GitLab CI, Jenkins, CodePipeline', 8),
(147, 16, 'Serverless: arquitecturas event-driven', 9),
(148, 16, 'Seguridad cloud: IAM avanzado, Security Hub, Defender', 10),
(149, 16, 'Arquitecturas de alta disponibilidad y disaster recovery', 11),
(150, 16, 'Microservicios y API Gateway', 12),
(151, 16, 'FinOps y optimización de costos', 13),
(152, 16, 'Certificaciones: AWS SAA, Azure AZ-900/AZ-104, GCP ACE', 14),
(153, 17, 'Complejidad temporal y espacial: notación Big-O', 1),
(154, 17, 'Arrays: búsqueda binaria, two pointers, sliding window', 2),
(155, 17, 'Listas enlazadas: inversión, ciclos, merge', 3),
(156, 17, 'Pilas: evaluación de expresiones, paréntesis', 4),
(157, 17, 'Colas: BFS, deques, colas de prioridad', 5),
(158, 17, 'Árboles binarios: traversals, altura, balanceo', 6),
(159, 17, 'BST: búsqueda, inserción, eliminación', 7),
(160, 17, 'Árboles AVL y Red-Black: rotaciones y rebalanceo', 8),
(161, 17, 'Grafos: BFS, DFS, componentes conexas', 9),
(162, 17, 'Grafos: Dijkstra, A*, Prim, Kruskal', 10),
(163, 17, 'Hash Tables: implementación desde cero', 11),
(164, 17, 'Dynamic Programming: memoización y tabulación', 12),
(165, 17, 'Divide y vencerás: QuickSort, MergeSort', 13),
(166, 17, 'Backtracking: N-Queens, Sudoku, permutaciones', 14),
(167, 17, 'Segment Trees y Fenwick Trees', 15),
(168, 18, 'Arquitectura de un SO: kernel monolítico, microkernel, híbrido', 1),
(169, 18, 'Llamadas al sistema (syscalls): fork, exec, wait, exit', 2),
(170, 18, 'Procesos: creación, terminación, comunicación (IPC)', 3),
(171, 18, 'Hilos: POSIX threads, sincronización y problemas clásicos', 4),
(172, 18, 'Scheduling: análisis cuantitativo de algoritmos', 5),
(173, 18, 'Memoria virtual: page tables, TLB, swapping', 6),
(174, 18, 'Page replacement: LRU, Clock, Working Set', 7),
(175, 18, 'Deadlock: condiciones de Coffman, grafos de asignación', 8),
(176, 18, 'Sistemas de archivos: inodos, bloques, directorios', 9),
(177, 18, 'Virtualización: hipervisores tipo 1 y tipo 2, KVM, VMware', 10),
(178, 18, 'Linux internals: /proc, /sys, kernel modules', 11),
(179, 19, 'Instalación y configuración de distribuciones: Ubuntu, CentOS, Debian', 1),
(180, 19, 'Comandos esenciales: ls, cd, cp, mv, rm, find, grep, awk, sed', 2),
(181, 19, 'Gestión de permisos: chmod, chown, umask, ACLs', 3),
(182, 19, 'Gestión de usuarios y grupos: useradd, passwd, sudoers', 4),
(183, 19, 'Gestión de procesos: ps, top, htop, kill, nice, cgroups', 5),
(184, 19, 'Sistema de archivos: mount, umount, df, du, lsblk, fdisk', 6),
(185, 19, 'Networking: ip, ss, curl, wget, iptables, firewalld', 7),
(186, 19, 'SSH: claves RSA/ED25519, configuración de servidor', 8),
(187, 19, 'Bash scripting: variables, loops, funciones, pipes', 9),
(188, 19, 'systemd: units, servicios, timers, journald', 10),
(189, 19, 'Cron y tareas programadas', 11),
(190, 19, 'Monitoring: top, sar, vmstat, iostat, Nagios, Zabbix', 12),
(191, 19, 'Seguridad: SELinux, AppArmor, auditd, fail2ban', 13),
(192, 19, 'LVM, RAID software, ZFS', 14),
(193, 19, 'Certificaciones: LPIC-1, CompTIA Linux+, RHCSA', 15),
(194, 20, 'SDLC: cascada, Agile, iterativo, espiral', 1),
(195, 20, 'Scrum: roles, ceremonias, artefactos', 2),
(196, 20, 'Kanban: tableros, WIP limits, métricas de flujo', 3),
(197, 20, 'Requisitos: casos de uso, historias de usuario, DDD', 4),
(198, 20, 'Diseño: UML, diagramas de secuencia y estado', 5),
(199, 20, 'Arquitecturas: Clean Architecture, Hexagonal, MVC, MVVM', 6),
(200, 20, 'Microservicios: diseño, comunicación y orquestación', 7),
(201, 20, 'Event-Driven: eventos de dominio, CQRS, Event Sourcing', 8),
(202, 20, 'Testing: pirámide de pruebas, TDD, BDD con Cucumber', 9),
(203, 20, 'DevOps: pipelines CI/CD, Infrastructure as Code', 10),
(204, 20, 'Gestión de deuda técnica y refactoring', 11),
(205, 20, 'Métricas de calidad: DORA, SLO/SLA, NPS técnico', 12),
(206, 20, 'Gestión de proyectos: PMI, planificación y estimación', 13),
(207, 20, 'Code Review y pair programming', 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio_planes`
--

CREATE TABLE `servicio_planes` (
  `id` int(10) UNSIGNED NOT NULL,
  `servicio_id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `precio` decimal(12,2) NOT NULL,
  `popular` tinyint(1) DEFAULT 0,
  `orden` tinyint(3) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `servicio_planes`
--

INSERT INTO `servicio_planes` (`id`, `servicio_id`, `nombre`, `precio`, `popular`, `orden`) VALUES
(4, 6, 'Básico', 59000.00, 0, 1),
(5, 6, 'Estándar', 129000.00, 1, 2),
(6, 6, 'Premium', 250000.00, 0, 3),
(7, 8, 'Básico', 75000.00, 0, 1),
(8, 8, 'Web Dev', 195000.00, 1, 2),
(9, 8, 'Full-Stack', 380000.00, 0, 3),
(10, 9, 'Básico', 60000.00, 0, 1),
(11, 9, 'Completo', 140000.00, 1, 2),
(12, 9, 'Enterprise', 260000.00, 0, 3),
(13, 10, 'SQL Básico', 70000.00, 0, 1),
(14, 10, 'BD Completo', 165000.00, 1, 2),
(15, 10, 'DBA Pro', 310000.00, 0, 3),
(16, 11, 'Fundamentos', 90000.00, 0, 1),
(17, 11, 'Pentester', 225000.00, 1, 2),
(18, 11, 'OSCP Path', 450000.00, 0, 3),
(19, 12, 'Básico', 80000.00, 0, 1),
(20, 12, 'Networking', 180000.00, 1, 2),
(21, 12, 'CCNA Path', 340000.00, 0, 3),
(22, 13, 'Maker', 85000.00, 0, 1),
(23, 13, 'Desarrollador', 190000.00, 1, 2),
(24, 13, 'Architect', 360000.00, 0, 3),
(25, 14, 'ML Básico', 120000.00, 0, 1),
(26, 14, 'Deep Learning', 290000.00, 1, 2),
(27, 14, 'IA Expert', 550000.00, 0, 3),
(28, 15, 'Analista', 95000.00, 0, 1),
(29, 15, 'Data Scientist', 215000.00, 1, 2),
(30, 15, 'Data Engineer', 420000.00, 0, 3),
(31, 16, 'Cloud Básico', 95000.00, 0, 1),
(32, 16, 'DevOps', 245000.00, 1, 2),
(33, 16, 'Architect', 490000.00, 0, 3),
(34, 17, 'Básico', 65000.00, 0, 1),
(35, 17, 'Intermedio', 155000.00, 1, 2),
(36, 17, 'FAANG Prep', 300000.00, 0, 3),
(37, 18, 'Teoría', 60000.00, 0, 1),
(38, 18, 'Práctica', 150000.00, 1, 2),
(39, 18, 'Avanzado', 270000.00, 0, 3),
(40, 19, 'Básico', 70000.00, 0, 1),
(41, 19, 'SysAdmin', 170000.00, 1, 2),
(42, 19, 'RHCSA Path', 320000.00, 0, 3),
(43, 20, 'Fundamentos', 85000.00, 0, 1),
(44, 20, 'Arquitecto', 205000.00, 1, 2),
(45, 20, 'Senior Dev', 400000.00, 0, 3),
(46, 21, 'Básico', 92000.00, 0, 1),
(47, 22, 'Básico', 52000.00, 0, 1),
(48, 23, 'Básico', 84000.00, 0, 1),
(49, 24, 'Básico', 88000.00, 0, 1),
(50, 25, 'Básico', 54000.00, 0, 1),
(51, 26, 'Básico', 70000.00, 0, 1),
(52, 27, 'Básico', 68000.00, 0, 1),
(53, 21, 'Estándar', 230000.00, 1, 2),
(54, 22, 'Estándar', 130000.00, 1, 2),
(55, 23, 'Estándar', 210000.00, 1, 2),
(56, 24, 'Estándar', 220000.00, 1, 2),
(57, 25, 'Estándar', 135000.00, 1, 2),
(58, 26, 'Estándar', 175000.00, 1, 2),
(59, 27, 'Estándar', 170000.00, 1, 2),
(60, 21, 'Premium', 460000.00, 0, 3),
(61, 22, 'Premium', 260000.00, 0, 3),
(62, 23, 'Premium', 420000.00, 0, 3),
(63, 24, 'Premium', 440000.00, 0, 3),
(64, 25, 'Premium', 270000.00, 0, 3),
(65, 26, 'Premium', 350000.00, 0, 3),
(66, 27, 'Premium', 340000.00, 0, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio_plan_items`
--

CREATE TABLE `servicio_plan_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `plan_id` int(10) UNSIGNED NOT NULL,
  `item` varchar(250) NOT NULL,
  `orden` tinyint(3) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `servicio_plan_items`
--

INSERT INTO `servicio_plan_items` (`id`, `plan_id`, `item`, `orden`) VALUES
(15, 5, 'HTML5 + CSS3', 1),
(16, 5, 'JS básico', 2),
(17, 5, 'Landing page estática', 3),
(18, 5, 'Soporte por chat', 4),
(19, 6, 'Frontend completo', 1),
(20, 6, 'React/Vue', 2),
(21, 6, 'Backend con PHP/Node', 3),
(22, 6, 'BD integrada', 4),
(23, 6, 'Deploy incluido', 5),
(24, 7, 'Todo Web Dev', 1),
(25, 7, 'PWA', 2),
(26, 7, 'APIs REST propias', 3),
(27, 7, 'Auth segura', 4),
(28, 7, 'Mentoría + Certificado', 5),
(29, 8, 'Clases y objetos', 1),
(30, 8, 'Los 4 pilares', 2),
(31, 8, '5 ejercicios prácticos', 3),
(32, 9, 'Todo Básico', 1),
(33, 9, 'Patrones GoF', 2),
(34, 9, 'UML', 3),
(35, 9, 'Proyecto POO completo', 4),
(36, 10, 'Todo Completo', 1),
(37, 10, 'SOLID avanzado', 2),
(38, 10, 'Arquitectura limpia', 3),
(39, 10, 'Code Review', 4),
(40, 11, 'SELECT avanzado', 1),
(41, 11, 'Joins', 2),
(42, 11, 'Modelado ER', 3),
(43, 11, '10 ejercicios', 4),
(44, 12, 'Todo SQL', 1),
(45, 12, 'NoSQL', 2),
(46, 12, 'Procedimientos', 3),
(47, 12, 'Optimización', 4),
(48, 12, 'Proyecto', 5),
(49, 13, 'Todo Completo', 1),
(50, 13, 'BD distribuidas', 2),
(51, 13, 'Alta disponibilidad', 3),
(52, 13, 'Certificado', 4),
(53, 14, 'Redes + TCP/IP', 1),
(54, 14, 'OWASP Top 10', 2),
(55, 14, 'Nmap básico', 3),
(56, 14, 'Lab virtual', 4),
(57, 15, 'Todo Fundamentos', 1),
(58, 15, 'Metasploit', 2),
(59, 15, 'Web hacking completo', 3),
(60, 15, 'AD básico', 4),
(61, 15, 'CTF incluido', 5),
(62, 16, 'Todo Pentester', 1),
(63, 16, 'Forense', 2),
(64, 16, 'Red Team', 3),
(65, 16, 'Lab avanzado', 4),
(66, 16, 'Prep OSCP', 5),
(67, 16, 'Certificado', 6),
(68, 17, 'OSI + TCP/IP', 1),
(69, 17, 'Subnetting', 2),
(70, 17, 'Servicios DHCP/DNS', 3),
(71, 17, 'Lab Packet Tracer', 4),
(72, 18, 'Todo Básico', 1),
(73, 18, 'Ruteo avanzado', 2),
(74, 18, 'VLANs', 3),
(75, 18, 'VPN', 4),
(76, 18, 'Firewall', 5),
(77, 19, 'Todo Networking', 1),
(78, 19, 'SDN', 2),
(79, 19, 'Wireless', 3),
(80, 19, 'Monitoreo', 4),
(81, 19, 'Prep CCNA', 5),
(82, 20, 'Arduino básico', 1),
(83, 20, '5 sensores', 2),
(84, 20, 'MQTT intro', 3),
(85, 20, '3 proyectos', 4),
(86, 21, 'Todo Maker', 1),
(87, 21, 'ESP32 + WiFi', 2),
(88, 21, 'Node-RED', 3),
(89, 21, 'Cloud IoT', 4),
(90, 21, 'Dashboard', 5),
(91, 22, 'Todo Desarrollador', 1),
(92, 22, 'IIoT', 2),
(93, 22, 'Edge', 3),
(94, 22, 'Seguridad avanzada', 4),
(95, 22, 'Proyecto completo', 5),
(96, 23, 'Python IA', 1),
(97, 23, 'scikit-learn', 2),
(98, 23, '5 algoritmos', 3),
(99, 23, 'Proyecto dataset', 4),
(100, 24, 'Todo ML', 1),
(101, 24, 'TensorFlow/PyTorch', 2),
(102, 24, 'CNN+RNN', 3),
(103, 24, 'NLP básico', 4),
(104, 24, 'Deploy modelo', 5),
(105, 25, 'Todo DL', 1),
(106, 25, 'LLMs', 2),
(107, 25, 'MLOps', 3),
(108, 25, 'RPA', 4),
(109, 25, 'Agentes IA', 5),
(110, 25, 'Certificado', 6),
(111, 26, 'Python datos', 1),
(112, 26, 'EDA', 2),
(113, 26, 'Power BI / Tableau', 3),
(114, 26, 'SQL analítico', 4),
(115, 27, 'Todo Analista', 1),
(116, 27, 'Estadística avanzada', 2),
(117, 27, 'ML integrado', 3),
(118, 27, 'A/B Testing', 4),
(119, 27, 'Proyecto completo', 5),
(120, 28, 'Todo DS', 1),
(121, 28, 'Spark', 2),
(122, 28, 'Pipelines', 3),
(123, 28, 'BigQuery', 4),
(124, 28, 'Arquitectura de datos', 5),
(125, 29, 'Fundamentos', 1),
(126, 29, 'AWS core (EC2+S3+RDS)', 2),
(127, 29, 'Docker intro', 3),
(128, 29, 'Deploy app', 4),
(129, 30, 'Todo Básico', 1),
(130, 30, 'Kubernetes', 2),
(131, 30, 'Terraform', 3),
(132, 30, 'CI/CD', 4),
(133, 30, 'Multi-cloud', 5),
(134, 31, 'Todo DevOps', 1),
(135, 31, 'Alta disponibilidad', 2),
(136, 31, 'FinOps', 3),
(137, 31, 'Seguridad', 4),
(138, 31, 'Prep certificación', 5),
(139, 32, 'Arrays + Listas + Pilas', 1),
(140, 32, 'Big-O', 2),
(141, 32, '20 problemas LeetCode', 3),
(142, 33, 'Todo Básico', 1),
(143, 33, 'Árboles + Grafos', 2),
(144, 33, 'DP básica', 3),
(145, 33, '50 problemas', 4),
(146, 34, 'Todo Intermedio', 1),
(147, 34, 'Avanzado completo', 2),
(148, 34, '150 problemas', 3),
(149, 34, 'Entrevista simulada', 4),
(150, 35, 'Procesos + Scheduling + Memoria', 1),
(151, 35, 'Ejercicios teóricos', 2),
(152, 36, 'Todo Teoría', 1),
(153, 36, 'Linux Internals', 2),
(154, 36, 'Sincronización', 3),
(155, 36, 'Virtualización', 4),
(156, 37, 'Todo Práctica', 1),
(157, 37, 'Kernel modules', 2),
(158, 37, 'Drivers', 3),
(159, 37, 'Proyecto SO', 4),
(160, 38, 'CLI completo', 1),
(161, 38, 'Permisos', 2),
(162, 38, 'Bash scripting', 3),
(163, 38, 'SSH', 4),
(164, 39, 'Todo Básico', 1),
(165, 39, 'systemd', 2),
(166, 39, 'Redes', 3),
(167, 39, 'Seguridad', 4),
(168, 39, 'Monitoreo', 5),
(169, 40, 'Todo SysAdmin', 1),
(170, 40, 'LVM/RAID', 2),
(171, 40, 'SELinux', 3),
(172, 40, 'Prep RHCSA/LPIC', 4),
(173, 41, 'SDLC', 1),
(174, 41, 'Scrum/Kanban', 2),
(175, 41, 'UML', 3),
(176, 41, 'Clean Code', 4),
(177, 42, 'Todo Fundamentos', 1),
(178, 42, 'Microservicios', 2),
(179, 42, 'Testing', 3),
(180, 42, 'DevOps', 4),
(181, 42, 'Proyecto', 5),
(182, 43, 'Todo Arquitecto', 1),
(183, 43, 'Event-Driven', 2),
(184, 43, 'DDD', 3),
(185, 43, 'Liderazgo técnico', 4),
(186, 43, 'Mentoría', 5),
(187, 46, 'Contenido del módulo seleccionado', 1),
(188, 47, 'Contenido del módulo seleccionado', 1),
(189, 48, 'Contenido del módulo seleccionado', 1),
(190, 49, 'Contenido del módulo seleccionado', 1),
(191, 50, 'Contenido del módulo seleccionado', 1),
(192, 51, 'Contenido del módulo seleccionado', 1),
(193, 52, 'Contenido del módulo seleccionado', 1),
(194, 53, 'Todo el Básico + Proyecto práctico', 1),
(195, 54, 'Todo el Básico + Proyecto práctico', 1),
(196, 55, 'Todo el Básico + Proyecto práctico', 1),
(197, 56, 'Todo el Básico + Proyecto práctico', 1),
(198, 57, 'Todo el Básico + Proyecto práctico', 1),
(199, 58, 'Todo el Básico + Proyecto práctico', 1),
(200, 59, 'Todo el Básico + Proyecto práctico', 1),
(201, 60, 'Todo Estándar + Mentoría + Certificado VIROX', 1),
(202, 61, 'Todo Estándar + Mentoría + Certificado VIROX', 1),
(203, 62, 'Todo Estándar + Mentoría + Certificado VIROX', 1),
(204, 63, 'Todo Estándar + Mentoría + Certificado VIROX', 1),
(205, 64, 'Todo Estándar + Mentoría + Certificado VIROX', 1),
(206, 65, 'Todo Estándar + Mentoría + Certificado VIROX', 1),
(207, 66, 'Todo Estándar + Mentoría + Certificado VIROX', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sesiones`
--

CREATE TABLE `sesiones` (
  `id` varchar(128) NOT NULL,
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `user_agent` varchar(300) DEFAULT NULL,
  `payload` mediumtext DEFAULT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sig_puntos`
--

CREATE TABLE `sig_puntos` (
  `id` int(10) UNSIGNED NOT NULL,
  `tipo` enum('oficina','usuario','pqrs','incidente','proyecto') NOT NULL,
  `referencia_id` int(10) UNSIGNED DEFAULT NULL,
  `titulo` varchar(200) DEFAULT NULL,
  `descripcion` varchar(400) DEFAULT NULL,
  `lat` decimal(10,7) NOT NULL,
  `lng` decimal(10,7) NOT NULL,
  `pais` varchar(80) DEFAULT NULL,
  `ciudad` varchar(80) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suscripciones_ad`
--

CREATE TABLE `suscripciones_ad` (
  `id` int(10) UNSIGNED NOT NULL,
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `canal_id` int(10) UNSIGNED NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transacciones`
--

CREATE TABLE `transacciones` (
  `id` int(10) UNSIGNED NOT NULL,
  `referencia` varchar(60) NOT NULL COMMENT 'ID único de la transacción',
  `usuario_id` int(10) UNSIGNED DEFAULT NULL,
  `servicio_id` int(10) UNSIGNED NOT NULL,
  `plan_id` int(10) UNSIGNED NOT NULL,
  `pasarela_id` int(10) UNSIGNED NOT NULL,
  `monto` decimal(14,2) NOT NULL,
  `moneda` char(3) DEFAULT 'COP',
  `estado` enum('iniciada','pendiente','aprobada','rechazada','reembolsada') DEFAULT 'iniciada',
  `datos_pasarela` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`datos_pasarela`)),
  `ip_usuario` varchar(45) DEFAULT NULL,
  `nombre_cliente` varchar(150) DEFAULT NULL,
  `email_cliente` varchar(180) DEFAULT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `fecha_update` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Registro de todas las transacciones de compra';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `username` varchar(60) NOT NULL,
  `tipo_documento` enum('CC','TI','CE','NIT','PASAPORTE','DNI') NOT NULL DEFAULT 'CC',
  `identificacion` varchar(30) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `fecha_expedicion` date NOT NULL,
  `genero` enum('M','F','NB','O','') DEFAULT NULL,
  `pais` varchar(80) DEFAULT 'Colombia',
  `ciudad` varchar(80) DEFAULT NULL,
  `telefono` varchar(25) DEFAULT NULL,
  `avatar` varchar(500) DEFAULT 'assets/avatar-default.png',
  `bio` text DEFAULT NULL,
  `ocupacion` varchar(120) DEFAULT NULL,
  `institucion` varchar(150) DEFAULT NULL,
  `nivel_educativo` enum('primaria','bachillerato','tecnico','universitario','pregrado','especializacion','maestria','doctorado') DEFAULT NULL,
  `experiencia_cyber` enum('ninguna','basica','intermedia','avanzada') DEFAULT 'ninguna',
  `certificaciones` text DEFAULT NULL,
  `intereses` varchar(500) DEFAULT NULL,
  `area_tecnologica` varchar(80) DEFAULT NULL COMMENT 'Área: Backend, Ciberseguridad, Datos…',
  `habilidades` text DEFAULT NULL COMMENT 'CSV de habilidades técnicas',
  `cargo_equipo` varchar(100) DEFAULT NULL COMMENT 'Cargo dentro del equipo',
  `disponible` tinyint(1) DEFAULT 1 COMMENT '1=disponible para proyectos',
  `calificacion` decimal(3,2) DEFAULT 0.00 COMMENT 'Promedio de calificaciones 0-5',
  `num_proyectos` int(10) UNSIGNED DEFAULT 0 COMMENT 'Cache conteo de proyectos',
  `descripcion_equipo` text DEFAULT NULL COMMENT 'Descripción pública para sección equipo',
  `tipo_equipo` varchar(80) DEFAULT NULL COMMENT 'Desarrollo, Seguridad, I+D…',
  `tipo_usuario` enum('cliente','empresa','creador','consultor') NOT NULL DEFAULT 'cliente',
  `rol` enum('superadmin','admin','empleado','creador','consultor','cliente') NOT NULL DEFAULT 'cliente',
  `linkedin` varchar(255) DEFAULT NULL,
  `github` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `discord` varchar(100) DEFAULT NULL,
  `telegram` varchar(100) DEFAULT NULL,
  `zona_horaria` varchar(60) DEFAULT 'America/Bogota',
  `idioma_preferido` varchar(5) DEFAULT 'es',
  `notif_email` tinyint(1) DEFAULT 1,
  `notif_curso` tinyint(1) DEFAULT 1,
  `notif_sistema` tinyint(1) DEFAULT 1,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  `verificado` tinyint(1) NOT NULL DEFAULT 0,
  `google_id` varchar(128) DEFAULT NULL,
  `ultimo_acceso` datetime DEFAULT NULL,
  `fecha_registro` datetime NOT NULL DEFAULT current_timestamp(),
  `fecha_actualizacion` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `oauth_provider` varchar(30) DEFAULT NULL COMMENT 'google, github, etc.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `username`, `tipo_documento`, `identificacion`, `fecha_nacimiento`, `fecha_expedicion`, `genero`, `pais`, `ciudad`, `telefono`, `avatar`, `bio`, `ocupacion`, `institucion`, `nivel_educativo`, `experiencia_cyber`, `certificaciones`, `intereses`, `area_tecnologica`, `habilidades`, `cargo_equipo`, `disponible`, `calificacion`, `num_proyectos`, `descripcion_equipo`, `tipo_equipo`, `tipo_usuario`, `rol`, `linkedin`, `github`, `twitter`, `website`, `discord`, `telegram`, `zona_horaria`, `idioma_preferido`, `notif_email`, `notif_curso`, `notif_sistema`, `activo`, `verificado`, `google_id`, `ultimo_acceso`, `fecha_registro`, `fecha_actualizacion`, `oauth_provider`) VALUES
(1, 'Andres Felipe', 'Rozo Garzon', 'AndresRz09', 'CC', '1072642850', '2005-03-09', '2023-03-22', 'M', 'Colombia', 'Chia', '3212771090', 'assets/Tesla.png', 'Visualiza con la mente.... Y Crea con las manos.', 'Ingeniero de Sistemas', 'Uniminuto', 'pregrado', 'avanzada', 'Coursera', 'hacking,redes,criptografia,ia_security,forense,malware,cloud,web_security,programacion', NULL, NULL, 'Propietario', 1, 0.00, 0, NULL, NULL, 'cliente', 'superadmin', '', '', '', '', NULL, NULL, 'America/Bogota', 'es', 1, 1, 1, 1, 1, NULL, '2026-05-28 12:56:37', '2026-05-13 15:39:18', '2026-05-28 12:56:37', NULL),
(2, 'Víctor Emmanuel', 'Pedroza de la Torre', 'TheEmmanuel13', 'CC', '26022004', '0000-00-00', '0000-00-00', 'M', 'Mexico', 'Ciudad de Mexico', '+52 1 395 106 2966', 'uploads/avatars/avatar_2_1778909352.png', 'xd', 'Ingeniero de Videojuegos', 'Uniminuto', 'pregrado', 'avanzada', 'Nan', 'programacion', '0', NULL, '', 1, 0.00, 0, NULL, 'Ingenieria de Videojuegos', 'cliente', 'empleado', '', '', '', '', NULL, NULL, 'America/Bogota', 'es', 1, 1, 1, 1, 1, NULL, '2026-05-28 12:59:39', '2026-05-15 23:52:10', '2026-05-28 12:59:39', NULL),
(4, 'Leonardo Josué', 'Pilay Salinas', 'takyi_', 'CC', '2450170788', '0000-00-00', '0000-00-00', 'M', 'Ecuador', 'Guayaquil', '+593 96 260 2629', 'uploads/avatars/avatar_4_1778991515.png', 'xd', 'Ingeniero Electrico', '', 'pregrado', 'avanzada', '', 'redes,web_security,programacion', NULL, NULL, NULL, 1, 0.00, 0, NULL, NULL, '', 'admin', '', '', '', '', NULL, NULL, 'America/Bogota', 'es', 1, 1, 1, 1, 1, NULL, '2026-05-28 13:00:58', '2026-05-16 23:13:43', '2026-05-28 13:00:58', NULL),
(5, 'Gerrald Joshua', 'Díaz Valdez', 'Ennuit', 'CE', 'v32201856', '2007-08-20', '2025-08-25', 'M', 'Venezuela', 'Arjona', '+58 416-3730297', 'uploads/avatars/avatar_1779485775_350.jpg', 'xd', 'Educación Mencion Idiomas extranjeros', 'Universidad de los Andes.', 'universitario', 'intermedia', '', 'redes,forense,web_security,programacion', NULL, NULL, NULL, 1, 0.00, 0, NULL, NULL, 'creador', 'creador', '', '', '', '', NULL, NULL, 'America/Bogota', 'es', 1, 1, 1, 1, 1, NULL, '2026-05-28 13:15:06', '2026-05-22 16:36:16', '2026-05-28 13:15:06', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_seguridad`
--

CREATE TABLE `usuarios_seguridad` (
  `id` int(10) UNSIGNED NOT NULL,
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `correo` varchar(180) NOT NULL,
  `identificacion` varchar(30) NOT NULL COMMENT 'Copia cifrada para login alternativo',
  `telefono` varchar(25) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL COMMENT 'bcrypt cost=12 NUNCA MD5/SHA1',
  `salt_extra` varchar(64) DEFAULT NULL COMMENT 'Salt adicional para rotación',
  `intentos_fallidos` tinyint(3) UNSIGNED DEFAULT 0,
  `bloqueado_hasta` datetime DEFAULT NULL,
  `token_reset` varchar(128) DEFAULT NULL,
  `token_reset_expiry` datetime DEFAULT NULL,
  `token_verificacion` varchar(128) DEFAULT NULL,
  `2fa_secreto` varchar(64) DEFAULT NULL COMMENT 'TOTP secreto para autenticación 2 factores',
  `2fa_activo` tinyint(1) DEFAULT 0,
  `ultimo_ip` varchar(45) DEFAULT NULL COMMENT 'IPv4 o IPv6',
  `fecha_cambio_pass` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios_seguridad`
--

INSERT INTO `usuarios_seguridad` (`id`, `usuario_id`, `correo`, `identificacion`, `telefono`, `password_hash`, `salt_extra`, `intentos_fallidos`, `bloqueado_hasta`, `token_reset`, `token_reset_expiry`, `token_verificacion`, `2fa_secreto`, `2fa_activo`, `ultimo_ip`, `fecha_cambio_pass`, `created_at`, `updated_at`) VALUES
(1, 1, 'andres.rozogx@gmail.com', '1072642850', '3212771090', '$2y$12$r2Yz.Y8fq0UDw6byfN.cHeYuD4pOp2/LLhXALNq9s8SVIHjma0E2K', NULL, 2, NULL, 'de754077d2d214ea41f8f12563ed7097a34f856e254dcc88bc1f10d5a655b22b', '2026-05-26 02:40:09', NULL, NULL, 0, NULL, NULL, '2026-05-13 15:42:38', '2026-05-25 18:40:09'),
(2, 2, 'theemmanuel131211@gmail.com', '', '+52 1 395 106 2966', '$2y$12$0iTN1KwJ8pqVl3MBzpG2beHS4LIzSndVztRd9CyOrPlh9r8hFdXJW', NULL, 3, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2026-05-15 23:53:38', '2026-05-16 00:24:38'),
(3, 4, 'josuepilay34@gmail.com', '2450170788', '+593 96 260 2629', '$2y$12$tBU08TmYfeyC2nPVlNrXu..YXJtQjGYvfdhSqyDKnIPPpY4OWxDPa', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2026-05-16 23:15:44', '2026-05-16 23:15:56'),
(5, 5, 'gerraldvaldez200807@gmail.com', 'v32201856', '+58 416-3730297', '$2y$12$OJzUTMYjQRctQeLRm.qkCu7CXccw30zHPswu6ZwH0wz93t3AwPPa6', NULL, 9, NULL, '6d3c9ed43ac5d932695ca5eac5e343a50a3c731c14739f6c146dcbedd56d26f4', '2026-05-28 21:14:29', NULL, NULL, 0, NULL, NULL, '2026-05-22 16:36:16', '2026-05-28 13:15:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_aprendizaje`
--

CREATE TABLE `usuario_aprendizaje` (
  `id` int(10) UNSIGNED NOT NULL,
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `clave` varchar(80) NOT NULL,
  `valor` text DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario_aprendizaje`
--

INSERT INTO `usuario_aprendizaje` (`id`, `usuario_id`, `clave`, `valor`, `updated_at`) VALUES
(1, 2, 'modo_aprendizaje', 'mooc', NULL),
(2, 2, 'meta_semana', '5', NULL),
(3, 2, 'meta_cursos', '3', NULL),
(4, 2, 'visibilidad_perfil', 'publico', NULL),
(13, 4, 'modo_aprendizaje', 'mooc', NULL),
(14, 4, 'meta_semana', '5', NULL),
(15, 4, 'meta_cursos', '3', NULL),
(16, 4, 'visibilidad_perfil', 'publico', NULL),
(17, 1, 'modo_aprendizaje', 'spoc', '2026-05-20 20:18:01'),
(18, 1, 'meta_semana', '5', NULL),
(19, 1, 'meta_cursos', '3', NULL),
(20, 1, 'visibilidad_perfil', 'publico', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_crm`
--

CREATE TABLE `usuario_crm` (
  `id` int(10) UNSIGNED NOT NULL,
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `visitas_perfil` int(10) UNSIGNED DEFAULT 0,
  `suscriptores` int(10) UNSIGNED DEFAULT 0,
  `comunidad_pts` int(10) UNSIGNED DEFAULT 0,
  `nivel_crm` tinyint(3) UNSIGNED DEFAULT 0,
  `etiquetas_crm` varchar(500) DEFAULT NULL,
  `puntaje_total` int(10) UNSIGNED DEFAULT 0,
  `ultima_actividad` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_contenido_feed`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_contenido_feed` (
`id` int(10) unsigned
,`titulo` varchar(250)
,`tipo` enum('video','audio','podcast','infografia','presentacion','imagen','documento')
,`duracion` varchar(10)
,`thumbnail` varchar(400)
,`icono` varchar(10)
,`tags` varchar(300)
,`vistas` int(10) unsigned
,`likes` int(10) unsigned
,`fecha_publicacion` datetime
,`canal_id` int(10) unsigned
,`canal_nombre` varchar(120)
,`canal_avatar` varchar(300)
,`autor` varchar(100)
,`autor_apellido` varchar(100)
,`autor_avatar` varchar(500)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_cursos_catalogo`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_cursos_catalogo` (
`id` int(10) unsigned
,`slug` varchar(120)
,`titulo` varchar(200)
,`descripcion` text
,`icono` varchar(20)
,`tipo` enum('MOOC','NOOC','SPOC')
,`nivel` enum('basico','intermedio','avanzado','experto')
,`duracion_horas` decimal(6,2)
,`precio` decimal(12,2)
,`gratuito` tinyint(1)
,`certificado` tinyint(1)
,`publicado` tinyint(1)
,`destacado` tinyint(1)
,`rating` decimal(3,2)
,`total_subs` int(10) unsigned
,`categoria` varchar(80)
,`imagen` varchar(400)
,`instructor` varchar(100)
,`instructor_ap` varchar(100)
,`instructor_avatar` varchar(500)
,`total_modulos` bigint(21)
,`total_lecciones` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_servicios_completos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_servicios_completos` (
`id` int(10) unsigned
,`slug` varchar(80)
,`icono` varchar(20)
,`categoria` varchar(80)
,`titulo` varchar(150)
,`subtitulo` varchar(200)
,`color` varchar(30)
,`nivel` varchar(80)
,`duracion` varchar(50)
,`precio_base` decimal(12,2)
,`definicion` text
,`importancia` text
,`foto_url` varchar(400)
,`video_url` varchar(400)
,`activo` tinyint(1)
,`destacado` tinyint(1)
,`orden` smallint(5) unsigned
,`total_conceptos` bigint(21)
,`total_parametros` bigint(21)
,`total_links` bigint(21)
,`total_planes` bigint(21)
,`total_adquirido` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_usuarios_publicos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_usuarios_publicos` (
`id` int(10) unsigned
,`nombre` varchar(100)
,`apellido` varchar(100)
,`username` varchar(60)
,`avatar` varchar(500)
,`rol` enum('superadmin','admin','empleado','creador','consultor','cliente')
,`tipo_usuario` enum('cliente','empresa','creador','consultor')
,`bio` text
,`ocupacion` varchar(120)
,`area_tecnologica` varchar(80)
,`tipo_equipo` varchar(80)
,`cargo_equipo` varchar(100)
,`disponible` tinyint(1)
,`calificacion` decimal(3,2)
,`num_proyectos` int(10) unsigned
,`habilidades` text
,`intereses` varchar(500)
,`linkedin` varchar(255)
,`github` varchar(255)
,`twitter` varchar(255)
,`website` varchar(255)
,`pais` varchar(80)
,`ciudad` varchar(80)
,`activo` tinyint(1)
,`visitas_perfil` int(10) unsigned
,`suscriptores` int(10) unsigned
,`nivel_crm` tinyint(3) unsigned
,`comunidad_pts` int(10) unsigned
);

-- --------------------------------------------------------

--
-- Estructura para la vista `v_contenido_feed`
--
DROP TABLE IF EXISTS `v_contenido_feed`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_contenido_feed`  AS SELECT `co`.`id` AS `id`, `co`.`titulo` AS `titulo`, `co`.`tipo` AS `tipo`, `co`.`duracion` AS `duracion`, `co`.`thumbnail` AS `thumbnail`, `co`.`icono` AS `icono`, `co`.`tags` AS `tags`, `co`.`vistas` AS `vistas`, `co`.`likes` AS `likes`, `co`.`fecha_publicacion` AS `fecha_publicacion`, `ca`.`id` AS `canal_id`, `ca`.`nombre` AS `canal_nombre`, `ca`.`avatar` AS `canal_avatar`, `u`.`nombre` AS `autor`, `u`.`apellido` AS `autor_apellido`, `u`.`avatar` AS `autor_avatar` FROM ((`contenido_ad` `co` join `canales_ad` `ca` on(`ca`.`id` = `co`.`canal_id`)) join `usuarios` `u` on(`u`.`id` = `co`.`usuario_id`)) WHERE `co`.`publicado` = 1 ORDER BY `co`.`fecha_publicacion` DESC ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_cursos_catalogo`
--
DROP TABLE IF EXISTS `v_cursos_catalogo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_cursos_catalogo`  AS SELECT `c`.`id` AS `id`, `c`.`slug` AS `slug`, `c`.`titulo` AS `titulo`, `c`.`descripcion` AS `descripcion`, `c`.`icono` AS `icono`, `c`.`tipo` AS `tipo`, `c`.`nivel` AS `nivel`, `c`.`duracion_horas` AS `duracion_horas`, `c`.`precio` AS `precio`, `c`.`gratuito` AS `gratuito`, `c`.`certificado` AS `certificado`, `c`.`publicado` AS `publicado`, `c`.`destacado` AS `destacado`, `c`.`rating` AS `rating`, `c`.`total_subs` AS `total_subs`, `c`.`categoria` AS `categoria`, `c`.`imagen` AS `imagen`, `u`.`nombre` AS `instructor`, `u`.`apellido` AS `instructor_ap`, `u`.`avatar` AS `instructor_avatar`, count(distinct `cm`.`id`) AS `total_modulos`, count(distinct `l`.`id`) AS `total_lecciones` FROM (((`cursos` `c` left join `usuarios` `u` on(`u`.`id` = `c`.`instructor_id`)) left join `modulos_curso` `cm` on(`cm`.`curso_id` = `c`.`id`)) left join `lecciones_curso` `l` on(`l`.`modulo_id` = `cm`.`id`)) WHERE `c`.`publicado` = 1 AND `c`.`activo` = 1 GROUP BY `c`.`id` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_servicios_completos`
--
DROP TABLE IF EXISTS `v_servicios_completos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_servicios_completos`  AS SELECT `s`.`id` AS `id`, `s`.`slug` AS `slug`, `s`.`icono` AS `icono`, `s`.`categoria` AS `categoria`, `s`.`titulo` AS `titulo`, `s`.`subtitulo` AS `subtitulo`, `s`.`color` AS `color`, `s`.`nivel` AS `nivel`, `s`.`duracion` AS `duracion`, `s`.`precio_base` AS `precio_base`, `s`.`definicion` AS `definicion`, `s`.`importancia` AS `importancia`, `s`.`foto_url` AS `foto_url`, `s`.`video_url` AS `video_url`, `s`.`activo` AS `activo`, `s`.`destacado` AS `destacado`, `s`.`orden` AS `orden`, (select count(0) from `servicio_conceptos` `sc` where `sc`.`servicio_id` = `s`.`id`) AS `total_conceptos`, (select count(0) from `servicio_parametros` `sp` where `sp`.`servicio_id` = `s`.`id`) AS `total_parametros`, (select count(0) from `servicio_links` `sl` where `sl`.`servicio_id` = `s`.`id`) AS `total_links`, (select count(0) from `servicio_planes` `spl` where `spl`.`servicio_id` = `s`.`id`) AS `total_planes`, (select count(0) from `servicio_adquisiciones` `sa` where `sa`.`servicio_id` = `s`.`id` and `sa`.`estado` = 'pagado') AS `total_adquirido` FROM `servicios` AS `s` WHERE `s`.`activo` = 1 ORDER BY `s`.`destacado` DESC, `s`.`orden` ASC ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_usuarios_publicos`
--
DROP TABLE IF EXISTS `v_usuarios_publicos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_usuarios_publicos`  AS SELECT `u`.`id` AS `id`, `u`.`nombre` AS `nombre`, `u`.`apellido` AS `apellido`, `u`.`username` AS `username`, `u`.`avatar` AS `avatar`, `u`.`rol` AS `rol`, `u`.`tipo_usuario` AS `tipo_usuario`, `u`.`bio` AS `bio`, `u`.`ocupacion` AS `ocupacion`, `u`.`area_tecnologica` AS `area_tecnologica`, `u`.`tipo_equipo` AS `tipo_equipo`, `u`.`cargo_equipo` AS `cargo_equipo`, `u`.`disponible` AS `disponible`, `u`.`calificacion` AS `calificacion`, `u`.`num_proyectos` AS `num_proyectos`, `u`.`habilidades` AS `habilidades`, `u`.`intereses` AS `intereses`, `u`.`linkedin` AS `linkedin`, `u`.`github` AS `github`, `u`.`twitter` AS `twitter`, `u`.`website` AS `website`, `u`.`pais` AS `pais`, `u`.`ciudad` AS `ciudad`, `u`.`activo` AS `activo`, `uc`.`visitas_perfil` AS `visitas_perfil`, `uc`.`suscriptores` AS `suscriptores`, `uc`.`nivel_crm` AS `nivel_crm`, `uc`.`comunidad_pts` AS `comunidad_pts` FROM (`usuarios` `u` left join `usuario_crm` `uc` on(`uc`.`usuario_id` = `u`.`id`)) WHERE `u`.`activo` = 1 ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividad_ad`
--
ALTER TABLE `actividad_ad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_canal_tipo_fecha` (`canal_id`,`tipo`,`fecha`),
  ADD KEY `idx_contenido` (`contenido_id`);

--
-- Indices de la tabla `actividad_usuario`
--
ALTER TABLE `actividad_usuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usuario_fecha` (`usuario_id`,`fecha`),
  ADD KEY `idx_tipo` (`tipo`);

--
-- Indices de la tabla `auditoria`
--
ALTER TABLE `auditoria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tabla_fecha` (`tabla`,`fecha`),
  ADD KEY `idx_usuario` (`usuario_id`),
  ADD KEY `idx_operacion` (`operacion`);

--
-- Indices de la tabla `cache_sistema`
--
ALTER TABLE `cache_sistema`
  ADD PRIMARY KEY (`clave`),
  ADD KEY `idx_expira` (`expira_en`);

--
-- Indices de la tabla `canales_ad`
--
ALTER TABLE `canales_ad`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_canal_usuario` (`usuario_id`),
  ADD KEY `idx_activo` (`activo`);

--
-- Indices de la tabla `certificados`
--
ALTER TABLE `certificados`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_codigo` (`codigo`),
  ADD UNIQUE KEY `uq_cert_usr_curso` (`usuario_id`,`curso_id`),
  ADD KEY `idx_usuario` (`usuario_id`);

--
-- Indices de la tabla `comentarios_ad`
--
ALTER TABLE `comentarios_ad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_contenido` (`contenido_id`),
  ADD KEY `idx_usuario` (`usuario_id`),
  ADD KEY `idx_padre` (`padre_id`);

--
-- Indices de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_clave` (`clave`);

--
-- Indices de la tabla `contacto_adjuntos`
--
ALTER TABLE `contacto_adjuntos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_mensaje` (`mensaje_id`);

--
-- Indices de la tabla `contacto_mensajes`
--
ALTER TABLE `contacto_mensajes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_leido` (`leido`),
  ADD KEY `idx_fecha` (`fecha`);

--
-- Indices de la tabla `contenido_ad`
--
ALTER TABLE `contenido_ad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_canal` (`canal_id`),
  ADD KEY `idx_tipo` (`tipo`),
  ADD KEY `idx_publicado` (`publicado`),
  ADD KEY `idx_fecha_pub` (`fecha_publicacion`),
  ADD KEY `fk_cont_usuario` (`usuario_id`);
ALTER TABLE `contenido_ad` ADD FULLTEXT KEY `ft_titulo_desc` (`titulo`,`descripcion`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_slug` (`slug`),
  ADD KEY `idx_tipo` (`tipo`),
  ADD KEY `idx_categoria` (`categoria`),
  ADD KEY `idx_nivel` (`nivel`),
  ADD KEY `idx_instructor` (`instructor_id`);

--
-- Indices de la tabla `curso_modulos`
--
ALTER TABLE `curso_modulos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_mod_curso` (`curso_id`);

--
-- Indices de la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_activo` (`activo`);

--
-- Indices de la tabla `equipo_areas`
--
ALTER TABLE `equipo_areas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_nombre` (`nombre`);

--
-- Indices de la tabla `equipo_categorias`
--
ALTER TABLE `equipo_categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `galerias`
--
ALTER TABLE `galerias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_categoria` (`categoria`);

--
-- Indices de la tabla `ia_conversaciones`
--
ALTER TABLE `ia_conversaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usuario_fecha` (`usuario_id`,`fecha`);

--
-- Indices de la tabla `ia_herramientas`
--
ALTER TABLE `ia_herramientas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ia_mensajes`
--
ALTER TABLE `ia_mensajes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_conv` (`conversacion_id`);

--
-- Indices de la tabla `ia_uso_tokens`
--
ALTER TABLE `ia_uso_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_usr_mes` (`usuario_id`,`mes`);

--
-- Indices de la tabla `ingresos_canal`
--
ALTER TABLE `ingresos_canal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_canal_fecha` (`canal_id`,`fecha`);

--
-- Indices de la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_inscripcion` (`usuario_id`,`curso_id`),
  ADD KEY `idx_curso` (`curso_id`),
  ADD KEY `idx_completado` (`completado`);

--
-- Indices de la tabla `lecciones`
--
ALTER TABLE `lecciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_modulo` (`modulo_id`);

--
-- Indices de la tabla `lecciones_curso`
--
ALTER TABLE `lecciones_curso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_modulo` (`modulo_id`);

--
-- Indices de la tabla `log_accesos`
--
ALTER TABLE `log_accesos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usuario` (`usuario_id`),
  ADD KEY `idx_fecha` (`fecha`),
  ADD KEY `idx_accion` (`accion`);

--
-- Indices de la tabla `mensajes_internos`
--
ALTER TABLE `mensajes_internos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_destinatario_leido` (`destinatario_id`,`leido`),
  ADD KEY `idx_remitente` (`remitente_id`),
  ADD KEY `idx_fecha` (`fecha`);

--
-- Indices de la tabla `modulos_curso`
--
ALTER TABLE `modulos_curso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_curso` (`curso_id`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fecha` (`fecha`);

--
-- Indices de la tabla `novedades`
--
ALTER TABLE `novedades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_conexiones`
--
ALTER TABLE `oauth_conexiones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_proveedor_uid` (`proveedor`,`proveedor_uid`),
  ADD KEY `idx_usuario` (`usuario_id`);

--
-- Indices de la tabla `objetivos_ad`
--
ALTER TABLE `objetivos_ad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usuario` (`usuario_id`),
  ADD KEY `idx_completado` (`completado`),
  ADD KEY `idx_fecha_lim` (`fecha_limite`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_referencia` (`referencia`),
  ADD KEY `idx_usuario` (`usuario_id`),
  ADD KEY `idx_estado` (`estado`),
  ADD KEY `idx_fecha` (`fecha`);

--
-- Indices de la tabla `pasarelas_pago`
--
ALTER TABLE `pasarelas_pago`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_slug` (`slug`);

--
-- Indices de la tabla `perfil_historial`
--
ALTER TABLE `perfil_historial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usuario_fecha` (`usuario_id`,`fecha`);

--
-- Indices de la tabla `playlists_ad`
--
ALTER TABLE `playlists_ad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_canal` (`canal_id`);

--
-- Indices de la tabla `playlist_contenido`
--
ALTER TABLE `playlist_contenido`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_pl_cont` (`playlist_id`,`contenido_id`),
  ADD KEY `fk_plc_cont` (`contenido_id`);

--
-- Indices de la tabla `pqrs`
--
ALTER TABLE `pqrs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_folio` (`folio`),
  ADD KEY `idx_estado` (`estado`),
  ADD KEY `idx_categoria` (`categoria`),
  ADD KEY `idx_prioridad` (`prioridad`),
  ADD KEY `idx_usuario` (`usuario_id`),
  ADD KEY `idx_fecha` (`fecha`);

--
-- Indices de la tabla `pqrs_adjuntos`
--
ALTER TABLE `pqrs_adjuntos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_pqrs` (`pqrs_id`);

--
-- Indices de la tabla `progreso_cursos`
--
ALTER TABLE `progreso_cursos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_prog_curso` (`usuario_id`,`curso_id`),
  ADD KEY `idx_curso` (`curso_id`),
  ADD KEY `idx_completado` (`completado`);

--
-- Indices de la tabla `progreso_lecciones`
--
ALTER TABLE `progreso_lecciones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_prog_lec` (`usuario_id`,`leccion_id`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_estado` (`estado`),
  ADD KEY `idx_tipo` (`tipo`),
  ADD KEY `idx_categoria` (`categoria`),
  ADD KEY `idx_creado_por` (`creado_por`);

--
-- Indices de la tabla `proyecto_avances`
--
ALTER TABLE `proyecto_avances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proyecto` (`proyecto_id`);

--
-- Indices de la tabla `proyecto_documentos`
--
ALTER TABLE `proyecto_documentos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_doc_proy` (`proyecto_id`);

--
-- Indices de la tabla `proyecto_imagenes`
--
ALTER TABLE `proyecto_imagenes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_img_proy` (`proyecto_id`);

--
-- Indices de la tabla `proyecto_kpis`
--
ALTER TABLE `proyecto_kpis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kpi_proy` (`proyecto_id`);

--
-- Indices de la tabla `proyecto_usuarios`
--
ALTER TABLE `proyecto_usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_proy_usr` (`proyecto_id`,`usuario_id`),
  ADD KEY `fk_pu_usuario` (`usuario_id`);

--
-- Indices de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_slug` (`slug`(191)),
  ADD KEY `idx_autor` (`autor_id`),
  ADD KEY `idx_publicado` (`publicado`),
  ADD KEY `idx_fecha` (`fecha`);
ALTER TABLE `publicaciones` ADD FULLTEXT KEY `ft_titulo_resumen` (`titulo`,`resumen`);

--
-- Indices de la tabla `puntos_usuario`
--
ALTER TABLE `puntos_usuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usuario` (`usuario_id`),
  ADD KEY `idx_fecha` (`fecha`);

--
-- Indices de la tabla `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `quiz_opciones`
--
ALTER TABLE `quiz_opciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_opc_quiz` (`quiz_id`);

--
-- Indices de la tabla `quiz_respuestas`
--
ALTER TABLE `quiz_respuestas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usuario_quiz` (`usuario_id`,`quiz_id`);

--
-- Indices de la tabla `rate_limit`
--
ALTER TABLE `rate_limit`
  ADD PRIMARY KEY (`ip`,`endpoint`),
  ADD KEY `idx_bloqueado` (`bloqueado_hasta`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_slug` (`slug`),
  ADD KEY `idx_categoria` (`categoria`),
  ADD KEY `idx_activo` (`activo`),
  ADD KEY `idx_destacado` (`destacado`);

--
-- Indices de la tabla `servicio_adquisiciones`
--
ALTER TABLE `servicio_adquisiciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usuario` (`usuario_id`),
  ADD KEY `idx_servicio` (`servicio_id`),
  ADD KEY `idx_estado` (`estado`),
  ADD KEY `idx_fecha` (`fecha`);

--
-- Indices de la tabla `servicio_calificaciones`
--
ALTER TABLE `servicio_calificaciones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_calif` (`servicio_id`,`usuario_id`),
  ADD KEY `idx_servicio` (`servicio_id`),
  ADD KEY `fk_cal_usr` (`usuario_id`);

--
-- Indices de la tabla `servicio_conceptos`
--
ALTER TABLE `servicio_conceptos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_conc_serv` (`servicio_id`);

--
-- Indices de la tabla `servicio_links`
--
ALTER TABLE `servicio_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_link_serv` (`servicio_id`);

--
-- Indices de la tabla `servicio_parametros`
--
ALTER TABLE `servicio_parametros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_param_serv` (`servicio_id`);

--
-- Indices de la tabla `servicio_planes`
--
ALTER TABLE `servicio_planes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_plan_serv` (`servicio_id`);

--
-- Indices de la tabla `servicio_plan_items`
--
ALTER TABLE `servicio_plan_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_item_plan` (`plan_id`);

--
-- Indices de la tabla `sesiones`
--
ALTER TABLE `sesiones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usuario_id` (`usuario_id`),
  ADD KEY `idx_last_activity` (`last_activity`);

--
-- Indices de la tabla `sig_puntos`
--
ALTER TABLE `sig_puntos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tipo` (`tipo`),
  ADD KEY `idx_activo` (`activo`),
  ADD KEY `idx_latlng` (`lat`,`lng`);

--
-- Indices de la tabla `suscripciones_ad`
--
ALTER TABLE `suscripciones_ad`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_suscripcion` (`usuario_id`,`canal_id`),
  ADD KEY `idx_canal` (`canal_id`);

--
-- Indices de la tabla `transacciones`
--
ALTER TABLE `transacciones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_referencia` (`referencia`),
  ADD KEY `idx_usuario` (`usuario_id`),
  ADD KEY `idx_servicio` (`servicio_id`),
  ADD KEY `idx_estado` (`estado`),
  ADD KEY `idx_fecha` (`fecha`),
  ADD KEY `fk_tx_pasarela` (`pasarela_id`),
  ADD KEY `fk_tx_plan` (`plan_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_username` (`username`),
  ADD UNIQUE KEY `uq_identificacion` (`identificacion`),
  ADD KEY `idx_rol` (`rol`),
  ADD KEY `idx_tipo_usuario` (`tipo_usuario`),
  ADD KEY `idx_activo` (`activo`),
  ADD KEY `idx_pais` (`pais`),
  ADD KEY `idx_fecha_registro` (`fecha_registro`),
  ADD KEY `idx_google_id` (`google_id`);

--
-- Indices de la tabla `usuarios_seguridad`
--
ALTER TABLE `usuarios_seguridad`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_correo` (`correo`),
  ADD UNIQUE KEY `uq_usuario_id` (`usuario_id`),
  ADD KEY `idx_token_reset` (`token_reset`),
  ADD KEY `idx_bloqueado` (`bloqueado_hasta`);

--
-- Indices de la tabla `usuario_aprendizaje`
--
ALTER TABLE `usuario_aprendizaje`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_usuario_clave` (`usuario_id`,`clave`);

--
-- Indices de la tabla `usuario_crm`
--
ALTER TABLE `usuario_crm`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_crm_usuario` (`usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividad_ad`
--
ALTER TABLE `actividad_ad`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `actividad_usuario`
--
ALTER TABLE `actividad_usuario`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `auditoria`
--
ALTER TABLE `auditoria`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `canales_ad`
--
ALTER TABLE `canales_ad`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `certificados`
--
ALTER TABLE `certificados`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `comentarios_ad`
--
ALTER TABLE `comentarios_ad`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de la tabla `contacto_adjuntos`
--
ALTER TABLE `contacto_adjuntos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contacto_mensajes`
--
ALTER TABLE `contacto_mensajes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contenido_ad`
--
ALTER TABLE `contenido_ad`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `curso_modulos`
--
ALTER TABLE `curso_modulos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `equipo`
--
ALTER TABLE `equipo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `equipo_areas`
--
ALTER TABLE `equipo_areas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `equipo_categorias`
--
ALTER TABLE `equipo_categorias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `galerias`
--
ALTER TABLE `galerias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ia_conversaciones`
--
ALTER TABLE `ia_conversaciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ia_herramientas`
--
ALTER TABLE `ia_herramientas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `ia_mensajes`
--
ALTER TABLE `ia_mensajes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ia_uso_tokens`
--
ALTER TABLE `ia_uso_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ingresos_canal`
--
ALTER TABLE `ingresos_canal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lecciones`
--
ALTER TABLE `lecciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lecciones_curso`
--
ALTER TABLE `lecciones_curso`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `log_accesos`
--
ALTER TABLE `log_accesos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mensajes_internos`
--
ALTER TABLE `mensajes_internos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `modulos_curso`
--
ALTER TABLE `modulos_curso`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `novedades`
--
ALTER TABLE `novedades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `oauth_conexiones`
--
ALTER TABLE `oauth_conexiones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `objetivos_ad`
--
ALTER TABLE `objetivos_ad`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pasarelas_pago`
--
ALTER TABLE `pasarelas_pago`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `perfil_historial`
--
ALTER TABLE `perfil_historial`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `playlists_ad`
--
ALTER TABLE `playlists_ad`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `playlist_contenido`
--
ALTER TABLE `playlist_contenido`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pqrs`
--
ALTER TABLE `pqrs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pqrs_adjuntos`
--
ALTER TABLE `pqrs_adjuntos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `progreso_cursos`
--
ALTER TABLE `progreso_cursos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `progreso_lecciones`
--
ALTER TABLE `progreso_lecciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `proyecto_avances`
--
ALTER TABLE `proyecto_avances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proyecto_documentos`
--
ALTER TABLE `proyecto_documentos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proyecto_imagenes`
--
ALTER TABLE `proyecto_imagenes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proyecto_kpis`
--
ALTER TABLE `proyecto_kpis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proyecto_usuarios`
--
ALTER TABLE `proyecto_usuarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `puntos_usuario`
--
ALTER TABLE `puntos_usuario`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `quiz_opciones`
--
ALTER TABLE `quiz_opciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `quiz_respuestas`
--
ALTER TABLE `quiz_respuestas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `servicio_adquisiciones`
--
ALTER TABLE `servicio_adquisiciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `servicio_calificaciones`
--
ALTER TABLE `servicio_calificaciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `servicio_conceptos`
--
ALTER TABLE `servicio_conceptos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT de la tabla `servicio_links`
--
ALTER TABLE `servicio_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `servicio_parametros`
--
ALTER TABLE `servicio_parametros`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT de la tabla `servicio_planes`
--
ALTER TABLE `servicio_planes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT de la tabla `servicio_plan_items`
--
ALTER TABLE `servicio_plan_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT de la tabla `sig_puntos`
--
ALTER TABLE `sig_puntos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `suscripciones_ad`
--
ALTER TABLE `suscripciones_ad`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `transacciones`
--
ALTER TABLE `transacciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios_seguridad`
--
ALTER TABLE `usuarios_seguridad`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuario_aprendizaje`
--
ALTER TABLE `usuario_aprendizaje`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `usuario_crm`
--
ALTER TABLE `usuario_crm`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `canales_ad`
--
ALTER TABLE `canales_ad`
  ADD CONSTRAINT `fk_canal_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `comentarios_ad`
--
ALTER TABLE `comentarios_ad`
  ADD CONSTRAINT `fk_com_cont` FOREIGN KEY (`contenido_id`) REFERENCES `contenido_ad` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_com_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `contacto_adjuntos`
--
ALTER TABLE `contacto_adjuntos`
  ADD CONSTRAINT `fk_adj_msg` FOREIGN KEY (`mensaje_id`) REFERENCES `contacto_mensajes` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `contenido_ad`
--
ALTER TABLE `contenido_ad`
  ADD CONSTRAINT `fk_cont_canal` FOREIGN KEY (`canal_id`) REFERENCES `canales_ad` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_cont_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `curso_modulos`
--
ALTER TABLE `curso_modulos`
  ADD CONSTRAINT `fk_mod_curso` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `ia_conversaciones`
--
ALTER TABLE `ia_conversaciones`
  ADD CONSTRAINT `fk_ia_conv_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `ia_mensajes`
--
ALTER TABLE `ia_mensajes`
  ADD CONSTRAINT `fk_msg_conv` FOREIGN KEY (`conversacion_id`) REFERENCES `ia_conversaciones` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `ia_uso_tokens`
--
ALTER TABLE `ia_uso_tokens`
  ADD CONSTRAINT `fk_ia_uso_usr` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `ingresos_canal`
--
ALTER TABLE `ingresos_canal`
  ADD CONSTRAINT `fk_ingr_canal` FOREIGN KEY (`canal_id`) REFERENCES `canales_ad` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `lecciones`
--
ALTER TABLE `lecciones`
  ADD CONSTRAINT `fk_lec_modulo` FOREIGN KEY (`modulo_id`) REFERENCES `curso_modulos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `lecciones_curso`
--
ALTER TABLE `lecciones_curso`
  ADD CONSTRAINT `fk_lec_mod2` FOREIGN KEY (`modulo_id`) REFERENCES `modulos_curso` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `mensajes_internos`
--
ALTER TABLE `mensajes_internos`
  ADD CONSTRAINT `fk_msg_dest` FOREIGN KEY (`destinatario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_msg_rem` FOREIGN KEY (`remitente_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `modulos_curso`
--
ALTER TABLE `modulos_curso`
  ADD CONSTRAINT `fk_mod_curso2` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `oauth_conexiones`
--
ALTER TABLE `oauth_conexiones`
  ADD CONSTRAINT `fk_oauth_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `objetivos_ad`
--
ALTER TABLE `objetivos_ad`
  ADD CONSTRAINT `fk_obj_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `perfil_historial`
--
ALTER TABLE `perfil_historial`
  ADD CONSTRAINT `fk_historial_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `playlists_ad`
--
ALTER TABLE `playlists_ad`
  ADD CONSTRAINT `fk_pl_canal` FOREIGN KEY (`canal_id`) REFERENCES `canales_ad` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `playlist_contenido`
--
ALTER TABLE `playlist_contenido`
  ADD CONSTRAINT `fk_plc_cont` FOREIGN KEY (`contenido_id`) REFERENCES `contenido_ad` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_plc_pl` FOREIGN KEY (`playlist_id`) REFERENCES `playlists_ad` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `pqrs_adjuntos`
--
ALTER TABLE `pqrs_adjuntos`
  ADD CONSTRAINT `fk_adj_pqrs` FOREIGN KEY (`pqrs_id`) REFERENCES `pqrs` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `progreso_cursos`
--
ALTER TABLE `progreso_cursos`
  ADD CONSTRAINT `fk_pc_curso` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_pc_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `proyecto_avances`
--
ALTER TABLE `proyecto_avances`
  ADD CONSTRAINT `fk_av_proy` FOREIGN KEY (`proyecto_id`) REFERENCES `proyectos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `proyecto_documentos`
--
ALTER TABLE `proyecto_documentos`
  ADD CONSTRAINT `fk_doc_proy` FOREIGN KEY (`proyecto_id`) REFERENCES `proyectos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `proyecto_imagenes`
--
ALTER TABLE `proyecto_imagenes`
  ADD CONSTRAINT `fk_img_proy` FOREIGN KEY (`proyecto_id`) REFERENCES `proyectos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `proyecto_kpis`
--
ALTER TABLE `proyecto_kpis`
  ADD CONSTRAINT `fk_kpi_proy` FOREIGN KEY (`proyecto_id`) REFERENCES `proyectos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `proyecto_usuarios`
--
ALTER TABLE `proyecto_usuarios`
  ADD CONSTRAINT `fk_pu_proyecto` FOREIGN KEY (`proyecto_id`) REFERENCES `proyectos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_pu_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `puntos_usuario`
--
ALTER TABLE `puntos_usuario`
  ADD CONSTRAINT `fk_pts_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `quiz_opciones`
--
ALTER TABLE `quiz_opciones`
  ADD CONSTRAINT `fk_opc_quiz` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `servicio_calificaciones`
--
ALTER TABLE `servicio_calificaciones`
  ADD CONSTRAINT `fk_cal_srv` FOREIGN KEY (`servicio_id`) REFERENCES `servicios` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_cal_usr` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `servicio_conceptos`
--
ALTER TABLE `servicio_conceptos`
  ADD CONSTRAINT `fk_conc_serv` FOREIGN KEY (`servicio_id`) REFERENCES `servicios` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `servicio_links`
--
ALTER TABLE `servicio_links`
  ADD CONSTRAINT `fk_link_serv` FOREIGN KEY (`servicio_id`) REFERENCES `servicios` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `servicio_parametros`
--
ALTER TABLE `servicio_parametros`
  ADD CONSTRAINT `fk_param_serv` FOREIGN KEY (`servicio_id`) REFERENCES `servicios` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `servicio_planes`
--
ALTER TABLE `servicio_planes`
  ADD CONSTRAINT `fk_plan_serv` FOREIGN KEY (`servicio_id`) REFERENCES `servicios` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `servicio_plan_items`
--
ALTER TABLE `servicio_plan_items`
  ADD CONSTRAINT `fk_item_plan` FOREIGN KEY (`plan_id`) REFERENCES `servicio_planes` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `sesiones`
--
ALTER TABLE `sesiones`
  ADD CONSTRAINT `fk_ses_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `suscripciones_ad`
--
ALTER TABLE `suscripciones_ad`
  ADD CONSTRAINT `fk_sub_canal` FOREIGN KEY (`canal_id`) REFERENCES `canales_ad` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_sub_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `transacciones`
--
ALTER TABLE `transacciones`
  ADD CONSTRAINT `fk_tx_pasarela` FOREIGN KEY (`pasarela_id`) REFERENCES `pasarelas_pago` (`id`),
  ADD CONSTRAINT `fk_tx_plan` FOREIGN KEY (`plan_id`) REFERENCES `servicio_planes` (`id`),
  ADD CONSTRAINT `fk_tx_servicio` FOREIGN KEY (`servicio_id`) REFERENCES `servicios` (`id`);

--
-- Filtros para la tabla `usuarios_seguridad`
--
ALTER TABLE `usuarios_seguridad`
  ADD CONSTRAINT `fk_seg_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario_aprendizaje`
--
ALTER TABLE `usuario_aprendizaje`
  ADD CONSTRAINT `fk_aprend_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `usuario_crm`
--
ALTER TABLE `usuario_crm`
  ADD CONSTRAINT `fk_crm_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
