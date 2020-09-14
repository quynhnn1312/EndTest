-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 14, 2020 at 12:11 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `end_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(50) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Color', '2020-09-13 05:57:24', '0000-00-00 00:00:00'),
(2, 'Size', '2020-09-13 05:57:24', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_value`
--

CREATE TABLE `attribute_value` (
  `id` int(50) NOT NULL,
  `attribute_id` int(50) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attribute_value`
--

INSERT INTO `attribute_value` (`id`, `attribute_id`, `value`, `created_at`, `update_at`) VALUES
(1, 1, 'Red', '2020-09-13 05:58:35', '0000-00-00 00:00:00'),
(2, 1, 'blue', '2020-09-13 05:58:41', '0000-00-00 00:00:00'),
(3, 1, 'Green', '2020-09-13 05:59:03', '0000-00-00 00:00:00'),
(4, 1, 'Yellow', '2020-09-13 05:59:03', '0000-00-00 00:00:00'),
(5, 2, 'M', '2020-09-13 05:59:48', '0000-00-00 00:00:00'),
(6, 2, 'L', '2020-09-13 05:59:48', '0000-00-00 00:00:00'),
(7, 2, 'X', '2020-09-13 06:00:02', '0000-00-00 00:00:00'),
(8, 2, 'XL', '2020-09-13 06:00:02', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(50) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(50) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `slug`, `status`, `created_at`, `update_at`) VALUES
(74, 'Women', 76, 'women', 1, '2020-09-14 02:27:55', '0000-00-00 00:00:00'),
(75, 'Man', 76, 'man', 1, '2020-09-14 02:27:48', '0000-00-00 00:00:00'),
(76, ' Shoes', 0, ' shoes', 1, '2020-09-14 02:27:36', '0000-00-00 00:00:00'),
(77, ' Clothes', 0, ' clothes', 1, '2020-09-14 02:29:36', '0000-00-00 00:00:00'),
(78, 'Polo shirts', 77, 'polo-shirts', 1, '2020-09-14 02:49:53', '0000-00-00 00:00:00'),
(79, 'Shirts', 77, 'shirts', 1, '2020-09-14 02:50:24', '0000-00-00 00:00:00'),
(80, 'Jackets', 77, 'jackets', 1, '2020-09-14 02:50:48', '0000-00-00 00:00:00'),
(81, 'Coats', 77, 'coats', 1, '2020-09-14 02:51:12', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(50) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(50) NOT NULL,
  `discount` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `discount`, `quantity`, `image`, `short_description`, `description`, `status`, `created_at`, `update_at`) VALUES
(134, 'Compete Track Tote', 4372, 10, 10, 'public/images/5f5ed66609c7d-product-6.jpg', 'Regular fit, round neckline, long sleeves. 100% cotton, brushed inner side for extra comfort.', '<p><span style=\"font-family: Rubik, sans-serif; font-size: 14px;\">Regular fit, round neckline, long sleeves. 100% cotton, brushed inner side for extra comfort.</span><br></p>', 1, '2020-09-14 02:33:10', '0000-00-00 00:00:00'),
(135, 'Wayfarer Messenger Bag', 6540, 0, 10, 'public/images/5f5ed69f80ea9-product-5.jpg', 'Regular fit, round neckline, long sleeves. 100% cotton, brushed inner side for extra comfort.', '<span style=\"font-family: Rubik, sans-serif; font-size: 14px;\">Regular fit, round neckline, long sleeves. 100% cotton, brushed inner side for extra comfort.</span>', 1, '2020-09-14 02:34:07', '0000-00-00 00:00:00'),
(137, 'Strive Shoulder Pack', 7105, 0, 10, 'public/images/5f5ed7546f554-product-2.jpg', 'Regular fit, round neckline, long sleeves. 100% cotton, brushed inner side for extra comfort.', '<span style=\"font-family: Rubik, sans-serif; font-size: 14px;\">Regular fit, round neckline, long sleeves. 100% cotton, brushed inner side for extra comfort.</span>', 1, '2020-09-14 02:37:08', '0000-00-00 00:00:00'),
(138, 'Crown Summit Backpack', 5787, 20, 10, 'public/images/5f5ed7cddd10c-product-1.jpg', 'Regular fit, round neckline, long sleeves. 100% cotton, brushed inner side for extra comfort.', '<p><span style=\"font-family: Rubik, sans-serif; font-size: 14px;\">Regular fit, round neckline, long sleeves. 100% cotton, brushed inner side for extra comfort.</span><br></p>', 1, '2020-09-14 02:39:09', '0000-00-00 00:00:00'),
(139, 'Giày Nike Jordan 1 Low Orange', 2378, 0, 10, 'public/images/5f5ed85966bd1-jordan-air-jordan-1-low-trang-den-cam-1.jpg', 'Regular fit, round neckline, long sleeves. 100% cotton, brushed inner side for extra comfort.', '<span style=\"font-family: Rubik, sans-serif; font-size: 14px;\">Regular fit, round neckline, long sleeves. 100% cotton, brushed inner side for extra comfort.</span>', 1, '2020-09-14 02:41:29', '0000-00-00 00:00:00'),
(140, 'Giày Nike Air Force 1 Shadow 7 Màu Pale Ivory Nữ Replica', 8347, 10, 10, 'public/images/5f5ed8a4ac71a-giay-nike-air-force-1-shadow-pale-ivory-nu-rep-11-dep-chat-3.jpg', 'Regular fit, round neckline, long sleeves. 100% cotton, brushed inner side for extra comfort.', '<p><span style=\"font-family: Rubik, sans-serif; font-size: 14px;\">Regular fit, round neckline, long sleeves. 100% cotton, brushed inner side for extra comfort.</span><br></p>', 1, '2020-09-14 02:42:44', '0000-00-00 00:00:00'),
(141, 'Giày Nike Air Jordan 1 Off White Blue Replica 1:1 Đẹp & Chất', 5789, 0, 10, 'public/images/5f5ed8d23d918-giay-nike-air-jordan-1-off-white-blue-replica-11-dep-chat.png', 'Regular fit, round neckline, long sleeves. 100% cotton, brushed inner side for extra comfort.', '<span style=\"font-family: Rubik, sans-serif; font-size: 14px;\">Regular fit, round neckline, long sleeves. 100% cotton, brushed inner side for extra comfort.</span>', 1, '2020-09-14 02:43:30', '0000-00-00 00:00:00'),
(142, 'Giày sneaker Xvessel Black Nam Nữ style rách Rep™ 1:1 Đẹp & Chất', 3478, 0, 10, 'public/images/5f5ed8ff27d4b-giay-sneaker-xvessel-black-nam-nu-style-rach-rep-11-dep-chat-5.png', 'Regular fit, round neckline, long sleeves. 100% cotton, brushed inner side for extra comfort.', '<span style=\"font-family: Rubik, sans-serif; font-size: 14px;\">Regular fit, round neckline, long sleeves. 100% cotton, brushed inner side for extra comfort.</span>', 1, '2020-09-14 02:44:15', '0000-00-00 00:00:00'),
(143, 'Giày MLB Korea New York Yankees Big Ball Chunky Embo Rep™ 1:1 Đẹp & Chất', 8934, 20, 10, 'public/images/5f5ed928f22cd-giay-mlb-korea-new-york-yankees-big-ball-chunky-embo-rep-11-dep-chat-5.png', 'Giày MLB Korea New York Yankees Big Ball Chunky Embo Rep™ 1:1 Đẹp & Chất', '<h1 class=\"product-title product_title entry-title\" style=\"color: rgb(10, 10, 10); width: 538.172px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 22px; line-height: 1.3; font-family: Roboto, sans-serif;\">Giày MLB Korea New York Yankees Big Ball Chunky Embo Rep™ 1:1 Đẹp &amp; Chất</h1>', 1, '2020-09-14 02:44:56', '0000-00-00 00:00:00'),
(144, 'Giày Nike Air Jordan 1 Retro High Og ‘Bred’ Replica 1:1 Đẹp & Chất', 3478, 10, 10, 'public/images/5f5ed9758f58d-giay-nike-air-jordan-1-retro-high-og-bred-replica-11-dep-chat.png', 'Regular fit, round neckline, long sleeves. 100% cotton, brushed inner side for extra comfort.', '<span style=\"font-family: Rubik, sans-serif; font-size: 14px;\">Regular fit, round neckline, long sleeves. 100% cotton, brushed inner side for extra comfort.</span>', 1, '2020-09-14 02:46:13', '0000-00-00 00:00:00'),
(145, 'Giày Nike Air Force 1 Shadow Daisy Spruce Aura Hoa Cúc Rep™1:1 Đẹp & Chất', 8945, 0, 10, 'public/images/5f5ed9b452e9b-giay-nike-air-force-1-shadow-daisy-spruce-aura-hoa-cuc-rep-11-dep-chat-4.jpg', 'Regular fit, round neckline, long sleeves. 100% cotton, brushed inner side for extra comfort.', '<span style=\"font-family: Rubik, sans-serif; font-size: 14px;\">Regular fit, round neckline, long sleeves. 100% cotton, brushed inner side for extra comfort.</span>', 1, '2020-09-14 02:47:16', '0000-00-00 00:00:00'),
(147, 'Thom Browne 4-Bar rugby stripe polo shirt', 89357, 0, 10, 'public/images/5f5eeadb62631-14270306_22062585_1000.webp', 'abc', '<p>abc</p>', 1, '2020-09-14 04:00:27', '0000-00-00 00:00:00'),
(148, 'Thom Browne shortsleeved 4-Bar polo shirt', 3784, 10, 10, 'public/images/5f5eeb7415072-14995137_25377089_1000.webp', 'skdlvn', 'lkenf', 1, '2020-09-14 04:03:00', '0000-00-00 00:00:00'),
(149, 'san pham 1', 2378, 10, 10, 'public/images/5f5ef29c1a513-giay-nike-air-jordan-1-off-white-blue-replica-11-dep-chat.png', 'abc', '<p>abc</p>', 1, '2020-09-14 04:33:32', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_attribute`
--

CREATE TABLE `product_attribute` (
  `id` int(50) NOT NULL,
  `product_id` int(50) NOT NULL,
  `attribute_value_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_attribute`
--

INSERT INTO `product_attribute` (`id`, `product_id`, `attribute_value_id`) VALUES
(25, 135, 1),
(26, 135, 2),
(27, 135, 5),
(28, 135, 6),
(29, 135, 7),
(30, 135, 8),
(31, 136, 1),
(32, 136, 5),
(33, 136, 7),
(34, 137, 3),
(35, 137, 5),
(36, 138, 2),
(37, 138, 5),
(38, 139, 4),
(39, 139, 6),
(40, 140, 1),
(41, 140, 8),
(42, 141, 2),
(43, 141, 8),
(44, 142, 2),
(45, 142, 5),
(46, 143, 1),
(47, 143, 6),
(48, 144, 1),
(49, 144, 7),
(50, 144, 8),
(51, 145, 2),
(52, 145, 7),
(53, 147, 4),
(54, 147, 5),
(55, 148, 1),
(56, 148, 8),
(57, 149, 1),
(58, 149, 2),
(59, 149, 5),
(60, 149, 8),
(61, 134, 1),
(62, 134, 2);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(50) NOT NULL,
  `product_id` int(50) NOT NULL,
  `category_id` int(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`) VALUES
(128, 135, 75, '2020-09-14 02:34:07', '0000-00-00 00:00:00'),
(129, 136, 75, '2020-09-14 02:36:17', '0000-00-00 00:00:00'),
(130, 137, 75, '2020-09-14 02:37:08', '0000-00-00 00:00:00'),
(131, 138, 75, '2020-09-14 02:39:09', '0000-00-00 00:00:00'),
(132, 139, 75, '2020-09-14 02:41:29', '0000-00-00 00:00:00'),
(133, 140, 74, '2020-09-14 02:42:44', '0000-00-00 00:00:00'),
(134, 141, 74, '2020-09-14 02:43:30', '0000-00-00 00:00:00'),
(135, 142, 74, '2020-09-14 02:44:15', '0000-00-00 00:00:00'),
(136, 143, 74, '2020-09-14 02:44:57', '0000-00-00 00:00:00'),
(137, 144, 76, '2020-09-14 02:46:13', '0000-00-00 00:00:00'),
(138, 144, 74, '2020-09-14 02:46:13', '0000-00-00 00:00:00'),
(139, 144, 75, '2020-09-14 02:46:13', '0000-00-00 00:00:00'),
(140, 145, 74, '2020-09-14 02:47:16', '0000-00-00 00:00:00'),
(142, 146, 77, '2020-09-14 02:52:39', '0000-00-00 00:00:00'),
(143, 147, 78, '2020-09-14 04:00:27', '0000-00-00 00:00:00'),
(144, 148, 78, '2020-09-14 04:03:00', '0000-00-00 00:00:00'),
(145, 149, 74, '2020-09-14 04:33:32', '0000-00-00 00:00:00'),
(146, 134, 75, '2020-09-14 04:35:13', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_value`
--
ALTER TABLE `attribute_value`
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
-- Indexes for table `product_attribute`
--
ALTER TABLE `product_attribute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attribute_value`
--
ALTER TABLE `attribute_value`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `product_attribute`
--
ALTER TABLE `product_attribute`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
