-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2021 at 07:25 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `javatest`
--

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `itemID` int(11) NOT NULL,
  `itemName` varchar(100) NOT NULL,
  `itemImage` varchar(200) NOT NULL,
  `itemCategory` text NOT NULL,
  `itemQuantity` int(11) NOT NULL,
  `itemUnit` int(11) NOT NULL,
  `itemUnitPrice` int(11) NOT NULL,
  `itemStatus` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`itemID`, `itemName`, `itemImage`, `itemCategory`, `itemQuantity`, `itemUnit`, `itemUnitPrice`, `itemStatus`) VALUES
(1, 'Cracking The Coding Interview', 'https://miro.medium.com/max/476/1*P7pTGa-PMfCq1VWuNJioig.png', 'Book', 4, 1, 1599, 'In-Stock'),
(2, 'Advanced C++', 'https://rukminim1.flixcart.com/image/352/352/k2p1q4w0/book/1/3/5/advanced-c-original-imafhzt6hz9djpgv.jpeg?q=70', 'Book', 3, 1, 1099, 'In-Stock'),
(3, 'Head First Java', 'https://www.guru99.com/images/uploads/2012/06/head-first-java-original_v1.jpg', 'Book', 1, 3, 2999, 'In-Stock'),
(8, 'Cello Butterflow', 'https://images-na.ssl-images-amazon.com/images/I/61TxXDiHKbL._SL1500_.jpg', 'Pen', 1, 20, 10, 'In-Stock');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `salutation` text NOT NULL,
  `name` text NOT NULL,
  `lname` text NOT NULL,
  `gender` text NOT NULL,
  `phone` varchar(11) NOT NULL,
  `email` varchar(60) NOT NULL,
  `address` varchar(200) NOT NULL,
  `role` text NOT NULL,
  `status` text NOT NULL,
  `pass` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `salutation`, `name`, `lname`, `gender`, `phone`, `email`, `address`, `role`, `status`, `pass`) VALUES
(13, 'Mr', 'Tester11', 'Test', 'Male', '1234567891', '1234@email.com', 'Tester Av', 'Tester1', 'Intern', '1234'),
(14, 'Mr', 'Siddharth', 'Gaur', 'Male', '8512040519', 'SiddharthTest@gmail.com', 'Delhi', 'Developer', 'Intern', 'a123'),
(15, 'Mr', 'Tester1', 'Test', 'Male', '0101010100', '01tester@gmail.com', 'Tester Avenue', 'Tester', 'Intern', '123test');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`itemID`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `itemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
