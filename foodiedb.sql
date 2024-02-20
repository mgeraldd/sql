-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2024 at 03:51 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodiedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerID` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phoneNumber` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerID`, `firstName`, `lastName`, `email`, `phoneNumber`) VALUES
(1, 'Brian ', 'obegi', 'brian.mburu2022@gmail.com', '01123678645'),
(3, 'Tina', 'Mkara', 'Mkaratina@gmail.com', '0769570708'),
(4, 'Timon', 'Omondi', 'omonditimon@gmail.com', '0726817183'),
(6, 'joshua', 'kiwaya', 'kiwayajosh@gmail.com', '0735318165'),
(7, 'Andrew', 'wamaitho', 'wamaithodrew@gmail.com', '0722123456'),
(8, 'raphael ', 'mwangeka', 'raphaelmwangeka@gmail.com', '0733878793'),
(10, 'mike', 'mwenda', 'mike22@gmail.com', '01123678648'),
(11, 'fredrick', 'Mwashumbe', 'fredmwash@gmail.com', '0732894036');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `productID` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`productID`, `productName`, `quantity`, `price`) VALUES
(233, 'RADIATOR', 200, '1500.00'),
(234, 'butter', 200, '340.00'),
(266, 'AAA3 Batteries', 30, '150.00'),
(466, 'Printing ream', 20, '1500.00'),
(2365, 'delmonte mango', 0, '150.00'),
(2368, 'bags', 50, '450.00'),
(3442, 'pork', 300, '150.00'),
(3567, 'CONDOMS', 0, '100.00'),
(6799, 'Aquamist 5litre', 100, '350.00'),
(7721, 'car toys', 280, '200.00');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `saleID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `totalAmount` decimal(10,2) NOT NULL,
  `productID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`saleID`, `customerID`, `productName`, `quantity`, `price`, `totalAmount`, `productID`) VALUES
(17, 4, 'pillows', 24, '16.00', '384.00', 5674),
(21, 1, 'bags', 8, '200.00', '1600.00', 2663),
(26, 1, 'car toys', 10, '150.00', '1500.00', 7721),
(30, 4, 'delmonte mango', 50, '150.00', '7500.00', 2365),
(31, 7, 'butter', 10, '150.00', '1500.00', 234),
(32, 4, 'bags', 200, '150.00', '30000.00', 2368),
(33, 4, 'bags', 110, '220.00', '24200.00', 2368),
(35, 4, 'car toys', 20, '200.00', '4000.00', 7721),
(36, 3, 'Printing ream', 20, '1500.00', '30000.00', 466),
(37, 1, 'delmonte mango', 200, '150.00', '30000.00', 2365),
(38, 1, 'CONDOMS', 250, '100.00', '25000.00', 3567),
(39, 4, 'CONDOMS', 50, '1500.00', '75000.00', 3567);

-- --------------------------------------------------------

--
-- Table structure for table `userprofile`
--

CREATE TABLE `userprofile` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userprofile`
--

INSERT INTO `userprofile` (`id`, `username`, `email`, `password`) VALUES
(1, 'test', 'test@gmail.com', '123'),
(2, 'baba lao', 'baba@gmail.com', 'baba123'),
(3, 'baba lao', 'baba@gmail.com', 'baba123'),
(4, 'baba lao', 'baba@gmail.com', 'baba123'),
(5, 'ian', 'ian@gmail.com', '123'),
(6, 'ian', 'ian@gmail.com', '123'),
(7, 'ian', 'ian@gmail.com', '123'),
(8, 'ian', 'ian@gmail.com', '123'),
(9, 'ian', 'ian@gmail.com', 'ian123'),
(11, 'mgeraldd', 'mbogholi64@gmail.com', 'nomaneno15'),
(12, '', '', ''),
(14, '', '', ''),
(15, '', '', ''),
(16, '', '', ''),
(17, '', '', ''),
(18, '', '', ''),
(19, '', '', ''),
(20, '', '', ''),
(21, '', '', ''),
(22, '', '', ''),
(23, '', '', ''),
(24, 'BRIAN', 'brian.mburu2022@gmail.com', '12345678'),
(26, 'nolimit', '', '1234'),
(27, 'nolimit', '', '123'),
(28, 'nolimit', '', '123'),
(29, 'nolimit', '', '123'),
(30, 'nolimit', '', '123'),
(31, 'nolimit', '', '123'),
(32, 'nolimit', '', '123'),
(33, 'mgeraldd', 'mbogholi644@gmail.com', 'savecash'),
(34, 'nolimit', '', '124'),
(35, 'gerald', '', '123'),
(36, 'jose', 'jose@gmail.com', '1234'),
(37, 'jose', 'jose@gmail.com', '1234'),
(38, 'nolimit', '', '123'),
(39, '', '', ''),
(40, '', '', ''),
(41, '', '', ''),
(42, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nationalID` varchar(40) NOT NULL,
  `firstName` varchar(60) NOT NULL,
  `lastName` varchar(40) NOT NULL,
  `phoneNumber` varchar(40) NOT NULL,
  `mpesaCode` varchar(40) NOT NULL,
  `depositedAmount` decimal(10,2) NOT NULL,
  `withdrawalAmount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nationalID`, `firstName`, `lastName`, `phoneNumber`, `mpesaCode`, `depositedAmount`, `withdrawalAmount`) VALUES
(4, '24242452', 'Tim Omondi', 'Odinga', '+254711457943', 'RQHUSO171', '0.00', '699.00'),
(5, '39180252', 'Olivia Makau', 'Mutuku', '0799799223', 'RQHUSO171', '60000.00', '0.00'),
(6, '7789301', 'Marion Mutuku', 'Chelagat', '0711336789', 'RQHUSOQY67', '0.00', '4500.00'),
(7, '464656799', 'nolimit', 'bender', '01123678943', 'gukokoi', '4000.00', '0.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerID`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`productID`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`saleID`),
  ADD KEY `customerID` (`customerID`);

--
-- Indexes for table `userprofile`
--
ALTER TABLE `userprofile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7722;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `saleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `userprofile`
--
ALTER TABLE `userprofile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customers` (`customerID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
