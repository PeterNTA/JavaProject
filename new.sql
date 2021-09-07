-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 05, 2021 lúc 10:22 AM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `foodtsk`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `time` varchar(100) NOT NULL,
  `date` varchar(20) NOT NULL,
  `total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`id`, `time`, `date`, `total`) VALUES
(5, '23:09', '2021-04-04', 30000),
(6, '07:40', '2021-04-05', 35000),
(7, '08:13', '2021-04-05', 69000),
(8, '20:49', '2021-04-05', 60000),
(9, '09:50', '2021-04-11', 119000),
(10, '11:13', '2021-04-20', 25000),
(11, '14:59', '2021-04-21', 90000),
(12, '21:50', '2021-04-23', 35),
(13, '09:01', '2021-04-24', 55),
(14, '11:16', '2021-04-24', 30),
(15, '11:20', '2021-04-24', 25),
(16, '16:38', '2021-04-24', 140),
(17, '19:24', '2021-04-24', 65),
(18, '19:45', '2021-04-24', 70000),
(19, '20:05', '2021-04-24', 40000),
(20, '20:06', '2021-04-24', 70000),
(21, '20:08', '2021-04-24', 30000),
(22, '20:09', '2021-04-24', 15000),
(23, '20:13', '2021-04-24', 30000),
(24, '20:14', '2021-04-24', 5000),
(25, '20:21', '2021-04-24', 25000),
(26, '21:19', '2021-04-24', 30000),
(27, '11:15', '2021-04-28', 125000),
(28, '11:24', '2021-04-28', 125000),
(29, '16:34', '2021-04-28', 250000),
(30, '16:34', '2021-04-28', 250000),
(31, '16:39', '2021-04-28', 250000),
(32, '16:49', '2021-04-28', 125000),
(33, '16:52', '2021-04-28', 200000),
(34, '16:55', '2021-04-28', 200000),
(35, '17:10', '2021-04-28', 125000),
(36, '22:32', '2021-04-28', 125000),
(37, '16:21', '2021-05-04', 100000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Food'),
(2, 'Drink');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `detailsbill`
--

CREATE TABLE `detailsbill` (
  `id` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `bill` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `detailsbill`
--

INSERT INTO `detailsbill` (`id`, `product`, `bill`, `quantity`, `price`) VALUES
(6, 9, 5, 1, 10000),
(7, 10, 5, 1, 20000),
(8, 11, 6, 1, 15000),
(9, 10, 6, 1, 20000),
(10, 16, 7, 1, 69000),
(11, 1, 8, 2, 40000),
(12, 10, 8, 1, 20000),
(13, 1, 9, 1, 20000),
(14, 2, 9, 1, 20000),
(15, 6, 9, 1, 10000),
(16, 16, 9, 1, 69000),
(17, 4, 10, 1, 25000),
(18, 2, 11, 1, 20000),
(19, 3, 11, 1, 15000),
(20, 4, 11, 1, 25000),
(21, 5, 11, 1, 30000),
(22, 2, 12, 1, 20000),
(23, 3, 12, 1, 15000),
(24, 4, 13, 1, 25000),
(25, 5, 13, 1, 30000),
(26, 5, 14, 1, 30000),
(27, 4, 15, 1, 25000),
(28, 5, 16, 3, 90000),
(29, 4, 16, 2, 50000),
(30, 5, 17, 1, 30000),
(31, 6, 17, 1, 10000),
(32, 7, 17, 1, 5000),
(33, 8, 17, 1, 20000),
(34, 3, 18, 1, 15000),
(35, 4, 18, 1, 25000),
(36, 5, 18, 1, 30000),
(37, 6, 19, 1, 10000),
(38, 5, 19, 1, 30000),
(39, 3, 20, 1, 15000),
(40, 4, 20, 1, 25000),
(41, 5, 20, 1, 30000),
(42, 5, 21, 1, 30000),
(43, 3, 22, 1, 15000),
(44, 5, 23, 1, 30000),
(45, 7, 24, 1, 5000),
(46, 4, 25, 1, 25000),
(47, 5, 26, 1, 30000),
(48, 2, 27, 5, 125000),
(49, 2, 28, 5, 125000),
(50, 2, 29, 10, 250000),
(51, 2, 30, 10, 250000),
(52, 2, 31, 10, 250000),
(53, 2, 32, 5, 125000),
(54, 2, 33, 5, 125000),
(55, 3, 33, 5, 75000),
(56, 2, 34, 5, 125000),
(57, 3, 34, 5, 75000),
(58, 2, 35, 5, 125000),
(59, 2, 36, 5, 125000),
(60, 2, 37, 1, 30000),
(61, 3, 37, 1, 15000),
(62, 4, 37, 1, 25000),
(63, 5, 37, 1, 30000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhapkho`
--

CREATE TABLE `nhapkho` (
  `product` int(11) DEFAULT NULL,
  `name` varchar (30) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nhapkho`
--

INSERT INTO `nhapkho` (`product`, `quantity`, `price`, `date`) VALUES
(33, 10, 20000, '2021-04-29'),
(2, 10, 30000, '2021-04-29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `CategoryID` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `CategoryID`, `quantity`, `price`) VALUES
(2, 'Chân Gà', 1, 10, '30000'),
(3, 'Da Heo Giòn', 1, 9, '15000'),
(4, 'Bánh Tráng Trộn', 1, 99, '25000'),
(5, 'Bánh Tráng Cuốn', 1, 49, '30000'),
(6, 'Xòa Lắc', 1, 200, '10000'),
(7, 'Kẹo Muối Ớt', 1, 500, '5000'),
(8, 'Lưỡi vịt', 1, 20, '20000'),
(9, 'Trà Chanh', 2, 200, '10000'),
(10, 'Trà Đào', 2, 50, '20000'),
(11, 'Milo Đá Dằm', 2, 40, '15000'),
(16, 'Lẩu Cay', 1, 50, '69000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `password`, `sex`, `role`) VALUES
(3, 'test', 'admin', '1', 'Nam', 2),
(21, 'test2', 'employee', '2', 'Nam', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `xuatkho`
--

CREATE TABLE `xuatkho` (
  `product` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `detailsbill`
--
ALTER TABLE `detailsbill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bill` (`bill`),
  ADD KEY `product` (`product`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cat` (`CategoryID`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `detailsbill`
--
ALTER TABLE `detailsbill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `detailsbill`
--
ALTER TABLE `detailsbill`
  ADD CONSTRAINT `db_bill_fk` FOREIGN KEY (`bill`) REFERENCES `bill` (`id`),
  ADD CONSTRAINT `detailsbill_ibfk_1` FOREIGN KEY (`bill`) REFERENCES `bill` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_cat` FOREIGN KEY (`CategoryID`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
