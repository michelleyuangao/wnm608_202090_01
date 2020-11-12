-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 11, 2020 at 02:43 PM
-- Server version: 5.6.49-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yuangao_wnm608`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `url` varchar(256) NOT NULL,
  `price` decimal(9,0) NOT NULL,
  `date_create` date NOT NULL,
  `date_modify` date NOT NULL,
  `category` varchar(64) NOT NULL,
  `image_main` varchar(256) NOT NULL,
  `image_other` varchar(512) NOT NULL,
  `image_thumb` varchar(256) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `email`, `url`, `price`, `date_create`, `date_modify`, `category`, `image_main`, `image_other`, `image_thumb`, `description`) VALUES
(5, 'Raised Sugar', '', '', 4, '2020-11-10', '2020-11-10', 'Sugar Donuts', 'img/Raised_Sugar_main.jpg', 'img/Raised_Sugar_1.jpg,img/Raised_Sugar_2.jpg', 'img/Raised_Sugar_thumb.jpg', 'Raised Sugar'),
(7, 'Raised Strawberry with Rainbow Sprinkle', '', '', 4, '2020-11-10', '2020-11-10', 'Strawberry Donuts', 'img/Raised_Strawberry_main.jpg', 'img/Raised_Strawberry_1.jpg,img/Raised_Strawberry_2.jpg', 'img/Raised_Strawberry_thumb.jpg', 'Raised Strawberry with Rainbow Sprinkle'),
(8, 'Raised Chocolate with Rainbow Sprinkle', '', '', 4, '2020-11-10', '2020-11-10', 'Chocolate Donuts', 'img/Raised_ Chocolate_main.jpg', 'img/Raised_ Chocolate_1.jpg,img/Raised_ Chocolate_2.jpg', 'img/Raised_ Chocolate_thumb.jpg', 'Raised Chocolate with Rainbow Sprinkle'),
(4, 'Raised Vanilla with Rainbow Sprinkle', '', '', 4, '2020-11-10', '2020-11-10', 'Vanilla Donuts', 'img/Rainbow_Sprinkle_main.jpg', 'img/Rainbow_Sprinkle_1.jpg,img/Rainbow_Sprinkle_2.jpg', 'img/Rainbow_Sprinkle_thumb.jpg', 'Raised Vanilla with Rainbow Sprinkle'),
(9, 'Sugar Powder ', '', '', 5, '2020-11-10', '2020-11-10', 'Sugar Donuts', 'img/Sugar Powder_main.jpg', 'img/Sugar Powder_1.jpg,img/Sugar Powder_2.jpg', 'img/Sugar Powder_thumb.jpg', 'Sugar Powder '),
(10, 'Chocolate Cake', '', '', 4, '2020-11-10', '2020-11-10', 'Chocolate Donuts', 'img/Chocolate_Donuts_main.jpg', 'img/Chocolate_Donuts_1.jpg,img/Chocolate_Donuts_2.jpg', 'img/Chocolate_Donuts_thumb.jpg', 'Chocolate Cake'),
(11, 'Chocolate Cake', '', '', 4, '2020-11-10', '2020-11-10', 'Sugar Donuts', 'img/Cinnamon_Sugar_main.jpg', 'img/Cinnamon_Sugar_1.jpg,img/Cinnamon_Sugar_2.jpg', 'img/Cinnamon_Sugar_thumb.jpg', 'Chocolate Cake'),
(12, 'Blueberry Glazed Cake', '', '', 4, '2020-11-10', '2020-11-10', 'Glazed Donut', 'img/Blueberry_main.jpg', 'img/Blueberry_1.jpg,img/Blueberry_2.jpg', 'img/Blueberry_thumb.jpg', 'Blueberry Glazed Cake'),
(13, 'Plain Donut', '', '', 3, '2020-11-10', '2020-11-10', 'Plain Donut', 'img/Plain_main.jpg', 'img/Plain_1.jpg,img/Plain_2.jpg', 'img/Plain_thumb.jpg', 'Plain Donut'),
(14, 'Glazed Buttermilk', '', '', 4, '2020-11-10', '2020-11-10', 'Glazed Donut', 'img/Buttermilk_main.jpg', 'img/Buttermilk_1.jpg,img/Buttermilk_2.jpg', 'img/Buttermilk_thumb.jpg', 'Glazed Buttermilk'),
(15, 'Glazed Old Fashion Donut', '', '', 5, '2020-11-10', '2020-11-10', 'Glazed Donut', 'img/Old_Fashion_main.jpg', 'img/Old_Fashion_1.jpg,img/Old_Fashion_2.jpg', 'img/Old_Fashion_thumb.jpg', 'Glazed Old Fashion Donut'),
(16, 'Vanilla French', '', '', 5, '2020-11-10', '2020-11-10', 'Vanilla Donut', 'img/Vanilla_French_main.jpg', 'img/Vanilla_French_1.jpg,img/Vanilla_French_2.jpg', 'img/Vanilla_French_thumb.jpg', 'Vanilla French'),
(17, 'Chocolate Powder', '', '', 4, '2020-11-10', '2020-11-10', 'Chocolate Donuts', 'img/Chocolate_Powder_main.jpg', 'img/Chocolate_Powder_1.jpg,img/Chocolate_Powder_2.jpg', 'img/Chocolate_Powder_thumb.jpg', 'Chocolate Powder'),
(18, 'Chocolate Cake with Rainbow Sprinkle', '', '', 4, '2020-11-10', '2020-11-10', 'Chocolate Donuts', 'img/Chocolate_ Rainbow_main.jpg', 'img/Chocolate_ Rainbow_1.jpg,img/Chocolate_ Rainbow_2.jpg', 'img/Chocolate_ Rainbow_thumb.jpg', 'Chocolate Cake with Rainbow Sprinkle');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
