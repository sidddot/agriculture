-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2023 at 06:07 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `farmland`
--

-- --------------------------------------------------------

--
-- Table structure for table `agro`
--

CREATE TABLE `agro` (
  `role` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phno` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `agro`
--

INSERT INTO `agro` (`role`, `username`, `password`, `email`, `phno`) VALUES
('farmer', 'Sidharth', '4444', 'sid@gmail.com', '9898989999'),
('farmer', 'Sujit', '666666', 'suj@gmail.com', '7878787877'),
('customer', 'Swaroop', '55555', 'swa@gmail.com', '7676767677'),
('farmer', 'Syed', '222222', 'syed@gmail.com', '0979779977'),
('farmer', 'Santhosh', '7777777', 'sant@gmail.com', '0979778877'),
('customer', 'Rahul', '7788', 'rahul@gmail.com', '7887998745');

-- --------------------------------------------------------

--
-- Table structure for table `crop`
--

CREATE TABLE `crop` (
  `username` varchar(20) NOT NULL,
  `crop_name` varchar(20) NOT NULL,
  `quantity` decimal(10,0) NOT NULL,
  `cost` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `crop`
--

INSERT INTO `crop` (`username`, `crop_name`, `quantity`, `cost`) VALUES
('Sidharth', 'onion', '5', '50'),
('Sidharth', 'tomato', '6', '20'),
('Sujit', 'onion', '5', '50'),
('Sujit', 'potato', '30', '30'),
('Sujit', 'cucumber', '36', '5');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `username` varchar(20) NOT NULL,
  `customer_name` varchar(20) NOT NULL,
  `crop_name` varchar(20) NOT NULL,
  `total_cost` decimal(10,0) NOT NULL,
  `quantity` decimal(10,0) NOT NULL,
  `dateandtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`username`, `customer_name`, `crop_name`, `total_cost`, `quantity`, `dateandtime`) VALUES
('Sidharth', 'Swaroop', 'onion', '10', '1', '2023-03-03 14:08:06'),
('Sujit', 'Swaroop', 'potato', '15', '2', '2023-03-03 14:53:47');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
