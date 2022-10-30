-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 24-10-2022 a las 06:07:42
-- Versión del servidor: 5.6.35
-- Versión de PHP: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `don_reyner_sas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id` int(11) NOT NULL,
  `Nombre_Completo` varchar(300) NOT NULL,
  `No_Identificacion` int(50) NOT NULL,
  `Ciudad` varchar(100) NOT NULL,
  `Precio` double NOT NULL,
  `Descuento` double NOT NULL,
  `Costo_Transporte` double NOT NULL,
  `Tiempo_Entrega` int(50) NOT NULL,
  `Average_Mercancia_Defectuosa` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id`, `Nombre_Completo`, `No_Identificacion`, `Ciudad`, `Precio`, `Descuento`, `Costo_Transporte`, `Tiempo_Entrega`, `Average_Mercancia_Defectuosa`) VALUES
(1, 'A-verfrut', 830098675, 'Tibu', 137965, 7693, 48251, 3, 43),
(2, 'Carnipollo', 900675432, 'Bucaramanga', 113974, 18787, 16195, 11, 56),
(3, 'Doña Papa', 899045678, 'Ubate', 93913, 18586, 13785, 2, 72),
(5, 'Comercial Mario Magnani Inostroza E.I.R.L.', 890888009, 'Bogota', 223189, 12627, 67629, 26, 23),
(6, 'Comercializadora Gil-H', 860908976, 'San Gil', 240610, 593, 12588, 2, 21),
(7, 'Corabastos', 860009345, 'Bogota', 238270, 15843, 4580, 14, 6),
(8, 'Deposito el Cacique', 900675341, 'Ramiriqui', 171877, 12739, 71658, 18, 91),
(9, 'Frubana', 900001231, 'Bogota', 196292, 18878, 27862, 21, 84),
(10, 'Gomas Naturales', 902902374, 'Tunja', 227447, 3476, 62462, 16, 18),
(11, 'Mi Peru Products Export', 908008008, 'Lima', 284056, 28549, 19122, 17, 75),
(12, 'Palanexport 11c', 870965078, 'Bucaramanga', 171240, 971, 9563, 7, 38),
(13, 'Prado Green', 900345646, 'Barranquilla', 241043, 17743, 30360, 20, 7),
(14, 'PROVERFRU', 900023464, 'Cali', 229338, 7310, 3040, 21, 24),
(15, 'Rancho San Luis', 901011011, 'Duitama', 213462, 12606, 45200, 20, 39),
(16, 'Seis Arre Alimentos', 900987456, 'Villavicencio', 241501, 10599, 29623, 30, 63),
(17, 'Tradecom foods international', 900905637, 'Medellin', 95021, 17022, 1618, 7, 33);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id`,`No_Identificacion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
