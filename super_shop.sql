-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2022 at 11:43 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `super_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_ad` char(10) NOT NULL,
  `ten` varchar(200) DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `gioitinh` tinyint(1) DEFAULT NULL,
  `diachi` varchar(200) DEFAULT NULL,
  `sdt` varchar(11) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `pass_word` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_ad`, `ten`, `ngaysinh`, `gioitinh`, `diachi`, `sdt`, `email`, `username`, `pass_word`) VALUES
('ad1', 'Nguyễn Hữu Tường', '2001-01-10', 1, 'Trà Vinh', '939566579', 'tuong2k1@gmail.com', 'Tuong100101', '111');

-- --------------------------------------------------------

--
-- Table structure for table `ct_don_hang`
--

CREATE TABLE `ct_don_hang` (
  `Ma_Don` char(8) NOT NULL,
  `Ma_SP` char(8) NOT NULL,
  `Ten_SP` varchar(200) DEFAULT NULL,
  `SoLuong` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ct_don_hang`
--

INSERT INTO `ct_don_hang` (`Ma_Don`, `Ma_SP`, `Ten_SP`, `SoLuong`) VALUES
('HD10718', 'IP15', 'Điện thoại iPhone 13 512GB', 2),
('HD10718', 'IP16', 'Điện thoại iPhone 13 mini 128GB ', 2),
('HD150076', 'IP14', 'Điện thoại iPhone 13 512GB Xanh lá', 1),
('HD150076', 'IP2', 'Điện thoại iPhone 11 128GB', 1),
('HD200182', 'IP13', 'Điện thoại iPhone 13 256GB Xanh lá', 1),
('HD200182', 'IP19', 'Điện thoại iPhone 13 mini 512GB Xanh lá ', 1),
('HD268402', 'IP12', 'Điện thoại iPhone 13 128GB Xanh lá', 1),
('HD394101', 'IP14', 'Điện thoại iPhone 13 512GB Xanh lá', 2),
('HD438469', 'IP13', 'Điện thoại iPhone 13 256GB Xanh lá', 4),
('HD442796', 'IP19', 'Điện thoại iPhone 13 mini 512GB Xanh lá ', 1),
('HD503548', 'IP13', 'Điện thoại iPhone 13 256GB Xanh lá', 2),
('HD606300', 'IP16', 'Điện thoại iPhone 13 mini 128GB ', 2);

-- --------------------------------------------------------

--
-- Table structure for table `danh_muc`
--

CREATE TABLE `danh_muc` (
  `ma_dm` char(10) NOT NULL,
  `ten` varchar(200) DEFAULT NULL,
  `anh` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `danh_muc`
--

INSERT INTO `danh_muc` (`ma_dm`, `ten`, `anh`) VALUES
('IP', 'Iphone', 'logo-iphone-220x48.png'),
('IT', 'Itel', 'Itel42-b_54.jpg'),
('MT', 'Masstel', 'Masstel42-b_0.png'),
('NK', 'Nokia', 'Nokia42-b_21.jpg'),
('OP', 'Oppo', 'OPPO42-b_5.jpg'),
('RM', 'Realme', 'Realme42-b_37.png'),
('SS', 'Samsung', 'samsungnew-220x48-1.png'),
('VV', 'Vivo', 'Vivo42-b_50.jpg'),
('XM', 'Xiaomi', 'logo-xiaomi-220x48-5.png');

-- --------------------------------------------------------

--
-- Table structure for table `dia_chi_gh`
--

CREATE TABLE `dia_chi_gh` (
  `KH_Ma` char(8) NOT NULL,
  `DCGH` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dia_chi_gh`
--

INSERT INTO `dia_chi_gh` (`KH_Ma`, `DCGH`) VALUES
('KH401330', 'cay da - tap son - tra cu - tra vinh');

-- --------------------------------------------------------

--
-- Table structure for table `don_hang`
--

CREATE TABLE `don_hang` (
  `Ma_Don` char(8) NOT NULL,
  `KH_Ma` char(8) DEFAULT NULL,
  `TongTien` float DEFAULT NULL,
  `NgayDH` date DEFAULT NULL,
  `NgayGH` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `don_hang`
--

INSERT INTO `don_hang` (`Ma_Don`, `KH_Ma`, `TongTien`, `NgayDH`, `NgayGH`) VALUES
('HD10718', 'KH401330', 101790000, '2022-04-21', '2022-04-25'),
('HD150076', 'KH401330', 49310000, '2022-04-24', '2022-04-28'),
('HD200182', 'KH481668', 55610000, '2022-04-21', '2022-04-25'),
('HD268402', 'KH401330', 24220000, '2022-04-21', '2022-04-25'),
('HD394101', 'KH401330', 63810000, '2022-04-28', '2022-05-02'),
('HD438469', 'KH401330', 109190000, '2022-04-28', '2022-05-02'),
('HD442796', 'KH401330', 28320000, '2022-04-22', '2022-04-26'),
('HD503548', 'KH401330', 54610000, '2022-04-21', '2022-04-25'),
('HD606300', 'KH401330', 38010000, '2022-04-21', '2022-04-25');

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `KH_Ma` char(8) NOT NULL,
  `KH_Ten` varchar(100) NOT NULL,
  `KH_SDT` char(11) DEFAULT NULL,
  `KH_NgaySinh` date DEFAULT NULL,
  `KH_Username` varchar(100) DEFAULT NULL,
  `KH_Matkhau` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`KH_Ma`, `KH_Ten`, `KH_SDT`, `KH_NgaySinh`, `KH_Username`, `KH_Matkhau`) VALUES
('KH208516', 'thinh', '2022-04-15', '0000-00-00', 'thing78', '1234'),
('KH401330', 'Ly Phong nghi ', '12344', '2022-04-29', 'nghi123', '444'),
('KH481668', 'Nguyễn Minh Tâm', '0256765456', '2022-04-23', 'tam123', '123'),
('KH500601', 'ffff', '2022-04-08', '0000-00-00', 'rtg', '56'),
('KH969794', 'Nguyễn Hữu Tường', '0939566579', '2022-05-06', 'tuong123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `san_pham`
--

CREATE TABLE `san_pham` (
  `ma_sp` char(10) NOT NULL,
  `ma_dm` char(10) NOT NULL,
  `ten_sp` varchar(200) DEFAULT NULL,
  `so_luong` int(11) DEFAULT NULL,
  `gia` int(255) DEFAULT NULL,
  `anh` varchar(255) DEFAULT NULL,
  `noidung` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `san_pham`
--

INSERT INTO `san_pham` (`ma_sp`, `ma_dm`, `ten_sp`, `so_luong`, `gia`, `anh`, `noidung`) VALUES
('IP1', 'IP', 'Điện thoại iPhone 11 256GB', 30, 17490000, 'iphone-11-256gb.jpg', 'iPhone 11 256GB là chiếc máy có mức giá khá dễ chịu đến từ Apple. Nếu bạn không muốn bỏ ra số tiền quá lớn mà vẫn có được những nâng cấp về camera hay một hiệu năng đầy mạnh mẽ thì đây thực sự là một lựa chọn hàng đầu dành cho bạn.'),
('IP10', 'IP', 'Điện thoại iPhone 12 128GB', 30, 19790000, 'iphone-12-violet-128gb.jpg', 'Apple đã trình diện đến người dùng mẫu điện thoại iPhone 12 128GB với sự tuyên bố về một kỷ nguyên mới của iPhone: iPhone 5G siêu nhanh, nâng cấp về màn hình và hiệu năng hứa hẹn đây sẽ là smartphone cao cấp đáng để mọi người đầu tư sở hữu. '),
('IP11', 'IP', 'Điện thoại iPhone 12 128GB', 30, 19790000, 'iphone-12-xanh-la.jpg', 'Apple đã trình diện đến người dùng mẫu điện thoại iPhone 12 128GB với sự tuyên bố về một kỷ nguyên mới của iPhone: iPhone 5G siêu nhanh, nâng cấp về màn hình và hiệu năng hứa hẹn đây sẽ là smartphone cao cấp đáng để mọi người đầu tư sở hữu. '),
('IP12', 'IP', 'Điện thoại iPhone 13 128GB Xanh lá', 30, 24190000, 'iphone-13-128gb-xanh-la-128gb.jpg', 'Tại sự kiện Peek Performance thì Apple đã cho ra mắt dòng iPhone 13 128GB Xanh lá. Thiết kế màu sắc của thiết bị trông rất thân thiện với môi trường, ngoài việc thay đổi ngoại hình thì cấu hình của máy như thế nào? Hãy xem thêm bên dưới nhé.'),
('IP13', 'IP', 'Điện thoại iPhone 13 256GB Xanh lá', 30, 27290000, 'iphone-13-256gb-xanh-la-256gb.jpg', 'Đúng như dự đoán, Apple đã tổ chức sự kiện Peek Performance vào ngày 9/3 (theo giờ Việt Nam) để công bố loạt sản phẩm đình đám, cũng như giới thiệu màu sắc mới cho dòng iPhone 13 Xanh lá. Không còn là màu xanh bạc hà nhẹ nhàng nữa, iPhone 13 256GB Xanh lá mang sắc xanh đậm chất thiên nhiên.'),
('IP14', 'IP', 'Điện thoại iPhone 13 512GB Xanh lá', 30, 31890000, 'iphone-13-512gb-xanh-la-512.jpg', 'Thu hút tất cả sự chú ý của mọi người ngay khi ra mắt, iPhone 13 512 GB có vẻ ngoài cao cấp, tích hợp bộ xử lý mạnh mẽ, cụm camera kép cho khả năng ghi hình cực nét, dung lượng bộ nhớ lớn, hỗ trợ mạng 5G tận hưởng giải trí tuyệt vời theo cách bạn muốn.'),
('IP15', 'IP', 'Điện thoại iPhone 13 512GB', 30, 31890000, 'iphone-13-blue-512.jpg', 'Thu hút tất cả sự chú ý của mọi người ngay khi ra mắt, iPhone 13 512 GB có vẻ ngoài cao cấp, tích hợp bộ xử lý mạnh mẽ, cụm camera kép cho khả năng ghi hình cực nét, dung lượng bộ nhớ lớn, hỗ trợ mạng 5G tận hưởng giải trí tuyệt vời theo cách bạn muốn.'),
('IP16', 'IP', 'Điện thoại iPhone 13 mini 128GB ', 30, 18990000, 'iphone-13-midnight-128gb.jpg', 'iPhone 13 mini được Apple ra mắt với hàng loạt nâng cấp về cấu hình và các tính năng hữu ích, lại có thiết kế vừa vặn. Chiếc điện thoại này hứa hẹn là một thiết bị hoàn hảo hướng tới những khách hàng thích sự nhỏ gọn nhưng vẫn giữ được sự mạnh mẽ bên trong. '),
('IP17', 'IP', 'Điện thoại iPhone 13 mini 128GB Xanh lá ', 30, 21090000, 'iphone-13-mini-128gb-xanh-la.jpg', 'Trong khuôn khổ sự kiện Peek Performance, Apple đã cho ra mắt rất nhiều sản phẩm mới, bên cạnh đó hãng cũng công bố màu sắc mới cho dòng iPhone 13, trong đó có iPhone 13 mini 128GB Xanh lá. Sắc xanh mới trên dòng iPhone 13 mini tạo cảm giác tươi mới, thân thiện với môi trường.'),
('IP18', 'IP', 'Điện thoại iPhone 13 mini 256GB Xanh lá', 30, 24290000, 'iphone-13-mini-256gb-xanh-la-256gb.jpg', 'Một trong những điều được người hâm mộ mong chờ nhất trong sự kiện Peek Performance chính là màu sắc mới cho dòng iPhone 13. Năm trước Apple đã giới thiệu đến người dùng màu tím mộng mơ trên dòng iPhone 12, còn năm nay chính là màu xanh lá cho toàn dòng iPhone 13, gồm cả mẫu iPhone 13 mini 256GB Xanh lá.'),
('IP19', 'IP', 'Điện thoại iPhone 13 mini 512GB Xanh lá ', 30, 28290000, 'iphone-13-mini-512gb-xanh-la-512gb.jpg', 'Đúng như dự kiến, Apple trong sự kiện Peek Performance mang đến cho người dùng thêm một lựa chọn về màu sắc đối với dòng sản phẩm iPhone 13 Xanh lá. Sắc màu trên iPhone 13 mini 512GB Xanh lá tạo cảm giác tươi mới, hòa mình với thiên nhiên.'),
('IP2', 'IP', 'Điện thoại iPhone 11 128GB', 30, 17390000, 'iphone-11-xanhla-128gb.jpg', 'Được xem là một trong những phiên bản iPhone \"giá rẻ\" của bộ 3 iPhone 11 series nhưng iPhone 11 128GB vẫn sở hữu cho mình rất nhiều ưu điểm mà hiếm có một chiếc smartphone nào khác sở hữu.'),
('IP20', 'IP', 'Điện thoại iPhone 13 mini 128GB', 30, 18990000, 'iphone-13-mini-blue-128gb.jpg', 'iPhone 13 mini được Apple ra mắt với hàng loạt nâng cấp về cấu hình và các tính năng hữu ích, lại có thiết kế vừa vặn. Chiếc điện thoại này hứa hẹn là một thiết bị hoàn hảo hướng tới những khách hàng thích sự nhỏ gọn nhưng vẫn giữ được sự mạnh mẽ bên trong. '),
('IP21', 'IP', 'Điện thoại iPhone 13 mini 256GB ', 30, 24290000, 'iphone-13-mini-blue-256gb.jpg', 'Apple đã chính thức giới thiệu đến người dùng cũng như iFan chiếc điện thoại với hàng loạt tính năng thông minh, từ con chip Apple A15 Bionic hiệu năng đầy mạnh mẽ đến thiết kế vô cùng sang trọng có tên là iPhone 13 mini.'),
('IP22', 'IP', 'Điện thoại iPhone 13 mini 512GB ', 30, 28290000, 'iphone-13-mini-midnight-512gb.jpg', 'iPhone 13 mini 512 GB là chiếc điện thoại có thiết kế nhỏ gọn, ngoại hình khá là dễ thương khi nằm gọn trong bàn tay nhưng lại gây bất ngờ hơn nữa với sức mạnh hiệu năng đáng kinh ngạc, màn hình OLED siêu nét cùng camera nhiếp ảnh chuyên nghiệp.'),
('IP23', 'IP', 'Điện thoại iPhone 13 Pro 1TB Xanh lá ', 30, 43490000, 'iphone-13-pro-1tb-xanh-la-1T.jpg', ''),
('IP24', 'IP', 'Điện thoại iPhone 13 Pro 256GB Xanh lá', 30, 34190000, 'iphone-13-pro-256gb-xanh-la-256.jpg', 'iPhone 13 Pro là lựa chọn khá tốt cho những người thích sự nhỏ gọn những lại yêu cầu các thông số cao cấp gần bằng iPhone 13 Pro Max. Mới đây thì Apple đã ra mắt phiên bản iPhone 13 Pro 256GB Xanh lá, điều này càng làm cho iFans thích thú bởi màu sắc khá bắt trend.'),
('IP25', 'IP', 'Điện thoại iPhone 13 Pro 512GB Xanh lá', 30, 40290000, 'iphone-13-pro-512gb-xanh-la-512.jpg', 'iPhone 13 Pro là lựa chọn khá tốt cho những người thích sự nhỏ gọn những lại yêu cầu các thông số cao cấp gần bằng iPhone 13 Pro Max. Mới đây thì Apple đã ra mắt phiên bản iPhone 13 Pro 512GB Xanh lá, điều này càng làm cho iFans thích thú bởi màu sắc khá bắt trend.'),
('IP26', 'IP', 'Điện thoại iPhone 13 Pro 256GB ', 30, 30990000, 'iphone-13-pro-gold-256.jpg', 'Một trong những tuyệt tác của Apple đáng nhớ nhất năm 2021 chắc chắn không thể thiếu cái tên iPhone 13 Pro. Sang chảnh về thiết kế, vượt trội về hiệu năng, quay phim chuyên nghiệp, pin \"trâu\", iPhone 13 Pro hứa hẹn sẽ mang đến những khoảnh khắc đầy thú vị cho bạn mỗi ngày.'),
('IP27', 'IP', 'Điện thoại iPhone 13 Pro 512GB ', 30, 40290000, 'iphone-13-pro-graphite512.jpg', 'iPhone 13 Pro 512GB - chiếc điện thoại nằm trong iPhone 13 Series của Apple, mang những cải tiến ấn tượng từ trong cấu hình, chất lượng cụm camera đến thời lượng pin sử dụng, chắc chắn sẽ cho bạn những trải nghiệm đầy mỹ mãn dành cho 1 phiên bản mới “hoành tráng” của nhà táo.'),
('IP28', 'IP', 'Điện thoại iPhone 13 Pro Max 256GB Xanh lá', 30, 36990000, 'iphone-13-pro-max-256gb-xanh-la-256.jpg', 'Là một phiên bản nâng cấp từ chiếc iPhone 13 Pro Max 128GB Xanh lá thì trên chiếc iPhone 13 Pro Max 256GB Xanh lá sẽ có một bộ nhớ lớn hơn cho bạn lưu trữ thoải mái hơn những vẫn giữ được màu xanh lá bắt mắt và chất lượng, cấu hình siêu cao, sử dụng bao mượt mà.'),
('IP29', 'IP', 'Điện thoại iPhone 13 Pro Max 512GB Xanh lá', 30, 43290000, 'iphone-13-pro-max-512gb-xanh-la-512.jpg', 'Nếu phiên bản iPhone 13 Pro Max 256GB Xanh lá chưa đủ làm bạn thỏa mãn về nhu cầu bộ nhớ thì hãy thử bỏ ra thêm một ít tiền để có thể nâng cấp lên phiên bản iPhone 13 Pro Max 512GB Xanh lá để có không gian lưu trữ tốt hơn và vẫn có được trải nghiệm siêu mượt mà nhé.'),
('IP3', 'IP', 'Điện thoại iPhone 12 256GB', 30, 22490000, 'iphone-12-den-256gb.jpg', 'iPhone 12 256 GB được Apple cho ra mắt đã đem đến làn sóng mạnh mẽ đối với những ai yêu công nghệ nói chung và “fan hâm mộ” trung thành của iPhone nói riêng, với con chip mạnh, dung lượng lưu trữ lớn cùng thiết kế toàn diện và khả năng hiển thị hình ảnh xuất sắc.'),
('IP30', 'IP', 'Điện thoại iPhone 13 Pro Max 1TB ', 30, 46690000, 'iphone-13-pro-max-gold-1T.jpg', 'iPhone 13 Pro Max 1 TB thuộc phân khúc điện thoại cao cấp mà không một iFan nào có thể bỏ qua, với màn hình lớn sắc nét, cấu hình vượt trội, dung lượng lưu trữ \"khủng\", thời gian sử dụng dài, mỗi lần trải nghiệm đều cho bạn cảm giác thỏa mãn đáng ngạc nhiên.'),
('IP31', 'IP', 'Điện thoại iPhone 13 Pro Max 128GB ', 30, 33990000, 'iphone-13-pro-max-gold-128.jpg', 'iPhone 13 Pro Max 128 GB - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.'),
('IP32', 'IP', 'Điện thoại iPhone 13 Pro Max 256GB', 30, 36990000, 'iphone-13-pro-max-gold-256.jpg', 'iPhone 13 Pro Max 256 GB - siêu phẩm mang trên mình bộ vi xử lý Apple A15 Bionic hàng đầu, màn hình Super Retina XDR 120 Hz, cụm camera khẩu độ f/1.5 cực lớn, tất cả sẽ mang lại cho bạn những trải nghiệm tuyệt vời chưa từng có.'),
('IP33', 'IP', 'Điện thoại iPhone 13 Pro Max 512GB ', 30, 43290000, 'iphone-13-pro-max-graphite-512.jpg', 'iPhone 13 Pro Max 512 GB một siêu phẩm đến từ nhà Apple chắc chắn đang được rất nhiều sự quan tâm từ iFan. Chiếc điện thoại này sở hữu màn hình siêu đẹp, hiệu năng bức phá từ con chip Apple A15 Bionic sẽ cho bạn trải nghiệm tuyệt vời, từ những tác vụ thông thường cho đến các ứng dụng chuyên nghiệp.'),
('IP34', 'IP', 'Điện thoại iPhone 13 Pro Max 128GB ', 30, 33990000, 'iphone-13-pro-max-xanh-la-128.jpg', 'iPhone 13 Pro Max 128 GB - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.'),
('IP35', 'IP', 'Điện thoại iPhone 13 Pro 128GB', 30, 29990000, 'iphone-13-pro-sierra-blue-128.jpg', 'Mỗi lần ra mắt phiên bản mới là mỗi lần iPhone chiếm sóng trên khắp các mặt trận và lần này cái tên khiến vô số người \"sục sôi\" là iPhone 13 Pro, chiếc điện thoại thông minh vẫn giữ nguyên thiết kế cao cấp, cụm 3 camera được nâng cấp, cấu hình mạnh mẽ cùng thời lượng pin lớn ấn tượng. '),
('IP36', 'IP', 'Điện thoại iPhone 13 Pro 1TB ', 30, 41190000, 'iphone-13-pro-silver-1T.jpg', 'Cùng trải nghiệm một phiên bản iPhone có bộ nhớ trong lớn nhất từ trước đến nay, sở hữu dung lượng lưu trữ lên đến 1 TB, tương tự với các phiên bản khác máy vẫn có một màn hình siêu đẹp cùng hiệu năng vô cùng mạnh mẽ đó chính là iPhone 13 Pro 1TB.'),
('IP37', 'IP', 'Điện thoại iPhone 13 Pro 128GB Xanh lá ', 30, 29990000, 'iphone-13-pro-xanh-la-128.jpg', 'iPhone 13 Pro là lựa chọn khá tốt cho những người thích sự nhỏ gọn những lại yêu cầu các thông số cao cấp gần bằng iPhone 13 Pro Max. Mới đây thì Apple đã ra mắt phiên bản iPhone 13 Pro 128GB Xanh lá, điều này càng làm cho iFans thích thú bởi màu sắc khá bắt trend.'),
('IP38', 'IP', 'Điện thoại iPhone 13 256GB', 30, 27290000, 'iphone-13-starlight-256gb.jpg', 'Apple thỏa mãn sự chờ đón của iFan và người dùng với sự ra mắt của iPhone 13. Dù ngoại hình không có nhiều thay đổi so với iPhone 12 nhưng với cấu hình mạnh mẽ hơn, đặc biệt pin “trâu” hơn và khả năng quay phim chụp ảnh cũng ấn tượng hơn, hứa hẹn mang đến những trải nghiệm thú vị trên phiên bản mới này.'),
('IP39', 'IP', 'Điện thoại iPhone SE 64GB (2020) ', 30, 9930000, 'iphone-se-2020.jpg', 'iPhone SE 2020 đã bất ngờ ra mắt với thiết kế 4.7 inch nhỏ gọn, chip A13 Bionic mạnh mẽ như trên iPhone 11 và đặc biệt sở hữu mức giá tốt chưa từng có.'),
('IP4', 'IP', 'Điện thoại iPhone 12 mini 128GB', 30, 16990000, 'iphone-12-mini_128gb.jpg', 'Apple tiếp tục khẳng định vị thế của mình khi cho ra mắt mẫu iPhone 12 series với nhiều điểm được tối ưu hơn, nâng cấp mạnh hơn. Trong đó, iPhone 12 mini 128 GB được ví như là phiên bản thu nhỏ hơn là bản rút gọn với cấu hình không khác gì mấy anh lớn có mức giá hấp dẫn hơn.'),
('IP40', 'IP', 'Điện thoại iPhone SE 256GB (2020) (Hộp mới) ', 30, 15890000, 'iphone-se-2020_256gb.jpg', 'iPhone SE 256GB 2020 cuối cùng đã được Apple ra mắt, với ngoại hình nhỏ gọn được sao chép từ iPhone 8 nhưng mang trong mình một hiệu năng mạnh mẽ với vi xử lý A13 Bionic, mức giá hấp dẫn hứa hẹn sẽ là yếu tố “hút khách” của smartphone đình đám đến từ nhà Táo khuyết.'),
('IP41', 'IP', 'Điện thoại iPhone SE 256GB (2020) (Hộp mới) ', 30, 15890000, 'iphone-se-black_256gb.jpg', 'iPhone SE 256GB 2020 cuối cùng đã được Apple ra mắt, với ngoại hình nhỏ gọn được sao chép từ iPhone 8 nhưng mang trong mình một hiệu năng mạnh mẽ với vi xử lý A13 Bionic, mức giá hấp dẫn hứa hẹn sẽ là yếu tố “hút khách” của smartphone đình đám đến từ nhà Táo khuyết.'),
('IP42', 'IP', 'Điện thoại iPhone 11 64GB ', 30, 16290000, 'iphone-xi-do-64.jpg', 'Apple đã chính thức trình làng bộ 3 siêu phẩm iPhone 11, trong đó phiên bản iPhone 11 64GB có mức giá rẻ nhất nhưng vẫn được nâng cấp mạnh mẽ như iPhone Xr ra mắt trước đó.'),
('IP43', 'IP', 'Điện thoại iPhone XR 128GB ', 30, 13490000, 'iphone-xr-128gb.jpg', 'Được xem là phiên bản iPhone giá rẻ đầy hoàn hảo, iPhone Xr 128GB khiến người dùng có nhiều sự lựa chọn hơn về màu sắc đa dạng nhưng vẫn sở hữu cấu hình mạnh mẽ và thiết kế sang trọng.'),
('IP44', 'IP', 'Điện thoại iPhone SE 64GB (2020) (Hộp mới)', 30, 10690000, 'SE_65GB.jpg', 'iPhone SE 2020 đã bất ngờ ra mắt với thiết kế 4.7 inch nhỏ gọn, chip A13 Bionic mạnh mẽ như trên iPhone 11 và đặc biệt sở hữu mức giá tốt chưa từng có.'),
('IP45', 'IP', 'Điện thoại iPhone SE 128GB (2020) (Hộp mới)', 30, 11990000, 'SE_128GB.jpg', 'iPhone SE 128GB (2020) cũng đã được cho ra mắt làm thỏa mãn triệu tín đồ Táo khuyết. Máy sở hữu thiết kế siêu nhỏ gọn như iPhone 8, chip A13 Bionic cho hiệu năng khủng như iPhone 11, nhưng iPhone SE 2020 lại có một mức giá tốt đến bất ngờ.'),
('IP5', 'IP', 'Điện thoại iPhone 12 mini 256GB', 30, 21390000, 'iphone-12-mini-den-256gb.jpg', 'Apple giới thiệu đến người dùng 4 phiên bản iPhone mới trong sự kiện Hi, Speed! ngày 14/10, trong đó có iPhone 12 mini 256 GB, đây là sản phẩm hỗ trợ 5G có thiết kế nhỏ nhất, nhẹ nhất, mỏng nhất trên thế giới cho đến thời điểm hiện tại (10/2020).'),
('IP6', 'IP', 'Điện thoại iPhone 12 mini 64GB', 30, 16890000, 'iphone-12-mini-mau-tim_64gb.jpg', 'iPhone 12 mini 64 GB tuy là phiên bản thấp nhất trong bộ 4 iPhone 12 series, nhưng vẫn sở hữu những ưu điểm vượt trội về kích thước nhỏ gọn, tiện lợi, hiệu năng đỉnh cao, tính năng sạc nhanh cùng bộ camera chất lượng cao.'),
('IP7', 'IP', 'Điện thoại iPhone 12 Pro Max 256GB', 30, 30690000, 'iphone-12-pro-max-vang-512.jpg', 'Chiếc điện thoại iPhone 12 Pro Max 256 GB là mẫu smartphone sở hữu nhiều tính năng nổi bật với hệ thống camera chất lượng, hiệu năng vượt trội hay hỗ trợ kết nối 5G hứa hẹn sẽ là mẫu sản phẩm mang lại cảm giác trải nghiệm tối ưu cho người dùng.'),
('IP8', 'IP', 'Điện thoại iPhone 12 Pro 128GB ', 30, 25290000, 'iphone-12-pro-max-xam-128.jpg', 'iPhone 12 Pro - \"Siêu phẩm công nghệ\" với nhiều nâng cấp mạnh mẽ về thiết kế, cấu hình và hiệu năng, khẳng định đẳng cấp thời thượng trên thị trường smartphone cao cấp.'),
('IP9', 'IP', 'Điện thoại iPhone 12 Pro 256GB ', 30, 26290000, 'iphone-12-pro-xam-256gb.jpg', 'iPhone 12 Pro 256 GB khi được ra mắt đã có sự thay đổi lớn về thiết kế bên ngoài và chứa đựng một hiệu năng cực khủng bên trong, kèm theo đó là một loạt các công nghệ ấn tượng về camera, kết nối 5G lần đầu được xuất hiện.'),
('IT1', 'IT', 'Điện thoại Itel L6502', 30, 2490000, 'itel-l6502-xanh-ngoc-thumb.jpg', 'Sở hữu một smartphone có ngoại hình đẹp với cấu hình tốt, giá rẻ không còn là điều không tưởng với Itel L6502, một phiên bản đẹp, giá tốt đến từ Itel đã sẵn sàng cho bạn trải nghiệm.'),
('IT2', 'IT', 'Điện thoại Itel L6006', 30, 2190000, 'itel-l6006-violet.jpg', 'Itel L6006 đến từ thương hiệu Itel phù hợp với những ai đang tìm kiếm cho mình một chiếc smartphone giá rẻ với cấu hình ổn định, được trang bị đầy đủ các tính năng thông dụng và có giá thành phải chăng.'),
('IT3', 'IT', 'Điện thoại Itel it9200 4G', 30, 700000, 'itel-it9200-xanh.jpg', 'Itel it9200 là chiếc điện thoại phổ thông hỗ trợ đầy đủ các tính năng như một smartphone với các tính năng đàm thoại, quay phim chụp ảnh, đặc biệt còn hỗ trợ mạng 4G tốc độ cao, một lựa chọn hoàn hảo cho những ai có nhu cầu sử dụng liên lạc giải trí hàng ngày.'),
('IT4', 'IT', 'Điện thoại Itel it9210 4G ', 30, 680000, 'itel-it9210-black.jpg', 'Itel it9210 4G - là chiếc điện thoại phổ thông được trang bị thêm khả năng quay phim chụp ảnh, nghe nhạc với cách thức sử dụng đơn giản. Khá bất ngờ khi máy hỗ trợ kết nối Wifi cùng mạng 4G, mang lại khả năng lướt web, nghe nhạc trực tuyến vô cùng tiện ích.'),
('IT5', 'IT', 'Điện thoại Itel Value 100', 30, 390000, 'itel-value-100-red.jpg', 'Itel Value 100 là một chiếc điện thoại với mức giá \"siêu rẻ\" giúp bạn có thể đáp ứng nhu cầu nghe gọi nhắn tin cơ bản với một thời gian sử dụng lâu dài.'),
('KH12', 'MT', '123', 8988888, 22, 'Screenshot 2022-04-24 164059.png', '   hihi\r\n                '),
('MT1', 'MT', 'Điện thoại Masstel FAMI 12 4G ', 30, 650000, 'Masstel-FAMI-12-4G-vang-thumb.jpg', 'Masstel Fami 12 4G có giao diện hiển thị to, rõ ràng, phông chữ lớn tiện lợi dễ dàng sử dụng, phù hợp với các bậc phụ huynh, người lớn tuổi.'),
('MT2', 'MT', 'Điện thoại Masstel FAMI 60 4G ', 30, 750000, 'masstel-fami-60-thumb.jpeg', 'Masstel Fami 60 là chiếc điện thoại phổ thông dành tặng riêng cho người cao tuổi với thiết kế gọn gàng, màn hình rõ nét và cụm loa ngoài cực lớn cùng pin “siêu trâu”, hỗ trợ công nghệ đàm thoại LTE 4G, hứa hẹn sẽ đáp ứng hoàn hảo nhu cầu giải trí cơ bản, liên lạc của bạn.'),
('MT3', 'MT', 'Điện thoại Masstel IZI 10 4G', 30, 500000, 'masstel-izi-10-4g-xanh-thumb.jpg', 'Masstel IZI 10 4G là 1 phiên bản \"cục gạch\" khác của nhà Masstel có tích hợp 4G mang lại trải nghiệm nghe gọi cực tốt, cùng thiết kế thân thiện dễ dùng, có hỗ trợ khe cắm thẻ nhớ và dung lượng pin tốt, rất đáng lựa chọn.'),
('MT4', 'MT', 'Điện thoại Masstel IZI 20 4G ', 30, 550000, 'masstel-izi-20-4g-thumb.jpg', 'Masstel IZI 20 4G, một chiếc điện thoại phổ thông sở hữu thiết kế cơ bản, bền bỉ cùng thời lượng pin dài lâu. Sự lựa chọn tối ưu cho những ai đang cần một thiết bị di động nhỏ gọn chuyên để liên lạc làm việc.'),
('MT5', 'MT', 'Điện thoại Masstel IZI 55 4G', 30, 700000, 'masstel-izi-55-thumb.jpeg', 'Masstel trình làng Masstel IZI 55 mẫu điện thoại phổ thông hỗ trợ 4G VoLTE thuộc series IZI, sở hữu thiết kế thân thiện, chip xử lý Unisoc, thời lượng pin ấn tượng và nhiều tính năng tiện ích.'),
('MT6', 'MT', 'Điện thoại Masstel IZI 112', 30, 200000, 'masstel-izi-112-den.jpg', 'Masstel IZI 112 là một chiếc điện thoại với mức giá \"siêu rẻ\" sẽ đáp ứng nhu cầu cơ bản cho người dùng muốn một chiếc máy để nghe gọi trong thời gian dài hay những người lớn tuổi có nhu cầu sử dụng cơ bản.'),
('MT7', 'MT', 'Điện thoại Masstel IZI 230', 30, 350000, 'masstel-izi-230-vang-dong.jpg', 'Masstel IZI 230 là chiếc điện thoại phổ thông 2 sim 2 sóng cho những ai ưa thích 1 thiết bị nhỏ gọn, viên pin lên tới 1700 mAh đáp ứng nhu cầu nghe gọi cơ bản hàng ngày.'),
('MT8', 'MT', 'Điện thoại Masstel IZI 300', 30, 450000, 'masstel-izi-300-black.jpg', 'Thêm một lựa chọn mới trong phân khúc điện thoại phổ thông tới từ Masstel IZI 300, một sản phẩm nhỏ nhắn đi kèm nhiều tính năng giải trí hấp dẫn cùng một viên pin cực khủng'),
('NK1', 'NK', 'Điện thoại Nokia G10 ', 30, 3690000, 'Nokia g10 xanh duong.jpg', 'Nokia G10 cùng với Nokia G20 là bộ đôi smartphone đầu tiên thuộc dòng G-series của Nokia, người dùng sẽ trải nghiệm lâu dài với dung lượng pin lớn, thiết kế thời trang và hoạt động trên hệ điều hành Android 11 nguyên bản, tối ưu sự mượt mà và hỗ trợ cập nhật đến 3 năm.'),
('NK2', 'NK', 'Điện thoại Nokia 105 4G', 30, 750000, 'nokia-105-4g-blue.jpg', 'Nokia 105 4G - Chiếc điện thoại phổ thông nổi bật với thiết kế sang trọng, khả năng nghe gọi bền bỉ trong thời gian dài, hỗ trợ công nghệ 4G cùng nhiều tiện ích giải trí hấp dẫn khác đến từ nhà Nokia.'),
('NK3', 'NK', 'Điện thoại Nokia 105 Single SIM', 30, 480000, 'nokia-105-2019-black.jpg', 'Nokia 105 Single SIM (2019) là sự lựa chọn hàng đầu cho những người dùng muốn một chiếc điện thoại cục gạch với độ bền cao và tới từ thương hiệu Nokia vốn đã tạo được lòng tin từ người dùng.'),
('NK4', 'NK', 'Điện thoại Nokia 110 4G', 30, 850000, 'nokia-110-4g-yellow.jpg', 'Nokia chính thức trình làng chiếc điện thoại Nokia 110 4G phiên bản nâng cấp của Nokia 110 2019 có điểm nhấn chính là công nghệ kết nối Internet 4G thỏa thích trải nghiệm mọi lúc, mọi nơi cùng với một thiết kế vô cùng mới mẻ và sang trọng.'),
('NK5', 'NK', 'Điện thoại Nokia 110', 30, 750000, 'nokia-110-2019-green.jpg', 'Nhắc đến những chiếc điện thoại cục gạch với thời lượng pin trâu để sử dụng nhiều ngày thì không thể không nhắc tới Nokia và hãng này cũng tiếp tục giới thiệu chiếc Nokia 110 (2019) để tiếp nối ưu điểm này.'),
('NK6', 'NK', 'Điện thoại Nokia 215 4G', 30, 900000, 'nokia-215-xanh-ngoc.jpg', 'Nokia 215 4G chiếc điện thoại phổ thông ngoài các chức năng cơ bản thì máy đã được nâng cấp với sự hỗ trợ kết nối mạng 4G mang đến nhiều trải nghiệm hơn cho người dùng.'),
('NK7', 'NK', 'Điện thoại Nokia C20', 30, 2490000, 'nokia-c20-vang.jpg', 'Nokia C20 sở hữu thiết kế và cấu hình được tối giản nhưng vẫn có đầy đủ tính năng giải trí đa phương tiện của smartphone thông thường. Với một mức giá siêu hấp dẫn là người dùng phổ thông đã có trong tay mẫu điện thoại giá rẻ đến từ Nokia. '),
('NK8', 'NK', 'Điện thoại Nokia C30 ', 30, 3450000, 'nokia-c30-xanh-la.jpg', 'Nokia C30 là dòng smartphone giá rẻ được Nokia chăm chút và đầu tư kỹ lưỡng với những nâng cấp đáng kể về hiệu năng camera cùng viên pin cực khủng so với Nokia C20 đem lại trải nghiệm tuyệt vời hơn thế hệ tiền nhiệm của mình.'),
('OP1', 'OP', 'Điện thoại OPPO A15s', 30, 4290000, 'oppo-a15s-xanh.jpg', 'Chiếc điện thoại OPPO A15s là một phiên bản nâng cấp của OPPO A15, có cấu hình ấn tượng trong tầm giá đủ để người dùng thỏa sức làm việc và giải trí khi cần thiết.'),
('OP10', 'OP', 'Điện thoại OPPO Find X3 Pro 5G', 30, 8990000, 'oppo-find-x3-pro-blue.jpg', 'OPPO đã làm khuynh đảo thị trường smartphone khi cho ra đời chiếc điện thoại OPPO Find X3 Pro 5G. Đây là một sản phẩm có thiết kế độc đáo, sở hữu cụm camera khủng, cấu hình thuộc top đầu trong thế giới Android'),
('OP11', 'OP', 'Điện thoại OPPO Reno4 Pro', 30, 10490000, 'oppo-reno4-pro.jpg', 'OPPO chính thức trình làng chiếc smartphone có tên OPPO Reno4 Pro. Máy trang bị cấu hình vô cùng cao cấp với vi xử lý chip Snapdragon 720G, bộ 4 camera đến 48 MP ấn tượng, cùng công nghệ sạc siêu nhanh 65 W nhưng được bán với mức giá vô ưu đãi, dễ tiếp cận.'),
('OP12', 'OP', 'Điện thoại OPPO Reno5 5G ', 30, 8990000, 'oppo-reno5-5g-thumb.jpg', 'OPPO đã trình làng OPPO Reno5 5G phiên bản kết nối 5G internet siêu nhanh ra thị trường. Chiếc điện thoại với hàng loạt các tính năng nổi bật cùng vẻ ngoài thời thượng giúp tôn lên vẻ sang trọng cho người sở hữu.'),
('OP13', 'OP', 'Điện thoại OPPO Reno6 5G', 30, 12690000, 'oppo-reno6-5g-black.jpg', 'Sau khi ra mắt OPPO Reno5 chưa lâu thì OPPO lại cho ra mẫu smartphone mới mang tên OPPO Reno6 với hàng loạt cải tiến mới về ngoại hình bên ngoài lẫn hiệu năng bên trong, mang đến trải nghiệm vượt bật cho người dùng.'),
('OP14', 'OP', 'Điện thoại OPPO Reno6 Pro 5G', 30, 18990000, 'oppo-reno6-pro-blue.jpg', 'OPPO Reno6 Pro 5G - một sản phẩm thuộc dòng Reno6 của OPPO, thỏa mãn những gì người tiêu dùng đã trông đợi với cấu hình khủng cùng hệ thống camera cực ấn tượng và ngoại hình bắt mắt, thật hào hứng mong chờ để được trải nghiệm.'),
('OP15', 'OP', 'Điện thoại OPPO Reno6 Z 5G', 30, 9490000, 'oppo-reno6-z-5g-aurora.jpg', 'Reno6 Z 5G đến từ nhà OPPO với hàng loạt sự nâng cấp và cải tiến không chỉ ngoại hình bên ngoài mà còn sức mạnh bên trong. Đặc biệt, chiếc điện thoại được hãng đánh giá “chuyên gia chân dung bắt trọn mọi cảm xúc chân thật nhất”, đây chắc chắn sẽ là một “siêu phẩm\" mà bạn không thể bỏ qua.'),
('OP16', 'OP', 'Điện thoại OPPO Reno7 5G', 30, 12990000, 'oppo-reno7-5g-den-thumB.jpg', 'OPPO Reno7 Z 5G được OPPO ra mắt với thiết kế độc đáo, trẻ trung, trang bị bộ ba camera 64 MP, thời lượng pin lớn cùng nhiều tính năng nổi bật thú vị, đáp ứng tốt mọi nhu cầu sử dụng cho bạn tha hồ khám phá.'),
('OP17', 'OP', 'Điện thoại OPPO Reno7 Z 5G', 30, 10490000, 'oppo-reno7-z-5g-thumb.jpg', 'OPPO Reno7 Z 5G được OPPO ra mắt với thiết kế độc đáo, trẻ trung, trang bị bộ ba camera 64 MP, thời lượng pin lớn cùng nhiều tính năng nổi bật thú vị, đáp ứng tốt mọi nhu cầu sử dụng cho bạn tha hồ khám phá.'),
('OP2', 'OP', 'Điện thoại OPPO A16K', 30, 3290000, 'oppo-a16k-thumb1.jpg', 'OPPO chính thức trình làng mẫu smartphone giá rẻ - OPPO A16K sở hữu màu sắc thời thượng, viên pin dung lượng cao, cấu hình khỏe, selfie lung linh, một lựa chọn thú vị cho người tiêu dùng.'),
('OP3', 'OP', 'Điện thoại OPPO A16', 30, 3990000, 'oppo-a16-silver.jpg', 'OPPO A16 - sản phẩm giá rẻ đến từ nhà OPPO, đây là một chiếc điện thoại cân bằng ở mọi khía cạnh trong tầm giá, máy có thiết kế đẹp mắt, sử dụng CPU gaming đến từ MediaTek cùng viên pin siêu trâu.'),
('OP4', 'OP', 'Điện thoại OPPO A55 ', 30, 4990000, 'oppo-a55-4g-black.jpg', 'OPPO cho ra mắt OPPO A55 4G chiếc smartphone giá rẻ tầm trung có thiết kế đẹp mắt, cấu hình khá ổn, cụm camera chất lượng và dung lượng pin ấn tượng, mang đến một lựa chọn trải nghiệm thú vị vừa túi tiền cho người tiêu dùng.'),
('OP5', 'OP', 'Điện thoại OPPO A74 5G', 30, 7990000, 'oppo-a74-5g-silver.jpg', 'OPPO A74 5G mẫu điện thoại có kết nối 5G với mức giá tốt của OPPO. Máy có thiết kế tinh tế, màn hình 90 Hz mượt mà và cụm camera làm đẹp AI sẽ là những điểm nhấn “đáng tiền” trên mẫu điện thoại này.'),
('OP6', 'OP', 'Điện thoại OPPO A74', 30, 6690000, 'oppo-a74-blue.jpg', 'OPPO luôn đa dạng hoá các sản phẩm của mình từ giá rẻ cho đến cao cấp. Trong đó, điện thoại OPPO A74 4G được nằm trong phân khúc tầm trung rất đáng chú ý với nhiều tính năng và smartphone cũng chính là bản nâng cấp của OPPO A73 ra mắt trước đó.'),
('OP7', 'OP', 'Điện thoại OPPO A76', 30, 5990000, 'OPPO-A76-đen.jpg', 'OPPO A76 4G ra mắt với thiết kế trẻ trung, hiệu năng ổn định, màn hình 90 Hz mượt mà cùng viên pin trâu cho thời gian sử dụng lâu dài phù hợp cho mọi đối tượng người dùng.'),
('OP8', 'OP', 'Điện thoại OPPO A94', 30, 8990000, 'oppo-a94-black-thumb.jpg', 'Mẫu smartphone tầm trung của OPPO - OPPO A94 đã được giới thiệu đến người dùng với nhiều cải tiến nổi trội về thiết kế, pin và camera cũng như kế thừa những điểm mạnh của OPPO A93.'),
('OP9', 'OP', 'Điện thoại OPPO A95', 30, 6990000, 'oppo-a95-4g-bac-.jpg', 'Bên cạnh phiên bản 5G, OPPO còn bổ sung phiên bản OPPO A95 4G với giá thành phải chăng tập trung vào thiết kế năng động, sạc nhanh và hiệu năng đa nhiệm ấn tượng sẽ giúp cho cuộc sống của bạn thêm phần hấp dẫn, ngập tràn niềm vui.'),
('RM1', 'RM', 'Điện thoại Realme 7 Pro', 30, 8990000, 'realme-7-pro-bac.jpg', 'Chiếc điện thoại Realme 7 Pro của Realme chính thức ra mắt. Nổi bật với 4 camera sau AI chuyên nghiệp, cấu hình mạnh mẽ và công nghệ sạc cực nhanh SuperDart 65 W đi kèm nhiều tính năng nổi trội khác.'),
('RM10', 'RM', 'Điện thoại Realme C11 (2021)', 30, 2990000, 'realme-c11-2021-gray.jpg', 'Các dòng smartphone giá rẻ ngày càng được ưa chuộng trên thị trường di động, nắm bắt được nhu cầu đó Realme cũng đã cho ra mắt chiếc điện thoại Realme C11 (2021) là một phiên bản đồng tên gọi với Realme C11 ra mắt trước đó.'),
('RM11', 'RM', 'Điện thoại Realme C21-Y 3GB', 30, 3690000, 'realme-c21y-black.jpg', 'Realme C21-Y 3 GB là chiếc điện thoại nằm ở phân khúc giá rẻ với điểm nhấn thiết kế hình học sang trọng, bộ 3 camera chất lượng, hiệu năng đáp ứng khá tốt các nhu cầu và thời lượng pin tương đối dài hứa hẹn mang đến cho người dùng những trải nghiệm ấn tượng.'),
('RM12', 'RM', 'Điện thoại Realme C21Y 4GB', 30, 4290000, 'realme-c21-y-black.jpg', 'Realme C21-Y 4 GB là chiếc điện thoại nằm ở phân khúc giá rẻ với điểm nhấn thiết kế hình học sang trọng, bộ 3 camera chất lượng, hiệu năng đáp ứng khá tốt các nhu cầu và thời lượng pin tương đối dài hứa hẹn mang đến cho người dùng những trải nghiệm ấn tượng.'),
('RM13', 'RM', 'Điện thoại Realme C21Y 4GB', 30, 4290000, 'realme-c21y-blue.jpg', 'Realme C21Y chiếc điện thoại với thiết kế đẹp mắt, tinh tế hướng đến đối tượng người dùng phổ thông đang tìm kiếm một sản phẩm với cấu hình tốt, đầy đủ tính năng hấp dẫn và đặc biệt là pin khủng cho một ngày làm việc sử dụng lâu dài. '),
('RM14', 'RM', 'Điện thoại Realme C21-Y 3GB', 30, 3690000, 'realme-c21-y-blue.jpg', 'Realme C21Y chiếc điện thoại với thiết kế đẹp mắt, tinh tế hướng đến đối tượng người dùng phổ thông đang tìm kiếm một sản phẩm với cấu hình tốt, đầy đủ tính năng hấp dẫn và đặc biệt là pin khủng cho một ngày làm việc sử dụng lâu dài. '),
('RM15', 'RM', 'Điện thoại Realme C25 ', 30, 4690000, 'realme-c25-black.jpg', 'Realme đã giới thiệu đến người dung mẫu smartphone giá rẻ của hãng là Realme C25. Máy tập trung vào khả năng chơi game, có dung lượng pin “khủng”, hỗ trợ sạc nhanh và hệ thống ba camera 48 MP ấn tượng.'),
('RM16', 'RM', 'Điện thoại Realme C25s', 30, 4990000, 'realme-c25s-blue.jpg', 'Nối tiếp thành công của Realme C25, Realme đã cho ra mắt mẫu smartphone mang tên Realme C25s với nhiều tính năng vượt trội về camera, dung lượng pin, con chip mạnh mẽ và hơn hết là được bán ra với mức giá giá vô cùng tốt.'),
('RM17', 'RM', 'Điện thoại Realme C25Y 64GB', 30, 4690000, 'realme-c25y-64gb-xanh-thumb.jpeg', 'Realme C25Y 64GB - là chiếc smartphone được Realme cho ra mắt với một mức giá khá tốt, sở hữu thiết kế hiện đại với 3 camera AI lên đến 50 MP, hiệu suất ổn định cùng thời gian sử dụng lâu dài nhờ viên pin khủng 5000 mAh, được xem là một trong những sản phẩm lý tưởng mà bạn nên sở hữu.'),
('RM18', 'RM', 'Điện thoại Realme C25Y 128GB ', 30, 4990000, 'realme-c25y-blue.jpg', 'Realme C25Y là chiếc smartphone giá rẻ đáng mua với thiết kế cao cấp, cụm 3 camera Al phía sau cho khung hình quay chụp siêu nét, hiệu năng ổn định, thời lượng pin lớn và đính kèm nhiều tiện ích thú vị cho bạn tha hồ khám phá.'),
('RM19', 'RM', 'Điện thoại Realme C235', 30, 3990000, 'realme-c35-black-thumb.jpg', 'Realme C35 thuộc phân khúc giá rẻ được nhà Realme cho ra mắt với thiết kế trẻ trung, dung lượng pin lớn cùng camera hỗ trợ nhiều tính năng. Đây sẽ là thiết bị liên lạc, giải trí và làm việc ổn định,… cho các nhu cầu sử dụng của bạn.'),
('RM2', 'RM', 'Điện thoại Realme 8 5G ', 30, 7990000, 'realme-8-5g-blue.jpg', 'Không dừng lại ở Realme 8 và Realme 8 Pro, Realme tiếp tục gây ấn tượng khi ra mắt Realme 8 5G. Mẫu điện thoại sở hữu cấu hình phần cứng mới và hỗ trợ kết nối 5G hiện đại mang đến cho bạn những trải nghiệm tuyệt vời với tốc độ mạng cực nhanh dù ở bất cứ đâu. '),
('RM3', 'RM', 'Điện thoại Realme 8 Pro', 30, 8690000, 'realme-8-pro-vang.jpg', 'Bên cạnh Realme 8, Realme 8 Pro cũng được giới thiệu đến người tiêu dùng với điểm nhấn chính là sự xuất hiện của camera 108 MP siêu nét cùng công nghệ sạc SuperDart 50 W và đi kèm mức giá bán tầm trung rất lý tưởng.'),
('RM4', 'RM', 'Điện thoại Realme 8 ', 30, 7290000, 'realme-8-silver.jpg', 'Điện thoại Realme 8 được ra mắt nằm trong phân khúc tầm trung, có thiết kế đẹp mắt đặc trưng của Realme, smartphone trang bị hiệu năng bên trong đầy mạnh mẽ và có dung lượng pin tương đối lớn.'),
('RM5', 'RM', 'Điện thoại Realme 9i ', 30, 6490000, 'Realme-9i-xanh-thumb.jpg', 'Realme 9i được trang bị CPU Snapdragon 680 mang lại hiệu năng ổn định cho các tác vụ cơ bản. Con chip này được sản xuất trên tiến trình 6 nm tiên tiến nên nó có khả năng tiết kiệm năng lượng khá ấn tượng.'),
('RM6', 'RM', 'Điện thoại Realme 9 Pro+ 5G', 30, 9990000, 'realme-9-pro-plus-5g-blue-thumb.jpg', 'Realme 9 Pro+ 5G chiếc smartphone tầm trung của Realme đã được ra mắt, máy có một thiết kế đầy màu sắc, cụm 3 camera với cảm biến IMX766 giúp bạn có được những bức ảnh sinh động.'),
('RM7', 'RM', 'Điện thoại Realme 9 Pro 5G ', 30, 7990000, 'realme-9-pro-thumb.jpg', 'Realme 9 Pro - chiếc điện thoại tầm trung được Realme giới thiệu với thiết kế phản quang hoàn toàn mới, máy có một vẻ ngoài năng động, hiệu năng mạnh mẽ, cụm camera AI 64 MP và một tốc độ sạc ổn định.'),
('RM8', 'RM', 'Điện thoại Realme C11 (2021) 2GB/32GB', 30, 2990000, 'realme-c11-2021-2gb-32gb-xanh.jpg', 'Realme C11 (2021) 2GB/32GB của Realme nằm trong phân khúc smartphone giá rẻ nhưng có ngoại hình khá ổn và cụm camera chất lượng tốt cùng dung lượng pin ấn tượng, sẽ là 1 lựa chọn tốt cho nhu cầu sử dụng smartphone với các tính năng cơ bản thông dụng.'),
('RM9', 'RM', 'Điện thoại Realme C11 (2021) ', 30, 2990000, 'realme-c11-2021-blue.jpg', 'Các dòng smartphone giá rẻ ngày càng được ưa chuộng trên thị trường di động, nắm bắt được nhu cầu đó Realme cũng đã cho ra mắt chiếc điện thoại Realme C11 (2021) là một phiên bản đồng tên gọi với Realme C11 ra mắt trước đó.'),
('SS1', 'SS', 'Điện thoại Samsung Galaxy S22 5G 128GB', 30, 21999000, 'Galaxy-S22-Ultra-Burgundy-128.jpg', 'Samsung Galaxy S22 ra mắt với diện mạo vô cùng tinh tế và trẻ trung, mang trong mình thiết kế phẳng theo xu hướng thịnh hành, màn hình 120 Hz mượt mà, cụm camera AI 50 MP và bộ xử lý đến từ Qualcomm.'),
('SS10', 'SS', 'Điện thoại Samsung Galaxy A03 3GB', 30, 2990000, 'samsung-galaxy-a03-xanh-thumb.jpg', 'Samsung Galaxy A03 là chiếc điện thoại Galaxy A đầu tiên của nhà Samsung trong năm 2022 tại thị trường Việt Nam. Đây là sản phẩm có mức giá dễ tiếp cận, có camera chính đến 48 MP, pin 5000 mAh thoải mái sử dụng cả ngày.'),
('SS11', 'SS', 'Điện thoại Samsung Galaxy A12 6GB (2021)', 30, 4690000, 'samsung-galaxy-a12-2021-black.jpg', 'Galaxy A12 (6GB/128GB) 2021, một phiên bản smartphone giá rẻ với thiết kế đẹp, cấu hình tốt, trang bị cụm camera chất lượng vượt trội, hứa hẹn mang đến hiệu suất sử dụng cao trên cả các tác vụ giải trí và làm việc.'),
('SS12', 'SS', 'Điện thoại Samsung Galaxy A12 4GB (2021)', 30, 4290000, 'samsung-galaxy-a12-2021-blue.jpg', 'Galaxy A12 2021 chiếc điện thoại thông minh giá rẻ đến từ thương hiệu Samsung, nó sở hữu một cấu hình ổn định cùng với viên pin dung lượng lớn 5000 mAh đáp ứng đa dạng nhu cầu sử dụng của người tiêu dùng.'),
('SS13', 'SS', 'Điện thoại Samsung Galaxy A22', 30, 5890000, 'samsung-galaxy-a22-4g-mint.jpg', 'Samsung chào đón mùa hè 2021 bằng sự ra mắt của bộ đôi Galaxy A22 và Galaxy A22 5G với nhiều thông số ấn tượng. Trong đó, Galaxy A22 sở hữu viên pin đầy năng suất, hiệu năng gaming mạnh mẽ và màn hình lớn có khả năng hiển thị tốt.'),
('SS14', 'SS', 'Điện thoại Samsung Galaxy A32', 30, 6490000, 'samsung-galaxy-a32-4g-thumb-tim.jpg', 'Samsung Galaxy A32 4G là chiếc điện thoại thuộc phân khúc tầm trung nhưng sở hữu nhiều ưu điểm vượt trội về màn hình lớn sắc nét, bộ bốn camera 64 MP cùng vi xử lý hiệu năng cao và được bán ra với mức giá vô cùng tốt.'),
('SS15', 'SS', 'Điện thoại Samsung Galaxy A52 128GB', 30, 9290000, 'samsung-galaxy-a52-8gb-256gb-thumb-blue.jpg', 'Galaxy A52 (8GB/128GB) mẫu smartphone thuộc dòng Galaxy A của Samsung, với nhiều sự thay đổi lớn về thiết kế lẫn cấu hình, cung cấp những công nghệ đột phá, thiết lập tiêu chuẩn trải nghiệm mới cho người dùng ở phân khúc tầm trung.'),
('SS16', 'SS', 'Điện thoại Samsung Galaxy A52s 5G 128GB', 30, 10990000, 'samsung-galaxy-a52s-5g-mint-128.jpg', 'Samsung đã chính thức giới thiệu chiếc điện thoại Galaxy A52s 5G đến người dùng, đây phiên bản nâng cấp của Galaxy A52 5G ra mắt cách đây không lâu, với ngoại hình không đổi nhưng được nâng cấp đáng kể về thông số cấu hình bên trong.'),
('SS17', 'SS', 'Điện thoại Samsung Galaxy Note 20', 30, 15990000, 'samsung-galaxy-note.jpg', 'Tháng 8/2020, Galaxy Note 20 chính thức được lên kệ, với thiết kế camera trước nốt ruồi quen thuộc, cụm camera hình chữ nhật mới lạ cùng với vi xử lý Exynos 990 cao cấp của chính Samsung chắc hẳn sẽ mang lại một trải nghiệm thú vị cùng hiệu năng mạnh mẽ.'),
('SS18', 'SS', 'Điện thoại Samsung Galaxy S20 FE (8GB/256GB) ', 30, 15490000, 'samsung-galaxy-s20-256.jpg', 'Samsung đã giới thiệu đến người dùng thành viên mới của dòng điện thoại thông minh S20 Series đó chính là Samsung Galaxy S20 FE. Đây là mẫu flagship cao cấp quy tụ nhiều tính năng mà Samfan yêu thích, hứa hẹn sẽ mang lại trải nghiệm cao cấp của dòng Galaxy S với mức giá dễ tiếp cận hơn.'),
('SS19', 'SS', 'Điện thoại Samsung Galaxy S21 FE 5G (6GB/128GB)', 30, 14990000, 'Samsung-Galaxy-S21-FE-tim-128.jpg', 'Samsung Galaxy S21 FE 5G (6GB/128GB) được Samsung ra mắt với dáng dấp thời thượng, cấu hình khỏe, chụp ảnh đẹp với bộ 3 camera chất lượng, thời lượng pin đủ dùng hằng ngày và còn gì nữa? Mời bạn khám phá qua nội dung sau ngay.'),
('SS2', 'SS', 'Điện thoại Samsung Galaxy S22 5G 128GB', 30, 23490000, 'Galaxy-S22-Green-256.jpg', 'Galaxy S22 một trong những cái tên được nhiều người dùng quan tâm trong bộ 3 S22 series của nhà Samsung. Có thiết kế mỏng nhẹ, mặt lưng kính sang trọng cùng một cấu hình vô cùng mạnh mẽ, hứa hẹn đây sẽ là chiếc smartphone đáp ứng tốt nhiều nhu cầu của bạn với mức giá dễ tiếp'),
('SS20', 'SS', 'Điện thoại Samsung Galaxy S21 FE 5G (8GB/256GB) ', 30, 17990000, 'Samsung-Galaxy-S21-FE-vang-256.jpg', 'Samsung Galaxy S21 FE 5G - siêu phẩm hội tụ những đột phá mà mọi fan hằng mơ ước, hứa hẹn mang đến trải nghiệm đỉnh cao trong mọi khoảnh khắc với vẻ ngoài đầy năng động, hiệu năng mạnh mẽ với CPU cây nhà lá vườn Exynos 2100 cùng cụm camera 12 MP mang chất lượng chuẩn studio.'),
('SS21', 'SS', 'Điện thoại Samsung Galaxy S21 FE 5G (8GB/128GB)', 30, 15990000, 'samsung-galaxy-s21-plus-bac-128.jpg', 'Samsung Galaxy S21 FE 5G xuất hiện với 1 ngoại hình tinh tế, cụm camera thông minh hoạt động đầy ấn tượng và cấu hình mạnh mẽ từ chip Exynos 2100 nhà Samsung, chắc chắn sẽ thu phục cảm tình của bạn trên từng trải nghiệm.'),
('SS22', 'SS', 'Điện thoại Samsung Galaxy S21 FE 5G (6GB/128GB) ', 30, 14990000, 'samsung-galaxy-s21-tim-.jpg', 'Samsung Galaxy S21 FE 5G (6GB/128GB) được Samsung ra mắt với dáng dấp thời thượng, cấu hình khỏe, chụp ảnh đẹp với bộ 3 camera chất lượng, thời lượng pin đủ dùng hằng ngày và còn gì nữa? Mời bạn khám phá qua nội dung sau ngay.'),
('SS23', 'SS', 'Điện thoại Samsung Galaxy S21 Ultra 5G 128GB ', 30, 25990000, 'samsung-galaxy-s21-ultra-bac-600x600-128.jpg', 'Sự đẳng cấp được Samsung gửi gắm thông qua chiếc smartphone Galaxy S21 Ultra 5G với hàng loạt sự nâng cấp và cải tiến không chỉ ngoại hình bên ngoài mà còn sức mạnh bên trong, hứa hẹn đáp ứng trọn vẹn nhu cầu ngày càng cao của người dùng.'),
('SS24', 'SS', 'Điện thoại Samsung Galaxy Z Flip3 5G 128GB', 30, 21990000, 'samsung-galaxy-z-flip-3-cream-128.jpg', 'Trong sự kiện Galaxy Unpacked hồi 11/8, Samsung đã chính thức trình làng mẫu điện thoại màn hình gập thế hệ mới mang tên Galaxy Z Flip3 5G 128GB. Đây là một siêu phẩm với màn hình gập dạng vỏ sò cùng nhiều điểm cải tiến và thông số ấn tượng, sản phẩm chắc chắn sẽ thu hút được rất nhiều sự quan tâm của người dùng, đặc biệt là phái nữ.'),
('SS25', 'SS', 'Điện thoại Samsung Galaxy Z Flip3 5G 256GB', 30, 23990000, 'samsung-galaxy-z-flip-3-violet-256.jpg', 'Nối tiếp thành công của Galaxy Z Flip 5G, trong sự kiện Galaxy Unpacked vừa qua Samsung tiếp tục giới thiệu đến thế giới về Galaxy Z Flip3 5G 256GB. Sản phẩm có nhiều cải tiến từ độ bền cho đến hiệu năng và thậm chí nó còn vượt xa hơn mong đợi của mọi người.'),
('SS26', 'SS', 'Điện thoại Samsung Galaxy Z Fold3 5G 512GB', 30, 41990000, 'samsung-galaxy-z-fold-3-green-512.jpg', 'Galaxy Z Fold3 5G đánh dấu bước tiến mới của Samsung trong phân khúc điện thoại gập cao cấp khi được cải tiến về độ bền cùng những nâng cấp đáng giá về cấu hình hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột phá cho người dùng.'),
('SS27', 'SS', 'Điện thoại Samsung Galaxy Z Fold3 5G 256GB', 30, 3890000, 'samsung-galaxy-z-fold-3-silver-256.jpg', 'Galaxy Z Fold3 5G, chiếc điện thoại được nâng cấp toàn diện về nhiều mặt, đặc biệt đây là điện thoại màn hình gập đầu tiên trên thế giới có camera ẩn (08/2021). Sản phẩm sẽ là một “cú hit” của Samsung góp phần mang đến những trải nghiệm mới cho người dùng.'),
('SS28', 'SS', 'Điện thoại Samsung Galaxy Z Fold2 5G 512GB', 30, 35990000, 'samsung-galaxy-z-fold-2-den.jpg', 'Galaxy Z Fold3 5G, chiếc điện thoại được nâng cấp toàn diện về nhiều mặt, đặc biệt đây là điện thoại màn hình gập đầu tiên trên thế giới có camera ẩn (08/2021). Sản phẩm sẽ là một “cú hit” của Samsung góp phần mang đến những trải nghiệm mới cho người dùng.'),
('SS3', 'SS', 'Điện thoại Samsung Galaxy S22+ 5G 128GB', 30, 27490000, 'Galaxy-S22-Plus-Pink-256.jpg', 'Galaxy S22+ 5G cùng với Galaxy S22 5G và Galaxy S22 Ultra 5G đã được Samsung cho ra mắt vào ngày 09/02/2022. Máy nổi bật với cụm camera được cải tiến giúp bạn sáng tạo khoảnh khắc ấn tượng mỗi ngày, một vi xử lý mạnh mẽ cho mọi tác vụ sử dụng đều trở nên mượt mà hơn.'),
('SS4', 'SS', 'Điện thoại Samsung Galaxy S22+ 5G 128GB', 30, 27490000, 'Galaxy-S22-Plus-White-128.jpg', 'Galaxy S22+ 5G cùng với Galaxy S22 5G và Galaxy S22 Ultra 5G đã được Samsung cho ra mắt vào ngày 09/02/2022. Máy nổi bật với cụm camera được cải tiến giúp bạn sáng tạo khoảnh khắc ấn tượng mỗi ngày, một vi xử lý mạnh mẽ cho mọi tác vụ sử dụng đều trở nên mượt mà hơn.'),
('SS5', 'SS', 'Điện thoại Samsung Galaxy S22 Ultra 5G 512GB ', 30, 36990000, 'Galaxy-S22-Ultra-Black-512.jpg', 'Samsung Galaxy S22 Ultra 5G 512 GB là một \"siêu phẩm\" với bút S Pen nhanh hơn được tích hợp sẵn, nhiều cải tiến về camera, màn hình sáng hơn và sạc 45 W nhanh hơn.'),
('SS6', 'SS', 'Điện thoại Samsung Galaxy S22 Ultra 5G 128GB', 30, 30990000, 'Galaxy-S22-Ultra-Burgundy-128.jpg', 'Galaxy S22 Ultra 5G chiếc smartphone cao cấp nhất trong bộ 3 Galaxy S22 series mà Samsung đã cho ra mắt. Tích hợp bút S Pen hoàn hảo trong thân máy, trang bị vi xử lý mạnh mẽ cho các tác vụ sử dụng vô cùng mượt mà và nổi bật hơn với cụm camera không viền độc đáo mang đậm dấu ấn riêng.'),
('SS7', 'SS', 'Điện thoại Samsung Galaxy S22 Ultra 5G 256GB', 30, 33690000, 'Galaxy-S22-Ultra-Green-5G-256.jpg', 'Samsung Galaxy S22 Ultra 256GB - chiếc điện thoại Galaxy S đầu tiên sở hữu bút S Pen trong thân máy, được cung cấp sức mạnh bởi CPU đến từ Qualcomm, sở hữu thiết kế sang trọng, màn hình có nhiều cải tiến cùng cụm camera zoom 100x.'),
('SS8', 'SS', 'Điện thoại Samsung Galaxy A03 4GB', 30, 3490000, 'samsung-galaxy-a03-den-thumb.jpg', 'Samsung Galaxy A03 4GB có thiết kế vân đan chéo trẻ trung, sở hữu camera độ phân giải đến 48 MP, pin thoải mái sử dụng trong một ngày và đây cũng là sản phẩm dòng A đầu tiên ra mắt năm 2022 của Samsung tại thị trường Việt Nam.'),
('SS9', 'SS', 'Điện thoại Samsung Galaxy A03s', 30, 3690000, 'samsung-galaxy-a03s-black.jpg', 'Nhằm đem đến cho người dùng thêm sự lựa chọn trong phân khúc, Samsung đã cho ra mắt thêm một chiếc điện thoại giá rẻ với tên gọi Galaxy A03s. So với người tiền nhiệm Galaxy A02s, thiết bị sẽ có một số nâng cấp mới, đây hứa hẹn sẽ là sản phẩm đáng để bạn trải nghiệm.'),
('VV1', 'VV', 'Điện thoại Vivo V21 5G', 30, 9990000, 'vivo-v21-5g-xanh-den.jpg', 'Chụp selfie bùng nổ trong đêm, thiết kế mới hiện đại đón đầu xu hướng, cùng với đó là tốc độ kết nối mạng 5G hàng đầu, tất cả những tính năng ấn tượng này đều có trong Vivo V21 5G mẫu điện thoại cận cao cấp đến từ Vivo.'),
('VV10', 'VV', 'Điện thoại Vivo Y21 ', 30, 4290000, 'vivo-y21-white.jpg', 'Vivo Y21 chiếc smartphone mang trong mình nhiều ưu điểm nổi bật như màn hình viền mỏng đẹp mắt, hiệu năng ổn định cùng dung lượng pin tận 5000 mAh chắc chắn sẽ đáp ứng nhu cầu sử dụng của bạn cả ngày dài.'),
('VV11', 'VV', 'Điện thoại Vivo Y33s', 30, 6990000, 'vivo-y33s-xanhhong.jpg', 'Trên tay mình hiện tại là Vivo Y33s - chiếc điện thoại này có thiết kế khá tương đồng với các sản phẩm tầm trung mà Vivo cho ra mắt gần đây, vẫn là một sản phẩm có thiết kế trẻ trung với màu đen tráng gương và xanh mộng mơ. Ở phiên bản màu đen được phủ một lớp tráng gương sáng bóng, vào một số trường hợp nó có thể trở thành một chiếc gương soi tiện lợi, tuy nhiên khi sử dụng sẽ bị lưu lại vân tay khá rõ ràng.'),
('VV12', 'VV', 'Điện thoại Vivo Y51 (2020) ', 30, 6290000, 'vivo-y51-xanhduong.jpg', 'Vivo đã mang chiếc điện thoại Vivo Y51 một lần nữa quay trở lại với người dùng trong một thiết kế hoàn toàn mới, nâng cấp từ công nghệ màn hình, cụm camera đến hệ điều hành với tên gọi Vivo Y51 (2020).'),
('VV13', 'VV', 'Điện thoại Vivo Y53s', 30, 6990000, 'vivo-y53s-xanh.jpg', 'Vivo mang đến niềm vui cho mọi người tin dùng khi hãng chính thức tung ra chiếc điện thoại Vivo Y53s với những tính năng tiên tiến đi cùng hiệu năng mạnh mẽ. Đặc biệt, smartphone lại còn sở hữu mức giá hấp dẫn trong phân khúc tầm trung đầy hứa hẹn.'),
('VV14', 'VV', 'Điện thoại Vivo Y72 5G ', 30, 7990000, 'vivo-y72-5g-blue.jpg', 'Vivo Y72 5G mẫu smartphone 5G của Vivo, máy sở hữu một màn hình lớn, hiệu năng mạnh mẽ, cụm 3 camera sắc nét và thời lượng pin ấn tượng, máy đáp ứng tốt hầu hết nhu cầu sử dụng mà người dùng cần.'),
('VV2', 'VV', 'Điện thoại Vivo V23 5G ', 30, 12990000, 'vivo-V23-5G-5-1-2.jpg', 'Vivo V23 5G ra mắt thu hút không ít sự quan tâm của các khách hàng chuộng Vivo, thích selfie và đam mê với điện thoại thiết kế đẹp. Cần 1 smartphone chụp hình chuẩn chỉnh với 1 cấu hình tốt, bạn tham khảo phiên bản này của Vivo nào.'),
('VV3', 'VV', 'Điện thoại Vivo V23e ', 30, 8490000, 'Vivo-V23e.jpg', 'Vivo V23e - sản phẩm tầm trung được đầu tư lớn về khả năng selfie cùng ngoại hình mỏng nhẹ, bên cạnh thiết kế vuông vức theo xu hướng hiện tại thì V23e còn có hiệu năng tốt và một viên pin có khả năng sạc cực nhanh.'),
('VV4', 'VV', 'Điện thoại Vivo V20 (2021)', 30, 7490000, 'vivov202021den.jpg', 'Vivo tung ra chiếc điện thoại Vivo V20 (2021) là phiên bản nâng cấp của Vivo V20 ra mắt trước đó. Chiếc smartphone này được nâng cấp lên bộ xử lý mạnh mẽ hơn mà vẫn giữ được thiết kế siêu mỏng và cụm camera chụp đẹp đáng kinh ngạc.'),
('VV5', 'VV', 'Điện thoại Vivo X70 Pro 5G ', 30, 19990000, 'vivo-x70-pro-xanh-hong.jpg', 'Vivo cho ra mắt Vivo X70 Pro, một sản phẩm cao cấp ấn tượng với kiểu dáng lẫn hiệu năng tuyệt vời. Đặc biệt, camera còn được nâng cấp hàng loạt các tính năng thông minh, cùng bạn sáng tạo nên những kiệt tác đầy nghệ thuật.'),
('VV6', 'VV', 'Điện thoại Vivo Y15a', 30, 3990000, 'Vivo-y15A-trang-xanh.jpg', 'Vivo Y15a - là sản phẩm thuộc phân khúc giá rẻ có hiệu suất ổn định trên con chip 8 nhân, sở hữu một thiết kế hiện đại giúp cho máy thực sự là một sự lựa chọn đáng quan tâm trước khi chọn mua cho mình một thiết bị sở hữu đầy đủ chức năng có giá thành hợp lý.'),
('VV7', 'VV', 'Điện thoại Vivo Y15s ', 30, 3490000, 'Vivo-y15s-2021-xanh-den.jpg', 'Vivo vừa mang một chiến binh mới đến phân khúc tầm trung giá rẻ có tên Vivo Y15s, một sản phẩm sở hữu khá nhiều ưu điểm như thiết kế đẹp, màn hình lớn, camera kép, pin cực trâu và còn rất nhiều điều thú vị khác đang chờ đón bạn.'),
('VV8', 'VV', 'Điện thoại Vivo Y21s 4GB', 30, 5290000, 'vivo-y21s-blue.jpg', 'Vivo đã giới thiệu thêm một phiên bản thuộc series Y21 mang tên Vivo Y21s, đây là một trong những mẫu smartphone tầm trung đầu tiên của Vivo được trang bị camera chính lên đến 50 MP. Máy có thiết kế trẻ trung, pin dung lượng lớn cùng công nghệ mở rộng RAM.'),
('VV9', 'VV', 'Điện thoại Vivo Y21s 4GB', 30, 5290000, 'vivo-y21s-white.jpg', 'Vivo đã giới thiệu thêm một phiên bản thuộc series Y21 mang tên Vivo Y21s, đây là một trong những mẫu smartphone tầm trung đầu tiên của Vivo được trang bị camera chính lên đến 50 MP. Máy có thiết kế trẻ trung, pin dung lượng lớn cùng công nghệ mở rộng RAM.'),
('XM1', 'XM', 'Điện thoại Xiaomi Redmi 10 (4GB/128GB)', 30, 4290000, 'redmi-10-gray.jpg', 'Xiaomi đã trình làng chiếc điện thoại mới với tên gọi là Redmi 10. Máy sở hữu sức mạnh và tốc độ ổn định, cụm 4 camera AI chất lượng cùng thời lượng pin bền bỉ đáng kinh ngạc, hứa hẹn mang đến cho người dùng một lựa chọn chất lượng trong phân khúc.'),
('XM10', 'XM', 'Điện thoại Xiaomi Redmi Note 11 (4GB/64GB) ', 30, 4690000, 'Xiaomi-redmi-note-11-blue.jpeg', 'Điện thoại Redmi được mệnh danh là dòng sản phẩm quốc dân ngon - bổ  - rẻ của Xiaomi và Redmi Note 11 (4GB/64GB) cũng không phải ngoại lệ, máy sở hữu một hiệu năng ổn định, màn hình 90 Hz mượt mà, cụm camera AI đến 50 MP cùng một mức giá vô cùng tốt.'),
('XM11', 'XM', 'Điện thoại Xiaomi Redmi Note 11 (4GB/64GB) ', 30, 4690000, 'Xiaomi-redmi-note-11-blue.jpg', 'Điện thoại Redmi được mệnh danh là dòng sản phẩm quốc dân ngon - bổ  - rẻ của Xiaomi và Redmi Note 11 (4GB/64GB) cũng không phải ngoại lệ, máy sở hữu một hiệu năng ổn định, màn hình 90 Hz mượt mà, cụm camera AI đến 50 MP cùng một mức giá vô cùng tốt.'),
('XM12', 'XM', 'Điện thoại Xiaomi Redmi Note 11 Pro', 30, 7490000, 'xiaomi-redmi-note-11-pro-trang-thumb.jpg', 'Xiaomi Redmi Note 11 Pro 4G mang trong mình khá nhiều những nâng cấp cực kì sáng giá. Là chiếc điện thoại có màn hình lớn, tần số quét 120 Hz, hiệu năng ổn định cùng một viên pin siêu trâu.'),
('XM13', 'XM', 'Điện thoại Xiaomi Redmi Note 11S ', 30, 6990000, 'xiaomi-redmi-note-11s-trang-thumb.jpg', 'Có một thiết kế khung viền thời thượng, một hiệu năng đầy mạnh mẽ cũng như được tích hợp nhiều tiện ích đầy hữu ích. Xiaomi Redmi Note 11S sẵn sàng đem đến cho bạn những trải nghiệm vô cùng hoàn hảo về chơi game, các tác vụ sử dụng hằng ngày hay sự ấn tượng từ vẻ đẹp bên ngoài.'),
('XM14', 'XM', 'Điện thoại Xiaomi 11 Lite 5G NE ', 30, 9490000, 'xiaomi-11-lite-5g-ne-black.jpg', 'Xiaomi 11 Lite 5G NE một phiên bản có ngoại hình rất giống với Mi 11 Lite được ra mắt trước đây. Chiếc smartphone này của Xiaomi mang trong mình một hiệu năng ổn định, thiết kế sang trọng và màn hình lớn đáp ứng tốt các tác vụ hằng ngày của bạn một cách dễ dàng.'),
('XM15', 'XM', 'Điện thoại Xiaomi 11T 5G 256GB', 30, 11990000, 'Xiaomi-11T-Grey.jpg', 'Xiaomi 11T 5G sở hữu màn hình AMOLED, viên pin siêu khủng cùng camera độ phân giải 108 MP, chiếc smartphone này của Xiaomi sẽ đáp ứng mọi nhu cầu sử dụng của bạn, từ giải trí đến làm việc đều vô cùng mượt mà. ');
INSERT INTO `san_pham` (`ma_sp`, `ma_dm`, `ten_sp`, `so_luong`, `gia`, `anh`, `noidung`) VALUES
('XM16', 'XM', 'Điện thoại Xiaomi 11T Pro 5G 8GB', 30, 13990000, 'xiaomi-11t-pro-5g-8gb-thumb.jpeg', 'Xiaomi 11T Pro 5G 8GB sử dụng con chip Snapdragon 888 mạnh mẽ, camera chính 108 MP, hỗ trợ sạc nhanh 120 W, màn hình rộng với tốc độ làm tươi lên đến 120 Hz, tận hưởng trải nghiệm tuyệt vời trong từng khoảnh khắc.'),
('XM17', 'XM', 'Điện thoại Xiaomi 11T Pro 5G 12GB', 30, 14990000, 'Xiaomi-11T-Pro-Blue.jpg', 'Xiaomi 11T Pro - mẫu smartphone được nâng cấp đáng kể với camera 108 MP xuất sắc, màn hình tần số quét 120 Hz đẹp tuyệt mỹ cùng hiệu năng mạnh mẽ từ Snapdragon 888 đáng kinh ngạc nhưng lại có mức giá hấp dẫn đến bất ngờ.'),
('XM18', 'XM', 'Điện thoại Xiaomi 11T Pro 5G 12GB', 30, 14990000, 'Xiaomi-11T-White.jpg', 'Xiaomi 11T Pro - mẫu smartphone được nâng cấp đáng kể với camera 108 MP xuất sắc, màn hình tần số quét 120 Hz đẹp tuyệt mỹ cùng hiệu năng mạnh mẽ từ Snapdragon 888 đáng kinh ngạc nhưng lại có mức giá hấp dẫn đến bất ngờ.'),
('XM19', 'XM', 'Điện thoại Xiaomi series', 30, 19990000, 'xiaomi-12-pro.jpg', ''),
('XM2', 'XM', 'Điện thoại Xiaomi Redmi 9A ', 30, 2490000, 'xiaomi-redmi-9a-grey.jpg', 'Redmi 9A là chiếc smartphone đến từ Xiaomi hướng tới nhóm khách hàng đang tìm kiếm cho mình một sản phẩm với cấu hình tốt giá thành phải chăng, cũng như được trang bị đầy đủ các tính năng ấn tượng.'),
('XM20', 'XM', 'Điện thoại Xiaomi Mi 11 Lite', 30, 7990000, 'xiaomi-mi-11-lite-4g-blue.jpg', 'Xiaomi Mi 11 Lite là phiên bản thu gọn của Xiaomi Mi 11 5G được ra mắt trước đó. Thừa hưởng nhiều ưu điểm của đàn anh, Mi 11 Lite hoàn toàn có thể đáp ứng tốt các tác vụ thông thường một cách dễ dàng và đặc biệt hơn máy có thiết kế vô cùng mỏng nhẹ và thời trang.'),
('XM21', 'XM', 'Điện thoại Xiaomi Mi 11 5G', 30, 21990000, 'xiaomi-mi-11-xanhduong.jpg', 'Xiaomi Mi 11 một siêu phẩm đến từ Xiaomi, máy cho trải nghiệm hiệu năng hàng đầu với vi xử lý Qualcomm Snapdragon 888, cùng loạt công nghệ đỉnh cao, khiến bất kỳ ai cũng sẽ choáng ngợp về smartphone này.'),
('XM3', 'XM', 'Điện thoại Xiaomi Redmi 9C (3GB/64GB)', 30, 2990000, 'xiaomi-redmi-9c-3gb-xam.jpg', 'Xiaomi Redmi 9C (3GB/64GB), smartphone nổi bật trong phân khúc điện thoại giá rẻ với thiết kế tinh tế sang trọng, hiệu năng mạnh mẽ Helio G35 mới, viên pin dung lượng khủng, cùng bộ 3 AI camera bắt trọn mọi khoảnh khắc.'),
('XM5', 'XM', 'Điện thoại Xiaomi Redmi 9C (4GB/128GB) ', 30, 3490000, 'xiaomi-redmi-9c-4gb-xanh.jpg', 'Redmi 9C (4GB/128GB) được trang bị màn hình lớn, viên pin trâu, 3 camera AI cùng một hiệu năng đầy ổn định sẽ là lựa chọn tốt cho khách hàng đang muốn tìm một chiếc smartphone giá rẻ đầy đủ tính năng đến từ Xiaomi.'),
('XM6', 'XM', 'Điện thoại Xiaomi Redmi Note 10 Pro (8GB/128GB) ', 30, 7490000, 'xiaomi-redmi-note-10-pro-thumb-xam.jpg', 'Kế thừa và nâng cấp từ thế hệ trước, Xiaomi đã cho ra mắt Xiaomi Redmi Note 10 Pro (8GB/128GB) sở hữu một thiết kế cao cấp, sang trọng bên cạnh cấu hình vô cùng mạnh mẽ, hứa hẹn mang đến sự cạnh tranh lớn trong phân khúc smartphone tầm trung.'),
('XM7', 'XM', 'Điện thoại Xiaomi Redmi Note 10S 6GB', 30, 5990000, 'xiaomi-redmi-note-10s-6gb-thumb.jpg', 'Redmi Note 10S 6GB đến từ nhà Xiaomi thuộc phân khúc smartphone giá tầm trung nhưng chinh phục người tiêu dùng với thiết kế sang đẹp, cấu hình ấn tượng và cụm camera cực chất, sẽ là thiết bị liên lạc, chiến game giải trí và làm việc ổn định,… cho các nhu cầu sử dụng của bạn.'),
('XM8', 'XM', 'Điện thoại Xiaomi Redmi Note 10S 6GB', 30, 5990000, 'xiaomi-redmi-note-10s-xanh.jpg', 'Redmi Note 10S 6GB đến từ nhà Xiaomi thuộc phân khúc smartphone giá tầm trung nhưng chinh phục người tiêu dùng với thiết kế sang đẹp, cấu hình ấn tượng và cụm camera cực chất, sẽ là thiết bị liên lạc, chiến game giải trí và làm việc ổn định,… cho các nhu cầu sử dụng của bạn.'),
('XM9', 'XM', 'Điện thoại Xiaomi Redmi Note 11 (4GB/64GB)', 30, 4690000, 'Xiaomi-redmi-note-11-blue.jpg', 'Điện thoại Redmi được mệnh danh là dòng sản phẩm quốc dân ngon - bổ  - rẻ của Xiaomi và Redmi Note 11 (4GB/64GB) cũng không phải ngoại lệ, máy sở hữu một hiệu năng ổn định, màn hình 90 Hz mượt mà, cụm camera AI đến 50 MP cùng một mức giá vô cùng tốt.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_ad`);

--
-- Indexes for table `ct_don_hang`
--
ALTER TABLE `ct_don_hang`
  ADD PRIMARY KEY (`Ma_Don`,`Ma_SP`),
  ADD KEY `Ma_SP` (`Ma_SP`);

--
-- Indexes for table `danh_muc`
--
ALTER TABLE `danh_muc`
  ADD PRIMARY KEY (`ma_dm`);

--
-- Indexes for table `dia_chi_gh`
--
ALTER TABLE `dia_chi_gh`
  ADD PRIMARY KEY (`KH_Ma`);

--
-- Indexes for table `don_hang`
--
ALTER TABLE `don_hang`
  ADD PRIMARY KEY (`Ma_Don`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`KH_Ma`);

--
-- Indexes for table `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`ma_sp`),
  ADD KEY `ma_dm` (`ma_dm`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ct_don_hang`
--
ALTER TABLE `ct_don_hang`
  ADD CONSTRAINT `ct_don_hang_ibfk_1` FOREIGN KEY (`Ma_Don`) REFERENCES `don_hang` (`Ma_Don`),
  ADD CONSTRAINT `ct_don_hang_ibfk_2` FOREIGN KEY (`Ma_SP`) REFERENCES `san_pham` (`ma_sp`);

--
-- Constraints for table `dia_chi_gh`
--
ALTER TABLE `dia_chi_gh`
  ADD CONSTRAINT `dia_chi_gh_ibfk_1` FOREIGN KEY (`KH_Ma`) REFERENCES `khachhang` (`KH_Ma`);

--
-- Constraints for table `san_pham`
--
ALTER TABLE `san_pham`
  ADD CONSTRAINT `san_pham_ibfk_1` FOREIGN KEY (`ma_dm`) REFERENCES `danh_muc` (`ma_dm`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
