-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 16, 2020 at 04:14 PM
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
  `price` decimal(9,2) NOT NULL,
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

INSERT INTO `products` (`id`, `name`, `price`, `date_create`, `date_modify`, `category`, `image_main`, `image_other`, `image_thumb`, `description`) VALUES
(7, 'Berry Rainbow', 4.00, '2020-11-10', '2020-11-10', 'Raised Donuts', 'img/raised_strawberry_main.jpg', 'img/raised_strawberry_1.jpg,img/raised_strawberry_2.jpg', 'img/raised_strawberry_main.jpg', 'They’re sweet & crisp on the outside, a cross between a cake donut & an old-fashioned donut on the inside, and packed with blueberry bliss. Mmmm…yumberry donuts!'),
(8, 'Coco Sprinkle', 4.00, '2020-11-10', '2020-11-10', 'Raised Donuts', 'img/raised_chocolate_main.jpg', 'img/raised_chocolate_1.jpg,img/raised_chocolate_2.jpg', 'img/raised_chocolate_thumb.jpg', 'Raised Chocolate with Rainbow Sprinkle'),
(4, 'Vanilla Rainbow', 4.00, '2020-11-10', '2020-11-10', 'Glazed Donuts', 'img/rainbow_sprinkle_main.jpg', 'img/rainbow_sprinkle_1.jpg,img/rainbow_sprinkle_2.jpg', 'img/rainbow_sprinkle_thumb.jpg', 'Tasting the rainbow is better with frosting and sprinkles. They\'re the perfect size donuts that taste fantastic, and are great to share with your friends, family, or coworkers any time of the year!'),
(9, 'Sugar Powder ', 3.00, '2020-11-10', '2020-11-10', 'Raised Donuts', 'img/sugar_powder_main.jpg', 'img/sugar_powder_1.jpg,img/sugar_powder_2.jpg', 'img/sugar_powder_thumb.jpg', 'Sugar Powder '),
(10, 'Chocolate Cake', 3.50, '2020-11-10', '2020-11-10', 'Raised Donuts', 'img/chocolate_donuts_main.jpg', 'img/chocolate_donuts_1.jpg,img/chocolate_donuts_2.jpg', 'img/chocolate_donuts_thumb.jpg', 'Moist and fluffy donuts that are baked, not fried, and full of chocolate. Covered in thick chocolate, these are perfect for any chocoholic who wants a chocolate version of this classic treat.'),
(11, 'Cinnamon Sugar', 5.00, '2020-11-10', '2020-11-10', 'Glazed Donuts', 'img/cinnamon_sugar_main.jpg', 'img/cinnamon_sugar_1.jpg,img/cinnamon_sugar_2.jpg', 'img/cinnamon_sugar_thumb.jpg', 'Chocolate Cake'),
(12, 'Blueberry Cake', 4.00, '2020-11-10', '2020-11-10', 'Glazed Donuts', 'img/blueberry_main.jpg', 'img/blueberry_1.jpg,img/blueberry_2.jpg', 'img/blueberry_thumb.jpg', 'Blueberry Glazed Cake'),
(13, 'Plain Donut', 2.50, '2020-11-10', '2020-11-10', 'Glazed Donuts', 'img/plain_main.jpg', 'img/plain_1.jpg,img/plain_2.jpg', 'img/plain_thumb.jpg', 'Plain Donut'),
(14, 'Buttermilk', 3.50, '2020-11-10', '2020-11-10', 'Glazed Donuts', 'img/buttermilk_main.jpg', 'img/buttermilk_1.jpg,img/buttermilk_2.jpg', 'img/buttermilk_thumb.jpg', 'Glazed Buttermilk'),
(15, 'Old Fashion', 3.50, '2020-11-10', '2020-11-10', 'Glazed Donuts', 'img/old_fashion_main.jpg', 'img/old_fashion_1.jpg,img/old_fashion_2.jpg', 'img/old_fashion_thumb.jpg', 'Glazed Old Fashion Donut'),
(16, 'Vanilla French', 5.00, '2020-11-10', '2020-11-10', 'Raised Donuts', 'img/vanilla_french_main.jpg', 'img/vanilla_french_1.jpg,img/vanilla_french_2.jpg', 'img/vanilla_french_thumb.jpg', 'Vanilla French'),
(17, 'Chocolate Powder', 3.50, '2020-11-10', '2020-11-10', 'Raised Donuts', 'img/chocolate_powder_main.jpg', 'img/chocolate_powder_1.jpg,img/chocolate_powder_2.jpg', 'img/chocolate_powder_thumb.jpg', 'Chocolate Powder'),
(30, 'Chocolate Love', 4.00, '2020-12-16', '2020-12-16', 'Raised Donuts', 'img/white_chocolate_rainbow_main.jpg', 'img/white_chocolate_rainbow_1.jpg,img/white_chocolate_rainbow_2.jpg', '', 'WhiteChocolate Cake with Rainbow Sprinkle on top.');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
