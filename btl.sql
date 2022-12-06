-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 05, 2022 lúc 09:17 AM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `btl_thuyduong`
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
  `admin_job` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_username`, `admin_pass`, `admin_image`, `admin_address`, `admin_about`, `admin_contact`, `admin_job`) VALUES
(1, 'admin', 'admin@gmail.com', 'Admin', '4FD3D0F47E7A98FF5B585D15025BAC59BF53908F', 'meo.jpg', 'VN', 'Meo', '0924249999', 'HUMG');

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
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
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
(1, 'KRD', 'krd@gmail.com', '0975632866', 'KRD', '87acec17cd9dcd20a716cc2cf67417b71c8a7016',' Hà Nội, Việt Nam ', 'meo.jpg', '127.0.0.1');



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
  `product_img1` text NOT NULL,
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

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_keywords`, `product_desc`, `product_label`, `product_sale`) VALUES
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
(14, 6, 2, '2022-12-05 08:12:34', 'Balo du lịch đi học thời trang cute đẹp', '58.png', 'p14_2.jpg', 'p14_3.jpg', 81000, 'Balo du lịch đi học thời trang cute đẹp', '<p>Sản phẩm 14</p>', 'sale', 300000),
(15, 6, 2, '2022-12-05 08:12:39', 'Giày thể thao nữ', '59.png', 'p15_2.jpg', 'p15_3.jpg', 81000, 'Giày thể thao nữ', '<p>Sản phẩm 15</p>', 'new', 0),
(16, 6, 2, '2022-12-05 08:12:41', 'Đồng hồ Hanboro chính hãng', '59.png', '60.png', 'p15_3.jpg', 81000, 'Đồng hồ Hanboro chính hãng', '<p>Sản phẩm 15</p>', 'new', 0);

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
(1, 'duong', 'test@gmail.com', 'Đánh giá về shop Skyblue', 'Shop Skyblue quá tuyệt vời, 10 điểm :))', '2022-11-27 01:22:17'),
(2, 'Test xoá kiến', 'TestXoaYKien@gmail.com', 'Đánh giá về shop Skyblue', 'Shop Skyblue quá tuyệt vời, 10 điểm :))', '2022-11-27 01:46:49'),
(3, 'Test 1', 'test1@gmail.com', 'Đánh giá về shop', 'Shop Skyblue quá tuyệt vời, 10+1 điểm :))', '2022-11-27 01:47:36'),
(4, 'Test 2', 'test2@gmail.com', 'Đánh giá về shop', 'Shop Skyblue quá tuyệt vời, 10+2 điểm :))', '2022-11-27 01:47:57'),
(5, 'Test 3', 'test3@gmail.com', 'Đánh giá về shop Skyblue', 'Shop Skyblue quá tuyệt vời, 10 điểm :))', '2022-11-27 01:48:30'),
(6, 'Test 4', 'test4@gmail.com', 'Đánh giá về shop Skyblue', 'Shop Skyblue quá tuyệt vời, 10+3 điểm :))', '2022-11-27 01:49:03'),
(7, 'Test 5', 'test5@gmail.com', 'Đánh giá về shop', 'Shop Skyblue quá tuyệt vời, 10+4 điểm :))', '2022-11-27 01:49:44'),
(8, 'duong', 'duong@gmail.com', 'Test gửi mail xem có kiểm tra về hộp thư hay không phần tiêu đề', 'Test gửi mail xem có kiểm tra về hộp thư hay không phần nội dung', '2022-11-27 13:25:16'),
(9, 'Test 1', 'test10@gmail.com', 'Đánh giá về shop Skyblue', 'Shop Skyblue quá tuyệt vời, 10 điểm :))', '2022-11-27 13:45:10');

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
(3, 'c\r\n', 'banner3.png'),
(4, 'd', 'banner4.png');

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
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

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
-- Chỉ mục cho bảng `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

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
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `sender`
--
ALTER TABLE `sender`
  MODIFY `sender_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
