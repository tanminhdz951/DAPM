-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2022 at 02:41 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanlylulut`
--

-- --------------------------------------------------------

--
-- Table structure for table `baiviet`
--

CREATE TABLE `baiviet` (
  `idBaiViet` int(11) NOT NULL,
  `idDotCuuTro` int(11) NOT NULL,
  `tieuDe` varchar(255) NOT NULL,
  `noiDung` varchar(255) NOT NULL,
  `thoiGian` date DEFAULT current_timestamp(),
  `idNhanVien` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `baiviet`
--

INSERT INTO `baiviet` (`idBaiViet`, `idDotCuuTro`, `tieuDe`, `noiDung`, `thoiGian`, `idNhanVien`, `image`) VALUES
(1, 1, 'Ủng hộ người nghèo', 'Ủng hộ người nghèo', '2020-07-20', 1, 'cuutro1.jpg'),
(2, 1, 'Ủng hộ lũ lụt', 'Ủng hộ người nghèo', '2020-07-20', 1, 'images (1).jpg'),
(3, 2, 'Ủng hộ người nghèo', 'Ủng hộ người nghèo', '2020-07-20', 1, 'DJI_0879.jpg'),
(4, 3, 'Ủng hộ người nghèo', 'Ủng hộ người nghèo', '2020-07-20', 1, 'images.jpg'),
(8, 3, 'aa', 'noiDung', '2022-05-11', NULL, 'sample-img-3.png'),
(10, 3, 'noi dung 2', 'hah', '2022-05-11', NULL, 'mien trung.jpg'),
(11, 3, 'noi dung 3', 'hihi', '2022-06-16', NULL, 'thumb_660_de1ea6ac-ef1d-4764-a2ef-a1eb24f56d27.jpg'),
(12, 3, 'noi dung 4', 'hihi', '2022-06-16', NULL, 'Trung-Quoc-6.jpeg'),
(13, 2, 'hhaa', 'wwwww', '2022-06-15', NULL, 'ungho1.png'),
(14, 2, 'lũ 2021', 'h', '2022-06-15', NULL, 'unnamed-23.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `canbo`
--

CREATE TABLE `canbo` (
  `idCanBo` int(11) NOT NULL,
  `id_User` int(11) NOT NULL,
  `tenCanBo` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `soDT` varchar(10) NOT NULL,
  `gioiTinh` tinyint(1) NOT NULL DEFAULT 0,
  `ngaySinh` date DEFAULT NULL,
  `diaChi` varchar(50) DEFAULT NULL,
  `tenTaiKhoan` varchar(50) NOT NULL,
  `matKhau` varchar(50) NOT NULL,
  `trangThai` varchar(255) DEFAULT NULL,
  `idXa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `canbo`
--

INSERT INTO `canbo` (`idCanBo`, `id_User`, `tenCanBo`, `email`, `soDT`, `gioiTinh`, `ngaySinh`, `diaChi`, `tenTaiKhoan`, `matKhau`, `trangThai`, `idXa`) VALUES
(1, 1, 'Trần Văn A', 'trana123@gmail.com', '0256231524', 0, '1970-02-20', 'Hòa Sơn', 'tvana01', '12345', 'Bình thường', 1),
(2, 2, 'Trần Thị A', 'tranthia123@gmail.com', '0256231523', 1, '1970-02-20', 'Hòa Liên', 'tthia01', '12345', 'Bình thường', 2);

-- --------------------------------------------------------

--
-- Table structure for table `chitietdangkyungho`
--

CREATE TABLE `chitietdangkyungho` (
  `iH` int(11) NOT NULL,
  `idDangKyUngHo` int(11) NOT NULL,
  `idHangCuuTro` int(11) NOT NULL,
  `soLuong` int(11) NOT NULL,
  `hinhThuc` varchar(255) DEFAULT NULL,
  `noiNhan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chitietdangkyungho`
--

INSERT INTO `chitietdangkyungho` (`iH`, `idDangKyUngHo`, `idHangCuuTro`, `soLuong`, `hinhThuc`, `noiNhan`) VALUES
(1, 1, 1, 20, 'Tự chuyển', 'Kho A'),
(2, 1, 2, 20000000, 'Tự chuyển', 'Kho A'),
(3, 2, 3, 50, 'Tự chuyển', 'Kho A'),
(4, 3, 1, 50, 'Tự chuyển', 'Kho A');

-- --------------------------------------------------------

--
-- Table structure for table `chitietphanbo`
--

CREATE TABLE `chitietphanbo` (
  `iPB` int(11) NOT NULL,
  `idDotPhanBo` int(11) NOT NULL,
  `idHangCuuTro` int(11) NOT NULL,
  `soLuong` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chitietphanbo`
--

INSERT INTO `chitietphanbo` (`iPB`, `idDotPhanBo`, `idHangCuuTro`, `soLuong`) VALUES
(1, 1, 1, 100),
(2, 1, 1, 300),
(3, 3, 3, 100),
(4, 2, 2, 200),
(5, 1, 1, 100);

-- --------------------------------------------------------

--
-- Table structure for table `chitietphieunhap`
--

CREATE TABLE `chitietphieunhap` (
  `iPhieuNhap` int(11) NOT NULL,
  `idPhieuNhap` int(11) NOT NULL,
  `idHangCuuTro` int(11) NOT NULL,
  `soLuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chitietphieunhap`
--

INSERT INTO `chitietphieunhap` (`iPhieuNhap`, `idPhieuNhap`, `idHangCuuTro`, `soLuong`) VALUES
(1, 1, 1, 20),
(2, 1, 2, 20000000),
(3, 2, 3, 50),
(4, 3, 1, 50);

-- --------------------------------------------------------

--
-- Table structure for table `chitietphieuxuat`
--

CREATE TABLE `chitietphieuxuat` (
  `iPhieuXuat` varchar(50) NOT NULL,
  `idPhieuXuat` int(11) NOT NULL,
  `idHangCuuTro` int(11) NOT NULL,
  `soLuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chitietphieuxuat`
--

INSERT INTO `chitietphieuxuat` (`iPhieuXuat`, `idPhieuXuat`, `idHangCuuTro`, `soLuong`) VALUES
('01', 1, 1, 30),
('02', 1, 2, 1000000),
('03', 1, 3, 20),
('04', 2, 1, 10),
('05', 2, 3, 10),
('06', 2, 2, 10000000);

-- --------------------------------------------------------

--
-- Table structure for table `dangkyungho`
--

CREATE TABLE `dangkyungho` (
  `idDangKyUngHo` int(11) NOT NULL,
  `trangThai` varchar(255) DEFAULT NULL,
  `ghiChu` varchar(255) DEFAULT NULL,
  `idNguoiUngHo` int(11) NOT NULL,
  `idDotCuuTro` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dangkyungho`
--

INSERT INTO `dangkyungho` (`idDangKyUngHo`, `trangThai`, `ghiChu`, `idNguoiUngHo`, `idDotCuuTro`) VALUES
(1, 'Chưa duyệt', NULL, 1, 1),
(2, 'Đã duyệt', NULL, 2, 1),
(3, 'Đã duyệt', NULL, 3, 2),
(4, 'Đã duyệt', NULL, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `idDanhMuc` int(11) NOT NULL,
  `tenDanhMuc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`idDanhMuc`, `tenDanhMuc`) VALUES
(1, 'Lương thực'),
(2, 'Tiền'),
(3, 'Quần áo'),
(4, 'Gạo'),
(10, ''),
(11, '');

-- --------------------------------------------------------

--
-- Table structure for table `dotcuutro`
--

CREATE TABLE `dotcuutro` (
  `idDotCuuTro` int(11) NOT NULL,
  `tenDotCuuTro` varchar(255) DEFAULT NULL,
  `ngayTao` timestamp NULL DEFAULT current_timestamp(),
  `ngayBatDau` datetime(6) NOT NULL,
  `ngayKetThuc` datetime(6) NOT NULL,
  `idNhanVien` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dotcuutro`
--

INSERT INTO `dotcuutro` (`idDotCuuTro`, `tenDotCuuTro`, `ngayTao`, `ngayBatDau`, `ngayKetThuc`, `idNhanVien`) VALUES
(1, 'Đợt cứu trợ lũ lụt số 1', '2021-07-19 17:00:00', '2021-07-25 00:00:00.000000', '2021-08-04 00:00:00.000000', 1),
(2, 'Đợt cứu trợ lũ lụt số 2', '2021-07-19 17:00:00', '2021-07-26 00:00:00.000000', '2021-08-04 00:00:00.000000', 2),
(3, 'Đợt cứu trợ lũ lụt số 3', '2021-07-19 17:00:00', '2021-07-26 00:00:00.000000', '2021-08-04 00:00:00.000000', 3),
(5, 'Đợt cứu trợ lũ lụt số 4', '2022-06-16 14:28:47', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dotphanbo`
--

CREATE TABLE `dotphanbo` (
  `idDotPhanBo` int(11) NOT NULL,
  `idDotCuuTro` int(11) NOT NULL,
  `ngayTao` date DEFAULT NULL,
  `ngayPhanBo` date NOT NULL,
  `noiPhanBo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dotphanbo`
--

INSERT INTO `dotphanbo` (`idDotPhanBo`, `idDotCuuTro`, `ngayTao`, `ngayPhanBo`, `noiPhanBo`) VALUES
(1, 1, '2021-07-20', '2021-07-30', 'Sân vận động xã Hòa Sơn'),
(2, 1, '2021-07-20', '2021-07-30', 'Khu thể thao xã Hòa Liên'),
(3, 2, '2021-07-20', '2021-07-30', 'Sân vận động xã Hòa Châu');

-- --------------------------------------------------------

--
-- Table structure for table `hangcuutro`
--

CREATE TABLE `hangcuutro` (
  `idHangCuuTro` int(11) NOT NULL,
  `tenHangCuuTro` varchar(255) NOT NULL,
  `donViTinh` varchar(255) NOT NULL,
  `idDanhMuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hangcuutro`
--

INSERT INTO `hangcuutro` (`idHangCuuTro`, `tenHangCuuTro`, `donViTinh`, `idDanhMuc`) VALUES
(1, 'Gạo', 'Bao', 1),
(2, 'Tiền', 'VNĐ', 2),
(3, 'Mỳ tôm', 'Thùng', 1),
(4, 'Phở', 'Thùng', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hogiadinh`
--

CREATE TABLE `hogiadinh` (
  `idHoGiaDinh` int(11) NOT NULL,
  `iPB` int(11) NOT NULL,
  `tenChuHo` varchar(50) NOT NULL,
  `soDT` varchar(20) NOT NULL,
  `soNhanKhau` int(11) NOT NULL,
  `idXa` int(11) NOT NULL,
  `hoanCanh` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hogiadinh`
--

INSERT INTO `hogiadinh` (`idHoGiaDinh`, `iPB`, `tenChuHo`, `soDT`, `soNhanKhau`, `idXa`, `hoanCanh`, `status`) VALUES
(1, 1, 'Trần Văn B', '123456789', 5, 1, 'Hộ nghèo', 1),
(2, 1, 'Trần Thị B', '1234567890', 3, 2, 'Hộ nghèo', 1),
(3, 2, 'Hồ Quang B', '0234567891', 2, 3, 'Hộ nghèo', 1),
(4, 2, 'Võ Văn B', '0334462488', 1, 4, 'Khó khăn', 1),
(5, 3, 'Hoàng Thị Lê', '0397102018', 4, 5, 'Neo đơn', 1),
(6, 3, 'Huỳnh Tấn Minh', '0334462489', 5, 3, '', 0),
(7, 2, 'Huỳnh Tấn Bình', '0334462410', 5, 2, 'Khó Khăn', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nguoiungho`
--

CREATE TABLE `nguoiungho` (
  `idNguoiUngHo` int(11) NOT NULL,
  `tenNguoiUngHo` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `soDT` varchar(10) DEFAULT NULL,
  `diaChi` varchar(255) DEFAULT NULL,
  `donVi` varchar(255) DEFAULT NULL,
  `gioiTinh` tinyint(1) DEFAULT 0,
  `ngaySinh` date NOT NULL,
  `tenTaiKhoan` varchar(255) NOT NULL,
  `matKhau` varchar(255) NOT NULL,
  `trangThai` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nguoiungho`
--

INSERT INTO `nguoiungho` (`idNguoiUngHo`, `tenNguoiUngHo`, `email`, `soDT`, `diaChi`, `donVi`, `gioiTinh`, `ngaySinh`, `tenTaiKhoan`, `matKhau`, `trangThai`, `status`, `image`) VALUES
(1, 'Nguyễn Văn A', 'ngvana01@gmail.com', '0231456521', NULL, NULL, 0, '1990-01-01', '01', '12345', 'Bình thường', 1, ''),
(2, 'Nguyễn Văn B', 'ngvanb02@gmail.com', '0231456522', NULL, NULL, 0, '1990-01-01', 'nvb02', '12345', 'Bình thường', 1, ''),
(3, 'Nguyễn Văn C', 'ngvanc03@gmail.com', '0231456523', NULL, NULL, 1, '1990-01-01', 'nvc03', '12345', 'Bình thường', 1, ''),
(4, 'Huỳnh Tấn Minh', 'minhtandz951@gmail.com', '0334462487', 'Đà Nẵng', 'đơn vị 1', 1, '2001-02-17', 'tanminh123', '12345', 'Bình Thường', 1, '13254373_1616218925363151_8734968581190333385_n.jpg'),
(5, 'Tấn Minh', 'huynhtanbinh17022001@gmail.com', '0334462488', '54 Hai Ho Hai Chau', NULL, 0, '0000-00-00', 'hieuadmin', '012345', NULL, 1, ''),
(6, 'Tấn Minh aaa', 'huynhtanbinh17021997@gmail.com', '0334462480', '54 Hai Ho Hai Chau', NULL, 0, '0000-00-00', 'admin', '012345', NULL, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `idNhanVien` int(11) NOT NULL,
  `tenNhanVien` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `soDT` varchar(10) DEFAULT NULL,
  `diaChi` varchar(255) NOT NULL,
  `gioiTinh` tinyint(1) DEFAULT 0,
  `ngaySinh` date DEFAULT NULL,
  `tenTaiKhoan` varchar(255) NOT NULL,
  `matKhau` varchar(255) NOT NULL,
  `trangThai` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`idNhanVien`, `tenNhanVien`, `email`, `soDT`, `diaChi`, `gioiTinh`, `ngaySinh`, `tenTaiKhoan`, `matKhau`, `trangThai`) VALUES
(1, 'Đậu Thái Công', 'daucong@gmail.com', '0795599636', 'Gia Lai', 1, '2001-09-11', 'daucong', '012345', NULL),
(2, 'Công Thành', 'Thanh@gmail.com', '0745678911', 'Đà Nẵng', 0, '2001-11-06', 'congthanh', '012345', NULL),
(3, 'Ngọc Hiếu', 'ngHieu@gmail.com', '0328495068', 'Đà Nẵng', 0, '2001-10-01', 'ngochieu', '012345', NULL),
(4, 'Tấn Minh', 'minh@gmail.com', '0889189911', 'Đà Nẵng', 0, '2001-09-22', 'tanminh', '012345', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `phieunhap`
--

CREATE TABLE `phieunhap` (
  `idPhieuNhap` int(11) NOT NULL,
  `idDangKyUngHo` int(11) NOT NULL,
  `idNhanVien` int(11) NOT NULL,
  `idDotCuuTro` int(11) NOT NULL,
  `ngayNhap` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phieunhap`
--

INSERT INTO `phieunhap` (`idPhieuNhap`, `idDangKyUngHo`, `idNhanVien`, `idDotCuuTro`, `ngayNhap`) VALUES
(1, 1, 1, 1, '2021-07-20'),
(2, 2, 1, 2, '2021-07-20'),
(3, 3, 3, 1, '2021-07-20'),
(4, 4, 2, 2, '2021-07-20');

-- --------------------------------------------------------

--
-- Table structure for table `phieuxuat`
--

CREATE TABLE `phieuxuat` (
  `idPhieuXuat` int(11) NOT NULL,
  `idDotCuuTro` int(11) NOT NULL,
  `idDotPhanBo` int(11) NOT NULL,
  `idNhanVien` int(11) NOT NULL,
  `idCanBo` int(11) NOT NULL,
  `ngayXuat` date DEFAULT NULL,
  `trangThai` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phieuxuat`
--

INSERT INTO `phieuxuat` (`idPhieuXuat`, `idDotCuuTro`, `idDotPhanBo`, `idNhanVien`, `idCanBo`, `ngayXuat`, `trangThai`) VALUES
(1, 1, 1, 2, 1, '2020-06-30', 'Đã xuất'),
(2, 1, 1, 3, 2, '2021-07-10', 'Đã xuất'),
(3, 2, 3, 2, 1, '2022-05-20', 'Đã xác nhận');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `created_at`, `updated_at`, `level`) VALUES
(1, '2022-06-18 15:56:36', '2022-06-18 15:56:36', 1),
(2, NULL, NULL, 1),
(3, NULL, NULL, 1),
(4, NULL, NULL, 1),
(5, NULL, NULL, 1),
(6, NULL, NULL, 2),
(7, NULL, NULL, 2),
(8, NULL, NULL, 2),
(9, NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `xa`
--

CREATE TABLE `xa` (
  `idXa` int(11) NOT NULL,
  `tenXa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `xa`
--

INSERT INTO `xa` (`idXa`, `tenXa`) VALUES
(1, 'Xã Hòa Sơn'),
(2, 'Xã Hòa Liên'),
(3, 'Xã Hòa Châu'),
(4, 'Xã Hòa Tiến'),
(5, 'Xã Hòa Phong');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baiviet`
--
ALTER TABLE `baiviet`
  ADD PRIMARY KEY (`idBaiViet`),
  ADD KEY `FK__BaiViet__idDotCu__0F624AF8` (`idDotCuuTro`),
  ADD KEY `FK__BaiViet__idNhanV__10566F31` (`idNhanVien`);

--
-- Indexes for table `canbo`
--
ALTER TABLE `canbo`
  ADD PRIMARY KEY (`idCanBo`),
  ADD KEY `FK__CanBo__idXa__75A278F5` (`idXa`);

--
-- Indexes for table `chitietdangkyungho`
--
ALTER TABLE `chitietdangkyungho`
  ADD PRIMARY KEY (`iH`),
  ADD KEY `FK__ChiTietDa__idDan__5EBF139D` (`idDangKyUngHo`),
  ADD KEY `FK__ChiTietDa__idHan__5FB337D6` (`idHangCuuTro`);

--
-- Indexes for table `chitietphanbo`
--
ALTER TABLE `chitietphanbo`
  ADD PRIMARY KEY (`iPB`),
  ADD KEY `FK__ChiTietPh__idHan__05D8E0BE` (`idHangCuuTro`),
  ADD KEY `FK__ChiTietPh__idDot__06CD04F7` (`idDotPhanBo`);

--
-- Indexes for table `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD PRIMARY KEY (`iPhieuNhap`),
  ADD KEY `FK__ChiTietPh__idPhi__693CA210` (`idPhieuNhap`),
  ADD KEY `FK__ChiTietPh__idHan__6A30C649` (`idHangCuuTro`);

--
-- Indexes for table `chitietphieuxuat`
--
ALTER TABLE `chitietphieuxuat`
  ADD PRIMARY KEY (`iPhieuXuat`),
  ADD KEY `FK__ChiTietPh__idPhi__02084FDA` (`idPhieuXuat`),
  ADD KEY `FK__ChiTietPh__idHan__02FC7413` (`idHangCuuTro`);

--
-- Indexes for table `dangkyungho`
--
ALTER TABLE `dangkyungho`
  ADD PRIMARY KEY (`idDangKyUngHo`),
  ADD KEY `FK__DangKyUng__idNgu__5812160E` (`idNguoiUngHo`),
  ADD KEY `FK__DangKyUng__idDot__59063A47` (`idDotCuuTro`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`idDanhMuc`);

--
-- Indexes for table `dotcuutro`
--
ALTER TABLE `dotcuutro`
  ADD PRIMARY KEY (`idDotCuuTro`),
  ADD KEY `FK__DotCuuTro__idNha__49C3F6B7` (`idNhanVien`);

--
-- Indexes for table `dotphanbo`
--
ALTER TABLE `dotphanbo`
  ADD PRIMARY KEY (`idDotPhanBo`),
  ADD KEY `FK__DotPhanBo__idDot__4F7CD00D` (`idDotCuuTro`);

--
-- Indexes for table `hangcuutro`
--
ALTER TABLE `hangcuutro`
  ADD PRIMARY KEY (`idHangCuuTro`),
  ADD KEY `FK__HangCuuTr__idDan__534D60F1` (`idDanhMuc`);

--
-- Indexes for table `hogiadinh`
--
ALTER TABLE `hogiadinh`
  ADD PRIMARY KEY (`idHoGiaDinh`),
  ADD KEY `FK__HoGiaDinh__iP__0A9D95DB` (`iPB`),
  ADD KEY `FK__HoGiaDinh__idXa__0B91BA14` (`idXa`);

--
-- Indexes for table `nguoiungho`
--
ALTER TABLE `nguoiungho`
  ADD PRIMARY KEY (`idNguoiUngHo`),
  ADD UNIQUE KEY `UQ__NguoiUng__331D82138BBF6571` (`soDT`),
  ADD UNIQUE KEY `UQ__NguoiUng__AB6E61640FFFD032` (`email`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`idNhanVien`);

--
-- Indexes for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`idPhieuNhap`),
  ADD KEY `FK__PhieuNhap__idDan__6383C8BA` (`idDangKyUngHo`),
  ADD KEY `FK__PhieuNhap__idNha__6477ECF3` (`idNhanVien`),
  ADD KEY `FK__PhieuNhap__idDot__656C112C` (`idDotCuuTro`);

--
-- Indexes for table `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD PRIMARY KEY (`idPhieuXuat`),
  ADD KEY `FK__PhieuXuat__idDot__7B5B524B` (`idDotCuuTro`),
  ADD KEY `FK__PhieuXuat__idNha__7C4F7684` (`idNhanVien`),
  ADD KEY `FK__PhieuXuat__idCan__7D439ABD` (`idCanBo`),
  ADD KEY `FK__PhieuXuat__idDot__7E37BEF6` (`idDotPhanBo`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xa`
--
ALTER TABLE `xa`
  ADD PRIMARY KEY (`idXa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `baiviet`
--
ALTER TABLE `baiviet`
  MODIFY `idBaiViet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `canbo`
--
ALTER TABLE `canbo`
  MODIFY `idCanBo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `chitietdangkyungho`
--
ALTER TABLE `chitietdangkyungho`
  MODIFY `iH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `idDanhMuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `dotcuutro`
--
ALTER TABLE `dotcuutro`
  MODIFY `idDotCuuTro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hogiadinh`
--
ALTER TABLE `hogiadinh`
  MODIFY `idHoGiaDinh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `nguoiungho`
--
ALTER TABLE `nguoiungho`
  MODIFY `idNguoiUngHo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `idNhanVien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `baiviet`
--
ALTER TABLE `baiviet`
  ADD CONSTRAINT `FK__BaiViet__idNhanV__10566F31` FOREIGN KEY (`idNhanVien`) REFERENCES `nhanvien` (`idNhanVien`);

--
-- Constraints for table `canbo`
--
ALTER TABLE `canbo`
  ADD CONSTRAINT `FK__CanBo__idXa__75A278F5` FOREIGN KEY (`idXa`) REFERENCES `xa` (`idXa`);

--
-- Constraints for table `chitietdangkyungho`
--
ALTER TABLE `chitietdangkyungho`
  ADD CONSTRAINT `FK__ChiTietDa__idDan__5EBF139D` FOREIGN KEY (`idDangKyUngHo`) REFERENCES `dangkyungho` (`idDangKyUngHo`),
  ADD CONSTRAINT `FK__ChiTietDa__idHan__5FB337D6` FOREIGN KEY (`idHangCuuTro`) REFERENCES `hangcuutro` (`idHangCuuTro`);

--
-- Constraints for table `chitietphanbo`
--
ALTER TABLE `chitietphanbo`
  ADD CONSTRAINT `FK__ChiTietPh__idDot__06CD04F7` FOREIGN KEY (`idDotPhanBo`) REFERENCES `dotphanbo` (`idDotPhanBo`),
  ADD CONSTRAINT `FK__ChiTietPh__idHan__05D8E0BE` FOREIGN KEY (`idHangCuuTro`) REFERENCES `hangcuutro` (`idHangCuuTro`);

--
-- Constraints for table `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD CONSTRAINT `FK__ChiTietPh__idHan__6A30C649` FOREIGN KEY (`idHangCuuTro`) REFERENCES `hangcuutro` (`idHangCuuTro`),
  ADD CONSTRAINT `FK__ChiTietPh__idPhi__693CA210` FOREIGN KEY (`idPhieuNhap`) REFERENCES `phieunhap` (`idPhieuNhap`);

--
-- Constraints for table `chitietphieuxuat`
--
ALTER TABLE `chitietphieuxuat`
  ADD CONSTRAINT `FK__ChiTietPh__idHan__02FC7413` FOREIGN KEY (`idHangCuuTro`) REFERENCES `hangcuutro` (`idHangCuuTro`),
  ADD CONSTRAINT `FK__ChiTietPh__idPhi__02084FDA` FOREIGN KEY (`idPhieuXuat`) REFERENCES `phieuxuat` (`idPhieuXuat`);

--
-- Constraints for table `dangkyungho`
--
ALTER TABLE `dangkyungho`
  ADD CONSTRAINT `FK__DangKyUng__idNgu__5812160E` FOREIGN KEY (`idNguoiUngHo`) REFERENCES `nguoiungho` (`idNguoiUngHo`);

--
-- Constraints for table `dotcuutro`
--
ALTER TABLE `dotcuutro`
  ADD CONSTRAINT `FK__DotCuuTro__idNha__49C3F6B7` FOREIGN KEY (`idNhanVien`) REFERENCES `nhanvien` (`idNhanVien`);

--
-- Constraints for table `hangcuutro`
--
ALTER TABLE `hangcuutro`
  ADD CONSTRAINT `FK__HangCuuTr__idDan__534D60F1` FOREIGN KEY (`idDanhMuc`) REFERENCES `danhmuc` (`idDanhMuc`);

--
-- Constraints for table `hogiadinh`
--
ALTER TABLE `hogiadinh`
  ADD CONSTRAINT `FK__HoGiaDinh__iP__0A9D95DB` FOREIGN KEY (`iPB`) REFERENCES `chitietphanbo` (`iPB`),
  ADD CONSTRAINT `FK__HoGiaDinh__idXa__0B91BA14` FOREIGN KEY (`idXa`) REFERENCES `xa` (`idXa`);

--
-- Constraints for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `FK__PhieuNhap__idDan__6383C8BA` FOREIGN KEY (`idDangKyUngHo`) REFERENCES `dangkyungho` (`idDangKyUngHo`),
  ADD CONSTRAINT `FK__PhieuNhap__idNha__6477ECF3` FOREIGN KEY (`idNhanVien`) REFERENCES `nhanvien` (`idNhanVien`);

--
-- Constraints for table `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD CONSTRAINT `FK__PhieuXuat__idCan__7D439ABD` FOREIGN KEY (`idCanBo`) REFERENCES `canbo` (`idCanBo`),
  ADD CONSTRAINT `FK__PhieuXuat__idDot__7E37BEF6` FOREIGN KEY (`idDotPhanBo`) REFERENCES `dotphanbo` (`idDotPhanBo`),
  ADD CONSTRAINT `FK__PhieuXuat__idNha__7C4F7684` FOREIGN KEY (`idNhanVien`) REFERENCES `nhanvien` (`idNhanVien`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
