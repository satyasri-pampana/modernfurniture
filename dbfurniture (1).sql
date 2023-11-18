-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2023 at 02:02 PM
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
-- Database: `dbfurniture`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(50) NOT NULL,
  `itemname` varchar(50) NOT NULL,
  `itemprice` int(50) NOT NULL,
  `imageurl` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `itemname`, `itemprice`, `imageurl`) VALUES
(1, 'modernchair', 899, 'c1.jpg'),
(2, 'woodenchair', 999, 'c2.jpg'),
(3, 'modernchair', 1099, 'c3.jpg'),
(4, 'dressingtable', 3000, 'd1.jpg'),
(5, 'dressingtable', 5000, 'd2.jpg'),
(6, 'dressingtable', 2500, 'd3.jpg'),
(7, 'woodenbed', 9999, 'b1.jpg'),
(8, 'woodenbed', 15999, 'b2.jpg'),
(9, 'modernbed', 11999, 'b3.jpg'),
(10, 'woodendinningtable', 10999, 'dd1.jpg'),
(11, 'woodendinningtable', 15999, 'dd2.jpg'),
(12, 'woodendinningtable', 9999, 'dd3.jpg'),
(13, 'woodenstudytable', 5999, 's1.jpg'),
(14, 'modernstudytable', 10999, 's2.jpg'),
(15, 'woodenstudytable', 3999, 's3.jpg'),
(16, 'sofa', 10999, 'ss1.jpg'),
(17, 'sofa', 12999, 'ss2.jpg'),
(18, 'designersofaset', 11999, 'ss3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `categoriestable`
--

CREATE TABLE `categoriestable` (
  `categoryid` varchar(50) NOT NULL,
  `categoryname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categoriestable`
--

INSERT INTO `categoriestable` (`categoryid`, `categoryname`) VALUES
('c001', 'Chair'),
('c002', 'Dressing table'),
('c003', 'Study table'),
('c004', 'Sofa'),
('c005', 'Bed'),
('c006', 'Dining table');

-- --------------------------------------------------------

--
-- Table structure for table `furniture_booking`
--

CREATE TABLE `furniture_booking` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `description` text NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `booking_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `furniture_booking`
--

INSERT INTO `furniture_booking` (`id`, `name`, `email`, `phone`, `address`, `description`, `image_url`, `booking_date`) VALUES
(2, 'Pampana satya sri ', 'pampanaks195@gmail.com', '9603504345', '1/196, Rama Krishna nagar colony ', 'bed', 'off1.jpg', '2023-11-03 08:22:32'),
(3, 'Pampana satya sri ', 'pampanaks195@gmail.com', '9603504345', '1/196, Rama Krishna nagar colony ', 'bed', 'off1.jpg', '2023-11-03 08:25:25'),
(4, 'pampana chandra kala', 'pampanaks195@gmail.com', '9603504345', 'Kapileswarapuram', 'p2', 'off1.jpg', '2023-11-03 08:38:43'),
(5, 'kiran yallamilli', 'pampanasatyasri21le426@vsm.edu.in', '06305852520', 'Kapileswarapuram', 'bed', 'p1.jpg', '2023-11-04 08:49:02'),
(6, 'satya', 'pampanaks195@gmail.com', '09603504345', 'Kapileswarapuram', 'hm', 'p1.jpg', '2023-11-05 01:02:12'),
(7, 'satya', 'pampanaks195@gmail.com', '09603504345', 'Kapileswarapuram', 'hm', 'p1.jpg', '2023-11-05 01:34:25'),
(8, 'satya', 'pampanaks195@gmail.com', '09603504345', 'Kapileswarapuram', 'hm', 'p1.jpg', '2023-11-05 01:49:10'),
(9, 'satya', 'pampanaks195@gmail.com', '09603504345', 'Kapileswarapuram', 'hm', 'p1.jpg', '2023-11-08 04:09:50'),
(10, 'satya', 'pampanaks195@gmail.com', '09603504345', 'Kapileswarapuram', 'hm', 'p1.jpg', '2023-11-08 04:15:17'),
(11, 'satya', 'pampanaks195@gmail.com', '09603504345', 'Kapileswarapuram', '96', 'p1.jpg', '2023-11-08 04:15:38'),
(12, 'satya', 'pampanaks195@gmail.com', '09603504345', 'Kapileswarapuram', '96', 'p1.jpg', '2023-11-08 04:17:57'),
(13, 'satya', 'pampanaks195@gmail.com', '09603504345', 'Kapileswarapuram', '96', 'p1.jpg', '2023-11-08 06:29:51'),
(14, 'satya', 'pampanaks195@gmail.com', '09603504345', 'Kapileswarapuram', '96', 'p1.jpg', '2023-11-08 07:25:31'),
(15, 'satya', 'pampanaks195@gmail.com', '09603504345', 'Kapileswarapuram', 'hm', 'p1.jpg', '2023-11-08 08:24:14'),
(16, 'satya', 'pampanaks195@gmail.com', '09603504345', 'Kapileswarapuram', ';l.kiju', 'p2.jpg', '2023-11-08 22:44:42'),
(17, 'satya', 'pampanaks195@gmail.com', '09603504345', 'Kapileswarapuram', 'as', 'off3.jpg', '2023-11-12 01:43:49'),
(18, 'suresh pampana', 'sureshchinna921@gmail.com', '', 'dfgnhj', 'xsdfgb', '', '2023-11-16 15:18:23'),
(19, 'suresh pampanaxcvb', 'sureshchinna921@gmail.com', '', 'dfgnhj', 'xcv', '', '2023-11-16 15:20:38'),
(20, 'suresh pampanaxcvb', 'sureshchinna921@gmail.com', '', 'dfgnhj', 'xc', '', '2023-11-16 15:32:26'),
(21, 'suresh pampanaxcvb', 'sureshchinna921@gmail.com', '', 'dfgnhj', 'f', '', '2023-11-17 05:46:04'),
(22, 'satya', 'sureshchinna921@gmail.com', '', 'kapileswarapuram', 'good', '', '2023-11-17 11:01:35'),
(23, 'satya', 'pampanaks195@gmail.com', '', 'Kapileswarapuram', 'good', '', '2023-11-17 11:05:02'),
(24, 'satya', 'pampanaks195@gmail.com', '', 'Kapileswarapuram', 'good', '', '2023-11-17 11:06:42'),
(25, 'satya', 'pampanaks195@gmail.com', '', 'Kapileswarapuram', 'good', '', '2023-11-17 11:13:11'),
(26, 'satya', 'pampanaks195@gmail.com', '', 'Kapileswarapuram', 'good', '', '2023-11-17 11:15:22'),
(27, 'satya', 'pampanaks195@gmail.com', '', 'Kapileswarapuram', 'good', '', '2023-11-17 11:52:05'),
(28, 'satya', 'pampanaks195@gmail.com', '', 'Kapileswarapuram', 'ok', '', '2023-11-17 11:54:28'),
(29, 'satya', 'pampanaks195@gmail.com', '', 'Kapileswarapuram', 'sd', '', '2023-11-17 12:00:08'),
(30, 'satya', 'pampanaks195@gmail.com', '', 'Kapileswarapuram', 'ok', '', '2023-11-18 05:43:42'),
(31, 'satya', 'pampanaks195@gmail.com', '', 'Kapileswarapuram', 'ok', '', '2023-11-18 05:46:25'),
(32, 'satya', 'pampanaks195@gmail.com', '', 'Kapileswarapuram', 'ok', '', '2023-11-18 05:53:42'),
(33, 'satya', 'pampanaks195@gmail.com', '', 'Kapileswarapuram', 'ok', '', '2023-11-18 05:56:00');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `orderdetailid` varchar(50) NOT NULL,
  `orderid` varchar(50) NOT NULL,
  `productid` varchar(50) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `subtotal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orderstable`
--

CREATE TABLE `orderstable` (
  `orderid` varchar(50) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `orderdate` varchar(50) NOT NULL,
  `totalamount` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_status` varchar(50) NOT NULL,
  `payment_id` varchar(50) NOT NULL,
  `added_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `name`, `amount`, `payment_status`, `payment_id`, `added_on`) VALUES
(1, 'satya', 78965, 'complete', 'pay_MxvusRUYpXqstu', '2023-11-08'),
(2, '', 0, 'pending', '', '2023-11-08'),
(3, 'satya', 78965, 'complete', 'pay_MxwcdJtZWbQuvU', '2023-11-08'),
(4, 'satya', 78965, 'pending', '', '2023-11-08'),
(5, 'satya', 78965, 'complete', 'pay_MxzHRbSI4ASbSe', '2023-11-08'),
(6, 'satya', 78965, 'complete', 'pay_MxzLH2J8tLHERe', '2023-11-08'),
(7, 'satya', 1000, 'complete', 'pay_My0Hbi4hpOpU1Q', '2023-11-08'),
(8, 'satya', 78965, 'complete', 'pay_My1Hs22j0OE3vR', '2023-11-08'),
(9, 'satya', 12000, 'pending', '', '2023-11-09'),
(10, 'satya', 12000, 'pending', '', '2023-11-09'),
(11, 'satya', 12000, 'pending', '', '2023-11-09'),
(12, 'satya', 12000, 'pending', '', '2023-11-09'),
(13, 'satya', 12000, 'pending', '', '2023-11-09'),
(14, 'satya', 12000, 'pending', '', '2023-11-09'),
(15, 'satya', 12000, 'pending', '', '2023-11-09'),
(16, 'satya', 12000, 'pending', '', '2023-11-09'),
(17, 'satya', 12000, 'pending', '', '2023-11-09'),
(18, 'satya', 12000, 'pending', '', '2023-11-09'),
(19, 'satya', 12000, 'pending', '', '2023-11-09'),
(20, 'satya', 78965, 'complete', 'pay_MyEzkBXGvu3p71', '2023-11-09'),
(21, 'satya', 78965, 'complete', 'pay_MzNyCGJMx90Q2g', '2023-11-12'),
(22, 'suresh pampana', 1000, 'complete', 'pay_N1ADUWA1YBOxJB', '2023-11-16'),
(23, 'suresh pampana', 1000, 'complete', 'pay_N1BzGgJMRtNGph', '2023-11-16'),
(24, 'satya', 112200, 'pending', '', '2023-11-17'),
(25, 'satya', 9999, 'complete', 'pay_N1WCj1fPIxpR1Y', '2023-11-17'),
(26, 'satya', 9999, 'complete', 'pay_N1WED9WfbS4Cxt', '2023-11-17'),
(27, 'satya', 9999, 'complete', 'pay_N1WLCFqnqZ3aWF', '2023-11-17'),
(28, 'satya', 9999, 'complete', 'pay_N1WNNth7MYdSSU', '2023-11-17'),
(29, 'satya', 9999, 'complete', 'pay_N1X0Ij2PPgovS2', '2023-11-17'),
(30, 'satya', 9999, 'complete', 'pay_N1X2agbd3LHH8K', '2023-11-17'),
(31, 'satya', 9999, 'complete', 'pay_N1XAEZxuBwxmeG', '2023-11-17'),
(32, 'satya', 5000, 'complete', 'pay_N1pGNkw7zBPcng', '2023-11-18'),
(33, 'satya', 5000, 'complete', 'pay_N1pIu9zltZ34O7', '2023-11-18'),
(34, 'satya', 15999, 'complete', 'pay_N1pQvkeZP38Yt9', '2023-11-18'),
(35, 'satya', 15999, 'complete', 'pay_N1pSzjhYeK7Zpn', '2023-11-18');

-- --------------------------------------------------------

--
-- Table structure for table `producttable`
--

CREATE TABLE `producttable` (
  `productid` varchar(50) NOT NULL,
  `productname` varchar(50) NOT NULL,
  `description` varchar(225) NOT NULL,
  `price` varchar(50) NOT NULL,
  `categoryid` varchar(50) NOT NULL,
  `imageurl` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `producttable`
--

INSERT INTO `producttable` (`productid`, `productname`, `description`, `price`, `categoryid`, `imageurl`) VALUES
('P001', 'chair', 'A seat with a back on which one person sites, typically having four legs and often having arms.', '999', 'c001', 'dist/img/p1.jpg'),
('p002', 'Dressing table', 'The dressing table is an ideal piece of furniture to start putting order.\r\n', '9999', 'c002', 'dist/img/p2.jpg'),
('p003', 'Study table', 'A seat with a back on which one person sites, typically having four legs and often having arms.', '5999', 'c003', 'dist/img/p3.jpg'),
('p004', 'Sofa', 'A sofa is a piece of furniture that a few people can comfortably sit on together.', '12999', 'c004', 'dist/img/p4.jpg'),
('p005', 'Bed', 'A piece of furniture on or in which to lie and sleep.', '15999', 'c005', 'dist/img/p5.jpg'),
('p006', 'Diningtable', 'A dining table and one or more dining chairs which feature similar or complementary designs.', '30999', 'c006', 'dist/img/p6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `username` varchar(20) NOT NULL,
  `password` varchar(60) NOT NULL,
  `level` varchar(10) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`username`, `password`, `level`, `userid`) VALUES
('satya', 'e10adc3949ba59abbe56e057f20f883e', 'admin', 1),
('uma', '654321', 'user', 2);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(50) NOT NULL,
  `itemname` varchar(50) NOT NULL,
  `itemprice` int(50) NOT NULL,
  `imageurl` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `itemname`, `itemprice`, `imageurl`) VALUES
(101, 'modernchair', 899, 'c1.jpg'),
(102, 'woodenchair', 999, 'c2.jpg'),
(103, 'modernchair', 1099, 'c3.jpg'),
(104, 'dressingtable', 3000, 'd1.jpg'),
(105, 'dressingtable', 5000, 'd2.jpg'),
(106, 'dressingtable', 2500, 'd3.jpg'),
(107, 'woodenbed', 9999, 'b1.jpg'),
(108, 'woodenbed', 15999, 'b2.jpg'),
(109, 'modernbed', 11999, 'b3.jpg'),
(110, 'woodendinningtable', 10999, 'dd1.jpg'),
(111, 'woodendinningtable', 15999, 'dd2.jpg'),
(112, 'woodendinningtable', 9999, 'dd3.jpg'),
(113, 'woodenstudytable', 5999, 's1.jpg'),
(114, 'modernstudytable', 10999, 's2.jpg'),
(115, 'woodenstudytable', 3999, 's3.jpg'),
(116, 'sofa', 10999, 'ss1.jpg'),
(117, 'sofa', 12999, 'ss2.jpg'),
(118, 'designersofaset', 11999, 'ss3.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categoriestable`
--
ALTER TABLE `categoriestable`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `furniture_booking`
--
ALTER TABLE `furniture_booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`orderdetailid`),
  ADD KEY `orderid` (`orderid`),
  ADD KEY `productid` (`productid`);

--
-- Indexes for table `orderstable`
--
ALTER TABLE `orderstable`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `producttable`
--
ALTER TABLE `producttable`
  ADD PRIMARY KEY (`productid`),
  ADD KEY `categoryid` (`categoryid`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `furniture_booking`
--
ALTER TABLE `furniture_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderid` FOREIGN KEY (`orderid`) REFERENCES `orderstable` (`orderid`),
  ADD CONSTRAINT `productid` FOREIGN KEY (`productid`) REFERENCES `producttable` (`productid`);

--
-- Constraints for table `producttable`
--
ALTER TABLE `producttable`
  ADD CONSTRAINT `categoryid` FOREIGN KEY (`categoryid`) REFERENCES `categoriestable` (`categoryid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
