-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2024 at 03:51 PM
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
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `booking_id` int(11) NOT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `flight_id` varchar(255) DEFAULT NULL,
  `departure_location` varchar(255) DEFAULT NULL,
  `destination_location` varchar(255) DEFAULT NULL,
  `flight_date` date DEFAULT NULL,
  `cost` varchar(255) DEFAULT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`booking_id`, `user_email`, `flight_id`, `departure_location`, `destination_location`, `flight_date`, `cost`, `is_paid`) VALUES
(69, 'testlang@gmail.com', 'FI-96', 'Davao', 'Manila', '2024-01-15', '4000.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `flight_id` int(11) NOT NULL,
  `departure_location` varchar(50) DEFAULT NULL,
  `destination_location` varchar(50) DEFAULT NULL,
  `flight_date` date DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`flight_id`, `departure_location`, `destination_location`, `flight_date`, `cost`) VALUES
(1, 'Manila', 'Cebu', '2024-01-15', 4000.00),
(2, 'Manila', 'Batanes', '2024-02-29', 7000.00),
(3, 'Manila', 'Bicol', '2024-02-21', 15000.00),
(4, 'Manila', 'Pampanga', '2024-11-21', 18000.00),
(5, 'Manila', 'Davao', '2024-12-30', 17000.00),
(6, 'Manila', 'Palawan', '2024-01-11', 6000.00),
(7, 'Manila', 'Iloilo', '2024-02-10', 4000.00),
(8, 'Manila', 'Boracay', '2024-03-13', 19000.00),
(9, 'Manila', 'Leyte', '2024-08-28', 6000.00),
(10, 'Manila', 'Mindoro', '2024-02-25', 4000.00),
(11, 'Manila', 'Cagayan de Oro', '2024-09-19', 7000.00),
(12, 'Manila', 'Laoag', '2024-02-28', 5000.00),
(13, 'Manila', 'Zamboanga', '2024-04-08', 11000.00),
(14, 'Manila', 'GenSan', '2024-07-12', 8000.00),
(15, 'Manila', 'Surigao', '2024-09-20', 15000.00),
(16, 'Manila', 'Siargao', '2024-10-15', 18000.00),
(17, 'Manila', 'Tawi-Tawi', '2024-08-17', 17000.00),
(18, 'Manila', 'Tacloban', '2024-11-11', 12000.00),
(19, 'Manila', 'Virac', '2024-12-12', 19000.00),
(20, 'Cebu', 'Manila', '2024-01-15', 4000.00),
(21, 'Cebu', 'Batanes', '2024-02-29', 7000.00),
(22, 'Cebu', 'Bicol', '2024-02-21', 15000.00),
(23, 'Cebu', 'Pampanga', '2024-11-21', 18000.00),
(24, 'Cebu', 'Davao', '2024-12-30', 17000.00),
(25, 'Cebu', 'Palawan', '2024-01-11', 6000.00),
(26, 'Cebu', 'Iloilo', '2024-02-10', 4000.00),
(27, 'Cebu', 'Boracay', '2024-03-13', 19000.00),
(28, 'Cebu', 'Leyte', '2024-08-28', 6000.00),
(29, 'Cebu', 'Mindoro', '2024-02-25', 4000.00),
(30, 'Cebu', 'Cagayan de Oro', '2024-09-19', 7000.00),
(31, 'Cebu', 'Laoag', '2024-02-28', 5000.00),
(32, 'Cebu', 'Zamboanga', '2024-04-08', 11000.00),
(33, 'Cebu', 'GenSan', '2024-07-12', 8000.00),
(34, 'Cebu', 'Surigao', '2024-09-20', 15000.00),
(35, 'Cebu', 'Siargao', '2024-10-15', 18000.00),
(36, 'Cebu', 'Tawi-Tawi', '2024-08-17', 17000.00),
(37, 'Cebu', 'Tacloban', '2024-11-11', 12000.00),
(38, 'Cebu', 'Virac', '2024-12-12', 19000.00),
(39, 'Batanes', 'Manila', '2024-01-15', 4000.00),
(40, 'Batanes', 'Cebu', '2024-02-29', 7000.00),
(41, 'Batanes', 'Bicol', '2024-02-21', 15000.00),
(42, 'Batanes', 'Pampanga', '2024-11-21', 18000.00),
(43, 'Batanes', 'Davao', '2024-12-30', 17000.00),
(44, 'Batanes', 'Palawan', '2024-01-11', 6000.00),
(45, 'Batanes', 'Iloilo', '2024-02-10', 4000.00),
(46, 'Batanes', 'Boracay', '2024-03-13', 19000.00),
(47, 'Batanes', 'Leyte', '2024-08-28', 6000.00),
(48, 'Batanes', 'Mindoro', '2024-02-25', 4000.00),
(49, 'Batanes', 'Cagayan de Oro', '2024-09-19', 7000.00),
(50, 'Batanes', 'Laoag', '2024-02-28', 5000.00),
(51, 'Batanes', 'Zamboanga', '2024-04-08', 11000.00),
(52, 'Batanes', 'GenSan', '2024-07-12', 8000.00),
(53, 'Batanes', 'Surigao', '2024-09-20', 15000.00),
(54, 'Batanes', 'Siargao', '2024-10-15', 18000.00),
(55, 'Batanes', 'Tawi-Tawi', '2024-08-17', 17000.00),
(56, 'Batenes', 'Tacloban', '2024-11-11', 12000.00),
(57, 'Batanes', 'Virac', '2024-12-12', 19000.00),
(58, 'Bicol', 'Manila', '2024-01-15', 4000.00),
(59, 'Bicol', 'Cebu', '2024-02-29', 7000.00),
(60, 'Bicol', 'Batanes', '2024-02-21', 15000.00),
(61, 'Bicol', 'Pampanga', '2024-11-21', 18000.00),
(62, 'Bicol', 'Davao', '2024-12-30', 17000.00),
(63, 'Bicol', 'Palawan', '2024-01-11', 6000.00),
(64, 'Bicol', 'Iloilo', '2024-02-10', 4000.00),
(65, 'Bicol', 'Boracay', '2024-03-13', 19000.00),
(66, 'Bicol', 'Leyte', '2024-08-28', 6000.00),
(67, 'Bicol', 'Mindoro', '2024-02-25', 4000.00),
(68, 'Bicol', 'Cagayan de Oro', '2024-09-19', 7000.00),
(69, 'Bicol', 'Laoag', '2024-02-28', 5000.00),
(70, 'Bicol', 'Zamboanga', '2024-04-08', 11000.00),
(71, 'Bicol', 'GenSan', '2024-07-12', 8000.00),
(72, 'Bicol', 'Surigao', '2024-09-20', 15000.00),
(73, 'Bicol', 'Siargao', '2024-10-15', 18000.00),
(74, 'Bicol', 'Tawi-Tawi', '2024-08-17', 17000.00),
(75, 'Bicol', 'Tacloban', '2024-11-11', 12000.00),
(76, 'Bicol', 'Virac', '2024-12-12', 19000.00),
(77, 'Pampanga', 'Manila', '2024-01-15', 4000.00),
(78, 'Pampanga', 'Cebu', '2024-02-29', 7000.00),
(79, 'Pampanga', 'Batanes', '2024-02-21', 15000.00),
(80, 'Pampanga', 'Bicol', '2024-11-21', 18000.00),
(81, 'Pampanga', 'Davao', '2024-12-30', 17000.00),
(82, 'Pampanga', 'Palawan', '2024-01-11', 6000.00),
(83, 'Pampanga', 'Iloilo', '2024-02-10', 4000.00),
(84, 'Pampanga', 'Boracay', '2024-03-13', 19000.00),
(85, 'Pampanga', 'Leyte', '2024-08-28', 6000.00),
(86, 'Pampanga', 'Mindoro', '2024-02-25', 4000.00),
(87, 'Pampanga', 'Cagayan de Oro', '2024-09-19', 7000.00),
(88, 'Pampanga', 'Laoag', '2024-02-28', 5000.00),
(89, 'Pampanga', 'Zamboanga', '2024-04-08', 11000.00),
(90, 'Pampanga', 'GenSan', '2024-07-12', 8000.00),
(91, 'Pampanga', 'Surigao', '2024-09-20', 15000.00),
(92, 'Pampanga', 'Siargao', '2024-10-15', 18000.00),
(93, 'Pampanga', 'Tawi-Tawi', '2024-08-17', 17000.00),
(94, 'Pampanga', 'Tacloban', '2024-11-11', 12000.00),
(95, 'Pampanga', 'Virac', '2024-12-12', 19000.00),
(96, 'Davao', 'Manila', '2024-01-15', 4000.00),
(97, 'Davao', 'Cebu', '2024-02-29', 7000.00),
(98, 'Davao', 'Batanes', '2024-02-21', 15000.00),
(99, 'Davao', 'Bicol', '2024-11-21', 18000.00),
(100, 'Davao', 'Pampanga', '2024-12-30', 17000.00),
(101, 'Davao', 'Palawan', '2024-01-11', 6000.00),
(102, 'Davao', 'Iloilo', '2024-02-10', 4000.00),
(103, 'Davao', 'Boracay', '2024-03-13', 19000.00),
(104, 'Davao', 'Leyte', '2024-08-28', 6000.00),
(105, 'Davao', 'Mindoro', '2024-02-25', 4000.00),
(106, 'Davao', 'Cagayan de Oro', '2024-09-19', 7000.00),
(107, 'Davao', 'Laoag', '2024-02-28', 5000.00),
(108, 'Davao', 'Zamboanga', '2024-04-08', 11000.00),
(109, 'Davao', 'GenSan', '2024-07-12', 8000.00),
(110, 'Davao', 'Surigao', '2024-09-20', 15000.00),
(111, 'Davao', 'Siargao', '2024-10-15', 18000.00),
(112, 'Davao', 'Tawi-Tawi', '2024-08-17', 17000.00),
(113, 'Davao', 'Tacloban', '2024-11-11', 12000.00),
(114, 'Davao', 'Virac', '2024-12-12', 19000.00),
(115, 'Palawan', 'Manila', '2024-01-15', 4000.00),
(116, 'Palawan', 'Cebu', '2024-02-29', 7000.00),
(117, 'Palawan', 'Batanes', '2024-02-21', 15000.00),
(118, 'Palawan', 'Bicol', '2024-11-21', 18000.00),
(119, 'Palawan', 'Pampanga', '2024-12-30', 17000.00),
(120, 'Palawan', 'Davao', '2024-01-11', 6000.00),
(121, 'Palawan', 'Iloilo', '2024-02-10', 4000.00),
(122, 'Palawan', 'Boracay', '2024-03-13', 19000.00),
(123, 'Palawan', 'Leyte', '2024-08-28', 6000.00),
(124, 'Palawan', 'Mindoro', '2024-02-25', 4000.00),
(125, 'Palawan', 'Cagayan de Oro', '2024-09-19', 7000.00),
(126, 'Palawan', 'Laoag', '2024-02-28', 5000.00),
(127, 'Palawan', 'Zamboanga', '2024-04-08', 11000.00),
(128, 'Palawan', 'GenSan', '2024-07-12', 8000.00),
(129, 'Palawan', 'Surigao', '2024-09-20', 15000.00),
(130, 'Palawan', 'Siargao', '2024-10-15', 18000.00),
(131, 'Palawan', 'Tawi-Tawi', '2024-08-17', 17000.00),
(132, 'Palawan', 'Tacloban', '2024-11-11', 12000.00),
(133, 'Palawan', 'Virac', '2024-12-12', 19000.00),
(134, 'Iloilo', 'Manila', '2024-01-15', 4000.00),
(135, 'Iloilo', 'Cebu', '2024-02-29', 7000.00),
(136, 'Iloilo', 'Batanes', '2024-02-21', 15000.00),
(137, 'Iloilo', 'Bicol', '2024-11-21', 18000.00),
(138, 'Iloilo', 'Pampanga', '2024-12-30', 17000.00),
(139, 'Iloilo', 'Davao', '2024-01-11', 6000.00),
(140, 'Iloilo', 'Palawan', '2024-02-10', 4000.00),
(141, 'Iloilo', 'Boracay', '2024-03-13', 19000.00),
(142, 'Iloilo', 'Leyte', '2024-08-28', 6000.00),
(143, 'Iloilo', 'Mindoro', '2024-02-25', 4000.00),
(144, 'Iloilo', 'Cagayan de Oro', '2024-09-19', 7000.00),
(145, 'Iloilo', 'Laoag', '2024-02-28', 5000.00),
(146, 'Iloilo', 'Zamboanga', '2024-04-08', 11000.00),
(147, 'Iloilo', 'GenSan', '2024-07-12', 8000.00),
(148, 'Iloilo', 'Surigao', '2024-09-20', 15000.00),
(149, 'Iloilo', 'Siargao', '2024-10-15', 18000.00),
(150, 'Iloilo', 'Tawi-Tawi', '2024-08-17', 17000.00),
(151, 'Iloilo', 'Tacloban', '2024-11-11', 12000.00),
(152, 'Iloilo', 'Virac', '2024-12-12', 19000.00),
(153, 'Boracay', 'Manila', '2024-01-15', 4000.00),
(154, 'Boracay', 'Cebu', '2024-02-29', 7000.00),
(155, 'Boracay', 'Batanes', '2024-02-21', 15000.00),
(156, 'Boracay', 'Bicol', '2024-11-21', 18000.00),
(157, 'Boracay', 'Pampanga', '2024-12-30', 17000.00),
(158, 'Boracay', 'Davao', '2024-01-11', 6000.00),
(159, 'Boracay', 'Iloilo', '2024-02-10', 4000.00),
(160, 'Boracay', 'Palawan', '2024-03-13', 19000.00),
(161, 'Boracay', 'Leyte', '2024-08-28', 6000.00),
(162, 'Boracay', 'Mindoro', '2024-02-25', 4000.00),
(163, 'Boracay', 'Cagayan de Oro', '2024-09-19', 7000.00),
(164, 'Boracay', 'Laoag', '2024-02-28', 5000.00),
(165, 'Boracay', 'Zamboanga', '2024-04-08', 11000.00),
(166, 'Boracay', 'GenSan', '2024-07-12', 8000.00),
(167, 'Boracay', 'Surigao', '2024-09-20', 15000.00),
(168, 'Boracay', 'Siargao', '2024-10-15', 18000.00),
(169, 'Boracay', 'Tawi-Tawi', '2024-08-17', 17000.00),
(170, 'Boracay', 'Tacloban', '2024-11-11', 12000.00),
(171, 'Boracay', 'Virac', '2024-12-12', 19000.00),
(172, 'Leyte', 'Manila', '2024-01-15', 4000.00),
(173, 'Leyte', 'Cebu', '2024-02-29', 7000.00),
(174, 'Leyte', 'Batanes', '2024-02-21', 15000.00),
(175, 'Leyte', 'Bicol', '2024-11-21', 18000.00),
(176, 'Leyte', 'Pampanga', '2024-12-30', 17000.00),
(177, 'Leyte', 'Davao', '2024-01-11', 6000.00),
(178, 'Leyte', 'Iloilo', '2024-02-10', 4000.00),
(179, 'Leyte', 'Palawan', '2024-03-13', 19000.00),
(180, 'Leyte', 'Boracay', '2024-08-28', 6000.00),
(181, 'Leyte', 'Mindoro', '2024-02-25', 4000.00),
(182, 'Leyte', 'Cagayan de Oro', '2024-09-19', 7000.00),
(183, 'Leyte', 'Laoag', '2024-02-28', 5000.00),
(184, 'Leyte', 'Zamboanga', '2024-04-08', 11000.00),
(185, 'Leyte', 'GenSan', '2024-07-12', 8000.00),
(186, 'Leyte', 'Surigao', '2024-09-20', 15000.00),
(187, 'Leyte', 'Siargao', '2024-10-15', 18000.00),
(188, 'Leyte', 'Tawi-Tawi', '2024-08-17', 17000.00),
(189, 'Leyte', 'Tacloban', '2024-11-11', 12000.00),
(190, 'Leyte', 'Virac', '2024-12-12', 19000.00),
(191, 'Mindoro', 'Manila', '2024-01-15', 4000.00),
(192, 'Mindoro', 'Cebu', '2024-02-29', 7000.00),
(193, 'Mindoro', 'Batanes', '2024-02-21', 15000.00),
(194, 'Mindoro', 'Bicol', '2024-11-21', 18000.00),
(195, 'Mindoro', 'Pampanga', '2024-12-30', 17000.00),
(196, 'Mindoro', 'Davao', '2024-01-11', 6000.00),
(197, 'Mindoro', 'Iloilo', '2024-02-10', 4000.00),
(198, 'Mindoro', 'Palawan', '2024-03-13', 19000.00),
(199, 'Mindoro', 'Boracay', '2024-08-28', 6000.00),
(200, 'Mindoro', 'Leyte', '2024-02-25', 4000.00),
(201, 'Mindoro', 'Cagayan de Oro', '2024-09-19', 7000.00),
(202, 'Mindoro', 'Laoag', '2024-02-28', 5000.00),
(203, 'Mindoro', 'Zamboanga', '2024-04-08', 11000.00),
(204, 'Mindoro', 'GenSan', '2024-07-12', 8000.00),
(205, 'Mindoro', 'Surigao', '2024-09-20', 15000.00),
(206, 'Mindoro', 'Siargao', '2024-10-15', 18000.00),
(207, 'Mindoro', 'Tawi-Tawi', '2024-08-17', 17000.00),
(208, 'Mindoro', 'Tacloban', '2024-11-11', 12000.00),
(209, 'Mindoro', 'Virac', '2024-12-12', 19000.00),
(210, 'Cagayan de Oro', 'Manila', '2024-01-15', 4000.00),
(211, 'Cagayan de Oro', 'Cebu', '2024-02-29', 7000.00),
(212, 'Cagayan de Oro', 'Batanes', '2024-02-21', 15000.00),
(213, 'Cagayan de Oro', 'Bicol', '2024-11-21', 18000.00),
(214, 'Cagayan de Oro', 'Pampanga', '2024-12-30', 17000.00),
(215, 'Cagayan de Oro', 'Davao', '2024-01-11', 6000.00),
(216, 'Cagayan de Oro', 'Iloilo', '2024-02-10', 4000.00),
(217, 'Cagayan de Oro', 'Palawan', '2024-03-13', 19000.00),
(218, 'Cagayan de Oro', 'Boracay', '2024-08-28', 6000.00),
(219, 'Cagayan de Oro', 'Leyte', '2024-02-25', 4000.00),
(220, 'Cagayan de Oro', 'Mindoro', '2024-09-19', 7000.00),
(221, 'Cagayan de Oro', 'Laog', '2024-02-28', 5000.00),
(222, 'Cagayan de Oro', 'Zamboanga', '2024-04-08', 11000.00),
(223, 'Cagayan de Oro', 'GenSan', '2024-07-12', 8000.00),
(224, 'Cagayan de Oro', 'Surigao', '2024-09-20', 15000.00),
(225, 'Cagayan de Oro', 'Siargao', '2024-10-15', 18000.00),
(226, 'Cagayan de Oro', 'Tawi-Tawi', '2024-08-17', 17000.00),
(227, 'Cagayan de Oro', 'Tacloban', '2024-11-11', 12000.00),
(228, 'Cagayan de Oro', 'Virac', '2024-12-12', 19000.00),
(229, 'Laoag', 'Manila', '2024-01-15', 4000.00),
(230, 'Laoag', 'Cebu', '2024-02-29', 7000.00),
(231, 'Laoag', 'Batanes', '2024-02-21', 15000.00),
(232, 'Laoag', 'Bicol', '2024-11-21', 18000.00),
(233, 'Laoag', 'Pampanga', '2024-12-30', 17000.00),
(234, 'Laoag', 'Davao', '2024-01-11', 6000.00),
(235, 'Laoag', 'Iloilo', '2024-02-10', 4000.00),
(236, 'Laoag', 'Palawan', '2024-03-13', 19000.00),
(237, 'Laoag', 'Boracay', '2024-08-28', 6000.00),
(238, 'Laoag', 'Leyte', '2024-02-25', 4000.00),
(239, 'Laoag', 'Mindoro', '2024-09-19', 7000.00),
(240, 'Laoag', 'Cagayan de Oro', '2024-02-28', 5000.00),
(241, 'Laoag', 'Zamboanga', '2024-04-08', 11000.00),
(242, 'Laoag', 'GenSan', '2024-07-12', 8000.00),
(243, 'Laoag', 'Surigao', '2024-09-20', 15000.00),
(244, 'Laoag', 'Siargao', '2024-10-15', 18000.00),
(245, 'Laoag', 'Tawi-Tawi', '2024-08-17', 17000.00),
(246, 'Laoag', 'Tacloban', '2024-11-11', 12000.00),
(247, 'Laoag', 'Virac', '2024-12-12', 19000.00),
(248, 'Zamboanga', 'Manila', '2024-01-15', 4000.00),
(249, 'Zamboanga', 'Cebu', '2024-02-29', 7000.00),
(250, 'Zamboanga', 'Batanes', '2024-02-21', 15000.00),
(251, 'Zamboanga', 'Bicol', '2024-11-21', 18000.00),
(252, 'Zamboanga', 'Pampanga', '2024-12-30', 17000.00),
(253, 'Zamboanga', 'Davao', '2024-01-11', 6000.00),
(254, 'Zamboanga', 'Iloilo', '2024-02-10', 4000.00),
(255, 'Zamboanga', 'Palawan', '2024-03-13', 19000.00),
(256, 'Zamboanga', 'Boracay', '2024-08-28', 6000.00),
(257, 'Zamboanga', 'Leyte', '2024-02-25', 4000.00),
(258, 'Zamboanga', 'Mindoro', '2024-09-19', 7000.00),
(259, 'Zamboanga', 'Cagayan de Oro', '2024-02-28', 5000.00),
(260, 'Zamboanga', 'Laoag', '2024-04-08', 11000.00),
(261, 'Zamboanga', 'GenSan', '2024-07-12', 8000.00),
(262, 'Zamboanga', 'Surigao', '2024-09-20', 15000.00),
(263, 'Zamboanga', 'Siargao', '2024-10-15', 18000.00),
(264, 'Zamboanga', 'Tawi-Tawi', '2024-08-17', 17000.00),
(265, 'Zamboanga', 'Tacloban', '2024-11-11', 12000.00),
(266, 'Zamboanga', 'Virac', '2024-12-12', 19000.00),
(267, 'GenSan', 'Manila', '2024-01-15', 4000.00),
(268, 'GenSan', 'Cebu', '2024-02-29', 7000.00),
(269, 'GenSan', 'Batanes', '2024-02-21', 15000.00),
(270, 'GenSan', 'Bicol', '2024-11-21', 18000.00),
(271, 'GenSan', 'Pampanga', '2024-12-30', 17000.00),
(272, 'GenSan', 'Davao', '2024-01-11', 6000.00),
(273, 'GenSan', 'Iloilo', '2024-02-10', 4000.00),
(274, 'GenSan', 'Palawan', '2024-03-13', 19000.00),
(275, 'GenSan', 'Boracay', '2024-08-28', 6000.00),
(276, 'GenSan', 'Leyte', '2024-02-25', 4000.00),
(277, 'GenSan', 'Mindoro', '2024-09-19', 7000.00),
(278, 'GenSan', 'Cagayan de Oro', '2024-02-28', 5000.00),
(279, 'GenSan', 'Laoag', '2024-04-08', 11000.00),
(280, 'GenSan', 'Zamboanga', '2024-07-12', 8000.00),
(281, 'GenSan', 'Surigao', '2024-09-20', 15000.00),
(282, 'GenSan', 'Siargao', '2024-10-15', 18000.00),
(283, 'GenSan', 'Tawi-Tawi', '2024-08-17', 17000.00),
(284, 'GenSan', 'Tacloban', '2024-11-11', 12000.00),
(285, 'GenSan', 'Virac', '2024-12-12', 19000.00),
(286, 'Surigao', 'Manila', '2024-01-15', 4000.00),
(287, 'Surigao', 'Cebu', '2024-02-29', 7000.00),
(288, 'Surigao', 'Batanes', '2024-02-21', 15000.00),
(289, 'Surigao', 'Bicol', '2024-11-21', 18000.00),
(290, 'Surigao', 'Pampanga', '2024-12-30', 17000.00),
(291, 'Surigao', 'Davao', '2024-01-11', 6000.00),
(292, 'Surigao', 'Iloilo', '2024-02-10', 4000.00),
(293, 'Surigao', 'Palawan', '2024-03-13', 19000.00),
(294, 'Surigao', 'Boracay', '2024-08-28', 6000.00),
(295, 'Surigao', 'Leyte', '2024-02-25', 4000.00),
(296, 'Surigao', 'Mindoro', '2024-09-19', 7000.00),
(297, 'Surigao', 'Cagayan de Oro', '2024-02-28', 5000.00),
(298, 'Surigao', 'Laoag', '2024-04-08', 11000.00),
(299, 'Surigao', 'Zamboanga', '2024-07-12', 8000.00),
(300, 'Surigao', 'GenSan', '2024-09-20', 15000.00),
(301, 'Surigao', 'Siargao', '2024-10-15', 18000.00),
(302, 'Surigao', 'Tawi-Tawi', '2024-08-17', 17000.00),
(303, 'Surigao', 'Tacloban', '2024-11-11', 12000.00),
(304, 'Surigao', 'Virac', '2024-12-12', 19000.00),
(305, 'Siargao', 'Manila', '2024-01-15', 4000.00),
(306, 'Siargao', 'Cebu', '2024-02-29', 7000.00),
(307, 'Siargao', 'Batanes', '2024-02-21', 15000.00),
(308, 'Siargao', 'Bicol', '2024-11-21', 18000.00),
(309, 'Siargao', 'Pampanga', '2024-12-30', 17000.00),
(310, 'Siargao', 'Davao', '2024-01-11', 6000.00),
(311, 'Siargao', 'Iloilo', '2024-02-10', 4000.00),
(312, 'Siargao', 'Palawan', '2024-03-13', 19000.00),
(313, 'Siargao', 'Boracay', '2024-08-28', 6000.00),
(314, 'Siargao', 'Leyte', '2024-02-25', 4000.00),
(315, 'Siargao', 'Mindoro', '2024-09-19', 7000.00),
(316, 'Siargao', 'Cagayan de Oro', '2024-02-28', 5000.00),
(317, 'Siargao', 'Laoag', '2024-04-08', 11000.00),
(318, 'Siargao', 'Zamboanga', '2024-07-12', 8000.00),
(319, 'Siargao', 'GenSan', '2024-09-20', 15000.00),
(320, 'Siargao', 'Surigao', '2024-10-15', 18000.00),
(321, 'Siargao', 'Tawi-Tawi', '2024-08-17', 17000.00),
(322, 'Siargao', 'Tacloban', '2024-11-11', 12000.00),
(323, 'Siargao', 'Virac', '2024-12-12', 19000.00),
(324, 'Tawi-Tawi', 'Manila', '2024-01-15', 4000.00),
(325, 'Tawi-Tawi', 'Cebu', '2024-02-29', 7000.00),
(326, 'Tawi-Tawi', 'Batanes', '2024-02-21', 15000.00),
(327, 'Tawi-Tawi', 'Bicol', '2024-11-21', 18000.00),
(328, 'Tawi-Tawi', 'Pampanga', '2024-12-30', 17000.00),
(329, 'Tawi-Tawi', 'Davao', '2024-01-11', 6000.00),
(330, 'Tawi-Tawi', 'Iloilo', '2024-02-10', 4000.00),
(331, 'Tawi-Tawi', 'Palawan', '2024-03-13', 19000.00),
(332, 'Tawi-Tawi', 'Boracay', '2024-08-28', 6000.00),
(333, 'Tawi-Tawi', 'Leyte', '2024-02-25', 4000.00),
(334, 'Tawi-Tawi', 'Mindoro', '2024-09-19', 7000.00),
(335, 'Tawi-Tawi', 'Cagayan de Oro', '2024-02-28', 5000.00),
(336, 'Tawi-Tawi', 'Laoag', '2024-04-08', 11000.00),
(337, 'Tawi-Tawi', 'Zamboanga', '2024-07-12', 8000.00),
(338, 'Tawi-Tawi', 'GenSan', '2024-09-20', 15000.00),
(339, 'Tawi-Tawi', 'Surigao', '2024-10-15', 18000.00),
(340, 'Tawi-Tawi', 'Siargao', '2024-08-17', 17000.00),
(341, 'Tawi-Tawi', 'Tacloban', '2024-11-11', 12000.00),
(342, 'Tawi-Tawi', 'Virac', '2024-12-12', 19000.00),
(343, 'Tacloban', 'Manila', '2024-01-15', 4000.00),
(344, 'Tacloban', 'Cebu', '2024-02-29', 7000.00),
(345, 'Taclobani', 'Batanes', '2024-02-21', 15000.00),
(346, 'Tacloban', 'Bicol', '2024-11-21', 18000.00),
(347, 'Tacloban', 'Pampanga', '2024-12-30', 17000.00),
(348, 'Tacloban', 'Davao', '2024-01-11', 6000.00),
(349, 'Tacloban', 'Iloilo', '2024-02-10', 4000.00),
(350, 'Tacloban', 'Palawan', '2024-03-13', 19000.00),
(351, 'Tacloban', 'Boracay', '2024-08-28', 6000.00),
(352, 'Tacloban', 'Leyte', '2024-02-25', 4000.00),
(353, 'Tacloban', 'Mindoro', '2024-09-19', 7000.00),
(354, 'Tacloban', 'Cagayan de Oro', '2024-02-28', 5000.00),
(355, 'Tacloban', 'Laoag', '2024-04-08', 11000.00),
(356, 'Tacloban', 'Zamboanga', '2024-07-12', 8000.00),
(357, 'Tacloban', 'GenSan', '2024-09-20', 15000.00),
(358, 'Tacloban', 'Surigao', '2024-10-15', 18000.00),
(359, 'Tacloban', 'Siargao', '2024-08-17', 17000.00),
(360, 'Tacloban', 'Tawi-Tawi', '2024-11-11', 12000.00),
(361, 'Tacloban', 'Virac', '2024-12-12', 19000.00),
(362, 'Virac', 'Manila', '2024-05-03', 5200.00),
(363, 'Virac', 'Cebu', '2024-08-17', 8900.00),
(364, 'Virac', 'Batanes', '2024-04-10', 12500.00),
(365, 'Virac', 'Bicol', '2024-09-05', 17500.00),
(366, 'Virac', 'Pampanga', '2024-06-22', 16000.00),
(367, 'Virac', 'Davao', '2024-03-14', 7100.00),
(368, 'Virac', 'Iloilo', '2024-07-02', 4200.00),
(369, 'Virac', 'Boracay', '2024-10-20', 20500.00),
(370, 'Virac', 'Leyte', '2024-11-30', 6300.00),
(371, 'Virac', 'Mindoro', '2024-01-28', 4300.00),
(372, 'Virac', 'Cagayan de Oro', '2024-04-15', 7700.00),
(373, 'Virac', 'Laoag', '2024-02-06', 5400.00),
(374, 'Virac', 'Zamboanga', '2024-11-22', 11800.00),
(375, 'Virac', 'GenSan', '2024-09-10', 8200.00),
(376, 'Virac', 'Surigao', '2024-03-28', 16200.00),
(377, 'Virac', 'Siargao', '2024-06-18', 19400.00),
(378, 'Virac', 'Tawi-Tawi', '2024-12-08', 17500.00),
(379, 'Virac', 'Tacloban', '2024-02-14', 11300.00);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `lastname` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `age` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`lastname`, `firstname`, `address`, `contact`, `email`, `password`, `gender`, `birthdate`, `age`) VALUES
('testaccount', 'test1', 'sabahay', '0999999999', 'testlang@gmail.com', '12345678', 'Female', '2001-10-13', '22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`flight_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `flights`
--
ALTER TABLE `flights`
  MODIFY `flight_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=380;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
