-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2015 at 06:14 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pasarauto.com`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
`id_banner` int(11) NOT NULL,
  `source` varchar(255) CHARACTER SET latin1 NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `page` varchar(255) CHARACTER SET latin1 NOT NULL,
  `show` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id_banner`, `source`, `title`, `text`, `url`, `page`, `show`) VALUES
(1, 'images/banner/1.jpg', 'New Volvo XC90', 'Racks Up Another Very Positive Review\r\nD5 and T8 Plug-In Tested ', '#', 'index', 1),
(2, 'images/banner/2.jpg', 'New Audi', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit', '#', 'index', 1),
(3, 'images/banner/1.jpg', '', '', '', 'index', 1);

-- --------------------------------------------------------

--
-- Table structure for table `car_body`
--

CREATE TABLE IF NOT EXISTS `car_body` (
`id_carbody` int(11) NOT NULL,
  `body_name` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `car_body`
--

INSERT INTO `car_body` (`id_carbody`, `body_name`) VALUES
(1, 'SUV'),
(2, 'MPV'),
(3, 'Sedan'),
(4, 'Cross Over'),
(5, 'Convertible'),
(6, 'Coupe'),
(7, 'Wagon'),
(8, 'Wagon'),
(9, 'Sport Car'),
(10, 'Pick Up'),
(11, 'Hatchback');

-- --------------------------------------------------------

--
-- Table structure for table `car_maker`
--

CREATE TABLE IF NOT EXISTS `car_maker` (
`id_carmaker` int(11) NOT NULL,
  `maker_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `show` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `car_maker`
--

INSERT INTO `car_maker` (`id_carmaker`, `maker_name`, `show`) VALUES
(1, 'Aston Martin', 1),
(2, 'Audi', 1),
(3, 'Bentley', 1),
(4, 'BMW', 1),
(5, 'Cadillac', 1),
(6, 'Cherry', 1),
(7, 'Chevrolet', 1),
(8, 'Chrysler', 1),
(9, 'Daewoo', 1),
(10, 'Daihatsu', 1),
(11, 'Datsun', 1),
(12, 'Dodge', 1),
(13, 'Ferrari', 1),
(14, 'Fiat', 1),
(15, 'Ford', 1),
(16, 'Geely', 1),
(17, 'Hino', 1),
(18, 'Honda', 1),
(19, 'Hummer', 1),
(20, 'Hyundai', 1),
(21, 'Infiniti', 1),
(22, 'Isuzu', 1),
(23, 'Jaguar', 1),
(24, 'Jeep', 1),
(25, 'Kia', 1),
(26, 'Lamborgini', 1),
(27, 'Land Rover', 1),
(28, 'Lexus', 1),
(29, 'Maserati', 1),
(30, 'Mazda', 1),
(31, 'Mclaren', 1),
(32, 'Mercedez Benz', 1),
(33, 'Mini', 1),
(34, 'Mitsubishi', 1),
(35, 'Nissan', 1),
(36, 'Opel', 1),
(37, 'Peugeot', 1),
(38, 'Porsche', 1),
(39, 'Proton', 1),
(40, 'Renault', 1),
(41, 'Rolls Royce', 1),
(42, 'Smart', 1),
(43, 'Ssangyong', 1),
(44, 'Subaru', 1),
(45, 'Suzuki', 1),
(46, 'Tata', 1),
(47, 'Timor', 1),
(48, 'Toyota', 1),
(49, 'Volkswagen', 1),
(50, 'Volvo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `car_model`
--

CREATE TABLE IF NOT EXISTS `car_model` (
`id_carmodel` int(11) NOT NULL,
  `id_carmaker` int(11) NOT NULL,
  `model_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `viewed` int(11) NOT NULL,
  `show` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=585 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `car_model`
--

INSERT INTO `car_model` (`id_carmodel`, `id_carmaker`, `model_name`, `viewed`, `show`) VALUES
(1, 1, 'Vanguish\r\n', 0, 1),
(2, 1, 'Rapide\r\n', 0, 1),
(3, 1, 'DB9\r\n', 0, 1),
(4, 1, 'Vantage\r\n', 0, 1),
(5, 1, 'Virage 6.0L', 0, 1),
(6, 1, 'Virage \r\n', 0, 1),
(7, 2, 'A3', 0, 1),
(8, 2, 'A4', 0, 1),
(9, 2, 'A5', 0, 1),
(10, 2, 'A6', 0, 1),
(11, 2, 'A7', 0, 1),
(12, 2, 'A8', 0, 1),
(13, 2, 'Q5', 0, 1),
(14, 2, 'Q7', 0, 1),
(15, 2, 'R8', 0, 1),
(16, 2, 'S5', 0, 1),
(17, 2, 'TT', 0, 1),
(18, 3, 'Continental GT', 0, 1),
(19, 3, 'Flying Spur', 0, 1),
(20, 3, 'Mulsanne', 0, 1),
(21, 4, '1 Series', 0, 1),
(22, 4, '2 Series', 0, 1),
(23, 4, '3 Series', 0, 1),
(24, 4, '4 Series', 0, 1),
(25, 4, '5 Series', 0, 1),
(26, 4, '6 Series', 0, 1),
(27, 4, '7 Series', 0, 1),
(28, 4, 'M Series', 0, 1),
(29, 4, 'X Series', 0, 1),
(30, 4, 'Z Series', 0, 1),
(31, 5, 'Escalade', 0, 1),
(32, 6, 'QQ', 0, 1),
(33, 6, 'Tigo', 0, 1),
(34, 7, 'Aveo', 0, 1),
(35, 7, 'Blazer', 0, 1),
(36, 7, 'Camaro', 0, 1),
(37, 7, 'Captiva', 0, 1),
(38, 7, 'Colorado', 0, 1),
(39, 7, 'Cruze', 0, 1),
(40, 7, 'Estate', 0, 1),
(41, 7, 'Kalos', 0, 1),
(42, 7, 'Lumina', 0, 1),
(43, 7, 'Luv', 0, 1),
(44, 7, 'Optra Magnum', 0, 1),
(45, 7, 'Orlando', 0, 1),
(46, 7, 'Spark', 0, 1),
(47, 7, 'Spin', 0, 1),
(48, 7, 'Tavera', 0, 1),
(49, 7, 'Trooper', 0, 1),
(50, 7, 'Zafira', 0, 1),
(51, 8, '300', 0, 1),
(52, 8, '300C', 0, 1),
(53, 8, 'Grand Voyager', 0, 1),
(54, 8, 'Neon', 0, 1),
(55, 8, 'PT Cruiser', 0, 1),
(56, 8, 'Sebring', 0, 1),
(57, 8, 'Voyager', 0, 1),
(58, 9, '2000i', 0, 1),
(59, 9, 'Espero', 0, 1),
(60, 9, 'Lanos', 0, 1),
(61, 9, 'Leganza', 0, 1),
(62, 9, 'Matiz', 0, 1),
(63, 9, 'Nexia', 0, 1),
(64, 10, 'Ayla', 0, 1),
(65, 10, 'Ceria', 0, 1),
(66, 10, 'Charade', 0, 1),
(67, 10, 'Charmant', 0, 1),
(68, 10, 'Classy', 0, 1),
(69, 10, 'Compagno', 0, 1),
(70, 10, 'Delta', 0, 1),
(71, 10, 'Espass', 0, 1),
(72, 10, 'Espass Box', 0, 1),
(73, 10, 'Feroza', 0, 1),
(74, 10, 'Gran Max', 0, 1),
(75, 10, 'Grand Max Blind Van', 0, 1),
(76, 10, 'Gran Max Box', 0, 1),
(77, 10, 'Gran Max Mpv', 0, 1),
(78, 10, 'Gran Max Pick up', 0, 1),
(79, 10, 'Hijet', 0, 1),
(80, 10, 'Luxio', 0, 1),
(81, 10, 'Rocky', 0, 1),
(82, 10, 'Sirion', 0, 1),
(83, 10, 'Sirion D', 0, 1),
(84, 10, 'Taft', 0, 1),
(85, 10, 'Taft Rocky', 0, 1),
(86, 10, 'Taruna', 0, 1),
(87, 10, 'Terios', 0, 1),
(88, 10, 'Xenia', 0, 1),
(89, 10, 'YRV', 0, 1),
(90, 10, 'Zebra', 0, 1),
(91, 11, '1300', 0, 1),
(92, 11, 'Go', 0, 1),
(93, 11, 'Go+', 0, 1),
(94, 12, '300', 0, 1),
(95, 12, 'Journey', 0, 1),
(96, 12, 'Nitro', 0, 1),
(97, 13, '360', 0, 1),
(98, 13, '458', 0, 1),
(99, 13, '458 Italia', 0, 1),
(100, 13, '599 Fiorano', 0, 1),
(101, 13, '612 Scaglietti', 0, 1),
(102, 13, 'California', 0, 1),
(103, 13, 'F12 Berlinetta', 0, 1),
(104, 13, 'F430', 0, 1),
(105, 13, 'FF', 0, 1),
(106, 14, '1100', 0, 1),
(107, 14, '1300', 0, 1),
(108, 14, '500', 0, 1),
(109, 14, '500C', 0, 1),
(110, 14, 'Abarth', 0, 1),
(111, 14, 'Punto', 0, 1),
(112, 14, 'Uno', 0, 1),
(113, 15, 'Ecosport', 0, 1),
(114, 15, 'Escape', 0, 1),
(115, 15, 'Everest', 0, 1),
(116, 15, 'F Series', 0, 1),
(117, 15, 'Festiva', 0, 1),
(118, 15, 'Fiesta', 0, 1),
(119, 15, 'Focus', 0, 1),
(120, 15, 'Gala', 0, 1),
(121, 15, 'Laser', 0, 1),
(122, 15, 'LTD', 0, 1),
(123, 15, 'Lynx', 0, 1),
(124, 15, 'Mustang', 0, 1),
(125, 15, 'Ranger', 0, 1),
(126, 15, 'Ranger Double Cabin', 0, 1),
(127, 15, 'Sierra', 0, 1),
(128, 15, 'Telstar', 0, 1),
(129, 16, 'Emgrand\r\n', 0, 1),
(130, 16, 'LC Cross', 0, 1),
(131, 16, 'MK', 0, 1),
(132, 16, 'Mk 2', 0, 1),
(133, 16, 'Panda', 0, 1),
(134, 16, 'Panda Cross', 0, 1),
(135, 16, 'TX4', 0, 1),
(136, 17, '300 Series', 0, 1),
(137, 17, 'Dutro', 0, 1),
(138, 17, 'FG Series', 0, 1),
(139, 17, 'Ranger', 0, 1),
(140, 18, 'Accord', 0, 1),
(141, 18, 'Airwave', 0, 1),
(142, 18, 'Brio', 0, 1),
(143, 18, 'Brio Satya', 0, 1),
(144, 18, 'Cielo', 0, 1),
(145, 18, 'City', 0, 1),
(146, 18, 'City Type Z', 0, 1),
(147, 18, 'Civic', 0, 1),
(148, 18, 'CR-V', 0, 1),
(149, 18, 'CR-Z', 0, 1),
(150, 18, 'CR-Z Hybrid', 0, 1),
(151, 18, 'Edix', 0, 1),
(152, 18, 'Elysion', 0, 1),
(153, 18, 'Estillo', 0, 1),
(154, 18, 'Ferio', 0, 1),
(155, 18, 'Fit', 0, 1),
(156, 18, 'Freed', 0, 1),
(157, 18, 'Genio', 0, 1),
(158, 18, 'HR-V', 0, 1),
(159, 18, 'Integra', 0, 1),
(160, 18, 'Jazz', 0, 1),
(161, 18, 'Legend', 0, 1),
(162, 18, 'Maesto', 0, 1),
(163, 18, 'Mobillio', 0, 1),
(164, 18, 'Nova', 0, 1),
(165, 18, 'Odyssey', 0, 1),
(166, 18, 'Prelude', 0, 1),
(167, 18, 'Prestige', 0, 1),
(168, 18, 'S2000', 0, 1),
(169, 18, 'Stepwagon', 0, 1),
(170, 18, 'Stream', 0, 1),
(171, 19, 'H2', 0, 1),
(172, 19, 'H3', 0, 1),
(173, 20, 'Accent', 0, 1),
(174, 20, 'Accent Verna', 0, 1),
(175, 20, 'Arya', 0, 1),
(176, 20, 'Atoz', 0, 1),
(177, 20, 'Avega', 0, 1),
(178, 20, 'Bimantara Cakra', 0, 1),
(179, 20, 'Cakra', 0, 1),
(180, 20, 'Coupe', 0, 1),
(181, 20, 'Elantra', 0, 1),
(182, 20, 'Excel', 0, 1),
(183, 20, 'Getz', 0, 1),
(184, 20, 'Grand Avega', 0, 1),
(185, 20, 'Grand I 10', 0, 1),
(186, 20, 'Grandeur', 0, 1),
(187, 20, 'H-1', 0, 1),
(188, 20, 'HD Mighty', 0, 1),
(189, 20, 'i-10', 0, 1),
(190, 20, 'i-20', 0, 1),
(191, 20, 'ILO', 0, 1),
(192, 20, 'Matrix', 0, 1),
(193, 20, 'Santa Fe', 0, 1),
(194, 20, 'Starex', 0, 1),
(195, 20, 'Trajet', 0, 1),
(196, 20, 'Tucson', 0, 1),
(197, 20, 'Verna', 0, 1),
(198, 20, 'XG1', 0, 1),
(199, 21, 'FX Series', 0, 1),
(200, 21, 'FX 37', 0, 1),
(201, 21, 'I30', 0, 1),
(202, 21, 'M37', 0, 1),
(203, 21, 'Q30', 0, 1),
(204, 22, 'Big Horn', 0, 1),
(205, 22, 'Bison', 0, 1),
(206, 22, 'Colt 77 PS', 0, 1),
(207, 22, 'D-Max Rodeo', 0, 1),
(208, 22, 'Dump Truck', 0, 1),
(209, 22, 'Elf', 0, 1),
(210, 22, 'F Series', 0, 1),
(211, 22, 'Giga Series', 0, 1),
(212, 22, 'Grand Touring', 0, 1),
(213, 22, 'MU-X', 0, 1),
(214, 22, 'N Series', 0, 1),
(215, 22, 'Panther', 0, 1),
(216, 23, 'Daimler', 0, 1),
(217, 23, 'S Type', 0, 1),
(218, 23, 'Six', 0, 1),
(219, 23, 'X Type', 0, 1),
(220, 23, 'XF', 0, 1),
(221, 23, 'XJ', 0, 1),
(222, 23, 'XJ Series', 0, 1),
(223, 23, 'XKR', 0, 1),
(224, 24, 'Cherokee', 0, 1),
(225, 24, 'CJ 7', 0, 1),
(226, 24, 'Grand Cherokee', 0, 1),
(227, 24, 'Patriot', 0, 1),
(228, 24, 'Willys', 0, 1),
(229, 24, 'Wrangler', 0, 1),
(230, 25, 'Carens', 0, 1),
(231, 25, 'Carnival', 0, 1),
(232, 25, 'Grand Carnival', 0, 1),
(233, 25, 'Magentis', 0, 1),
(234, 25, 'Mentor', 0, 1),
(235, 25, 'Morning', 0, 1),
(236, 25, 'Optima', 0, 1),
(237, 25, 'Picanto', 0, 1),
(238, 25, 'Pregio', 0, 1),
(239, 25, 'Prego', 0, 1),
(240, 25, 'Pride', 0, 1),
(241, 25, 'Rio', 0, 1),
(242, 25, 'Sedona', 0, 1),
(243, 25, 'Shuma', 0, 1),
(244, 25, 'Sorento', 0, 1),
(245, 25, 'Spectra', 0, 1),
(246, 25, 'Sportage', 0, 1),
(247, 25, 'Travello', 0, 1),
(248, 25, 'Visto', 0, 1),
(249, 26, 'Aventado', 0, 1),
(250, 26, 'Gallardo', 0, 1),
(251, 26, 'Huracan', 0, 1),
(252, 27, 'Defender', 0, 1),
(253, 27, 'Discovery', 0, 1),
(254, 27, 'Freelander', 0, 1),
(255, 27, 'Range Rover', 0, 1),
(256, 27, 'Range Rover Evoque', 0, 1),
(257, 27, 'Range Rover Sport', 0, 1),
(258, 28, 'GS Series', 0, 1),
(259, 28, 'NX Series', 0, 1),
(260, 28, 'LS Series', 0, 1),
(261, 28, 'LX Series', 0, 1),
(262, 28, 'RX Series', 0, 1),
(263, 29, 'Coupe', 0, 1),
(264, 29, 'Ghibli', 0, 1),
(265, 29, 'Gransport', 0, 1),
(266, 30, '2', 0, 1),
(267, 30, '3', 0, 1),
(268, 30, '5', 0, 1),
(269, 30, '6', 0, 1),
(270, 30, '8', 0, 1),
(271, 30, '323', 0, 1),
(272, 30, '626', 0, 1),
(273, 30, 'Baby Boomer', 0, 1),
(274, 30, 'Biante', 0, 1),
(275, 30, 'BT-50', 0, 1),
(276, 30, 'Capela', 0, 1),
(277, 30, 'Cronos', 0, 1),
(278, 30, 'CX - 5', 0, 1),
(279, 30, 'CX - 7', 0, 1),
(280, 30, 'CX - 9', 0, 1),
(281, 30, 'E2000', 0, 1),
(282, 30, 'Familia', 0, 1),
(283, 30, 'Interplay', 0, 1),
(284, 30, 'Lantis', 0, 1),
(285, 30, 'MPV', 0, 1),
(286, 30, 'MR', 0, 1),
(287, 30, 'MX -5 ', 0, 1),
(288, 30, 'MX -6 ', 0, 1),
(289, 30, 'Premacy', 0, 1),
(290, 30, 'RX - 8', 0, 1),
(291, 30, 'Tribute', 0, 1),
(292, 30, 'Van Trend', 0, 1),
(293, 30, 'VX1', 0, 1),
(294, 31, '650 S', 0, 1),
(295, 31, 'MP4-12C', 0, 1),
(296, 32, 'A Class', 0, 1),
(297, 32, 'B Class', 0, 1),
(298, 32, 'C Class', 0, 1),
(299, 32, 'CLA Class', 0, 1),
(300, 32, 'CLS Class', 0, 1),
(301, 32, 'E Class', 0, 1),
(302, 32, 'GL Class', 0, 1),
(303, 32, 'GLA Class', 0, 1),
(304, 32, 'ML Class', 0, 1),
(305, 32, 'R Class', 0, 1),
(306, 32, 'S Class', 0, 1),
(307, 32, 'SL Class', 0, 1),
(308, 32, 'SLK Class', 0, 1),
(309, 32, 'V Class', 0, 1),
(310, 33, 'Cabrio', 0, 1),
(311, 33, 'Clubman', 0, 1),
(312, 33, 'Cooper', 0, 1),
(313, 33, 'Country Man', 0, 1),
(314, 33, 'Coupe', 0, 1),
(315, 33, 'Mini Cooper', 0, 1),
(316, 33, 'Mini Cooper Country Man', 0, 1),
(317, 33, 'Mini Cooper S', 0, 1),
(318, 33, 'Paceman', 0, 1),
(319, 33, 'Roadster', 0, 1),
(320, 34, 'Airtrek', 0, 1),
(321, 34, 'Chariot', 0, 1),
(322, 34, 'Colt', 0, 1),
(323, 34, 'Colt FE', 0, 1),
(324, 34, 'Colt L300', 0, 1),
(325, 34, 'Colt SS', 0, 1),
(326, 34, 'Colt T 120 SS', 0, 1),
(327, 34, 'Delica', 0, 1),
(328, 34, 'Enterna', 0, 1),
(329, 34, 'FE 73', 0, 1),
(330, 34, 'FTO', 0, 1),
(331, 34, 'Fuso', 0, 1),
(332, 34, 'Galant', 0, 1),
(333, 34, 'Grandis', 0, 1),
(334, 34, 'Jetstar', 0, 1),
(335, 34, 'Kuda', 0, 1),
(336, 34, 'L200', 0, 1),
(337, 34, 'L300', 0, 1),
(338, 34, 'Lancer', 0, 1),
(339, 34, 'Lance Evolution', 0, 1),
(340, 34, 'Magna', 0, 1),
(341, 34, 'Maven', 0, 1),
(342, 34, 'Mirage', 0, 1),
(343, 34, 'New Fuso', 0, 1),
(344, 34, 'Outlander', 0, 1),
(345, 34, 'Outlander Sport', 0, 1),
(346, 34, 'Pajero', 0, 1),
(347, 34, 'Pajero Sport', 0, 1),
(348, 34, 'PS', 0, 1),
(349, 34, 'RVR', 0, 1),
(350, 34, 'Starwagon', 0, 1),
(351, 34, 'Strada', 0, 1),
(352, 34, 'Strada Triton', 0, 1),
(353, 34, 'Triton', 0, 1),
(354, 34, 'Verada', 0, 1),
(355, 35, '370Z', 0, 1),
(356, 35, 'Cedric', 0, 1),
(357, 35, 'Cefiro', 0, 1),
(358, 35, 'Cube', 0, 1),
(359, 35, 'Dualis', 0, 1),
(360, 35, 'Elgrand', 0, 1),
(361, 35, 'Evalia', 0, 1),
(362, 35, 'Fair Lady', 0, 1),
(363, 35, 'Frontier', 0, 1),
(364, 35, 'Genesis', 0, 1),
(365, 35, 'Grand Livina', 0, 1),
(366, 35, 'GTR', 0, 1),
(367, 35, 'Infiniti', 0, 1),
(368, 35, 'Juke', 0, 1),
(369, 35, 'Lafesta', 0, 1),
(370, 35, 'Latio', 0, 1),
(371, 35, 'Livina', 0, 1),
(372, 35, 'Livina X-Gear', 0, 1),
(373, 35, 'March', 0, 1),
(374, 35, 'Murano', 0, 1),
(375, 35, 'Navaro', 0, 1),
(376, 35, 'NX', 0, 1),
(377, 35, 'Patrol', 0, 1),
(378, 35, 'Presage', 0, 1),
(379, 35, 'Sentra', 0, 1),
(380, 35, 'Skyline', 0, 1),
(381, 35, 'Sunny', 0, 1),
(382, 35, 'Teana', 0, 1),
(383, 35, 'Terano', 0, 1),
(384, 35, 'Urvan', 0, 1),
(385, 35, 'Venette', 0, 1),
(386, 35, 'X-Trail', 0, 1),
(387, 36, 'Blazer', 0, 1),
(388, 36, 'Optima', 0, 1),
(389, 36, 'Vectra', 0, 1),
(390, 37, '107', 0, 1),
(391, 37, '206', 0, 1),
(392, 37, '207', 0, 1),
(393, 37, '208', 0, 1),
(394, 37, '3008', 0, 1),
(395, 37, '306', 0, 1),
(396, 37, '307', 0, 1),
(397, 37, '307 SW', 0, 1),
(398, 37, '308', 0, 1),
(399, 37, '405', 0, 1),
(400, 37, '406', 0, 1),
(401, 37, '407', 0, 1),
(402, 37, '407 SW', 0, 1),
(403, 37, '408', 0, 1),
(404, 37, '5008', 0, 1),
(405, 37, '505', 0, 1),
(406, 37, '508', 0, 1),
(407, 37, '605', 0, 1),
(408, 37, '806', 0, 1),
(409, 37, '807', 0, 1),
(410, 37, 'RCZ', 0, 1),
(411, 38, '911', 0, 1),
(412, 38, 'Boxster', 0, 1),
(413, 38, 'Carrera', 0, 1),
(414, 38, 'Cayenne', 0, 1),
(415, 38, 'Cayman', 0, 1),
(416, 38, 'Macan', 0, 1),
(417, 38, 'Panamera', 0, 1),
(418, 39, 'Campro', 0, 1),
(419, 39, 'Exora', 0, 1),
(420, 39, 'Gen 2', 0, 1),
(421, 39, 'Neo', 0, 1),
(422, 39, 'Persona', 0, 1),
(423, 39, 'Saga', 0, 1),
(424, 39, 'Satria', 0, 1),
(425, 39, 'Savvy', 0, 1),
(426, 39, 'Suprima S', 0, 1),
(427, 39, 'Wira', 0, 1),
(428, 40, 'Clio', 0, 1),
(429, 40, 'Duster', 0, 1),
(430, 40, 'Kangoo', 0, 1),
(431, 40, 'Megane', 0, 1),
(432, 40, 'Scenic', 0, 1),
(433, 41, 'Corniche', 0, 1),
(434, 41, 'Ghost', 0, 1),
(435, 41, 'Phantom', 0, 1),
(436, 42, 'Cabrio', 0, 1),
(437, 42, 'Fortwo', 0, 1),
(438, 42, 'Roadster', 0, 1),
(439, 42, 'Smart Mhd', 0, 1),
(440, 43, 'Actyon', 0, 1),
(441, 43, 'Boxer', 0, 1),
(442, 43, 'Korando', 0, 1),
(443, 43, 'Musso', 0, 1),
(444, 43, 'Rexton', 0, 1),
(445, 44, 'BRZ', 0, 1),
(446, 44, 'Forrester', 0, 1),
(447, 44, 'Impreza', 0, 1),
(448, 44, 'L Series', 0, 1),
(449, 44, 'SVV', 0, 1),
(450, 44, 'Wrx Sti', 0, 1),
(451, 44, 'XV', 0, 1),
(452, 44, 'XV 201', 0, 1),
(453, 45, 'Aerio', 0, 1),
(454, 45, 'Amenity', 0, 1),
(455, 45, 'APV', 0, 1),
(456, 45, 'Arena', 0, 1),
(457, 45, 'Balena', 0, 1),
(458, 45, 'Carry', 0, 1),
(459, 45, 'Carry Pick up', 0, 1),
(460, 45, 'Ertiga', 0, 1),
(461, 45, 'Escudo', 0, 1),
(462, 45, 'Esteem', 0, 1),
(463, 45, 'Estillo', 0, 1),
(464, 45, 'Every', 0, 1),
(465, 45, 'Forsa', 0, 1),
(466, 45, 'Fultura', 0, 1),
(467, 45, 'Grand Vitara', 0, 1),
(468, 45, 'Ignis', 0, 1),
(469, 45, 'Jimny', 0, 1),
(470, 45, 'Karimun', 0, 1),
(471, 45, 'Katana', 0, 1),
(472, 45, 'Mega Carry', 0, 1),
(473, 45, 'Neo Baleno', 0, 1),
(474, 45, 'Side Kick', 0, 1),
(475, 45, 'Sierra', 0, 1),
(476, 45, 'Splash', 0, 1),
(477, 45, 'Swift', 0, 1),
(478, 45, 'SX4', 0, 1),
(479, 45, 'Vitara', 0, 1),
(480, 45, 'X Road', 0, 1),
(481, 45, 'X Over', 0, 1),
(482, 45, 'XL-7', 0, 1),
(483, 46, 'Aria', 0, 1),
(484, 46, 'Vista', 0, 1),
(485, 47, 'DOHC', 0, 1),
(486, 47, 'S 515', 0, 1),
(487, 47, 'SOHC', 0, 1),
(488, 47, 'Timor', 0, 1),
(489, 48, '86', 0, 1),
(490, 48, 'Agya', 0, 1),
(491, 48, 'Alphard', 0, 1),
(492, 48, 'Altis', 0, 1),
(493, 48, 'Aristo', 0, 1),
(494, 48, 'Avalon', 0, 1),
(495, 48, 'Avanza', 0, 1),
(496, 48, 'Caldina', 0, 1),
(497, 48, 'Camry', 0, 1),
(498, 48, 'Camry Hybrid', 0, 1),
(499, 48, 'Celica', 0, 1),
(500, 48, 'Corolla', 0, 1),
(501, 48, 'Corolla Altis', 0, 1),
(502, 48, 'Corono', 0, 1),
(503, 48, 'Cressida', 0, 1),
(504, 48, 'Cresta', 0, 1),
(505, 48, 'Crown', 0, 1),
(506, 48, 'Dyna', 0, 1),
(507, 48, 'Estima', 0, 1),
(508, 48, 'Etios', 0, 1),
(509, 48, 'Etios Valco', 0, 1),
(510, 48, 'FJ Cruiser', 0, 1),
(511, 48, 'Fortuner', 0, 1),
(512, 48, 'GT 86', 0, 1),
(513, 48, 'Hardtop', 0, 1),
(514, 48, 'Harrier', 0, 1),
(515, 48, 'Hiace', 0, 1),
(516, 48, 'Hilux', 0, 1),
(517, 48, 'Innova', 0, 1),
(518, 48, 'ISIS', 0, 1),
(519, 48, 'IST', 0, 1),
(520, 48, 'Kijang', 0, 1),
(521, 48, 'Kijang Innova', 0, 1),
(522, 48, 'Kijang Pickup', 0, 1),
(523, 48, 'Kluger', 0, 1),
(524, 48, 'Land Cruiser', 0, 1),
(525, 48, 'Limo', 0, 1),
(526, 48, 'Mark X', 0, 1),
(527, 48, 'MR-S', 0, 1),
(528, 48, 'Nadia', 0, 1),
(529, 48, 'NAV1', 0, 1),
(530, 48, 'Noah', 0, 1),
(531, 48, 'Paseo', 0, 1),
(532, 48, 'Passo', 0, 1),
(533, 48, 'Picnic', 0, 1),
(534, 48, 'Prado', 0, 1),
(535, 48, 'Previa', 0, 1),
(536, 48, 'Prius', 0, 1),
(537, 48, 'Probox', 0, 1),
(538, 48, 'Raum', 0, 1),
(539, 48, 'RAV4', 0, 1),
(540, 48, 'Rush', 0, 1),
(541, 48, 'Sahara', 0, 1),
(542, 48, 'Soarer', 0, 1),
(543, 48, 'Soluna', 0, 1),
(544, 48, 'Starlet', 0, 1),
(545, 48, 'Supra', 0, 1),
(546, 48, 'Twincam', 0, 1),
(547, 48, 'Vanguard', 0, 1),
(548, 48, 'Vellfire', 0, 1),
(549, 48, 'Vienta', 0, 1),
(550, 48, 'Vios', 0, 1),
(551, 48, 'Voltz', 0, 1),
(552, 48, 'Voxy', 0, 1),
(553, 48, 'Will', 0, 1),
(554, 48, 'Wish', 0, 1),
(555, 48, 'Yaris', 0, 1),
(556, 49, 'Beetle', 0, 1),
(557, 49, 'Caravelle', 0, 1),
(558, 49, 'Golf', 0, 1),
(559, 49, 'Kombi', 0, 1),
(560, 49, 'Polo', 0, 1),
(561, 49, 'Scirocco', 0, 1),
(562, 49, 'Tiguan', 0, 1),
(563, 49, 'Touareg', 0, 1),
(564, 49, 'Touran', 0, 1),
(565, 49, 'Touran TSI', 0, 1),
(566, 50, '145', 0, 1),
(567, 50, '164', 0, 1),
(568, 50, '240', 0, 1),
(569, 50, '244', 0, 1),
(570, 50, '264', 0, 1),
(571, 50, '740', 0, 1),
(572, 50, '850', 0, 1),
(573, 50, '940', 0, 1),
(574, 50, '860', 0, 1),
(575, 50, 'S 850', 0, 1),
(576, 50, 'S40', 0, 1),
(577, 50, 'S60', 0, 1),
(578, 50, 'S70', 0, 1),
(579, 50, 'S80', 0, 1),
(580, 50, 'S90', 0, 1),
(581, 50, 'V70', 0, 1),
(582, 50, 'XC70', 0, 1),
(583, 50, 'XC90', 0, 1),
(584, 2, 'Q3', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `car_new`
--

CREATE TABLE IF NOT EXISTS `car_new` (
`id_carnew` int(11) NOT NULL,
  `id_carsubmodel` int(11) NOT NULL,
  `id_dealer` int(11) NOT NULL,
  `price` float NOT NULL,
  `show` tinyint(4) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `car_new`
--

INSERT INTO `car_new` (`id_carnew`, `id_carsubmodel`, `id_dealer`, `price`, `show`, `date`) VALUES
(1, 1, 100, 1050000000, 1, '2015-03-17 00:00:00'),
(2, 1, 101, 1050000000, 1, '2015-03-17 00:00:00'),
(3, 1, 102, 1050000000, 1, '2015-03-17 00:00:00'),
(4, 2, 100, 660000000, 1, '2015-03-17 00:00:00'),
(5, 2, 101, 660000000, 1, '2015-03-17 00:00:00'),
(6, 2, 102, 660000000, 1, '2015-03-17 00:00:00'),
(7, 3, 100, 2450000000, 1, '2015-03-17 00:00:00'),
(8, 3, 101, 2450000000, 1, '2015-03-17 00:00:00'),
(9, 3, 102, 2450000000, 1, '2015-03-17 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `car_newphoto`
--

CREATE TABLE IF NOT EXISTS `car_newphoto` (
`id_carnewphoto` int(11) NOT NULL,
  `id_carmodel` int(11) NOT NULL,
  `source` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `show` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `car_newphoto`
--

INSERT INTO `car_newphoto` (`id_carnewphoto`, `id_carmodel`, `source`, `type`, `show`) VALUES
(1, 7, 'images/newcar/1.png', 'thumb1', 1),
(2, 8, 'images/newcar/2.png', 'thumb1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `car_submodel`
--

CREATE TABLE IF NOT EXISTS `car_submodel` (
`id_carsubmodel` int(11) NOT NULL,
  `id_carmodel` int(11) NOT NULL,
  `id_carbody` int(11) NOT NULL,
  `submodelname` varchar(255) CHARACTER SET latin1 NOT NULL,
  `specification` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `car_submodel`
--

INSERT INTO `car_submodel` (`id_carsubmodel`, `id_carmodel`, `id_carbody`, `submodelname`, `specification`) VALUES
(1, 7, 3, 'A3 Saloon', ''),
(2, 8, 3, 'A4 Saloon', ''),
(3, 8, 6, 'RS4 Avant', ''),
(4, 9, 6, 'A5 Coupe', ''),
(5, 9, 6, 'A5 Sportback', ''),
(6, 9, 6, 'RS 5 Coupe', ''),
(7, 10, 3, 'A6 Saloon', ''),
(8, 11, 3, 'A7 Sportback', ''),
(9, 12, 3, 'A8', ''),
(10, 584, 4, 'Q3', ''),
(11, 13, 1, 'Q5', ''),
(12, 14, 1, 'Q7', ''),
(13, 15, 6, 'R8 Coupe', ''),
(14, 17, 3, 'TT Coupe', ''),
(15, 17, 3, 'TTS Coupe', '');

-- --------------------------------------------------------

--
-- Table structure for table `car_used`
--

CREATE TABLE IF NOT EXISTS `car_used` (
`id_carused` int(11) NOT NULL,
  `id_carsubmodel` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `photo` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `price` bigint(11) NOT NULL,
  `condition` text NOT NULL,
  `mileage` int(11) NOT NULL,
  `transmisi` varchar(255) NOT NULL,
  `tahun` int(11) NOT NULL,
  `tags` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car_used`
--

INSERT INTO `car_used` (`id_carused`, `id_carsubmodel`, `id_user`, `photo`, `title`, `desc`, `price`, `condition`, `mileage`, `transmisi`, `tahun`, `tags`, `date_added`) VALUES
(1, 7, 1, '["1.jpg"]', 'WTS Audi A6 2002', 'Haaaiiiiiii Agan-agan semua,, kali ini saya mau nawarin satu unit sedan nih :\r\n\r\nAUDI A4 2.0 AT ORIGINAL XENON HEAD LIGHT th 2002\r\nwarna HITAM MET\r\nPajak Bulan April\r\n\r\nUntuk harga penawaran bisa langsung Hub saya yaaa.... ditunggu jangan sampai ketinggalan...\r\n\r\nFAST RESPONSE HUB :\r\nRATIH 08112002255/022.95270078\r\nTerimakasih', 15000000000, 'Sangat Baik', 40000, 'MT', 2002, '2002,Audi,A3', '2015-04-01 00:00:00'),
(2, 7, 1, '["1.jpg"]', 'WTS Audi A6 2002', 'Haaaiiiiiii Agan-agan semua,, kali ini saya mau nawarin satu unit sedan nih :\r\n\r\nAUDI A4 2.0 AT ORIGINAL XENON HEAD LIGHT th 2002\r\nwarna HITAM MET\r\nPajak Bulan April\r\n\r\nUntuk harga penawaran bisa langsung Hub saya yaaa.... ditunggu jangan sampai ketinggalan...\r\n\r\nFAST RESPONSE HUB :\r\nRATIH 08112002255/022.95270078\r\nTerimakasih', 98500000, 'Sangat Baik', 40000, 'MT', 2002, '2002,Audi,A3', '2015-04-01 00:00:00'),
(3, 7, 1, '["1.jpg"]', 'WTS Audi A6 2002', 'Haaaiiiiiii Agan-agan semua,, kali ini saya mau nawarin satu unit sedan nih :\r\n\r\nAUDI A4 2.0 AT ORIGINAL XENON HEAD LIGHT th 2002\r\nwarna HITAM MET\r\nPajak Bulan April\r\n\r\nUntuk harga penawaran bisa langsung Hub saya yaaa.... ditunggu jangan sampai ketinggalan...\r\n\r\nFAST RESPONSE HUB :\r\nRATIH 08112002255/022.95270078\r\nTerimakasih', 98500000, 'Sangat Baik', 40000, 'MT', 2002, '2002,Audi,A3', '2015-04-01 00:00:00'),
(4, 7, 1, '["1.jpg"]', 'WTS Audi A6 2002', 'Haaaiiiiiii Agan-agan semua,, kali ini saya mau nawarin satu unit sedan nih :\r\n\r\nAUDI A4 2.0 AT ORIGINAL XENON HEAD LIGHT th 2002\r\nwarna HITAM MET\r\nPajak Bulan April\r\n\r\nUntuk harga penawaran bisa langsung Hub saya yaaa.... ditunggu jangan sampai ketinggalan...\r\n\r\nFAST RESPONSE HUB :\r\nRATIH 08112002255/022.95270078\r\nTerimakasih', 15000000000, 'Sangat Baik', 40000, 'MT', 2002, '2002,Audi,A3', '2015-04-01 00:00:00'),
(5, 7, 1, '["1.jpg"]', 'WTS Audi A6 2002', 'Haaaiiiiiii Agan-agan semua,, kali ini saya mau nawarin satu unit sedan nih : AUDI A4 2.0 AT ORIGINAL XENON HEAD LIGHT th 2002 warna HITAM MET Pajak Bulan April Untuk harga penawaran bisa langsung Hub saya yaaa.... ditunggu jangan sampai ketinggalan... FAST RESPONSE HUB : RATIH 08112002255/022.95270078 Terimakasih', 15000000000, 'Sangat Baik', 40000, 'MT', 2002, '2002,Audi,A3', '2015-04-01 00:00:00'),
(6, 7, 1, '["1.jpg"]', 'WTS Audi A6 2002', 'Haaaiiiiiii Agan-agan semua,, kali ini saya mau nawarin satu unit sedan nih : AUDI A4 2.0 AT ORIGINAL XENON HEAD LIGHT th 2002 warna HITAM MET Pajak Bulan April Untuk harga penawaran bisa langsung Hub saya yaaa.... ditunggu jangan sampai ketinggalan... FAST RESPONSE HUB : RATIH 08112002255/022.95270078 Terimakasih', 15000000000, 'Sangat Baik', 40000, 'MT', 2002, '2002,Audi,A3', '2015-04-01 00:00:00'),
(7, 7, 1, '["1.jpg"]', 'WTS Audi A6 2002', 'Haaaiiiiiii Agan-agan semua,, kali ini saya mau nawarin satu unit sedan nih : AUDI A4 2.0 AT ORIGINAL XENON HEAD LIGHT th 2002 warna HITAM MET Pajak Bulan April Untuk harga penawaran bisa langsung Hub saya yaaa.... ditunggu jangan sampai ketinggalan... FAST RESPONSE HUB : RATIH 08112002255/022.95270078 Terimakasih', 15000000000, 'Sangat Baik', 40000, 'MT', 2002, '2002,Audi,A3', '2015-04-01 00:00:00'),
(8, 7, 1, '["1.jpg"]', 'WTS Audi A6 2002', 'Haaaiiiiiii Agan-agan semua,, kali ini saya mau nawarin satu unit sedan nih : AUDI A4 2.0 AT ORIGINAL XENON HEAD LIGHT th 2002 warna HITAM MET Pajak Bulan April Untuk harga penawaran bisa langsung Hub saya yaaa.... ditunggu jangan sampai ketinggalan... FAST RESPONSE HUB : RATIH 08112002255/022.95270078 Terimakasih', 15000000000, 'Sangat Baik', 40000, 'MT', 2002, '2002,Audi,A3', '2015-04-01 00:00:00'),
(9, 7, 1, '["1.jpg"]', 'WTS Audi A6 2002', 'Haaaiiiiiii Agan-agan semua,, kali ini saya mau nawarin satu unit sedan nih : AUDI A4 2.0 AT ORIGINAL XENON HEAD LIGHT th 2002 warna HITAM MET Pajak Bulan April Untuk harga penawaran bisa langsung Hub saya yaaa.... ditunggu jangan sampai ketinggalan... FAST RESPONSE HUB : RATIH 08112002255/022.95270078 Terimakasih', 15000000000, 'Sangat Baik', 40000, 'MT', 2002, '2002,Audi,A3', '2015-04-01 00:00:00'),
(10, 7, 1, '["1.jpg"]', 'WTS Audi A6 2002', 'Haaaiiiiiii Agan-agan semua,, kali ini saya mau nawarin satu unit sedan nih : AUDI A4 2.0 AT ORIGINAL XENON HEAD LIGHT th 2002 warna HITAM MET Pajak Bulan April Untuk harga penawaran bisa langsung Hub saya yaaa.... ditunggu jangan sampai ketinggalan... FAST RESPONSE HUB : RATIH 08112002255/022.95270078 Terimakasih', 15000000000, 'Sangat Baik', 40000, 'MT', 2002, '2002,Audi,A3', '2015-04-01 00:00:00'),
(11, 7, 1, '["1.jpg"]', 'WTS Audi A6 2002', 'Haaaiiiiiii Agan-agan semua,, kali ini saya mau nawarin satu unit sedan nih : AUDI A4 2.0 AT ORIGINAL XENON HEAD LIGHT th 2002 warna HITAM MET Pajak Bulan April Untuk harga penawaran bisa langsung Hub saya yaaa.... ditunggu jangan sampai ketinggalan... FAST RESPONSE HUB : RATIH 08112002255/022.95270078 Terimakasih', 15000000000, 'Sangat Baik', 40000, 'MT', 2002, '2002,Audi,A3', '2015-04-01 00:00:00'),
(12, 7, 1, '["1.jpg"]', 'WTS Audi A6 2002', 'Haaaiiiiiii Agan-agan semua,, kali ini saya mau nawarin satu unit sedan nih : AUDI A4 2.0 AT ORIGINAL XENON HEAD LIGHT th 2002 warna HITAM MET Pajak Bulan April Untuk harga penawaran bisa langsung Hub saya yaaa.... ditunggu jangan sampai ketinggalan... FAST RESPONSE HUB : RATIH 08112002255/022.95270078 Terimakasih', 15000000000, 'Sangat Baik', 40000, 'MT', 2002, '2002,Audi,A3', '2015-04-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `dealer`
--

CREATE TABLE IF NOT EXISTS `dealer` (
`id_dealer` int(11) NOT NULL,
  `daler_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `phone` text CHARACTER SET latin1 NOT NULL,
  `fax` text NOT NULL,
  `address` text CHARACTER SET latin1 NOT NULL,
  `city` varchar(255) NOT NULL,
  `email` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dealer`
--

INSERT INTO `dealer` (`id_dealer`, `daler_name`, `phone`, `fax`, `address`, `city`, `email`) VALUES
(1, 'AUTO2000 Mangga Dua', '["021-6122000","021-6013900"]', '["021-6015435"]', 'Jl. Arteri Mangga Dua Blok F.5 Ruko Bahan Bangunan No. 1-3, Jakarta 10730', 'Jakarta', ''),
(2, 'AUTO2000 Juanda', '["021-2312000"]', '["021-3849283"]', 'Jl. Ir. H. Juanda No. 22 Jakarta 10120', 'Jakarta', ''),
(3, 'AUTO2000 Cilandak', '["021-7652000","021-7501025"]', '["021-7505308"]', 'Jl. TB. Simatupang, Cilandak, Lebak Bulus, Jakarta 12430', 'Jakarta', ''),
(4, 'AUTO2000 Kramat Jati', '["021-8402000"]', '["021-8400680","021-8400618"]', 'Jl. Raya Bogor Km. 21 Kramat Jati, Jakarta 13830', 'Jakarta', ''),
(5, 'AUTO2000 Pluit', '["021-6622000","021-6672000"]', '["021-6603526"]', 'Jl. Raya Pluit Selatan No.6 Jakarta 14450', 'Jakarta', ''),
(6, 'AUTO2000 Jayakarta', '["021-6262000","021-6007293"]', '["021-6494260","021-6007293"]', 'Jl. P. Jayakarta No. 9-11 Jakarta 11110', 'Jakarta', ''),
(7, 'AUTO2000 Garuda', '["021-4252000"]', '["021-4206575"]', 'Jl. Garuda No.84 Jakarta 10650', 'Jakarta', ''),
(8, 'AUTO2000 Tebet Supomo', '["021-8302000"]', '["021-8300432"]', 'Jl. Prof. Dr. Supomo, SH No.46 Jakarta 12870', 'Jakarta', ''),
(9, 'AUTO2000 Kalimalang', '["021-8652000"]', '["021-8642446"]', 'Jl. Raya Tarum Barat No. 45 Kalimalang, Jakarta 13450', 'Jakarta', ''),
(10, 'AUTO2000 Muara Karang', '["021-6682000"]', '["021-6623783"]', 'Jl. Muara Karang Raya Blok set V, Timur No. 17 - 18, Jakarta Utara 14450', 'Jakarta', ''),
(11, 'AUTO2000 Daan Mogot', '["021-5688719"]', '["021-5642000","021-5682110"]', 'Jl. Daan Mogot No. 146-147 Jakarta 11510', 'Jakarta', ''),
(12, 'AUTO2000 Salemba', '["021-3152000"]', '["021-3908117","021-3162638"]', 'Jl. Salemba Raya No.67 Jakarta 10440', 'Jakarta', ''),
(13, 'AUTO2000 Tebet Sahardjo', '["021-83792000,"021-83705870"]', '["021-83705875]', 'Jl. Dr. Sahardjo No. 246 A Jakarta 12960', 'Jakarta', ''),
(14, 'Astrido Toyota Klender', '["021-8610322"]', '["021-8610320"]', 'Jl. Pahlawan Revolusi No.9, Klender, Jakarta 13470', 'Jakarta', ''),
(15, 'AUTO2000 Sunter B&P', '["021-2602000"]', '["021-2601762"]', 'Jl. Gaya Motor III No.3, Sunter II, Jakarta Utara 14330', 'Jakarta', ''),
(16, 'AUTO2000 Kapuk', '["021-55962000"]', '["021-55962999"]', 'Jl. Lingkar Luar Barat - Kamal Cengkareng, Cengkareng Timur, Jakarta 11730', 'Jakarta', ''),
(17, 'AUTO2000 Cempaka Putih', '["021-4262000"]', '["021-4265234"]', 'Jl. Letjen. Suprapto No. 63 Jakarta 10520', 'Jakarta', ''),
(18, 'AUTO2000 Radio Dalam', '["021-7252000"]', '["021-7398887"]', 'Jl. Radio Dalam No.124 A-B Jakarta 12140', 'Jakarta', ''),
(19, 'Plaza Toyota Pemuda', '["021-47868686"]', '["021-4899012","021-47869938]', 'Jl. Pemuda Raya I No. 6, Jakarta', 'Jakarta', ''),
(20, 'AUTO2000 Yos Sudarso', '["021-65302000"]', '["021-65836965"]', 'Jl. Laks. Yos Sudarso Kav. 46-48 Sunter II, Jakarta Utara 14330', 'Jakarta', ''),
(21, 'AUTO2000 Slipi', '["021-53672000"]', '["021-53676959"]', 'Jl. Letjen S. Parman Kav. N4, Slipi Jakarta 11500', 'Jakarta', ''),
(22, 'AUTO2000 Samanhudi', '["021-3455221","021-3802000"]', '["021-3814158"]', 'Jl. Samanhudi No. 7 Jakarta 10710', 'Jakarta', ''),
(23, 'Tunas Toyota Bintaro', '["021-7350555"]', '["021-7350314"]', 'Jl. R.C. Veteran No.24 Bintaro, Jakarta 12330', 'Jakarta', ''),
(24, 'Tunas Toyota Dewi Sartika', '["021-8093969"]', '["021-8097675"]', 'Jl. Dewi Sartika No. 145, Cawang, Jakarta 13360', 'Jakarta', ''),
(25, 'AUTO 2000 Kelapa Gading', '["021-4532000"]', '["021-45848534"]', 'Jl. Gading Residence E-1 Kelapa Gading, Jakarta Utara', 'Jakarta', ''),
(26, 'AUTO2000 Glodok Plaza', '["021-6282000"]', '["021-6264495"]', 'Komp. Pertokoan Glodok Plaza Blok. H 25-26 Jakarta 11120', 'Jakarta', ''),
(27, 'AUTO 2000 Wahid Hasyim', '["021-3912000"]', '["021-39162358"]', 'Jl. Wahid Hasyim No. 164 Jakarta 10250', 'Jakarta', ''),
(28, 'Plaza Toyota Tendean', '["021-52901818"]', '["021-52892281"]', 'Jl. Kapt. Tendean No. 9A, Jakarta Selatan 12710', 'Jakarta', ''),
(29, 'Tunas Toyota Jatinegara', '["021-8199736","021-8199740"]', '["021-8191921"]', 'Jl. Jatinegara Timur No. 51, Jakarta 13310', 'Jakarta', ''),
(30, 'TAM Workshop Sunter II', '["021-6518422","021-6512116","021-6512713"]', '["021-6509318"]', 'Jl. Gaya Motor Selatan 5 Jakarta 14350', 'Jakarta', ''),
(31, 'AUTO2000 Puri Kembangan (Dyna Outlet)', '["021-58352000"]', '["021-5828660"]', 'Jl. Lingkar Luar Barat - Puri Kembangan, Jakarta 11500', 'Jakarta', ''),
(32, 'AUTO 2000 Pramuka', '["021-8582000"]', '["021-8516622"]', 'Jl. Raya Pramuka No.146 Kav. 29-30, Jakarta 13120', 'Jakarta', ''),
(33, 'AUTO 2000  Lenteng Agung', '["021-7822000"]', '["021-7810262"]', 'Jl. Raya Lenteng Agung no. 8A, Tanjung Barat, Jakarta Selatan 12530', 'Jakarta', ''),
(34, 'Tunas Toyota Radin Inten', '["021-8604949"]', '["021-86607171"]', 'Jl. Radin Inten 2 No. 62, Jakarta Timur', 'Jakarta', ''),
(35, 'Astrido Toyota Yos Sudarso', '["021-4303210","021-43937450","021-43937451"]', '["021-43938660"]', 'Jl. Yos Sudarso 19, Tanjung Priok, Jakarta 14230', 'Jakarta', ''),
(36, 'Auto 2000 Permata Hijau', '["021-53662000"]', '["021-53655288"]', 'Jl. Raya Kebayoran Lama No. 28. Jakarta Barat 11560', 'Jakarta', ''),
(37, 'AUTO 2000 Sudirman', '["021-5703325"]', '["021-5737027"]', 'Wisma Keiai, Jl. Jend. Sudirman Kav. 3, Jakarta Pusat', 'Jakarta', ''),
(38, 'Astrido Toyota Pondok Indah', '["021-7269969"]', '["021-7397086"]', 'Jl. Sultan Iskandar Muda No. 1 A, P. Indah, Jakarta 12240', 'Jakarta', ''),
(39, 'Daya Toyota Cakung', '["021-88968800"]', '["021-88968900"]', 'Jl Raya Bekasi Km. 26,5, Kelurahan Ujung Menteng, Kec. Cakung, Jakarta Timur', 'Jakarta', ''),
(40, 'Astrido Toyota Bandengan', '["021-6696850","021-6600031"]', '["021-6600212"]', 'Jl. Bandengan Utara 41-A, Jakarta Utara 14440', 'Jakarta', ''),
(41, 'Astrido Toyota Kebon Jeruk', '["021-5302722"]', '["021-53653198"]', 'Jl. Raya Perjuangan 33A, Kedoya - Kebon Jeruk - Jakarta 11530', 'Jakarta', ''),
(42, 'AUTO 2000 Ambassador', '["021-5762000"]', '["021-5760040"]', 'Mall Satrio Ambassador, Jl. Prof. Dr. Satrio Kav. 8-9, Kuningan, Jakarta, 12940', 'Jakarta', ''),
(43, 'Tunas Toyota Kebayoran Lama', '["021-5320555"]', '["021-5494370"]', 'Jl. Raya Kebayoran Lama No.38, Jakarta', 'Jakarta', ''),
(44, 'Astrido Toyota Kelapa Gading - Boulevard', '["021-4515655"]', '["021-4501251"]', 'Jl. Boulevard Raya Barat Blok LC-7 N0 43-45, Kelapa Gading, Jakarta 14330', 'Jakarta', ''),
(45, 'Tunas Toyota Latumenten', '["021-86607171"]', '["021-56965328"]', 'Komp. Central Latumenten Blok AA 31 Jln Latumenten No. 50', 'Jakarta', ''),
(46, 'AUTO 2000 Angkasa', '["021-4222000"]', '["021-4217773"]', 'Jl. Angkasa Raya I Blok B16/1, Jakarta 10610', 'Jakarta', ''),
(47, 'Tunas Toyota Mampang', '["021-7987480","021-7995812"]', '["021-7989047"]', 'Jl. Mampang Prapatan 83-85, Jakarta 12790', 'Jakarta', ''),
(48, 'Astrido Toyota Kelapa Gading - Mediterania', '["021-45861041","021-4515651"]', '["021-45861051"]', 'Jl. Bukit Gading Mediterania No. 1, Kelapa Gading - Jakarata Utara 14240', 'Jakarta', ''),
(49, 'Plaza Toyota Kyai Tapa', '["021-56978118"]', '["021-56978908"]', 'Jl. Kyai Tapa No. 263, Jakarta 11440', 'Jakarta', ''),
(50, 'Astrido Toyota Batu Tulis', '["021-3855360"]', '["021-3841306"]', 'Jl. Batu Tulis Raya 50 C.D. E.F, Jakarta Pusat 10120', 'Jakarta', ''),
(51, 'Tunas Toyota Ciputat', '["021-7490724","021-7490725","021-7490726"]', '["021-7491679"]', 'Jl. Dewi Sartika 187, Ciputat, Jakarta 15411', 'Jakarta', ''),
(52, 'Plaza Toyota Green Garden', '["021-58302555","021-5828528"]', '["021-58328531"]', 'Jl. Panjang No. 25, Kedoya Utara, Jakarta 11520', 'Jakarta', ''),
(53, 'Astrido Toyota - Harmoni', '["021-3863228"]', '["021-3519833"]', 'Jl. Balikpapan Raya No. 7, Jakarta 10160', 'Jakarta', ''),
(54, 'Tunas Toyota Pasar Minggu', '["021-7940777"]', '["021-7942178"]', 'Jl. Raya Pasar Minggu No.7, Jakarta 12520', 'Jakarta', ''),
(55, 'Akastra Motor', '["021-5347177"]', '["021-5303661"]', 'Jl. Raya Kebayoran Lama No. 26, Palmerah VII, Jakarta 11540', 'Jakarta', ''),
(56, 'Tunas Toyota Pecenongan', '["021-2313777","021-3459491"]', '["021-2313001"]', 'Jl. Pecenongan 60-62, Jakarta 10120', 'Jakarta', ''),
(57, 'Tunas Toyota Cinere', '["021-7540108"]', '["021-7540118"]', 'Jl. Cinere Raya No. 19, Jakarta 16514', 'Jakarta', ''),
(58, 'AUTO 2000 Puri Kembangan', '["021-5822000","021-5828767"]', '["021-5828660"]', 'Jl. Lingkar Luar Barat Puri Kembangan, Jakarta 115', 'Jakarta', ''),
(59, 'Tunas Toyota Hayam Wuruk', '["021-6280450","021-6498633"]', '["021-6296179"]', 'Jl. Hayam Wuruk  No. 52, Jakarta 11160', 'Jakarta', ''),
(60, 'Astrido Toyota Fatmawati', '["021-7505297"]', '["021-7505080"]', 'Jl. R.S. Fatmawati  1, Jakarta 12420', 'Jakarta', ''),
(61, 'Akastra Motor', '["021-5347177"]', '["021-5303661"]', 'Jl. Raya Kebayoran Lama No.26, Palmerah VII, Jakarta 11540', 'Jakarta', ''),
(62, 'AUTO 2000 Ciledug', '["021-7372000","021-7352000"]', '["021-7373007"]', 'Jl. Ciledug Raya No.16, Petukangan Selatan, Jakarta 12270', 'Jakarta', ''),
(63, 'AUTO2000 Krida - Cilandak', '["021-29406465"]', '["021-29406464"]', 'Jl. Krida Cilandak, Jakarta Selatan', 'Jakarta', ''),
(64, 'Honda Daan Mogot (PT. Istana Kemakmuran Motor Daan Mogot)', '["021-5644888"]', '["021-5644666"]', 'Jl. Daan Mogot No. 6, \r\nJakarta 11460', 'Jakarta', ''),
(65, 'HONDA JAKARTA CENTER (PT. Imora Motor)', '["021-6011101","021-6260589"]', '["021-6493822","021-6010803"]', 'Jl. Pangeran Jayakarta No. 50 Jakarta 10730', 'Jakarta', ''),
(66, 'Honda Fatmawati (PT. Istana Kebayoran Raya Motor)', '["021-7656456"]', '["021-7502678"]', 'Jl. RS. Fatmawati No. 21 Jakarta 12410', 'Jakarta', ''),
(67, 'Honda Megatama (PT. Megatama Mandiri)', '["021-8628888"]', '["021-86603890"]', 'Jl. Raya Kalimalang No. 18 Jakarta 13440', 'Jakarta', ''),
(68, 'Honda Autoland (PT. Gading Prima Autoland)', '["021-4501858","021-4501868"]\r\n\r\nTelpp. (021) 4501858, \r\nFax. (021) 4501958"', '["021-4501958"]', 'Jl. Boulevard Barat XB 1-2 Kelapa Gading , Jakarta-14250', 'Jakarta', ''),
(69, 'Honda Kebon Jeruk (PT. Istana Kebon Jeruk)', '["021-5492580"]', '["021-5491347"]', 'Jl. Panjang No. 200, Kebon Jeruk Jakarta 11530', 'Jakarta', ''),
(70, 'Honda Hasyim Ashari (PT. Istana Kemakmuran Motor)', '["021-6331456","021-6331457","021-6331458","021-6331459"]', '["021-6329126"]', 'Jl. K.H Hasyim Ashari No. 24 Jakarta 10130', 'Jakarta', ''),
(71, 'Honda Pondok Indah (PT. Istana Kebayoran Raya Motor)', '["021-7223366","021-7223377"]', '["021-7261049"]', 'Jl. Sultan Iskandar Muda Kav 8 Arteri Pondok Indah, Jakarta 12240', 'Jakarta', ''),
(72, 'Honda Cibubur (PT. Cibubur Indah Motor)', '["021-84599441","021-84599442","021-84599443"]', '["021-84599044"]', 'Jl. Raya Alternatif Cibubur Cileungsi No. 38 Bekasi 17435', 'Bekasi', ''),
(73, 'Honda Sunter (PT. Handijaya Sukatama)', '["021-6403740","021-6403740"]', '["021-6403739"]', 'Jl. Danau Sunter Barat A 1/7 Jakarta 14350', 'Jakarta', ''),
(74, 'Honda Mugen Puri (PT Mitrausaha Gentaniaga)', '["021-58358000"]', '["021-58357941"]', 'Jl. Lingkar Luar Barat, Puri Kembangan Jakarta Barat 11610', 'Jakarta', ''),
(75, 'Honda Union Jaya (PT. Pro Union Indo Jaya)', '["021-3455721"]', '["021-3847732"]', 'Jl. Sukarjo Wiryopranoto No. 2A Jakarta 10120', 'Jakarta', ''),
(76, 'Honda Tebet (PT. Setianita Megah Motor)', '["021-8281393","021-8281394"]', '["021-8281395"]', 'Jl. Prof Dr. Soepomo No. 44 Jakarta 12780', 'Jakarta', ''),
(77, 'Honda Arista Jatinegara (PT. Arista Auto Prima)', '["021-85919898"]', '["021-85901018"]', 'Jl. Jatinegara Barat No. 151, Jatinegara Jakarta Timur', 'Jakarta', ''),
(78, 'Honda Pluit (PT. Pluit Auto Plaza)', '["021-6677888"]', '["021-6677777","021-6670646"]', 'Jl. Pluit Raya Selatan No. 2 Jakarta 14440', 'Jakarta', ''),
(79, 'Honda Megatama Kapuk', '', '', 'Jl. Lingkar Luar Barat No. 8', 'Jakarta', ''),
(80, 'Honda Cakra Pangukir (PT. Pangukir Gading Cakra Utama)', '["021-3905570","021-3905571"]', '["021-3908584"]', 'Jl. Salemba Raya No. 23 Jakarta 10440', 'Jakarta', ''),
(81, 'Honda Mugen (PT. Mitrausaha Gentaniaga)', '["021-7973000"]', '["021-7973834"]', 'Jl. Raya Pasar Minggu No. 10 Jakarta 12740', 'Jakarta', ''),
(82, 'Honda Autoland', '["021-46826699"]', '["021-6677777","021-4600918"]', 'Jl. Raya Pengangsaan Dua No. 96 Jakarta 14250', 'Jakarta', ''),
(83, 'Honda Mangga Dua (PT. Arista Auto Prima)', '["021-6129999"]', '["021-6123850"]', 'Jl. Mangga Dua Raya, Komp.Grand Boutique Mangga Dua Blok C No. 3-4, Jakarta 10730', 'Jakarta', ''),
(84, 'Honda Permata Hijau (PT. Permata Hijau Automegah)', '["021-5332566"]', '["021-5332565"]', 'Jl. Raya Kebayoran Lama No. 40 Jakarta 12210', 'Jakarta', ''),
(85, 'Honda Maju Motor', '', '', 'Jl. Danau Sunter Utara Blok J12 No. 81-85 \r\nJakarta Utara 14350', 'Jakarta', ''),
(86, 'Honda Tendean (PT. Auto Daya Keisindo)', '["021-7195240"]', '["021-7190079"]', 'Jl. Kapten Tendean No. 8 Jakarta 12730', 'Jakarta', ''),
(87, 'Honda Pondok Pinang (PT. Megatama Mandiri)', '["021-75818000"]', '["021-75900999"]', 'Jl. Ciputat Raya No. 80, Pondok Pinang Kebayoran Lama, Jakarta 12310', 'Jakarta', ''),
(88, 'Ford Jakarta Barat (PT. Kreasi Auto Kencana)', '["021-5663127"]', '["021-5663137"]', 'JL. Panjang No: 8; Arteri Kedoya JAKARTA BARAT 11520', 'Jakarta', ''),
(89, 'Ford Jakarta Pusat (PT. Kreasi Auto Kencana)', '["021-6306508"]', '["021-6306612"]', 'JL. KH. Hasyim Ashari No. 45 JAKARTA 10150', 'Jakarta', ''),
(90, 'Ford Pluit (PT. Kreasi Auto Kencana)', '["021-6693673"]', '["021-6628187"]', 'JL. Pluit Putra Raya No. 15 JAKARTA 14450', 'Jakarta', ''),
(91, 'Ford Kelapa Gading (PT. Kreasi Auto Kencana)', '["021-29385551"]', '["021-29382976","021-29382975"]', 'Jl. Pegangsaan Indah Barat (Gading Puspa), Kel. Pegangsaan Dua, Kec. Kelapa Gading Jakarta 14240', 'Jakarta', ''),
(92, 'BMW Hayam Wuruk PT Tunas Mobilindo Parama', '["021-6495550","021-6260775"]', '["021-6495544"]', 'Jl. Hayam Wuruk No. 51 Jakarta 11160', 'Jakarta', ''),
(93, 'BMW Cilandak PT Astra International Tbk', '["021-7691072","021-7500335"]', '["021-7664733"]', 'Jl. RA Kartini kav 203 Jakarta 12430', 'Jakarta', ''),
(94, 'BMW Sunter PT Astra International Tbk', '["021-6505959","021-6503636"]', '["021-6505858"]', 'Jl. Gaya Motor Selatan No.1 Sunter II Jakarta 14330', 'Jakarta', ''),
(95, 'BMW Tomang PT Tunas Mobilindo Parama', '["021-5667509","021-5633152"]', '["021-5683172"]', 'Jl. Tomang Raya No. 19 Jakarta 11440', 'Jakarta', ''),
(96, 'BMW Tebet PT Tunas Mobilindo Parama', '["021-8301805","021-8301807","021-8298451"]', '["021-8305704"]', 'Jl. Dr Soepomo No.174 Jakarta 12810', 'Jakarta', ''),
(97, 'BMW Pluit PT Astra International Tbk', '["021-66605599"]', '["021-66695679"]', 'Jl. Pluit Putra Raya No. 21 Penjaringan, Jakarta Utara 14450', 'Jakarta', ''),
(98, 'BMW Kebun Jeruk PT Trans Eurokars', '["021-5353000","021-5358000"]', '["021-5360506"]', 'Jl. Panjang No. 6 Jakarta 11530', 'Jakarta', ''),
(99, 'BMW Mampang PT Tunas Mobilindo Parama', '["021-7980707"]', '["021-7980202"]', 'Jl. Warung Buncit No. 14 12760 - Jakarta Selatan', 'Jakarta', ''),
(100, 'Audi Plaza Indonesia PT.Wangsa Indra Permana', '["021-33800178"]', '', 'East Point Level 1 Jl. MH. Thamrin No.28 - 30 Jakarta Pusat', 'Jakarta', ''),
(101, 'Audi Center MT.Haryono PT.Wangsa Indra Permana', '["021-8582834"]', '["021-8579324"]', 'Jl.MT.Haryono Kav.11 Jakarta 13330', 'Jakarta', ''),
(102, 'Audi Pantai Indah Kapuk PT. Wolfsburg Auto Indonesia', '["021-5881321"]', '["021-5881320"]', 'Jl. Pantai Indah Selatan I STA Jakarta 14440', 'Jakarta', ''),
(103, 'CHERY MOBIL INDONESIA', '["021-63854395"]', '["021-63854393"]', 'Jl. Hasyim Ashari No.1 Jakarta Pusat', 'Jakarta', ''),
(104, 'Lexus Indonesia', '["021-3901324"]', '', 'Jalan Proklamasi No 35 Menteng, Jakarta Pusat 10320', 'Jakarta', ''),
(105, 'Mazda Jakarta Barat', '["021-5309888"]', '["021-5327707"]', 'Jl.Letjen S. Parman Kav.N1, Jakarta Barat 11480', 'Jakarta', '["wae@wae.co.id"]'),
(106, 'Mazda Thamrin', '["021-30006788"]', '["021-30006789"]', 'Indosurya Plaza Lt. Lobby Unit - D Jl. MH. Thamrin Kav 8-9 Jakarta Pusat- 10230', 'Jakarta', '["mazda.thamrin@gmail.com"]'),
(107, 'Mazda Jakarta Selatan', '["021-7269000"]', '["021-7291733"]', 'Jl.Sultan Iskandar Muda No.51 Jakarta Selatan 12240', 'Jakarta', '["mazdajaksel@eurokars.co.id"]'),
(108, 'Mazda Jakarta Timur', '["021-85901155"]', '["021-85906566"]', 'Jl. Jatinegara Barat No. 140 Jakarta Timur 13320', 'Jakarta', ''),
(109, 'Mazda Kelapa Gading', '["021-45860206"]\r\n', '["021-45843090"]', 'Jl. Boulevard Raya Blok DA No.1 Kelapa Gading - Jakarta Utara 14240', 'Jakarta', '["mazdajakut@eurokars.co.id"]'),
(110, 'Mazda Radio Dalam', '["021-7266006"]', '', 'Jl. Radio Dalam No. 38 Gandaria Utara, Jakarta Selatan 12240', 'Jakarta', ''),
(111, 'Mazda Pecenongan', '["021-3451155"]', '', 'Jl. Pecenongan No. 32 Jakarta Pusat 10120', 'Jakarta', ''),
(112, 'Mazda Sunter', '["021-29615666"]', '', 'Jl. Yos Sudarso Kav. 88, Sunter Jakarta Utara. 14350', 'Jakarta', ''),
(113, 'Mazda Jaksel PT Eurokars Surya Utama', '["021-7269000","021-72896000"]', '["021-7291733"]', 'Jl. Sultan Iskandar Muda No. 55C. Arteri Pondok Indah - Jakarta Selatan 12240', 'Jakarta', ''),
(114, 'Mazda Suryopranoto', '["021-3840999"]', '["021-3457668"]', 'Jalan Suryopranoto No. 77-79 Jakarta Pusat', 'Jakarta', ''),
(115, 'Mazda Menteng', '["021-39831111"]', '["021-31923081"]', 'Jl. HOS Cokroaminoto No. 88 Jakarta Pusat', 'Jakarta', ''),
(116, 'Mazda MT Haryono', '["021-29380222","021-29380668","021-3101111"]', '["021-29380669"]', 'Jl. MT Haryono Kav. 30, Jakarta 12820', 'Jakarta', '');

-- --------------------------------------------------------

--
-- Table structure for table `iklan`
--

CREATE TABLE IF NOT EXISTS `iklan` (
`id_iklan` int(11) NOT NULL,
  `page` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `source` varchar(255) CHARACTER SET latin1 NOT NULL,
  `title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `text` text CHARACTER SET latin1 NOT NULL,
  `url` varchar(255) NOT NULL,
  `show` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `iklan`
--

INSERT INTO `iklan` (`id_iklan`, `page`, `type`, `source`, `title`, `text`, `url`, `show`) VALUES
(1, 'index', 'popularnewcars', 'images/iklan/iklan2.jpg', 'Jaguar F-TYPE Coupé', 'Supercharged and super agile, with up to 550bhp and capable of the century sprint in 4.2 seconds.', '#', 1),
(2, 'index', 'iklan1', 'images/iklan/iklan1.jpg', '', '', '#', 1),
(3, 'index', 'newcarslaunces', 'images/iklan/iklan3.jpg', 'Jaguar F-TYPE Coupé', 'Supercharged and super agile, with up to 550bhp and capable of the century sprint in 4.2 seconds.', '#', 1);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE IF NOT EXISTS `review` (
`id_review` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `date` datetime NOT NULL,
  `show` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id_review`, `title`, `image`, `text`, `date`, `show`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'images/review/1.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit dolor in purus laoreet, sit amet commodo tellus porttitor. Donec nec augue quis neque vestibulum tincidunt. Aenean at diam non odio luctus semper eu vel est. Aenean sollicitudin nibh magna, at facilisis ligula volutpat ut. Ut iaculis, diam et gravida pharetra, lorem sem vehicula justo, pulvinar malesuada nisl magna blandit leo. Aliquam id metus sit amet lacus dignissim venenatis. Vestibulum eu metus a felis scelerisque elementum. Aliquam mollis tortor metus, a imperdiet dolor lacinia non. Nunc quam dolor, lobortis eget velit vitae, vulputate consequat tortor. Nullam sit amet placerat purus. Ut justo tortor, dignissim ut velit quis, finibus ornare ante. Cras neque urna, lacinia sit amet urna varius, aliquam porta nisi. Donec ut nisi vestibulum, pretium sapien eu, consectetur nisi. Proin nec orci quis elit suscipit lacinia. Morbi euismod orci purus, sed volutpat odio ultrices at. Aliquam erat volutpat.</p>\r\n<p>Duis vel lobortis diam. Cras ac tortor lacus. Duis et volutpat ex, eu egestas libero. Phasellus et turpis id elit imperdiet faucibus. Nunc elit justo, facilisis mattis volutpat ut, lobortis quis mauris. Mauris bibendum mollis quam, eu rutrum justo pretium quis. Morbi tincidunt sapien sit amet semper ultrices. Integer ultricies pharetra orci, sit amet consequat sem consequat vitae. Cras egestas nunc maximus feugiat dapibus. Ut ut ullamcorper urna. Aenean quis arcu mi. Praesent ut commodo mauris. In in nisl quis magna ornare lacinia</p>', '2015-03-17 00:00:00', 1),
(2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'images/review/1.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit dolor in purus laoreet, sit amet commodo tellus porttitor. Donec nec augue quis neque vestibulum tincidunt. Aenean at diam non odio luctus semper eu vel est. Aenean sollicitudin nibh magna, at facilisis ligula volutpat ut. Ut iaculis, diam et gravida pharetra, lorem sem vehicula justo, pulvinar malesuada nisl magna blandit leo. Aliquam id metus sit amet lacus dignissim venenatis. Vestibulum eu metus a felis scelerisque elementum. Aliquam mollis tortor metus, a imperdiet dolor lacinia non. Nunc quam dolor, lobortis eget velit vitae, vulputate consequat tortor. Nullam sit amet placerat purus. Ut justo tortor, dignissim ut velit quis, finibus ornare ante. Cras neque urna, lacinia sit amet urna varius, aliquam porta nisi. Donec ut nisi vestibulum, pretium sapien eu, consectetur nisi. Proin nec orci quis elit suscipit lacinia. Morbi euismod orci purus, sed volutpat odio ultrices at. Aliquam erat volutpat.</p>\r\n<p>Duis vel lobortis diam. Cras ac tortor lacus. Duis et volutpat ex, eu egestas libero. Phasellus et turpis id elit imperdiet faucibus. Nunc elit justo, facilisis mattis volutpat ut, lobortis quis mauris. Mauris bibendum mollis quam, eu rutrum justo pretium quis. Morbi tincidunt sapien sit amet semper ultrices. Integer ultricies pharetra orci, sit amet consequat sem consequat vitae. Cras egestas nunc maximus feugiat dapibus. Ut ut ullamcorper urna. Aenean quis arcu mi. Praesent ut commodo mauris. In in nisl quis magna ornare lacinia</p>', '2015-03-17 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE IF NOT EXISTS `subscribe` (
`id_subscribe` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subscribe`
--

INSERT INTO `subscribe` (`id_subscribe`, `email`, `ip`, `date`) VALUES
(1, 'daniel_dharma2000@yahoo.com', '::1', '2015-04-11 09:36:49');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id_user` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `email`, `password`, `fname`, `date_added`) VALUES
(1, 'daniel.dharma2000@gmail.com', 'aa47f8215c6f30a0dcdb2a36a9f4168e', 'Daniel', '2015-04-01 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
 ADD PRIMARY KEY (`id_banner`);

--
-- Indexes for table `car_body`
--
ALTER TABLE `car_body`
 ADD PRIMARY KEY (`id_carbody`);

--
-- Indexes for table `car_maker`
--
ALTER TABLE `car_maker`
 ADD PRIMARY KEY (`id_carmaker`);

--
-- Indexes for table `car_model`
--
ALTER TABLE `car_model`
 ADD PRIMARY KEY (`id_carmodel`), ADD KEY `id_carmaker` (`id_carmaker`);

--
-- Indexes for table `car_new`
--
ALTER TABLE `car_new`
 ADD PRIMARY KEY (`id_carnew`), ADD KEY `id_carsubmodel` (`id_carsubmodel`), ADD KEY `id_dealer` (`id_dealer`);

--
-- Indexes for table `car_newphoto`
--
ALTER TABLE `car_newphoto`
 ADD PRIMARY KEY (`id_carnewphoto`), ADD KEY `id_carmodel` (`id_carmodel`);

--
-- Indexes for table `car_submodel`
--
ALTER TABLE `car_submodel`
 ADD PRIMARY KEY (`id_carsubmodel`), ADD KEY `id_carmodel` (`id_carmodel`), ADD KEY `id_carbody` (`id_carbody`);

--
-- Indexes for table `car_used`
--
ALTER TABLE `car_used`
 ADD PRIMARY KEY (`id_carused`);

--
-- Indexes for table `dealer`
--
ALTER TABLE `dealer`
 ADD PRIMARY KEY (`id_dealer`);

--
-- Indexes for table `iklan`
--
ALTER TABLE `iklan`
 ADD PRIMARY KEY (`id_iklan`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
 ADD PRIMARY KEY (`id_review`);

--
-- Indexes for table `subscribe`
--
ALTER TABLE `subscribe`
 ADD PRIMARY KEY (`id_subscribe`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
MODIFY `id_banner` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `car_body`
--
ALTER TABLE `car_body`
MODIFY `id_carbody` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `car_maker`
--
ALTER TABLE `car_maker`
MODIFY `id_carmaker` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `car_model`
--
ALTER TABLE `car_model`
MODIFY `id_carmodel` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=585;
--
-- AUTO_INCREMENT for table `car_new`
--
ALTER TABLE `car_new`
MODIFY `id_carnew` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `car_newphoto`
--
ALTER TABLE `car_newphoto`
MODIFY `id_carnewphoto` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `car_submodel`
--
ALTER TABLE `car_submodel`
MODIFY `id_carsubmodel` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `car_used`
--
ALTER TABLE `car_used`
MODIFY `id_carused` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `dealer`
--
ALTER TABLE `dealer`
MODIFY `id_dealer` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=117;
--
-- AUTO_INCREMENT for table `iklan`
--
ALTER TABLE `iklan`
MODIFY `id_iklan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
MODIFY `id_review` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `subscribe`
--
ALTER TABLE `subscribe`
MODIFY `id_subscribe` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `car_model`
--
ALTER TABLE `car_model`
ADD CONSTRAINT `car_model_ibfk_1` FOREIGN KEY (`id_carmaker`) REFERENCES `car_maker` (`id_carmaker`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `car_new`
--
ALTER TABLE `car_new`
ADD CONSTRAINT `car_new_ibfk_1` FOREIGN KEY (`id_carsubmodel`) REFERENCES `car_submodel` (`id_carsubmodel`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `car_new_ibfk_2` FOREIGN KEY (`id_dealer`) REFERENCES `dealer` (`id_dealer`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `car_newphoto`
--
ALTER TABLE `car_newphoto`
ADD CONSTRAINT `car_newphoto_ibfk_1` FOREIGN KEY (`id_carmodel`) REFERENCES `car_model` (`id_carmodel`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `car_submodel`
--
ALTER TABLE `car_submodel`
ADD CONSTRAINT `car_submodel_ibfk_1` FOREIGN KEY (`id_carmodel`) REFERENCES `car_model` (`id_carmodel`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `car_submodel_ibfk_2` FOREIGN KEY (`id_carbody`) REFERENCES `car_body` (`id_carbody`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
