-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 18, 2022 at 03:48 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `InpatientFeedback`
--
CREATE DATABASE IF NOT EXISTS `InpatientFeedback` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `InpatientFeedback`;

-- --------------------------------------------------------

--
-- Table structure for table `Admission_Experience`
--

DROP TABLE IF EXISTS `Admission_Experience`;
CREATE TABLE `Admission_Experience` (
  `ID` int(255) NOT NULL,
  `Convenience` varchar(255) DEFAULT NULL,
  `Courtesy` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Admission_Experience`
--

INSERT INTO `Admission_Experience` (`ID`, `Convenience`, `Courtesy`) VALUES
(205, 'Excellent', 'Excellent'),
(206, 'Excellent', 'Excellent'),
(207, 'Excellent', 'Excellent'),
(208, 'Excellent', 'Excellent'),
(209, 'Excellent', 'Excellent'),
(210, 'Excellent', 'Excellent'),
(211, 'Excellent', 'Very Good'),
(212, 'Excellent', 'Very Good'),
(213, 'Excellent', 'Very Good'),
(214, 'Excellent', 'Very Good'),
(215, 'Excellent', 'Very Good'),
(216, 'Very Good', 'Very Good'),
(217, 'Very Good', 'Very Good'),
(218, 'Excellent', 'Excellent'),
(219, 'Excellent', 'Excellent'),
(220, 'Excellent', 'Excellent'),
(221, 'Excellent', 'Excellent'),
(222, 'Excellent', 'Excellent'),
(223, 'Very Good', 'Very Good');

-- --------------------------------------------------------

--
-- Table structure for table `Billing_and_Discharge`
--

DROP TABLE IF EXISTS `Billing_and_Discharge`;
CREATE TABLE `Billing_and_Discharge` (
  `ID` int(255) NOT NULL,
  `Speed_of_discharge` varchar(255) DEFAULT NULL,
  `Communication_and_Query_handling` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Billing_and_Discharge`
--

INSERT INTO `Billing_and_Discharge` (`ID`, `Speed_of_discharge`, `Communication_and_Query_handling`) VALUES
(205, 'Excellent', 'Excellent'),
(206, 'Excellent', 'Excellent'),
(207, 'Excellent', 'Excellent'),
(208, 'Excellent', 'Excellent'),
(209, 'Excellent', 'Excellent'),
(210, 'Excellent', 'Excellent'),
(211, 'Good', 'Very Good'),
(212, 'Excellent', 'Excellent'),
(213, 'Excellent', 'Excellent'),
(214, 'Excellent', 'Excellent'),
(215, 'Excellent', 'Excellent'),
(216, 'Very Good', 'Very Good'),
(217, 'Very Good', 'Very Good'),
(218, 'Excellent', 'Excellent'),
(219, 'Excellent', 'Excellent'),
(220, 'Excellent', 'Excellent'),
(221, 'Excellent', 'Excellent'),
(222, 'Excellent', 'Excellent'),
(223, 'Very Good', 'Excellent');

-- --------------------------------------------------------

--
-- Table structure for table `Diagnostic_and_Ancilliary_Services`
--

DROP TABLE IF EXISTS `Diagnostic_and_Ancilliary_Services`;
CREATE TABLE `Diagnostic_and_Ancilliary_Services` (
  `ID` int(255) NOT NULL,
  `Emergency_room` varchar(255) DEFAULT NULL,
  `Radiology` varchar(255) DEFAULT NULL,
  `Laboratory` varchar(255) DEFAULT NULL,
  `Internal_transport` varchar(255) DEFAULT NULL,
  `Ambulance_services` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Diagnostic_and_Ancilliary_Services`
--

INSERT INTO `Diagnostic_and_Ancilliary_Services` (`ID`, `Emergency_room`, `Radiology`, `Laboratory`, `Internal_transport`, `Ambulance_services`) VALUES
(205, 'Excellent', 'Excellent', 'Excellent', 'Excellent', 'Excellent'),
(206, 'Excellent', 'Excellent', 'Excellent', 'Excellent', 'Excellent'),
(207, 'Excellent', 'Excellent', 'Excellent', 'Excellent', 'Excellent'),
(208, 'Excellent', 'Excellent', 'Excellent', 'Excellent', 'Excellent'),
(209, 'Excellent', 'Excellent', 'Excellent', 'Excellent', 'Excellent'),
(210, 'Excellent', 'Excellent', 'Excellent', 'Excellent', 'Excellent'),
(211, 'Very Good', 'Good', 'Average', 'Poor', 'Average'),
(212, 'Very Good', 'Very Good', 'Excellent', 'Excellent', 'Very Good'),
(213, 'Very Good', 'Very Good', 'Excellent', 'Excellent', 'Very Good'),
(214, 'Very Good', 'Very Good', 'Excellent', 'Excellent', 'Very Good'),
(215, 'Very Good', 'Very Good', 'Excellent', 'Excellent', 'Very Good'),
(216, 'Very Good', 'Very Good', 'Very Good', 'Very Good', 'Very Good'),
(217, 'Very Good', 'Very Good', 'Very Good', 'Very Good', 'Very Good'),
(218, 'Excellent', 'Excellent', 'Excellent', 'Excellent', 'Excellent'),
(219, 'Excellent', 'Excellent', 'Excellent', 'Excellent', 'Excellent'),
(220, 'Excellent', 'Excellent', 'Excellent', 'Excellent', 'Excellent'),
(221, 'Excellent', 'Excellent', 'Excellent', 'Excellent', 'Excellent'),
(222, 'Excellent', 'Excellent', 'Excellent', 'Excellent', 'Excellent'),
(223, 'Very Good', 'Good', 'Very Good', 'Very Good', 'Good');

-- --------------------------------------------------------

--
-- Table structure for table `Dietary`
--

DROP TABLE IF EXISTS `Dietary`;
CREATE TABLE `Dietary` (
  `ID` int(255) NOT NULL,
  `FoodQuality` varchar(255) DEFAULT NULL,
  `Timeliness` varchar(255) DEFAULT NULL,
  `Counselling` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Dietary`
--

INSERT INTO `Dietary` (`ID`, `FoodQuality`, `Timeliness`, `Counselling`) VALUES
(205, 'Excellent', 'Excellent', 'Excellent'),
(206, 'Excellent', 'Excellent', 'Excellent'),
(207, 'Excellent', 'Excellent', 'Excellent'),
(208, 'Excellent', 'Excellent', 'Excellent'),
(209, 'Excellent', 'Excellent', 'Excellent'),
(210, 'Excellent', 'Excellent', 'Excellent'),
(211, 'Excellent', 'Very Good', 'Good'),
(212, 'Average', 'Good', 'Very Good'),
(213, 'Average', 'Good', 'Very Good'),
(214, 'Average', 'Good', 'Very Good'),
(215, 'Average', 'Good', 'Very Good'),
(216, 'Very Good', 'Very Good', 'Very Good'),
(217, 'Very Good', 'Very Good', 'Very Good'),
(218, 'Excellent', 'Excellent', 'Excellent'),
(219, 'Excellent', 'Excellent', 'Excellent'),
(220, 'Excellent', 'Excellent', 'Excellent'),
(221, 'Excellent', 'Excellent', 'Excellent'),
(222, 'Excellent', 'Excellent', 'Excellent'),
(223, 'Very Good', 'Very Good', 'Very Good');

-- --------------------------------------------------------

--
-- Table structure for table `Doctor_and_Room_Experience`
--

DROP TABLE IF EXISTS `Doctor_and_Room_Experience`;
CREATE TABLE `Doctor_and_Room_Experience` (
  `ID` int(255) NOT NULL,
  `Communication` varchar(255) DEFAULT NULL,
  `Room_Readiness` varchar(255) DEFAULT NULL,
  `Ambience_and_upkeep` varchar(255) DEFAULT NULL,
  `Regular_cleaning` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Doctor_and_Room_Experience`
--

INSERT INTO `Doctor_and_Room_Experience` (`ID`, `Communication`, `Room_Readiness`, `Ambience_and_upkeep`, `Regular_cleaning`) VALUES
(205, 'Excellent', 'Excellent', 'Excellent', 'Excellent'),
(206, 'Excellent', 'Excellent', 'Excellent', 'Excellent'),
(207, 'Excellent', 'Excellent', 'Excellent', 'Excellent'),
(208, 'Excellent', 'Excellent', 'Excellent', 'Excellent'),
(209, 'Excellent', 'Excellent', 'Excellent', 'Excellent'),
(210, 'Excellent', 'Excellent', 'Excellent', 'Excellent'),
(211, 'Average', 'Poor', 'Good', 'Very Good'),
(212, 'Excellent', 'Very Good', 'Very Good', 'Very Good'),
(213, 'Excellent', 'Very Good', 'Very Good', 'Very Good'),
(214, 'Excellent', 'Very Good', 'Very Good', 'Very Good'),
(215, 'Excellent', 'Very Good', 'Very Good', 'Very Good'),
(216, 'Very Good', 'Very Good', 'Very Good', 'Very Good'),
(217, 'Very Good', 'Very Good', 'Very Good', 'Very Good'),
(218, 'Excellent', 'Excellent', 'Excellent', 'Excellent'),
(219, 'Excellent', 'Excellent', 'Excellent', 'Excellent'),
(220, 'Excellent', 'Excellent', 'Excellent', 'Excellent'),
(221, 'Excellent', 'Excellent', 'Excellent', 'Excellent'),
(222, 'Excellent', 'Excellent', 'Excellent', 'Excellent'),
(223, 'Very Good', 'Good', 'Good', 'Good');

-- --------------------------------------------------------

--
-- Table structure for table `Doctor_Data`
--

DROP TABLE IF EXISTS `Doctor_Data`;
CREATE TABLE `Doctor_Data` (
  `id` int(255) NOT NULL,
  `parent_id` varchar(255) NOT NULL DEFAULT '0',
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Doctor_Data`
--

INSERT INTO `Doctor_Data` (`id`, `parent_id`, `category`) VALUES
(1, '0', 'JAYANAGAR'),
(2, '0', 'BANASHANKARI'),
(3, '1', 'CARDIOLOGY '),
(4, '1', 'CARDIO VASCULAR SURGERY'),
(5, '1', 'DENTAL '),
(6, '1', 'DERMATOLOGY '),
(7, '1', 'DEVELOPMENTAL MEDICINE'),
(8, '1', 'E.N.T '),
(9, '1', 'ENDOCRINOLOGY'),
(10, '1', 'DIABETOLOGY'),
(11, '1', 'EMERGENCY MEDICINE '),
(12, '1', 'GASTROENTEROLOGY (MED)'),
(13, '1', 'GENERAL SURGERY'),
(14, '1', 'INTERNAL MEDICINE'),
(15, '1', 'INTENSIVE CARE'),
(16, '1', 'NEURO INTENSIVE CARE'),
(17, '1', 'NEPHROLOGY '),
(18, '1', 'JUNIOR CONSULTANT'),
(19, '1', 'NEUROSURGERY'),
(20, '1', 'NEUROLOGY '),
(21, '1', 'OBSTETRIC & GYNAECOLOGY'),
(22, '1', 'ONCOLOGY (MEDICAL)'),
(23, '1', 'HEMATO ONCOLOGY '),
(24, '1', 'OPHTHALMOLOGY'),
(25, '1', 'ORTHOPAEDICS '),
(26, '1', 'PAEDIATRICS'),
(27, '1', 'PAEDIATRIC HAEMATO ONCOLOGY'),
(28, '1', 'PAEDIATRIC CARDIOLOGY'),
(29, '1', 'PAEDIATRIC NEPHROLOGY'),
(30, '1', 'PAEDIATRIC NEUROLOGY'),
(31, '1', 'PAEDIATRIC ENDOCRINOLOGY'),
(32, '1', 'PAEDIATRIC ORTHOPAEDICS '),
(33, '1', 'PAEDIATRIC PULMONOLOGY '),
(34, '1', 'PAEDIATRIC SURGERY '),
(35, '1', 'PAEDIATRIC DERMATOLOGY'),
(36, '1', 'PAEDIATRIC DENTAL  '),
(37, '1', 'PLASTIC SURGERY  '),
(38, '1', 'PSYCHIATRY  '),
(39, '1', 'PULMONOLOGY  '),
(40, '1', 'RADILOLOGY '),
(41, '1', 'RHEUMATOLOGY    '),
(42, '1', 'THORACIC SURGERY  '),
(43, '1', 'UROLOGY '),
(44, '1', 'VASCULAR SURGERY '),
(45, '1', 'LABORATORY '),
(46, '1', 'PHC CONSULTANT'),
(47, '3', ' DR SHYAM SUNDER  K  R'),
(48, '3', 'DR B K RAGHUNANDAN '),
(49, '3', 'DR S RAMAMURTHY'),
(50, '3', 'DR SATHISH REDDY S'),
(51, '3', 'DR PAVANKUMAR P RASALKAR'),
(52, '3', 'DR SUNIL CHRISTOPHER T'),
(53, '4', 'DR SATISH M KINI'),
(54, '4', 'DR ASHWINI KUMAR PASARAD'),
(55, '5', 'DR GIRISH RAO S'),
(56, '5', 'DR ROOPA R NADIG '),
(57, '5', 'DR VIJAYENDRA  R '),
(58, '6', 'DR GOPAL M G '),
(59, '6', 'DR NAGARAJA '),
(60, '6', 'DR SATISH D A  '),
(61, '6', 'DR T S VIDYA '),
(62, '6', 'DR CHAITRA PRAKASH '),
(63, '7', 'DR SHASHIKALA'),
(64, '8', 'DR PRASHANTH R REDDY'),
(65, '8', 'DR SRIRANGA PRASAD'),
(66, '9', 'DR SANJAI KUMAR  H V'),
(67, '9', 'DR TEJESWINI DEEPAK'),
(68, '9', 'DR THUMMALA KAMALA'),
(69, '9', 'DR SWATI SACHIN JADHAV'),
(70, '10', 'DR RASHMI N P'),
(71, '11', 'DR W D MOHAN'),
(72, '12', 'DR KANNAN RAMASWAMY'),
(73, '12', 'DR VIJAY KUMAR M N '),
(74, '12', 'DR SANTHOSH KUMAR S C'),
(75, '12', 'DR MUNI REDDY M'),
(76, '13', 'DR SUBHASH R C '),
(77, '13', 'DR HONNAVALLI RAVI SHANKAR'),
(78, '13', 'DR NIRANJAN P'),
(79, '14', 'DR GOVINDAPPA D '),
(80, '14', 'DR JAGADEESHA CHANDRA'),
(81, '14', 'DR JAYAPRAKASH S N '),
(82, '14', 'DR PAI K N N '),
(83, '14', 'DR SHOBHA NAIDU'),
(84, '14', 'DR TALLAM PREM KUMAR '),
(85, '14', 'DR MASOOD ALI KHAN'),
(86, '14', 'DR PRATYUSH MIGLANI'),
(87, '15', 'DR RAVIKUMAR R'),
(88, '15', 'DR GURULINGAPPA D KALLUR'),
(89, '16', 'DR JAYASHREE K M'),
(90, '17', 'DR SANJEEV KUMAR HIREMATH '),
(91, '17', 'DR ARVIND C'),
(92, '17', 'DR JYOTHI HEBBUR RAMACHANDRA'),
(93, '18', 'DR KRISHNA KUMAR V'),
(94, '19', 'DR MANMEET SINGH CHHABRA'),
(95, '19', 'DR MURALI MOHAN S'),
(96, '19', 'DR GUPTA ROBIN HARSHAVARDHAN'),
(97, '20', 'DR SANTHOSH KUMAR'),
(98, '20', 'DR SRINIVAS H V'),
(99, '20', 'DR SARAVANAN S'),
(100, '21', 'DR INDIRA C REDDY'),
(101, '21', 'DR MANJULA M GAEKWAD '),
(102, '21', 'DR NIRMALA SHIVALINGAIAH'),
(103, '21', 'DR PUSHPA SRINIVAS'),
(104, '21', 'DR R VANI'),
(105, '21', 'DR CHETAN K NELIVIGI'),
(106, '21', 'DR SAVITHRI D R '),
(107, '21', 'DR K V MALINI'),
(108, '21', 'DR AYESHA SHARIEFF'),
(109, '18', 'DR RAMYA K S'),
(110, '22', 'DR RAVI B DIWAKAR'),
(111, '23', 'DR NATARAJ K S'),
(112, '23', 'DR SACHIN JADHAV'),
(113, '24', 'DR BHARATH KUMAR'),
(114, '24', 'DR RASHMI B'),
(115, '24', 'DR SWATHI PRASAD'),
(116, '25', 'DR KHINCHA H P C'),
(117, '25', 'DR KISHORE SUBBAIAH '),
(118, '25', 'DR SHARATH CHANDRA H'),
(119, '25', 'DR UDAYKUMAR S B '),
(120, '25', 'DR PRAVEEN L BASANAGOUDAR'),
(121, '25', 'DR CHETHAN NAGARAJ'),
(122, '26', 'DR NAVEEN BENAKAPPA '),
(123, '26', 'DR RAGHUNATH C N'),
(124, '26', 'DR BASAVARAJ G V'),
(125, '27', 'DR NUTHAN KUMAR M K'),
(126, '28', 'DR SOWMYA KASTURI'),
(127, '29', 'DR HAMSA V'),
(128, '30', 'DR VYKUNTA RAJU'),
(129, '30', 'DR ANN AGNES MATHEW'),
(130, '31', 'DR RAGHUPATHY P '),
(131, '32', 'DR RUDRA PRASAD M S '),
(132, '33', 'DR K R BHARATH KUMAR REDDY '),
(133, '34', 'DR RAMESH S '),
(134, '34', 'DR SREEDHARA MURTHY B N '),
(135, '35', 'DR SAHANA M S '),
(136, '36', 'DR SRINIDHI BHATT'),
(137, '37', 'DR TILAK  B G'),
(138, '37', 'DR D R SHEKAR'),
(139, '37', 'DR PRIYADARSHAN K'),
(140, '37', 'DR ADITYA PATIL'),
(141, '38', 'DR THOMAS M J'),
(142, '38', 'DR G VIKRAM PRABHU '),
(143, '38', 'DR MANAMOHAN N'),
(144, '39', ' DR ROOPA RACHEL PREMANAND'),
(145, '39', 'DR AMOL A ASHTEKAR'),
(146, '40', 'DR KIRAN K V U'),
(147, '40', 'DR RISHIKESH M ITAGI'),
(148, '40', 'DR SRAVANTHI YERRAM'),
(149, '41', 'DR ANUPAMA KUMAR '),
(150, '42', 'DR H V RAJASHEKARA REDDY'),
(151, '43', 'DR JAYADEVA A R'),
(152, '43', 'DR MADHUSUDHAN  H R'),
(153, '43', 'DR NAGASUBRAMANYAM S'),
(154, '43', 'DR DILIP C DHANPAL'),
(155, '18', 'DR SRIKANTH V'),
(156, '44', 'DR VIVEKANAND'),
(157, '45', 'COL (DR) P S REDDY'),
(158, '45', 'DR AJITHA PILLAI'),
(159, '45', 'DR ASHOK MARATHE'),
(160, '46', 'DR SHILPASHREE MADHAVA '),
(161, '46', 'DR K P MALLYA'),
(162, '2', 'CARDIOLOGY'),
(163, '2', 'DERMATOLOGY'),
(164, '2', 'E N T'),
(165, '2', 'EMERGENCY DEPARTMENT'),
(166, '2', 'MEDICAL GASTROENTEROLOGY'),
(167, '2', 'GASTROENTEROLOGY  SURGICAL'),
(168, '2', 'GENERAL SURGERY'),
(169, '2', 'I C U'),
(170, '2', 'NEURO CRITICAL CARE'),
(171, '2', 'INTERNAL MEDICINE'),
(172, '2', 'MAXILLOFACIAL SURGERY'),
(173, '2', 'NEPHROLOGY'),
(174, '2', 'NEUROSURGERY'),
(175, '2', 'NEUROLOGY'),
(176, '2', 'O B G'),
(177, '2', 'OPHTHALMOLOGY'),
(178, '2', 'ORTHOPAEDICS'),
(179, '2', 'ORTHOPAEDICS & SPINE SURGEON'),
(180, '2', 'PAEDIATRIC SURGERY'),
(181, '2', 'PAEDIATRICS'),
(182, '2', 'PAEDIATRICS & NEONATOLOGY'),
(183, '2', 'PLASTIC SURGERY'),
(184, '2', 'PULMONOLOGIST'),
(185, '2', 'RADIOLOGY'),
(186, '2', 'UROLOGY'),
(187, '162', 'DR. KISHORE K. S'),
(188, '162', 'DR. NITHIN PRAKASH'),
(189, '162', 'DR. HARSIMRAN JIT SINGH'),
(190, '162', 'DR. SUBRAMANYAM'),
(191, '162', 'DR. NARAYANA MURTHY NARASAIAH'),
(192, '163', 'DR. NAGARAJA'),
(193, '163', 'DR. ROOPA SURESH'),
(194, '164', 'DR. RAMESH. D. K.'),
(195, '165', 'DR. SUDEEP K BHANDARY'),
(196, '166', 'DR.SANDEEP R SHARMA'),
(197, '167', 'DR. KUMAR PARTH'),
(198, '167', 'DR.SAGAR H.C'),
(199, '168', 'DR.VENKATESH VIKRAM H C'),
(200, '168', 'DR. VAMSI KRISHNA M'),
(201, '168', 'DR. NIRANJAN P'),
(202, '169', 'DR. DEVIPRASAD HEGDE. V'),
(203, '169', 'DR. SURESH C.H'),
(204, '169', 'DR.TUHINA GUPTA'),
(205, '170', 'DR.KRUTHI M.K'),
(206, '170', 'DR.MATHANGI KRISHNA KUMAR'),
(207, '171', 'DR. KAMAL BHALLA'),
(208, '171', 'DR. SUNIL CHRISTOPHER'),
(209, '171', 'DR. V.CHANNARAYA'),
(210, '171', 'DR. ARUN S.V'),
(211, '172', 'DR. MURALI MOHAN C R'),
(212, '173', 'DR. MALLIKARJUNA H.M'),
(213, '174', 'DR. MURALI MOHAN SELVAM'),
(214, '174', 'DR.SHIVALINGEGOUDA PATIL'),
(215, '174', 'DR. ROBIN HARSHVARDHAN GUPTA'),
(216, '175', 'DR. KALYANI DILIP KARKARE'),
(217, '175', 'DR.VIVEKANANDA M'),
(218, '176', 'DR. SHANTHALA S'),
(219, '176', 'DR.POOJA PATIL'),
(220, '177', 'DR. SWATI PRASAD'),
(221, '178', 'DR. BASAVARAJ. S. KYAVATER'),
(222, '178', 'DR.SHASHIDHAR VISHWANATH'),
(223, '179', 'DR. SUBODH M SHETTY'),
(224, '180', 'DR. RAVIKIRAN K'),
(225, '181', 'DR. UMAKANTHA ADIGA. M. G.'),
(226, '182', 'DR. RAVI KYADIGGERI'),
(227, '183', 'DR. KARAN SHETTY'),
(228, '184', 'DR. VISHWAJITH S.M'),
(229, '185', 'DR. RAVI SHANKAR. M'),
(230, '185', 'DR. KIRAN K V'),
(231, '185', 'DR. ARUN KUMAR S'),
(232, '186', 'DR. MADHUSUDHANA. H. R'),
(233, '186', 'DR. JAYANTH A.S');

-- --------------------------------------------------------

--
-- Table structure for table `Doctor_Data_B`
--

DROP TABLE IF EXISTS `Doctor_Data_B`;
CREATE TABLE `Doctor_Data_B` (
  `id` int(255) NOT NULL,
  `parent_id` varchar(255) NOT NULL DEFAULT '0',
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Doctor_Data_B`
--

INSERT INTO `Doctor_Data_B` (`id`, `parent_id`, `category`) VALUES
(2, '0', 'BANASHANKARI'),
(162, '2', 'CARDIOLOGY'),
(163, '2', 'DERMATOLOGY'),
(164, '2', 'E N T'),
(165, '2', 'EMERGENCY DEPARTMENT'),
(166, '2', 'MEDICAL GASTROENTEROLOGY'),
(167, '2', 'GASTROENTEROLOGY  SURGICAL'),
(168, '2', 'GENERAL SURGERY'),
(169, '2', 'I C U'),
(170, '2', 'NEURO CRITICAL CARE'),
(171, '2', 'INTERNAL MEDICINE'),
(172, '2', 'MAXILLOFACIAL SURGERY'),
(173, '2', 'NEPHROLOGY'),
(174, '2', 'NEUROSURGERY'),
(175, '2', 'NEUROLOGY'),
(176, '2', 'O B G'),
(177, '2', 'OPHTHALMOLOGY'),
(178, '2', 'ORTHOPAEDICS'),
(179, '2', 'ORTHOPAEDICS & SPINE SURGEON'),
(180, '2', 'PAEDIATRIC SURGERY'),
(181, '2', 'PAEDIATRICS'),
(182, '2', 'PAEDIATRICS & NEONATOLOGY'),
(183, '2', 'PLASTIC SURGERY'),
(184, '2', 'PULMONOLOGIST'),
(185, '2', 'RADIOLOGY'),
(186, '2', 'UROLOGY'),
(187, '162', 'DR. KISHORE K. S'),
(188, '162', 'DR. NITHIN PRAKASH'),
(189, '162', 'DR. HARSIMRAN JIT SINGH'),
(190, '162', 'DR. SUBRAMANYAM'),
(191, '162', 'DR. NARAYANA MURTHY NARASAIAH'),
(192, '163', 'DR. NAGARAJA'),
(193, '163', 'DR. ROOPA SURESH'),
(194, '164', 'DR. RAMESH. D. K.'),
(195, '165', 'DR. SUDEEP K BHANDARY'),
(196, '166', 'DR.SANDEEP R SHARMA'),
(197, '167', 'DR. KUMAR PARTH'),
(198, '167', 'DR.SAGAR H.C'),
(199, '168', 'DR.VENKATESH VIKRAM H C'),
(200, '168', 'DR. VAMSI KRISHNA M'),
(201, '168', 'DR. NIRANJAN P'),
(202, '169', 'DR. DEVIPRASAD HEGDE. V'),
(203, '169', 'DR. SURESH C.H'),
(204, '169', 'DR.TUHINA GUPTA'),
(205, '170', 'DR.KRUTHI M.K'),
(206, '170', 'DR.MATHANGI KRISHNA KUMAR'),
(207, '171', 'DR. KAMAL BHALLA'),
(208, '171', 'DR. SUNIL CHRISTOPHER'),
(209, '171', 'DR. V.CHANNARAYA'),
(210, '171', 'DR. ARUN S.V'),
(211, '172', 'DR. MURALI MOHAN C R'),
(212, '173', 'DR. MALLIKARJUNA H.M'),
(213, '174', 'DR. MURALI MOHAN SELVAM'),
(214, '174', 'DR.SHIVALINGEGOUDA PATIL'),
(215, '174', 'DR. ROBIN HARSHVARDHAN GUPTA'),
(216, '175', 'DR. KALYANI DILIP KARKARE'),
(217, '175', 'DR.VIVEKANANDA M'),
(218, '176', 'DR. SHANTHALA S'),
(219, '176', 'DR.POOJA PATIL'),
(220, '177', 'DR. SWATI PRASAD'),
(221, '178', 'DR. BASAVARAJ. S. KYAVATER'),
(222, '178', 'DR.SHASHIDHAR VISHWANATH'),
(223, '179', 'DR. SUBODH M SHETTY'),
(224, '180', 'DR. RAVIKIRAN K'),
(225, '181', 'DR. UMAKANTHA ADIGA. M. G.'),
(226, '182', 'DR. RAVI KYADIGGERI'),
(227, '183', 'DR. KARAN SHETTY'),
(228, '184', 'DR. VISHWAJITH S.M'),
(229, '185', 'DR. RAVI SHANKAR. M'),
(230, '185', 'DR. KIRAN K V'),
(231, '185', 'DR. ARUN KUMAR S'),
(232, '186', 'DR. MADHUSUDHANA. H. R'),
(233, '186', 'DR. JAYANTH A.S');

-- --------------------------------------------------------

--
-- Table structure for table `Doctor_Data_J`
--

DROP TABLE IF EXISTS `Doctor_Data_J`;
CREATE TABLE `Doctor_Data_J` (
  `id` int(255) NOT NULL,
  `parent_id` varchar(255) NOT NULL DEFAULT '0',
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Doctor_Data_J`
--

INSERT INTO `Doctor_Data_J` (`id`, `parent_id`, `category`) VALUES
(1, '0', 'JAYANAGAR'),
(3, '1', 'CARDIOLOGY '),
(4, '1', 'CARDIO VASCULAR SURGERY'),
(5, '1', 'DENTAL '),
(6, '1', 'DERMATOLOGY '),
(7, '1', 'DEVELOPMENTAL MEDICINE'),
(8, '1', 'E.N.T '),
(9, '1', 'ENDOCRINOLOGY'),
(10, '1', 'DIABETOLOGY'),
(11, '1', 'EMERGENCY MEDICINE '),
(12, '1', 'GASTROENTEROLOGY (MED)'),
(13, '1', 'GENERAL SURGERY'),
(14, '1', 'INTERNAL MEDICINE'),
(15, '1', 'INTENSIVE CARE'),
(16, '1', 'NEURO INTENSIVE CARE'),
(17, '1', 'NEPHROLOGY '),
(18, '1', 'JUNIOR CONSULTANT'),
(19, '1', 'NEUROSURGERY'),
(20, '1', 'NEUROLOGY '),
(21, '1', 'OBSTETRIC & GYNAECOLOGY'),
(22, '1', 'ONCOLOGY (MEDICAL)'),
(23, '1', 'HEMATO ONCOLOGY '),
(24, '1', 'OPHTHALMOLOGY'),
(25, '1', 'ORTHOPAEDICS '),
(26, '1', 'PAEDIATRICS'),
(27, '1', 'PAEDIATRIC HAEMATO ONCOLOGY'),
(28, '1', 'PAEDIATRIC CARDIOLOGY'),
(29, '1', 'PAEDIATRIC NEPHROLOGY'),
(30, '1', 'PAEDIATRIC NEUROLOGY'),
(31, '1', 'PAEDIATRIC ENDOCRINOLOGY'),
(32, '1', 'PAEDIATRIC ORTHOPAEDICS '),
(33, '1', 'PAEDIATRIC PULMONOLOGY '),
(34, '1', 'PAEDIATRIC SURGERY '),
(35, '1', 'PAEDIATRIC DERMATOLOGY'),
(36, '1', 'PAEDIATRIC DENTAL  '),
(37, '1', 'PLASTIC SURGERY  '),
(38, '1', 'PSYCHIATRY  '),
(39, '1', 'PULMONOLOGY  '),
(40, '1', 'RADILOLOGY '),
(41, '1', 'RHEUMATOLOGY    '),
(42, '1', 'THORACIC SURGERY  '),
(43, '1', 'UROLOGY '),
(44, '1', 'VASCULAR SURGERY '),
(45, '1', 'LABORATORY '),
(46, '1', 'PHC CONSULTANT'),
(47, '3', ' DR SHYAM SUNDER  K  R'),
(48, '3', 'DR B K RAGHUNANDAN '),
(49, '3', 'DR S RAMAMURTHY'),
(50, '3', 'DR SATHISH REDDY S'),
(51, '3', 'DR PAVANKUMAR P RASALKAR'),
(52, '3', 'DR SUNIL CHRISTOPHER T'),
(53, '4', 'DR SATISH M KINI'),
(54, '4', 'DR ASHWINI KUMAR PASARAD'),
(55, '5', 'DR GIRISH RAO S'),
(56, '5', 'DR ROOPA R NADIG '),
(57, '5', 'DR VIJAYENDRA  R '),
(58, '6', 'DR GOPAL M G '),
(59, '6', 'DR NAGARAJA '),
(60, '6', 'DR SATISH D A  '),
(61, '6', 'DR T S VIDYA '),
(62, '6', 'DR CHAITRA PRAKASH '),
(63, '7', 'DR SHASHIKALA'),
(64, '8', 'DR PRASHANTH R REDDY'),
(65, '8', 'DR SRIRANGA PRASAD'),
(66, '9', 'DR SANJAI KUMAR  H V'),
(67, '9', 'DR TEJESWINI DEEPAK'),
(68, '9', 'DR THUMMALA KAMALA'),
(69, '9', 'DR SWATI SACHIN JADHAV'),
(70, '10', 'DR RASHMI N P'),
(71, '11', 'DR W D MOHAN'),
(72, '12', 'DR KANNAN RAMASWAMY'),
(73, '12', 'DR VIJAY KUMAR M N '),
(74, '12', 'DR SANTHOSH KUMAR S C'),
(75, '12', 'DR MUNI REDDY M'),
(76, '13', 'DR SUBHASH R C '),
(77, '13', 'DR HONNAVALLI RAVI SHANKAR'),
(78, '13', 'DR NIRANJAN P'),
(79, '14', 'DR GOVINDAPPA D '),
(80, '14', 'DR JAGADEESHA CHANDRA'),
(81, '14', 'DR JAYAPRAKASH S N '),
(82, '14', 'DR PAI K N N '),
(83, '14', 'DR SHOBHA NAIDU'),
(84, '14', 'DR TALLAM PREM KUMAR '),
(85, '14', 'DR MASOOD ALI KHAN'),
(86, '14', 'DR PRATYUSH MIGLANI'),
(87, '15', 'DR RAVIKUMAR R'),
(88, '15', 'DR GURULINGAPPA D KALLUR'),
(89, '16', 'DR JAYASHREE K M'),
(90, '17', 'DR SANJEEV KUMAR HIREMATH '),
(91, '17', 'DR ARVIND C'),
(92, '17', 'DR JYOTHI HEBBUR RAMACHANDRA'),
(93, '18', 'DR KRISHNA KUMAR V'),
(94, '19', 'DR MANMEET SINGH CHHABRA'),
(95, '19', 'DR MURALI MOHAN S'),
(96, '19', 'DR GUPTA ROBIN HARSHAVARDHAN'),
(97, '20', 'DR SANTHOSH KUMAR'),
(98, '20', 'DR SRINIVAS H V'),
(99, '20', 'DR SARAVANAN S'),
(100, '21', 'DR INDIRA C REDDY'),
(101, '21', 'DR MANJULA M GAEKWAD '),
(102, '21', 'DR NIRMALA SHIVALINGAIAH'),
(103, '21', 'DR PUSHPA SRINIVAS'),
(104, '21', 'DR R VANI'),
(105, '21', 'DR CHETAN K NELIVIGI'),
(106, '21', 'DR SAVITHRI D R '),
(107, '21', 'DR K V MALINI'),
(108, '21', 'DR AYESHA SHARIEFF'),
(109, '18', 'DR RAMYA K S'),
(110, '22', 'DR RAVI B DIWAKAR'),
(111, '23', 'DR NATARAJ K S'),
(112, '23', 'DR SACHIN JADHAV'),
(113, '24', 'DR BHARATH KUMAR'),
(114, '24', 'DR RASHMI B'),
(115, '24', 'DR SWATHI PRASAD'),
(116, '25', 'DR KHINCHA H P C'),
(117, '25', 'DR KISHORE SUBBAIAH '),
(118, '25', 'DR SHARATH CHANDRA H'),
(119, '25', 'DR UDAYKUMAR S B '),
(120, '25', 'DR PRAVEEN L BASANAGOUDAR'),
(121, '25', 'DR CHETHAN NAGARAJ'),
(122, '26', 'DR NAVEEN BENAKAPPA '),
(123, '26', 'DR RAGHUNATH C N'),
(124, '26', 'DR BASAVARAJ G V'),
(125, '27', 'DR NUTHAN KUMAR M K'),
(126, '28', 'DR SOWMYA KASTURI'),
(127, '29', 'DR HAMSA V'),
(128, '30', 'DR VYKUNTA RAJU'),
(129, '30', 'DR ANN AGNES MATHEW'),
(130, '31', 'DR RAGHUPATHY P '),
(131, '32', 'DR RUDRA PRASAD M S '),
(132, '33', 'DR K R BHARATH KUMAR REDDY '),
(133, '34', 'DR RAMESH S '),
(134, '34', 'DR SREEDHARA MURTHY B N '),
(135, '35', 'DR SAHANA M S '),
(136, '36', 'DR SRINIDHI BHATT'),
(137, '37', 'DR TILAK  B G'),
(138, '37', 'DR D R SHEKAR'),
(139, '37', 'DR PRIYADARSHAN K'),
(140, '37', 'DR ADITYA PATIL'),
(141, '38', 'DR THOMAS M J'),
(142, '38', 'DR G VIKRAM PRABHU '),
(143, '38', 'DR MANAMOHAN N'),
(144, '39', ' DR ROOPA RACHEL PREMANAND'),
(145, '39', 'DR AMOL A ASHTEKAR'),
(146, '40', 'DR KIRAN K V U'),
(147, '40', 'DR RISHIKESH M ITAGI'),
(148, '40', 'DR SRAVANTHI YERRAM'),
(149, '41', 'DR ANUPAMA KUMAR '),
(150, '42', 'DR H V RAJASHEKARA REDDY'),
(151, '43', 'DR JAYADEVA A R'),
(152, '43', 'DR MADHUSUDHAN  H R'),
(153, '43', 'DR NAGASUBRAMANYAM S'),
(154, '43', 'DR DILIP C DHANPAL'),
(155, '18', 'DR SRIKANTH V'),
(156, '44', 'DR VIVEKANAND'),
(157, '45', 'COL (DR) P S REDDY'),
(158, '45', 'DR AJITHA PILLAI'),
(159, '45', 'DR ASHOK MARATHE'),
(160, '46', 'DR SHILPASHREE MADHAVA '),
(161, '46', 'DR K P MALLYA');

-- --------------------------------------------------------

--
-- Table structure for table `Nursing_Experience`
--

DROP TABLE IF EXISTS `Nursing_Experience`;
CREATE TABLE `Nursing_Experience` (
  `ID` int(255) NOT NULL,
  `promptness` varchar(255) DEFAULT NULL,
  `Efficiency` varchar(255) DEFAULT NULL,
  `courtesy` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Nursing_Experience`
--

INSERT INTO `Nursing_Experience` (`ID`, `promptness`, `Efficiency`, `courtesy`) VALUES
(205, 'Excellent', 'Excellent', 'Excellent'),
(206, 'Excellent', 'Excellent', 'Excellent'),
(207, 'Excellent', 'Excellent', 'Excellent'),
(208, 'Excellent', 'Excellent', 'Excellent'),
(209, 'Excellent', 'Excellent', 'Excellent'),
(210, 'Excellent', 'Excellent', 'Excellent'),
(211, 'Very Good', 'Good', 'Very Good'),
(212, 'Good', 'Average', 'Poor'),
(213, 'Good', 'Average', 'Poor'),
(214, 'Good', 'Average', 'Poor'),
(215, 'Good', 'Average', 'Poor'),
(216, 'Very Good', 'Very Good', 'Very Good'),
(217, 'Very Good', 'Very Good', 'Very Good'),
(218, 'Excellent', 'Excellent', 'Excellent'),
(219, 'Excellent', 'Excellent', 'Excellent'),
(220, 'Excellent', 'Excellent', 'Excellent'),
(221, 'Excellent', 'Excellent', 'Excellent'),
(222, 'Excellent', 'Excellent', 'Excellent'),
(223, 'Very Good', 'Very Good', 'Very Good');

-- --------------------------------------------------------

--
-- Table structure for table `Patient_Care`
--

DROP TABLE IF EXISTS `Patient_Care`;
CREATE TABLE `Patient_Care` (
  `ID` int(255) NOT NULL,
  `Courtesy` varchar(255) DEFAULT NULL,
  `Discharge_Process` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Patient_Care`
--

INSERT INTO `Patient_Care` (`ID`, `Courtesy`, `Discharge_Process`) VALUES
(205, 'Excellent', 'Excellent'),
(206, 'Excellent', 'Excellent'),
(207, 'Excellent', 'Excellent'),
(208, 'Excellent', 'Excellent'),
(209, 'Excellent', 'Excellent'),
(210, 'Excellent', 'Excellent'),
(211, 'Excellent', 'Very Good'),
(212, 'Very Good', 'Very Good'),
(213, 'Very Good', 'Very Good'),
(214, 'Very Good', 'Very Good'),
(215, 'Very Good', 'Very Good'),
(216, 'Very Good', 'Very Good'),
(217, 'Very Good', 'Very Good'),
(218, 'Excellent', 'Excellent'),
(219, 'Excellent', 'Excellent'),
(220, 'Excellent', 'Excellent'),
(221, 'Excellent', 'Excellent'),
(222, 'Excellent', 'Excellent'),
(223, 'Poor', 'Good');

-- --------------------------------------------------------

--
-- Table structure for table `Personal_details`
--

DROP TABLE IF EXISTS `Personal_details`;
CREATE TABLE `Personal_details` (
  `ID` int(255) NOT NULL,
  `PatientName` varchar(255) DEFAULT NULL,
  `Branch` varchar(255) NOT NULL,
  `DoctorName` varchar(255) DEFAULT NULL,
  `Speciality` varchar(255) NOT NULL,
  `UHID_No` varchar(10) DEFAULT NULL,
  `Pdate` varchar(255) NOT NULL,
  `Gender` varchar(255) DEFAULT NULL,
  `Age` int(255) DEFAULT NULL,
  `MobileNo` int(10) DEFAULT NULL,
  `LandlineNo` int(10) DEFAULT NULL,
  `Emailid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Personal_details`
--

INSERT INTO `Personal_details` (`ID`, `PatientName`, `Branch`, `DoctorName`, `Speciality`, `UHID_No`, `Pdate`, `Gender`, `Age`, `MobileNo`, `LandlineNo`, `Emailid`) VALUES
(205, 'JAS', 'JAYANAGAR', 'DR GIRISH RAO S', 'DENTAL ', '1', '2021-11-03', 'female', 19, 12345678, 1234567, 'rejbfjbsdkjfg@gmail.com'),
(206, 'Jermy', 'JAYANAGAR', 'DR GIRISH RAO S', 'DENTAL ', '1', '2021-11-03', 'male', 19, 12345678, 1234567, 'rejbfjbsdkjfg@gmail.com'),
(207, 'jj', 'BANASHANKARI', 'DR. NIRANJAN P', 'GENERAL SURGERY', 'fef', '2021-11-08', 'female', 19, 3456789, 23456789, 'rejbfjbsdkjfg@gmail.com'),
(208, 'jj', 'BANASHANKARI', 'DR. NIRANJAN P', 'GENERAL SURGERY', 'fef', '2021-11-08', 'female', 19, 3456789, 23456789, 'rejbfjbsdkjfg@gmail.com'),
(209, 'jj', 'BANASHANKARI', 'DR. NIRANJAN P', 'GENERAL SURGERY', 'fef', '2021-11-08', 'female', 19, 3456789, 23456789, 'rejbfjbsdkjfg@gmail.com'),
(210, 'jj', 'BANASHANKARI', 'DR. NIRANJAN P', 'GENERAL SURGERY', 'fef', '2021-11-08', 'female', 19, 3456789, 23456789, 'rejbfjbsdkjfg@gmail.com'),
(211, 'jasmine', 'JAYANAGAR', 'DR GIRISH RAO S', 'DENTAL ', '1234', '2022-03-14', 'female', 19, 1234567890, 9876543, 'leenajenniferedwin@gmail.com'),
(212, 'janus', 'BANASHANKARI', 'DR.VIVEKANANDA M', 'NEUROLOGY', '1234', '2022-03-16', 'female', 12, 2147483647, 9876543, 'reenajasmineedwin@gmail.com'),
(213, 'jas', 'BANASHANKARI', 'DR.VIVEKANANDA M', 'NEUROLOGY', '1234', '2022-03-14', 'female', 12, 2147483647, 9876543, 'reenajasmineedwin@gmail.com'),
(214, 'jas', 'BANASHANKARI', 'DR.VIVEKANANDA M', 'NEUROLOGY', '1234', '2022-03-14', 'female', 12, 2147483647, 9876543, 'reenajasmineedwin@gmail.com'),
(215, 'jas', 'BANASHANKARI', 'DR.VIVEKANANDA M', 'NEUROLOGY', '1234', '2022-03-14', 'female', 12, 2147483647, 9876543, 'reenajasmineedwin@gmail.com'),
(216, 'peter', 'BANASHANKARI', 'DR. SUDEEP K BHANDARY', 'EMERGENCY DEPARTMENT', '1234', '2022-03-15', 'male', 19, 1234567890, 9876543, 'reenajasmineedwin@gmail.com'),
(217, 'peter', 'BANASHANKARI', 'DR. SUDEEP K BHANDARY', 'EMERGENCY DEPARTMENT', '1234', '2022-03-15', 'male', 19, 1234567890, 9876543, 'reenajasmineedwin@gmail.com'),
(218, 'peter', 'BANASHANKARI', 'DR. SUDEEP K BHANDARY', 'EMERGENCY DEPARTMENT', '2222', '2022-03-15', 'male', 22, 1234567890, 1234, 'reenajasmineedwin@gmail.com'),
(219, 'peter', 'JAYANAGAR', 'DR NAGARAJA ', 'DERMATOLOGY ', '1234', '2022-03-15', 'male', 19, 1234567890, 9876543, 'reenajasmineedwin@gmail.com'),
(220, 'peter', 'BANASHANKARI', 'DR. SUDEEP K BHANDARY', 'EMERGENCY DEPARTMENT', '2222', '2022-03-15', 'male', 22, 1234567890, 1234, 'reenajasmineedwin@gmail.com'),
(221, 'peter', 'BANASHANKARI', 'DR. SUDEEP K BHANDARY', 'EMERGENCY DEPARTMENT', '2222', '2022-03-16', 'male', 22, 1234567890, 1234, 'reenajasmineedwin@gmail.com'),
(222, 'penny', 'BANASHANKARI', 'DR ROOPA R NADIG ', 'DENTAL ', '1234', '2022-03-16', 'female', 19, 1234567890, 9876543, 'reenajasmineedwin@gmail.com'),
(223, 'dan', 'BANASHANKARI', 'DR.SANDEEP R SHARMA', 'MEDICAL GASTROENTEROLOGY', '1234', '2022-03-16', 'male', 19, 1234567890, 9876543, 'reenajasmineedwin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `Reason`
--

DROP TABLE IF EXISTS `Reason`;
CREATE TABLE `Reason` (
  `ID` int(255) NOT NULL,
  `Location` varchar(255) DEFAULT 'No',
  `Specific_Services_offered` varchar(255) DEFAULT 'No',
  `Referred_by_doctor` varchar(255) DEFAULT 'No',
  `Friend_Family_Recommendation` varchar(255) DEFAULT 'No',
  `Previous_Experience` varchar(255) DEFAULT 'No',
  `Your_Doctor_Availability` varchar(255) DEFAULT 'No',
  `Company_Recommendation` varchar(255) DEFAULT 'No',
  `Other` varchar(255) NOT NULL DEFAULT '-'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Reason`
--

INSERT INTO `Reason` (`ID`, `Location`, `Specific_Services_offered`, `Referred_by_doctor`, `Friend_Family_Recommendation`, `Previous_Experience`, `Your_Doctor_Availability`, `Company_Recommendation`, `Other`) VALUES
(205, 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', '7u5u5'),
(206, 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', '7u5u5'),
(207, 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', 'egergerr'),
(208, 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', 'egergerr'),
(209, 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', 'egergerr'),
(210, 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', 'egergerr'),
(211, 'No', 'No', 'Yes', 'No', 'No', 'Yes', 'No', ''),
(212, 'Yes', 'No', 'Yes', 'No', 'No', 'No', 'No', ''),
(213, 'Yes', 'No', 'Yes', 'No', 'No', 'No', 'No', ''),
(214, 'Yes', 'No', 'Yes', 'No', 'No', 'No', 'No', ''),
(215, 'Yes', 'No', 'Yes', 'No', 'No', 'Yes', 'No', ''),
(216, 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', ''),
(217, 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', ''),
(218, 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', ''),
(219, 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', ''),
(220, 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', ''),
(221, 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', ''),
(222, 'No', 'No', 'Yes', 'No', 'No', 'Yes', 'No', 'ss'),
(223, 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `Security_and_Overall_Exp`
--

DROP TABLE IF EXISTS `Security_and_Overall_Exp`;
CREATE TABLE `Security_and_Overall_Exp` (
  `ID` int(255) NOT NULL,
  `Helpfulness` varchar(255) DEFAULT NULL,
  `Overall_exp` varchar(255) DEFAULT NULL,
  `choose_in_future` varchar(255) DEFAULT NULL,
  `Recommend` varchar(255) DEFAULT NULL,
  `Team_member` varchar(255) DEFAULT NULL,
  `Other_feedback` varchar(255) DEFAULT NULL,
  `Filled_by` varchar(255) DEFAULT NULL,
  `Relationship_of_attendent` varchar(255) DEFAULT '-'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Security_and_Overall_Exp`
--

INSERT INTO `Security_and_Overall_Exp` (`ID`, `Helpfulness`, `Overall_exp`, `choose_in_future`, `Recommend`, `Team_member`, `Other_feedback`, `Filled_by`, `Relationship_of_attendent`) VALUES
(205, 'Excellent', 'Excellent', 'Definately will', 'Definately will', 'rththrt', 'jjtjyty', 'Self,Attendent,', 'sgdfdf'),
(206, 'Excellent', 'Excellent', 'Definately will', 'Definately will', 'rththrt', 'jjtjyty', 'Self,Attendent,', 'sgdfdf'),
(207, 'Excellent', 'Excellent', 'Definately will', 'Definately will', 'regrehreh', 'dsgrgreg', 'Self,Attendent,', 'rhtrhhet'),
(208, 'Excellent', 'Excellent', 'Definately will', 'Definately will', 'regrehreh', 'dsgrgreg', 'Self,Attendent,', 'rhtrhhet'),
(209, 'Excellent', 'Excellent', 'Definately will', 'Definately will', 'regrehreh', 'dsgrgreg', 'Self,Attendent,', 'rhtrhhet'),
(210, 'Excellent', 'Excellent', 'Definately will', 'Definately will', 'regrehreh', 'dsgrgreg', 'Self,Attendent,', 'rhtrhhet'),
(211, 'Excellent', 'Very Good', 'Neutral', 'May be not', 'hhjhgj', 'nnbmbnmbnm', 'Self,', ''),
(212, 'Very Good', 'Excellent', 'Definately will', 'May be', 'dgefb', 'dsgdfhgjh', 'Self,', ''),
(213, 'Very Good', 'Excellent', 'Definately will', 'May be', 'dgefb', 'dsgdfhgjh', 'Self,', ''),
(214, 'Very Good', 'Excellent', 'Definately will', 'May be', 'dgefb', 'dsgdfhgjh', 'Self,', ''),
(215, 'Very Good', 'Excellent', 'Definately will', 'May be', 'dgefb', 'dsgdfhgjh', 'Self,', ''),
(216, 'Very Good', 'Very Good', 'May be', 'May be', 'sdfghjkl', 'zdgfhjk', 'Self,', ''),
(217, 'Very Good', 'Very Good', 'May be', 'May be', 'sdfghjkl', 'zdgfhjk', 'Self,', ''),
(218, 'Excellent', 'Excellent', 'Definately will', 'Definately will', 'casc', 'ascsac', 'Self,', ''),
(219, 'Excellent', 'Excellent', 'Definately will', 'Definately will', 'HVC', 'JV', 'Self,', ''),
(220, 'Excellent', 'Excellent', 'Definately will', 'Definately will', 'casc', 'ascsac', 'Self,', ''),
(221, 'Excellent', 'Excellent', 'Definately will', 'Definately will', 'casc', 'ascsac', 'Self,', ''),
(222, 'Excellent', 'Excellent', 'Definately will', 'Definately will', 'q', 'ff', 'Self,', 'ss'),
(223, 'Very Good', 'Good', 'May be', 'Neutral', 'hgfdsa', 'jhgfdsa', 'Self,', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Admission_Experience`
--
ALTER TABLE `Admission_Experience`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Billing_and_Discharge`
--
ALTER TABLE `Billing_and_Discharge`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Diagnostic_and_Ancilliary_Services`
--
ALTER TABLE `Diagnostic_and_Ancilliary_Services`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Dietary`
--
ALTER TABLE `Dietary`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Doctor_and_Room_Experience`
--
ALTER TABLE `Doctor_and_Room_Experience`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Doctor_Data`
--
ALTER TABLE `Doctor_Data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Doctor_Data_B`
--
ALTER TABLE `Doctor_Data_B`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Doctor_Data_J`
--
ALTER TABLE `Doctor_Data_J`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Nursing_Experience`
--
ALTER TABLE `Nursing_Experience`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Patient_Care`
--
ALTER TABLE `Patient_Care`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Personal_details`
--
ALTER TABLE `Personal_details`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Reason`
--
ALTER TABLE `Reason`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Security_and_Overall_Exp`
--
ALTER TABLE `Security_and_Overall_Exp`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Admission_Experience`
--
ALTER TABLE `Admission_Experience`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT for table `Billing_and_Discharge`
--
ALTER TABLE `Billing_and_Discharge`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT for table `Diagnostic_and_Ancilliary_Services`
--
ALTER TABLE `Diagnostic_and_Ancilliary_Services`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT for table `Dietary`
--
ALTER TABLE `Dietary`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT for table `Doctor_and_Room_Experience`
--
ALTER TABLE `Doctor_and_Room_Experience`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT for table `Doctor_Data`
--
ALTER TABLE `Doctor_Data`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Doctor_Data_B`
--
ALTER TABLE `Doctor_Data_B`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;

--
-- AUTO_INCREMENT for table `Doctor_Data_J`
--
ALTER TABLE `Doctor_Data_J`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `Nursing_Experience`
--
ALTER TABLE `Nursing_Experience`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT for table `Patient_Care`
--
ALTER TABLE `Patient_Care`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT for table `Personal_details`
--
ALTER TABLE `Personal_details`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT for table `Reason`
--
ALTER TABLE `Reason`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT for table `Security_and_Overall_Exp`
--
ALTER TABLE `Security_and_Overall_Exp`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Admission_Experience`
--
ALTER TABLE `Admission_Experience`
  ADD CONSTRAINT `admission_experience_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `personal_details` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Billing_and_Discharge`
--
ALTER TABLE `Billing_and_Discharge`
  ADD CONSTRAINT `billing_and_discharge_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Personal_details` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Diagnostic_and_Ancilliary_Services`
--
ALTER TABLE `Diagnostic_and_Ancilliary_Services`
  ADD CONSTRAINT `diagnostic_and_ancilliary_services_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Personal_details` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Dietary`
--
ALTER TABLE `Dietary`
  ADD CONSTRAINT `dietary_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `personal_details` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Doctor_and_Room_Experience`
--
ALTER TABLE `Doctor_and_Room_Experience`
  ADD CONSTRAINT `doctor_and_room_experience_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Personal_details` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Nursing_Experience`
--
ALTER TABLE `Nursing_Experience`
  ADD CONSTRAINT `nursing_experience_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `personal_details` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Patient_Care`
--
ALTER TABLE `Patient_Care`
  ADD CONSTRAINT `patient_care_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Personal_details` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Reason`
--
ALTER TABLE `Reason`
  ADD CONSTRAINT `reason_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Personal_details` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Security_and_Overall_Exp`
--
ALTER TABLE `Security_and_Overall_Exp`
  ADD CONSTRAINT `security_and_overall_exp_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Personal_details` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
