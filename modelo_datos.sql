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

-- Volcando datos para la tabla modelo.aeropuerto: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `aeropuerto` DISABLE KEYS */;
INSERT INTO `aeropuerto` (`idAeropuerto`, `sigla`, `iata`, `nombre`, `municipio`, `departamento`) VALUES
	(1, 'BOG', 'BOG', 'EL DORADO', 'Bogotá, D.C.', 'Bogotá, D.C.'),
	(2, 'CUC', 'CUC', 'CAMILO DAZA', 'San José de Cúcuta', 'Norte de Santander'),
	(3, 'UIB', 'UIB', 'EL CARAÑO', 'Quibdó', 'Chocó'),
	(4, 'IBE', 'IBE', 'PERALES', 'Ibagué', 'Tolima'),
	(5, 'FLA', 'FLA', 'GUSTAVO ARTUNDUAGA PAREDES', 'Florencia', 'Caquetá');
/*!40000 ALTER TABLE `aeropuerto` ENABLE KEYS */;

-- Volcando datos para la tabla modelo.fecha: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `fecha` DISABLE KEYS */;
INSERT INTO `fecha` (`idFecha`, `Año`, `Mes`) VALUES
	(1, '2012', 1),
	(2, '2013', 5),
	(3, '2013', 10),
	(4, '2012', 4);
/*!40000 ALTER TABLE `fecha` ENABLE KEYS */;

-- Volcando datos para la tabla modelo.hechoregistrodevuelos: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `hechoregistrodevuelos` DISABLE KEYS */;
INSERT INTO `hechoregistrodevuelos` (`id`, `idAeropuertoOrigen`, `idAeropuertoDestino`, `idFecha`, `numVuelos`, `numSillas`, `numPasajeros`, `cargaOfrecida`, `cargaBordo`) VALUES
	(1, 1, 2, 1, 1, 5, 4, 100, 50),
	(2, 3, 1, 2, 30, 1110, 873, 24000, 4222),
	(3, 4, 1, 3, 98, 3626, 2866, 56056, 2323),
	(4, 5, 1, 4, 1, 5, 4, 0, 0);
/*!40000 ALTER TABLE `hechoregistrodevuelos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
