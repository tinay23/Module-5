-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 09, 2023 at 09:40 PM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Module5`
--

-- --------------------------------------------------------

--
-- Table structure for table `userInvestments`
--

CREATE TABLE `userInvestments` (
  `userId` int(11) NOT NULL,
  `investmentName` varchar(255) DEFAULT NULL,
  `investmentGoals` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userInvestments`
--

INSERT INTO `userInvestments` (`userId`, `investmentName`, `investmentGoals`) VALUES
(1, 'Stocks', 'Long-term growth'),
(2, 'KpinkyBond', 'RetirementFund'),
(3, 'SavingsAccount', 'Emergency fund');

-- --------------------------------------------------------

--
-- Table structure for table `userMoneyData`
--

CREATE TABLE `userMoneyData` (
  `moneyId` int(11) NOT NULL,
  `savingsAmount` decimal(10,2) DEFAULT NULL,
  `dateSaved` date DEFAULT NULL,
  `timeSaved` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userMoneyData`
--

INSERT INTO `userMoneyData` (`moneyId`, `savingsAmount`, `dateSaved`, `timeSaved`, `userId`) VALUES
(3, '10.50', '2023-04-18', '2023-05-09 21:35:48', 1),
(4, '100.00', '2023-04-18', '2023-05-09 21:35:57', 2),
(5, '30.00', '2023-04-18', '2023-05-09 21:36:08', 1);

-- --------------------------------------------------------

--
-- Table structure for table `userMoneyUsed`
--

CREATE TABLE `userMoneyUsed` (
  `userId` int(11) NOT NULL,
  `moneyTakenOut` decimal(10,2) DEFAULT NULL,
  `transactionDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userMoneyUsed`
--

INSERT INTO `userMoneyUsed` (`userId`, `moneyTakenOut`, `transactionDate`) VALUES
(1, '100.50', '2023-05-04 14:30:00'),
(2, '340.00', '2023-05-04 16:21:00'),
(3, '50.25', '2023-05-03 09:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `age` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `age`) VALUES
(1, 'John', 'Doe', 25),
(2, 'Kpinky', 'Santiago', 39),
(3, 'Vivi', 'Gonzalez', 18);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `userInvestments`
--
ALTER TABLE `userInvestments`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `userMoneyData`
--
ALTER TABLE `userMoneyData`
  ADD PRIMARY KEY (`moneyId`);

--
-- Indexes for table `userMoneyUsed`
--
ALTER TABLE `userMoneyUsed`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `userInvestments`
--
ALTER TABLE `userInvestments`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `userMoneyData`
--
ALTER TABLE `userMoneyData`
  MODIFY `moneyId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `userMoneyUsed`
--
ALTER TABLE `userMoneyUsed`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
