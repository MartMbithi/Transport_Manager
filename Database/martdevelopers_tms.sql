-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 26, 2019 at 03:13 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `martdevelopers_tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `tms_admin`
--

CREATE TABLE `tms_admin` (
  `a_id` int(20) NOT NULL,
  `a_name` varchar(200) NOT NULL,
  `a_email` varchar(200) NOT NULL,
  `a_pwd` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tms_admin`
--

INSERT INTO `tms_admin` (`a_id`, `a_name`, `a_email`, `a_pwd`) VALUES
(1, 'System Admin', 'sysadmin@tms.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tms_feedback`
--

CREATE TABLE `tms_feedback` (
  `f_id` int(20) NOT NULL,
  `f_uname` varchar(200) NOT NULL,
  `f_content` longtext NOT NULL,
  `f_status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tms_feedback`
--

INSERT INTO `tms_feedback` (`f_id`, `f_uname`, `f_content`, `f_status`) VALUES
(1, 'Mart Developers ', 'Would thank you for guys for implementing such a nice system.', 'Published'),
(2, 'Mart Developers ', 'This is the best system for Transport Management its cost effective, safe and its easy to use.', 'Published');

-- --------------------------------------------------------

--
-- Table structure for table `tms_pwd_resets`
--

CREATE TABLE `tms_pwd_resets` (
  `r_id` int(20) NOT NULL,
  `r_email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tms_pwd_resets`
--

INSERT INTO `tms_pwd_resets` (`r_id`, `r_email`) VALUES
(2, 'sysadmin@tms.com');

-- --------------------------------------------------------

--
-- Table structure for table `tms_syslogs`
--

CREATE TABLE `tms_syslogs` (
  `l_id` int(20) NOT NULL,
  `u_id` varchar(200) NOT NULL,
  `u_email` varchar(200) NOT NULL,
  `u_ip` varbinary(200) NOT NULL,
  `u_city` varchar(200) NOT NULL,
  `u_country` varchar(200) NOT NULL,
  `u_logintime` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tms_user`
--

CREATE TABLE `tms_user` (
  `u_id` int(20) NOT NULL,
  `u_fname` varchar(200) NOT NULL,
  `u_lname` varchar(200) NOT NULL,
  `u_phone` varchar(200) NOT NULL,
  `u_addr` varchar(200) NOT NULL,
  `u_category` varchar(200) NOT NULL,
  `u_email` varchar(200) NOT NULL,
  `u_pwd` varchar(20) NOT NULL,
  `u_car_type` varchar(200) NOT NULL,
  `u_car_regno` varchar(200) NOT NULL,
  `u_car_bookdate` varchar(200) NOT NULL,
  `u_car_book_status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tms_user`
--

INSERT INTO `tms_user` (`u_id`, `u_fname`, `u_lname`, `u_phone`, `u_addr`, `u_category`, `u_email`, `u_pwd`, `u_car_type`, `u_car_regno`, `u_car_bookdate`, `u_car_book_status`) VALUES
(3, 'Demo', 'User', '070678909', '90100 Machakos ', 'Driver', 'demouser@tms.com', 'demo123', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tms_vehicle`
--

CREATE TABLE `tms_vehicle` (
  `v_id` int(20) NOT NULL,
  `v_name` varchar(200) NOT NULL,
  `v_reg_no` varchar(200) NOT NULL,
  `v_pass_no` varchar(200) NOT NULL,
  `v_driver` varchar(200) NOT NULL,
  `v_category` varchar(200) NOT NULL,
  `v_dpic` varchar(200) NOT NULL,
  `v_status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tms_vehicle`
--

INSERT INTO `tms_vehicle` (`v_id`, `v_name`, `v_reg_no`, `v_pass_no`, `v_driver`, `v_category`, `v_dpic`, `v_status`) VALUES
(3, 'Euro Bond', 'KCA 120B', '50', 'Esther Ngundo', 'Bus', '1.jpg', 'Available'),
(4, 'The Punisher', 'KCG 215 A', '40', 'Esther Ngundo', 'Matatu', 'banner-1.jpg', 'Available'),
(5, 'TGOD', 'KAV 466P', '14', 'Esther Ngundo', 'Nissan', 'banner-6.jpg', 'Available'),
(6, 'Saloon Car', 'KBZ 120T', '7', 'Esther Ngundo', 'Saloon Cars', 'maxresdefault.jpg', 'Available');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tms_admin`
--
ALTER TABLE `tms_admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `tms_feedback`
--
ALTER TABLE `tms_feedback`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `tms_pwd_resets`
--
ALTER TABLE `tms_pwd_resets`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `tms_syslogs`
--
ALTER TABLE `tms_syslogs`
  ADD PRIMARY KEY (`l_id`);

--
-- Indexes for table `tms_user`
--
ALTER TABLE `tms_user`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `tms_vehicle`
--
ALTER TABLE `tms_vehicle`
  ADD PRIMARY KEY (`v_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tms_admin`
--
ALTER TABLE `tms_admin`
  MODIFY `a_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tms_feedback`
--
ALTER TABLE `tms_feedback`
  MODIFY `f_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tms_pwd_resets`
--
ALTER TABLE `tms_pwd_resets`
  MODIFY `r_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tms_syslogs`
--
ALTER TABLE `tms_syslogs`
  MODIFY `l_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tms_user`
--
ALTER TABLE `tms_user`
  MODIFY `u_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tms_vehicle`
--
ALTER TABLE `tms_vehicle`
  MODIFY `v_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
