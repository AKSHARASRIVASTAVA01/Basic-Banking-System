-- Server: 127.0.0.1 via TCP/IP
-- Server type: MariaDB
-- Server connection: SSL is not being used Documentation
-- Server version: 10.4.32-MariaDB - mariadb.org binary distribution
-- Protocol version: 10
-- Server charset: UTF-8 Unicode (utf8mb4)
-- Apache/2.4.58 (Win64) OpenSSL/3.1.3 PHP/8.2.12
-- Database client version: libmysql - mysqlnd 8.2.12
-- PHP extension: mysqli Documentation curl Documentation mbstring Documentation
-- PHP version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


-- Database: `basic bank`





-- Table structure for table `transaction`


CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- Dumping data for table `transaction`


INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Akshara', 'Shubh', 200, '2024-08-07 17:32:27'),
(2, 'Akshara', 'Anika', 200, '2024-08-07 18:00:31'),
(3, 'Gaurav', 'Suraj', 5000, '2024-08-08 19:01:32'),
(4, 'Shubh', 'Shivam', 5000, '2024-08-08 19:06:15'),
(5, 'Mona', 'Lakshya', 500, '2024-08-09 18:28:24'),
(6, 'Neeraj', 'Divya', 500, '2024-08-10 16:30:31'),
(7, 'Lakshya', 'Shubh', 200, '2024-08-10 16:31:22'),
(8, 'Neeraj', 'Shivam', 520, '2024-08-11 07:39:58'),
(9, 'Anika', 'Divya', 500, '2024-08-12 16:37:08'),
(10, 'Shubh', 'Akshara', 100, '2024-08-12 16:52:18');


-- Table structure for table `users`


CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- Dumping data for table `users`


INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1000, 'Akshara', 'aksh@gmail.com', 50000),
(2350, 'Shubh', 'shubh@gmail.com', 53000),
(3624, 'Gaurav', 'gauravsaxena@gmail.com', 40500),
(4542, 'Mona', 'mony@gmail.com', 48800),
(5345, 'Suraj', 'suraj@gmail.com', 48900),
(5465, 'Anika', 'ani@gmail.com', 49500),
(6554, 'Divya', 'divu@gmail.com', 40900),
(7875, 'Neeraj', 'neeraj@gmail.com', 50480),
(8877, 'Lakshya', 'laksh@gmail.com', 49500),
(9245, 'Shivam', 'shivu@gmail.com', 38500);

-- Indexes for dumped tables



-- Indexes for table `transaction`

ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

-- Indexes for table `users`

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);


-- AUTO_INCREMENT for dumped tables



-- AUTO_INCREMENT for table `transaction`

ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;


-- AUTO_INCREMENT for table `users`

ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54655;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
