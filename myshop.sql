-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 26, 2019 lúc 12:24 PM
-- Phiên bản máy phục vụ: 10.4.10-MariaDB
-- Phiên bản PHP: 7.2.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `myshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(21, 'Sách kinh tế', 'sach-kinh-te', 1, NULL, '2019-12-21 10:51:34', '2019-12-22 21:04:50'),
(22, 'Tiểu Thuyết', 'tieu-thuyet', 1, NULL, '2019-12-21 10:52:00', '2019-12-21 10:52:00'),
(23, 'Sách nước ngoài', 'sach-nuoc-ngoai', 1, NULL, '2019-12-21 10:52:45', '2019-12-23 17:50:23'),
(24, 'Sách thiếu nhi', 'Sach-thieu-nhi', 1, NULL, '2019-12-21 11:05:28', '2019-12-21 11:05:28'),
(25, 'Sách giáo khoa', 'Sacch-giao-khoa', 1, NULL, '2019-12-21 11:06:11', '2019-12-21 11:06:11'),
(26, 'Sách tham khảo', 'sach-tham-khao', 1, NULL, '2019-12-21 11:06:34', '2019-12-21 11:06:34'),
(27, 'Truyện', 'truyen', 1, NULL, '2019-12-22 20:54:17', '2019-12-22 20:54:17'),
(28, 'Sách tâm lý', 'Tam-ly-hoc', 1, NULL, '2019-12-22 21:05:32', '2019-12-22 21:05:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `about` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `name`, `email`, `phone`, `password`, `address`, `about`, `remember_token`, `reset_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(8, 'phạm văn nam', 'phamvannamnd1998@gmail.com', NULL, '$2y$10$icmXcWX.wzaRoZOg5mtQ8OWsz6s/UMcApHnr.SjOF2R/qt9CpSeQC', 'Nam Định', 'đẹp trai vui tính', NULL, NULL, NULL, '2019-12-11 11:58:59', '2019-12-11 11:58:59'),
(9, 'phạm văn nam2', 'phamvannamnd2221998@gmail.com', NULL, '$2y$10$nv086drUVterXRtTyKRFjOwhYJprIWmjwt04jVwzNYE7JJyNWjX6K', 'Nam Định', 'đẹp trai vui tính', NULL, NULL, NULL, '2019-12-11 12:00:19', '2019-12-11 12:00:19'),
(10, 'phạm văn nam3', 'phamvannamnd331998@gmail.com', NULL, '$2y$10$96FqJ/3XsaBHIwP6NAG/ZuN9HTIn.tNy4mQXe1ENM03tn6sCsbrSa', 'Nam Định', 'đẹp trai vui tính', NULL, NULL, NULL, '2019-12-11 12:02:16', '2019-12-11 12:02:16'),
(11, 'Nam', 'Nampv520@wru.vn', NULL, '$2y$10$fq7cB27H4D37cI5xZqTzoOnSy5CeRFr/huIZD.hRqVcausm.8/FjO', 'Nam Định', 'Đang làm đồ án', NULL, NULL, NULL, '2019-12-15 21:00:05', '2019-12-15 21:00:05'),
(12, 'Phạm Văn a', 'a@gmail.com', NULL, '$2y$10$TvBeYBlv/zZ1ePfhWZpjOePFvprGHN./1xaBTIZ8zeXh5WSh6auBi', 'Nam Định', 'lớp 57th1 trường Đai học Thủy Lợi', NULL, NULL, NULL, '2019-12-23 19:47:36', '2019-12-23 19:47:36'),
(13, 'Phạm Văn B', 'B@gmail.com', NULL, '$2y$10$YBX/eK61olNOAqemkrieRuCbi9WxATSUhFENyaTC1ki9fL00zUTEi', 'Vụ Bản Nam Định', 'Hiền lành', NULL, NULL, NULL, '2019-12-24 05:58:04', '2019-12-24 05:58:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `comment` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image_manager`
--

CREATE TABLE `image_manager` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `image_manager`
--

INSERT INTO `image_manager` (`id`, `user_id`, `name`, `image`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(20, 36, 'baner_1', 'baner_1.jpg', 1, NULL, '2019-12-11 10:31:51', '2019-12-11 10:31:51'),
(21, 36, 'baner_2', 'baner_2.jpg', 1, NULL, '2019-12-11 10:32:04', '2019-12-11 10:32:04'),
(22, 36, 'baner_3', 'baner_3.jpg', 1, NULL, '2019-12-11 10:32:18', '2019-12-11 10:32:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `full` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `user_id`, `title`, `description`, `slug`, `image`, `full`, `deleted_at`, `created_at`, `updated_at`) VALUES
(36, 36, 'tác giả Nguyễn Nhật Ánh', 'guyễn Nhật Ánh sinh ngày 7 tháng 5 năm 1955 tại tỉnh Quảng Nam.  Ông được coi là một trong những nhà văn thành công nhất viết sách cho tuổi thơ, tuồi mới lớn với hơn 100 tác phẩm các thể loại', 'Nguyen-Nhat-Anh', 'nguyennhatanh.jpg', '<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; outline: 0px; padding: 3px 0px; border: none; orphans: 3; widows: 3; color: rgb(85, 85, 85); font-family: Roboto, sans-serif; font-size: 14px; background-color: rgb(255, 245, 231);\">Nguyễn Nhật Ánh sinh ngày 7 tháng 5 năm 1955 tại tỉnh Quảng Nam.&nbsp; Ông được coi là một trong những nhà văn thành công nhất viết sách cho tuổi thơ, tuồi mới lớn với hơn 100 tác phẩm các thể loại.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; outline: 0px; padding: 3px 0px; border: none; orphans: 3; widows: 3; color: rgb(85, 85, 85); font-family: Roboto, sans-serif; font-size: 14px; background-color: rgb(255, 245, 231);\">Trước khi trở thành nhà văn nổi tiếng, Nguyễn Nhật Ánh từng có thời gian đi dạy học, viết báo với nhiều bút danh như Chu Đình Ngạn, Lê Duy Cật, Đông Phương Sóc, Sóc Phương Đông,... Năm 13 tuổi, ông đã có thơ đăng báo. Năm 1984, tác phẩm truyện dài đầu tiên&nbsp;<em style=\"margin: 0px; list-style: none; outline: 0px; padding: 0px; border: none;\">Trước vòng chung kết&nbsp;</em>đã định vị tên tuổi của ông trong lòng độc giả và kể từ đó, ông tập trung viết cho lứa tuổi thanh thiếu niên.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; outline: 0px; padding: 3px 0px; border: none; orphans: 3; widows: 3; color: rgb(85, 85, 85); font-family: Roboto, sans-serif; font-size: 14px; background-color: rgb(255, 245, 231);\">Tên tuổi của nhà văn Nguyễn Nhật Ánh gắn liền với các tác phẩm làm say lòng độc giả bao thế hệ như&nbsp;<em style=\"margin: 0px; list-style: none; outline: 0px; padding: 0px; border: none;\">Mắt biếc, Cỏn chút gì để nhớ, Hạ đỏ, Cô gái đến từ hôm qua, Chú bé rắc rối,…&nbsp;</em>Truyện của ông được tái bản liên tục và chưa bao giờ giảm sức hút với những người yêu mến chất văn Nguyễn Nhật Ánh.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; outline: 0px; padding: 3px 0px; border: none; orphans: 3; widows: 3; color: rgb(85, 85, 85); font-family: Roboto, sans-serif; font-size: 14px; background-color: rgb(255, 245, 231);\">Ông cũng đã đoạt nhiều giải thưởng như: năm 1990, truyện dài “Chú bé rắc rối” được Trung ương Đoàn Thanh niên Cộng sản Hồ Chí Minh trao giải thưởng Văn học Trẻ hạng A. Năm 1995, ông được bầu chọn là nhà văn được yêu thích nhất trong 20 năm (1975-1995) qua cuộc trưng cầu ý kiến bạn đọc về các gương mặt trẻ tiêu biểu trên mọi lĩnh vực của Thành đoàn TP HCM và Báo Tuổi trẻ, đồng thời được Hội Nhà văn TP HCM chọn là một trong 20 nhà văn trẻ tiêu biểu trong 20 năm (1975-1995).</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; outline: 0px; padding: 3px 0px; border: none; orphans: 3; widows: 3; color: rgb(85, 85, 85); font-family: Roboto, sans-serif; font-size: 14px; background-color: rgb(255, 245, 231);\">Năm 2010, tác phẩm&nbsp;<em style=\"margin: 0px; list-style: none; outline: 0px; padding: 0px; border: none;\">Cho tôi xin một vé đi tuổi thơ</em>&nbsp;của ông được trao tặng Giải thưởng Văn học ASEAN</p>', NULL, '2019-12-11 10:41:27', '2019-12-11 10:41:27'),
(37, 36, 'Có Lần Ngang Qua Đời Nhau', 'Thể loại: Thơ - Tản văn, Văn học', 'Co-lan-ngang-qua-doi-nhau', 'co-lan-ngang-qua-doi-nhau.jpg', '<p style=\"box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; color: rgb(58, 71, 82); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; height: auto; text-overflow: ellipsis; display: inherit; -webkit-line-clamp: 2; -webkit-box-orient: vertical; line-height: 18px; overflow: hidden; text-align: justify;\">Cuốn tản văn của tác giả trẻ Nguyễn Bình Nguyên với văn phong giản dị, câu từ không cầu kỳ nhưng chứa đựng sức nặng, sự day dứt. 10 tản văn là những mảnh đời, số phận khác nhau, khi là câu chuyện của một cô gái vì bệnh tật mà mất đi quyền làm mẹ, phải đau đớn chia tay người mình yêu trong \"Đớn đau đạp đổ\", đó là câu chuyện của một cô gái vì hoàn cảnh gia đình khó khăn mà phải chọn nghề \"làm gái\" cùng anh chàng tật nguyền trong \"Nuôi đĩ\", hay chuyện ông lão nghèo khổ, cuộc đời bôn ba, trôi dạt khắp nơi cuối cùng phải tìm đến cái chết trong \"Đong đưa cùng quẫn\", rồi chuyện tình lãng mạn như bước ra từ những tiểu thuyết ngôn tình của đôi trẻ trong \"Cà phê Sách\",...</p><p style=\"box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; color: rgb(58, 71, 82); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; height: auto; text-overflow: ellipsis; display: inherit; -webkit-line-clamp: 2; -webkit-box-orient: vertical; line-height: 18px; overflow: hidden; text-align: justify;\">Tất cả làm nên màu sắc nhẹ nhàng, đượm buồn nhưng vẫn lóe lên ánh sáng của hy vọng, của niềm tin vào tương lai, tình người và tình yêu dù đâu đây, cuộc sống vẫn thật đen tối, miệng đời vẫn thật cay độc với những kiếp người.</p><p style=\"box-sizing: inherit; font-family: Arial, Helvetica, sans-serif; color: rgb(58, 71, 82); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; height: auto; text-overflow: ellipsis; display: inherit; -webkit-line-clamp: 2; -webkit-box-orient: vertical; line-height: 18px; overflow: hidden; text-align: center;\"><br></p>', NULL, '2019-12-11 10:45:27', '2019-12-11 10:45:27'),
(38, 36, 'Bản đồ', 'Địa chỉ liên hệ', 'dia-chi-lien-he', 'anh1.jpg', '<p>&lt;iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.6275662231697!2d105.82147791440707!3d21.007561193878768!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac81847527d9%3A0x608eb25e26856d92!2zxJDhuqFpIEjhu41jIHRo4buneSBs4bujaQ!5e0!3m2!1svi!2sus!4v1576187624838!5m2!1svi!2sus\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"&gt;&lt;/iframe&gt;<br></p>', '2019-12-12 14:54:33', '2019-12-12 14:40:48', '2019-12-12 14:54:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT 1,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `about` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `status`, `phone`, `address`, `shipping`, `about`, `deleted_at`, `created_at`, `updated_at`) VALUES
(54, 8, 2, NULL, 'Nam Định', 'thanh toán khi nhận hàng', 'giao hàng vào chủ nhật', NULL, '2019-12-23 17:51:24', '2019-12-23 18:08:57'),
(55, 8, 2, NULL, 'Nam Định', 'thanh toán khi nhận hàng', 'giao hàng vào chủ nhật', NULL, '2019-12-23 17:53:06', '2019-12-23 18:08:59'),
(56, 8, 2, NULL, 'Nam Định', 'ngan-luong', 'giao hàng vào chủ nhật', NULL, '2019-12-23 17:54:12', '2019-12-23 18:09:43'),
(57, 8, 2, NULL, 'Nam Định', 'ngan-luong', 'giao hàng vào chủ nhật', NULL, '2019-12-23 17:55:56', '2019-12-23 18:09:46'),
(58, 8, 1, NULL, 'Nam Định', 'ngan-luong', 'giao hàng nhanh', NULL, '2019-12-23 17:57:44', '2019-12-23 17:57:44'),
(59, 8, 2, NULL, 'Nam Định', 'thanh toán khi nhận hàng', 'giao hàng nhanh', NULL, '2019-12-23 18:03:09', '2019-12-23 18:09:40'),
(60, 8, 1, NULL, 'Nam Định', 'thanh toán khi nhận hàng', 'giao hàng nhanh', NULL, '2019-12-23 18:22:04', '2019-12-23 18:22:04'),
(61, 8, 1, NULL, 'Nam Định', 'thanh toán khi nhận hàng', 'giao hàng vào chủ nhật', NULL, '2019-12-23 18:23:30', '2019-12-23 18:23:30'),
(62, 8, 1, NULL, 'Nam Định', 'ngan-luong', 'giao hàng nhanh', NULL, '2019-12-23 18:24:42', '2019-12-23 18:24:42'),
(63, 8, 1, NULL, 'Nam Định', 'thanh toán khi nhận hàng', 'giao hàng nhanh', NULL, '2019-12-23 18:27:29', '2019-12-23 18:27:29'),
(64, 8, 1, NULL, 'Nam Định', 'thanh toán khi nhận hàng', 'giao hàng nhanh', NULL, '2019-12-23 18:29:55', '2019-12-23 18:29:55'),
(65, 8, 1, NULL, 'Hà Nội', 'thanh toán khi nhận hàng', 'giao hàng nhanh', NULL, '2019-12-23 18:44:01', '2019-12-23 18:44:01'),
(66, 8, 1, NULL, 'Nam Định', 'thanh toán khi nhận hàng', 'giao hàng nhanh', NULL, '2019-12-23 18:45:25', '2019-12-23 18:45:25'),
(67, 8, 1, NULL, 'Nam Định', 'thanh toán khi nhận hàng', 'giao hàng nhanh nhé', NULL, '2019-12-23 19:45:40', '2019-12-23 19:45:40'),
(68, 12, 1, NULL, 'Nam Định', 'thanh toán khi nhận hàng', 'Giao hàng ngay', NULL, '2019-12-23 19:48:38', '2019-12-23 19:48:38'),
(69, 12, 1, NULL, 'Nam Định', 'thanh toán khi nhận hàng', 'giao hàng nhanh nhé', NULL, '2019-12-23 19:50:18', '2019-12-23 19:50:18'),
(70, 12, 1, NULL, 'Nam Định', 'thanh toán khi nhận hàng', 'giao hàng vào chủ nhật', NULL, '2019-12-23 19:54:27', '2019-12-23 19:54:27'),
(71, 12, 1, NULL, 'Hà Nội', 'thanh toán khi nhận hàng', 'giao dịch vào chủ nhật', NULL, '2019-12-23 19:55:14', '2019-12-23 19:55:14'),
(72, 12, 1, NULL, 'Hà Nội', 'thanh toán khi nhận hàng', 'giao hàng vào chủ nhật', NULL, '2019-12-23 19:59:38', '2019-12-23 19:59:38'),
(73, 12, 1, NULL, 'Hà Nội', 'thanh toán khi nhận hàng', 'Nam Định', NULL, '2019-12-23 20:00:17', '2019-12-23 20:00:17'),
(74, 12, 1, NULL, 'Nam Định', 'thanh toán khi nhận hàng', 'giao hàng vào chủ nhật', NULL, '2019-12-23 23:50:57', '2019-12-23 23:50:57'),
(75, 12, 1, NULL, 'Nam Định', 'thanh toán khi nhận hàng', 'giao hàng vào chủ nhật', NULL, '2019-12-23 23:51:53', '2019-12-23 23:51:53'),
(76, 12, 1, NULL, 'Nam Định', 'thanh toán khi nhận hàng', 'giao hàng vào chủ nhật', NULL, '2019-12-23 23:52:59', '2019-12-23 23:52:59'),
(77, 12, 1, NULL, 'Nam Định', 'thanh toán khi nhận hàng', 'giao hàng vào chủ nhật', NULL, '2019-12-23 23:53:40', '2019-12-23 23:53:40'),
(78, 12, 1, NULL, 'Nam Định', 'thanh toán khi nhận hàng', 'giao hàng vào chủ nhật', NULL, '2019-12-23 23:58:56', '2019-12-23 23:58:56'),
(79, 12, 1, NULL, 'Nam Định', 'thanh toán khi nhận hàng', 'giao hàng vào chủ nhật', NULL, '2019-12-24 00:01:38', '2019-12-24 00:01:38'),
(80, 12, 1, NULL, 'Nam Định', 'thanh toán khi nhận hàng', 'giao hàng vào chủ nhật', NULL, '2019-12-24 00:02:23', '2019-12-24 00:02:23'),
(81, 12, 1, NULL, 'Nam Định', 'thanh toán khi nhận hàng', 'giao hàng vào chủ nhật', NULL, '2019-12-24 00:22:40', '2019-12-24 00:22:40'),
(82, 13, 1, NULL, 'Vụ Bản Nam Định', 'ngan-luong', 'giao hàng vào chủ nhật', NULL, '2019-12-24 05:58:31', '2019-12-24 05:58:31'),
(83, 13, 1, NULL, 'Vụ Bản Nam Định', 'thanh toán khi nhận hàng', 'giào hàng vào chủ nhật', NULL, '2019-12-24 05:59:48', '2019-12-24 05:59:48'),
(84, 13, 1, NULL, 'Vụ Bản Nam Định', 'thanh toán khi nhận hàng', 'giao hàng nhanh nha', NULL, '2019-12-24 07:29:51', '2019-12-24 07:29:51'),
(85, 13, 1, NULL, 'Vụ Bản Nam Định', 'thanh toán khi nhận hàng', 'giao hàng vào chủ nhật', NULL, '2019-12-24 07:31:42', '2019-12-24 07:31:42'),
(86, 13, 1, NULL, 'Vụ Bản Nam Định', 'thanh toán khi nhận hàng', 'giao hàng vào chủ nhật', NULL, '2019-12-24 07:34:47', '2019-12-24 07:34:47'),
(87, 13, 1, NULL, 'Vụ Bản Nam Định', 'thanh toán khi nhận hàng', 'giao hàng vào chu nhật', NULL, '2019-12-24 07:35:42', '2019-12-24 07:35:42'),
(88, 13, 1, NULL, 'Vụ Bản Nam Định', 'thanh toán khi nhận hàng', 'giao hàng đúng giờ nhé', NULL, '2019-12-24 08:21:30', '2019-12-24 08:21:30'),
(89, 13, 1, NULL, 'Vụ Bản Nam Định', 'thanh toán khi nhận hàng', 'giao hàng đúng giờ nhé', NULL, '2019-12-24 08:23:10', '2019-12-24 08:23:10'),
(90, 13, 1, NULL, 'Vụ Bản Nam Định', 'thanh toán khi nhận hàng', 'giao hàng đúng giờ nhé', NULL, '2019-12-24 08:24:45', '2019-12-24 08:24:45'),
(91, 13, 1, NULL, 'Vụ Bản Nam Định', 'thanh toán khi nhận hàng', 'giao hàng đúng giờ nhé', NULL, '2019-12-24 08:26:29', '2019-12-24 08:26:29'),
(92, 13, 1, NULL, 'Vụ Bản Nam Định', 'thanh toán khi nhận hàng', 'giao hàng vào chủ nhật', NULL, '2019-12-24 08:37:41', '2019-12-24 08:37:41'),
(93, 13, 1, NULL, 'Hà Nội', 'thanh toán khi nhận hàng', 'giao nhanh nhé', NULL, '2019-12-24 08:38:39', '2019-12-24 08:38:39'),
(94, 13, 1, NULL, 'Vụ Bản Nam Định', 'thanh toán khi nhận hàng', 'giao hàng nhanh', NULL, '2019-12-24 08:39:26', '2019-12-24 08:39:26'),
(95, 13, 1, NULL, 'Vụ Bản Nam Định', 'thanh toán khi nhận hàng', 'giao hàng vào chủ nhật', NULL, '2019-12-24 08:40:21', '2019-12-24 08:40:21'),
(96, 13, 1, NULL, 'Vụ Bản Nam Định', 'thanh toán khi nhận hàng', 'giao hàng vào chủ nhật', NULL, '2019-12-24 08:41:23', '2019-12-24 08:41:23'),
(97, 13, 1, NULL, 'Vụ Bản Nam Định', 'thanh toán khi nhận hàng', 'giao hàng vào chủ nhật', NULL, '2019-12-24 08:42:22', '2019-12-24 08:42:22'),
(98, 13, 1, NULL, 'Nam Định', 'thanh toán khi nhận hàng', 'giao hàng vào chủ nhật', NULL, '2019-12-24 08:44:34', '2019-12-24 08:44:34'),
(99, 13, 1, NULL, 'Vụ Bản Nam Định', 'thanh toán khi nhận hàng', 'giao hàng nhanh', NULL, '2019-12-24 09:00:30', '2019-12-24 09:00:30'),
(100, 13, 1, NULL, 'Vụ Bản Nam Định', 'thanh toán khi nhận hàng', 'giao hàng nhanh', NULL, '2019-12-24 09:12:01', '2019-12-24 09:12:01'),
(101, 13, 1, NULL, 'Vụ Bản Nam Định', 'thanh toán khi nhận hàng', 'giao hàng giờ nhé', NULL, '2019-12-24 09:12:46', '2019-12-24 09:12:46'),
(102, 13, 1, NULL, 'Nam Định', 'thanh toán khi nhận hàng', 'liên hệ trước khi giao hàng nhé', NULL, '2019-12-24 09:13:31', '2019-12-24 09:13:31'),
(103, 8, 1, NULL, 'Vụ Bản Nam Định', 'ngan-luong', 'liên hệ trước khi igao hàng', NULL, '2019-12-24 22:25:45', '2019-12-24 22:25:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders_detail`
--

CREATE TABLE `orders_detail` (
  `orders_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` float(10,3) NOT NULL,
  `quantity` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders_detail`
--

INSERT INTO `orders_detail` (`orders_id`, `product_id`, `price`, `quantity`, `deleted_at`, `created_at`, `updated_at`) VALUES
(54, 76, 100000.000, 1, NULL, '2019-12-24 00:51:24', '2019-12-24 00:51:24'),
(54, 75, 90000.000, 1, NULL, '2019-12-24 00:51:24', '2019-12-24 00:51:24'),
(54, 74, 100000.000, 1, NULL, '2019-12-24 00:51:24', '2019-12-24 00:51:24'),
(55, 73, 100000.000, 4, NULL, '2019-12-24 00:53:06', '2019-12-24 00:53:06'),
(55, 72, 100000.000, 3, NULL, '2019-12-24 00:53:06', '2019-12-24 00:53:06'),
(55, 71, 90000.000, 4, NULL, '2019-12-24 00:53:06', '2019-12-24 00:53:06'),
(56, 71, 90000.000, 1, NULL, '2019-12-24 00:54:12', '2019-12-24 00:54:12'),
(56, 75, 90000.000, 1, NULL, '2019-12-24 00:54:12', '2019-12-24 00:54:12'),
(56, 74, 100000.000, 1, NULL, '2019-12-24 00:54:12', '2019-12-24 00:54:12'),
(56, 73, 100000.000, 1, NULL, '2019-12-24 00:54:12', '2019-12-24 00:54:12'),
(57, 59, 79000.000, 1, NULL, '2019-12-24 00:55:56', '2019-12-24 00:55:56'),
(57, 60, 89000.000, 1, NULL, '2019-12-24 00:55:56', '2019-12-24 00:55:56'),
(57, 61, 10000.000, 1, NULL, '2019-12-24 00:55:56', '2019-12-24 00:55:56'),
(58, 48, 89000.000, 1, NULL, '2019-12-24 00:57:44', '2019-12-24 00:57:44'),
(58, 51, 65000.000, 1, NULL, '2019-12-24 00:57:44', '2019-12-24 00:57:44'),
(58, 49, 100000.000, 1, NULL, '2019-12-24 00:57:44', '2019-12-24 00:57:44'),
(59, 53, 200000.000, 2, NULL, '2019-12-24 01:03:09', '2019-12-24 01:03:09'),
(59, 54, 65000.000, 1, NULL, '2019-12-24 01:03:09', '2019-12-24 01:03:09'),
(59, 55, 70000.000, 1, NULL, '2019-12-24 01:03:09', '2019-12-24 01:03:09'),
(60, 49, 100000.000, 1, NULL, '2019-12-24 01:22:04', '2019-12-24 01:22:04'),
(60, 51, 65000.000, 1, NULL, '2019-12-24 01:22:04', '2019-12-24 01:22:04'),
(60, 38, 180000.000, 1, NULL, '2019-12-24 01:22:04', '2019-12-24 01:22:04'),
(60, 41, 150000.000, 1, NULL, '2019-12-24 01:22:04', '2019-12-24 01:22:04'),
(61, 49, 100000.000, 1, NULL, '2019-12-24 01:23:30', '2019-12-24 01:23:30'),
(61, 51, 65000.000, 1, NULL, '2019-12-24 01:23:30', '2019-12-24 01:23:30'),
(61, 41, 150000.000, 1, NULL, '2019-12-24 01:23:30', '2019-12-24 01:23:30'),
(61, 38, 180000.000, 1, NULL, '2019-12-24 01:23:30', '2019-12-24 01:23:30'),
(62, 64, 150000.000, 1, NULL, '2019-12-24 01:24:42', '2019-12-24 01:24:42'),
(62, 65, 100000.000, 1, NULL, '2019-12-24 01:24:42', '2019-12-24 01:24:42'),
(62, 66, 100000.000, 1, NULL, '2019-12-24 01:24:42', '2019-12-24 01:24:42'),
(62, 63, 90000.000, 1, NULL, '2019-12-24 01:24:42', '2019-12-24 01:24:42'),
(63, 38, 180000.000, 1, NULL, '2019-12-24 01:27:29', '2019-12-24 01:27:29'),
(63, 58, 99000.000, 1, NULL, '2019-12-24 01:27:29', '2019-12-24 01:27:29'),
(63, 57, 100000.000, 1, NULL, '2019-12-24 01:27:29', '2019-12-24 01:27:29'),
(63, 53, 200000.000, 1, NULL, '2019-12-24 01:27:29', '2019-12-24 01:27:29'),
(64, 58, 99000.000, 1, NULL, '2019-12-24 01:29:55', '2019-12-24 01:29:55'),
(64, 57, 100000.000, 1, NULL, '2019-12-24 01:29:55', '2019-12-24 01:29:55'),
(64, 53, 200000.000, 1, NULL, '2019-12-24 01:29:55', '2019-12-24 01:29:55'),
(64, 56, 100000.000, 1, NULL, '2019-12-24 01:29:55', '2019-12-24 01:29:55'),
(65, 45, 180000.000, 1, NULL, '2019-12-24 01:44:01', '2019-12-24 01:44:01'),
(65, 44, 30000.000, 1, NULL, '2019-12-24 01:44:01', '2019-12-24 01:44:01'),
(65, 46, 150000.000, 1, NULL, '2019-12-24 01:44:01', '2019-12-24 01:44:01'),
(65, 47, 90000.000, 1, NULL, '2019-12-24 01:44:01', '2019-12-24 01:44:01'),
(66, 38, 180000.000, 3, NULL, '2019-12-24 01:45:25', '2019-12-24 01:45:25'),
(66, 41, 150000.000, 1, NULL, '2019-12-24 01:45:25', '2019-12-24 01:45:25'),
(67, 38, 180000.000, 1, NULL, '2019-12-24 02:45:40', '2019-12-24 02:45:40'),
(67, 41, 150000.000, 1, NULL, '2019-12-24 02:45:40', '2019-12-24 02:45:40'),
(68, 62, 100000.000, 1, NULL, '2019-12-24 02:48:38', '2019-12-24 02:48:38'),
(68, 64, 150000.000, 1, NULL, '2019-12-24 02:48:38', '2019-12-24 02:48:38'),
(68, 65, 100000.000, 1, NULL, '2019-12-24 02:48:38', '2019-12-24 02:48:38'),
(68, 66, 100000.000, 1, NULL, '2019-12-24 02:48:38', '2019-12-24 02:48:38'),
(69, 64, 150000.000, 1, NULL, '2019-12-24 02:50:18', '2019-12-24 02:50:18'),
(69, 65, 100000.000, 1, NULL, '2019-12-24 02:50:18', '2019-12-24 02:50:18'),
(69, 66, 100000.000, 1, NULL, '2019-12-24 02:50:18', '2019-12-24 02:50:18'),
(69, 62, 100000.000, 1, NULL, '2019-12-24 02:50:18', '2019-12-24 02:50:18'),
(70, 49, 100000.000, 1, NULL, '2019-12-24 02:54:27', '2019-12-24 02:54:27'),
(70, 51, 65000.000, 1, NULL, '2019-12-24 02:54:27', '2019-12-24 02:54:27'),
(70, 48, 89000.000, 1, NULL, '2019-12-24 02:54:27', '2019-12-24 02:54:27'),
(70, 50, 95000.000, 1, NULL, '2019-12-24 02:54:27', '2019-12-24 02:54:27'),
(71, 49, 100000.000, 1, NULL, '2019-12-24 02:55:14', '2019-12-24 02:55:14'),
(71, 51, 65000.000, 1, NULL, '2019-12-24 02:55:14', '2019-12-24 02:55:14'),
(71, 50, 95000.000, 1, NULL, '2019-12-24 02:55:14', '2019-12-24 02:55:14'),
(72, 59, 79000.000, 1, NULL, '2019-12-24 02:59:38', '2019-12-24 02:59:38'),
(72, 61, 10000.000, 1, NULL, '2019-12-24 02:59:38', '2019-12-24 02:59:38'),
(72, 60, 89000.000, 1, NULL, '2019-12-24 02:59:38', '2019-12-24 02:59:38'),
(73, 59, 79000.000, 1, NULL, '2019-12-24 03:00:17', '2019-12-24 03:00:17'),
(73, 61, 10000.000, 1, NULL, '2019-12-24 03:00:17', '2019-12-24 03:00:17'),
(73, 60, 89000.000, 1, NULL, '2019-12-24 03:00:17', '2019-12-24 03:00:17'),
(74, 45, 180000.000, 1, NULL, '2019-12-24 06:50:57', '2019-12-24 06:50:57'),
(74, 44, 30000.000, 1, NULL, '2019-12-24 06:50:57', '2019-12-24 06:50:57'),
(74, 46, 150000.000, 1, NULL, '2019-12-24 06:50:57', '2019-12-24 06:50:57'),
(74, 47, 90000.000, 1, NULL, '2019-12-24 06:50:57', '2019-12-24 06:50:57'),
(75, 47, 90000.000, 1, NULL, '2019-12-24 06:51:53', '2019-12-24 06:51:53'),
(75, 42, 250000.000, 1, NULL, '2019-12-24 06:51:53', '2019-12-24 06:51:53'),
(75, 43, 180000.000, 1, NULL, '2019-12-24 06:51:53', '2019-12-24 06:51:53'),
(75, 44, 30000.000, 1, NULL, '2019-12-24 06:51:53', '2019-12-24 06:51:53'),
(76, 59, 79000.000, 1, NULL, '2019-12-24 06:52:59', '2019-12-24 06:52:59'),
(76, 61, 10000.000, 1, NULL, '2019-12-24 06:52:59', '2019-12-24 06:52:59'),
(77, 58, 99000.000, 1, NULL, '2019-12-24 06:53:40', '2019-12-24 06:53:40'),
(77, 57, 100000.000, 1, NULL, '2019-12-24 06:53:40', '2019-12-24 06:53:40'),
(77, 54, 65000.000, 1, NULL, '2019-12-24 06:53:40', '2019-12-24 06:53:40'),
(78, 49, 100000.000, 1, NULL, '2019-12-24 06:58:56', '2019-12-24 06:58:56'),
(78, 51, 65000.000, 1, NULL, '2019-12-24 06:58:56', '2019-12-24 06:58:56'),
(78, 38, 180000.000, 1, NULL, '2019-12-24 06:58:56', '2019-12-24 06:58:56'),
(79, 59, 79000.000, 1, NULL, '2019-12-24 07:01:38', '2019-12-24 07:01:38'),
(79, 61, 10000.000, 1, NULL, '2019-12-24 07:01:38', '2019-12-24 07:01:38'),
(79, 64, 150000.000, 1, NULL, '2019-12-24 07:01:38', '2019-12-24 07:01:38'),
(80, 40, 150000.000, 1, NULL, '2019-12-24 07:02:23', '2019-12-24 07:02:23'),
(80, 37, 136000.000, 1, NULL, '2019-12-24 07:02:23', '2019-12-24 07:02:23'),
(80, 41, 150000.000, 1, NULL, '2019-12-24 07:02:23', '2019-12-24 07:02:23'),
(81, 62, 100000.000, 1, NULL, '2019-12-24 07:22:40', '2019-12-24 07:22:40'),
(81, 64, 150000.000, 1, NULL, '2019-12-24 07:22:40', '2019-12-24 07:22:40'),
(81, 65, 100000.000, 1, NULL, '2019-12-24 07:22:40', '2019-12-24 07:22:40'),
(81, 66, 100000.000, 1, NULL, '2019-12-24 07:22:40', '2019-12-24 07:22:40'),
(81, 63, 90000.000, 1, NULL, '2019-12-24 07:22:40', '2019-12-24 07:22:40'),
(82, 45, 180000.000, 1, NULL, '2019-12-24 12:58:31', '2019-12-24 12:58:31'),
(82, 44, 30000.000, 1, NULL, '2019-12-24 12:58:31', '2019-12-24 12:58:31'),
(82, 46, 150000.000, 1, NULL, '2019-12-24 12:58:31', '2019-12-24 12:58:31'),
(83, 59, 79000.000, 1, NULL, '2019-12-24 12:59:48', '2019-12-24 12:59:48'),
(83, 61, 10000.000, 1, NULL, '2019-12-24 12:59:48', '2019-12-24 12:59:48'),
(83, 60, 89000.000, 1, NULL, '2019-12-24 12:59:48', '2019-12-24 12:59:48'),
(84, 58, 99000.000, 1, NULL, '2019-12-24 14:29:51', '2019-12-24 14:29:51'),
(84, 57, 100000.000, 1, NULL, '2019-12-24 14:29:51', '2019-12-24 14:29:51'),
(84, 53, 200000.000, 1, NULL, '2019-12-24 14:29:51', '2019-12-24 14:29:51'),
(84, 56, 100000.000, 1, NULL, '2019-12-24 14:29:51', '2019-12-24 14:29:51'),
(85, 58, 99000.000, 1, NULL, '2019-12-24 14:31:42', '2019-12-24 14:31:42'),
(85, 53, 200000.000, 1, NULL, '2019-12-24 14:31:42', '2019-12-24 14:31:42'),
(85, 54, 65000.000, 1, NULL, '2019-12-24 14:31:42', '2019-12-24 14:31:42'),
(85, 57, 100000.000, 1, NULL, '2019-12-24 14:31:42', '2019-12-24 14:31:42'),
(86, 58, 99000.000, 1, NULL, '2019-12-24 14:34:47', '2019-12-24 14:34:47'),
(86, 53, 200000.000, 1, NULL, '2019-12-24 14:34:47', '2019-12-24 14:34:47'),
(86, 55, 70000.000, 1, NULL, '2019-12-24 14:34:47', '2019-12-24 14:34:47'),
(86, 54, 65000.000, 1, NULL, '2019-12-24 14:34:47', '2019-12-24 14:34:47'),
(86, 57, 100000.000, 1, NULL, '2019-12-24 14:34:47', '2019-12-24 14:34:47'),
(87, 58, 99000.000, 1, NULL, '2019-12-24 14:35:42', '2019-12-24 14:35:42'),
(87, 57, 100000.000, 1, NULL, '2019-12-24 14:35:42', '2019-12-24 14:35:42'),
(87, 56, 100000.000, 1, NULL, '2019-12-24 14:35:42', '2019-12-24 14:35:42'),
(88, 59, 79000.000, 2, NULL, '2019-12-24 15:21:30', '2019-12-24 15:21:30'),
(88, 48, 89000.000, 1, NULL, '2019-12-24 15:21:30', '2019-12-24 15:21:30'),
(88, 47, 90000.000, 1, NULL, '2019-12-24 15:21:30', '2019-12-24 15:21:30'),
(89, 48, 89000.000, 1, NULL, '2019-12-24 15:23:10', '2019-12-24 15:23:10'),
(89, 52, 70000.000, 1, NULL, '2019-12-24 15:23:10', '2019-12-24 15:23:10'),
(89, 44, 30000.000, 1, NULL, '2019-12-24 15:23:10', '2019-12-24 15:23:10'),
(89, 46, 150000.000, 1, NULL, '2019-12-24 15:23:10', '2019-12-24 15:23:10'),
(90, 67, 200000.000, 1, NULL, '2019-12-24 15:24:45', '2019-12-24 15:24:45'),
(90, 69, 100000.000, 1, NULL, '2019-12-24 15:24:45', '2019-12-24 15:24:45'),
(90, 68, 100000.000, 1, NULL, '2019-12-24 15:24:45', '2019-12-24 15:24:45'),
(91, 70, 100000.000, 1, NULL, '2019-12-24 15:26:29', '2019-12-24 15:26:29'),
(91, 67, 200000.000, 1, NULL, '2019-12-24 15:26:29', '2019-12-24 15:26:29'),
(91, 68, 100000.000, 1, NULL, '2019-12-24 15:26:29', '2019-12-24 15:26:29'),
(92, 58, 99000.000, 1, NULL, '2019-12-24 15:37:41', '2019-12-24 15:37:41'),
(92, 67, 200000.000, 1, NULL, '2019-12-24 15:37:41', '2019-12-24 15:37:41'),
(92, 69, 100000.000, 1, NULL, '2019-12-24 15:37:41', '2019-12-24 15:37:41'),
(93, 37, 136000.000, 1, NULL, '2019-12-24 15:38:39', '2019-12-24 15:38:39'),
(93, 70, 100000.000, 1, NULL, '2019-12-24 15:38:39', '2019-12-24 15:38:39'),
(93, 68, 100000.000, 1, NULL, '2019-12-24 15:38:39', '2019-12-24 15:38:39'),
(93, 67, 200000.000, 1, NULL, '2019-12-24 15:38:39', '2019-12-24 15:38:39'),
(94, 67, 200000.000, 1, NULL, '2019-12-24 15:39:26', '2019-12-24 15:39:26'),
(94, 70, 100000.000, 1, NULL, '2019-12-24 15:39:26', '2019-12-24 15:39:26'),
(94, 68, 100000.000, 1, NULL, '2019-12-24 15:39:26', '2019-12-24 15:39:26'),
(95, 67, 200000.000, 1, NULL, '2019-12-24 15:40:21', '2019-12-24 15:40:21'),
(95, 69, 100000.000, 1, NULL, '2019-12-24 15:40:21', '2019-12-24 15:40:21'),
(95, 70, 100000.000, 1, NULL, '2019-12-24 15:40:21', '2019-12-24 15:40:21'),
(96, 67, 200000.000, 1, NULL, '2019-12-24 15:41:23', '2019-12-24 15:41:23'),
(96, 68, 100000.000, 1, NULL, '2019-12-24 15:41:23', '2019-12-24 15:41:23'),
(96, 58, 99000.000, 1, NULL, '2019-12-24 15:41:23', '2019-12-24 15:41:23'),
(97, 41, 150000.000, 1, NULL, '2019-12-24 15:42:22', '2019-12-24 15:42:22'),
(97, 67, 200000.000, 1, NULL, '2019-12-24 15:42:22', '2019-12-24 15:42:22'),
(97, 59, 79000.000, 1, NULL, '2019-12-24 15:42:22', '2019-12-24 15:42:22'),
(98, 67, 200000.000, 1, NULL, '2019-12-24 15:44:34', '2019-12-24 15:44:34'),
(98, 70, 100000.000, 1, NULL, '2019-12-24 15:44:34', '2019-12-24 15:44:34'),
(98, 69, 100000.000, 1, NULL, '2019-12-24 15:44:34', '2019-12-24 15:44:34'),
(99, 38, 180000.000, 1, NULL, '2019-12-24 16:00:30', '2019-12-24 16:00:30'),
(99, 41, 150000.000, 1, NULL, '2019-12-24 16:00:30', '2019-12-24 16:00:30'),
(99, 37, 136000.000, 1, NULL, '2019-12-24 16:00:30', '2019-12-24 16:00:30'),
(100, 74, 100000.000, 1, NULL, '2019-12-24 16:12:01', '2019-12-24 16:12:01'),
(100, 76, 100000.000, 1, NULL, '2019-12-24 16:12:01', '2019-12-24 16:12:01'),
(100, 73, 100000.000, 1, NULL, '2019-12-24 16:12:01', '2019-12-24 16:12:01'),
(100, 75, 90000.000, 1, NULL, '2019-12-24 16:12:01', '2019-12-24 16:12:01'),
(101, 74, 100000.000, 1, NULL, '2019-12-24 16:12:46', '2019-12-24 16:12:46'),
(101, 76, 100000.000, 1, NULL, '2019-12-24 16:12:46', '2019-12-24 16:12:46'),
(101, 73, 100000.000, 1, NULL, '2019-12-24 16:12:46', '2019-12-24 16:12:46'),
(101, 72, 100000.000, 1, NULL, '2019-12-24 16:12:46', '2019-12-24 16:12:46'),
(102, 74, 100000.000, 1, NULL, '2019-12-24 16:13:31', '2019-12-24 16:13:31'),
(102, 75, 90000.000, 1, NULL, '2019-12-24 16:13:31', '2019-12-24 16:13:31'),
(102, 72, 100000.000, 1, NULL, '2019-12-24 16:13:31', '2019-12-24 16:13:31'),
(102, 76, 100000.000, 1, NULL, '2019-12-24 16:13:31', '2019-12-24 16:13:31'),
(103, 58, 99000.000, 1, NULL, '2019-12-25 05:25:45', '2019-12-25 05:25:45'),
(103, 57, 100000.000, 1, NULL, '2019-12-25 05:25:45', '2019-12-25 05:25:45'),
(103, 53, 200000.000, 1, NULL, '2019-12-25 05:25:45', '2019-12-25 05:25:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `publishers_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pruchases_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `quantity_now` int(11) NOT NULL,
  `writer_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `about` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` float(10,3) NOT NULL,
  `sale_price` float(10,3) DEFAULT 0.000,
  `status` tinyint(1) DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `slug`, `category_id`, `publishers_id`, `user_id`, `pruchases_id`, `quantity`, `quantity_now`, `writer_name`, `about`, `image`, `price`, `sale_price`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(36, 'Truyện Tiếu Lâm', 'truyen-tieu-lam', 21, 38, 36, 37, 100, 100, 'Phạm Trường Tam', 'Những câu truyện thú vị truyền miệng của dân gian...', 'truyen-tieulam.jpg', 100000.000, 90000.000, 1, '2019-12-22 21:54:21', '2019-12-22 21:01:02', '2019-12-22 21:54:21'),
(37, 'Tăng Trường Bùng Nổ', 'tang-truong-bung-no', 21, 38, 36, 36, 100, 97, 'International bestseller', 'Tăng trưởng bùng nổ là cuốn sách tiết lộ các chiến thuật tăng trưởng thiên tài qua việc nghiên cứu nhiều trường hợp và từng bước giúp các', 'tang-truong-bung-no.jpeg', 136000.000, 136000.000, 1, NULL, '2019-12-22 21:19:40', '2019-12-24 09:00:30'),
(38, 'Bàn cờ lớn', 'ban-co-lon', 21, 40, 36, 36, 100, 91, 'zbigniew brzezinski', 'Chiến lược toàn cầu của Mỹ để duy trì vị thế đặc biệt của mình trên thế giới là gì? Bàn Cờ Lớn chính là câu trả lời. Khi thế kỷ 20 sắp kết thúc, Mỹ đã .', 'ban-co-lon.jpg', 200000.000, 180000.000, 1, NULL, '2019-12-22 21:33:09', '2019-12-24 09:00:30'),
(39, 'Khéo nói hay để khách mua hàng ngay', 'kheo-noi-hay-de-khach-mua-hang-ngay', 21, 40, 36, 37, 100, 100, 'dịch giả: Thu Hương', 'Trong ứng xử giao tiếp giữa con người với con người, dân gian vẫn truyền nhau câu ca dao:, Lời nói chẳng mất tiền mua, Lựa lời mà nói cho vừa lòng ...', 'kheo-noi-hay-de-khach-mua-hang-ngay.jpg', 250000.000, 200000.000, 1, NULL, '2019-12-22 21:42:10', '2019-12-22 21:42:10'),
(40, 'Thay đổi tư duy đột phá thành công', 'thay-doi-tu-duy-dot--pha-thanh-cong', 21, 36, 36, 36, 100, 99, 'Dịc giả: Khánh Huyền', 'Thay đổi tư duy – đột phá thành công giải thích cách các tổ chức xây dựng thói quen xấu, xác định những lầm tưởng là “thực tiễn tốt nhất” và gợi ý các lựa chọn thay thế có thể góp phần chiến thắng trên thị trường. Nếu bạn muốn cạnh tranh khác biệt trên thị trường ngày nay và thách thức những điều mà công ty bạn muốn làm. Hãy phá bỏ ngay những điều làm bạn có cảm giác khó chịu, những việc thực sự chỉ lãng phí thời gian và thay đổi ngay để đạt được những đỉnh cao', 'THAY-DOI-TU-DUY-DOT-PHA-THANH-CONG.jpg', 150000.000, 150000.000, 1, NULL, '2019-12-22 21:49:17', '2019-12-24 00:02:23'),
(41, 'Bán được hàng hay là chết', 'ban-duoc-hang-hay-la-chet', 21, 38, 36, 37, 100, 93, 'Dịch giả: Minh Nguyệt', 'Bán hàng là một công việc căng thẳng, đòi hỏi khắt khe, ức chế và cũng cực kỳ thú vị và đáng làm. Không có nghề nào khác có nhiều thăng trầm như vậy, bạn có thể đi từ việc khóc trong phòng tắm đến bật một chai rượu sâm banh một phút tiếp theo, sau đó lại khóc trong xe của bạn trong cùng một ngày.', 'ban-duoc-hang-hay-la-chet.jpg', 150000.000, 150000.000, 1, NULL, '2019-12-22 21:52:04', '2019-12-24 09:00:30'),
(42, 'Tây Du ký', 'Tay-du-ki', 23, 36, 36, 36, 100, 99, 'Ngô Thừa Ân', 'Kể về hành trình đi lấy kinh của 4 thầy trò Đường Tăng vượt qua 81 kiếp nạn', 'Tay-Du-Ky.png', 250000.000, 250000.000, 1, NULL, '2019-12-22 22:03:37', '2019-12-23 23:51:53'),
(43, 'Tam  Quốc Diễn Nghĩa', 'Tam-quoc-dien-nghia', 23, 38, 36, 37, 100, 99, 'La Quán Trung', 'Trong bối cảnh quan lại và tướng lĩnh tranh hùng giành quyền lực thống trị, ba vị thủ lĩnh kiệt xuất đã sớm xuất hiện, bao gồm Lưu Bị, Tào Tháo và Tôn Quyền. Họ đều là những nhân vật uy hùng, can đảm và mưu trí, mỗi người đều đam mê theo đuổi tham vọng của mình. Họ đều là người đứng đầu các quốc gia của mình, đó là nước Ngụy, Thục và Ngô. Mỗi người đều mong muốn thống nhất các quốc gia, bình định thiên hạ.   Với sự phò tá của những quân sư tài ba và những tướng lĩnh can đảm nhất thời bấy giờ, ba vị thủ lĩnh này đã gây dựng quyền lực và đối mặt trong trận chiến hùng tráng vì tương lai của Trung Hoa', 'tam-quoc-dien-nghia.jpg', 200000.000, 180000.000, 1, NULL, '2019-12-22 22:08:06', '2019-12-23 23:51:53'),
(44, 'Không gia đình', 'Khong-gia-dinh', 23, 39, 36, 36, 100, 95, 'Dịch giả: Huỳnh Lý', 'KHÔNG GIA ĐÌNH kể chuyện về cuộc đời của cậu bé Reeesmi. Từ nhỏ, Rémi đã bị bắt cóc, rồi bị bố nuôi bán cho một đoàn xiếc thú. Em đã theo đoàn xiếc ấy đi lưu lạc khắp nước Pháp. KHÔNG GIA ĐÌNH luôn cuốn hút, hấp dẫn người đọc vì đây chính là những cuộc phiêu lưu của lòng dũng cảm và tình cảm gia đình. KHÔNG GIA ĐÌNH là quyển sách hay nhất về giáo dục, xứng đáng nhận giải thưởng của viện hàn lâm văn học Pháp.', '605_131315986552773164_Khong-gia-dinh_Bia-cung.jpg', 300000.000, 30000.000, 1, NULL, '2019-12-22 22:15:59', '2019-12-24 08:23:10'),
(45, 'Chiến tran và hòa bình', 'chien-tran-va-hoa-binh', 23, 39, 36, 36, 100, 97, 'L.TônXtôi', 'L. Tônxtôi cũng đã từng băn khoăn: \"Thú thật tôi hoàn toàn không biết một trăm năm sau liệu có ai đọc các tác phẩm của tôi không...\" (thư ông gửi cho nhà nghiên cứu người Anh Uyliam Rôtxôn ngày 27 - 12 - 1878).   Lênin vĩ đại của chúng ta đã giải đáp nỗi băn khoăn đó: \"Tônxtôi đã mất rồi và nước Nga trước cách mạng đã chìm vào dĩ vãng. Nhưng trong di sản của ông có cái không chìm vào dĩ vãng, có cái thuộc về tương lai. Di sản đó, giai cấp vô sản Nga đón lấy và nghiên cứu nó.\" Chiến tranh và hòa bình của L. Tônxtôi chính là loại tác phẩm thuộc về tương lai.', 'chien-tranh-va-hoa-binh.jpg', 180000.000, 180000.000, 1, NULL, '2019-12-22 22:23:01', '2019-12-24 05:58:31'),
(46, 'Nếu chỉ còn một ngày để sống', 'neu-chi-con-mot-ngay-de-song', 23, 39, 36, 36, 100, 96, 'Nicola Yoon', '“Nếu cuộc đời là một cuốn sách thì bạn đọc ngược từ dưới lên cũng sẽ chẳng có gì thay đổi. Hôm nay chẳng khác gì hôm qua. Ngày mai cũng giống hệt ngày hôm nay. Trong cuốn sách về cuộc đời em, chương nào cũng giống hệt chương nào, cho tới khi anh xuất hiện.”', 'neuchiconmotngaydesong.jpg', 150000.000, 150000.000, 1, NULL, '2019-12-22 22:29:42', '2019-12-24 08:23:10'),
(47, 'Người đua diều', 'nguoi-dua-dieu', 23, 39, 36, 36, 100, 96, 'Khaled Hosseini', 'tác phẩm văn học nước ngoài này là câu chuyện có thật của nhà văn người Mỹ gốc Afghanistan Amir về những năm tháng tuổi thơ đầy niềm vui cũng như lỗi lầm cho đến khi trưởng thành lưu lạc trên đất khách quê người, và cuộc hành trình hồi hương để chuộc lại tội lỗi bản thân. Khi còn là một cậu bé, Amir sinh ra và được nuôi nấng bởi một gia đình nhiều của cải quyền thế. Người bạn gắn bó thuở ấu thời là Hassan, con trai người quản gia Ali, rất lanh lợi, mạnh mẽ luôn bảo vệ Amir. Trong một lần Hassan ra sức bảo vệ chiếc diều xanh của Amir trước bọn trẻ xấu dẫn đến bị hành hung và nhục mạ. Nhưng Amir đã để bản tính hèn nhát chiếm lĩnh và thậm chí bịa chuyển nhằm đuổi Hassan và cha Ali ra ngoài. Và chính điều đó đã ám ảnh tâm can của Amir cho dù nay đã trưởng thành và được sống sung túc trên đất Hoa Kỳ. Chính vì thế, Amir quyết định cuộc lỗi bằng cách trở về Afghanistan để cứu con trai Hassan khỏi tay bọn Taliban cũng là để cứu rỗi linh hồn mình.', 'nguoi-dua-dieu.jpg', 100000.000, 90000.000, 1, NULL, '2019-12-22 22:31:45', '2019-12-24 08:21:30'),
(48, 'Tôi thấy hoa vàng trên cỏ xanh', 'toi-thay-hoa-vang-tren-co-xanh', 22, 36, 36, 36, 100, 96, 'Nguyễn Nhật Ánh', 'Ta bắt gặp trong Tôi Thấy Hoa Vàng Trên Cỏ Xanh một thế giới đấy bất ngờ và thi vị non trẻ với những suy ngẫm giản dị thôi nhưng gần gũi đến lạ. Câu chuyện của Tôi Thấy Hoa Vàng Trên Cỏ Xanh có chút này chút kia, để ai soi vào cũng thấy mình trong đó, kiểu như lá thư tình đầu đời của cu Thiều chẳng hạn... ngây ngô và khờ khạo.  Nhưng Tôi Thấy Hoa Vàng Trên Cỏ Xanh hình như không còn trong trẻo, thuần khiết trọn vẹn của một thế giới tuổi thơ nữa. Cuốn sách nhỏ nhắn vẫn hồn hậu, dí dỏm, ngọt ngào nhưng lại phảng phất nỗi buồn, về một người cha bệnh tật trốn nhà vì không muốn làm khổ vợ con, về một người cha khác giả làm vua bởi đứa con tâm thầm của ông luôn nghĩ mình là công chúa,... Những bài học về luân lý, về tình người trở đi trở lại trong day dứt và tiếc nuối.', 'toi-thay-hoa-vang-tren-co-xanh.jpg', 89000.000, 89000.000, 1, NULL, '2019-12-23 00:14:43', '2019-12-24 08:23:10'),
(49, 'Bến không chồng', 'ben-khong-chong', 22, 37, 36, 36, 100, 94, 'Dương Hướng', 'Tác phẩm xoay quanh sự trở về của người lính Điện Biên tên Vạn.  Người lính dũng cảm nơi chiến trường nhưng khi trở về làng Đông quê hương lại không hòa nhập được vào đời sống bình thường. Anh giữ nguyên tác phong trận mạc trong cuộc sống thời bình. Vạn không dám vượt qua rào cản để đến với chị Nhân. Nhưng cuộc đời xô đẩy anh cùng hai người phụ nữ trong đời anh đến với những lựa chọn quyết liệt.  Thời cuộc, chiến tranh cùng những điều cố hữu trong nhận thức xã hội khiến những người phụ nữ làng Đông mang theo mình những ám ảnh dai dẳng về một “bến không chồng”.', 'Ben_khong_chong.jpg', 100000.000, 100000.000, 1, NULL, '2019-12-23 00:18:14', '2019-12-23 23:58:56'),
(50, 'Đất Phương Nam', 'dat-rung-phuong-nam', 22, 40, 36, 37, 100, 98, 'ĐOÀN GIỎI', 'Đất rừng phương Nam là tiểu thuyết của nhà văn Đoàn Giỏi viết về cuộc đời phiêu bạt của một cậu bé tên An. Bối cảnh của tiểu thuyết là các tỉnh miền Tây Nam Bộ, Việt Nam vào những năm 1945, sau khi thực dân Pháp quay trở lại xâm chiếm Nam Bộ.  Câu chuyện mượn hình ảnh một cậu bé bị lưu lạc trong thời kỳ kháng chiến chống Pháp ở Nam bộ để giới thiệu Đất rừng Phương Nam. Nơi đó, một vùng đất vô cùng giàu có, hào phóng và hùng vĩ với những con người trung hậu, trí dũng, một lòng một dạ theo kháng chiến.', 'dat-rung-phuong-nam.jpg', 95000.000, 95000.000, 1, NULL, '2019-12-23 00:24:04', '2019-12-23 19:55:14'),
(51, 'Cánh đồng bất tận', 'Canh-dong-bat-dong', 22, 37, 36, 37, 100, 94, 'Nguyễn Ngọc Tư', 'Bạn không thể sao chép nội dung này, vui lòng liên hệ với tác giả hoặc admin để được hỗ trợ.', 'canhdongbattan.jpg', 65000.000, 65000.000, 1, NULL, '2019-12-23 00:47:00', '2019-12-23 23:58:56'),
(52, 'Thời xa vắng', 'thoi-xa-vang', 22, 40, 36, 36, 100, 99, 'Lê Lựu', 'Thời xa vắng là một tiểu thuyết tiêu biểu trong đời viết văn của nhà văn Lê Lựu. tác phẩm ôm chứa một dung lượng lớn chặng đường lịch sử 30 năm oai hùng của dân tộc, từ buổi lập nước đến lúc giải phóng toàn bộ đất nước. lịch sử được khái quát bằng tiểu thuyết thông qua số phận của anh nông dân Giang Minh Sài: học giỏi, là niềm hy vọng, tự hào của cả gia đình và dòng họ.Nhưng cũng chính niềm tự hào đó cũng đã đặt lên vai cậu bé Sài một thứ áp lực vô hình, lúc nào cũng phải học phải làm theo những điều mà mọi người xung quanh cho là \"tốt nhất\". Lấy vợ cũng phải do cha mẹ chọn, ngủ với vợ cũng vì để tránh cái án kỷ luật làm ô nhục danh tiếng gia đình.... Là một người lính với vẻ ngoài thô mộc, khô khan nhưng thục chất ben trong con người Sài lại là một người đang vùng vẫy với niềm khao khát được yêu, được sống với cảm xúc thực sự của mình.Hơn nữa tác phẩm còn có nhiều tầng nhiều lớp với nhưng trăn trở rất đáng suy ngẫm của tác giả', 'thoi-xa-vang.jpg', 70000.000, 70000.000, 1, NULL, '2019-12-23 00:54:44', '2019-12-24 08:23:10'),
(53, 'số đỏ', 'so-do', 27, 37, 36, 37, 100, 92, 'Vũ Trọng Phụng', 'Vũ Trọng Phụng đả kích cay độc cái xã hội tư sản bịp bợm, đang chạy theo lối sống văn minh rởm, hết sức lố lăng thối nát. Tác phẩm này cũng đả kích phong trào được thực dân khuyến khích như: phong trào Âu hoá, vui vẻ trẻ trung, giải phóng phụ nữ, thể dục thể thao, chấn hưng Phật giáo và khẩu hiệu Bình dân dối gạt của bọn cơ hội đương thời...  Một đóng góp hết sức to lớn của Vũ Trong Phụng với tác phẩm này là đã xây dựng được những nhân vật trở thành điển hình về mặt tâm lý xã hội mà đến hôm nay bóng dáng những nhân vật ấy vẫn không mất hẳn, vẫn còn quanh quẩn ở bên cạnh cúng ta, đó là những Xuân Tóc đỏ, bà Phó Đoan, em Chã, ông TYPN, cô Tuyết, cụ cố Hồng biết rồi, khổ lắm, nói mãi.', 'so-so.jpg', 200000.000, 200000.000, 1, NULL, '2019-12-23 08:37:53', '2019-12-24 22:25:45'),
(54, 'Vợ chồng A Phủ', 'vo-chong-a-phu', 27, 37, 36, 37, 100, 96, 'Tô Hoài', 'Vũ Trọng Phụng đả kích cay độc cái xã hội tư sản bịp bợm, đang chạy theo lối sống văn minh rởm, hết sức lố lăng thối nát. Tác phẩm này cũng đả kích phong trào được thực dân khuyến khích như: phong trào Âu hoá, vui vẻ trẻ trung, giải phóng phụ nữ, thể dục thể thao, chấn hưng Phật giáo và khẩu hiệu Bình dân dối gạt của bọn cơ hội đương thời...  Một đóng góp hết sức to lớn của Vũ Trong Phụng với tác phẩm này là đã xây dựng được những nhân vật trở thành điển hình về mặt tâm lý xã hội mà đến hôm nay bóng dáng những nhân vật ấy vẫn không mất hẳn, vẫn còn quanh quẩn ở bên cạnh cúng ta, đó là những Xuân Tóc đỏ, bà Phó Đoan, em Chã, ông TYPN, cô Tuyết, cụ cố Hồng biết rồi, khổ lắm, nói mãi.', 'vochongaphu.jpg', 65000.000, 65000.000, 1, NULL, '2019-12-23 08:44:53', '2019-12-24 07:34:47'),
(55, 'Vợ Nhặt', 'Vo-Nhat', 27, 37, 36, 36, 100, 98, 'Kim Lân', 'Tác phẩm \"Vợ nhặt\" là một truyện ngắn độc đáo, đặc sắc của Kim Lân. Truyện kể về chuyện anh cu Tràng nhà nghèo ở xóm ngụ cư đã nhặt được vợ khi trận đói đang diễn ra kinh khủng, người chết đói đầy đường. Truyện ngắn đã phản ảnh nỗi đau khổ và niềm khao khát sống, khao khát hạnh phúc của người nghèo, qua đó nói lên số phận con người trong xã hội cũ, cái đêm trước khi cách mạng bùng n', 'Vo-nhat.jpg', 70000.000, 70000.000, 1, NULL, '2019-12-23 08:50:33', '2019-12-24 07:34:47'),
(56, 'Truyện  Kiều', 'Truyen-Kieu', 27, 38, 36, 36, 100, 97, 'Nguyễn Du', 'Tác phẩm kể lại cuộc đời, những thử thách và đau khổ của Thúy Kiều, một phụ nữ trẻ xinh đẹp và tài năng, phải hy sinh thân mình để cứu gia đình. Để cứu cha và em trai khỏi tù, cô bán mình kết hôn với một người đàn ông trung niên, không biết rằng anh ta là một kẻ buôn người, và bị ép làm kĩ nữ trong lầu xanh.', 'truyen-kieu.jpg', 100000.000, 100000.000, 1, NULL, '2019-12-23 08:52:31', '2019-12-24 07:35:42'),
(57, 'Ở trọ Sài Gòn', 'o-tro-sai-gon', 27, 38, 36, 36, 100, 92, 'Nguyễn Hoàng Vũ', 'Những ghi chép về cuộc sống của một sinh viên năm nhất khi từ quê vào Sài Gòn trọ học. Là nhiều mảnh ghép mang màu sắc tình bạn, tình người, tình quê, tình… hình như là yêu và đặc biệt yêu toán học. Là chuỗi câu chuyện có vấn đề của những người trẻ bỗng lớn nhanh trong vòng xoay của học hành- mưu sinh- tồn tại- khát vọng.', 'O-Tro-Sai-Gon-Truyen-Ngan-Chon-Loc.jpg', 100000.000, 100000.000, 1, NULL, '2019-12-23 08:54:03', '2019-12-24 22:25:45'),
(58, 'Mắt biếc', 'Mat-biec', 27, 38, 36, 37, 100, 90, 'Nguyễn Nhật Ánh', 'Mắt biếc kể về cuộc đời của nhân vật chính tên Ngạn. Ngạn sinh ra và lớn lên ở một ngôi làng tên là làng Đo Đo (thuộc xã Bình Quế - huyện Thăng Bình - tỉnh Quảng Nam - cũng là nguyên quán của tác giả). Lớn lên cùng với Ngạn là cô bạn hàng xóm có đôi mắt tuyệt đẹp tên là Hà Lan. Tuổi thơ của Ngạn và Hà Lan gắn bó với bao nhiêu kỉ niệm cùng đồi sim, đánh trống trường... Tình bạn trẻ thơ dần dần biến thành tình yêu thầm lặng của Ngạn dành cho Hà Lan. Đến khi lớn hơn một chút, cả hai phải rời làng ra thành phố để tiếp tục học. Khi tấm lòng của Ngạn luôn hướng về Hà Lan và về làng, thì Hà Lan không cưỡng lại được cám dỗ của cuộc sống xa hoa nơi đô thị và ngã vào vòng tay của Dũng. Việc Hà Lan ngã vào vòng tay Dũng, một thanh niên nhà giàu, sành điệu, giỏi võ nhưng rất thiếu đứng đắn đã làm cho Ngạn đau khổ rất nhiều vì điều Ngạn cần là hạnh phúc của Hà Lan.  Mỗi khi Dũng làm Hà Lan tổn thương cô lại tìm Ngạn để nói lên bầu tâm sự, điều đó lại càng làm cho Ngạn buồn thêm. Có lần Ngạn đã đánh nhau với Dũng vì Hà Lan', '11273677.jpg', 99000.000, 99000.000, 1, NULL, '2019-12-23 08:54:55', '2019-12-24 22:25:45'),
(59, 'Dế mèn phiêu lưu kí', 'De-men-phieu-luu-ky', 24, 36, 36, 37, 100, 91, 'Nguyễn Nhật Ánh', 'Kể về cuộc phiêu lưu của dễ mèn qua các vùng đất khác nhau', 'de-men-phieu-luu-ky.jpg', 79000.000, 79000.000, 1, NULL, '2019-12-23 09:03:47', '2019-12-24 08:42:22'),
(60, 'Thám tử CoNan', 'co-nan', 24, 36, 36, 36, 100, 96, 'Gosho Aoyama', 'Mở đầu câu truyện, cậu học sinh trung học 17 tuổi Shinichi Kudo bị biến thành cậu bé Conan Edogawa. Shinichi trong phần đầu của Thám tử lừng danh Conan được miêu tả là một thám tử học đường xuất sắc. Trong một lần đi chơi công viên với Ran Mori, cậu tình cờ chứng kiến vụ một án giết người, Cậu đã giúp cảnh sát làm sáng tỏ vụ án. Trên đường về nhà, cậu vô tình phát hiện một vụ làm ăn mờ ám của những người đàn ông mặc đồ đen. Chúng phát hiện ra cậu và đã cho cậu uống một thứ thuốc độc chưa qua thử nghiệm là Apotoxin-4869 (APTX 4869) với mục đích thủ tiêu cậu. Tuy nhiên chất độc đã không giết chết Kudo mà chỉ khiến cậu bị teo nhỏ.', 'tham-tu-lung-danh-conan.jpg', 89000.000, 89000.000, 1, NULL, '2019-12-23 09:06:22', '2019-12-24 05:59:48'),
(61, 'Doraemon', 'do-ra-e-mon', 24, 36, 36, 36, 100, 94, 'Fujiko F. Fujio', 'Bộ truyện được xem là huyền thoại của Nhật Bản. Nói về cuộc sống của một chú nhóc tên Nobita, tính tình hậu đậu và chú mèo máy Doremon đến từ thế kỉ 22 cùng những người bạn Xuka, Chaien, Xeko; để từ đó gây ra bao tiếng cười và rút ra những bài học ý nghĩa cho người xem', 'doraemon.jpg', 10000.000, 10000.000, 1, NULL, '2019-12-23 09:08:19', '2019-12-24 05:59:48'),
(62, '50 đề trắc nghiệm Văn', '50-de-trac-nghiem-van', 26, 39, 36, 36, 100, 97, 'Đỗ Kim Hảo', 'giúp học sinh có thể rèn luyện việc làm đề thi thật tốt trong những kì thi quan trọng và bổ sung kiến thức cho học sinh', '50-de-trac-nghiem-ngu-van-10.jpg', 100000.000, 100000.000, 1, NULL, '2019-12-23 09:12:46', '2019-12-24 00:22:40'),
(63, 'Vật lý tổng hợp', 'vat-ly-tong-hop', 26, 36, 36, 36, 100, 98, 'Vũ Thanh Khiết', 'Tổng hợp đầy đủ những kiến thức từ cơ bản đến nâng cao của học sinh từ lớp 10 ,11,12. giúp cho sinh viên có thể năm vững tốt nhất những kiến thức vật lý.', 'vat-ly.jpg', 90000.000, 90000.000, 1, NULL, '2019-12-23 09:15:52', '2019-12-24 00:22:40'),
(64, 'Chọn đề thi toán', 'chon-de-thi-toan', 26, 37, 36, 37, 100, 95, 'Trần Xuân Tiếp', 'Tuyển chọn các đề thi vào 10 để giúp cho học sinh có thể nắm bắt được các dạng bài thi. Qua đó có thể làm tốt được các bài tập trong kì thi quan trọng vào lớp 10', 'chon-de-thi-toan.png', 150000.000, 150000.000, 1, NULL, '2019-12-23 09:18:50', '2019-12-24 00:22:40'),
(65, 'Tiếng anh', 'tieng-anh', 26, 38, 36, 36, 100, 96, 'Nguyễn Thanh Hoàng', 'Những bộ đề thi tiếng anh mới nhất,,tổng hợp những kiến thức giúp cho học sinh có thể nắm vững những kiến thức quan trọng. Rèn luyện phản xạ khi học tiếng anh làm cho học sinh chủ động khi làm bài hơn.', 'tieng-anh.jpg', 100000.000, 100000.000, 1, NULL, '2019-12-23 09:23:13', '2019-12-24 00:22:40'),
(66, 'Toán-Hình', 'toan-hinh', 26, 38, 36, 37, 100, 96, 'Nguyễn Thị Hạnh', 'Những bài toán hình học hay nhất giúp cho tư duy hình học của học sinh được phát triển thêm', 'toan-hinh.jpg', 100000.000, 100000.000, 1, NULL, '2019-12-23 09:52:10', '2019-12-24 00:22:40'),
(67, 'Đắc nhân tâm', 'dac-nhan-tam', 28, 39, 36, 36, 100, 91, 'Dale Carnegie', 'Đắc Nhân Tâm cụ thể và chi tiết với những chỉ dẫn để dẫn đạo người, để gây thiện cảm và dẫn dắt người khác,... những hướng dẫn ấy, qua thời gian, có thể không còn thích hợp trong cuộc sống hiện đại nhưng nếu người đọc có thể cảm và hiểu được những thông điệp tác giả muốn truyền đạt thì việc áp dụng nó vào cuộc sống trở nên dễ dàng và hiệu quả.  Đắc Nhân Tâm, từ một cuốn sách, hôm nay đã trở thành một danh từ để chỉ một lối sống mà ở đó con người ta cư xử linh hoạt và thấu tình đạt lý. Lý thuyết muôn thuở vẫn là những quy tắc chết, nhưng Nhân Tâm là sống, là biến đổi. Bạn hãy thử đọc \"Đắc Nhân tâm\" và tự mình chiêm nghiệm những cái đang diễn ra trong đời thực hiện hữu, chắc chắn bạn sẽ có những bài học cho riêng mình.Đắc Nhân Tâm cụ thể và chi tiết với những chỉ dẫn để dẫn đạo người, để gây thiện cảm và dẫn dắt người khác,... những hướng dẫn ấy, qua thời gian, có thể không còn thích hợp trong cuộc sống hiện đại nhưng nếu người đọc có thể cảm và hiểu được những thông điệp tác giả muốn truyền đạt thì việc áp dụng nó vào cuộc sống trở nên dễ dàng và hiệu quả.  Đắc Nhân Tâm, từ một cuốn sách, hôm nay đã trở thành một danh từ để chỉ một lối sống mà ở đó con người ta cư xử linh hoạt và thấu tình đạt lý. Lý thuyết muôn thuở vẫn là những quy tắc chết, nhưng Nhân Tâm là sống, là biến đổi. Bạn hãy thử đọc \"Đắc Nhân tâm\" và tự mình chiêm nghiệm những cái đang diễn ra trong đời thực hiện hữu, chắc chắn bạn sẽ có những bài học cho riêng mình.', 'dac-nhan-tam.jpg', 200000.000, 200000.000, 1, NULL, '2019-12-23 10:07:14', '2019-12-24 08:44:34'),
(68, 'Tâm lý học đám đông', 'Tam-ly-hoc-dam-dong', 28, 37, 36, 36, 100, 95, 'Gustave Le Bon', 'Tâm lý học đám đông viết bởi Gustave Le Bon, tác giả người Pháp, cuốn sách là tập lý thuyết nghiên cứu về đám đông vô cùng giá trị từ các công trình lịch sử của mình. Theo ông, đám đông là một thực thể riêng biệt có cả tâm hồn và trí tuệ. Gustave Le Bon cho rằng năng lực trí tuệ của đám đông thuộc dạng rất kém, ông còn chỉ ra rằng “Một người có học thức cũng chỉ có khả năng như một người thất học khi ở trong đám đông”, người thường ngày sống có kỷ luật, đạo đức, cũng có thể sẵn sàng lăng mạ, sẵn sàng giết người khi trong một tinh thần đám đông. Tại sao vậy, lý giải ở đây rằng trong đám đông người ta có cảm giác được che chở bảo vệ nhất định, vì nhìn vào không ai biết họ là ai, thành viên trong đám đông là những kẻ vô danh. Hơn nữa, đám đông còn gây phấn khích làm cho các cá nhân bên trong có cảm giác mình có vẻ quyền lực hơn khi đứng 1 mình. Gustave Le Bon còn chỉ ra tính cách bốc đồng, dễ thay đổi, dễ bị ám thị, bảo thủ và cách tư duy bằng hình ảnh của một đám đông. Ngoài ra, tác giả còn đề cập đến việc đám đông dễ bị ám thị bởi những người thành công và quyền lực. Nghĩa là anh phải có quyền lực, uy tín, trong mắt đám đông, có lý luận áp đặt mà đám đông kia không thể tranh luận, khi đó họ sẽ tôn thờ, sùng bái anh, và sẵn sàng làm mọi việc. Nhưng một khi anh mất đi uy tín, đám đông có thể quay ngược và cắn trở lại, dìm anh xuống đáy. Bản thân mình cảm thấy cuốn sách bổ ích và khá hay, đáng đọc', 'tam-ly-hoc-dam-dong.jpg', 100000.000, 100000.000, 1, NULL, '2019-12-23 10:21:09', '2019-12-24 08:41:23'),
(69, 'Phi Lý Trí', 'phi-ly-tri', 28, 37, 36, 37, 100, 96, 'Dan Ariely', 'Trong hàng loạt các thực nghiệm nhằm làm sáng tỏ vấn đề, Dan Ariely, đã phản bác lại quan điểm chung cho rằng về cơ bản con người luôn hành động dựa trên lý trí.   Bằng sự kết hợp giữa nghiên cứu chuyên sâu với những trải nghiệm thực tế, Ariely đã cho chúng ta một câu trả lời bất ngờ: chúng ta đôi khi phi lý trí hơn chúng ta tưởng. Thậm chí là thường xuyên phi lý trí và phi lý trí một cách có hệ thống.', 'sach-phi-ly-tri.png', 100000.000, 100000.000, 1, NULL, '2019-12-23 10:22:34', '2019-12-24 08:44:34'),
(70, 'Trí tuệ cảm xúc', 'tri-tue-cam-xuc', 28, 37, 36, 36, 100, 95, 'Daniel Goleman', 'Đôi khi chúng ta đã đồng nhất trí tuệ với chỉ số IQ. Đó là cách hiểu phiến diện bởi chúng ta chỉ chú trọng tới trí tuệ lí trí mà quên mất rằng các xúc cảm cũng là một dạng trí tuệ vô cùng quan trọng để con người mang đầy đủ tính người cũng như có thể thành đạt trong cuộc sống. Những thập kỷ cuối cùng của thế kỷ XX, ở nhiều nước phương Tây, người ta nói nhiều tới các xúc cảm của con người và sự giáo dục xúc cảm cho mọi người, đặc biệt là các lớp trẻ. Các nhà tâm lí học ngày càng đánh giá cao vai trò của cảm xúc và ảnh hưởng của nó đến đời sống con người. Nghệ thuật kiểm soát cảm xúc và định hướng cho nó một cách đúng đắn được gọi là “Trí tuệ xúc cảm”.', 'tri-tue-cam-xuc.jpg', 100000.000, 100000.000, 1, NULL, '2019-12-23 10:35:42', '2019-12-24 08:44:34'),
(71, 'Tiếng Anh SGK', 'SGK-tieng-anh', 25, 38, 36, 36, 1000, 995, 'Bộ giáo dục và đào tạo', 'kiến thức tiếng anh cơ bản', 'sach-giao-khao-tieng-anh.jpg', 90000.000, 90000.000, 1, NULL, '2019-12-23 10:38:52', '2019-12-23 17:54:12'),
(72, 'Vật Lý SGK', 'SGK-vat-ly', 25, 37, 36, 37, 1000, 995, 'Bộ giáo dục và đào tạo', 'sách hướng dẫn học và giảng dạy', 'sach-giao-khao-vat-ly.jpg', 100000.000, 100000.000, 1, NULL, '2019-12-23 10:40:45', '2019-12-24 09:13:31'),
(73, 'Sinh học SGK', 'sinh-học-sgk', 25, 38, 36, 36, 1000, 993, 'Bộ giáo dục và đào tạo', 'sách hướng dẫn học và giảng dạy', 'sach-giao-khoa-sinh-hoc-lop-12.jpg', 100000.000, 100000.000, 1, NULL, '2019-12-23 10:46:36', '2019-12-24 09:12:46'),
(74, 'giải tích', 'giai-tich', 25, 40, 36, 37, 1000, 995, 'Bộ giáo dục và đào tạo', 'sách hướng dẫn học và giảng dạy', 'giai-tich.jpg', 100000.000, 100000.000, 1, NULL, '2019-12-23 10:50:52', '2019-12-24 09:13:31'),
(75, 'Lịch Sử', 'lich-su', 25, 40, 36, 37, 1000, 996, 'Bộ giáo dục và đào tạo', 'sách hướng dẫn học và giảng dạy', 'sach-giao-khoa-lich-su-lop-12.jpg', 90000.000, 90000.000, 1, NULL, '2019-12-23 10:52:35', '2019-12-24 09:13:31'),
(76, 'Ngữ Văn', 'ngu-van', 25, 37, 36, 37, 1000, 996, 'Bộ giáo dục và đào tạo', 'sách hướng dẫn học và giảng dạy', 'Ngu-van-12.jpg', 100000.000, 100000.000, 1, NULL, '2019-12-23 10:54:05', '2019-12-24 09:13:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pro_image`
--

CREATE TABLE `pro_image` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pruchases`
--

CREATE TABLE `pruchases` (
  `id` int(11) NOT NULL,
  `MADH` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `total_money` float NOT NULL,
  `notes` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pruchases`
--

INSERT INTO `pruchases` (`id`, `MADH`, `user_id`, `total_money`, `notes`, `order_date`, `delivery_date`, `deleted_at`, `created_at`, `updated_at`) VALUES
(36, 'MADH1211', 36, 5000000, 'Đơn hàng nhập ngoại', '2019-12-11', '2019-12-20', NULL, '2019-12-11 09:34:35', '2019-12-11 09:34:35'),
(37, 'MADH1210', 36, 600000, 'Đơn hàng nhập ngoại', '2019-12-29', '2019-12-20', NULL, '2019-12-11 09:35:26', '2019-12-11 09:35:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `publishers`
--

CREATE TABLE `publishers` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `publishers`
--

INSERT INTO `publishers` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(36, 'Nhà xuất bản Tuổi Trẻ', NULL, '2019-12-11 09:32:40', '2019-12-11 09:32:40'),
(37, 'Nhà xuất bản Kim Đồng', NULL, '2019-12-11 09:33:08', '2019-12-11 09:33:08'),
(38, 'Nhà xuất bản Thanh Niên', NULL, '2019-12-11 09:33:28', '2019-12-11 09:33:28'),
(39, 'Nhà xuất bản Văn Học', NULL, '2019-12-13 02:45:52', '2019-12-13 02:45:52'),
(40, 'Nhà xuất bản Hội Nhà Văn', NULL, '2019-12-22 21:21:24', '2019-12-22 21:21:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `about` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `reset_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `phone`, `password`, `address`, `about`, `remember_token`, `level`, `reset_token`, `created_at`, `updated_at`) VALUES
(36, 'phạm văn nam', 'phamvannamnd1998@gmail.com', NULL, '$2y$10$pURSrb3SJ4B4.6ZJBNfBVeCxI89K4FvJMpCaJhkWz9Wl1NCkigWXu', NULL, NULL, NULL, NULL, NULL, '2019-12-11 01:48:21', '2019-12-11 01:48:21');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_customer_id_customer` (`customer_id`),
  ADD KEY `FK_product_id_product` (`product_id`);

--
-- Chỉ mục cho bảng `image_manager`
--
ALTER TABLE `image_manager`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_user_id_user` (`user_id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_user_id_user` (`user_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_orders_customer` (`customer_id`);

--
-- Chỉ mục cho bảng `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD KEY `FK_oders_detail_oders` (`orders_id`),
  ADD KEY `FK_oders_detail_product` (`product_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_product_category` (`category_id`),
  ADD KEY `FK_product_publishers` (`publishers_id`),
  ADD KEY `FK_product_user` (`user_id`),
  ADD KEY `FK_product_pruchases` (`pruchases_id`);

--
-- Chỉ mục cho bảng `pro_image`
--
ALTER TABLE `pro_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_product_id_product` (`product_id`);

--
-- Chỉ mục cho bảng `pruchases`
--
ALTER TABLE `pruchases`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `image_manager`
--
ALTER TABLE `image_manager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT cho bảng `pro_image`
--
ALTER TABLE `pro_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `pruchases`
--
ALTER TABLE `pruchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `FK_feedback_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `FK_feedback_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `image_manager`
--
ALTER TABLE `image_manager`
  ADD CONSTRAINT `FK_image_manager_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `FK_news_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_orders_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);

--
-- Các ràng buộc cho bảng `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD CONSTRAINT `FK_oders_detail_oders` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `FK_oders_detail_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_product_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FK_product_pruchases` FOREIGN KEY (`pruchases_id`) REFERENCES `pruchases` (`id`),
  ADD CONSTRAINT `FK_product_publishers` FOREIGN KEY (`publishers_id`) REFERENCES `publishers` (`id`),
  ADD CONSTRAINT `FK_product_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `pro_image`
--
ALTER TABLE `pro_image`
  ADD CONSTRAINT `FK_pro_image_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
