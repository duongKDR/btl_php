-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 09, 2022 lúc 04:19 AM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `btl`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_username` text NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_address` text NOT NULL,
  `admin_about` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_job` varchar(255) NOT NULL,
  `permission` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_username`, `admin_pass`, `admin_image`, `admin_address`, `admin_about`, `admin_contact`, `admin_job`, `permission`) VALUES
(1, 'admin', 'admin@gmail.com', 'Admin', '21232f297a57a5a743894a0e4a801fc3', 'meo.jpg', 'VN', 'Meo', '0924249999', 'HUMG', 1),
(8, '', 'duong@gmail.com', '', '202cb962ac59075b964b07152d234b70', '', '', '', '', '', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `banner_id` int(100) NOT NULL,
  `banner_name` varchar(255) NOT NULL,
  `banner_desc` varchar(255) NOT NULL,
  `banner_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`banner_id`, `banner_name`, `banner_desc`, `banner_img`) VALUES
(1, 'banner 1', 'banner 1', '1.png'),
(2, 'banner 2', 'banner 2', '2.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `boxes_section`
--

CREATE TABLE `boxes_section` (
  `box_id` int(10) NOT NULL,
  `box_title` text NOT NULL,
  `box_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `boxes_section`
--

INSERT INTO `boxes_section` (`box_id`, `box_title`, `box_desc`) VALUES
(1, 'Phục vụ tốt nhất', 'Phục vụ tốt nhất HUMG :)'),
(2, 'Giá tốt nhất', 'Mua hàng được cho thêm tiền không cần lãi'),
(3, 'Hàng chính hãng', 'Hàng tự may, kể cả sợi chỉ :)');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` varchar(255) NOT NULL,
  `cat_img` varchar(255) NOT NULL,
  `cat_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_img`, `cat_desc`) VALUES
(1, 'Thời trang nam', '8.png', 'Thời trang nam'),
(2, 'Đồng hồ', '9.png', 'Đồng hồ'),
(3, 'Giày dép Nam', '10.png', 'Giày dép Nam'),
(4, 'Thời trang nữ', '11.png', 'Thời trang nữ'),
(5, 'Giày dép nữ', '13.png', 'Giày dép nữ'),
(6, 'Túi ví nữ', '14.png', 'Túi ví nữ'),
(7, 'Phụ kiện & Trang sức Nữ', '15.png', 'Phụ kiện & Trang sức Nữ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`id`, `name`, `subject`, `message`, `email`) VALUES
(0, '', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_username` text NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_contact`, `customer_username`, `customer_pass`, `customer_address`, `customer_image`, `customer_ip`) VALUES
(1, 'KRD', 'krd@gmail.com', '0975632866', 'KRD', '87acec17cd9dcd20a716cc2cf67417b71c8a7016', ' Hà Nội, Việt Nam ', 'meo.jpg', '127.0.0.1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` date NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(1, 1, 673500, 389912659, 3, 'Nhỏ', '2022-11-25', 'pending'),
(2, 1, 1396000, 1188719202, 5, 'Nhỏ', '2022-11-25', 'Complete'),
(3, 1, 280000, 961256447, 1, 'Nhỏ', '2022-11-26', 'Pending');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `logo`
--

CREATE TABLE `logo` (
  `logo_id` int(100) NOT NULL,
  `logo_name` varchar(255) NOT NULL,
  `logo_desc` varchar(255) NOT NULL,
  `logo_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `logo`
--

INSERT INTO `logo` (`logo_id`, `logo_name`, `logo_desc`, `logo_image`) VALUES
(1, 'logo 1', 'Gì cũng rẻ-mua là Freeship', 'logo11.png'),
(2, 'logo 2', 'Miễn phí vận chuyển', '3.png'),
(3, 'logo 3', 'Bắt trend-giá sốc', '4.png'),
(4, 'logo 4', 'Hàng hiệu giá tốt', '5.png'),
(5, 'logo 5', 'Hàng quốc tế', '6.png'),
(6, 'logo 6', 'Deal sốc từ 1K', '7.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `network`
--

CREATE TABLE `network` (
  `id` int(11) NOT NULL,
  `icon` text NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `network`
--

INSERT INTO `network` (`id`, `icon`, `link`) VALUES
(1, 'facebook', 'https://www.facebook.com/');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `money` int(11) NOT NULL,
  `receipt` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `size` text NOT NULL,
  `date` date NOT NULL,
  `status` text NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`order_id`, `user_id`, `money`, `receipt`, `qty`, `size`, `date`, `status`, `address`) VALUES
(8, 1, 81000, 1669059859, 1, 'S', '2022-12-07', 'pending', ''),
(9, 1, 800000, 1669059859, 1, 'S', '2022-12-07', 'pending', ''),
(10, 4, 81000, 1694002919, 1, 'S', '2022-12-08', 'pending', ''),
(11, 4, 81000, 1694002919, 1, 'S', '2022-12-08', 'pending', ''),
(12, 4, 81000, 1786917931, 1, 'S', '2022-12-08', 'pending', ''),
(13, 4, 81000, 1786917931, 1, 'S', '2022-12-08', 'pending', ''),
(14, 4, 81000, 122098825, 1, 'S', '2022-12-08', 'pending', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pay`
--

CREATE TABLE `pay` (
  `pay_id` int(11) NOT NULL,
  `receipt` int(11) NOT NULL,
  `money` int(11) NOT NULL,
  `mode` text NOT NULL,
  `code` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `pay`
--

INSERT INTO `pay` (`pay_id`, `receipt`, `money`, `mode`, `code`, `date`) VALUES
(1, 0, 0, 'BIDV', 0, '0002-02-12'),
(4, 0, 0, 'BIDV', 0, '0033-12-31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `cardholder_name` text NOT NULL,
  `card_number` int(10) NOT NULL,
  `expiration_date` text NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `cardholder_name`, `card_number`, `expiration_date`, `payment_date`) VALUES
(1, 1597909377, 558400, 'MBank (VISA)', 'duong', 999999999, '12/30', '25/11'),
(2, 1188719202, 1396000, 'MBank (VISA)', 'duong', 999999999, '12/30', '25/11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pending`
--

CREATE TABLE `pending` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `receipt` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `size` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `pending`
--

INSERT INTO `pending` (`order_id`, `user_id`, `receipt`, `product_id`, `qty`, `size`, `status`) VALUES
(0, 1, 1669059859, 1, 1, 'S', 'pending'),
(1, 1, 641369955, 11, 1, 'S', 'pending'),
(2, 9, 641369955, 12, 1, 'S', 'Complete'),
(3, 9, 641369955, 13, 1, 'S', 'pending'),
(4, 9, 641369955, 14, 1, 'S', 'pending'),
(5, 9, 641369955, 16, 1, 'S', 'pending'),
(6, 9, 1658482237, 16, 1, 'S', 'Đã trả'),
(7, 9, 7283551, 15, 1, 'S', 'pending'),
(8, 9, 94525791, 16, 1, 'S', 'pending'),
(9, 0, 1150215334, 15, 1, 'S', 'pending'),
(10, 0, 1150215334, 16, 1, 'S', 'pending'),
(11, 14, 1264737008, 17, 1, 'S', 'pending'),
(12, 14, 881084604, 15, 1, 'S', 'pending');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES
(1, 1, 389912659, '4', 3, 'Nhỏ', 'Pending'),
(2, 1, 1188719202, '1', 5, 'Nhỏ', 'Complete'),
(3, 1, 961256447, '8', 1, 'Nhỏ', 'Pending');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_img` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_keywords` text NOT NULL,
  `product_desc` text NOT NULL,
  `product_label` text NOT NULL,
  `product_sale` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `date`, `product_title`, `product_img`, `product_img2`, `product_img3`, `product_price`, `product_keywords`, `product_desc`, `product_label`, `product_sale`) VALUES
(1, 1, 2, '2022-12-05 08:11:34', 'Túi Nữ', 'tui.png', 'p1_2.jpg', 'p1_3.jpg', 81000, 'Túi Nữ', '<p>Sản phẩm 1</p>', 'new', 0),
(2, 4, 2, '2022-12-05 08:11:38', 'Áo Hoodie Nữ', 'hoodi.png', 'p2_2.jpg', 'p2_3.jpg', 81000, 'Áo Hoodie Nữ', '<p>Test 123</p>', 'sale', 200000),
(3, 2, 1, '2022-12-05 08:11:28', 'Son Môi Nội Địa Trung', '32.png', 'p3_2.jpg', 'p3_3.jpg', 81000, 'Son Môi Nội Địa Trung', '<p>Test sản phẩm 3</p>', 'sale', 450999),
(4, 4, 2, '2022-12-05 08:11:42', 'Áo Hoodie Nam', 'hoodi2.png', 'p4_2.jpg', 'p4_3.jpg', 81000, 'Áo Hoodie Nam', '<p>sp4</p>', 'new', 0),
(5, 1, 1, '2022-12-05 08:11:46', 'Mắt Kính Gọng Tròn', '35.png', 'p5_2.jpg', 'p5_3.jpg', 81000, 'Mắt Kính Gọng Tròn', '<p>Sản phẩm 5</p>', 'sale', 250000),
(6, 5, 2, '2022-12-05 08:11:58', 'Dép Quai Ngang Nữ', '36.png', 'p6_2.jpg', 'p6_3.jpg', 81000, 'Dép Quai Ngang Nữ', '<p>Sản phẩm 6</p>', 'new', 0),
(7, 5, 2, '2022-12-05 08:12:02', 'Túi xách thời trang', '50.png', 'p7_2.jpg', 'p7_3.jpg', 81000, 'Túi xách thời trang', '<p>Sản phẩm 7</p>', 'sale', 150000),
(8, 6, 2, '2022-12-05 08:12:06', 'Balo du lịch đi học thời trang cute đẹp', 'balo.png', 'p8_2.jpg', 'p8_3.jpg', 81000, 'Balo du lịch đi học thời trang cute đẹp', '<p>Sản phẩm 7</p>', 'new', 0),
(9, 2, 1, '2022-12-05 08:12:10', 'Sét trang sức', '7e416f3cf3bf2fc46cc7b4f5e98841c0.jpg', 'p9_2.jpg', 'p9_3.jpg', 81000, 'Sét trang sức', '<p>Sản phẩm 9</p>', 'sale', 450999),
(10, 1, 3, '2022-12-05 08:12:19', 'Nhẫn bạc đẹp', 'qua-tang-me-nn0217.jpg', 'p10_2.jpg', 'p10_3.jpg', 81000, 'Nhẫn bạc đẹp', '<p>Sản phẩm 10</p>', 'sale', 200000),
(11, 4, 3, '2022-12-05 08:12:23', 'Son môi dưỡng ẩm tự nhiên', '55.png', 'p11_2.jpg', 'p11_3.jpg', 81000, 'Son môi dưỡng ẩm tự nhiên', '<p>Sản phẩm 11</p>', 'sale', 270999),
(12, 6, 2, '2022-12-05 08:12:27', 'Son môi nước Shiseido Larquelnk', '56.png', 'p12_2.jpg', 'p12_3.jpg', 81000, 'Son môi nước Shiseido Larquelnk', '<p>Sản phẩm 12</p>', 'new', 0),
(13, 3, 2, '2022-12-05 08:12:30', 'Giày thể thao nam full trắng', '57.png', 'p13_2.jpg', 'p13_3.jpg', 81000, 'Giày thể thao nam full trắng', '<p>Sản phẩm 13</p>', 'new', 0),
(14, 6, 2, '2022-12-07 16:32:44', 'Giày MCQueen Trắng', '58.png', 'p14_2.jpg', 'p14_3.jpg', 81000, 'Balo du lịch đi học thời trang cute đẹp', '<p>Sản phẩm 14</p>', 'sale', 300000),
(16, 6, 2, '2022-12-05 08:12:41', 'Đồng hồ Hanboro chính hãng', '59.png', '60.png', 'p15_3.jpg', 81000, 'Đồng hồ Hanboro chính hãng', '<p>Sản phẩm 15</p>', 'new', 0),
(17, 1, 1, '2022-12-06 17:43:15', 'áo thun', 'ao2.png', '', '', 800000, 'áo nam, áo,', ' áo nam', '', 0),
(18, 2, 4, '2022-12-07 10:47:47', 'Quần Thun Nữ', 'product_4.jpg', '', '', 300000, 'thun, quần nữ', 'đep quần nữ', '', 0),
(19, 2, 4, '2022-12-07 16:20:12', 'Quần Thun Nữ', 'product_1.jpg', '', '', 250000, 'thun, quần nữ', ' quần, nữ', '', 0),
(20, 2, 1, '2022-12-07 16:22:27', 'Quần Âu Nam Nữ', 'product_2.jpg', '', '', 330000, 'quần âu, nam, nữ', ' quần, nam ,nữ', '', 0),
(21, 2, 1, '2022-12-07 16:23:29', 'Quần Da Nam', 'product_3.jpg', '', '', 500000, 'nam, quần , da', ' hàng siêu đẹp', '', 0),
(22, 2, 4, '2022-12-07 16:30:55', 'Quần Âu Nữ', 'product_5.jpg', '', '', 400000, 'quần âu, nữ', 'quần, âu nữ', '', 0),
(23, 2, 1, '2022-12-07 16:31:41', 'Quần Kaki Cạp Chun', 'product_6.jpg', '', '', 350000, 'nam, quần , kaki', ' quần đẹp', '', 0),
(24, 2, 4, '2022-12-07 16:35:41', 'Quần Nỉ Len Tăm', 'product_7.jpg', '', '', 250000, 'nỉ, quần nữ', ' mềm mại', '', 0),
(25, 2, 1, '2022-12-07 16:39:16', 'Quần Nỉ Bo Ống', 'product_8.jpg', '', '', 300000, 'nam, quần , bo ống', ' hàng đẹp', '', 0),
(26, 2, 1, '2022-12-07 16:40:10', 'Kaki Cạp Chun', 'product_9.jpg', '', '', 400000, 'nam, cạp chun , kaki', ' hàng chất lượng\r\n', '', 0),
(27, 2, 1, '2022-12-07 17:11:24', 'Quần Âu Xuông', 'product_10.jpg', '', '', 250000, 'quần âu, nam', ' Form đẹp', '', 0),
(28, 1, 1, '2022-12-07 17:12:25', 'Áo Thun Nam', 'product_11.jpg', '', '', 150000, 'áo, thun nam', 'giá rẻ', '', 0),
(29, 1, 1, '2022-12-07 17:13:26', 'Polo', 'product_12.jpg', '', '', 199000, 'polo', ' hàng đẹp', '', 0),
(30, 1, 1, '2022-12-07 17:14:15', 'Polo', 'product_13.jpg', '', '', 159000, 'polo', ' giá rẻ', '', 0),
(31, 1, 1, '2022-12-07 17:15:03', 'Áo Sơ Mi Cộc Tay', 'product_14.jpg', '', '', 179000, 'Áo Sơ Mi Cộc Tay', ' hàng chất lượng', '', 0),
(32, 1, 1, '2022-12-07 17:16:55', 'Polo Kẻ Sọc', 'product_15.jpg', '', '', 179000, 'polo', ' hàng đẹp', '', 0),
(33, 1, 1, '2022-12-07 17:17:06', 'Áo Thun Trơn', 'product_16.jpg', '', '', 165000, 'Áo Thun Trơn', ' đẹp', '', 0),
(34, 1, 1, '2022-12-08 03:35:20', 'Polo Đen Trắng', 'product_17.jpg', '', '', 300000, 'polo', 'Polo Đen Trắng', '', 0),
(35, 1, 1, '2022-12-08 03:36:45', 'Áo Thun Vịt Donal', 'product_18.jpg', '', '', 300000, 'nam, áo thun, donal', ' Áo Thun Vịt Donal', '', 0),
(36, 1, 1, '2022-12-08 03:37:33', 'Áo Phông Pink Panther', 'product_19.jpg', '', '', 250000, 'phông, pink panther', ' Áo Phông Pink Panther', '', 0),
(37, 1, 1, '2022-12-08 03:38:35', 'Áo Phông Họa Tiết Hoạt Hình', 'product_20.jpg', '', '', 179000, 'phông, hoạt hình', ' Áo Phông Họa Tiết Hoạt Hình', '', 0),
(38, 1, 4, '2022-12-08 03:39:38', 'Áo Thun', 'product_21.jpg', '', '', 179000, 'thun, áo nữ', 'đẹp, chất', '', 0),
(39, 1, 1, '2022-12-08 03:40:48', 'Áo Thun Tay Lỡ', 'product_22.jpg', '', '', 250000, 'thun, tay lỡ', ' Áo Thun Tay Lỡ', '', 0),
(40, 1, 1, '2022-12-08 03:41:43', 'Áo Thun 193', 'product_23.jpg', '', '', 300000, '193, áo', ' Áo Thun 193', '', 0),
(41, 1, 1, '2022-12-08 03:42:43', 'Áo Phông Ngân Hà Awel', 'product_24.jpg', '', '', 250000, 'awel, áo , ngân hà', ' Áo Phông Ngân Hà Awel', '', 0),
(50, 3, 7, '2022-12-08 04:06:34', 'Bộ Trang Sức Đính Ngọc Trai', 'th (9).jfif', '', '', 10000000, 'trang sức, ngọc trai', ' Bộ Trang Sức Đính Ngọc Trai', '', 0),
(52, 3, 7, '2022-12-08 04:07:49', 'Vòng Tay', 'th (11).jfif', '', '', 7000000, 'vòng tay', ' Vòng Tay', '', 0),
(53, 3, 2, '2022-12-08 04:09:08', 'Đồng Hồ Tissot', 'th (12).jfif', '', '', 5600000, 'tissot, đồng hồ', ' Đồng Hồ Tissot', '', 0),
(54, 3, 2, '2022-12-08 04:10:04', 'Đồng Hồ Vàng 24k', 'th (13).jfif', '', '', 9000000, 'đồng hồ, vàng 24k', 'Đồng Hồ Vàng 24k', '', 0),
(55, 3, 2, '2022-12-08 04:10:40', 'Đồng Hồ Mạ Vàng', 'th (14).jfif', '', '', 4600000, 'mạ vàng, đồng hồ', ' Đồng Hồ Mạ Vàng', '', 0),
(56, 3, 2, '2022-12-08 04:11:17', 'Đồng Hồ Treo Tường', 'th (15).jfif', '', '', 1300000, 'đồng hồ, treo tường', ' Đồng Hồ Treo Tường', '', 0),
(57, 3, 2, '2022-12-08 04:12:15', 'Đồng Hồ Treo Tường Viền Đỏ', 'th (16).jfif', '', '', 700000, 'đồng hồ, treo tường, viền đỏ', ' Đồng Hồ Treo Tường Viền Đỏ', '', 0),
(58, 3, 6, '2022-12-08 04:13:28', 'Túi Xách Gucci S1', 'th (17).jfif', '', '', 17000000, 'gucci, túi xách,s1', 'Túi Xách Gucci S1', '', 0),
(59, 3, 6, '2022-12-08 04:14:12', 'Túi Xách Gucci S2', 'th (18).jfif', '', '', 15000000, 'gucci, túi xách,s2', ' Túi Xách Gucci S2', '', 0),
(60, 3, 6, '2022-12-08 04:14:58', 'Túi Xách Dior S1', 'th (19).jfif', '', '', 15000000, 'dior, túi xách,s1', ' Túi Xách Dior S1', '', 0),
(61, 3, 6, '2022-12-08 04:15:33', 'Túi Xách Dior S2', 'th (20).jfif', '', '', 13000000, 'dior, túi xách,s1', ' Túi Xách Dior S2', '', 0),
(62, 3, 6, '2022-12-08 04:16:10', 'Túi Xách LV S1', 'th (21).jfif', '', '', 14000000, 'lv, túi xách,s1', ' Túi Xách LV S1', '', 0),
(63, 3, 6, '2022-12-08 04:17:42', 'Túi Xách LV S2', 'th (22).jfif', '', '', 15000000, 'lv, túi xách,s2', ' Túi Xách LV S2', '', 0),
(64, 3, 3, '2022-12-08 04:18:36', 'Giày AF1 Trắng Logo Đen', 'th.jfif', '', '', 700000, 'af1, logo đen, giày', ' Giày AF1 Trắng Logo Đen', '', 0),
(65, 5, 4, '2022-12-08 04:21:11', 'Bộ Jumpsuit Lưới', 'th (23).jfif', '', '', 300000, 'jumpsuit, lưới', ' Bộ Jumpsuit Lưới', '', 0),
(66, 5, 4, '2022-12-08 04:21:43', 'Bộ Jumpsuit Tím', 'th (25).jfif', '', '', 250000, 'jumpsuit, tím', ' Bộ Jumpsuit Tím', '', 0),
(67, 5, 4, '2022-12-08 04:22:40', 'Bộ Jumpsuit Cộc Xanh', 'th (26).jfif', '', '', 400000, 'jumpsuit, xanh, cộc', ' Bộ Jumpsuit Cộc Xanh', '', 0),
(68, 5, 4, '2022-12-08 04:23:26', 'Bộ Jumpsuit Hai Dây', 'th (27).jfif', '', '', 700000, 'jumpsuit, hai dây', ' Bộ Jumpsuit Hai Dây', '', 0),
(69, 5, 4, '2022-12-08 04:24:04', 'Bộ Jumpsuit Công Sở', 'th (28).jfif', '', '', 400000, 'jumpsuit, công sở', ' Bộ Jumpsuit Công Sở', '', 0),
(70, 5, 4, '2022-12-08 04:25:12', 'Bộ Jumpsuit Màu Than', 'th (29).jfif', '', '', 250000, 'jumpsuit, màu than', ' Bộ Jumpsuit Màu Than', '', 0),
(71, 6, 4, '2022-12-08 04:28:37', 'Set Đồ Công Sở Nữ', 'th (30).jfif', '', '', 400000, 'set, nữ, công sở', ' Set Đồ Công Sở Nữ', '', 0),
(72, 6, 4, '2022-12-08 04:29:16', 'Set Đồ Nữ Đẹp', 'th (31).jfif', '', '', 250000, 'set, nữ, đẹp', ' Set Đồ Nữ Đẹp', '', 0),
(73, 6, 1, '2022-12-08 04:30:17', 'Set Đồ Nam Đẹp S1', 'th (32).jfif', '', '', 400000, 'set, nam, s1', ' Set Đồ Nam Đẹp S1', '', 0),
(74, 6, 1, '2022-12-08 04:30:48', 'Set Đồ Nam Đẹp S2', 'th (33).jfif', '', '', 400000, 'set, nam, s2', ' Set Đồ Nam Đẹp S2', '', 0),
(75, 6, 1, '2022-12-08 04:31:15', 'Set Đồ Nam Đẹp S3', 'th (34).jfif', '', '', 300000, 'set, nam, s3', ' Set Đồ Nam Đẹp S3', '', 0),
(76, 6, 1, '2022-12-08 04:31:41', 'Set Đồ Nam Đẹp S4', 'th (35).jfif', '', '', 700000, 'set, nam, s4', ' Set Đồ Nam Đẹp S4', '', 0),
(77, 6, 1, '2022-12-08 04:32:03', 'Set Đồ Nam Đẹp S5', 'th (36).jfif', '', '', 400000, 'set, nam, s5', 'Set Đồ Nam Đẹp S5', '', 0),
(78, 4, 4, '2022-12-08 04:42:02', 'Váy Nữ Đẹp A1', 'th.jfif', '', '', 250000, 'váy, a1', ' Váy Nữ Đẹp A1', '', 0),
(79, 4, 4, '2022-12-08 05:19:06', 'Váy Nữ Đẹp A2', 'n.jfif', '', '', 300000, 'váy, a2', ' Váy Nữ Đẹp A2', '', 0),
(80, 4, 4, '2022-12-08 05:19:27', 'Váy Nữ Đẹp A3', 'n1.jfif', '', '', 400000, 'váy, a3', ' Váy Nữ Đẹp A3', '', 0),
(81, 4, 4, '2022-12-08 05:19:43', 'Váy Cưới', 'n2.jfif', '', '', 700000, 'váy cưới', ' Váy Cưới', '', 0),
(82, 4, 4, '2022-12-08 05:19:58', 'Váy Dự Tiệc', 'n3.jfif', '', '', 700000, 'váy, tiệc', ' Váy Dự Tiệc', '', 0),
(83, 4, 4, '2022-12-08 05:20:15', 'Váy Xẻ Tà', 'n4.jfif', '', '', 400000, 'Váy Xẻ Tà', ' Váy Xẻ Tà', '', 0),
(84, 4, 4, '2022-12-08 04:45:24', 'Chân Váy Nữ Đẹp Q1', 'th (6).jfif', '', '', 700000, 'chân váy, đẹp, q1', ' Chân Váy Nữ Đẹp Q1', '', 0),
(85, 4, 4, '2022-12-08 04:45:52', 'Chân Váy Nữ Đẹp Q2', 'th (7).jfif', '', '', 700000, 'chân váy, đẹp, q2', ' Chân Váy Nữ Đẹp Q2', '', 0),
(86, 4, 4, '2022-12-08 04:49:17', 'Chân Váy Nữ Đẹp Q3', 'a.jfif', '', '', 700000, 'chân váy, đẹp, q3', ' Chân Váy Nữ Đẹp Q3', '', 0),
(87, 4, 4, '2022-12-08 04:49:29', 'Chân Váy Nữ Đẹp Q4', 'b.jfif', '', '', 700000, 'chân váy, đẹp, q4', ' Chân Váy Nữ Đẹp Q4', '', 0),
(88, 4, 4, '2022-12-08 04:49:54', 'Chân Váy Nữ Đẹp Q5', 'b1.jfif', '', '', 700000, 'chân váy, đẹp, q5', ' Chân Váy Nữ Đẹp Q5', '', 0),
(89, 4, 4, '2022-12-08 04:50:46', 'Chân Váy Nữ Đẹp Q6', 'b2.jfif', '', '', 700000, 'chân váy, đẹp, q6', ' Chân Váy Nữ Đẹp Q6', '', 0),
(90, 4, 4, '2022-12-08 04:51:16', 'Chân Váy Nữ Đẹp Q7', 'b3.jfif', '', '', 600000, 'chân váy, đẹp, q7', ' Chân Váy Nữ Đẹp Q7', '', 0),
(91, 4, 4, '2022-12-08 04:51:48', 'Chân Váy Nữ Đẹp Q8', 'b4.jfif', '', '', 500000, 'chân váy, đẹp, q8', ' Chân Váy Nữ Đẹp Q8', '', 0),
(92, 3, 3, '2022-12-08 04:58:34', 'Giày Adidas', 'v1.jfif', '', '', 1500000, 'giày, adidas', 'Giày Adidas', '', 0),
(93, 3, 3, '2022-12-08 04:59:02', 'Giày Adidas Đen', 'v2.jfif', '', '', 700000, 'giày, adidas, đen', ' Giày Adidas Đen', '', 0),
(94, 3, 3, '2022-12-08 04:59:36', 'Giày MLB Boston', 'v3.jfif', '', '', 15000000, 'giày, mlb, boston', ' Giày MLB Boston', '', 0),
(95, 3, 5, '2022-12-08 05:00:19', 'Giày MLB Ny', 'v4.jfif', '', '', 700000, 'giày, mlb, ny', ' Giày MLB Ny', '', 0),
(96, 3, 5, '2022-12-08 05:00:54', 'Giày Gucci Cao Gót', 'v5.jfif', '', '', 700000, 'giày, cao gót, gucci', ' Giày Gucci Cao Gót', '', 0),
(97, 3, 7, '2022-12-08 05:01:34', 'Khuyên Tai Đẹp', 'v6.jfif', '', '', 250000, 'khuyên tai', ' Khuyên Tai Đẹp', '', 0),
(98, 3, 7, '2022-12-08 05:02:03', 'Khuyên Tai Chất', 'v7.jfif', '', '', 300000, 'khuyên tai', ' Khuyên Tai Chất', '', 0),
(99, 3, 7, '2022-12-08 05:02:30', 'Khuyên Tai Ngọc Trai', 'v8.jfif', '', '', 400000, 'khuyên tai', ' Khuyên Tai Ngọc Trai', '', 0),
(100, 3, 7, '2022-12-08 05:03:03', 'Nhẫn Đôi', 'v9.jfif', '', '', 700000, 'nhẫn', 'Nhẫn Đôi', '', 0),
(101, 3, 7, '2022-12-08 05:03:43', 'Nhẫn Cưới Vàng', 'v10.jfif', '', '', 15000000, 'nhẫn', ' Nhẫn Cưới Vàng', '', 0),
(103, 3, 3, '2022-12-08 05:12:04', 'Giày AF1 Trắng', 'th (1).jfif', '', '', 700000, 'giày, af1', ' Giày AF1 Trắng', '', 0),
(104, 3, 5, '2022-12-08 05:15:41', 'Jordan High Pink', 'd1.jfif', '', '', 15000000, 'jordan, pink, high', ' Jordan High Pink', '', 0),
(105, 3, 3, '2022-12-08 05:13:20', 'Giày Thể Thao', 'th (3).jfif', '', '', 400000, 'giày, thể thao', ' Giày Thể Thao', '', 0),
(106, 3, 3, '2022-12-08 05:13:50', 'Giày Đá Bóng', 'th (4).jfif', '', '', 700000, 'giày, đá bóng', ' Giày Đá Bóng', '', 0),
(107, 3, 5, '2022-12-08 05:16:59', 'Giày Cao Gót', 'th (5).jfif', '', '', 700000, 'giày, cao gót', ' Giày Đá Bóng', '', 0),
(109, 3, 7, '2022-12-08 05:26:25', 'Vòng Cổ Ruby', 'f.jfif', '', '', 15000000, 'vòng, ruby', 'Vòng Cổ Ruby', '', 0),
(110, 3, 7, '2022-12-08 05:26:49', 'Vòng Trầm', 'f2.jfif', '', '', 15000000, 'Vòng Trầm', ' Vòng Trầm', '', 0),
(111, 3, 7, '2022-12-08 05:28:28', 'Bộ Trang Sức Đính Kim Cương', 'f3.jfif', '', '', 15000000, 'trang sức, kim cương', ' Bộ Trang Sức Đính Kim Cương', '', 0),
(112, 3, 7, '2022-12-08 05:29:01', 'Lót Giày', 'f4.jfif', '', '', 25000, 'lót giày', ' Lót Giày', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_desc`) VALUES
(1, 'Áo', 'Áo cả nam và nữ đẹp nhất'),
(2, 'Quần', 'Quần cả nam và nữ đẹp nhất'),
(3, 'Giày và phụ kiện', 'Giày và phụ kiện đẹp nhất'),
(4, 'Váy và chân váy', 'Váy và chân váy đẹp nhất'),
(5, 'JUMP', 'Bộ JUMP đẹp nhất'),
(6, 'SET', 'SET đẹp nhất');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sender`
--

CREATE TABLE `sender` (
  `sender_id` int(10) NOT NULL,
  `sender_c_name` varchar(255) NOT NULL,
  `sender_c_email` varchar(255) NOT NULL,
  `sender_subject` varchar(255) NOT NULL,
  `sender_message` varchar(255) NOT NULL,
  `sender_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sender`
--

INSERT INTO `sender` (`sender_id`, `sender_c_name`, `sender_c_email`, `sender_subject`, `sender_message`, `sender_date`) VALUES
(1, 'duong', 'test@gmail.com', 'Đánh giá về shop Skyblue', 'Shop Skyblue quá tuyệt vời', '2022-11-27 01:22:17'),
(4, 'Test 2', 'test2@gmail.com', 'Đánh giá về shop', 'Shop Skyblue quá tuyệt vời', '2022-11-27 01:47:57'),
(5, 'Test 3', 'test3@gmail.com', 'Đánh giá về shop Skyblue', 'Shop Skyblue quá tuyệt vời', '2022-11-27 01:48:30'),
(6, 'Test 4', 'test4@gmail.com', 'Đánh giá về shop Skyblue', 'Shop Skyblue quá tuyệt vời', '2022-11-27 01:49:03'),
(8, 'duong', 'duong@gmail.com', 'Test gửi mail xem có kiểm tra về hộp thư hay không phần tiêu đề', 'Shop Skyblue quá tuyệt vời', '2022-11-27 13:25:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `slider_name` text NOT NULL,
  `slider_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_name`, `slider_image`) VALUES
(1, 'a', 'banner5.png'),
(2, 'b', 'banner10.png'),
(4, 'd', 'banner3.png'),
(6, '', 'banner15.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` text NOT NULL,
  `user_email` text NOT NULL,
  `user_pass` text NOT NULL,
  `user_phone` int(11) NOT NULL,
  `user_ip` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_pass`, `user_phone`, `user_ip`) VALUES
(1, 'KRD', 'krd@gmail.com', 'f3364f22f157f051b88208c7432f6ca4', 901247861, '::1'),
(2, 'KRD1', 'vip2805.ddt@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 1223, '::1'),
(3, 'KRD', 'krd@gmail.com', 'f3364f22f157f051b88208c7432f6ca4', 901247861, '::1'),
(4, 'qwe', 'duong@gmail.com', 'd22b74681217629a6d88cce2db1e92a6', 901247861, '::1'),
(5, 'KRD', 'duongyang25@gmail.com', '1cf34beb904a439beb0c6e1fa75fbbd8', 901247861, '::1'),
(6, 'KRD', 'duong@gmail.com', 'c20ad4d76fe97759aa27a0c99bff6710', 1245678900, '::1'),
(7, '', 'vip2805.ddt@gmail.com', '37693cfc748049e45d87b8c7d8b9aacd', 0, '::1');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Chỉ mục cho bảng `boxes_section`
--
ALTER TABLE `boxes_section`
  ADD PRIMARY KEY (`box_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`logo_id`);

--
-- Chỉ mục cho bảng `network`
--
ALTER TABLE `network`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `pay`
--
ALTER TABLE `pay`
  ADD PRIMARY KEY (`pay_id`);

--
-- Chỉ mục cho bảng `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Chỉ mục cho bảng `pending`
--
ALTER TABLE `pending`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Chỉ mục cho bảng `sender`
--
ALTER TABLE `sender`
  ADD PRIMARY KEY (`sender_id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `banner_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `boxes_section`
--
ALTER TABLE `boxes_section`
  MODIFY `box_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `logo`
--
ALTER TABLE `logo`
  MODIFY `logo_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `sender`
--
ALTER TABLE `sender`
  MODIFY `sender_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
