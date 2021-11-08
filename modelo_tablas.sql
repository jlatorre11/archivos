-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.25 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para modelo
CREATE DATABASE IF NOT EXISTS `modelo` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `modelo`;

-- Volcando estructura para tabla modelo.aeropuerto
CREATE TABLE IF NOT EXISTS `aeropuerto` (
  `idAeropuerto` int NOT NULL,
  `sigla` char(4) DEFAULT NULL,
  `iata` char(4) DEFAULT NULL,
  `nombre` char(32) DEFAULT NULL,
  `municipio` char(32) DEFAULT NULL,
  `departamento` char(32) DEFAULT NULL,
  PRIMARY KEY (`idAeropuerto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla modelo.fecha
CREATE TABLE IF NOT EXISTS `fecha` (
  `idFecha` int NOT NULL,
  `Año` year DEFAULT NULL,
  `Mes` int DEFAULT NULL,
  PRIMARY KEY (`idFecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla modelo.hechoregistrodevuelos
CREATE TABLE IF NOT EXISTS `hechoregistrodevuelos` (
  `id` int NOT NULL,
  `idAeropuertoOrigen` int DEFAULT NULL,
  `idAeropuertoDestino` int DEFAULT NULL,
  `idFecha` int DEFAULT NULL,
  `numVuelos` int DEFAULT NULL,
  `numSillas` int DEFAULT NULL,
  `numPasajeros` int DEFAULT NULL,
  `cargaOfrecida` int DEFAULT NULL,
  `cargaBordo` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idAeropuertoOrigen` (`idAeropuertoOrigen`),
  KEY `idAeropuertoDestino` (`idAeropuertoDestino`),
  KEY `idFecha` (`idFecha`),
  CONSTRAINT `hechoregistrodevuelos_ibfk_1` FOREIGN KEY (`idAeropuertoOrigen`) REFERENCES `aeropuerto` (`idAeropuerto`),
  CONSTRAINT `hechoregistrodevuelos_ibfk_2` FOREIGN KEY (`idAeropuertoDestino`) REFERENCES `aeropuerto` (`idAeropuerto`),
  CONSTRAINT `hechoregistrodevuelos_ibfk_3` FOREIGN KEY (`idFecha`) REFERENCES `fecha` (`idFecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- La exportación de datos fue deseleccionada.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
