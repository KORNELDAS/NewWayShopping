-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3008
-- Generation Time: Jan 20, 2021 at 03:46 PM
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
-- Table structure for table `bidders`
--

CREATE TABLE `bidders` (
  `bidder_id` int(250) NOT NULL,
  `name` varchar(500) NOT NULL,
  `product_name` varchar(500) NOT NULL,
  `product_id` int(250) NOT NULL,
  `biding_price` varchar(500) DEFAULT NULL,
  `base_price` varchar(500) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `user_email` varchar(500) NOT NULL,
  `status` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bidders`
--

INSERT INTO `bidders` (`bidder_id`, `name`, `product_name`, `product_id`, `biding_price`, `base_price`, `phone`, `user_email`, `status`) VALUES
(2, 'rahul kumar', 'Embroidered Fashion Cotton Blend Saree  (Green)', 27, '602', '498', '9973910344', 'rahulkumar41999@gmail.com', NULL),
(7, 'rahul kumar', 'Woodness Liberty Solid Wood Bunk Bed  (Finish Color - Dark Brown)', 28, '12403', '12371', '9973910344', 'rahulkumar41999@gmail.com', NULL);

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
  `end_date` varchar(200) NOT NULL,
  `description` varchar(5000) NOT NULL DEFAULT 'No description',
  `puser` varchar(250) NOT NULL,
  `status` int(10) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_type`, `product_cost`, `product_image`, `product_image_1`, `product_image_2`, `end_date`, `description`, `puser`, `status`) VALUES
(26, 'Acer Predator Helios 300', 'Laptop', '94990', 'acer laptop1.jpeg', 'acer laptop2.jpeg', 'acer laptop3.jpeg', '2021-01-21T21:54', '\r\nSales Package\r\n2 in 1 Laptop, Power Adaptor, User Guide, Warranty Documents\r\nModel Number\r\n14IIL05\r\nPart Number\r\n81X100NDIN\r\nSeries\r\nIdeapad Flex 5\r\nColor\r\nGraphite Grey\r\nType\r\n2 in 1 Laptop\r\nSuitable For\r\nProcessing & Multitasking\r\nBattery Backup\r\nUpto 10 hours\r\nPower Supply\r\n65 W AC Adapter\r\nMS Office Provided\r\nYes', 'sachisabya41999@gmail.com', 1),
(27, 'Embroidered Fashion Cotton Blend Saree  (Green)', 'Clothes(Female)', '498', 'girl saree1.jpeg', 'girl saree2.jpeg', 'girl saree3.jpeg', '2021-01-19T22:10', 'Style Code\r\nAARS-001AAAGREEN\r\nPattern\r\nEmbroidered\r\nPack of\r\n1\r\nOccasion\r\nParty & Festive\r\nType of Embroidery\r\nZarodosi Embroidery\r\nHand Embroidery\r\nno\r\nEmbroidery Method\r\nMachine\r\nConstruction Type\r\nmachine\r\nFabric Care\r\nWash with Like Colors\r\nFabric\r\nCotton Blend\r\nType\r\nFashion\r\nBlouse Piece\r\nUnstitched\r\nSari Style\r\nRegular Sari\r\nSari Length\r\n5.5\r\nBlouse Piece Length\r\n0.75\r\nWeight\r\n0.3', 'ghoshsupriya159@gmail.com', 1),
(28, 'Woodness Liberty Solid Wood Bunk Bed  (Finish Color - Dark Brown)', 'Furniture', '12371', 'furniture1.jpeg', 'furniture2.jpeg', 'furniture3.jpeg', '2021-01-27T22:15', 'Bed Size: Single\r\nBed Design: Standard Bunk Bed\r\nHeight x Width: 1515 mm x 1975 mm (4 ft 11 in x 6 ft 5 in)\r\nKnock Down - Delivered in non-assembled pieces, installation by service partner', 'rachita666@gmail.com', 1);

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
(55, 'Sabyasachi', 'sachisabya41999@gmail.com', '8bc36b1b8cf0927a05a2268bd8d4d66c', '6294683141', '8809836648', '2020-12-28', 'Male', 'Mahavir Colony, Beur More,Anisabad Patna', 'Mahavir Colony, Beur More,Anisabad Patna\r\nbeur', 'United States', 'Bihar', 800002, 'irrfan-khan-best-hd-photos-download-1080p-whatsapp-dpstatus-images-ommh-667x961.jpg', '2020-12-15 18:28:10'),
(56, 'Gagandeep', 'gagan.training@gmail.com', '526641bd710f0e083d38ed9a216391c3', '7896541230', '7896541230', '1995-10-07', 'Male', 'barabazar', 'chandannagar', 'United States', 'West Bengal', 712136, 'default.png', '2020-12-23 14:04:59'),
(58, 'supriya ghosh', 'ghoshsupriya159@gmail.com', '8bc36b1b8cf0927a05a2268bd8d4d66c', '7903346686', '8809836648', '2021-01-07', 'Male', 'Mahavir Colony, Beur More,Anisabad Patna', 'Mahavir Colony, Beur More,Anisabad Patna\r\nbeur', 'United States', 'West Bengal', 700012, 'default.png', '2021-01-09 10:05:47'),
(59, 'shyam kumar', 'shyamkumar444@gmail.com', '8bc36b1b8cf0927a05a2268bd8d4d66c', '8976564783', '9931715679', '2021-01-06', 'Male', 'Chater, P.s Barahara, Bhojpur( Ara)', 'Chater, P.s Barahara, Bhojpur( Ara)', 'United States', 'Bihar', 802163, 'default.png', '2021-01-14 12:17:50'),
(60, 'rahul kumar', 'rahulkumar41999@gmail.com', '8bc36b1b8cf0927a05a2268bd8d4d66c', '9973910344', '8809836648', '2021-01-23', 'Male', 'Mahavir Colony, Beur More,Anisabad Patna', 'Mahavir Colony, Beur More,Anisabad Patna\r\nbeur', 'United States', 'Bihar', 800002, 'default.png', '2021-01-14 12:19:00'),
(61, 'rachita jha', 'rachita666@gmail.com', '8bc36b1b8cf0927a05a2268bd8d4d66c', '7903346686', '9931715679', '2021-01-26', 'Female', 'Chater, P.s Barahara, Bhojpur( Ara)', 'Chater, P.s Barahara, Bhojpur( Ara)', 'United States', 'Bihar', 800078, 'default.png', '2021-01-14 12:20:08');

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
-- Indexes for table `bidders`
--
ALTER TABLE `bidders`
  ADD PRIMARY KEY (`bidder_id`);

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
-- AUTO_INCREMENT for table `bidders`
--
ALTER TABLE `bidders`
  MODIFY `bidder_id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `serial_number` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

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
