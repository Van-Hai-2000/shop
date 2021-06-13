-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 13, 2021 at 02:15 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_nongsancantho`
--

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(10) UNSIGNED NOT NULL,
  `binhluan_ten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `binhluan_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `binhluan_noi_dung` longtext COLLATE utf8_unicode_ci NOT NULL,
  `binhluan_trang_thai` int(11) NOT NULL,
  `sanpham_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `binhluan`
--

INSERT INTO `binhluan` (`id`, `binhluan_ten`, `binhluan_email`, `binhluan_noi_dung`, `binhluan_trang_thai`, `sanpham_id`, `created_at`, `updated_at`) VALUES
(1, 'Trịnh Thị Ngọc Hân', 'hanb1204011@gmail.com', 'a', 1, 1, '2016-06-01 09:11:21', '2016-06-01 09:11:21'),
(2, 'AA', 'hanb1204011@gmail.com', 'Ngon', 1, 8, '2016-07-01 00:43:51', '2016-07-01 00:43:51');

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id` int(11) NOT NULL,
  `sanpham_id` int(10) UNSIGNED NOT NULL,
  `donhang_id` int(10) UNSIGNED NOT NULL,
  `chitietdonhang_so_luong` int(11) NOT NULL,
  `chitietdonhang_thanh_tien` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id`, `sanpham_id`, `donhang_id`, `chitietdonhang_so_luong`, `chitietdonhang_thanh_tien`, `created_at`, `updated_at`) VALUES
(2, 1, 3, 1, '30000.00', NULL, NULL),
(4, 8, 2, 3, '324000.00', NULL, NULL),
(6, 8, 5, 1, '108000.00', NULL, NULL),
(7, 3, 5, 1, '30000.00', NULL, NULL),
(8, 4, 5, 2, '1260000.00', NULL, NULL),
(9, 1, 6, 1, '30000.00', NULL, NULL),
(10, 5, 6, 2, '504000.00', NULL, NULL),
(11, 9, 7, 99, '20790000.00', NULL, NULL),
(12, 4, 8, 1, '350000.00', NULL, NULL),
(13, 8, 8, 1, '120000.00', NULL, NULL),
(14, 4, 9, 1, '350000.00', NULL, NULL),
(15, 8, 9, 1, '120000.00', NULL, NULL),
(16, 5, 9, 2, '280000.00', NULL, NULL),
(17, 4, 10, 1, '350000.00', NULL, NULL),
(18, 4, 11, 1, '350000.00', NULL, NULL),
(19, 4, 12, 1, '350000.00', NULL, NULL),
(20, 4, 13, 1, '350000.00', NULL, NULL),
(21, 4, 14, 1, '350000.00', NULL, NULL),
(22, 4, 15, 1, '350000.00', NULL, NULL),
(23, 4, 16, 1, '350000.00', NULL, NULL),
(24, 4, 17, 1, '350000.00', NULL, NULL),
(25, 4, 18, 1, '350000.00', NULL, NULL),
(26, 4, 19, 1, '350000.00', NULL, NULL),
(27, 4, 20, 1, '350000.00', NULL, NULL),
(28, 4, 21, 1, '350000.00', NULL, NULL),
(29, 4, 22, 1, '350000.00', NULL, NULL),
(30, 4, 23, 1, '350000.00', NULL, NULL),
(31, 4, 24, 1, '350000.00', NULL, NULL),
(32, 4, 25, 1, '350000.00', NULL, NULL),
(33, 4, 26, 1, '350000.00', NULL, NULL),
(34, 4, 27, 1, '350000.00', NULL, NULL),
(35, 4, 28, 1, '350000.00', NULL, NULL),
(36, 4, 29, 1, '350000.00', NULL, NULL),
(37, 4, 30, 1, '350000.00', NULL, NULL),
(38, 4, 31, 1, '350000.00', NULL, NULL),
(39, 4, 32, 1, '350000.00', NULL, NULL),
(40, 4, 33, 1, '350000.00', NULL, NULL),
(41, 8, 34, 1, '120000.00', NULL, NULL),
(42, 4, 35, 2, '700000.00', NULL, NULL),
(43, 15, 36, 1, '27000.00', NULL, NULL),
(44, 15, 37, 1, '27000.00', NULL, NULL),
(45, 15, 38, 1, '27000.00', NULL, NULL),
(46, 9, 39, 1, '420000.00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `id` int(10) UNSIGNED NOT NULL,
  `donhang_nguoi_nhan` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `donhang_nguoi_nhan_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `donhang_nguoi_nhan_sdt` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `donhang_nguoi_nhan_dia_chi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `donhang_ghi_chu` longtext COLLATE utf8_unicode_ci NOT NULL,
  `donhang_tong_tien` decimal(10,2) NOT NULL,
  `khachhang_id` int(10) UNSIGNED NOT NULL,
  `tinhtranghd_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`id`, `donhang_nguoi_nhan`, `donhang_nguoi_nhan_email`, `donhang_nguoi_nhan_sdt`, `donhang_nguoi_nhan_dia_chi`, `donhang_ghi_chu`, `donhang_tong_tien`, `khachhang_id`, `tinhtranghd_id`, `created_at`, `updated_at`) VALUES
(2, 'Nhật Long', 'long@gmail.com', '01234567890', 'Đường số 3- Khu dân cư Kiến Phát- TP Tân An- Long An', '', '324000.00', 3, 2, '2016-06-01 07:33:51', '2016-06-01 07:33:51'),
(3, 'Nhật Long', 'longa@gmail.com', '01234567890', 'a', 'a', '30000.00', 3, 4, '2016-06-01 07:37:08', '2016-06-01 07:37:08'),
(5, 'Tạ Thanh Bình', 'a@gmail.com', '01234567890', 'ádf', '', '1398000.00', 4, 1, '2016-06-07 03:10:28', '2016-06-07 03:10:28'),
(6, 'Tạ Thanh Bình', 'user6@gmail.com', '012345676', 'abc', 'abcc', '534000.00', 4, 1, '2016-06-07 03:29:04', '2016-06-07 03:29:04'),
(7, 'queen', 'queen@gmail.com', '0946711770', '123', '', '20790000.00', 5, 4, '2016-06-16 08:10:27', '2016-06-16 08:10:27'),
(8, 'Trịnh Thị Ngọc Phượng', 'phuong@gmail.com', '01234567890', 'Tân An-Long An', 'Gói thành giỏ quà', '470000.00', 7, 1, '2016-06-23 02:18:36', '2016-06-23 02:18:36'),
(9, 'Trịnh Thị Ngọc Hân', 'hana@gmail.com', '0946711770', ' Ninh Kiều - Cần Thơ', 'Gói thành giỏ quà tặng', '750000.00', 6, 4, '2016-06-25 01:32:32', '2016-06-25 01:32:32'),
(10, 'Trịnh Thị Ngọc Phượng', 'user6@gmail.com', '0946711770', 'abc', 'abc', '350000.00', 6, 4, '2016-07-02 03:33:20', '2016-07-02 03:33:20'),
(11, 'Trịnh Thị Ngọc Phượng', 'long@gmail.com', '0946711770', 'abc', '', '350000.00', 8, 4, '2016-07-03 15:01:55', '2016-07-03 15:01:55'),
(12, 'Trịnh Thị Ngọc Phượng', 'user6@gmail.com', '0946711770', '12345', '12345', '350000.00', 8, 4, '2016-07-03 15:09:27', '2016-07-03 15:09:27'),
(13, 'Trịnh Thị Ngọc Phượng', 'long@gmail.com', '0946711770', 'abc', '', '350000.00', 8, 1, '2016-07-03 15:12:34', '2016-07-03 15:12:34'),
(14, 'Trịnh Thị Ngọc Phượng', 'user6@gmail.com', '0946711770', 'abc', '', '350000.00', 8, 1, '2016-07-03 15:14:55', '2016-07-03 15:14:55'),
(15, 'Trịnh Thị Ngọc Phượng', 'user6@gmail.com', '0946711770', 'abc', '', '350000.00', 8, 1, '2016-07-03 15:15:34', '2016-07-03 15:15:34'),
(16, 'Trịnh Thị Ngọc Phượng', 'user6@gmail.com', '0946711770', 'abc', '', '350000.00', 8, 1, '2016-07-03 15:20:02', '2016-07-03 15:20:02'),
(17, 'Trịnh Thị Ngọc Phượng', 'user6@gmail.com', '0946711770', 'abc', '', '350000.00', 8, 1, '2016-07-03 15:21:40', '2016-07-03 15:21:40'),
(18, 'Trịnh Thị Ngọc Phượng', 'user6@gmail.com', '0946711770', 'abc', '', '350000.00', 8, 1, '2016-07-03 15:22:19', '2016-07-03 15:22:19'),
(19, 'Trịnh Thị Ngọc Phượng', 'user6@gmail.com', '0946711770', 'abc', '', '350000.00', 8, 1, '2016-07-03 15:25:59', '2016-07-03 15:25:59'),
(20, 'Trịnh Thị Ngọc Phượng', 'user6@gmail.com', '0946711770', 'abc', '', '350000.00', 8, 1, '2016-07-03 15:27:50', '2016-07-03 15:27:50'),
(21, 'Nhật Long', 'user6@gmail.com', '0946711770', 'abc', '', '350000.00', 8, 1, '2016-07-03 15:30:51', '2016-07-03 15:30:51'),
(22, 'Trịnh Thị Ngọc Phượng', 'user6@gmail.com', '0946711770', 'abc', '', '350000.00', 8, 1, '2016-07-03 15:31:26', '2016-07-03 15:31:26'),
(23, 'Trịnh Thị Ngọc Phượng', 'user6@gmail.com', '0946711770', 'abc', '', '350000.00', 8, 1, '2016-07-03 15:32:42', '2016-07-03 15:32:42'),
(24, 'Trịnh Thị Ngọc Phượng', 'user6@gmail.com', '0946711770', 'abc', '', '350000.00', 8, 1, '2016-07-03 15:33:22', '2016-07-03 15:33:22'),
(25, 'Trịnh Thị Ngọc Phượng', 'user6@gmail.com', '0946711770', 'abc', '', '350000.00', 8, 1, '2016-07-03 15:34:13', '2016-07-03 15:34:13'),
(26, 'Trịnh Thị Ngọc Phượng', 'user6@gmail.com', '0946711770', 'abc', '', '350000.00', 8, 1, '2016-07-03 15:37:42', '2016-07-03 15:37:42'),
(27, 'Trịnh Thị Ngọc Phượng', 'user6@gmail.com', '0946711770', 'abc', '', '350000.00', 8, 1, '2016-07-03 15:38:29', '2016-07-03 15:38:29'),
(28, 'Trịnh Thị Ngọc Phượng', 'user6@gmail.com', '0946711770', 'abc', '', '350000.00', 8, 1, '2016-07-03 15:43:02', '2016-07-03 15:43:02'),
(29, 'Trịnh Thị Ngọc Phượng', 'user6@gmail.com', '0946711770', 'abc', '', '350000.00', 8, 1, '2016-07-03 15:44:31', '2016-07-03 15:44:31'),
(30, 'Trịnh Thị Ngọc Phượng', 'user6@gmail.com', '0946711770', 'abc', '', '350000.00', 8, 1, '2016-07-03 15:47:44', '2016-07-03 15:47:44'),
(31, 'Trịnh Thị Ngọc Phượng', 'user6@gmail.com', '0946711770', '1234', '', '350000.00', 8, 1, '2016-07-03 15:50:11', '2016-07-03 15:50:11'),
(32, 'Trịnh Thị Ngọc Phượng', 'user6@gmail.com', '0946711770', 'abc', '', '350000.00', 8, 1, '2016-07-03 15:51:09', '2016-07-03 15:51:09'),
(33, 'Trịnh Thị Ngọc Phượng', 'long@gmail.com', '0946711770', 'abc', '', '350000.00', 8, 1, '2016-07-03 15:52:08', '2016-07-03 15:52:08'),
(34, 'Trịnh Thị Ngọc Phượng', 'user6@gmail.com', '0946711770', 'abc', '', '120000.00', 8, 1, '2016-07-03 15:59:53', '2016-07-03 15:59:53'),
(35, 'Trịnh Thị Ngọc Phượng', 'user6@gmail.com', '0946711770', 'abc', '', '700000.00', 8, 1, '2016-07-04 11:45:31', '2016-07-04 11:45:31'),
(36, 'Trịnh Thị Ngọc Phượng', 'user6@gmail.com', '0946711770', 'abc', '', '27000.00', 8, 1, '2016-07-05 03:08:04', '2016-07-05 03:08:04'),
(37, 'Trịnh Thị Ngọc Phượng', 'user6@gmail.com', '0946711770', 'abc', '', '27000.00', 8, 1, '2016-07-05 03:08:50', '2016-07-05 03:08:50'),
(38, 'Trịnh Thị Ngọc Phượng', 'long@gmail.com', '01234567890', 'a', '', '27000.00', 8, 1, '2016-07-05 03:10:12', '2016-07-05 03:10:12'),
(39, 'Trịnh Thị Ngọc Phượng', 'user6@gmail.com', '0946711770', 'abc', '', '420000.00', 8, 4, '2016-07-05 03:26:57', '2016-07-05 03:26:57');

-- --------------------------------------------------------

--
-- Table structure for table `donvitinh`
--

CREATE TABLE `donvitinh` (
  `id` int(10) UNSIGNED NOT NULL,
  `donvitinh_ten` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `donvitinh_mo_ta` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `donvitinh`
--

INSERT INTO `donvitinh` (`id`, `donvitinh_ten`, `donvitinh_mo_ta`, `created_at`, `updated_at`) VALUES
(1, 'Chiếc', '', NULL, NULL),
(2, 'Chiếc\r\n', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hinhsanpham`
--

CREATE TABLE `hinhsanpham` (
  `id` int(10) UNSIGNED NOT NULL,
  `hinhsanpham_ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sanpham_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hinhsanpham`
--

INSERT INTO `hinhsanpham` (`id`, `hinhsanpham_ten`, `sanpham_id`, `created_at`, `updated_at`) VALUES
(2, 'Y1A.jpg', 1, NULL, NULL),
(3, 'y1b.jpg', 1, NULL, NULL),
(4, 'y1c.jpg', 1, NULL, NULL),
(5, 'y1d.jpg', 1, NULL, NULL),
(6, 'y2a.jpg', 2, NULL, NULL),
(7, 'y2b.jpg', 2, NULL, NULL),
(8, 'y2c.jpg', 2, NULL, NULL),
(10, 'k1a.jpg', 12, NULL, NULL),
(11, 'k1b.jpg', 12, NULL, NULL),
(12, 'k1c.jpg', 12, NULL, NULL),
(13, 'y3d.jpg', 3, NULL, NULL),
(14, 'y3a.jpg', 3, NULL, NULL),
(15, 'y3b.jpg', 3, NULL, NULL),
(16, 'y3c.jpg', 3, NULL, NULL),
(18, 'a1a.jpg', 4, NULL, NULL),
(19, 'a1b.jpg', 4, NULL, NULL),
(20, 'a1c.jpg', 4, NULL, NULL),
(21, 'a1d.jpg', 4, NULL, NULL),
(22, 'y4a.jpg', 7, NULL, NULL),
(23, 'y4b.jpg', 7, NULL, NULL),
(24, 'y4c.jpg', 7, NULL, NULL),
(25, 'y4d.jpg', 7, NULL, NULL),
(26, 'd1a.jpg', 5, NULL, NULL),
(27, 'd1b.jpg', 5, NULL, NULL),
(28, 'd2a.jpg', 8, NULL, NULL),
(29, 'd2b.jpg', 8, NULL, NULL),
(33, 'd1c.jpg', 5, NULL, NULL),
(34, 'nam-bao-ngu-ngan-ngua-ut.jpg', 7, NULL, NULL),
(35, 'nambaongu1.jpg', 7, NULL, NULL),
(36, 'nam-bao-ngu-1s.png', 7, NULL, NULL),
(37, 'bao_ngu_trang4.jpg', 7, NULL, NULL),
(38, 'dau_tay_3.jpg', 8, NULL, NULL),
(39, 'dau_tay_da_lat(1).jpg', 8, NULL, NULL),
(40, 'dau_tay_ngon.jpg', 8, NULL, NULL),
(41, 'dau_tay_da_lat_cay.jpg', 8, NULL, NULL),
(42, 'dau_tay_1.jpg', 8, NULL, NULL),
(43, 'gau-bo-my-2.jpg', 9, NULL, NULL),
(44, 'gaubo1.jpg', 9, NULL, NULL),
(45, 'img580_gầu_bò_mỹ.jpg', 9, NULL, NULL),
(46, 'img581_ba_chi_bo_my.jpg', 9, NULL, NULL),
(47, '202148_192cac864f094d236215b7ed36d70f99.jpg', 9, NULL, NULL),
(58, 'ng.JPG', 11, NULL, NULL),
(59, 'ngon su su 2.jpg', 11, NULL, NULL),
(60, 'ngon su su.jpg', 11, NULL, NULL),
(62, 'ngon_su_su (1).jpg', 11, NULL, NULL),
(63, 'ngon_su_su.JPG', 11, NULL, NULL),
(64, 'rau ngot rung1.jpg', 12, NULL, NULL),
(65, 'rau ngot rung2.jpg', 12, NULL, NULL),
(66, 'rau ngot rung3.jpg', 12, NULL, NULL),
(67, 'rau ngot rung4.jpg', 12, NULL, NULL),
(68, 'rau ngot rung5.jpg', 12, NULL, NULL),
(79, 'com chay gao luc 2.jpg', 15, NULL, NULL),
(80, 'com chay gao luc 3.jpg', 15, NULL, NULL),
(81, 'com chay gao luc 4.jpg', 15, NULL, NULL),
(82, 'com chay gao luc 5.jpg', 15, NULL, NULL),
(83, 'com chay gao luc 1.jpg', 15, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `id` int(10) UNSIGNED NOT NULL,
  `khachhang_ten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `khachhang_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `khachhang_sdt` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `khachhang_dia_chi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`id`, `khachhang_ten`, `khachhang_email`, `khachhang_sdt`, `khachhang_dia_chi`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 'Long Thị Nhật', 'user5@gmail.com', '012332432', 'advd', 9, NULL, NULL),
(4, 'Tạ Thanh Bình', 'user6@gmail.com', '012345676', 'abc', 10, NULL, NULL),
(5, 'queen', 'queen@gmail.com', '0946711770', '21312', 11, NULL, NULL),
(6, 'Trịnh Thị Ngọc Hân', 'hana@gmail.com', '0946711770', 'Ninh Kiều - Cần Thơ', 12, NULL, NULL),
(7, 'Trịnh Thị Hoàng Hân', 'hanab1204011@gmail.com', '0946711770', 'Ninh Kiêu- Cần Thơ', 13, NULL, NULL),
(8, 'Lê Hữu Nghĩa', 'nghiab1204035@gmail.com', '0946711770', 'Cà Mau', 14, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `id` int(10) UNSIGNED NOT NULL,
  `khuyenmai_tieu_de` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `khuyenmai_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `khuyenmai_noi_dung` longtext COLLATE utf8_unicode_ci NOT NULL,
  `khuyenmai_anh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `khuyenmai_phan_tram` int(11) NOT NULL,
  `khuyenmai_thoi_gian` int(11) NOT NULL,
  `khuyenmai_tinh_trang` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khuyenmai`
--

INSERT INTO `khuyenmai` (`id`, `khuyenmai_tieu_de`, `khuyenmai_url`, `khuyenmai_noi_dung`, `khuyenmai_anh`, `khuyenmai_phan_tram`, `khuyenmai_thoi_gian`, `khuyenmai_tinh_trang`, `created_at`, `updated_at`) VALUES
(2, 'Khuyến mãi mùa hè', 'khuyen-mai-mua-he', '<p>Khuyến m&atilde;i m&ugrave;a h&egrave;</p>\r\n', 'km6.jpg', 50, 3, 0, '2016-05-19 03:18:08', '2016-05-19 03:18:08'),
(3, 'Khuyến mãi cuối năm', 'khuyen-mai-cuoi-nam', '<p>khuyến m&atilde;i cuối năm</p>\r\n', 'km5.jpg', 70, 2, 0, '2016-05-19 03:18:49', '2016-05-19 03:18:49'),
(4, 'Khuyến mãi tháng 6', 'khuyen-mai-thang-6', '<p>Khuyến m&atilde;i th&aacute;ng 6</p>\r\n', 'nongsan2.jpg', 80, 2, 0, '2016-05-19 03:19:37', '2016-05-19 03:19:37'),
(5, 'Khuyến mãi tháng 7', 'khuyen-mai-thang-7', '<p>Khuyến m&atilde;i th&aacute;ng 7</p>\r\n', 'km5.jpg', 30, 10, 0, '2016-05-19 03:20:26', '2016-05-19 03:20:26'),
(6, 'Khuyến mãi mùa mưa', 'khuyen-mai-mua-mua', '<p>Khuyến m&atilde;i m&ugrave;a mưa</p>\r\n', '31.jpg', 10, 10, 0, '2016-06-02 04:22:50', '2016-06-02 04:22:50'),
(7, 'Nhân dip 1/6 giảm giá sốc', 'nhan-dip-1/6-giam-gia-soc', '<p>Nh&acirc;n dip 1/6 giảm gi&aacute; sốc</p>\r\n', 'banner4.jpg', 50, 15, 0, '2016-06-15 02:26:18', '2016-06-15 02:26:18'),
(8, 'Khuyen mai moi thm', 'khuyen-mai-moi-thm', '<p>abc</p>\r\n', 'com chay gao luc 2.jpg', 10, 100, 1, '2016-07-05 03:05:51', '2016-07-05 03:05:51');

-- --------------------------------------------------------

--
-- Table structure for table `loainguoidung`
--

CREATE TABLE `loainguoidung` (
  `id` int(10) UNSIGNED NOT NULL,
  `loainguoidung_ten` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loainguoidung`
--

INSERT INTO `loainguoidung` (`id`, `loainguoidung_ten`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'user', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `id` int(10) UNSIGNED NOT NULL,
  `loaisanpham_ten` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `loaisanpham_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `loaisanpham_mo_ta` longtext COLLATE utf8_unicode_ci,
  `loaisanpham_anh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `loaisanpham_da_xoa` int(11) NOT NULL,
  `nhom_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`id`, `loaisanpham_ten`, `loaisanpham_url`, `loaisanpham_mo_ta`, `loaisanpham_anh`, `loaisanpham_da_xoa`, `nhom_id`, `created_at`, `updated_at`) VALUES
(1, 'Grand Piano', 'Grand-piano', '\r\n<p>Grand Piano</p>', 'Grand.jpg', 2, 1, NULL, NULL),
(2, 'YAMAHA', 'YAMAHA', '<p>YAMAHA</p>\r\n', 'YAMAHA U3A.jpg', 1, 2, NULL, NULL),
(3, 'Korg', 'Korg', '<p>Korg</p>\r\n', 'organkorg.jpg', 1, 2, NULL, NULL),
(4, 'Casio', 'Casio', '<p>Casio</p>\r\n', 'organcasio.jpg', 1, 2, NULL, NULL),
(5, 'Upright Piano', 'Upright-Piano', '<p>Upright Piano</p>\r\n', 'upright.jpg', 1, 1, NULL, NULL),
(6, 'Piano Điện', 'piano-dien', '<p>Piano Điện</p>\r\n', 'pianodien.jpg', 1, 1, NULL, NULL),
(7, 'Sáo', 'sao', '<p>Sáo</p>\r\n', 'sao.png', 1, 3, NULL, NULL),
(8, 'Piano Nhật Bãi', 'piano-nhat-bai', '<p>Piano Nhật Bãi</p>\r\n', 'pianonhatbai.jpg', 1, 1, NULL, NULL),
(9, 'Đàn Guitar Acoustic', 'dan-guitar-acoustic', '<p>Đàn Guitar Acoustic</p>\r\n', 'guitarr.jpg', 1, 4, NULL, NULL),
(10, 'Đàn Guitar Elictric', 'dan-guitar-elictric', '<p>Đàn Guitar Elictric</p>\r\n', 'guitarelectric.jpg', 1, 4, NULL, NULL),
(11, 'Đàn Guitar Classical', 'Đan-Guitar-Classical', '<p>Đàn Guitar Classical</p>', 'guitarr.jpg', 1, 4, NULL, NULL),
(12, 'Đàn Guitar Bass', 'Đan-Guitar-Bass', '<p>Đàn Guitar Bass</p>', 'guitarr.jpg', 1, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lohang`
--

CREATE TABLE `lohang` (
  `id` int(10) UNSIGNED NOT NULL,
  `lohang_ky_hieu` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `lohang_han_su_dung` int(11) NOT NULL,
  `lohang_gia_mua_vao` decimal(10,2) NOT NULL,
  `lohang_gia_ban_ra` decimal(10,2) NOT NULL,
  `lohang_so_luong_nhap` int(11) NOT NULL,
  `lohang_so_luong_da_ban` int(11) NOT NULL,
  `lohang_so_luong_doi_tra` int(11) NOT NULL,
  `lohang_so_luong_hien_tai` int(11) NOT NULL,
  `lohang_tinh_trang` int(11) DEFAULT NULL COMMENT '1',
  `sanpham_id` int(10) UNSIGNED NOT NULL,
  `nhacungcap_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lohang`
--

INSERT INTO `lohang` (`id`, `lohang_ky_hieu`, `lohang_han_su_dung`, `lohang_gia_mua_vao`, `lohang_gia_ban_ra`, `lohang_so_luong_nhap`, `lohang_so_luong_da_ban`, `lohang_so_luong_doi_tra`, `lohang_so_luong_hien_tai`, `lohang_tinh_trang`, `sanpham_id`, `nhacungcap_id`, `created_at`, `updated_at`) VALUES
(1, '12345', 5, '25000.00', '30000.00', 30, 0, 0, 30, 1, 18, 1, '2016-05-13 08:34:21', '2016-05-13 08:34:21'),
(2, 'L0001', 15, '95000.00', '120000.00', 100, 0, 0, 100, 1, 8, 1, '2016-05-19 01:34:57', '2016-05-19 01:34:57'),
(3, 'L0002', 10, '35000.00', '40000.00', 50, 0, 0, 50, 1, 2, 1, '2016-05-24 07:13:55', '2016-05-24 07:13:55'),
(4, 'L0003', 10, '25000.00', '30000.00', 50, 0, 0, 50, 1, 3, 1, '2016-05-24 07:14:29', '2016-05-24 07:14:29'),
(5, 'L0004', 20, '500000.00', '700000.00', 50, 4, 0, 46, 1, 4, 1, '2016-05-24 07:15:44', '2016-05-24 07:15:44'),
(6, 'L0005', 30, '230000.00', '280000.00', 50, 2, 0, 48, 1, 5, 1, '2016-05-24 07:17:05', '2016-05-24 07:17:05'),
(7, 'L0006', 15, '35000.00', '40000.00', 50, 0, 0, 50, 1, 7, 1, '2016-05-24 07:19:09', '2016-05-24 07:19:09'),
(8, 'L0007', 35, '350000.00', '420000.00', 50, 99, 0, -49, 1, 9, 1, '2016-05-24 07:20:04', '2016-05-24 07:20:04'),
(11, 'L0010', 3, '25000.00', '32000.00', 20, 0, 0, 20, 1, 11, 2, '2016-05-25 07:02:46', '2016-05-25 07:02:46'),
(12, 'L0011', 2, '15000.00', '21000.00', 20, 0, 0, 20, 1, 12, 2, '2016-05-25 07:03:36', '2016-05-25 07:03:36'),
(14, 'L0014', 10, '95000.00', '120000.00', 100, 4, 0, 96, 1, 8, 1, '2016-06-08 08:18:38', '2016-06-08 08:18:38'),
(15, '12358', 15, '25000.00', '30000.00', 100, 0, 0, 100, 1, 1, 2, '2016-06-18 08:45:14', '2016-06-18 08:45:14'),
(17, 'B0003', 100, '230000.00', '280000.00', 150, 1, 0, 149, NULL, 9, 8, '2016-07-04 23:01:28', '2016-07-04 23:01:28'),
(18, 'L0045', 100, '25000.00', '30000.00', 100, 0, 0, 100, NULL, 15, 3, '2016-07-05 03:04:41', '2016-07-05 03:04:41'),
(19, 'G02', 0, '3000000.00', '3500000.00', 40, 10, 0, 0, 0, 19, 2, '2021-05-16 03:23:00', '2021-05-20 03:15:11'),
(20, 'G01', 0, '4300000.00', '5000000.00', 100, 50, 2, 0, 2, 20, 3, '2021-06-12 06:21:50', '2021-06-13 06:21:50'),
(21, 'G04', 0, '2000000.00', '2500000.00', 60, 30, 4, 0, 0, 21, 4, '2021-05-16 03:23:00', '2021-05-17 04:27:12'),
(22, 'G05', 0, '5000000.00', '5800000.00', 100, 50, 2, 0, 2, 22, 6, '2021-06-12 06:21:50', '2021-06-13 06:21:50'),
(23, 'G06', 0, '6000000.00', '6400000.00', 300, 140, 4, 0, 0, 23, 1, '2021-05-16 03:23:00', '2021-05-17 04:27:12'),
(24, 'G07', 0, '4300000.00', '5000000.00', 100, 30, 0, 0, 2, 24, 7, '2021-06-12 06:21:50', '2021-06-13 06:21:50'),
(25, 'Y01', 0, '3000000.00', '3500000.00', 300, 140, 4, 0, 0, 25, 4, '2021-05-16 03:23:00', '2021-05-17 04:27:12'),
(26, 'Y02', 0, '4300000.00', '5000000.00', 100, 50, 2, 0, 2, 26, 7, '2021-06-12 06:21:50', '2021-06-13 06:21:50'),
(27, 'U01', 0, '2000000.00', '3500000.00', 60, 50, 3, 0, 0, 27, 6, '2021-05-16 03:23:00', '2021-05-17 04:27:12'),
(28, 'U02', 0, '4300000.00', '5000000.00', 100, 30, 2, 0, 2, 27, 6, '2021-06-12 06:21:50', '2021-06-13 06:21:50'),
(29, 'U05', 0, '3000000.00', '3500000.00', 60, 10, 3, 0, 0, 29, 7, '2021-05-16 02:54:48', '2021-05-17 04:27:12');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2016_04_14_110951_create_nhacungcap_table', 1),
('2016_04_16_005616_create_nhom_table', 1),
('2016_04_18_030252_create_tuyendung_table', 1),
('2016_04_20_062118_create_khuyenmai_table', 1),
('2016_04_28_141651_create-donvitinh-table', 1),
('2016_04_16_011341_create_loaisanpham_table', 2),
('2016_04_20_031400_create_sanpham_table', 3),
('2016_04_20_032205_create_giabanra_table', 4),
('2016_04_20_133501_create_hinhsanpham_table', 4),
('2016_04_25_174513_create_giamuavao_table', 4),
('2016_05_01_023512_create_nhom_table', 5),
('2016_05_01_023719_create_loaisanpham_table', 6),
('2016_05_01_023846_create_sanpham_table', 7),
('2016_05_01_023949_create_giabanra_table', 8),
('2016_05_01_024111_create_giamuavao_table', 8),
('2016_05_01_024136_create_hinhsanpham_table', 8),
('2016_05_09_032019_create_monngon_table', 9),
('2016_05_10_165156_create_hinhmonngon_table', 10),
('2016_05_13_074300_create_lohang_table', 11),
('2016_05_13_102657_create_sanpham_table', 12),
('2016_05_13_103740_create_lohang_table', 13),
('2016_05_13_104520_create_hinhsanpham_table', 14),
('2016_05_13_105811_create_hinhsanpham_table', 15),
('2016_05_13_162644_create_monngon_table', 16),
('2016_05_14_073949_create_nguyenlieu_table', 17),
('2016_05_16_112417_create_khuyenmai_table', 18),
('2016_05_16_150907_create_tylegia_table', 19),
('2016_05_16_160708_create_tylegia_table', 20),
('2016_05_17_075014_create_tuyendung_table', 21),
('2016_05_19_093429_create_khuyenmai_table', 22),
('2016_05_19_093815_create_sanphamkhuyenmai_table', 23),
('2016_05_20_091554_craete_pages_table', 24),
('2016_05_23_092444_create_loainguoidung_table', 24),
('2014_10_12_000000_create_users_table', 25),
('2016_05_23_094448_create_nhanvien_table', 26),
('2016_06_01_081813_create_khachhang_table', 27),
('2016_06_01_085225_create_tinhtranghd_table', 28),
('2016_06_01_084422_create_donhang_table', 29),
('2016_06_01_090918_create_chitietdonhang_table', 30),
('2016_06_01_151838_create_binhluan_table', 31),
('2016_06_22_215955_create_quangcao_table', 32);

-- --------------------------------------------------------

--
-- Table structure for table `monngon`
--

CREATE TABLE `monngon` (
  `id` int(10) UNSIGNED NOT NULL,
  `monngon_tieu_de` text COLLATE utf8_unicode_ci NOT NULL,
  `monngon_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `monngon_tom_tat` longtext COLLATE utf8_unicode_ci NOT NULL,
  `monngon_noi_dung` longtext COLLATE utf8_unicode_ci NOT NULL,
  `monngon_luot_xem` int(11) NOT NULL,
  `monngon_anh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `monngon_da_xoa` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `monngon`
--

INSERT INTO `monngon` (`id`, `monngon_tieu_de`, `monngon_url`, `monngon_tom_tat`, `monngon_noi_dung`, `monngon_luot_xem`, `monngon_anh`, `monngon_da_xoa`, `created_at`, `updated_at`) VALUES
(3, 'NẤM BÀO NGƯ XÀO XỐT MÈ', 'nam-bao-ngu-xao-xot-me', '<p><strong>Mới x&agrave;o th&ocirc;i m&agrave; m&ugrave;i m&egrave; lẫn m&ugrave;i xốt mayonnaise Aji-mayo đ&atilde; thơm lừng rồi. Khi được b&agrave;y ra dĩa, m&oacute;n ăn với nhiều m&agrave;u sắc của nấm b&agrave;o ngư, c&agrave; rốt, v&agrave; b&ocirc;ng cải trong thật hấp dẫn. Thịt nạc dăm thấm vị ăn v&agrave;o thơm thơm vị x&agrave;o, nấm b&agrave;o ngư vừa ch&iacute;n tới cũng ngon ngọt kh&ocirc;ng k&eacute;m.&nbsp;</strong></p>\r\n', '<h3>NGUY&Ecirc;N LIỆU</h3>\r\n\r\n<ul>\r\n	<li>Nấm b&agrave;o ngư: 200g</li>\r\n	<li>Ớt sừng băm: 1M</li>\r\n	<li>Thịt nạc dăm: 50g</li>\r\n	<li>C&agrave; rốt: 50g</li>\r\n	<li>H&agrave;nh l&aacute;: 3 nh&aacute;nh</li>\r\n	<li>H&agrave;nh t&iacute;m băm: 1M</li>\r\n	<li>B&ocirc;ng cải xanh: 100g</li>\r\n	<li>M&egrave; rang: 30g</li>\r\n	<li>Tỏi băm: 1M</li>\r\n	<li>Dầu ăn, dầu m&egrave;, đường, ti&ecirc;u</li>\r\n	<li>Hạt n&ecirc;m</li>\r\n	<li>Xốt Mayonaise</li>\r\n	<li>Nước tương</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>1. SƠ CHẾ:</h3>\r\n\r\n<p>&ndash; Nấm b&agrave;o ngư x&eacute; đ&ocirc;i, ướp 1M h&agrave;nh, tỏi băm, 1M nước tương&nbsp;<em>&ldquo;Ph&uacute; Sĩ&rdquo;</em>&nbsp;v&agrave;&nbsp; 1/2M đường.</p>\r\n\r\n<p>&ndash; Thịt nạc dăm cắt miếng, ướp 1M h&agrave;nh, tỏi băm, 1/2M hạt n&ecirc;m Aji-ngon&reg;, 1/2M ti&ecirc;u.</p>\r\n\r\n<p>&ndash; B&ocirc;ng cải xanh t&aacute;ch nh&aacute;nh thật nhỏ. C&agrave; rốt cắt l&aacute;t mỏng, d&ugrave;ng dao răng cưa nhấn chiều ngang 1cm. H&agrave;nh l&aacute; cắt kh&uacute;c.</p>\r\n\r\n<p>&ndash; Pha gia vị x&agrave;o: 2M xốt mayonnaise&nbsp;<em>&ldquo;Aji-mayo&rdquo;,</em>&nbsp;1M nước tương&nbsp;<em>&ldquo;Ph&uacute; Sĩ&rdquo;,</em>&nbsp;1/3M ti&ecirc;u, 1M dầu m&egrave;, 1M m&egrave; rang, 1M ớt sừng băm.&nbsp;</p>\r\n\r\n<h3>2. THỰC HIỆN:</h3>\r\n\r\n<p>Phi thơm h&agrave;nh tỏi, x&agrave;o săn thịt nạc dăm, cho nấm b&agrave;o ngư v&agrave;o x&agrave;o lửa lớn, th&ecirc;m một &iacute;t nước, tiếp tục cho b&ocirc;ng cải, c&agrave; rốt v&agrave;o x&agrave;o ch&iacute;n. Th&ecirc;m 1/2 ch&eacute;n nước, cuối c&ugrave;ng tắt lửa, th&ecirc;m xốt x&agrave;o v&agrave; h&agrave;nh l&aacute; v&agrave;o, đảo đều, rắc th&ecirc;m m&egrave; rang c&ograve;n lại.</p>\r\n', 1, 'nam-bao-ngu-xot-me.png', 1, '2016-05-14 01:01:29', '2016-05-14 01:01:29'),
(4, 'Nấm xào ngũ sắc bắt mắt người ăn', 'nam-xao-ngu-sac-bat-mat-nguoi-an', '<p><strong><span style=\"color:#000000\">Nấm l&agrave; 1 thực phẩm kh&ocirc;ng những ngon m&agrave; c&ograve;n rất c&oacute; lợi cho sức khỏe. Mỗi loại nấm lại đem đến cho ta 1 hương vị ri&ecirc;ng, l&agrave;m n&ecirc;n sự độc đ&aacute;o, ngon miệng của bữa cơm gia đ&igrave;nh. H&ocirc;m nay sổ tay nấu ăn sẽ hướng dẫn cả nh&agrave; m&oacute;n Nấm x&agrave;o ngũ sắc</span></strong></p>\r\n', '<h4>Nguy&ecirc;n liệu:</h4>\r\n\r\n<ul>\r\n	<li><a href=\"http://sotaynauan.com/tag/nam-mo/\">Nấm mỡ</a>&nbsp;-&nbsp;khoảng 400 gr</li>\r\n	<li><a href=\"http://sotaynauan.com/tag/tom-tuoi/\">T&ocirc;m tươi</a>&nbsp;-&nbsp;300 gr</li>\r\n	<li><a href=\"http://sotaynauan.com/tag/dau-ha-lan/\">Đậu H&agrave; lan</a>&nbsp;-&nbsp;150 gr</li>\r\n	<li><a href=\"http://sotaynauan.com/tag/ot-chuong-do-vang/\">Ớt chu&ocirc;ng đỏ, v&agrave;ng</a>&nbsp;-&nbsp;1 nửa quả mỗi loại</li>\r\n	<li><a href=\"http://sotaynauan.com/tag/ngo-non/\">Ng&ocirc; non</a>&nbsp;-&nbsp;200 gr</li>\r\n</ul>\r\n\r\n<h4>Hướng dẫn:</h4>\r\n\r\n<p><strong>Bước 1:&nbsp;</strong>Nấm&nbsp;mỡ cắt bỏ ch&acirc;n, mũ nấm n&agrave;o to th&igrave; bổ l&agrave;m đ&ocirc;i, ng&ocirc; non&nbsp;cũng vậy, bắp n&agrave;o to c&aacute;c bạn bổ đ&ocirc;i ra cho vừa ăn nh&eacute;. Đậu H&agrave; Lan tước bỏ xơ, ớt chu&ocirc;ng&nbsp;đỏ v&agrave;ng th&aacute;i miếng d&agrave;i.</p>\r\n\r\n<p><strong>Bước 2:&nbsp;</strong>Đun s&ocirc;i 1 nồi nước, thả 1 d&uacute;m muối rồi cho ng&ocirc; non&nbsp;v&agrave; đậu H&agrave; Lan&nbsp;v&agrave;o trần sơ, vớt ra ng&acirc;m ngay v&agrave;o b&aacute;t nước lạnh để ng&ocirc; v&agrave; đậu giữ được m&agrave;u sắc đẹp.</p>\r\n\r\n<p><strong>Bước 3:&nbsp;</strong><em>T&ocirc;m</em>&nbsp;tươi b&oacute;c bỏ đầu v&agrave; vỏ, đem x&agrave;o săn với h&agrave;nh kh&ocirc; v&agrave; nước mắm, tr&uacute;t ra 1 đĩa ri&ecirc;ng.</p>\r\n\r\n<p><strong>Bước 4:</strong>&nbsp;Tiếp tục cho dầu ăn v&agrave;o chảo, ch&uacute;ng ta x&agrave;o đến phần nấm, &oacute;t chu&ocirc;ng&nbsp;đỏ v&agrave; v&agrave;ng. N&ecirc;m nếm gia vị vừa miệng.</p>\r\n\r\n<p><strong>Bước 5:</strong>&nbsp;Khi nấm gần ch&iacute;n v&agrave; đ&atilde; ngấm gia vị, c&aacute;c bạn cho đến phần ng&ocirc; non v&agrave; &nbsp;đậu H&agrave; Lanv&agrave;o x&agrave;o c&ugrave;ng. Ở bước n&agrave;y c&oacute; thể th&ecirc;m 1 ch&uacute;t dầu h&agrave;o v&agrave;o để tăng hương vị v&agrave; sắc b&oacute;ng đẹp cho &nbsp;m&oacute;n x&agrave;o&nbsp;của ch&uacute;ng ta.</p>\r\n\r\n<p><strong>Bước 6:</strong>&nbsp;Cuối c&ugrave;ng l&agrave; đến t&ocirc;m, c&aacute;c bạn đảo nhanh tay v&agrave; tắt bếp. Cho m&oacute;n&nbsp;nấm x&agrave;o ngũ sắc&nbsp;ra đĩa v&agrave; c&ugrave;ng cả nh&agrave; thưởng thức nh&eacute;!</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 'che-bien-nam-xao-ngu-sac-.jpg', 1, '2016-05-14 01:03:13', '2016-05-14 01:03:13'),
(10, 'Mon ngon r', 'Mon-ngon-r', '<p>f</p>\r\n', '<p>r</p>\r\n', 1, '24.jpg', 1, '2016-05-14 01:10:16', '2016-05-14 01:10:16'),
(11, 'sda', 'sda', '<p>ada</p>\r\n', '<p>wrewr</p>\r\n', 1, '30.jpg', 1, '2016-05-14 01:13:49', '2016-05-14 01:13:49'),
(12, 'bai viet', 'bai-viet', '<p>bai viet</p>\r\n', '<p>bai viet</p>\r\n', 1, '19.jpg', 1, '2016-05-14 01:15:12', '2016-05-14 01:15:12'),
(14, 'f', 'f', '<p>f</p>\r\n', '<p>f</p>\r\n', 1, '31.jpg', 1, '2016-05-14 02:10:56', '2016-05-14 02:10:56'),
(15, 'adadads', 'adadads', '<p>dsds</p>\r\n', '<p>sada</p>\r\n', 1, '3.jpg', 1, '2016-05-14 02:29:17', '2016-05-14 02:29:17'),
(17, 'Làm cả ổ bánh pancake to đồ sộ chỉ với nồi cơm điện', 'lam-ca-o-banh-pancake-to-do-so-chi-voi-noi-com-dien', '<p>ad</p>\r\n', '<p>sd</p>\r\n', 1, 'img20160511232640735.jpg', 1, '2016-05-16 02:34:53', '2016-05-16 02:34:53'),
(18, 'Mon ngon12366774', 'mon-ngon12366774', '<p>Mon ngon12366774</p>\r\n', '<p>Mon ngon12366774</p>\r\n', 1, '16.jpg', 1, '2016-06-13 01:38:49', '2016-06-13 01:38:49'),
(19, 'Khô mực chiên nước mắm: Món nhắm tuyệt vời cho mùa bóng', 'kho-muc-chien-nuoc-mam:-mon-nham-tuyet-voi-cho-mua-bong', '<p>M&ugrave;a Euro đ&atilde; bắt đầu, h&atilde;y học ngay c&ocirc;ng thức kh&ocirc; mực chi&ecirc;n nước mắm tuyệt ngon n&agrave;y để cho c&aacute;c buổi xem b&oacute;ng đ&aacute; th&ecirc;m x&ocirc;m n&agrave;o!</p>\r\n', '<p><strong><u>Nguy&ecirc;n liệu l&agrave;m kh&ocirc; mực:</u></strong></p>\r\n\r\n<p><strong><em>- 2 con mực kh&ocirc; cỡ vừa</em></strong></p>\r\n\r\n<p><strong><em>- 1 củ tỏi</em></strong></p>\r\n\r\n<p><strong><em>- 15g đường (2 th&igrave;a)</em></strong></p>\r\n\r\n<p><strong><em>- 10ml nước mắm (1 th&igrave;a)</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Khô mực chiên nước mắm: Món nhắm tuyệt vời cho mùa bóng - Ảnh 1.\" id=\"img_ca89dd60-323f-11e6-aa10-f7306ed585e3\" src=\"https://k14.vcmedia.vn/thumb_w/650/2016/muc-0-1465915869087.png\" title=\"Khô mực chiên nước mắm: Món nhắm tuyệt vời cho mùa bóng - Ảnh 1.\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><u>Nguy&ecirc;n liệu l&agrave;m kh&ocirc; mực:</u></strong></p>\r\n\r\n<p><strong><em>- 2 con mực kh&ocirc; cỡ vừa</em></strong></p>\r\n\r\n<p><strong><em>- 1 củ tỏi</em></strong></p>\r\n\r\n<p><strong><em>- 15g đường (2 th&igrave;a)</em></strong></p>\r\n\r\n<p><strong><em>- 10ml nước mắm (1 th&igrave;a)</em></strong></p>\r\n\r\n<p><strong><u>C&aacute;ch l&agrave;m kh&ocirc; mực như sau:</u></strong></p>\r\n\r\n<p>Bước 1:</p>\r\n\r\n<p>- Đầu ti&ecirc;n, bạn nướng ch&iacute;n mực.</p>\r\n\r\n<p>Bước 2:</p>\r\n\r\n<p>- Đập cho con mực b&ocirc;ng tơi.</p>\r\n\r\n<p>Bước 3:</p>\r\n\r\n<p>- Sau đ&oacute;, ta x&eacute; mực th&agrave;nh sợi nhỏ.</p>\r\n\r\n<p>Bước 4:</p>\r\n\r\n<p>- Phi cho tỏi thơm gi&ograve;n rồi vớt ra b&aacute;t.</p>\r\n\r\n<p>Bước 5:</p>\r\n\r\n<p>- Cho mực, tỏi phi, đường, nước mắm v&agrave;o chảo rồi đảo đến khi đường keo lại.</p>\r\n\r\n<p><strong>Chỉ c&oacute; vậy th&ocirc;i l&agrave; xong xu&ocirc;i rồi!</strong></p>\r\n\r\n<p>Kh&ocirc; mực chi&ecirc;n nước mắm ch&aacute;y tỏi c&oacute; m&ugrave;i vị rất hấp dẫn nh&eacute;!</p>\r\n\r\n<p>Sợi mực vừa dai vừa gi&ograve;n ăn th&iacute;ch cực lu&ocirc;n!</p>\r\n\r\n<p>Nếu th&iacute;ch th&igrave; c&aacute;c bạn c&oacute; thể vắt th&ecirc;m một &iacute;t chanh hoặc quất nữa...</p>\r\n', 1, 'khomuc.JPG', 1, '2016-06-15 01:42:11', '2016-06-15 01:42:11');

-- --------------------------------------------------------

--
-- Table structure for table `nguyenlieu`
--

CREATE TABLE `nguyenlieu` (
  `monngon_id` int(10) UNSIGNED NOT NULL,
  `sanpham_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nguyenlieu`
--

INSERT INTO `nguyenlieu` (`monngon_id`, `sanpham_id`, `created_at`, `updated_at`) VALUES
(12, 2, NULL, NULL),
(12, 1, NULL, NULL),
(15, 2, NULL, NULL),
(11, 2, NULL, NULL),
(10, 1, NULL, NULL),
(10, 2, NULL, NULL),
(4, 2, NULL, NULL),
(3, 7, NULL, NULL),
(18, 12, NULL, NULL),
(18, 8, NULL, NULL),
(18, 7, NULL, NULL),
(17, 1, NULL, NULL),
(17, 3, NULL, NULL),
(17, 4, NULL, NULL),
(19, 9, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `id` int(10) UNSIGNED NOT NULL,
  `nhacungcap_ten` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `nhacungcap_dia_chi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `nhacungcap_sdt` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhacungcap`
--

INSERT INTO `nhacungcap` (`id`, `nhacungcap_ten`, `nhacungcap_dia_chi`, `nhacungcap_sdt`, `created_at`, `updated_at`) VALUES
(1, 'Thăng Long Music', '<p>a</p>\r\n', '01678991282', NULL, NULL),
(2, 'Nhạc cụ Phú Thọ', '<p>104/1A Xu&acirc;n Thới 5 - H&oacute;c M&ocirc;n - tp. Hồ Ch&iacute; Minh</p>\r\n', ' 0917116441', NULL, NULL),
(3, 'Nhạc cụ Tây Nguyên', '<p>Cao ốc B, Ng&ocirc; Gia Tự, P.3, Q.10,&nbsp;<strong><em>Tp. Hồ Ch&iacute; Minh (TPHCM)</em></strong></p>\r\n', '0938031013', NULL, NULL),
(4, 'Công Ty nhạc cụ Việt Thanh', '<p>75N/15 Đường Số 2, P. Hiệp B&igrave;nh Phước, Q. Thủ Đức&nbsp;<strong><em>Tp. Hồ Ch&iacute; Minh (TPHCM)</em></strong></p>\r\n', '0862833102', NULL, NULL),
(5, 'Nhạc cụ Linh Nhi', '<p>Nguyễn Văn Thực, Khu 3, P. Đại Ph&uacute;c, Tp. Bắc Ninh,&nbsp;<strong><em>Bắc Ninh</em></strong></p>\r\n', '0933581989', NULL, NULL),
(6, 'Công Ty TNHH Chân Thành', '<p>141/10 đường số 11, P. B&igrave;nh Hưng H&ograve;a, Q. B&igrave;nh T&acirc;n, Tp. Hồ Ch&iacute; Minh (TPHCM)</p>\r\n', '0854084059', NULL, NULL),
(7, 'Công Ty Cổ Phần 36 An Bình Thái', '<p>Th&ocirc;n Lộng Kh&ecirc; 1, X&atilde; An Kh&ecirc;, H. Quỳnh Phụ,<strong><em>Th&aacute;i B&igrave;nh</em></strong></p>\r\n', '0363696398', NULL, NULL),
(8, 'Công Ty TNHH Hải Mạnh Bắc Ninh', '<p>Th&ocirc;n Đa Cầu, X. Nam Sơn, TP. Bắc Ninh,&nbsp;<strong><em>Bắc Ninh</em></strong></p>\r\n', '0912436220', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `id` int(10) UNSIGNED NOT NULL,
  `nhanvien_ten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nhanvien_cmnd` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `nhanvien_sdt` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `nhanvien_dia_chi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `nhanvien_ngay_vao_lam` date NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`id`, `nhanvien_ten`, `nhanvien_cmnd`, `nhanvien_sdt`, `nhanvien_dia_chi`, `nhanvien_ngay_vao_lam`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Trịnh Thị Ngọc Hân', '301498483', '012678991281', 'Long An', '2016-05-01', 1, '2016-05-23 04:28:32', '2016-05-23 04:28:32');

-- --------------------------------------------------------

--
-- Table structure for table `nhom`
--

CREATE TABLE `nhom` (
  `id` int(10) UNSIGNED NOT NULL,
  `nhom_ten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nhom_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nhom_mo_ta` text COLLATE utf8_unicode_ci,
  `nhom_anh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhom`
--

INSERT INTO `nhom` (`id`, `nhom_ten`, `nhom_url`, `nhom_mo_ta`, `nhom_anh`, `created_at`, `updated_at`) VALUES
(1, 'Đàn Piano', 'dan-piano', '<p>Đàn Piano</p>\r\n', 'piano.jpg', NULL, NULL),
(2, 'Đàn Organ', 'dan-organ', '<p>Đàn Organ</p>', 'organ.jpg', NULL, NULL),
(3, 'Nhạc cụ dân tộc', 'nhac-cu-dan-toc', '<p>Nhạc cụ dân tộc</p>\r\n', 'dantoc.jpg', NULL, NULL),
(4, 'Đàn Guitar', 'dan-guitar', '<p>Đàn Guitar</p>\r\n', 'guitar.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quangcao`
--

CREATE TABLE `quangcao` (
  `id` int(10) UNSIGNED NOT NULL,
  `quangcao_anh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quangcao_trang_thai` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `quangcao`
--

INSERT INTO `quangcao` (`id`, `quangcao_anh`, `quangcao_trang_thai`, `created_at`, `updated_at`) VALUES
(2, 'slide1.jpg', 1, NULL, NULL),
(3, 'slide2.jpg', 1, NULL, NULL),
(4, 'banner4.jpg', 1, NULL, NULL),
(5, 'about-vi-banner.jpg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(10) UNSIGNED NOT NULL,
  `sanpham_ky_hieu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sanpham_ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sanpham_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sanpham_anh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sanpham_mo_ta` longtext COLLATE utf8_unicode_ci NOT NULL,
  `loaisanpham_id` int(10) UNSIGNED NOT NULL,
  `donvitinh_id` int(10) UNSIGNED NOT NULL,
  `sanpham_khuyenmai` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `sanpham_ky_hieu`, `sanpham_ten`, `sanpham_url`, `sanpham_anh`, `sanpham_mo_ta`, `loaisanpham_id`, `donvitinh_id`, `sanpham_khuyenmai`, `created_at`, `updated_at`) VALUES
(1, 'U1', 'YAMAHA U1H', 'YAMAHA U1H', 'YAMAHAU1H.jpg', '<p>YAMAHA U1H</p>\r\n', 5, 1, 0, '2021-05-13 04:15:53', '2021-05-20 03:15:00'),
(2, 'U2', 'YAMAHA U3A', 'YAMAHA-U3A', 'YAMAHA U3A.jpg', '<p>YAMAHA U3A</p>\r\n', 5, 1, 0, '2021-05-13 04:24:36', '2021-05-20 03:15:05'),
(3, 'U3', 'YAMAHA U3H', 'YAMAHA-U3H', 'YAMAHA U3H.jpg', '<p>YAMAHA U3H</p>\r\n', 5, 1, 0, '2021-05-13 04:25:31', '2021-05-20 03:15:11'),
(4, 'A1', 'KAPOK LD-14C', 'KAPOK-LD-14C', 'KAPOK LD-14C.jpg', '<p>KAPOK LD-14C</p>\r\n', 9, 2, 0, '2021-05-16 02:54:48', '2021-05-20 03:15:18'),
(5, 'D1', 'Sáo Bầu Ngọc', 'Sao-Bau-Ngoc', 'Sáo Bầu Ngọc.jpg', '<p>Sáo Bầu Ngọc</p>\r\n', 7, 2, 0, '2021-05-16 03:23:00', '2021-05-16 03:23:00'),
(7, 'U4', 'YAMAHA U30BL', 'YAMAHA-U30BL', 'YAMAHA U30BL.jpg', '<p>YAMAHA U30BL</p>\r\n', 5, 1, 0, '2021-05-17 02:57:07', '2021-05-17 02:57:07'),
(8, 'D2', 'Sáo Bầu Thật', 'Sao-Bau-That', 'Sáo Bầu Thật.jpg', '<p>Sáo Bầu Thật</p>\r\n', 7, 2, 0, '2021-05-17 03:16:54', '2021-05-20 09:55:04'),
(9, 'E1', 'ROLAND RP-102', 'ROLAND-RP-102', 'ROLAND RP-102.jpg', '<p>ROLAND RP-102</p>\r\n', 6, 2, 0, '2021-05-17 03:21:21', '2021-05-17 04:27:12'),
(11, 'C1', 'Casio CTK 2400', 'Casio-CTK-2400', 'Casio CTK 2400.JPG', '<p>Casio CTK 2400</p>\r\n', 4, 2, 0, '2021-05-24 08:03:26', '2021-05-24 08:03:26'),
(12, 'K1', 'Korg Pa4X Pro 76 Key', 'Korg Pa4X Pro 76 Key', 'Korg Pa4X Pro 76 Key.jpg', '<p>Korg Pa4X Pro 76 Key</p>\r\n', 3, 2, 0, '2021-05-24 08:22:55', '2021-05-24 08:26:07'),
(15, 'C2', 'Classic CORT AC 100', 'Classic-CORT-AC-100', 'Classic CORT AC 100.jpg', '<p>Classic CORT AC 100</p>\r\n', 11, 1, 1, '2021-07-05 03:03:45', '2021-07-05 03:03:45'),
(18, 'G1', 'GRAND PIANO HORUGEL', 'GRAND PIANO HORUGEL', 'GRANDPIANOHORUGEL.png', '<p>GRAND PIANO HORUGEL</p>', 1, 2, 0, '2021-06-11 16:00:17', '2021-06-12 16:00:17'),
(19, 'G2', 'PIANO H. VAN BREMEN 150', '<p>PIANO H. VAN BREMEN 150</p>', 'PIANO H. VAN BREMEN 150.JPG', '', 1, 1, 1, '2021-06-12 15:44:00', '2021-06-12 16:00:17'),
(20, 'G3', 'GRAND PIANO YAMAHA C1', '<p>GRAND PIANO YAMAHA C1</p>', 'GRAND PIANO YAMAHA C1.jpg', '', 1, 1, 1, '2021-06-11 15:44:00', '2021-06-12 16:11:31'),
(21, 'G4', 'GRAND PIANO YAMAHA C5A', '<p>GRAND PIANO YAMAHA C5A</p>', 'GRAND PIANO YAMAHA C5A.jpg', '', 1, 1, 1, '2021-06-12 15:44:00', '2021-06-13 15:44:00'),
(22, 'Y1', 'Yamha Psr S670', '<p>Yamha Psr S670</p>', 'Yamha Psr S670.jpg', '', 2, 2, 1, '2021-06-12 15:44:00', '2021-06-12 16:00:17'),
(23, 'Y2', 'Yamha Psr S770', '<p>Yamha Psr S770</p>', 'Yamha Psr S770.jpg', '', 2, 1, 1, '2021-06-11 15:44:00', '2021-06-12 16:11:31'),
(24, 'Y3', 'YAMAHA PSR S775', '', 'YAMAHA PSR S775.jpg', '', 2, 2, 1, '2021-06-12 15:44:00', '2021-06-13 15:44:00'),
(25, 'Y4', 'Yamha Psr S970', '', 'Yamha Psr S970.jpg', '', 2, 1, 1, '2021-06-12 15:44:00', '2021-06-12 16:00:17'),
(26, 'Y5', 'Yamaha PSR S975', '', 'Yamaha PSR S975.jpg', '', 2, 2, 1, '2021-06-11 15:44:00', '2021-06-12 15:44:00'),
(27, 'Y6', 'Yamaha Psr SX900', '', 'YamahaPsrSX900.jpg', '', 2, 1, 1, '2021-06-12 15:44:00', '2021-06-13 15:44:00'),
(28, 'D3', 'Sao-Dizi-Co-Khop', '<p>Sáo Dizi Có Khớp</p>', 'Sáo Dizi Có Khớp.jpg', '', 7, 2, 0, '2021-05-16 03:23:00', '2021-05-20 03:15:11'),
(29, 'D4', 'Sáo Dizi Không Khớp', '<p>Sao-Dizi-Khong-Khop</p>', 'Sáo Dizi Không Khớp.jpg', '', 7, 1, 0, '2021-06-12 06:21:50', '2021-06-13 06:21:50');

-- --------------------------------------------------------

--
-- Table structure for table `sanphamkhuyenmai`
--

CREATE TABLE `sanphamkhuyenmai` (
  `khuyenmai_id` int(10) UNSIGNED NOT NULL,
  `sanpham_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanphamkhuyenmai`
--

INSERT INTO `sanphamkhuyenmai` (`khuyenmai_id`, `sanpham_id`, `created_at`, `updated_at`) VALUES
(4, 1, NULL, NULL),
(4, 2, NULL, NULL),
(4, 3, NULL, NULL),
(3, 4, NULL, NULL),
(3, 5, NULL, NULL),
(3, 7, NULL, NULL),
(3, 8, NULL, NULL),
(5, 2, NULL, NULL),
(5, 3, NULL, NULL),
(5, 5, NULL, NULL),
(6, 4, NULL, NULL),
(6, 5, NULL, NULL),
(6, 8, NULL, NULL),
(7, 4, NULL, NULL),
(7, 5, NULL, NULL),
(7, 9, NULL, NULL),
(7, 11, NULL, NULL),
(8, 15, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tinhtranghd`
--

CREATE TABLE `tinhtranghd` (
  `id` int(10) UNSIGNED NOT NULL,
  `tinhtranghd_ten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tinhtranghd_mo_ta` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tinhtranghd`
--

INSERT INTO `tinhtranghd` (`id`, `tinhtranghd_ten`, `tinhtranghd_mo_ta`, `created_at`, `updated_at`) VALUES
(1, 'Chưa xác nhận', NULL, NULL, NULL),
(2, 'Giao hàng', NULL, NULL, NULL),
(3, 'Đã hủy', NULL, NULL, NULL),
(4, 'Đã thanh toán', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tuyendung`
--

CREATE TABLE `tuyendung` (
  `id` int(10) UNSIGNED NOT NULL,
  `tuyendung_tieu_de` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tuyendung_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tuyendung_anh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tuyendung_mo_ta` longtext COLLATE utf8_unicode_ci NOT NULL,
  `tuyendung_lien_he` longtext COLLATE utf8_unicode_ci NOT NULL,
  `tuyendung_thoi_gian` int(11) NOT NULL,
  `tuyendung_tinh_trang` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tuyendung`
--

INSERT INTO `tuyendung` (`id`, `tuyendung_tieu_de`, `tuyendung_url`, `tuyendung_anh`, `tuyendung_mo_ta`, `tuyendung_lien_he`, `tuyendung_thoi_gian`, `tuyendung_tinh_trang`, `created_at`, `updated_at`) VALUES
(2, 'tuyen dung', 'tuyen-dung', 'img20160511232640735.jpg', '<p>a</p>\r\n', '<p>c</p>\r\n', 12, 0, '2016-05-17 01:46:12', '2016-05-17 01:46:12'),
(3, 'Tuyền nhân viên giao hàng', 'tuyen-nhan-vien-giao-hang', 'img20160511232640735.jpg', 'Tuyền nhân viên giao hàng', 'Tuyền nhân viên giao hàng', 15, 0, '2016-05-31 17:00:00', '2016-05-31 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `loainguoidung_id` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `loainguoidung_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Quản trị viên', 'hanb1204011@gmail.com', '$2y$10$otuh16Oc5CkdKJa8WVLgO.7.w9CwO8ycP60IzJof0Of6pUDBikW.S', 1, 'PaNVt7zeenEeBuw97evvkqRfUI8kzBdlxUQMsmC5vRL2F5Ol8nvtic77ow6u', '2016-05-23 04:28:32', '2016-07-05 03:30:55'),
(9, 'Long Nhat', 'user5@gmail.com', '$2y$10$Q0idd9vD1rDU1vR0Pm.k3.InfqySExbdV2DWrYyryWxypwltE5EaO', 2, '9HmOvixYYYNp4qt0JlnCxPaygNAWVH2SlptIAdWQxToeFzSpinSZ3tmoVlpT', '2016-06-01 04:18:12', '2016-06-06 08:59:58'),
(10, 'Thanh Binh', 'user6@gmail.com', '$2y$10$Mr/sw0FPL9o6gIFR4UO8NuP6d5AZtzBDEZxXTDGuKXvso.h78MtD6', 2, 'plAQOjeG5dKopix4PWK39AgEQGkBBj9hks6zb1mNsWx8ztEyv6g03F9hvie1', '2016-06-01 04:21:32', '2016-06-07 03:29:11'),
(11, 'queen', 'queen@gmail.com', '$2y$10$DAcaZ2d3LF6Y0az4NOc.1eQYU9Ok5QUykwo01hK1bodIvhoWsRdyq', 2, NULL, '2016-06-16 08:09:40', '2016-06-16 08:09:40'),
(12, 'Hân Trịnh', 'hana@gmail.com', '$2y$10$7EhtG2kbBOZrHZA1Hxhee.coNrMWwZpDYIurQ0fZNHiSxYIxqq5.K', 2, 'x1pJLMqkV909u3XPHBtBfnqMzIYVqiRq5O4JjhKZiX8mRo3trkyLrALNl6zF', '2016-06-19 16:17:22', '2016-07-02 03:34:01'),
(13, 'HanaYuu', 'hanab1204011@gmail.com', '$2y$10$64Ev3BfH6DfLgiOMq2fxxuFk7fn86k0Cbr3BUOsnrbK5h1AOaSlW6', 2, 'vFZlzrxvSJDXGVn3IBVKUloGsE0tss1j4wdi8CtKCUmSnfnwuN3Bf38xFir5', '2016-06-23 02:08:57', '2016-06-23 02:18:43'),
(14, 'Lê Hữu Nghĩa', 'nghiab1204035@gmail.com', '$2y$10$szgXVojhj52NwpJn8rWPd..pdAAmLOC04iiHxI11Ti1g1BugvYnjS', 2, 'W0ALEMEPO23wteBdKj5rbAnNH2apvr1YhFDeFKD5kgPyBWKMRdCx35u2jtZ1', '2016-07-03 15:01:28', '2016-07-05 03:27:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `binhluan_sanpham_id_foreign` (`sanpham_id`);

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chitietdonhang_sanpham_id_foreign` (`sanpham_id`),
  ADD KEY `chitietdonhang_donhang_id_foreign` (`donhang_id`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `donhang_khachhang_id_foreign` (`khachhang_id`),
  ADD KEY `donhang_tinhtranghd_id_foreign` (`tinhtranghd_id`);

--
-- Indexes for table `donvitinh`
--
ALTER TABLE `donvitinh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hinhsanpham`
--
ALTER TABLE `hinhsanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hinhsanpham_sanpham_id_foreign` (`sanpham_id`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `khachhang_khachhang_email_unique` (`khachhang_email`),
  ADD KEY `khachhang_user_id_foreign` (`user_id`);

--
-- Indexes for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loainguoidung`
--
ALTER TABLE `loainguoidung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loaisanpham_nhom_id_foreign` (`nhom_id`);

--
-- Indexes for table `lohang`
--
ALTER TABLE `lohang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lohang_nhacungcap_id_foreign` (`nhacungcap_id`),
  ADD KEY `lohang_sanpham_id_foreign` (`sanpham_id`);

--
-- Indexes for table `monngon`
--
ALTER TABLE `monngon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nguyenlieu`
--
ALTER TABLE `nguyenlieu`
  ADD KEY `nguyenlieu_monngon_id_foreign` (`monngon_id`),
  ADD KEY `nguyenlieu_sanpham_id_foreign` (`sanpham_id`);

--
-- Indexes for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nhanvien_nhanvien_cmnd_unique` (`nhanvien_cmnd`),
  ADD KEY `nhanvien_user_id_foreign` (`user_id`);

--
-- Indexes for table `nhom`
--
ALTER TABLE `nhom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quangcao`
--
ALTER TABLE `quangcao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sanpham_loaisanpham_id_foreign` (`loaisanpham_id`),
  ADD KEY `sanpham_donvitinh_id_foreign` (`donvitinh_id`);

--
-- Indexes for table `sanphamkhuyenmai`
--
ALTER TABLE `sanphamkhuyenmai`
  ADD KEY `sanphamkhuyenmai_khuyenmai_id_foreign` (`khuyenmai_id`),
  ADD KEY `sanphamkhuyenmai_sanpham_id_foreign` (`sanpham_id`);

--
-- Indexes for table `tinhtranghd`
--
ALTER TABLE `tinhtranghd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tuyendung`
--
ALTER TABLE `tuyendung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_loainguoidung_id_foreign` (`loainguoidung_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `donvitinh`
--
ALTER TABLE `donvitinh`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hinhsanpham`
--
ALTER TABLE `hinhsanpham`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `loainguoidung`
--
ALTER TABLE `loainguoidung`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `lohang`
--
ALTER TABLE `lohang`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `monngon`
--
ALTER TABLE `monngon`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nhom`
--
ALTER TABLE `nhom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `quangcao`
--
ALTER TABLE `quangcao`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tinhtranghd`
--
ALTER TABLE `tinhtranghd`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tuyendung`
--
ALTER TABLE `tuyendung`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_sanpham_id_foreign` FOREIGN KEY (`sanpham_id`) REFERENCES `sanpham` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `chitietdonhang_donhang_id_foreign` FOREIGN KEY (`donhang_id`) REFERENCES `donhang` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `chitietdonhang_sanpham_id_foreign` FOREIGN KEY (`sanpham_id`) REFERENCES `sanpham` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_khachhang_id_foreign` FOREIGN KEY (`khachhang_id`) REFERENCES `khachhang` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `donhang_tinhtranghd_id_foreign` FOREIGN KEY (`tinhtranghd_id`) REFERENCES `tinhtranghd` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `hinhsanpham`
--
ALTER TABLE `hinhsanpham`
  ADD CONSTRAINT `hinhsanpham_sanpham_id_foreign` FOREIGN KEY (`sanpham_id`) REFERENCES `sanpham` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD CONSTRAINT `khachhang_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD CONSTRAINT `loaisanpham_nhom_id_foreign` FOREIGN KEY (`nhom_id`) REFERENCES `nhom` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `lohang`
--
ALTER TABLE `lohang`
  ADD CONSTRAINT `lohang_nhacungcap_id_foreign` FOREIGN KEY (`nhacungcap_id`) REFERENCES `nhacungcap` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `lohang_sanpham_id_foreign` FOREIGN KEY (`sanpham_id`) REFERENCES `sanpham` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `nguyenlieu`
--
ALTER TABLE `nguyenlieu`
  ADD CONSTRAINT `nguyenlieu_monngon_id_foreign` FOREIGN KEY (`monngon_id`) REFERENCES `monngon` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nguyenlieu_sanpham_id_foreign` FOREIGN KEY (`sanpham_id`) REFERENCES `sanpham` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `nhanvien_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_donvitinh_id_foreign` FOREIGN KEY (`donvitinh_id`) REFERENCES `donvitinh` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `sanpham_loaisanpham_id_foreign` FOREIGN KEY (`loaisanpham_id`) REFERENCES `loaisanpham` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `sanphamkhuyenmai`
--
ALTER TABLE `sanphamkhuyenmai`
  ADD CONSTRAINT `sanphamkhuyenmai_khuyenmai_id_foreign` FOREIGN KEY (`khuyenmai_id`) REFERENCES `khuyenmai` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sanphamkhuyenmai_sanpham_id_foreign` FOREIGN KEY (`sanpham_id`) REFERENCES `sanpham` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_loainguoidung_id_foreign` FOREIGN KEY (`loainguoidung_id`) REFERENCES `loainguoidung` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
