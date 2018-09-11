-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 11, 2018 lúc 09:02 AM
-- Phiên bản máy phục vụ: 10.1.31-MariaDB
-- Phiên bản PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `adminmato_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `facebook` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modified_at` datetime NOT NULL,
  `modified_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `about`
--

INSERT INTO `about` (`id`, `image`, `is_deleted`, `facebook`, `instagram`, `created_at`, `created_by`, `modified_at`, `modified_by`) VALUES
(28, 'team-1.jpg', 0, '', '', '2018-02-10 04:28:14', 'administrator', '2018-02-10 04:28:14', 'administrator'),
(29, 'team-2.jpg', 0, '', '', '2018-02-10 04:29:37', 'administrator', '2018-02-10 04:29:37', 'administrator'),
(30, 'team-3.jpg', 0, '', '', '2018-02-10 04:30:54', 'administrator', '2018-02-10 04:30:54', 'administrator');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `about_lang`
--

CREATE TABLE `about_lang` (
  `id` int(11) NOT NULL,
  `about_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `about_lang`
--

INSERT INTO `about_lang` (`id`, `about_id`, `name`, `slug`, `position`, `description`, `language`) VALUES
(33, 28, 'THOMAS ANDERSON', 'thomas-anderson', 'Executif Chef', '\"Every day brings more pleasure and sense of marvel. When New York city waking up and going to sleep is simply magical.\"', 'en'),
(34, 28, 'THOMAS ANDERSON', 'thomas-anderson', 'Executif Chef', '\"1111111Every day brings more pleasure and sense of marvel. When New York city waking up and going to sleep is simply magical.\"', 'hu'),
(35, 29, 'ROBERTO CONTADOR', 'roberto-contador', 'Chef', '\"Every day brings more pleasure and sense of marvel. When New York city waking up and going to sleep is simply magical.\"', 'en'),
(36, 29, 'ROBERTO CONTADOR', 'roberto-contador', 'Séf', '\"Minden nap nagyobb örömöt és csodálkozást hoznak, amikor New York-i város ébred és alszik, egyszerűen varázslatos.\"', 'hu'),
(37, 30, 'ANTUAN BUCHON', 'antuan-buchon', 'Pastry Chef', '\"Every day brings more pleasure and sense of marvel. When New York city waking up and going to sleep is simply magical.\"', 'en'),
(38, 30, 'ANTUAN BUCHON', 'antuan-buchon', 'Cukrász', '\"Minden nap nagyobb örömöt és csodálkozást hoznak, amikor New York-i város ébred és alszik, egyszerűen varázslatos.\"', 'hu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `image` text,
  `is_actived` tinyint(1) DEFAULT '1',
  `text` varchar(255) DEFAULT NULL,
  `url` text,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `image`, `is_actived`, `text`, `url`, `created_at`, `created_by`, `modified_at`, `modified_by`, `is_deleted`) VALUES
(22, 'cover_1.jpg', 1, 'Tiêu đề slide_1', 'http://thienlocxuan.com.vn/physic', '2017-11-10 15:18:34', 'administrator', '2017-11-10 15:18:34', 'administrator', 0),
(23, 'slide_3.jpg', 1, 'Tiêu đề slide_2', '', '2017-11-10 15:19:51', 'administrator', '2017-11-10 15:19:51', 'administrator', 0),
(24, 'slide_31.jpg', 0, 'Tiêu đề slide_3', '', '2017-11-10 15:39:34', 'administrator', '2017-11-10 15:39:34', 'administrator', 0),
(27, '2017-Porsche-Panamera-Turbo-front-three-quarter-03.jpg', 0, '', '123123', '2017-12-05 09:44:53', 'administrator', '2017-12-05 09:44:53', 'administrator', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `description_image` text,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `viewed` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `blog`
--

INSERT INTO `blog` (`id`, `type`, `description_image`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_deleted`, `viewed`) VALUES
(33, NULL, '', '2018-02-08 17:11:56', 'administrator', '2018-02-08 17:11:56', 'administrator', 0, 0),
(37, NULL, '_mg_9779__20433_zoom2.jpg', '2018-02-08 17:37:00', 'administrator', '2018-02-08 17:37:00', 'administrator', 0, 0),
(38, NULL, '1.jpg', '2018-02-10 08:36:27', 'administrator', '2018-02-10 08:36:27', 'administrator', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog_lang`
--

CREATE TABLE `blog_lang` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text,
  `content` text,
  `language` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `blog_lang`
--

INSERT INTO `blog_lang` (`id`, `blog_id`, `title`, `slug`, `description`, `content`, `language`) VALUES
(51, 33, 'test', 'test', 'test', '<p>test</p>', 'en'),
(52, 33, 'test', 'test', 'test', '<p>test</p>', 'hu'),
(59, 37, 'test', 'test-1', 'test', '<p>test</p>', 'en'),
(60, 37, 'test', 'test-1', 'test', '<p>test</p>', 'hu'),
(61, 38, 'abc', 'abc', 'abc', '<p>abc</p>', 'en'),
(62, 38, 'abcd', 'abc', 'abcd', '<p>abcd</p>', 'hu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('1d6d2ef5cbe48491b53b5c2ae95d1d4f14c98f82', '::1', 1516590779, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363539303735363b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353134333939313533223b);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config_contact`
--

CREATE TABLE `config_contact` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_send_mail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config_contact`
--

INSERT INTO `config_contact` (`id`, `title`, `data`, `config_send_mail`, `is_activated`, `is_deleted`) VALUES
(1, 'Cấu hình số 1', '{\"ho_va_ten\":{\"title\":\"H\\u1ecd v\\u00e0 t\\u00ean\",\"description\":\"Nh\\u1eadp h\\u1ecd v\\u00e0 t\\u00ean\",\"type\":\"text\",\"required\":\"Vui l\\u00f2ng nh\\u1eadp h\\u1ecd v\\u00e0 t\\u00ean c\\u1ee7a b\\u1ea1n\"},\"ngay_sinh\":{\"title\":\"Ng\\u00e0y sinh\",\"description\":\"Ch\\u1ecdn ng\\u00e0y sinh\",\"type\":\"date\"},\"gioi_tinh\":{\"title\":\"Gi\\u1edbi t\\u00ednh\",\"description\":\"Ch\\u1ecdn gi\\u1edbi t\\u00ednh\",\"type\":\"radio\",\"choice\":[\"Nam\",\" N\\u1eef \",\"Gi\\u1edbi t\\u00ednh kh\\u00e1c\"],\"required\":\"Vui l\\u00f2ng ch\\u1ecdn gi\\u1edbi t\\u00ednh c\\u1ee7a b\\u1ea1n\"},\"so_thich\":{\"title\":\"S\\u1edf th\\u00edch\",\"description\":\"Ch\\u1ecdn c\\u00e1c s\\u1edf th\\u00edch c\\u1ee7a b\\u1ea1n\",\"type\":\"checkbox\",\"choice\":[\"\\u0102n u\\u1ed1ng\",\"\\u0110i ch\\u01a1i\",\" Xem phim\",\" Du l\\u1ecbch\",\" Ca h\\u00e1t\"]}}', '{\"to_email\":\"12quyen12@gmail.com\",\"cc_email\":\"01quyen01@gmail.com,quyen.nguyen@matocreative.vn\",\"description_email\":\"Ch\\u00e0o b\\u1ea1n\",\"body\":\"<p><strong>Th&ocirc;ng tin c\\u01a1 b\\u1ea3n:<\\/strong><\\/p>\\r\\n<table style=\\\"width: 541px;\\\">\\r\\n<tbody>\\r\\n<tr style=\\\"height: 13px;\\\">\\r\\n<td style=\\\"width: 65px; height: 13px;\\\"><strong>H\\u1ecd v&agrave; t&ecirc;n<\\/strong><\\/td>\\r\\n<td style=\\\"width: 488px; height: 13px;\\\"><strong>:<\\/strong> {ho_va_ten}<\\/td>\\r\\n<\\/tr>\\r\\n<tr style=\\\"height: 13px;\\\">\\r\\n<td style=\\\"width: 65px; height: 13px;\\\"><strong>Ng&agrave;y sinh<\\/strong><\\/td>\\r\\n<td style=\\\"width: 488px; height: 13px;\\\"><strong>:<\\/strong> {ngay_sinh}<\\/td>\\r\\n<\\/tr>\\r\\n<tr style=\\\"height: 13px;\\\">\\r\\n<td style=\\\"width: 65px; height: 13px;\\\"><strong>Gi\\u1edbi t&iacute;nh<\\/strong><\\/td>\\r\\n<td style=\\\"width: 488px; height: 13px;\\\"><strong>:<\\/strong> {gioi_tinh}<\\/td>\\r\\n<\\/tr>\\r\\n<tr style=\\\"height: 13px;\\\">\\r\\n<td style=\\\"width: 65px; height: 13px;\\\"><strong>S\\u1edf th&iacute;ch<\\/strong><\\/td>\\r\\n<td style=\\\"width: 488px; height: 13px;\\\"><strong>:<\\/strong> {so_thich}<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>&nbsp;<\\/p>\"}', 1, 0),
(2, 'Cấu hình số 2', '{\"so_thich\":{\"title\":\"S\\u1edf th\\u00edch\",\"description\":\"Ch\\u1ecdn s\\u1edf th\\u00edch\",\"type\":\"select\",\"choice\":[\"\\u00c2m nh\\u1ea1c\",\" Xem phim\",\" \\u0102n u\\u1ed1ng\",\" Du l\\u1ecbch\",\" Nh\\u1ea3y m\\u00faa\"],\"select_multiple\":\"true\"},\"ho_va_ten\":{\"title\":\"H\\u1ecd v\\u00e0 t\\u00ean\",\"description\":\"Nh\\u1eadp h\\u1ecd v\\u00e0 t\\u00ean \",\"type\":\"text\",\"required\":\"Vui long nh\\u1eadp h\\u1ecd t\\u00ean c\\u1ee7a b\\u1ea1n\"},\"gioi_tinh\":{\"title\":\"Gi\\u1edbi t\\u00ednh\",\"description\":\"Ch\\u1ecdn gi\\u1edbi t\\u00ednh\",\"type\":\"select\",\"choice\":[\"Nam\",\"N\\u1eef\",\"Gi\\u1edbi t\\u00ednh kh\\u00e1c\"]}}', '', 0, 0),
(3, 'Cấu hình 3', '{\"ho_va_ten\":{\"title\":\"H\\u1ecd v\\u00e0 t\\u00ean\",\"description\":\"H\\u1ecd v\\u00e0 t\\u00ean\",\"type\":\"text\"},\"gioi_tinh\":{\"title\":\"GI\\u1edbi t\\u00ednh\",\"description\":\"GI\\u1edbi t\\u00ednh\",\"type\":\"text\"},\"ngay_sinh\":{\"title\":\"Ngay sinh\",\"description\":\"Ngay sinh\",\"type\":\"date\"}}', '{\"to_email\":\"01quyen01@gmail.com\",\"cc_email\":\"012quyen012@gmail.com\",\"body\":\"<p><strong>H\\u1ecd v&agrave; t&ecirc;n:<\\/strong>&nbsp;{ho_va_ten}<\\/p>\\r\\n<p><strong>Gi\\u1edbi t&iacute;nh:<\\/strong>&nbsp;{gioi_tinh}<\\/p>\\r\\n<p><strong>Ng&agrave;y sinh: <\\/strong>{ngay_sinh}<\\/p>\"}', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_activated` tinyint(4) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `check_menu_children` int(11) NOT NULL DEFAULT '0' COMMENT '0 : nochildrenmenu; 1 : childrenmenue',
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_post` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`id`, `sort`, `parent_id`, `url`, `slug`, `is_activated`, `is_deleted`, `check_menu_children`, `created_at`, `created_by`, `updated_at`, `updated_by`, `slug_post`) VALUES
(20, 1, 0, 'http://localhost/adminMato/danh-muc/gioi-thieu', 'danh-muc/gioi-thieu', 0, 0, 0, '2018-08-31 16:19:47', 'administrator', '2018-08-31 16:19:47', 'administrator', ''),
(21, 0, 20, 'http://localhost/adminMato/nhom/ao-ngan', 'nhom/ao-ngan', 0, 0, 0, '2018-08-31 16:19:19', 'administrator', '2018-08-31 16:19:19', 'administrator', ''),
(22, 4, 0, 'http://localhost/adminMato/nhom/ao-so-mi-dai', 'nhom/ao-so-mi-dai', 1, 0, 0, '2018-09-04 14:24:57', 'administrator', '2018-09-04 14:24:57', 'administrator', ''),
(23, 0, 20, 'http://localhost/adminMato/nhom/ao-thun-nu', 'nhom/ao-thun-nu', 0, 1, 0, '2018-08-31 10:30:30', 'administrator', '2018-08-31 10:30:30', 'administrator', ''),
(24, 0, 20, 'http://localhost/adminMato/nhom/thoi-trang-nu', 'nhom/thoi-trang-nu', 0, 1, 0, '2018-08-31 10:45:28', 'administrator', '2018-08-31 10:45:28', 'administrator', ''),
(25, 0, 21, 'http://localhost/adminMato/danh-muc/gioi-thieu', 'danh-muc/gioi-thieu', 0, 0, 0, '2018-08-31 16:21:17', 'administrator', '2018-08-31 16:21:17', 'administrator', ''),
(26, 0, 22, 'http://localhost/adminMato/nhom/thoi-trang-nu', 'nhom/thoi-trang-nu', 1, 0, 0, '2018-09-04 14:24:57', 'administrator', '2018-09-04 14:24:57', 'administrator', ''),
(27, 5, 0, 'http://localhost/adminMato/san-pham/test-moi', 'nhom/thoi-trang-nu', 0, 0, 0, '2018-09-11 11:41:29', 'administrator', '2018-09-11 11:41:29', 'administrator', 'san-pham/test-moi'),
(29, 0, 25, 'http://localhost/adminMato/danh-muc/bai-viet', 'danh-muc/bai-viet', 0, 0, 0, '2018-09-01 16:07:48', 'administrator', '2018-09-01 16:07:48', 'administrator', ''),
(30, 3, 0, 'http://localhost/adminMato/danh-muc/gioi-thieu', 'danh-muc/gioi-thieu', 0, 0, 0, '2018-09-04 09:59:34', 'administrator', '2018-09-04 09:59:34', 'administrator', ''),
(31, 0, 30, '', '', 0, 0, 0, '2018-09-04 10:42:26', 'administrator', '2018-09-04 10:42:26', 'administrator', ''),
(32, 2, 0, 'http://localhost/adminMato/bai-viet/ve-chung-toi', 'danh-muc/gioi-thieu', 0, 0, 0, '2018-09-04 13:04:17', 'administrator', '2018-09-04 13:04:17', 'administrator', 'bai-viet/ve-chung-toi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_lang`
--

CREATE TABLE `menu_lang` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_lang`
--

INSERT INTO `menu_lang` (`id`, `menu_id`, `title`, `language`) VALUES
(39, 20, 'Test one', 'vi'),
(40, 20, 'Test one', 'en'),
(41, 21, 'Con test one', 'vi'),
(42, 21, 'Con test one', 'en'),
(43, 22, 'qwe', 'vi'),
(44, 22, 'qwe', 'en'),
(45, 23, 'Con thứ 2 test one', 'vi'),
(46, 23, 'Con thứ 2 test one', 'en'),
(47, 24, 'aaaaaaaaaaa', 'vi'),
(48, 24, 'sssssssssss', 'en'),
(49, 25, 'Con của con test one', 'vi'),
(50, 25, 'Con của con test one', 'en'),
(51, 26, 'con qưe', 'vi'),
(52, 26, 'con qưe', 'en'),
(53, 27, 'ewqa', 'vi'),
(54, 27, 'ewqa', 'en'),
(57, 29, 'chắt nè', 'vi'),
(58, 29, 'chắt nè', 'en'),
(59, 30, 'Hom nay', 'vi'),
(60, 30, 'Hom nay', 'en'),
(61, 31, 'aaaaaaaaaaaas', 'vi'),
(62, 31, 'ssssssssssss', 'en'),
(63, 32, 's', 'vi'),
(64, 32, 'a', 'en');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: pending; 1: ongoing; 2: complete; 99: cancel',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_people` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `post_category_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `is_activated` tinyint(4) DEFAULT '0' COMMENT '0 : active; 1 : deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post`
--

INSERT INTO `post` (`id`, `post_category_id`, `templates_id`, `slug`, `avatar`, `image`, `data`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_deleted`, `is_activated`) VALUES
(24, 10, 8, 'no-den-tu-dau-1', '', '8a2cef4944e609d619b2213a787767af.png', '{\"chon_moi\":[\"1\"],\"gioi_tinh\":\"1\",\"chon_nhieu_anh_moi\":[\"2b14c0d6b3569099b818cdac0ba05e62.jpg\"]}', '2018-09-11 11:59:30', 'administrator', '2018-09-11 11:59:30', 'administrator', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_category`
--

CREATE TABLE `post_category` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `project` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `sort` tinyint(4) DEFAULT NULL,
  `type` tinyint(4) DEFAULT '0' COMMENT '0 : list; 1 : detail',
  `is_activated` tinyint(4) DEFAULT '0' COMMENT '0 : active; 1 : deactive',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post_category`
--

INSERT INTO `post_category` (`id`, `slug`, `parent_id`, `project`, `image`, `sort`, `type`, `is_activated`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(10, 'gioi-thieu', 0, '', 'c0dd72b64f149162b0df35c8f2f9b268.jpg', 1, 1, 0, 0, '2018-05-31 09:55:30', 'administrator', '2018-05-31 09:55:30', 'administrator'),
(11, 'bai-viet', 0, '', 'c2fed6179764933953dfe940dff09c4d.jpg', 2, 0, 0, 0, '2018-05-31 11:47:41', 'Nguyễn', '2018-05-31 11:47:41', 'Nguyễn'),
(12, 'tin-tuc-1', 11, '', '8872e5ba979bff2f4d7cc32ef236cefe.jpg', NULL, 0, 0, 0, '2018-05-30 15:31:30', 'administrator', '2018-05-30 15:31:30', 'administrator'),
(13, 'tuyen-dung', 11, '', '60a469b791c625fdc783767bdc648b18.jpg', NULL, 0, 0, 0, '2018-05-30 15:31:41', 'administrator', '2018-05-30 15:31:41', 'administrator'),
(14, 'con-tuyen-dung', 13, '', NULL, NULL, 0, 0, 1, '2018-05-21 16:04:28', 'administrator', '2018-05-21 16:04:28', 'administrator'),
(15, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaa', 14, '', NULL, NULL, 0, 0, 1, '2018-05-30 12:06:11', 'administrator', '2018-05-30 12:06:11', 'administrator'),
(16, 'asdasdasdasdasd', 0, '', NULL, NULL, 0, 0, 1, '2018-05-30 12:21:30', 'administrator', '2018-05-30 12:21:30', 'administrator'),
(17, 'asdasdasdasdasd-1', 0, '', NULL, NULL, 0, 0, 1, '2018-05-30 12:44:55', 'administrator', '2018-05-30 12:44:55', 'administrator'),
(18, 'asdasdasdasdasd-2', 0, '', NULL, NULL, 0, 0, 1, '2018-05-30 12:45:31', 'administrator', '2018-05-30 12:45:31', 'administrator'),
(19, 'qqqqqqqqqqqqqqq', 0, '', NULL, NULL, 0, 0, 1, '2018-05-30 14:05:04', 'administrator', '2018-05-30 14:05:04', 'administrator');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_category_lang`
--

CREATE TABLE `post_category_lang` (
  `id` int(11) NOT NULL,
  `post_category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakeywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `metadescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post_category_lang`
--

INSERT INTO `post_category_lang` (`id`, `post_category_id`, `title`, `language`, `metakeywords`, `metadescription`) VALUES
(19, 10, '  Giới thiệu', 'vi', ' Mowis', '  Mowis'),
(20, 10, 'About  ', 'en', ' new', ' new'),
(21, 11, '  Bài viết', 'vi', ' Danh muc mới', ' bài viết mới12'),
(22, 11, 'BLog  ', 'en', ' ', ' '),
(23, 12, '   Tin tức 1', 'vi', '', ''),
(24, 12, 'News   ', 'en', '', ''),
(25, 13, ' Tuyển dụng', 'vi', '', ''),
(26, 13, 'Recruitment ', 'en', '', ''),
(27, 14, 'COn tuyen dung', 'vi', '', ''),
(28, 14, 'COn tuyen dung', 'en', '', ''),
(29, 15, ' aaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'vi', '', ''),
(30, 15, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaa ', 'en', '', ''),
(31, 16, 'asdasdasdasdasd', 'vi', '', ''),
(32, 16, 'asdasdasdasdasd', 'en', '', ''),
(33, 17, 'asdasdasdasdasd', 'vi', '', ''),
(34, 17, 'asdasdasdasdasd', 'en', '', ''),
(35, 18, 'asdasdasdasdasd', 'vi', '', ''),
(36, 18, 'asdasdasdasdasd', 'en', '', ''),
(37, 19, 'qqqqqqqqqqqqqqq', 'vi', '', ''),
(38, 19, 'qqqqqqqqqqqqqqq', 'en', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_lang`
--

CREATE TABLE `post_lang` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_lang` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakeywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `metadescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post_lang`
--

INSERT INTO `post_lang` (`id`, `post_id`, `title`, `description`, `content`, `data_lang`, `language`, `metakeywords`, `metadescription`) VALUES
(45, 24, 'Nó đến từ đâu? 1', 'Trái ngược với niềm tin phổ biến, Lorem Ipsum không đơn giản là văn bản ngẫu nhiên. Nó có nguồn gốc từ một phần của văn học Latin cổ điển từ năm 45 TCN, làm cho nó hơn 2000 tuổi.', '<p>Tr&aacute;i ngược với niềm tin phổ biến, Lorem Ipsum kh&ocirc;ng đơn giản l&agrave; văn bản ngẫu nhi&ecirc;n. N&oacute; c&oacute; nguồn gốc từ một phần của văn học Latin cổ điển từ năm 45 TCN, l&agrave;m cho n&oacute; hơn 2000 tuổi. Richard McClintock, một gi&aacute;o sư người Latinh tại trường đại học Hampden-Sydney ở Virginia, đ&atilde; t&igrave;m kiếm một trong những từ ngữ, từ ngữ Lorem Ipsum, v&agrave; th&ocirc;ng qua c&aacute;c tr&iacute;ch dẫn của từ trong văn học cổ điển, đ&atilde; kh&aacute;m ph&aacute; ra nguồn kh&ocirc;ng thể giải th&iacute;ch được. Lorem Ipsum xuất ph&aacute;t từ c&aacute;c phần 1.10.32 v&agrave; 1.10.33 của \"de Finibus Bonorum v&agrave; Malorum\" (C&otilde;i T&agrave; &aacute;c v&agrave; &Aacute;c ma) của Cicero, được viết v&agrave;o năm 45 TCN. Cuốn s&aacute;ch n&agrave;y l&agrave; một luận thuyết về l&yacute; thuyết đạo đức, rất phổ biến trong thời kỳ Phục hưng. D&ograve;ng đầu ti&ecirc;n của Lorem Ipsum, \"Lorem ipsum dolor sit amet ..\", xuất ph&aacute;t từ một d&ograve;ng trong phần 1.10.32.1</p>', '{}', 'vi', '', ''),
(46, 24, 'ádasdsad', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', '{}', 'en', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_category_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `is_activated` tinyint(4) DEFAULT '0' COMMENT '0: active; 1:deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `product_category_id`, `templates_id`, `data`, `slug`, `avatar`, `image`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_deleted`, `is_activated`) VALUES
(26, 15, 10, '{\"hinh_anh\":\"85ed94e733af7b94086fe26e72a7b7e0.jpg\"}', 'test-moi', '', 'f55b43abec2cd9b6f41dc6ecf7a2ef3e.png', '2018-09-11 11:27:43', 'administrator', '2018-09-11 11:27:43', 'administrator', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `sort` tinyint(4) DEFAULT NULL,
  `is_activated` tinyint(4) DEFAULT '0' COMMENT '0: active; 1: deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_category`
--

INSERT INTO `product_category` (`id`, `slug`, `parent_id`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`, `project`, `image`, `sort`, `is_activated`) VALUES
(15, 'thoi-trang-nu', 0, 0, '2018-08-30 16:27:22', 'administrator', '2018-08-30 16:27:22', 'administrator', '', 'photo1.png', NULL, 0),
(16, 'ao-thun-nu', 15, 0, '2018-08-30 16:27:51', 'administrator', '2018-08-30 16:27:51', 'administrator', '', 'photo2.png', NULL, 0),
(17, 'okokok', 0, 1, '2018-05-30 11:30:33', 'administrator', '2018-05-30 11:30:33', 'administrator', '', NULL, NULL, 0),
(18, 'ao-ngan', 16, 0, '2018-08-30 16:28:14', 'administrator', '2018-08-30 16:28:14', 'administrator', '', 'photo4.jpg', NULL, 0),
(19, 'ao-dai-nam', 0, 0, '2018-08-30 16:28:39', 'administrator', '2018-08-30 16:28:39', 'administrator', '', 'photo3.jpg', NULL, 0),
(20, 'ao-so-mi-dai', 19, 0, '2018-08-30 16:29:03', 'administrator', '2018-08-30 16:29:03', 'administrator', '', 'photo4.jpg', NULL, 1),
(21, 'ao-dai-nu', 15, 0, '2018-08-30 16:32:23', 'administrator', '2018-08-30 16:32:23', 'administrator', '', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_category_lang`
--

CREATE TABLE `product_category_lang` (
  `id` int(11) NOT NULL,
  `product_category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_category_lang`
--

INSERT INTO `product_category_lang` (`id`, `product_category_id`, `title`, `language`) VALUES
(73, 15, 'Thời trang nữ', 'vi'),
(74, 15, 'Thời trang nữ', 'en'),
(75, 16, 'Áo thun nữ', 'vi'),
(76, 16, 'Áo thun nữ', 'en'),
(77, 17, 'okokok', 'vi'),
(78, 17, 'okokok', 'en'),
(79, 18, 'Áo ngắn', 'vi'),
(80, 18, 'Áo ngắn', 'en'),
(81, 19, 'Áo dài nam', 'vi'),
(82, 19, 'Áo dài nam', 'en'),
(83, 20, 'Áo sơ mi dài', 'vi'),
(84, 20, 'Áo sơ mi dài', 'en'),
(85, 21, 'Áo dài nữ', 'vi'),
(86, 21, 'Áo dài nữ', 'en');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_lang`
--

CREATE TABLE `product_lang` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_lang` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_lang`
--

INSERT INTO `product_lang` (`id`, `product_id`, `title`, `description`, `content`, `data_lang`, `language`) VALUES
(49, 26, 'Test Mới', 'Test Mới', '<p>Test Mới</p>', '{}', 'vi'),
(50, 26, 'Test Mới1', 'Test Mới1', '<p>Test Mới1</p>', '{}', 'en');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quotation`
--

CREATE TABLE `quotation` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `content` text,
  `image` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: Pending; 1: Approve; 2: Reject',
  `is_deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `quotation`
--

INSERT INTO `quotation` (`id`, `name`, `email`, `phone`, `content`, `image`, `created_at`, `status`, `is_deleted`) VALUES
(1, 'An Nguyen', 'vinhan16sep@gmail.com', '1234567777', 'asdasd', 'driver-license.jpg', NULL, 1, 0),
(2, 'lương quốc hưng', 'annv86vn@gmail.com', '0916595514', 'Mình muốn xin báo giá', 'cover.JPG', NULL, 1, 0),
(3, 'Hưng', 'leka.249@gmail.com', '+84916595514', 'nvbnvcbncvbncbvn', 'slide_2.jpg', NULL, 2, 0),
(4, 'Hưng', 'leka.249@gmail.com', '+84916595514', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc eget metus ultrices, lacinia orci ut, ultricies quam. Mauris pulvinar gravida risus, id pellentesque erat sagittis id. Duis rhoncus ut nisi vel laoreet. Nunc felis est, interdum vel viverra eget, venenatis id elit. Duis nec mauris malesuada, porttitor leo quis, hendrerit augue. Donec quam leo, iaculis eu odio nec, pulvinar ultrices enim. Aliquam erat volutpat. Cras at tristique risus. Nunc nulla tortor, ultrices vitae odio vitae, sagittis suscipit orci. Suspendisse faucibus tincidunt quam. Mauris suscipit lacinia arcu non ornare. Integer ut interdum massa, in ultrices metus.\r\n\r\nProin sit amet elit sit amet sapien dignissim suscipit. Quisque semper blandit ipsum ac bibendum. Aliquam vel mauris bibendum, commodo urna sit amet, interdum nibh. Nullam vitae sollicitudin nunc. Sed dui tortor, suscipit sed placerat tristique, laoreet quis odio. Pellentesque sit amet sapien tincidunt, condimentum lorem a, auctor velit. Donec molestie diam sed ex dapibus, eget maximus risus imperdiet. Vestibulum vel pharetra velit. Aliquam molestie congue pretium. Integer vehicula tellus purus, vitae varius dui pulvinar at. Maecenas non velit eu felis porta blandit.\r\n\r\nAliquam tincidunt ex non nunc vulputate condimentum in ac libero. Nullam sit amet eros imperdiet nunc eleifend sodales. Nunc accumsan quam sed ipsum finibus egestas. Mauris ut ante risus. Suspendisse sagittis nibh lobortis velit luctus malesuada at eget augue. Mauris ac sollicitudin ex, sit amet elementum justo. Suspendisse potenti. Curabitur gravida at dolor sed dignissim. Nam posuere sed nulla et euismod. Phasellus pellentesque nec leo commodo iaculis.\r\n\r\nIn volutpat, lectus vel consectetur varius, orci nulla posuere odio, sit amet luctus neque dolor vitae enim. Etiam vel est ac enim porttitor euismod. Nullam sed ligula felis. Maecenas nec maximus nulla. Phasellus lacinia non quam vel viverra. Nulla interdum sit amet dolor sollicitudin vehicula. Ut pellentesque a libero vel maximus. Fusce dignissim leo nec nibh maximus, quis tempor elit vehicula. Nam nec risus urna.', 'stock-photo-maccha-green-tea-566368306.jpg', NULL, 1, 0),
(5, 'Phạm Anh Lân', '123123', '35634753678568', '2131231231', '2017-Porsche-Panamera-Turbo-front-three-quarter-03.jpg', NULL, 1, 0),
(6, 'an nguyen', 'admin@admin.com', '1234567777', 'ád', 'Get-Fired-Up-Foods-Glossy.jpg', NULL, 0, 0),
(7, 'Phạm Anh Lân', 'abc@gmail.com', '65496319498', 'adsafgsa ãcvafg', '2017-Porsche-Panamera-Turbo-front-three-quarter-031.jpg', NULL, 0, 0),
(8, 'Test name', 'testemail@email.com', '1234567777', 'Test content', '123.jpg', NULL, 0, 0),
(9, 'an nguyen', 'admin@admin.com', '1234567777', 'asd', '333.jpg', NULL, 0, 0),
(10, 'asd', 'admin@admin.com', '1234567777', 'ád', 'ef185e90-549c-4c2c-b506-e3188eb26f4a.jpg', NULL, 0, 0),
(11, 'asd', 'admin@admin.com', '1234567777', 'ád', 'ef185e90-549c-4c2c-b506-e3188eb26f4a_(1).jpg', NULL, 0, 0),
(12, 'asd', 'admin@admin.com', '1234567777', '', 'ef185e90-549c-4c2c-b506-e3188eb26f4a_(1)1.jpg', NULL, 0, 0),
(13, 'asd', 'admin@admin.com', '1234567777', 'ád', 'ef185e90-549c-4c2c-b506-e3188eb26f4a_(1)2.jpg', NULL, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `recruitment`
--

CREATE TABLE `recruitment` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `description_image` text,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `recruitment`
--

INSERT INTO `recruitment` (`id`, `status`, `description_image`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_deleted`) VALUES
(1, 1, '', '2017-08-23 04:50:12', 'administrator', '2017-10-20 14:19:15', 'administrator', 1),
(2, 0, 'car4.jpeg', '2017-08-23 04:51:48', 'administrator', '2017-10-09 23:32:28', 'administrator', 1),
(3, 1, '', '2017-11-01 11:45:13', 'administrator', '2017-11-30 09:10:41', 'administrator', 0),
(4, 1, '2017-Porsche-Panamera-Turbo-front-three-quarter-03.jpg', '2017-11-30 09:24:37', 'administrator', '2017-11-30 09:24:37', 'administrator', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `recruitment_lang`
--

CREATE TABLE `recruitment_lang` (
  `id` int(11) NOT NULL,
  `recruitment_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `content` text,
  `language` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `recruitment_lang`
--

INSERT INTO `recruitment_lang` (`id`, `recruitment_id`, `title`, `description`, `content`, `language`) VALUES
(7, 1, 'abc', 'tuyen dung 1', '<p>tuyen dung 1</p>', 'vi'),
(8, 1, 'def', 'recruitment 1', '<p>recruitment 1</p>', 'en'),
(9, 2, 'tuyen dung 2', 'tuyen dung 2', '<p>tuyen dung 2</p>', 'vi'),
(10, 2, 'recruitment 2', 'recruitment 2', '<p>recruitment 2</p>', 'en'),
(11, 3, 'Tuyển dụng', 'àfsdafgsjhgasdhFDAFJHAHaFHadfhgjmfghmm svbng', '<p>sadfasdgsdf</p>', 'vi'),
(12, 3, 'recuitment', 'ádafghdafh', '<p>hfsjhdjgh</p>', 'en'),
(13, 4, '1235312456', '564561256', '<p>267265364</p>', 'vi'),
(14, 4, '35624', '2513451235', '<p>356874784678</p>', 'en');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `site_sessions`
--

CREATE TABLE `site_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `site_sessions`
--

INSERT INTO `site_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('0j2pn7042fiss2bmirmqsljfmhb3orgq', '::1', 1536570374, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363537303337343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('0kj2022200m3tiulc9qtbna4ea1o1aed', '::1', 1536571292, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363537313239323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('0t8vg80qgocthg75q2bdl5a9oh3njld9', '::1', 1536590590, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363539303539303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336353435373933223b6c6173745f636865636b7c693a313533363538363136383b),
('14mifbumk8guf6spetudomadm1uqvlc0', '::1', 1536551501, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363535313530313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('1h93ccc0r37ke88c91mn317ssrvb9ilc', '::1', 1536401043, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363430313034333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336333732393539223b6c6173745f636865636b7c693a313533363337353035363b),
('1i2oart64mc9bdpkuvviahkfsd997csf', '::1', 1536395373, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363339353337333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336333732393539223b6c6173745f636865636b7c693a313533363337353035363b),
('1tmaarg651pu100td4rl8gbhh3kl4vnq', '::1', 1536635347, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363633353334373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336353836313638223b6c6173745f636865636b7c693a313533363633303637323b),
('2ejlmkkdfoem0sodohqn2vfue8udq3mf', '::1', 1536571820, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363537313832303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('2ishsi03882rdkpbg53n0jo8hefuhln3', '::1', 1536395882, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363339353838323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336333732393539223b6c6173745f636865636b7c693a313533363337353035363b),
('324hmhdp171c0b9pg3k6k2pg2a2cv1bl', '::1', 1536559585, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363535393538353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('32nnlc8s5gql53nrf2ie2v29nne2no7k', '::1', 1536546780, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363534363738303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('3on2egl550vjf2v447jh4ccjifaovsbg', '::1', 1536632471, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363633323437313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336353836313638223b6c6173745f636865636b7c693a313533363633303637323b),
('3p4so2q17qifeir7f6uoj8oh0nnu3i6l', '::1', 1536555273, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363535353237333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('43qm7jvud9gr4dbak1gigqb7scio666f', '::1', 1536576368, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363537363336383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('46aqth7sb2rreckjr8nkrbl21em1o0vf', '::1', 1536398052, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363339383035323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336333732393539223b6c6173745f636865636b7c693a313533363337353035363b),
('47btc8ig1tjgpsedamcr1culh3kkdebs', '::1', 1536575205, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363537353230353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('48g18tak5gs36k654slp1rebioe2odf8', '::1', 1536565185, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363536353138353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('49oedg6tlfepp6mug17035nh641457dr', '::1', 1536641925, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363634313932353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336353836313638223b6c6173745f636865636b7c693a313533363633303637323b),
('4surkfps0vc7r2st4ghq3feaqo0mcobn', '::1', 1536642462, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363634323238353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336353836313638223b6c6173745f636865636b7c693a313533363633303637323b),
('526frh2g4uo95uo9o1jj2g2u1c40rr4t', '::1', 1536398663, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363339383636333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336333732393539223b6c6173745f636865636b7c693a313533363337353035363b),
('55i3kcgbmuarqoihec5o8drae6gsa9j6', '::1', 1536401348, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363430313334383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336333732393539223b6c6173745f636865636b7c693a313533363337353035363b),
('5d5ot4926cd99gdocuebuijhag8ph339', '::1', 1536394661, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363339343636313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336333732393539223b6c6173745f636865636b7c693a313533363337353035363b),
('7f4147umj72ehdags39gf4eue6p9f73p', '::1', 1536392813, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363339323831333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336333732393539223b6c6173745f636865636b7c693a313533363337353035363b),
('7lc7btothpdfnpe2vmbtilj5ft55oq5m', '::1', 1536555673, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363535353637333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('8chtohdi02vjbuia8neo13jmructa3fk', '::1', 1536589603, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363538393630333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336353435373933223b6c6173745f636865636b7c693a313533363538363136383b),
('8em9lengejchr4474ustiotst00qkha4', '::1', 1536392135, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363339323133353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336333732393539223b6c6173745f636865636b7c693a313533363337353035363b),
('8fbnmn8q2of6lha1qn7cqqb4hj1asl7i', '::1', 1536556657, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363535363635373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('8jsg1ctnml67aomdna6nbf11v7ikj5vm', '::1', 1536392489, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363339323438393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336333732393539223b6c6173745f636865636b7c693a313533363337353035363b),
('8ojuogfgc2tmhrhpe2q0l978uesanvkb', '::1', 1536394996, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363339343939363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336333732393539223b6c6173745f636865636b7c693a313533363337353035363b),
('8s8k5gqucdkh9tgdcklmmkks2q12k4ee', '::1', 1536573109, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363537333130393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('95ap4lnb7e0i473v7kapc0jk55ut8g2g', '::1', 1536639409, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363633393430393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336353836313638223b6c6173745f636865636b7c693a313533363633303637323b6d6573736167655f6572726f727c733a33353a224944207068e1baa369206cc3a02073e1bb912076c3a0206ce1bb9b6e2068c6a16e2030223b5f5f63695f766172737c613a313a7b733a31333a226d6573736167655f6572726f72223b733a333a226f6c64223b7d),
('97fsfv9psvomfvsbfcp18fvq283vm4k6', '::1', 1536578086, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363537383038363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('99gvp76fiki4gbcef59m2n5okahcrj4j', '::1', 1536546086, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363534363038363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('9f246qib5vcc4dvu333ppkioidv19lop', '::1', 1536591901, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363539313930313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336353435373933223b6c6173745f636865636b7c693a313533363538363136383b),
('9fko522ocr9v0s39onkmerl695hgaout', '::1', 1536554941, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363535343934313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('9qg7uh1p413rb6upulednri4jh5nhrdp', '::1', 1536570675, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363537303637353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('a13jc07aotu4tb57rquurq6k3vm12hnl', '::1', 1536547897, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363534373839373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('a7ve33s26jpsth6nbrdubede4b4adr6i', '::1', 1536386235, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363338363233353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336333732393539223b6c6173745f636865636b7c693a313533363337353035363b),
('aitccf0mp9gov7kmvcepkfui5662ddg1', '::1', 1536397746, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363339373734363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336333732393539223b6c6173745f636865636b7c693a313533363337353035363b),
('amtml3on8jio97hdc3jlub3ahi3tnikg', '::1', 1536398989, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363339383938393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336333732393539223b6c6173745f636865636b7c693a313533363337353035363b),
('arjg859hu81h2rosip5vhns5kif73ksv', '::1', 1536557183, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363535373138333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('bjr7kl7p1p8j8govp8ofpohjsd3s600v', '::1', 1536387436, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363338373433363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336333732393539223b6c6173745f636865636b7c693a313533363337353035363b),
('bq66lbrfdpgv8cjsdedm3l1sbvaooboq', '::1', 1536465664, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363436353536333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336333735303536223b6c6173745f636865636b7c693a313533363436353536353b),
('c2ie18vneim4418csa85k3k71hlpbqgg', '::1', 1536573416, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363537333431363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('c5u7pucudmn4hjvndn5i371pet4e1ok2', '::1', 1536547156, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363534373135363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('cikre647rab69p0230e3cacikfbtiff9', '::1', 1536389660, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363338393636303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336333732393539223b6c6173745f636865636b7c693a313533363337353035363b),
('cqqcsm0qm7je3p0k5aq6n3n7vvdan43g', '::1', 1536551029, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363535313032393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('cr7a9vol07si65bmla6rln6olfqt54h9', '::1', 1536387826, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363338373832363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336333732393539223b6c6173745f636865636b7c693a313533363337353035363b),
('d2lb5ldrvmglv7nic1fea9vrejq999ga', '::1', 1536565910, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363536353931303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('do2js1ufuohsvh4bab7mt93e4p0psujr', '::1', 1536486154, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363438353933343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343635353635223b6c6173745f636865636b7c693a313533363438353935313b),
('dpdri38ir6jqd1ur14asc9tu38npsvno', '::1', 1536639073, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363633393037333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336353836313638223b6c6173745f636865636b7c693a313533363633303637323b),
('e50972g5crpqlcgosobbj9kk534sgh2m', '::1', 1536465563, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363436353536333b),
('eag96mgmdlkqp6uh0hdaj6k520g8kn6n', '::1', 1536635660, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363633353636303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336353836313638223b6c6173745f636865636b7c693a313533363633303637323b),
('ekg3vdv0v33boln5bhjb2tkgqnf34otg', '::1', 1536578687, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363537383430363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('em9bvhlod5lp6lr8dt0bcofdqgpjush5', '::1', 1536560618, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363536303631383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('f9u99r9gini86dp1qepp8337gt4c99be', '::1', 1536557952, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363535373935323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('ffsguii8vmf7etdsctptkttkh6lk17r9', '::1', 1536642285, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363634323238353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336353836313638223b6c6173745f636865636b7c693a313533363633303637323b),
('fs2pas767aotlv3pb01dj509p9o4bnem', '::1', 1536634133, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363633343133333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336353836313638223b6c6173745f636865636b7c693a313533363633303637323b),
('fv4mqqvvk210o9r3srsbhgrcbdr60n1h', '::1', 1536586951, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363538363935313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336353435373933223b6c6173745f636865636b7c693a313533363538363136383b),
('gj9c15dlhk86hbm7turfjt69usb25a3a', '::1', 1536577379, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363537373337393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('gnqi3oc051029hjhs8o2cduu8vcdkphi', '::1', 1536575657, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363537353635373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('h67qoeukbkfvbcfer2m2mdt6q6aubhfq', '::1', 1536548590, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363534383539303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('h6i8qdplcb9te2go6enprj9734t0ghe4', '::1', 1536570063, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363537303036333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('h9afmnve6cm5sn12tt508acf6uenjlra', '::1', 1536550350, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363535303335303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('hfbahso97dnmoighpnqe8u3krh49a27d', '::1', 1536546439, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363534363433393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('i3vr0kg0h567h77aco1kqadjvkepb92o', '::1', 1536633806, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363633333830363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336353836313638223b6c6173745f636865636b7c693a313533363633303637323b),
('idcjm5djhr8fh44gbuppq5uud1ttkb79', '::1', 1536401466, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363430313334383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336333732393539223b6c6173745f636865636b7c693a313533363337353035363b),
('im84sflbr2h247p75fg2akr717gu6amh', '::1', 1536555976, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363535353937363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('iqunb3r8cif5qluqh7ugneov0lpcnlnj', '::1', 1536388641, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363338383634313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336333732393539223b6c6173745f636865636b7c693a313533363337353035363b),
('j02tf79qdhb1ml4lgati2kq9oabdf614', '::1', 1536390509, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363339303530393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336333732393539223b6c6173745f636865636b7c693a313533363337353035363b),
('j9605f7dl2uh51ar184oelvi4jat04b1', '::1', 1536590186, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363539303138363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336353435373933223b6c6173745f636865636b7c693a313533363538363136383b),
('jgmv137fpeorerpllfcn87kvi08bqb8g', '::1', 1536576060, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363537363036303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('jm4ubpmkr5cn9hcsa3ha00o3r1rlumvg', '::1', 1536592761, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363539323537393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336353435373933223b6c6173745f636865636b7c693a313533363538363136383b),
('k4brvu5gnmvii9fb1d1cc2sgclcrfl2l', '::1', 1536399321, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363339393332313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336333732393539223b6c6173745f636865636b7c693a313533363337353035363b),
('kajrcm81nrsu06p9mq8qo1mgu1e92j18', '::1', 1536397445, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363339373434353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336333732393539223b6c6173745f636865636b7c693a313533363337353035363b),
('ksduld6t0a0lusmv64lv3ra1vrinblf4', '::1', 1536570983, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363537303938333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('l3d9jalta4e39776pucd1t4u72e9e23f', '::1', 1536396534, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363339363533343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336333732393539223b6c6173745f636865636b7c693a313533363337353035363b),
('lf0bo0kjcmgcmtah8j2p2op1vbf6c08d', '::1', 1536556284, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363535363238343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('lgpo1rq8fqajekm0j2esn5od0urbckpo', '::1', 1536400214, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363430303231343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336333732393539223b6c6173745f636865636b7c693a313533363337353035363b),
('llntlctvfv26igur538mj1vcnh1ovu8l', '::1', 1536572752, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363537323735323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('mb7maejlvsbqd4vuhb3g5m031241843p', '::1', 1536388275, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363338383237353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336333732393539223b6c6173745f636865636b7c693a313533363337353035363b),
('mdqte6j5g754h391rbcipss2v17qkl44', '::1', 1536635017, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363633353031373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336353836313638223b6c6173745f636865636b7c693a313533363633303637323b),
('mnmbdlocnil40hls2lnkh3tc8emo0ncd', '::1', 1536387134, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363338373133343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336333732393539223b6c6173745f636865636b7c693a313533363337353035363b),
('mpt845v6v89m3s2goiqf63i7u9otovtb', '::1', 1536558300, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363535383330303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('n1th5cnjht0apga2higjeev9d7ah66gj', '::1', 1536641581, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363634313538313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336353836313638223b6c6173745f636865636b7c693a313533363633303637323b),
('nb58095lrual55fdsft7e4v83us98k6t', '::1', 1536577747, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363537373734373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('niuv2gelngg6j8drmvbpo0qjfpjrl46a', '::1', 1536592579, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363539323537393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336353435373933223b6c6173745f636865636b7c693a313533363538363136383b),
('njfl0qj46j7732ls0a4gb47fv2rf9hs2', '::1', 1536554628, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363535343632383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('nms3vl8lb7r1acda8prop9kqv3969i5k', '::1', 1536391343, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363339313334333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336333732393539223b6c6173745f636865636b7c693a313533363337353035363b),
('nt9mmr9d6g22g9imq1uoa58ud3r9gkdf', '::1', 1536400527, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363430303532373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336333732393539223b6c6173745f636865636b7c693a313533363337353035363b),
('o9eu714upj00i0h77tss6snklem3ke8u', '::1', 1536640219, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363634303231393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336353836313638223b6c6173745f636865636b7c693a313533363633303637323b),
('oa89dvms3js2qh91acrg5oc29pqdhtj2', '::1', 1536592277, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363539323237373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336353435373933223b6c6173745f636865636b7c693a313533363538363136383b),
('oi5brln8630gmthglqvmk7tfp54cvvtq', '::1', 1536389271, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363338393237313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336333732393539223b6c6173745f636865636b7c693a313533363337353035363b),
('peupg5rn6qttc9u13svnho1u8qci6d5i', '::1', 1536564839, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363536343833393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('pqh0240297l7e7e4h8q0usnaoedjcl5c', '::1', 1536639909, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363633393930393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336353836313638223b6c6173745f636865636b7c693a313533363633303637323b),
('pu0go7h1dqomndhuee4ui6adcunfle5k', '::1', 1536386791, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363338363739313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336333732393539223b6c6173745f636865636b7c693a313533363337353035363b),
('q251vs5qpveqbocqtq4co8dgtsqcsdao', '::1', 1536564531, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363536343533313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('qca55mhif1ke916gpfgmgab06spa9dlr', '::1', 1536391768, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363339313736383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336333732393539223b6c6173745f636865636b7c693a313533363337353035363b),
('qcjb9cnkhag7rd52q0t996v4hrq4fo70', '::1', 1536390187, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363339303138373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336333732393539223b6c6173745f636865636b7c693a313533363337353035363b),
('qgu30hjf9nrqur3j7vgvut6usmnivbbd', '::1', 1536574183, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363537343138333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('r0ovsvcldk18o4pi3vap16bn4hes0ai3', '::1', 1536633459, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363633333435393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336353836313638223b6c6173745f636865636b7c693a313533363633303637323b),
('rimpjsr8sfpefava9hrvhlkk051cref0', '::1', 1536630928, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363633303932383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336353836313638223b6c6173745f636865636b7c693a313533363633303637323b),
('rnu54bg9hoi6pkk6hhoo8j1u62kmn2rm', '::1', 1536390953, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363339303935333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336333732393539223b6c6173745f636865636b7c693a313533363337353035363b),
('rr5erpgaas70ll51d32k77ghdl8qqr01', '::1', 1536574711, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363537343731313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('s4s979n650b740fleqkud3ihn5th8m88', '::1', 1536632948, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363633323934383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336353836313638223b6c6173745f636865636b7c693a313533363633303637323b),
('saqs51tlpk5mhjc51dk5g7u7vmdmsdqm', '::1', 1536572151, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363537323135313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('t2341bjsmc7lqm5u9sd6dladltd9cibl', '::1', 1536394347, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363339343334373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336333732393539223b6c6173745f636865636b7c693a313533363337353035363b),
('t5vdt6nr48aigk8tkob2diqbggb09sg2', '::1', 1536573812, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363537333831323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('tbet1noq2d8t7vutkk69h7f4l0ok420f', '::1', 1536547566, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363534373536363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('tdev383fvfphfo0kodj30k19sdgctsar', '::1', 1536399904, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363339393930343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336333732393539223b6c6173745f636865636b7c693a313533363337353035363b),
('tlut4oooja8ttig59n24f1mvcquot5cv', '::1', 1536565567, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363536353536373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('trjcrc9sg8p57ugtmj1fh2v5ndk1kmba', '::1', 1536578406, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363537383430363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('ubq6i051d48mepd19dnc50rfus6qsc1o', '::1', 1536637449, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363633373434393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336353836313638223b6c6173745f636865636b7c693a313533363633303637323b),
('ufla5nng4gf83i1t2r2sg8qndkcgshe1', '::1', 1536634689, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363633343638393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336353836313638223b6c6173745f636865636b7c693a313533363633303637323b),
('ur2hglr1083i29qejk36b602vlspun9d', '::1', 1536640866, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363634303836363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336353836313638223b6c6173745f636865636b7c693a313533363633303637323b),
('v36ooi9t3crupqaugmk2ndu6fgekl9rr', '::1', 1536560312, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363536303331323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336343835393531223b6c6173745f636865636b7c693a313533363534353739333b),
('vfm9ole8600m9nlaiji6bbidd7h9b9na', '::1', 1536396877, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363339363837373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336333732393539223b6c6173745f636865636b7c693a313533363337353035363b),
('vlvlb1e0oua7kbk79q67mst40l0vmgba', '::1', 1536396187, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533363339363138373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353336333732393539223b6c6173745f636865636b7c693a313533363337353035363b);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `templates`
--

CREATE TABLE `templates` (
  `id` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `templates`
--

INSERT INTO `templates` (`id`, `type`, `title`, `data`, `is_activated`, `is_deleted`) VALUES
(8, 1, 'Cấu hình mới', '{\"image_shared\":{\"description\":\"\",\"type\":\"file\",\"check_language\":\"true\",\"title\":{\"vi\":\"H\\u00ecnh \\u1ea3nh\",\"en\":\"Image\"}},\"slug_shared\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"true\",\"title\":{\"vi\":\"Slug\",\"en\":\"Slug\"},\"required\":\"\"},\"parent_id_shared\":{\"description\":\"\",\"type\":\"select\",\"check_language\":\"true\",\"title\":{\"vi\":\"Danh m\\u1ee5c\",\"en\":\"Category\"},\"choice\":{\"vi\":[\"\"],\"en\":[\"\"]},\"required\":\"\"},\"title\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"false\",\"title\":{\"vi\":\"Ti\\u00eau \\u0111\\u1ec1\",\"en\":\"Title\"},\"required\":\"\"},\"description\":{\"description\":\"\",\"type\":\"textarea\",\"check_language\":\"false\",\"title\":{\"vi\":\"M\\u00f4 t\\u1ea3\",\"en\":\"Description\"}},\"content\":{\"description\":\"\",\"type\":\"textarea\",\"check_language\":\"false\",\"title\":{\"vi\":\"N\\u1ed9i dung\",\"en\":\"Content\"},\"check_multiple\":\"true\"},\"chon_nhieu_anh_moi\":{\"description\":\"\",\"type\":\"file\",\"check_language\":\"true\",\"title\":{\"vi\":\"Ch\\u1ecdn nhi\\u1ec1u \\u1ea3nh moi\",\"en\":\"Image Multiple\"},\"check_multiple\":\"true\"},\"chon_moi\":{\"description\":\"\",\"type\":\"checkbox\",\"check_language\":\"true\",\"title\":{\"vi\":\"Ch\\u1ecdn m\\u1edbi\",\"en\":\"Ch\\u1ecdn m\\u1edbi1\"},\"choice\":{\"vi\":[\"\\u00c2m nh\\u1ea1c1\",\"\\u0110\\u00e0n1\"],\"en\":[\"nhac1\",\"dan1\"]}},\"gioi_tinh\":{\"description\":\"\",\"type\":\"radio\",\"check_language\":\"true\",\"title\":{\"vi\":\"Gi\\u1edbi t\\u00ednh\",\"en\":\"Sex\"},\"choice\":{\"vi\":[\"Nam\",\"N\\u1eef\",\"V\\u00f4 gi\\u1edbi\"],\"en\":[\"Male\",\"Female\",\"Boundless\"]},\"required\":\"\"}}', 0, 0),
(9, 1, 'Cấu hình mới 1', '{\"image_shared\":{\"description\":\"\",\"type\":\"file\",\"check_language\":\"true\",\"title\":{\"vi\":\"H\\u00ecnh \\u1ea3nh\",\"en\":\"Image\"}},\"slug_shared\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"true\",\"title\":{\"vi\":\"Slug\",\"en\":\"Slug\"},\"required\":\"\"},\"parent_id_shared\":{\"description\":\"\",\"type\":\"select\",\"check_language\":\"true\",\"title\":{\"vi\":\"Danh m\\u1ee5c\",\"en\":\"Category\"},\"choice\":{\"vi\":[\"\"],\"en\":[\"\"]},\"required\":\"\"},\"title\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"false\",\"title\":{\"vi\":\"Ti\\u00eau \\u0111\\u1ec1\",\"en\":\"Title\"},\"required\":\"\"},\"description\":{\"description\":\"\",\"type\":\"textarea\",\"check_language\":\"false\",\"title\":{\"vi\":\"M\\u00f4 t\\u1ea3\",\"en\":\"Description\"}},\"content\":{\"description\":\"\",\"type\":\"textarea\",\"check_language\":\"false\",\"title\":{\"vi\":\"N\\u1ed9i dung\",\"en\":\"Content\"},\"check_multiple\":\"true\"},\"gioi_tinh\":{\"description\":\"\",\"type\":\"radio\",\"check_language\":\"true\",\"title\":{\"vi\":\"Gi\\u1edbi t\\u00ednh\",\"en\":\"Sex\"},\"choice\":{\"vi\":[\"Nam\",\"N\\u1eef\",\"V\\u00f4 gi\\u1edbi\"],\"en\":[\"Male\",\"Female\",\"Boundless\"]},\"required\":\"\"},\"chon_nhieu_anh\":{\"description\":\"\",\"type\":\"file\",\"check_language\":\"true\",\"title\":{\"vi\":\"Ch\\u1ecdn nhi\\u1ec1u \\u1ea3nh\",\"en\":\"Image Multiple\"},\"check_multiple\":\"true\"}}', 0, 0),
(10, 2, 'Cấu hình product', '{\"image_shared\":{\"description\":\"\",\"type\":\"file\",\"check_language\":\"true\",\"title\":{\"vi\":\"H\\u00ecnh \\u1ea3nh\",\"en\":\"Image\"}},\"slug_shared\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"true\",\"title\":{\"vi\":\"Slug\",\"en\":\"Slug\"},\"required\":\"\"},\"parent_id_shared\":{\"description\":\"\",\"type\":\"select\",\"check_language\":\"true\",\"title\":{\"vi\":\"Danh m\\u1ee5c\",\"en\":\"Category\"},\"choice\":{\"vi\":[\"\"],\"en\":[\"\"]},\"required\":\"\"},\"title\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"false\",\"title\":{\"vi\":\"Ti\\u00eau \\u0111\\u1ec1\",\"en\":\"Title\"},\"required\":\"\"},\"description\":{\"description\":\"\",\"type\":\"textarea\",\"check_language\":\"false\",\"title\":{\"vi\":\"M\\u00f4 t\\u1ea3\",\"en\":\"Description\"}},\"content\":{\"description\":\"\",\"type\":\"textarea\",\"check_language\":\"false\",\"title\":{\"vi\":\"N\\u1ed9i dung\",\"en\":\"Content\"},\"check_multiple\":\"true\"},\"hinh_anh\":{\"description\":\"\",\"type\":\"file\",\"check_language\":\"true\",\"title\":{\"vi\":\"H\\u00ecnh \\u1ea3nh\",\"en\":\"Image\"}}}', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1536630672, 1, 'Admin', 'istrator', 'ADMIN', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `about_lang`
--
ALTER TABLE `about_lang`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `blog_lang`
--
ALTER TABLE `blog_lang`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `ci_sessions_timestamp` (`timestamp`) USING BTREE;

--
-- Chỉ mục cho bảng `config_contact`
--
ALTER TABLE `config_contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu_lang`
--
ALTER TABLE `menu_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_id` (`post_category_id`);

--
-- Chỉ mục cho bảng `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `post_category_lang`
--
ALTER TABLE `post_category_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_id` (`post_category_id`);

--
-- Chỉ mục cho bảng `post_lang`
--
ALTER TABLE `post_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_id` (`product_category_id`);

--
-- Chỉ mục cho bảng `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_category_lang`
--
ALTER TABLE `product_category_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_id` (`product_category_id`);

--
-- Chỉ mục cho bảng `product_lang`
--
ALTER TABLE `product_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`product_id`);

--
-- Chỉ mục cho bảng `quotation`
--
ALTER TABLE `quotation`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `recruitment`
--
ALTER TABLE `recruitment`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `recruitment_lang`
--
ALTER TABLE `recruitment_lang`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `site_sessions`
--
ALTER TABLE `site_sessions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `ci_sessions_timestamp` (`timestamp`) USING BTREE;

--
-- Chỉ mục cho bảng `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`) USING BTREE,
  ADD KEY `fk_users_groups_users1_idx` (`user_id`) USING BTREE,
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `about_lang`
--
ALTER TABLE `about_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `blog_lang`
--
ALTER TABLE `blog_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT cho bảng `config_contact`
--
ALTER TABLE `config_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `menu_lang`
--
ALTER TABLE `menu_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `post_category_lang`
--
ALTER TABLE `post_category_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `post_lang`
--
ALTER TABLE `post_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `product_category_lang`
--
ALTER TABLE `product_category_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT cho bảng `product_lang`
--
ALTER TABLE `product_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `quotation`
--
ALTER TABLE `quotation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `recruitment`
--
ALTER TABLE `recruitment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `recruitment_lang`
--
ALTER TABLE `recruitment_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `templates`
--
ALTER TABLE `templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `menu_lang`
--
ALTER TABLE `menu_lang`
  ADD CONSTRAINT `menu_lang_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`);

--
-- Các ràng buộc cho bảng `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`post_category_id`) REFERENCES `post_category` (`id`);

--
-- Các ràng buộc cho bảng `post_category_lang`
--
ALTER TABLE `post_category_lang`
  ADD CONSTRAINT `post_category_lang_ibfk_1` FOREIGN KEY (`post_category_id`) REFERENCES `post_category` (`id`);

--
-- Các ràng buộc cho bảng `post_lang`
--
ALTER TABLE `post_lang`
  ADD CONSTRAINT `post_lang_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`product_category_id`) REFERENCES `product_category` (`id`);

--
-- Các ràng buộc cho bảng `product_category_lang`
--
ALTER TABLE `product_category_lang`
  ADD CONSTRAINT `product_category_lang_ibfk_1` FOREIGN KEY (`product_category_id`) REFERENCES `product_category` (`id`);

--
-- Các ràng buộc cho bảng `product_lang`
--
ALTER TABLE `product_lang`
  ADD CONSTRAINT `product_lang_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
