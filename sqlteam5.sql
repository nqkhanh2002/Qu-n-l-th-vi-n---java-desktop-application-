-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 12, 2022 lúc 02:47 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sql6424812`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctphieumuonsach`
--

CREATE TABLE `ctphieumuonsach` (
  `MACTPHIEUMUONSACH` int(11) NOT NULL,
  `MAPHIEUMUONSACH` int(11) NOT NULL,
  `MASACH` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `ctphieumuonsach`
--

INSERT INTO `ctphieumuonsach` (`MACTPHIEUMUONSACH`, `MAPHIEUMUONSACH`, `MASACH`) VALUES
(9, 6, 2),
(10, 7, 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctphieutrasach`
--

CREATE TABLE `ctphieutrasach` (
  `MACTPHIEUTRASACH` int(11) NOT NULL,
  `MAPHIEUTRASACH` int(11) NOT NULL,
  `SONGAYTRATRE` int(11) NOT NULL,
  `TIENPHAT` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `ctphieutrasach`
--

INSERT INTO `ctphieutrasach` (`MACTPHIEUTRASACH`, `MAPHIEUTRASACH`, `SONGAYTRATRE`, `TIENPHAT`) VALUES
(4, 4, 27, 27000),
(5, 5, 7, 7000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaidocgia`
--

CREATE TABLE `loaidocgia` (
  `MALOAIDOCGIA` int(11) NOT NULL,
  `TENLOAIDOCGIA` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loaidocgia`
--

INSERT INTO `loaidocgia` (`MALOAIDOCGIA`, `TENLOAIDOCGIA`) VALUES
(1, 'X'),
(2, 'Y');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieumuonsach`
--

CREATE TABLE `phieumuonsach` (
  `MAPHIEUMUONSACH` int(11) NOT NULL,
  `NGAYMUON` varchar(30) NOT NULL,
  `MADOCGIA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `phieumuonsach`
--

INSERT INTO `phieumuonsach` (`MAPHIEUMUONSACH`, `NGAYMUON`, `MADOCGIA`) VALUES
(6, '12/05/2022', 8),
(7, '01/06/2022', 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieuthutienphat`
--

CREATE TABLE `phieuthutienphat` (
  `ID` int(11) NOT NULL,
  `MADOCGIA` int(11) NOT NULL,
  `TIENTHU` int(11) NOT NULL,
  `CONLAI` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `phieuthutienphat`
--

INSERT INTO `phieuthutienphat` (`ID`, `MADOCGIA`, `TIENTHU`, `CONLAI`) VALUES
(1, 8, 20000, 7000),
(2, 9, 1000, 6000),
(3, 8, 100, 6900),
(4, 8, 100, 6800),
(5, 9, 100, 5900),
(6, 8, 100, 6700);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieutrasach`
--

CREATE TABLE `phieutrasach` (
  `MAPHIEUTRASACH` int(11) NOT NULL,
  `NGAYTRA` varchar(30) NOT NULL,
  `MAPHIEUMUONSACH` int(11) NOT NULL,
  `TIENPHATKYNAY` double NOT NULL,
  `TIENNOKYNAY` double NOT NULL,
  `TONGNO` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `phieutrasach`
--

INSERT INTO `phieutrasach` (`MAPHIEUTRASACH`, `NGAYTRA`, `MAPHIEUMUONSACH`, `TIENPHATKYNAY`, `TIENNOKYNAY`, `TONGNO`) VALUES
(4, '12/06/2022', 6, 27000, 0, 27000),
(5, '12/06/2022', 7, 7000, 0, 7000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tacgia`
--

CREATE TABLE `tacgia` (
  `MATACGIA` int(10) NOT NULL,
  `TENTACGIA` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tacgia`
--

INSERT INTO `tacgia` (`MATACGIA`, `TENTACGIA`) VALUES
(1, 'Nam Cao'),
(2, 'Vũ Trọng Phụng'),
(3, 'Phung Quan'),
(4, 'Nguyen Hong'),
(5, 'Bao Ninh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `ID` int(10) NOT NULL,
  `TENTK` varchar(100) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `MATKHAU` varchar(100) NOT NULL,
  `SDT` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`ID`, `TENTK`, `EMAIL`, `MATKHAU`, `SDT`) VALUES
(7, 'admin', 'admin', 'admin', '0392697777');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thedocgia`
--

CREATE TABLE `thedocgia` (
  `MADOCGIA` int(11) NOT NULL,
  `HOTEN` varchar(50) NOT NULL,
  `MALOAIDOCGIA` int(11) NOT NULL,
  `DIACHI` varchar(50) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `NGAYSINH` text NOT NULL,
  `NGAYLAPTHE` text NOT NULL,
  `TUOI` int(11) DEFAULT NULL,
  `NGAYHETHAN` text NOT NULL,
  `TONGNODOCGIA` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `thedocgia`
--

INSERT INTO `thedocgia` (`MADOCGIA`, `HOTEN`, `MALOAIDOCGIA`, `DIACHI`, `EMAIL`, `NGAYSINH`, `NGAYLAPTHE`, `TUOI`, `NGAYHETHAN`, `TONGNODOCGIA`) VALUES
(8, 'Khánh', 2, 'TP HCM', 'khanh@gmail.com', '08/06/2002', '03/05/2022', NULL, '03/11/2022', 6700),
(9, 'Võ Lâm Trường', 1, 'HCM', '2052@gmail.com', '01/06/2002', '12/05/2022', NULL, '12/11/2022', 5900),
(10, 'Trang', 2, 'HCM', '2052@gmail.com', '12/06/2002', '12/06/2022', NULL, '12/12/2022', 0),
(11, 'Vinh', 1, 'HCM', 'admin@gmail.com', '02/06/2002', '01/06/2022', NULL, '01/12/2022', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `MATHELOAI` int(10) NOT NULL,
  `TENTHELOAI` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `theloai`
--

INSERT INTO `theloai` (`MATHELOAI`, `TENTHELOAI`) VALUES
(1, 'Truyện ngắn'),
(2, 'Tiểu thuyết'),
(3, 'Truyện cười');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongtinsach`
--

CREATE TABLE `thongtinsach` (
  `MASACH` int(10) NOT NULL,
  `TENSACH` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MATHELOAI` int(10) NOT NULL,
  `MATACGIA` int(10) NOT NULL,
  `NAMXUATBAN` year(4) NOT NULL,
  `NHAXUATBAN` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `NGAYNHAP` text COLLATE utf8_unicode_ci NOT NULL,
  `TRIGIA` double NOT NULL,
  `TINHTRANG` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TRANGTHAI` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thongtinsach`
--

INSERT INTO `thongtinsach` (`MASACH`, `TENSACH`, `MATHELOAI`, `MATACGIA`, `NAMXUATBAN`, `NHAXUATBAN`, `NGAYNHAP`, `TRIGIA`, `TINHTRANG`, `TRANGTHAI`) VALUES
(2, 'Tuổi thơ dữ dội', 1, 3, 1998, 'NXB Sach Moi', '18/6/2021', 90000, 'Cũ', 0),
(3, 'Chí Phèo', 1, 1, 1985, 'NXB The he moi', '09/5/1999', 45000, 'Mới', 0),
(4, 'Vợ Nhặt', 1, 1, 2009, 'NXB The he moi', '14/04/2019', 80000, 'Cũ', 0),
(5, 'Số đỏ', 1, 2, 2003, 'NXB Kim Dong', '19/08/2020', 90000, 'Cũ', 0),
(6, 'Bi Vo', 1, 4, 2019, 'NXB The he moi', '1/11/2013', 78000, 'Cũ', 0),
(7, 'Canh Dong Bat Tan', 2, 5, 2018, 'NXB Kim Dong', '8/9/2018', 75000, 'Cũ', 0),
(8, 'Noi Buon Chien Tranh', 1, 5, 2010, 'NXB eBook', '20/10/2017', 30000, 'Mới', 0),
(10, 'Song Mon', 2, 3, 2015, 'NXB PPP', '07/05/2004', 95000, 'Mới', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `ctphieumuonsach`
--
ALTER TABLE `ctphieumuonsach`
  ADD PRIMARY KEY (`MACTPHIEUMUONSACH`),
  ADD KEY `FK_MAPHIEUMUONSACH` (`MAPHIEUMUONSACH`),
  ADD KEY `FK2_MASACH` (`MASACH`);

--
-- Chỉ mục cho bảng `ctphieutrasach`
--
ALTER TABLE `ctphieutrasach`
  ADD PRIMARY KEY (`MACTPHIEUTRASACH`),
  ADD KEY `FK_MAPHIEUTRASACH` (`MAPHIEUTRASACH`);

--
-- Chỉ mục cho bảng `loaidocgia`
--
ALTER TABLE `loaidocgia`
  ADD PRIMARY KEY (`MALOAIDOCGIA`);

--
-- Chỉ mục cho bảng `phieumuonsach`
--
ALTER TABLE `phieumuonsach`
  ADD PRIMARY KEY (`MAPHIEUMUONSACH`),
  ADD KEY `FK2_MADOCGIA` (`MADOCGIA`);

--
-- Chỉ mục cho bảng `phieuthutienphat`
--
ALTER TABLE `phieuthutienphat`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MADOCGIA` (`MADOCGIA`);

--
-- Chỉ mục cho bảng `phieutrasach`
--
ALTER TABLE `phieutrasach`
  ADD PRIMARY KEY (`MAPHIEUTRASACH`),
  ADD KEY `FK3_MAPHIEUMUONSACH` (`MAPHIEUMUONSACH`);

--
-- Chỉ mục cho bảng `tacgia`
--
ALTER TABLE `tacgia`
  ADD PRIMARY KEY (`MATACGIA`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `thedocgia`
--
ALTER TABLE `thedocgia`
  ADD PRIMARY KEY (`MADOCGIA`),
  ADD KEY `MALOAIDOCGIA` (`MALOAIDOCGIA`);

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`MATHELOAI`);

--
-- Chỉ mục cho bảng `thongtinsach`
--
ALTER TABLE `thongtinsach`
  ADD PRIMARY KEY (`MASACH`),
  ADD KEY `FK_MATACGIA` (`MATACGIA`),
  ADD KEY `FK_MATHELOAI` (`MATHELOAI`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `ctphieumuonsach`
--
ALTER TABLE `ctphieumuonsach`
  MODIFY `MACTPHIEUMUONSACH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `ctphieutrasach`
--
ALTER TABLE `ctphieutrasach`
  MODIFY `MACTPHIEUTRASACH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `loaidocgia`
--
ALTER TABLE `loaidocgia`
  MODIFY `MALOAIDOCGIA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `phieumuonsach`
--
ALTER TABLE `phieumuonsach`
  MODIFY `MAPHIEUMUONSACH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `phieuthutienphat`
--
ALTER TABLE `phieuthutienphat`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `phieutrasach`
--
ALTER TABLE `phieutrasach`
  MODIFY `MAPHIEUTRASACH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tacgia`
--
ALTER TABLE `tacgia`
  MODIFY `MATACGIA` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `thedocgia`
--
ALTER TABLE `thedocgia`
  MODIFY `MADOCGIA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `theloai`
--
ALTER TABLE `theloai`
  MODIFY `MATHELOAI` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `thongtinsach`
--
ALTER TABLE `thongtinsach`
  MODIFY `MASACH` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `ctphieumuonsach`
--
ALTER TABLE `ctphieumuonsach`
  ADD CONSTRAINT `FK2_MASACH` FOREIGN KEY (`MASACH`) REFERENCES `thongtinsach` (`MASACH`),
  ADD CONSTRAINT `FK_MAPHIEUMUONSACH` FOREIGN KEY (`MAPHIEUMUONSACH`) REFERENCES `phieumuonsach` (`MAPHIEUMUONSACH`);

--
-- Các ràng buộc cho bảng `ctphieutrasach`
--
ALTER TABLE `ctphieutrasach`
  ADD CONSTRAINT `FK_MAPHIEUTRASACH` FOREIGN KEY (`MAPHIEUTRASACH`) REFERENCES `phieutrasach` (`MAPHIEUTRASACH`);

--
-- Các ràng buộc cho bảng `phieumuonsach`
--
ALTER TABLE `phieumuonsach`
  ADD CONSTRAINT `FK2_MADOCGIA` FOREIGN KEY (`MADOCGIA`) REFERENCES `thedocgia` (`MADOCGIA`);

--
-- Các ràng buộc cho bảng `phieuthutienphat`
--
ALTER TABLE `phieuthutienphat`
  ADD CONSTRAINT `phieuthutienphat_ibfk_1` FOREIGN KEY (`MADOCGIA`) REFERENCES `thedocgia` (`MADOCGIA`);

--
-- Các ràng buộc cho bảng `phieutrasach`
--
ALTER TABLE `phieutrasach`
  ADD CONSTRAINT `FK3_MAPHIEUMUONSACH` FOREIGN KEY (`MAPHIEUMUONSACH`) REFERENCES `phieumuonsach` (`MAPHIEUMUONSACH`);

--
-- Các ràng buộc cho bảng `thedocgia`
--
ALTER TABLE `thedocgia`
  ADD CONSTRAINT `thedocgia_ibfk_1` FOREIGN KEY (`MALOAIDOCGIA`) REFERENCES `loaidocgia` (`MALOAIDOCGIA`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
