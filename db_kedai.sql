-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2023 at 05:53 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kedai`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `remember_token` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `nama_admin`, `username`, `password`, `created_at`, `updated_at`, `remember_token`) VALUES
(13, 'admin', 'admin', '$2y$10$QdP8uA6ZfIvcZay9TszkcO1ROXoC1YFVXdJhUSzrGuEzQZjG346gS', '2020-11-25 02:21:06', '2020-11-25 02:21:06', NULL),
(18, 'Rian Sunoro', 'rian', '$2y$10$prk4eI66/uUEK.mn6Tk6kOjMSPHF7bBa5mt0XwXK/p.AWV137cEQ.', '2022-12-08 00:56:47', '2022-12-08 00:56:47', NULL),
(19, 'riski ganteng', 'riski', '$2y$10$66jaF76yr0AJHp/tVLiFau7fG38tDrhB9736XFCV4/3FrLqxF/gQO', '2022-12-11 23:43:53', '2022-12-11 23:43:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback`
--

CREATE TABLE `tbl_feedback` (
  `id_feedback` int(11) NOT NULL,
  `isi` text NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_feedback`
--

INSERT INTO `tbl_feedback` (`id_feedback`, `isi`, `tanggal`) VALUES
(8, 'Bagus', '2022-11-02'),
(18, 'enak banget mau request menu sate taican dong', '2022-12-02'),
(19, 'Keren Kedainya', '2022-12-05'),
(20, 'keren kedainya', '2022-12-12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kasir`
--

CREATE TABLE `tbl_kasir` (
  `id_kasir` int(11) NOT NULL,
  `nama_kasir` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(191) NOT NULL,
  `updated_at` date NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_kasir`
--

INSERT INTO `tbl_kasir` (`id_kasir`, `nama_kasir`, `jenis_kelamin`, `alamat`, `no_hp`, `email`, `username`, `password`, `updated_at`, `created_at`) VALUES
(6, 'debi', 'Laki-Laki', 'cerebon', '0891293912', 'debi@gmail.com', 'debi', '$2y$10$5FiArAQuW0Bx2EJFdRbynOENMLYBz0UavQCnJtujcwqaH67YeWzUK', '2022-09-24', '2022-09-24');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_masakan`
--

CREATE TABLE `tbl_masakan` (
  `id_masakan` int(11) NOT NULL,
  `nama_masakan` varchar(100) NOT NULL,
  `gambar_masakan` varchar(100) NOT NULL,
  `nama_kategori` varchar(30) NOT NULL,
  `harga` int(11) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_masakan`
--

INSERT INTO `tbl_masakan` (`id_masakan`, `nama_masakan`, `gambar_masakan`, `nama_kategori`, `harga`, `status`) VALUES
(1, 'Es Cream Coklat', 'produk_1670344107.png', 'dessert', 20000, 'tersedia'),
(7, 'Mie Goreng', 'produk_1670341697.png', 'makanan', 10000, 'tersedia'),
(22, 'Nasi Telor Dadar', 'produk_1670337737.png', 'makanan', 12000, 'tersedia'),
(27, 'Es Cream Vanilla', 'produk_1670344201.png', 'dessert', 15000, 'tersedia'),
(28, 'Es Cream Wafello', 'produk_1670344299.png', 'dessert', 20000, 'tersedia'),
(29, 'Tahu Goreng', 'produk_1670344982.png', 'dessert', 10000, 'tersedia'),
(33, 'Es Teh Manis', 'produk_1670342008.png', 'minuman', 5000, 'tersedia'),
(34, 'Air Putih', 'produk_1670170090.png', 'minuman', 2000, 'tersedia'),
(35, 'Es Kopi Susu', 'produk_1670341965.png', 'minuman', 10000, 'tersedia'),
(36, 'Es Jeruk', 'produk_1670342304.png', 'minuman', 5000, 'tersedia'),
(37, 'Nasi Goreng', 'produk_1670337755.png', 'makanan', 10000, 'tersedia'),
(38, 'Nasi Ayam Goreng', 'produk_1670340879.png', 'makanan', 14000, 'tersedia'),
(48, 'Nasi Ayam Geprek', 'produk_1670340852.png', 'makanan', 16000, 'tersedia'),
(49, 'Nasi Ayam Bakar', 'produk_1670340799.png', 'makanan', 14000, 'tersedia'),
(50, 'Geprek', 'produk_1670159228.png', 'makanan', 10000, 'tersedia'),
(51, 'ayam', 'produk_1670161681.png', 'makanan', 10000, 'tersedia'),
(52, 'Es Vanilla Late', 'produk_1670343464.png', 'minuman', 10000, 'tersedia'),
(53, 'Es Thai Tea', 'produk_1670343482.png', 'minuman', 8000, 'tersedia'),
(54, 'Es Teh', 'produk_1670166415.png', 'minuman', 10000, 'tersedia'),
(55, 'Air', 'produk_1670166462.png', 'minuman', 100000, 'tersedia'),
(56, 'Nugget Goreng Crispy', 'produk_1670345563.png', 'dessert', 15000, 'tersedia'),
(57, 'Pisang Goreng', 'produk_1670345585.png', 'dessert', 10000, 'tersedia'),
(58, 'Roti3', 'produk_1670166702.png', 'dessert', 10000, 'tersedia'),
(59, 'Roti 4', 'produk_1670166721.png', 'dessert', 10000, 'tersedia'),
(60, 'Geprek', 'produk_1670167626.png', 'makanan', 10000, 'tersedia'),
(61, 'Es', 'produk_1670167932.png', 'minuman', 10000, 'tersedia'),
(63, 'Bolu', 'produk_1670168046.png', 'dessert', 10000, 'tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id_order` int(11) NOT NULL,
  `masakan_id` int(11) NOT NULL,
  `order_detail_id` int(11) NOT NULL,
  `user_order_id` int(11) NOT NULL,
  `tanggal_order` date NOT NULL,
  `status_order2` varchar(30) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id_order`, `masakan_id`, `order_detail_id`, `user_order_id`, `tanggal_order`, `status_order2`, `jumlah`, `sub_total`) VALUES
(275, 7, 277, 252, '2022-12-05', 'sudah_dibayar', 1, 12000),
(276, 36, 277, 252, '2022-12-05', 'sudah_dibayar', 1, 5000),
(277, 27, 277, 252, '2022-12-05', 'sudah_dibayar', 1, 20000),
(278, 7, 279, 253, '2022-12-05', 'sudah_dibayar', 1, 12000),
(279, 36, 279, 253, '2022-12-05', 'sudah_dibayar', 1, 5000),
(280, 7, 280, 254, '2022-12-05', 'sudah_dibayar', 1, 12000),
(281, 38, 282, 255, '2022-12-05', 'sudah_dipesan', 1, 15000),
(282, 33, 282, 255, '2022-12-05', 'sudah_dipesan', 1, 2000),
(283, 48, 284, 255, '2022-12-05', 'sudah_dibayar', 1, 15000),
(284, 52, 284, 255, '2022-12-05', 'sudah_dibayar', 1, 5000),
(285, 37, 287, 256, '2022-12-05', 'sudah_dibayar', 1, 12000),
(286, 34, 287, 256, '2022-12-05', 'sudah_dibayar', 1, 2000),
(287, 56, 287, 256, '2022-12-05', 'sudah_dibayar', 1, 18000),
(288, 38, 288, 256, '2022-12-05', 'sudah_dibayar', 1, 15000),
(289, 22, 289, 257, '2022-12-05', 'sudah_dibayar', 1, 12000),
(290, 22, 292, 258, '2022-12-05', 'sudah_dibayar', 1, 12000),
(291, 27, 292, 258, '2022-12-05', 'sudah_dibayar', 1, 20000),
(292, 36, 292, 258, '2022-12-05', 'sudah_dibayar', 1, 5000),
(293, 27, 294, 259, '2022-12-05', 'sudah_dipesan', 1, 20000),
(294, 57, 294, 259, '2022-12-05', 'sudah_dipesan', 1, 18000),
(297, 7, 299, 263, '2022-12-06', 'sudah_dibayar', 1, 10000),
(298, 33, 299, 263, '2022-12-06', 'sudah_dibayar', 1, 5000),
(299, 28, 299, 263, '2022-12-06', 'sudah_dibayar', 1, 20000),
(300, 1, 300, 265, '2022-12-07', 'sudah_dibayar', 1, 20000),
(301, 48, 303, 266, '2022-12-07', 'sudah_dibayar', 1, 16000),
(302, 56, 303, 266, '2022-12-07', 'sudah_dibayar', 1, 15000),
(303, 33, 303, 266, '2022-12-07', 'sudah_dibayar', 1, 5000),
(304, 7, 306, 267, '2022-12-07', 'sudah_dibayar', 5, 50000),
(305, 36, 306, 267, '2022-12-07', 'sudah_dibayar', 1, 5000),
(306, 1, 306, 267, '2022-12-07', 'sudah_dibayar', 1, 20000),
(307, 1, 0, 269, '2022-12-07', 'sedang_dipesan', 1, 20000),
(308, 22, 311, 270, '2022-12-08', 'sudah_dibayar', 1, 12000),
(310, 52, 311, 270, '2022-12-08', 'sudah_dibayar', 2, 20000),
(311, 1, 311, 270, '2022-12-08', 'sudah_dibayar', 1, 20000),
(312, 7, 322, 271, '2022-12-08', 'sudah_dibayar', 5, 50000),
(313, 22, 322, 271, '2022-12-08', 'sudah_dibayar', 1, 12000),
(314, 37, 322, 271, '2022-12-08', 'sudah_dibayar', 1, 10000),
(315, 33, 322, 271, '2022-12-08', 'sudah_dibayar', 1, 5000),
(316, 34, 322, 271, '2022-12-08', 'sudah_dibayar', 1, 2000),
(317, 35, 322, 271, '2022-12-08', 'sudah_dibayar', 1, 10000),
(318, 53, 322, 271, '2022-12-08', 'sudah_dibayar', 1, 8000),
(319, 52, 322, 271, '2022-12-08', 'sudah_dibayar', 1, 10000),
(320, 28, 322, 271, '2022-12-08', 'sudah_dibayar', 1, 20000),
(321, 56, 322, 271, '2022-12-08', 'sudah_dibayar', 1, 15000),
(322, 57, 322, 271, '2022-12-08', 'sudah_dibayar', 1, 10000),
(323, 7, 328, 272, '2022-12-08', 'sudah_dibayar', 5, 50000),
(324, 48, 328, 272, '2022-12-08', 'sudah_dibayar', 1, 16000),
(325, 52, 328, 272, '2022-12-08', 'sudah_dibayar', 1, 10000),
(326, 53, 328, 272, '2022-12-08', 'sudah_dibayar', 1, 8000),
(327, 56, 328, 272, '2022-12-08', 'sudah_dibayar', 1, 15000),
(328, 27, 328, 272, '2022-12-08', 'sudah_dibayar', 1, 15000),
(329, 7, 331, 275, '2022-12-09', 'sudah_dibayar', 3, 30000),
(330, 29, 331, 275, '2022-12-09', 'sudah_dibayar', 1, 10000),
(331, 33, 331, 275, '2022-12-09', 'sudah_dibayar', 1, 5000),
(332, 38, 333, 276, '2022-12-09', 'sudah_dibayar', 1, 14000),
(333, 29, 333, 276, '2022-12-09', 'sudah_dibayar', 1, 10000),
(334, 7, 336, 278, '2022-12-11', 'sudah_dibayar', 1, 10000),
(335, 36, 336, 278, '2022-12-11', 'sudah_dibayar', 1, 5000),
(336, 56, 336, 278, '2022-12-11', 'sudah_dibayar', 1, 15000),
(337, 7, 0, 279, '2022-12-11', 'sedang_dipesan', 3, 30000),
(338, 33, 0, 279, '2022-12-11', 'sedang_dipesan', 1, 5000),
(339, 7, 340, 281, '2022-12-11', 'sudah_dipesan', 1, 10000),
(340, 1, 340, 281, '2022-12-11', 'sudah_dipesan', 3, 60000),
(341, 56, 341, 281, '2022-12-11', 'sudah_dibayar', 2, 30000),
(342, 7, 342, 284, '2022-12-12', 'sudah_dibayar', 1, 10000),
(343, 56, 343, 286, '2022-12-12', 'sudah_dipesan', 1, 15000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_detail`
--

CREATE TABLE `tbl_order_detail` (
  `id_order_detail` int(11) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_order_detail`
--

INSERT INTO `tbl_order_detail` (`id_order_detail`, `order_id`) VALUES
(55, 54),
(55, 55),
(57, 56),
(57, 57),
(59, 59),
(61, 61),
(65, 62),
(65, 63),
(65, 64),
(65, 65),
(67, 66),
(67, 67),
(68, 68),
(75, 75),
(76, 76),
(77, 77),
(78, 78),
(79, 79),
(80, 80),
(81, 81),
(88, 88),
(89, 89),
(90, 90),
(91, 91),
(92, 91),
(92, 92),
(93, 93),
(94, 94),
(95, 95),
(95, 95),
(97, 96),
(97, 97),
(99, 98),
(99, 99),
(104, 102),
(104, 103),
(104, 104),
(113, 111),
(113, 112),
(113, 113),
(115, 114),
(115, 115),
(116, 116),
(117, 117),
(118, 117),
(118, 118),
(119, 119),
(119, 119),
(120, 120),
(122, 121),
(122, 122),
(123, 123),
(124, 124),
(127, 126),
(127, 127),
(131, 131),
(135, 132),
(135, 133),
(135, 134),
(135, 135),
(139, 138),
(139, 139),
(142, 140),
(142, 141),
(142, 142),
(145, 143),
(145, 144),
(145, 145),
(146, 146),
(151, 149),
(151, 150),
(151, 151),
(152, 152),
(156, 153),
(156, 154),
(156, 155),
(156, 156),
(159, 159),
(160, 160),
(162, 161),
(162, 162),
(165, 163),
(165, 164),
(165, 165),
(167, 166),
(167, 167),
(170, 168),
(170, 169),
(170, 170),
(172, 171),
(172, 172),
(175, 174),
(175, 175),
(178, 176),
(178, 177),
(178, 178),
(181, 179),
(181, 180),
(181, 181),
(183, 182),
(183, 183),
(185, 184),
(185, 185),
(186, 186),
(188, 188),
(189, 189),
(192, 190),
(192, 191),
(192, 192),
(194, 193),
(194, 194),
(197, 195),
(197, 196),
(197, 197),
(198, 198),
(201, 199),
(201, 200),
(201, 201),
(205, 205),
(207, 207),
(208, 208),
(209, 209),
(212, 210),
(212, 211),
(212, 212),
(213, 213),
(214, 214),
(216, 215),
(216, 216),
(218, 218),
(220, 219),
(220, 220),
(222, 221),
(222, 222),
(224, 223),
(224, 224),
(227, 227),
(228, 228),
(229, 229),
(230, 230),
(249, 249),
(266, 266),
(269, 267),
(269, 268),
(269, 269),
(273, 270),
(273, 272),
(273, 273),
(274, 274),
(277, 275),
(277, 276),
(277, 277),
(279, 278),
(279, 279),
(280, 280),
(282, 281),
(282, 282),
(284, 283),
(284, 284),
(287, 285),
(287, 286),
(287, 287),
(288, 288),
(289, 289),
(292, 290),
(292, 291),
(292, 292),
(294, 293),
(294, 294),
(299, 297),
(299, 298),
(299, 299),
(300, 300),
(303, 301),
(303, 302),
(303, 303),
(306, 304),
(306, 305),
(306, 306),
(311, 308),
(311, 310),
(311, 311),
(322, 312),
(322, 313),
(322, 314),
(322, 315),
(322, 316),
(322, 317),
(322, 318),
(322, 319),
(322, 320),
(322, 321),
(322, 322),
(328, 323),
(328, 324),
(328, 325),
(328, 326),
(328, 327),
(328, 328),
(331, 329),
(331, 330),
(331, 331),
(333, 332),
(333, 333),
(336, 334),
(336, 335),
(336, 336),
(340, 339),
(340, 340),
(341, 341),
(342, 342),
(343, 343);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_owner`
--

CREATE TABLE `tbl_owner` (
  `id_owner` int(11) NOT NULL,
  `nama_owner` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `remember_token` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_owner`
--

INSERT INTO `tbl_owner` (`id_owner`, `nama_owner`, `username`, `password`, `created_at`, `updated_at`, `remember_token`) VALUES
(1, 'riski', 'owner', '$2y$10$Dvk/CHWftcqP4hwTTPNTVezrzk1jiEOpcDWzmssNRzaJv.OFuWthe', '2022-09-23 22:18:36', '2022-09-23 22:18:36', 'tb8m7ZdgT9hgmBOAfuUXoxEgfGxlMbkZr8UunmQk');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelanggan`
--

CREATE TABLE `tbl_pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `kode` varchar(30) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `no_meja` int(11) NOT NULL,
  `password` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `remember_token` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_pelanggan`
--

INSERT INTO `tbl_pelanggan` (`id_pelanggan`, `kode`, `nama_pelanggan`, `no_meja`, `password`, `created_at`, `updated_at`, `remember_token`) VALUES
(252, 'plg0', 'Aji', 3, '$2y$10$Y07EBqkmzSG.gfYwXtHBiOEw8GzWlbKt4G3Cqzog21n3vreh01nMm', '2022-12-05 06:25:12', '2022-12-05 06:25:12', 'nyXbNnGgYYcDwMVeGQWXZ7KdujfPvAqwUKsq4xkOkQeccDkkEBqL4ELS22yH'),
(253, 'plg1', 'riski', 7, '$2y$10$t8foe.yNKW6Lzr9FHYdNZ.H2YhFw8Jl/pnQqV9ybP2Z47aWgxGbrK', '2022-12-05 06:26:42', '2022-12-05 06:26:42', 'ewbeexdEmA6QtEAXOyW9ZbLyVigPCqK4DxVXZmlKey6zZgZfJDPdYR1pErF5'),
(254, 'plg2', 'darwini', 3, '$2y$10$YEIBnLlxPiwcaxyjGrQdCuZLYJ7rYSBFSkVxCSyZpMIHVMRkIpmxi', '2022-12-05 06:29:10', '2022-12-05 06:29:10', 'GZZHBTnfVEECqaz1WvNzEASSL8YFtMZfTUWKoBqxS3ZOiislMKyVRb3jB4rk'),
(255, 'plg3', 'lemon', 3, '$2y$10$TVN3Xr7x2YxAwyE3UMoSFOejRtgduirzi2K.43ThOUxKrhMqbXGBu', '2022-12-05 06:30:46', '2022-12-05 06:30:46', 'YsK0EiELCHaYjuA1iVZKE4zFBYvmwI0yYQSkMcCA8utfNVKxpq3ES3wv5zYu'),
(256, 'plg4', 'loan ali', 11, '$2y$10$46uRXTv8gBLC6/Yy4y1foeZb1h.1Z0HGNr3IwXvYkzRl8DVt4Oyz2', '2022-12-05 06:33:18', '2022-12-05 06:33:18', '9H8eRBwhn7f24Gpy4I6UGuCOrA3q2wkeEOBzM2ee7hsIEcyI5dWHZcrPIAL6'),
(257, 'plg5', 'sayuqi', 3, '$2y$10$edkCJ4wsFxGNKKZmG7h83u0UrsjuercYt94.85EQ05hvMtzXWXsk2', '2022-12-05 07:16:55', '2022-12-05 07:16:55', 'tCdP6YVUvjzf3LzzSwxzIhOP1II8zmDGJSVBnFjvby9Zh3ysxoJ97sBVUbzA'),
(258, 'plg6', 'solihah', 10, '$2y$10$SajMUhtR9cx5bFuHXn45YOyIb7yt9WjB9BWvkUHXOEyS.PpFjrAfq', '2022-12-05 07:34:10', '2022-12-05 07:34:10', '1wwXRAYjum84e7dhExm65D6MBU8nsbDdw9y38x8RINym73lv8Mz59cxa3yOq'),
(259, 'plg7', 'ronaldo', 13, '$2y$10$DBm5EboRMZyQo23wDmAUOOpDzig5gVU8PiDle.o3dHzgcwUrXDN/2', '2022-12-05 07:47:01', '2022-12-05 07:47:01', 'yevcIedXwFAPDBaDOOHgOcO8TX0cbgxoLHhi5LsKaqbJ7424Ju0guUonG1ZB'),
(260, 'plg8', 'diki', 2, '$2y$10$7bhtba9oSOwy6di3KzERu.363lES0qnOh7k5be5q9n4e5VdTEfLIC', '2022-12-05 22:11:20', '2022-12-05 22:11:20', 'cC1uMg9qeP62Lklw4TiLAsC5qU8zXKwV3IfNMRIa6YUFoUX6GhBHf8QXxcGR'),
(261, 'plg9', 'saifudin zuhri', 5, '$2y$10$/1g9ECbnMU9EjYdZus8dNuwM9mgML3gW7uKWcT1fkNzgJwwGjZwxO', '2022-12-05 22:16:26', '2022-12-05 22:16:26', 'NfYIpR8qICX53A2fnfmVojePeHm07DoMUjhVW9UKkQw6mh1wBDv0jcARykyM'),
(262, 'plg10', 'robert', 9, '$2y$10$u3MPW.TOScyc3HDBMjqNG.U8gJg9RNWNqUsa1GuPtkpHQXSh9iWa6', '2022-12-06 07:24:27', '2022-12-06 07:24:27', '7egzpzSU6Ox7TREL1yoGuCNqJ7eRlYbyO1EaViY29uWUpwhm8vIXwuHIF2hj'),
(263, 'plg11', 'lewandoski', 9, '$2y$10$VquwuakrYMp08Du9iVBJK.YVqwLs0MozjbLRGulCgLUR9hSxZN0Na', '2022-12-06 09:23:29', '2022-12-06 09:23:29', 'mzGob80r08gdHL1a7kAQCPn9XMV6DwAQurukowmxhzBMAfkB7if97eHSeFTJ'),
(264, 'plg12', 'javar', 33, '$2y$10$EQFeaK98iRCC2qzE6ZuKKOsWRaG5ZWHEX4xsI15qaYc2vicN0mTY6', '2022-12-06 09:57:28', '2022-12-06 09:57:28', 'gP13COvWyXZFtUCcUmQ49d4zLP4YGO2xeXyphd9e0gTyDsWS2ppiENasnRga'),
(265, 'plg13', 'syifa', 3, '$2y$10$q8CJ170082IMUs0SRIFQdubQLXuFzAZ6TqtzInqlyFS4bG9N34mTe', '2022-12-06 22:03:37', '2022-12-06 22:03:37', 'FkMP6z1DZOVj09mnVw5R7etAdpeiesYz1whNbwuaKwzWddMMa7cf5tAHFZuh'),
(266, 'plg14', 'dwi aulia', 9, '$2y$10$29osA0rHMiWPdk6Xn5yR0uxl5rT81aL9HVrjmVLjILjgP7DbVPxeK', '2022-12-06 22:18:25', '2022-12-06 22:18:25', 'NhCgR8eEEwLRuDu32kYzoztCmgsfiZEHYTEX9EP6dN0lrqtdbOs4bl26zmy5'),
(267, 'plg15', 'maul', 8, '$2y$10$yCcZqsPnWtbMgO6AGia1NOVAawkYpJfpQdsd0nOcvj.mt7nrfNWBW', '2022-12-06 22:20:40', '2022-12-06 22:20:40', 'OrURryEsW3TyQSvnkghzUhBJKQVZ8xIWatQWZyoAoYOgVYh5KPPJJhLBw2Uh'),
(268, 'plg16', 'waniman', 13, '$2y$10$1Xx00m2QLyA7SlF7BHdUMeD3NUSTQ58iXmtGR5DkYuWEnsDXIInNq', '2022-12-06 23:36:30', '2022-12-06 23:36:30', 'pNlnpDUKkjQqQAWljmIyP6inE5Jxawqcl4o4W1lPc30RbONoPDvdHMrOWcsf'),
(269, 'plg17', 'rai', 2, '$2y$10$PdidCdoyq2DNg53Lf8kNwOaiqk81JSUxigZHq/NIN539MjnRN9aqm', '2022-12-06 23:36:54', '2022-12-06 23:36:54', '1u5iLDYOpE3Rj3PdcSEEYqqshbqZP6'),
(270, 'plg18', 'rendi juliansyah', 5, '$2y$10$8WanpKiiid3DGJ957czxC.erWpK6yVHb.B.SW1rhi5Yj67ZAl/cve', '2022-12-08 00:50:11', '2022-12-08 00:50:11', 'EYtTHz7ZOiCaA7M5qAdeJwJ2wxXlz59a1wu5zq5OZ7nimNfuauU5xIR01HFF'),
(271, 'plg19', 'ilham', 7, '$2y$10$Cs/YqAbsAVmaCY6kg2iexOISeSL2vEXiLBrrWik9op47IjukPKWbq', '2022-12-08 00:57:53', '2022-12-08 00:57:53', 'e40eFKQUyzFk0FZPUsBKCYmmcSkgkIfeE89sbm4wPMs0NxCdslnvZTu17FYZ'),
(272, 'plg20', 'nabilah', 7, '$2y$10$8TkRY.U87EL3pEpge6Bqve.XJO9cCAcgE7Z.hprVpvvvf5VpZ8foe', '2022-12-08 01:01:44', '2022-12-08 01:01:44', 'xa207706uzHeRPO4gzVzvq0qCmpn0TS9TEyjvGmr1A9cxhkMRAk6HHYiRf6C'),
(273, 'plg21', 'ayang debi', 1, '$2y$10$Gm.Wv3lzJI.Ry2iFuZnBJODNdlrrRtGv8qP9Kbu3ktD6lxYOkwtPm', '2022-12-08 01:16:54', '2022-12-08 01:16:54', 'GwD7pm5ysdFK0u9Zgq1eFsgOPgsfGfxezVSLbIbOeyUAXqjpC9xCWUxjmRZa'),
(274, 'plg22', 'ria damayanti', 5, '$2y$10$mFefE1yW.oD0De.AR9yCae/chyfEfjfzRMVnlHdTt5Vg29DDs2zya', '2022-12-08 20:45:05', '2022-12-08 20:45:05', 'VQb2KvZGzhoWqare29AhkXN6zMddN5qAVwoVFYYDMG6jkaiHLltxr9VftxE2'),
(275, 'plg23', 'darwin', 15, '$2y$10$4LZRf.MUTY83WX12131zxuRyH1y0J2OW2x9sXoUzWxXhY2BMdxpX6', '2022-12-08 21:43:27', '2022-12-08 21:43:27', 'vjXvLyisWzEASnwmnuagnhakxzVGXnaLKRFb2vYhYxBQIjulK97Uh43D3Jkd'),
(276, 'plg24', 'leodwiki', 11, '$2y$10$DxAytduYksBbrVHMbbtTHeQdprQ81wyEw6/UrpyDEO912WhgJMRaO', '2022-12-09 06:07:02', '2022-12-09 06:07:02', 'IQOiuY7MAEDcga07XScvCE8c2lHhS6bEILNt7CUMZ8Tmmp1z13HtwELIz0QH'),
(277, 'plg25', 'waniman', 2, '$2y$10$UzVUrWEmXcySOFJ/XSh/NO1mNoLHc5F6vPWMJjbgAARdmLfTg02wu', '2022-12-11 04:03:02', '2022-12-11 04:03:02', '8vZAJAUJptzyqlWmyL7GV355DDmK9U'),
(278, 'plg26', 'wartiyem', 3, '$2y$10$zia74eyQ3HQzhoKa21ceHeSEzRNJqMtJG5MMbCrra/c133RVAVLlW', '2022-12-11 06:39:26', '2022-12-11 06:39:26', 'ON38L3gV5B75GCFm7o1K15EHXLiO79MuFoXVyXdMclizh4a4zpaL7Rp4MgF8'),
(279, 'plg27', 'siluman', 14, '$2y$10$ka71RhyzIejFzq4chG472OwUMWYvq0Rg/a7K.BOiukXdxeQdP4/QW', '2022-12-11 07:09:56', '2022-12-11 07:09:56', 'QdMTWSHeyK2pqJ5DEhO3lJEfHoJtimTYgWPgQYFUOj03CkOYkZlsXAOQ9cTG'),
(280, 'plg28', 'madrid', 15, '$2y$10$ttLAF98mChQDtro1DhnKKOl24Qzvt3if7SP0WFMRb7ARBAPy/.hq2', '2022-12-11 07:17:49', '2022-12-11 07:17:49', 'G2vZkZceV7eGcngM9YGYqP9UYxZRfcdGwKoGGdin2aGDBQKurgW96UeEsvwz'),
(281, 'plg29', 'debi nabilah sholihah', 15, '$2y$10$JQQmM9wHSlqymWIV.YvZU.f8MUmj6wdzYWloVJ7S1lM7piytZH37m', '2022-12-11 07:36:53', '2022-12-11 07:36:53', 'XnyLSdUrb8et9e08g5A1zoKoQIn6B8tjk7huT4Vf56dA9cmcR9aVGMMWPamF'),
(282, 'plg30', 'waniun', 4, '$2y$10$BUzfxL982y/aVMYM6zV96.eQKPUXh1lPFPlxrzeshtgHpaCsx9R3G', '2022-12-11 19:38:41', '2022-12-11 19:38:41', 'cim6tdSpPvZMDrvTv3qOVmx2bKoJ9gd5Rxr57CJ8gzDh6rpuDqU4LdI7jH54'),
(283, 'plg31', 'liam', 3, '$2y$10$giRAvUPO7eOA6v.baxi26OKUjeKMnNdflH6BW.e82RHvrfwyBWTTm', '2022-12-11 23:37:47', '2022-12-11 23:37:47', 'SfT8coAJdrxLtNgBIUbTkJOIph1gKHCTmYOi1ybLfc5Isc3xMdTUHMVCi1I9'),
(284, 'plg32', 'syefa', 4, '$2y$10$OK0jPzslBsJbTOF622XStOm3SeNJpX4qjR6yscn/tFrU9S.wGlcnW', '2022-12-11 23:38:57', '2022-12-11 23:38:57', 'Dz8svH3o31xwwfJxey2tgRbCtVFhJJfVSFEOlOvHRCyq7spfsCOYVftSwhss'),
(285, 'plg33', 'lemon', 4, '$2y$10$2Bx1HiD3IAJDfzxNfnjGU.nuXy2lZpJflu1ih2DCARwBN/FveD7Sy', '2022-12-11 23:42:09', '2022-12-11 23:42:09', 'dPYoqooFNKcQXcRiO7gPtY8WvdWHU41A7hqTOCFDSHHVrOuy1LZukYHQYPkb'),
(286, 'plg34', 'Sahrul', 4, '$2y$10$Zv6GaTnzwdXP.w3gmqU9K.MbXp3wGCPSSOfVZDFJOej/MCKYonQNO', '2022-12-12 00:16:33', '2022-12-12 00:16:33', 'M2ZLXxxg0GVlMowFrOoOwNK0PR9HBQY5UHI528MUtYIoIjIC8aWSgUUfeX90'),
(287, 'plg35', 'wiliam', 4, '$2y$10$HTt4Y1Q77M2kcJn5UWc5/.iByCscikiOddBVuQf1aRsvJU9CpB0fO', '2022-12-12 00:27:56', '2022-12-12 00:27:56', 'I2KDkofYxJFzkCjVOoSL2gpHnB80DXr22SL4L9TMg8RcDTgRzLA08NPaSJ6R'),
(288, 'plg36', 'rizky', 4, '$2y$10$Qq71PRpc/8QERBqHnmzh9O7CgvvWnJUDmRIe6ibKofuZFyLtenKUu', '2022-12-12 01:13:52', '2022-12-12 01:13:52', 'v5qdni0gq4mJ052NsrsswjQuqF7EY7MTxqPna7YpHy77hv8ZTAJpEURJvF4P'),
(289, 'plg37', 'rifai', 7, '$2y$10$64MkaAr7lEUhbgyMKP0IaecnU4xaGSNDUs/881ebm7bvZ1Q9HDIWC', '2022-12-12 01:14:26', '2022-12-12 01:14:26', 'ebYxPIKoZu9y1bVUumryiHugG4CHUmL1pmwwoC4NgD4A1oR33PZZV2OMu0UP'),
(290, 'plg38', 'selvi', 4, '$2y$10$FqO9gubofWaw4fiH9DnPI.BVV5SFhHVajuxXxfbCMY7GUxd6Uf0NW', '2022-12-12 01:31:40', '2022-12-12 01:31:40', '5b8y9pPaRbJQpbaKFtn9JmnT8J9vbNbxcy7AGCxe9Fk8p1OA4h5rNhI4MMEN'),
(291, 'plg39', 'riski', 3, '$2y$10$nA2QIqH/KHvcsio4KhlmqejXID7LsY9TzOYYE4.s6QqRM87ulyZYu', '2023-04-10 20:53:08', '2023-04-10 20:53:08', 'sVGHoX4B4UhqO0pT5Uzqz9Gr2gKrMnghir0wFOyDUAq4M1Ztnh6ltbL92TjB');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi`
--

CREATE TABLE `tbl_transaksi` (
  `id_transaksi` varchar(100) NOT NULL,
  `order_detail_id` int(11) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `total_bayar` int(11) NOT NULL,
  `jumlah_pembayaran` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL,
  `user_transaksi_id` int(11) NOT NULL,
  `status_order` varchar(50) NOT NULL,
  `diantar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_transaksi`
--

INSERT INTO `tbl_transaksi` (`id_transaksi`, `order_detail_id`, `tanggal_transaksi`, `total_bayar`, `jumlah_pembayaran`, `kembalian`, `user_transaksi_id`, `status_order`, `diantar`) VALUES
('KEDAIKITA10', 287, '2022-12-05', 32000, 330000, 298000, 256, 'sudah_dibayar', 'sudah'),
('KEDAIKITA11', 287, '2022-12-05', 32000, 0, 0, 256, 'batal_dipesan', 'belum'),
('KEDAIKITA12', 288, '2022-12-05', 15000, 16000, 1000, 256, 'sudah_dibayar', 'belum'),
('KEDAIKITA13', 289, '2022-12-05', 12000, 13000, 1000, 257, 'sudah_dibayar', 'sudah'),
('KEDAIKITA14', 292, '2022-12-05', 37000, 38000, 1000, 258, 'sudah_dibayar', 'sudah'),
('KEDAIKITA15', 294, '2022-12-05', 38000, 0, 0, 259, 'belum_dibayar', 'belum'),
('KEDAIKITA16', 299, '2022-12-06', 35000, 36000, 1000, 263, 'sudah_dibayar', 'sudah'),
('KEDAIKITA17', 300, '2022-12-07', 20000, 21000, 1000, 265, 'sudah_dibayar', 'belum'),
('KEDAIKITA18', 303, '2022-12-07', 36000, 37000, 1000, 266, 'sudah_dibayar', 'sudah'),
('KEDAIKITA19', 306, '2022-12-07', 75000, 76000, 1000, 267, 'sudah_dibayar', 'sudah'),
('KEDAIKITA20', 311, '2022-12-08', 52000, 55000, 3000, 270, 'sudah_dibayar', 'sudah'),
('KEDAIKITA21', 322, '2022-12-08', 152000, 153000, 1000, 271, 'sudah_dibayar', 'sudah'),
('KEDAIKITA22', 328, '2022-12-08', 114000, 150000, 36000, 272, 'sudah_dibayar', 'belum'),
('KEDAIKITA23', 331, '2022-12-09', 45000, 46000, 1000, 275, 'sudah_dibayar', 'belum'),
('KEDAIKITA24', 333, '2022-12-09', 24000, 25000, 1000, 276, 'sudah_dibayar', 'belum'),
('KEDAIKITA25', 336, '2022-12-11', 30000, 31000, 1000, 278, 'sudah_dibayar', 'sudah'),
('KEDAIKITA26', 340, '2022-12-11', 30000, 0, 0, 281, 'belum_dibayar', 'belum'),
('KEDAIKITA27', 341, '2022-12-11', 30000, 31000, 1000, 281, 'sudah_dibayar', 'belum'),
('KEDAIKITA28', 342, '2022-12-12', 10000, 11000, 1000, 284, 'sudah_dibayar', 'belum'),
('KEDAIKITA29', 343, '2022-12-12', 15000, 0, 0, 286, 'belum_dibayar', 'belum'),
('KEDAIKITA5', 277, '2022-12-05', 37000, 38000, 1000, 252, 'sudah_dibayar', 'belum'),
('KEDAIKITA6', 279, '2022-12-05', 17000, 18000, 1000, 253, 'sudah_dibayar', 'sudah'),
('KEDAIKITA7', 280, '2022-12-05', 12000, 13000, 1000, 254, 'sudah_dibayar', 'belum'),
('KEDAIKITA8', 282, '2022-12-05', 17000, 0, 0, 255, 'belum_dibayar', 'belum'),
('KEDAIKITA9', 284, '2022-12-05', 20000, 30000, 10000, 255, 'sudah_dibayar', 'belum');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_waiter`
--

CREATE TABLE `tbl_waiter` (
  `id_waiter` int(11) NOT NULL,
  `nama_waiter` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `remember_token` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_waiter`
--

INSERT INTO `tbl_waiter` (`id_waiter`, `nama_waiter`, `jenis_kelamin`, `alamat`, `no_hp`, `email`, `username`, `password`, `created_at`, `updated_at`, `remember_token`) VALUES
(5, 'Aditya', 'Laki-Laki', 'indramayu', '08912939123', 'aditya@gmail.com', 'adit', '$2y$10$r2W6QoaMfetl/6//Vhxw8uwfGM5Ighk6meItHHUW1CP6lKdd72kMe', '2022-09-24 09:48:18', '2022-10-26 07:28:59', NULL),
(6, 'Rita Agustriana', 'Laki-Laki', 'Riau', '089534120629', 'ritaagustrianamanik@gmail.com', 'rita', '$2y$10$vJzhrio/myAb7FiBIPm5/utXDhf7a22nN/9TY2lZIRRF4y0GOsA9.', '2022-11-29 07:16:43', '2022-11-29 07:16:43', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  ADD PRIMARY KEY (`id_feedback`);

--
-- Indexes for table `tbl_kasir`
--
ALTER TABLE `tbl_kasir`
  ADD PRIMARY KEY (`id_kasir`);

--
-- Indexes for table `tbl_masakan`
--
ALTER TABLE `tbl_masakan`
  ADD PRIMARY KEY (`id_masakan`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `masakan_id` (`masakan_id`);

--
-- Indexes for table `tbl_owner`
--
ALTER TABLE `tbl_owner`
  ADD PRIMARY KEY (`id_owner`);

--
-- Indexes for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`),
  ADD UNIQUE KEY `kode` (`kode`);

--
-- Indexes for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `order_id` (`order_detail_id`);

--
-- Indexes for table `tbl_waiter`
--
ALTER TABLE `tbl_waiter`
  ADD PRIMARY KEY (`id_waiter`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  MODIFY `id_feedback` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_kasir`
--
ALTER TABLE `tbl_kasir`
  MODIFY `id_kasir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_masakan`
--
ALTER TABLE `tbl_masakan`
  MODIFY `id_masakan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=344;

--
-- AUTO_INCREMENT for table `tbl_owner`
--
ALTER TABLE `tbl_owner`
  MODIFY `id_owner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=292;

--
-- AUTO_INCREMENT for table `tbl_waiter`
--
ALTER TABLE `tbl_waiter`
  MODIFY `id_waiter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
