-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2022 at 06:10 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vet-clinic`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appointment_id` int(11) NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_time` varchar(100) NOT NULL,
  `appointment_status` varchar(45) NOT NULL DEFAULT 'available',
  `staff_id` int(11) NOT NULL,
  `powner_id` int(11) DEFAULT NULL,
  `is_staff_read` int(11) NOT NULL DEFAULT 0,
  `is_powner_read` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointment_id`, `appointment_date`, `appointment_time`, `appointment_status`, `staff_id`, `powner_id`, `is_staff_read`, `is_powner_read`) VALUES
(10, '2022-02-02', '10.00AM-11.00AM', 'approved', 1, 4, 1, 0),
(12, '2022-02-02', '12.00PM-1.00PM', 'approved', 1, 5, 1, 0),
(13, '2022-02-02', '2.00PM-3.00PM', 'approved', 1, 6, 1, 0),
(14, '2022-02-02', '3.00PM-4.00PM', 'approved', 1, 5, 1, 0),
(16, '2022-02-02', '9.00AM-10.00AM', 'approved', 1, 6, 1, 0),
(19, '2022-02-03', '10.00AM-11.00AM', 'approved', 1, 7, 1, 0),
(20, '2022-02-03', '11.00AM-12.00PM', 'approved', 1, 6, 1, 0),
(22, '2022-02-03', '12.00PM-1.00PM', 'approved', 1, 25, 1, 0),
(23, '2022-02-03', '2.00PM-3.00PM', 'available', 1, NULL, 0, 0),
(24, '2022-02-03', '3.00PM-4.00PM', 'available', 1, 8, 0, 0),
(25, '2022-02-04', '9.00AM-10.00AM', 'approved', 1, 25, 1, 0),
(26, '2022-02-04', '10.00AM-11.00AM', 'available', 1, NULL, 0, 0),
(27, '2022-02-04', '11.00AM-12.00PM', 'available', 1, NULL, 0, 0),
(28, '2022-02-04', '12.00PM-1.00PM', 'available', 1, NULL, 0, 0),
(29, '2022-02-04', '2.00PM-3.00PM', 'available', 1, NULL, 0, 0),
(30, '2022-02-04', '3.00PM-4.00PM', 'available', 1, NULL, 0, 0),
(31, '2022-02-07', '9.00AM-10.00AM', 'available', 1, NULL, 0, 0),
(32, '2022-02-07', '10.00AM-11.00AM', 'available', 1, NULL, 0, 0),
(33, '2022-02-07', '11.00AM-12.00PM', 'available', 1, NULL, 0, 0),
(34, '2022-02-07', '12.00PM-1.00PM', 'available', 1, NULL, 0, 0),
(35, '2022-02-07', '2.00PM-3.00PM', 'available', 1, NULL, 0, 0),
(36, '2022-02-07', '3.00PM-4.00PM', 'available', 1, NULL, 0, 0),
(37, '2022-02-08', '9.00AM-10.00AM', 'available', 1, NULL, 0, 0),
(38, '2022-02-08', '10.00AM-11.00AM', 'available', 1, NULL, 0, 0),
(39, '2022-02-08', '11.00AM-12.00PM', 'available', 1, NULL, 0, 0),
(40, '2022-02-08', '12.00PM-1.00PM', 'available', 1, NULL, 0, 0),
(41, '2022-02-08', '2.00PM-3.00PM', 'available', 1, NULL, 0, 0),
(42, '2022-02-08', '3.00PM-4.00PM', 'available', 1, NULL, 0, 0),
(43, '2022-02-09', '9.00AM-10.00AM', 'available', 1, NULL, 0, 0),
(44, '2022-02-09', '10.00AM-11.00AM', 'available', 1, NULL, 0, 0),
(45, '2022-02-09', '11.00AM-12.00PM', 'available', 1, NULL, 0, 0),
(46, '2022-02-09', '12.00PM-1.00PM', 'available', 1, NULL, 0, 0),
(47, '2022-02-09', '2.00PM-3.00PM', 'available', 1, NULL, 0, 0),
(48, '2022-02-09', '3.00PM-4.00PM', 'available', 1, NULL, 0, 0),
(49, '2022-02-10', '9.00AM-10.00AM', 'available', 1, NULL, 0, 0),
(50, '2022-02-10', '10.00AM-11.00AM', 'available', 1, NULL, 0, 0),
(51, '2022-02-10', '11.00AM-12.00PM', 'available', 1, NULL, 0, 0),
(52, '2022-02-10', '12.00PM-1.00PM', 'available', 1, NULL, 0, 0),
(53, '2022-02-10', '2.00PM-3.00PM', 'available', 1, NULL, 0, 0),
(54, '2022-02-10', '3.00PM-4.00PM', 'available', 1, NULL, 0, 0),
(55, '2022-02-11', '9.00AM-10.00AM', 'available', 1, NULL, 0, 0),
(56, '2022-02-11', '10.00AM-11.00AM', 'available', 1, NULL, 0, 0),
(57, '2022-02-11', '11.00AM-12.00PM', 'available', 1, NULL, 0, 0),
(58, '2022-02-11', '12.00PM-1.00PM', 'available', 1, NULL, 0, 0),
(59, '2022-02-11', '2.00PM-3.00PM', 'available', 1, NULL, 0, 0),
(60, '2022-02-11', '3.00PM-4.00PM', 'available', 1, NULL, 0, 0),
(61, '2022-02-14', '9.00AM-10.00AM', 'available', 1, NULL, 0, 0),
(62, '2022-02-14', '10.00AM-11.00AM', 'available', 1, NULL, 0, 0),
(63, '2022-02-14', '11.00AM-12.00PM', 'available', 1, NULL, 0, 0),
(64, '2022-02-14', '2.00PM-3.00PM', 'available', 1, NULL, 0, 0),
(65, '2022-02-14', '3.00PM-4.00PM', 'available', 1, NULL, 0, 0),
(66, '2022-02-15', '9.00AM-10.00AM', 'available', 1, NULL, 0, 0),
(67, '2022-02-15', '10.00AM-11.00AM', 'available', 1, NULL, 0, 0),
(68, '2022-02-15', '11.00AM-12.00PM', 'available', 1, NULL, 0, 0),
(69, '2022-02-15', '12.00PM-1.00PM', 'available', 1, NULL, 0, 0),
(70, '2022-02-15', '2.00PM-3.00PM', 'available', 1, NULL, 0, 0),
(71, '2022-02-15', '3.00PM-4.00PM', 'available', 1, NULL, 0, 0),
(72, '2022-02-16', '9.00AM-10.00AM', 'available', 1, NULL, 0, 0),
(73, '2022-02-16', '10.00AM-11.00AM', 'available', 1, NULL, 0, 0),
(74, '2022-02-16', '11.00AM-12.00PM', 'available', 1, NULL, 0, 0),
(75, '2022-02-16', '12.00PM-1.00PM', 'available', 1, NULL, 0, 0),
(76, '2022-02-16', '2.00PM-3.00PM', 'available', 1, NULL, 0, 0),
(77, '2022-02-16', '3.00PM-4.00PM', 'available', 1, NULL, 0, 0),
(78, '2022-02-17', '9.00AM-10.00AM', 'available', 1, NULL, 0, 0),
(79, '2022-02-17', '10.00AM-11.00AM', 'available', 1, NULL, 0, 0),
(80, '2022-02-17', '11.00AM-12.00PM', 'available', 1, NULL, 0, 0),
(81, '2022-02-17', '12.00PM-1.00PM', 'available', 1, NULL, 0, 0),
(82, '2022-02-17', '2.00PM-3.00PM', 'available', 1, NULL, 0, 0),
(83, '2022-02-17', '3.00PM-4.00PM', 'available', 1, NULL, 0, 0),
(84, '2022-02-18', '9.00AM-10.00AM', 'available', 1, NULL, 0, 0),
(85, '2022-02-18', '10.00AM-11.00AM', 'available', 1, NULL, 0, 0),
(86, '2022-02-18', '11.00AM-12.00PM', 'available', 1, NULL, 0, 0),
(87, '2022-02-18', '12.00PM-1.00PM', 'available', 1, NULL, 0, 0),
(88, '2022-02-18', '2.00PM-3.00PM', 'available', 1, NULL, 0, 0),
(89, '2022-02-18', '3.00PM-4.00PM', 'available', 1, NULL, 0, 0),
(90, '2022-01-24', '9.00AM-10.00AM', 'approved', 1, 10, 1, 0),
(91, '2022-01-24', '10.00AM-11.00AM', 'approved', 1, 11, 1, 0),
(92, '2022-01-24', '11.00AM-12.00PM', 'approved', 1, 12, 1, 0),
(93, '2022-01-24', '12.00PM-1.00PM', 'approved', 1, 13, 1, 0),
(94, '2022-01-24', '2.00PM-3.00PM', 'approved', 1, 14, 1, 0),
(95, '2022-01-24', '3.00PM-4.00PM', 'approved', 1, 15, 1, 0),
(96, '2022-01-25', '9.00AM-10.00AM', 'approved', 1, 16, 1, 0),
(97, '2022-01-25', '10.00AM-11.00AM', 'approved', 1, 17, 1, 0),
(98, '2022-01-25', '11.00AM-12.00PM', 'approved', 1, 18, 1, 0),
(99, '2022-01-26', '9.00AM-10.00AM', 'approved', 1, 19, 1, 0),
(100, '2022-01-26', '10.00AM-11.00AM', 'approved', 1, 20, 1, 0),
(101, '2022-01-26', '11.00AM-12.00PM', 'approved', 1, 21, 1, 0),
(102, '2022-01-26', '12.00PM-1.00PM', 'approved', 1, 22, 1, 0),
(103, '2022-01-26', '2.00PM-3.00PM', 'approved', 1, 23, 1, 0),
(104, '2022-01-26', '3.00PM-4.00PM', 'approved', 1, 24, 1, 0),
(105, '2022-02-21', '9.00AM-10.00AM', 'available', 1, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `appointment_pet`
--

CREATE TABLE `appointment_pet` (
  `pet_app_id` int(11) NOT NULL,
  `app_id` int(11) DEFAULT NULL,
  `pet_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment_pet`
--

INSERT INTO `appointment_pet` (`pet_app_id`, `app_id`, `pet_id`) VALUES
(13, 7, 3),
(14, 7, 4),
(15, 9, 5),
(16, 9, 6),
(19, 11, 7),
(20, 10, 8),
(21, 12, 9),
(22, 14, 10),
(23, 13, 11),
(24, 16, 12),
(25, 20, 11),
(26, 19, 13),
(30, 90, 18),
(31, 90, 19),
(32, 91, 20),
(33, 92, 21),
(34, 93, 22),
(35, 94, 23),
(36, 94, 24),
(37, 94, 25),
(38, 95, 26),
(39, 96, 27),
(40, 97, 28),
(41, 98, 29),
(44, 100, 31),
(45, 101, 32),
(46, 101, 33),
(47, 101, 32),
(48, 101, 34),
(49, 102, 35),
(50, 103, 36),
(51, 104, 37),
(52, 25, 38),
(53, 25, 39),
(54, 22, 38);

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `medicine_id` int(11) NOT NULL,
  `medicine_name` varchar(45) NOT NULL,
  `medicine_qty` varchar(45) NOT NULL,
  `medicine_expdate` date NOT NULL,
  `staff_id` int(11) NOT NULL,
  `treatment_id` int(11) NOT NULL,
  `is_powner_read` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`medicine_id`, `medicine_name`, `medicine_qty`, `medicine_expdate`, `staff_id`, `treatment_id`, `is_powner_read`) VALUES
(8, 'Octic clean', '1 qty', '2023-02-28', 1, 7, 0),
(9, 'Gentamycin eye drop', '1 qty', '2023-10-02', 1, 13, 0),
(10, 'Nicol eye drop', '1 qty', '2023-03-01', 1, 15, 0),
(11, 'Octic clean', '1 qty', '2024-01-02', 1, 16, 0),
(12, 'Clavamox', '1 qty', '2024-06-02', 1, 16, 0),
(13, 'Dermapred', '1 qty', '2022-10-14', 1, 17, 0),
(14, 'Wormil', '1 qty', '2023-02-09', 1, 18, 0),
(15, 'Nicol eye drop', '1 qty', '2023-02-09', 1, 20, 0),
(16, 'Prazivet dog', '1 qty', '2023-05-01', 1, 21, 0),
(17, 'Wormil', '1 qty', '2024-01-03', 1, 25, 0),
(18, 'Noroclav', '1 qty', '2022-05-16', 1, 25, 0),
(19, 'Noroclav', '1 qty, once a day after eat', '2023-02-10', 1, 26, 0),
(20, 'Oribiotic', '1 qty, two drops a day', '2023-01-03', 1, 26, 0),
(21, 'Gentamycin eye drop', '1 qty, two drops a day', '2023-10-03', 1, 27, 0),
(22, 'Advantage dog', '1 qty', '2023-02-21', 1, 28, 0),
(23, 'Novamox injection', '1 qty', '2023-01-03', 1, 28, 0),
(24, 'Nicol eye drop', '1 qty', '2023-02-03', 1, 29, 0),
(25, 'Clavamox', '1 qty', '2023-01-01', 1, 31, 0),
(26, 'Oribiotic', '1 qty, two drops a day', '2022-09-10', 1, 32, 0),
(27, 'Surolan', '1 qty, one drop a day', '2023-02-03', 1, 33, 0),
(28, 'Noroclav', '1 qty', '2023-01-03', 1, 33, 0),
(29, 'Ivermectin injection', '1 qty', '2023-01-03', 1, 34, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pet`
--

CREATE TABLE `pet` (
  `pet_id` int(11) NOT NULL,
  `pet_species` varchar(45) NOT NULL,
  `pet_name` varchar(45) NOT NULL,
  `pet_breed` varchar(45) NOT NULL,
  `pet_age` varchar(45) NOT NULL,
  `pet_gender` varchar(45) NOT NULL,
  `powner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pet`
--

INSERT INTO `pet` (`pet_id`, `pet_species`, `pet_name`, `pet_breed`, `pet_age`, `pet_gender`, `powner_id`) VALUES
(8, 'Dog', 'Meongmul', 'Poodle', '5 years', 'Female', 4),
(9, 'Cat', 'Kai', 'Munchkin', '2 months', 'Male', 5),
(10, 'Dog', 'Blackie', 'Doberman', '3 months', 'Male', 5),
(11, 'Cat', 'Purr', 'British Shorthair', '2 months', 'Female', 6),
(12, 'Cat', 'Louie', 'Persian', '2 years', 'Male', 6),
(13, 'Dog', 'Donggi', 'Shihtzu', '2 months', 'male', 7),
(14, 'Dog', 'Lili', 'Husky', '2 years', 'Female', 8),
(15, 'Cat', 'Oro', 'Munchkin', '3 years', 'Male', 9),
(16, 'Cat', 'Oyen', 'Persian', '1 years', 'Male', 9),
(17, 'Cat', 'Lily', 'Ragdoll', '4 years', 'Female', 10),
(18, 'Dog', 'Love', 'Doberman', '11 months', 'Male', 10),
(19, 'Cat', 'Leo', 'Scottish Fold', '3 years', 'Male', 10),
(20, 'Cat', 'Ronnie', 'Norwegian Forest', '5 years', 'Male', 11),
(21, 'Cat', 'Comey', 'Domestic short-hair', '2 months', 'Female', 12),
(22, 'Dog', 'Nano', 'Golden retriever', '2 months', 'Female', 13),
(23, 'Dog', 'Monggu', 'Poodle', '6 years', 'Female', 14),
(24, 'Dog', 'Jjangah', 'Poodle', '2 years', 'Female', 14),
(25, 'Cat', 'Jjanggu', 'Munchkin', '5 months', 'Female', 14),
(26, 'Cat', 'Cocobun', 'Bengal', '4 months', 'Male', 15),
(27, 'Dog', 'Cleo', 'Schnauzer', '2 months', 'Male', 16),
(28, 'Cat', 'Gemok', 'Domestic short-hair', '2 years', 'Male', 17),
(29, 'Cat', 'Kecik', 'American Short-hair', '2 months', 'Female', 18),
(30, 'Dog', 'Byeol', 'Corgi', '6 months', 'Female', 19),
(31, 'Dog', 'Starry', 'German Shepherd', '1 years', 'Female', 20),
(32, 'Cat', 'Namra', 'Mainecoon', '3 months', 'Female', 21),
(34, 'Dog', 'Lemon', 'Golden retriever', '3 months', 'Male', 21),
(35, 'Dog', 'Charlie', 'Husky', '2 months', 'Male', 22),
(36, 'Dog', 'Milo', 'Pomeranian', '5 months', 'Male', 23),
(37, 'Dog', 'Simba', 'Husky', '7 months', 'Male', 24),
(38, 'Cat', 'Bobbi', 'Persian', '3 months', 'Male', 25),
(39, 'Cat', 'Oreo', 'Munchin', '2 months', 'Female', 25);

-- --------------------------------------------------------

--
-- Table structure for table `pet_owner`
--

CREATE TABLE `pet_owner` (
  `powner_id` int(11) NOT NULL,
  `powner_name` varchar(45) NOT NULL,
  `powner_address` varchar(100) NOT NULL,
  `powner_phonenum` varchar(11) NOT NULL,
  `powner_email` varchar(45) NOT NULL,
  `powner_username` varchar(45) NOT NULL,
  `powner_password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pet_owner`
--

INSERT INTO `pet_owner` (`powner_id`, `powner_name`, `powner_address`, `powner_phonenum`, `powner_email`, `powner_username`, `powner_password`) VALUES
(4, 'Doh Kyungsoo', 'Lot 1667, Jalan Hidayah 7, Kampung Muhibbah 35600 Sungkai, Perak.', '01027845672', 'kyungsoodoh@gmail.com', 'kyungsoo12', 'kyungsoo123'),
(5, 'Lee Joheun', 'No 3, Jalan Tapah Utama, Taman Tapah Utama 35000 Tapah, Perak.', '0197753274', 'jo_heun@gmail.com', 'joheunlee', 'leejoheun'),
(6, 'Mahirah Masuddi', 'No 10 Laluan Permai 1, Taman Permain 35600 Sungkai, Perak.', '0175684793', 'mahiemasuddi12@gmail.com', 'mahiemasuddi', '123456'),
(7, 'Jung Haein', 'No 200 Jalan Slim 1, Taman Slim 35700 Slim River, Perak.', '01976234562', 'haein0114@gmail.com', 'haeinjung', 'jung0114'),
(8, 'Chong Kaiyi', '34, Laluan Permai 1, Taman Permai 35600 Sungkai, Perak.', '0193265237', 'kaiyee@gmail.com', 'kaiyi', 'ka1y1'),
(9, 'Nur Syakirah ', '529, Jalan Gelugor 10, Taman Gelugor 35600 Sungkai, Perak.', '01364534674', 'chakirah09@gmail.com', 'chakirahzul', 'chaki12'),
(10, 'Lalisa', 'Lot 1645 Jalan Tapah 1, Taman Tapah 35000 Tapah, Perak.', '01121521785', 'lalisa_m@gmail.com', 'lalisa_m', 'lalalisa03'),
(11, 'Xiumin', 'Unit 95, Jalan Uitm Tapah 10, Taman Uitm Tapah 35400 Tapah, Perak.', '0543873234', 'xiuminseok0033@gmail.com', 'xiuminseok', 'xiumin03'),
(12, 'Sharifah Najwa', 'No 100, Jalan Tapah Utama, Taman Tapah Utama 35000 Tapah, Perak.', '01932823123', 'shrfh_najwa1@gmail.com', 'sharifah_najwa', 'najwa1'),
(13, 'Kumalasari Gomez', 'Lot 100012 Jalan Hidayah 10, Kampung Muhibbah 35600 Sungkai, Perak.', '0124417435', 'kumalasari_p@gmail.com', 'kumalasari_04', '04kumalasari'),
(14, 'Kim Kai', 'No 6, Jalan Permai Jaya 1, Taman Permai Jaya 35600 Sungkai, Perak.', '01923834728', 'kimkaaaai@gmail.com', 'kimkai', 'kaikai'),
(15, 'Humaidi Masuddi', 'Lot 1667, Jalan Hidayah 7, Kampung Muhibbah 35600 Sungkai, Perak.', '0175684793', 'humaidimasuddi@yahoo.com.my', 'humaidi_masuddi', 'humaidi27'),
(16, 'Tang Joonsang', 'No 40, Jalan 4, Taman Bidor Damansara 35500 Bidor, Perak.', '0139942377', 'joonjoontang@gmail.com', 'joonsang', 'sang10'),
(17, 'Aliff Syafiq bin Mokhtar', 'No 15, Jalan Budu Raya 1, Taman Budu Raya 35400 Tapah, Perak.', '0195674567', 'aliffsyafiq11@gmail.com', 'aliffsyafiq', 'sy4f1q'),
(18, 'Farahana Suhada binti Muhammad Akhirin', '100, Kampung Balun 35700 Slim River, Perak.', '0175684792', 'farhanasuhada2211@gmail.com', 'farhanasuhada', 'sukada'),
(19, 'Kim Sungcheol', '922A, Simpang Tok Ku 2, Kampung Tok Ku 35500 Bidor, Perak.', '0199586038', 'sungcheollee@gmail.com', 'sungcheol2', 'cheol2'),
(20, 'Nam Onjo', '200, Jalan Geliga, Felda Trolak Timur 35650 Trolak, Perak.', '01121521443', 'onjonam@gmail.com', 'onjoee', 'onjoonjo'),
(21, 'Park Solomon', 'B-5-22, Block B, Apartment Lestari 35400 Tapah, Perak.', '0103385432', '1111lemonade@gmail.com', 'lomon1111', 'lem0nade'),
(22, 'Park Ashley', '200, Persiaran Permai 15, Taman Persiaran 35500 Tapah, Perak,', '01121821932', 'ashl3ypark@gmail.com', 'AshleyPark', '4shl3y'),
(23, 'Sarah Pandit', '90, Taman Bidor Utama 35500 Bidor, Perak.', '0198097654', 'pandit_sarah@gmail.com', 'sarahpandit', 'sarah1127'),
(24, 'Latha', '100, Laluan Permai 5, Taman Permai 35600 Sungkai, Perak.', '0176453127', 'latha1127@gmail.com', 'lathata', '11latha27'),
(25, 'Nurul Farahana Izzati', 'No 10, Jalan Sungkai Sentral 1, Taman Sungkai Sentral 35600 Sungkai, Perak.', '0104011208', 'iinurulfarah12@gmail.com', 'farahanaizzati', 'farah12');

-- --------------------------------------------------------

--
-- Table structure for table `rejected_app`
--

CREATE TABLE `rejected_app` (
  `rej_id` int(11) NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_time` varchar(100) NOT NULL,
  `powner_id` int(11) DEFAULT NULL,
  `staff_id` int(11) NOT NULL,
  `comment` text NOT NULL DEFAULT '',
  `is_powner_read` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rejected_app`
--

INSERT INTO `rejected_app` (`rej_id`, `appointment_id`, `appointment_date`, `appointment_time`, `powner_id`, `staff_id`, `comment`, `is_powner_read`) VALUES
(10, 24, '2022-02-03', '3.00PM-4.00PM', 8, 1, 'Not available at the moment', 0),
(11, 25, '2022-02-04', '9.00AM-10.00AM', 9, 1, 'Veterinarian and staff are not available!', 0),
(12, 104, '2022-01-26', '3.00PM-4.00PM', 19, 1, 'Not available', 1);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL,
  `staff_name` varchar(45) NOT NULL,
  `staff_phonenum` bigint(20) NOT NULL,
  `staff_username` varchar(45) NOT NULL,
  `staff_password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `staff_name`, `staff_phonenum`, `staff_username`, `staff_password`) VALUES
(1, 'leedongsik', 189981234, 'dongsik', 'dongsik');

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `treatment_id` int(11) NOT NULL,
  `treatment_name` varchar(45) NOT NULL,
  `treatment_detail` text NOT NULL,
  `treatment_disease` text NOT NULL,
  `appointment_pet_id` int(11) NOT NULL,
  `is_powner_read` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`treatment_id`, `treatment_name`, `treatment_detail`, `treatment_disease`, `appointment_pet_id`, `is_powner_read`) VALUES
(7, 'Ear infection', 'Ruptured eardrum', '', 20, 0),
(8, 'Vaccination', 'Vaccine for parvovirus', '', 21, 0),
(9, 'Wound infection', 'Burn in leg area', '', 22, 0),
(10, 'Wound infection', 'Burn in leg area', '', 22, 0),
(11, 'Eye infection', 'Red and watery eyes', '', 23, 0),
(12, 'Eye infection', 'Red eyes', '', 24, 0),
(13, 'Eye infection', 'Red and watery eyes', '', 25, 0),
(14, 'Eye infection', 'Red eyes', '', 26, 0),
(15, 'Eye infection', 'Feline viral rhinotracheitis—a herpes virus', '', 31, 1),
(16, 'Ear infection', 'Fungus in left ear', '', 30, 1),
(17, 'Wound infection', 'Burn in leg area', '', 32, 0),
(18, 'Deworming', 'Heartworm and flea preventative', '', 33, 1),
(19, 'Vaccination', 'Vaccine for rabies', '', 34, 1),
(20, 'Eye infection', 'Red and watery eyes', '', 35, 0),
(21, 'Fungus infection', 'Mange infection on skin', '', 36, 0),
(22, 'Vaccination', 'Vaccination for rabies', '', 37, 0),
(23, 'Vaccination', 'Vaccination for Feline Calicivirus (FCV)', '', 38, 0),
(24, 'Vaccination', 'Vaccination for Canine Parvovirus (CPV)', '', 39, 0),
(25, 'Deworming', 'Diarrhea and weight loss before getting treatment', '', 40, 0),
(26, 'Ear infection', 'Ruptured eardrum on right ear', '', 41, 1),
(27, 'Eye infection', 'Eyes hard to open', '', 42, 1),
(28, 'Wound infection', 'Itchiness on body part due to fungus', '', 44, 0),
(29, 'Eye infection', 'Red eyes', '', 45, 1),
(30, 'Vaccination', 'Vaccine for parvovirus', '', 48, 1),
(31, 'Vaccination', 'Vaccination for rabies', '', 49, 0),
(32, 'Ear infection', 'Itchy in both side of ears', '', 50, 1),
(33, 'Ear infection', 'Earmites', '', 51, 0),
(34, 'Fungus infection', 'Infection on skin due to fungal and mange', '', 52, 1),
(35, 'Vaccination', 'Vaccine for parvovirus', '', 53, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointment_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `appointment_pet`
--
ALTER TABLE `appointment_pet`
  ADD PRIMARY KEY (`pet_app_id`),
  ADD KEY `app_id` (`app_id`),
  ADD KEY `pet_id` (`pet_id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`medicine_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `treatment_id` (`treatment_id`);

--
-- Indexes for table `pet`
--
ALTER TABLE `pet`
  ADD PRIMARY KEY (`pet_id`),
  ADD KEY `powner_id` (`powner_id`);

--
-- Indexes for table `pet_owner`
--
ALTER TABLE `pet_owner`
  ADD PRIMARY KEY (`powner_id`);

--
-- Indexes for table `rejected_app`
--
ALTER TABLE `rejected_app`
  ADD PRIMARY KEY (`rej_id`),
  ADD KEY `pet_id` (`powner_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `powner_id` (`powner_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`treatment_id`),
  ADD KEY `pet_id` (`appointment_pet_id`),
  ADD KEY `appointment_id` (`appointment_pet_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `appointment_pet`
--
ALTER TABLE `appointment_pet`
  MODIFY `pet_app_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `medicine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `pet`
--
ALTER TABLE `pet`
  MODIFY `pet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `pet_owner`
--
ALTER TABLE `pet_owner`
  MODIFY `powner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `rejected_app`
--
ALTER TABLE `rejected_app`
  MODIFY `rej_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `treatment`
--
ALTER TABLE `treatment`
  MODIFY `treatment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `medicine`
--
ALTER TABLE `medicine`
  ADD CONSTRAINT `medicine_ibfk_2` FOREIGN KEY (`treatment_id`) REFERENCES `treatment` (`treatment_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `medicine_ibfk_3` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pet`
--
ALTER TABLE `pet`
  ADD CONSTRAINT `pet_ibfk_1` FOREIGN KEY (`powner_id`) REFERENCES `pet_owner` (`powner_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
