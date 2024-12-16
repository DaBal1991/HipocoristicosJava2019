-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-12-2019 a las 19:08:41
-- Versión del servidor: 5.5.32
-- Versión de PHP: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `hipocoristicos`
--
CREATE DATABASE IF NOT EXISTS `hipocoristicos` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hipocoristicos`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equivalencias`
--

CREATE TABLE IF NOT EXISTS `equivalencias` (
  `Equivalencia_1` varchar(50) NOT NULL,
  `Equivalencia_2` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `equivalencias`
--

INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Juancho', 'Juan');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Juanchi', 'Juancho');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Martín', 'Tincho');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Martincho', 'Martín');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Paco', 'Francisco');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Pacho', 'Pancho');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Quico', 'Pacho');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Pancho', 'Francisco');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('José', 'Jose');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Pepe', 'Jose');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Federico', 'Fede');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Quico', 'Fede');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Adolfo', 'Fito');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Benjamín', 'Mincho');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Mincho', 'Benja');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Emanuel', 'Ema');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Ema', 'Manu');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Enrique', 'Quique');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Chiche', 'Quique');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Lalo', 'Gonzalo');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Gonzalo', 'Gonza');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Ignacio', 'Nacho');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Matías', 'Mati');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Mati', 'Matute');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Patricio', 'Patri');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Patri', 'Pato');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Roberto', 'Tito');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Tito', 'Beto');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Beatriz', 'Beti');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Bea', 'Beti');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Cecilia', 'Chechu');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Ceci', 'Chechi');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Chechu', 'Chechi');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Lola', 'Dolores');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Lola', 'Lolita');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Estefanía', 'Estefi');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Estefanía', 'Fani');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Guadalupe', 'Lupita');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Lupita', 'Guada');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Lupe', 'Guada');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Isabel', 'Chabela');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Chabela', 'Isa');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Laura', 'Lau');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Lali', 'Lau');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Lau', 'Lauri');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Luciana', 'Lu');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Lu', 'Lucha');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Luli', 'Luciana');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Marce', 'Marcela');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Chela', 'Marce');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Noemí', 'Mimí');
INSERT INTO `equivalencias` (`Equivalencia_1`, `Equivalencia_2`) VALUES ('Mimí', 'Noe');


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
