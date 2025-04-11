-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2025 at 11:59 AM
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
-- Database: `web_mysqli`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`, `admin_status`) VALUES
(1, 'phuongadmin', '202cb962ac59075b964b07152d234b70', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id_cart` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `cart_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`id_cart`, `id_khachhang`, `code_cart`, `cart_status`) VALUES
(1, 1, '8180', 0),
(2, 1, '1065', 0),
(3, 5, '7726', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart_details`
--

CREATE TABLE `tbl_cart_details` (
  `id_cart_details` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_cart_details`
--

INSERT INTO `tbl_cart_details` (`id_cart_details`, `code_cart`, `id_sanpham`, `soluongmua`) VALUES
(6, '7726', 18, 1),
(7, '7726', 15, 1),
(8, '7726', 17, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id_dangky` int(11) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `dienthoai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_dangky`, `tenkhachhang`, `email`, `diachi`, `matkhau`, `dienthoai`) VALUES
(5, 'nguyenthanhphuong', 'nguyenthanhphuong@gmail.com', 'Quận 7, Thành phố Hồ Chí Minh', '827ccb0eea8a706c4c34a16891f84e7b', '0854357001');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(14, 'Tai Nghe', 2),
(15, 'Chuột + Bàn phím', 3),
(17, 'Màn hình', 5),
(18, 'Main, CPU, VGA', 6),
(19, 'Laptop', 7),
(20, 'PC Gear', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(250) NOT NULL,
  `masp` varchar(100) NOT NULL,
  `giasp` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `tomtat` tinytext NOT NULL,
  `noidung` text NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masp`, `giasp`, `soluong`, `hinhanh`, `tomtat`, `noidung`, `tinhtrang`, `id_danhmuc`) VALUES
(12, 'Bàn Phím Cơ Không Dây - AKKO MU01', '1', '450000', 2, '1744358712_Bàn Phím Cơ Không Dây - AKKO MU01.png', 'Bàn Phím Cơ Không Dây - AKKO MU01', 'AKKO MU01 Mountain Seclusion: Phiên bản giới hạn được lấy cảm hứng từ những bức tranh thủy mặc các ngọn núi miền sơn cước của Trung Quốc.', 1, 15),
(13, 'PC Gaming Cyber RX 6500 XT 4G Intel I3 12100F', '2', '8900000', 1, '1744358950_PC Gaming Cyber RX 6500.jpg', '  TTC27 Gaming – i3 12100F | Ram 8GB | SSD 256G | GTX1650 4G     ', '     TTC27 Gaming – i3 12100F | Ram 8GB | SSD 256G | GTX1650 4G là cấu hình phổ thông giá rẻ    ', 1, 20),
(14, 'Laptop Lenovo V14 G4 IRU 83A0000TVN', '3', '13590000', 2, '1744359135_Laptop Lenovo V14 G4 IRU 83A0000TVN.jpg', 'Laptop Lenovo V14 G4 IRU 83A0000TVN', 'Laptop Lenovo V14 G4 IRU 83A000FNVN trang bị bộ vi xử lý Intel Core i5-13420H 8 nhân, giúp xử lý các tác vụ đa nhiệm mượt mà và tối ưu hiệu suất làm việc.', 1, 19),
(15, 'Card màn hình Asus Dual GeForce RTX 4060', '4', '4990000', 4, '1744359252_Card Asus Dual GeForce RTX 4060.jpg', '  Card màn hình Asus Dual GeForce RTX 4060  ', '  ASUS Dual GeForce RTX™ 4060 8GB GDDR6 với hai quạt công nghệ hướng trục Axial và một khe cắm 2.5 cho khả năng tương thích với nhiều linh kiện khác.  ', 1, 18),
(16, 'Chuột không dây Gaming GravaStar Pro', '6', '2770000', 2, '1744359348_Chuột không dây Gaming GravaStar.jpg', 'Chuột không dây Gaming Gravastar Mercury Pro M1 & M2 - Vũ khí hoàn hảo để chinh phục mọi chiến trường ảo', 'Mercury M1 Pro là mẫu chuột gaming mới ra mắt 2024 của GravaStar, được thiết kế dành cho những game thủ ưa thích sự sáng tạo và độc đáo. Nổi bật với thiết kế bầm bổ, mạnh mẽ, Mercury M1 Pro sẽ là người bạn đồng hành lý tưởng cho những cuộc chiến căng thẳng.', 1, 15),
(17, 'Tai nghe DareU EH469 7.1 RGB Pink', '7', '375000', 0, '1744359448_Tai nghe DareU EH469 7.1 RGB Pink.jpg', 'Tai nghe DareU EH469 7.1 RGB Pink', 'DareU EH469 7.1 RGB Pink mang thiết kế headband kép đơn giản, trọng lượng chỉ 280g (không bao gồm dây) một trong những sự lựa chọn tai nghe máy tính vô cùng thoải mái khi đeo mà không gây áp lực khó chịu cho đầu.', 1, 14),
(18, 'Màn Hình Gaming ViewSonic VX2779A PRO 27Inch 240Hz', '1', '4490000', 2, '1744359585_Màn Hình Gaming ViewSonic 240Hz.jpg', '  Màn Hình Gaming ViewSonic VX2779A PRO 27Inch 240Hz  ', '  Màn hình ViewSonic VX2779A-HD-PRO 27\" IPS 240Hz 1ms chuyên game  ', 1, 17);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indexes for table `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  ADD PRIMARY KEY (`id_cart_details`);

--
-- Indexes for table `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  ADD PRIMARY KEY (`id_dangky`);

--
-- Indexes for table `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Indexes for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  MODIFY `id_cart_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_dangky` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
