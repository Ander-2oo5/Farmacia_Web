-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-07-2025 a las 18:45:50
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `farmacia_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `id` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `rol` varchar(20) NOT NULL,
  `username` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`id`, `password`, `rol`, `username`) VALUES
(2, '$2a$10$kMVo/R2Ud9EHtAHy25CGv.ful7qgzAoipHjVHZOsRpMdH22XSW6NC', 'ADMINISTRADOR', 'Anderson'),
(3, '$2a$10$Yg//SXKT2KR7fZFznZJOUuoGEK.8zxhKpAVFrxG33.YjwVjtSEx4O', 'ADMINISTRADOR', 'admin1'),
(4, '$2a$10$ailOluB2pXyEVTt7.SXvv.hVFHnRSVUgiVjoV7PSNzRhAqCemD9E.', 'EMPLEADO', 'empleado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `dni` varchar(8) NOT NULL,
  `nombres` varchar(255) NOT NULL,
  `apellido_paterno` varchar(255) NOT NULL,
  `apellido_materno` varchar(255) NOT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `fuente_datos` varchar(255) NOT NULL COMMENT 'RENIEC o MANUAL',
  `fecha_registro` datetime NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellidos` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `dni`, `nombres`, `apellido_paterno`, `apellido_materno`, `telefono`, `fuente_datos`, `fecha_registro`, `nombre`, `apellidos`) VALUES
(1, '12345678', 'Juan Carlos', 'Pérez', 'García', '987654321', 'MANUAL', '2025-07-22 23:49:30', NULL, NULL),
(2, '87654321', 'María Elena', 'Rodríguez', 'López', '965432187', 'MANUAL', '2025-07-22 23:49:30', NULL, NULL),
(3, '11223344', 'Carlos Alberto', 'Mendoza', 'Silva', '912345678', 'MANUAL', '2025-07-22 23:49:30', NULL, NULL),
(4, '72549148', 'AARON GABRIEL', 'SILVA', 'CHORRES', NULL, 'RENIEC', '2025-07-23 01:40:59', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `numero_documento` varchar(255) NOT NULL,
  `actividad_economica` varchar(255) DEFAULT NULL,
  `comercio_exterior` varchar(255) DEFAULT NULL,
  `condicion` varchar(255) DEFAULT NULL,
  `departamento` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `distrito` varchar(255) DEFAULT NULL,
  `dpto` varchar(255) DEFAULT NULL,
  `es_agente_retencion` bit(1) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `interior` varchar(255) DEFAULT NULL,
  `kilometro` varchar(255) DEFAULT NULL,
  `lote` varchar(255) DEFAULT NULL,
  `manzana` varchar(255) DEFAULT NULL,
  `numero` varchar(255) DEFAULT NULL,
  `numero_trabajadores` varchar(255) DEFAULT NULL,
  `provincia` varchar(255) DEFAULT NULL,
  `razon_social` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `tipo_contabilidad` varchar(255) DEFAULT NULL,
  `tipo_documento` varchar(255) DEFAULT NULL,
  `tipo_facturacion` varchar(255) DEFAULT NULL,
  `ubigeo` varchar(255) DEFAULT NULL,
  `via_nombre` varchar(255) DEFAULT NULL,
  `via_tipo` varchar(255) DEFAULT NULL,
  `zona_codigo` varchar(255) DEFAULT NULL,
  `zona_tipo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `precio` double NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha_vencimiento` date DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `categoria` varchar(255) DEFAULT NULL,
  `sede_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `nombre`, `precio`, `cantidad`, `fecha_vencimiento`, `descripcion`, `categoria`, `sede_id`) VALUES
(1, 'Paracetamol 500mg', 15.5, 100, '2025-12-31', 'Analgésico y antipirético', 'Analgésicos', NULL),
(2, 'Ibuprofeno 400mg', 18, 80, '2025-11-30', 'Antiinflamatorio no esteroideo', 'Antiinflamatorios', NULL),
(3, 'Amoxicilina 500mg', 25, 50, '2025-10-15', 'Antibiótico de amplio espectro', 'Antibióticos', NULL),
(4, 'Omeprazol 20mg', 22, 60, '2026-01-20', 'Inhibidor de la bomba de protones', 'Gastroenterología', NULL),
(5, 'Loratadina 10mg', 12, 90, '2025-09-30', 'Antihistamínico', 'Antialérgicos', NULL),
(6, 'Acetaminofén jarabe', 20, 40, '2025-08-15', 'Analgésico pediátrico', 'Pediátricos', NULL),
(7, 'Vitamina C 1000mg', 35, 70, '2026-03-10', 'Suplemento vitamínico', 'Vitaminas', NULL),
(8, 'Diclofenaco gel', 28, 30, '2025-07-25', 'Antiinflamatorio tópico', 'Uso tópico', NULL),
(9, 'Salbutamol inhalador', 45, 25, '2025-12-05', 'Broncodilatador', 'Respiratorio', NULL),
(10, 'Metformina 850mg', 30, 55, '2026-02-28', 'Antidiabético', 'Endocrinología', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sede`
--

CREATE TABLE `sede` (
  `id` bigint(20) NOT NULL,
  `activo` bit(1) DEFAULT NULL,
  `ciudad` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` bigint(20) NOT NULL,
  `activo` bit(1) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nombre_completo` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `rol` enum('ADMIN','ALMACENERO','ENCARGADO','VENDEDOR') DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `sede_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id` int(11) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `fecha_registro` date DEFAULT NULL,
  `precio_total` double NOT NULL,
  `sede_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`id`, `idcliente`, `fecha_registro`, `precio_total`, `sede_id`) VALUES
(1, 1, '2025-07-22', 33.5, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta_detalle`
--

CREATE TABLE `venta_detalle` (
  `id` int(11) NOT NULL,
  `idventa` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `venta_detalle`
--

INSERT INTO `venta_detalle` (`id`, `idventa`, `idproducto`, `cantidad`) VALUES
(1, 1, 1, 2),
(2, 1, 5, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKagwk9oxodesgtfatjssbjhhx9` (`username`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dni` (`dni`),
  ADD KEY `idx_dni` (`dni`),
  ADD KEY `idx_nombres` (`nombres`),
  ADD KEY `idx_apellido_paterno` (`apellido_paterno`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`numero_documento`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_nombre` (`nombre`),
  ADD KEY `idx_categoria` (`categoria`),
  ADD KEY `FK44jr6gfdja5uxjikty1rmi8m5` (`sede_id`);

--
-- Indices de la tabla `sede`
--
ALTER TABLE `sede`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKe9l88h7h03andkii6mjhkedm3` (`sede_id`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_idcliente` (`idcliente`),
  ADD KEY `idx_fecha_registro` (`fecha_registro`),
  ADD KEY `FKamcxas9st9ab5b4tasnaq7d70` (`sede_id`);

--
-- Indices de la tabla `venta_detalle`
--
ALTER TABLE `venta_detalle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_idventa` (`idventa`),
  ADD KEY `idx_idproducto` (`idproducto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administradores`
--
ALTER TABLE `administradores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `sede`
--
ALTER TABLE `sede`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `venta_detalle`
--
ALTER TABLE `venta_detalle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `FK44jr6gfdja5uxjikty1rmi8m5` FOREIGN KEY (`sede_id`) REFERENCES `sede` (`id`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `FKe9l88h7h03andkii6mjhkedm3` FOREIGN KEY (`sede_id`) REFERENCES `sede` (`id`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `FKamcxas9st9ab5b4tasnaq7d70` FOREIGN KEY (`sede_id`) REFERENCES `sede` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
