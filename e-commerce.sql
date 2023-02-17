-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2023 at 08:06 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-commerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add category', 7, 'add_category'),
(26, 'Can change category', 7, 'change_category'),
(27, 'Can delete category', 7, 'delete_category'),
(28, 'Can view category', 7, 'view_category'),
(29, 'Can add product', 8, 'add_product'),
(30, 'Can change product', 8, 'change_product'),
(31, 'Can delete product', 8, 'delete_product'),
(32, 'Can view product', 8, 'view_product'),
(33, 'Can add product image', 9, 'add_productimage'),
(34, 'Can change product image', 9, 'change_productimage'),
(35, 'Can delete product image', 9, 'delete_productimage'),
(36, 'Can view product image', 9, 'view_productimage'),
(37, 'Can add profile', 10, 'add_profile'),
(38, 'Can change profile', 10, 'change_profile'),
(39, 'Can delete profile', 10, 'delete_profile'),
(40, 'Can view profile', 10, 'view_profile');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$QWlw12S3YSr9HvAfPlLA72$PZayKjh1aY5WQHtDaXgeySuVjaB6MfBs5GDdFE+Hhmc=', '2023-02-17 19:00:36.520482', 1, 'admin@gmail.com', '', '', 'admin@gmail.com', 1, 1, '2023-02-16 16:49:09.743638'),
(2, 'pbkdf2_sha256$390000$5XByt9uv0SvxJM91VHdumO$gQ4z1M6T62cjN4lU3BFKu7BUyXzdBP6rBkT7wKeBVYo=', '2023-02-16 18:50:55.232138', 0, 'sajjad@gmail.com', 'Sajjad ', 'Ali', 'sajjad@gmail.com', 0, 1, '2023-02-16 18:32:45.180533'),
(8, 'pbkdf2_sha256$390000$pjNh17AgsJE6QJZYEyTLvg$0jiqOuFgOxAVYdYdwYJzQqAY/MSABVnY8hJFj46Bf7U=', '2023-02-16 19:28:12.191803', 0, 'sajjad1@gmail.com', 'Sajjad', 'Ali', 'sajjad1@gmail.com', 0, 1, '2023-02-16 19:27:24.587359'),
(10, 'pbkdf2_sha256$390000$1pPanq2pN2TSJUghif12Qx$8Vfa1fDEExvIHVTOEIGGV6Ogd/Vp7YrQENFwQ0SolJo=', '2023-02-16 19:47:59.463105', 0, 'sajjadhussain@gmail.com', 'Sajjad ', 'Hussain', 'sajjadhussain@gmail.com', 0, 1, '2023-02-16 19:47:15.350954'),
(11, 'pbkdf2_sha256$390000$gz8JPdmrbWpIAoW9sXQi8x$EJXApnb+ASsQ6e2OTkj+PPhcakzmjnNvP8eJQVmYBwg=', '2023-02-16 19:49:25.603010', 0, 'test@gmail.com', 'tes', 'test1', 'test@gmail.com', 0, 1, '2023-02-16 19:49:18.260408');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'products', 'category'),
(8, 'products', 'product'),
(9, 'products', 'productimage'),
(6, 'sessions', 'session'),
(10, 'UserProfile', 'profile');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-02-16 16:46:23.401466'),
(2, 'auth', '0001_initial', '2023-02-16 16:46:24.805117'),
(3, 'admin', '0001_initial', '2023-02-16 16:46:25.073040'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-02-16 16:46:25.083062'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-02-16 16:46:25.094868'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-02-16 16:46:25.207333'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-02-16 16:46:25.316095'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-02-16 16:46:25.344831'),
(9, 'auth', '0004_alter_user_username_opts', '2023-02-16 16:46:25.356682'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-02-16 16:46:25.435913'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-02-16 16:46:25.442442'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-02-16 16:46:25.456404'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-02-16 16:46:25.493339'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-02-16 16:46:25.517939'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-02-16 16:46:25.540910'),
(16, 'auth', '0011_update_proxy_permissions', '2023-02-16 16:46:25.556870'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-02-16 16:46:25.582122'),
(18, 'sessions', '0001_initial', '2023-02-16 16:46:25.649471'),
(19, 'products', '0001_initial', '2023-02-16 16:48:42.966361'),
(20, 'products', '0002_product_featured_image', '2023-02-16 17:03:20.452484'),
(21, 'UserProfile', '0001_initial', '2023-02-16 19:00:14.822855');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('xhkrfdpw0y678f11uw7w0bobvutegru5', '.eJxVjDsOwjAQBe_iGln-LHZMSZ8zROvsLg4gR4qTCnF3iJQC2jcz76UG3NYybI2XYSJ1UVadfreM44PrDuiO9Tbrca7rMmW9K_qgTfcz8fN6uH8HBVv51hDEA3l7ZvC5ExfAA0YRDs5QRqAUSIADx9QZMpSiYWtCRHJWQKJ6fwDfEDff:1pT5yG:f_SIAEvLxEHzAsBpmtfDilysxlr9_QxRigQVXDKkMWA', '2023-03-03 19:00:36.532296');

-- --------------------------------------------------------

--
-- Table structure for table `products_category`
--

CREATE TABLE `products_category` (
  `id` bigint(20) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `category_image` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products_category`
--

INSERT INTO `products_category` (`id`, `category_name`, `status`, `category_image`, `created_at`, `updated_at`) VALUES
(2, 'Women Shoes', 1, '', '2023-02-16 16:50:12.606802', '2023-02-16 16:50:12.606802'),
(3, 'Baby Shoes', 1, '', '2023-02-16 16:50:23.007000', '2023-02-16 16:50:23.007000'),
(4, 'Laptop', 1, '', '2023-02-16 17:28:28.869543', '2023-02-16 17:28:28.869543'),
(5, 'Mobile', 1, '', '2023-02-16 18:51:36.648041', '2023-02-16 18:51:36.648041'),
(6, 'Car', 1, '', '2023-02-17 16:20:11.124291', '2023-02-17 16:20:11.124291'),
(7, 'Bike', 1, '', '2023-02-17 16:20:19.620771', '2023-02-17 16:20:19.620771');

-- --------------------------------------------------------

--
-- Table structure for table `products_product`
--

CREATE TABLE `products_product` (
  `id` bigint(20) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `product_description` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `category_id_id` bigint(20) NOT NULL,
  `user_id_id` int(11) NOT NULL,
  `featured_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products_product`
--

INSERT INTO `products_product` (`id`, `product_name`, `price`, `product_description`, `status`, `created_at`, `updated_at`, `category_id_id`, `user_id_id`, `featured_image`) VALUES
(5, 'Real Product Changes', 150, 'Real Product Description Changes', 1, '2023-02-16 17:26:10.459310', '2023-02-16 17:26:10.459310', 3, 1, '/media/kenny-eliason-3GZNPBLImWc-unsplash.jpg'),
(6, 'Laptop For Sell', 40000, 'Core i5 6th generation 8GB RAM 528 SSD', 1, '2023-02-16 17:29:26.378268', '2023-02-16 17:29:26.378268', 4, 1, '/media/carlos-muza-hpjSkU2UYSU-unsplash.jpg'),
(8, 'Real Product', 3000, 'Real Product Description', 1, '2023-02-16 17:26:10.459310', '2023-02-16 17:26:10.459310', 2, 1, '/media/kenny-eliason-3GZNPBLImWc-unsplash.jpg'),
(9, 'Laptop For Sell', 40000, 'Core i5 6th generation 8GB RAM 528 SSD', 1, '2023-02-16 17:29:26.378268', '2023-02-16 17:29:26.378268', 4, 1, '/media/carlos-muza-hpjSkU2UYSU-unsplash.jpg'),
(10, 'Iphone x for Sell serious Buyer Contact Only', 23000, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 1, '2023-02-16 18:53:14.377737', '2023-02-16 18:53:14.377737', 5, 2, '/media/photo-1511707171634-5f897ff02aa9.jfif'),
(11, 'Lorem Ipsum', 1340000, ' by accident, sometimes on purpose (injected humour and the like).\r\n\r\n\r\nWhere does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\r\n\r\nWhere can I get some?\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\n5\r\n	paragraphs\r\n	words\r\n	bytes\r\n	lists\r\n	Start with \'Lorem\r\nipsum dolor sit amet...\'\r\n', 1, '2023-02-17 16:21:09.648780', '2023-02-17 16:21:09.648780', 6, 1, '/media/honda-civic-sdn_100719646_h.jpg'),
(12, ' by accident, sometimes on purpose ', 12000, ' by accident, sometimes on purpose (injected humour and the like).\r\n\r\n\r\nWhere does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\r\n\r\nWhere can I get some?\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\n5\r\n	paragraphs\r\n	words\r\n	bytes\r\n	lists\r\n	Start with \'Lorem\r\nipsum dolor sit amet...\'\r\n', 1, '2023-02-17 16:21:41.307129', '2023-02-17 16:21:41.307129', 3, 1, '/media/smartphone-1894723__340.webp'),
(13, 'Mobile for Sell', 40000, 'How to upload multiple images in Django admin?\r\nHow to upload multiple images in Django admin?\r\nHow to upload multiple images in Django admin?\r\nHow to upload multiple images in Django admin?\r\nHow to upload multiple images in Django admin?\r\n', 1, '2023-02-17 17:05:00.576088', '2023-02-17 17:05:00.576088', 5, 1, '/media/b81ff777-9bab-41ca-898f-851a20e7e903.jpg'),
(14, 'TEST Image', 12000, 'TEST ImageTEST ImageTEST ImageTEST ImageTEST Image', 1, '2023-02-17 17:20:58.788699', '2023-02-17 17:20:58.788699', 5, 1, '/media/b81ff777-9bab-41ca-898f-851a20e7e903_bI7X4S4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `products_productimage`
--

CREATE TABLE `products_productimage` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `Product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products_productimage`
--

INSERT INTO `products_productimage` (`id`, `image`, `created_at`, `updated_at`, `Product_id`) VALUES
(1, '/media/b81ff777-9bab-41ca-898f-851a20e7e903_M3qAXLz.jpg', '2023-02-17 17:20:58.805683', '2023-02-17 17:20:58.805683', 14),
(2, '/media/honda-civic-sdn_100719646_h_zzP7w81.jpg', '2023-02-17 17:20:58.823721', '2023-02-17 17:20:58.823721', 14),
(3, '/media/mob-app_0CgvrBA.png', '2023-02-17 17:20:58.837573', '2023-02-17 17:20:58.837573', 14);

-- --------------------------------------------------------

--
-- Table structure for table `userprofile_profile`
--

CREATE TABLE `userprofile_profile` (
  `id` bigint(20) NOT NULL,
  `is_email_verifiled` tinyint(1) DEFAULT NULL,
  `email_token` varchar(100) DEFAULT NULL,
  `profile_image` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userprofile_profile`
--

INSERT INTO `userprofile_profile` (`id`, `is_email_verifiled`, `email_token`, `profile_image`, `user_id`) VALUES
(5, 0, '', '/media/210700056_1801736333339774_7804403430222291865_n_Reh4iW4.jpg', 8),
(6, 0, '', '/media/65302982_1205805749599505_8041616947911065600_n.jpg', 1),
(7, 0, '', '/media/67650153_1226949100818503_2150746775172939776_n.jpg', 10),
(8, 0, '', '/media/WhatsApp%20Image%202023-01-14%20at%2010.26.10%20PM%20(1).jpeg', 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `products_category`
--
ALTER TABLE `products_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_product`
--
ALTER TABLE `products_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_product_category_id_id_2778dc53_fk_products_category_id` (`category_id_id`),
  ADD KEY `products_product_user_id_id_a332fd0f_fk_auth_user_id` (`user_id_id`);

--
-- Indexes for table `products_productimage`
--
ALTER TABLE `products_productimage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_productimage_Product_id_d8ea16ac_fk_products_product_id` (`Product_id`);

--
-- Indexes for table `userprofile_profile`
--
ALTER TABLE `userprofile_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `products_category`
--
ALTER TABLE `products_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products_product`
--
ALTER TABLE `products_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products_productimage`
--
ALTER TABLE `products_productimage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `userprofile_profile`
--
ALTER TABLE `userprofile_profile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `products_product`
--
ALTER TABLE `products_product`
  ADD CONSTRAINT `products_product_category_id_id_2778dc53_fk_products_category_id` FOREIGN KEY (`category_id_id`) REFERENCES `products_category` (`id`),
  ADD CONSTRAINT `products_product_user_id_id_a332fd0f_fk_auth_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `products_productimage`
--
ALTER TABLE `products_productimage`
  ADD CONSTRAINT `products_productimage_Product_id_d8ea16ac_fk_products_product_id` FOREIGN KEY (`Product_id`) REFERENCES `products_product` (`id`);

--
-- Constraints for table `userprofile_profile`
--
ALTER TABLE `userprofile_profile`
  ADD CONSTRAINT `UserProfile_profile_user_id_7713dd2e_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
