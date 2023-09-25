-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2023 at 07:32 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sintijaipb21`
--

-- --------------------------------------------------------

--
-- Table structure for table `darbinieks`
--

CREATE TABLE `darbinieks` (
  `Darbinieks` int(10) NOT NULL,
  `Vards` varchar(255) NOT NULL,
  `Uzvards` varchar(255) NOT NULL,
  `PieredzeGados` int(10) NOT NULL,
  `TelefonaNr` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `darbinieks`
--

INSERT INTO `darbinieks` (`Darbinieks`, `Vards`, `Uzvards`, `PieredzeGados`, `TelefonaNr`) VALUES
(1, 'vards', 'uzvards', 5, 29903216),
(2, 'vards', 'uzvards', 3, 26643513),
(3, 'vards', 'uzvards', 2, 25622099),
(4, 'vards', 'uzvards', 4, 20066320);

-- --------------------------------------------------------

--
-- Table structure for table `klients`
--

CREATE TABLE `klients` (
  `KlientaID` int(10) NOT NULL,
  `PasutijumaID` varchar(255) NOT NULL,
  `PakalpojumID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `klients`
--

INSERT INTO `klients` (`KlientaID`, `PasutijumaID`, `PakalpojumID`) VALUES
(1, '101', '201'),
(2, '102', '202'),
(3, '103', '203'),
(4, '104', '204');

-- --------------------------------------------------------

--
-- Table structure for table `komponentes`
--

CREATE TABLE `komponentes` (
  `komponentesID` int(10) NOT NULL,
  `komponente` varchar(255) NOT NULL,
  `SpecifikacijasID` int(10) NOT NULL,
  `stavoklis` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pasutijums`
--

CREATE TABLE `pasutijums` (
  `PasutijumaID` int(10) NOT NULL,
  `Datums` date NOT NULL,
  `Produkts` varchar(255) NOT NULL,
  `KlientaVards` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pasutijums`
--

INSERT INTO `pasutijums` (`PasutijumaID`, `Datums`, `Produkts`, `KlientaVards`) VALUES
(1, '2023-09-13', 'Product1', 'User1'),
(2, '2023-09-14', 'Product2', 'User2'),
(3, '2023-09-15', 'Product3', 'User3'),
(4, '2023-09-16', 'Product4', 'User4');

-- --------------------------------------------------------

--
-- Table structure for table `pievedums`
--

CREATE TABLE `pievedums` (
  `PievedumsID` int(10) NOT NULL,
  `ProduktsID` int(10) NOT NULL,
  `Skaits` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pievedums`
--

INSERT INTO `pievedums` (`PievedumsID`, `ProduktsID`, `Skaits`) VALUES
(1, 101, '5'),
(2, 102, '10'),
(3, 103, '3'),
(4, 104, '7');

-- --------------------------------------------------------

--
-- Table structure for table `produkts`
--

CREATE TABLE `produkts` (
  `ProduktsID` int(10) NOT NULL,
  `Produkts` varchar(255) NOT NULL,
  `Cena` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produkts`
--

INSERT INTO `produkts` (`ProduktsID`, `Produkts`, `Cena`) VALUES
(1, 'dators', 581),
(2, 'telefons', 320),
(3, 'televizors', 800);

-- --------------------------------------------------------

--
-- Table structure for table `specifikacijas`
--

CREATE TABLE `specifikacijas` (
  `SpecifikacijasID` int(255) NOT NULL,
  `RAM` varchar(255) NOT NULL,
  `PSU` varchar(255) NOT NULL,
  `GPU` varchar(255) NOT NULL,
  `CPU` varchar(255) NOT NULL,
  `Korpuss` varchar(255) NOT NULL,
  `HDD` varchar(255) NOT NULL,
  `SDD` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `darbinieks`
--
ALTER TABLE `darbinieks`
  ADD PRIMARY KEY (`Darbinieks`);

--
-- Indexes for table `klients`
--
ALTER TABLE `klients`
  ADD PRIMARY KEY (`KlientaID`);

--
-- Indexes for table `komponentes`
--
ALTER TABLE `komponentes`
  ADD PRIMARY KEY (`komponentesID`);

--
-- Indexes for table `pasutijums`
--
ALTER TABLE `pasutijums`
  ADD PRIMARY KEY (`PasutijumaID`);

--
-- Indexes for table `pievedums`
--
ALTER TABLE `pievedums`
  ADD PRIMARY KEY (`PievedumsID`);

--
-- Indexes for table `produkts`
--
ALTER TABLE `produkts`
  ADD PRIMARY KEY (`ProduktsID`);

--
-- Indexes for table `specifikacijas`
--
ALTER TABLE `specifikacijas`
  ADD PRIMARY KEY (`SpecifikacijasID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `darbinieks`
--
ALTER TABLE `darbinieks`
  MODIFY `Darbinieks` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `klients`
--
ALTER TABLE `klients`
  MODIFY `KlientaID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `komponentes`
--
ALTER TABLE `komponentes`
  MODIFY `komponentesID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pasutijums`
--
ALTER TABLE `pasutijums`
  MODIFY `PasutijumaID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pievedums`
--
ALTER TABLE `pievedums`
  MODIFY `PievedumsID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `produkts`
--
ALTER TABLE `produkts`
  MODIFY `ProduktsID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `specifikacijas`
--
ALTER TABLE `specifikacijas`
  MODIFY `SpecifikacijasID` int(255) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
