-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2024 at 12:53 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `im101`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `address`) VALUES
(1, 'qwe', 'jebbyjoshua.inte@hcdc.edu.ph', 'qwe'),
(2, 'qwe', 'jebbyjoshua.inte@hcdc.edu.ph', 'qwe'),
(3, 'qwe', 'jebbyjoshua.inte@hcdc.edu.ph', 'qwe'),
(4, 'qwe', '123@gmail.com', 'qwe'),
(5, 'qwe', '123@gmail.com', 'qwe'),
(6, 'qweqwe', 'ijebby098@gmail.com', 'qweqwe'),
(7, 'qweqwe', 'ijebby098@gmail.com', 'qweqwe'),
(8, 'qwe', 'ijebby098@gmail.com', '123123'),
(9, 'qwe', 'ijebby098@gmail.com', '123123'),
(10, 'qwe', 'ijebby098@gmail.com', '123123'),
(11, 'qwe', 'ijebby098@gmail.com', 'qweqeqw123'),
(12, 'qwe', 'ijebby098@gmail.com', 'qweqeqw123'),
(13, 'qwe', 'ijebby098@gmail.com', 'qweqeqw123'),
(14, 'qwe', 'ijebby@yahoo.com', 'qweqwe'),
(15, 'qwe', 'ijebby@yahoo.com', 'qweqwe'),
(16, 'qwe', 'ijebby@yahoo.com', 'qweqwe'),
(17, 'qwe', 'ijebby@yahoo.com', 'qweqwe'),
(18, 'qwe', 'ijebby@yahoo.com', 'qweqwe'),
(19, 'qwe', 'ijebby@yahoo.com', '123123qwe'),
(20, '1qweqwe', '123123@gasd.com', '123'),
(21, '1qweqwe', '123123@gasd.com', '123'),
(22, '1qweqwe', '123123@gasd.com', '123'),
(23, 'asd', 'jebbyjoshua.inte@hcdc.edu.ph', 'qweqwe'),
(24, 'asd', 'jebbyjoshua.inte@hcdc.edu.ph', 'qweqwe'),
(25, 'asd', 'jebbyjoshua.inte@hcdc.edu.ph', 'qweqwe'),
(26, 'asd', 'jebbyjoshua.inte@hcdc.edu.ph', 'qweqwe'),
(27, 'asd', 'jebbyjoshua.inte@hcdc.edu.ph', 'qweqwe'),
(28, 'asd', 'jebbyjoshua.inte@hcdc.edu.ph', 'qweqwe'),
(29, 'asd', 'jebbyjoshua.inte@hcdc.edu.ph', 'qweqwe'),
(30, 'asd', 'jebbyjoshua.inte@hcdc.edu.ph', 'qweqwe'),
(31, 'asd', 'jebbyjoshua.inte@hcdc.edu.ph', 'qweqwe'),
(32, 'asd', 'jebbyjoshua.inte@hcdc.edu.ph', 'qweqwe'),
(33, 'asd', 'jebbyjoshua.inte@hcdc.edu.ph', 'qweqwe'),
(34, 'asd', 'jebbyjoshua.inte@hcdc.edu.ph', 'qweqwe'),
(35, 'asd', 'jebbyjoshua.inte@hcdc.edu.ph', 'qweqwe'),
(36, 'Jebby Joshua S. Inte', 'elizabeth.santonia.9@gmail.com', 'qwqweqw'),
(37, 'Jebby Joshua S. Inte', 'elizabeth.santonia.9@gmail.com', 'qwqweqw'),
(38, 'Jebby Joshua S. Inte', 'elizabeth.santonia.9@gmail.com', 'qwqweqw'),
(39, 'Jebby Joshua S. Inte', 'elizabeth.santonia.9@gmail.com', 'qwqweqw'),
(40, 'qweqwe', 'santoniaelizabeth@gmail.com', 'weqwe'),
(41, 'jebby inte', 'jebbyjoshua.inte@hcdc.edu.ph', 'dona sasa'),
(42, NULL, NULL, NULL),
(43, NULL, NULL, NULL),
(44, 'qwe', 'santoniaelizabeth@gmail.com', 'qweqwe'),
(45, 'qwe', 'santoniaelizabeth@gmail.com', 'qweqwe'),
(46, 'qwe', 'ijebby098@gmail.com', 'wqeqwe'),
(47, 'qweqwe', 'ijebby@yahoo.com', 'qweqwe'),
(48, 'qwe', 'ijebby@yahoo.com', 'qweqwe'),
(49, 'qwe', 'ijebby@yahoo.com', 'qweqwe'),
(50, 'qwe', 'ijebby@yahoo.com', 'qweqwe'),
(51, 'qwe', 'ijebby@yahoo.com', 'qweqwe'),
(52, 'qwe', 'ijebby@yahoo.com', 'qweqwe'),
(53, 'qwe', 'ijebby@yahoo.com', 'qweqwe'),
(54, 'qwe', 'ijebby@yahoo.com', 'qweqwe'),
(55, 'qwe', 'ijebby@yahoo.com', 'qweqwe'),
(56, 'qwe', 'ijebby@yahoo.com', 'qweqwe'),
(57, 'qwe', 'santoniaelizabeth@gmail.com', '123'),
(58, 'qwe', 'santoniaelizabeth@gmail.com', '123'),
(59, '1qweqwe', 'ijebby098@gmail.com', 'l;l'),
(60, NULL, NULL, NULL),
(61, 'qweqwe', 'ijebby098@gmail.com', 'qweqweqw'),
(62, 'qweqwe', 'ijebby098@gmail.com', 'qweqweqw'),
(63, 'qweqwe', 'ijebby098@gmail.com', 'qweqweqw'),
(64, 'qwe', 'ijebby098@gmail.com', 'qweqweqweqweqwe'),
(65, 'qwe', 'ijebby098@gmail.com', 'qweqweqweqweqwe'),
(66, 'qweqwe', 'ijebby098@gmail.com', 'qweqweqwe'),
(67, 'qweqwe', 'ijebby098@gmail.com', 'qweqweqwe'),
(68, 'qwe', 'ijebby098@gmail.com', 'qweqwe'),
(69, 'owen cetlms', 'martin@gmail.com', 'ciudad'),
(70, 'owen', 'owenpilongo@gmail.com', 'pilongo'),
(71, 'qweqweqweqwe', 'jebbyjoshua.inte@hcdc.edu.ph', 'qweqweqwe'),
(72, 'qweqweqweqwe', 'jebbyjoshua.inte@hcdc.edu.ph', 'qweqweqwe'),
(73, '213', '123123@gasd.com', '123'),
(74, '123123', '123123@gasd.com', '123'),
(75, '123123', '123123@gasd.com', '123'),
(76, '123123', '123123@gasd.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `order_date`, `total_price`) VALUES
(6, 6, '2024-09-20 19:04:11', 15.00),
(7, 7, '2024-09-20 19:06:27', 0.00),
(8, 8, '2024-09-20 19:06:46', 35.00),
(9, 9, '2024-09-20 19:06:52', 0.00),
(10, 10, '2024-09-20 19:09:17', 0.00),
(11, 11, '2024-09-20 19:09:34', 40.00),
(12, 12, '2024-09-20 19:12:48', 0.00),
(13, 13, '2024-09-20 19:12:56', 0.00),
(14, 14, '2024-09-20 19:13:04', 50.00),
(15, 15, '2024-09-20 19:17:27', 0.00),
(16, 16, '2024-09-20 19:20:21', 0.00),
(17, 17, '2024-09-20 19:28:26', 0.00),
(18, 18, '2024-09-20 19:29:34', 0.00),
(19, 19, '2024-09-20 19:38:18', 120.00),
(20, 20, '2024-09-20 19:39:15', 235.00),
(21, 21, '2024-09-20 19:40:09', 0.00),
(22, 22, '2024-09-20 19:40:13', 0.00),
(23, 23, '2024-09-20 19:46:25', 200.00),
(24, 24, '2024-09-20 19:46:36', 0.00),
(26, 26, '2024-09-20 19:46:50', 0.00),
(27, 27, '2024-09-20 19:46:56', 0.00),
(28, 28, '2024-09-20 19:47:00', 0.00),
(29, 29, '2024-09-20 19:47:08', 0.00),
(30, 30, '2024-09-20 19:47:13', 0.00),
(31, 31, '2024-09-20 19:47:18', 0.00),
(32, 32, '2024-09-20 19:47:45', 0.00),
(33, 33, '2024-09-20 19:47:54', 0.00),
(34, 34, '2024-09-20 19:48:00', 0.00),
(35, 35, '2024-09-20 19:48:03', 0.00),
(36, 36, '2024-09-20 19:56:44', 90.00),
(37, 37, '2024-09-20 19:59:08', 0.00),
(38, 38, '2024-09-20 19:59:12', 0.00),
(39, 39, '2024-09-20 19:59:32', 0.00),
(40, 40, '2024-09-20 19:59:44', 95.00),
(41, 41, '2024-09-20 20:01:16', 30.00),
(42, 42, '2024-09-20 20:03:11', 0.00),
(43, 43, '2024-09-20 20:03:16', 0.00),
(44, 44, '2024-09-20 20:04:37', 45.00),
(45, 45, '2024-09-20 20:04:41', 0.00),
(46, 46, '2024-09-22 13:45:59', 55.00),
(47, 47, '2024-09-22 14:42:58', 35.00),
(48, 48, '2024-09-22 15:58:33', 200.00),
(49, 49, '2024-09-22 16:00:17', 0.00),
(50, 50, '2024-09-22 16:03:28', 0.00),
(51, 51, '2024-09-22 16:04:22', 0.00),
(52, 52, '2024-09-22 16:04:54', 0.00),
(53, 53, '2024-09-22 16:05:33', 0.00),
(54, 54, '2024-09-22 16:07:11', 0.00),
(55, 55, '2024-09-22 16:07:46', 0.00),
(56, 56, '2024-09-22 16:08:18', 0.00),
(57, 57, '2024-09-22 16:19:11', 555.00),
(58, 58, '2024-09-22 16:21:04', 0.00),
(59, 59, '2024-09-22 16:35:08', 90.00),
(60, 60, '2024-09-22 16:48:11', 35.00),
(61, 61, '2024-09-22 16:52:28', 20.00),
(62, 62, '2024-09-22 16:54:15', 0.00),
(63, 63, '2024-09-22 16:55:12', 0.00),
(64, 64, '2024-09-22 16:55:53', 105.00),
(65, 65, '2024-09-22 16:57:11', 0.00),
(66, 66, '2024-09-22 16:58:27', 15.00),
(67, 67, '2024-09-22 16:59:37', 0.00),
(68, 68, '2024-09-22 17:00:07', 120.00),
(69, 69, '2024-09-22 17:08:57', 55.00),
(70, 70, '2024-09-22 17:11:04', 85.00),
(71, 71, '2024-09-22 17:16:24', 5.00),
(72, 72, '2024-09-22 17:16:46', 5.00),
(73, 73, '2024-09-22 17:16:59', 5.00),
(74, 74, '2024-09-22 17:21:22', 55.00),
(75, 75, '2024-09-22 17:22:12', 0.00),
(76, 76, '2024-09-22 17:23:10', 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `price`) VALUES
(1, 6, 10, 1, 5.00),
(2, 6, 9, 1, 10.00),
(3, 8, 10, 1, 5.00),
(4, 8, 4, 1, 30.00),
(5, 11, 2, 1, 40.00),
(6, 14, 1, 1, 50.00),
(7, 19, 2, 1, 40.00),
(8, 19, 9, 1, 10.00),
(9, 19, 6, 1, 15.00),
(10, 19, 1, 1, 50.00),
(11, 19, 10, 1, 5.00),
(12, 20, 1, 1, 50.00),
(13, 20, 2, 1, 40.00),
(14, 20, 4, 1, 30.00),
(15, 20, 3, 1, 80.00),
(16, 20, 5, 1, 20.00),
(17, 20, 6, 1, 15.00),
(18, 23, 3, 1, 80.00),
(19, 23, 8, 1, 60.00),
(20, 23, 2, 1, 40.00),
(21, 23, 5, 1, 20.00),
(22, 36, 9, 1, 10.00),
(23, 36, 1, 1, 50.00),
(24, 36, 4, 1, 30.00),
(25, 40, 3, 1, 80.00),
(26, 40, 6, 1, 15.00),
(27, 41, 5, 1, 20.00),
(28, 41, 9, 1, 10.00),
(29, 44, 4, 1, 30.00),
(30, 44, 6, 1, 15.00),
(31, 46, 10, 1, 5.00),
(32, 46, 1, 1, 50.00);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `stock`, `image_url`) VALUES
(1, 'Sugar', 50.00, 100, 'https://www.tasteofhome.com/wp-content/uploads/2019/11/sugar-shutterstock_615908132.jpg'),
(2, 'Rice (1 kg)', 40.00, 50, 'https://www.health.com/thmb/a8GxwWgmB5KpQW8SfW6VA7UFwaI=/722x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-1734160670-0157c2daf8e841d6a783b38aedc51aa8.jpg'),
(3, 'Cooking Oil (1 L)', 80.00, 30, 'https://shopmetro.ph/mandaluyong-supermarket/wp-content/uploads/2024/05/SM15001915-20-1-3.jpg'),
(4, 'Pasta (500 g)', 30.00, 20, 'https://rms.condenast.it/rms/public/5d8/4f4/415/thumb_4216_1200_670_0_0_auto.jpg'),
(5, 'Canned Sardines', 20.00, 25, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZo4yb-UTWLwoy6SydNPmbdkyxBM5rgAdqSg&s'),
(6, 'Instant Noodles', 15.00, 40, 'https://assets.bonappetit.com/photos/6352b19febc2b6b4fb29ba2d/3:4/w_748%2Cc_limit/indomie.jpg'),
(7, 'Soap', 35.00, 60, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbhREZi4wF4fkU8JOTrNXABhE-Jjfjhy6piw&s'),
(8, 'Detergent Powder', 60.00, 45, 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/s/u/surf-powder-blossom-fresh-550g_2.jpg'),
(9, 'Salt', 10.00, 70, 'https://www.foodnavigator.com/var/wrbm_gb_food_pharma/storage/images/1/9/6/7/2647691-1-eng-GB/Many-ingredients-many-strategies-The-complex-nature-of-salt-reduction.jpg'),
(10, 'Coffee (3 in 1)', 5.00, 80, 'https://megaqmart.com/cdn/shop/files/KopikoBlancaCoffeeSachet30g_By10_s.jpg?v=1710552477');

-- --------------------------------------------------------

--
-- Table structure for table `receipts`
--

CREATE TABLE `receipts` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `payment_method` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `receipts`
--

INSERT INTO `receipts` (`id`, `order_id`, `total_price`, `payment_method`) VALUES
(1, 72, 5.00, 'paypal'),
(2, 73, 5.00, 'credit_card'),
(3, 74, 55.00, 'credit_card'),
(4, 75, 0.00, 'credit_card'),
(5, 76, 0.00, 'credit_card');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receipts`
--
ALTER TABLE `receipts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `receipts`
--
ALTER TABLE `receipts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `receipts`
--
ALTER TABLE `receipts`
  ADD CONSTRAINT `receipts_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
