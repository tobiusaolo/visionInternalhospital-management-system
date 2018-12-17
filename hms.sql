-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 17, 2018 at 03:50 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `Appointments`
--

CREATE TABLE `Appointments` (
  `PatientID` int(6) NOT NULL,
  `Firstname` varchar(30) NOT NULL,
  `Lastname` varchar(30) NOT NULL,
  `contact` varchar(14) NOT NULL,
  `DoctorID` varchar(30) DEFAULT NULL,
  `status` varchar(8) NOT NULL,
  `AppointmentDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Appointments`
--

INSERT INTO `Appointments` (`PatientID`, `Firstname`, `Lastname`, `contact`, `DoctorID`, `status`, `AppointmentDate`) VALUES
(2, 'WaGumpo', 'Ritah', '+256782437836', 'Malta', 'Pending', '2018-12-19 21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `Bills`
--

CREATE TABLE `Bills` (
  `Id` int(20) NOT NULL,
  `Title` varchar(20) NOT NULL,
  `Details` varchar(50) NOT NULL,
  `Amount` int(10) NOT NULL,
  `Receipt_No` varchar(25) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Bills`
--

INSERT INTO `Bills` (`Id`, `Title`, `Details`, `Amount`, `Receipt_No`, `Date`) VALUES
(0, '', '', 0, 'ABDC44263G', '2018-12-17 09:39:36'),
(0, '', '', 0, 'ABDC44263G', '2018-12-17 09:39:36'),
(0, 'Water', 'Hospital bills for water', 8000, 'ero12445662', '2018-12-17 09:39:36'),
(0, 'Water', 'Hospital bills for water', 8000, 'ero12445662', '2018-12-17 09:39:36'),
(0, 'Electricity', 'Room PB1', 2000, 'Ad00002', '2018-12-17 09:43:13');

-- --------------------------------------------------------

--
-- Table structure for table `Diagnosis`
--

CREATE TABLE `Diagnosis` (
  `diagnosis_id` int(20) NOT NULL,
  `PatiendId` int(20) NOT NULL,
  `diagnosis_type` varchar(20) NOT NULL,
  `infection` varchar(20) NOT NULL,
  `Details` varchar(200) NOT NULL,
  `prescription` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Diagnosis`
--

INSERT INTO `Diagnosis` (`diagnosis_id`, `PatiendId`, `diagnosis_type`, `infection`, `Details`, `prescription`, `date`) VALUES
(1, 2, 'Pregancy', 'normal', 'ready in four months                                            ', '            paracemal 1x2\r\nMagnesium 1x1 \r\n                          \r\ncotton 1 whole      ', '2018-12-10 13:24:33'),
(2, 2, 'Pregancy', 'normal', 'ready in four months                                            ', '            paracemal 1x2\r\nMagnesium 1x1 \r\n                          \r\ncotton 1 whole      ', '2018-12-10 13:24:33'),
(3, 1, 'Ordinary', 'Yellow Fever', '   Urine -postive\r\n                                         ', '', '2018-12-14 09:27:14'),
(4, 0, 'Optical', 'Trachoma', '                                            surgery needed', '', '2018-12-16 09:12:15'),
(5, 0, 'Eye', 'Trachoma', '                    hsdyuieryu                        ', '', '2018-12-16 09:28:06'),
(6, 1, 'Optical', 'Red', '                                            jdwjkdlskds', '', '2018-12-16 09:28:55'),
(7, 1, 'Surgical', 'Cancer', '                                            critical moment', '', '2018-12-16 18:52:07');

-- --------------------------------------------------------

--
-- Table structure for table `drug_details`
--

CREATE TABLE `drug_details` (
  `medicine_id` int(15) NOT NULL,
  `img` longblob NOT NULL,
  `name` varchar(20) NOT NULL,
  `qty` int(5) NOT NULL,
  `lg_qty_unit` varchar(11) NOT NULL,
  `price` int(8) NOT NULL,
  `unit` varchar(15) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drug_details`
--

INSERT INTO `drug_details` (`medicine_id`, `img`, `name`, `qty`, `lg_qty_unit`, `price`, `unit`, `Date`) VALUES
(6, '', 'Septrine', 5, 'boxes', 200, '@tablet', '2018-12-12 22:04:06'),
(7, '', 'Syrup', 30, 'bottles', 15000, '@bottle', '2018-12-13 06:54:05'),
(8, '', 'Gloves', 70, 'boxes', 1000, '@packet', '2018-12-13 07:02:24'),
(9, 0x75706c6f61642f5f313534343638343839382e, 'Family Planning pill', 100, 'boxes', 5000, '@packet', '2018-12-13 07:08:18'),
(10, 0x75706c6f61642f5f313534343638353135312e, 'Cotrimazole', 90, 'boxes', 3000, '@packet', '2018-12-13 07:12:31'),
(11, 0x75706c6f61642f636173736176615f313534343638353533362e6a7067, 'Aspirin', 30, 'Tins', 200, '@tablet', '2018-12-13 07:18:56');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

CREATE TABLE `invoice_details` (
  `patientid` int(20) NOT NULL,
  `ref_item` varchar(20) NOT NULL,
  `qty` int(8) NOT NULL,
  `prescription` varchar(12) NOT NULL,
  `total` int(15) NOT NULL,
  `payment_status` varchar(14) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_details`
--

INSERT INTO `invoice_details` (`patientid`, `ref_item`, `qty`, `prescription`, `total`, `payment_status`, `Date`) VALUES
(1, 'Cotrimazole', 24, '2x3', 72000, '', '2018-12-14 08:01:36'),
(1, 'Septrine', 24, '2x3', 4800, '', '2018-12-14 08:02:06'),
(1, 'Gloves', 2, '1 day', 2000, 'Pending', '2018-12-16 19:19:37');

-- --------------------------------------------------------

--
-- Table structure for table `Patients`
--

CREATE TABLE `Patients` (
  `Patientid` int(8) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `Address` varchar(20) NOT NULL,
  `MobileNo` int(12) NOT NULL,
  `status` varchar(10) NOT NULL,
  `workedby` varchar(20) NOT NULL,
  `Date_admitted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Consult` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Patients`
--

INSERT INTO `Patients` (`Patientid`, `FirstName`, `LastName`, `Address`, `MobileNo`, `status`, `workedby`, `Date_admitted`, `Consult`) VALUES
(1, 'Bateesa', 'Saul Tobius', 'kasubi', 2147483647, 'workedUpon', 'Malta', '2018-12-16 18:52:06', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `Payments`
--

CREATE TABLE `Payments` (
  `Receipt_No` int(8) NOT NULL,
  `patient_id` int(8) NOT NULL,
  `Amt_paid` int(8) NOT NULL,
  `status` varchar(15) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Phamarcy`
--

CREATE TABLE `Phamarcy` (
  `medicine_id` int(25) NOT NULL,
  `medicine_name` varchar(50) NOT NULL,
  `bill_no` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `unit_pdt` varchar(10) NOT NULL,
  `amount` int(11) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Phamarcy`
--

INSERT INTO `Phamarcy` (`medicine_id`, `medicine_name`, `bill_no`, `qty`, `type`, `unit_pdt`, `amount`, `Date`) VALUES
(1, 'Gloves', 2, 8, 'Surgical', '', 52000, '2018-12-12 20:15:54'),
(2, 'Cotton', 2, 9, 'Surgical', 'rolls', 20000, '2018-12-12 20:25:46');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `patientid` int(20) NOT NULL,
  `room` varchar(8) NOT NULL,
  `nurse` varchar(20) NOT NULL,
  `patient_status` varchar(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`patientid`, `room`, `nurse`, `patient_status`, `date`) VALUES
(1, 'PB1', '2', 'Discharged', '2018-12-11 08:19:43'),
(2, 'PA1', '3', 'admitted', '2018-12-11 08:02:29');

-- --------------------------------------------------------

--
-- Table structure for table `Staff`
--

CREATE TABLE `Staff` (
  `id` int(8) NOT NULL,
  `Emp_pass` varchar(20) NOT NULL,
  `fname` varchar(15) NOT NULL,
  `Lname` varchar(15) NOT NULL,
  `location` varchar(20) NOT NULL,
  `Telphno` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `occuptaion` varchar(15) NOT NULL,
  `salary` int(10) NOT NULL,
  `img` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Staff`
--

INSERT INTO `Staff` (`id`, `Emp_pass`, `fname`, `Lname`, `location`, `Telphno`, `age`, `gender`, `occuptaion`, `salary`, `img`) VALUES
(1, 'admin', 'Musana', 'Adam', 'Musita', '07059909090', 24, 'M', 'Administrator', 2000000, ''),
(2, 'Doc1', 'Musana', 'Malta', 'Zanna', '07088989898', 20, 'F', 'Doctor', 500000, ''),
(3, 'N001', 'Byogero', 'Grace', 'Mbiko', '09090909090', 24, 'F', 'Receiptionist', 800000, ''),
(4, 'N002', 'Kyakuwa', 'Tapenensi', 'Portal', '0909090909', 30, 'F', 'Nurse', 1000000, ''),
(5, 'Ph001', 'Mukwaya', 'Zulent', 'Kampala', '90909090909', 26, 'M', 'Phamascist', 20000000, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Appointments`
--
ALTER TABLE `Appointments`
  ADD PRIMARY KEY (`PatientID`);

--
-- Indexes for table `Diagnosis`
--
ALTER TABLE `Diagnosis`
  ADD PRIMARY KEY (`diagnosis_id`);

--
-- Indexes for table `drug_details`
--
ALTER TABLE `drug_details`
  ADD PRIMARY KEY (`medicine_id`);

--
-- Indexes for table `Phamarcy`
--
ALTER TABLE `Phamarcy`
  ADD PRIMARY KEY (`medicine_id`);

--
-- Indexes for table `Staff`
--
ALTER TABLE `Staff`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Diagnosis`
--
ALTER TABLE `Diagnosis`
  MODIFY `diagnosis_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `drug_details`
--
ALTER TABLE `drug_details`
  MODIFY `medicine_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `Phamarcy`
--
ALTER TABLE `Phamarcy`
  MODIFY `medicine_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Staff`
--
ALTER TABLE `Staff`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
