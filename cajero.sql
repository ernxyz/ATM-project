-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3308
-- Tiempo de generación: 24-09-2022 a las 20:59:54
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cajero`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tcliente`
--

CREATE TABLE `tcliente` (
  `idCli` int(7) NOT NULL,
  `dniCli` int(7) NOT NULL,
  `nomCli` varchar(40) COLLATE utf8_spanish2_ci NOT NULL,
  `apeCli` varchar(40) COLLATE utf8_spanish2_ci NOT NULL,
  `tlfCli` varchar(40) COLLATE utf8_spanish2_ci NOT NULL,
  `dirCli` varchar(60) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tcliente`
--

INSERT INTO `tcliente` (`idCli`, `dniCli`, `nomCli`, `apeCli`, `tlfCli`, `dirCli`) VALUES
(1, 2986435, 'John', 'Doe', '96551230', 'Av. Alfredo Benavides, Santiago de Surco'),
(4, 6320647, 'Luca', 'Lara', '936512010', 'Jr. Piura, Miraflores, Lima'),
(9, 3548652, 'Luisina', 'Ramos', '952356120', 'Surquillo, Lima, Perú');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tcuentadolar`
--

CREATE TABLE `tcuentadolar` (
  `idCueDol` int(7) NOT NULL,
  `idCli` int(7) NOT NULL,
  `numCueDol` varchar(40) COLLATE utf8_spanish2_ci NOT NULL,
  `salCueDol` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tcuentadolar`
--

INSERT INTO `tcuentadolar` (`idCueDol`, `idCli`, `numCueDol`, `salCueDol`) VALUES
(1, 1, '21754-59546-98465-32014', 7300),
(7, 9, '21754-11235-64352-86754', 1100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tcuentasol`
--

CREATE TABLE `tcuentasol` (
  `idCueSol` int(7) NOT NULL,
  `idCli` int(7) NOT NULL,
  `numCueSol` varchar(40) COLLATE utf8_spanish2_ci NOT NULL,
  `salCueSol` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tcuentasol`
--

INSERT INTO `tcuentasol` (`idCueSol`, `idCli`, `numCueSol`, `salCueSol`) VALUES
(1, 1, '26549-94610-65697-20361', 6500),
(2, 4, '26549-56132-97985-86453', 8000),
(5, 9, '26549-12412-65356-84654', 1000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tdeposito`
--

CREATE TABLE `tdeposito` (
  `numDep` int(7) NOT NULL,
  `idUsu` int(7) NOT NULL,
  `idTipCue` int(1) NOT NULL,
  `monDep` int(9) NOT NULL,
  `fecDep` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tdeposito`
--

INSERT INTO `tdeposito` (`numDep`, `idUsu`, `idTipCue`, `monDep`, `fecDep`) VALUES
(2, 1, 1, 1500, '2022-09-23 01:30:37'),
(7, 2, 1, 1000, '2022-09-23 16:12:41'),
(8, 2, 1, 1500, '2022-09-23 16:33:59'),
(9, 1, 2, 1200, '2022-09-23 16:35:28'),
(11, 4, 1, 1500, '2022-09-23 20:01:11'),
(15, 4, 1, 10, '2022-09-23 22:08:01'),
(16, 4, 2, 20, '2022-09-23 22:08:12'),
(17, 2, 1, 100, '2022-09-23 22:24:33'),
(18, 2, 1, 2000, '2022-09-24 18:18:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tretiro`
--

CREATE TABLE `tretiro` (
  `numRet` int(7) NOT NULL,
  `idUsu` int(7) NOT NULL,
  `idTipCue` int(1) NOT NULL,
  `monRet` int(9) NOT NULL,
  `fecRet` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tretiro`
--

INSERT INTO `tretiro` (`numRet`, `idUsu`, `idTipCue`, `monRet`, `fecRet`) VALUES
(2, 1, 2, 1500, '2022-09-23 01:31:45'),
(7, 3, 1, 200, '2022-09-23 19:43:27'),
(8, 3, 2, 200, '2022-09-23 19:43:36'),
(9, 3, 1, 100, '2022-09-23 19:46:45'),
(11, 3, 2, 100, '2022-09-23 19:48:23'),
(12, 4, 2, 50, '2022-09-23 20:01:30'),
(13, 4, 1, 300, '2022-09-23 20:29:35'),
(14, 4, 1, 300, '2022-09-23 20:30:56'),
(26, 4, 2, 80, '2022-09-23 21:23:32'),
(27, 4, 1, 70, '2022-09-23 21:24:24'),
(31, 4, 2, 40, '2022-09-23 22:09:39'),
(32, 4, 2, 400, '2022-09-23 22:12:29'),
(33, 4, 1, 60, '2022-09-24 18:20:27'),
(34, 4, 2, 200, '2022-09-24 18:21:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ttipodecuenta`
--

CREATE TABLE `ttipodecuenta` (
  `idTipCue` int(1) NOT NULL,
  `nomTipoCue` varchar(40) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `ttipodecuenta`
--

INSERT INTO `ttipodecuenta` (`idTipCue`, `nomTipoCue`) VALUES
(1, 'Soles'),
(2, 'Dólares');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tusuario`
--

CREATE TABLE `tusuario` (
  `idUsu` int(7) NOT NULL,
  `idCueSol` int(7) DEFAULT NULL,
  `idCueDol` int(7) DEFAULT NULL,
  `nicUsu` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `conUsu` varchar(20) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tusuario`
--

INSERT INTO `tusuario` (`idUsu`, `idCueSol`, `idCueDol`, `nicUsu`, `conUsu`) VALUES
(1, 1, 1, 'jdoe', 'jdoe132'),
(2, 2, NULL, 'llara11', 'lucal1122'),
(3, NULL, NULL, 'ado', '123'),
(4, 5, 7, 'anisiul', 'lu985');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tcliente`
--
ALTER TABLE `tcliente`
  ADD PRIMARY KEY (`idCli`);

--
-- Indices de la tabla `tcuentadolar`
--
ALTER TABLE `tcuentadolar`
  ADD PRIMARY KEY (`idCueDol`),
  ADD KEY `idCli` (`idCli`);

--
-- Indices de la tabla `tcuentasol`
--
ALTER TABLE `tcuentasol`
  ADD PRIMARY KEY (`idCueSol`),
  ADD KEY `idCli` (`idCli`);

--
-- Indices de la tabla `tdeposito`
--
ALTER TABLE `tdeposito`
  ADD PRIMARY KEY (`numDep`),
  ADD KEY `idUsuario` (`idUsu`),
  ADD KEY `idTipCue` (`idTipCue`);

--
-- Indices de la tabla `tretiro`
--
ALTER TABLE `tretiro`
  ADD PRIMARY KEY (`numRet`),
  ADD KEY `idUsuario` (`idUsu`),
  ADD KEY `idTipCue` (`idTipCue`);

--
-- Indices de la tabla `ttipodecuenta`
--
ALTER TABLE `ttipodecuenta`
  ADD PRIMARY KEY (`idTipCue`);

--
-- Indices de la tabla `tusuario`
--
ALTER TABLE `tusuario`
  ADD PRIMARY KEY (`idUsu`),
  ADD KEY `idCueSol` (`idCueSol`),
  ADD KEY `idCueDol` (`idCueDol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tcliente`
--
ALTER TABLE `tcliente`
  MODIFY `idCli` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tcuentadolar`
--
ALTER TABLE `tcuentadolar`
  MODIFY `idCueDol` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tcuentasol`
--
ALTER TABLE `tcuentasol`
  MODIFY `idCueSol` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tdeposito`
--
ALTER TABLE `tdeposito`
  MODIFY `numDep` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `tretiro`
--
ALTER TABLE `tretiro`
  MODIFY `numRet` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `ttipodecuenta`
--
ALTER TABLE `ttipodecuenta`
  MODIFY `idTipCue` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tusuario`
--
ALTER TABLE `tusuario`
  MODIFY `idUsu` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tcuentadolar`
--
ALTER TABLE `tcuentadolar`
  ADD CONSTRAINT `tcuentadolar_ibfk_1` FOREIGN KEY (`idCli`) REFERENCES `tcliente` (`idCli`);

--
-- Filtros para la tabla `tcuentasol`
--
ALTER TABLE `tcuentasol`
  ADD CONSTRAINT `tcuentasol_ibfk_1` FOREIGN KEY (`idCli`) REFERENCES `tcliente` (`idCli`);

--
-- Filtros para la tabla `tdeposito`
--
ALTER TABLE `tdeposito`
  ADD CONSTRAINT `tdeposito_ibfk_1` FOREIGN KEY (`idUsu`) REFERENCES `tusuario` (`idUsu`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tdeposito_ibfk_2` FOREIGN KEY (`idTipCue`) REFERENCES `ttipodecuenta` (`idTipCue`);

--
-- Filtros para la tabla `tretiro`
--
ALTER TABLE `tretiro`
  ADD CONSTRAINT `tretiro_ibfk_1` FOREIGN KEY (`idUsu`) REFERENCES `tusuario` (`idUsu`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tretiro_ibfk_2` FOREIGN KEY (`idTipCue`) REFERENCES `ttipodecuenta` (`idTipCue`);

--
-- Filtros para la tabla `tusuario`
--
ALTER TABLE `tusuario`
  ADD CONSTRAINT `tusuario_ibfk_1` FOREIGN KEY (`idCueSol`) REFERENCES `tcuentasol` (`idCueSol`),
  ADD CONSTRAINT `tusuario_ibfk_2` FOREIGN KEY (`idCueDol`) REFERENCES `tcuentadolar` (`idCueDol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
