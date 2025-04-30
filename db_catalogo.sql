-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Apr 30, 2025 alle 13:58
-- Versione del server: 10.4.32-MariaDB
-- Versione PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_catalogo`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `articolo`
--

CREATE TABLE `articolo` (
  `id_articolo` int(11) NOT NULL,
  `marchio` varchar(50) NOT NULL,
  `modello` varchar(50) NOT NULL,
  `sistema_operativo` varchar(50) NOT NULL,
  `memoria` varchar(50) NOT NULL,
  `prezzo` decimal(10,2) NOT NULL,
  `immagine` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `articolo`
--

INSERT INTO `articolo` (`id_articolo`, `marchio`, `modello`, `sistema_operativo`, `memoria`, `prezzo`, `immagine`) VALUES
(1, 'Apple', 'iPhone 14', 'iOS', '128 GB', 999.99, '/images/iphone14.jpg'),
(2, 'Samsung', 'Galaxy S23', 'Android', '256 GB', 899.99, '/images/GalaxyS23.jpg'),
(3, 'Xiaomi', 'Redmi Note 12', 'Android', '128 GB', 299.99, '/images/RedmiNote12.jpg'),
(4, 'Google', 'Pixel 7', 'Android', '128 GB', 649.99, '/images/Pixel7.jpg'),
(5, 'Huawei', 'P50 Pro', 'HarmonyOS', '256 GB', 799.99, '/images/P50Pro.jpg'),
(6, 'Sony', 'Xperia 1 V', 'Android', '512 GB', 1199.99, '/images/Xperia1v.webp'),
(7, 'OnePlus', '11', 'Android', '256 GB', 699.99, '/images/oneplus11.jpg'),
(8, 'Oppo', 'Find X6', 'Android', '256 GB', 749.99, '/images/FindX6.jpg'),
(9, 'Motorola', 'Edge 40', 'Android', '128 GB', 549.99, '/images/Edge40.jpg'),
(10, 'Nokia', 'G60', 'Android', '128 GB', 299.99, '/images/NokiaG60.jpeg');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `articolo`
--
ALTER TABLE `articolo`
  ADD PRIMARY KEY (`id_articolo`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `articolo`
--
ALTER TABLE `articolo`
  MODIFY `id_articolo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
