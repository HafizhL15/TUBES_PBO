-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2021 at 04:34 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tes_pbo`
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
  `id` int(11) NOT NULL,
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
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add perpustakaan', 7, 'add_perpustakaan'),
(20, 'Can change perpustakaan', 7, 'change_perpustakaan'),
(21, 'Can delete perpustakaan', 7, 'delete_perpustakaan'),
(22, 'Can add barang', 8, 'add_barang'),
(23, 'Can change barang', 8, 'change_barang'),
(24, 'Can delete barang', 8, 'delete_barang'),
(25, 'Can add pelanggan', 9, 'add_pelanggan'),
(26, 'Can change pelanggan', 9, 'change_pelanggan'),
(27, 'Can delete pelanggan', 9, 'delete_pelanggan'),
(28, 'Can add peminjam', 10, 'add_peminjam'),
(29, 'Can change peminjam', 10, 'change_peminjam'),
(30, 'Can delete peminjam', 10, 'delete_peminjam'),
(31, 'Can view log entry', 1, 'view_logentry'),
(32, 'Can view permission', 2, 'view_permission'),
(33, 'Can view group', 3, 'view_group'),
(34, 'Can view user', 4, 'view_user'),
(35, 'Can view content type', 5, 'view_contenttype'),
(36, 'Can view session', 6, 'view_session'),
(37, 'Can view perpustakaan', 7, 'view_perpustakaan'),
(38, 'Can view barang', 8, 'view_barang'),
(39, 'Can view pelanggan', 9, 'view_pelanggan'),
(40, 'Can view peminjam', 10, 'view_peminjam');

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

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `borrowing_peminjam`
--

CREATE TABLE `borrowing_peminjam` (
  `id` int(11) NOT NULL,
  `borrow_date` date NOT NULL,
  `return_date` date DEFAULT NULL,
  `fee` int(11) DEFAULT NULL,
  `items_id_id` int(11) NOT NULL,
  `subscriber_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `borrowing_peminjam`
--

INSERT INTO `borrowing_peminjam` (`id`, `borrow_date`, `return_date`, `fee`, `items_id_id`, `subscriber_id_id`) VALUES
(4, '2021-05-21', '2021-06-01', 0, 2, 57),
(5, '2021-05-26', '2021-06-10', 0, 1, 49),
(6, '2021-05-15', '2021-06-15', 5000, 3, 81);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
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
(10, 'borrowing', 'peminjam'),
(5, 'contenttypes', 'contenttype'),
(8, 'items', 'barang'),
(7, 'library', 'perpustakaan'),
(6, 'sessions', 'session'),
(9, 'subscribers', 'pelanggan');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-05-25 15:21:59.851173'),
(2, 'auth', '0001_initial', '2021-05-25 15:22:08.918122'),
(3, 'admin', '0001_initial', '2021-05-25 15:22:10.833321'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-05-25 15:22:10.973185'),
(5, 'contenttypes', '0002_remove_content_type_name', '2021-05-25 15:22:11.697299'),
(6, 'auth', '0002_alter_permission_name_max_length', '2021-05-25 15:22:12.691357'),
(7, 'auth', '0003_alter_user_email_max_length', '2021-05-25 15:22:12.914127'),
(8, 'auth', '0004_alter_user_username_opts', '2021-05-25 15:22:12.980809'),
(9, 'auth', '0005_alter_user_last_login_null', '2021-05-25 15:22:13.812349'),
(10, 'auth', '0006_require_contenttypes_0002', '2021-05-25 15:22:13.879847'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2021-05-25 15:22:13.960311'),
(12, 'auth', '0008_alter_user_username_max_length', '2021-05-25 15:22:14.089004'),
(13, 'subscribers', '0001_initial', '2021-05-25 15:22:14.343133'),
(14, 'library', '0001_initial', '2021-05-25 15:22:14.588849'),
(15, 'items', '0001_initial', '2021-05-25 15:22:16.022675'),
(16, 'borrowing', '0001_initial', '2021-05-25 15:22:18.273854'),
(17, 'sessions', '0001_initial', '2021-05-25 15:22:18.796192'),
(18, 'borrowing', '0002_auto_20210525_2223', '2021-05-25 15:23:18.103677'),
(19, 'borrowing', '0003_auto_20210525_2245', '2021-05-25 15:45:51.674941'),
(20, 'items', '0002_barang_id', '2021-05-25 15:45:51.814453'),
(21, 'library', '0002_perpustakaan_id', '2021-05-25 15:45:52.002322'),
(22, 'subscribers', '0002_pelanggan_id', '2021-05-25 15:45:52.329794'),
(23, 'admin', '0003_logentry_add_action_flag_choices', '2021-05-26 00:54:32.183780'),
(24, 'auth', '0009_alter_user_last_name_max_length', '2021-05-26 00:54:32.434351'),
(25, 'auth', '0010_alter_group_name_max_length', '2021-05-26 00:54:32.679579'),
(26, 'auth', '0011_update_proxy_permissions', '2021-05-26 00:54:32.764694'),
(27, 'auth', '0012_alter_user_first_name_max_length', '2021-05-26 00:54:33.114739');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `items_barang`
--

CREATE TABLE `items_barang` (
  `id_items` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `year` varchar(100) NOT NULL,
  `copies` varchar(100) NOT NULL,
  `id_library_id` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items_barang`
--

INSERT INTO `items_barang` (`id_items`, `category`, `title`, `author`, `publisher`, `year`, `copies`, `id_library_id`, `id`) VALUES
(1, 'Book', 'Introduction to Java Programming', 'Daniel Lang', 'Person', '2018', '10', 111, 2),
(2, 'Digital Media', 'Python 3 Object Oriented Programming', 'Dusty Phillips', 'Packt', '2010', '7', 112, 3),
(3, 'Article On Jurnal', 'A Novel Approach for Making Recommendation using Skyline Query based on user Location and Preference', 'Sanket Shah*, Amit Thakkar and Sonal Rami', 'Indian Journal of Science and Technology', '2020', '10', 113, 4);

-- --------------------------------------------------------

--
-- Table structure for table `library_perpustakaan`
--

CREATE TABLE `library_perpustakaan` (
  `id_library` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `library_perpustakaan`
--

INSERT INTO `library_perpustakaan` (`id_library`, `name`, `id`) VALUES
(111, 'Gedung E', 3),
(112, 'Gedung F', 4),
(113, 'Gedung Kuliah Umum', 5);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers_pelanggan`
--

CREATE TABLE `subscribers_pelanggan` (
  `subscriber_id` int(11) NOT NULL,
  `tipe` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subscribers_pelanggan`
--

INSERT INTO `subscribers_pelanggan` (`subscriber_id`, `tipe`, `name`, `address`, `phone`, `email`, `id`) VALUES
(49, 'Golden', 'Hafizh', 'Pringsewu', '085766432199', 'hafizh@gmail.com', 2),
(57, 'Reguler', 'Heksa', 'Banjarrejo', '089534093462', 'heksa.danajaya@gmail.com', 3),
(81, 'Reguler', 'Gilang', 'Metro', '085233478912', 'gilang.aja@gmail.com', 4);

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
-- Indexes for table `borrowing_peminjam`
--
ALTER TABLE `borrowing_peminjam`
  ADD PRIMARY KEY (`id`),
  ADD KEY `borrowing_peminjam_items_id_id_9247031e_fk_items_barang_id_items` (`items_id_id`),
  ADD KEY `borrowing_peminjam_subscriber_id_id_fea4436c_fk_subscribe` (`subscriber_id_id`);

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
-- Indexes for table `items_barang`
--
ALTER TABLE `items_barang`
  ADD PRIMARY KEY (`id_items`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `items_barang_id_library_id_7d4462e5_fk_library_p` (`id_library_id`);

--
-- Indexes for table `library_perpustakaan`
--
ALTER TABLE `library_perpustakaan`
  ADD PRIMARY KEY (`id_library`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `subscribers_pelanggan`
--
ALTER TABLE `subscribers_pelanggan`
  ADD PRIMARY KEY (`subscriber_id`),
  ADD UNIQUE KEY `id` (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `borrowing_peminjam`
--
ALTER TABLE `borrowing_peminjam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `items_barang`
--
ALTER TABLE `items_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `library_perpustakaan`
--
ALTER TABLE `library_perpustakaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subscribers_pelanggan`
--
ALTER TABLE `subscribers_pelanggan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
-- Constraints for table `borrowing_peminjam`
--
ALTER TABLE `borrowing_peminjam`
  ADD CONSTRAINT `borrowing_peminjam_items_id_id_9247031e_fk_items_barang_id_items` FOREIGN KEY (`items_id_id`) REFERENCES `items_barang` (`id_items`),
  ADD CONSTRAINT `borrowing_peminjam_subscriber_id_id_fea4436c_fk_subscribe` FOREIGN KEY (`subscriber_id_id`) REFERENCES `subscribers_pelanggan` (`subscriber_id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `items_barang`
--
ALTER TABLE `items_barang`
  ADD CONSTRAINT `items_barang_id_library_id_7d4462e5_fk_library_p` FOREIGN KEY (`id_library_id`) REFERENCES `library_perpustakaan` (`id_library`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
