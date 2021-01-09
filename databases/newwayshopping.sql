-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3008
-- Generation Time: Jan 09, 2021 at 10:35 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newwayshopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(250) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_type` varchar(100) NOT NULL,
  `product_cost` varchar(100) NOT NULL,
  `product_image` varchar(50) NOT NULL,
  `product_image_1` varchar(50) NOT NULL,
  `product_image_2` varchar(50) NOT NULL,
  `start_date` varchar(200) NOT NULL,
  `end_date` varchar(200) NOT NULL,
  `puser` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_type`, `product_cost`, `product_image`, `product_image_1`, `product_image_2`, `start_date`, `end_date`, `puser`) VALUES
(15, 'avatar', 'Clothes(Female)', '2000 ₹', 'DSC_0184 - Copy.jpg', 'DSC_1595.jpg', 'photo.jpeg', '2021-01-06', '2021-01-21', 'sachisabya41999@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `serial_number` int(250) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `alternative_phone_number` varchar(20) DEFAULT NULL,
  `date_of_birth` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address_1` varchar(500) NOT NULL,
  `address_2` varchar(500) DEFAULT NULL,
  `country` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `postal_code` int(10) NOT NULL,
  `image` varchar(500) DEFAULT 'default.png',
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`serial_number`, `name`, `email`, `password`, `phone_number`, `alternative_phone_number`, `date_of_birth`, `gender`, `address_1`, `address_2`, `country`, `state`, `postal_code`, `image`, `reg_date`) VALUES
(55, 'Sabyasachi', 'sachisabya41999@gmail.com', '8bc36b1b8cf0927a05a2268bd8d4d66c', '6294683141', '8809836648', '2020-12-28', 'Male', 'Mahavir Colony, Beur More,Anisabad Patna', 'Mahavir Colony, Beur More,Anisabad Patna\r\nbeur', 'United States', 'Bihar', 800002, 'resume.jpg', '2020-12-15 18:28:10'),
(56, 'Gagandeep', 'gagan.training@gmail.com', '526641bd710f0e083d38ed9a216391c3', '7896541230', '7896541230', '1995-10-07', 'Male', 'barabazar', 'chandannagar', 'United States', 'West Bengal', 712136, 'default.png', '2020-12-23 14:04:59');

-- --------------------------------------------------------

--
-- Table structure for table `reset_link`
--

CREATE TABLE `reset_link` (
  `Sl_No` int(11) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `res_key` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reset_link`
--

INSERT INTO `reset_link` (`Sl_No`, `Email`, `res_key`) VALUES
(15, 'gagan.training@gmail.com', '5514b4b4748d01ea4f0d38e4cc385f50'),
(18, 'sachisabya41999@gmail.com', 'e6126ef30e28b1af14b7983075fcbd9f');

-- --------------------------------------------------------

--
-- Table structure for table `saler`
--

CREATE TABLE `saler` (
  `saler_id` int(250) NOT NULL,
  `saler_first_name` varchar(100) NOT NULL,
  `saler_last_name` varchar(100) NOT NULL,
  `saler_email` varchar(100) NOT NULL,
  `saler_gender` varchar(50) NOT NULL,
  `saler_contact_number` int(50) NOT NULL,
  `saler_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `pic` varchar(500) NOT NULL,
  `name1` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`email`, `password`, `pic`, `name1`) VALUES
('sachisabya41999@gmail.com', '2233', '', ''),
('sachisabya41999@gmail.com', 'ffff', '', ''),
('Sabyasachi', 'sachisabya41999@gmail.com', 'ssscc', ''),
('Sabyasachi', 'sachisabya41999@gmail.com', 'nbbbb', 'Sabyasachi'),
('Sabyasachi', 'sachisabya41999@gmail.com', 'sabya', 'Sabyasachi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `users` (`puser`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`serial_number`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `reset_link`
--
ALTER TABLE `reset_link`
  ADD PRIMARY KEY (`Sl_No`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `saler`
--
ALTER TABLE `saler`
  ADD PRIMARY KEY (`saler_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `serial_number` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `reset_link`
--
ALTER TABLE `reset_link`
  MODIFY `Sl_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `saler`
--
ALTER TABLE `saler`
  MODIFY `saler_id` int(250) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `users` FOREIGN KEY (`puser`) REFERENCES `registration` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
