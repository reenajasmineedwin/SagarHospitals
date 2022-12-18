-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 18, 2022 at 03:50 PM
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
-- Database: `OutpatientFeedback`
--
CREATE DATABASE IF NOT EXISTS `OutpatientFeedback` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `OutpatientFeedback`;

-- --------------------------------------------------------

--
-- Table structure for table `Consultation_and_Nursing_Experience`
--

DROP TABLE IF EXISTS `Consultation_and_Nursing_Experience`;
CREATE TABLE `Consultation_and_Nursing_Experience` (
  `ID` int(255) NOT NULL,
  `Communication` varchar(255) NOT NULL,
  `Courtesy` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Consultation_and_Nursing_Experience`
--

INSERT INTO `Consultation_and_Nursing_Experience` (`ID`, `Communication`, `Courtesy`) VALUES
(1, 'Excellent', 'Excellent'),
(2, 'Excellent', 'Excellent'),
(3, 'Excellent', 'Excellent'),
(4, 'Excellent', 'Excellent'),
(5, 'Excellent', 'Excellent'),
(6, 'Excellent', 'Excellent'),
(7, 'Excellent', 'Excellent'),
(8, 'Excellent', 'Excellent'),
(9, 'Excellent', 'Excellent'),
(10, 'Excellent', 'Excellent'),
(11, 'Very good', 'Very good'),
(12, 'Very good', 'Very good');

-- --------------------------------------------------------

--
-- Table structure for table `Diagnostic_and_Ancillary_Services`
--

DROP TABLE IF EXISTS `Diagnostic_and_Ancillary_Services`;
CREATE TABLE `Diagnostic_and_Ancillary_Services` (
  `ID` int(255) NOT NULL,
  `Lab_Services` varchar(255) NOT NULL,
  `Radiology_Services` varchar(255) NOT NULL,
  `Pharmacy_Services` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Diagnostic_and_Ancillary_Services`
--

INSERT INTO `Diagnostic_and_Ancillary_Services` (`ID`, `Lab_Services`, `Radiology_Services`, `Pharmacy_Services`) VALUES
(1, 'Excellent', 'Excellent', 'Excellent'),
(2, 'Excellent', 'Excellent', 'Excellent'),
(3, 'Excellent', 'Excellent', 'Excellent'),
(4, 'Excellent', 'Excellent', 'Excellent'),
(5, 'Excellent', 'Excellent', 'Excellent'),
(6, 'Excellent', 'Excellent', 'Excellent'),
(7, 'Excellent', 'Excellent', 'Excellent'),
(8, 'Excellent', 'Excellent', 'Excellent'),
(9, 'Excellent', 'Excellent', 'Excellent'),
(10, 'Excellent', 'Excellent', 'Excellent'),
(11, 'Very good', 'Very good', 'Very good'),
(12, 'Very good', 'Very good', 'Very good');

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
-- Table structure for table `Overall_Experience`
--

DROP TABLE IF EXISTS `Overall_Experience`;
CREATE TABLE `Overall_Experience` (
  `ID` int(255) NOT NULL,
  `Overall_exp` varchar(255) NOT NULL,
  `choose_in_future` varchar(255) NOT NULL,
  `Recommend` varchar(255) NOT NULL,
  `Team_member` varchar(255) NOT NULL,
  `Other_feedback` varchar(255) NOT NULL,
  `Filled_by` varchar(255) NOT NULL,
  `Relationship_of_attendent` varchar(255) NOT NULL DEFAULT '-'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Overall_Experience`
--

INSERT INTO `Overall_Experience` (`ID`, `Overall_exp`, `choose_in_future`, `Recommend`, `Team_member`, `Other_feedback`, `Filled_by`, `Relationship_of_attendent`) VALUES
(1, 'Excellent', 'Definately will', 'Definately will', 'fjhgjkh', 'jhgkj', 'Self,Attendent,', 'hjfjkhgjk'),
(2, 'Excellent', 'Definately will', 'Definately will', 'fjhgjkh', 'jhgkj', 'Self,Attendent,', 'hjfjkhgjk'),
(3, 'Excellent', 'Definately will', 'Definately will', 'fjhgjkh', 'jhgkj', 'Self,Attendent,', 'hjfjkhgjk'),
(4, 'Excellent', 'Definately will', 'Definately will', 'fjhgjkh', 'jhgkj', 'Self,Attendent,', 'hjfjkhgjk'),
(5, 'Excellent', 'Definately will', 'Definately will', 'asdfcgjkml', 'kjhgfd', 'Self,Attendent,', 'ukyjthgrf'),
(6, 'Excellent', 'Definately will', 'Definately will', 'hjlkjhgf', 'kjhgbfvfhj', 'Attendent,', 'dgfhjkl'),
(7, 'Excellent', 'Definately will', 'Definately will', 'hjlkjhgf', 'kjhgbfvfhj', 'Attendent,', 'dgfhjkl'),
(8, 'Excellent', 'Definately will', 'Definately will', 'hjlkjhgf', 'kjhgbfvfhj', 'Attendent,', 'dgfhjkl'),
(9, 'Excellent', 'Definately will', 'Definately will', 'hjlkjhgf', 'kjhgbfvfhj', 'Attendent,', 'dgfhjkl'),
(10, 'Excellent', 'Definately will', 'Definately will', 'gvhvhjb', 'fgghfj', 'Attendent,', 'fcghjkl'),
(11, 'Very good', 'May be', 'May be', 'sdcsdc', 'dscdc', 'Self,', 'dacad'),
(12, 'Very good', 'May be', 'May be', 'kjhbv', 'jhv', 'Self,', 'jhgvc');

-- --------------------------------------------------------

--
-- Table structure for table `Personal_details`
--

DROP TABLE IF EXISTS `Personal_details`;
CREATE TABLE `Personal_details` (
  `ID` int(255) NOT NULL,
  `PatientName` varchar(255) NOT NULL,
  `Branch` varchar(255) NOT NULL,
  `DoctorName` varchar(255) NOT NULL,
  `Speciality` varchar(255) NOT NULL,
  `UHID_No` varchar(10) NOT NULL,
  `Pdate` varchar(255) NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `Age` int(255) NOT NULL,
  `MobileNo` int(10) NOT NULL,
  `LandlineNo` int(10) NOT NULL,
  `Emailid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Personal_details`
--

INSERT INTO `Personal_details` (`ID`, `PatientName`, `Branch`, `DoctorName`, `Speciality`, `UHID_No`, `Pdate`, `Gender`, `Age`, `MobileNo`, `LandlineNo`, `Emailid`) VALUES
(1, '1', '', 'dfdsv', '', '1234', '2021-11-03', 'female', 12, 2147483647, 131245, 'reenajasmineedwin@gmail.com'),
(2, '1', '', 'dfdsv', '', '1234', '2021-11-03', 'female', 12, 2147483647, 131245, 'reenajasmineedwin@gmail.com'),
(3, '1', '', 'dfdsv', '', '1234', '2021-11-03', 'female', 12, 2147483647, 131245, 'reenajasmineedwin@gmail.com'),
(4, '1', '', 'dfdsv', '', '1234', '2021-11-03', 'female', 12, 2147483647, 131245, 'reenajasmineedwin@gmail.com'),
(5, 'gem', 'BANASHANKARI', 'DR. SUDEEP K BHANDARY', 'EMERGENCY DEPARTMENT', '1', '2021-11-24', 'male', 12, 123456789, 65432, 'rejbfjbsdkjfg@gmail.com'),
(6, 'misty', 'BANASHANKARI', 'DR. SUNIL CHRISTOPHER', 'INTERNAL MEDICINE', '2222', '2021-11-29', 'female', 12, 234567890, 234567890, 'rejbfjbsdkjfg@gmail.com'),
(7, 'misty', 'BANASHANKARI', 'DR. SUNIL CHRISTOPHER', 'INTERNAL MEDICINE', '2222', '2021-11-29', 'female', 12, 234567890, 234567890, 'rejbfjbsdkjfg@gmail.com'),
(8, 'misty', 'BANASHANKARI', 'DR. SUNIL CHRISTOPHER', 'INTERNAL MEDICINE', '2222', '2021-11-29', 'female', 12, 234567890, 234567890, 'rejbfjbsdkjfg@gmail.com'),
(9, 'misty', 'BANASHANKARI', 'DR. SUNIL CHRISTOPHER', 'INTERNAL MEDICINE', '2222', '2021-11-29', 'female', 12, 234567890, 234567890, 'rejbfjbsdkjfg@gmail.com'),
(10, 'jas', 'JAYANAGAR', 'DR HAMSA V', 'PAEDIATRIC NEPHROLOGY', '1', '2021-11-21', 'female', 19, 1234567890, 2345678, 'rejbfjbsdkjfg@gmail.com'),
(11, 'iana', 'BANASHANKARI', 'DR.SANDEEP R SHARMA', 'MEDICAL GASTROENTEROLOGY', '2222', '2022-03-16', 'female', 9, 1234567890, 131245, 'reenajasmineedwin@gmail.com'),
(12, 'maria', 'JAYANAGAR', 'DR SHASHIKALA', 'DEVELOPMENTAL MEDICINE', '2222', '2022-03-16', 'female', 20, 1234567890, 9876543, 'reenajasmineedwin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `Reason`
--

DROP TABLE IF EXISTS `Reason`;
CREATE TABLE `Reason` (
  `ID` int(255) NOT NULL,
  `Location` varchar(255) NOT NULL DEFAULT 'No',
  `Specific_Services_offered` varchar(255) NOT NULL DEFAULT 'No',
  `Referred_by_doctor` varchar(255) NOT NULL DEFAULT 'No',
  `Friend_Family_Recommendation` varchar(255) NOT NULL DEFAULT 'No',
  `Previous_Experience` varchar(255) NOT NULL DEFAULT 'No',
  `Your_Doctor_Availability` varchar(255) NOT NULL DEFAULT 'No',
  `Company_Recommendation` varchar(255) NOT NULL DEFAULT 'No',
  `Other` varchar(255) NOT NULL DEFAULT '-'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Reason`
--

INSERT INTO `Reason` (`ID`, `Location`, `Specific_Services_offered`, `Referred_by_doctor`, `Friend_Family_Recommendation`, `Previous_Experience`, `Your_Doctor_Availability`, `Company_Recommendation`, `Other`) VALUES
(1, 'No', 'No', 'No', 'No', 'Yes', 'Yes', 'No', 'gjhk'),
(2, 'No', 'No', 'No', 'No', 'Yes', 'Yes', 'No', 'gjhk'),
(3, 'No', 'No', 'No', 'No', 'Yes', 'Yes', 'No', 'gjhk'),
(4, 'No', 'No', 'No', 'No', 'Yes', 'Yes', 'No', 'gjhk'),
(5, 'No', 'No', 'No', 'No', 'Yes', 'Yes', 'No', 'asdfghjl'),
(6, 'No', 'No', 'No', 'No', 'No', 'Yes', 'Yes', 'fdghjkl'),
(7, 'No', 'No', 'No', 'No', 'No', 'Yes', 'Yes', 'fdghjkl'),
(8, 'No', 'No', 'No', 'No', 'No', 'Yes', 'Yes', 'fdghjkl'),
(9, 'No', 'No', 'No', 'No', 'No', 'Yes', 'Yes', 'fdghjkl'),
(10, 'No', 'No', 'No', 'No', 'Yes', 'Yes', 'No', 'ghgfghj'),
(11, 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', 'fvs'),
(12, 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', 'tfc');

-- --------------------------------------------------------

--
-- Table structure for table `Reception_Experience`
--

DROP TABLE IF EXISTS `Reception_Experience`;
CREATE TABLE `Reception_Experience` (
  `ID` int(255) NOT NULL,
  `Helpfulness` varchar(255) NOT NULL,
  `Courtesy` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Reception_Experience`
--

INSERT INTO `Reception_Experience` (`ID`, `Helpfulness`, `Courtesy`) VALUES
(1, 'Excellent', 'Excellent'),
(2, 'Excellent', 'Excellent'),
(3, 'Excellent', 'Excellent'),
(4, 'Excellent', 'Excellent'),
(5, 'Excellent', 'Excellent'),
(6, 'Excellent', 'Excellent'),
(7, 'Excellent', 'Excellent'),
(8, 'Excellent', 'Excellent'),
(9, 'Excellent', 'Excellent'),
(10, 'Excellent', 'Excellent'),
(11, 'Very good', 'Very good'),
(12, 'Very good', 'Very good');

-- --------------------------------------------------------

--
-- Table structure for table `Registration_Experience`
--

DROP TABLE IF EXISTS `Registration_Experience`;
CREATE TABLE `Registration_Experience` (
  `ID` int(255) NOT NULL,
  `Efficiency` varchar(255) NOT NULL,
  `Courtesy` varchar(255) NOT NULL,
  `Waiting_Time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Registration_Experience`
--

INSERT INTO `Registration_Experience` (`ID`, `Efficiency`, `Courtesy`, `Waiting_Time`) VALUES
(1, 'Excellent', 'Excellent', 'Excellent'),
(2, 'Excellent', 'Excellent', 'Excellent'),
(3, 'Excellent', 'Excellent', 'Excellent'),
(4, 'Excellent', 'Excellent', 'Excellent'),
(5, 'Excellent', 'Excellent', 'Excellent'),
(6, 'Excellent', 'Excellent', 'Excellent'),
(7, 'Excellent', 'Excellent', 'Excellent'),
(8, 'Excellent', 'Excellent', 'Excellent'),
(9, 'Excellent', 'Excellent', 'Excellent'),
(10, 'Excellent', 'Excellent', 'Excellent'),
(11, 'Very good', 'Very good', 'Very good'),
(12, 'Very good', 'Very good', 'Very good');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Consultation_and_Nursing_Experience`
--
ALTER TABLE `Consultation_and_Nursing_Experience`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Diagnostic_and_Ancillary_Services`
--
ALTER TABLE `Diagnostic_and_Ancillary_Services`
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
-- Indexes for table `Overall_Experience`
--
ALTER TABLE `Overall_Experience`
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
-- Indexes for table `Reception_Experience`
--
ALTER TABLE `Reception_Experience`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Registration_Experience`
--
ALTER TABLE `Registration_Experience`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Diagnostic_and_Ancillary_Services`
--
ALTER TABLE `Diagnostic_and_Ancillary_Services`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `Doctor_Data`
--
ALTER TABLE `Doctor_Data`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;

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
-- AUTO_INCREMENT for table `Overall_Experience`
--
ALTER TABLE `Overall_Experience`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `Personal_details`
--
ALTER TABLE `Personal_details`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `Reason`
--
ALTER TABLE `Reason`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `Reception_Experience`
--
ALTER TABLE `Reception_Experience`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `Registration_Experience`
--
ALTER TABLE `Registration_Experience`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Consultation_and_Nursing_Experience`
--
ALTER TABLE `Consultation_and_Nursing_Experience`
  ADD CONSTRAINT `consultation_and_nursing_experience_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Personal_details` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Diagnostic_and_Ancillary_Services`
--
ALTER TABLE `Diagnostic_and_Ancillary_Services`
  ADD CONSTRAINT `diagnostic_and_ancillary_services_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Personal_details` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Overall_Experience`
--
ALTER TABLE `Overall_Experience`
  ADD CONSTRAINT `overall_experience_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Personal_details` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Reason`
--
ALTER TABLE `Reason`
  ADD CONSTRAINT `reason_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Personal_details` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Reception_Experience`
--
ALTER TABLE `Reception_Experience`
  ADD CONSTRAINT `reception_experience_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Personal_details` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Registration_Experience`
--
ALTER TABLE `Registration_Experience`
  ADD CONSTRAINT `registration_experience_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Personal_details` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
