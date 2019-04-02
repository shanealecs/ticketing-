-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2019 at 03:25 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ticketing`
--

-- --------------------------------------------------------

--
-- Table structure for table `shows`
--

CREATE TABLE `shows` (
  `id` int(11) NOT NULL,
  `concert_name` varchar(200) NOT NULL,
  `artist` varchar(200) NOT NULL,
  `location` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `concert_date` date NOT NULL,
  `time` time NOT NULL,
  `ticket_no` int(11) NOT NULL,
  `ticket_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shows`
--

INSERT INTO `shows` (`id`, `concert_name`, `artist`, `location`, `image`, `concert_date`, `time`, `ticket_no`, `ticket_price`) VALUES
(1, 'Coldplay Tour', 'Coldplay', 'MOA Arena', 'coldplaytour.jpg', '2019-08-12', '13:34:00', 21000, 35000),
(3, 'LeBron James Tour', 'LeBron James', 'Philippine Arena', 'lbjtour.jpg', '2019-03-13', '12:30:00', 30000, 1500),
(12, 'The Laptrip Show', 'Migs Ladisla', 'Taguig', 'no-image.jpg', '2019-10-31', '00:30:00', 300, 1500);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `type` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `birthday` date NOT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `type`, `age`, `birthday`, `email`, `username`, `password`) VALUES
(1, 'Juan Miguel Ladisla', 0, 20, '1999-02-08', 'migsladisla@gmail.com', 'migsladisla', '002520'),
(2, 'Ysabelle Domingo', 0, 21, '1998-06-10', 'ysadomingo@gmail.com', 'ysadomingo', '002520'),
(3, 'ian arellano', 0, 20, '1999-07-06', 'ianwilab@gmail.com', 'ianarellano', '002520'),
(4, 'Ken Tarnate', 1, 28, '1990-12-31', 'kentarnate@gmail.com', 'kentarnate13', '002520');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `shows`
--
ALTER TABLE `shows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `shows`
--
ALTER TABLE `shows`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
