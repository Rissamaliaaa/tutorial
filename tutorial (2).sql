-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 18, 2016 at 08:31 
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tutorial`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `brand` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `brand`) VALUES
(1, 'Levis'),
(2, 'Nike'),
(5, 'Sketchers'),
(6, 'Polo'),
(7, 'Adidas'),
(8, 'Diadora'),
(9, 'Stone Islands');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `items` text NOT NULL,
  `expire_date` datetime NOT NULL,
  `paid` tinyint(4) NOT NULL DEFAULT '0',
  `shipped` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `items`, `expire_date`, `paid`, `shipped`) VALUES
(19, '[{"id":"4","size":"S","quantity":"75"}]', '2016-03-16 15:27:46', 1, 1),
(20, '[{"id":"9","size":"29","quantity":"1"}]', '2016-03-18 12:00:51', 1, 1),
(21, '[{"id":"13","size":"36","quantity":"95"}]', '2016-03-18 13:18:30', 1, 0),
(22, '[{"id":"11","size":"37","quantity":"6"},{"id":"10","size":"L","quantity":117},{"id":"13","size":"37","quantity":21}]', '2016-03-19 02:51:09', 1, 0),
(23, '[{"id":"4","size":"L","quantity":"21"}]', '2016-03-19 08:28:34', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `parent`) VALUES
(1, 'Men', 0),
(2, 'Women', 0),
(3, 'Boys', 0),
(4, 'Girls', 0),
(5, 'Shirts', 1),
(6, 'Pants', 1),
(7, 'Shoes', 1),
(8, 'Accessories', 1),
(9, 'Shirts', 2),
(10, 'Pants', 2),
(11, 'Shoes', 2),
(12, 'Dresses', 2),
(13, 'Shirts', 3),
(14, 'Dresses', 3),
(15, 'Dresses', 4),
(16, 'Shoes', 4),
(17, 'Accessories', 2),
(21, 'Home Decor', 18),
(24, 'Accessories', 23),
(25, 'Pants', 3),
(26, 'Pants', 4),
(27, 'Shoes', 3);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  `last_price` int(255) NOT NULL,
  `brand` int(11) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT '0',
  `sizes` text NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `last_price`, `brand`, `categories`, `image`, `description`, `featured`, `sizes`, `deleted`) VALUES
(1, 'Levi&#039;s Jeans', 30000, 50000, 1, '6', '/tutorial/images/products/boyot1.png', 'wakwaw', 1, '28:3:2,32:5:2,36:1:2', 0),
(2, 'Beautiful Shirts', 60000, 90000, 1, '5', '/tutorial/images/products/boyot2.png', 'Ini adalah shirts paling maknyoss seluruh dunia yang indehoy banget gaesss...', 1, 'small:3:4,medium:6:2,large:7:1', 0),
(4, 'Celana', 79000, 100000, 5, '7', '/tutorial/images/products/boyot3.png', 'Ini adalah restu sang master violinist di dunia, Heheheh insyaallah :D', 1, 'S:3:,M:3:,L:3:,XL:12:', 0),
(8, 'wakwaw', 88000, 96000, 6, '8', '/tutorial/images/products/boyot3.png', 'Jika Jija Jika Jika Jika Jija Jika Jika Jika Jija Jika Jika Jika Jija Jika Jika Jika Jija Jika Jika Jika Jija Jika Jika Jika Jija Jika JikavJika Jija Jika Jika Jika Jija Jika Jikav v Jika Jija Jika Jika', 1, 'S:23:19', 0),
(9, 'Barang Mewah', 50000, 100000, 1, '6', '/tutorial/images/products/boyot4.png', 'Barang termahal sejagat raya brother', 1, '29:30:21', 0),
(10, 'Barang Geunah', 3000000, 3500000, 6, '17', '/tutorial/images/products/boyot4.png', 'Barang Terhits Seantero Dunia!', 1, 'L:-113:', 0),
(11, 'Barang Gaul', 750000, 977000, 1, '25', '/tutorial/images/products/boyot5.png', 'Barang tergaul di 2016 guys', 1, '36:4:,37:-4:', 0),
(12, 'Baby shirt', 75000, 100000, 5, '15', '/tutorial/images/products/boyot6.png', 'Cocok buat bayi lucu anda :D mang', 1, '17:3:1,18:9:3,19:2:1,20:7:4', 0),
(13, 'Barang Sangat Mahal', 5000000, 5500000, 8, '7', '/tutorial/images/products/boyot6.png','Cocok buat bayi lucu anda :D mang', 1, '17:3:1,18:9:3,19:2:1,20:7:4', 0),
-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(175) NOT NULL,
  `street` varchar(255) NOT NULL,
  `street2` varchar(255) NOT NULL,
  `city` varchar(175) NOT NULL,
  `state` varchar(175) NOT NULL,
  `zip_code` varchar(50) NOT NULL,
  `country` varchar(175) NOT NULL,
  `sub_total` int(255) NOT NULL,
  `tax` int(255) NOT NULL,
  `grand_total` int(255) NOT NULL,
  `description` text NOT NULL,
  `txn_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `cart_id`, `full_name`, `email`, `street`, `street2`, `city`, `state`, `zip_code`, `country`, `sub_total`, `tax`, `grand_total`, `description`, `txn_date`) VALUES
(1, 19, 'restugans', 'alupadia@yahoo.com', 'asfdf', 'dfsdf', 'sdfsdffds', 'sdfsdfds', '123456', 'endonesia', 5925000, 515475, 6440475, '75 items dari Shauntas Boutique.', '2016-02-17 19:15:11'),
(2, 20, 'Anak Gantenga', 'anakgans@gmail.com', 'bandung kota', 'bandung timur', 'jawa barat', 'jawa', '123456', 'Endonesia', 50000, 4350, 54350, '1 item dari Shauntas Boutique.', '2016-02-14 12:45:31'),
(3, 21, 'Ahmad Haerul Zam Zam', 'ahmadlupa@yahoo.com', 'Komplek Perum', 'Blok.2 Beulah Sisi', 'Bandung', 'Jawa Barat', '123456', 'Indonesia', 475000000, 41325000, 516325000, '95 items dari Shauntas Boutique.', '2016-02-17 13:19:35'),
(4, 22, 'Bambang Haerul Zam Zam', 'bambangedan@gmail.com', 'Rawamangun', 'Klender', 'Jakarta', 'Jakarta Pusat', '123456', 'Indonesia', 460500000, 40063500, 500563500, '144 items dari Shauntas Boutique.', '2016-02-18 02:52:53'),
(5, 22, 'Bambang Haerul Zam Zam', 'bambangedan@gmail.com', 'Rawamangun', 'Klender', 'Jakarta', 'Jakarta Pusat', '123456', 'Indonesia', 460500000, 40063500, 500563500, '144 items dari Shauntas Boutique.', '2016-02-18 02:55:46'),
(6, 23, 'Ahmad Taefu', 'ahmadlatif@yahoo.com', 'komplek bina muda', 'jl.kuat no21', 'Garut', 'Jawa Barat', '123456', 'Indonesia', 1659000, 144333, 1803333, '21 items dari Shauntas Boutique.', '2016-02-18 08:29:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `join_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_login` datetime NOT NULL,
  `permissions` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `join_date`, `last_login`, `permissions`) VALUES
(1, 'Restu Haerul Zam Zam', 'alupadia@yahoo.com', '$2y$10$MUmZGn4xQkLCqG/bas4HOusB/Vkka0ZCbHSsZwi8/goDWJflh5wNO', '2016-01-29 22:00:08', '2016-02-18 14:29:45', 'admin,editor'),
(4, 'Saitama OPM', 'onepunchman@saitama.com', '$2y$10$VnUZFL2n3.XFso6CeRh/0ex7rtmFF8Jjek/cQzIEGC7.M4EL9Vo8G', '2016-02-02 18:47:55', '0000-00-00 00:00:00', 'editor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
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
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
