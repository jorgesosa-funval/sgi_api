-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-01-2024 a las 21:57:50
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sgi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `noReferencia` varchar(255) NOT NULL,
  `fechaCompra` date NOT NULL,
  `cantidadCompra` int(11) NOT NULL,
  `totalPagado` int(11) NOT NULL,
  `cantidadArticulos` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id`, `user_id`, `noReferencia`, `fechaCompra`, `cantidadCompra`, `totalPagado`, `cantidadArticulos`, `created_at`, `updated_at`) VALUES
(1, 9, '27430b66-63e2-3108-b7c1-95795a23172f', '1977-04-20', 1, 404, 5, '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(2, 2, '6f2bf621-4b8c-3cee-9803-961e84fba938', '2015-12-02', 100, 474, 2, '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(3, 8, '4bbc158a-92ec-399f-ae10-e9f6a6723412', '1975-03-25', 32, 995, 10, '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(4, 5, '63e1f54b-8d30-35bf-a317-bc481fe5134d', '2016-05-06', 63, 438, 7, '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(5, 2, 'cb71e8d8-af14-35f2-af6f-e68ca4484017', '1987-12-13', 74, 673, 9, '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(6, 6, 'd34b88fa-6889-3457-82b7-6acc1a109cc9', '1982-06-28', 53, 264, 4, '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(7, 4, '23e79696-904a-33d9-9083-ff2303ee9414', '2017-07-22', 51, 420, 1, '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(8, 1, 'c57fe7dc-f926-3cf1-8b95-9627d73971c2', '2004-10-28', 76, 545, 1, '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(9, 7, '63400812-3ec2-386e-afda-dd108e8805eb', '2011-08-17', 84, 465, 1, '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(10, 8, '292e25a8-bd39-3d6d-a648-0b27e4111cee', '1997-03-26', 15, 863, 2, '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(11, 2, 'e8f2dd9d-d240-3814-a53c-5a3e56c929a5', '1998-11-28', 54, 360, 9, '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(12, 1, '33038055-3114-33f8-b4f2-df032748925e', '2012-07-19', 93, 995, 9, '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(13, 5, '081adc7e-f7bd-3c5d-870f-8ccc273cad92', '1981-12-23', 13, 140, 4, '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(14, 2, '5a1822ad-ff8e-31d6-8e96-188094beed3b', '1970-09-07', 86, 978, 7, '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(15, 5, '919512bd-6847-32a1-b4f1-6167d9de7dd3', '2009-11-02', 92, 148, 2, '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(16, 6, 'bd8034ed-986d-388f-ab2b-ddb09eae6c2d', '1978-08-14', 15, 362, 7, '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(17, 3, '3d31a387-8367-3139-89d3-37b2263d0678', '2015-12-05', 99, 724, 3, '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(18, 5, '27e0a798-32de-3227-96e3-ec251d90f452', '2020-07-18', 100, 339, 2, '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(19, 3, '5033aaa5-408a-365a-a7ad-9b3f3327751a', '2016-01-24', 92, 942, 2, '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(20, 3, '1eb69a9e-7677-3d3d-a193-ec56654ac9ce', '2011-08-08', 25, 453, 3, '2024-01-05 01:43:58', '2024-01-05 01:43:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras_productos`
--

CREATE TABLE `compras_productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `compra_id` bigint(20) UNSIGNED NOT NULL,
  `producto_id` bigint(20) UNSIGNED NOT NULL,
  `costo` int(11) NOT NULL,
  `precio` int(11) NOT NULL,
  `cantidadProductos` int(11) NOT NULL,
  `fechaCompra` date NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `compras_productos`
--

INSERT INTO `compras_productos` (`id`, `compra_id`, `producto_id`, `costo`, `precio`, `cantidadProductos`, `fechaCompra`, `total`, `created_at`, `updated_at`) VALUES
(1, 19, 5, 87, 88, 20, '2011-10-03', 590, '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(2, 17, 7, 92, 82, 48, '1986-02-19', 875, '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(3, 5, 7, 39, 90, 49, '1990-10-11', 964, '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(4, 13, 6, 44, 16, 40, '2017-03-24', 306, '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(5, 19, 5, 75, 29, 11, '2005-02-06', 743, '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(6, 6, 7, 72, 57, 61, '2008-02-02', 507, '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(7, 14, 6, 90, 10, 83, '1970-05-07', 75, '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(8, 6, 9, 12, 29, 85, '1987-03-19', 924, '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(9, 20, 4, 21, 11, 51, '2020-06-19', 672, '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(10, 6, 6, 95, 9, 63, '2005-08-07', 157, '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(11, 11, 6, 28, 91, 54, '2011-01-25', 477, '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(12, 7, 3, 54, 74, 98, '1983-09-19', 119, '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(13, 20, 1, 94, 83, 95, '1973-09-04', 520, '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(14, 14, 6, 65, 61, 55, '2010-03-01', 431, '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(15, 4, 1, 45, 6, 57, '2021-09-01', 796, '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(16, 8, 6, 13, 60, 54, '1978-03-15', 247, '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(17, 9, 2, 76, 95, 74, '2004-09-27', 270, '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(18, 20, 7, 13, 99, 94, '1995-05-19', 350, '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(19, 18, 4, 24, 10, 69, '2013-02-14', 22, '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(20, 14, 7, 63, 30, 79, '2008-01-20', 388, '2024-01-05 01:43:58', '2024-01-05 01:43:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(81, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(82, '2024_01_04_165649_create_roles_table', 1),
(83, '2024_01_04_165731_create_users_table', 1),
(84, '2024_01_04_165810_create_ventas_table', 1),
(85, '2024_01_04_165826_create_compras_table', 1),
(86, '2024_01_04_165850_create_productos_table', 1),
(87, '2024_01_04_165949_create_ventas_productos_table', 1),
(88, '2024_01_04_170024_create_compras_productos_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombreProducto` varchar(255) NOT NULL,
  `stock` int(11) NOT NULL,
  `stockMinimo` int(11) NOT NULL,
  `marca` varchar(255) NOT NULL,
  `costo` int(11) NOT NULL,
  `precio` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `categoria` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombreProducto`, `stock`, `stockMinimo`, `marca`, `costo`, `precio`, `fecha`, `img`, `categoria`, `created_at`, `updated_at`) VALUES
(1, 'pantalon', 19, 10, 'PLEXUS', 80, 67, '2008-03-12', 'https://via.placeholder.com/640x480.png/00cc66?text=qui', 'niño', '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(2, 'pantalon', 26, 8, 'NIKE', 54, 164, '1998-04-07', 'https://via.placeholder.com/640x480.png/00eedd?text=sit', 'niño', '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(3, 'pantalon', 34, 9, 'PUMA', 96, 117, '1993-07-15', 'https://via.placeholder.com/640x480.png/00bb00?text=qui', 'bebe', '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(4, 'camisa', 50, 1, 'PUMA', 37, 127, '1982-02-16', 'https://via.placeholder.com/640x480.png/001111?text=nemo', 'bebe', '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(5, 'zapatilla', 26, 3, 'ADIDAS', 31, 112, '1994-07-26', 'https://via.placeholder.com/640x480.png/0022bb?text=illo', 'bebe', '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(6, 'tenis', 50, 1, 'NIKE', 44, 77, '1974-03-21', 'https://via.placeholder.com/640x480.png/00dd33?text=saepe', 'niña', '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(7, 'zapatilla', 22, 8, 'PLEXUS', 100, 133, '1983-09-20', 'https://via.placeholder.com/640x480.png/005577?text=odio', 'mujer', '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(8, 'sudadera', 10, 5, 'NIKE', 32, 67, '1985-04-12', 'https://via.placeholder.com/640x480.png/0011aa?text=accusantium', 'niño', '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(9, 'chaleco', 34, 4, 'NIKE', 56, 126, '2011-04-30', 'https://via.placeholder.com/640x480.png/00bb00?text=itaque', 'mujer', '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(10, 'sudadera', 25, 6, 'ADIDAS', 13, 186, '2006-06-22', 'https://via.placeholder.com/640x480.png/00bb11?text=doloremque', 'hombre', '2024-01-05 01:43:58', '2024-01-05 01:43:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rol` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `rol`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2024-01-05 01:43:57', '2024-01-05 01:43:57'),
(2, 'cliente', '2024-01-05 01:43:57', '2024-01-05 01:43:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `userName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role_id`, `userName`, `lastName`, `email`, `password`, `address`, `created_at`, `updated_at`) VALUES
(1, 2, 'stephan57', 'Cole', 'quincy.reichert@example.org', 'o|6F?$F*G4j/vIbV9=', '727 Alisa Land Suite 236\nHermanside, IL 47568-7656', '2024-01-05 01:43:57', '2024-01-05 01:43:57'),
(2, 2, 'okoelpin', 'Powlowski', 'jerad.nitzsche@example.org', '\\y>jxTb|)4E{89TAm', '33415 McDermott Radial\nBednarstad, ME 47186-5163', '2024-01-05 01:43:57', '2024-01-05 01:43:57'),
(3, 1, 'maggio.yasmine', 'Hirthe', 'asporer@example.org', 'Oi*wV_JrnqAb@', '32069 Vito Fork\nGrahamhaven, SD 84082-7195', '2024-01-05 01:43:57', '2024-01-05 01:43:57'),
(4, 2, 'devon.nienow', 'Bode', 'lstoltenberg@example.net', 'ZB8OL@@%glLw(Kzp\'i%', '28239 Deshawn Park\nNew Shaina, VT 71607-3682', '2024-01-05 01:43:57', '2024-01-05 01:43:57'),
(5, 1, 'herzog.dan', 'White', 'grimes.darlene@example.net', '-SM-`ZfIG%', '48349 Keshawn Spring\nShanelleside, NJ 92540-8909', '2024-01-05 01:43:57', '2024-01-05 01:43:57'),
(6, 2, 'qborer', 'Rowe', 'kristopher.auer@example.org', '2d=JNv&}}!HcUAs0ik', '6560 Dach Summit\nKshlerinborough, ND 65205-0053', '2024-01-05 01:43:57', '2024-01-05 01:43:57'),
(7, 2, 'jermey.cronin', 'Schiller', 'xsmitham@example.org', 'g)(!RZn)Vc2&?\"`', '4452 Mabelle Crossing\nPort Rae, MD 17558-5421', '2024-01-05 01:43:57', '2024-01-05 01:43:57'),
(8, 2, 'adare', 'Jones', 'maryse.satterfield@example.net', ')N!0!j=M9^~O^tlEPS=', '402 Jada Throughway\nNew Casimirview, KY 19848-7410', '2024-01-05 01:43:57', '2024-01-05 01:43:57'),
(9, 1, 'estrella.oberbrunner', 'Connelly', 'heath.gulgowski@example.org', 'Ck8(^-Nc1IX<-dW&Wq1', '1878 Cesar Islands Suite 269\nReichertside, SC 95103', '2024-01-05 01:43:57', '2024-01-05 01:43:57'),
(10, 2, 'bnikolaus', 'Keeling', 'nkeebler@example.org', 'l|*kn=~{\"5[,C;QgU.=', '5970 Ziemann Mission\nLake Marquise, KY 64850-2128', '2024-01-05 01:43:57', '2024-01-05 01:43:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `totalArticulo` int(11) NOT NULL,
  `totalVenta` int(11) NOT NULL,
  `metodoPago` varchar(255) NOT NULL,
  `fechaVenta` date NOT NULL,
  `totalNeto` int(11) NOT NULL,
  `noFactura` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `user_id`, `totalArticulo`, `totalVenta`, `metodoPago`, `fechaVenta`, `totalNeto`, `noFactura`, `created_at`, `updated_at`) VALUES
(1, 7, 8, 53, 'Efectivo', '2017-08-18', 52, '99b97adc-232b-312e-95c5-d98d1b5e1b9d', '2024-01-05 01:43:57', '2024-01-05 01:43:57'),
(2, 6, 6, 62, 'Efectivo', '2011-05-02', 47, '1b96efb7-725d-3ba9-9ed7-e892a462b675', '2024-01-05 01:43:57', '2024-01-05 01:43:57'),
(3, 8, 10, 16, 'Efectivo', '2006-10-05', 23, 'b97b0649-0b70-32ad-87c8-3b383859cfe8', '2024-01-05 01:43:57', '2024-01-05 01:43:57'),
(4, 5, 5, 93, 'Tarjeta', '2012-04-25', 26, '0fc7f5ee-f85e-376e-996e-92d2c4bb643a', '2024-01-05 01:43:57', '2024-01-05 01:43:57'),
(5, 10, 6, 14, 'Tarjeta', '1989-05-26', 62, '45cb8c44-018e-38de-aa1a-26b334e820ab', '2024-01-05 01:43:57', '2024-01-05 01:43:57'),
(6, 9, 2, 90, 'Efectivo', '2020-11-01', 72, '74042717-817b-310d-879e-2a19fa2e816b', '2024-01-05 01:43:57', '2024-01-05 01:43:57'),
(7, 8, 5, 63, 'Efectivo', '1996-04-05', 46, 'f7a34335-9d62-3a2d-ae08-0618cf4ea625', '2024-01-05 01:43:57', '2024-01-05 01:43:57'),
(8, 4, 1, 82, 'Efectivo', '1972-06-15', 78, 'a90f1d9f-9710-3e17-ad43-11cb582ecd88', '2024-01-05 01:43:57', '2024-01-05 01:43:57'),
(9, 1, 8, 33, 'Efectivo', '1990-11-27', 56, '228e8c19-a385-356a-a5f5-4d48e61f7ad2', '2024-01-05 01:43:57', '2024-01-05 01:43:57'),
(10, 4, 4, 99, 'Efectivo', '1989-11-16', 43, '44cbca89-507a-3b89-895d-217ea4e123af', '2024-01-05 01:43:57', '2024-01-05 01:43:57'),
(11, 10, 9, 91, 'Efectivo', '1973-10-10', 15, '0af15dfe-af8e-3463-8d84-aa2a8e95c1a5', '2024-01-05 01:43:57', '2024-01-05 01:43:57'),
(12, 10, 5, 56, 'Efectivo', '2015-12-20', 74, '893e4c52-984a-36ea-a773-cc14874632d3', '2024-01-05 01:43:57', '2024-01-05 01:43:57'),
(13, 3, 1, 81, 'Tarjeta', '1991-06-30', 66, '815bf5ba-66f9-307b-8b5f-5613f6592e32', '2024-01-05 01:43:57', '2024-01-05 01:43:57'),
(14, 3, 4, 92, 'Tarjeta', '2022-10-01', 19, 'fb49c2dd-4ab4-3380-8278-3bfdf8d8e966', '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(15, 6, 6, 63, 'Efectivo', '2015-12-14', 28, 'f8a60c4f-8737-3fea-9289-dfc71d370c31', '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(16, 3, 5, 91, 'Tarjeta', '2015-08-21', 49, '0f558d3e-b7a8-39e8-8a97-39c6569c6e96', '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(17, 7, 6, 12, 'Tarjeta', '1981-08-02', 30, '4ad59eb2-01b3-3fb9-9bad-20db297a7cc5', '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(18, 6, 3, 19, 'Efectivo', '1994-12-18', 50, '72535302-b3a9-3017-82ef-e815852df7bc', '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(19, 1, 5, 39, 'Tarjeta', '1984-06-22', 51, '13eb3c70-4439-3a1e-8e18-cc35d4d22aff', '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(20, 3, 5, 61, 'Efectivo', '1974-03-21', 51, '9ba82d3a-7793-3ab7-b6ee-a8dffeedda7b', '2024-01-05 01:43:58', '2024-01-05 01:43:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas_productos`
--

CREATE TABLE `ventas_productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `venta_id` bigint(20) UNSIGNED NOT NULL,
  `producto_id` bigint(20) UNSIGNED NOT NULL,
  `precio` int(11) NOT NULL,
  `costo` int(11) NOT NULL,
  `cantidadVendida` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `fechaVenta` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ventas_productos`
--

INSERT INTO `ventas_productos` (`id`, `venta_id`, `producto_id`, `precio`, `costo`, `cantidadVendida`, `total`, `fechaVenta`, `created_at`, `updated_at`) VALUES
(1, 12, 2, 48, 11, 3, 65, '1995-05-11', '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(2, 19, 10, 38, 42, 1, 129, '1998-11-14', '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(3, 10, 6, 55, 27, 9, 406, '1990-07-04', '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(4, 19, 4, 82, 21, 3, 55, '2016-04-01', '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(5, 7, 6, 95, 15, 10, 201, '2014-07-30', '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(6, 9, 2, 100, 21, 1, 147, '2005-08-08', '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(7, 6, 6, 47, 30, 9, 338, '2022-06-05', '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(8, 20, 1, 10, 20, 2, 387, '2011-08-08', '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(9, 2, 1, 33, 50, 2, 174, '1992-08-05', '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(10, 10, 3, 51, 14, 4, 288, '1992-09-18', '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(11, 14, 2, 12, 22, 10, 101, '2020-09-24', '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(12, 6, 2, 71, 35, 7, 275, '1993-12-13', '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(13, 5, 5, 97, 45, 7, 420, '1974-11-01', '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(14, 11, 1, 11, 47, 8, 256, '2015-07-17', '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(15, 4, 4, 50, 39, 5, 179, '2005-11-04', '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(16, 10, 7, 90, 37, 8, 407, '2008-04-02', '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(17, 12, 1, 41, 50, 7, 401, '1974-07-04', '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(18, 20, 5, 65, 42, 7, 225, '2018-11-13', '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(19, 6, 10, 23, 32, 9, 209, '1977-01-10', '2024-01-05 01:43:58', '2024-01-05 01:43:58'),
(20, 6, 2, 29, 16, 5, 392, '1993-10-14', '2024-01-05 01:43:58', '2024-01-05 01:43:58');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `compras_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `compras_productos`
--
ALTER TABLE `compras_productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `compras_productos_compra_id_foreign` (`compra_id`),
  ADD KEY `compras_productos_producto_id_foreign` (`producto_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ventas_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `ventas_productos`
--
ALTER TABLE `ventas_productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ventas_productos_venta_id_foreign` (`venta_id`),
  ADD KEY `ventas_productos_producto_id_foreign` (`producto_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `compras_productos`
--
ALTER TABLE `compras_productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `ventas_productos`
--
ALTER TABLE `ventas_productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `compras_productos`
--
ALTER TABLE `compras_productos`
  ADD CONSTRAINT `compras_productos_compra_id_foreign` FOREIGN KEY (`compra_id`) REFERENCES `compras` (`id`),
  ADD CONSTRAINT `compras_productos_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `ventas_productos`
--
ALTER TABLE `ventas_productos`
  ADD CONSTRAINT `ventas_productos_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`),
  ADD CONSTRAINT `ventas_productos_venta_id_foreign` FOREIGN KEY (`venta_id`) REFERENCES `ventas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
